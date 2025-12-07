void sub_1003D190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v79 = a7;
  v14 = *(v7 + 20);
  v15 = sub_1002F178C(0x5453494CuLL, 0xE400000000000000, v7 + 8, v14);
  if (v16)
  {
    v17._countAndFlagsBits = 1414744396;
    v17._object = 0xE400000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = v15;
  v19 = *(v7 + 20);
  v20 = (v19 + v15);
  if (__CFADD__(v19, v15))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 20) = v20;
  v21 = *(a1 + 16);
  v78 = a5;
  if (v21)
  {
    v80 = a1;
    v22 = sub_1002F178C(0, 0xE000000000000000, v7 + 8, v20);
    if (v23)
    {
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v20);
    }

    v25 = v22;
    v26 = *(v7 + 20);
    v27 = (v26 + v22);
    if (__CFADD__(v26, v22))
    {
      goto LABEL_51;
    }

    *(v7 + 20) = v27;
    v28 = sub_1002F178C(0x28uLL, 0xE100000000000000, v7 + 8, v27);
    if (v29)
    {
      v30._countAndFlagsBits = 40;
      v30._object = 0xE100000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
    }

    v31 = *(v7 + 20);
    v32 = __CFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      goto LABEL_52;
    }

    *(v7 + 20) = v33;
    v34 = v25 + v28;
    if (__OFADD__(v25, v28))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __chkstk_darwin(v28);
    v77[2] = sub_1003D4E50;
    v77[3] = 0;
    v77[4] = v8;
    v77[5] = &v80;
    v77[6] = 32;
    v77[7] = 0xE100000000000000;
    v35 = sub_1004521D8(0, sub_1003DAB48, v77, a1);
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v37 = *(v8 + 20);
    v38 = sub_1002F178C(0x29uLL, 0xE100000000000000, v8 + 8, v37);
    if (v39)
    {
      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v8 + 20);
    v42 = (v41 + v38);
    if (__CFADD__(v41, v38))
    {
      goto LABEL_55;
    }

    *(v8 + 20) = v42;
    v43 = __OFADD__(v36, v38);
    v44 = v36 + v38;
    if (v43)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v45 = sub_1002F178C(0, 0xE000000000000000, v8 + 8, v42);
    if (v46)
    {
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v42);
    }

    v48 = *(v8 + 20);
    LODWORD(v20) = v48 + v45;
    if (__CFADD__(v48, v45))
    {
      goto LABEL_57;
    }

    *(v8 + 20) = v20;
    v21 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v49 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_43;
  }

  v50 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v20);
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    v50 = ByteBuffer._setStringSlowpath(_:at:)(v52, v20);
  }

  v53 = *(v8 + 20);
  v32 = __CFADD__(v53, v50);
  v54 = v53 + v50;
  if (v32)
  {
    goto LABEL_44;
  }

  *(v8 + 20) = v54;
  v55 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100441F24(a2);
  v57 = v55 + v56;
  if (__OFADD__(v55, v56))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = *(v8 + 20);
  v59 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v58);
  if (v60)
  {
    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v58);
  }

  v62 = *(v8 + 20);
  v32 = __CFADD__(v62, v59);
  v63 = v62 + v59;
  if (v32)
  {
    goto LABEL_47;
  }

  *(v8 + 20) = v63;
  v64 = v57 + v59;
  if (__OFADD__(v57, v59))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    v65 = sub_100475A74(a4);
  }

  else
  {
    v65 = sub_1003B1E70(a4, v78, a6 & 0xFFFFFFFFFFFFFFLL);
  }

  v66 = v79;
  v67 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    goto LABEL_49;
  }

  v68 = *(v79 + 16);
  if (v68)
  {
    v69 = *(v8 + 20);
    v70 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v69);
    if (v71)
    {
      v72._countAndFlagsBits = 32;
      v72._object = 0xE100000000000000;
      v70 = ByteBuffer._setStringSlowpath(_:at:)(v72, v69);
    }

    v73 = v70;
    v74 = *(v8 + 20);
    v32 = __CFADD__(v74, v70);
    v75 = v74 + v70;
    if (v32)
    {
      goto LABEL_59;
    }

    *(v8 + 20) = v75;
    v76 = sub_1004366B8(v66);
    v68 = v73 + v76;
    if (__OFADD__(v73, v76))
    {
LABEL_60:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v67, v68))
  {
    goto LABEL_50;
  }
}

void sub_1003D1CE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  v11 = sub_1002F178C(0x204255534CuLL, 0xE500000000000000, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x204255534CLL;
    v13._object = 0xE500000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  sub_100441F24(a1);
  v19 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v16 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v19 + v21, sub_1003B1E70(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL)))
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1003D1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v177 = a6;
  v178 = a7;
  v11 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v175 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v163 = &v154 - v12;
  v162 = type metadata accessor for ParameterValue(0);
  v13 = *(v162 - 8);
  __chkstk_darwin(v162);
  v158 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v174);
  v187 = (&v154 - v15);
  v173 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  __chkstk_darwin(v173);
  v172 = (&v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v171 = (&v154 - v18);
  v170 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
  __chkstk_darwin(v170);
  v169 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v168 = (&v154 - v21);
  __chkstk_darwin(v22);
  v186 = (&v154 - v23);
  __chkstk_darwin(v24);
  v167 = (&v154 - v25);
  __chkstk_darwin(v26);
  v166 = &v154 - v27;
  v165 = sub_10000C9C0(&qword_1005DC308, &qword_100503010);
  __chkstk_darwin(v165);
  v164 = (&v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v185 = (&v154 - v30);
  v31 = *(v7 + 20);
  v32 = 0;
  v33 = sub_1002F178C(0x20454D414E4552uLL, 0xE700000000000000, v7 + 8, v31);
  if (v34)
  {
    v35._countAndFlagsBits = 0x20454D414E4552;
    v35._object = 0xE700000000000000;
    v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v31);
  }

  v36 = v33;
  v37 = *(v7 + 20);
  v38 = __CFADD__(v37, v33);
  v39 = v37 + v33;
  if (v38)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v40 = v7;
  *(v7 + 20) = v39;
  sub_100441F24(a1);
  v42 = v36 + v41;
  if (__OFADD__(v36, v41))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v43 = *(v7 + 20);
  v44 = sub_1002F178C(0x20uLL, 0xE100000000000000, v7 + 8, v43);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
  }

  v47 = *(v7 + 20);
  v38 = __CFADD__(v47, v44);
  v48 = v47 + v44;
  if (v38)
  {
    goto LABEL_65;
  }

  *(v7 + 20) = v48;
  v49 = __OFADD__(v42, v44);
  v50 = v42 + v44;
  if (v49)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_100441F24(a3);
  v49 = __OFADD__(v50, v51);
  v52 = v50 + v51;
  if (v49)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v53 = *(v178 + 16);
  v176 = v53;
  if (v53)
  {
    v54 = *(v7 + 20);
    v55 = sub_1002F178C(0x20uLL, 0xE100000000000000, v7 + 8, v54);
    if (v56)
    {
      v57._countAndFlagsBits = 32;
      v57._object = 0xE100000000000000;
      v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, v54);
    }

    v58 = *(v7 + 20);
    v59 = (v58 + v55);
    if (!__CFADD__(v58, v55))
    {
      v155 = v55;
      *(v7 + 20) = v59;
      v60 = sub_1002F178C(0, 0xE000000000000000, v7 + 8, v59);
      if (v61)
      {
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v60 = ByteBuffer._setStringSlowpath(_:at:)(v62, v59);
      }

      v63 = v60;
      v64 = *(v7 + 20);
      v65 = (v64 + v60);
      if (!__CFADD__(v64, v60))
      {
        *(v7 + 20) = v65;
        v66 = sub_1002F178C(0x28uLL, 0xE100000000000000, v7 + 8, v65);
        if (v67)
        {
          v68._countAndFlagsBits = 40;
          v68._object = 0xE100000000000000;
          v66 = ByteBuffer._setStringSlowpath(_:at:)(v68, v65);
        }

        v69 = *(v7 + 20);
        v38 = __CFADD__(v69, v66);
        v70 = v69 + v66;
        if (!v38)
        {
          *(v7 + 20) = v70;
          if (!__OFADD__(v63, v66))
          {
            v156 = v63 + v66;
            v154 = v52;
            v160 = (v13 + 48);
            v159 = v176 - 1;
            v157 = a5;
            swift_retain_n();
            v71 = v177;
            swift_retain_n();
            swift_retain_n();
            v72 = 0;
            v73 = 0;
            v74 = (v71 + 40);
            v75 = &unk_100502FF0;
            v161 = v40;
            do
            {
              if (v73 >= *(v177 + 16))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v76 = v173;
              v77 = *(v173 + 48);
              v184 = v32;
              v180 = v74;
              v78 = *(v74 - 1);
              v79 = *v74;
              v182 = v72;
              v183 = v79;
              v80 = v171;
              *v171 = v78;
              v80[1] = v79;
              sub_10000E268(v178 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v73, v80 + v77, &qword_1005D7F50, v75);
              v81 = v80;
              v82 = v172;
              sub_100025FDC(v81, v172, &qword_1005D8488, &unk_100503000);
              v83 = *(v76 + 48);
              v84 = v170;
              v85 = *(v170 + 48);
              v86 = v82[1];
              v87 = v167;
              *v167 = *v82;
              v87[1] = v86;
              sub_100025FDC(v82 + v83, v87 + v85, &qword_1005D7F50, v75);
              v88 = v87;
              v89 = v166;
              sub_100025FDC(v88, v166, &qword_1005DBCA0, &qword_1004FE5C0);
              v90 = v165;
              v91 = *(v165 + 48);
              v92 = v185;
              v179 = v73;
              *v185 = v73;
              sub_100025FDC(v89, v92 + v91, &qword_1005DBCA0, &qword_1004FE5C0);
              v93 = v164;
              sub_10000E268(v92, v164, &qword_1005DC308, &qword_100503010);
              v181 = *v93;
              v94 = (v93 + *(v90 + 48));
              v95 = *(v84 + 48);
              v96 = *v94;
              v97 = v94[1];
              v98 = v168;
              sub_100025FDC(v94 + v95, v168 + v95, &qword_1005D7F50, v75);
              v99 = *(v84 + 48);
              v100 = v186;
              *v186 = v96;
              v100[1] = v97;
              sub_100025FDC(v98 + v95, v100 + v99, &qword_1005D7F50, v75);
              sub_10000E268(v100, v98, &qword_1005DBCA0, &qword_1004FE5C0);
              v101 = v161;
              v102 = *(v84 + 48);
              v103 = v169;
              sub_10000E268(v100, v169, &qword_1005DBCA0, &qword_1004FE5C0);
              v104 = *(v84 + 48);
              v105 = *v98;
              v106 = v98[1];
              v107 = v187;
              *v187 = *v98;
              v107[1] = v106;
              v108 = *(v174 + 52);
              sub_100025FDC(v103 + v104, v107 + v108, &qword_1005D7F50, v75);

              v109 = v98 + v102;
              v110 = v75;
              sub_100025F40(v109, &qword_1005D7F50, v75);
              v111 = *(v101 + 20);
              v32 = v184;
              v112 = sub_1002F178C(v105, v106, v101 + 8, v111);
              if (v113)
              {
                v114._countAndFlagsBits = v105;
                v114._object = v106;
                v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v111);
              }

              v115 = v112;
              v116 = *(v101 + 20);
              v117 = (v116 + v112);
              if (__CFADD__(v116, v112))
              {
                goto LABEL_56;
              }

              v75 = v110;
              *(v101 + 20) = v117;
              v118 = v187 + v108;
              v119 = v163;
              sub_10000E268(v118, v163, &qword_1005D7F50, v110);
              if ((*v160)(v119, 1, v162) == 1)
              {
                sub_100025F40(v119, &qword_1005D7F50, v110);
                v120 = 0;
                v121 = v182;
              }

              else
              {
                v122 = v119;
                v123 = v158;
                sub_1002FC114(v122, v158);
                v124 = sub_1002F178C(0x20uLL, 0xE100000000000000, v101 + 8, v117);
                v121 = v182;
                if (v125)
                {
                  v126._countAndFlagsBits = 32;
                  v126._object = 0xE100000000000000;
                  v124 = ByteBuffer._setStringSlowpath(_:at:)(v126, v117);
                }

                v127 = v124;
                v128 = *(v101 + 20);
                v38 = __CFADD__(v128, v124);
                v129 = v128 + v124;
                if (v38)
                {
                  goto LABEL_60;
                }

                *(v101 + 20) = v129;
                v130 = sub_100463ACC(v123);
                sub_1003DADA0(v123, type metadata accessor for ParameterValue);
                v120 = v127 + v130;
                if (__OFADD__(v127, v130))
                {
                  goto LABEL_61;
                }
              }

              v131 = v115 + v120;
              if (__OFADD__(v115, v120))
              {
                goto LABEL_57;
              }

              sub_100025F40(v187, &qword_1005DBCA8, &unk_100504BF0);
              v132 = v121 + v131;
              if (__OFADD__(v121, v131))
              {
                goto LABEL_58;
              }

              if (v181 >= v159)
              {
                sub_100025F40(v186, &qword_1005DBCA0, &qword_1004FE5C0);
                v137 = 0;
              }

              else
              {
                v133 = *(v101 + 20);
                v134 = sub_1002F178C(0x20uLL, 0xE100000000000000, v101 + 8, v133);
                if (v135)
                {
                  v136._countAndFlagsBits = 32;
                  v136._object = 0xE100000000000000;
                  v134 = ByteBuffer._setStringSlowpath(_:at:)(v136, v133);
                }

                v137 = v134;
                sub_100025F40(v186, &qword_1005DBCA0, &qword_1004FE5C0);
                v138 = *(v101 + 20);
                v38 = __CFADD__(v138, v137);
                v139 = v138 + v137;
                if (v38)
                {
                  goto LABEL_62;
                }

                *(v101 + 20) = v139;
              }

              v49 = __OFADD__(v132, v137);
              v72 = v132 + v137;
              if (v49)
              {
                goto LABEL_59;
              }

              v73 = v179 + 1;
              sub_100025F40(v185, &qword_1005DC308, &qword_100503010);
              v74 = v180 + 2;
            }

            while (v176 != v73);

            v140 = v156 + v72;
            if (__OFADD__(v156, v72))
            {
              goto LABEL_73;
            }

            v141 = *(v101 + 20);
            v142 = sub_1002F178C(0x29uLL, 0xE100000000000000, v101 + 8, v141);
            if (v143)
            {
              v144._countAndFlagsBits = 41;
              v144._object = 0xE100000000000000;
              v142 = ByteBuffer._setStringSlowpath(_:at:)(v144, v141);
            }

            v145 = *(v101 + 20);
            v146 = (v145 + v142);
            if (!__CFADD__(v145, v142))
            {
              *(v101 + 20) = v146;
              v49 = __OFADD__(v140, v142);
              v147 = v140 + v142;
              if (v49)
              {
                goto LABEL_75;
              }

              v148 = sub_1002F178C(0, 0xE000000000000000, v101 + 8, v146);
              if (v149)
              {
                v150._countAndFlagsBits = 0;
                v150._object = 0xE000000000000000;
                v148 = ByteBuffer._setStringSlowpath(_:at:)(v150, v146);
              }

              v151 = *(v101 + 20);
              v38 = __CFADD__(v151, v148);
              v152 = v151 + v148;
              if (!v38)
              {
                *(v101 + 20) = v152;
                v153 = v147 + v148;
                if (__OFADD__(v147, v148))
                {
                  goto LABEL_77;
                }

                v49 = __OFADD__(v155, v153);
                v53 = v155 + v153;
                if (!v49)
                {
                  v52 = v154;
                  goto LABEL_53;
                }

                goto LABEL_78;
              }

LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              return;
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_53:
  if (__OFADD__(v52, v53))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }
}

void sub_1003D2998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 20);
  v7 = sub_1002F178C(0x20535554415453uLL, 0xE700000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  sub_100441F24(a1);
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = *(v3 + 20);
  v17 = sub_1002F178C(0x2820uLL, 0xE200000000000000, v3 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 10272;
    v19._object = 0xE200000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v3 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = sub_10043C43C(a3);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = *(v3 + 20);
  v27 = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v3 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v31;
  if (__OFADD__(v25, v27))
  {
LABEL_21:
    __break(1u);
  }
}

void sub_1003D2B0C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(v6 + 20);
  v12 = sub_1002F178C(0x49544E4548545541uLL, 0xED00002045544143, v6 + 8, v11);
  v50 = a5;
  if (v13)
  {
    v14._countAndFlagsBits = 0x49544E4548545541;
    v14._object = 0xED00002045544143;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = v12;
  v16 = *(v6 + 20);
  v17 = (v16 + v12);
  if (__CFADD__(v16, v12))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v6 + 20) = v17;
  v18 = sub_1002F178C(a1, a2, v6 + 8, v17);
  if (v19)
  {
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v21 = *(v6 + 20);
  v22 = (v21 + v18);
  if (__CFADD__(v21, v18))
  {
    goto LABEL_37;
  }

  *(v6 + 20) = v22;
  v23 = v15 + v18;
  if (__OFADD__(v15, v18))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_19:
    v36 = 0;
    goto LABEL_34;
  }

  v24 = sub_1002F178C(0x20uLL, 0xE100000000000000, v6 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = v24;
  v28 = *(v6 + 20);
  v29 = (v28 + v24);
  if (__CFADD__(v28, v24))
  {
    goto LABEL_40;
  }

  *(v6 + 20) = v29;
  if (*v6 != 1)
  {
    v37 = HIDWORD(a4);
    if (HIDWORD(a4) == a4)
    {
      v43 = sub_1002F178C(0x3DuLL, 0xE100000000000000, v6 + 8, v29);
      if (v44)
      {
        v45._countAndFlagsBits = 61;
        v45._object = 0xE100000000000000;
        v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v29);
      }

      v46 = v43;
      v47 = *(v6 + 20);
      v34 = __CFADD__(v47, v43);
      v48 = v47 + v43;
      if (v34)
      {
        goto LABEL_47;
      }

      *(v6 + 20) = v48;
    }

    else
    {
      v38 = v37 - a4;
      if (v37 < a4)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v39 = (WORD2(v50) << 8) | BYTE6(v50);
      if ((v50 - v39) < v37)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v53[0] = a3;
      v53[1] = a4;
      v54 = v50;
      v55 = WORD2(v50);
      v56 = BYTE6(v50);
      v57 = a4;
      v58 = HIDWORD(a4);
      swift_beginAccess();
      if (v38 < -4)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v40 = 4 * ((v38 + 2) / 3);
      v41 = *(a3 + 24);

      if (v38 < 1)
      {
        v42 = _swiftEmptyArrayStorage;
      }

      else
      {
        v42 = sub_1004A5C64();
        v42[2] = v40;
      }

      v52 = 0;
      sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v41 + v39 + a4, v38, (v42 + 4), v40, 0, &v52);
      if (v40 < v52)
      {
        goto LABEL_46;
      }

      v42[2] = v52;
      sub_1003A52D0(v53);
      sub_1003E0AC4(v42);
      v46 = v49;
    }

    v36 = v27 + v46;
    if (__OFADD__(v27, v46))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v30 = sub_1002F178C(0x8588E2uLL, 0xA300000000000000, v6 + 8, v29);
  if (v31)
  {
    v32._countAndFlagsBits = 8751330;
    v32._object = 0xA300000000000000;
    v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
  }

  v33 = *(v6 + 20);
  v34 = __CFADD__(v33, v30);
  v35 = v33 + v30;
  if (v34)
  {
    goto LABEL_41;
  }

  *(v6 + 20) = v35;
  v36 = v27 + v30;
  if (__OFADD__(v27, v30))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_34:
  if (__OFADD__(v23, v36))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

void sub_1003D2E74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 20);
  v10 = sub_1002F178C(0x204E49474F4CuLL, 0xE600000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x204E49474F4CLL;
    v12._object = 0xE600000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  sub_100441B60(a1, a2);
  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v4 + 20);
  v20 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v4 + 20);
  v15 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100441B60(a3, a4);
  if (__OFADD__(v25, v26))
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1003D2FAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20454C42414E45uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x20454C42414E45;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003C40B8;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100451D54(0, sub_1003C4564, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D318C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1002F178C(a4, a5, v6 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(v6 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v6 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_14;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_1003ED4FC(a2);
  v27 = __OFADD__(v26, result);
  v28 = v26 + result;
  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_1003EF9B8(a3);
  v27 = __OFADD__(v28, v29);
  result = v28 + v29;
  if (v27)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D32D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x2045524F5453uLL, 0xE600000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x2045524F5453;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v17;
  result = sub_10048D800(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = *(v4 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v20);
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v4 + 20);
    v25 = (v24 + result);
    if (__CFADD__(v24, result))
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v25;
    v60 = a2;
    result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = result;
    v29 = *(v4 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v30;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, v4 + 8, v30);
    if (v31)
    {
      v32._countAndFlagsBits = 40;
      v32._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
    }

    v33 = *(v4 + 20);
    v16 = __CFADD__(v33, result);
    v34 = v33 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v4 + 20) = v34;
    v35 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    __chkstk_darwin(result);
    v59[2] = sub_1003D52A8;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1004525B0(0, sub_1003DABA8, v59, a2);
    v36 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = *(v5 + 20);
    result = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v37);
    if (v38)
    {
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v5 + 20);
    v41 = (v40 + result);
    if (__CFADD__(v40, result))
    {
      goto LABEL_47;
    }

    *(v5 + 20) = v41;
    v42 = __OFADD__(v36, result);
    v43 = v36 + result;
    if (v42)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    result = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v41);
    if (v44)
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v41);
    }

    v46 = *(v5 + 20);
    v16 = __CFADD__(v46, result);
    v47 = v46 + result;
    if (v16)
    {
      goto LABEL_49;
    }

    *(v5 + 20) = v47;
    v48 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v42 = __OFADD__(v23, v48);
    v19 = v23 + v48;
    if (v42)
    {
LABEL_51:
      __break(1u);
      return result;
    }
  }

  v49 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_39;
  }

  v50 = *(v5 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v50);
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
  }

  v53 = *(v5 + 20);
  v16 = __CFADD__(v53, result);
  v54 = v53 + result;
  if (v16)
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v54;
  v55 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v57 = sub_10049CC04(v56, a4);
    v42 = __OFADD__(v55, v57);
    result = v55 + v57;
    if (!v42)
    {
      return result;
    }

    goto LABEL_36;
  }

  v58 = sub_10049CD5C(v56, a4);
  v42 = __OFADD__(v55, v58);
  result = v55 + v58;
  if (v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_1003D362C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x524F545320444955uLL, 0xEA00000000002045, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x524F545320444955;
    v13._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_10048DA10(a1);
  v18 = __OFADD__(v14, result);
  v19 = v14 + result;
  if (v18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v54 = a2;
    v21 = *(v4 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v21);
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v26;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, v4 + 8, v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v16 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v16)
    {
      goto LABEL_39;
    }

    *(v4 + 20) = v30;
    v31 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    __chkstk_darwin(result);
    v53[2] = sub_10049D76C;
    v53[3] = 0;
    v53[4] = v5;
    v53[5] = &v54;
    v53[6] = 32;
    v53[7] = 0xE100000000000000;
    result = sub_1004525B0(0, sub_1003DAE00, v53, a2);
    v32 = v31 + result;
    if (__OFADD__(v31, result))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v5 + 20);
    result = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v33);
    if (v34)
    {
      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
    }

    v36 = *(v5 + 20);
    v37 = (v36 + result);
    if (__CFADD__(v36, result))
    {
      goto LABEL_42;
    }

    *(v5 + 20) = v37;
    v18 = __OFADD__(v32, result);
    v38 = v32 + result;
    if (v18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    result = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v37);
    if (v39)
    {
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v5 + 20);
    v16 = __CFADD__(v41, result);
    v42 = v41 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v5 + 20) = v42;
    v20 = v38 + result;
    if (__OFADD__(v38, result))
    {
LABEL_45:
      __break(1u);
      return result;
    }
  }

  v43 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_35;
  }

  v44 = *(v5 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v44);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
  }

  v47 = *(v5 + 20);
  v16 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v16)
  {
    goto LABEL_36;
  }

  *(v5 + 20) = v48;
  v49 = v43 + result;
  if (__OFADD__(v43, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v51 = sub_10049CC04(v50, a4);
    v18 = __OFADD__(v49, v51);
    result = v49 + v51;
    if (!v18)
    {
      return result;
    }

    goto LABEL_32;
  }

  v52 = sub_10049CD5C(v50, a4);
  v18 = __OFADD__(v49, v52);
  result = v49 + v52;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1003D3940(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x484352414553uLL, 0xE600000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x484352414553;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v17;
  result = sub_10048FB98(a4);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v4 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_20;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_100489F10(a1);
  v26 = 0;
  if ((result & 1) != 0 && a3)
  {
    v34._countAndFlagsBits = a2;
    v34._object = a3;
    sub_1004A5994(v34);
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_1004A5994(v35);
    v27 = sub_1002F178C(0x2054455352414843uLL, 0xE800000000000000, v5 + 8, v23);
    if (v28)
    {
      v29._countAndFlagsBits = 0x2054455352414843;
      v29._object = 0xE800000000000000;
      v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v23);
    }

    v26 = v27;

    v30 = *(v5 + 20);
    v16 = __CFADD__(v30, v26);
    v31 = v30 + v26;
    if (v16)
    {
      goto LABEL_24;
    }

    *(v5 + 20) = v31;
  }

  v32 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_22;
  }

  v33 = sub_10048AE40(a1);
  v24 = __OFADD__(v32, v33);
  result = v32 + v33;
  if (v24)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D3B18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1002F178C(a4, a5, v6 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = *(v6 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v6 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_13;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100441F24(a2);
  v28 = __OFADD__(v26, v27);
  result = v26 + v27;
  if (v28)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D3C44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x41544F5551544553uLL, 0xE900000000000020, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x41544F5551544553;
    v13._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1003B1E70(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = *(v4 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_35;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = a4;
  v26 = *(a4 + 16);
  if (v26)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v23);
    if (v27)
    {
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v23);
    }

    v29 = result;
    v30 = *(v4 + 20);
    LODWORD(v23) = v30 + result;
    if (__CFADD__(v30, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v23;
  }

  else
  {
    v29 = 0;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v4 + 8, v23);
  if (v31)
  {
    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v23);
  }

  v33 = *(v4 + 20);
  v16 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __chkstk_darwin(result);
  v48[2] = sub_1003D54E8;
  v48[3] = 0;
  v48[4] = v5;
  v48[5] = &v49;
  v48[6] = 32;
  v48[7] = 0xE100000000000000;
  result = sub_100452600(0, sub_1003DAC3C, v48, a4);
  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = *(v5 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v37);
  if (v38)
  {
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
  }

  v40 = *(v5 + 20);
  v41 = (v40 + result);
  if (__CFADD__(v40, result))
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v41;
  v24 = __OFADD__(v36, result);
  v42 = v36 + result;
  if (v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
    v47 = v42;
    goto LABEL_29;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v41);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
  }

  v45 = *(v5 + 20);
  v16 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v16)
  {
    goto LABEL_44;
  }

  *(v5 + 20) = v46;
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:
  result = v25 + v47;
  if (__OFADD__(v25, v47))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

