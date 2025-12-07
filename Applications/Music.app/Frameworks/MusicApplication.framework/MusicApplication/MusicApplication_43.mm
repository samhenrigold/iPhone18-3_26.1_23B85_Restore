void sub_39B9E4(char a1)
{
  v2 = *(&stru_248.offset + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  if (v3 == (a1 & 1))
  {
    return;
  }

  v4 = [v1 navigationItem];
  v5 = [v1 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        if ((*(v1 + v2) & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }
  }

LABEL_12:
  sub_39B768();
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = sub_AB9260();

  v10 = v11;
LABEL_15:
  v12 = v10;
  [v8 setTitle:?];
}

uint64_t sub_39BBA0(__int128 *a1)
{
  v2 = v1;
  v4 = a1[7];
  v148 = a1[6];
  v149 = v4;
  v150 = *(a1 + 128);
  v5 = a1[3];
  v144 = a1[2];
  v145 = v5;
  v6 = a1[5];
  v146 = a1[4];
  v147 = v6;
  v7 = a1[1];
  v142 = *a1;
  v143 = v7;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v8 = qword_E01D40;
  }

  else
  {
    v8 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v9 = v1 + v8;
  swift_beginAccess();
  v10 = *(v9 + 7);
  v139 = *(v9 + 6);
  v140 = v10;
  v141 = v9[128];
  v11 = *(v9 + 3);
  v135 = *(v9 + 2);
  v136 = v11;
  v12 = *(v9 + 4);
  v138 = *(v9 + 5);
  v137 = v12;
  v13 = *v9;
  v134 = *(v9 + 1);
  v133 = v13;
  sub_15F84(&v133, __src, &unk_DFDD90, &unk_B08BA8);
  sub_15F84(a1, __src, &unk_DFDD90, &unk_B08BA8);
  sub_2D41B0(a1);
  if (([v2 isEditing] & 1) == 0 || (v14 = v2 + qword_E01D40, swift_beginAccess(), v15 = *(v14 + 7), __src[6] = *(v14 + 6), __src[7] = v15, LOBYTE(__src[8]) = v14[128], v16 = *(v14 + 3), __src[2] = *(v14 + 2), __src[3] = v16, v17 = *(v14 + 4), __src[5] = *(v14 + 5), __src[4] = v17, v18 = *v14, __src[1] = *(v14 + 1), __src[0] = v18, sub_11D03C(__src) == 1))
  {
    v19 = v2 + qword_E01D40;
    swift_beginAccess();
    v20 = *(v19 + 7);
    __src[6] = *(v19 + 6);
    __src[7] = v20;
    LOBYTE(__src[8]) = v19[128];
    v21 = *(v19 + 3);
    __src[2] = *(v19 + 2);
    __src[3] = v21;
    v22 = *(v19 + 4);
    __src[5] = *(v19 + 5);
    __src[4] = v22;
    v23 = *v19;
    __src[1] = *(v19 + 1);
    __src[0] = v23;
    v24 = a1[5];
    *(v19 + 4) = a1[4];
    *(v19 + 5) = v24;
    v25 = a1[7];
    *(v19 + 6) = a1[6];
    *(v19 + 7) = v25;
    v19[128] = *(a1 + 128);
    v26 = a1[3];
    *(v19 + 2) = a1[2];
    *(v19 + 3) = v26;
    v27 = a1[1];
    *v19 = *a1;
    *(v19 + 1) = v27;
    sub_15F84(a1, __dst, &unk_DFDD90, &unk_B08BA8);
    sub_12E1C(__src, &unk_DFDD90, &unk_B08BA8);
  }

  v28 = a1[5];
  v29 = a1[7];
  __src[6] = a1[6];
  __src[7] = v29;
  v30 = a1[1];
  v31 = a1[3];
  __src[2] = a1[2];
  __src[3] = v31;
  v33 = a1[3];
  v32 = a1[4];
  v34 = v32;
  __src[5] = a1[5];
  __src[4] = v32;
  v35 = *a1;
  v36 = *a1;
  __src[1] = a1[1];
  __src[0] = v35;
  *(&__src[13] + 8) = v138;
  *(&__src[14] + 8) = v139;
  *(&__src[15] + 8) = v140;
  *(&__src[9] + 8) = v134;
  *(&__src[10] + 8) = v135;
  *(&__src[11] + 8) = v136;
  *(&__src[12] + 8) = v137;
  *(&__src[8] + 8) = v133;
  v37 = a1[7];
  v104[6] = __src[6];
  v104[7] = v37;
  v104[2] = __src[2];
  v104[3] = v33;
  v104[5] = v28;
  v104[4] = v34;
  LOBYTE(__src[8]) = *(a1 + 128);
  BYTE8(__src[16]) = v141;
  v105 = *(a1 + 128);
  v104[1] = v30;
  v104[0] = v36;
  if (sub_11D03C(v104) != 1)
  {
    v121 = *(&__src[14] + 8);
    v122 = *(&__src[15] + 8);
    v123 = BYTE8(__src[16]);
    v117 = *(&__src[10] + 8);
    v118 = *(&__src[11] + 8);
    v120 = *(&__src[13] + 8);
    v119 = *(&__src[12] + 8);
    v116 = *(&__src[9] + 8);
    v115 = *(&__src[8] + 8);
    if (sub_11D03C(&v115) != 1)
    {
      *v101 = *(&__src[14] + 8);
      *&v101[16] = *(&__src[15] + 8);
      v101[32] = BYTE8(__src[16]);
      v97 = *(&__src[10] + 8);
      v98 = *(&__src[11] + 8);
      v99 = *(&__src[12] + 8);
      v100 = *(&__src[13] + 8);
      v95 = *(&__src[8] + 8);
      v96 = *(&__src[9] + 8);
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      LOBYTE(__dst[8]) = BYTE8(__src[16]);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      v130 = __src[6];
      v131 = __src[7];
      v132 = __src[8];
      v126 = __src[2];
      v127 = __src[3];
      v129 = __src[5];
      v128 = __src[4];
      v125 = __src[1];
      v124 = __src[0];
      sub_15F84(&v133, v83, &unk_DFDD90, &unk_B08BA8);
      sub_15F84(a1, v83, &unk_DFDD90, &unk_B08BA8);
      v41 = sub_D24AC(&v124, __dst);
      sub_12E1C(&v95, &unk_DFDD90, &unk_B08BA8);
      v112 = __src[6];
      v113 = __src[7];
      v114 = __src[8];
      v108 = __src[2];
      v109 = __src[3];
      v111 = __src[5];
      v110 = __src[4];
      v107 = __src[1];
      v106 = __src[0];
      sub_12E1C(&v106, &unk_DFDD90, &unk_B08BA8);
      if (v41)
      {
        goto LABEL_47;
      }

LABEL_13:
      sub_3A3464(0);
      v39 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
      if (([v2 isEditing] & 1) != 0 || *(v2 + qword_E01D30) == 1)
      {
        v40 = qword_E01D40;
      }

      else
      {
        v40 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
      }

      v42 = v2 + v40;
      swift_beginAccess();
      v101[32] = v42[128];
      v43 = *(v42 + 7);
      *v101 = *(v42 + 6);
      *&v101[16] = v43;
      v44 = *(v42 + 3);
      v97 = *(v42 + 2);
      v98 = v44;
      v45 = *(v42 + 5);
      v99 = *(v42 + 4);
      v100 = v45;
      v46 = *(v42 + 1);
      v95 = *v42;
      v96 = v46;
      v91 = v97;
      v92 = v44;
      v93 = v99;
      v89 = v95;
      v90 = v46;
      v87 = *&v101[1];
      v88 = *&v101[17];
      v83[0] = v95;
      v83[1] = v46;
      v83[3] = v44;
      v83[4] = v99;
      v47 = *(&v100 + 1);
      v94 = v100;
      v48 = v101[0];
      v83[2] = v97;
      v86 = *&v101[17];
      v85 = *&v101[1];
      v83[5] = v100;
      v84 = v101[0];
      if (sub_11D03C(v83) == 1)
      {
        __src[2] = v91;
        __src[3] = v92;
        __src[4] = v93;
        __src[0] = v89;
        __src[1] = v90;
        *(&__src[6] + 1) = v87;
        *&__src[5] = v94;
        *(&__src[5] + 1) = v47;
        LOBYTE(__src[6]) = v48;
        *(&__src[7] + 1) = v88;
        sub_15F84(&v95, &v115, &unk_DFDD90, &unk_B08BA8);
        sub_12E1C(__src, &unk_DFDD90, &unk_B08BA8);
        v47 = 0;
        v48 = 1;
      }

      else
      {
        __src[2] = v91;
        __src[3] = v92;
        __src[4] = v93;
        __src[0] = v89;
        __src[1] = v90;
        *(&__src[6] + 1) = v87;
        *&__src[5] = v94;
        *(&__src[5] + 1) = v47;
        LOBYTE(__src[6]) = v48;
        *(&__src[7] + 1) = v88;
        sub_15F84(&v95, &v115, &unk_DFDD90, &unk_B08BA8);
        sub_12E1C(__src, &unk_DFDD90, &unk_B08BA8);
      }

      v49 = v39 + qword_E719C0;
      v50 = *(v39 + qword_E719C0);
      v51 = *(v39 + qword_E719C0 + 8);
      *v49 = v47;
      *(v49 + 8) = v48 & 1;
      sub_46F114(v50, v51);
      sub_39A414();
      v52 = a1[7];
      v112 = a1[6];
      v113 = v52;
      v114 = *(a1 + 128);
      v53 = a1[3];
      v108 = a1[2];
      v109 = v53;
      v54 = a1[4];
      v111 = a1[5];
      v110 = v54;
      v55 = *a1;
      v107 = a1[1];
      v106 = v55;
      if (sub_11D03C(&v106) == 1)
      {
        v56 = 0;
        v57 = 0;
      }

      else
      {
        v121 = v112;
        v122 = v113;
        v123 = v114;
        v117 = v108;
        v118 = v109;
        v120 = v111;
        v119 = v110;
        v116 = v107;
        v115 = v106;
        __src[6] = v148;
        __src[7] = v149;
        LOBYTE(__src[8]) = v150;
        __src[2] = v144;
        __src[3] = v145;
        __src[5] = v147;
        __src[4] = v146;
        __src[1] = v143;
        __src[0] = v142;
        sub_2E2538(__src, &v74);
        v56 = sub_D1FC0();
        v57 = v58;
        sub_12E1C(a1, &unk_DFDD90, &unk_B08BA8);
      }

      v80 = v139;
      v81 = v140;
      v82 = v141;
      v76 = v135;
      v77 = v136;
      v78 = v137;
      v79 = v138;
      v74 = v133;
      v75 = v134;
      if (sub_11D03C(&v74) == 1)
      {
        if (!v57)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      }

      __src[6] = v80;
      __src[7] = v81;
      LOBYTE(__src[8]) = v82;
      __src[2] = v76;
      __src[3] = v77;
      __src[5] = v79;
      __src[4] = v78;
      __src[1] = v75;
      __src[0] = v74;
      v72[6] = v139;
      v72[7] = v140;
      v73 = v141;
      v72[2] = v135;
      v72[3] = v136;
      v72[4] = v137;
      v72[5] = v138;
      v72[0] = v133;
      v72[1] = v134;
      sub_2E2538(v72, v71);
      v59 = sub_D1FC0();
      v61 = v60;
      sub_12E1C(&v133, &unk_DFDD90, &unk_B08BA8);
      if (v57)
      {
        if (v61)
        {
          if (v56 != v59 || v57 != v61)
          {
            v70 = sub_ABB3C0();

            if (v70)
            {
              goto LABEL_47;
            }

LABEL_35:
            v62 = [v2 navigationItem];
            v63 = [v2 parentViewController];
            if (v63)
            {
              v64 = v63;
              while (1)
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                v65 = v64;
                v66 = [v65 navigationItem];

                v64 = [v65 parentViewController];
                v62 = v66;
                if (!v64)
                {
                  goto LABEL_42;
                }
              }
            }

            v66 = v62;
LABEL_42:
            if (*(v2 + *(&stru_248.offset + (swift_isaMask & *v2))) == 1 && (sub_39B768(), v67))
            {
              v68 = sub_AB9260();
            }

            else
            {
              v68 = 0;
            }

            [v66 setTitle:v68];

            goto LABEL_47;
          }

LABEL_47:
          sub_12E1C(&v133, &unk_DFDD90, &unk_B08BA8);
          v38 = a1;
          return sub_12E1C(v38, &unk_DFDD90, &unk_B08BA8);
        }
      }

      else if (!v61)
      {
        goto LABEL_47;
      }

LABEL_34:

      goto LABEL_35;
    }

LABEL_12:
    memcpy(__dst, __src, 0x109uLL);
    sub_15F84(&v133, &v124, &unk_DFDD90, &unk_B08BA8);
    sub_15F84(a1, &v124, &unk_DFDD90, &unk_B08BA8);
    sub_12E1C(__dst, &qword_E02CA0, &unk_B0C5D0);
    goto LABEL_13;
  }

  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_11D03C(__dst) != 1)
  {
    goto LABEL_12;
  }

  v130 = __src[6];
  v131 = __src[7];
  v132 = __src[8];
  v126 = __src[2];
  v127 = __src[3];
  v129 = __src[5];
  v128 = __src[4];
  v125 = __src[1];
  v124 = __src[0];
  v38 = &v124;
  return sub_12E1C(v38, &unk_DFDD90, &unk_B08BA8);
}

void sub_39C7C0(void *a1)
{
  v2 = qword_E01D30;
  if ((*(v1 + qword_E01D30) & 1) == 0)
  {
    v3 = v1;
    v88 = a1;
    if ([v1 isEditing])
    {
      a1 = v88;
      goto LABEL_4;
    }

    v4 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
    v5 = *(v1 + v4);
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [v5 results];
    if (!v6)
    {
      __break(1u);
      goto LABEL_85;
    }

    v7 = v6;
    v8 = [v6 firstSection];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_12:
      v9 = 0;
    }

    v87 = v9;
    if (v88)
    {
      v10 = objc_allocWithZone(type metadata accessor for PlaylistModelResponse());
      v11 = v88;
      sub_B4E8C(v11);
      v12 = *(v3 + v4);
      *(v3 + v4) = v13;
      v14 = v13;
      sub_3912DC(v12);

      v9 = v87;
    }

    else
    {
      v12 = *(v3 + v4);
      *(v3 + v4) = 0;
      sub_3912DC(v12);
    }

    *(v3 + qword_E01DA0) = 0;

    v15 = *(v3 + v4);
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = v15;
    v17 = [v16 results];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 firstSection];

      if (v19)
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          swift_unknownObjectRetain();
          v81 = v21;
          sub_D328C(v21, &v130);
          v84 = *&v131[8];
          v85 = *&v131[16];
          v126 = *&v131[24];
          v127 = *&v131[40];
          v128 = *&v131[56];
          v129 = v130;
          v86 = *&v131[72];
          v80 = v132;
          v125 = v132;
          v124[0] = *(&v132 + 1);
          *(v124 + 3) = DWORD1(v132);
          v22 = v133;
          *(v122 + 7) = *(&v133 + 1);
          v122[0] = *(&v133 + 1);
          v23 = [v16 results];
          if (v23)
          {
            v24 = v23;
            v25 = *(&v132 + 1);
            v136 = *&v131[8];
            v26 = [v23 totalItemCount];

            v123 = 0;
            if ((v22 & 1) != 0 || v26 != v25)
            {
              v84 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v26, 0, v86, v80 & 1);
              v27 = v28;
              sub_E17A4(&v136);
              v85 = v27;
            }

            else
            {
              v27 = *(&v136 + 1);
            }

            v135 = *v131;
            v83 = *(v3 + qword_E01D18);

            sub_12E1C(&v135, &unk_E02D40, &unk_B0C630);
            v82 = v16;
            if (v5 && v87)
            {
              v77 = v27;
              v79 = v5;
              v29 = v87;
              v30 = [v81 identifiers];
              v31 = v29;
              v32 = [v31 identifiers];
              v78 = v31;

              v33 = [v30 isEqual:v32];
              if (v33)
              {
                v34 = [v82 results];
                if (!v34)
                {
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

                v35 = v34;
                v36 = [v34 totalItemCount];

                v31 = v79;
                v37 = [v79 results];
                if (!v37)
                {
LABEL_91:
                  __break(1u);
                  return;
                }

                v38 = v37;
                v39 = [v37 totalItemCount];

                if (v36 == v39)
                {
                  if (([v3 isEditing] & 1) != 0 || *(v3 + v2) == 1)
                  {
                    v40 = qword_E01D40;
                  }

                  else
                  {
                    v40 = *&stru_298.segname[(swift_isaMask & *v3) + 8];
                  }

                  v64 = v3 + v40;
                  swift_beginAccess();
                  v143[32] = v64[128];
                  v65 = *(v64 + 7);
                  *v143 = *(v64 + 6);
                  *&v143[16] = v65;
                  v66 = *(v64 + 3);
                  v139 = *(v64 + 2);
                  v140 = v66;
                  v67 = *(v64 + 5);
                  v141 = *(v64 + 4);
                  v142 = v67;
                  v68 = *(v64 + 1);
                  v137 = *v64;
                  v138 = v68;
                  v93 = v139;
                  v94 = v66;
                  v95 = v141;
                  v96 = v142;
                  v91 = v137;
                  v92 = v68;
                  v69 = *(&v142 + 1);
                  v70 = v143[0];
                  v89 = *&v143[1];
                  v90 = *&v143[17];
                  v115 = v137;
                  v116 = v68;
                  v118 = v66;
                  v119 = v141;
                  v117 = v139;
                  *&v121[17] = *&v143[17];
                  *&v121[1] = *&v143[1];
                  v120 = v142;
                  v121[0] = v143[0];
                  if (sub_11D03C(&v115) == 1)
                  {
                    *v113 = v93;
                    *&v113[16] = v94;
                    *&v113[32] = v95;
                    v111 = v91;
                    v112 = v92;
                    *&v114[1] = v89;
                    *&v113[48] = v96;
                    *&v113[56] = v69;
                    v114[0] = v70;
                    *&v114[17] = v90;
                    sub_15F84(&v137, &aBlock, &unk_DFDD90, &unk_B08BA8);
                    sub_12E1C(&v111, &unk_DFDD90, &unk_B08BA8);
                  }

                  else
                  {
                    *v113 = v93;
                    *&v113[16] = v94;
                    *&v113[32] = v95;
                    v111 = v91;
                    v112 = v92;
                    *&v114[1] = v89;
                    *&v113[48] = v96;
                    *&v113[56] = v69;
                    v114[0] = v70;
                    *&v114[17] = v90;
                    sub_15F84(&v137, &aBlock, &unk_DFDD90, &unk_B08BA8);
                    sub_12E1C(&v111, &unk_DFDD90, &unk_B08BA8);
                    if ((v70 & 1) == 0)
                    {
                      v125 = 0;
                      if ((v80 & 1) != 0 || *&v69 != *&v86)
                      {
                        v84 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v26, 0, v69, 0);
                        v85 = v71;
                      }

                      v72 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v73 = swift_allocObject();
                      *(v73 + 16) = v72;
                      *(v73 + 24) = v82;
                      v100 = sub_3A789C;
                      *&v101 = v73;
                      *&aBlock = _NSConcreteStackBlock;
                      *(&aBlock + 1) = 1107296256;
                      v98 = sub_780C4;
                      v99 = &block_descriptor_302;
                      v74 = _Block_copy(&aBlock);
                      v75 = v79;
                      v76 = v82;

                      [v76 getChangeDetailsFromPreviousResponse:v75 completion:v74];

                      _Block_release(v74);
                      v86 = v69;
LABEL_41:
                      v42 = objc_opt_self();
                      v43 = [v42 standardUserDefaults];
                      LOBYTE(v115) = 11;
                      sub_AFE98();
                      sub_36A48();
                      NSUserDefaults.subscript.getter(&v137);
                      if (*(&v138 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v44 = v115;

                          if (v44)
                          {
                            v45 = 1;
LABEL_52:
                            v111 = v129;
                            *&v112 = v83;
                            *(&v112 + 1) = v84;
                            *&v113[40] = v128;
                            *&v113[8] = v126;
                            *&v113[24] = v127;
                            *v113 = v85;
                            *&v113[56] = v86;
                            v47 = v125;
                            v114[0] = v125;
                            *&v114[1] = v124[0];
                            *&v114[4] = *(v124 + 3);
                            *&v114[8] = v26;
                            v48 = v123;
                            v114[16] = v123;
                            *&v114[24] = *(v122 + 7);
                            *&v114[17] = v122[0];
                            v114[32] = v45;
                            v121[32] = v45;
                            *v121 = *v114;
                            *&v121[16] = *&v114[16];
                            v119 = *&v113[32];
                            v120 = *&v113[48];
                            v117 = *v113;
                            v118 = *&v113[16];
                            v115 = v129;
                            v116 = v112;
                            UIScreen.Dimensions.size.getter();
                            *v143 = *v121;
                            *&v143[16] = *&v121[16];
                            v143[32] = v121[32];
                            v139 = v117;
                            v140 = v118;
                            v141 = v119;
                            v142 = v120;
                            v137 = v115;
                            v138 = v116;
                            sub_2E2538(&v111, &aBlock);
                            sub_39BBA0(&v137);
                            v49 = [v81 identifiers];
                            v50 = [v49 personalizedStore];

                            if (v50)
                            {
                              v51 = [v50 cloudID];
                              swift_unknownObjectRelease();
                              if (([v81 isSubscribed] & 1) != 0 || objc_msgSend(v81, "isCuratorPlaylist"))
                              {
                                if (v51)
                                {
                                  v52 = [objc_opt_self() sharedCloudController];
                                  if (!v52)
                                  {
LABEL_88:
                                    __break(1u);
LABEL_89:
                                    __break(1u);
                                    goto LABEL_90;
                                  }

                                  v53 = v52;
                                  [v52 updateSubscribedPlaylistWithSagaID:v51 ignoreMinRefreshInterval:0 completionHandler:0];
                                }
                              }
                            }

                            swift_unknownObjectRelease();

                            aBlock = v129;
                            v101 = v126;
                            v102 = v127;
                            v98 = v83;
                            v99 = v84;
                            v103 = v128;
                            v100 = v85;
                            v104 = v86;
                            v105 = v47;
                            *v106 = v124[0];
                            *&v106[3] = *(v124 + 3);
                            v107 = v26;
                            v108 = v48;
                            *&v109[7] = *(v122 + 7);
                            *v109 = v122[0];
                            v110 = v45;
                            sub_257CA0(&aBlock);
                            v9 = v87;
                            goto LABEL_59;
                          }

LABEL_47:
                          v46 = [v42 standardUserDefaults];
                          LOBYTE(v115) = 7;
                          NSUserDefaults.subscript.getter(&v137);
                          if (*(&v138 + 1))
                          {
                            if (swift_dynamicCast())
                            {
                              v45 = v115;

                              goto LABEL_52;
                            }
                          }

                          else
                          {
                            sub_12E1C(&v137, &unk_DE8E40, &unk_AF8050);
                          }

                          v45 = 0;
                          goto LABEL_52;
                        }
                      }

                      else
                      {
                        sub_12E1C(&v137, &unk_DE8E40, &unk_AF8050);
                      }

                      goto LABEL_47;
                    }
                  }

                  sub_3A38EC(v82);

                  goto LABEL_41;
                }

                v41 = v78;
              }

              else
              {
                v41 = v79;
              }

              v16 = v82;
            }

            sub_3A38EC(v16);
            goto LABEL_41;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_26:
      sub_2E2464(&v130);
      *v143 = v132;
      *&v143[16] = v133;
      v143[32] = v134;
      v139 = *&v131[16];
      v140 = *&v131[32];
      v141 = *&v131[48];
      v142 = *&v131[64];
      v137 = v130;
      v138 = *v131;
      sub_39BBA0(&v137);
