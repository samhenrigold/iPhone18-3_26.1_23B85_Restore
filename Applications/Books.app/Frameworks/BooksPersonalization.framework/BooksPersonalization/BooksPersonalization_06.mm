unint64_t sub_58F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v43 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v42 = &v35 - v13;
  v36 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v45 = v43 + 8;
    v46 = v43 + 16;
    v40 = v14;
    v15 = (v14 + 8 * a3 - 8);
    v16 = a1 - a3;
LABEL_5:
    v38 = v15;
    v39 = a3;
    v37 = v16;
    v17 = v16;
    while (*(a5 + 16))
    {
      v18 = v15->i64[0];
      result = sub_43124(v15->i64[1]);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      v44 = v17;
      v20 = v42;
      v21 = v43;
      v22 = *(v43 + 72);
      v23 = *(v43 + 16);
      v24 = v47;
      v23(v42, *(a5 + 56) + v22 * result, v47);
      v25 = sub_1B4374();
      v26 = *(v21 + 8);
      result = v26(v20, v24);
      if (!*(a5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_43124(v18);
      if ((v27 & 1) == 0)
      {
        goto LABEL_19;
      }

      v28 = *(a5 + 56) + result * v22;
      v29 = v41;
      v30 = v47;
      v23(v41, v28, v47);
      v31 = sub_1B4374();
      result = v26(v29, v30);
      v32 = v31 < v25;
      v33 = v44;
      if (v32)
      {
        if (!v40)
        {
          goto LABEL_20;
        }

        *v15 = vextq_s8(*v15, *v15, 8uLL);
        v15 = (v15 - 8);
        v34 = __CFADD__(v33, 1);
        v17 = v33 + 1;
        if (!v34)
        {
          continue;
        }
      }

      a3 = v39 + 1;
      v15 = &v38->u64[1];
      v16 = v37 - 1;
      if (v39 + 1 == v36)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_59218(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_56B44(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_57FD8(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *sub_592BC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v7 = __chkstk_darwin(v6 - 8);
  v192 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v197 = &v189 - v10;
  v11 = __chkstk_darwin(v9);
  v194 = &v189 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v189 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v189 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v189 - v20;
  v22 = __chkstk_darwin(v19);
  v191 = &v189 - v23;
  v24 = __chkstk_darwin(v22);
  v196 = &v189 - v25;
  v26 = __chkstk_darwin(v24);
  v193 = &v189 - v27;
  v28 = __chkstk_darwin(v26);
  v195 = &v189 - v29;
  v30 = __chkstk_darwin(v28);
  v198 = &v189 - v31;
  __chkstk_darwin(v30);
  v33 = &v189 - v32;
  v34 = *a2;
  v35 = 0;
  v36 = sub_54E00(a1, sub_550F4, sub_550F4);
  v37 = sub_54E00(a1, sub_54F70, sub_54F70);
  v38 = v37;
  if (v34 == 7)
  {

    v49 = v36[2];
    if (v49 >= a3)
    {
      v50 = a3;
    }

    else
    {
      v50 = v36[2];
    }

    if (v49)
    {
      v39 = sub_3503C(v36[2], 0);
      v35 = sub_43128();
      sub_417B8(v201);
      if (v35 != v49)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_16:
        v51 = *(v39 + 2);
        if (v51 < v50)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v51 != v50)
        {
          sub_50F4C(v39, (v39 + 32), 0, (2 * v50) | 1);
          v53 = v52;

          return v53;
        }

        return v39;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v34 == 5)
  {
    v196 = v18;
    v198 = v21;
    v190 = a3;
    v44 = sub_158B48(v36);

    v195 = sub_158B48(v38);

    v45 = *(v44 + 16);
    v189 = v15;
    if (v45)
    {
      v46 = sub_3503C(v45, 0);
      v47 = sub_43128();
      v48 = v201;
      swift_bridgeObjectRetain_n();
      sub_417B8(v48);
      if (v47 != v45)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v15 = v189;
LABEL_35:
      v38 = v195;
      v201 = v46;
      sub_59218(&v201, v44);

      if (v35)
      {
        goto LABEL_181;
      }

      v56 = v198;
      v193 = *(v201 + 2);
      if (v193)
      {
        v62 = *(v201 + 4);
        goto LABEL_47;
      }

LABEL_46:
      v62 = 0;
LABEL_47:

      v67 = *(v38 + 16);
      if (v67)
      {
        v191 = v62;
        v68 = sub_3503C(v67, 0);
        v69 = sub_43128();
        v70 = v201;
        swift_bridgeObjectRetain_n();
        sub_417B8(v70);
        if (v69 != v67)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v56 = v198;
        v15 = v189;
        v38 = v195;
        v62 = v191;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v68 = _swiftEmptyArrayStorage;
      }

      v201 = v68;
      sub_59218(&v201, v38);

      if (v35)
      {
        goto LABEL_181;
      }

      v71 = *(v201 + 2);
      v72 = v190;
      v73 = v197;
      if (v71)
      {
        v74 = *(v201 + 4);
      }

      else
      {
        v74 = 0;
      }

      if (v193 && *(v44 + 16))
      {
        v81 = sub_43124(v62);
        if (v82)
        {
          v83 = v81;
          v84 = *(v44 + 56);
          v85 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
          v86 = *(v85 - 8);
          v87 = v84 + *(v86 + 72) * v83;
          v56 = v198;
          (*(v86 + 16))(v198, v87, v85);

          (*(v86 + 56))(v56, 0, 1, v85);
          v73 = v197;
          v72 = v190;
          if (!v71)
          {
            goto LABEL_85;
          }

LABEL_82:
          if (*(v38 + 16))
          {
            v103 = sub_43124(v74);
            if (v104)
            {
              v105 = v103;
              v106 = *(v38 + 56);
              v107 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
              v108 = *(v107 - 8);
              v109 = v106 + *(v108 + 72) * v105;
              v110 = v196;
              (*(v108 + 16))(v196, v109, v107);

              (*(v108 + 56))(v110, 0, 1, v107);
LABEL_86:
              sub_43050(v56, v15, &qword_229708, &unk_1BCB60);
              v112 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
              v113 = *(v112 - 8);
              v114 = v56;
              v115 = *(v113 + 48);
              if (v115(v15, 1, v112) == 1)
              {
                sub_42F48(v15, &qword_229708, &unk_1BCB60);
                v197 = 0;
                v116 = _swiftEmptyArrayStorage;
                v117 = &_swiftEmptyArrayStorage[4];
                v118 = 1;
              }

              else
              {
                v119 = v194;
                sub_43050(v114, v194, &qword_229708, &unk_1BCB60);
                if (v115(v119, 1, v112) == 1)
                {
                  sub_42F48(v119, &qword_229708, &unk_1BCB60);
                  v120 = 0;
                }

                else
                {
                  v120 = sub_1B4374();
                  (*(v113 + 8))(v119, v112);
                }

                if (v120 >= v72)
                {
                  v121 = v72;
                }

                else
                {
                  v121 = v120;
                }

                if (v121 < 0)
                {
                  goto LABEL_177;
                }

                v199 = 0;
                v200 = v121;
                sub_42094(&qword_229780, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
                sub_1B43A4();
                v116 = v201;
                v117 = v202;
                v197 = v203;
                v122 = v15;
                v118 = v204;
                (*(v113 + 8))(v122, v112);
              }

              v123 = v196;
              sub_43050(v196, v73, &qword_229708, &unk_1BCB60);
              if (v115(v73, 1, v112) == 1)
              {
                sub_42F48(v73, &qword_229708, &unk_1BCB60);
                v124 = 0;
                v125 = &_swiftEmptyArrayStorage[4];
                v126 = 1;
              }

              else
              {
                v127 = v123;
                v128 = v192;
                sub_43050(v127, v192, &qword_229708, &unk_1BCB60);
                if (v115(v128, 1, v112) == 1)
                {
                  sub_42F48(v128, &qword_229708, &unk_1BCB60);
                  v129 = 0;
                }

                else
                {
                  v130 = v128;
                  v129 = sub_1B4374();
                  (*(v113 + 8))(v130, v112);
                }

                if (v129 >= v72)
                {
                  v131 = v72;
                }

                else
                {
                  v131 = v129;
                }

                if (v131 < 0)
                {
                  goto LABEL_179;
                }

                v199 = 0;
                v200 = v131;
                sub_42094(&qword_229780, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
                sub_1B43A4();
                v125 = v202;
                v132 = v73;
                v124 = v203;
                v126 = v204;
                (*(v113 + 8))(v132, v112);
              }

              v201 = v116;
              v202 = v117;
              v203 = v197;
              v204 = v118;
              swift_unknownObjectRetain();
              v133 = swift_unknownObjectRetain();
              sub_56DC0(v133, v125, v124, v126);
              v134 = v203;
              v135 = v204 >> 1;
              v136 = (v204 >> 1) - v203;
              if (__OFSUB__(v204 >> 1, v203))
              {
                goto LABEL_166;
              }

              if (!v136)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_42F48(v196, &qword_229708, &unk_1BCB60);
                v145 = v198;
LABEL_160:
                sub_42F48(v145, &qword_229708, &unk_1BCB60);
                return _swiftEmptyArrayStorage;
              }

              v137 = v202;
              v201 = _swiftEmptyArrayStorage;
              sub_3741C(0, v136 & ~(v136 >> 63), 0);
              if (v136 < 0)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v39 = v201;
              if (v134 <= v135)
              {
                v138 = v135;
              }

              else
              {
                v138 = v134;
              }

              v139 = v138 - v134;
              v140 = &v137[17 * v134];
              do
              {
                if (!v139)
                {
                  __break(1u);
                  goto LABEL_163;
                }

                v141 = *v140;
                v201 = v39;
                v143 = *(v39 + 2);
                v142 = *(v39 + 3);
                if (v143 >= v142 >> 1)
                {
                  sub_3741C((v142 > 1), v143 + 1, 1);
                  v39 = v201;
                }

                *(v39 + 2) = v143 + 1;
                *&v39[8 * v143 + 32] = v141;
                --v139;
                v140 += 17;
                --v136;
              }

              while (v136);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_42F48(v196, &qword_229708, &unk_1BCB60);
              v144 = v198;
LABEL_158:
              sub_42F48(v144, &qword_229708, &unk_1BCB60);
              return v39;
            }
          }

LABEL_85:

          v111 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
          (*(*(v111 - 8) + 56))(v196, 1, 1, v111);
          goto LABEL_86;
        }

        v102 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v56 = v198;
        (*(*(v102 - 8) + 56))(v198, 1, 1, v102);
      }

      else
      {

        v88 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        (*(*(v88 - 8) + 56))(v56, 1, 1, v88);
      }

      if (!v71)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }

LABEL_34:
    swift_bridgeObjectRetain_n();
    v46 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  if (v34 != 3)
  {
    v44 = v36[2];
    if (v44 >= a3)
    {
      v55 = a3;
    }

    else
    {
      v55 = v36[2];
    }

    if (v37[2] >= a3)
    {
      v56 = a3;
    }

    else
    {
      v56 = v37[2];
    }

    if (v44)
    {
      v57 = sub_3503C(v36[2], 0);
      v35 = sub_43128();
      sub_417B8(v201);
      if (v35 != v44)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_28:
        v58 = *(v57 + 2);
        if (v58 < v55)
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v58 != v55)
        {
          sub_50F4C(v57, (v57 + 32), 0, (2 * v55) | 1);
          v60 = v59;

          v57 = v60;
        }

        v44 = *(v38 + 16);
        if (v44)
        {
          v35 = sub_3503C(*(v38 + 16), 0);
          v61 = sub_43128();
          sub_417B8(v201);
          if (v61 != v44)
          {
            __break(1u);
            goto LABEL_34;
          }
        }

        else
        {

          v35 = _swiftEmptyArrayStorage;
        }

        v99 = v35[2];
        if (v99 < v56)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (v99 != v56)
        {
          sub_50F4C(v35, (v35 + 4), 0, (2 * v56) | 1);
          v101 = v100;

          v35 = v101;
        }

        v201 = v57;
        sub_5F33C(v35);
        return v201;
      }
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v197 = v33;
  v39 = sub_1588F0(v36);

  v194 = sub_158908(v38);

  v40 = *(v39 + 2);
  v190 = a3;
  if (!v40)
  {
LABEL_40:
    swift_bridgeObjectRetain_n();
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v41 = sub_3503C(v40, 0);
  v42 = sub_43128();
  v43 = v201;
  swift_bridgeObjectRetain_n();
  sub_417B8(v43);
  if (v42 != v40)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  a3 = v190;
LABEL_41:
  v201 = v41;
  sub_59218(&v201, v39);

  if (!v35)
  {

    v63 = *(v201 + 2);
    v64 = v197;
    v65 = v194;
    if (v63)
    {
      v66 = *(v201 + 4);
    }

    else
    {
      v66 = 0;
    }

    v75 = *(v65 + 16);
    if (v75)
    {
      v189 = v63;
      v192 = v66;
      v76 = sub_3503C(v75, 0);
      v77 = sub_43128();
      v78 = v201;
      swift_bridgeObjectRetain_n();
      sub_417B8(v78);
      if (v77 != v75)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v63 = v189;
      a3 = v190;
      v64 = v197;
      v65 = v194;
      v66 = v192;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v76 = _swiftEmptyArrayStorage;
    }

    v201 = v76;
    sub_59218(&v201, v65);

    v79 = *(v201 + 2);
    if (v79)
    {
      v80 = *(v201 + 4);

      if (!v63)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v80 = 0;

      if (!v63)
      {
        goto LABEL_74;
      }
    }

    if (*(v39 + 2))
    {
      v89 = sub_43124(v66);
      if (v90)
      {
        v91 = v89;
        v92 = *(v39 + 7);
        v93 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v94 = a3;
        v95 = *(v93 - 8);
        v96 = v92 + *(v95 + 72) * v91;
        v64 = v197;
        (*(v95 + 16))(v197, v96, v93);

        (*(v95 + 56))(v64, 0, 1, v93);
        a3 = v94;
        v97 = v198;
        if (!v79)
        {
          goto LABEL_124;
        }

LABEL_121:
        if (*(v65 + 16))
        {
          v147 = sub_43124(v80);
          if (v148)
          {
            v149 = v147;
            v150 = *(v65 + 56);
            v151 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
            v152 = *(v151 - 8);
            v153 = v150 + *(v152 + 72) * v149;
            v97 = v198;
            (*(v152 + 16))(v198, v153, v151);

            (*(v152 + 56))(v97, 0, 1, v151);
          }

          else
          {

            v155 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
            v97 = v198;
            (*(*(v155 - 8) + 56))(v198, 1, 1, v155);
          }

          goto LABEL_126;
        }

LABEL_124:

        v154 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        (*(*(v154 - 8) + 56))(v97, 1, 1, v154);
LABEL_126:
        v156 = v195;
        sub_43050(v64, v195, &qword_229708, &unk_1BCB60);
        v157 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
        v158 = *(v157 - 8);
        v159 = *(v158 + 48);
        if (v159(v156, 1, v157) == 1)
        {
          sub_42F48(v156, &qword_229708, &unk_1BCB60);
          v194 = 0;
          v160 = _swiftEmptyArrayStorage;
          v161 = &_swiftEmptyArrayStorage[4];
          v162 = 1;
          v163 = v196;
        }

        else
        {
          v164 = v64;
          v165 = v193;
          sub_43050(v164, v193, &qword_229708, &unk_1BCB60);
          if (v159(v165, 1, v157) == 1)
          {
            sub_42F48(v165, &qword_229708, &unk_1BCB60);
            v166 = 0;
          }

          else
          {
            v166 = sub_1B4374();
            (*(v158 + 8))(v165, v157);
          }

          if (v166 >= a3)
          {
            v167 = a3;
          }

          else
          {
            v167 = v166;
          }

          v163 = v196;
          if (v167 < 0)
          {
            goto LABEL_178;
          }

          v199 = 0;
          v200 = v167;
          sub_42094(&qword_229780, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
          sub_1B43A4();
          v168 = v156;
          v160 = v201;
          v161 = v202;
          v162 = v204;
          v194 = v203;
          (*(v158 + 8))(v168, v157);
          v97 = v198;
        }

        sub_43050(v97, v163, &qword_229708, &unk_1BCB60);
        if (v159(v163, 1, v157) == 1)
        {
          sub_42F48(v163, &qword_229708, &unk_1BCB60);
          v169 = 0;
          v170 = &_swiftEmptyArrayStorage[4];
          v171 = 1;
        }

        else
        {
          v172 = v97;
          v173 = v191;
          sub_43050(v172, v191, &qword_229708, &unk_1BCB60);
          if (v159(v173, 1, v157) == 1)
          {
            sub_42F48(v173, &qword_229708, &unk_1BCB60);
            v174 = 0;
          }

          else
          {
            v175 = v173;
            v174 = sub_1B4374();
            (*(v158 + 8))(v175, v157);
          }

          if (v174 >= a3)
          {
            v176 = a3;
          }

          else
          {
            v176 = v174;
          }

          if (v176 < 0)
          {
            goto LABEL_180;
          }

          v199 = 0;
          v200 = v176;
          sub_42094(&qword_229780, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
          sub_1B43A4();
          v177 = v163;
          v170 = v202;
          v169 = v203;
          v171 = v204;
          (*(v158 + 8))(v177, v157);
        }

        v201 = v160;
        v202 = v161;
        v203 = v194;
        v204 = v162;
        swift_unknownObjectRetain();
        v178 = swift_unknownObjectRetain();
        sub_56DC0(v178, v170, v169, v171);
        v179 = v203;
        v180 = v204 >> 1;
        v181 = (v204 >> 1) - v203;
        if (__OFSUB__(v204 >> 1, v203))
        {
          goto LABEL_167;
        }

        if (v181)
        {
          v182 = v202;
          v201 = _swiftEmptyArrayStorage;
          sub_3741C(0, v181 & ~(v181 >> 63), 0);
          if (v181 < 0)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          v39 = v201;
          if (v179 <= v180)
          {
            v183 = v180;
          }

          else
          {
            v183 = v179;
          }

          v184 = v183 - v179;
          v185 = &v182[17 * v179];
          while (v184)
          {
            v186 = *v185;
            v201 = v39;
            v188 = *(v39 + 2);
            v187 = *(v39 + 3);
            if (v188 >= v187 >> 1)
            {
              sub_3741C((v187 > 1), v188 + 1, 1);
              v39 = v201;
            }

            *(v39 + 2) = v188 + 1;
            *&v39[8 * v188 + 32] = v186;
            --v184;
            v185 += 17;
            if (!--v181)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_42F48(v198, &qword_229708, &unk_1BCB60);
              v144 = v197;
              goto LABEL_158;
            }
          }

LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_42F48(v198, &qword_229708, &unk_1BCB60);
        v145 = v197;
        goto LABEL_160;
      }

      v146 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v64 = v197;
      (*(*(v146 - 8) + 56))(v197, 1, 1, v146);
LABEL_120:
      v97 = v198;
      if (!v79)
      {
        goto LABEL_124;
      }

      goto LABEL_121;
    }

LABEL_74:

    v98 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    (*(*(v98 - 8) + 56))(v64, 1, 1, v98);
    goto LABEL_120;
  }

LABEL_181:

  __break(1u);
  return result;
}

unint64_t *sub_5AA60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_5565C(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_5565C(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5AB68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *), uint64_t a8)
{
  v112 = a8;
  v113 = a7;
  v114 = a6;
  v115 = a5;
  v10 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = __chkstk_darwin(v10);
  v116 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v109 = &v107 - v14;
  __chkstk_darwin(v13);
  v108 = &v107 - v15;
  v16 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v111 = &v107 - v21;
  v22 = __chkstk_darwin(v20);
  v110 = &v107 - v23;
  v24 = __chkstk_darwin(v22);
  v120 = &v107 - v25;
  v26 = __chkstk_darwin(v24);
  v124 = &v107 - v27;
  __chkstk_darwin(v26);
  v29 = &v107 - v28;
  v30 = _swiftEmptyArrayStorage;
  v137 = _swiftEmptyArrayStorage;
  *&v127 = a1;
  v121 = a1;

  v31 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v32 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
  v119 = v29;
  v122 = v32;
  v123 = v31;
  result = sub_1B43C4();
  v125 = a4;
  if (a4[2])
  {
    v34 = v125;
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v35 = v34 + 7;
    v36 = -1 << *(v34 + 32);
    v37 = result & ~v36;
    if ((*(v34 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
    {
      v38 = ~v36;
      while (!*(v125[6] + v37) || *(v125[6] + v37) == 1)
      {
        v39 = sub_1B5604();

        if (v39)
        {
          goto LABEL_10;
        }

        v37 = (v37 + 1) & v38;
        if (((*(v35 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      v40 = v119;
      sub_43050(v119, v19, &qword_229708, &unk_1BCB60);
      v42 = v117;
      v41 = v118;
      if ((*(v117 + 48))(v19, 1, v118) != 1)
      {
        v92 = v116;
        (*(v42 + 32))(v116, v19, v41);
        v113(v92);
        v93 = v115();

        sub_5F428(v93);
        (*(v42 + 8))(v92, v41);
        v94 = v40;
LABEL_69:
        sub_42F48(v94, &qword_229708, &unk_1BCB60);
        return v137;
      }

      result = sub_42F48(v19, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v43 = *(v121 + 16);
  if (!v43)
  {
    *&v127 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v127 = v30;
    v81 = v120;
    sub_1B43C4();
    v83 = v117;
    v82 = v118;
    if (v125[2])
    {
      v84 = v125;
      sub_1B57F4();
      sub_1B4884();
      v85 = sub_1B5844();
      v86 = v84 + 7;
      v87 = -1 << *(v84 + 32);
      v88 = v85 & ~v87;
      if ((*(v84 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v88))
      {
        v89 = ~v87;
        while (1)
        {
          v90 = *(v125[6] + v88);
          if (v90 != 1 && v90 != 2)
          {
            break;
          }

          v91 = sub_1B5604();

          if (v91)
          {
            goto LABEL_53;
          }

          v88 = (v88 + 1) & v89;
          if (((*(v86 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

LABEL_53:
        v95 = v111;
        sub_43050(v124, v111, &qword_229708, &unk_1BCB60);
        if ((*(v83 + 48))(v95, 1, v82) == 1)
        {
          sub_42F48(v95, &qword_229708, &unk_1BCB60);
        }

        else
        {
          v96 = v109;
          (*(v83 + 32))(v109, v95, v82);
          v113(v96);
          v97 = v115();

          sub_5F428(v97);
          (*(v83 + 8))(v96, v82);
        }
      }

LABEL_56:
      v81 = v120;
      if (v125[2])
      {
        v98 = v125;
        sub_1B57F4();
        sub_1B4884();
        v99 = sub_1B5844();
        v100 = -1 << *(v98 + 32);
        v101 = v99 & ~v100;
        if ((*(v86 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
        {
          v102 = ~v100;
          while (!*(v125[6] + v101) || *(v125[6] + v101) == 2)
          {
            v103 = sub_1B5604();

            if (v103)
            {
              goto LABEL_65;
            }

            v101 = (v101 + 1) & v102;
            if (((*(v86 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
            {
              goto LABEL_68;
            }
          }

LABEL_65:
          v104 = v110;
          sub_43050(v81, v110, &qword_229708, &unk_1BCB60);
          if ((*(v83 + 48))(v104, 1, v82) == 1)
          {
            sub_42F48(v81, &qword_229708, &unk_1BCB60);
            sub_42F48(v124, &qword_229708, &unk_1BCB60);
            sub_42F48(v119, &qword_229708, &unk_1BCB60);
            v94 = v104;
            goto LABEL_69;
          }

          v105 = v108;
          (*(v83 + 32))(v108, v104, v82);
          v113(v105);
          v106 = v115();

          sub_5F428(v106);
          (*(v83 + 8))(v105, v82);
        }
      }
    }

LABEL_68:
    sub_42F48(v81, &qword_229708, &unk_1BCB60);
    sub_42F48(v124, &qword_229708, &unk_1BCB60);
    v94 = v119;
    goto LABEL_69;
  }

  v44 = 0;
  v45 = (v121 + 32);
  v46 = _swiftEmptyArrayStorage;
  v116 = (v121 + 32);
  do
  {
    v47 = &v45[136 * v44];
    v48 = v44;
    while (1)
    {
      if (v48 >= v43)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v49 = *(v47 + 7);
      v133 = *(v47 + 6);
      v134 = v49;
      v135 = v47[128];
      v50 = *(v47 + 3);
      v129 = *(v47 + 2);
      v130 = v50;
      v51 = *(v47 + 5);
      v131 = *(v47 + 4);
      v132 = v51;
      v52 = *(v47 + 1);
      v127 = *v47;
      v128 = v52;
      v44 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_71;
      }

      if ((BYTE8(v127) & 1) == 0)
      {
        break;
      }

      v53 = sub_1B5604();
      sub_429F8(&v127, v126);

      if (v53)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v127);
      ++v48;
      v47 += 136;
      if (v44 == v43)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v127, v126);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v136 = v46;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v46[2] + 1, 1);
      v46 = v136;
    }

    v45 = v116;
    v55 = v46[2];
    v54 = v46[3];
    if (v55 >= v54 >> 1)
    {
      result = sub_37574((v54 > 1), v55 + 1, 1);
      v46 = v136;
    }

    v46[2] = v55 + 1;
    v56 = &v46[17 * v55];
    *(v56 + 2) = v127;
    v57 = v128;
    v58 = v129;
    v59 = v131;
    *(v56 + 5) = v130;
    *(v56 + 6) = v59;
    *(v56 + 3) = v57;
    *(v56 + 4) = v58;
    v60 = v132;
    v61 = v133;
    v62 = v134;
    *(v56 + 160) = v135;
    *(v56 + 8) = v61;
    *(v56 + 9) = v62;
    *(v56 + 7) = v60;
  }

  while (v44 != v43);
LABEL_27:
  *&v127 = v46;
  result = sub_1B43C4();
  v63 = 0;
  v64 = v121 + 32;
  v30 = _swiftEmptyArrayStorage;
  v121 += 32;
LABEL_28:
  v65 = v64 + 136 * v63;
  v66 = v63;
  while (v66 < v43)
  {
    v67 = *(v65 + 112);
    v133 = *(v65 + 96);
    v134 = v67;
    v135 = *(v65 + 128);
    v68 = *(v65 + 48);
    v129 = *(v65 + 32);
    v130 = v68;
    v69 = *(v65 + 80);
    v131 = *(v65 + 64);
    v132 = v69;
    v70 = *(v65 + 16);
    v127 = *v65;
    v128 = v70;
    v63 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_73;
    }

    if (BYTE8(v127))
    {
      sub_429F8(&v127, v126);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v136 = v30;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v30[2] + 1, 1);
        v30 = v136;
      }

      v73 = v30[2];
      v72 = v30[3];
      if (v73 >= v72 >> 1)
      {
        result = sub_37574((v72 > 1), v73 + 1, 1);
        v30 = v136;
      }

      v30[2] = v73 + 1;
      v74 = &v30[17 * v73];
      *(v74 + 2) = v127;
      v75 = v128;
      v76 = v129;
      v77 = v131;
      *(v74 + 5) = v130;
      *(v74 + 6) = v77;
      *(v74 + 3) = v75;
      *(v74 + 4) = v76;
      v78 = v132;
      v79 = v133;
      v80 = v134;
      *(v74 + 160) = v135;
      *(v74 + 8) = v79;
      *(v74 + 9) = v80;
      *(v74 + 7) = v78;
      v64 = v121;
      if (v63 != v43)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v71 = sub_1B5604();
    sub_429F8(&v127, v126);

    if (v71)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v127);
    ++v66;
    v65 += 136;
    if (v63 == v43)
    {
      goto LABEL_43;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

void *sub_5B738(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v49 = _swiftEmptyArrayStorage;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      return v49;
    }

    if (v4 == 6)
    {
LABEL_18:
      v21 = *(a1 + 16);
      if (!v21)
      {
LABEL_30:
        v22 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }

      v22 = sub_35274(*(a1 + 16), 0);
      v23 = sub_3F1A0(&v48, v22 + 32, v21, a1);
      v24 = v48;
      v44 = v23;

      sub_417B8(v24);
      if (v44 == v21)
      {
LABEL_31:
        v35 = sub_4ADCC(v22, v5, v6, v7);
LABEL_42:
        v38 = v35;

        sub_5F428(v38);
        return v49;
      }

      __break(1u);
LABEL_21:
      v12 = swift_allocObject();
      *(v12 + 16) = v5;
      *(v12 + 24) = v6;
      *(v12 + 32) = v7;
      v25 = *(a1 + 16);
      if (v25)
      {
        v14 = sub_35274(*(a1 + 16), 0);
        v26 = sub_3F1A0(&v48, v14 + 32, v25, a1);
        v27 = v48;
        v45 = v26;
        swift_retain_n();

        sub_417B8(v27);
        if (v45 != v25)
        {
          __break(1u);
LABEL_24:
          v28 = *(a1 + 16);
          if (v28)
          {
            v29 = sub_35274(*(a1 + 16), 0);
            v30 = sub_3F1A0(&v48, v29 + 32, v28, a1);
            v31 = v48;
            v46 = v30;

            sub_417B8(v31);
            if (v46 != v28)
            {
              __break(1u);
              goto LABEL_27;
            }
          }

          else
          {
            v29 = _swiftEmptyArrayStorage;
          }

          v35 = sub_4CC3C(v29, v5, v6, v7);
          goto LABEL_42;
        }
      }

      else
      {
        swift_retain_n();

        v14 = _swiftEmptyArrayStorage;
      }

      v36 = sub_5DCBC;
      v37 = sub_4E5E8;
      goto LABEL_45;
    }

    if (v4 != 7)
    {
      goto LABEL_24;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = sub_35274(*(a1 + 16), 0);
      v10 = sub_3F1A0(&v48, v9 + 32, v8, a1);
      v11 = v48;
      v41 = v10;

      sub_417B8(v11);
      v4 = v41;
      if (v41 != v8)
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v35 = sub_4BD04(v9, v5, v6, v7);
    goto LABEL_42;
  }

LABEL_8:
  if (v4 > 2)
  {
    goto LABEL_13;
  }

  if (v4 >= 2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v6;
    *(v12 + 32) = v7;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = sub_35274(*(a1 + 16), 0);
      v15 = sub_3F1A0(&v48, v14 + 32, v13, a1);
      v16 = v48;
      v42 = v15;
      swift_retain_n();

      sub_417B8(v16);
      v4 = v42;
      if (v42 != v13)
      {
        __break(1u);
LABEL_13:
        if (v4 == 3)
        {
          goto LABEL_21;
        }

        if (v4 != 4)
        {
LABEL_27:
          v12 = swift_allocObject();
          *(v12 + 16) = v5;
          *(v12 + 24) = v6;
          *(v12 + 32) = v7;
          v32 = *(a1 + 16);
          if (v32)
          {
            v14 = sub_35274(*(a1 + 16), 0);
            v33 = sub_3F1A0(&v48, v14 + 32, v32, a1);
            v34 = v48;
            v47 = v33;
            swift_retain_n();

            sub_417B8(v34);
            if (v47 != v32)
            {
              __break(1u);
              goto LABEL_30;
            }
          }

          else
          {
            swift_retain_n();

            v14 = _swiftEmptyArrayStorage;
          }

          v36 = sub_5DC68;
          v37 = sub_4EE44;
LABEL_45:
          v39 = sub_5AB68(v14, v5, v6, v7, v36, v12, v37, 0);

          sub_5F428(v39);

          return v49;
        }

        v17 = *(a1 + 16);
        if (v17)
        {
          v18 = sub_35274(*(a1 + 16), 0);
          v19 = sub_3F1A0(&v48, v18 + 32, v17, a1);
          v20 = v48;
          v43 = v19;

          sub_417B8(v20);
          if (v43 != v17)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          v18 = _swiftEmptyArrayStorage;
        }

        v35 = sub_49E94(v18, v5, v6, v7);
        goto LABEL_42;
      }
    }

    else
    {
      swift_retain_n();

      v14 = _swiftEmptyArrayStorage;
    }

    v36 = sub_5DD0C;
    v37 = sub_4DB74;
    goto LABEL_45;
  }

  return v49;
}

unint64_t *sub_5BD3C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_12:
    v15 = *(a4 + 16);
    v16 = (a4 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if (v17 == *(*(a3 + 48) + 8 * v12))
      {
        goto LABEL_5;
      }
    }

    *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_18;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_5565C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_5BE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v13);
    bzero(&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
    v14 = a3(&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);
    if (v4)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v16 = v14;
    swift_bridgeObjectRelease_n();
    return v16;
  }

  v17 = swift_slowAlloc();

  v16 = sub_552FC(v17, v11, a1, a2, a4);

  result = swift_bridgeObjectRelease_n();
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_5C00C(uint64_t a1, uint64_t *a2)
{
  v73 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v3 = *(v73 - 8);
  __chkstk_darwin(v73);
  v5 = &v62 - v4;
  v74 = type metadata accessor for CollectionRecommendation(0);
  v76 = *(v74 - 8);
  v6 = __chkstk_darwin(v74);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v62 - v9;
  v63 = *a2;
  v10 = a2[2];
  v67 = sub_15C8EC();
  v11 = 0;
  v12 = 0;
  v83 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptySetSingleton;
  v71 = (v3 + 32);
  v72 = (v3 + 8);
  v68 = xmmword_1BCA80;
  v69 = v5;
  v70 = v8;
  v62 = v10;
  do
  {
    if (*(v10 + 16))
    {
      v17 = *(&off_20FFB8 + v11 + 32);
      v18 = sub_3AA80(v17);
      if (v19)
      {
        v66 = v11;
        v20 = *(v10 + 56) + 24 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v80[0] = v17;

        v24 = v67;

        v26 = sub_592BC(v25, v80, v63);

        v27 = sub_5BE4C(v24, v26, sub_5AA60, sub_5AA60);
        v64 = v12;

        v65 = v26;

        v81[0] = v17;
        *v80 = v21;
        v80[8] = v22;
        *&v80[16] = v23;
        v28 = sub_5B738(v27, v81, v80);

        v77 = v28[2];
        if (v77)
        {
          v29 = 0;
          v75 = v28 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
          v13 = _swiftEmptyArrayStorage;
          v30 = v70;
          while (v29 < v28[2])
          {
            v31 = v79;
            sub_5EB2C(&v75[*(v76 + 72) * v29], v79, type metadata accessor for CollectionRecommendation);
            sub_5EB2C(v31, v30, type metadata accessor for CollectionRecommendation);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v33 = v73;
            v78 = v29 + 1;
            switch(EnumCaseMultiPayload)
            {
              case 1:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 12:
                goto LABEL_13;
              case 2:
                v55 = sub_2B0C(&qword_228F40, &unk_1BB360);
                memcpy(v80, v30 + *(v55 + 48), sizeof(v80));
                sub_2601C(v80);

LABEL_13:
                (*v71)(v5, v30, v33);
                sub_1B4394();
                (*v72)(v5, v33);
                v34 = *v80;
                break;
              case 9:
                sub_5DC0C(v30);
                v34 = _swiftEmptyArrayStorage;
                break;
              default:
                sub_2B0C(&qword_229368, &qword_1BC408);
                v34 = swift_allocObject();
                v35 = *v30;
                v36 = v30[1];
                v34[1] = v68;
                v34[2] = v35;
                v37 = v30[2];
                v38 = v30[3];
                v34[3] = v36;
                v34[4] = v37;
                v34[5] = v38;
                break;
            }

            v39 = v28;
            v40 = *(v34 + 2);
            if (v40)
            {
              *v80 = _swiftEmptyArrayStorage;
              sub_3741C(0, v40, 0);
              v41 = *v80;
              v42 = *(*v80 + 16);
              v43 = 2;
              do
              {
                v44 = *&v34[v43];
                *v80 = v41;
                v45 = v41[3];
                if (v42 >= v45 >> 1)
                {
                  sub_3741C((v45 > 1), v42 + 1, 1);
                  v41 = *v80;
                }

                v41[2] = v42 + 1;
                v41[v42 + 4] = v44;
                v43 += 4;
                ++v42;
                --v40;
              }

              while (v40);
              sub_5DC0C(v79);

              v5 = v69;
              v30 = v70;
            }

            else
            {

              sub_5DC0C(v79);
              v41 = _swiftEmptyArrayStorage;
            }

            v46 = v41[2];
            v47 = *(v13 + 2);
            v48 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              goto LABEL_42;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v48 > *(v13 + 3) >> 1)
            {
              if (v47 <= v48)
              {
                v50 = v47 + v46;
              }

              else
              {
                v50 = v47;
              }

              v13 = sub_33008(isUniquelyReferenced_nonNull_native, v50, 1, v13);
            }

            v28 = v39;
            v29 = v78;
            if (v41[2])
            {
              v51 = *(v13 + 2);
              if ((*(v13 + 3) >> 1) - v51 < v46)
              {
                goto LABEL_44;
              }

              memcpy(&v13[8 * v51 + 32], v41 + 4, 8 * v46);

              if (v46)
              {
                v52 = *(v13 + 2);
                v53 = __OFADD__(v52, v46);
                v54 = v52 + v46;
                if (v53)
                {
                  goto LABEL_45;
                }

                *(v13 + 2) = v54;
              }
            }

            else
            {

              if (v46)
              {
                goto LABEL_43;
              }
            }

            if (v29 == v77)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          JUMPOUT(0x5C70CLL);
        }

        v13 = _swiftEmptyArrayStorage;
LABEL_3:
        v14 = sub_40854(v13);

        sub_492E8(v14);
        sub_5F428(v28);
        v15 = v65;

        v12 = v64;
        v16 = sub_5BE4C(v67, v15, sub_5BD3C, sub_5BD3C);

        swift_bridgeObjectRelease_n();
        v67 = v16;
        v10 = v62;
        v11 = v66;
      }
    }

    ++v11;
  }

  while (v11 != 7);
  v56 = v83;
  v57 = v67;
  v58 = v67[2];
  if (!v58)
  {
    goto LABEL_39;
  }

  v59 = sub_35274(v67[2], 0);
  v60 = sub_3F1A0(v80, v59 + 32, v58, v57);
  sub_417B8(*v80);
  if (v60 != v58)
  {
    __break(1u);
LABEL_39:
  }

  return v56;
}

void *sub_5C794(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for CollectionRecommendation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  v11 = *a3;
  if (*(v10 + 16) && (v12 = sub_3AA80(0), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 24 * v12;
    v15 = *(v14 + 16);
    if (*(v14 + 8))
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = *v14;
    }
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (sub_2ABE4(v11, v15))
  {
  }

  else
  {
    if (!v15[2] || (sub_1B57F4(), sub_1B4884(), v32 = sub_1B5844(), v33 = -1 << *(v15 + 32), v34 = v32 & ~v33, ((*(v15 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v34) & 1) == 0))
    {
LABEL_24:

      return _swiftEmptyArrayStorage;
    }

    v44 = a1;
    v45 = v16;
    v35 = ~v33;
    while (!*(v15[6] + v34) || *(v15[6] + v34) == 1)
    {
      v36 = sub_1B5604();

      if (v36)
      {
        goto LABEL_35;
      }

      v34 = (v34 + 1) & v35;
      if (((*(v15 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v34) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_35:

    a1 = v44;
    v16 = v45;
  }

  v17 = *(a1 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_375B4(0, v17, 0);
    v18 = v47;
    v19 = (a1 + 32);
    do
    {
      v20 = v19[1];
      v48[0] = *v19;
      v48[1] = v20;
      v22 = v19[3];
      v49 = v19[2];
      v21 = v49;
      v50 = v22;
      *v9 = v48[0];
      v9[1] = v20;
      v9[2] = v21;
      v9[3] = v22;
      swift_storeEnumTagMultiPayload();
      sub_42BA4(v48, v46);
      v47 = v18;
      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        sub_375B4((v23 > 1), v24 + 1, 1);
        v18 = v47;
      }

      v18[2] = v24 + 1;
      sub_5EB94(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, type metadata accessor for CollectionRecommendation);
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_2FD88(v16, v18);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v37 = v27;
  v38 = v26;
  v39 = v25;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    v40 = _swiftEmptyArrayStorage;
  }

  v41 = v40[2];

  if (__OFSUB__(v37 >> 1, v38))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v41 != (v37 >> 1) - v38)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v27 = v37;
    v26 = v38;
    v25 = v39;
LABEL_16:
    sub_5101C(v28, v25, v26, v27);
    v30 = v29;
    swift_unknownObjectRelease();
    return v30;
  }

  v42 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v42;
  if (v42)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

_OWORD *sub_5CB94(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 254;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 88) = 0u;
  result = (a1 + 88);
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  return result;
}

void *sub_5CBF0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v55 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(v55 - 8);
  v7 = __chkstk_darwin(v55);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = *(a2 + 16);
  v13 = *a3;
  if (*(v12 + 16) && (v14 = sub_3AA80(9), (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v14;
    v17 = *(v16 + 16);
    if (*(v16 + 8))
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = *v16;
    }
  }

  else
  {
    v17 = _swiftEmptySetSingleton;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (sub_2ABE4(v13, v17))
  {
  }

  else
  {
    if (!v17[2] || (v53 = a1, sub_1B57F4(), sub_1B4884(), v35 = sub_1B5844(), v36 = -1 << *(v17 + 32), v37 = v35 & ~v36, ((*(v17 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0))
    {
LABEL_28:

      return _swiftEmptyArrayStorage;
    }

    v38 = ~v36;
    while (!*(v17[6] + v37) || *(v17[6] + v37) == 1)
    {
      v39 = sub_1B5604();

      if (v39)
      {
        goto LABEL_42;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v17 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_42:

    a1 = v53;
  }

  v54 = v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (a1 + 144);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v22 = *(v20 - 6);
      v58[0] = *(v20 - 7);
      v58[1] = v22;
      v23 = *(v20 - 4);
      v58[2] = *(v20 - 5);
      v59 = v23;
      if (*v20 != 2)
      {
        v24 = *(v20 - 1);
        v25 = BYTE8(v58[0]);
        v26 = _swiftEmptyDictionarySingleton;
        if (v59)
        {
          v26 = v59;
        }

        v27 = *(v20 - 6);
        *&v57[7] = *(v20 - 7);
        *&v57[23] = v27;
        v28 = *(v20 - 4);
        *&v57[39] = *(v20 - 5);
        *&v57[55] = v28;
        v29 = *(&v59 + 1);
        *v9 = v24;
        v9[8] = v25;
        v30 = *&v57[16];
        *(v9 + 9) = *v57;
        v31 = *&v57[32];
        v32 = *&v57[48];
        *(v9 + 9) = *&v57[63];
        *(v9 + 10) = v26;
        *(v9 + 57) = v32;
        *(v9 + 41) = v31;
        *(v9 + 25) = v30;
        *(v9 + 11) = v29;
        swift_storeEnumTagMultiPayload();
        sub_5EB94(v9, v11, type metadata accessor for CollectionRecommendation);
        sub_42BA4(v58, v56);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_33474(0, v21[2] + 1, 1, v21);
        }

        v34 = v21[2];
        v33 = v21[3];
        if (v34 >= v33 >> 1)
        {
          v21 = sub_33474((v33 > 1), v34 + 1, 1, v21);
        }

        v21[2] = v34 + 1;
        sub_5EB94(v11, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, type metadata accessor for CollectionRecommendation);
      }

      v20 += 136;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v43 = sub_2FD88(v54, v21);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v47 = v42;
  v48 = v41;
  v49 = v40;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = _swiftEmptyArrayStorage;
  }

  v51 = v50[2];

  if (__OFSUB__(v47 >> 1, v48))
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v51 != (v47 >> 1) - v48)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v42 = v47;
    v41 = v48;
    v40 = v49;
LABEL_31:
    sub_5101C(v43, v40, v41, v42);
    v45 = v44;
    swift_unknownObjectRelease();
    return v45;
  }

  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v52;
  if (v52)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

void *sub_5D0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a1;
  v5 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v83 = &v77 - v11;
  __chkstk_darwin(v10);
  v89 = &v77 - v12;
  v13 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v86 = &v77 - v18;
  __chkstk_darwin(v17);
  v20 = &v77 - v19;
  v21 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  v87 = &v77 - v25;
  __chkstk_darwin(v24);
  v27 = &v77 - v26;
  v28 = *(a3 + 16);
  v29 = *(v28 + 16);
  v82 = v30;
  v84 = v16;
  if (v29 && (v31 = sub_3AA80(1), (v32 & 1) != 0))
  {
    v33 = *(*(v28 + 56) + 24 * v31 + 16);

    if (!v33[2])
    {
      goto LABEL_20;
    }
  }

  else
  {
    v33 = _swiftEmptySetSingleton;
    if (!_swiftEmptySetSingleton[2])
    {
      goto LABEL_20;
    }
  }

  v81 = a2;
  v78 = v9;
  v79 = v6;
  v80 = v5;
  v85 = v22;
  v88 = v21;
  sub_1B57F4();
  sub_1B4884();
  v34 = sub_1B5844();
  v35 = v33 + 7;
  v36 = -1 << *(v33 + 32);
  v37 = v34 & ~v36;
  if ((*(v33 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (!*(v33[6] + v37) || *(v33[6] + v37) == 1)
    {
      v39 = sub_1B5604();

      if (v39)
      {
        goto LABEL_27;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v35 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_27:

    v91 = v90;

    sub_5F454(v50);
    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
    sub_1B43C4();
    v51 = v85;
    v52 = v88;
    if ((*(v85 + 48))(v20, 1, v88) == 1)
    {
      sub_42F48(v20, &qword_2296F0, &unk_1C3A10);
      return _swiftEmptyArrayStorage;
    }

    (*(v51 + 32))(v27, v20, v52);
    v53 = v89;
    (*(v51 + 16))(v89, v27, v52);
    swift_storeEnumTagMultiPayload();
    v44 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
    v55 = v44[2];
    v54 = v44[3];
    if (v55 >= v54 >> 1)
    {
      v44 = sub_33474((v54 > 1), v55 + 1, 1, v44);
    }

    v56 = v79;
    (*(v51 + 8))(v27, v52);
    v44[2] = v55 + 1;
    v57 = v44 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55;
    v58 = v53;
LABEL_32:
    sub_5EB94(v58, v57, type metadata accessor for CollectionRecommendation);
    return v44;
  }

LABEL_12:
  if (!v33[2])
  {
LABEL_20:
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  sub_1B57F4();
  sub_1B4884();
  v40 = sub_1B5844();
  v41 = -1 << *(v33 + 32);
  v42 = v40 & ~v41;
  if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
  {
    v43 = ~v41;
    v44 = _swiftEmptyArrayStorage;
    v45 = v85;
    while (1)
    {
      v46 = *(v33[6] + v42);
      if (v46 != 1 && v46 != 2)
      {
        break;
      }

      v47 = sub_1B5604();

      if (v47)
      {
        goto LABEL_34;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    v91 = v90;

    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
    v59 = v86;
    sub_1B43C4();
    v49 = v88;
    if ((*(v45 + 48))(v59, 1, v88) == 1)
    {
      sub_42F48(v59, &qword_2296F0, &unk_1C3A10);
      v44 = _swiftEmptyArrayStorage;
      if (!v33[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v60 = v87;
      (*(v45 + 32))(v87, v59, v49);
      v61 = v83;
      (*(v45 + 16))(v83, v60, v49);
      swift_storeEnumTagMultiPayload();
      v44 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
      v63 = v44[2];
      v62 = v44[3];
      if (v63 >= v62 >> 1)
      {
        v44 = sub_33474((v62 > 1), v63 + 1, 1, v44);
      }

      (*(v45 + 8))(v87, v49);
      v44[2] = v63 + 1;
      sub_5EB94(v61, v44 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v63, type metadata accessor for CollectionRecommendation);
      if (!v33[2])
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_24:
    v49 = v88;
    if (!v33[2])
    {
      goto LABEL_21;
    }
  }

  sub_1B57F4();
  sub_1B4884();
  v64 = sub_1B5844();
  v65 = -1 << *(v33 + 32);
  v66 = v64 & ~v65;
  if ((*(v35 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
  {
    v67 = ~v65;
    while (!*(v33[6] + v66) || *(v33[6] + v66) == 2)
    {
      v68 = sub_1B5604();

      if (v68)
      {
        goto LABEL_48;
      }

      v66 = (v66 + 1) & v67;
      if (((*(v35 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_48:

    v91 = v81;

    sub_2B0C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
    v69 = v84;
    sub_1B43C4();
    v70 = v85;
    v71 = (*(v85 + 48))(v69, 1, v49);
    v72 = v78;
    if (v71 == 1)
    {
      sub_42F48(v69, &qword_2296F0, &unk_1C3A10);
      return v44;
    }

    v73 = v82;
    (*(v70 + 32))(v82, v69, v49);
    (*(v70 + 16))(v72, v73, v49);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_33474(0, v44[2] + 1, 1, v44);
    }

    v74 = v79;
    v76 = v44[2];
    v75 = v44[3];
    if (v76 >= v75 >> 1)
    {
      v44 = sub_33474((v75 > 1), v76 + 1, 1, v44);
    }

    (*(v70 + 8))(v73, v49);
    v44[2] = v76 + 1;
    v57 = v44 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v76;
    v58 = v72;
    goto LABEL_32;
  }

LABEL_21:

  return v44;
}

uint64_t sub_5DC0C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRecommendation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5DC84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5DD24(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v70 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v25)
  {
    v24 = v9;
    v25 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v27 = __clz(__rbit64(v24)) | (v25 << 6);
    v28 = *(*(a1 + 48) + 8 * v27);
    v29 = (*(a1 + 56) + (v27 << 6));
    v30 = v29[3];
    v32 = *v29;
    v31 = v29[1];
    v58 = v29[2];
    v59 = v30;
    v56 = v32;
    v57 = v31;
    *&v55[8] = *v29;
    *&v55[24] = v29[1];
    *&v55[40] = v29[2];
    *&v55[56] = v29[3];
    *v55 = v28;
    sub_42BA4(&v56, &v60);
    a2(&v65, v55);
    v62 = *&v55[32];
    v63 = *&v55[48];
    v64 = *&v55[64];
    v60 = *v55;
    v61 = *&v55[16];
    sub_42F48(&v60, &qword_229798, &qword_1BCBF8);
    if (!v68)
    {
LABEL_22:
      sub_417B8(a1);
    }

    v33 = a4;
    v34 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v35 = *v70;
    v37 = sub_43124(v65);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_24;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if ((v33 & 1) == 0)
      {
        sub_1858C4();
      }
    }

    else
    {
      sub_17E550(v40, v33 & 1);
      v42 = sub_43124(v34);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v37 = v42;
    }

    v9 = (v24 - 1) & v24;
    if (v41)
    {
      v12 = *v70;
      v13 = (*(*v70 + 56) + (v37 << 6));
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v58 = v13[2];
      v59 = v14;
      v56 = v16;
      v57 = v15;
      sub_42BA4(&v56, v55);
      sub_43FF4(&v60);
      v17 = (*(v12 + 56) + (v37 << 6));
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[3];
      *&v55[32] = v17[2];
      *&v55[48] = v20;
      *v55 = v19;
      *&v55[16] = v18;
      v21 = v56;
      v22 = v57;
      v23 = v59;
      v17[2] = v58;
      v17[3] = v23;
      *v17 = v21;
      v17[1] = v22;
      sub_43FF4(v55);
    }

    else
    {
      v44 = *v70;
      v44[(v37 >> 6) + 8] |= 1 << v37;
      *(v44[6] + 8 * v37) = v34;
      v45 = (v44[7] + (v37 << 6));
      v46 = v60;
      v47 = v61;
      v48 = v63;
      v45[2] = v62;
      v45[3] = v48;
      *v45 = v46;
      v45[1] = v47;
      v49 = v44[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_25;
      }

      v44[2] = v51;
    }

    a4 = 1;
  }

  v26 = i;
  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v10)
    {
      goto LABEL_22;
    }

    v24 = *(v6 + 8 * v25);
    ++v26;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_5E05C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      memcpy(__dst, v2, 0x231uLL);
      sub_4299C(__dst, v4);
      sub_111DC0(__src, __dst);
      memcpy(v4, __src, 0x231uLL);
      result = sub_2601C(v4);
      v2 += 568;
      --v1;
    }

    while (v1);
  }

  return result;
}

void *sub_5E0E0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v28 = a2;
  v29 = a1;
  v34 = sub_2B0C(&qword_229720, &unk_1BCB70);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  v6 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v32 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v30 = 0;
  v31 = &v28 - v8;
  v9 = 0;
  v36 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      memcpy(v40, (v36[6] + 568 * v20), 0x231uLL);
      v21 = v31;
      v22 = v20;
      sub_43050(v36[7] + *(v32 + 72) * v20, v31, &qword_229728, &unk_1D14A0);
      v23 = v33;
      memcpy(v33, v40, 0x231uLL);
      sub_43050(v21, v23 + *(v34 + 48), &qword_229728, &unk_1D14A0);
      v24 = memcpy(v39, v23, sizeof(v39));
      __chkstk_darwin(v24);
      *(&v28 - 2) = v39;
      sub_4299C(v40, v38);
      sub_4299C(v40, v38);
      v25 = v41;
      v26 = sub_5061C(sub_5E42C, (&v28 - 4), v35);
      v41 = v25;
      sub_42F48(v23, &qword_229720, &unk_1BCB70);
      sub_42F48(v21, &qword_229728, &unk_1D14A0);
      result = sub_2601C(v40);
      if (v26)
      {
        *(v29 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v30++, 1))
        {
          break;
        }
      }

      v15 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return sub_558E4(v29, v28, v30, v36);
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return sub_558E4(v29, v28, v30, v36);
      }

      v19 = v11[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_5E42C(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x231uLL);
  memcpy(v4, v2, 0x231uLL);
  return _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(__dst, v4);
}

uint64_t sub_5E494(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v37 = sub_2B0C(&qword_229738, &unk_1BCB90);
  __chkstk_darwin(v37);
  v44 = &v31 - v6;
  v43 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  result = __chkstk_darwin(v43);
  v42 = &v31 - v9;
  v39 = 0;
  v40 = a3;
  v10 = 0;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v38 = a4;
  v34 = (a4 + 32);
  v35 = v8 + 16;
  v36 = v8;
  v33 = (v8 + 8);
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v41 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(v40[6] + 8 * v21);
    v23 = *(v36 + 16);
    v24 = v42;
    v25 = v43;
    v23(v42, v40[7] + *(v36 + 72) * v21, v43);
    v26 = v44;
    *v44 = v22;
    v23(&v26[*(v37 + 48)], v24, v25);
    v27 = *(v38 + 16);
    v28 = v34;
    do
    {
      if (!v27)
      {
        sub_42F48(v44, &qword_229738, &unk_1BCB90);
        result = (*v33)(v42, v43);
        v16 = v41;
        goto LABEL_5;
      }

      v29 = *v28++;
      --v27;
    }

    while (v29 != v22);
    sub_42F48(v44, &qword_229738, &unk_1BCB90);
    result = (*v33)(v42, v43);
    *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v30 = __OFADD__(v39++, 1);
    v16 = v41;
    if (v30)
    {
      __break(1u);
      return sub_55BB0(v32, v31, v39, v40);
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_55BB0(v32, v31, v39, v40);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_5E79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_55394(v16, v11, a1, a2, a4);

      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_5E96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229728, &unk_1D14A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_5E9F4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t *sub_5EA10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_5EB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5EB94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_5EC58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_5ED18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B0C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5ED80()
{
  result = qword_229338;
  if (!qword_229338)
  {
    sub_1B40F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229338);
  }

  return result;
}

void *sub_5EF0C(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  v4 = result[2];
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_33128(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  result = sub_3EF0C(v41, &v5[568 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v5 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v5 + 2) = v16;
  }

  if (result != v13)
  {
    v17 = v41[0];
LABEL_14:
    result = sub_417B8(v17);
    *v1 = v5;
    return result;
  }

LABEL_17:
  v4 = *(v5 + 2);
  v13 = v41[1];
  v32 = v41[0];
  v2 = v41[2];
  v16 = v42;
  v18 = v43;
  if (v43)
  {
    v19 = v42;
LABEL_27:
    v23 = (v18 - 1) & v18;
    v24 = (*(v32 + 48) + 568 * (__clz(__rbit64(v18)) | (v19 << 6)));
    memcpy(__dst, v24, 0x231uLL);
    memmove(__src, v24, 0x231uLL);
    AuthorRecommendationSource.id.getter();
    sub_4299C(__dst, v38);
    v22 = v19;
LABEL_28:
    memcpy(__dst, __src, 0x231uLL);
    if (sub_6153C(__dst) != 1)
    {
      v2 = (v2 + 64) >> 6;
      do
      {
        v25 = *(v5 + 3);
        v26 = v25 >> 1;
        if ((v25 >> 1) < v4 + 1)
        {
          v5 = sub_33128((v25 > 1), v4 + 1, 1, v5);
          v26 = *(v5 + 3) >> 1;
        }

        memcpy(v37, __src, 0x231uLL);
        memcpy(v38, __src, 0x231uLL);
        if (sub_6153C(v38) != 1)
        {
          while (v4 < v26)
          {
            memcpy(v35, __src, 0x231uLL);
            memcpy(v36, v37, 0x231uLL);
            sub_4299C(v36, v34);
            sub_42F48(v35, &qword_229890, &qword_1BCCE0);
            memmove(&v5[568 * v4 + 32], v37, 0x231uLL);
            if (!v23)
            {
              if (v2 <= (v22 + 1))
              {
                v28 = v22 + 1;
              }

              else
              {
                v28 = v2;
              }

              v29 = v28 - 1;
              while (1)
              {
                v27 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v27 >= v2)
                {
                  sub_61554(v34);
                  memcpy(__src, v34, 0x231uLL);
                  v23 = 0;
                  v22 = v29;
                  goto LABEL_37;
                }

                v23 = v13[v27];
                ++v22;
                if (v23)
                {
                  v22 = v27;
                  goto LABEL_49;
                }
              }

              __break(1u);
              goto LABEL_51;
            }

            v27 = v22;
LABEL_49:
            v30 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v31 = (*(v32 + 48) + 568 * (v30 | (v27 << 6)));
            memcpy(v34, v31, 0x231uLL);
            memmove(__src, v31, 0x231uLL);
            AuthorRecommendationSource.id.getter();
            sub_4299C(v34, v33);
LABEL_37:
            ++v4;
            memcpy(v37, __src, 0x231uLL);
            memcpy(v38, __src, 0x231uLL);
            if (sub_6153C(v38) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v4;
        memcpy(__dst, __src, 0x231uLL);
      }

      while (sub_6153C(__dst) != 1);
    }

    memcpy(v38, __src, 0x231uLL);
    sub_42F48(v38, &qword_229890, &qword_1BCCE0);
    v17 = v32;
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v2 + 64) >> 6;
  if (v20 <= (v16 + 1))
  {
    v21 = (v16 + 1);
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
LABEL_51:
      sub_61554(__src);
      v23 = 0;
      goto LABEL_28;
    }

    v18 = v13[v19];
    ++v16;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5F33C(uint64_t result)
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

  result = sub_33008(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

char *sub_5F454(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_3349C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__int128 *sub_5F548(uint64_t a1)
{
  v3 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v103 - v5;
  v7 = sub_6155C();
  result = sub_1B49A4();
  v105 = v1;
  v9 = *v1;
  v10 = *(*v1 + 2);
  v11 = result + v10;
  if (__OFADD__(v10, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v14 = *(v9 + 3) >> 1, v14 < v11))
  {
    if (v10 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v10;
    }

    v9 = sub_33358(isUniquelyReferenced_nonNull_native, v15, 1, v9);
    v14 = *(v9 + 3) >> 1;
  }

  v16 = v14 - *(v9 + 2);
  (*(v4 + 16))(v6, a1, v3);
  v17 = sub_1B4994();
  v19 = *(v4 + 8);
  v18 = v4 + 8;
  result = v19(a1, v3);
  if (v17 < v12)
  {
    goto LABEL_15;
  }

  if (v17 >= 1)
  {
    v20 = *(v9 + 2);
    v21 = __CFADD__(v20, v17);
    v22 = __OFADD__(v20, v17);
    v23 = v20 + v17;
    if (v22)
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v9 + 2) = v23;
  }

  if (v17 != v16)
  {
LABEL_13:

    *v105 = v9;
    return result;
  }

LABEL_16:
  v12 = v107;
  v7 = *(v9 + 2);
  v17 = v119;
  v18 = v120;
  v24 = *(v119 + 16);
  v21 = v120 >= v24;
  if (v120 == v24)
  {
    sub_5E9F4(__dst);
    goto LABEL_21;
  }

LABEL_19:
  if (v21)
  {
    goto LABEL_40;
  }

  v25 = v17 + 136 * v18;
  v12[45] = *(v25 + 32);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = *(v25 + 96);
  v12[48] = *(v25 + 80);
  v12[49] = v28;
  v12[46] = v26;
  v12[47] = v27;
  v29 = *(v25 + 112);
  v30 = *(v25 + 128);
  v31 = *(v25 + 144);
  v116 = *(v25 + 160);
  v12[51] = v30;
  v12[52] = v31;
  v12[50] = v29;
  memmove(__dst, (v25 + 32), 0x81uLL);
  v24 = v18 + 1;
  AuthorRecommendationSource.id.getter();
  sub_429F8(v115, v113);
LABEL_21:
  v32 = v12[61];
  v12[51] = v12[60];
  v12[52] = v32;
  v116 = v118;
  v33 = v12[57];
  v12[47] = v12[56];
  v12[48] = v33;
  v34 = v12[59];
  v12[49] = v12[58];
  v12[50] = v34;
  v35 = v12[55];
  v12[45] = v12[54];
  v12[46] = v35;
  if (sub_5E9DC(v115) == 1)
  {
LABEL_22:
    v36 = v12[61];
    v12[42] = v12[60];
    v12[43] = v36;
    v114 = v118;
    v37 = v12[57];
    v12[38] = v12[56];
    v12[39] = v37;
    v38 = v12[59];
    v12[40] = v12[58];
    v12[41] = v38;
    v39 = v12[55];
    v12[36] = v12[54];
    v12[37] = v39;
    sub_42F48(v113, &qword_229790, &unk_1BCBE0);
    goto LABEL_13;
  }

  v104 = v17 + 32;
  while (1)
  {
    v44 = *(v9 + 3);
    v45 = v44 >> 1;
    if ((v44 >> 1) < v7 + 1)
    {
      v9 = sub_33358((v44 > 1), v7 + 1, 1, v9);
      v45 = *(v9 + 3) >> 1;
    }

    v46 = v12[59];
    v48 = v12[60];
    v47 = v12[61];
    v12[33] = v48;
    v12[34] = v47;
    v49 = v12[55];
    v51 = v12[56];
    v50 = v12[57];
    v12[29] = v51;
    v12[30] = v50;
    v52 = v12[57];
    v54 = v12[58];
    v53 = v12[59];
    v12[31] = v54;
    v12[32] = v53;
    v55 = v12[55];
    v56 = v12[54];
    v12[27] = v56;
    v12[28] = v55;
    v57 = v12[61];
    v12[42] = v48;
    v12[43] = v57;
    v12[38] = v51;
    v12[39] = v52;
    v12[40] = v54;
    v12[41] = v46;
    v112 = v118;
    v114 = v118;
    v12[36] = v56;
    v12[37] = v49;
    if (sub_5E9DC(v113) != 1 && v7 < v45)
    {
      break;
    }

LABEL_24:
    *(v9 + 2) = v7;
    v40 = v12[61];
    v12[51] = v12[60];
    v12[52] = v40;
    v116 = v118;
    v41 = v12[57];
    v12[47] = v12[56];
    v12[48] = v41;
    v42 = v12[59];
    v12[49] = v12[58];
    v12[50] = v42;
    v43 = v12[55];
    v12[45] = v12[54];
    v12[46] = v43;
    if (sub_5E9DC(v115) == 1)
    {
      goto LABEL_22;
    }
  }

  v58 = v9 + 32;
  while (1)
  {
    v59 = v58;
    v60 = &v58[136 * v7];
    v61 = v7 + 1;
    while (1)
    {
      v7 = v61;
      v62 = v12[61];
      v12[15] = v12[60];
      v12[16] = v62;
      v109[128] = v118;
      v63 = v12[57];
      v12[11] = v12[56];
      v12[12] = v63;
      v64 = v12[59];
      v12[13] = v12[58];
      v12[14] = v64;
      v65 = v12[55];
      v12[9] = v12[54];
      v12[10] = v65;
      v66 = v12[34];
      v12[24] = v12[33];
      v12[25] = v66;
      v110[128] = v112;
      v67 = v12[30];
      v12[20] = v12[29];
      v12[21] = v67;
      v68 = v12[32];
      v12[22] = v12[31];
      v12[23] = v68;
      v69 = v12[28];
      v12[18] = v12[27];
      v12[19] = v69;
      sub_429F8(v110, v107);
      sub_42F48(v109, &qword_229790, &unk_1BCBE0);
      result = memmove(v60, &v111, 0x81uLL);
      v70 = *(v17 + 16);
      if (v24 != v70)
      {
        break;
      }

      sub_5E9F4(v107);
      v71 = v12[6];
      v72 = v12[7];
      v12[60] = v71;
      v12[61] = v72;
      v73 = v108;
      v118 = v108;
      v74 = v12[2];
      v75 = v12[3];
      v12[56] = v74;
      v12[57] = v75;
      v77 = v12[4];
      v76 = v12[5];
      v12[58] = v77;
      v12[59] = v76;
      v79 = *v12;
      v78 = v12[1];
      v12[54] = *v12;
      v12[55] = v78;
      v12[33] = v71;
      v12[34] = v72;
      v112 = v73;
      v12[29] = v74;
      v12[30] = v75;
      v12[31] = v77;
      v12[32] = v76;
      v12[27] = v79;
      v12[28] = v78;
      v80 = v12[61];
      v12[42] = v12[60];
      v12[43] = v80;
      v114 = v118;
      v81 = v12[57];
      v12[38] = v12[56];
      v12[39] = v81;
      v82 = v12[59];
      v12[40] = v12[58];
      v12[41] = v82;
      v83 = v12[55];
      v12[36] = v12[54];
      v12[37] = v83;
      if (sub_5E9DC(v113) != 1)
      {
        v60 += 136;
        v61 = v7 + 1;
        if (v7 < v45)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    if (v24 >= v70)
    {
      break;
    }

    v84 = (v104 + 136 * v24);
    *v12 = *v84;
    v85 = v84[1];
    v86 = v84[2];
    v87 = v84[4];
    v12[3] = v84[3];
    v12[4] = v87;
    v12[1] = v85;
    v12[2] = v86;
    v88 = v84[5];
    v89 = v84[6];
    v90 = v84[7];
    v108 = *(v84 + 128);
    v12[6] = v89;
    v12[7] = v90;
    v12[5] = v88;
    memmove(__dst, v84, 0x81uLL);
    ++v24;
    AuthorRecommendationSource.id.getter();
    sub_429F8(v107, &v106);
    v91 = v12[59];
    v93 = v12[60];
    v92 = v12[61];
    v12[33] = v93;
    v12[34] = v92;
    v94 = v12[55];
    v96 = v12[56];
    v95 = v12[57];
    v12[29] = v96;
    v12[30] = v95;
    v97 = v12[57];
    v99 = v12[58];
    v98 = v12[59];
    v12[31] = v99;
    v12[32] = v98;
    v100 = v12[55];
    v101 = v12[54];
    v12[27] = v101;
    v12[28] = v100;
    v102 = v12[61];
    v12[42] = v93;
    v12[43] = v102;
    v12[38] = v96;
    v12[39] = v97;
    v12[40] = v99;
    v12[41] = v91;
    v112 = v118;
    v114 = v118;
    v12[36] = v101;
    v12[37] = v94;
    if (sub_5E9DC(v113) != 1)
    {
      v58 = v59;
      if (v7 < v45)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

char *sub_5FB40(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_33358(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_5FC38(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_3301C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_5FD2C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_338B0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_5FE24(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_33128(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_5FF1C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_3439C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_60054(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_60158(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_34600(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[48 * v7 + 32], v6 + 32, 48 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_6024C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_34710(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_60340(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_3481C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_6042C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_33008(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_3F09C(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_33008((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_417B8(result);
  *v1 = v3;
  return result;
}

uint64_t sub_606E0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_60824(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_3413C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t GenreMetadataServiceDepthMapGenerator.generateGenreDepthMap(configuration:)(uint64_t a1)
{
  v3 = *(a1 + 632);
  v2[6] = v1;
  v2[7] = v3;
  v2[8] = *(a1 + 648);
  return _swift_task_switch(sub_60948, 0, 0);
}

uint64_t sub_60948()
{
  v1 = v0[6];
  v9 = v0[7];

  sub_5F33C(v2);
  v3 = sub_40854(v9);
  v0[9] = v3;

  v4 = v1[5];
  v5 = v1[6];
  sub_2698(v1 + 2, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_60AB4;

  return v8(v3, v4, v5);
}

uint64_t sub_60AB4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_60D58;
  }

  else
  {
    v4 = sub_60BE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_60BE8()
{
  v1 = *(v0 + 88);
  sub_2B0C(&qword_2297D0, &qword_1BCC48);
  result = sub_1B5294();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v4 << 6);
LABEL_10:
      v14 = *(*(v1 + 48) + 8 * v11);
      v15 = *(*(*(v1 + 56) + 16 * v11 + 8) + 16);
      v16 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8;
      result = (*(v9 + v16) | (1 << v11));
      *(v9 + v16) = result;
      *(v3[6] + 8 * v11) = v14;
      *(v3[7] + 8 * v11) = v15;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v3[2] = v19;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v8)
      {
        break;
      }

      v13 = *(v1 + 64 + 8 * v4);
      ++v12;
      if (v13)
      {
        v7 = (v13 - 1) & v13;
        v11 = __clz(__rbit64(v13)) | (v4 << 6);
        goto LABEL_10;
      }
    }

    v20 = *(v0 + 8);

    return v20(v3);
  }

  return result;
}

uint64_t sub_60D58()
{
  v12 = v0;
  swift_errorRetain();
  v1 = sub_1B4624();
  v2 = sub_1B4D94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_1B5794();
    v7 = sub_60FF4(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "Error fetching genres: %s", v3, 0xCu);
    sub_2BF8(v4);
  }

  v8 = sub_130434(_swiftEmptyArrayStorage);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t GenreMetadataServiceDepthMapGenerator.deinit()
{
  sub_2BF8((v0 + 16));
  v1 = OBJC_IVAR____TtC20BooksPersonalization37GenreMetadataServiceDepthMapGenerator_logger;
  v2 = sub_1B4644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GenreMetadataServiceDepthMapGenerator.__deallocating_deinit()
{
  sub_2BF8((v0 + 16));
  v1 = OBJC_IVAR____TtC20BooksPersonalization37GenreMetadataServiceDepthMapGenerator_logger;
  v2 = sub_1B4644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_60FF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_610C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_430C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2BF8(v11);
  return v7;
}

unint64_t sub_610C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_611CC(a5, a6);
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
    result = sub_1B5154();
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

void *sub_611CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_61218(a1, a2);
  sub_61348(&off_20E7E0);
  return v3;
}

void *sub_61218(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_35580(v5, 0);
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

  result = sub_1B5154();
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
        v10 = sub_1B48E4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_35580(v10, 0);
        result = sub_1B5074();
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

char *sub_61348(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_335A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for GenreMetadataServiceDepthMapGenerator(uint64_t a1)
{
  result = qword_229800;
  if (!qword_229800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61488(uint64_t a1)
{
  result = sub_1B4644();
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

uint64_t sub_6153C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_6155C()
{
  result = qword_2296E8;
  if (!qword_2296E8)
  {
    sub_1CC1C(&qword_2296B8, &unk_1BCAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2296E8);
  }

  return result;
}

uint64_t sub_61610()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73444965726E6567;
  }
}

uint64_t sub_61674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_74EDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_6169C(uint64_t a1)
{
  v2 = sub_61914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_616D8(uint64_t a1)
{
  v2 = sub_61914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.MediaTypeConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229898, &unk_1BCD90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11[1] = *(v1 + 9);
  v11[2] = v9;
  sub_2698(a1, a1[3]);
  sub_61914();

  sub_1B5884();
  v15 = v8;
  v14 = 0;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();

  if (!v2)
  {
    v13 = 1;
    sub_1B5504();
    v12 = 2;
    sub_1B5504();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_61914()
{
  result = qword_2298A0;
  if (!qword_2298A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298A0);
  }

  return result;
}

uint64_t Configuration.MediaTypeConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2298B0, &qword_1BCDA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_2698(a1, a1[3]);
  sub_61914();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  v13[15] = 0;
  sub_61BC8(&qword_2298B8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v9 = v14;
  v13[14] = 1;
  v10 = sub_1B53C4();
  v13[13] = 2;
  v12 = sub_1B53C4();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;
  *(a2 + 9) = v12 & 1;

  sub_2BF8(a1);
}

uint64_t sub_61BC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_2292E8, &unk_1BC3A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BooksPersonalization::Configuration::GenreRecommendationConfiguration::Source_optional __swiftcall Configuration.GenreRecommendationConfiguration.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2110C0;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t Configuration.GenreRecommendationConfiguration.Source.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 1768055156;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000021;
  }

  if (!*v0)
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

Swift::Int sub_61D74()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_61E64(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_61F40(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_62038(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4610;
  v6 = 0x80000000001D4640;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 1768055156;
    v6 = 0xE400000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

BooksPersonalization::Configuration::GenreRecommendationConfiguration::GenreDepth_optional __swiftcall Configuration.GenreRecommendationConfiguration.GenreDepth.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_211158;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Configuration.GenreRecommendationConfiguration.GenreDepth.rawValue.getter()
{
  v1 = 0x656E4F6C6576656CLL;
  if (*v0 != 1)
  {
    v1 = 0x6F77546C6576656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73657661656CLL;
  }
}

uint64_t sub_62254(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656E4F6C6576656CLL;
  if (v2 != 1)
  {
    v3 = 0x6F77546C6576656CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x73657661656CLL;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x656E4F6C6576656CLL;
  if (*a2 != 1)
  {
    v6 = 0x6F77546C6576656CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x73657661656CLL;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_62354()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_623F4(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_62480(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_62528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E4F6C6576656CLL;
  if (v2 != 1)
  {
    v4 = 0x6F77546C6576656CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x73657661656CLL;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_62644(uint64_t a1, uint64_t a2)
{
  v4 = sub_75A54();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_62698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_75A54();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

Swift::Int sub_62720()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_62818(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_628FC(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

unint64_t sub_629F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75004(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_62A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x32656372756F73;
  v5 = 0x80000000001D46C0;
  v6 = 0xD00000000000001ALL;
  if (v2 == 3)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0x80000000001D46E0;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000000001D4680;
  if (*v1)
  {
    v7 = 0xD000000000000015;
    v8 = 0x80000000001D46A0;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v8;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_62AD4()
{
  v1 = *v0;
  v2 = 0x32656372756F73;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_62B84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62BAC(uint64_t a1)
{
  v2 = sub_62F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_62BE8(uint64_t a1)
{
  v2 = sub_62F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

BooksPersonalization::Configuration::GenreRecommendationConfiguration __swiftcall Configuration.GenreRecommendationConfiguration.init(source:combinedScorerBookHistoryWeight:bookHistoryLimit:bookHistoryGenreDepth:preferSaleTypeToGenreOrder:)(BooksPersonalization::Configuration::GenreRecommendationConfiguration::Source_optional source, Swift::Double_optional combinedScorerBookHistoryWeight, Swift::Int_optional bookHistoryLimit, BooksPersonalization::Configuration::GenreRecommendationConfiguration::GenreDepth_optional bookHistoryGenreDepth, Swift::Bool_optional preferSaleTypeToGenreOrder)
{
  v7 = *source.value;
  v8 = *preferSaleTypeToGenreOrder.value;
  if (v7 == 5)
  {
    LOBYTE(v7) = 1;
  }

  v9 = *&combinedScorerBookHistoryWeight.is_nil;
  if (bookHistoryLimit.value)
  {
    v9 = 0.7;
  }

  v10 = 1000;
  if ((bookHistoryGenreDepth.value & 1) == 0)
  {
    v10 = *&bookHistoryLimit.is_nil;
  }

  *v6 = v10;
  if (v8 == 3)
  {
    LOBYTE(v8) = 1;
  }

  *(v6 + 8) = v8;
  *(v6 + 9) = v7;
  *(v6 + 16) = v9;
  *(v6 + 24) = v5 & 1;
  result.preferSaleTypeToGenreOrder = bookHistoryLimit.value;
  result.bookHistoryGenreDepth = combinedScorerBookHistoryWeight.is_nil;
  result.combinedScorerBookHistoryWeight = v9;
  LOBYTE(result.bookHistoryLimit) = source;
  return result;
}

uint64_t Configuration.GenreRecommendationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2298C0, &qword_1BCDA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_2698(a1, a1[3]);
  sub_62F54();
  sub_1B5864();
  if (!v2)
  {
    v31 = 2;
    sub_62FA8();
    sub_1B5374();
    v9 = v32;
    v30 = 3;
    v10 = sub_1B5344();
    v25 = v11;
    v12 = *&v10;
    v29 = 0;
    v13 = sub_1B5364();
    v23 = v14;
    v24 = v13;
    v27 = 1;
    sub_62FFC();
    sub_1B5374();
    v22 = v28;
    v26 = 4;
    v16 = sub_1B5334();
    (*(v6 + 8))(v8, v5);
    if (v9 == 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = v9;
    }

    v18 = v12;
    if (v25)
    {
      v18 = 0.7;
    }

    v19 = v24;
    if (v23)
    {
      v19 = 1000;
    }

    *a2 = v19;
    v20 = v22;
    if (v22 == 3)
    {
      v20 = 1;
    }

    *(a2 + 8) = v20;
    *(a2 + 9) = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16 & 1;
  }

  return sub_2BF8(a1);
}

unint64_t sub_62F54()
{
  result = qword_2298C8;
  if (!qword_2298C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298C8);
  }

  return result;
}

unint64_t sub_62FA8()
{
  result = qword_2298D0;
  if (!qword_2298D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298D0);
  }

  return result;
}

unint64_t sub_62FFC()
{
  result = qword_2298D8;
  if (!qword_2298D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298D8);
  }

  return result;
}

uint64_t Configuration.GenreRecommendationConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2298E0, &qword_1BCDB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = v1[8];
  v12 = v1[9];
  v13 = v8;
  v11[3] = v1[24];
  sub_2698(a1, a1[3]);
  sub_62F54();
  sub_1B5884();
  v20 = 0;
  sub_1B5534();
  if (!v2)
  {
    v9 = v12;
    v19 = v13;
    v18 = 1;
    sub_63284();
    sub_1B5544();
    v17 = v9;
    v16 = 2;
    sub_632D8();
    sub_1B5544();
    v15 = 3;
    sub_1B5514();
    v14 = 4;
    sub_1B5504();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_63284()
{
  result = qword_2298E8;
  if (!qword_2298E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298E8);
  }

  return result;
}

unint64_t sub_632D8()
{
  result = qword_2298F0;
  if (!qword_2298F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2298F0);
  }

  return result;
}

uint64_t SeedBasedRecommendationSource.rawValue.getter()
{
  if (*v0)
  {
    return 1768055156;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_63390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1768055156;
  }

  else
  {
    v3 = 12662;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1768055156;
  }

  else
  {
    v5 = 12662;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5604();
  }

  return v8 & 1;
}

Swift::Int sub_63424()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_63494(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_634F0(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_63568(uint64_t *a1@<X8>)
{
  v2 = 12662;
  if (*v1)
  {
    v2 = 1768055156;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_63658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_636DC(uint64_t a1)
{
  v2 = sub_638A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_63718(uint64_t a1)
{
  v2 = sub_638A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.SeedBasedRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_2298F8, &qword_1BCDB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_638A0();
  sub_1B5884();
  v10 = v7;
  sub_638F4();
  sub_1B5544();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_638A0()
{
  result = qword_229900;
  if (!qword_229900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229900);
  }

  return result;
}

unint64_t sub_638F4()
{
  result = qword_229908;
  if (!qword_229908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229908);
  }

  return result;
}

uint64_t Configuration.SeedBasedRecommendationConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229910, &qword_1BCDC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_2698(a1, a1[3]);
  sub_638A0();
  sub_1B5864();
  if (!v2)
  {
    sub_63AB4();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return sub_2BF8(a1);
}

unint64_t sub_63AB4()
{
  result = qword_229918;
  if (!qword_229918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229918);
  }

  return result;
}

BooksPersonalization::Configuration::CollectionsConfiguration::Source_optional __swiftcall Configuration.CollectionsConfiguration.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2112F8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t Configuration.CollectionsConfiguration.Source.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000022;
  v4 = 0x495041616964656DLL;
  if (v1 != 3)
  {
    v4 = 1768055156;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

Swift::Int sub_63C48()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_63D38(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_63E14(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_63F0C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4700;
  v6 = 0xD000000000000022;
  v7 = 0xE800000000000000;
  v8 = 0x495041616964656DLL;
  if (v2 != 3)
  {
    v8 = 1768055156;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
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

BooksPersonalization::Configuration::CollectionsConfiguration::BooksConfiguration __swiftcall Configuration.CollectionsConfiguration.BooksConfiguration.init(rescorer:)(BooksPersonalization::Configuration::CollectionsConfiguration::BooksConfiguration rescorer)
{
  v2 = *rescorer.rescorer;
  if (v2 == 3)
  {
    LOBYTE(v2) = 1;
  }

  *v1 = v2;
  return rescorer;
}

uint64_t Configuration.CollectionsConfiguration.BooksConfiguration.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229920, &qword_1BCDC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_2698(a1, a1[3]);
  sub_641F0();
  sub_1B5864();
  if (!v2)
  {
    sub_64244();
    sub_1B5374();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    if (v12 == 3)
    {
      v9 = 1;
    }

    *a2 = v9;
  }

  return sub_2BF8(a1);
}

unint64_t sub_641F0()
{
  result = qword_229928;
  if (!qword_229928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229928);
  }

  return result;
}

unint64_t sub_64244()
{
  result = qword_229930;
  if (!qword_229930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229930);
  }

  return result;
}

uint64_t sub_642E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_64368(uint64_t a1)
{
  v2 = sub_641F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_643A4(uint64_t a1)
{
  v2 = sub_641F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.BooksConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229938, &qword_1BCDD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_641F0();
  sub_1B5884();
  v10 = v7;
  sub_6452C();
  sub_1B5544();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_6452C()
{
  result = qword_229940;
  if (!qword_229940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229940);
  }

  return result;
}

unint64_t sub_645F4()
{
  result = qword_229950;
  if (!qword_229950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229950);
  }

  return result;
}

unint64_t sub_64648()
{
  result = qword_229958;
  if (!qword_229958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229958);
  }

  return result;
}

uint64_t sub_6469C(uint64_t a1)
{
  v2 = sub_645F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_646D8(uint64_t a1)
{
  v2 = sub_645F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_64758()
{
  result = qword_229968;
  if (!qword_229968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229968);
  }

  return result;
}

unint64_t sub_64820()
{
  result = qword_229978;
  if (!qword_229978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229978);
  }

  return result;
}

uint64_t sub_6487C()
{
  if (*v0)
  {
    return 0x7265726F63736572;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_648B8(uint64_t a1)
{
  v2 = sub_64820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_648F4(uint64_t a1)
{
  v2 = sub_64820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.ForYouConfiguration.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229988, &qword_1BCDF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_2698(a1, a1[3]);
  sub_64B84();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    sub_64648();
    sub_1B5374();
    v9 = v17;
    v14 = 1;
    sub_64244();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    if (v9 == 5)
    {
      v11 = 3;
    }

    else
    {
      v11 = v9;
    }

    *a2 = v11;
    a2[1] = v10;
  }

  return sub_2BF8(a1);
}

unint64_t sub_64B84()
{
  result = qword_229990;
  if (!qword_229990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229990);
  }

  return result;
}

uint64_t sub_64BD8(uint64_t a1)
{
  v2 = sub_64B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64C14(uint64_t a1)
{
  v2 = sub_64B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

BooksPersonalization::Configuration::CollectionsConfiguration::MangaYouMightLikeConfiguration __swiftcall Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.init(source:rescorer:)(BooksPersonalization::Configuration::CollectionsConfiguration::Source_optional source, BooksPersonalization::Scorer_optional rescorer)
{
  v3 = *source.value;
  v4 = *rescorer.value;
  if (v3 == 5)
  {
    LOBYTE(v3) = 3;
  }

  if (v4 == 3)
  {
    LOBYTE(v4) = 1;
  }

  *v2 = v3;
  v2[1] = v4;
  result.source = source.value;
  return result;
}

uint64_t sub_64D30@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a6@<X8>)
{
  v19 = a6;
  v9 = sub_2B0C(a2, a3);
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_2698(a1, a1[3]);
  a4();
  sub_1B5864();
  if (!v6)
  {
    v13 = v18;
    v12 = v19;
    v22 = 0;
    sub_64648();
    sub_1B5374();
    v14 = v23;
    v20 = 1;
    sub_64244();
    sub_1B5374();
    (*(v13 + 8))(v11, v9);
    v15 = v21;
    if (v14 == 5)
    {
      v16 = 3;
    }

    else
    {
      v16 = v14;
    }

    if (v21 == 3)
    {
      v15 = 1;
    }

    *v12 = v16;
    v12[1] = v15;
  }

  return sub_2BF8(a1);
}

unint64_t sub_64F20()
{
  result = qword_2299A8;
  if (!qword_2299A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299A8);
  }

  return result;
}

uint64_t sub_64F74(uint64_t a1)
{
  v2 = sub_64F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64FB0(uint64_t a1)
{
  v2 = sub_64F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

BooksPersonalization::Configuration::CollectionsConfiguration::MoreFromYourAuthorsConfiguration __swiftcall Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration.init(source:rescorer:bookHistoryAuthorFetchMaxCount:)(BooksPersonalization::Configuration::CollectionsConfiguration::Source_optional source, BooksPersonalization::Scorer_optional rescorer, Swift::Int_optional bookHistoryAuthorFetchMaxCount)
{
  v4 = *source.value;
  v5 = *rescorer.value;
  if (v4 == 5)
  {
    LOBYTE(v4) = 3;
  }

  if (v5 == 3)
  {
    LOBYTE(v5) = 1;
  }

  *v3 = v4;
  if (bookHistoryAuthorFetchMaxCount.is_nil)
  {
    value = 50;
  }

  else
  {
    value = bookHistoryAuthorFetchMaxCount.value;
  }

  *(v3 + 1) = v5;
  *(v3 + 8) = value;
  LOBYTE(result.bookHistoryAuthorFetchMaxCount) = rescorer;
  result.source = source.value;
  return result;
}

uint64_t Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299B8, &qword_1BCE18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_2698(a1, a1[3]);
  sub_652D8();
  sub_1B5864();
  if (!v2)
  {
    v24 = 0;
    sub_64648();
    sub_1B5374();
    v9 = v25;
    v22 = 1;
    sub_64244();
    sub_1B5374();
    v10 = v23;
    v21 = 2;
    v11 = sub_1B5364();
    v14 = v13;
    v15 = *(v6 + 8);
    v20 = v11;
    v15(v8, v5);
    if (v9 == 5)
    {
      v16 = 3;
    }

    else
    {
      v16 = v9;
    }

    if (v10 == 3)
    {
      v17 = 1;
    }

    else
    {
      v17 = v10;
    }

    *a2 = v16;
    v18 = v20;
    if (v14)
    {
      v18 = 50;
    }

    *(a2 + 1) = v17;
    *(a2 + 8) = v18;
  }

  return sub_2BF8(a1);
}

unint64_t sub_652D8()
{
  result = qword_2299C0;
  if (!qword_2299C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299C0);
  }

  return result;
}

unint64_t sub_6532C()
{
  v1 = 0x7265726F63736572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_65388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_75050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_653B0(uint64_t a1)
{
  v2 = sub_652D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_653EC(uint64_t a1)
{
  v2 = sub_652D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2299C8, &qword_1BCE20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10 = *(v1 + 1);
  sub_2698(a1, a1[3]);
  sub_652D8();
  sub_1B5884();
  v16 = v8;
  v15 = 0;
  sub_64758();
  sub_1B5544();
  if (!v2)
  {
    v14 = v11;
    v13 = 1;
    sub_6452C();
    sub_1B5544();
    v12 = 2;
    sub_1B5534();
  }

  return (*(v5 + 8))(v7, v4);
}

BooksPersonalization::Configuration::CollectionsConfiguration::SuggestionsConfiguration __swiftcall Configuration.CollectionsConfiguration.SuggestionsConfiguration.init(source:rescorer:)(BooksPersonalization::Configuration::CollectionsConfiguration::Source_optional source, BooksPersonalization::Scorer_optional rescorer)
{
  v3 = *source.value;
  v4 = *rescorer.value;
  if (v3 == 5)
  {
    LOBYTE(v3) = 2;
  }

  if (v4 == 3)
  {
    LOBYTE(v4) = 1;
  }

  *v2 = v3;
  v2[1] = v4;
  result.source = source.value;
  return result;
}

uint64_t Configuration.CollectionsConfiguration.SuggestionsConfiguration.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299D0, &qword_1BCE28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_2698(a1, a1[3]);
  sub_6583C();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    sub_64648();
    sub_1B5374();
    v9 = v17;
    v14 = 1;
    sub_64244();
    sub_1B5374();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    if (v9 == 5)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9;
    }

    if (v15 == 3)
    {
      v10 = 1;
    }

    *a2 = v11;
    a2[1] = v10;
  }

  return sub_2BF8(a1);
}

unint64_t sub_6583C()
{
  result = qword_2299D8;
  if (!qword_2299D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299D8);
  }

  return result;
}

uint64_t sub_65890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_65968(uint64_t a1)
{
  v2 = sub_6583C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_659A4(uint64_t a1)
{
  v2 = sub_6583C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_65A24(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v7 = sub_2B0C(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = *v5;
  v15 = v5[1];
  sub_2698(a1, a1[3]);
  (v14[0])();
  sub_1B5884();
  v19 = v11;
  v18 = 0;
  sub_64758();
  v12 = v14[1];
  sub_1B5544();
  if (!v12)
  {
    v17 = v15;
    v16 = 1;
    sub_6452C();
    sub_1B5544();
  }

  return (*(v8 + 8))(v10, v7);
}

BooksPersonalization::Configuration::CollectionsConfiguration::PostHydrationFilteringConfiguration __swiftcall Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.init(genericArtworkRegex:)(BooksPersonalization::Configuration::CollectionsConfiguration::PostHydrationFilteringConfiguration genericArtworkRegex)
{
  object = 0x80000000001D59C0;
  countAndFlagsBits = 0xD000000000000056;
  if (genericArtworkRegex.genericArtworkRegex._object)
  {
    countAndFlagsBits = genericArtworkRegex.genericArtworkRegex._countAndFlagsBits;
    object = genericArtworkRegex.genericArtworkRegex._object;
  }

  *v1 = countAndFlagsBits;
  v1[1] = object;
  return genericArtworkRegex;
}

uint64_t Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2299E8, &qword_1BCE38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_2698(a1, a1[3]);
  sub_65DB0();
  sub_1B5864();
  if (!v2)
  {
    v9 = sub_1B5324();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000056;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x80000000001D59C0;
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

unint64_t sub_65DB0()
{
  result = qword_2299F0;
  if (!qword_2299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2299F0);
  }

  return result;
}

uint64_t sub_65E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000000001D5AB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B5604();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_65EB4(uint64_t a1)
{
  v2 = sub_65DB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65EF0(uint64_t a1)
{
  v2 = sub_65DB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.CollectionsConfiguration.PostHydrationFilteringConfiguration.encode(to:)(void *a1)
{
  v2 = sub_2B0C(&qword_2299F8, &qword_1BCE40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_2698(a1, a1[3]);
  sub_65DB0();
  sub_1B5884();
  sub_1B54F4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_660A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7516C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_660D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEB00000000736E6FLL;
    v9 = 0x6974736567677573;
    if (v2 != 6)
    {
      v9 = 0xD000000000000016;
      v8 = 0x80000000001D47C0;
    }

    v10 = 0xD000000000000011;
    v11 = 0x80000000001D4780;
    if (v2 != 4)
    {
      v10 = 0xD000000000000013;
      v11 = 0x80000000001D47A0;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x736B6F6F62;
    v5 = 0x80000000001D4760;
    v6 = 0x756F59726F66;
    if (v2 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (*v1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000000001D4740;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_661EC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6974736567677573;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x736B6F6F62;
    v3 = 0x756F59726F66;
    if (v1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000017;
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
}

unint64_t sub_662F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7516C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_66320(uint64_t a1)
{
  v2 = sub_669D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6635C(uint64_t a1)
{
  v2 = sub_669D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Configuration.CollectionsConfiguration.moreFromYourAuthorsConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Book.rationale.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t Configuration.CollectionsConfiguration.init(booksBySuggestedAuthorsConfiguration:booksConfiguration:booksYouMightLikeConfiguration:forYouConfiguration:mangaYouMightLikeConfiguration:moreFromYourAuthorsConfiguration:suggestionsConfiguration:postHydrationFilteringConfiguration:)@<X0>(__int16 *a1@<X0>, unsigned __int8 *a2@<X1>, __int16 *a3@<X2>, __int16 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v15 = *a6;
  result = a6[1];
  v16 = *a7;
  if ((v9 & 0xFF00) == 0x300)
  {
    v17 = 3;
  }

  else
  {
    v17 = v9;
  }

  if ((v9 & 0xFF00) == 0x300)
  {
    v18 = 1;
  }

  else
  {
    v18 = HIBYTE(v9);
  }

  v19 = *a8;
  v20 = a8[1];
  if ((v11 & 0xFF00) == 0x300)
  {
    v21 = 3;
  }

  else
  {
    v21 = v11;
  }

  if ((v11 & 0xFF00) == 0x300)
  {
    v22 = 1;
  }

  else
  {
    v22 = HIBYTE(v11);
  }

  v23 = v12 & 0xFF00;
  if (v23 == 768)
  {
    LOBYTE(v12) = 3;
    v24 = 1;
  }

  else
  {
    v24 = HIBYTE(v12);
  }

  *a9 = v17;
  *(a9 + 1) = v18;
  v25 = v13 & 0xFF00;
  if (v25 == 768)
  {
    LOBYTE(v13) = 3;
    v26 = 1;
  }

  else
  {
    v26 = HIBYTE(v13);
  }

  v27 = (v15 & 0xFF00) == 768;
  if ((v15 & 0xFF00) == 0x300)
  {
    v28 = 3;
  }

  else
  {
    v28 = v15;
  }

  if ((v15 & 0xFF00) == 0x300)
  {
    v29 = 1;
  }

  else
  {
    v29 = BYTE1(v15);
  }

  if (v27)
  {
    result = 50;
  }

  if ((v16 & 0xFF00) == 0x300)
  {
    LOBYTE(v16) = 2;
    v30 = 1;
  }

  else
  {
    v30 = HIBYTE(v16);
  }

  if (!v20)
  {
    v19 = 0xD000000000000056;
    v20 = 0x80000000001D59C0;
  }

  if (v10 == 3)
  {
    LOBYTE(v10) = 1;
  }

  *(a9 + 2) = v10;
  *(a9 + 3) = v21;
  *(a9 + 4) = v22;
  *(a9 + 5) = v12;
  *(a9 + 6) = v24;
  *(a9 + 7) = v13;
  *(a9 + 8) = v26;
  *(a9 + 16) = v28;
  *(a9 + 17) = v29;
  *(a9 + 24) = result;
  *(a9 + 32) = v16;
  *(a9 + 33) = v30;
  *(a9 + 40) = v19;
  *(a9 + 48) = v20;
  return result;
}

uint64_t Configuration.CollectionsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229A00, &qword_1BCE48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_2698(a1, a1[3]);
  sub_669D8();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v59) = 1;
    sub_66A2C();
    sub_1B5374();
    v9 = v66;
    LOBYTE(v59) = 0;
    sub_66A80();
    sub_1B5374();
    v10 = v65;
    LOBYTE(v59) = 2;
    sub_66AD4();
    sub_1B5374();
    v55 = v10;
    v11 = v63;
    LOBYTE(v59) = 3;
    sub_66B28();
    sub_1B5374();
    v54 = v11;
    v12 = v62;
    LOBYTE(v59) = 4;
    sub_66B7C();
    sub_1B5374();
    v53 = v12;
    v13 = v61;
    LOBYTE(v56) = 5;
    sub_66BD0();
    sub_1B5374();
    v52 = v13;
    v14 = v60;
    v51 = v59;
    LOBYTE(v56) = 6;
    sub_66C24();
    sub_1B5374();
    v50 = v14;
    v15 = v58;
    v64 = 7;
    sub_66C78();
    sub_1B5374();
    v17 = v9 >> 8;
    if ((v9 & 0xFF00) == 0x300)
    {
      v18 = 3;
    }

    else
    {
      v18 = v9;
    }

    if ((v9 & 0xFF00) == 0x300)
    {
      v17 = 1;
    }

    v48 = v17;
    v49 = v18;
    v20 = v54;
    v19 = v55;
    if (v55 == 3)
    {
      v19 = 1;
    }

    v55 = v19;
    v21 = v54 >> 8;
    if ((v54 & 0xFF00) == 0x300)
    {
      v22 = 3;
    }

    else
    {
      v22 = v54;
    }

    v54 = v22;
    if ((v20 & 0xFF00) == 0x300)
    {
      v23 = 1;
    }

    else
    {
      v23 = v21;
    }

    v47 = v23;
    v24 = v52;
    v25 = v53 >> 8;
    v26 = (v53 & 0xFF00) == 768;
    if ((v53 & 0xFF00) == 0x300)
    {
      v27 = 3;
    }

    else
    {
      v27 = v53;
    }

    v53 = v27;
    if (v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = v25;
    }

    v46 = v28;
    v29 = v52 >> 8;
    if ((v52 & 0xFF00) == 0x300)
    {
      v30 = 3;
    }

    else
    {
      v30 = v52;
    }

    v52 = v30;
    if ((v24 & 0xFF00) == 0x300)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29;
    }

    v45 = v31;
    v32 = v51;
    v33 = v51 >> 8;
    if ((v51 & 0xFF00) == 0x300)
    {
      v34 = 3;
    }

    else
    {
      v34 = v51;
    }

    LODWORD(v51) = v34;
    if ((v32 & 0xFF00) == 0x300)
    {
      v35 = 1;
    }

    else
    {
      v35 = v33;
    }

    v44 = v35;
    v36 = 50;
    if ((v32 & 0xFF00) != 0x300)
    {
      v36 = v50;
    }

    v50 = v36;
    if ((v15 & 0xFF00) == 0x300)
    {
      v37 = 2;
    }

    else
    {
      v37 = v15;
    }

    HIDWORD(v43) = v37;
    if ((v15 & 0xFF00) == 0x300)
    {
      v38 = 1;
    }

    else
    {
      v38 = BYTE1(v15);
    }

    if (v57)
    {
      v39 = v56;
    }

    else
    {
      v39 = 0xD000000000000056;
    }

    if (v57)
    {
      v40 = v57;
    }

    else
    {
      v40 = 0x80000000001D59C0;
    }

    (*(v6 + 8))(v8, v5);
    v41 = v48;
    *a2 = v49;
    *(a2 + 1) = v41;
    v42 = v54;
    *(a2 + 2) = v55;
    *(a2 + 3) = v42;
    *(a2 + 4) = v47;
    *(a2 + 5) = v53;
    *(a2 + 6) = v46;
    *(a2 + 7) = v52;
    *(a2 + 8) = v45;
    *(a2 + 16) = v51;
    *(a2 + 17) = v44;
    *(a2 + 24) = v50;
    *(a2 + 32) = BYTE4(v43);
    *(a2 + 33) = v38;
    *(a2 + 40) = v39;
    *(a2 + 48) = v40;
  }

  return sub_2BF8(a1);
}

unint64_t sub_669D8()
{
  result = qword_229A08;
  if (!qword_229A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A08);
  }

  return result;
}

unint64_t sub_66A2C()
{
  result = qword_229A10;
  if (!qword_229A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A10);
  }

  return result;
}

unint64_t sub_66A80()
{
  result = qword_229A18;
  if (!qword_229A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A18);
  }

  return result;
}

unint64_t sub_66AD4()
{
  result = qword_229A20;
  if (!qword_229A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A20);
  }

  return result;
}

unint64_t sub_66B28()
{
  result = qword_229A28;
  if (!qword_229A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A28);
  }

  return result;
}

unint64_t sub_66B7C()
{
  result = qword_229A30;
  if (!qword_229A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A30);
  }

  return result;
}

unint64_t sub_66BD0()
{
  result = qword_229A38;
  if (!qword_229A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A38);
  }

  return result;
}

unint64_t sub_66C24()
{
  result = qword_229A40;
  if (!qword_229A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A40);
  }

  return result;
}

unint64_t sub_66C78()
{
  result = qword_229A48;
  if (!qword_229A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A48);
  }

  return result;
}

uint64_t Configuration.CollectionsConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229A50, &qword_1BCE50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v38 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v33 = v1[3];
  v34 = v7;
  v9 = v1[4];
  v31 = v1[5];
  v32 = v9;
  v10 = v1[6];
  v28 = v1[7];
  v29 = v1[8];
  v30 = v10;
  LODWORD(v5) = v1[17];
  v25 = v1[16];
  v26 = v5;
  v27 = *(v1 + 3);
  LODWORD(v5) = v1[33];
  v23 = v1[32];
  v24 = v5;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  sub_2698(v14, v13);
  sub_669D8();
  sub_1B5884();
  LOBYTE(v36) = v8;
  v17 = v6;
  v39 = 0;
  sub_67084();
  v18 = v35;
  sub_1B5544();
  if (!v18)
  {
    v20 = v32;
    v19 = v33;
    v21 = v31;
    LOBYTE(v36) = v38;
    BYTE1(v36) = v34;
    v39 = 1;
    sub_670D8();
    sub_1B5544();
    LOBYTE(v36) = v19;
    BYTE1(v36) = v20;
    v39 = 2;
    sub_6712C();
    v35 = v6;
    sub_1B5544();
    LOBYTE(v36) = v21;
    BYTE1(v36) = v30;
    v39 = 3;
    sub_67180();
    sub_1B5544();
    LOBYTE(v36) = v28;
    BYTE1(v36) = v29;
    v39 = 4;
    sub_671D4();
    sub_1B5544();
    LOBYTE(v36) = v25;
    BYTE1(v36) = v26;
    v37 = v27;
    v39 = 5;
    sub_67228();
    sub_1B5544();
    LOBYTE(v36) = v23;
    BYTE1(v36) = v24;
    v39 = 6;
    sub_6727C();
    sub_1B5544();
    v36 = v11;
    v37 = v12;
    v39 = 7;
    sub_672D0();

    v17 = v35;
    sub_1B5544();
  }

  return (*(v4 + 8))(v17, v16);
}

unint64_t sub_67084()
{
  result = qword_229A58;
  if (!qword_229A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A58);
  }

  return result;
}

unint64_t sub_670D8()
{
  result = qword_229A60;
  if (!qword_229A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A60);
  }

  return result;
}

unint64_t sub_6712C()
{
  result = qword_229A68;
  if (!qword_229A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A68);
  }

  return result;
}

unint64_t sub_67180()
{
  result = qword_229A70;
  if (!qword_229A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A70);
  }

  return result;
}

unint64_t sub_671D4()
{
  result = qword_229A78;
  if (!qword_229A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A78);
  }

  return result;
}

unint64_t sub_67228()
{
  result = qword_229A80;
  if (!qword_229A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A80);
  }

  return result;
}

unint64_t sub_6727C()
{
  result = qword_229A88;
  if (!qword_229A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A88);
  }

  return result;
}

unint64_t sub_672D0()
{
  result = qword_229A90;
  if (!qword_229A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229A90);
  }

  return result;
}

unint64_t Configuration.MediaTypesRecommendationServiceConfiguration.init(interestBasedMinimumBooksPerMediaType:interestBasedMinimumBooksPerGenre:interestBasedMinimumPurity:equivalentGenresMap:)@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = result;
  if (a6)
  {
    v13 = 0.8;
    if (a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 >= 0.5)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0.8;
  }

  if (!a7)
  {
LABEL_8:
    result = sub_130448(&off_211470);
    a7 = result;
  }

LABEL_9:
  v14 = 2;
  if (a4 & 1 | (a3 < 0))
  {
    v15 = 2;
  }

  else
  {
    v15 = a3;
  }

  if (!(a2 & 1 | (v11 < 0)))
  {
    v14 = v11;
  }

  *a8 = v14;
  *(a8 + 8) = v15;
  *(a8 + 16) = v13;
  *(a8 + 24) = a7;
  return result;
}

unint64_t sub_67410()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000021;
  if (!*v0)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_67484@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_751B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_674AC(uint64_t a1)
{
  v2 = sub_711C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_674E8(uint64_t a1)
{
  v2 = sub_711C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.MediaTypesRecommendationServiceConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229A98, &qword_1BCE58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 24);
  v13 = v8;
  sub_2698(a1, a1[3]);
  sub_711C0();
  sub_1B5884();
  v18 = 0;
  sub_1B5534();
  if (!v2)
  {
    v9 = v12;
    v17 = 1;
    sub_1B5534();
    v16 = 2;
    sub_1B5514();
    v15 = v9;
    v14 = 3;
    sub_2B0C(&qword_229AA8, &qword_1BCE60);
    sub_71214(&qword_229AB0, &protocol witness table for UInt64, &protocol conformance descriptor for <> [A : B]);
    sub_1B5544();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Configuration.MediaTypesRecommendationServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229AB8, &qword_1BCE68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  sub_2698(a1, a1[3]);
  sub_711C0();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_1B53F4();
    v18 = 1;
    v10 = sub_1B53F4();
    v17 = 2;
    sub_1B53D4();
    v13 = v12;
    sub_2B0C(&qword_229AA8, &qword_1BCE60);
    v15[15] = 3;
    sub_71214(&qword_229AC0, &protocol witness table for UInt64, &protocol conformance descriptor for <> [A : B]);
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v13;
    a2[3] = v14;
  }

  return sub_2BF8(a1);
}

unint64_t sub_679C8(char a1)
{
  result = 0x6C6F687365726874;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0xD000000000000031;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x657A69536D616562;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000027;
      break;
  }

  return result;
}

unint64_t sub_67C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75320(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_67C70@<X0>(unint64_t *a1@<X8>)
{
  result = sub_679C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_67CB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_67CEC(uint64_t a1)
{
  v2 = sub_71280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67D28(uint64_t a1)
{
  v2 = sub_71280();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t Configuration.BooksClusteringServiceConfiguration.init(maxHighScoringItemCount:thresholdRatio:booksInGenrePermittedGenres:booksInGenreUnpermittedGenres:moreFromYourAuthorsConfiguration:rankBoostByCollectionRecommendationType:diversityPenaltyByCollectionRecommendationType:rankBoostByGenreDepth:wildcardEnabledCollectionTypes:wildcardEnabledMediaTypes:expandedCollectionPenalty:additionalCollectionPenalty:beamSize:injectNextInOrderedSeries:)@<X0>(unint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *a5@<X4>, _UNKNOWN **a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _UNKNOWN **a12, _UNKNOWN **a13, double a14, char a15, double a16, char a17, uint64_t a18, char a19, char a20)
{
  v20 = a8;
  v24 = result;
  v26 = 2.0;
  if ((a4 & 1) == 0 && a3 >= 1.0)
  {
    v26 = a3;
  }

  v27 = a10;
  v40 = *a7;
  if (a8)
  {
    v28 = a11;
    if (a10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_130530(&off_211750);
    v20 = result;
    v28 = a11;
    if (a10)
    {
      goto LABEL_6;
    }
  }

  result = sub_130530(&off_211780);
  v27 = result;
LABEL_6:
  if (!v28)
  {
    result = sub_13061C(&off_2117D0);
    v28 = result;
  }

  v29 = a18;
  v30 = a12;
  v31 = a13;
  v32 = 0.9;
  if ((a15 & 1) == 0 && a14 >= 0.0)
  {
    v32 = 0.9;
    if (a14 <= 1.0)
    {
      v32 = a14;
    }
  }

  v33 = 0.5;
  if (a16 > 1.0)
  {
    v34 = 0.5;
  }

  else
  {
    v34 = a16;
  }

  if (a16 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.5;
  }

  if ((a17 & 1) == 0)
  {
    v33 = v35;
  }

  v36 = 5;
  if (!(a2 & 1 | (v24 < 0)))
  {
    v36 = v24;
  }

  if (a18 <= 0)
  {
    v29 = 10;
  }

  if (a19)
  {
    v37 = 10;
  }

  else
  {
    v37 = v29;
  }

  if (!a13)
  {
    v31 = &off_211838;
  }

  if (!a12)
  {
    v30 = &off_211810;
  }

  v38 = _swiftEmptyArrayStorage;
  *a9 = v36;
  *(a9 + 8) = v26;
  if (a6)
  {
    v39 = a6;
  }

  else
  {
    v39 = &off_211720;
  }

  if (a5)
  {
    v38 = a5;
  }

  *(a9 + 16) = v38;
  *(a9 + 24) = v39;
  *(a9 + 32) = v40 & 1;
  *(a9 + 40) = v20;
  *(a9 + 48) = v27;
  *(a9 + 56) = v28;
  *(a9 + 64) = v30;
  *(a9 + 72) = v31;
  *(a9 + 80) = v32;
  *(a9 + 88) = v33;
  *(a9 + 96) = v37;
  *(a9 + 104) = (a20 == 2) | a20 & 1;
  return result;
}

uint64_t Configuration.BooksClusteringServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229AC8, &qword_1BCE70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_2698(a1, a1[3]);
  sub_71280();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v60) = 0;
  v9 = sub_1B5364();
  v11 = v10;
  v12 = v9;
  LOBYTE(v60) = 1;
  *&v13 = COERCE_DOUBLE(sub_1B5344());
  LODWORD(v49) = v15;
  v48 = *&v13;
  LODWORD(v50) = v11;
  v51 = v12;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  LOBYTE(v59) = 2;
  sub_61BC8(&qword_2298B8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5374();
  v47 = v60;
  LOBYTE(v57) = 3;
  sub_1B5374();
  v16 = v59;
  LOBYTE(v57) = 4;
  sub_712D4();
  sub_1B5374();
  v45 = v58;
  v17 = sub_2B0C(&qword_229AE0, &qword_1BCE78);
  LOBYTE(v56) = 5;
  sub_7159C(&qword_229AE8, sub_71328, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  v46 = v17;
  sub_1B5374();
  v44 = v16;
  v18 = v57;
  LOBYTE(v55) = 6;
  sub_1B5374();
  v46 = v18;
  v19 = v56;
  sub_2B0C(&qword_229AF8, &qword_1BCE80);
  LOBYTE(v54) = 7;
  sub_7137C(&qword_229B00, &protocol witness table for Int, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  sub_1B5374();
  v20 = v55;
  sub_2B0C(&qword_229B08, &qword_1BCE88);
  LOBYTE(v53) = 8;
  sub_713EC();
  sub_1B5374();
  v43 = v20;
  v21 = v54;
  sub_2B0C(&qword_229B18, &qword_1BCE90);
  v52 = 9;
  sub_71470();
  sub_1B5374();
  v42 = v53;
  v52 = 10;
  v40 = COERCE_DOUBLE(sub_1B5344());
  v41 = v22;
  v52 = 11;
  v38 = COERCE_DOUBLE(sub_1B5344());
  v39 = v23;
  v52 = 12;
  v36 = sub_1B5364();
  v37 = v24;
  v52 = 13;
  v25 = sub_1B5334();
  v26 = 5;
  if (!(v50 & 1 | (v51 < 0)))
  {
    v26 = v51;
  }

  v51 = v26;
  v27 = 2.0;
  if ((v49 & 1) == 0)
  {
    v27 = v48;
    if (v48 < 1.0)
    {
      v27 = 2.0;
    }
  }

  if (v47)
  {
    v28 = v47;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = &off_211860;
  if (v44)
  {
    v29 = v44;
  }

  v49 = v29;
  v50 = v28;
  if (v46)
  {
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_35:
    v19 = sub_130530(&off_2118C0);
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_36:
    v43 = sub_13061C(&off_211910);
    goto LABEL_17;
  }

  v46 = sub_130530(&off_211890);
  if (!v19)
  {
    goto LABEL_35;
  }

LABEL_16:
  if (!v43)
  {
    goto LABEL_36;
  }

LABEL_17:
  LODWORD(v48) = v45 & 1;
  if (!v21)
  {
    v21 = &off_211950;
  }

  v30 = &off_211978;
  if (v42)
  {
    v30 = v42;
  }

  v47 = v30;
  (*(v6 + 8))(v8, v5);
  v31 = 0x3FECCCCCCCCCCCCDLL;
  if ((v41 & 1) == 0 && v40 >= 0.0)
  {
    v31 = 0x3FECCCCCCCCCCCCDLL;
    if (v40 <= 1.0)
    {
      v31 = *&v40;
    }
  }

  v32 = 0.5;
  if ((v39 & 1) == 0 && v38 >= 0.0)
  {
    v32 = 0.5;
    if (v38 <= 1.0)
    {
      v32 = v38;
    }
  }

  v33 = v36;
  *a2 = v51;
  v34 = 10;
  if (v33 <= 0)
  {
    v33 = 10;
  }

  *(a2 + 8) = v27;
  if ((v37 & 1) == 0)
  {
    v34 = v33;
  }

  v35 = v49;
  *(a2 + 16) = v50;
  *(a2 + 24) = v35;
  *(a2 + 32) = LOBYTE(v48);
  *(a2 + 40) = v46;
  *(a2 + 48) = v19;
  *(a2 + 56) = v43;
  *(a2 + 64) = v21;
  *(a2 + 72) = v47;
  *(a2 + 80) = v31;
  *(a2 + 88) = v32;
  *(a2 + 96) = v34;
  *(a2 + 104) = (v25 == 2) | v25 & 1;
  return sub_2BF8(a1);
}

uint64_t Configuration.BooksClusteringServiceConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229B30, &qword_1BCE98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v24 = *(v1 + 32);
  v8 = *(v1 + 40);
  v22 = *(v1 + 48);
  v23 = v8;
  v9 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = v9;
  v10 = *(v1 + 72);
  v18 = *(v1 + 96);
  v19 = v10;
  v11 = *(v1 + 104);
  sub_2698(a1, a1[3]);
  sub_71280();
  v12 = v3;
  sub_1B5884();
  LOBYTE(v29) = 0;
  v13 = v27;
  sub_1B5534();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v25;
  v15 = v26;
  v16 = v24;
  LODWORD(v27) = v11;
  LOBYTE(v29) = 1;
  sub_1B5514();
  v29 = v15;
  v28 = 2;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();
  v26 = v4;
  v29 = v14;
  v28 = 3;
  sub_1B5544();
  LOBYTE(v29) = v16;
  v28 = 4;
  sub_71548();
  sub_1B5544();
  v29 = v23;
  v28 = 5;
  sub_2B0C(&qword_229AE0, &qword_1BCE78);
  sub_7159C(&qword_229B40, sub_71620, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  sub_1B5544();
  v29 = v22;
  v28 = 6;
  sub_1B5544();
  v29 = v21;
  v28 = 7;
  sub_2B0C(&qword_229AF8, &qword_1BCE80);
  sub_7137C(&qword_229B50, &protocol witness table for Int, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  sub_1B5544();
  v29 = v20;
  v28 = 8;
  sub_2B0C(&qword_229B08, &qword_1BCE88);
  sub_71674();
  sub_1B5544();
  v29 = v19;
  v28 = 9;
  sub_2B0C(&qword_229B18, &qword_1BCE90);
  sub_716F8();
  sub_1B5544();
  LOBYTE(v29) = 10;
  sub_1B5514();
  LOBYTE(v29) = 11;
  sub_1B5514();
  LOBYTE(v29) = 12;
  sub_1B5534();
  LOBYTE(v29) = 13;
  sub_1B5504();
  return (*(v4 + 8))(v6, v12);
}

BooksPersonalization::Configuration::PersonalizationMetadataServiceConfiguration __swiftcall Configuration.PersonalizationMetadataServiceConfiguration.init(enabled:cachedMetadataExpirationInterval:batchMaximumSize:)(Swift::Bool enabled, Swift::Double cachedMetadataExpirationInterval, Swift::Int batchMaximumSize)
{
  *v3 = enabled;
  *(v3 + 8) = cachedMetadataExpirationInterval;
  *(v3 + 16) = batchMaximumSize;
  result.cachedMetadataExpirationInterval = cachedMetadataExpirationInterval;
  result.batchMaximumSize = batchMaximumSize;
  result.enabled = enabled;
  return result;
}

uint64_t Configuration.PersonalizationMetadataServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229B70, &qword_1BCEA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_2698(a1, a1[3]);
  sub_717D0();
  sub_1B5864();
  if (!v2)
  {
    v14[15] = 0;
    v9 = sub_1B53C4();
    v14[14] = 1;
    sub_1B53D4();
    v12 = v11;
    v14[13] = 2;
    v13 = sub_1B53F4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return sub_2BF8(a1);
}

unint64_t sub_68FCC()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_69034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7536C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_6905C(uint64_t a1)
{
  v2 = sub_717D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_69098(uint64_t a1)
{
  v2 = sub_717D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.PersonalizationMetadataServiceConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229B80, &qword_1BCEA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 16);
  sub_2698(a1, a1[3]);
  sub_717D0();
  sub_1B5884();
  v12 = 0;
  sub_1B5504();
  if (!v2)
  {
    v11 = 1;
    sub_1B5514();
    v10 = 2;
    sub_1B5534();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Configuration.BooksClusteringServiceLegacyCollectionConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229B88, &qword_1BCEB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_2698(a1, a1[3]);
  sub_71824();
  sub_1B5864();
  if (!v2)
  {
    v9 = sub_1B5334();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_6941C()
{
  sub_1B57F4();
  sub_1B5804(0);
  return sub_1B5844();
}

Swift::Int sub_69460(uint64_t a1)
{
  sub_1B57F4();
  sub_1B5804(0);
  return sub_1B5844();
}

uint64_t sub_694B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_69540(uint64_t a1)
{
  v2 = sub_71824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6957C(uint64_t a1)
{
  v2 = sub_71824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.BooksClusteringServiceLegacyCollectionConfiguration.encode(to:)(void *a1)
{
  v2 = sub_2B0C(&qword_229B98, &qword_1BCEB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_2698(a1, a1[3]);
  sub_71824();
  sub_1B5884();
  sub_1B5504();
  return (*(v3 + 8))(v5, v2);
}

BooksPersonalization::Configuration::ScorersConfiguration::BookHistoryScorerConfiguration::ReadingHistoryConfiguration __swiftcall Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.ReadingHistoryConfiguration.init(readFractionBoost:fullyReadThreshold:fullyReadBoost:halfLife:)(Swift::Double_optional readFractionBoost, Swift::Double_optional fullyReadThreshold, Swift::Double_optional fullyReadBoost, Swift::Double_optional halfLife)
{
  v9 = 0.3;
  v10 = 0.3;
  if (*&readFractionBoost.is_nil <= 1.0)
  {
    v10 = *&readFractionBoost.is_nil;
  }

  if (*&readFractionBoost.is_nil >= -1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.3;
  }

  if (!fullyReadThreshold.is_nil)
  {
    v9 = v11;
  }

  v12 = 0.9;
  if (!halfLife.is_nil && *&fullyReadBoost.is_nil >= 0.0)
  {
    v12 = 0.9;
    if (*&fullyReadBoost.is_nil <= 1.0)
    {
      v12 = *&fullyReadBoost.is_nil;
    }
  }

  v13 = 0.1;
  if ((v5 & 1) == 0 && v4 >= -1.0)
  {
    v13 = 0.1;
    if (v4 <= 1.0)
    {
      v13 = v4;
    }
  }

  v14 = 10368000.0;
  v15 = v6;
  if (v6 < 0.0)
  {
    v15 = 10368000.0;
  }

  *v8 = v9;
  v8[1] = v12;
  if (v7)
  {
    v16 = 10368000.0;
  }

  else
  {
    v16 = v15;
  }

  v8[2] = v13;
  v8[3] = v16;
  result.halfLife = v14;
  result.fullyReadBoost = v13;
  result.fullyReadThreshold = v12;
  result.readFractionBoost = v16;
  return result;
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.ReadingHistoryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BA0, &qword_1BCEC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_2698(a1, a1[3]);
  sub_71878();
  sub_1B5864();
  if (!v2)
  {
    v33 = 0;
    v9 = sub_1B5344();
    v11 = v10;
    v12 = *&v9;
    v32 = 1;
    v13 = sub_1B5344();
    v29 = v14;
    v28 = *&v13;
    v31 = 2;
    v15 = sub_1B5344();
    v27 = v17;
    v26 = *&v15;
    v30 = 3;
    v25 = COERCE_DOUBLE(sub_1B5344());
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    if (v11)
    {
      v20 = 0.3;
    }

    else
    {
      v21 = 0.3;
      if (v12 <= 1.0)
      {
        v21 = v12;
      }

      if (v12 >= -1.0)
      {
        v20 = v21;
      }

      else
      {
        v20 = 0.3;
      }
    }

    v22 = 0.9;
    if ((v29 & 1) == 0 && v28 >= 0.0)
    {
      v22 = 0.9;
      if (v28 <= 1.0)
      {
        v22 = v28;
      }
    }

    v23 = 0.1;
    if ((v27 & 1) == 0 && v26 >= -1.0)
    {
      v23 = 0.1;
      if (v26 <= 1.0)
      {
        v23 = v26;
      }
    }

    if ((v19 & 1) != 0 || (v24 = *&v25, v25 < 0.0))
    {
      v24 = 0x4163C68000000000;
    }

    *a2 = v20;
    *(a2 + 8) = v22;
    *(a2 + 16) = v23;
    *(a2 + 24) = v24;
  }

  return sub_2BF8(a1);
}

unint64_t sub_69A7C()
{
  v1 = 0x616552796C6C7566;
  if (*v0 != 2)
  {
    v1 = 0x6566694C666C6168;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_69B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_75490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_69B2C(uint64_t a1)
{
  v2 = sub_71878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_69B68(uint64_t a1)
{
  v2 = sub_71878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.ReadingHistoryConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229BB0, &qword_1BCEC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2698(a1, a1[3]);
  sub_71878();
  sub_1B5884();
  v8[15] = 0;
  sub_1B5514();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B5514();
    v8[13] = 2;
    sub_1B5514();
    v8[12] = 3;
    sub_1B5514();
  }

  return (*(v4 + 8))(v6, v3);
}

void __swiftcall Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.init(declinedWeight:declinedAfterRecommendationsCount:declinedAfterPassoversCount:declinedPenaltyDurationBaseDays:declinedPenaltyDurationGrowthFactor:declinedPenaltyMaxDays:)(BooksPersonalization::Configuration::ScorersConfiguration::BookHistoryScorerConfiguration::DeclinedConfiguration *__return_ptr retstr, Swift::Double_optional declinedWeight, Swift::Int_optional declinedAfterRecommendationsCount, Swift::Int_optional declinedAfterPassoversCount, Swift::Int_optional declinedPenaltyDurationBaseDays, Swift::Double_optional declinedPenaltyDurationGrowthFactor, Swift::Int_optional declinedPenaltyMaxDays)
{
  v7 = v14;
  v8 = -0.1;
  if ((declinedAfterRecommendationsCount.value & 1) == 0 && *&declinedWeight.is_nil >= -1.0)
  {
    v8 = -0.1;
    if (*&declinedWeight.is_nil <= 1.0)
    {
      v8 = *&declinedWeight.is_nil;
    }
  }

  v9 = 1.5;
  v10 = *&declinedPenaltyMaxDays.value;
  if (*&declinedPenaltyMaxDays.value < 1.0)
  {
    v10 = 1.5;
  }

  if (!declinedPenaltyMaxDays.is_nil)
  {
    v9 = v10;
  }

  v11 = 7;
  if (!declinedPenaltyDurationGrowthFactor.is_nil && *&declinedPenaltyDurationBaseDays.is_nil >= 0)
  {
    v11 = *&declinedPenaltyDurationBaseDays.is_nil;
  }

  if (declinedPenaltyDurationBaseDays.value & 1 | (*&declinedAfterPassoversCount.is_nil < 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = *&declinedAfterPassoversCount.is_nil;
  }

  v13 = 10;
  if (!(declinedAfterPassoversCount.value & 1 | (*&declinedAfterRecommendationsCount.is_nil < 0)))
  {
    v13 = *&declinedAfterRecommendationsCount.is_nil;
  }

  retstr->declinedWeight = v8;
  retstr->declinedAfterRecommendationsCount = v13;
  retstr->declinedAfterPassoversCount = v12;
  retstr->declinedPenaltyDurationBaseDays = v11;
  if (v15 & 1 | (v14 < 0))
  {
    v7 = 180;
  }

  retstr->declinedPenaltyDurationGrowthFactor = v9;
  retstr->declinedPenaltyMaxDays = v7;
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BB8, &qword_1BCED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  sub_2698(a1, a1[3]);
  sub_718CC();
  sub_1B5864();
  if (!v2)
  {
    v51 = 0;
    *&v9 = COERCE_DOUBLE(sub_1B5344());
    v11 = v10;
    v12 = *&v9;
    v50 = 1;
    v13 = sub_1B5364();
    v45 = v14;
    v15 = v13;
    v49 = 2;
    v16 = sub_1B5364();
    v44 = v17;
    v43 = v16;
    v48 = 3;
    v18 = sub_1B5364();
    v42 = v19;
    v41 = v18;
    v47 = 4;
    v20 = sub_1B5344();
    v40 = v22;
    v39 = *&v20;
    v46 = 5;
    v38 = sub_1B5364();
    HIDWORD(v37) = v23;
    (*(v6 + 8))(v8, v5);
    v24 = BYTE4(v37);
    v25 = v38;
    v26 = -0.1;
    if (v11)
    {
      v27 = v44;
      v28 = v45;
      v29 = v43;
      v30 = v41;
      v31 = v42;
      v32 = v39;
      v33 = v40;
    }

    else
    {
      v27 = v44;
      v28 = v45;
      v29 = v43;
      v30 = v41;
      v31 = v42;
      v32 = v39;
      v33 = v40;
      if (v12 >= -1.0)
      {
        v26 = -0.1;
        if (v12 <= 1.0)
        {
          v26 = v12;
        }
      }
    }

    v34 = 10;
    if (!(v28 & 1 | (v15 < 0)))
    {
      v34 = v15;
    }

    if (v27 & 1 | (v29 < 0))
    {
      v29 = 1;
    }

    if (v31 & 1 | (v30 < 0))
    {
      v30 = 7;
    }

    v35 = 1.5;
    if ((v33 & 1) == 0)
    {
      v35 = v32;
      if (v32 < 1.0)
      {
        v35 = 1.5;
      }
    }

    *a2 = v26;
    *(a2 + 8) = v34;
    *(a2 + 16) = v29;
    if (v24 & 1 | (v25 < 0))
    {
      v36 = 180;
    }

    else
    {
      v36 = v25;
    }

    *(a2 + 24) = v30;
    *(a2 + 32) = v35;
    *(a2 + 40) = v36;
  }

  return sub_2BF8(a1);
}

unint64_t sub_6A19C()
{
  v1 = *v0;
  v2 = 0x64656E696C636564;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000023;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_6A274@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7560C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_6A29C(uint64_t a1)
{
  v2 = sub_718CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6A2D8(uint64_t a1)
{
  v2 = sub_718CC();

  return CodingKey.debugDescription.getter(a1, v2);
}