void sub_1003D3F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  v10 = sub_1002F178C(0x444154454D544547uLL, 0xEB00000000415441, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544547;
    v12._object = 0xEB00000000415441;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = (v14 + v10);
  if (__CFADD__(v14, v10))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v4 + 20) = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v15);
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v15);
    }

    v20 = v17;
    v21 = *(v4 + 20);
    v22 = (v21 + v17);
    if (__CFADD__(v21, v17))
    {
      goto LABEL_45;
    }

    *(v4 + 20) = v22;
    v67 = a1;
    v23 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v22);
    if (v24)
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
    }

    v26 = v23;
    v27 = *(v4 + 20);
    v28 = (v27 + v23);
    if (__CFADD__(v27, v23))
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v28;
    v29 = sub_1002F178C(0x28uLL, 0xE100000000000000, v4 + 8, v28);
    if (v30)
    {
      v31._countAndFlagsBits = 40;
      v31._object = 0xE100000000000000;
      v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = *(v4 + 20);
    v33 = __CFADD__(v32, v29);
    v34 = v32 + v29;
    if (v33)
    {
      goto LABEL_47;
    }

    *(v4 + 20) = v34;
    v35 = v26 + v29;
    if (__OFADD__(v26, v29))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __chkstk_darwin(v29);
    v66[2] = sub_10045ADA4;
    v66[3] = 0;
    v66[4] = v5;
    v66[5] = &v67;
    v66[6] = 32;
    v66[7] = 0xE100000000000000;
    v36 = sub_1004526CC(0, sub_1003DAC60, v66, a1);
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v38 = *(v5 + 20);
    v39 = sub_1002F178C(0x29uLL, 0xE100000000000000, v5 + 8, v38);
    if (v40)
    {
      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = *(v5 + 20);
    v43 = (v42 + v39);
    if (__CFADD__(v42, v39))
    {
      goto LABEL_50;
    }

    *(v5 + 20) = v43;
    v44 = v37 + v39;
    if (__OFADD__(v37, v39))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v45 = sub_1002F178C(0, 0xE000000000000000, v5 + 8, v43);
    if (v46)
    {
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v43);
    }

    v48 = *(v5 + 20);
    LODWORD(v15) = v48 + v45;
    if (__CFADD__(v48, v45))
    {
      goto LABEL_52;
    }

    *(v5 + 20) = v15;
    v49 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v50 = __OFADD__(v20, v49);
    v16 = v20 + v49;
    if (v50)
    {
LABEL_54:
      __break(1u);
      return;
    }
  }

  v51 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
    goto LABEL_38;
  }

  v52 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v15);
  if (v53)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v15);
  }

  v55 = *(v5 + 20);
  v33 = __CFADD__(v55, v52);
  v56 = v55 + v52;
  if (v33)
  {
    goto LABEL_39;
  }

  *(v5 + 20) = v56;
  v57 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100441F24(a2);
  v50 = __OFADD__(v57, v58);
  v59 = v57 + v58;
  if (v50)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = *(v5 + 20);
  v61 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v60);
  if (v62)
  {
    v63._countAndFlagsBits = 32;
    v63._object = 0xE100000000000000;
    v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v60);
  }

  v64 = *(v5 + 20);
  v33 = __CFADD__(v64, v61);
  v65 = v64 + v61;
  if (v33)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v65;
  if (__OFADD__(v59, v61))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__OFADD__(v59 + v61, sub_1003E6898(a4)))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

void sub_1003D42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 20);
  v10 = sub_1002F178C(0x444154454D544553uLL, 0xEC00000020415441, v5 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544553;
    v12._object = 0xEC00000020415441;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v16;
  sub_100441F24(a1);
  v18 = __OFADD__(v13, v17);
  v19 = v13 + v17;
  if (v18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v15 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  v26 = v19 + v21;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1003E6AB8(a3, a4, a5);
  if (__OFADD__(v26, v27))
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1003D4430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  v8 = sub_1002F178C(0x59454B5445534552uLL, 0xE800000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x59454B5445534552;
    v10._object = 0xE800000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 20);
  v13 = (v12 + v8);
  if (__CFADD__(v12, v8))
  {
    goto LABEL_27;
  }

  *(v3 + 20) = v13;
  if (!a1)
  {
    v30 = 0;
    goto LABEL_23;
  }

  v14 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v3 + 20);
  v19 = __CFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v3 + 20) = v20;
  sub_100441F24(a1);
  v22 = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = a3;
  v23 = a3[2];
  if (v23)
  {
    v24 = *(v3 + 20);
    v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v24);
    if (v25)
    {
      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
    }

    v27 = v21;
    v28 = *(v4 + 20);
    v19 = __CFADD__(v28, v21);
    v29 = v28 + v21;
    if (v19)
    {
      goto LABEL_33;
    }

    *(v4 + 20) = v29;
  }

  else
  {
    v27 = 0;
  }

  __chkstk_darwin(v21);
  v41[2] = sub_1003C40B8;
  v41[3] = 0;
  v41[4] = v4;
  v41[5] = &v42;
  v41[6] = 32;
  v41[7] = 0xE100000000000000;
  v31 = sub_1004594A4(0, sub_1003DACD4, v41, a3);
  v32 = v27 + v31;
  if (__OFADD__(v27, v31))
  {
    goto LABEL_31;
  }

  if (!v23)
  {
    v39 = v27 + v31;
    goto LABEL_22;
  }

  v33 = *(v4 + 20);
  v34 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v33);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = *(v4 + 20);
  v19 = __CFADD__(v37, v34);
  v38 = v37 + v34;
  if (v19)
  {
    goto LABEL_34;
  }

  *(v4 + 20) = v38;
  v39 = v32 + v34;
  if (__OFADD__(v32, v34))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v40 = __OFADD__(v22, v39);
  v30 = v22 + v39;
  if (v40)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