LABEL_59:
      v54 = [v3 isEditing];
      sub_399938(v54);
      v55 = [v3 navigationController];
      if (!v55)
      {

        return;
      }

      if (!v5)
      {

        goto LABEL_65;
      }

      if (*(v3 + *(&stru_298.reloff + (swift_isaMask & *v3))))
      {

LABEL_65:
        return;
      }

      if (!v88)
      {

        return;
      }

      v56 = v55;
      v57 = [v5 results];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 numberOfSections];

        if (v59 < 1)
        {
          goto LABEL_72;
        }

        v60 = [v88 results];
        if (v60)
        {
          v61 = v60;
          v62 = [v60 numberOfSections];

          if (!v62)
          {
            v63 = [v56 removeViewController:v3 animated:1];

            return;
          }

LABEL_72:

          return;
        }

        goto LABEL_89;
      }

      goto LABEL_87;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_4:
}

void sub_39D500(void *a1, uint64_t a2, void *a3)
{
  if (!a1 || (v5 = [a1 deletedItemIndexPaths], sub_AB3820(), v6 = *(sub_AB9760() + 16), v5, , v6) || (v7 = objc_msgSend(a1, "insertedItemIndexPaths"), v8 = *(sub_AB9760() + 16), v7, , v8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(Strong + *&stru_298.segname[(swift_isaMask & *Strong) + 16]);
      if (v11)
      {
        v12 = v11 == a3;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        sub_3A38EC(a3);
      }
    }
  }
}

uint64_t sub_39D634(_BYTE *a1)
{
  sub_39453C();
  *&a1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_editingDelegate + 8] = &off_D0E818;
  swift_unknownObjectWeakAssign();

  return sub_39EE28(a1);
}

double sub_39D724(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;
  sub_307CC(a1, a2);

  sub_394688(sub_3A76E8, v5);

  return result;
}

void sub_39D7E8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2(a1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(*(Strong + qword_E01D38) + 16) && (*(Strong + *(&stru_298.reloff + (swift_isaMask & *Strong))) & 1) == 0 && *(*(Strong + *(&stru_248.reloff + (swift_isaMask & *Strong))) + qword_E70B98) <= 0)
    {
      v6 = sub_39DC7C();
      v7 = sub_AB9260();
      [v6 setLabel:v7];

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v6;
        sub_39E06C(v9, 1);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_3A784C;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_292;
      v12 = _Block_copy(aBlock);

      [v6 performWithResponseHandler:v12];
      _Block_release(v12);
    }

    else
    {
      v6 = Strong;
    }
  }
}

double sub_39DA08(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v8 = a1;
    v9 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7854, v7);
  }

  return result;
}

void sub_39DAD0(void *a1, void *a2)
{
  if (a1)
  {
    v13 = a1;
    v3 = [v13 results];
    if (v3)
    {
      v12 = v3;
      if (([a2 isEditing] & 1) == 0 && (*(a2 + qword_E01D30) & 1) == 0)
      {
        v4 = qword_E01D18;
        *(a2 + qword_E01D18) = 0;

        *(*(a2 + *(&stru_248.reloff + (swift_isaMask & *a2))) + qword_E70B80) = 0;

        sub_478FC();
        v5 = *(a2 + v4);
        if (v5)
        {

          v6 = [v13 request];
          if (v6)
          {
            v7 = v6;
            v8 = type metadata accessor for MusicKitEditingModelResponse();
            v9 = objc_allocWithZone(v8);
            *&v9[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = v5;
            v14.receiver = v9;
            v14.super_class = v8;

            v10 = objc_msgSendSuper2(&v14, "initWithRequest:", v7);

            sub_47478(v10);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }
}

void *sub_39DC7C()
{
  [*(v0 + *&stru_298.segname[swift_isaMask & *v0]) copy];
  sub_ABAB50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  v1 = sub_AB9260();
  [v27 setLabel:v1];

  v2 = [v27 sectionKind];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      if (qword_DE6730 != -1)
      {
        swift_once();
      }

      v5 = qword_E70B40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_B00DB0;
      *(v6 + 32) = sub_AB92A0();
      *(v6 + 40) = v7;
      *(v6 + 48) = sub_AB92A0();
      *(v6 + 56) = v8;
      *(v6 + 64) = sub_AB92A0();
      *(v6 + 72) = v9;
      *(v6 + 80) = sub_AB92A0();
      *(v6 + 88) = v10;
      *(v6 + 96) = sub_AB92A0();
      *(v6 + 104) = v11;
      *(v6 + 112) = sub_AB92A0();
      *(v6 + 120) = v12;
      *(v6 + 128) = sub_AB92A0();
      *(v6 + 136) = v13;
      *(v6 + 144) = sub_AB92A0();
      *(v6 + 152) = v14;
      isa = sub_AB9740().super.isa;
      v16 = [objc_opt_self() propertySetWithProperties:isa];

      v17 = [v5 propertySetByCombiningWithPropertySet:v16];
      [v27 setSectionProperties:v17];
    }
  }

  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v18 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  [v27 setItemKind:v18];
  if (qword_DE6738 != -1)
  {
    swift_once();
  }

  [v27 setItemProperties:qword_E70B48];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = v27;
    sub_39E06C(v20, 0);
  }

  v22 = swift_dynamicCastObjCProtocolConditional();
  if (v22)
  {
    [v22 setWantsDetailedKeepLocalRequestableResponse:{1, &OBJC_PROTOCOL___MPModelRequestDetailedKeepLocalStatusRequesting}];
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = v27;
    sub_39A29C(v24);
  }

  return v27;
}

void sub_39E06C(void *a1, char a2)
{
  [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 4}];
  if (a2)
  {
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 0x10000}];
  }

  if (*(v2 + qword_E01D08 + 8))
  {

    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  [a1 setFilterText:v5];

  if (*(v2 + qword_E71630))
  {
    sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);

    isa = sub_AB9740().super.isa;
  }

  else
  {
    isa = 0;
  }

  [a1 setItemSortDescriptors:isa];
}

BOOL sub_39E1D8()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      return 1;
    }
  }

  if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
  {
    v4 = qword_E01D40;
  }

  else
  {
    v4 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v5 = v0 + v4;
  swift_beginAccess();
  v6 = *(v5 + 7);
  v27 = *(v5 + 6);
  v28 = v6;
  v7 = *(v5 + 3);
  v23 = *(v5 + 2);
  v24 = v7;
  v8 = *(v5 + 5);
  v25 = *(v5 + 4);
  v26 = v8;
  v9 = *(v5 + 1);
  v22[0] = *v5;
  v22[1] = v9;
  v20[6] = v27;
  v20[7] = v28;
  v20[2] = v23;
  v20[3] = v24;
  v29 = v5[128];
  v21 = v29;
  v20[4] = v25;
  v20[5] = v8;
  v20[0] = v22[0];
  v20[1] = v9;
  if (sub_11D03C(v20) == 1)
  {
    return 0;
  }

  v10 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    v16 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v17 = MPModelRelationshipPlaylistCurator;
      sub_15F84(v22, v19, &unk_DFDD90, &unk_B08BA8);
      if ([v16 hasLoadedValueForKey:v17])
      {
        v18 = [v16 curator];
        if (v18)
        {
          v11 = v18;
          v10 = 0;
          goto LABEL_12;
        }
      }

      sub_12E1C(v22, &unk_DFDD90, &unk_B08BA8);
    }

    return 0;
  }

  sub_15F84(v22, v19, &unk_DFDD90, &unk_B08BA8);
  v11 = v10;
LABEL_12:
  v12 = v10;
  v13 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v13, 0);
  v15 = v14;

  sub_12E1C(v22, &unk_DFDD90, &unk_B08BA8);

  return v15 != 0;
}