LABEL_23:
  if (__OFADD__(v11, v30))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_1003D468C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x55414C52554E4547uLL, 0xEA00000000004854, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x55414C52554E4547;
    v7._object = 0xEA00000000004854;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003D4DEC;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100452734(0, sub_1003DACF8, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4874(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x48435445464C5255uLL, 0xE800000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435445464C5255;
    v7._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003D4D5C;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1004520C0(0, sub_1003DAD1C, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

char *sub_1003D4A54(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v20 = 0x4843544142444955;
  v21 = 0xEB00000000205345;
  v22._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v22);

  v9 = *(v4 + 20);
  v10 = sub_1002F178C(0x4843544142444955uLL, 0xEB00000000205345, v5 + 8, *(v5 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x4843544142444955;
    v12._object = 0xEB00000000205345;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  *(v5 + 20) = v17;
  if (a4)
  {
    v18 = 0;
  }

  else
  {
    v20 = a2;
    v21 = a3;
    v18 = sub_1003D5084(&v20, v5);
  }

  v19 = __OFADD__(v13, v18);
  result = &v18[v13];
  if (v19)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1003D4B78(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);

  v9 = sub_1002F178C(a1, a2, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;

  v14 = *(v3 + 20);
  v15 = (v14 + v12);
  if (__CFADD__(v14, v12))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v15;
  v31 = a3;
  v16 = *(a3 + 16);
  if (v16)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, (v14 + v12));
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  __chkstk_darwin(result);
  v30[2] = sub_1003D51E0;
  v30[3] = 0;
  v30[4] = v4;
  v30[5] = &v31;
  v30[6] = 0;
  v30[7] = 0xE000000000000000;
  result = sub_100452870(0, sub_1003DAD48, v30, a3);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
    goto LABEL_21;
  }

  if (!v16)
  {
    v29 = v19 + result;
    goto LABEL_16;
  }

  v24 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v21 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v21)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v12 + v29;
  if (__OFADD__(v12, v29))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4D5C(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    v6 = *(result + 20);
    v7 = *(result + 22);
    if (v5 - (v7 | (v6 << 8)) >= v4)
    {
      v18 = v1;
      v19 = v2;
      v10 = *result;
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = v3;
      v17 = v4;

      sub_1003E0BCC(&v10);
      v9 = v8;
      sub_1003A52D0(&v10);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D4DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_100487790(v3);
}

uint64_t sub_1003D4E50(unint64_t *a1, _DWORD *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (v3 == 254)
  {
LABEL_8:
    v10 = v2[5];
    v2 += 5;
    v9 = v10;
    result = sub_1002F178C(0x2D4C414943455053uLL, 0xEB00000000455355, (v2 - 3), v10);
    if (v11)
    {
      v12._countAndFlagsBits = 0x2D4C414943455053;
      v12._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_11:
      *v2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v3 == 255)
  {
    v2 = a2 + 5;
    v4 = a2[5];
    result = sub_1002F178C(0x45544F4D4552uLL, 0xE600000000000000, (a2 + 2), v4);
    if (v6)
    {
      v7._countAndFlagsBits = 0x45544F4D4552;
      v7._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v17 = *a1;
  v16 = a1[1];
  if (v3)
  {
    result = sub_100462978(*a1, v16, a1[2], a1[3]);
  }

  else
  {
    v18 = a2[5];
    result = sub_1002F178C(*a1, v16, (a2 + 2), v18);
    if (v19)
    {
      v20._countAndFlagsBits = v17;
      v20._object = v16;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = v2[5];
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v2[5] = v23;
  }

  if (HIBYTE(v15) != 255)
  {
    v24 = result;
    v25 = v2[5];
    sub_1003A30E8(v13, v14, v15, HIBYTE(v15) & 1);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, (v2 + 2), v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = v2[5];
    v22 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (v22)
    {
      goto LABEL_27;
    }

    v2[5] = v29;
    v30 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v31 = sub_100462BEC(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) & 1) << 56));
    sub_1003A3390(v13, v14, v15);
    result = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_29:
      __break(1u);
    }
  }

  return result;
}

char *sub_1003D5084(char *result, uint64_t a2)
{
  v2 = *result;
  if ((*result - 0x100000000) < 0xFFFFFFFF00000001)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(result + 1);
  if (v3 - 0x100000000 < 0xFFFFFFFF00000001)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < v2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(a2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, a2 + 8, v5);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = result;
  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_21;
  }

  *(a2 + 20) = v11;
  result = sub_10049FCFC(v2);
  v12 = result;
  if (v2 >= v3)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v13 = *(a2 + 20);
  result = sub_1002F178C(0x3AuLL, 0xE100000000000000, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_24;
  }

  *(a2 + 20) = v18;
  result = sub_10049FCFC(v3);
  v19 = &result[v16];
  if (__OFADD__(v16, result))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  v20 = __OFADD__(v12, v19);
  v21 = &v19[v12];
  if (v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = &v21[v8];
  if (__OFADD__(v8, v21))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D51E0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_1003B1E70(result, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  }

  if (HIDWORD(v3) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v3) > v4 - (BYTE6(v4) | (WORD2(v4) << 8)))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7[0] = result & 0x7FFFFFFFFFFFFFFFLL;
  v7[1] = v3;
  v8 = v4;
  v9 = WORD2(v4);
  v10 = BYTE6(v4);
  v11 = v3;
  v12 = HIDWORD(v3);

  sub_1003E0BCC(v7);
  v6 = v5;
  sub_1003A52D0(v7);
  return v6;
}

unint64_t sub_1003D52A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  __chkstk_darwin(v7);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DABD4(a1, v9, type metadata accessor for StoreModifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100025FDC(v9, v6, &qword_1005DBCA8, &unk_100504BF0);
    v10 = sub_10049EB14(v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    return v10;
  }

  v12 = *v9;
  v13 = *(a2 + 20);
  result = sub_1002F178C(0x45474E4148434E55uLL, 0xEF2045434E495344, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0x45474E4148434E55;
    v15._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v18;
  v29[0] = v12;
  v19 = sub_1004A6CE4();
  v21 = v20;
  v22 = sub_1002F178C(v19, v20, a2 + 8, v18);
  if (v23)
  {
    v24._countAndFlagsBits = v19;
    v24._object = v21;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
  }

  v25 = v22;

  v26 = *(a2 + 20);
  v27 = __CFADD__(v26, v25);
  v28 = v26 + v25;
  if (v27)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v28;
  result = v16 + v25;
  if (__OFADD__(v16, v25))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Command.uidBatches(batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 1;
  type metadata accessor for Command(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_1003D557C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v26[0] = a3;
  v26[1] = a4;
  v27 = a2;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v7 - 8);
  v9 = v26 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  sub_10000E268(a1, v9, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    v20 = 1;
  }

  else
  {
    sub_100025FDC(v9, v16, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v16, v12, &qword_1005CD1D0, &unk_1004CF2C0);
    v20 = 0;
  }

  v21 = *(v14 + 56);
  v21(v12, v20, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100025F40(v12, &qword_1005CD518, &qword_1004CF2F0);
    v22 = type metadata accessor for Command(0);
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  else
  {
    sub_100025FDC(v12, v19, &qword_1005CD1D0, &unk_1004CF2C0);
    v24 = &a5[*(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48)];
    sub_100025FDC(v19, a5, &qword_1005CD1D0, &unk_1004CF2C0);
    v21(a5, 0, 1, v13);
    *v24 = v27;
    *(v24 + 2) = v26[0];
    v25 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a5, 0, 1, v25);
  }

  return result;
}

double static Command.uidFetch(messages:attributes:modifiers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_10000E268(a1, v8, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
    v19 = 1;
  }

  else
  {
    sub_100025FDC(v8, v15, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v15, v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v19 = 0;
  }

  v20 = *(v13 + 56);
  v20(v11, v19, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
    v21 = type metadata accessor for Command(0);
    (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
  }

  else
  {
    sub_100025FDC(v11, v18, &qword_1005CD1D0, &unk_1004CF2C0);
    v23 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    sub_100025FDC(v18, a4, &qword_1005CD1D0, &unk_1004CF2C0);
    v20(a4, 0, 1, v12);
    v26 = v29;
    *&a4[v24] = v28;
    *&a4[v25] = v26;
    v27 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
  }

  return result;
}

double static Command.uidStore(messages:modifiers:data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  sub_10000E268(a1, v9, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    v20 = 1;
  }

  else
  {
    sub_100025FDC(v9, v16, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v16, v12, &qword_1005CD1D0, &unk_1004CF2C0);
    v20 = 0;
  }

  v21 = *(v14 + 56);
  v21(v12, v20, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100025F40(v12, &qword_1005CD518, &qword_1004CF2F0);
    v22 = type metadata accessor for Command(0);
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  else
  {
    sub_100025FDC(v12, v19, &qword_1005CD1D0, &unk_1004CF2C0);
    v24 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
    v25 = *(v24 + 48);
    v26 = &a5[*(v24 + 64)];
    sub_100025FDC(v19, a5, &qword_1005CD1D0, &unk_1004CF2C0);
    v21(a5, 0, 1, v13);
    v27 = v32;
    *&a5[v25] = v31;
    v28 = v33;
    *v26 = v27;
    v26[1] = v28;
    v29 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(a5, 0, 1, v29);

    return IndexingDiagnostics.unindexed.getter(v27, v28);
  }

  return result;
}

uint64_t static Command.uidExpunge(messages:mailbox:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10000E268(a1, v6, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v17 = 1;
  }

  else
  {
    sub_100025FDC(v6, v13, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v13, v9, &qword_1005CD1D0, &unk_1004CF2C0);
    v17 = 0;
  }

  v18 = *(v11 + 56);
  v18(v9, v17, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
    v19 = type metadata accessor for Command(0);
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_100025FDC(v9, v16, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v16, a2, &qword_1005CD1D0, &unk_1004CF2C0);
    v18(a2, 0, 1, v10);
    v21 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_1003D6384()
{
  v0 = sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  v4 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v20 = v5;
  (*(v5 + 16))(v7, v10, v4);
  sub_1003DAA44(&qword_1005DC2F8, &protocol conformance descriptor for RangeSet<A>.Ranges);
  sub_1004A5AC4();
  v11 = *(v1 + 44);
  sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
  v12 = 0;
  while (1)
  {
    sub_1004A5EA4();
    if (*&v3[v11] == v21[0])
    {
      break;
    }

    v13 = sub_1004A5F34();
    v16 = *v14;
    v15 = v14[1];
    v13(v21, 0);
    sub_1004A5EB4();
    v17 = __OFADD__(v12, v15 - v16);
    v12 += v15 - v16;
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  sub_100025F40(v3, &qword_1005DC2F0, &qword_100500E20);
  (*(v20 + 8))(v10, v4);
  return v12;
}

uint64_t sub_1003D6610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + 64);
  v12 = *a6;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v14 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v14;
  v17 = v11;
  result = a8(v10, v16, a3, a4, a5, v12);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1003D6670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100491C4C(*a1, *a2, a2[1], a2[2], a2[3], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003D66D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100494CF4(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003D673C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *a6;
  v20[0] = *a2;
  v20[1] = v12;
  v20[2] = *(a2 + 16);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result = sub_100491DBC(v11, v20, a3, a4, a5, v18, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1003D67AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100491F40(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v513 = a1;
  v514 = a2;
  v2 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v2 - 8);
  v472 = &v471 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v479 = &v471 - v5;
  __chkstk_darwin(v6);
  v477 = &v471 - v7;
  __chkstk_darwin(v8);
  v476 = &v471 - v9;
  __chkstk_darwin(v10);
  v475 = &v471 - v11;
  v12 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v12 - 8);
  v474 = &v471 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v478 = &v471 - v15;
  __chkstk_darwin(v16);
  v473 = &v471 - v17;
  __chkstk_darwin(v18);
  v471 = &v471 - v19;
  v512 = type metadata accessor for Command(0);
  __chkstk_darwin(v512);
  v510 = &v471 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v509 = &v471 - v22;
  __chkstk_darwin(v23);
  v508 = &v471 - v24;
  __chkstk_darwin(v25);
  v507 = (&v471 - v26);
  __chkstk_darwin(v27);
  v506 = &v471 - v28;
  __chkstk_darwin(v29);
  v503 = (&v471 - v30);
  __chkstk_darwin(v31);
  v505 = &v471 - v32;
  __chkstk_darwin(v33);
  v500 = &v471 - v34;
  __chkstk_darwin(v35);
  v502 = &v471 - v36;
  __chkstk_darwin(v37);
  v498 = &v471 - v38;
  __chkstk_darwin(v39);
  v497 = &v471 - v40;
  __chkstk_darwin(v41);
  v501 = &v471 - v42;
  __chkstk_darwin(v43);
  v504 = &v471 - v44;
  __chkstk_darwin(v45);
  v494 = (&v471 - v46);
  __chkstk_darwin(v47);
  v499 = &v471 - v48;
  __chkstk_darwin(v49);
  v496 = &v471 - v50;
  __chkstk_darwin(v51);
  v495 = &v471 - v52;
  __chkstk_darwin(v53);
  v490 = &v471 - v54;
  __chkstk_darwin(v55);
  v488 = &v471 - v56;
  __chkstk_darwin(v57);
  v493 = &v471 - v58;
  __chkstk_darwin(v59);
  v487 = (&v471 - v60);
  __chkstk_darwin(v61);
  v492 = &v471 - v62;
  __chkstk_darwin(v63);
  v491 = &v471 - v64;
  __chkstk_darwin(v65);
  v489 = &v471 - v66;
  __chkstk_darwin(v67);
  v486 = (&v471 - v68);
  __chkstk_darwin(v69);
  v485 = (&v471 - v70);
  __chkstk_darwin(v71);
  v484 = &v471 - v72;
  __chkstk_darwin(v73);
  v483 = &v471 - v74;
  __chkstk_darwin(v75);
  v482 = &v471 - v76;
  __chkstk_darwin(v77);
  v481 = &v471 - v78;
  __chkstk_darwin(v79);
  v480 = &v471 - v80;
  __chkstk_darwin(v81);
  v83 = &v471 - v82;
  __chkstk_darwin(v84);
  v86 = &v471 - v85;
  __chkstk_darwin(v87);
  v89 = &v471 - v88;
  __chkstk_darwin(v90);
  v511 = &v471 - v91;
  __chkstk_darwin(v92);
  v94 = &v471 - v93;
  __chkstk_darwin(v95);
  v97 = &v471 - v96;
  __chkstk_darwin(v98);
  v100 = &v471 - v99;
  v101 = sub_10000C9C0(&qword_1005DC310, &qword_100500E28);
  __chkstk_darwin(v101 - 8);
  v103 = &v471 - v102;
  v105 = &v471 + *(v104 + 56) - v102;
  sub_1003DABD4(v513, &v471 - v102, type metadata accessor for Command);
  v106 = v514;
  v514 = v105;
  sub_1003DABD4(v106, v105, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1003DABD4(v103, v97, type metadata accessor for Command);
      v222 = *v97;
      v223 = v514;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_86;
      }

      v294 = *(v97 + 2);
      goto LABEL_170;
    case 2u:
      sub_1003DABD4(v103, v94, type metadata accessor for Command);
      v244 = *v94;
      v245 = *(v94 + 2);
      v246 = v514;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 3u:
      v513 = v103;
      v266 = v511;
      sub_1003DABD4(v103, v511, type metadata accessor for Command);
      v267 = *(v266 + 48);
      v544 = *(v266 + 32);
      v545 = v267;
      v268 = *(v266 + 72);
      v546 = *(v266 + 64);
      v269 = *(v266 + 16);
      v542 = *v266;
      v543 = v269;
      v270 = *(v266 + 80);
      v272 = *(v266 + 88);
      v271 = *(v266 + 96);
      v273 = *(v266 + 104) | ((*(v266 + 108) | (*(v266 + 110) << 16)) << 32);
      v274 = *(v266 + 111);
      v275 = *(v266 + 112);
      v276 = v514;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_1003A30F4(v272, v271, v273, v274);

        sub_100025F40(&v542, &qword_1005DC128, &qword_100500D08);
        v103 = v513;
        goto LABEL_210;
      }

      v512 = v275;
      v277 = *(v276 + 16);
      v278 = *(v276 + 48);
      v539 = *(v276 + 32);
      v540 = v278;
      v279 = *(v276 + 16);
      v538[0] = *v276;
      v538[1] = v279;
      v280 = *(v266 + 16);
      v536 = *v266;
      v537 = v280;
      v534 = *(v266 + 40);
      v281 = *(v276 + 64);
      v510 = *(v276 + 72);
      v541 = v281;
      v282 = *(v276 + 80);
      v283 = *(v276 + 88);
      v284 = *(v276 + 96);
      v285 = *(v276 + 104) | ((*(v276 + 108) | (*(v276 + 110) << 16)) << 32);
      v286 = *(v276 + 111);
      v287 = *(v276 + 112);
      v535 = *(v266 + 56);
      v288 = v544;
      v289 = v546;
      v530 = v538[0];
      v531 = v277;
      v290 = *(v276 + 48);
      v532 = v539;
      v533 = v290;
      v291 = v281;
      if (!v546)
      {
        if (!v281)
        {
          v504 = v282;
          LODWORD(v505) = v286;
          v507 = v283;
          v508 = v284;
          v509 = v285;
          v506 = v287;
          v459 = *(v511 + 16);
          v521 = *v511;
          v522 = v459;
          *&v523[0] = v544;
          *(v523 + 8) = *(v511 + 40);
          *(&v523[1] + 1) = *(v511 + 56);
          v524 = 0;
          sub_10000E268(&v542, &v515, &qword_1005DC128, &qword_100500D08);
          sub_10000E268(v538, &v515, &qword_1005DC128, &qword_100500D08);
          sub_100025F40(&v521, &qword_1005DC128, &qword_100500D08);
          goto LABEL_302;
        }

LABEL_255:
        sub_1003A30F4(v283, v284, v285, v286);
        sub_1003A30F4(v272, v271, v273, v274);

        v521 = v536;
        v522 = v537;
        *(v523 + 8) = v534;
        v525 = v530;
        v526 = v531;
        v527 = v532;
        *&v523[0] = v288;
        *(&v523[1] + 1) = v535;
        v524 = v289;
        v528 = v533;
        v529 = v291;
        v451 = &unk_1005DC318;
        v452 = &unk_100500E30;
        v453 = &v521;
LABEL_256:
        sub_100025F40(v453, v451, v452);
        goto LABEL_311;
      }

      if (!v281)
      {
        goto LABEL_255;
      }

      v292 = *(v514 + 16);
      v521 = *v514;
      v522 = v292;
      v293 = *(v514 + 48);
      v523[0] = *(v514 + 32);
      v523[1] = v293;
      v524 = v281;
      v506 = v287;
      v507 = v283;
      v508 = v284;
      v509 = v285;
      LODWORD(v505) = v286;
      if (v544 == 0xFF)
      {
        if (LOBYTE(v523[0]) == 0xFF)
        {
          v504 = v282;
          sub_10000E268(&v542, &v515, &qword_1005DC128, &qword_100500D08);
          sub_10000E268(v538, &v515, &qword_1005DC128, &qword_100500D08);
          goto LABEL_301;
        }

        goto LABEL_287;
      }

      v457 = *(v511 + 16);
      v547[0] = *v511;
      v547[1] = v457;
      v549 = *(v511 + 40);
      v458 = *(v511 + 56);
      v548 = v544;
      v550 = v458;
      if (LOBYTE(v523[0]) == 0xFF)
      {
LABEL_287:
        sub_10000E268(&v542, &v515, &qword_1005DC128, &qword_100500D08);
        sub_10000E268(v538, &v515, &qword_1005DC128, &qword_100500D08);
LABEL_288:
        sub_100025F40(&v521, &qword_1005DC128, &qword_100500D08);
        v515 = v536;
        v516 = v537;
        v517 = v288;
        v518 = v534;
        v519 = v535;
        v520 = v289;
        sub_100025F40(&v515, &qword_1005DC128, &qword_100500D08);
LABEL_308:
        sub_100025F40(&v542, &qword_1005DC128, &qword_100500D08);
        sub_100025F40(v538, &qword_1005DC128, &qword_100500D08);
        sub_1003A30F4(v507, v508, v509, v505);
        sub_1003A30F4(v272, v271, v273, v274);

        goto LABEL_309;
      }

      v504 = v282;
      v461 = *(v514 + 16);
      v551[0] = *v514;
      v551[1] = v461;
      v553 = *(v514 + 40);
      v462 = *(v514 + 56);
      v552 = *&v523[0];
      v554 = v462;
      sub_10000E268(&v542, &v515, &qword_1005DC128, &qword_100500D08);
      sub_10000E268(v538, &v515, &qword_1005DC128, &qword_100500D08);
      if (!sub_1004369D8(v547, v551))
      {
        goto LABEL_288;
      }

LABEL_301:
      v463 = sub_1003988F4(v289, v291);
      sub_100025F40(&v521, &qword_1005DC128, &qword_100500D08);
      v515 = v536;
      v516 = v537;
      v517 = v288;
      v518 = v534;
      v519 = v535;
      v520 = v289;
      sub_100025F40(&v515, &qword_1005DC128, &qword_100500D08);
      if ((v463 & 1) == 0)
      {
        goto LABEL_308;
      }

LABEL_302:
      if ((v270 | (v270 << 32)) != (v504 | (v504 << 32)))
      {
        goto LABEL_308;
      }

      v464 = sub_1000FFC98(v268, v510);

      if ((v464 & 1) == 0)
      {
        sub_100025F40(&v542, &qword_1005DC128, &qword_100500D08);
        sub_100025F40(v538, &qword_1005DC128, &qword_100500D08);
        sub_1003A30F4(v507, v508, v509, v505);
        sub_1003A30F4(v272, v271, v273, v274);
LABEL_309:

LABEL_310:

        goto LABEL_311;
      }

      if (v274)
      {
        v465 = v512;
        v466 = v505;
        if (v505)
        {
          v467 = v507;
          if (sub_1003A370C())
          {
            goto LABEL_337;
          }

          goto LABEL_332;
        }

        goto LABEL_338;
      }

      v465 = v512;
      v466 = v505;
      if (v505)
      {
LABEL_332:
        v470 = 1;
LABEL_339:

        sub_1003A30F4(v507, v508, v509, v470);

        sub_1003A30F4(v272, v271, v273, v274);
        sub_100025F40(v538, &qword_1005DC128, &qword_100500D08);
        v453 = &v542;
        v451 = &qword_1005DC128;
        v452 = &qword_100500D08;
        goto LABEL_256;
      }

      v467 = v507;
      if (!sub_10020FBD0(v272, v271, v273 & 0xFFFFFFFFFFFFFFLL, v507, v508, v509 & 0xFFFFFFFFFFFFFFLL))
      {
LABEL_338:
        v470 = 0;
        goto LABEL_339;
      }

LABEL_337:
      v132 = sub_1002F3208(v465, v506);
      sub_1003A30F4(v467, v508, v509, v466);
      sub_1003A30F4(v272, v271, v273, v274);
      sub_100025F40(v538, &qword_1005DC128, &qword_100500D08);
      sub_100025F40(&v542, &qword_1005DC128, &qword_100500D08);

LABEL_318:

      v233 = v513;
LABEL_283:
      sub_1003DADA0(v233, type metadata accessor for Command);
      return v132 & 1;
    case 4u:
      v513 = v103;
      sub_1003DABD4(v103, v89, type metadata accessor for Command);
      v184 = *v89;
      v183 = *(v89 + 1);
      v511 = *(v89 + 4);
      v185 = *(v89 + 3);
      v186 = *(v89 + 4);
      v187 = *(v89 + 10) | ((*(v89 + 22) | (v89[46] << 16)) << 32);
      v188 = v89[47];
      v189 = *(v89 + 6);
      v190 = v514;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1003A30F4(v185, v186, v187, v188);

        goto LABEL_203;
      }

      v506 = v183;
      v507 = v185;
      LODWORD(v508) = v188;
      v509 = v186;
      v510 = v187;
      v512 = v189;
      v192 = *v190;
      v191 = *(v190 + 8);
      v505 = *(v190 + 16);
      v193 = *(v190 + 24);
      v194 = *(v190 + 32);
      v195 = *(v190 + 40) | ((*(v190 + 44) | (*(v190 + 46) << 16)) << 32);
      v196 = *(v190 + 47);
      v197 = *(v190 + 48);
      v198 = sub_10039AE70(v184, v192);

      if ((v198 & 1) == 0)
      {

        sub_1003A30F4(v193, v194, v195, v196);

        sub_1003A30F4(v507, v509, v510, v508);
        goto LABEL_310;
      }

      v514 = v197;
      v199 = v196;
      v200 = v195;
      if ((v511 | (v511 << 32)) != (v505 | (v505 << 32)))
      {
        sub_1003A30F4(v193, v194, v195, v196);
        sub_1003A30F4(v507, v509, v510, v508);

        goto LABEL_309;
      }

      v201 = sub_1000FFC98(v506, v191);

      v202 = v194;
      if ((v201 & 1) == 0)
      {
        sub_1003A30F4(v193, v194, v195, v196);
        sub_1003A30F4(v507, v509, v510, v508);
        goto LABEL_309;
      }

      v203 = v193;
      v204 = v509;
      v205 = v510;
      v206 = v508;
      v207 = v507;
      if (v508)
      {
        v208 = v512;
        if (v199)
        {
          v209 = v203;
          if ((sub_1003A370C() & 1) == 0)
          {
            v210 = 1;
LABEL_334:
            v205 = v510;
            goto LABEL_335;
          }

          goto LABEL_328;
        }

        v210 = 0;
      }

      else
      {
        v208 = v512;
        if ((v199 & 1) == 0)
        {
          v209 = v203;
          if (!sub_10020FBD0(v507, v509, v510 & 0xFFFFFFFFFFFFFFLL, v203, v202, v200 & 0xFFFFFFFFFFFFFFLL))
          {
            v210 = 0;
            goto LABEL_334;
          }

LABEL_328:
          v512 = v202;
          v132 = sub_1002F3208(v208, v514);
          sub_1003A30F4(v209, v512, v200, v199);
          sub_1003A30F4(v207, v204, v510, v206);
          goto LABEL_317;
        }

        v210 = 1;
      }

LABEL_335:

      sub_1003A30F4(v203, v202, v200, v210);

      sub_1003A30F4(v207, v204, v205, v206);
LABEL_311:
      v450 = v513;
LABEL_312:
      sub_1003DADA0(v450, type metadata accessor for Command);
LABEL_313:
      v132 = 0;
      return v132 & 1;
    case 5u:
      v324 = v103;
      sub_1003DABD4(v103, v86, type metadata accessor for Command);
      v325 = *v86;
      v326 = *(v86 + 2);
      v513 = *(v86 + 3);
      v327 = *(v86 + 8);
      v328 = *(v86 + 18);
      v329 = v86[38];
      v330 = v514;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v103 = v324;
        goto LABEL_210;
      }

      v331 = *(v86 + 2);
      v332 = *v330;
      v333 = *(v330 + 16);
      if ((v331 | (v331 << 32)) == (*(v330 + 8) | (*(v330 + 8) << 32)))
      {
        v334 = *(v330 + 24);
        v511 = *(v330 + 32);
        v512 = v334;
        v510 = *(v330 + 36);
        v514 = *(v330 + 38);
        v335 = sub_1000FFC98(v325, v332);

        if (v335)
        {
          v132 = sub_10020FBD0(v326, v513, v327 | (v328 << 32) | (v329 << 48), v333, v512, v511 | (v510 << 32) | (v514 << 48));

          v233 = v324;
          goto LABEL_283;
        }
      }

      else
      {
      }

      v450 = v324;
      goto LABEL_312;
    case 6u:
      sub_1003DABD4(v103, v83, type metadata accessor for Command);
      v345 = *v83;
      v346 = *(v83 + 2);
      v347 = *(v83 + 6);
      v348 = *(v83 + 4);
      v349 = *(v83 + 5);
      v350 = *(v83 + 6);
      v351 = v514;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_210;
      }

      v511 = v348;
      v513 = v103;
      v352 = *(v83 + 2);
      v353 = *v351;
      v354 = *(v351 + 8);
      v355 = *(v351 + 16);
      v356 = *(v351 + 32);
      v512 = *(v351 + 40);
      v509 = *(v351 + 48);
      v510 = v356;
      if ((v352 | (v352 << 32)) == (v354 | (v354 << 32)))
      {
        v357 = *(v351 + 24);
        v358 = sub_1000FFC98(v345, v353);

        if ((v358 & 1) != 0 && (v347 | (v347 << 32)) == (v357 | (v357 << 32)))
        {
          v359 = sub_1000FFC98(v346, v355);

          if (v359)
          {
            v360 = sub_10020FB40(v349, v512);
            v361 = v513;
            if (v360)
            {
              sub_10039FBE4(v350, v509);
              v363 = v362;

              if (v363)
              {
                v308 = v361;
                goto LABEL_270;
              }
            }

            else
            {
            }

            v450 = v361;
            goto LABEL_312;
          }

LABEL_241:

          goto LABEL_311;
        }
      }

      else
      {
      }

      goto LABEL_241;
    case 7u:
      v94 = v480;
      sub_1003DABD4(v103, v480, type metadata accessor for Command);
      v244 = *v94;
      v245 = *(v94 + 2);
      v246 = v514;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_85;
      }

LABEL_71:
      v247 = *(v94 + 2);
      v248 = *v246;
      v249 = *(v246 + 8);
      v250 = *(v246 + 16);
      if ((v247 | (v247 << 32)) != (v249 | (v249 << 32)))
      {
        goto LABEL_181;
      }

      v251 = sub_1000FFC98(v244, v248);

      if ((v251 & 1) == 0)
      {
        goto LABEL_276;
      }

      v114 = sub_100399F0C(v245, v250);
      goto LABEL_280;
    case 8u:
      v372 = v481;
      sub_1003DABD4(v103, v481, type metadata accessor for Command);
      v373 = *v372;
      v374 = *(v372 + 16);
      v375 = v514;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_185;
      }

      v376 = *(v372 + 8);
      v377 = *v375;
      v378 = *(v375 + 8);
      v379 = *(v375 + 16);
      if ((v376 | (v376 << 32)) != (v378 | (v378 << 32)))
      {

        goto LABEL_276;
      }

      v380 = sub_1000FFC98(v373, v377);

      if ((v380 & 1) == 0)
      {
        goto LABEL_276;
      }

      v132 = sub_1002F32E8(v374, v379);

      goto LABEL_281;
    case 9u:
      v221 = v482;
      sub_1003DABD4(v103, v482, type metadata accessor for Command);
      v222 = *v221;
      v223 = v514;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xAu:
      v221 = v483;
      sub_1003DABD4(v103, v483, type metadata accessor for Command);
      v222 = *v221;
      v223 = v514;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xBu:
      v513 = v103;
      v171 = v484;
      sub_1003DABD4(v103, v484, type metadata accessor for Command);
      v173 = *v171;
      v172 = *(v171 + 8);
      v174 = *(v171 + 16);
      v511 = *(v171 + 24);
      v175 = *(v171 + 38);
      v176 = *(v171 + 36);
      v177 = *(v171 + 32);
      v178 = v514;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v103 = v513;
        goto LABEL_210;
      }

      v179 = *v178;
      v180 = *(v178 + 8);
      v181 = *(v178 + 16);
      v512 = *(v178 + 24);
      LODWORD(v510) = *(v178 + 38);
      LODWORD(v509) = *(v178 + 36);
      v182 = *(v178 + 32);
      if (v173 == v179 && v172 == v180)
      {
      }

      else
      {
        v441 = sub_1004A6D34();

        if ((v441 & 1) == 0)
        {
          goto LABEL_258;
        }
      }

      if (v174)
      {
        if (v181)
        {
          v442 = v182 | ((v509 | (v510 << 16)) << 32);

          v444 = sub_10020FBD0(v443, v511, (v177 | ((v176 | (v175 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v181, v512, v442 & 0xFFFFFFFFFFFFFFLL);

          if (!v444)
          {
            goto LABEL_311;
          }

LABEL_259:
          v308 = v513;
LABEL_270:
          sub_1003DADA0(v308, type metadata accessor for Command);
          v132 = 1;
          return v132 & 1;
        }
      }

      else if (!v181)
      {
        goto LABEL_259;
      }

LABEL_258:

      goto LABEL_311;
    case 0xCu:
      v211 = v485;
      sub_1003DABD4(v103, v485, type metadata accessor for Command);
      v213 = *v211;
      v212 = v211[1];
      v215 = v211[2];
      v214 = v211[3];
      v216 = v514;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_85;
      }

      v217 = *v216;
      v218 = v216[1];
      v220 = v216[2];
      v219 = v216[3];
      if (v213 == v217 && v212 == v218)
      {
      }

      else
      {
        v445 = sub_1004A6D34();

        if ((v445 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      if (v215 == v220 && v214 == v219)
      {
LABEL_19:

        goto LABEL_269;
      }

      v438 = sub_1004A6D34();

LABEL_216:

      if ((v438 & 1) == 0)
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0xDu:
      v342 = v486;
      sub_1003DABD4(v103, v486, type metadata accessor for Command);
      v343 = *v342;
      v344 = v514;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_86;
      }

      v114 = sub_1001CE84C(v343, *v344);
      goto LABEL_280;
    case 0xEu:
      v155 = v489;
      sub_1003DABD4(v103, v489, type metadata accessor for Command);
      v156 = *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v157 = *(v155 + v156);
      v158 = *(v155 + v156 + 8);
      v159 = v514;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_130;
      }

      v160 = *(v159 + v156);
      v513 = *(v159 + v156 + 8);
      v161 = v159;
      v162 = v471;
      goto LABEL_127;
    case 0xFu:
      v252 = v491;
      sub_1003DABD4(v103, v491, type metadata accessor for Command);
      v253 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v254 = *(v253 + 48);
      v255 = *(v252 + v254);
      v256 = *(v253 + 64);
      v257 = *(v252 + v256);
      v258 = v514;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        v370 = &qword_1005CDA78;
        v371 = &unk_1004CF7E0;
        goto LABEL_208;
      }

      v513 = v257;
      v259 = *(v258 + v254);
      v260 = *(v258 + v256);
      v162 = v473;
      sub_100025FDC(v258, v473, &qword_1005CDA78, &unk_1004CF7E0);
      v261 = sub_100488D88(v252, v162);
      sub_100025F40(v252, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v261 & 1) == 0)
      {
        v448 = &qword_1005CDA78;
        v449 = &unk_1004CF7E0;
        goto LABEL_249;
      }

      v262 = sub_1002F2B00(v255, v259);

      if (v262)
      {
        v263 = v162;
        v132 = sub_10039B1CC(v513, v260);

        v264 = &qword_1005CDA78;
        v265 = &unk_1004CF7E0;
        goto LABEL_167;
      }

      v435 = &qword_1005CDA78;
      v436 = &unk_1004CF7E0;
      goto LABEL_275;
    case 0x10u:
      v136 = v492;
      sub_1003DABD4(v103, v492, type metadata accessor for Command);
      v137 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v138 = *(v137 + 48);
      v139 = *(v136 + v138);
      v140 = *(v137 + 64);
      v142 = *(v136 + v140);
      v141 = *(v136 + v140 + 8);
      v143 = v514;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_10027FF20(v142, v141);

        v370 = &qword_1005CDA78;
        v371 = &unk_1004CF7E0;
        goto LABEL_191;
      }

      v144 = *(v143 + v138);
      v145 = *(v143 + v140 + 8);
      v512 = *(v143 + v140);
      v513 = v103;
      v511 = v145;
      v146 = v478;
      sub_100025FDC(v143, v478, &qword_1005CDA78, &unk_1004CF7E0);
      v147 = sub_100488D88(v136, v146);
      sub_100025F40(v136, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v147 & 1) == 0)
      {
        v439 = &qword_1005CDA78;
        v440 = &unk_1004CF7E0;
        goto LABEL_231;
      }

      v148 = v511;
      v149 = v512;
      v150 = sub_10039B220(v139, v144);

      v151 = v513;
      if (v150)
      {
        v132 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v142, v141, v149, v148);
        sub_10027FF20(v142, v141);
        sub_10027FF20(v149, v148);
        v152 = &qword_1005CDA78;
        v153 = &unk_1004CF7E0;
        v154 = v478;
        goto LABEL_62;
      }

      v454 = &qword_1005CDA78;
      v455 = &unk_1004CF7E0;
      v456 = v478;
      goto LABEL_264;
    case 0x11u:
      v309 = v487;
      sub_1003DABD4(v103, v487, type metadata accessor for Command);
      v310 = *v309;
      v311 = v309[1];
      v313 = v309[2];
      v312 = v309[3];
      v314 = v514;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1000B37D8(v310);
        goto LABEL_210;
      }

      v513 = v103;
      v315 = *v314;
      v316 = v314[1];
      v318 = v314[2];
      v317 = v314[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v310, v315) & 1) == 0)
      {

        sub_1000B37D8(v315);
        sub_1000B37D8(v310);
        goto LABEL_311;
      }

      if (v313)
      {
        if (!v318)
        {

          sub_1000B37D8(v315);
          sub_1000B37D8(v310);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v311 == v316 && v313 == v318)
        {
        }

        else
        {
          v469 = sub_1004A6D34();

          if ((v469 & 1) == 0)
          {
            sub_1000B37D8(v315);
            sub_1000B37D8(v310);
LABEL_324:

LABEL_325:

            v450 = v513;
            goto LABEL_312;
          }
        }
      }

      else if (v318)
      {
        sub_1000B37D8(v315);
        sub_1000B37D8(v310);
        goto LABEL_293;
      }

      v132 = sub_1002F361C(v312, v317);
      sub_1000B37D8(v315);
      sub_1000B37D8(v310);
      goto LABEL_317;
    case 0x12u:
      v155 = v493;
      sub_1003DABD4(v103, v493, type metadata accessor for Command);
      v364 = *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v157 = *(v155 + v364);
      v158 = *(v155 + v364 + 8);
      v365 = v514;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_130:

        v370 = &qword_1005CDA78;
        v371 = &unk_1004CF7E0;
        goto LABEL_154;
      }

      v160 = *(v365 + v364);
      v513 = *(v365 + v364 + 8);
      v161 = v365;
      v162 = v474;
LABEL_127:
      sub_100025FDC(v161, v162, &qword_1005CDA78, &unk_1004CF7E0);
      v366 = sub_100488D88(v155, v162);
      sub_100025F40(v155, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v366 & 1) == 0)
      {
        v435 = &qword_1005CDA78;
        v436 = &unk_1004CF7E0;
        goto LABEL_275;
      }

      if ((v158 | (v158 << 32)) == (v513 | (v513 << 32)))
      {
        v367 = sub_1000FFC98(v157, v160);

        v368 = &qword_1005CDA78;
        v369 = &unk_1004CF7E0;
        goto LABEL_151;
      }

      v446 = &qword_1005CDA78;
      v447 = &unk_1004CF7E0;
      goto LABEL_246;
    case 0x13u:
      v400 = v488;
      sub_1003DABD4(v103, v488, type metadata accessor for Command);
      v401 = *(v400 + 8);
      v402 = *(v400 + 16);
      v403 = v514;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_196;
      }

      v404 = *(v403 + 8);
      v405 = *(v403 + 16);
      if (sub_10020FB40(v401, v404))
      {
        v406 = sub_10020FA9C(v402, v405);

        if (v406)
        {
          goto LABEL_269;
        }
      }

      else
      {
      }

      goto LABEL_278;
    case 0x14u:
      v319 = v490;
      sub_1003DABD4(v103, v490, type metadata accessor for Command);
      v321 = *(v319 + 8);
      v320 = *(v319 + 16);
      v322 = *(v319 + 24);
      v323 = v514;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_210;
      }

      if (*v319 != *v323)
      {
        goto LABEL_278;
      }

      if (v322)
      {
        if (*(v323 + 24))
        {
          goto LABEL_269;
        }

        goto LABEL_278;
      }

      if ((*(v323 + 24) & 1) != 0 || v321 != *(v323 + 8) || v320 != *(v323 + 16))
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0x15u:
      v155 = v495;
      sub_1003DABD4(v103, v495, type metadata accessor for Command);
      v336 = *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v337 = *(v155 + v336);
      v338 = *(v155 + v336 + 8);
      v339 = v514;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_153;
      }

      v340 = *(v339 + v336);
      v513 = *(v339 + v336 + 8);
      v341 = v339;
      v162 = v475;
      goto LABEL_148;
    case 0x16u:
      v155 = v496;
      sub_1003DABD4(v103, v496, type metadata accessor for Command);
      v396 = *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v337 = *(v155 + v396);
      v338 = *(v155 + v396 + 8);
      v397 = v514;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_153:

        v370 = &qword_1005CD1C0;
        v371 = &unk_1004CEC40;
LABEL_154:
        v399 = v155;
        goto LABEL_209;
      }

      v340 = *(v397 + v396);
      v513 = *(v397 + v396 + 8);
      v341 = v397;
      v162 = v476;
LABEL_148:
      sub_100025FDC(v341, v162, &qword_1005CD1C0, &unk_1004CEC40);
      v398 = sub_100488A9C(v155, v162);
      sub_100025F40(v155, &qword_1005CD1C0, &unk_1004CEC40);
      if ((v398 & 1) == 0)
      {
        v435 = &qword_1005CD1C0;
        v436 = &unk_1004CEC40;
        goto LABEL_275;
      }

      if ((v338 | (v338 << 32)) == (v513 | (v513 << 32)))
      {
        v367 = sub_1000FFC98(v337, v340);

        v368 = &qword_1005CD1C0;
        v369 = &unk_1004CEC40;
LABEL_151:
        sub_100025F40(v162, v368, v369);
        if (v367)
        {
LABEL_269:
          v308 = v103;
          goto LABEL_270;
        }
      }

      else
      {

        v446 = &qword_1005CD1C0;
        v447 = &unk_1004CEC40;
LABEL_246:
        sub_100025F40(v162, v446, v447);
      }

      goto LABEL_278;
    case 0x17u:
      v252 = v499;
      sub_1003DABD4(v103, v499, type metadata accessor for Command);
      v407 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
      v408 = *(v407 + 48);
      v409 = *(v252 + v408);
      v410 = *(v407 + 64);
      v411 = *(v252 + v410);
      v412 = v514;
      if (swift_getEnumCaseMultiPayload() != 23)
      {

LABEL_207:
        v370 = &qword_1005CD1C0;
        v371 = &unk_1004CEC40;
LABEL_208:
        v399 = v252;
        goto LABEL_209;
      }

      v513 = v411;
      v413 = *(v412 + v408);
      v414 = *(v412 + v410);
      v162 = v477;
      sub_100025FDC(v412, v477, &qword_1005CD1C0, &unk_1004CEC40);
      v415 = sub_100488A9C(v252, v162);
      sub_100025F40(v252, &qword_1005CD1C0, &unk_1004CEC40);
      if (v415)
      {
        v416 = sub_1002F2B00(v409, v413);

        if (v416)
        {
          v263 = v162;
          v132 = sub_10039B1CC(v513, v414);

          v264 = &qword_1005CD1C0;
          v265 = &unk_1004CEC40;
LABEL_167:
          sub_100025F40(v263, v264, v265);
          goto LABEL_282;
        }

        v435 = &qword_1005CD1C0;
        v436 = &unk_1004CEC40;
LABEL_275:
        sub_100025F40(v162, v435, v436);
      }

      else
      {
        v448 = &qword_1005CD1C0;
        v449 = &unk_1004CEC40;
LABEL_249:
        sub_100025F40(v162, v448, v449);
      }

      goto LABEL_276;
    case 0x18u:
      v234 = v494;
      sub_1003DABD4(v103, v494, type metadata accessor for Command);
      v235 = *v234;
      v236 = v234[1];
      v238 = v234[2];
      v237 = v234[3];
      v239 = v514;
      if (swift_getEnumCaseMultiPayload() != 24)
      {

        sub_1000B37D8(v235);
        goto LABEL_210;
      }

      v513 = v103;
      v240 = *v239;
      v241 = v239[1];
      v243 = v239[2];
      v242 = v239[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v235, v240) & 1) == 0)
      {

        sub_1000B37D8(v240);
        sub_1000B37D8(v235);
        goto LABEL_311;
      }

      if (v238)
      {
        if (!v243)
        {

          sub_1000B37D8(v240);
          sub_1000B37D8(v235);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v236 == v241 && v238 == v243)
        {
        }

        else
        {
          v460 = sub_1004A6D34();

          if ((v460 & 1) == 0)
          {
            sub_1000B37D8(v240);
            sub_1000B37D8(v235);
            goto LABEL_324;
          }
        }
      }

      else if (v243)
      {
        sub_1000B37D8(v240);
        sub_1000B37D8(v235);
LABEL_293:

        goto LABEL_325;
      }

      v132 = sub_1002F361C(v237, v242);
      sub_1000B37D8(v240);
      sub_1000B37D8(v235);