uint64_t sub_39E438(_BYTE *a1)
{
  v2 = v1;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v4 = qword_E01D40;
  }

  else
  {
    v4 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v5 = v1 + v4;
  swift_beginAccess();
  v6 = *(v5 + 7);
  v140 = *(v5 + 6);
  v141 = v6;
  v7 = *(v5 + 3);
  v136 = *(v5 + 2);
  v137 = v7;
  v8 = *(v5 + 5);
  v138 = *(v5 + 4);
  v139 = v8;
  v9 = *(v5 + 1);
  v134 = *v5;
  v135 = v9;
  v114[6] = v140;
  v114[7] = v141;
  v114[2] = v136;
  v114[3] = v137;
  v142 = v5[128];
  v115 = v142;
  v114[5] = v8;
  v114[4] = v138;
  v114[1] = v9;
  v114[0] = v134;
  v72 = a1;
  if (sub_11D03C(v114) == 1)
  {
    memset(v113, 0, 24);
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
  }

  else
  {
    v131 = v140;
    v132 = v141;
    v133 = v142;
    v127 = v136;
    v128 = v137;
    v130 = v139;
    v129 = v138;
    v126 = v135;
    v125 = v134;
    sub_15F84(&v134, &v82, &unk_DFDD90, &unk_B08BA8);
    sub_D1A9C(&v82);
    sub_12E1C(&v134, &unk_DFDD90, &unk_B08BA8);
    v112 = v86;
    v113[0] = v87;
    *&v113[1] = v88[0];
    v108 = v82;
    v109 = v83;
    v111 = v85;
    v110 = v84;
  }

  if (([v2 isEditing] & 1) != 0 || *(v2 + qword_E01D30) == 1)
  {
    v10 = qword_E01D40;
  }

  else
  {
    v10 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
  }

  v11 = v2 + v10;
  swift_beginAccess();
  v12 = *(v11 + 7);
  v105 = *(v11 + 6);
  v106 = v12;
  v13 = *(v11 + 3);
  v101 = *(v11 + 2);
  v102 = v13;
  v14 = *(v11 + 5);
  v103 = *(v11 + 4);
  v104 = v14;
  v15 = *(v11 + 1);
  v99 = *v11;
  v100 = v15;
  v97[6] = v105;
  v97[7] = v106;
  v97[2] = v101;
  v97[3] = v102;
  v107 = v11[128];
  v98 = v107;
  v97[4] = v103;
  v97[5] = v14;
  v97[0] = v99;
  v97[1] = v15;
  if (sub_11D03C(v97) == 1)
  {
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v118 = v101;
    v119 = v102;
    v121 = v104;
    v120 = v103;
    v117 = v100;
    v116 = v99;
    sub_15F84(&v99, &v82, &unk_DFDD90, &unk_B08BA8);
    v70 = sub_D1FC0();
    v71 = v16;
    sub_12E1C(&v99, &unk_DFDD90, &unk_B08BA8);
  }

  v17 = v2 + qword_E01D50;
  v18 = *(v2 + qword_E01D50 + 80);
  v93 = *(v2 + qword_E01D50 + 64);
  v94 = v18;
  v95 = *(v2 + qword_E01D50 + 96);
  v96 = *(v2 + qword_E01D50 + 112);
  v19 = *(v2 + qword_E01D50 + 16);
  v89 = *(v2 + qword_E01D50);
  v90 = v19;
  v20 = *(v2 + qword_E01D50 + 48);
  v91 = *(v2 + qword_E01D50 + 32);
  v92 = v20;
  sub_15F84(&v89, &v82, &qword_E02CA8, &qword_B0C608);

  v21 = *(&v89 + 1);
  v22 = v108;
  v23 = v109;
  v24 = v110;
  v25 = *(&v111 + 1);
  v26 = v111;
  v27 = *(&v112 + 1);
  v28 = v112;
  v29 = *&v113[0];
  if (*(&v89 + 1))
  {
    if (*(&v108 + 1))
    {
      v59 = *(v113 + 8);
      *&v69 = v91;
      *(&v69 + 1) = *(&v90 + 1);
      *&v68 = v92;
      *(&v68 + 1) = *(&v91 + 1);
      v66 = v90;
      v67 = *(&v92 + 1);
      v63 = *(&v93 + 1);
      v64 = v93;
      v30 = v94;
      v60 = v95;
      v65 = *&v113[0];
      v61 = *(&v111 + 1);
      v62 = v112;
      v58 = v89;
      if (v108 == v89)
      {
        if (v90 != v109)
        {
LABEL_36:
          v74 = v22;
          v75 = v23;
          v76 = v24;
          v77 = v26;
          v78 = v25;
          *&v79 = v28;
          *(&v79 + 1) = v27;
          v80 = v29;
          v81 = v59;
          sub_15F84(&v108, v73, &unk_E02CB0, &unk_B0C610);
          sub_12E1C(&v74, &unk_E02CB0, &unk_B0C610);
          *&v82 = v58;
          *(&v82 + 1) = v21;
          *&v83 = v66;
          *(&v83 + 1) = *(&v69 + 1);
          *&v84 = v69;
          *(&v84 + 1) = *(&v68 + 1);
          *&v85 = v68;
          *(&v85 + 1) = v67;
          *&v86 = v64;
          *(&v86 + 1) = v63;
          v87 = v30;
          v88[0] = v60;
          v31 = &unk_E02CB0;
          v32 = &unk_B0C610;
          goto LABEL_37;
        }
      }

      else
      {
        v33 = sub_ABB3C0();
        v25 = v61;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = v65;
        if ((v33 & 1) == 0 || v66 != v23)
        {
          goto LABEL_36;
        }
      }

      if (v69 != __PAIR128__(*(&v23 + 1), v24))
      {
        v34 = sub_ABB3C0();
        v25 = v61;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = v65;
        if ((v34 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v68 != __PAIR128__(*(&v24 + 1), v26))
      {
        v35 = sub_ABB3C0();
        v25 = v61;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = v65;
        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v67 != v25 || v64 != v28)
      {
        v36 = sub_ABB3C0();
        v25 = v61;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = v65;
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v63 != v27 || v30 != v29)
      {
        v37 = sub_ABB3C0();
        v25 = v61;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = v65;
        if ((v37 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (__PAIR128__(v60, *(&v30 + 1)) != v59)
      {
        v57 = sub_ABB3C0();
        v74 = v22;
        v75 = v23;
        v76 = v24;
        v77 = v26;
        v78 = v61;
        v79 = v62;
        v80 = v65;
        v81 = v59;
        sub_15F84(&v108, v73, &unk_E02CB0, &unk_B0C610);
        sub_12E1C(&v74, &unk_E02CB0, &unk_B0C610);
        *&v82 = v58;
        *(&v82 + 1) = v21;
        *&v83 = v66;
        *(&v83 + 1) = *(&v69 + 1);
        *&v84 = v69;
        *(&v84 + 1) = *(&v68 + 1);
        *&v85 = v68;
        *(&v85 + 1) = v67;
        *&v86 = v64;
        *(&v86 + 1) = v63;
        v87 = v30;
        v88[0] = v60;
        sub_12E1C(&v82, &unk_E02CB0, &unk_B0C610);
        if ((v57 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_43:
        v39 = v70;
        v38 = v71;
        v50 = *(v17 + 6);
        v87 = *(v17 + 5);
        *v88 = v50;
        v51 = *(v17 + 4);
        v88[2] = *(v17 + 14);
        v52 = v88[2];
        v53 = *(v17 + 1);
        v82 = *v17;
        v83 = v53;
        v54 = *(v17 + 3);
        v84 = *(v17 + 2);
        v85 = v54;
        v86 = v51;
        v55 = *(&v50 + 1);
        sub_15F84(&v82, &v74, &qword_E02CA8, &qword_B0C608);
        sub_12E1C(&v82, &unk_E02CB0, &unk_B0C610);
        if (v52)
        {
          if (v71)
          {
            if (v55 == v70 && v52 == v71)
            {

              goto LABEL_52;
            }

            v56 = sub_ABB3C0();

            if (v56)
            {
LABEL_52:
              if (*(&v108 + 1))
              {

                sub_12E1C(&v108, &unk_E02CB0, &unk_B0C610);
                v48 = 0;
                a1 = v72;
                goto LABEL_40;
              }
            }
          }

          else
          {
          }
        }

        else if (!v71)
        {
          goto LABEL_52;
        }

        a1 = v72;
        goto LABEL_39;
      }

      v74 = v22;
      v75 = v23;
      v76 = v24;
      v77 = v26;
      v78 = v25;
      *&v79 = v28;
      *(&v79 + 1) = v27;
      v80 = v29;
      *&v81 = *(&v30 + 1);
      *(&v81 + 1) = *(&v59 + 1);
      sub_15F84(&v108, v73, &unk_E02CB0, &unk_B0C610);
      sub_12E1C(&v74, &unk_E02CB0, &unk_B0C610);
      *&v82 = v58;
      *(&v82 + 1) = v21;
      *&v83 = v66;
      *(&v83 + 1) = *(&v69 + 1);
      *&v84 = v69;
      *(&v84 + 1) = *(&v68 + 1);
      *&v85 = v68;
      *(&v85 + 1) = v67;
      *&v86 = v64;
      *(&v86 + 1) = v63;
      v87 = v30;
      v88[0] = v60;
LABEL_42:
      sub_12E1C(&v82, &unk_E02CB0, &unk_B0C610);
      goto LABEL_43;
    }
  }

  else if (!*(&v108 + 1))
  {
    v82 = v89;
    v83 = v90;
    v84 = v91;
    v85 = v92;
    v86 = v93;
    v87 = v94;
    v88[0] = v95;
    sub_15F84(&v108, &v74, &unk_E02CB0, &unk_B0C610);
    goto LABEL_42;
  }

  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  v88[0] = v95;
  *&v88[1] = v108;
  *&v88[3] = v109;
  *&v88[5] = v110;
  *&v88[7] = v111;
  *&v88[9] = v112;
  *&v88[11] = v113[0];
  v88[13] = *&v113[1];
  sub_15F84(&v108, &v74, &unk_E02CB0, &unk_B0C610);
  v31 = &qword_DEDFB8;
  v32 = &unk_AFC6A0;
LABEL_37:
  sub_12E1C(&v82, v31, v32);
LABEL_38:
  v38 = v71;
  v39 = v70;
LABEL_39:
  v40 = *(v17 + 5);
  v86 = *(v17 + 4);
  v87 = v40;
  v88[0] = *(v17 + 12);
  v41 = *(v17 + 1);
  v82 = *v17;
  v83 = v41;
  v42 = *(v17 + 3);
  v84 = *(v17 + 2);
  v85 = v42;
  v43 = v109;
  *v17 = v108;
  *(v17 + 1) = v43;
  v44 = v110;
  v45 = v111;
  v46 = v113[0];
  v47 = *&v113[1];
  *(v17 + 4) = v112;
  *(v17 + 5) = v46;
  *(v17 + 2) = v44;
  *(v17 + 3) = v45;
  *(v17 + 12) = v47;
  *(v17 + 13) = v39;
  *(v17 + 14) = v38;
  sub_12E1C(&v82, &unk_E02CB0, &unk_B0C610);

  v48 = 1;
LABEL_40:
  sub_3967A8(a1, v48);
  return sub_39EE28(a1);
}

uint64_t sub_39EE28(_BYTE *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v84 - v8;
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v10 = qword_E01D40;
  }

  else
  {
    v10 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v11 = v1 + v10;
  swift_beginAccess();
  v12 = *(v11 + 7);
  v140 = *(v11 + 6);
  v141 = v12;
  v142 = v11[128];
  v13 = *(v11 + 3);
  v136 = *(v11 + 2);
  v137 = v13;
  v14 = *(v11 + 5);
  v138 = *(v11 + 4);
  v139 = v14;
  v15 = *(v11 + 1);
  v134 = *v11;
  v135 = v15;
  v102 = v140;
  v103 = v141;
  v104 = v142;
  v98 = v136;
  v99 = v137;
  v100 = v138;
  v101 = v14;
  v96 = v134;
  v97 = v15;
  result = sub_11D03C(&v96);
  if (result != 1)
  {
    v87 = v6;
    v88 = v4;
    v131 = v102;
    v132 = v103;
    v133 = v104;
    v127 = v98;
    v128 = v99;
    v129 = v100;
    v130 = v101;
    v125 = v96;
    v126 = v97;
    v94[6] = v140;
    v94[7] = v141;
    v95 = v142;
    v94[2] = v136;
    v94[3] = v137;
    v94[4] = v138;
    v94[5] = v139;
    v94[0] = v134;
    v94[1] = v135;
    sub_2E2538(v94, v93);
    v17 = sub_D1FC0();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v90 = a1;
    v20 = *&a1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v91 = v20;
    v86 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
    v22 = *&v20[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
    v23 = &v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v24 = *&v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v25 = *&v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
    v26 = v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
    if (v26 || (v19 != v24 || v25 != v21) && (sub_ABB3C0() & 1) == 0)
    {
      *v23 = v19;
      *(v23 + 1) = v21;
      v23[16] = 0;
      v27 = v22;

      sub_2372F0(v24, v25, v26);
      sub_2366F4();
    }

    v28 = v91;
    sub_2A2D6C();
    v29 = sub_D1560();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = v90;
    v33 = &v90[OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText];
    if (v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    *v33 = v31;
    v33[1] = v34;

    v35 = *&v28[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];

    v36 = v35;
    v37 = sub_AB9260();

    [v36 setTitle:v37 forState:0];

    sub_2A2D6C();
    sub_D16B0();
    v38 = String.trim()();
    sub_2A3A10(v38._countAndFlagsBits, v38._object);

    sub_2A1A4C();
    sub_2A2D6C();

    v39 = sub_D1780();
    if (v39 == 2)
    {
      v39 = sub_D1854();
    }

    [*(*&v28[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton) setOn:v39 & 1];
    v40 = *(&v99 + 1);
    if (*(&v99 + 1))
    {
      v41 = MPModelPropertyPlaylistType;
      v42 = *(&v99 + 1);
      if ([v42 hasLoadedValueForKey:v41])
      {
        v43 = [v42 type];

        if (v43 == &dword_8)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    sub_D18F4(v9);
    v44 = sub_AB2DC0();
    v45 = (*(*(v44 - 8) + 48))(v9, 1, v44);
    sub_12E1C(v9, &qword_DF43E0, &unk_B03B20);
    if (v45 != 1 && v40)
    {
      sub_1506B4();
    }

LABEL_33:
    v89 = v40;
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = sub_AB9260();
    v48 = [v46 initWithString:v47];

    v49 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
    [*&v28[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel] setAttributedText:v48];
    v50 = *&v28[v49];
    if (v48)
    {
      v51 = v48;
      v52 = [v51 accessibilityLabel];
      if (v52)
      {
        v53 = v52;
        sub_AB92A0();

        v54 = sub_AB9260();

        goto LABEL_38;
      }
    }

    v54 = 0;
LABEL_38:
    [v50 setAccessibilityLabel:v54];

    sub_2A2D6C();
    v55 = *&v32[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
    if (v89)
    {
      v56 = MPModelPropertyPlaylistType;
      v57 = v89;
      if ([v57 hasLoadedValueForKey:v56])
      {
        v58 = [v57 type];
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    static Artwork.Placeholder.playlist(ofType:)(v58, &v105);
    Artwork.Placeholder.withSolidBackgroundColor()(&v108);
    v124 = v105;
    sub_12E1C(&v124, &unk_DFDE40, &qword_B0C640);
    v123 = *(&v105 + 1);
    sub_12E1C(&v123, &unk_DFDE40, &qword_B0C640);
    v122 = v106;
    sub_12E1C(&v122, &unk_E00030, &unk_AF98E0);

    Artwork.Placeholder.withScaleFactor(_:)(v111, 0.46);
    v121 = v108.n128_u64[0];
    sub_12E1C(&v121, &unk_DFDE40, &qword_B0C640);
    v120 = v108.n128_u64[1];
    sub_12E1C(&v120, &unk_DFDE40, &qword_B0C640);
    v119 = v109;
    sub_12E1C(&v119, &unk_E00030, &unk_AF98E0);

    v59 = [objc_opt_self() quaternaryLabelColor];
    Artwork.Placeholder.withTint(_:)(v59, v112);
    v61 = v112[0];
    v60 = v112[1];
    v63 = v112[2];
    v62 = v112[3];
    v64 = v112[5];
    v85 = v112[4];

    v118 = v111[0];
    sub_12E1C(&v118, &unk_DFDE40, &qword_B0C640);
    v117 = v111[1];
    sub_12E1C(&v117, &unk_DFDE40, &qword_B0C640);
    v116 = v111[2];
    sub_12E1C(&v116, &unk_E00030, &unk_AF98E0);

    v65 = *(v55 + 168);
    v93[0] = *(v55 + 152);
    v93[1] = v65;
    v93[2] = *(v55 + 184);
    v114 = v60;
    v115 = v61;
    v113 = v63;
    *(v55 + 152) = v61;
    *(v55 + 160) = v60;
    *(v55 + 168) = v63;
    *(v55 + 176) = v62;
    *(v55 + 184) = v85;
    *(v55 + 192) = v64;
    v66 = v62;
    sub_15F84(&v115, &v92, &unk_DFDE40, &qword_B0C640);
    sub_15F84(&v114, &v92, &unk_DFDE40, &qword_B0C640);
    sub_15F84(&v113, &v92, &unk_E00030, &unk_AF98E0);
    sub_75948(v93);
    sub_12E1C(v93, &unk_DF8690, &unk_AF9900);
    sub_12E1C(&v115, &unk_DFDE40, &qword_B0C640);
    sub_12E1C(&v114, &unk_DFDE40, &qword_B0C640);
    sub_12E1C(&v113, &unk_E00030, &unk_AF98E0);

    sub_AB91E0();
    sub_AB3550();
    v67 = sub_AB9320();
    v68 = v91;
    v69 = *&v91[v86];
    v70 = &v69[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText];
    *v70 = v67;
    v70[1] = v71;
    v72 = v69;

    sub_236500();

    sub_2A2D6C();
    sub_AB91E0();
    sub_AB3550();
    v73 = sub_AB9320();
    v74 = (*&v68[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText);
    *v74 = v73;
    v74[1] = v75;

    sub_236500();
    sub_2A2D6C();
    v76 = v90;
    if (v89)
    {
      v77 = MPModelPropertyPlaylistTraits;
      v78 = v89;
      if ([v78 hasLoadedValueForKey:v77])
      {
        v79 = MPModelPlaylist.supportsSing.getter();

        if (v79)
        {
          v80 = v76[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle];
          v76[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle] = 0;
          if (v80 == 1)
          {
            sub_29C398();
            [v76 setNeedsLayout];
            [v68 setNeedsLayout];
          }

          v81 = *&v68[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
          v82 = 2;
LABEL_54:
          SymbolButton.update(to:)(v82);

          return sub_12E1C(&v134, &unk_DFDD90, &unk_B08BA8);
        }
      }

      else
      {
      }
    }

    v83 = v76[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle];
    v76[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle] = 1;
    if ((v83 & 1) == 0)
    {
      sub_29C398();
      [v76 setNeedsLayout];
      [v68 setNeedsLayout];
    }

    v81 = *&v68[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
    v82 = 0;
    goto LABEL_54;
  }

  return result;
}

void sub_39F97C(void *a1, uint64_t a2)
{
  v5 = *&stru_298.segname[(swift_isaMask & *v2) + 16];
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = [v6 request];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for JSContainerDetailModelRequest();
      if (swift_dynamicCastClass() && *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
      {
        swift_unknownObjectWeakAssign();
      }
    }
  }

  sub_393AE4(a1, a2);
  if (*(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00, &qword_B0C600);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000011;
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 40) = 0x8000000000B4ACD0;
    v10 = *(v2 + v5);
    if (v10)
    {
      v11 = [v10 results];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = [v11 totalItemCount];
    }

    else
    {
      v13 = 0;
    }

    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &off_D191F0;
    *(inited + 48) = v13;
    *(inited + 88) = 0x6E6F697461636F6CLL;
    *(inited + 96) = 0xE800000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    if (a2)
    {
      v14._countAndFlagsBits = 0x656C6666756873;
    }

    else
    {
      v14._countAndFlagsBits = 2036427888;
    }

    if (a2)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v14._object = v15;
    sub_AB94A0(v14);

    v28._countAndFlagsBits = 0x6E6F7474756220;
    v28._object = 0xE700000000000000;
    sub_AB94A0(v28);
    v16 = v22;
    v17 = v23;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &off_D19220;
    *(inited + 104) = v16;
    *(inited + 112) = v17;
    v18 = sub_979E0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D08, &unk_AF8980);
    swift_arrayDestroy();
    v19 = sub_AB9260();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v26 = sub_57DA0;
    v27 = v20;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_3A598C;
    v25 = &block_descriptor_121;
    v21 = _Block_copy(&v22);

    AnalyticsSendEventLazy();
    _Block_release(v21);
  }
}

void sub_39FCCC(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, __n128 a5)
{
  v8 = a2;
  v10 = sub_12D948(a2, a5);
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v31 = a3;
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = v8;
    v12[5] = a1;
    v12[6] = v5;
    v12[7] = v11;
    if (v11 >> 62)
    {
LABEL_27:
      v13 = sub_ABB060();
    }

    else
    {
      v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }

    v30 = a1;
    v14 = v5;
    v15 = v14;
    if (v13)
    {
      v27 = v14;
      v28 = v12;
      v29 = v8;
      v5 = 0;
      v12 = (v11 & 0xC000000000000001);
      a1 = 1;
      v8 = &selRef_setSubtitleText_;
      do
      {
        if (v12)
        {
          v16 = sub_3603D0(v5, v11);
        }

        else
        {
          if (v5 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v16 = *(v11 + 8 * v5 + 32);
        }

        v17 = v16;
        v18 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v19 = [v16 isLibraryAdded];

        a1 = v19 & a1;
        ++v5;
      }

      while (v18 != v13);
      v8 = v29;
      v15 = v27;
      if (a1)
      {
        goto LABEL_14;
      }

      memset(v34, 0, sizeof(v34));
      v35 = 0;
      v36 = xmmword_AF7710;
      PresentationSource.init(viewController:position:)(v27, v34, v33);

      static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(2, v33, 0, sub_3A7B3C, v28);

      sub_1611C(v33);
    }

    else
    {
LABEL_14:
      sub_3A0084(1, v31, a4, v8, v30, v15, v11);
    }
  }

  else
  {
    a3();
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v20 = sub_AB4BC0();
    __swift_project_value_buffer(v20, static Logger.mediaPicker);

    oslog = sub_AB4BA0();
    v21 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136446210;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v24 = sub_AB9770();
      v26 = sub_425E68(v24, v25, v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, oslog, v21, "PlaylistDetailViewController: mediaPickerNavigationController(_:items:completion:) returned without adding items to playlist [items was not a collection of MPModelSongs] items=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
    }
  }
}

void sub_3A0084(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v109 = a7;
  v111 = a6;
  sub_AB35C0();
  __chkstk_darwin();
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  v13 = __chkstk_darwin();
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
LABEL_7:
    (a2)(0, v13);
    if (qword_DE6BA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_97;
  }

  v99 = v15;
  type metadata accessor for MediaPickerNavigationController(0);
  v105 = swift_dynamicCastClass();
  if (!v105)
  {
    a2();
    return;
  }

  v93 = v12;
  v96 = a2;
  v97 = a3;
  v106 = a5;
  v122 = _swiftEmptyArrayStorage;
  a2 = &swift_isaMask;
  v16 = *(*(v111 + *(&stru_248.reloff + (swift_isaMask & *v111))) + qword_E70B88);
  if (v16)
  {
    v17 = v106;
    v18 = [v16 results];
    if (!v18)
    {
LABEL_103:
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = &v122;
    v21 = swift_allocObject();
    v94 = sub_3A7BE0;
    *(v21 + 16) = sub_3A7BE0;
    *(v21 + 24) = v20;
    v95 = v20;
    v119 = sub_15AB68;
    v120 = v21;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_48D4FC;
    v118 = &block_descriptor_411;
    v22 = _Block_copy(&aBlock);

    [v19 enumerateItemsUsingBlock:v22];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v31 = v106;
    v94 = 0;
    v95 = 0;
  }

  v121 = _swiftEmptyArrayStorage;
  v98 = v109 >> 62;
  if (v109 >> 62)
  {
    v32 = sub_ABB060();
  }

  else
  {
    v32 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = v106;
  v34 = _swiftEmptyArrayStorage;
  if (v32)
  {
    v110 = qword_E01DA0;
    v35 = v109;
    v108 = v109 & 0xC000000000000001;
    v102 = *&stru_298.segname[(swift_isaMask & *v111) + 16];
    v101 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    swift_beginAccess();
    v36 = 0;
    v104 = v35 & 0xFFFFFFFFFFFFFF8;
    v103 = v35 + 32;
    v100 = &v117;
    v107 = v32;
    while (1)
    {
      if (v108)
      {
        v37 = sub_3603D0(v36, v109);
      }

      else
      {
        if (v36 >= *(v104 + 16))
        {
          goto LABEL_95;
        }

        v37 = *(v103 + 8 * v36);
      }

      v38 = v37;
      v39 = __OFADD__(v36, 1);
      v40 = (v36 + 1);
      if (v39)
      {
        goto LABEL_94;
      }

      v112 = v34;
      v113 = v40;
      if (*(v111 + v110))
      {
        v41 = *(v111 + v110);
        goto LABEL_33;
      }

      v42 = *(v111 + v102);
      if (v42)
      {
        break;
      }

LABEL_45:
      v56 = v122;
      if (v122 >> 62)
      {
        v57 = sub_ABB060();
      }

      else
      {
        v57 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
      }

      v58 = 0;
      while (v57 != v58)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = sub_360310(v58, v56);
        }

        else
        {
          if (v58 >= *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_91;
          }

          v59 = *(v56 + 8 * v58 + 32);
        }

        v60 = v59;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_90;
        }

        v61 = [v38 identifiers];
        v62 = [v60 intersectsSet:v61];

        ++v58;
        if (v62)
        {
          goto LABEL_19;
        }
      }

      v63 = [v38 identifiers];
      v64 = *&v105[v101];
      if (v64 >> 62)
      {
        v65 = sub_ABB060();
      }

      else
      {
        v65 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
      }

      v66 = 0;
      while (v65 != v66)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = sub_3602FC(v66, v64);
        }

        else
        {
          if (v66 >= *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_93;
          }

          v67 = *(v64 + 8 * v66 + 32);
        }

        v68 = v67;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_92;
        }

        v69 = [v67 identifiers];
        v70 = [v69 intersectsSet:v63];

        ++v66;
        if (v70)
        {

          v33 = v106;
          goto LABEL_20;
        }
      }

      v71 = v38;
      sub_AB9730();
      v33 = v106;
      if (*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v121 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v34 = v121;
LABEL_21:
      v36 = v113;
      if (v113 == v107)
      {
        goto LABEL_73;
      }
    }

    v114 = _swiftEmptyArrayStorage;
    v43 = v42;
    v44 = [v43 results];
    if (!v44)
    {
      goto LABEL_102;
    }

    v45 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = &v114;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_3A7BB0;
    *(v47 + 24) = v46;
    v119 = sub_3A7BB8;
    v120 = v47;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_3A37D0;
    v118 = &block_descriptor_401;
    v48 = _Block_copy(&aBlock);

    [v45 enumerateItemsUsingBlock:v48];
    _Block_release(v48);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *(v111 + v110) = v114;

      v41 = v114;

LABEL_33:
      if (v41 >> 62)
      {
        v50 = sub_ABB060();
      }

      else
      {
        v50 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      }

      v51 = 0;
      while (1)
      {
        if (v50 == v51)
        {

          goto LABEL_45;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v52 = sub_360310(v51, v41);
        }

        else
        {
          if (v51 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_89;
          }

          v52 = *(v41 + 8 * v51 + 32);
        }

        v53 = v52;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v54 = [v38 identifiers];
        v55 = [v53 intersectsSet:v54];

        ++v51;
        if (v55)
        {
LABEL_19:

LABEL_20:
          v34 = v112;
          goto LABEL_21;
        }
      }

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
    }

    __break(1u);
LABEL_97:
    swift_once();
LABEL_8:
    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, static Logger.mediaPicker);

    v113 = sub_AB4BA0();
    v24 = sub_AB9F30();

    if (os_log_type_enabled(v113, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v27 = sub_AB9770();
      v29 = sub_425E68(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v113, v24, "PlaylistDetailViewController: mediaPickerNavigationController(_:items:completion:) returned without adding items to playlist [isCloudLibraryRequirementSatisfied was false] items=%{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      v30 = v113;
    }

    return;
  }

LABEL_73:
  if (v98)
  {
    v72 = sub_ABB060();
  }

  else
  {
    v72 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
  }

  if (v34 >> 62)
  {
    v91 = v72;
    v92 = sub_ABB060();
    v74 = v91 - v92;
    if (!__OFSUB__(v91, v92))
    {
      goto LABEL_78;
    }

    goto LABEL_101;
  }

  v73 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
  v74 = v72 - v73;
  if (__OFSUB__(v72, v73))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_78:
  if (v74 <= 0)
  {

    if (v98)
    {
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);

      v76 = sub_ABAFF0();
    }

    else
    {
      v76 = v109;

      sub_ABB3E0();
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    }

    (v96)(v76);
  }

  else
  {
    v112 = v34;
    if (v74 == 1)
    {
      v75 = v97;
      sub_AB91E0();
      sub_AB3550();
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v75 = v97;
    }

    sub_AB9320();
    v77 = sub_AB9260();

    v78 = [objc_opt_self() alertControllerWithTitle:v77 message:0 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v79 = swift_allocObject();
    v80 = v96;
    v79[2] = v96;
    v79[3] = v75;
    v79[4] = v109;

    v81 = sub_AB9260();

    v119 = sub_3A7B50;
    v120 = v79;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_1546C;
    v118 = &block_descriptor_386;
    v82 = _Block_copy(&aBlock);

    v83 = objc_opt_self();
    v84 = [v83 actionWithTitle:v81 style:0 handler:v82];
    _Block_release(v82);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v85 = swift_allocObject();
    v86 = v75;
    v87 = v85;
    v85[2] = v80;
    v85[3] = v86;
    v85[4] = v112;

    v88 = sub_AB9260();

    v119 = sub_3A80F8;
    v120 = v87;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_1546C;
    v118 = &block_descriptor_392_0;
    v89 = _Block_copy(&aBlock);

    v90 = [v83 actionWithTitle:v88 style:0 handler:v89];
    _Block_release(v89);

    [v78 addAction:v84];
    [v78 addAction:v90];
    [v78 setPreferredAction:v90];
    [v105 presentViewController:v78 animated:1 completion:0];
  }

  sub_17654(v94, v95);
}

double sub_3A10B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = [v5 song]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, "identifiers"), v7, v8))
  {
    v10 = v8;
    sub_AB9730();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_3A11D0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);

    v8 = sub_ABAFF0();

    v6 = v8;
  }

  else
  {

    sub_ABB3E0();
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    v6 = a4;
  }

  a2(v6);

  return result;
}

uint64_t sub_3A12B0(void *a1)
{
  v17 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v17, 15, v9);
  v13[0] = v9[0];
  v13[1] = v9[1];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = a1;
  v5 = v1;
  if (sub_3A18A4())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_3A80A8;
    *(v6 + 24) = v3;

    sub_3A49F4(v13, sub_3A80E0, v6);
  }

  else
  {
    v7 = [v5 isEditing];
    *(v5 + qword_E01D20) = 1;
    [v5 setEditing:v7 ^ 1 animated:1];
  }

  return sub_3A7A90(v9);
}

void sub_3A13FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_3A12B0(v4);
}

uint64_t sub_3A1464(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 presentedViewController];
  type metadata accessor for MediaPickerNavigationController(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    v7 = v5;
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (v8 >> 62)
    {
      v9 = sub_ABB060();
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    if (v9 > 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

double sub_3A1538(void *a1)
{
  v2 = [a1 presentedViewController];
  type metadata accessor for MediaPickerNavigationController(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_3A6274(v4, sub_3A79AC, v5);
  }

  else
  {

    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v14 = xmmword_AF7710;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = v1;
    if (sub_3A18A4())
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_3A7974;
      *(v9 + 24) = v7;

      sub_3A49F4(&v11, sub_3A7978, v9);
    }

    else
    {
      v10 = [v8 isEditing];
      *(v8 + qword_E01D20) = 1;
      [v8 setEditing:v10 ^ 1 animated:1];
    }
  }

  return result;
}

void sub_3A16FC(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_3A1768(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_3A1538(v4);
}

void sub_3A17D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v7 = [v4 presentedViewController];
  type metadata accessor for MediaPickerNavigationController(0);
  if (swift_dynamicCastClass())
  {

    v4 = v5;
  }

  else
  {

    v6 = [v5 isEditing];
    *(v5 + qword_E01D20) = 1;
    [v5 setEditing:v6 ^ 1 animated:1];
    v7 = v5;
  }
}

uint64_t sub_3A18A4()
{
  v1 = v0 + *&stru_298.segname[(swift_isaMask & *v0) + 8];
  swift_beginAccess();
  v2 = *(v1 + 7);
  v49 = *(v1 + 6);
  v50 = v2;
  v51 = v1[128];
  v3 = *(v1 + 3);
  v45 = *(v1 + 2);
  v46 = v3;
  v4 = *(v1 + 4);
  v48 = *(v1 + 5);
  v47 = v4;
  v6 = *v1;
  v5 = *(v1 + 1);
  v7 = v0 + qword_E01D40;
  v44 = v5;
  v43 = v6;
  swift_beginAccess();
  v8 = *(v7 + 5);
  v9 = *(v7 + 7);
  v57 = *(v7 + 6);
  v58 = v9;
  v10 = *(v7 + 1);
  v11 = *(v7 + 3);
  v53 = *(v7 + 2);
  v54 = v11;
  v13 = *(v7 + 3);
  v12 = *(v7 + 4);
  v14 = v12;
  v56 = *(v7 + 5);
  v55 = v12;
  v15 = *v7;
  v16 = *v7;
  v52[1] = *(v7 + 1);
  v52[0] = v15;
  __src[6] = v49;
  __src[7] = v50;
  __src[2] = v45;
  __src[3] = v46;
  __src[4] = v47;
  __src[5] = v48;
  __src[0] = v43;
  __src[1] = v44;
  *(&__src[13] + 8) = v8;
  *(&__src[14] + 8) = v57;
  *(&__src[15] + 8) = *(v7 + 7);
  *(&__src[9] + 8) = v10;
  *(&__src[10] + 8) = v53;
  *(&__src[11] + 8) = v13;
  *(&__src[12] + 8) = v14;
  *(&__src[8] + 8) = v16;
  v60[6] = v49;
  v60[7] = v50;
  v60[2] = v45;
  v60[3] = v46;
  v60[4] = v47;
  v60[5] = v48;
  v59 = v7[128];
  LOBYTE(__src[8]) = v51;
  BYTE8(__src[16]) = v7[128];
  v61 = v51;
  v60[0] = v43;
  v60[1] = v44;
  if (sub_11D03C(v60) == 1)
  {
    __dst[6] = *(&__src[14] + 8);
    __dst[7] = *(&__src[15] + 8);
    LOBYTE(__dst[8]) = BYTE8(__src[16]);
    __dst[2] = *(&__src[10] + 8);
    __dst[3] = *(&__src[11] + 8);
    __dst[4] = *(&__src[12] + 8);
    __dst[5] = *(&__src[13] + 8);
    __dst[0] = *(&__src[8] + 8);
    __dst[1] = *(&__src[9] + 8);
    if (sub_11D03C(__dst) == 1)
    {
      v40 = __src[6];
      v41 = __src[7];
      v42 = __src[8];
      v36 = __src[2];
      v37 = __src[3];
      v39 = __src[5];
      v38 = __src[4];
      v35 = __src[1];
      v34 = __src[0];
      sub_15F84(&v43, &v27, &unk_DFDD90, &unk_B08BA8);
      sub_15F84(v52, &v27, &unk_DFDD90, &unk_B08BA8);
      sub_12E1C(&v34, &unk_DFDD90, &unk_B08BA8);
      v17 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *&v31[32] = *(&__src[14] + 8);
  *&v31[48] = *(&__src[15] + 8);
  v31[64] = BYTE8(__src[16]);
  v29 = *(&__src[10] + 8);
  v30 = *(&__src[11] + 8);
  *v31 = *(&__src[12] + 8);
  *&v31[16] = *(&__src[13] + 8);
  v27 = *(&__src[8] + 8);
  v28 = *(&__src[9] + 8);
  if (sub_11D03C(&v27) == 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x109uLL);
    sub_15F84(&v43, &v34, &unk_DFDD90, &unk_B08BA8);
    sub_15F84(v52, &v34, &unk_DFDD90, &unk_B08BA8);
    sub_12E1C(__dst, &qword_E02CA0, &unk_B0C5D0);
    v17 = 0;
    goto LABEL_7;
  }

  v23[6] = *(&__src[14] + 8);
  v23[7] = *(&__src[15] + 8);
  v24 = BYTE8(__src[16]);
  v23[2] = *(&__src[10] + 8);
  v23[3] = *(&__src[11] + 8);
  v23[4] = *(&__src[12] + 8);
  v23[5] = *(&__src[13] + 8);
  v23[0] = *(&__src[8] + 8);
  v23[1] = *(&__src[9] + 8);
  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  v40 = __src[6];
  v41 = __src[7];
  v42 = __src[8];
  v36 = __src[2];
  v37 = __src[3];
  v39 = __src[5];
  v38 = __src[4];
  v35 = __src[1];
  v34 = __src[0];
  sub_15F84(&v43, v25, &unk_DFDD90, &unk_B08BA8);
  sub_15F84(v52, v25, &unk_DFDD90, &unk_B08BA8);
  sub_15F84(&v43, v25, &unk_DFDD90, &unk_B08BA8);
  sub_15F84(v52, v25, &unk_DFDD90, &unk_B08BA8);
  v17 = sub_D24AC(&v34, __dst);
  sub_12E1C(v52, &unk_DFDD90, &unk_B08BA8);
  sub_12E1C(&v43, &unk_DFDD90, &unk_B08BA8);
  sub_12E1C(v23, &unk_DFDD90, &unk_B08BA8);
  v25[6] = __src[6];
  v25[7] = __src[7];
  v26 = __src[8];
  v25[2] = __src[2];
  v25[3] = __src[3];
  v25[4] = __src[4];
  v25[5] = __src[5];
  v25[0] = __src[0];
  v25[1] = __src[1];
  sub_12E1C(v25, &unk_DFDD90, &unk_B08BA8);
LABEL_7:
  v18 = *(v7 + 1);
  v27 = *v7;
  v28 = v18;
  v29 = *(v7 + 2);
  v20 = *(v7 + 6);
  v19 = *(v7 + 7);
  v21 = *(v7 + 8);
  *&v31[8] = *(v7 + 72);
  *&v31[24] = *(v7 + 88);
  *&v31[40] = *(v7 + 104);
  *&v31[49] = *(v7 + 113);
  *&v30 = v20;
  *(&v30 + 1) = v19;
  *v31 = v21;
  if (sub_11D03C(&v27) == 1)
  {
    return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
  }

  if (*(v20 + 16))
  {
    if (v17)
    {
      return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
    }
  }

  else if (v17 & 1 | (v21 == 1))
  {
    return *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E70B60);
  }

  return 1;
}

double sub_3A1E14()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedRestrictionsMonitor];
  v3 = [v2 allowsDeletion];

  if (v3)
  {
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v4 = qword_E01D40;
    }

    else
    {
      v4 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v6 = v1 + v4;
    swift_beginAccess();
    v7 = *(v6 + 7);
    v56 = *(v6 + 6);
    v57 = v7;
    v58 = v6[128];
    v8 = *(v6 + 3);
    v52 = *(v6 + 2);
    v53 = v8;
    v9 = *(v6 + 5);
    v54 = *(v6 + 4);
    v55 = v9;
    v10 = *(v6 + 1);
    v51[0] = *v6;
    v51[1] = v10;
    v49[6] = v56;
    v49[7] = v57;
    v50 = v58;
    v49[2] = v52;
    v49[3] = v53;
    v49[4] = v54;
    v49[5] = v9;
    v49[0] = v51[0];
    v49[1] = v10;
    if (sub_11D03C(v49) != 1)
    {
      v11 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v12 = MPModelPropertyPlaylistUserEditableComponents;
        sub_15F84(v51, v41, &unk_DFDD90, &unk_B08BA8);
        v13 = v11;
        if ([v13 hasLoadedValueForKey:v12])
        {
          v14 = [v13 userEditableComponents];

          sub_12E1C(v51, &unk_DFDD90, &unk_B08BA8);
          if ((v14 & 2) != 0)
          {
            v15 = [v1 traitCollection];
            v16 = UITraitCollection.isMediaPicker.getter(v15);

            if (!v16)
            {
              v17 = sub_6BF68(0, 1, 1, _swiftEmptyArrayStorage);
              v18 = *(v17 + 2);
              v19 = *(v17 + 3);
              v20 = v18 + 1;
              if (v18 >= v19 >> 1)
              {
                v35 = v17;
                v36 = *(v17 + 2);
                v37 = sub_6BF68((v19 > 1), v18 + 1, 1, v35);
                v18 = v36;
                v17 = v37;
              }

              *(v17 + 2) = v20;
              v17[v18 + 32] = 0;
              goto LABEL_19;
            }
          }
        }

        else
        {

          sub_12E1C(v51, &unk_DFDD90, &unk_B08BA8);
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_19:
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v21 = qword_E01D40;
    }

    else
    {
      v21 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v22 = v1 + v21;
    swift_beginAccess();
    v23 = *(v22 + 7);
    v46 = *(v22 + 6);
    v47 = v23;
    v48 = v22[128];
    v24 = *(v22 + 3);
    v42 = *(v22 + 2);
    v43 = v24;
    v25 = *(v22 + 5);
    v44 = *(v22 + 4);
    v45 = v25;
    v26 = *(v22 + 1);
    v41[0] = *v22;
    v41[1] = v26;
    v39[6] = v46;
    v39[7] = v47;
    v40 = v48;
    v39[2] = v42;
    v39[3] = v43;
    v39[4] = v44;
    v39[5] = v25;
    v39[0] = v41[0];
    v39[1] = v26;
    if (sub_11D03C(v39) != 1)
    {
      v27 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        v28 = MPModelPropertyPlaylistUserEditableComponents;
        sub_15F84(v41, v38, &unk_DFDD90, &unk_B08BA8);
        v29 = v27;
        if ([v29 hasLoadedValueForKey:v28])
        {
          v30 = [v29 userEditableComponents];

          sub_12E1C(v41, &unk_DFDD90, &unk_B08BA8);
          if (v30)
          {
            v31 = [v1 traitCollection];
            v32 = UITraitCollection.isMediaPicker.getter(v31);

            if (!v32)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_6BF68(0, *(v17 + 2) + 1, 1, v17);
              }

              v34 = *(v17 + 2);
              v33 = *(v17 + 3);
              if (v34 >= v33 >> 1)
              {
                v17 = sub_6BF68((v33 > 1), v34 + 1, 1, v17);
              }

              *(v17 + 2) = v34 + 1;
              v17[v34 + 32] = 1;
            }
          }
        }

        else
        {

          sub_12E1C(v41, &unk_DFDD90, &unk_B08BA8);
        }
      }
    }

    *(v1 + qword_E01D38) = v17;

    return result;
  }

  *(v1 + qword_E01D38) = _swiftEmptyArrayStorage;

  return result;
}

uint64_t sub_3A234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_3A23E4, v7, v6);
}

uint64_t sub_3A23E4()
{

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_3A2498;
  v3 = v0[6];
  v2 = v0[7];

  return sub_3A66A8(v3, v2);
}

uint64_t sub_3A2498()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_3A26A8;
  }

  else
  {
    v5 = sub_3A25F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A25F0()
{
  if ([*(v0 + 48) isEditing])
  {
    *(*(*(v0 + 48) + *(&stru_248.reloff + (swift_isaMask & **(v0 + 48)))) + qword_E70B60) = 1;
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A26A8()
{
  v12 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_ABB520();
    v8 = sub_425E68(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error when adding song %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_3A286C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_AB9940();
  v2[8] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_3A2904, v4, v3);
}

uint64_t sub_3A2904()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    v0[11] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v0[11] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[7];
        v0[12] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_3603D0(0, v3);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v5 = v4;
        v0[13] = v4;
        v6 = swift_task_alloc();
        v0[14] = v6;
        *v6 = v0;
        v6[1] = sub_3A2A48;
        v2 = v5;
      }

      return MusicLibraryPlaylistEditViewModel.append(_:)(v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_3A2A48()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_3A2CA0;
  }

  else
  {
    v5 = sub_3A2B84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A2B84()
{
  v1 = *(v0 + 96) + 1;
  if (v1 == *(v0 + 88))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = v1;
    v4 = *(v0 + 56);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_3603D0(v1, v4);
    }

    else
    {
      v5 = *(v4 + 8 * v1 + 32);
    }

    v6 = v5;
    *(v0 + 104) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_3A2A48;

    return MusicLibraryPlaylistEditViewModel.append(_:)(v6);
  }
}

uint64_t sub_3A2CA0()
{
  v19 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_ABB520();
    v10 = sub_425E68(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "error when adding song %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v11 = v0[12] + 1;
  if (v11 == v0[11])
  {

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[12] = v11;
    v14 = v0[7];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_3603D0(v11, v14);
    }

    else
    {
      v15 = *(v14 + 8 * v11 + 32);
    }

    v16 = v15;
    v0[13] = v15;
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_3A2A48;

    return MusicLibraryPlaylistEditViewModel.append(_:)(v16);
  }
}

void sub_3A2F2C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MediaPickerNavigationController(0)) init];
  v3 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
  [*&v2[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] setSupportsUnavailableContent:1];
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate];
  swift_beginAccess();
  *(v4 + 1) = &off_D0E830;
  swift_unknownObjectWeakAssign();
  v5 = v2;
  [v5 setModalPresentationStyle:1];
  if (([v0 isEditing] & 1) != 0 || v0[qword_E01D30] == 1)
  {
    v6 = qword_E01D40;
  }

  else
  {
    v6 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v7 = &v0[v6];
  swift_beginAccess();
  v8 = *(v7 + 7);
  v67 = *(v7 + 6);
  v68 = v8;
  v69 = v7[128];
  v9 = *(v7 + 3);
  v63 = *(v7 + 2);
  v64 = v9;
  v10 = *(v7 + 5);
  v65 = *(v7 + 4);
  v66 = v10;
  v11 = *(v7 + 1);
  v61 = *v7;
  v62 = v11;
  v50[6] = v67;
  v50[7] = v68;
  v51 = v69;
  v50[2] = v63;
  v50[3] = v64;
  v50[4] = v65;
  v50[5] = v10;
  v50[0] = v61;
  v50[1] = v11;
  if (sub_11D03C(v50) == 1 || (v48[6] = v67, v48[7] = v68, v48[2] = v63, v48[3] = v64, v48[4] = v65, v48[5] = v66, v48[0] = v61, v48[1] = v62, v58 = v67, v59 = v68, v54 = v63, v55 = v64, v56 = v65, v57 = v66, v49 = v69, v60 = v69, v52 = v61, v53 = v62, sub_2E2538(v48, v47), v13 = sub_D1FC0(), v15 = v14, sub_12E1C(&v61, &unk_DFDD90, &unk_B08BA8), !v15))
  {
    v21 = &v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v22 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v23 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8];
    *v21 = 0;
    *(v21 + 1) = 0;
    if (!v23)
    {
      goto LABEL_13;
    }

    sub_422054();
    v19 = v22;
    v20 = v23;
  }

  else
  {
    v16 = &v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v17 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
    v18 = *&v5[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8];
    *v16 = v13;
    v16[1] = v15;
    if (v18 < 2)
    {
      goto LABEL_8;
    }

    if (v13 == v17 && v15 == v18)
    {
      v19 = v13;
      v20 = v15;
      goto LABEL_12;
    }

    if ((sub_ABB3C0() & 1) == 0)
    {
LABEL_8:
      sub_422054();
    }

    v19 = v17;
    v20 = v18;
  }

LABEL_12:
  v12 = sub_3A7960(v19, v20);
LABEL_13:
  v24 = [v5 presentationController];
  if (v24)
  {
    v25 = v24;
    [v24 setDelegate:v1];
  }

  [v1 presentViewController:v5 animated:1 completion:0];
  v26 = *&v2[v3];
  v27 = [v5 presentationController];

  if (v27)
  {
    v45 = v27;
    v28 = objc_opt_self();
    v29 = [v28 traitCollectionWithHorizontalSizeClass:1];
    sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
    v46 = v26;
    v30 = v26;
    v31 = v29;
    v32 = UITraitCollection.init(mediaPickerConfiguration:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_AF7C50;
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    v34 = v32;
    v35 = v31;
    v36 = v34;
    isa = sub_AB9740().super.isa;
    v38 = [v28 traitCollectionWithTraitsFromCollections:isa];

    if (*&v1[qword_E01D58])
    {
      v39 = UITraitCollection.init(mediaPickerLibraryFilter:)(16).super.isa;
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_AF7C50;
      *(v40 + 32) = v38;
      *(v40 + 40) = v39;
      v41 = v39;
      v42 = v38;
      v43 = sub_AB9740().super.isa;
      v38 = [v28 traitCollectionWithTraitsFromCollections:v43];
    }

    v44 = v38;
    [v45 setOverrideTraitCollection:v44];

    v26 = v46;
  }
}

void sub_3A3464(char a1)
{
  v2 = v1;
  if ([v1 isViewLoaded])
  {
    v4 = [v1 traitCollection];
    v5 = UITraitCollection.isMediaPicker.getter(v4);

    if (!v5)
    {
      v6 = [v2 isEditing];
      v7 = [v2 navigationItem];
      v8 = [v2 parentViewController];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v10 = v9;
          v11 = [v10 navigationItem];

          v9 = [v10 parentViewController];
          v7 = v11;
          if (!v9)
          {
            goto LABEL_11;
          }
        }
      }

      v11 = v7;
LABEL_11:
      [v11 setHidesBackButton:v6 animated:a1 & 1];
      v12 = [v2 traitCollection];
      sub_3A5A38();
      v14 = v13;

      if (v14)
      {
        sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
        v15.super.isa = sub_AB9740().super.isa;
      }

      else
      {
        v15.super.isa = 0;
      }

      [v11 setLeftBarButtonItems:v15.super.isa animated:a1 & 1];

      v16 = [v2 traitCollection];
      v17 = sub_2D3DFC();

      if (v17)
      {
        sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
        isa = sub_AB9740().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v11 setRightBarButtonItems:isa animated:a1 & 1];
    }
  }
}

void sub_3A3700(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a1 anyObject];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 identifiers];
    sub_AB9730();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }
}

void sub_3A37D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  v13 = a2;
  v14 = a3;
  v12(v13, v11, a4);

  (*(v9 + 8))(v11, v8);
}

void sub_3A38EC(void *a1)
{
  v1 = [a1 request];
  if (v1)
  {
    v2 = v1;
    [v1 copyWithZone:0];

    sub_ABAB50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
    if (swift_dynamicCast())
    {
      v3 = aBlock[19];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF8820;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_AF4EC0;
      *(v6 + 32) = sub_AB92A0();
      *(v6 + 40) = v7;
      isa = sub_AB9740().super.isa;
      v9 = objc_opt_self();
      v10 = [v9 propertySetWithProperties:isa];

      *(inited + 48) = v10;
      *(inited + 56) = sub_AB92A0();
      *(inited + 64) = v11;
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_AF4EC0;
      *(v12 + 32) = sub_AB92A0();
      *(v12 + 40) = v13;
      v14 = sub_AB9740().super.isa;
      v15 = [v9 propertySetWithProperties:v14];

      *(inited + 72) = v15;
      *(inited + 80) = sub_AB92A0();
      *(inited + 88) = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_AF4EC0;
      *(v17 + 32) = sub_AB92A0();
      *(v17 + 40) = v18;
      v19 = sub_AB9740().super.isa;
      v20 = [v9 propertySetWithProperties:v19];

      *(inited + 96) = v20;
      sub_96EA4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
      swift_arrayDestroy();
      v21 = objc_allocWithZone(MPPropertySet);
      v22 = sub_AB9740().super.isa;
      sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
      v23 = sub_AB8FD0().super.isa;

      v24 = [v21 initWithProperties:v22 relationships:v23];

      v25 = sub_AB9260();
      [v3 setLabel:v25];

      [v3 setItemProperties:v24];
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_3A78C0;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_331;
      v27 = _Block_copy(aBlock);

      [v3 performWithResponseHandler:v27];
      _Block_release(v27);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3A3D70(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v18 = a1;
  v3 = [v18 results];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 firstSection];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v6 = [v18 results];
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    if (v6)
    {
      v8 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      v10 = v6;

      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = v7 + 16;
      v12 = swift_allocObject();
      v13 = sub_3A7958;
      *(v12 + 16) = sub_3A7958;
      *(v12 + 24) = v11;
      aBlock[4] = sub_2E34E8;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7EB0;
      aBlock[3] = &block_descriptor_348;
      v14 = _Block_copy(aBlock);

      [v10 enumerateItemsInSectionAtIndex:0 usingBlock:v14];
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
LABEL_8:

        return;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0;
    }

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v15 = swift_allocObject();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v7;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7918, v17);

    sub_17654(v13, v11);
    return;
  }

  swift_unknownObjectRelease();
}

void sub_3A4124(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a3 = 1;
    return;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 type];
  if (v10 == &dword_0 + 3)
  {
    v11 = [v9 movie];
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v10 == &dword_0 + 2)
  {
    v11 = [v9 tvEpisode];
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_12:
    v15 = *a5 + 0.0;
    goto LABEL_13;
  }

  if (v10 == &dword_0 + 1)
  {
    v11 = [v9 song];
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_10:
    v12 = v11;
    [v11 duration];
    v14 = v13;

    v15 = v14 + *a5;
LABEL_13:
    *a5 = v15;
  }