LABEL_317:

      goto LABEL_318;
    case 0x19u:
      v136 = v504;
      sub_1003DABD4(v103, v504, type metadata accessor for Command);
      v224 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v225 = *(v224 + 48);
      v226 = *(v136 + v225);
      v227 = *(v224 + 64);
      v142 = *(v136 + v227);
      v141 = *(v136 + v227 + 8);
      v228 = v514;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        sub_10027FF20(v142, v141);

        v370 = &qword_1005CD1C0;
        v371 = &unk_1004CEC40;
LABEL_191:
        v399 = v136;
LABEL_209:
        sub_100025F40(v399, v370, v371);
        goto LABEL_210;
      }

      v229 = *(v228 + v225);
      v230 = *(v228 + v227 + 8);
      v512 = *(v228 + v227);
      v513 = v103;
      v511 = v230;
      v146 = v479;
      sub_100025FDC(v228, v479, &qword_1005CD1C0, &unk_1004CEC40);
      v231 = sub_100488A9C(v136, v146);
      sub_100025F40(v136, &qword_1005CD1C0, &unk_1004CEC40);
      if ((v231 & 1) == 0)
      {
        v439 = &qword_1005CD1C0;
        v440 = &unk_1004CEC40;
LABEL_231:
        sub_100025F40(v146, v439, v440);
        sub_10027FF20(v142, v141);

        sub_10027FF20(v512, v511);
        goto LABEL_311;
      }

      v148 = v511;
      v149 = v512;
      v232 = sub_10039B220(v226, v229);

      v151 = v513;
      if (v232)
      {
        v132 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v142, v141, v149, v148);
        sub_10027FF20(v142, v141);
        sub_10027FF20(v149, v148);
        v152 = &qword_1005CD1C0;
        v153 = &unk_1004CEC40;
        v154 = v479;
LABEL_62:
        sub_100025F40(v154, v152, v153);
        v233 = v151;
        goto LABEL_283;
      }

      v454 = &qword_1005CD1C0;
      v455 = &unk_1004CEC40;
      v456 = v479;
LABEL_264:
      sub_100025F40(v456, v454, v455);
      sub_10027FF20(v142, v141);
      sub_10027FF20(v149, v148);
      v450 = v151;
      goto LABEL_312;
    case 0x1Au:
      v252 = v501;
      sub_1003DABD4(v103, v501, type metadata accessor for Command);
      v432 = v514;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_207;
      }

      v433 = v432;
      v434 = v472;
      sub_100025FDC(v433, v472, &qword_1005CD1C0, &unk_1004CEC40);
      v132 = sub_100488A9C(v252, v434);
      sub_100025F40(v434, &qword_1005CD1C0, &unk_1004CEC40);
      sub_100025F40(v252, &qword_1005CD1C0, &unk_1004CEC40);
      goto LABEL_282;
    case 0x1Bu:
      v129 = v497;
      sub_1003DABD4(v103, v497, type metadata accessor for Command);
      v130 = *v129;
      v131 = v514;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_197;
      }

      v132 = sub_10020FBD0(v130, *(v129 + 8), *(v129 + 16) | (*(v129 + 22) << 48) | (*(v129 + 20) << 32), *v131, *(v131 + 8), *(v131 + 16) | (*(v131 + 20) << 32) | (*(v131 + 22) << 48));

      goto LABEL_282;
    case 0x1Cu:
      v221 = v498;
      sub_1003DABD4(v103, v498, type metadata accessor for Command);
      v222 = *v221;
      v223 = v514;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_86;
      }

LABEL_169:
      v294 = *(v221 + 8);
LABEL_170:
      if ((v294 | (v294 << 32)) != (*(v223 + 8) | (*(v223 + 8) << 32)))
      {
        goto LABEL_276;
      }

      v417 = sub_1000FFC98(v222, *v223);
      goto LABEL_215;
    case 0x1Du:
      v418 = v502;
      sub_1003DABD4(v103, v502, type metadata accessor for Command);
      v419 = *v418;
      v420 = *(v418 + 24);
      v421 = v514;
      if (swift_getEnumCaseMultiPayload() != 29)
      {

        goto LABEL_86;
      }

      v422 = *(v418 + 22);
      v423 = *(v418 + 20);
      v424 = *(v418 + 16);
      v425 = *(v418 + 8);
      v427 = *v421;
      v426 = *(v421 + 8);
      v428 = *(v421 + 16);
      v429 = *(v421 + 20);
      v430 = *(v421 + 22);
      v431 = *(v421 + 24);
      if (sub_10020FBD0(v419, v425, v424 | (v422 << 48) | (v423 << 32), v427, v426, v428 | (v429 << 32) | (v430 << 48)))
      {
        v132 = sub_10039C32C(v420, v431);

        goto LABEL_282;
      }

      goto LABEL_276;
    case 0x1Eu:
      v513 = v103;
      v381 = v500;
      sub_1003DABD4(v103, v500, type metadata accessor for Command);
      v383 = *v381;
      v382 = *(v381 + 8);
      v384 = *(v381 + 16);
      v385 = v514;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

LABEL_203:

        v103 = v513;
        goto LABEL_210;
      }

      v386 = *(v385 + 8);
      v387 = *(v385 + 16);
      v388 = sub_10039C3E8(v383, *v385);

      if ((v388 & 1) == 0)
      {

        goto LABEL_310;
      }

      if ((v384 | (v384 << 32)) == (v387 | (v387 << 32)))
      {
        v389 = sub_1000FFC98(v382, v386);

        v300 = v513;
        if (v389)
        {
          v132 = sub_1003A370C();

          v233 = v300;
          goto LABEL_283;
        }
      }

      else
      {

        v300 = v513;
      }

      goto LABEL_273;
    case 0x1Fu:
      v295 = v505;
      sub_1003DABD4(v103, v505, type metadata accessor for Command);
      v296 = *v295;
      v297 = *(v295 + 24);
      v298 = *(v295 + 32);
      v299 = v514;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

LABEL_196:

LABEL_197:

LABEL_210:
        sub_100025F40(v103, &qword_1005DC310, &qword_100500E28);
        goto LABEL_313;
      }

      v300 = v103;
      v301 = *(v295 + 8);
      v302 = *v299;
      v303 = *(v299 + 8);
      v304 = *(v299 + 24);
      v513 = *(v299 + 16);
      v305 = *(v299 + 32);
      if ((v301 | (v301 << 32)) == (v303 | (v303 << 32)))
      {
        v306 = sub_1000FFC98(v296, v302);

        if (v306 & 1) != 0 && (sub_1003A0868(v297, v304))
        {
          v307 = sub_1003A09B0(v298, v305);

          if (v307)
          {
            v308 = v300;
            goto LABEL_270;
          }

          goto LABEL_273;
        }
      }

      else
      {
      }

LABEL_273:
      v450 = v300;
      goto LABEL_312;
    case 0x20u:
      v390 = v503;
      sub_1003DABD4(v103, v503, type metadata accessor for Command);
      v391 = v390[1];
      v542 = *v390;
      v543 = v391;
      v392 = v390[3];
      v544 = v390[2];
      v545 = v392;
      v393 = v514;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v394 = v393[1];
        v521 = *v393;
        v522 = v394;
        v395 = v393[3];
        v523[0] = v393[2];
        v523[1] = v395;
        v132 = _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(&v542, &v521);
        sub_1003D9E64(&v521);
        sub_1003D9E64(&v542);
        goto LABEL_282;
      }

      sub_1003D9E64(&v542);
      goto LABEL_210;
    case 0x21u:
      v163 = v506;
      sub_1003DABD4(v103, v506, type metadata accessor for Command);
      v164 = *v163;
      v165 = *(v163 + 8);
      v166 = *(v163 + 16);
      v167 = v514;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
LABEL_185:

        goto LABEL_210;
      }

      v168 = *v167;
      v169 = *(v167 + 16);
      if (v164)
      {
        if (!v168)
        {
          goto LABEL_182;
        }

        if ((v165 | (v165 << 32)) != (*(v167 + 8) | (*(v167 + 8) << 32)))
        {

          swift_bridgeObjectRelease_n();
LABEL_276:

LABEL_277:

LABEL_278:
          v450 = v103;
          goto LABEL_312;
        }

        v170 = sub_1000FFC98(v164, *v167);

        if ((v170 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      else if (v168)
      {

        goto LABEL_277;
      }

      v114 = sub_1003A3714(v166, v169);
      goto LABEL_280;
    case 0x22u:
      v133 = v507;
      sub_1003DABD4(v103, v507, type metadata accessor for Command);
      v134 = *v133;
      v135 = v514;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_86;
      }

      v114 = sub_10039C440(v134, *v135);
      goto LABEL_280;
    case 0x23u:
      sub_1003DABD4(v103, v508, type metadata accessor for Command);
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_86;
      }

      v114 = sub_1003A370C();
      goto LABEL_280;
    case 0x24u:
      v123 = v509;
      sub_1003DABD4(v103, v509, type metadata accessor for Command);
      v125 = *v123;
      v124 = v123[1];
      v126 = v514;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_86;
      }

      v127 = *v126;
      v128 = v126[1];
      if (v125 == v127 && v124 == v128)
      {
        goto LABEL_19;
      }

      v417 = sub_1004A6D34();
LABEL_215:
      v438 = v417;

      goto LABEL_216;
    case 0x25u:
      v115 = v510;
      sub_1003DABD4(v103, v510, type metadata accessor for Command);
      v117 = *v115;
      v116 = v115[1];
      v118 = v115[2];
      v119 = v514;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_85;
      }

      v120 = *v119;
      v121 = v119[1];
      v122 = v119[2];
      if (v117 == v120 && v116 == v121)
      {
      }

      else
      {
        v437 = sub_1004A6D34();

        if ((v437 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      v114 = sub_10039C650(v118, v122);
      goto LABEL_280;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() == 44)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() == 45)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() == 46)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() == 47)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    default:
      sub_1003DABD4(v103, v100, type metadata accessor for Command);
      v107 = *v100;
      v108 = *(v100 + 2);
      v109 = v514;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_85:

LABEL_86:

        goto LABEL_210;
      }

      v110 = *v109;
      v111 = *(v109 + 8);
      v112 = *(v109 + 16);
      if ((*(v100 + 2) | (*(v100 + 2) << 32)) != (v111 | (v111 << 32)))
      {
LABEL_181:

LABEL_182:

        goto LABEL_276;
      }

      v113 = sub_1000FFC98(v107, v110);

      if ((v113 & 1) == 0)
      {
        goto LABEL_276;
      }

      v114 = sub_100398C80(v108, v112);
LABEL_280:
      v132 = v114;

LABEL_281:

LABEL_282:
      v233 = v103;
      goto LABEL_283;
  }
}

unint64_t sub_1003D9EE8()
{
  result = qword_1005DC130;
  if (!qword_1005DC130)
  {
    v3 = type metadata accessor for Command(255);
    result = swift_getWitnessTable(protocol conformance descriptor for Command, v3, v0, v1);
    atomic_store(result, &qword_1005DC130);
  }

  return result;
}