LABEL_14:
  swift_unknownObjectRelease();
}

void sub_3A4278(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = Double.epsilon.unsafeMutableAddressor();
    v7 = *v6;
    if (*v6 >= v5)
    {
      if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
      {
        v8 = qword_E01D40;
      }

      else
      {
        v8 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      }

      v10 = v4 + v8;
      swift_beginAccess();
      memmove(&__dst, v10, 0x81uLL);
      v33 = v72;
      v34 = v73;
      v35 = v74;
      v36 = v75;
      v31 = __dst;
      v32 = v71;
      v27 = *&v76[1];
      v28 = *&v76[17];
      v63 = __dst;
      v64 = v71;
      v67 = v74;
      v68 = v75;
      v11 = v76[0];
      v65 = v72;
      v66 = v73;
      *&v69[17] = *&v76[17];
      *&v69[1] = *&v76[1];
      v69[0] = v76[0];
      if (sub_11D03C(&v63) == 1)
      {
        *v61 = v33;
        *&v61[16] = v34;
        *&v61[32] = v35;
        *&v61[48] = v36;
        v59 = v31;
        v60 = v32;
        *&v62[1] = v27;
        v62[0] = v11;
        *&v62[17] = v28;
        sub_15F84(&__dst, &v48, &unk_DFDD90, &unk_B08BA8);
        sub_12E1C(&v59, &unk_DFDD90, &unk_B08BA8);
LABEL_32:

        return;
      }

      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      *&v61[48] = v36;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      v62[0] = v11;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90, &unk_B08BA8);
      sub_12E1C(&v59, &unk_DFDD90, &unk_B08BA8);
      if (v11)
      {
        goto LABEL_32;
      }

      v12 = 0.0;
LABEL_19:
      if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
      {
        v16 = qword_E01D40;
      }

      else
      {
        v16 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      }

      v17 = v4 + v16;
      swift_beginAccess();
      memmove(&v63, v17, 0x81uLL);
      *v62 = *v69;
      *&v62[16] = *&v69[16];
      v62[32] = v69[32];
      *v61 = v65;
      *&v61[16] = v66;
      *&v61[32] = v67;
      *&v61[48] = v68;
      v59 = v63;
      v60 = v64;
      if (sub_11D03C(&v59) == 1)
      {
        goto LABEL_32;
      }

      v18 = v62[0];
      v19 = *(&v60 + 1);
      v47 = v60;
      v20 = *v61;
      v43 = *&v61[8];
      v44 = *&v61[24];
      v45 = *&v61[40];
      v46 = v59;
      v40 = *&v62[1];
      v41 = *&v62[17];
      v42 = v7 >= v5;
      if (v7 < v5)
      {
        if (*&v61[56] != v12)
        {
          v18 = 1;
        }

        if (v18)
        {
          goto LABEL_26;
        }
      }

      else if ((v62[0] & 1) == 0)
      {
LABEL_26:
        v21 = *&v62[8];
        v22 = v62[16];
        sub_15F84(&v63, &__dst, &unk_DFDD90, &unk_B08BA8);
        v19 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v21, v22, *&v12, v7 >= v5);
        v24 = v23;

        v20 = v24;
LABEL_31:
        v27 = v46;
        *&v28 = v47;
        *(&v28 + 1) = v19;
        *v29 = v20;
        *&v29[40] = v45;
        *&v29[8] = v43;
        *&v29[24] = v44;
        *&v29[56] = v12;
        v25 = v42;
        v30[0] = v42;
        *&v30[17] = v41;
        *&v30[1] = v40;
        v33 = *v29;
        v34 = *&v29[16];
        v31 = v46;
        v32 = v28;
        v39 = HIBYTE(v41);
        v37 = *v30;
        v38 = *&v30[16];
        v35 = *&v29[32];
        v36 = *&v29[48];
        UIScreen.Dimensions.size.getter();
        *v76 = *v30;
        *&v76[16] = *&v30[16];
        v76[32] = HIBYTE(v41);
        v72 = *v29;
        v73 = *&v29[16];
        v74 = *&v29[32];
        v75 = *&v29[48];
        __dst = v46;
        v71 = v28;
        sub_2E2538(&v27, &v48);
        sub_39BBA0(&__dst);
        v48 = v46;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v58 = v41;
        v49 = v47;
        v50 = v19;
        v51 = v20;
        v55 = v12;
        v56 = v25;
        v57 = v40;
        sub_257CA0(&v48);
        goto LABEL_32;
      }

      sub_15F84(&v63, &__dst, &unk_DFDD90, &unk_B08BA8);
      goto LABEL_31;
    }

    v26 = v6;
    if (([v4 isEditing] & 1) != 0 || *(v4 + qword_E01D30) == 1)
    {
      v9 = qword_E01D40;
    }

    else
    {
      v9 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
    }

    v13 = v4 + v9;
    swift_beginAccess();
    memmove(&__dst, v13, 0x81uLL);
    v33 = v72;
    v34 = v73;
    v35 = v74;
    *&v36 = v75;
    v31 = __dst;
    v32 = v71;
    v14 = *(&v75 + 1);
    v15 = v76[0];
    v27 = *&v76[1];
    v28 = *&v76[17];
    v63 = __dst;
    v64 = v71;
    v66 = v73;
    v67 = v74;
    v65 = v72;
    *&v69[17] = *&v76[17];
    *&v69[1] = *&v76[1];
    v68 = v75;
    v69[0] = v76[0];
    if (sub_11D03C(&v63) == 1)
    {
      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      *&v61[48] = v36;
      *&v61[56] = v14;
      v62[0] = v15;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90, &unk_B08BA8);
      sub_12E1C(&v59, &unk_DFDD90, &unk_B08BA8);
    }

    else
    {
      *v61 = v33;
      *&v61[16] = v34;
      *&v61[32] = v35;
      v59 = v31;
      v60 = v32;
      *&v62[1] = v27;
      *&v61[48] = v36;
      *&v61[56] = v14;
      v62[0] = v15;
      *&v62[17] = v28;
      sub_15F84(&__dst, &v48, &unk_DFDD90, &unk_B08BA8);
      sub_12E1C(&v59, &unk_DFDD90, &unk_B08BA8);
      if ((v15 & 1) == 0)
      {
        swift_beginAccess();
        if (*v26 >= vabdd_f64(*(a2 + 16), v14))
        {
          goto LABEL_32;
        }

        v12 = *(a2 + 16);
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v12 = *(a2 + 16);
    goto LABEL_19;
  }
}

void sub_3A4988(void *a1)
{
  v1 = a1;
  sub_29C304();
}

void sub_3A49F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v33 = v3;
  v5 = v3 + *&stru_298.segname[(swift_isaMask & *v3) + 8];
  swift_beginAccess();
  v6 = *(v5 + 5);
  v7 = *(v5 + 7);
  v59 = *(v5 + 6);
  v60 = v7;
  v8 = *(v5 + 1);
  v9 = *(v5 + 3);
  v55 = *(v5 + 2);
  v56 = v9;
  v10 = *(v5 + 3);
  v11 = *(v5 + 5);
  v57 = *(v5 + 4);
  v58 = v11;
  v12 = *(v5 + 1);
  v53 = *v5;
  v54 = v12;
  v13 = *(v5 + 7);
  v62[6] = v59;
  v62[7] = v13;
  v62[2] = v55;
  v62[3] = v10;
  v62[4] = v57;
  v62[5] = v6;
  v61 = v5[128];
  v63 = v5[128];
  v62[0] = v53;
  v62[1] = v8;
  v14 = 0;
  if (sub_11D03C(v62) != 1)
  {
    v50 = v59;
    v51 = v60;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    v44 = v53;
    v45 = v54;
    v41 = v59;
    v42 = v60;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v52 = v61;
    v43 = v61;
    v35 = v53;
    v36 = v54;
    sub_2E2538(&v35, &v34);
    sub_D1FC0();
    v14 = v15;
    sub_12E1C(&v53, &unk_DFDD90, &unk_B08BA8);
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  if (v14)
  {
    v16 = sub_AB9260();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_AB9260();

  v30 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  sub_307CC(a2, a3);
  v19 = sub_AB9260();

  *&v37 = sub_3A78B0;
  *(&v37 + 1) = v18;
  *&v35 = _NSConcreteStackBlock;
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_1546C;
  *(&v36 + 1) = &block_descriptor_321;
  v20 = _Block_copy(&v35);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:2 handler:v20];
  _Block_release(v20);

  [v30 addAction:v22];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  sub_307CC(a2, a3);
  v24 = sub_AB9260();

  *&v37 = sub_3A78B8;
  *(&v37 + 1) = v23;
  *&v35 = _NSConcreteStackBlock;
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_1546C;
  *(&v36 + 1) = &block_descriptor_327;
  v25 = _Block_copy(&v35);

  v26 = [v21 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  [v30 addAction:v26];
  v27 = *(a1 + 5);
  if (v27 != 0xFF)
  {
    v28 = *(a1 + 6);
    v29 = a1[1];
    v35 = *a1;
    v36 = v29;
    *&v37 = *(a1 + 4);
    *(&v37 + 1) = v27;
    *&v38 = v28;
    PresentationSource.Position.configure(_:)(v30);
  }

  [v33 presentViewController:v30 animated:1 completion:0];
}

double sub_3A4FEC()
{

  sub_3A715C(*(v0 + qword_E01D10));

  v1 = *(v0 + qword_E01D40 + 112);
  v6[6] = *(v0 + qword_E01D40 + 96);
  v6[7] = v1;
  v7 = *(v0 + qword_E01D40 + 128);
  v2 = *(v0 + qword_E01D40 + 48);
  v6[2] = *(v0 + qword_E01D40 + 32);
  v6[3] = v2;
  v3 = *(v0 + qword_E01D40 + 80);
  v6[4] = *(v0 + qword_E01D40 + 64);
  v6[5] = v3;
  v4 = *(v0 + qword_E01D40 + 16);
  v6[0] = *(v0 + qword_E01D40);
  v6[1] = v4;
  sub_12E1C(v6, &unk_DFDD90, &unk_B08BA8);
  sub_3A716C(*(v0 + qword_E01D50), *(v0 + qword_E01D50 + 8), *(v0 + qword_E01D50 + 16), *(v0 + qword_E01D50 + 24), *(v0 + qword_E01D50 + 32), *(v0 + qword_E01D50 + 40), *(v0 + qword_E01D50 + 48), *(v0 + qword_E01D50 + 56), *(v0 + qword_E01D50 + 64), *(v0 + qword_E01D50 + 72), *(v0 + qword_E01D50 + 80), *(v0 + qword_E01D50 + 88), *(v0 + qword_E01D50 + 96));

  return result;
}

id sub_3A519C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_3A51D4(uint64_t a1)
{

  sub_3A715C(*(a1 + qword_E01D10));

  v2 = *(a1 + qword_E01D40 + 112);
  v7[6] = *(a1 + qword_E01D40 + 96);
  v7[7] = v2;
  v8 = *(a1 + qword_E01D40 + 128);
  v3 = *(a1 + qword_E01D40 + 48);
  v7[2] = *(a1 + qword_E01D40 + 32);
  v7[3] = v3;
  v4 = *(a1 + qword_E01D40 + 80);
  v7[4] = *(a1 + qword_E01D40 + 64);
  v7[5] = v4;
  v5 = *(a1 + qword_E01D40 + 16);
  v7[0] = *(a1 + qword_E01D40);
  v7[1] = v5;
  sub_12E1C(v7, &unk_DFDD90, &unk_B08BA8);
  sub_3A716C(*(a1 + qword_E01D50), *(a1 + qword_E01D50 + 8), *(a1 + qword_E01D50 + 16), *(a1 + qword_E01D50 + 24), *(a1 + qword_E01D50 + 32), *(a1 + qword_E01D50 + 40), *(a1 + qword_E01D50 + 48), *(a1 + qword_E01D50 + 56), *(a1 + qword_E01D50 + 64), *(a1 + qword_E01D50 + 72), *(a1 + qword_E01D50 + 80), *(a1 + qword_E01D50 + 88), *(a1 + qword_E01D50 + 96));

  return result;
}

uint64_t type metadata accessor for PlaylistDetailViewController(uint64_t a1)
{
  result = qword_E01E90;
  if (!qword_E01E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3A547C@<X0>(uint64_t a1@<X8>)
{
  if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
  {
    v3 = qword_E01D40;
  }

  else
  {
    v3 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  }

  v4 = v1 + v3;
  swift_beginAccess();
  v5 = *(v4 + 7);
  v20 = *(v4 + 6);
  v21 = v5;
  v6 = *(v4 + 3);
  v16 = *(v4 + 2);
  v17 = v6;
  v7 = *(v4 + 5);
  v18 = *(v4 + 4);
  v19 = v7;
  v8 = *(v4 + 1);
  v15[0] = *v4;
  v15[1] = v8;
  v9 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v9;
  v10 = v17;
  v11 = v18;
  v12 = v15[0];
  *(a1 + 32) = v16;
  *(a1 + 48) = v10;
  v22 = v4[128];
  *(a1 + 128) = v22;
  *(a1 + 64) = v11;
  *(a1 + 80) = v7;
  *a1 = v12;
  *(a1 + 16) = v8;
  return sub_15F84(v15, &v14, &unk_DFDD90, &unk_B08BA8);
}

unint64_t sub_3A55A4()
{
  result = qword_E02C88;
  if (!qword_E02C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E02C88);
  }

  return result;
}

void sub_3A5618(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60, qword_B0C660);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = [objc_opt_self() deviceMediaLibrary];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    *(v11 + 32) = a3;
    v12 = objc_allocWithZone(MPModelLibraryRemoveFromPlaylistChangeRequest);
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v13 = a3;
    isa = sub_AB9740().super.isa;
    v15 = [v12 initWithPlaylist:a2 inMediaLibrary:v10 andEntriesToRemove:isa];

    v16 = v5;
    (*(v6 + 16))(v8, v21, v5);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    (*(v6 + 32))(v18 + v17, v8, v16);
    aBlock[4] = sub_3A7DFC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5920;
    aBlock[3] = &block_descriptor_444;
    v19 = _Block_copy(aBlock);

    [v15 performWithResponseHandler:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3A58AC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60, qword_B0C660);
    return sub_AB98C0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60, qword_B0C660);
    return sub_AB98D0();
  }
}

void sub_3A5920(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Class sub_3A598C(uint64_t a1)
{
  v1 = *(a1 + 32);

  if (v1(v2))
  {
    sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v3.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {

    v3.super.isa = 0;
  }

  return v3.super.isa;
}

double sub_3A5A38()
{
  if ([v0 isEditing])
  {
    v2 = qword_E01D68;
    v3 = *&v0[qword_E01D68];
    if (v3)
    {
      v4 = *&v0[qword_E01D68];
      v5 = v4;
    }

    else
    {
      v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"handleCancelButtonTappedWithSender:"];
      v4 = 0;
      v3 = *&v0[v2];
    }

    *&v0[v2] = v5;
    v6 = v4;
    v7 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v8 = swift_allocObject();
    *&result = 1;
    *(v8 + 16) = xmmword_AF82B0;
    *(v8 + 32) = v7;
  }

  return result;
}

double sub_3A5B10(void *a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v18 - v8;
  [a1 dismissViewControllerAnimated:1 completion:{0, v7}];
  if ((a3 & 1) == 0)
  {
    v11 = sub_12D948(a2, v10);
    if (v11)
    {
      v12 = v11;
      v13 = sub_AB9990();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_AB9940();
      v14 = v3;
      v15 = sub_AB9930();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      v16[5] = v12;
      sub_DBDC8(0, 0, v9, &unk_B0C5E8, v16);
    }
  }

  return v10.n128_f64[0];
}

uint64_t sub_3A5C74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3A5CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_3A234C(a1, v4, v5, v7, v6);
}

uint64_t sub_3A5D7C()
{
  v1 = sub_3A22EC(v16);
  memmove(__dst, v2, 0x81uLL);
  if (sub_11D03C(__dst) != 1)
  {
    v4 = *(*(*(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
    v5 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
    v6 = v4;
    v7 = [v5 textStorage];
    v8 = [v7 string];
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = sub_AB92A0();
    v15[3] = &type metadata for String;
    v15[0] = v9;
    v15[1] = v11;
    v3.n128_f64[0] = sub_2E5370(v15, v12, v13);
  }

  return (v1)(v16, 0, v3);
}

uint64_t sub_3A5EE4()
{
  v1 = sub_3A22EC(v16);
  memmove(__dst, v2, 0x81uLL);
  if (sub_11D03C(__dst) == 1)
  {
    return (v1)(v16, 0);
  }

  v4 = *(*(*(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!*(v4 + 16))
  {
LABEL_7:
    sub_23732C(*v4, *(v4 + 8), v7);
    goto LABEL_9;
  }

  v8 = [v5 string];
  v9 = sub_AB92A0();
  v11 = v10;

  sub_2372F0(v5, v6, 1);
  v5 = v9;
  v6 = v11;
LABEL_9:
  v12 = sub_AB92A0();
  v15[3] = &type metadata for String;
  v15[0] = v5;
  v15[1] = v6;
  v14 = sub_2E5370(v15, v12, v13);
  return (v1)(v16, 0, v14);
}

void sub_3A6088()
{
  *(v0 + qword_E71630) = 0;
  *(v0 + qword_E01CF0) = 0;
  *(v0 + qword_E01CF8) = 0;
  *(v0 + qword_E01D00) = 0;
  v1 = (v0 + qword_E01D08);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E01D10) = 1;
  *(v0 + qword_E71638) = 1;
  *(v0 + qword_E01D18) = 0;
  *(v0 + qword_E01D20) = 0;
  *(v0 + qword_E01D28) = 0;
  *(v0 + qword_E01D30) = 0;
  *(v0 + qword_E01D38) = _swiftEmptyArrayStorage;
  v2 = v0 + qword_E01D40;
  sub_2E2464(v8);
  v3 = v8[7];
  *(v2 + 96) = v8[6];
  *(v2 + 112) = v3;
  *(v2 + 128) = v9;
  v4 = v8[3];
  *(v2 + 32) = v8[2];
  *(v2 + 48) = v4;
  v5 = v8[5];
  *(v2 + 64) = v8[4];
  *(v2 + 80) = v5;
  v6 = v8[1];
  *v2 = v8[0];
  *(v2 + 16) = v6;
  *(v0 + qword_E01D48) = 0;
  v7 = v0 + qword_E01D50;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0;
  *(v0 + qword_E01D60) = _swiftEmptyArrayStorage;
  *(v0 + qword_E01D68) = 0;
  *(v0 + qword_E01D70) = 0;
  *(v0 + qword_E01D78) = 0;
  *(v0 + qword_E01D80) = 0;
  *(v0 + qword_E01D88) = 0;
  *(v0 + qword_E01D90) = 0;
  *(v0 + qword_E01D98) = 0;
  *(v0 + qword_E01DA0) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_3A6274(void *a1, uint64_t a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_307CC(a2, a3);
  v8 = sub_AB9260();

  v21 = sub_3A8174;
  v22 = v7;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1546C;
  v20 = &block_descriptor_363;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v8 style:2 handler:v9];
  _Block_release(v9);

  [v6 addAction:v11];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_307CC(a2, a3);
  v13 = sub_AB9260();

  v21 = sub_3A8178;
  v22 = v12;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1546C;
  v20 = &block_descriptor_369;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  [v6 addAction:v15];
  [a1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_3A66A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_AB9940();
  v2[4] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_3A6740, v4, v3);
}

uint64_t sub_3A6740()
{
  v1 = *(v0 + 16);
  v2 = *&v1[qword_E01D18];
  *(v0 + 56) = v2;
  if (v2)
  {

    v3 = [v1 isEditing];
    *(v0 + 112) = v3;
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      v5[1] = sub_3A6B08;
      v6 = *(v0 + 24);

      return sub_3A286C(v4, v6);
    }

    else
    {
      v14 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
      v13 = swift_task_alloc();
      *(v0 + 64) = v13;
      *v13 = v0;
      v13[1] = sub_3A6998;

      return v14();
    }
  }

  else
  {
    if (qword_DE67E0 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E70DC0);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "attempting to add songs when no editController exists", v11, 2u);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_3A6998()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return _swift_task_switch(sub_3A70EC, v3, v4);
  }

  else
  {
    v5 = v2[7];
    v6 = swift_task_alloc();
    v2[10] = v6;
    *v6 = v2;
    v6[1] = sub_3A6B08;
    v7 = v2[3];

    return sub_3A286C(v5, v7);
  }
}

uint64_t sub_3A6B08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_3A6D28;
  }

  else
  {
    v5 = sub_3A6C44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A6C44()
{
  if (*(v0 + 112) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_3A6D98;

    return MusicLibraryPlaylistEditViewModel.commit()();
  }
}

uint64_t sub_3A6D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A6D98(void *a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_3A6F30;
  }

  else
  {

    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_3A6EC0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3A6EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3A6F30()
{
  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E714D0);
  swift_errorRetain();
  sub_480B4();

  v2 = sub_AB4BA0();
  v3 = sub_AB9F40();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "error committing playlist changes: %@", v4, 0xCu);
    sub_12E1C(v5, &qword_DF9B20, &unk_AF8C60);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3A70EC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_3A715C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_3A716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_3A71F0()
{

  return swift_deallocObject();
}

double block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3A7240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A72A8()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB4C10();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
  }

  v7 = (v5 + *(v1 + 28));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v8 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v5 + *(v1 + 32));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_17774(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_3A745C(unsigned __int8 a1)
{
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);

  sub_394134(a1, v1 + v4, v8, v9, v10, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_3A751C()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

void sub_3A764C()
{
  type metadata accessor for PlaybackIntentDescriptor(0);

  sub_1F83E4();
}

uint64_t sub_3A76AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3A76F4()
{

  return swift_deallocObject();
}

uint64_t sub_3A773C()
{

  return swift_deallocObject();
}

uint64_t sub_3A7794()
{

  return swift_deallocObject();
}

uint64_t sub_3A7804()
{

  return swift_deallocObject();
}

uint64_t sub_3A785C()
{

  return swift_deallocObject();
}

uint64_t sub_3A78D8()
{

  return swift_deallocObject();
}

uint64_t sub_3A7920()
{

  return swift_deallocObject();
}

double sub_3A7960(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_3A7978(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t objectdestroy_317Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A79F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

id sub_3A7A2C()
{
  v1 = *(v0 + 16);
  v2 = [v1 isEditing];
  *(v1 + qword_E01D20) = 1;

  return [v1 setEditing:v2 ^ 1 animated:1];
}

uint64_t sub_3A7AE4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_382Tm()
{

  return swift_deallocObject();
}

double sub_3A7BE8(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_250Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A7C58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3A7CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_39AEDC(a1, v4, v5, v7, v6);
}

uint64_t sub_3A7D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60, qword_B0C660);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_3A7DFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D60, qword_B0C660);

  return sub_3A58AC(a1);
}

void sub_3A7E7C()
{
  v0 = sub_396B50();
  [v0 setAlpha:0.0];
}

uint64_t objectdestroy_259Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_268Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_274Tm()
{

  return swift_deallocObject();
}

uint64_t sub_3A8184()
{
  type metadata accessor for MusicHTTPRequestAuthenticator();
  result = swift_initStaticObject();
  static MusicHTTPRequestAuthenticator.shared = result;
  return result;
}

uint64_t *MusicHTTPRequestAuthenticator.shared.unsafeMutableAddressor()
{
  if (qword_DE6B50 != -1)
  {
    swift_once();
  }

  return &static MusicHTTPRequestAuthenticator.shared;
}

uint64_t static MusicHTTPRequestAuthenticator.shared.getter()
{
  type metadata accessor for MusicHTTPRequestAuthenticator();

  return swift_initStaticObject();
}

double sub_3A8258(char a1, uint64_t a2, uint64_t a3)
{
  sub_60044();
  sub_E8BA0(a3, v7);
  v5 = swift_allocObject();
  sub_70DF8(v7, v5 + 16);
  *(v5 + 56) = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A85A4, v5);

  return result;
}