void sub_1003D9F40(uint64_t a1)
{
  sub_1003DA7C8(319, &qword_1005DC1B8, &qword_1005DC1C0, &qword_100500DB8, &type metadata for MailboxName);
  if (v1 <= 0x3F)
  {
    sub_1003DA7C8(319, &qword_1005DC1C8, &qword_1005DC1D0, &qword_100500DC0, &type metadata for MailboxName);
    if (v2 <= 0x3F)
    {
      sub_1003DA388(319, &qword_1005DC1D8);
      if (v3 <= 0x3F)
      {
        sub_1003DA388(319, &qword_1005DC1E0);
        if (v4 <= 0x3F)
        {
          sub_1003DA4F8(319, &qword_1005DC1F0, &type metadata for MailboxName);
          if (v5 <= 0x3F)
          {
            sub_1003DA47C(319);
            if (v6 <= 0x3F)
            {
              sub_1003DA7C8(319, &qword_1005D7E18, &qword_1005D7E20, &qword_100506180, &type metadata for MailboxName);
              if (v7 <= 0x3F)
              {
                sub_1002E8B34(319);
                if (v8 <= 0x3F)
                {
                  sub_1003DA4F8(319, &qword_1005D7DE0, &type metadata for String);
                  if (v9 <= 0x3F)
                  {
                    sub_100050E14(319, &qword_1005D5250, &type metadata for Capability);
                    if (v10 <= 0x3F)
                    {
                      sub_1003DA5E4(319, &qword_1005DC208, &qword_1005CDA78, &unk_1004CF7E0);
                      if (v11 <= 0x3F)
                      {
                        sub_1003DA648(319, &qword_1005DC210, &qword_1005CDA78, &unk_1004CF7E0);
                        if (v12 <= 0x3F)
                        {
                          sub_1003DA6E4(319, &qword_1005DC228, &qword_1005CDA78, &unk_1004CF7E0);
                          if (v13 <= 0x3F)
                          {
                            sub_1003DA550(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1002E8F98(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1002E8F20(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1003DA5E4(319, &qword_1005DC240, &qword_1005CD1C0, &unk_1004CEC40);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1003DA648(319, &qword_1005DC248, &qword_1005CD1C0, &unk_1004CEC40);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1003DA6E4(319, &qword_1005DC250, &qword_1005CD1C0, &unk_1004CEC40);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1003DA76C(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1003DA7C8(319, &qword_1005DC260, &qword_1005DC268, &qword_100500DF0, &type metadata for QuotaRoot);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1003DA834(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1003DA8C8(319);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1003DA940(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_100050E14(319, &qword_1005DC2A8, &type metadata for RumpURLAndMechanism);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_100050E14(319, &qword_1005DC2B0, &type metadata for ByteBuffer);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1003DA9CC(319);
                                                      if (v27 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1003DA388(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __chkstk_darwin(0);
    sub_10000DEFC(v3, v4);
    sub_10000DEFC(&qword_1005D7E10, &qword_1004F3060);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1003DA47C(uint64_t a1)
{
  if (!qword_1005DC1F8)
  {
    sub_10000DEFC(&qword_1005DC200, &qword_100500DD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC1F8);
    }
  }
}

void sub_1003DA4F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1003DA550(uint64_t a1)
{
  if (!qword_1005DC238)
  {
    sub_10000DEFC(&qword_1005D4660, &qword_1004E05E8);
    sub_10000DEFC(&qword_1005D7E40, &qword_1004F3070);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC238);
    }
  }
}

void sub_1003DA5E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1003DA648(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    sub_10000DEFC(&qword_1005DC218, &qword_100500DD8);
    sub_10000DEFC(&qword_1005DC220, &qword_100500DE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1003DA6E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    sub_10000DEFC(&qword_1005DC230, &qword_100500DE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1003DA76C(uint64_t a1)
{
  if (!qword_1005DC258)
  {
    v2 = sub_100016948();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for UID, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, &qword_1005DC258);
    }
  }
}

void sub_1003DA7C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1003DA834(uint64_t a1)
{
  if (!qword_1005DC270)
  {
    sub_10000DEFC(&qword_1005DC278, &qword_100500DF8);
    sub_10000DEFC(&qword_1005DC280, &qword_100500E00);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC270);
    }
  }
}

void sub_1003DA8C8(uint64_t a1)
{
  if (!qword_1005DC288)
  {
    sub_10000DEFC(&qword_1005DC290, &qword_100500E08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC288);
    }
  }
}

void sub_1003DA940(uint64_t a1)
{
  if (!qword_1005DC298)
  {
    sub_10000DEFC(&qword_1005D7E08, &qword_1004F4700);
    sub_10000DEFC(&qword_1005DC2A0, &qword_100500E10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC298);
    }
  }
}

void sub_1003DA9CC(uint64_t a1)
{
  if (!qword_1005DC2B8)
  {
    sub_10000DEFC(&unk_1005DC2C0, &qword_100500E18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC2B8);
    }
  }
}

uint64_t sub_1003DAA44(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000DEFC(&qword_1005CD7B0, &unk_1004D16C0);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003DABD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DAC8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, void, void, void, void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a2, *(v4 + 16), *(v4 + 24), *(v4 + 32), **(v4 + 40), *(v4 + 48), *(v4 + 56));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1003DADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003DAE20()
{
  v1 = *v0;
  v2 = 2 * *(*v0 + 16);
  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1003E54DC(0, v2, 0);
  v3 = v0[1];
  v4 = *(v1 + 16);
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = (2 * v4) | 1;

  sub_1003DAF48(v6, v1 + 32, v3, v5);
  v7 = v0[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + 16) < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = (2 * v7) | 1;

  sub_1003DAF48(v9, v1 + 32, 0, v8);
  v10 = _swiftEmptyArrayStorage[2];
  if (v2 - v10 >= 0)
  {
    sub_1003DB068(v2 - v10, 0, 1);

    v0[1] = 0;
    v0[2] = v10;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1003DAF48(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 24) >> 1;
  if (v12 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_1003E54DC(isUniquelyReferenced_nonNull_native, v13, 1);
      v11 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v12 - v14 < v10)
  {
    __break(1u);
  }

  else
  {
    memcpy((v11 + 16 * v14 + 32), (v6 + 16 * v5), 16 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      swift_unknownObjectRelease();
      *v4 = v11;
      return;
    }

    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v10);
    v17 = v15 + v10;
    if (!v16)
    {
      *(v11 + 16) = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1003DB068(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
    goto LABEL_44;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (result)
  {
    v10 = *(v4 + 24) >> 1;
    if (v10 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  result = sub_1003E54DC(result, v11, 1);
  v4 = *v3;
  v10 = *(*v3 + 24) >> 1;
LABEL_11:
  v12 = *(v4 + 16);
  v13 = v10 - v12;
  if (v10 == v12)
  {
    if (v9 > 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v14 = 0;
  }

  else
  {
    if (v13 < 1)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = v9;
    if (v9)
    {
      v14 = v10 - v12;
      v15 = v9 & ~(v9 >> 63);
      v16 = v4 + 16 * v12 + 32;
      v17 = ~v12 + v10;
      v18 = v9;
      while (v15)
      {
        *v16 = a2;
        *(v16 + 8) = a3 & 1;
        if (!v17)
        {
          if (v13 < v9)
          {
            goto LABEL_45;
          }

          goto LABEL_22;
        }

        v16 += 16;
        --v15;
        --v17;
        if (!--v18)
        {
          v14 = v9;
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

LABEL_22:
    if (v14 > 0)
    {
      v19 = *(v4 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (v20)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      *(v4 + 16) = v21;
    }
  }

  if (v14 != v13 || v13 == v9)
  {
LABEL_40:
    *v3 = v4;
    return result;
  }

  if (v13 < v9)
  {
    v22 = *(v4 + 16);
    v23 = v13 + 1;
    while (1)
    {
      v24 = *(v4 + 24);
      if (v22 + 1 > (v24 >> 1))
      {
        result = sub_1003E54DC(v24 > 1, v22 + 1, 1);
      }

      v4 = *v3;
      v25 = *(*v3 + 24) >> 1;
      if (v22 < v25)
      {
        break;
      }

LABEL_29:
      *(v4 + 16) = v22;
    }

    v26 = 0;
    v27 = v23 + v25 - v22;
    v28 = (v4 + 16 * v22 + 40);
    while (1)
    {
      *(v28 - 1) = a2;
      *v28 = a3 & 1;
      if (v9 - v23 == v26)
      {
        break;
      }

      if (v23 < 0 || v23 + v26 >= v9)
      {
        goto LABEL_42;
      }

      ++v26;
      v28 += 16;
      if (!(v22 - v25 + v26))
      {
        v22 = v25;
        v23 = v27;
        goto LABEL_29;
      }
    }

    *(v4 + 16) = v22 + v26 + 1;
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1003DB278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (((a4 | a3) & 0x8000000000000000) == 0)
  {
    if (a4 > 0xFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    if (a3 == a4 && a4 >= a3)
    {
      return;
    }

    LODWORD(v7) = a3;
    while (1)
    {
      v8 = *(a2 + 16);
      if (v7 >= v8)
      {
        break;
      }

      v9 = a2 + 32 + 16 * v7;
      if (*(v9 + 8))
      {
        goto LABEL_21;
      }

      v7 = (v8 - 1) & (v7 + 1);
      if (HIDWORD(v7))
      {
        goto LABEL_17;
      }

      sub_1004A6EB4(*v9);
      if (a4 < a3 != v7 >= a3 && v7 == a4)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = BYTE4(a4);
  v9 = a3;
  v10 = a2;
  v13 = HIDWORD(a2);
  v14 = HIDWORD(a3);
  v15 = HIWORD(a3);
  v16 = a4 & 0x1010101;
  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a7 = a6;
  *(a7 + 5) = v8 & 1;
  *(a7 + 1) = v16;
  *(a7 + 8) = a1;
  *(a7 + 16) = v10;
  *(a7 + 20) = v13;
  *(a7 + 24) = v9;
  *(a7 + 28) = v14;
  *(a7 + 30) = v15;
  *(a7 + 32) = result;
  *(a7 + 40) = v18;
  *(a7 + 48) = v19;
  *(a7 + 56) = a5;
  return result;
}

void CommandEncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 1) | (*(v2 + 5) << 32);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  sub_1004A6EC4(*v2 & 1);
  EncodeBuffer.Mode.hash(into:)(a1, v4);
  swift_beginAccess();
  sub_1004A6EA4();
  sub_1003DB278(a1, v5, v6, v7);
  sub_1004A6EC4(*(v2 + 56) & 1);
}

Swift::Int CommandEncodeBuffer.hashValue.getter()
{
  sub_1004A6E94();
  CommandEncodeBuffer.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DB608(uint64_t a1)
{
  sub_1004A6E94();
  CommandEncodeBuffer.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1003DB644(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

unint64_t CommandEncodeBuffer.options.getter()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = (v1 & 1) == 0;
    v3 = &_mh_execute_header;
    if (v2)
    {
      v3 = 0;
    }

    v4 = 0x1000000;
    if ((v0[4] & 1) == 0)
    {
      v4 = 0;
    }

    v5 = 0x10000;
    if ((v0[3] & 1) == 0)
    {
      v5 = 0;
    }

    v6 = 256;
    if ((v0[2] & 1) == 0)
    {
      v6 = 0;
    }

    return v6 & 0xFFFFFFFFFFFFFFFELL | v0[1] & 1 | v5 | v4 | v3;
  }

  return result;
}

uint64_t CommandEncodeBuffer.options.setter(uint64_t result)
{
  *(v1 + 5) = BYTE4(result) & 1;
  *(v1 + 1) = result & 0x1010101;
  return result;
}

uint64_t *(*CommandEncodeBuffer.options.modify(uint64_t *(*result)(uint64_t *result)))(uint64_t *result)
{
  *result = v1;
  v2 = *(v1 + 1) | (*(v1 + 5) << 32);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = *(v1 + 1) & 1;
    v3.i64[0] = 0xFFFFFFFFFFLL;
    v3.i64[1] = 0xFFFFFFFFFFLL;
    v4 = vandq_s8(vdupq_n_s64(v2), v3);
    *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1004D2F00), vshlq_u64(v4, xmmword_1004D2EF0))), 0x1000100010001);
    *(result + 9) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
    return sub_1003DB798;
  }

  return result;
}

uint64_t *sub_1003DB798(uint64_t *result)
{
  v1 = *result;
  v2 = 256;
  if (!*(result + 9))
  {
    v2 = 0;
  }

  v3 = v2 | *(result + 8);
  v4 = 0x10000;
  if (!*(result + 10))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(result + 11))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = &_mh_execute_header;
  if (!*(result + 12))
  {
    BYTE4(v7) = 0;
  }

  *(v1 + 5) = BYTE4(v7);
  *(v1 + 1) = v6;
  return result;
}

uint64_t CommandEncodeBuffer.init(buffer:capabilities:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a3;
  v9 = a2;
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIWORD(a3);
  v15 = sub_1003DC598(a4);
  v16 = BYTE4(v15);
  v17 = v15 & 0x1010101;
  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a7 = a6;
  *(a7 + 5) = v16 & 1;
  *(a7 + 1) = v17;
  *(a7 + 8) = a1;
  *(a7 + 16) = v9;
  *(a7 + 20) = v12;
  *(a7 + 24) = v8;
  *(a7 + 28) = v13;
  *(a7 + 30) = v14;
  *(a7 + 32) = result;
  *(a7 + 40) = v19;
  *(a7 + 48) = v20;
  *(a7 + 56) = a5;
  return result;
}

uint64_t _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[5];
  v7 = *(a1 + 1);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 3) | (a2[5] << 16);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v17 = 0;
  if (v6 < 0)
  {
    if (v13 & 0x80000000) == 0 || ((v4 ^ v11) & 1) != 0 || ((v5 ^ v12))
    {
      return v17 & 1;
    }

LABEL_14:
    v18 = a1;
    if (sub_10020FBD0(v7, *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)) && (sub_1003E4914(v8, v9, v10, v14, v15, v16) & 1) != 0)
    {
      v17 = v18[56] ^ a2[56] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  if ((v13 & 0x80000000) == 0 && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0 && ((a1[3] ^ v13) & 1) == 0 && ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) == 0 && ((v6 ^ ((v13 & 0x10000u) >> 16)) & 1) == 0)
  {
    goto LABEL_14;
  }

  return v17 & 1;
}

uint64_t sub_1003DBA20(uint64_t a1)
{
  sub_10000C9C0(&qword_1005DC328, &qword_100500F38);
  result = sub_1004A6894();
  *(result + 16) = 16;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 1;
  *(result + 96) = 0;
  *(result + 104) = 1;
  *(result + 112) = 0;
  *(result + 120) = 1;
  *(result + 128) = 0;
  *(result + 136) = 1;
  *(result + 144) = 0;
  *(result + 152) = 1;
  *(result + 160) = 0;
  *(result + 168) = 1;
  *(result + 176) = 0;
  *(result + 184) = 1;
  *(result + 192) = 0;
  *(result + 200) = 1;
  *(result + 208) = 0;
  *(result + 216) = 1;
  *(result + 224) = 0;
  *(result + 232) = 1;
  *(result + 240) = 0;
  *(result + 248) = 1;
  *(result + 256) = 0;
  *(result + 264) = 1;
  *(result + 272) = 0;
  *(result + 280) = 1;
  v11 = 0;
  v10 = result;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10046B5A0(v10);
        v7 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = *(v7 + 16);
      if (v11 >= v8)
      {
        goto LABEL_13;
      }

      v9 = v7 + 16 * v11;
      *(v9 + 32) = v5;
      *(v9 + 40) = 0;
      v10 = v7;
      v11 = (v8 + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (!v11)
      {
        sub_1003DAE20();
      }

      if (!--v3)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1003DBBB0(char a1, uint64_t (*a2)(__int128 *)))(__int128 *)
{
  object = &v66;
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v6 = dword_1005DE398;
    v7 = word_1005DE39C;
    v8 = byte_1005DE39E;

    v9 = qword_1005DE390;
    v10 = sub_1003DBA20(_swiftEmptyArrayStorage);
    LOBYTE(v66) = a1 & 1;
    BYTE5(v66) = 0;
    *(object + 1) = 257;
    *(&v66 + 1) = v5;
    *&v67 = v9;
    DWORD2(v67) = v6;
    WORD6(v67) = v7;
    BYTE14(v67) = v8;
    *&v68 = v10;
    *(&v68 + 1) = v11;
    v69 = v12;
    v70 = 0;
    a2(&v66);
    result = EncodeBuffer.nextChunk()();
    v16 = HIDWORD(v14) - v14;
    if (HIDWORD(v14) < v14)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v17 = v15;
    if (v15 - (BYTE6(v15) | (WORD2(v15) << 8)) < HIDWORD(v14))
    {
      goto LABEL_76;
    }

    a2 = result;
    v71[0] = result;
    v71[1] = v14;
    v72 = v15;
    v73 = WORD2(v15);
    v74 = BYTE6(v15);
    v75 = v14;
    v76 = HIDWORD(v14);
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;

    sub_1004A5874(v16);
    a1 = 0;
    sub_1003BB2E4(v71, &v62);
    result = sub_1003A52D0(v71);
    v65 = v62;
    if ((v17 & 0x100000000000000) == 0)
    {
      break;
    }

    v60 = *(object + 1) | (SBYTE5(v66) << 32);
    for (i = v67; (v60 & 0x8000000000000000) != 0; a2 = v31)
    {
      object = (DWORD1(v67) - i);
      if (DWORD1(v67) < i || (DWORD1(v67) - (DWORD1(v67) - i)) < i)
      {
        goto LABEL_68;
      }

      v41 = BYTE14(v67) | (WORD6(v67) << 8);
      v29 = __CFADD__(v41, i);
      v42 = v41 + i;
      if (v29)
      {
        goto LABEL_69;
      }

      v31 = *(&v66 + 1);
      if (HIBYTE(v42))
      {
        v58 = v58 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v67) - i, *(&v66 + 1));
        v39 = v43;
        v33 = HIDWORD(v32);
        v35 = v44;
        v37 = v45;
      }

      else
      {
        v35 = (v42 >> 8);
        v39 = v42 + object;
        v37 = v42;

        LODWORD(v32) = 0;
        LODWORD(v33) = object;
      }

      v29 = __CFADD__(i, object);
      i = (i + object);
      if (v29)
      {
        goto LABEL_70;
      }

LABEL_48:
      v51 = 0;
LABEL_49:
      if (v33 < v32)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v39 - (v37 | (v35 << 8)) < v33)
      {
        goto LABEL_57;
      }

      v52 = v32;
      *(&v62 + 1) = __PAIR64__(v33, v32);
      LODWORD(v63) = v39;
      WORD2(v63) = v35;
      BYTE6(v63) = v37;
      *(&v63 + 1) = v32;
      *&v64[0] = v33;
      v53 = v33 - v32;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      *&v62 = v31;

      sub_1004A5874(v53);
      v54 = v62;
      v55 = WORD2(v63);
      v56 = BYTE6(v63);
      swift_beginAccess();
      sub_10049DE0C(*(v54 + 24) + (v56 | (v55 << 8)) + v52, v53, &v61._countAndFlagsBits);
      sub_1003A52D0(&v62);
      object = v61._object;
      sub_1004A5994(v61);

      if (!v51)
      {

        LODWORD(v67) = i;
        object = &v66;
        goto LABEL_55;
      }
    }

    v20 = *(&v68 + 1);
    v19 = v68;
    v21 = v69 - *(&v68 + 1);
    if (v69 < *(&v68 + 1))
    {
      v21 += *(v68 + 16);
    }

    if (v21 >= 1)
    {
      if (v69 == *(&v68 + 1))
      {
LABEL_58:
        __break(1u);
      }

      else if ((*(&v68 + 1) & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(*(&v68 + 1)))
        {
          v22 = *(v68 + 16);
          if (*(&v68 + 1) < v22)
          {
            v23 = v68 + 16 * *(&v68 + 1);
            if (*(v23 + 40))
            {
              goto LABEL_77;
            }

            if (v69 >= *(&v68 + 1))
            {
              v22 = 0;
            }

            if ((v69 - *(&v68 + 1) + v22) >= 1)
            {
              v24 = *(v23 + 32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_10046B5A0(v19);
              }

              v25 = *(v19 + 2);
              if (v20 < v25)
              {
                v26 = &v19[16 * v20];
                *(v26 + 4) = 0;
                v26[40] = 1;
                *&v68 = v19;
                *(&v68 + 1) = (v25 + 0x1FFFFFFFFLL) & (v20 + 1);
                object = v24 - i;
                if (!__OFSUB__(v24, i))
                {
                  v27 = DWORD1(v67);
                  if (DWORD1(v67) >= object && (DWORD1(v67) - object) >= i)
                  {
                    v28 = BYTE14(v67) | (WORD6(v67) << 8);
                    v29 = __CFADD__(v28, i);
                    v30 = v28 + i;
                    if (!v29)
                    {
                      v31 = *(&v66 + 1);
                      if (HIBYTE(v30))
                      {
                        v59 = v59 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
                        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, v24 - i, *(&v66 + 1));
                        v33 = HIDWORD(v32);
                        v35 = v34;
                        v37 = v36;
                        v39 = v38;
                      }

                      else
                      {
                        v35 = (v30 >> 8);
                        v39 = v30 + object;
                        v37 = v30;

                        LODWORD(v32) = 0;
                        LODWORD(v33) = v24 - i;
                      }

                      v29 = __CFADD__(i, object);
                      i = v24;
                      if (!v29)
                      {
                        v51 = v24 != v27;
                        goto LABEL_49;
                      }

LABEL_67:
                      __break(1u);
LABEL_68:
                      __break(1u);
LABEL_69:
                      __break(1u);
LABEL_70:
                      __break(1u);
LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_66:
                    __break(1u);
                    goto LABEL_67;
                  }

LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_60;
    }

    object = (DWORD1(v67) - i);
    if (DWORD1(v67) < i || (DWORD1(v67) - (DWORD1(v67) - i)) < i)
    {
      goto LABEL_71;
    }

    v46 = BYTE14(v67) | (WORD6(v67) << 8);
    v29 = __CFADD__(v46, i);
    v47 = v46 + i;
    if (!v29)
    {
      v31 = *(&v66 + 1);
      if (HIBYTE(v47))
      {
        v57 = v57 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v67) - i, *(&v66 + 1));
        v33 = HIDWORD(v32);
        v35 = v48;
        v37 = v49;
        v39 = v50;
      }

      else
      {
        v35 = (v47 >> 8);
        v39 = v47 + object;
        v37 = v47;

        LODWORD(v32) = 0;
        LODWORD(v33) = object;
      }

      v29 = __CFADD__(i, object);
      i = (i + object);
      if (v29)
      {
        goto LABEL_73;
      }

      goto LABEL_48;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

LABEL_55:
  v62 = v66;
  v63 = v67;
  v64[0] = v68;
  *(v64 + 9) = *(object + 41);
  sub_1002F14A8(&v62);
  return v65;
}

unint64_t sub_1003DC188()
{
  result = qword_1005DC320;
  if (!qword_1005DC320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandEncodeBuffer, &type metadata for CommandEncodeBuffer, v0, v1);
    atomic_store(result, &qword_1005DC320);
  }

  return result;
}

uint64_t sub_1003DC1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1003DC264(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_100500E60), xmmword_100500E70);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NIOIMAPCore2::CommandEncodingOptions __swiftcall CommandEncodingOptions.init(useQuotedString:useSynchronizingLiteral:useNonSynchronizingLiteralPlus:useNonSynchronizingLiteralMinus:useBinaryLiteral:)(Swift::Bool useQuotedString, Swift::Bool useSynchronizingLiteral, Swift::Bool useNonSynchronizingLiteralPlus, Swift::Bool useNonSynchronizingLiteralMinus, Swift::Bool useBinaryLiteral)
{
  v5 = &_mh_execute_header;
  if (!useBinaryLiteral)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!useNonSynchronizingLiteralMinus)
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (!useNonSynchronizingLiteralPlus)
  {
    v7 = 0;
  }

  v8 = 256;
  if (!useSynchronizingLiteral)
  {
    v8 = 0;
  }

  return (v8 & 0xFFFFFFFFFFFFFFFELL | useQuotedString | v7 | v6 | v5);
}

void CommandEncodingOptions.hash(into:)(uint64_t a1, unint64_t a2)
{
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  sub_1004A6EC4(BYTE4(a2) & 1);
}

Swift::Int CommandEncodingOptions.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EC4(a1 & 1);
  sub_1004A6EC4(BYTE1(a1) & 1);
  sub_1004A6EC4(BYTE2(a1) & 1);
  sub_1004A6EC4(BYTE3(a1) & 1);
  sub_1004A6EC4(BYTE4(a1) & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DC424()
{
  v1 = &_mh_execute_header;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return CommandEncodingOptions.hashValue.getter(v4 | *v0 | v3 | v2 | v1);
}

void sub_1003DC47C(uint64_t a1)
{
  v2 = &_mh_execute_header;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  CommandEncodingOptions.hash(into:)(a1, v5 | *v1 | v4 | v3 | v2);
}

Swift::Int sub_1003DC4D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1004A6E94();
  v7 = &_mh_execute_header;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!v5)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!v4)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!v3)
  {
    v10 = 0;
  }

  CommandEncodingOptions.hash(into:)(v12, v10 | v2 | v9 | v8 | v7);
  return sub_1004A6F14();
}

unint64_t sub_1003DC598(uint64_t a1)
{
  v1 = a1;
  if (qword_1005DBB30 != -1)
  {
    a1 = swift_once();
  }

  v11 = static Capability.literalPlus;
  v12 = qword_1005DE8F0;
  v13 = byte_1005DE8F8;
  __chkstk_darwin(a1);
  v10 = &v11;
  v2 = sub_100215C70(sub_100197740, v9, v1);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    if (qword_1005DBB38 != -1)
    {
      v2 = swift_once();
    }

    v11 = static Capability.literalMinus;
    v12 = qword_1005DE910;
    v13 = byte_1005DE918;
    __chkstk_darwin(v2);
    v10 = &v11;
    v2 = sub_100215C70(sub_1001F0EE0, v9, v1);
    if (v2)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }
  }

  if (qword_1005DB9F0 != -1)
  {
    v2 = swift_once();
  }

  v11 = static Capability.binary;
  v12 = qword_1005DE3F0;
  v13 = byte_1005DE3F8;
  __chkstk_darwin(v2);
  v10 = &v11;
  v5 = sub_100215C70(sub_1001F0EE0, v9, v1);

  v6 = &_mh_execute_header;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 257;
  if (v3)
  {
    v7 = 65793;
  }

  return v7 | v4 | v6;
}

unint64_t sub_1003DC7FC()
{
  result = qword_1005DC330;
  if (!qword_1005DC330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandEncodingOptions, &type metadata for CommandEncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DC330);
  }

  return result;
}

uint64_t AppendCommand.tag.getter()
{
  v1 = *(v0 + 56) >> 5;
  if ((v1 - 1) < 5 || v1)
  {
    return 0;
  }

  v3 = *v0;

  return v3;
}

BOOL static AppendCommand.CatenateData.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a6);
  if (!HIBYTE(a3))
  {
    if (!v6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (HIBYTE(a3) == 1)
  {
    if (v6 == 1)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  return v6 == 2 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
}

void AppendCommand.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = v8 >> 5;
  if (v8 >> 5 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        sub_1004A6EB4(1uLL);
        AppendOptions.hash(into:)(a1);
        sub_1004A6EB4(v6);
        sub_1004A6EC4(v8 & 1);
        return;
      }

      v13 = 2;
      goto LABEL_15;
    }

    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v12 = v4 | (v4 << 32);
  }

  else
  {
    if (v8 >> 5 <= 4)
    {
      if (v9 == 3)
      {
        sub_1004A6EB4(4uLL);
        AppendOptions.hash(into:)(a1);
        return;
      }

      v13 = 5;
LABEL_15:
      sub_1004A6EB4(v13);
      swift_beginAccess();
      goto LABEL_16;
    }

    if (v9 == 5)
    {
      sub_1004A6EB4(6uLL);
      if (BYTE6(v3))
      {
        if (BYTE6(v3) == 1)
        {
          sub_1004A6EB4(1uLL);
          swift_beginAccess();
LABEL_16:
          sub_1004A6EA4();
          return;
        }

        v12 = 2;
      }

      else
      {
        sub_1004A6EB4(0);
        v12 = v2;
      }
    }

    else
    {
      v14 = *(v1 + 16) | (v3 << 8);
      v15 = v4 | *(v1 + 8);
      if (v8 != 192 || v15 | v2 | v5 | v7 | v6 | v14)
      {
        if (v8 == 192 && v2 == 1 && !(v15 | v14 | v5 | v7 | v6))
        {
          v12 = 7;
        }

        else
        {
          v12 = 8;
        }
      }

      else
      {
        v12 = 3;
      }
    }
  }

  sub_1004A6EB4(v12);
}

Swift::Int AppendCommand.hashValue.getter()
{
  sub_1004A6E94();
  AppendCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DCC10(uint64_t a1)
{
  sub_1004A6E94();
  AppendCommand.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1003DCC4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7);
}

void AppendCommand.CatenateData.hash(into:)(uint64_t a1, Swift::UInt a2, unint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4))
  {
    if (HIBYTE(a4) == 1)
    {
      sub_1004A6EB4(1uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      return;
    }

    v5 = 2;
  }

  else
  {
    sub_1004A6EB4(0);
    v5 = a2;
  }

  sub_1004A6EB4(v5);
}

Swift::Int AppendCommand.CatenateData.hashValue.getter(Swift::UInt a1, unint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3);
  sub_1004A6E94();
  if (!v4)
  {
    sub_1004A6EB4(0);
    v5 = a1;
LABEL_6:
    sub_1004A6EB4(v5);
    return sub_1004A6F14();
  }

  if (v4 != 1)
  {
    v5 = 2;
    goto LABEL_6;
  }

  sub_1004A6EB4(1uLL);
  swift_beginAccess();
  sub_1004A6EA4();
  return sub_1004A6F14();
}

Swift::Int sub_1003DCE2C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  AppendCommand.CatenateData.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

BOOL sub_1003DCE84(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 23);
  if (*(a1 + 23))
  {
    v6 = *(a2 + 8);
    v7 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);
    if (*(a1 + 23) == 1)
    {
      return v5 == 1 && sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), v4, v6, v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      return v5 == 2 && (v6 | v4) == 0 && (v7 & 0xFFFFFFFFFFFFFFLL) == 0;
    }
  }

  else
  {
    return !*(a2 + 23) && v3 == v4;
  }
}

uint64_t CommandStreamPart.tag.getter(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v3 - 8);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CommandStreamPart(0);
  __chkstk_darwin(v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DED70(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v10 != 2)
    {
      return result;
    }

    sub_1003DEE04(v8, type metadata accessor for CommandStreamPart);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1003DF6BC(v8, v5, type metadata accessor for TaggedCommand);
      v11 = *v5;

      sub_1003DEE04(v5, type metadata accessor for TaggedCommand);
      return v11;
    }

    *&v17[9] = *(v8 + 41);
    v13 = v8[1];
    v16[0] = *v8;
    v16[1] = v13;
    *v17 = v8[2];
    v14 = v17[24] >> 5;
    if (v14 <= 2)
    {
      if (!v14)
      {
        v15 = *&v16[0];

        sub_1003DEDD4(v16);
        return v15;
      }
    }

    else if (v17[24] >> 5 > 4u && v14 != 5)
    {
      return 0;
    }

    sub_1003DEDD4(v16);
  }

  return 0;
}

void CommandStreamPart.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandStreamPart(0);
  __chkstk_darwin(v8);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DED70(v3, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1004A6EB4(3uLL);
      swift_beginAccess();
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EB4(0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = v10[1];
    v13[0] = *v10;
    v13[1] = v12;
    v14[0] = v10[2];
    *(v14 + 9) = *(v10 + 41);
    sub_1004A6EB4(2uLL);
    AppendCommand.hash(into:)(a1);
    sub_1003DEDD4(v13);
  }

  else
  {
    sub_1003DF6BC(v10, v7, type metadata accessor for TaggedCommand);
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    Command.hash(into:)(a1);
    sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
  }
}

Swift::Int CommandStreamPart.hashValue.getter()
{
  sub_1004A6E94();
  CommandStreamPart.hash(into:)(v2, v0);
  return sub_1004A6F14();
}

Swift::Int sub_1003DD340(uint64_t a1)
{
  sub_1004A6E94();
  CommandStreamPart.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

void CommandEncodeBuffer.writeCommandStream(_:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CommandStreamPart(0);
  __chkstk_darwin(v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003DED70(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v11 >= v12)
      {
        v13 = *(v9 + 4);
        v14 = *(v9 + 10);
        v15 = v9[22];
        if (v13 - (v15 | (v14 << 8)) >= v11)
        {
          v16 = *v9;
          *&v42 = v16;
          *(&v42 + 1) = __PAIR64__(v11, v12);
          LODWORD(v43) = v13;
          WORD2(v43) = v14;
          BYTE6(v43) = v15;
          *(&v43 + 1) = v12;
          *&v44[0] = v11;
          v17 = v11 - v12;
          swift_beginAccess();
          if (v17 >= -4)
          {
            v18 = 4 * ((v17 + 2) / 3);
            v19 = *(v16 + 24);
            v20 = (v15 | (v14 << 8)) + v12;

            if (v17 < 1)
            {
              v21 = _swiftEmptyArrayStorage;
            }

            else
            {
              v21 = sub_1004A5C64();
              v21[2] = v18;
            }

            v41 = 0;
            sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v19 + v20, v17, (v21 + 4), 4 * ((v17 + 2) / 3), 0, &v41);
            if (v18 >= v41)
            {
              v21[2] = v41;
              sub_1003A52D0(&v42);
              sub_1003E0AC4(v21);
              v30 = v2;
              v32 = v31;

              v33 = *(v2 + 20);
              v34 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v2 + 8, v33);
              if (v35)
              {
                v36._countAndFlagsBits = 2573;
                v36._object = 0xE200000000000000;
                v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
                v30 = v2;
              }

              v37 = v34;

              v38 = *(v30 + 20);
              v28 = __CFADD__(v38, v37);
              v39 = v38 + v37;
              if (!v28)
              {
                *(v30 + 20) = v39;
                if (!__OFADD__(v32, v37))
                {
                  return;
                }

LABEL_28:
                __break(1u);
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v23 = *(v2 + 20);
      v24 = sub_1002F178C(0xA0D454E4F44uLL, 0xE600000000000000, v2 + 8, v23);
      if (v25)
      {
        v26._countAndFlagsBits = 0xA0D454E4F44;
        v26._object = 0xE600000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
      }

      v27 = *(v2 + 20);
      v28 = __CFADD__(v27, v24);
      v29 = v27 + v24;
      if (!v28)
      {
        *(v2 + 20) = v29;
        return;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    v22 = *(v9 + 1);
    v42 = *v9;
    v43 = v22;
    v44[0] = *(v9 + 2);
    *(v44 + 9) = *(v9 + 41);
    sub_1003DE144(&v42);
    sub_1003DEDD4(&v42);
  }

  else
  {
    sub_1003DF6BC(v9, v6, type metadata accessor for TaggedCommand);
    CommandEncodeBuffer.writeCommand(_:)(v6);
    sub_1003DEE04(v6, type metadata accessor for TaggedCommand);
  }
}

void sub_1003DD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v104 = a2;
  v95 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v95);
  v96 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart(0);
  v97 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v92 - v12;
  v13 = sub_10000C9C0(&qword_1005DC3F8, &qword_100501358);
  __chkstk_darwin(v13 - 8);
  v15 = &v92 - v14;
  v16 = *(a3 - 8);
  __chkstk_darwin(v17);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v21 = __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v92 - v22;
  (*(v16 + 16))(v19, v104, a3, v21);
  v24 = v10;
  v25 = v100;
  sub_1004A5AC4();
  v26 = v96;
  v27 = v97;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = v23;
  v104 = AssociatedTypeWitness;
  v102 = AssociatedConformanceWitness;
  sub_1004A6414();
  v30 = *(v27 + 48);
  v29 = v27 + 48;
  v101 = v30;
  if (v30(v15, 1, v8) == 1)
  {
LABEL_2:
    (*(v93 + 8))(v103, v104);
    return;
  }

  v98 = v10;
  v99 = v15;
  v94 = v8;
  v97 = v29;
  while (1)
  {
    sub_1003DF6BC(v15, v25, type metadata accessor for CommandStreamPart);
    sub_1003DED70(v25, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      break;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1003DF6BC(v24, v26, type metadata accessor for TaggedCommand);
      v34 = v26[1];
      v108 = *v26;
      v109 = v34;

      v117._countAndFlagsBits = 32;
      v117._object = 0xE100000000000000;
      sub_1004A5994(v117);
      v36 = v108;
      v35 = v109;
      v37 = *(a1 + 20);
      v38 = sub_1002F178C(v108, v109, a1 + 8, v37);
      if (v39)
      {
        v40._countAndFlagsBits = v36;
        v40._object = v35;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v41 = v38;

      v42 = *(a1 + 20);
      v43 = __CFADD__(v42, v41);
      v44 = v42 + v41;
      v15 = v99;
      if (v43)
      {
        goto LABEL_48;
      }

      *(a1 + 20) = v44;
      sub_1003CFAA8(v26 + *(v95 + 20));
      v45 = *(a1 + 20);
      v46 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, v45);
      if (v47)
      {
        v48._countAndFlagsBits = 2573;
        v48._object = 0xE200000000000000;
        v46 = ByteBuffer._setStringSlowpath(_:at:)(v48, v45);
      }

      v49 = v46;
      sub_1003DEE04(v26, type metadata accessor for TaggedCommand);
      v25 = v100;
      sub_1003DEE04(v100, type metadata accessor for CommandStreamPart);
      v50 = *(a1 + 20);
      v43 = __CFADD__(v50, v49);
      v51 = v50 + v49;
      if (v43)
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    }

    v31 = *(v24 + 16);
    v115[0] = *v24;
    v32 = *(v24 + 32);
    v115[1] = v31;
    *v116 = v32;
    *&v116[9] = *(v24 + 41);
    sub_1003DE144(v115);
    sub_1003DEDD4(v115);
    sub_1003DEE04(v25, type metadata accessor for CommandStreamPart);
LABEL_5:
    sub_1004A6414();
    if (v101(v15, 1, v8) == 1)
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v53 = *(v24 + 8);
    v52 = *(v24 + 12);
    if (v52 < v53)
    {
      goto LABEL_49;
    }

    v54 = *(v24 + 16);
    v55 = *(v24 + 20);
    v56 = *(v24 + 22);
    if (v54 - (v56 | (v55 << 8)) < v52)
    {
      goto LABEL_50;
    }

    v57 = *v24;
    v108 = *v24;
    v109 = __PAIR64__(v52, v53);
    v110 = v54;
    v111 = v55;
    v112 = v56;
    v113 = v53;
    v114 = v52;
    v58 = v52 - v53;
    swift_beginAccess();
    if (v58 < -4)
    {
      goto LABEL_53;
    }

    v59 = 4 * ((v58 + 2) / 3);
    v60 = *(v57 + 24);

    if (v58 < 1)
    {
      v61 = _swiftEmptyArrayStorage;
    }

    else
    {
      v61 = sub_1004A5C64();
      v61[2] = v59;
    }

    v106 = 0;
    sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v60 + (v56 | (v55 << 8)) + v53, v58, (v61 + 4), v59, 0, &v106);
    if (v59 < v106)
    {
      goto LABEL_54;
    }

    v61[2] = v106;
    sub_1003A52D0(&v108);
    if (*a1 == 1)
    {
      v106 = 91;
      v107 = 0xE100000000000000;
      v105 = v61[2];
      v118._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v118);

      v119._countAndFlagsBits = 0x5D736574796220;
      v119._object = 0xE700000000000000;
      sub_1004A5994(v119);
      v78 = v106;
      v77 = v107;
      v79 = *(a1 + 20);
      v80 = sub_1002F178C(v106, v107, a1 + 8, v79);
      v24 = v98;
      if (v81)
      {
        v82._countAndFlagsBits = v78;
        v82._object = v77;
        v80 = ByteBuffer._setStringSlowpath(_:at:)(v82, v79);
      }

      v83 = v80;

      v84 = *(a1 + 20);
      v43 = __CFADD__(v84, v83);
      v85 = v84 + v83;
      v26 = v96;
      v8 = v94;
      if (v43)
      {
        goto LABEL_56;
      }

      *(a1 + 20) = v85;
    }

    else
    {
      sub_10041F128(v61);

      v85 = *(a1 + 20);
      v26 = v96;
      v8 = v94;
      v24 = v98;
    }

    v86 = v85;
    v87 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, v85);
    if (v88)
    {
      v89._countAndFlagsBits = 2573;
      v89._object = 0xE200000000000000;
      v87 = ByteBuffer._setStringSlowpath(_:at:)(v89, v86);
    }

    v90 = v87;

    v25 = v100;
    sub_1003DEE04(v100, type metadata accessor for CommandStreamPart);
    v91 = *(a1 + 20);
    v43 = __CFADD__(v91, v90);
    v51 = v91 + v90;
    v15 = v99;
    if (v43)
    {
      goto LABEL_55;
    }

LABEL_46:
    *(a1 + 20) = v51;
    goto LABEL_5;
  }

  v62 = *(a1 + 20);
  v63 = v62 + 6;
  if (v62 < 0xFFFFFFFA)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = *(a1 + 24);
      v43 = v63 >= v64;
      v65 = v63 - v64;
      if (v43)
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      v67 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v66, v67 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(6u, v62);
    v68 = *(a1 + 8);
    v69 = *(a1 + 24);
    v70 = *(a1 + 28);
    v71 = *(a1 + 30);
    swift_beginAccess();
    v72 = v71 | (v70 << 8);
    LODWORD(v73) = v69 - v72;
    if (v69 - v72 >= v62)
    {
      LODWORD(v73) = v62;
    }

    if (v62)
    {
      v73 = v73;
    }

    else
    {
      v73 = 0;
    }

    v74 = *(v68 + 24) + v72 + v73;
    *(v74 + 4) = 2573;
    *v74 = 1162760004;
    v25 = v100;
    sub_1003DEE04(v100, type metadata accessor for CommandStreamPart);
    v75 = *(a1 + 20);
    v43 = __CFADD__(v75, 6);
    v76 = v75 + 6;
    if (v43)
    {
      goto LABEL_51;
    }

    *(a1 + 20) = v76;
    v24 = v98;
    v15 = v99;
    goto LABEL_5;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1003DE144(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14 = *(a1 + 17);
  v12 = a1 + 17;
  v13 = v14;
  LOBYTE(v102) = v6;
  *(&v102 + 1) = v14;
  HIBYTE(v102) = *(v12 + 6);
  *(&v102 + 5) = *(v12 + 4);
  v15 = v11 >> 5;
  if (v11 >> 5 > 2)
  {
    v2 = v13 | ((*(v12 + 4) | (*(v12 + 6) << 16)) << 32);
    if (v11 >> 5 > 4)
    {
      goto LABEL_19;
    }

    if (v15 != 3)
    {
      v10 = v102;
      if (*(v1 + 56))
      {
        v43 = *(v1 + 20);
        v44 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v43);
        if (v45)
        {
          v46._countAndFlagsBits = 32;
          v46._object = 0xE100000000000000;
          v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
        }

        v47 = v44;
        v48 = *(v1 + 20);
        v21 = __CFADD__(v48, v44);
        v49 = v48 + v44;
        if (v21)
        {
          goto LABEL_100;
        }

        *(v1 + 20) = v49;
        goto LABEL_59;
      }

LABEL_58:
      v47 = 0;
      v49 = *(v1 + 20);
LABEL_59:
      v61 = v49;
      v62 = sub_1002F178C(0x204C5255uLL, 0xE400000000000000, v1 + 8, v49);
      if (v63)
      {
        v64._countAndFlagsBits = 541872725;
        v64._object = 0xE400000000000000;
        v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
      }

      v65 = *(v1 + 20);
      v21 = __CFADD__(v65, v62);
      v66 = v65 + v62;
      if (v21)
      {
        goto LABEL_97;
      }

      *(v1 + 20) = v66;
      if (__OFADD__(v47, v62))
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (!__OFADD__(v47 + v62, sub_1003B1E70(v4, v5, v10 & 0xFF000000FFFFFFFFLL | (((v2 >> 24) & 0xFFFFFF) << 32))))
      {
LABEL_71:
        *(v1 + 56) = 1;
        return;
      }

      __break(1u);
LABEL_66:
      if (*(v1 + 56))
      {
        v67 = *(v1 + 20);
        v68 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v67);
        if (v69)
        {
          v70._countAndFlagsBits = 32;
          v70._object = 0xE100000000000000;
          v68 = ByteBuffer._setStringSlowpath(_:at:)(v70, v67);
        }

        v71 = v68;
        v72 = *(v1 + 20);
        v21 = __CFADD__(v72, v68);
        v73 = v72 + v68;
        if (v21)
        {
          goto LABEL_104;
        }

        *(v1 + 20) = v73;
      }

      else
      {
        v71 = 0;
        v73 = *(v1 + 20);
      }

      v79 = v73;
      v80 = sub_1002F178C(0x2054584554uLL, 0xE500000000000000, v1 + 8, v73);
      if (v81)
      {
        v82._countAndFlagsBits = 0x2054584554;
        v82._object = 0xE500000000000000;
        v80 = ByteBuffer._setStringSlowpath(_:at:)(v82, v79);
      }

      v83 = *(v1 + 20);
      v84 = (v83 + v80);
      if (__CFADD__(v83, v80))
      {
        goto LABEL_101;
      }

      *(v1 + 20) = v84;
      v85 = v71 + v80;
      if (__OFADD__(v71, v80))
      {
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
        goto LABEL_108;
      }

      if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000) != 0)
      {
LABEL_108:
        __break(1u);
        return;
      }

      if ((*(v1 + 1) & 0x10000) == 0)
      {
        v103 = 123;
        v104 = 0xE100000000000000;
        v112._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v112);

        v113._countAndFlagsBits = 658813;
        v113._object = 0xE300000000000000;
        sub_1004A5994(v113);
        v87 = v103;
        v86 = v104;
        v88 = sub_1002F178C(v103, v104, v1 + 8, v84);
        if (v89)
        {
          v90._countAndFlagsBits = v87;
          v90._object = v86;
          v88 = ByteBuffer._setStringSlowpath(_:at:)(v90, v84);
        }

        v91 = v88;

        v92 = *(v3 + 20);
        v93 = (v92 + v91);
        if (!__CFADD__(v92, v91))
        {
          *(v3 + 20) = v93;
          if (!__OFADD__(v85, v91))
          {
            sub_1003E46E4(v93);
            return;
          }

          goto LABEL_107;
        }

        goto LABEL_105;
      }

      v103 = 123;
      v104 = 0xE100000000000000;
      v114._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v114);

      v115._countAndFlagsBits = 168656171;
      v115._object = 0xE400000000000000;
      sub_1004A5994(v115);
      v95 = v103;
      v94 = v104;
      v96 = sub_1002F178C(v103, v104, v1 + 8, v84);
      if (v97)
      {
        v98._countAndFlagsBits = v95;
        v98._object = v94;
        v96 = ByteBuffer._setStringSlowpath(_:at:)(v98, v84);
      }

      v99 = v96;

      v100 = *(v3 + 20);
      v21 = __CFADD__(v100, v99);
      v101 = v100 + v99;
      if (v21)
      {
        goto LABEL_106;
      }

      *(v3 + 20) = v101;
      if (!__OFADD__(v85, v99))
      {
        return;
      }

      __break(1u);
      goto LABEL_94;
    }

    v10 = 0xEB00000000282045;
    v11 = 1413563168;
    v103 = v4;
    v104 = v5;
    v105[0] = v6;
    v106 = v8;
    v107 = v7;
    v108 = v9;
    sub_100396C48(&v103);
    v4 = v16;
    v5 = *(v1 + 20);
    v17 = sub_1002F178C(0x54414E4554414320uLL, 0xEB00000000282045, v1 + 8, v5);
    if (v18)
    {
      v19._countAndFlagsBits = 0x54414E4554414320;
      v19._object = 0xEB00000000282045;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v5);
    }

    v20 = *(v1 + 20);
    v21 = __CFADD__(v20, v17);
    v7 = (v20 + v17);
    if (v21)
    {
      goto LABEL_96;
    }

    *(v1 + 20) = v7;
    if (!__OFADD__(v4, v17))
    {
      return;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_28;
  }

  if (v15 != 1)
  {
    goto LABEL_34;
  }

  v103 = v4;
  v104 = v5;
  v105[0] = v6 & 1;
  v106 = v8;
  v107 = v7;
  v108 = v9;
  sub_100396C48(&v103);
  v4 = v22;
  v5 = *(v1 + 20);
  v23 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v5);
  if (v24)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v5);
  }

  v26 = *(v1 + 20);
  v21 = __CFADD__(v26, v23);
  v27 = v26 + v23;
  if (v21)
  {
    goto LABEL_95;
  }

  *(v1 + 20) = v27;
  if (__OFADD__(v4, v23))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!__OFADD__(v4 + v23, sub_10039633C(v10, v11 & 1)))
  {
    return;
  }

  __break(1u);
LABEL_19:
  if (v15 != 5)
  {
    v50 = v8 | v5;
    v51 = v9 | v10 | v102;
    if (v11 == 192 && !(v50 | v4 | v7 | v51))
    {
      if (*v1 == 1)
      {
        v52 = *(v1 + 20);
        v53 = sub_1002F178C(0x8588E2uLL, 0xA300000000000000, v1 + 8, v52);
        if (v54)
        {
          v55._countAndFlagsBits = 8751330;
          v55._object = 0xA300000000000000;
          v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
        }

        v56 = *(v1 + 20);
        v21 = __CFADD__(v56, v53);
        v34 = v56 + v53;
        if (!v21)
        {
          goto LABEL_75;
        }

        __break(1u);
      }

      return;
    }

    if (v11 != 192 || v4 != 1 || v50 | v7 | v51)
    {
      v74 = *(v1 + 20);
      v75 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v1 + 8, v74);
      if (v76)
      {
        v77._countAndFlagsBits = 2573;
        v77._object = 0xE200000000000000;
        v75 = ByteBuffer._setStringSlowpath(_:at:)(v77, v74);
      }

      v78 = *(v1 + 20);
      v21 = __CFADD__(v78, v75);
      v34 = v78 + v75;
      if (!v21)
      {
        goto LABEL_75;
      }

      goto LABEL_103;
    }

    *(v1 + 56) = 0;
    v4 = *(v1 + 20);
    v57 = sub_1002F178C(0x29uLL, 0xE100000000000000, v1 + 8, v4);
    if (v58)
    {
      v59._countAndFlagsBits = 41;
      v59._object = 0xE100000000000000;
      v57 = ByteBuffer._setStringSlowpath(_:at:)(v59, v4);
    }

    v60 = *(v1 + 20);
    v21 = __CFADD__(v60, v57);
    v34 = v60 + v57;
    if (!v21)
    {
      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (!BYTE6(v2))
  {
    goto LABEL_66;
  }

  if (BYTE6(v2) != 1)
  {
    goto LABEL_71;
  }

  v103 = v4;
  v104 = v5;
  v105[0] = v6;
  *&v105[1] = v2;
  *&v105[5] = WORD2(v2);
  if (*v1 != 1)
  {
LABEL_35:
    ByteBuffer.writeBuffer(_:)(&v103);
    return;
  }

  v109._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v109);

  v110._countAndFlagsBits = 0x5D736574796220;
  v110._object = 0xE700000000000000;
  sub_1004A5994(v110);
  v5 = 91;
  v4 = 0xE100000000000000;
  v28 = *(v1 + 20);
  v29 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v1 + 8, v28);
  if (v30)
  {
    v31._countAndFlagsBits = 91;
    v31._object = 0xE100000000000000;
    v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
  }

  v32 = v29;

  v33 = *(v3 + 20);
  v21 = __CFADD__(v33, v32);
  v34 = v33 + v32;
  if (!v21)
  {
LABEL_75:
    *(v3 + 20) = v34;
    return;
  }

  __break(1u);