uint64_t sub_3A82F4(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 16))(0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (a2)
  {
    return (*(v5 + 32))(v4, v5);
  }

  else
  {
    return (*(v5 + 40))(v4, v5);
  }
}

double _s16MusicApplication0A24HTTPRequestAuthenticatorC30scheduleAuthenticationAndRetry3fory0A6JSCore28JSHTTPRequestAuthenticatable_p_tF_0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v2 = (*(a1[4] + 8))();
  v3 = a1[3];
  if (v2)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    (*(v4 + 40))(v3, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    (*(a1[4] + 16))(1);
    if (qword_DE6D60 != -1)
    {
      swift_once();
    }

    sub_E8BA0(a1, v7);
    v6 = swift_allocObject();
    sub_70DF8(v7, v6 + 16);
    sub_49FDA4(1, sub_3A8564, v6);
  }

  return result;
}

uint64_t sub_3A852C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_3A856C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

char *sub_3A85B0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v4[v9] = TextDrawing.Cache.init()();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button] = v12;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button;
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_33094();
  v18 = v13;
  v19 = v15;
  ControlEventHandling<>.on(_:handler:)(64, sub_3A94F4, v16, v17);

  result = [v18 tintColor];
  if (result)
  {
    v21 = result;
    [*&v13[v14] setTitleColor:result forState:0];
    v22 = *&v13[v14];
    v23 = [v21 colorWithAlphaComponent:0.2];
    [v22 setTitleColor:v23 forState:1];

    [v18 addSubview:*&v13[v14]];
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3A87C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler + 8);

      v4(v6);
      sub_17654(v4, v5);
    }
  }
}

void sub_3A8990(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button);

  v2 = sub_AB9260();

  [v1 setTitle:v2 forState:0];
}

void sub_3A8A24()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v35 = v17;
  if (qword_DE6B60 != -1)
  {
    swift_once();
  }

  v34 = v16;
  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  v18 = qword_E02E70;
  [qword_E02E70 _scaledValueForValue:?];
  sub_AB3A00();
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_button];
  v20 = [v19 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setFont:v18];
  }

  [v19 sizeThatFits:{v16, v35}];
  if (v16 < v22)
  {
    v22 = v16;
  }

  if (v35 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v35;
  }

  v25 = v22;
  v26 = v24;
  [v19 setBounds:{0.0, 0.0, v22}];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3A925C;
  *(v29 + 24) = v28;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_122;
  v30 = _Block_copy(aBlock);
  v31 = v0;

  [v27 performWithoutAnimation:v30];
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    v32 = [v19 titleLabel];
    if (v32)
    {
      v33 = v32;
      [v32 _firstBaselineOffsetFromTop];
      [v33 bounds];
      [v19 convertRect:v33 fromCoordinateSpace:?];
      CGRectGetMinY(v38);
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      v39.size.width = v25;
      v39.size.height = v26;
      CGRectGetMinY(v39);
    }

    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v34;
    v40.size.height = v35;
    CGRectGetMinY(v40);
    sub_ABA470();
    [v31 effectiveUserInterfaceLayoutDirection];
    sub_ABA490();
    [v19 setFrame:?];
  }
}

void sub_3A8FF0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption1;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_E02E70 = v2;
}

double sub_3A905C()
{
  sub_3A90A0(&v1);
  xmmword_E02E98 = v3;
  unk_E02EA8 = v4;
  xmmword_E02EB8 = v5;
  result = *&v2;
  xmmword_E02E78 = v1;
  unk_E02E88 = v2;
  return result;
}

double sub_3A90A0@<D0>(uint64_t a1@<X8>)
{
  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  v2 = qword_E02E70;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *(a1 + 56) = 2;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C30;
  return result;
}

id sub_3A9158(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ButtonContainingCollectionReusableView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_3A9224()
{

  return swift_deallocObject();
}

double block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_3A92A0(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle + 8];
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache];
  v12 = qword_DE6B60;

  if (v12 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_E02E98;
  v21[3] = unk_E02EA8;
  v22 = xmmword_E02EB8;
  v21[0] = xmmword_E02E78;
  v21[1] = unk_E02E88;
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  v15 = *(v11 + 72);
  v16 = *(v11 + 80);
  v17 = *(v11 + 88);
  v18 = *(v11 + 40);
  sub_108594(v10, v9, v21, v18, v14, v15, v16, v17, v20, v6, v8, v13);

  if (qword_DE6B58 != -1)
  {
    swift_once();
  }

  [qword_E02E70 _scaledValueForValue:*&v22];
  [v4 displayScale];
  sub_AB3A00();
  sub_109AB0(v20);

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

uint64_t sub_3A94BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3A94FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v76 = a2;
  v87 = a4;
  v7 = sub_AB6900();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  __chkstk_darwin();
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0, &qword_B08928) - 8;
  __chkstk_darwin();
  v75 = &v72 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A8, &qword_B08930) - 8;
  __chkstk_darwin();
  v80 = &v72 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031C8, &qword_B0C858) - 8;
  __chkstk_darwin();
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v72 - v13;
  __chkstk_darwin();
  v84 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031D0, &qword_B0C860);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031D8, &qword_B0C868) - 8;
  __chkstk_darwin();
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v72 - v21;
  __chkstk_darwin();
  v24 = &v72 - v23;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  sub_AB6A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031E0, &qword_B0C870);
  sub_3AC7E0();
  sub_AB5710();
  sub_AB7A30();
  sub_AB5E90();
  (*(v16 + 32))(v22, v18, v15);
  v25 = &v22[*(v19 + 44)];
  v26 = v97;
  *(v25 + 4) = v96;
  *(v25 + 5) = v26;
  *(v25 + 6) = v98;
  v27 = v93;
  *v25 = v92;
  *(v25 + 1) = v27;
  v28 = v95;
  *(v25 + 2) = v94;
  *(v25 + 3) = v28;
  v29 = v24;
  sub_36B0C(v22, v24, &qword_E031D8, &qword_B0C868);
  v30 = v73;

  v31 = JSWhatsNewViewModel.buttonTitle.getter();
  v33 = v32;
  LOBYTE(v91) = 0;
  sub_AB7630();
  v34 = v99;
  v35 = *(&v99 + 1);
  *&v99 = v31;
  *(&v99 + 1) = v33;
  *&v100 = sub_3AC924;
  *(&v100 + 1) = v30;
  LOBYTE(v101) = v34;
  *(&v101 + 1) = v35;
  v36 = v74;
  sub_AB68F0();
  sub_2BE04C();
  sub_3ACE04(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v37 = v75;
  v38 = v77;
  sub_AB6FB0();
  (*(v78 + 8))(v36, v38);

  v39 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v41 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2C8, &unk_B08970) + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  LOBYTE(v39) = sub_AB6AC0();
  sub_AB5690();
  v42 = &v37[*(v79 + 44)];
  *v42 = v39;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_AB7A30();
  sub_AB5E90();
  v47 = v37;
  v48 = v80;
  sub_36B0C(v47, v80, &qword_DFD2A0, &qword_B08928);
  v49 = (v48 + *(v82 + 44));
  v50 = v104;
  v49[4] = v103;
  v49[5] = v50;
  v49[6] = v105;
  v51 = v100;
  *v49 = v99;
  v49[1] = v51;
  v52 = v102;
  v49[2] = v101;
  v49[3] = v52;
  LOBYTE(v39) = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v91);

  sub_AB5690();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v83;
  sub_36B0C(v48, v83, &qword_DFD2A8, &qword_B08930);
  v62 = v84;
  v63 = v61 + *(v85 + 44);
  *v63 = v39;
  *(v63 + 8) = v54;
  *(v63 + 16) = v56;
  *(v63 + 24) = v58;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  sub_36B0C(v61, v62, &qword_E031C8, &qword_B0C858);
  v64 = v29;
  v65 = v29;
  v66 = v81;
  sub_15F84(v65, v81, &qword_E031D8, &qword_B0C868);
  v67 = v86;
  sub_15F84(v62, v86, &qword_E031C8, &qword_B0C858);
  v68 = v87;
  sub_15F84(v66, v87, &qword_E031D8, &qword_B0C868);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03210, &qword_B0C908);
  v70 = v68 + *(v69 + 48);
  *v70 = 0x4034000000000000;
  *(v70 + 8) = 0;
  sub_15F84(v67, v68 + *(v69 + 64), &qword_E031C8, &qword_B0C858);
  sub_12E1C(v62, &qword_E031C8, &qword_B0C858);
  sub_12E1C(v64, &qword_E031D8, &qword_B0C868);
  sub_12E1C(v67, &qword_E031C8, &qword_B0C858);
  return sub_12E1C(v66, &qword_E031D8, &qword_B0C868);
}

uint64_t sub_3A9D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_AB6440();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03218, &qword_B0C910);
  sub_3A9E8C(a1, a2, a3, a4 + *(v8 + 44));
  LOBYTE(a3) = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v28);

  sub_AB5690();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031F8, &qword_B0C878) + 36);
  *v17 = a3;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  LOBYTE(a3) = sub_AB6AB0();
  sub_AB5690();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E031E0, &qword_B0C870);
  v27 = a4 + *(result + 36);
  *v27 = a3;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_3A9E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v48 = a3;
  v49 = a1;
  v55 = a4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03220, &qword_B0C918);
  v50 = *(v54 - 8);
  __chkstk_darwin();
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03228, &qword_B0C920) - 8;
  __chkstk_darwin();
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v47 - v10;
  v47[1] = *(v4 + 16);
  *&v62[0] = JSWhatsNewViewModel.title.getter();
  *(&v62[0] + 1) = v12;
  sub_36A48();
  v13 = sub_AB6F20();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  LOBYTE(v4) = v17 & 1;
  LOBYTE(v62[0]) = v17 & 1;
  LOBYTE(v57) = 1;
  v21 = sub_AB6B60();
  v22 = swift_getKeyPath();
  *&v57 = v13;
  *(&v57 + 1) = v15;
  LOBYTE(v58) = v4;
  *(&v58 + 1) = v19;
  v59 = KeyPath;
  LOBYTE(v60) = 1;
  *(&v60 + 1) = 256;
  *(&v60 + 1) = v22;
  v61 = v21;
  sub_AB6BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03230, &qword_B0C988);
  sub_3ACA7C();
  sub_AB6F80();
  v62[2] = v59;
  v62[3] = v60;
  v63 = v61;
  v62[0] = v57;
  v62[1] = v58;
  sub_12E1C(v62, &qword_E03230, &qword_B0C988);
  v23 = sub_AB74D0();
  v24 = swift_getKeyPath();
  v25 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03260, &qword_B0C9D0) + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03268, &qword_B0CA08) + 36)];
  *v27 = v26;
  v27[8] = 1;
  sub_AB7A30();
  sub_AB5970();
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03270, &qword_B0CA10) + 36)];
  v29 = v58;
  *v28 = v57;
  *(v28 + 1) = v29;
  *(v28 + 2) = v59;
  LOBYTE(v26) = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v56);

  sub_AB5690();
  v30 = &v11[*(v8 + 44)];
  v47[0] = v11;
  *v30 = v26;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v56 = JSWhatsNewViewModel.featuredItems.getter();
  v35 = swift_allocObject();
  v35[2] = v49;
  v35[3] = a2;
  v35[4] = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80B0, &qword_B0CA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03278, &qword_B0CA68);
  sub_36A00(&qword_E03280, &qword_DE80B0, &qword_B0CA60, &protocol conformance descriptor for [A]);
  sub_3ACD24();
  sub_3ACE04(&qword_E03298, type metadata accessor for JSWhatsNewFeaturedItemViewModel, &protocol conformance descriptor for JSWhatsNewFeaturedItemViewModel);
  v36 = v52;
  sub_AB78C0();
  v37 = v11;
  v38 = v51;
  sub_15F84(v37, v51, &qword_E03228, &qword_B0C920);
  v39 = v50;
  v40 = *(v50 + 16);
  v41 = v53;
  v42 = v54;
  v40(v53, v36, v54);
  v43 = v55;
  sub_15F84(v38, v55, &qword_E03228, &qword_B0C920);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032A0, &qword_B0CA70);
  v40((v43 + *(v44 + 48)), v41, v42);
  v45 = *(v39 + 8);
  v45(v36, v42);
  sub_12E1C(v47[0], &qword_E03228, &qword_B0C920);
  v45(v41, v42);
  return sub_12E1C(v38, &qword_E03228, &qword_B0C920);
}

id sub_3AA494@<X0>(id *a1@<X0>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v4 = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v11);

  sub_AB5690();
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = 0;

  return v10;
}

uint64_t sub_3AA554()
{
  v0 = swift_allocObject();
  swift_weakInit();

  JSWhatsNewViewModel.didCompleteWhatsNewPresentation(completionHandler:)(sub_3ACA64, v0);
}

uint64_t sub_3AA5D4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032D8, &qword_B0CB70);
  __chkstk_darwin();
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = (&v41 - v5);
  v6 = sub_AB7540();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSWhatsNewFeaturedItemViewModel.imageName.getter();
  v10 = JSWhatsNewFeaturedItemViewModel.imageContext.getter();
  v11 = JSWhatsNewFeaturedItemViewModel.imageBundleIdentifier.getter();
  if (v10)
  {
    if (v11 == 2 || (v11 & 1) == 0)
    {
      if (qword_DE6AF0 != -1)
      {
        swift_once();
      }

      v12 = qword_E71620;
    }

    else
    {
      v12 = *NSBundle.musicCoreUIBundle.unsafeMutableAddressor();
    }

    v13 = v12;
    sub_AB75A0();
  }

  else
  {
    sub_AB7550();
  }

  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v45 = sub_AB7590();
  (*(v7 + 8))(v9, v6);

  sub_AB7A40();
  sub_AB5970();
  v71 = 1;
  *&v70[6] = v75;
  *&v70[22] = v76;
  *&v70[38] = v77;
  v44 = sub_AB6AB0();
  JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v14)
  {
  }

  sub_AB5690();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v72 = 0;
  v23 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v43 = KeyPath;
  v25 = sub_AB6450();
  v26 = v46;
  *v46 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032E0, &qword_B0CB78);
  sub_3AAAC0(a1, v26 + *(v27 + 44));
  v28 = v47;
  sub_15F84(v26, v47, &qword_E032D8, &qword_B0CB70);
  v29 = v45;
  v48[0] = v45;
  v48[1] = 0;
  LOWORD(v49[0]) = 1;
  *(v49 + 2) = *v70;
  *(&v49[1] + 2) = *&v70[16];
  *(&v49[2] + 2) = *&v70[32];
  *&v49[3] = *&v70[46];
  v30 = v44;
  BYTE8(v49[3]) = v44;
  *(&v49[3] + 9) = *v73;
  HIDWORD(v49[3]) = *&v73[3];
  *&v50 = v16;
  *(&v50 + 1) = v18;
  *&v51 = v20;
  *(&v51 + 1) = v22;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v74;
  DWORD1(v52) = *&v74[3];
  *(&v52 + 1) = KeyPath;
  v53 = v23;
  v42 = v23;
  v31 = v45;
  v32 = v49[0];
  v33 = v49[2];
  *(a2 + 32) = v49[1];
  *(a2 + 48) = v33;
  *a2 = v31;
  *(a2 + 16) = v32;
  v34 = v49[3];
  v35 = v50;
  v36 = v51;
  v37 = v52;
  *(a2 + 128) = v23;
  *(a2 + 96) = v36;
  *(a2 + 112) = v37;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032E8, &qword_B0CB80);
  sub_15F84(v28, a2 + *(v38 + 48), &qword_E032D8, &qword_B0CB70);
  v39 = a2 + *(v38 + 64);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_15F84(v48, v54, &qword_E032F0, &unk_B0CB88);
  sub_12E1C(v26, &qword_E032D8, &qword_B0CB70);
  sub_12E1C(v28, &qword_E032D8, &qword_B0CB70);
  v54[0] = v29;
  v54[1] = 0;
  v55 = 1;
  v56 = 0;
  v57 = *v70;
  v58 = *&v70[16];
  *v59 = *&v70[32];
  *&v59[14] = *&v70[46];
  v60 = v30;
  *v61 = *v73;
  *&v61[3] = *&v73[3];
  v62 = v16;
  v63 = v18;
  v64 = v20;
  v65 = v22;
  v66 = 0;
  *&v67[3] = *&v74[3];
  *v67 = *v74;
  v68 = v43;
  v69 = v42;
  return sub_12E1C(v54, &qword_E032F0, &unk_B0CB88);
}

uint64_t sub_3AAAC0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540, &qword_AF81A0);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin();
  v85 = &v85 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032F8, &qword_B0CB98);
  __chkstk_darwin();
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03300, &qword_B0CBA0) - 8;
  __chkstk_darwin();
  v104 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v85 - v8;
  *&v150 = JSWhatsNewFeaturedItemViewModel.title.getter();
  *(&v150 + 1) = v10;
  v86 = sub_36A48();
  v11 = sub_AB6F20();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  LOBYTE(v150) = v15 & 1;
  LOBYTE(v123) = 1;
  v19 = sub_AB6B70();
  v20 = swift_getKeyPath();
  *&v150 = v11;
  *(&v150 + 1) = v13;
  LOBYTE(v151) = v15 & 1;
  *(&v151 + 1) = v17;
  LOWORD(v152) = 256;
  *(&v152 + 1) = KeyPath;
  *&v153 = 0;
  BYTE8(v153) = 1;
  *&v154 = v20;
  *(&v154 + 1) = v19;
  sub_AB6BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03308, &qword_B0CBA8);
  sub_3AD2C4();
  sub_AB6F80();
  v160[2] = v152;
  v160[3] = v153;
  v160[4] = v154;
  v160[0] = v150;
  v160[1] = v151;
  sub_12E1C(v160, &qword_E03308, &qword_B0CBA8);
  v21 = sub_AB74D0();
  v22 = swift_getKeyPath();
  v23 = *(v6 + 44);
  v103 = v9;
  v24 = (v9 + v23);
  *v24 = v22;
  v24[1] = v21;
  v25 = v93;
  *&v150 = JSWhatsNewFeaturedItemViewModel.subtitle.getter();
  *(&v150 + 1) = v26;
  v27 = sub_AB6F20();
  v98 = v28;
  v99 = v27;
  LOBYTE(v9) = v29;
  v100 = v30;
  v101 = swift_getKeyPath();
  v95 = v9 & 1;
  LOBYTE(v150) = v9 & 1;
  LOBYTE(v123) = 1;
  v102 = sub_AB6B70();
  v97 = swift_getKeyPath();
  v96 = sub_AB74D0();
  v89 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v31 = JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v32)
  {
    *&v150 = v31;
    *(&v150 + 1) = v32;
    v86 = sub_AB6F20();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = sub_AB6AB0();
    sub_AB5690();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = v36 & 1;
    LOBYTE(v150) = v36 & 1;
    LOBYTE(v123) = 0;
    v49 = swift_getKeyPath();
    LOBYTE(v150) = 1;
    v50 = sub_AB6CB0();
    v51 = swift_getKeyPath();
    v52 = sub_AB74E0();
    v53 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    *&v123 = v86;
    *(&v123 + 1) = v34;
    LOBYTE(v124) = v48;
    *(&v124 + 1) = v38;
    LOBYTE(v125) = v39;
    *(&v125 + 1) = v41;
    *&v126 = v43;
    *(&v126 + 1) = v45;
    *&v127 = v47;
    BYTE8(v127) = 0;
    *(&v127 + 9) = 256;
    v128 = v49;
    v25 = v93;
    LOBYTE(v129) = 1;
    *(&v129 + 1) = v51;
    *&v130 = v50;
    *(&v130 + 1) = v53;
    *&v131 = v52;
    *(&v131 + 1) = v54;
    v132 = 0;
    UIScreen.Dimensions.size.getter();
    v156 = v129;
    v157 = v130;
    v158 = v131;
    v159 = v132;
    v152 = v125;
    v153 = v126;
    v154 = v127;
    v155 = v128;
    v150 = v123;
    v151 = v124;
  }

  else
  {
    sub_3AD4B8(&v150);
  }

  JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.getter();
  v55 = v87;
  if (v56)
  {

    __chkstk_darwin();
    *(&v85 - 2) = v25;
    v57 = v85;
    sub_AB7690();
    v58 = v90;
    v59 = v57;
    v60 = v88;
    (*(v55 + 32))(v90, v59, v88);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v58 = v90;
    v60 = v88;
  }

  (*(v55 + 56))(v58, v61, 1, v60);
  v62 = v104;
  sub_15F84(v103, v104, &qword_E03300, &qword_B0CBA0);
  v111 = v156;
  v112 = v157;
  v113 = v158;
  v114 = v159;
  v107 = v152;
  v108 = v153;
  v109 = v154;
  v110 = v155;
  v105 = v150;
  v106 = v151;
  v63 = v91;
  sub_15F84(v58, v91, &qword_E032F8, &qword_B0CB98);
  v64 = v62;
  v65 = v92;
  sub_15F84(v64, v92, &qword_E03300, &qword_B0CBA0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03338, &qword_B0CBC0);
  v67 = (v65 + v66[12]);
  *&v115 = v99;
  *(&v115 + 1) = v98;
  LOBYTE(v116) = v95;
  *(&v116 + 1) = v164[0];
  DWORD1(v116) = *(v164 + 3);
  *(&v116 + 1) = v100;
  LOWORD(v117) = 256;
  *(&v117 + 2) = v162;
  WORD3(v117) = v163;
  *(&v117 + 1) = v101;
  *&v118 = 0;
  BYTE8(v118) = 1;
  HIDWORD(v118) = *&v161[3];
  *(&v118 + 9) = *v161;
  *&v119 = v97;
  *(&v119 + 1) = v102;
  v68 = v89;
  *&v120[0] = v89;
  *(&v120[0] + 1) = v96;
  *&v120[1] = v94;
  BYTE8(v120[1]) = 0;
  v69 = v116;
  *v67 = v115;
  v67[1] = v69;
  v70 = v117;
  v71 = v118;
  v72 = v119;
  v73 = v120[0];
  *(v67 + 89) = *(v120 + 9);
  v67[4] = v72;
  v67[5] = v73;
  v67[2] = v70;
  v67[3] = v71;
  v74 = v66[16];
  v75 = v112;
  v121[6] = v111;
  v121[7] = v112;
  v76 = v113;
  v121[8] = v113;
  v77 = v109;
  v78 = v110;
  v121[4] = v109;
  v121[5] = v110;
  v79 = v105;
  v80 = v106;
  v121[0] = v105;
  v121[1] = v106;
  v81 = v107;
  v82 = v108;
  v121[2] = v107;
  v121[3] = v108;
  v83 = v65 + v74;
  *(v83 + 96) = v111;
  *(v83 + 112) = v75;
  *(v83 + 128) = v76;
  *(v83 + 32) = v81;
  *(v83 + 48) = v82;
  v122 = v114;
  *(v83 + 144) = v114;
  *(v83 + 64) = v77;
  *(v83 + 80) = v78;
  *v83 = v79;
  *(v83 + 16) = v80;
  sub_15F84(v63, v65 + v66[20], &qword_E032F8, &qword_B0CB98);
  sub_15F84(&v115, &v123, &qword_E03340, &qword_B0CBC8);
  sub_15F84(v121, &v123, &qword_E03348, &unk_B0CBD0);
  sub_12E1C(v58, &qword_E032F8, &qword_B0CB98);
  sub_12E1C(v103, &qword_E03300, &qword_B0CBA0);
  sub_12E1C(v63, &qword_E032F8, &qword_B0CB98);
  v129 = v111;
  v130 = v112;
  v131 = v113;
  v132 = v114;
  v125 = v107;
  v126 = v108;
  v127 = v109;
  v128 = v110;
  v123 = v105;
  v124 = v106;
  sub_12E1C(&v123, &qword_E03348, &unk_B0CBD0);
  v133[0] = v99;
  v133[1] = v98;
  v134 = v95;
  *v135 = v164[0];
  *&v135[3] = *(v164 + 3);
  v136 = v100;
  v137 = 256;
  v138 = v162;
  v139 = v163;
  v140 = v101;
  v141 = 0;
  v142 = 1;
  *&v143[3] = *&v161[3];
  *v143 = *v161;
  v144 = v97;
  v145 = v102;
  v146 = v68;
  v147 = v96;
  v148 = v94;
  v149 = 0;
  sub_12E1C(v133, &qword_E03340, &qword_B0CBC8);
  return sub_12E1C(v104, &qword_E03300, &qword_B0CBA0);
}

void sub_3AB3EC()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openMusicSettings()();
  }

  else
  {
    __break(1u);
  }
}

void sub_3AB458(uint64_t a2@<X8>)
{
  JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.getter();
  if (v3)
  {
    sub_36A48();
    v4 = sub_AB6F20();
    v6 = v5;
    v8 = v7;
    sub_AB6CB0();
    v9 = sub_AB6E80();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    sub_36B74(v4, v6, v8 & 1);

    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
    *(a2 + 24) = v15;
  }

  else
  {
    __break(1u);
  }
}

double sub_3AB538@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032C0, &qword_B0CB58);
  __chkstk_darwin();
  v4 = v12 - v3;
  v5 = *v1;
  JSWhatsNewFeaturedItemViewModel.additionalDescription.getter();
  if (v6)
  {

    v7 = sub_AB62C0();
  }

  else
  {
    v7 = sub_AB62E0();
  }

  *v4 = v7;
  *(v4 + 1) = 0x4030000000000000;
  v4[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032C8, &qword_B0CB60);
  sub_3AA5D4(v5, &v4[*(v8 + 44)]);
  sub_AB7A40();
  sub_AB5970();
  sub_36B0C(v4, a1, &qword_E032C0, &qword_B0CB58);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E032D0, &qword_B0CB68) + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

double sub_3AB67C()
{
  sub_AB9230();
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v0 = JSWhatsNewViewModel.featuredItems.getter();
  if (!(v0 >> 62))
  {
    v1 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));

    if (v1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v31 = sub_ABB060();

  if (!v31)
  {
LABEL_3:
    type metadata accessor for JSWhatsNewFeaturedItemViewModel(0);
    sub_AB91E0();
    sub_AB3550();
    v32 = sub_AB9320();
    v4 = v3;
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    sub_AB9220();
    v34._object = 0x8000000000B62210;
    v34._countAndFlagsBits = 0x1000000000000013;
    sub_AB9210(v34);
    v35._countAndFlagsBits = JSWhatsNewViewModel.displayName.getter();
    sub_AB9200(v35);

    v36._object = 0x8000000000B62230;
    v36._countAndFlagsBits = 0xD000000000000048;
    sub_AB9210(v36);
    sub_AB9240();
    sub_AB3550();
    v8 = sub_AB9320();
    v10 = v9;
    sub_AB91E0();
    sub_AB3550();
    v11 = sub_AB9320();
    v13 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v32, v4, v5, v7, 0x616C706572616873, 0xE900000000000079, 0, v8, v10, v11, v12, 2);
    sub_AB91E0();
    sub_AB3550();
    v14 = sub_AB9320();
    v16 = v15;
    sub_AB91E0();
    sub_AB3550();
    v17 = sub_AB9320();
    v19 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v14, v16, v17, v18, 0x64614673736F7243, 0xE900000000000065, 1, 0, 0, 0, 0, 2);
    sub_AB91E0();
    sub_AB3550();
    v20 = sub_AB9320();
    v22 = v21;
    sub_AB91E0();
    sub_AB3550();
    v23 = sub_AB9320();
    v25 = JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(v20, v22, v23, v24, 0x7269632E6F666E69, 0xEB00000000656C63, 0, 0, 0, 0, 0, 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82E0;
    *(inited + 32) = v13;
    *(inited + 40) = v19;
    *(inited + 48) = v25;
    v27 = v13;
    v28 = v19;
    v29 = v25;
    v30 = JSWhatsNewViewModel.featuredItems.modify(v33);
    sub_19608(inited);
    (v30)(v33, 0);
  }

  return result;
}

void sub_3ABC4C(void *a1, uint64_t a2)
{
  v3 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 24);
    if (!v9)
    {
LABEL_7:

      return;
    }

    if (a1)
    {
      v10 = Strong;
      v11 = *(Strong + 32);
      if (!v11 || (type metadata accessor for JSNoopSegue(), swift_dynamicCastClass()))
      {
        [v9 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_7;
      }

      memset(v30, 0, sizeof(v30));
      v31 = 0;
      v32 = xmmword_AF7710;
      v12 = v11;
      v19 = v12;
      v22 = v9;
      v20 = a1;
      PresentationSource.init(viewController:position:)(v12, v30, v29);
      v21 = v10;
      v13 = *(v10 + 16);
      sub_15F28(v29, v28);
      v14 = type metadata accessor for PlaybackIntentDescriptor(0);
      memset(v26, 0, sizeof(v26));
      v27 = 0;
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      sub_15F84(v28, v24, &unk_DEA520, &unk_AFDBF0);
      sub_15F84(v26, (v5 + 104), &unk_DE8E30, "\b]\r");
      sub_15F84(v7, &v5[*(v3 + 28)], &unk_DEA510, "\b]\r");
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 8) = 1;
      *(v5 + 9) = 0;
      *(v5 + 10) = 0;
      *(v5 + 11) = 0;
      v15 = v13;
      sub_160B4(v24, v5, &unk_DEA520, &unk_AFDBF0);
      *(v5 + 12) = 0;
      v23[3] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
      sub_16050(v5, boxed_opaque_existential_0);
      sub_12E1C(v7, &unk_DEA510, "\b]\r");
      sub_12E1C(v26, &unk_DE8E30, "\b]\r");
      sub_12E1C(v28, &unk_DEA520, &unk_AFDBF0);
      memset(v25, 0, 32);
      v24[1] = 0;
      v24[2] = 0;
      v24[0] = v13;
      sub_160B4(v23, v25, &unk_DE8E40, &unk_AF8050);
      v17 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
      v18 = v20;
      JSSegueCoordinator.perform(segue:with:)(v20, v24);

      sub_1611C(v29);
      sub_16170(v24);
    }

    else
    {
      [*(Strong + 24) dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_3ABFE8()
{

  return swift_deallocClassInstance();
}

void sub_3AC120()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];

    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 setNavigationBarHidden:1 animated:0];
    }

    v6 = [v1 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = *(*&v1[qword_E03008] + 16);
      [v7 setModalInPresentation:JSWhatsNewViewModel.isModalInPresentation.getter() & 1];
    }

    v9 = *&v1[qword_E03008];
    v10 = [v1 presentingViewController];
    v11 = *(v9 + 24);
    *(v9 + 24) = v10;

    v12 = [v1 navigationController];
    v13 = *(v9 + 32);
    *(v9 + 32) = v12;
  }

  else
  {
    __break(1u);
  }
}

void sub_3AC280(void *a1)
{
  v1 = a1;
  sub_3AC120();
}

void sub_3AC2C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_3ACFA4();
}

double sub_3AC320()
{

  return result;
}

double sub_3AC360(uint64_t a1)
{

  return result;
}

uint64_t sub_3AC450()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__horizontalInsets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__titleToFeaturePadding, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__featureToFeaturePadding, v2);

  return swift_deallocClassInstance();
}

void sub_3AC56C(uint64_t a1)
{
  sub_363CC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_3AC62C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__horizontalInsets;
  v11 = 0;
  sub_AB54D0();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__titleToFeaturePadding;
  v11 = 0;
  sub_AB54D0();
  v6(v0 + v7, v4, v1);
  v8 = OBJC_IVAR____TtC16MusicApplicationP33_6997607721E042CF5D97361BD470E5C417HostedEnvironment__featureToFeaturePadding;
  v11 = 0;
  sub_AB54D0();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t sub_3AC794@<X0>(uint64_t *a1@<X8>)
{
  _s16MusicApplication17HostedEnvironmentCMa_0(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_3AC7E0()
{
  result = qword_E031E8;
  if (!qword_E031E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E031E0, &qword_B0C870);
    sub_3AC86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E031E8);
  }

  return result;
}

unint64_t sub_3AC86C()
{
  result = qword_E031F0;
  if (!qword_E031F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E031F8, &qword_B0C878);
    sub_36A00(&qword_E03200, &qword_E03208, &qword_B0C880, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E031F0);
  }

  return result;
}

uint64_t sub_3AC92C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_3AC958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_3ACA2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_3ACA7C()
{
  result = qword_E03238;
  if (!qword_E03238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03230, &qword_B0C988);
    sub_3ACB34();
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03238);
  }

  return result;
}

unint64_t sub_3ACB34()
{
  result = qword_E03240;
  if (!qword_E03240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03248, &qword_B0C990);
    sub_3ACBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03240);
  }

  return result;
}

unint64_t sub_3ACBC0()
{
  result = qword_E03250;
  if (!qword_E03250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03258, &qword_B0C998);
    sub_36A00(&qword_DFE948, &unk_DFE950, &unk_B099B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03250);
  }

  return result;
}

uint64_t sub_3ACCD8()
{

  return swift_deallocObject();
}

unint64_t sub_3ACD24()
{
  result = qword_E03288;
  if (!qword_E03288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03278, &qword_B0CA68);
    sub_3ACDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03288);
  }

  return result;
}

unint64_t sub_3ACDB0()
{
  result = qword_E03290;
  if (!qword_E03290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03290);
  }

  return result;
}

uint64_t sub_3ACE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3ACE9C(void *a1)
{
  v2 = v1;
  _s16MusicApplication17HostedEnvironmentCMa_0(0);
  swift_allocObject();
  *(v1 + qword_E03000) = sub_3AC62C();
  type metadata accessor for WhatsNewCoordinator();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = a1;
  v5 = a1;
  sub_3AB67C();
  *(v2 + qword_E03008) = v4;
  sub_3ACE04(&qword_E032A8, _s16MusicApplication17HostedEnvironmentCMa_0, &unk_B0C820);

  sub_AB5B50();
  return sub_AB64F0();
}

void sub_3ACFA4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    Width = CGRectGetWidth(v19);
    v12 = 37.0;
    v13 = 26.0;
    if (Width < 375.0)
    {
      v12 = 26.0;
      v13 = 22.0;
    }

    v14 = 16.0;
    if (Width >= 375.0)
    {
      v14 = 24.0;
    }

    if (Width < 400.0)
    {
      v15 = v12;
    }

    else
    {
      v15 = 44.0;
    }

    if (Width < 400.0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 36.0;
    }

    if (Width < 400.0)
    {
      v17 = v14;
    }

    else
    {
      v17 = 44.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v18);

    if (v18 != v17)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v17;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v18);

    if (v18 != v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v16;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v18);

    if (v18 != v15)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v15;

      sub_AB5520();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_3AD2C4()
{
  result = qword_E03310;
  if (!qword_E03310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03308, &qword_B0CBA8);
    sub_3AD37C();
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03310);
  }

  return result;
}

unint64_t sub_3AD37C()
{
  result = qword_E03318;
  if (!qword_E03318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03320, &qword_B0CBB0);
    sub_3AD434();
    sub_36A00(&qword_DFE948, &unk_DFE950, &unk_B099B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03318);
  }

  return result;
}

unint64_t sub_3AD434()
{
  result = qword_E03328;
  if (!qword_E03328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E03330, &qword_B0CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03328);
  }

  return result;
}

double sub_3AD4B8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_3AD4E4()
{
  result = qword_E03350;
  if (!qword_E03350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E032D0, &qword_B0CB68);
    sub_36A00(&qword_E03358, &qword_E032C0, &qword_B0CB58, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03350);
  }

  return result;
}

void sub_3AD59C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons);
  if (v3 >> 62)
  {
    if (sub_ABB060() >= 1)
    {
LABEL_3:
      sub_3ADB78();
      v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView);
      if (v4)
      {
        v5 = v4;
        [v5 setHidden:0];
        v6 = *(v1 + v2);
        v7 = *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons];
        *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons] = v6;
        swift_bridgeObjectRetain_n();
        v8 = sub_12C524(v7, v6);

        if ((v8 & 1) == 0)
        {
          sub_3ADFC0();
          [v5 setNeedsLayout];
        }

        *&v5[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = *(v1 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference);
        swift_retain_n();

        sub_3AE3A8();
      }

      return;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 1)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView);
  if (v9)
  {

    [v9 setHidden:1];
  }
}

void sub_3AD730()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView];
  if (v2)
  {
    type metadata accessor for CGRect(0);
    v3 = v2;
    [v0 bounds];
    v45 = v4;
    v46 = v5;
    v47 = v6;
    v48 = v7;
    if ((sub_AB38D0() & 1) == 0)
    {
LABEL_12:

      return;
    }

    v8 = [v0 effectiveUserInterfaceLayoutDirection];
    [v1 bounds];
    UIEdgeInsetsInsetRect(v9, v10, v11, v12, *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins], *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins + 8]);
    sub_ABA4B0();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (v22 >> 62)
    {
      if (sub_ABB060() >= 1)
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= 1)
    {
LABEL_5:
      v23 = [(CGPath *)v3 traitCollection];
      [v23 displayScale];

      sub_AB3A00();
      v25 = v24 + 32.0;
LABEL_8:
      v26 = fmin(v20, 32.0);
      v27 = v14;
      v28 = v16;
      v29 = v18;
      v30 = v20;
      if (v8 == &dword_0 + 1)
      {
        MinX = CGRectGetMinX(*&v27);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v27) - v25;
      }

      v50.origin.x = v14;
      v50.origin.y = v16;
      v50.size.width = v18;
      v50.size.height = v20;
      v32 = CGRectGetMaxY(v50) - v26;
      v33 = v3;
      [(CGPath *)v33 setFrame:MinX, v32, v25, v26];
      [(CGPath *)v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = [(CGPath *)v33 layer];

      v51.origin.x = v35;
      v51.origin.y = v37;
      v51.size.width = v39;
      v51.size.height = v41;
      v43 = CGRectGetHeight(v51) * 0.5;
      v52.origin.x = v35;
      v52.origin.y = v37;
      v52.size.width = v39;
      v52.size.height = v41;
      v44 = CGRectGetHeight(v52) * 0.5;
      v53.origin.x = v35;
      v53.origin.y = v37;
      v53.size.width = v39;
      v53.size.height = v41;
      v3 = CGPathCreateWithRoundedRect(v53, v43, v44, 0);
      [v42 setShadowPath:v3];

      goto LABEL_12;
    }

    v25 = 0.0;
    goto LABEL_8;
  }
}

void sub_3ADA40()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) < 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (sub_ABB060() >= 1)
  {
LABEL_3:
    v3 = [v0 traitCollection];
    [v3 displayScale];

    sub_AB3A00();
  }
}

void sub_3ADB78()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView;
  if (!*&v0[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView])
  {
    v2 = v0;
    v3 = [objc_allocWithZone(type metadata accessor for PeopleBadgeView()) init];
    [v3 setHidden:1];
    *&v3[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = *&v2[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference];
    swift_retain_n();

    sub_3AE3A8();

    v4 = [objc_opt_self() blackColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v4, v6, 0.3, 3.0, 0.0, 2.0);
    UIView.shadow.setter(v6);

    [v2 addSubview:v3];
    v5 = *&v2[v1];
    *&v2[v1] = v3;
  }
}

id sub_3ADE0C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents] = _swiftEmptyArrayStorage;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setUserInteractionEnabled:0];
  return v4;
}