LABEL_28:
  v103 = v4;
  v104 = v5;

  v111._countAndFlagsBits = 0x20444E4550504120;
  v111._object = 0xE800000000000000;
  sub_1004A5994(v111);
  v5 = v103;
  v4 = v104;
  v35 = *(v3 + 20);
  v36 = sub_1002F178C(v103, v104, v3 + 8, v35);
  if (v37)
  {
    v38._countAndFlagsBits = v5;
    v38._object = v4;
    v36 = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
  }

  v39 = v36;

  v40 = *(v3 + 20);
  v21 = __CFADD__(v40, v39);
  v41 = v40 + v39;
  if (v21)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *(v3 + 20) = v41;
  sub_100441F24(v102);
  if (!__OFADD__(v39, v42))
  {
    return;
  }

  __break(1u);
LABEL_34:
  *v105 = v102;
  *&v105[3] = *(&v102 + 3);
  v103 = v4;
  v104 = v5;
  if ((*v3 & 1) == 0)
  {
    goto LABEL_35;
  }
}

BOOL _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 21) | (*(a1 + 23) << 16);
  HIBYTE(v43) = *(a1 + 23);
  *(&v43 + 1) = *(a1 + 17);
  v12 = *(&v43 + 1) | (v11 << 32);
  LOBYTE(v43) = v5;
  *(&v43 + 5) = v11;
  v13 = v10 >> 5;
  if (v10 >> 5 > 2)
  {
    if (v10 >> 5 > 4)
    {
      if (v13 == 5)
      {
        if ((a2[7] & 0xE0) == 0xA0)
        {
          v22 = *a2;
          v23 = a2[1];
          v24 = a2[2];
          v44[0] = v5;
          *&v44[1] = *(&v43 + 1);
          if (BYTE6(v12))
          {
            if (BYTE6(v12) == 1)
            {
              if (HIBYTE(v24) != 1 || !sub_10020FBD0(v3, v4, *v44 | (((v12 >> 24) & 0xFFFFFF) << 32), v22, v23, v24 & 0xFFFFFFFFFFFFFFLL))
              {
                return 0;
              }
            }

            else if (HIBYTE(v24) != 2 || v22 | v23 | v24 & 0xFFFFFFFFFFFFFFLL)
            {
              return 0;
            }
          }

          else if (HIBYTE(v24) || v3 != v22)
          {
            return 0;
          }

          return 1;
        }
      }

      else
      {
        v32 = v7 | v4;
        v33 = v8 | v9 | v43;
        if (v10 != 192 || v32 | v3 | v6 | v33)
        {
          if (v10 == 192 && v3 == 1 && !(v32 | v6 | v33))
          {
            v38 = *(a2 + 56);
            if ((v38 & 0xE0) != 0xC0 || v38 != 192 || *a2 != 1)
            {
              return 0;
            }
          }

          else
          {
            v39 = *(a2 + 56);
            if ((v39 & 0xE0) != 0xC0 || v39 != 192 || *a2 != 2)
            {
              return 0;
            }
          }

          v37 = a2[1];
          v40 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          v36 = *&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | a2[2];
        }

        else
        {
          v34 = *(a2 + 56);
          if ((v34 & 0xE0) != 0xC0 || v34 != 192)
          {
            return 0;
          }

          v35 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          v36 = *&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | a2[2];
          v37 = a2[1] | *a2;
        }

        if (!(v36 | v37))
        {
          return 1;
        }
      }
    }

    else
    {
      if (v13 == 3)
      {
        if ((a2[7] & 0xE0) != 0x60)
        {
          return 0;
        }

        v14 = *(a2 + 16);
        v15 = a2[1];
        v17 = a2[4];
        v16 = a2[5];
        if ((sub_10010321C(v3, *a2) & 1) == 0)
        {
          return 0;
        }

        if (v5)
        {
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 1) != 0 || v4 != v15)
        {
          return 0;
        }

        return (sub_10020FB40(v6, v17) & 1) != 0 && (sub_1003A0B30(v8, v16) & 1) != 0;
      }

      if ((a2[7] & 0xE0) == 0x80)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if ((a2[7] & 0xE0) != 0x40)
      {
        return 0;
      }

LABEL_33:
      v29 = a2[1];
      v30 = *a2;
      v31 = a2[2] & 0xFFFFFFFFFFFFFFLL;

      return sub_10020FBD0(v3, v4, v43 | (((v12 >> 24) & 0xFFFFFF) << 32), v30, v29, v31);
    }

    v18 = *(a2 + 56);
    if ((v18 & 0xE0) != 0x20)
    {
      return 0;
    }

    v41 = a2[6];
    v42 = a2[5];
    v19 = a2[4];
    v20 = *(a2 + 4);
    v21 = a2[1];
    if ((sub_10010321C(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20 & 1 | (v4 != v21))
    {
      return 0;
    }

    return (sub_10020FB40(v6, v19) & 1) != 0 && (sub_1003A0B30(v8, v42) & 1) != 0 && v9 == v41 && ((v10 ^ v18) & 1) == 0;
  }

  if (*(a2 + 56) > 0x1Fu)
  {
    return 0;
  }

  v25 = a2[2];
  v26 = a2[3];
  if (v3 == *a2 && v4 == a2[1])
  {
    return v7 == v26 && (sub_1000FFC98(v43, v25) & 1) != 0;
  }

  v27 = sub_1004A6D34();
  result = 0;
  if (v27)
  {
    return v7 == v26 && (sub_1000FFC98(v43, v25) & 1) != 0;
  }

  return result;
}

uint64_t type metadata accessor for CommandStreamPart(uint64_t a1)
{
  result = qword_1005DC3C0;
  if (!qword_1005DC3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DED70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandStreamPart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s12NIOIMAPCore217CommandStreamPartO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v5);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart(0);
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (v29 - v12);
  __chkstk_darwin(v14);
  v16 = (v29 - v15);
  v17 = sub_10000C9C0(&qword_1005DC400, &unk_100501360);
  __chkstk_darwin(v17 - 8);
  v19 = v29 - v18;
  v21 = v29 + *(v20 + 56) - v18;
  sub_1003DED70(a1, v29 - v18);
  sub_1003DED70(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

    sub_1003DED70(v19, v10);
    v23 = *v10;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_15;
    }

    appended = sub_10020FBD0(v23, *(v10 + 1), *(v10 + 4) | (v10[22] << 48) | (*(v10 + 10) << 32), *v21, *(v21 + 1), *(v21 + 4) | (*(v21 + 10) << 32) | (v21[22] << 48));
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1003DED70(v19, v16);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1003DEE04(v16, type metadata accessor for TaggedCommand);
LABEL_15:
        sub_1003DF724(v19);
        return 0;
      }

      sub_1003DF6BC(v21, v7, type metadata accessor for TaggedCommand);
      v27 = *v16 == *v7 && v16[1] == v7[1];
      if (!v27 && (sub_1004A6D34() & 1) == 0 || (_s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(v16 + *(v5 + 20), v7 + *(v5 + 20)) & 1) == 0)
      {
        sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
        sub_1003DEE04(v16, type metadata accessor for TaggedCommand);
        sub_1003DEE04(v19, type metadata accessor for CommandStreamPart);
        return 0;
      }

      sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
      sub_1003DEE04(v16, type metadata accessor for TaggedCommand);
LABEL_24:
      sub_1003DEE04(v19, type metadata accessor for CommandStreamPart);
      return 1;
    }

    sub_1003DED70(v19, v13);
    v25 = v13[1];
    v29[0] = *v13;
    v29[1] = v25;
    v30[0] = v13[2];
    *(v30 + 9) = *(v13 + 41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003DEDD4(v29);
      goto LABEL_15;
    }

    v26 = *(v21 + 1);
    v31[0] = *v21;
    v31[1] = v26;
    v32[0] = *(v21 + 2);
    *(v32 + 9) = *(v21 + 41);
    appended = _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v29, v31);
    sub_1003DEDD4(v31);
    sub_1003DEDD4(v29);
  }

  sub_1003DEE04(v19, type metadata accessor for CommandStreamPart);
  return appended;
}

unint64_t sub_1003DF2C0()
{
  result = qword_1005DC338;
  if (!qword_1005DC338)
  {
    result = swift_getWitnessTable("9]\b", &type metadata for AppendCommand, v0, v1);
    atomic_store(result, &qword_1005DC338);
  }

  return result;
}

unint64_t sub_1003DF318()
{
  result = qword_1005DC340;
  if (!qword_1005DC340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppendCommand.CatenateData, &type metadata for AppendCommand.CatenateData, v0, v1);
    atomic_store(result, &qword_1005DC340);
  }

  return result;
}

unint64_t sub_1003DF370()
{
  result = qword_1005DC348;
  if (!qword_1005DC348)
  {
    v3 = type metadata accessor for CommandStreamPart(255);
    result = swift_getWitnessTable("i\\\b", v3, v0, v1);
    atomic_store(result, &qword_1005DC348);
  }

  return result;
}

uint64_t sub_1003DF3C8(uint64_t a1)
{
  if ((*(a1 + 23) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 23) & 3;
  }
}

uint64_t sub_1003DF3E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1003DF400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFF9 && *(a1 + 57))
  {
    return (*a1 + 2097146);
  }

  if ((((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xFu) << 14)))) ^ 0x1FFFFF) >= 0x1FFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xF) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1003DF480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 2097146;
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 48) = 0;
      *(result + 56) = (v3 >> 13) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_1003DF528(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    v3 = *(a1 + 56) & 1 | (32 * a2);
    result = vandq_s8(*(a1 + 32), vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *(a1 + 32) = result;
    *(a1 + 56) = v3;
  }

  else
  {
    *a1 = a2 - 6;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = -64;
  }

  return result;
}

uint64_t sub_1003DF588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 23);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003DF5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003DF614(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

uint64_t sub_1003DF648(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TaggedCommand(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003DF6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF724(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC400, &unk_100501360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContinuationRequest.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    sub_1004A6EB4(1uLL);
    swift_beginAccess();
    return sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EB4(0);
    if ((~a2 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      ResponseTextCode.hash(into:)(a1, a2);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

Swift::Int ContinuationRequest.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v9, a1, a2, a3, a4 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DF8E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003DF958(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1004A6F14();
}

BOOL sub_1003DF9DC(unint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v10 = a5 & 0xF000000000000007;
      if ((~a1 & 0xF000000000000007) != 0)
      {
        if (v10 == 0xF000000000000007)
        {
          return 0;
        }

        v11 = a1;
        v12 = a6;
        v13 = a7;
        v14 = a2;
        v15 = a3;
        sub_1000110C4(a5);
        LOBYTE(v11) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, a5);
        sub_10001114C(a5);
        a3 = v15;
        a2 = v14;
        a7 = v13;
        a6 = v12;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 != 0xF000000000000007)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7 || (sub_1004A6D34() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a8 & 1) == 0)
  {
    return 0;
  }

  v8 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_10020FBD0(a1, a2, v8, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003DFAF8()
{
  result = qword_1005DC408;
  if (!qword_1005DC408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContinuationRequest, &type metadata for ContinuationRequest, v0, v1);
    atomic_store(result, &qword_1005DC408);
  }

  return result;
}

uint64_t sub_1003DFB68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (v44 - v5);
  Parameter = type metadata accessor for CreateParameter(0);
  __chkstk_darwin(Parameter);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003E0540(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003E05A4(v9, v6);
    v22 = sub_10049EB14(v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    return v22;
  }

  v10 = *v9;
  v11 = *(v2 + 20);
  result = sub_1002F178C(0x20455355uLL, 0xE400000000000000, v2 + 8, v11);
  if (v13)
  {
    v14._countAndFlagsBits = 541414229;
    v14._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v2 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v17;
  v44[0] = v10;
  if (v10[2])
  {
    result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = result;
    v21 = *(v2 + 20);
    LODWORD(v17) = v21 + result;
    if (__CFADD__(v21, result))
    {
      goto LABEL_37;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v20 = 0;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v17);
  if (v23)
  {
    v24._countAndFlagsBits = 40;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v17);
  }

  v25 = *(v2 + 20);
  v26 = __CFADD__(v25, result);
  v27 = v25 + result;
  if (v26)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __chkstk_darwin(result);
  v44[-6] = sub_1003C40B8;
  v44[-5] = 0;
  v44[-4] = v2;
  v44[-3] = v44;
  v44[-2] = 32;
  v44[-1] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003DACD4, &v44[-8], v10);
  v29 = v28 + result;
  if (__OFADD__(v28, result))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v30);
  if (v31)
  {
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v2 + 20);
  v34 = (v33 + result);
  if (__CFADD__(v33, result))
  {
    goto LABEL_34;
  }

  *(v2 + 20) = v34;
  v35 = __OFADD__(v29, result);
  v36 = v29 + result;
  if (v35)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v10[2])
  {

    v43 = v36;
    goto LABEL_26;
  }

  v37 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v34);
  if (v38)
  {
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v34);
  }

  v40 = v37;

  v41 = *(v2 + 20);
  v26 = __CFADD__(v41, v40);
  v42 = v41 + v40;
  if (v26)
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v42;
  v43 = v36 + v40;
  if (__OFADD__(v36, v40))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_26:
  result = v15 + v43;
  if (__OFADD__(v15, v43))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t CreateParameter.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  Parameter = type metadata accessor for CreateParameter(0);
  __chkstk_darwin(Parameter);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003E0540(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 40;
      do
      {
        sub_1004A5814();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    sub_1003E05A4(v16, v13);
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003E0614(&v13[*(v11 + 52)], v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1002FC114(v10, v7);
      sub_1004A6EC4(1u);
      ParameterValue.hash(into:)(a1);
      sub_1003E0918(v7, type metadata accessor for ParameterValue);
    }

    return sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
  }
}