void sub_3ADFC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_ABB060();
    v5 = &selRef__authenticateReturningError_;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v5 = &selRef__authenticateReturningError_;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v6 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;

  v8 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = sub_3602B8(v8, v3, v7);
    }

    else
    {
      v9 = *(v3 + 8 * v8 + 32);
    }

    [*(v9 + 112) v5[266]];
    swift_beginAccess();

    sub_AB9730();
    if (*(&dword_10 + (*&v0[v6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v0[v6] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    ++v8;
    sub_AB97F0();
    swift_endAccess();
  }

  while (v4 != v8);

LABEL_12:
  *&v0[v2] = _swiftEmptyArrayStorage;

  v10 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons;
  v11 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_socialPersons];
  if (v11 >> 62)
  {
    if (sub_ABB060() < 1)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
    return;
  }

  v3 = *&v1[v10];
  if (!(v3 >> 62))
  {
    v12 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_44:
  v12 = sub_ABB060();
  if (!v12)
  {
    return;
  }

LABEL_16:
  v13 = v3 & 0xC000000000000001;

  if ((v3 & 0xC000000000000001) != 0)
  {
    v14 = sub_3602E8(0, v3);
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_46;
    }

    v14 = *(v3 + 32);
  }

  v15 = v14;
  v16 = *(sub_3AEA58(v14) + 112);
  if (([v16 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v16];
  }

  [v16 v5[266]];

  if (v12 == 1)
  {
    goto LABEL_30;
  }

  if (v13)
  {
    v17 = sub_3602E8(1uLL, v3);
  }

  else
  {
    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_46;
    }

    v17 = *(v3 + 40);
  }

  v18 = v17;
  v19 = *(sub_3AEA58(v17) + 112);
  if (([v19 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v19];
  }

  [v19 v5[266]];

  if (v12 == 2)
  {
LABEL_30:

    return;
  }

  if (!v13)
  {
    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v20 = *(v3 + 48);
      goto LABEL_35;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v20 = sub_3602E8(2uLL, v3);
LABEL_35:
  v21 = v20;
  v22 = *(sub_3AEA58(v20) + 112);
  if (([v22 isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:v22];
  }

  [v22 v5[266]];
}

void sub_3AE3A8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference;

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_3602B8(v6, v2, v5);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      ++v6;
      *(v7 + 16) = *(v0 + v4);
    }

    while (v3 != v6);
  }
}

void sub_3AE50C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 1)
  {
    do
    {
      [v1 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v1 traitCollection];
      [v12 displayScale];

      [v1 effectiveUserInterfaceLayoutDirection];
      v33.origin.x = v5;
      v33.origin.y = v7;
      v33.size.width = v9;
      v33.size.height = v11;
      MaxX = CGRectGetMaxX(v33);
      v2 = *&v1[v2];
      if (v2 >> 62)
      {
        v30 = MaxX;
        v31 = sub_ABB060();
        MaxX = v30;
        v14 = v31;
        if (!v31)
        {
          return;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        if (!v14)
        {
          return;
        }
      }

      v15 = MaxX - v11;

      while (1)
      {
        if (__OFSUB__(v14--, 1))
        {
          __break(1u);
LABEL_14:

          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v17 = sub_3602B8(v14, v2, v16);
          goto LABEL_7;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v17 = *(v2 + 32 + 8 * v14);

LABEL_7:
        v18 = v17[10];
        v19 = v17[11];
        v17[10] = v11;
        v17[11] = v11;
        sub_75614(v18, v19);
        v20 = sub_76368(0, 0, 1);
        v22 = v21;
        sub_ABA490();
        sub_76B28(v23, v24, v25, v26);
        v34.origin.y = 0.0;
        v34.origin.x = v15;
        v34.size.width = v20;
        v34.size.height = v22;
        MinX = CGRectGetMinX(v34);
        sub_AB3A00();
        v15 = MinX - v28;
        [v1 bringSubviewToFront:*(v17 + 14)];

        if (!v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    while (sub_ABB060() >= 1);
  }
}

double sub_3AE7E8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v3)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_3602B8(v5, v2, v4);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v3 = sub_ABB060();
          goto LABEL_3;
        }

        v6 = *(v2 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v6 + 112) clearArtworkCatalogs];
      *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;

      ++v5;
    }

    while (v7 != v3);
  }

  v8 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  swift_beginAccess();
  v2 = *(v0 + v8);
  if (v2 >> 62)
  {
    v0 = sub_ABB060();
  }

  else
  {
    v0 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v0)
  {
    v10 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = sub_3602B8(v10, v2, v9);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v11 = *(v2 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      [*(v11 + 112) clearArtworkCatalogs];
      *(v11 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
      *(v11 + 200) = 0;
      *(v11 + 208) = 0;

      ++v10;
    }

    while (v12 != v0);
  }

  return result;
}

uint64_t sub_3AEA58(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  __chkstk_darwin();
  v8 = v49 - v7 + 64;
  v9 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_reusableArtworkComponents;
  swift_beginAccess();
  v11 = *(v1 + v9);
  if (v11 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v2 = sub_3602B8(0, v11, v29);
      }

      else
      {
        if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v2 = *(v11 + 32);
      }

      v12 = *(v2 + 112);

      [v12 setHidden:0];
      swift_beginAccess();
      v11 = *(v3 + v9);
      v8 = (v11 >> 62);
      if (!(v11 >> 62))
      {
        if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_8;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        v6 = *(v3 + v9);
      }

      else
      {
        v6 = (v11 & 0xFFFFFFFFFFFFFF8);
      }

      result = sub_ABB060();
      if (!result)
      {
        goto LABEL_44;
      }

      if (sub_ABB060())
      {
LABEL_8:
        if ((v11 & 0xC000000000000001) == 0)
        {
          if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {

            if (!v8)
            {
LABEL_11:
              result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
LABEL_34:
              if (result)
              {
                sub_1AF130(0, 1);
                swift_endAccess();

                goto LABEL_36;
              }

              __break(1u);
LABEL_44:
              __break(1u);
              return result;
            }

LABEL_33:
            result = sub_ABB060();
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_32:
        sub_3602B8(0, v11, v10);
        if (!v8)
        {
          goto LABEL_11;
        }

        goto LABEL_33;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  type metadata accessor for ArtworkComponentImageView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v2 = sub_80104(v14);

  v15 = *(v2 + 144);
  *(v2 + 144) = 2;
  if (v15 == 2)
  {
  }

  else
  {
    v16 = *(v2 + 112);

    v17 = [v16 image];
    sub_788B8(v17);
  }

  if (qword_DE6C90 != -1)
  {
LABEL_42:
    swift_once();
  }

  v18 = qword_E718D0;
  v19 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = qword_E718D0;
  if (v19)
  {
    sub_13C80(0, qword_DFAAC0, UIColor_ptr);
    v20 = v18;
    v19 = v19;
    v21 = sub_ABA790();

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = v18;
  }

  sub_79590();
LABEL_22:

  *(v2 + 24) = 0x70756B636F6CLL;
  *(v2 + 32) = 0xE600000000000000;

  *(v2 + 16) = *(v3 + OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_artworkCachingReference);

  v23 = [objc_opt_self() whiteColor];
  UIView.Border.init(thickness:color:)();
  sub_75E64(v25, v24 & 1, v26);
  sub_ABA670();
  v27 = sub_ABA680();
  (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
  v28 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v2 + v28, v6, &unk_DFFBC0, &unk_AF85C0);
  swift_beginAccess();
  sub_8A01C(v8, v2 + v28);
  swift_endAccess();
  sub_75AE8(v6);
  sub_12E1C(v6, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v8, &unk_DFFBC0, &unk_AF85C0);
LABEL_36:
  v30 = [a1 artworkCatalog];
  if (!v30)
  {
    v30 = MPModelPerson.monogramArtworkCatalog.getter();
  }

  sub_74EA4(v30);
  v31 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  v36 = *(v31 + 2);
  v37 = *(v2 + 184);
  v38 = *(v2 + 152);
  v49[1] = *(v2 + 168);
  v49[2] = v37;
  v49[0] = v38;
  *(v2 + 152) = v32;
  *(v2 + 160) = v33;
  *(v2 + 168) = v34;
  *(v2 + 176) = v35;
  *(v2 + 184) = v36;
  v39 = v34;
  v40 = v35;
  v41 = v32;
  v42 = v33;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  sub_75948(v49);
  sub_12E1C(v49, &unk_DF8690, &unk_AF9900);

  v47 = OBJC_IVAR____TtC16MusicApplicationP33_AA0DFD7D953F5F9BB2DAA84AD1DB9C2715PeopleBadgeView_visibleArtworkComponents;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v3 + v47) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v47) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return v2;
}

void *sub_3AF124(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = sub_AB3820();
  v4 = *(v27 - 8);
  __chkstk_darwin();
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v7 = a1;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *(v30 + 16);
    if (v8)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_22:
  v8 = sub_ABB060();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v24 = (v4 + 1);
  result = _swiftEmptyArrayStorage;
  v11 = &selRef_setSubtitleText_;
  v25 = v7;
  do
  {
    v23 = result;
    for (i = v9; ; ++i)
    {
      if (v10)
      {
        v13 = sub_361668(i, v7);
      }

      else
      {
        if (i >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v7 + 8 * i + 32);
      }

      v14 = v13;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (![v13 v11[500]])
      {
        v15 = [v14 indexPath];
        v16 = v10;
        v17 = v26;
        sub_AB3790();
        v18 = sub_AB9260();
        isa = sub_AB3770().super.isa;
        v4 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v18 withIndexPath:isa];
        v20 = v17;
        v10 = v16;
        v11 = &selRef_setSubtitleText_;
        (*v24)(v20, v27);

        v7 = v25;
        if (v4)
        {
          break;
        }
      }

      if (v9 == v8)
      {
        return v23;
      }
    }

    v21 = v4;
    [v14 frame];
    [v21 setFrame:?];

    v4 = &v31;
    sub_AB9730();
    if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    result = v31;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_3AF404()
{
  v1 = [*v0 accessorySocialPersons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
  v3 = sub_AB9760();

  return v3;
}

void sub_3AF4D0(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_15F84(a2, &v31, &unk_E04520, &qword_B0CCC8);
  v8 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v9 = v33;
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_12E1C(&v31, &unk_E04520, &qword_B0CCC8);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_6:
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons];
  *&a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons] = v10;

  if ((sub_12C524(v11, v10) & 1) == 0)
  {
    sub_3AD59C();
    [a1 setNeedsLayout];
  }

  if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
  {
    v12 = sub_ABB060();
  }

  else
  {
    v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  if (v12)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    ObjectType = swift_getObjectType();
    v15 = *((*(a4 + 8))(ObjectType, a4) + 112);

    v16 = v15;
    v17 = [v16 superview];
    v18 = v16;
    if (v17)
    {
      v19 = v17;
      [a3 layoutIfNeeded];
      [v19 bounds];
      [v16 frame];

      sub_ABA4D0();
      sub_AB9E70();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = &a1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins];
      type metadata accessor for UIEdgeInsets(0);
      v29 = *v28;
      v30 = *(v28 + 1);
      *v28 = v21;
      *(v28 + 1) = v23;
      *(v28 + 2) = v25;
      *(v28 + 3) = v27;
      v32 = v30;
      v31 = v29;
      if (sub_AB38D0())
      {
        [a1 setNeedsLayout];
      }

      v18 = v19;
    }
  }
}

id sub_3AF7D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins];
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  *(v4 + 1) = v5;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithCoder:", a1);
}

void JSSubscriptionPurchaseLoadingViewController.fadeOut(_:)(id (*a1)(), uint64_t a2)
{
  [*&v2[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:1.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v13 = sub_3B00F8;
  v14 = v5;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1B5EB4;
  v12 = &block_descriptor_123;
  v6 = _Block_copy(&v9);
  v7 = v2;

  if (a1)
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1811AC;
    v12 = &block_descriptor_3_1;
    v8 = _Block_copy(&v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() animateWithDuration:v6 animations:v8 completion:0.25];
  _Block_release(v8);
  _Block_release(v6);
}

char *_s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B40LL0A6CoreUI0eF0Cvpfi_0()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  v0 = sub_AB9320();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for LoadingView());
  v4 = LoadingView.init(title:style:usesSubtitleTextColor:)(v0, v2, 0x100000000, 0);
  LoadingView.titlePosition.setter(2u);
  v5 = [objc_opt_self() boldSystemFontOfSize:17.0];
  LoadingView.font.setter(v5);
  v6 = v4;
  [v6 setFrame:{0.0, 0.0, 275.0, 80.0}];
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor:qword_E71898];
  v7 = [v6 layer];

  [v7 setCornerRadius:10.0];
  return v6;
}

void JSSubscriptionPurchaseLoadingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView;
  *&v4[v8] = _s16MusicApplication43JSSubscriptionPurchaseLoadingViewControllerC07loadingF033_E9A8DE5BD8B377223C15E85C975C1B400A6CoreUI0eF0Cvpfi_0();
  if (a2)
  {

    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v9, a3);

  v11 = v10;
  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    [v12 setUserInteractionEnabled:0];

    [v11 setModalPresentationStyle:4];
    v14 = [v11 view];

    if (v14)
    {

      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor:v15];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 center];
    [v1 setCenter:?];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewDidLayoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 center];
    [v1 setCenter:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3B00C0()
{

  return swift_deallocObject();
}

double block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  [*&v1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:0.0];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_3B0258;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1B5EB4;
  v7[3] = &block_descriptor_9_3;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

Swift::Void __swiftcall JSSubscriptionPurchaseLoadingViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a1);
  [*&v1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView] setAlpha:1.0];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_3B04AC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1B5EB4;
  v7[3] = &block_descriptor_16_2;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0 completion:0.25];
  _Block_release(v5);
}

uint64_t sub_3B04BC(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 2;
  swift_unknownObjectWeakAssign();
  v3 = sub_112FC(&off_CEFB48);
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = KeyboardObserver.init(options:update:)(v3, sub_3B24D0, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  v14 = *(v1 + 112);
  v15 = *(v1 + 120);
  *(v1 + 96) = v5;
  *(v1 + 104) = v7;
  *(v1 + 112) = v9;
  *(v1 + 120) = v11;
  sub_3B24D8(v12, v13, v14, v15);
  return v1;
}

double sub_3B05C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 176);
    v10[2] = *(Strong + 160);
    v10[3] = v6;
    v10[4] = *(Strong + 192);
    v11 = *(Strong + 208);
    v7 = *(Strong + 144);
    v10[0] = *(Strong + 128);
    v10[1] = v7;
    v8 = *(a2 + 48);
    *(Strong + 160) = *(a2 + 32);
    *(Strong + 176) = v8;
    *(Strong + 192) = *(a2 + 64);
    *(Strong + 208) = *(a2 + 80);
    v9 = *(a2 + 16);
    *(Strong + 128) = *a2;
    *(Strong + 144) = v9;
    sub_3B1F38(v10);
  }

  return result;
}

uint64_t sub_3B0664()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  swift_unknownObjectWeakDestroy();
  sub_17654(*(v0 + 32), *(v0 + 40));
  sub_17654(*(v0 + 48), *(v0 + 56));
  sub_17654(*(v0 + 64), *(v0 + 72));

  sub_3B24D8(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

void sub_3B0720(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = *(*v2 + 208);
  if ((v7() & 1) == (a1 & 1))
  {
    if (a1)
    {
      v17 = *(v2 + 88);
      if (v17)
      {
        v18 = v17;
        sub_3B1D0C(v88);
        sub_3B15CC(v88);
        sub_57748(v88);
      }

      sub_3B18B4();
    }

    return;
  }

  *(v2 + 24) = v6;
  v8 = *(v2 + 88);
  if (!v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for InformativeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_22:
    v19 = v8;
    v16 = v3[6];
    v15 = v3[7];
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v9 = v3[11];
  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v10 = v3[11];
  v11 = v8;
  v12 = v9 != v10 || v10 == 0;
  if (v12 && (a2 & 1) != 0)
  {
    [v9 setAlpha:0.0];
    v10 = v3[11];
  }

  v3[11] = v9;
  v13 = v9;
  sub_3B1D0C(v88);
  sub_3B15CC(v88);
  sub_57748(v88);

  sub_3B18B4();
  if (v10)
  {
    v14 = v3[11];
    if (!v14 || v14 != v10)
    {
      [v10 removeFromSuperview];
    }

    v16 = v3[6];
    v15 = v3[7];
    if ((a2 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v16)
    {
      v74 = v9;

      v68 = v15;
      v70 = v16;
      v20 = v16(v3);
      v72 = v7;
      v67 = v6;
      if ((v20 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_ABAC10();
        sub_74390();
        sub_3B2528();
        sub_AB9BC0();
        v22 = v83;
        v21 = v84;
        v23 = v85;
        v24 = v86;
        v25 = v87;
      }

      else
      {
        v32 = -1 << *(v20 + 32);
        v21 = v20 + 56;
        v23 = ~v32;
        v33 = -v32;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v25 = v34 & *(v20 + 56);
        v24 = 0;
      }

      v66 = v23;
      v35 = (v23 + 64) >> 6;
      if (a1)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      if (v22 < 0)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v37 = v24;
        v38 = v25;
        v39 = v24;
        if (!v25)
        {
          break;
        }

LABEL_42:
        v40 = (v38 - 1) & v38;
        v41 = *(*(v22 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v41)
        {
LABEL_48:
          sub_2BB88(v22);

          sub_17654(v70, v68);
          v7 = v72;
          v9 = v74;
          v6 = v67;
          goto LABEL_49;
        }

        while (1)
        {
          [v41 setHidden:{0, v66}];
          [v41 setAlpha:v36];

          v24 = v39;
          v25 = v40;
          if ((v22 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_44:
          v42 = sub_ABAC90();
          if (v42)
          {
            v82 = v42;
            sub_74390();
            swift_unknownObjectRetain();
            swift_dynamicCast();
            v41 = aBlock;
            swift_unknownObjectRelease();
            v39 = v24;
            v40 = v25;
            if (aBlock)
            {
              continue;
            }
          }

          goto LABEL_48;
        }
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v35)
        {
          goto LABEL_48;
        }

        v38 = *(v21 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_82;
    }

LABEL_49:
    if (a1)
    {
      v43 = 0x10000;
    }

    else
    {
      v43 = 0x20000;
    }

    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v3;
    *(v45 + 24) = v6;
    *(v45 + 32) = v9;
    v80 = sub_3B2624;
    v81 = v45;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_1B5EB4;
    v79 = &block_descriptor_124;
    v46 = _Block_copy(&aBlock);
    v47 = v9;

    v80 = sub_3B264C;
    v81 = v3;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_1811AC;
    v79 = &block_descriptor_35_1;
    v48 = _Block_copy(&aBlock);

    [v44 animateWithDuration:v43 delay:v46 options:v48 animations:0.25 completion:0.0];
    _Block_release(v48);
    _Block_release(v46);
    goto LABEL_75;
  }

  v16 = v3[6];
  v15 = v3[7];
  if (a2)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v16)
  {
    v73 = v7;
    v75 = v9;

    v69 = v15;
    v71 = v16;
    v26 = v16(v3);
    if ((v26 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v28 = aBlock;
      v27 = v77;
      v29 = v78;
      v30 = v79;
      v31 = v80;
    }

    else
    {
      v49 = -1 << *(v26 + 32);
      v27 = v26 + 56;
      v29 = ~v49;
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v31 = v51 & *(v26 + 56);
      v30 = 0;
    }

    v52 = (v29 + 64) >> 6;
    if (v28 < 0)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v53 = v30;
      v54 = v31;
      v55 = v30;
      if (!v31)
      {
        break;
      }

LABEL_62:
      v56 = (v54 - 1) & v54;
      v57 = *(*(v28 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
      if (!v57)
      {
LABEL_68:
        sub_2BB88(v28);

        sub_17654(v71, v69);
        v7 = v73;
        v9 = v75;
        goto LABEL_69;
      }

      while (1)
      {
        [v57 setHidden:a1 & 1];
        [v57 setAlpha:1.0];

        v30 = v55;
        v31 = v56;
        if ((v28 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_64:
        v58 = sub_ABAC90();
        if (v58)
        {
          v82 = v58;
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v57 = v83;
          swift_unknownObjectRelease();
          v55 = v30;
          v56 = v31;
          if (v83)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    while (1)
    {
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v55 >= v52)
      {
        goto LABEL_68;
      }

      v54 = *(v27 + 8 * v55);
      ++v53;
      if (v54)
      {
        goto LABEL_62;
      }
    }

LABEL_82:
    __break(1u);
    return;
  }

LABEL_69:
  if ((a1 & 1) == 0)
  {
    v59 = v3[11];
    v3[11] = 0;
    sub_3B18B4();
    if (v59)
    {
      v60 = v3[11];
      if (!v60 || v60 != v59)
      {
        [v59 removeFromSuperview];
      }
    }
  }

LABEL_75:
  v61 = (*(*v3 + 160))();
  if (v61)
  {
    v62 = v61;
    if (v7())
    {
      v82 = v62;
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v63 = sub_AB3080();

      v64 = v3[10];
      v3[10] = v63;

      return;
    }
  }

  v65 = v3[10];
  v3[10] = 0;
}

void sub_3B0F7C(uint64_t a1, char a2, id a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v27 = a3;
    v5 = *(a1 + 56);

    v25 = v5;
    v7 = v4(a1);
    v8 = v7;
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v10 = v29;
      v9 = v30;
      v12 = v31;
      v11 = v32;
      v13 = v33;
    }

    else
    {
      v14 = -1 << *(v7 + 32);
      v9 = v7 + 56;
      v12 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v7 + 56);

      v11 = 0;
      v10 = v8;
    }

    v17 = (v12 + 64) >> 6;
    v26 = a2;
    if (a2)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    if (v10 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v19 = v11;
      v20 = v13;
      v21 = v11;
      if (!v13)
      {
        break;
      }

LABEL_16:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v23)
      {
LABEL_22:
        sub_2BB88(v10);

        sub_17654(v4, v25);
        a3 = v27;
        a2 = v26;
        goto LABEL_23;
      }

      while (1)
      {
        [v23 setAlpha:v18];

        v11 = v21;
        v13 = v22;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_ABAC90())
        {
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v23 = v28;
          swift_unknownObjectRelease();
          v21 = v11;
          v22 = v13;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_22;
      }

      v20 = *(v9 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v24 = 0.0;
    if (a2)
    {
      v24 = 1.0;
    }

    [a3 setAlpha:v24];
  }
}