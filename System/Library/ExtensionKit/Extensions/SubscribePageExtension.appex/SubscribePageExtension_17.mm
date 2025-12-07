uint64_t sub_1001DE490(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);

  sub_10000C518(&unk_10092CB30, qword_1007B1A48);
  sub_1000D5C0C();
  sub_1001E31B8();
  sub_1007542E4();

  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProductLockupLayout(0);
  sub_10000C888((v3 + v12[11]), *(v3 + v12[11] + 24));
  sub_100750414();
  v14 = rint(v13);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v15 = (v3 + *(v38 + 96));
  v16 = v15[3];
  sub_10000C888(v15, v16);
  sub_100536120(v16);
  sub_100750564();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v11, v8);
  v20 = *(v4 + 96);
  sub_10000C888((v4 + 72), v20);
  sub_100536120(v20);
  sub_100750564();
  v22 = v21;
  v19(v11, v8);
  swift_getObjectType();
  v23 = [a1 traitCollection];
  v24 = sub_1007537E4();

  if ((v24 & 1) == 0 && *(v4 + v12[15]) == 1)
  {
    v25 = sub_1001E0FC8(a1, v4, a2, a3);
    v26 = (v4 + v12[12]);
    sub_10000C888(v26, v26[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v26, v26[3]);
      sub_100750404();
      v28 = v27;
      v30 = v29;
      v31 = (v4 + *(v38 + 76));
      v32 = v31[3];
      sub_10000C888(v31, v32);
      sub_100536120(v32);
      sub_100750564();
      v34 = v33;
      v19(v11, v8);
      v35 = v34 - v30;
      if (v34 - v30 <= 0.0)
      {
        v35 = 0.0;
      }

      v14 = v14 + v28 + v35;
    }

    if (v14 <= v25)
    {
      v14 = v25;
    }
  }

  return v18 + v22 + v14;
}

uint64_t sub_1001DE908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1002554F8(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1002554F8((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001DE9EC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGFloat a17, CGFloat a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v167 = a16;
  v162 = a15;
  v179 = *&a11;
  v177 = a8;
  v159 = a6;
  v176 = a4;
  v173 = a3;
  v171 = a2;
  v160 = a1;
  v29 = a22;
  v174 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_100754724());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v164 = v42;
  v43 = *(v42 + 16);
  v163 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a13;
  v43(v40);
  v166 = v35;
  v44 = *(v35 + 16);
  v165 = v38;
  v169 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100016B4C(a12 + v46, &v181, &unk_100928A00, &qword_1007A5AB0);
  v170 = a20;
  v172 = a7;
  if (v182)
  {
    sub_100012160(&v181, &v183);
    v47 = (a12 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
    v48 = v47[3];
    sub_10000C888(v47, v48);
    sub_100536120(v48);
    v49 = v179;
    sub_100750564();
    v161 = a17;
    v51 = v50;
    (*(v32 + 8))(v34, v31);
    v185.origin.x = v160;
    v185.origin.y = v171;
    v185.size.width = v173;
    v185.size.height = v176;
    MaxY = CGRectGetMaxY(v185);
    v53 = v159;
    v54 = MaxY - v159;
    if (v54 > v51 + a19)
    {
      v55 = v54;
    }

    else
    {
      v55 = v51 + a19;
    }

    v186.origin.x = a20;
    v186.origin.y = a21;
    v186.size.width = a22;
    v186.size.height = a23;
    v56 = CGRectGetMaxX(v186) - a5;
    sub_10000C888(&v183, v184);
    sub_100753B24();
    sub_100750394();
    v187.origin.x = v56;
    v187.origin.y = v55;
    a7 = v172;
    v30 = v161;
    v187.size.width = a5;
    v187.size.height = v53;
    v29 = a22;
    v176 = CGRectGetMaxY(v187);
    sub_10000C620(&v183);
    v57 = v170;
  }

  else
  {
    sub_10000C8CC(&v181, &unk_100928A00, &qword_1007A5AB0);
    v188.origin.x = v160;
    v188.origin.y = v171;
    v188.size.width = v173;
    v188.size.height = v176;
    v58 = CGRectGetMaxY(v188);
    if (v58 <= a19)
    {
      v58 = a19;
    }

    v176 = v58;
    v57 = a20;
    v49 = v179;
  }

  v178 = a21;
  v175 = v29;
  v189.origin.x = v57;
  v189.origin.y = a21;
  v189.size.width = v29;
  v189.size.height = a23;
  MaxX = CGRectGetMaxX(v189);
  v190.origin.x = a7;
  v60 = v177;
  v190.origin.y = v177;
  v190.size.width = v30;
  v61 = v174;
  v190.size.height = v174;
  v179 = MaxX - CGRectGetWidth(v190);
  v171 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  v62 = (a12 + *(*&v171 + 72));
  v63 = v62[3];
  sub_10000C888(v62, v63);
  sub_100536120(v63);
  sub_100750564();
  v65 = v64;
  v66 = *(v32 + 8);
  v158 = v34;
  v160 = *&v31;
  *&v159 = v32 + 8;
  v157 = v66;
  v66(v34, v31);
  v67 = v176 + v65;
  v191.origin.x = a7;
  v191.origin.y = v60;
  v191.size.width = v30;
  v191.size.height = v61;
  Width = CGRectGetWidth(v191);
  v192.origin.x = a7;
  v192.origin.y = v60;
  v69 = v30;
  v192.size.width = v30;
  v192.size.height = v61;
  Height = CGRectGetHeight(v192);
  v71 = (a12 + v45[11]);
  v72 = v49;
  sub_10000C888(v71, v71[3]);
  v180 = a23;
  v176 = Height;
  sub_100753B24();
  sub_100750394();
  sub_10000C888(v71, v71[3]);
  v73 = sub_1007503A4();
  sub_10000C888(v71, v71[3]);
  if ((sub_1007503A4() & 1) == 0)
  {
    v172 = v179;
    v177 = v67;
    v69 = Width;
    v174 = v176;
  }

  v74 = (a12 + v45[12]);
  sub_10000C888(v74, v74[3]);
  v75 = sub_1007503A4();
  v173 = v67;
  if (v75)
  {
    sub_10000C888(v74, v74[3]);
    sub_100750394();
    v76 = *&v171;
    v77 = v175;
    v78 = v180;
    v79 = v178;
    v80 = v57;
  }

  else
  {
    v76 = *&v171;
    v156 = Width;
    if (v73)
    {
      v81 = v57;
      sub_100016B4C(a12 + v46, &v183, &unk_100928A00, &qword_1007A5AB0);
      v82 = v184;
      sub_10000C8CC(&v183, &unk_100928A00, &qword_1007A5AB0);
      v161 = v69;
      v83 = v172;
      if (v82)
      {
        v84 = (a12 + v76[20]);
        v85 = v84[3];
        sub_10000C888(v84, v85);
        v86 = v158;
        sub_100536120(v85);
        sub_100750564();
        v155 = v87;
        v157(v86, *&v160);
      }

      else
      {
        v155 = 0.0;
      }

      v99 = v177;
      sub_100016B4C(a12 + v46, &v183, &unk_100928A00, &qword_1007A5AB0);
      if (v184)
      {
        sub_10000C888(&v183, v184);
        v100 = v175;
        v101 = v180;
        sub_100750414();
        v153 = v102;
        sub_10000C620(&v183);
      }

      else
      {
        sub_10000C8CC(&v183, &unk_100928A00, &qword_1007A5AB0);
        v153 = 0;
        v101 = v180;
        v100 = v175;
      }

      v195.origin.x = v81;
      v195.origin.y = v178;
      v195.size.width = v100;
      v195.size.height = v101;
      CGRectGetWidth(v195);
      v196.origin.x = v83;
      v196.origin.y = v99;
      v177 = v99;
      v103 = v161;
      v196.size.width = v161;
      v104 = v174;
      v196.size.height = v174;
      CGRectGetWidth(v196);
      v105 = v76[19];
      v154 = a12;
      v106 = a12 + v105;
      v152 = a12 + v105;
      v107 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v108 = (v106 + *(v107 + 28));
      v109 = v108[3];
      v151 = v108;
      sub_10000C888(v108, v109);
      v110 = v158;
      sub_100536120(v109);
      sub_100750564();
      v111 = v83;
      v112 = v160;
      v113 = v157;
      v157(v110, *&v160);
      v114 = (v152 + *(v107 + 24));
      v115 = v114[3];
      sub_10000C888(v114, v115);
      sub_100536120(v115);
      sub_100750564();
      v113(v110, *&v112);
      v116 = v103;
      sub_10000C888(v74, v74[3]);
      v78 = v101;
      v117 = v177;
      sub_100750404();
      v119 = v118;
      v197.origin.x = v111;
      v197.origin.y = v117;
      v197.size.width = v116;
      v197.size.height = v104;
      CGRectGetMidY(v197);
      sub_10000C888(v71, v71[3]);
      v120 = sub_1007503A4();
      v155 = v119;
      if ((v120 & 1) != 0 || (v198.origin.x = v111, v198.origin.y = v117, v198.size.width = v116, v198.size.height = v104, CGRectGetHeight(v198) < v119))
      {
        v199.size.width = v116;
        v121 = v111;
        v199.origin.x = v111;
        v199.origin.y = v117;
        v199.size.height = v104;
        CGRectGetMinY(v199);
      }

      else
      {
        v121 = v111;
      }

      sub_10000C888(v71, v71[3]);
      v122 = sub_1007503A4();
      v76 = *&v171;
      a12 = v154;
      v123 = v121;
      v124 = v117;
      v125 = v161;
      v126 = v174;
      if (v122)
      {
        CGRectGetMinX(*&v123);
      }

      else
      {
        CGRectGetMaxX(*&v123);
        v127 = v151[3];
        sub_10000C888(v151, v127);
        v128 = v158;
        sub_100536120(v127);
        sub_100750564();
        v157(v128, *&v160);
      }

      v79 = v178;
      v80 = v170;
    }

    else
    {
      v88 = v172;
      v89 = v69;
      sub_10000C888(v74, v74[3]);
      sub_100750404();
      v91 = v90;
      sub_10000C888((a12 + v76[19]), *(a12 + v76[19] + 24));
      v155 = v91;
      sub_100750584();
      v193.origin.x = v88;
      v92 = v177;
      v193.origin.y = v177;
      v193.size.width = v89;
      v93 = v174;
      v193.size.height = v174;
      CGRectGetMinX(v193);
      v194.origin.x = v88;
      v194.origin.y = v92;
      v194.size.width = v89;
      v194.size.height = v93;
      CGRectGetWidth(v194);
      sub_10000C888(v71, v71[3]);
      v94 = sub_1007503A4();
      v95 = v88;
      v96 = v92;
      v97 = v89;
      v98 = v93;
      if (v94)
      {
        CGRectGetMinY(*&v95);
      }

      else
      {
        CGRectGetMaxY(*&v95);
      }

      v79 = v178;
      v80 = v170;
      v78 = v180;
    }

    sub_10000C888(v74, v74[3]);
    v77 = v175;
    sub_100753B24();
    sub_100750394();
    Width = v156;
  }

  v200.origin.x = v80;
  v200.origin.y = v79;
  v200.size.width = v77;
  v200.size.height = v78;
  v129 = CGRectGetWidth(v200);
  v201.origin.x = v179;
  v201.origin.y = v173;
  v201.size.width = Width;
  v201.size.height = v176;
  v130 = v77;
  v131 = v129 - CGRectGetWidth(v201);
  *&v181 = v72;
  sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100743464();
  if (v131 - v183 > 0.0)
  {
    v132 = v131 - v183;
  }

  else
  {
    v132 = 0.0;
  }

  v202.origin.x = v80;
  v202.origin.y = v79;
  v202.size.width = v77;
  v133 = v180;
  v202.size.height = v180;
  CGRectGetHeight(v202);
  v134 = v163;
  v135 = v168;
  sub_100750404();
  v136 = Width;
  v138 = v137;
  v140 = v139;
  v177 = v141;
  v203.origin.x = v80;
  v203.origin.y = v79;
  v203.size.width = v130;
  v203.size.height = v133;
  MinX = CGRectGetMinX(v203);
  v204.origin.x = v179;
  v204.origin.y = v173;
  v204.size.width = v136;
  v204.size.height = v176;
  MinY = CGRectGetMinY(v204);
  if (v132 < v138)
  {
    v138 = v132;
  }

  v205.origin.x = MinX;
  v205.origin.y = MinY;
  v205.size.width = v138;
  v205.size.height = v140;
  v179 = CGRectGetMaxY(v205) - v177;
  sub_100753B24();
  sub_100750394();
  v206.origin.x = v80;
  v144 = v178;
  v206.origin.y = v178;
  v206.size.width = v130;
  v145 = v180;
  v206.size.height = v180;
  CGRectGetHeight(v206);
  v146 = v165;
  v147 = v169;
  sub_100750404();
  v176 = v148;
  v207.origin.x = v80;
  v207.origin.y = v144;
  v207.size.width = v130;
  v207.size.height = v145;
  v177 = CGRectGetMinX(v207);
  sub_10000C888((a12 + v76[21]), *(a12 + v76[21] + 24));
  sub_100750584();
  sub_100753B24();
  sub_100750394();
  (*(v164 + 8))(v134, v135);
  return (*(v166 + 8))(v146, v147);
}

double sub_1001DFA40(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v25 = sub_1007537E4();

  v16 = *(a2 + 56);
  sub_10000C888((a2 + 32), v16);
  sub_100536120(v16);
  sub_100750564();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = *(a2 + 96);
  sub_10000C888((a2 + 72), v18);
  sub_100536120(v18);
  sub_100750564();
  v17(v14, v10);
  v19 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v20 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v26 = a1;
  sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100743464();
  v24 = a3;
  sub_1001DFD38(a1, a2, a3, v19 - v27, a5);
  v21 = (a2 + *(v20 + 96));
  v22 = v21[3];
  sub_10000C888(v21, v22);
  sub_100536120(v22);
  sub_100750564();
  v17(v14, v10);
  if (v25 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1001E02DC(a1, a2, v24, a4, a5);
  }

  return a4;
}

double sub_1001DFD38(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100754724();
  v56 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007537E4();

  v57 = type metadata accessor for ProductLockupLayout(0);
  v16 = v57[10];
  sub_100016B4C(a2 + v16, v58, &unk_100928A00, &qword_1007A5AB0);
  if (v59)
  {
    sub_10000C888(v58, v59);
    sub_100750414();
    v18 = v17;
    sub_10000C620(v58);
  }

  else
  {
    sub_10000C8CC(v58, &unk_100928A00, &qword_1007A5AB0);
    v18 = 0.0;
  }

  v19 = sub_1001E1244(a1, a2, a4, a5);
  sub_100016B4C(a2 + v16, v58, &unk_100928A00, &qword_1007A5AB0);
  v20 = v59;
  sub_10000C8CC(v58, &unk_100928A00, &qword_1007A5AB0);
  if (v20)
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v57[15]))
      {
        v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
        v23 = v22[3];
        sub_10000C888(v22, v23);
        sub_100536120(v23);
        sub_100750564();
        v25 = v24;
        (*(v56 + 8))(v13, v10);
        v19 = v19 + v18 + v25;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v54 = *(a2 + 120);
  v26 = (a2 + v21[11]);
  v27 = v26[3];
  v53 = v26;
  sub_10000C888(v26, v27);
  sub_100750414();
  v29 = v28;
  sub_100016B4C(a2 + v16, v58, &unk_100928A00, &qword_1007A5AB0);
  v30 = v59;
  sub_10000C8CC(v58, &unk_100928A00, &qword_1007A5AB0);
  v55 = a3;
  if (v30)
  {
    v31 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v32 = v31[3];
    sub_10000C888(v31, v32);
    sub_100536120(v32);
    sub_100750564();
    v33 = a1;
    v34 = v56;
    (*(v56 + 8))(v13, v10);
    v35 = v10;
  }

  else
  {
    v35 = v10;
    v33 = a1;
    v34 = v56;
  }

  v52 = a2;
  v56 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v36 = a2 + *(v56 + 76);
  v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v38 = (v36 + *(v37 + 28));
  v39 = v38[3];
  sub_10000C888(v38, v39);
  sub_100536120(v39);
  sub_100750564();
  v40 = *(v34 + 8);
  v40(v13, v35);
  v41 = v40;
  v42 = (v36 + *(v37 + 24));
  v43 = v42[3];
  sub_10000C888(v42, v43);
  sub_100536120(v43);
  sub_100750564();
  v40(v13, v35);
  v44 = v52;
  sub_10000C888((v52 + v57[12]), *(v52 + v57[12] + 24));
  sub_100750414();
  v46 = v45;
  sub_10000C888(v53, v53[3]);
  if (sub_1007503A4())
  {
    v29 = v46;
  }

  v47 = (v44 + *(v56 + 72));
  v48 = v47[3];
  sub_10000C888(v47, v48);
  sub_100536120(v48);
  sub_100750564();
  v50 = v49;
  v41(v13, v35);
  if (v19 < v54 - v50 - v29)
  {
    v19 = v54 - v50 - v29;
  }

  return sub_1001E02DC(v33, v44, v55, a4, a5) + v19;
}

double sub_1001E02DC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v50 = a3;
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007537E4();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10000C888((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_100750414();
  v18 = v17;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19 = (a2 + *(v48 + 72));
  v20 = v19[3];
  sub_10000C888(v19, v20);
  sub_100536120(v20);
  sub_100750564();
  v22 = v21;
  v23 = *(v10 + 8);
  v49 = v9;
  v23(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v24 = a2 + *(v48 + 76);
    v25 = (v24 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v26 = v25[3];
    sub_10000C888(v25, v26);
    sub_100536120(v26);
    sub_100750564();
    v28 = v27;
    v23(v13, v49);
    sub_1001E0744(a1, a2, a4, a5, a4 - (v18 + v28));
    v30 = v29;
    v31 = sub_1001E0FC8(a1, a2, a4, a5);
    if (v30 > v31)
    {
      v31 = v30;
    }
  }

  else
  {
    v32 = v16[10];
    sub_100016B4C(a2 + v32, v51, &unk_100928A00, &qword_1007A5AB0);
    if (v52)
    {
      sub_10000C888(v51, v52);
      sub_100750414();
      v34 = v33;
      sub_10000C620(v51);
    }

    else
    {
      sub_10000C8CC(v51, &unk_100928A00, &qword_1007A5AB0);
      v34 = 0.0;
    }

    v35 = v48;
    sub_100016B4C(a2 + v32, v51, &unk_100928A00, &qword_1007A5AB0);
    v36 = v52;
    sub_10000C8CC(v51, &unk_100928A00, &qword_1007A5AB0);
    if (v36)
    {
      v37 = (a2 + *(v35 + 80));
      v38 = v37[3];
      sub_10000C888(v37, v38);
      sub_100536120(v38);
      sub_100750564();
      v40 = v39;
      v41 = v49;
      v23(v13, v49);
    }

    else
    {
      v40 = 0.0;
      v41 = v49;
    }

    v42 = a2 + *(v35 + 76);
    v43 = (v42 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v44 = v43[3];
    sub_10000C888(v43, v44);
    sub_100536120(v44);
    sub_100750564();
    v46 = v45;
    v23(v13, v41);
    sub_1001E0744(a1, a2, a4, a5, a4 - (v40 + v34 + v18 + v46));
  }

  return v22 + 0.0 + v31;
}

void sub_1001E0744(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v79 = sub_10074CD14();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v12 = sub_100754724();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100740E74();
  v76 = *(v78 - 1);
  __chkstk_darwin(v78);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10000C888(v18, v18[3]);
  sub_100750414();
  v19 = (a2 + v17[16]);
  v75 = v19[1];
  if (v75)
  {
    v70 = v13;
    v71 = v12;
    v72 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v80[0] = a1;
    sub_10000C518(&unk_100923C20, &unk_1007B1940);
    v67 = v20;
    sub_100743464();
    v21 = v83;
    v68 = v17;
    v22 = v17[15];
    v69 = a2;
    v23 = *(a2 + v22);
    sub_10000C888(v18, v18[3]);
    if (sub_1007503A4())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v75;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v84.origin.x = v28;
      v84.origin.y = v30;
      v84.size.width = v32;
      v84.size.height = v34;
      Width = CGRectGetWidth(v84);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (sub_100740E64(), v80[0] = v72, v80[1] = v25, sub_1000D5C0C(), sub_1007542C4(), v38 = v37, (*(v76 + 8))(v16, v78), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_1007537E4(), v39, (v40)))
      {
        v78 = v21;
        v41 = sub_1001DE490(v72, v25);
        v42 = *(v41 + 16);
        v43 = (v77 + 8);
        LODWORD(v76) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v77 = -v42;
        v45 = -1;
        while (v77 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = sub_10074F3F4();
          v81 = v48;
          v82 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v49 = sub_10000D134(v80);
          (*(*(v48 - 8) + 104))(v49, v76, v48);

          v50 = v78;
          sub_10074FC74();
          sub_10000C620(v80);
          a1 = v47;
          sub_10074CD04();
          sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v51 = v79;
          sub_100750404();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v78;
            goto LABEL_13;
          }
        }

        v60 = sub_10074F3F4();
        v81 = v60;
        v82 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v61 = sub_10000D134(v80);
        (*(*(v60 - 8) + 104))(v61, v76, v60);
        v62 = v78;
        sub_10074FC74();
        sub_10000C620(v80);
        v63 = v73;
        sub_10074CD04();
        sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v64 = v79;
        sub_100750404();
        v66 = v65;

        (*v43)(v63, v64);
        v54 = v71;
        v55 = v70;
        v56 = v69;
        v57 = v68;
        if (v66 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v71;
        v55 = v70;
        v56 = v69;
        v57 = v68;
LABEL_14:
        sub_10000C888((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_100750404();
        v58 = v67[3];
        sub_10000C888(v67, v58);
        v59 = v74;
        sub_100536120(v58);
        sub_100750564();
        (*(v55 + 8))(v59, v54);
      }
    }
  }
}

double sub_1001E0FC8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_100016B4C(a2 + *(v9 + 52), &v25, &qword_10092BC30, &qword_1007AD5C0);
  if (!v26)
  {
    sub_10000C8CC(&v25, &qword_10092BC30, &qword_1007AD5C0);
    return 0.0;
  }

  sub_100012160(&v25, v27);
  sub_100016B4C(a2 + *(v9 + 56), &v23, &qword_10092BC30, &qword_1007AD5C0);
  if (!v24)
  {
    sub_10000C8CC(&v23, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C620(v27);
    return 0.0;
  }

  sub_100012160(&v23, &v25);
  sub_10000C888(v27, v27[3]);
  sub_100750404();
  v11 = v10;
  v13 = v12;
  sub_10000C888(&v25, v26);
  sub_100750404();
  v15 = v14;
  v16 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84));
  v17 = v16[3];
  sub_10000C888(v16, v17);
  sub_100536120(v17);
  sub_100750564();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v15 + v11 - v13 + v19;
  sub_10000C620(&v25);
  sub_10000C620(v27);
  return v20;
}

double sub_1001E1244(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v58 = sub_1007537E4();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v59 = a1;
  v13 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100743464();
  v14 = *v62;
  v15 = v12;
  *&v59 = a1;
  v57 = v13;
  sub_100743464();
  v16 = *v62;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_100016B4C(a2 + v18, v62, &unk_100928A00, &qword_1007A5AB0);
  if (v63)
  {
    sub_10000C888(v62, v63);
    sub_100750414();
    sub_10000C620(v62);
  }

  else
  {
    sub_10000C8CC(v62, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(a2 + v18, v62, &unk_100928A00, &qword_1007A5AB0);
  v19 = v63;
  sub_10000C8CC(v62, &unk_100928A00, &qword_1007A5AB0);
  if (v19)
  {
    v20 = (a2 + *(v15 + 80));
    v21 = v20[3];
    sub_10000C888(v20, v21);
    sub_100536120(v21);
    sub_100750564();
    (*(v7 + 8))(v10, v6);
  }

  v22 = (a2 + v17[6]);
  sub_10000C888(v22, v22[3]);
  sub_100750404();
  v25 = v24;
  v27 = v26;
  v28 = v23;
  v30 = v29;
  if (v14 - v23 > 0.0)
  {
    v31 = v14 - v23;
  }

  else
  {
    v31 = 0.0;
  }

  sub_10000C888(v22, v22[3]);
  sub_100750844();
  v33 = v27 - v30 + v31 + v32;
  sub_10000C824(v22, v62);
  *&v59 = a1;
  sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_100743464();
  v34 = v17[9];
  sub_100016B4C(a2 + v34, &v59, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v59, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C888(v62, v63);
  v64.var0 = v25;
  v64.var1 = v27;
  v64.var2 = v28;
  v64.var3 = v30;
  sub_100750874(v64);
  sub_10000C620(v62);
  v35 = (a2 + v17[8]);
  sub_10000C888(v35, v35[3]);
  sub_100750834();
  v36 = (a2 + v17[7]);
  sub_10000C888(v36, v36[3]);
  sub_100750834();
  sub_10000C888(v35, v35[3]);
  sub_100750404();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000C888(v36, v36[3]);
  sub_100750404();
  v44 = v43;
  v45 = v16 - v40 + v38 - v42;
  v48 = v16 - v46 + v47 - v43;
  if (v45 > v48)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  v50 = v33 + v49;
  sub_100016B4C(a2 + v34, &v59, &qword_10092BC30, &qword_1007AD5C0);
  if (v60)
  {
    sub_100012160(&v59, v62);
    v61 = a1;
    sub_100743464();
    v51 = *&v59;
    sub_10000C888(v62, v63);
    sub_100750404();
    v53 = v52;
    v50 = v50 + v51 - v54 + v55 - v52;
    sub_10000C620(v62);
  }

  else
  {
    if (v45 >= v48)
    {
      v53 = v42;
    }

    else
    {
      v53 = v44;
    }

    sub_10000C8CC(&v59, &qword_10092BC30, &qword_1007AD5C0);
  }

  return v50 + v53;
}

uint64_t sub_1001E1824(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v128 = a16;
  v123 = a15;
  v142 = a8;
  v130 = a6;
  v135 = a5;
  v134 = a4;
  v141 = a3;
  v121 = a1;
  v133 = COERCE_DOUBLE(sub_100754724());
  v29 = *(*&v133 - 8);
  __chkstk_darwin(*&v133);
  v132 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a14 - 8);
  __chkstk_darwin(v32);
  v34 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v125 = v38;
  v39 = *(v38 + 16);
  v124 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39(v36);
  v127 = v31;
  v40 = *(v31 + 16);
  v126 = v34;
  v40(v34, a10, a14);
  *&v41 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  v42 = v41[10];
  sub_100016B4C(a12 + v42, &v144, &unk_100928A00, &qword_1007A5AB0);
  v140 = a12;
  v139 = a7;
  v143 = a18;
  v138 = a17;
  v137 = a21;
  v131 = a20;
  v136 = a19;
  v129 = a22;
  if (v145)
  {
    sub_100012160(&v144, &v146);
    sub_10000C888((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_100750384();
    CGRectGetMidY(v148);
    v120 = a2;
    v149.origin.x = a19;
    v149.origin.y = a20;
    v149.size.width = a21;
    v149.size.height = a22;
    CGRectGetMinY(v149);
    v150.origin.x = a19;
    v150.origin.y = a20;
    v150.size.width = a21;
    v150.size.height = a22;
    CGRectGetMaxX(v150);
    sub_10000C888(&v146, v147);
    sub_100753B24();
    a12 = v140;
    sub_100750394();
    sub_10000C620(&v146);
  }

  else
  {
    sub_10000C8CC(&v144, &unk_100928A00, &qword_1007A5AB0);
  }

  v121 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10000C888(v44, v44[3]);
  v45 = sub_1007503A4();
  v46 = v130;
  v47 = v134;
  if (v45)
  {
    sub_10000C888(v44, v44[3]);
    sub_100750394();
    v48 = v129;
    v49 = v131;
  }

  else
  {
    v122 = v29;
    sub_100016B4C(v43 + v42, &v146, &unk_100928A00, &qword_1007A5AB0);
    v50 = v147;
    sub_10000C8CC(&v146, &unk_100928A00, &qword_1007A5AB0);
    v51 = v136;
    if (v50)
    {
      v52 = (v43 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
      v53 = v52[3];
      sub_10000C888(v52, v53);
      v54 = v132;
      sub_100536120(v53);
      sub_100750564();
      (*(v122 + 8))(v54, COERCE_DOUBLE(*&v133));
    }

    v55 = v137;
    v56 = v129;
    sub_100016B4C(v43 + v42, &v146, &unk_100928A00, &qword_1007A5AB0);
    v57 = v131;
    v119 = a14;
    v118 = a13;
    if (v147)
    {
      sub_10000C888(&v146, v147);
      sub_100750414();
      sub_10000C620(&v146);
    }

    else
    {
      sub_10000C8CC(&v146, &unk_100928A00, &qword_1007A5AB0);
    }

    v58 = v122;
    v151.origin.x = v51;
    v151.origin.y = v57;
    v151.size.width = v55;
    v151.size.height = v56;
    CGRectGetWidth(v151);
    v152.origin.x = v141;
    v152.origin.y = v47;
    v59 = v135;
    v152.size.width = v135;
    v60 = v130;
    v152.size.height = v130;
    CGRectGetWidth(v152);
    v61 = v140 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v62 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v63 = (v61 + *(v62 + 28));
    v64 = v63[3];
    v117 = v63;
    sub_10000C888(v63, v64);
    v65 = v132;
    sub_100536120(v64);
    sub_100750564();
    v66 = a11;
    v67 = *(v58 + 8);
    v68 = v133;
    v67(v65, *&v133);
    v69 = v141;
    v70 = v59;
    v47 = v134;
    v71 = (v61 + *(v62 + 24));
    v72 = v71[3];
    sub_10000C888(v71, v72);
    sub_100536120(v72);
    sub_100750564();
    v120 = *&v67;
    v67(v65, *&v68);
    a11 = v66;
    sub_10000C888(v44, v44[3]);
    v46 = v60;
    sub_100750404();
    v74 = v73;
    v153.origin.x = v69;
    v153.origin.y = v47;
    v153.size.width = v70;
    v153.size.height = v60;
    CGRectGetMidY(v153);
    v75 = (v140 + *(*&v121 + 44));
    sub_10000C888(v75, v75[3]);
    if ((sub_1007503A4() & 1) != 0 || (v154.origin.x = v69, v154.origin.y = v47, v154.size.width = v70, v154.size.height = v60, CGRectGetHeight(v154) < v74))
    {
      v155.origin.x = v69;
      v155.origin.y = v47;
      v155.size.width = v70;
      v155.size.height = v60;
      CGRectGetMinY(v155);
    }

    a14 = v119;
    sub_10000C888(v75, v75[3]);
    v76 = sub_1007503A4();
    v29 = v122;
    v49 = v131;
    v77 = v69;
    v78 = v47;
    v79 = v70;
    v80 = v46;
    if (v76)
    {
      CGRectGetMinX(*&v77);
    }

    else
    {
      CGRectGetMaxX(*&v77);
      v81 = v117[3];
      sub_10000C888(v117, v81);
      v82 = v29;
      v83 = v132;
      sub_100536120(v81);
      sub_100750564();
      v84 = v83;
      v29 = v82;
      (*&v120)(v84, *&v133);
    }

    a13 = v118;
    sub_10000C888(v44, v44[3]);
    sub_100753B24();
    sub_100750394();
    v48 = v129;
  }

  v85 = v47;
  sub_10000C888(v44, v44[3]);
  v86 = v137;
  v87 = v48;
  sub_100750404();
  v89 = v88;
  sub_10000C888(v44, v44[3]);
  v90 = sub_1007503A4();
  v91 = 0.0;
  v92 = v140;
  if ((v90 & 1) == 0)
  {
    v93 = v92 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v94 = (v93 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v95 = v94[3];
    sub_10000C888(v94, v95);
    v96 = v132;
    sub_100536120(v95);
    sub_100750564();
    v98 = v97;
    (*(v29 + 8))(v96, COERCE_DOUBLE(*&v133));
    v91 = v89 + v98;
  }

  v99 = v136;
  v156.origin.x = v136;
  v156.origin.y = v49;
  v156.size.width = v86;
  v156.size.height = v87;
  Width = CGRectGetWidth(v156);
  v157.origin.x = v141;
  v157.origin.y = v85;
  v157.size.width = v135;
  v157.size.height = v46;
  v101 = Width - CGRectGetWidth(v157);
  v102 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v144 = a11;
  sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100743464();
  if (v101 - v146 - v91 > 0.0)
  {
    v103 = v101 - v146 - v91;
  }

  else
  {
    v103 = 0.0;
  }

  v158.origin.x = v99;
  v158.origin.y = v49;
  v158.size.width = v86;
  v158.size.height = v87;
  CGRectGetHeight(v158);
  v104 = v124;
  sub_100750404();
  v106 = v105;
  v108 = v107;
  v133 = v109;
  v159.origin.x = v99;
  v159.origin.y = v49;
  v159.size.width = v86;
  v159.size.height = v87;
  MaxX = CGRectGetMaxX(v159);
  v160.origin.x = v141;
  v160.origin.y = v134;
  v160.size.width = v135;
  v160.size.height = v46;
  MinY = CGRectGetMinY(v160);
  if (v103 < v106)
  {
    v106 = v103;
  }

  sub_100753B24();
  sub_100750394();
  v161.origin.x = MaxX - v103;
  v161.origin.y = MinY;
  v161.size.width = v106;
  v161.size.height = v108;
  v141 = CGRectGetMaxY(v161) - v133;
  v112 = v136;
  v162.origin.x = v136;
  v162.origin.y = v49;
  v113 = v137;
  v162.size.width = v137;
  v162.size.height = v87;
  CGRectGetHeight(v162);
  v114 = v126;
  sub_100750404();
  v135 = v115;
  v163.origin.x = v112;
  v163.origin.y = v49;
  v163.size.width = v113;
  v163.size.height = v87;
  CGRectGetMaxX(v163);
  sub_10000C888((v92 + *(v102 + 84)), *(v92 + *(v102 + 84) + 24));
  sub_100750584();
  sub_100753B24();
  sub_100750394();
  (*(v125 + 8))(v104, a13);
  return (*(v127 + 8))(v114, a14);
}

uint64_t sub_1001E2538(uint64_t a1)
{
  *(a1 + 8) = sub_1001E25BC(&unk_10092F7B0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  result = sub_1001E25BC(&qword_10092C890, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001E25BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E2618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001E26EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001E27A8(uint64_t a1)
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
      if (v3 <= 0x3F)
      {
        sub_100110090(319, &unk_10092C910, &unk_10092D520, &unk_1007A5C80);
        if (v4 <= 0x3F)
        {
          sub_100110090(319, &qword_10092C920, &qword_100926520, &qword_1007A9F00);
          if (v5 <= 0x3F)
          {
            sub_1001071A4();
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

uint64_t sub_1001E2928(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[19];

  return v16(v17, a2, v15);
}

uint64_t sub_1001E2B14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[19];

  return v16(v17, a2, a2, v15);
}

void sub_1001E2CEC(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1001E2ED8(319, &qword_10092D5F0, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_1001E2E64(319);
          if (v5 <= 0x3F)
          {
            sub_1001E2ED8(319, &unk_10092CA18, &type metadata for Int);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(319);
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

void sub_1001E2E64(uint64_t a1)
{
  if (!qword_10092CA08)
  {
    sub_10000C724(&unk_100923AE0, &qword_1007A8370);
    sub_100038D38();
    v1 = sub_100743554();
    if (!v2)
    {
      atomic_store(v1, &qword_10092CA08);
    }
  }
}

void sub_1001E2ED8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_10000C724(&unk_100923AE0, &qword_1007A8370);
    v4 = sub_100743554();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001E2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001E3028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001E30D8(uint64_t a1)
{
  sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
  if (v1 <= 0x3F)
  {
    sub_1001E2E64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001E3178()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001E31B8()
{
  result = qword_10092CB40;
  if (!qword_10092CB40)
  {
    sub_10000C724(&unk_10092CB30, qword_1007B1A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CB40);
  }

  return result;
}

BOOL sub_1001E322C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_1001E3290()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10092CB60);
  sub_10000D0FC(v4, qword_10092CB60);
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981B00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

void sub_1001E3468(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v10, qword_100981AE8);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_1007466C4();
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v10, qword_100981B00);
  v22(v55, v27, v10);
  *&v5[v26] = sub_1007466B4();
  v28 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
    v57._countAndFlagsBits = 0x465F54494D425553;
    v57._object = 0xEF4B434142444545;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_1007458B4(v57, v58);
    v45 = sub_100753064();

    [v44 setTitle:v45 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v46 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v47 = *&v37[v46];
    v48 = *&v37[v43];
    v49 = *&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
    *&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton] = v48;
    v50 = v48;
    v51 = v47;

    [v51 addSubview:v50];
    [v51 setNeedsLayout];

    v52 = [v37 contentView];
    [v52 addSubview:*&v37[v46]];

    v53 = [v37 contentView];
    [v53 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E3B40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = sub_100754664();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_100754574();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_1001E3D30()
{
  v76 = sub_100750354();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100754724();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100750EB4();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = sub_100750ED4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100750D64();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100750D84();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100750D94();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750DB4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100750DD4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = sub_1007507D4();
  v118 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v116);
  sub_1007507C4();
  v100 = v19;
  sub_100750DC4();
  v21 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = sub_100754574();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton(0);
      v118 = v24;
      v116 = v0;
      v29 = qword_100920570;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_100750B04();
      v31 = sub_10000D0FC(v30, qword_10092CB60);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_10000D134(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_1001E87EC(&qword_10092CCA0, &type metadata accessor for VerticalStackLayout.ExclusionCondition, &protocol conformance descriptor for VerticalStackLayout.ExclusionCondition);
      sub_10000C518(&qword_10092CCA8, &qword_1007B1B20);
      sub_1001E8834();
      v35 = v96;
      v36 = v97;
      sub_1007543A4();
      v37 = v92;
      sub_100750D74();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_10000C620(&v113);
      sub_10000C620(&v116);
      sub_100750DA4();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_10000D134(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = sub_100745C84();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_100921708;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_100750B04();
  sub_10000D0FC(v47, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_100921718;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v47, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  sub_100750EC4();
  v58 = [v40 traitCollection];
  sub_100751364();
  v60 = v59;

  sub_1007477B4();
  v61 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    sub_1007502D4();
    sub_100750564();
    v102(v4, v50);
  }

  v62 = v74;
  sub_100750EA4();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    sub_100753B54();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView];
    sub_1007477B4();
    MinX = CGRectGetMinX(v120);
    sub_1007477B4();
    v68 = CGRectGetMaxY(v121) - v60;
    sub_1007477B4();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_1001E4C60(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v2 = &v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v2 = 0;
  v2[8] = 1;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v13 = v1;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v2[8] & 1) != 0 || v5 != *v2)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:0];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v13 setNeedsLayout];
}

double sub_1001E4E8C(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      v3 = 0;
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100754574();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_39;
      }

      v6 = *(v2 + v5 + 4);
    }

    v7 = v6;
    sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
    v8 = sub_100753FC4();

    if (v8)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_40;
    }
  }

  v3 = v5;
LABEL_15:

  v10 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v10 removeFromSuperlayer];
  v11 = &v25[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v11 = v3;
  v11[8] = v4 == v5;
  if (v4 != v5)
  {
    v2 = [v25 contentView];
    v12 = [v2 layer];

    [v12 insertSublayer:v10 atIndex:0];
  }

  [*&v25[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v4 != v5];
  v13 = *&v25[v24];
  if (v13 >> 62)
  {
    v14 = sub_100754664();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = sub_100754574();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v11[8] & 1) != 0 || v15 != *v11)
      {
        v16 = [v18 tintColor];
        v17 = v19;
        v2 = v16;
      }

      else
      {
        v16 = [objc_opt_self() whiteColor];
        v17 = v16;
        v2 = v19;
      }

      [v19 setTitleColor:v16 forState:0];

      ++v15;
      if (v3 == v14)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  [v25 setNeedsLayout];
  if ((v11[8] & 1) == 0)
  {
    v21 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v21)
    {
      v22 = *v11;
      v23 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption + 8];

      v21(v22);

      return sub_1000164A8(v21, v23);
    }
  }

  return result;
}

uint64_t sub_1001E52E0()
{
  sub_10000C518(&qword_10092CC90, &unk_1007B1B10);
  sub_1001E6C18();
  return sub_100752954();
}

uint64_t sub_1001E5358()
{
  sub_10000C518(&qword_10092CC90, &unk_1007B1B10);
  sub_1001E6C18();
  return sub_100752954();
}

id sub_1001E53D0()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_1001E3B40(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v20 = v2;
  v21 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v20}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v21 setNeedsLayout];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v21 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  aBlock[4] = sub_1001E8B94;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086C138;
  v15 = _Block_copy(aBlock);
  v16 = v21;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v21 + v12) & 1) == 0];
  if (*(v21 + v12) == 1)
  {
    v17._countAndFlagsBits = 0x455454494D425553;
    v17._object = 0xE900000000000044;
  }

  else
  {
    v17._countAndFlagsBits = 0x465F54494D425553;
    v17._object = 0xEF4B434142444545;
  }

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1007458B4(v17, v23);
  v18 = sub_100753064();

  [v20 setTitle:v18 forState:0];

  [v20 setEnabled:(*(v21 + v12) & 1) == 0];
  [v20 setNeedsLayout];
  v16[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton(uint64_t a1)
{
  result = qword_10092CC10;
  if (!qword_10092CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E58E4(uint64_t a1)
{
  sub_1001E5A54(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1001E5A54(uint64_t a1)
{
  if (!qword_10092F9C0)
  {
    sub_10000C724(&unk_100933080, &unk_1007B1AB0);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_10092F9C0);
    }
  }
}

void sub_1001E5C98()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    sub_1007477B4();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    sub_1007477B4();
    [v5 setFrame:?];
  }
}

id sub_1001E5DC4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001E5E30()
{
  v0 = sub_10074EB24();
  if (*(v0 + 16))
  {
    sub_10000C824(v0 + 32, v3);

    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_10074CFC4();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001E5EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v82 = a3;
  v83 = a4;
  v89 = a2;
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v91 = v78 - v8;
  v9 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v9 - 8);
  v11 = v78 - v10;
  v12 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v12 - 8);
  v81 = v78 - v13;
  v87 = sub_10000C518(&qword_10092CC90, &unk_1007B1B10);
  v14 = *(v87 - 8);
  v15 = v14[8];
  __chkstk_darwin(v87);
  __chkstk_darwin(v16);
  v88 = v78 - v17;
  result = sub_1001E5E30();
  if (result)
  {
    v78[1] = v15;
    v79 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86 = v5;
    v19 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v20 = result;
    v21 = v19;
    sub_10074CFA4();
    v22 = sub_100753064();

    [v21 setText:v22];

    v85 = v20;
    v23 = sub_10074CFB4();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {
      v84 = v14;
      v80 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = sub_1007545C4();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v90 = v24 & 0xC000000000000001;
        do
        {
          if (v90)
          {
            v27 = sub_100754574();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = sub_10074DC74();
          v29 = type metadata accessor for FeedbackButton(0);
          v30 = objc_allocWithZone(v29);
          if (v28)
          {
            v93 = v28;
            sub_10074ECD4();
            v92 = v27;
            sub_100752764();
            sub_1001E87EC(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
            sub_100752684();
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
          (*(*(v32 - 8) + 56))(v11, v31, 1, v32);
          sub_1001E6A18(v11, v30 + qword_10092CBF8);
          v100.receiver = v30;
          v100.super_class = v29;
          v33 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v34 = qword_100921498;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          ++v26;
          v36 = sub_100750534();
          v37 = sub_10000D0FC(v36, qword_100981B00);
          v38 = *(v36 - 8);
          v39 = v91;
          (*(v38 + 16))(v91, v37, v36);
          (*(v38 + 56))(v39, 0, 1, v36);
          sub_1007466A4();

          sub_10074DC64();
          v40 = sub_100753064();

          [v35 setTitle:v40 forState:0];

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        while (i != v26);

        v41 = aBlock;
        v14 = v84;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v42 = v86;
      sub_1001E3B40(v41);
      swift_getObjectType();
      sub_10074BBF4();
      v43 = v88;
      sub_100752994();
      v92 = v14[2];
      v44 = v79;
      v45 = v43;
      v46 = v87;
      (v92)(v79, v45, v87);
      v11 = ((*(v14 + 80) + 16) & ~*(v14 + 80));
      v47 = swift_allocObject();
      v48 = v14[4];
      v14 += 4;
      a5 = v48;
      (v48)(&v11[v47], v44, v46);
      v49 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v50 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v51 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption + 8];
      *v49 = sub_1001E6A8C;
      v49[1] = v47;
      v52 = sub_1000164A8(v50, v51);
      (v92)(v44, v88, v46, v52);
      v53 = swift_allocObject();
      (v48)(&v11[v53], v44, v46);
      v54 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v55 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v56 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton + 8];
      *v54 = sub_1001E6B9C;
      v54[1] = v53;
      sub_1000164A8(v55, v56);
      v57 = sub_10074CF94();
      v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider] = v57 & 1;
      [*&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v57 & 1) == 0];
      [v42 setNeedsLayout];
      [v80 pageMarginInsets];
      [v42 setLayoutMargins:?];
      v91 = sub_1001E6C18();
      sub_100752964();
      v58 = aBlock;
      v59 = v95;
      v60 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v60 removeFromSuperlayer];
      v61 = &v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v61 = v58;
      v61[8] = v59;
      if ((v59 & 1) == 0)
      {
        v62 = [v42 contentView];
        v63 = [v62 layer];

        [v63 insertSublayer:v60 atIndex:0];
      }

      v92 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v92 setEnabled:v59 ^ 1u];
      v64 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v24 = v64 >> 62 ? sub_100754664() : *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v65 = 0;
      while (1)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = sub_100754574();
        }

        else
        {
          if (v65 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v67 = *(v64 + 8 * v65 + 32);
        }

        v68 = v67;
        v11 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if ((v61[8] & 1) != 0 || v65 != *v61)
        {
          v66 = [v67 tintColor];
          a5 = v68;
          v14 = v66;
        }

        else
        {
          v66 = [objc_opt_self() whiteColor];
          a5 = v66;
          v14 = v68;
        }

        [v68 setTitleColor:v66 forState:0];

        ++v65;
        if (v11 == v24)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v69 = v86;
    [v86 setNeedsLayout];
    sub_100752964();
    v70 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v69[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v95) & 1;
    v71 = objc_opt_self();
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    v98 = sub_1001E6CA4;
    v99 = v72;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_1000CF7B0;
    v97 = &unk_10086C0E8;
    v73 = _Block_copy(&aBlock);
    v74 = v69;

    [v71 animateWithDuration:4 delay:v73 options:0 animations:0.2 completion:0.0];
    _Block_release(v73);
    [v74 setUserInteractionEnabled:(v69[v70] & 1) == 0];
    if (v69[v70])
    {
      v75._countAndFlagsBits = 0x455454494D425553;
      v75._object = 0xE900000000000044;
    }

    else
    {
      v75._countAndFlagsBits = 0x465F54494D425553;
      v75._object = 0xEF4B434142444545;
    }

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    sub_1007458B4(v75, v101);
    v76 = sub_100753064();

    v77 = v92;
    [v92 setTitle:v76 forState:0];

    [v77 setEnabled:(v69[v70] & 1) == 0];
    [v77 setNeedsLayout];
    [v74 setNeedsLayout];

    return v84[1](v88, v87);
  }

  return result;
}

uint64_t sub_1001E6A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E6A8C()
{
  sub_10000C518(&qword_10092CC90, &unk_1007B1B10);

  return sub_1001E52E0();
}

uint64_t sub_1001E6B08()
{
  v1 = sub_10000C518(&qword_10092CC90, &unk_1007B1B10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001E6B9C()
{
  sub_10000C518(&qword_10092CC90, &unk_1007B1B10);

  return sub_1001E5358();
}

unint64_t sub_1001E6C18()
{
  result = qword_10092CC98;
  if (!qword_10092CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CC98);
  }

  return result;
}

uint64_t sub_1001E6C6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001E6CA4()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

double sub_1001E6CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001E6CFC(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

void sub_1001E6D0C()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v2, qword_100981AE8);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_1007466C4();
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v2, qword_100981B00);
  v14(v25, v19, v2);
  *(v1 + v18) = sub_1007466B4();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1001E7110()
{
  v1 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= sub_100754664())
    {
      return;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_100754574();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_1001E899C(v15 + qword_10092CBF8, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &qword_100933090, &unk_1007B1B00);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1007455B4();
    v16 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10000C8CC(v3, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1007455C4();
      v18 = sub_1007455B4();
      sub_1003C0E00(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_1001E8B94;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086C188;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24._countAndFlagsBits = 0x455454494D425553;
    v24._object = 0xE900000000000044;
  }

  else
  {
    v24._countAndFlagsBits = 0x465F54494D425553;
    v24._object = 0xEF4B434142444545;
  }

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_1007458B4(v24, v31);
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_submitButton];
  v26 = sub_100753064();

  [v25 setTitle:v26 forState:0];

  [v25 setEnabled:(v0[v19] & 1) == 0];
  [v25 setNeedsLayout];
  v27 = &v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v28 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v28)
  {
    v29 = *(v27 + 1);

    v28(1);
    sub_1000164A8(v28, v29);
  }
}

double sub_1001E76D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v81 = a4;
  v75 = a3;
  v102 = a2;
  v101 = a1;
  v83 = sub_100754724();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100750D64();
  v73 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750D84();
  v72 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100750D94();
  v71 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100750DB4();
  v12 = *(v85 - 1);
  __chkstk_darwin(v85);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100750DD4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v103 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074CD14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921490 != -1)
  {
    swift_once();
  }

  v80 = v8;
  v82 = v6;
  v20 = sub_100750534();
  sub_10000D0FC(v20, qword_100981AE8);
  v21 = [a5 traitCollection];
  v22 = sub_100753C14();

  v23 = sub_10074F3F4();
  v111 = v23;
  v97 = sub_1001E87EC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v112 = v97;
  v24 = sub_10000D134(&v110);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98 = v23;
  v95 = v26;
  v94 = v25 + 104;
  v26(v24);
  v27 = v19;
  v28 = v22;
  sub_10074FC74();
  sub_10000C620(&v110);

  v77 = v28;
  sub_10074CD04();
  sub_10074CCE4();
  v29 = *(v16 + 8);
  v99 = v18;
  v102 = v15;
  v101 = v16 + 8;
  v93 = v29;
  v29(v18, v15);
  if (qword_100921498 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v20, qword_100981B00);
  v84 = a5;
  v31 = [a5 traitCollection];
  v74 = v30;
  v76 = v27;
  v100 = sub_100753C14();

  (*(v12 + 104))(v86, enum case for VerticalStackLayout.Alignment.center(_:), v85);
  v108 = sub_1007507D4();
  v109 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v107);
  sub_1007507C4();
  sub_100750DC4();
  v32 = *(v75 + 16);
  if (v32)
  {
    LODWORD(v86) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v85 = (v72 + 104);
    v33 = (v73 + 8);
    v34 = (v72 + 8);
    v35 = (v71 + 8);
    v36 = v75 + 40;
    v37 = v89;
    do
    {
      v38 = v98;
      v108 = v98;
      v109 = v97;
      v39 = sub_10000D134(&v107);
      v95(v39, v96, v38);

      v40 = v100;
      sub_10074FC74();
      sub_10000C620(&v107);
      v41 = v99;
      sub_10074CD04();
      sub_10074CCE4();
      v93(v41, v102);
      v42 = v108;
      v43 = v109;
      v44 = sub_10000C888(&v107, v108);
      v106[3] = v42;
      v106[4] = v43[1];
      v45 = sub_10000D134(v106);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      if (qword_100920570 != -1)
      {
        swift_once();
      }

      v46 = sub_100750B04();
      v47 = sub_10000D0FC(v46, qword_10092CB60);
      v105[3] = v46;
      v105[4] = &protocol witness table for StaticDimension;
      v48 = sub_10000D134(v105);
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = v90;
      (*v85)(v37, v86, v90);
      v104 = _swiftEmptyArrayStorage;
      sub_1001E87EC(&qword_10092CCA0, &type metadata accessor for VerticalStackLayout.ExclusionCondition, &protocol conformance descriptor for VerticalStackLayout.ExclusionCondition);
      sub_10000C518(&qword_10092CCA8, &qword_1007B1B20);
      sub_1001E8834();
      v50 = v91;
      v51 = v92;
      sub_1007543A4();
      v52 = v87;
      sub_100750D74();
      (*v33)(v50, v51);
      (*v34)(v37, v49);
      sub_10000C620(v105);
      sub_10000C620(v106);
      sub_10000C620(&v107);
      sub_100750DA4();
      (*v35)(v52, v88);
      v36 += 16;
      --v32;
    }

    while (v32);
  }

  v53 = v84;
  [v84 pageMarginInsets];
  v92 = v54;
  sub_100753BA4();
  sub_10000C888(&v110, v111);
  sub_100750414();
  v55 = v79;
  sub_100750404();
  v56 = [v53 traitCollection];
  v57 = sub_100753C14();

  v113._countAndFlagsBits = 0x465F54494D425553;
  v113._object = 0xEF4B434142444545;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  sub_1007458B4(v113, v114);
  v58 = v98;
  v108 = v98;
  v109 = v97;
  v59 = sub_10000D134(&v107);
  v95(v59, v96, v58);
  v60 = v57;
  sub_10074FC74();
  sub_10000C620(&v107);
  v61 = v99;
  sub_10074CD04();
  sub_10074CCE4();
  v93(v61, v102);
  sub_10000C888(&v107, v108);
  sub_100750414();
  sub_100753BC4();
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v62 = sub_100750B04();
  sub_10000D0FC(v62, qword_100982098);
  v63 = v80;
  sub_1007502D4();
  sub_100750564();
  v64 = *(v82 + 8);
  v65 = v83;
  v64(v63, v83);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v62, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v64(v63, v65);
  if (v81)
  {
    sub_1007502D4();
    sub_100750564();
    v64(v63, v65);
    v66 = [v53 traitCollection];
    sub_100751364();
  }

  sub_100753BC4();
  v68 = v67;

  (*(v78 + 8))(v103, v55);
  sub_10000C620(&v107);
  sub_10000C620(&v110);
  return v68;
}

void sub_1001E85FC(uint64_t a1, void *a2)
{
  if (!sub_1001E5E30())
  {
    return;
  }

  v3 = sub_10074CFA4();
  v5 = v4;
  v6 = sub_10074CFB4();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_100754664();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v16 = sub_10074CF94();
    sub_1001E76D0(v3, v5, _swiftEmptyArrayStorage, v16 & 1, a2);

    return;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  sub_10001E1E8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v3;
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      v10 = sub_10074DC64();
      v12 = v11;

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001E1E8((v13 > 1), v14 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v8 != v9);

    v3 = v17;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1001E87EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001E8834()
{
  result = qword_10092CCB0;
  if (!qword_10092CCB0)
  {
    sub_10000C724(&qword_10092CCA8, &qword_1007B1B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCB0);
  }

  return result;
}

double sub_1001E8898()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_091EBE25195B1220BBDC30ECB0E4A36A21SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero[0];
  }

  v2 = v1;
  [v0 layoutMargins];
  sub_100753BA4();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  sub_100753BC4();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t sub_1001E899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1001E8AD8()
{
  result = qword_10092CCB8;
  if (!qword_10092CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCB8);
  }

  return result;
}

unint64_t sub_1001E8B30()
{
  result = qword_10092CCC0;
  if (!qword_10092CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092CCC0);
  }

  return result;
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel(uint64_t a1)
{
  result = qword_10092CCD8;
  if (!qword_10092CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E8C48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_10092CCC8;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_10092CCD0];
  *v21 = 0;
  v21[8] = 1;
  sub_10006A0D4(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = sub_100745C74();
  (*(v12 + 8))(a6, v11);
  sub_10006A144(a1);
  return v22;
}

void sub_1001E8E28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750BD4();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100750954();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = sub_100753094();
  v22 = v21;

  if (v1[qword_10092CCD0 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_10092CCD0];
  sub_100745B94();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_10006A144(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_100038D38();
  v28 = [v1 traitCollection];
  v29 = sub_100753C14();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  sub_100750944();
  v31 = v58;
  sub_100750934();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  sub_100750BB4();
  sub_100750BE4();
  v34 = [v1 traitCollection];
  sub_100750BC4();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_10092CCC8];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = sub_1007537F4();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = sub_1007537F4();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_1001E94C0(void *a1)
{
  v1 = a1;
  sub_1001E8E28();
}

void sub_1001E9530(CGContext *a1)
{
  v2 = v1;
  v4 = sub_10074FC04();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A7210;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_1008627A0;
  }

  else
  {
    v17 = &unk_1008627D0;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = sub_100753294().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    sub_100753544();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_1001E9AE4(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001E9BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E9C08(uint64_t a1)
{
  v3 = sub_10000C518(&unk_10092D480, &unk_1007C06B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_10041D878(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_10074CE14();
    if (v7)
    {
      v8 = sub_100753064();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001E9D94()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1001EAE7C(&qword_10092D470, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1001EAE7C(&qword_10092D478, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider, &unk_1007C3820);

  return v2;
}

uint64_t sub_1001E9E94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10074E4B4();
  v4 = v3;
  sub_100744594();
  swift_allocObject();
  v5 = sub_100744584();
  swift_allocObject();
  v6 = sub_100744584();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_1001EADE8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_1001E9F5C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_1001EAD94();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001E9F90(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_1001EACCC(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001EAD34(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490, &qword_1007A9910);
  sub_100066578(&v9[*(v19 + 48)], v18, &unk_100923970, &qword_1007A6B90);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970, &qword_1007A6B90);
  sub_100016B4C(v18, &v6[v20], &unk_100923970, &qword_1007A6B90);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970, &qword_1007A6B90);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1001EAE7C(&qword_100926240, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480, &unk_1007A9900);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(uint64_t a1)
{
  result = qword_10092CD98;
  if (!qword_10092CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EA544@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v59 = sub_100747144();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&qword_100928A88, qword_1007B1CF0);
  __chkstk_darwin(v3 - 8);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v8 - 8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v46 - v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49 = &v46 - v16;
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_10000C518(&unk_100928A90, qword_1007AC480);
  __chkstk_darwin(v20 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  v26 = sub_1007439C4();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v25, 1, 1, v26);
  v28 = sub_100747134();
  v52 = *(v28 - 8);
  v53 = v28;
  v29 = *(v52 + 56);
  v47 = v7;
  v29(v7, 1, 1);
  v48 = v25;
  sub_100016B4C(v25, v22, &unk_100928A90, qword_1007AC480);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_10000C8CC(v22, &unk_100928A90, qword_1007AC480);
    v30 = 0;
  }

  else
  {
    v30 = sub_100743964();
    (*(v27 + 8))(v22, v26);
  }

  sub_1003AFADC(v30, v19);

  if (qword_100920B08 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v12, qword_10097FFD0);
  if (qword_100920AE0 != -1)
  {
    swift_once();
  }

  v32 = sub_10000D0FC(v12, qword_10097FF58);
  v33 = v51;
  sub_1001EACCC(v32, v51, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v13 + 56))(v33, 0, 1, v12);
  v34 = v49;
  sub_1001EACCC(v19, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v50;
  sub_1001EACCC(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  v36 = v54;
  sub_100016B4C(v33, v54, &unk_100940600, &qword_1007AC320);
  v37 = v47;
  v38 = v56;
  sub_100016B4C(v47, v56, &qword_100928A88, qword_1007B1CF0);
  v39 = v57;
  (*(v57 + 104))(v58, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v59);
  sub_10000D198();
  v46 = sub_100753DB4();
  sub_10000C8CC(v37, &qword_100928A88, qword_1007B1CF0);
  sub_10000C8CC(v33, &unk_100940600, &qword_1007AC320);
  sub_1001EAD34(v19, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v48, &unk_100928A90, qword_1007AC480);
  v40 = type metadata accessor for TitleHeaderView.Style(0);
  v41 = v40[8];
  v42 = v55;
  sub_1001502E0(v34, v55);
  sub_1001502E0(v35, v42 + v40[5]);
  sub_100066578(v36, v42 + v40[6], &unk_100940600, &qword_1007AC320);
  *(v42 + v40[7]) = 0;
  *(v42 + v41) = 0;
  *(v42 + v40[9]) = 1;
  *(v42 + v40[14]) = 0x4030000000000000;
  *(v42 + v40[12]) = 0;
  *(v42 + v40[13]) = v46;
  (*(v39 + 32))(v42 + v40[11], v58, v59);
  v44 = v52;
  v43 = v53;
  if ((*(v52 + 48))(v38, 1, v53) != 1)
  {
    return (*(v44 + 32))(v42 + v40[10], v38, v43);
  }

  sub_10000C8CC(v38, &qword_100928A88, qword_1007B1CF0);
  return (*(v44 + 104))(v42 + v40[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v43);
}

uint64_t sub_1001EAC68()
{

  sub_10000C4F0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EACCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EAD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001EAD94()
{
  result = qword_10092D460;
  if (!qword_10092D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D460);
  }

  return result;
}

unint64_t sub_1001EADE8()
{
  result = qword_10092D468;
  if (!qword_10092D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D468);
  }

  return result;
}

uint64_t sub_1001EAE3C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1001EAE7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001EAEC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v8 + 8))(v10, v7);
  if (v20[0] && (v11 = sub_100743A34(), , (v11 & 1) != 0))
  {
    v12 = sub_100747564();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    v14 = v20[0];
    sub_100753804();

    sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
    sub_1007468C4();
    if (v19)
    {
      sub_100032CCC(&v18, v20);
      sub_10000C888(v20, v20[3]);
      if (sub_10074CA24())
      {
        v15 = 1;
      }

      else
      {
        (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.bottom(_:), v3);
        sub_100747534();
        v15 = 0;
      }

      v17 = sub_100747564();
      (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
      return sub_10000C620(v20);
    }

    else
    {
      sub_1001EB2A8(&v18);
      (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.bottom(_:), v3);
      sub_100747534();
      v16 = sub_100747564();
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }
  }
}

uint64_t sub_1001EB2A8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009253C8, qword_1007B15B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_100012160(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_100012160(a6, a9 + v32[14]);
  sub_100012160(a7, a9 + v32[15]);
  sub_100012160(a8, a9 + v32[16]);
  sub_100012160(a16, a9 + v32[11]);
  sub_100012160(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_100012160(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_100012160(a22, a9 + v32[20]);
  result = sub_100012160(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001B5928(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_100012160(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_100012160(a5, a9 + v21[10]);
  sub_100012160(a6, a9 + v21[8]);
  sub_100012160(a7, a9 + v21[9]);
  sub_100012160(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v21[13]);
  v28 = a9 + v21[14];
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a12 + 32);
  v30 = a9 + v21[15];
  v31 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a13 + 32);
  v32 = a9 + v21[16];
  v33 = *(a14 + 16);
  *v32 = *a14;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a14 + 32);
  v34 = a9 + v21[17];
  v35 = *(a15 + 16);
  *v34 = *a15;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a15 + 32);
  v36 = a9 + v21[18];
  v37 = *(a16 + 16);
  *v36 = *a16;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a16 + 32);
  v38 = a9 + v21[19];
  result = *a17;
  v40 = *(a17 + 16);
  *v38 = *a17;
  *(v38 + 16) = v40;
  *(v38 + 32) = *(a17 + 32);
  return result;
}

uint64_t sub_1001EB7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1001EBAAC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_100016B4C(v1 + *(v3 + 56), &v9, &qword_10092BC30, &qword_1007AD5C0);
  if (v10)
  {
    sub_100012160(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_10000C888(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_10000D134(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_10000C620(v11);
    return result;
  }

  sub_10000C8CC(&v9, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v1 + *(v3 + 60), &v9, &unk_100928A00, &qword_1007A5AB0);
  if (v10)
  {
    sub_100012160(&v9, v11);
    sub_10000C888(v11, v12);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C824(v11, a1);
      goto LABEL_3;
    }

    sub_10000C620(v11);
  }

  else
  {
    sub_10000C8CC(&v9, &unk_100928A00, &qword_1007A5AB0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1001EEFE0(a1, v3, a2);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_1007537E4();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v172 = a2;
  v174 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v169 = *(v174 - 8);
  __chkstk_darwin(v174);
  v168 = &v167 - v13;
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FD98(a3, a4, a5, a6, *v6, v6[1]);
  v190 = v19;
  v187 = v20;
  v192 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  v23 = (v6 + v22[15]);
  v24 = v23[3];
  sub_10000C888(v23, v24);
  sub_100536120(v24);
  sub_100750564();
  v173 = v25;
  v28 = *(v15 + 8);
  v26 = v15 + 8;
  v27 = v28;
  v28(v17, v14);
  v29 = (v6 + v22[16]);
  v30 = v29[3];
  sub_10000C888(v29, v30);
  sub_100536120(v30);
  sub_100750564();
  v176 = v31;
  v193 = v14;
  v28(v17, v14);
  v32 = [a1 traitCollection];
  LOBYTE(v30) = sub_1007537D4();

  if ((v30 & 1) == 0 || (sub_1001EBAAC(&v196), v33 = v197, sub_10000C8CC(&v196, &unk_100928A00, &qword_1007A5AB0), !v33))
  {
    sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
    v34 = v168;
    sub_100743534();
    sub_1007502D4();
    sub_100743514();
    v27(v17, v193);
    (*(v169 + 8))(v34, v174);
  }

  v35 = [a1 traitCollection];
  v36 = sub_1007537D4();

  v179 = a3;
  v185 = v26;
  v188 = v18;
  v191 = v27;
  v189 = *&v22;
  v180 = a6;
  v177 = a5;
  v178 = a4;
  if (v36)
  {
    v37 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v38 = (v7 + *(v37 + 24));
    v39 = v38[3];
    v186 = v38[4];
    v184 = COERCE_DOUBLE(sub_10000C888(v38, v39));
    v199.origin.x = a3;
    v199.origin.y = a4;
    v199.size.width = a5;
    v199.size.height = a6;
    CGRectGetMinX(v199);
    v200.origin.x = a3;
    v200.origin.y = a4;
    v200.size.width = a5;
    v200.size.height = a6;
    CGRectGetMaxY(v200);
    v40 = (v7 + v22[20]);
    v41 = v40[3];
    sub_10000C888(v40, v41);
    sub_100536120(v41);
    v42 = v193;
    sub_100750564();
    v191(v17, v42);
    v201.origin.x = a3;
    v201.origin.y = a4;
    v201.size.width = a5;
    v201.size.height = a6;
    CGRectGetWidth(v201);
    v43 = v40[3];
    sub_10000C888(v40, v43);
    sub_100536120(v43);
    sub_100750564();
    v44 = v42;
    v27 = v191;
    v191(v17, v44);
    sub_100750394();
    v186 = v37;
    sub_100016B4C(v7 + *(v37 + 28), &v196, &unk_100928A00, &qword_1007A5AB0);
    if (v197)
    {
      v184 = v198;
      sub_10000C888(&v196, v197);
      v202.origin.x = a3;
      v202.origin.y = a4;
      v202.size.width = a5;
      v202.size.height = a6;
      CGRectGetMinX(v202);
      v203.origin.x = a3;
      v203.origin.y = a4;
      v203.size.width = a5;
      v203.size.height = a6;
      CGRectGetMaxY(v203);
      v45 = (v7 + *(*&v189 + 84));
      v46 = v45[3];
      sub_10000C888(v45, v46);
      sub_100536120(v46);
      v47 = v193;
      sub_100750564();
      v191(v17, v47);
      v204.origin.x = a3;
      v204.origin.y = a4;
      v204.size.width = a5;
      v204.size.height = a6;
      CGRectGetWidth(v204);
      v48 = v45[3];
      sub_10000C888(v45, v48);
      sub_100536120(v48);
      sub_100750564();
      v49 = v47;
      v27 = v191;
      v191(v17, v49);
      sub_100750394();
      sub_10000C620(&v196);
    }

    else
    {
      sub_10000C8CC(&v196, &unk_100928A00, &qword_1007A5AB0);
    }

    v62 = v187;
    sub_100016B4C(v7 + v186[5], &v196, &unk_100928A00, &qword_1007A5AB0);
    v18 = v188;
    if (v197)
    {
      sub_10000C888(&v196, v197);
      v63 = v179;
      v206.origin.x = v179;
      v206.origin.y = a4;
      v206.size.width = a5;
      v206.size.height = a6;
      CGRectGetMinX(v206);
      v207.origin.x = v63;
      v207.origin.y = a4;
      v207.size.width = a5;
      v207.size.height = a6;
      CGRectGetMinY(v207);
      v208.origin.x = v63;
      v208.origin.y = a4;
      v208.size.width = a5;
      v208.size.height = a6;
      CGRectGetWidth(v208);
      if (qword_100920010 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v174, qword_10097D050);
      sub_1007502D4();
      sub_100743514();
      v27(v17, v193);
      v64 = [a1 traitCollection];
      [v64 displayScale];

      sub_100750394();
      sub_10000C620(&v196);
      v18 = v188;
      v62 = v187;
    }

    else
    {
      sub_10000C8CC(&v196, &unk_100928A00, &qword_1007A5AB0);
    }
  }

  else
  {
    v205.origin.x = a3;
    v205.origin.y = a4;
    v205.size.width = a5;
    v205.size.height = a6;
    Width = CGRectGetWidth(v205);
    v51 = (v7 + v22[17]);
    v52 = v51[3];
    sub_10000C888(v51, v52);
    sub_100536120(v52);
    sub_100750564();
    v54 = v53;
    v55 = v193;
    v27(v17, v193);
    v56 = (Width - v54) * 0.5;
    sub_1007502D4();
    sub_100743514();
    v58 = v57;
    v27(v17, v55);
    if (v56 > v58)
    {
      v59 = v56;
    }

    else
    {
      v59 = v58;
    }

    v60 = floor(v59);
    v61 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_10000C888((v7 + *(v61 + 24)), *(v7 + *(v61 + 24) + 24));
    sub_10010FD98(a3, a4, a5, a6, 0.0, v60);
    sub_100750394();
    v186 = v61;
    sub_100016B4C(v7 + *(v61 + 20), &v196, &unk_100928A00, &qword_1007A5AB0);
    if (v197)
    {
      sub_10000C888(&v196, v197);
      sub_100750394();
      sub_10000C620(&v196);
    }

    else
    {
      sub_10000C8CC(&v196, &unk_100928A00, &qword_1007A5AB0);
    }

    v62 = v187;
  }

  v209.origin.x = v18;
  v65 = v190;
  v209.origin.y = v190;
  v209.size.width = v62;
  v66 = v192;
  v209.size.height = v192;
  MidX = CGRectGetMidX(v209);
  v68 = v7[4];
  v69 = floor(MidX - v68 * 0.5);
  v210.origin.x = v18;
  v210.origin.y = v65;
  v210.size.width = v62;
  v210.size.height = v66;
  MinY = CGRectGetMinY(v210);
  v71 = v7[5];
  v72 = floor(MinY - v71 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v73 = v186;
  v74 = (v7 + v186[8]);
  sub_10000C888(v74, v74[3]);
  v183 = v69;
  v181 = v72;
  v184 = v68;
  v182 = v71;
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v7 + v73[19], &v196, &unk_100928A00, &qword_1007A5AB0);
  if (v197)
  {
    sub_10000C888(&v196, v197);
    sub_10000C888(v74, v74[3]);
    v27 = v191;
    sub_100750384();
    sub_100750394();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v196, &unk_100928A00, &qword_1007A5AB0);
  }

  v75 = [a1 traitCollection];
  v76 = sub_1007537E4();

  v77 = 0.0;
  if (v76)
  {
    sub_1007502D4();
    sub_100743514();
    v77 = v78;
    v27(v17, v193);
  }

  v79 = (v7 + v186[10]);
  sub_10000C888(v79, v79[3]);
  v211.origin.x = v18;
  v80 = v190;
  v211.origin.y = v190;
  v211.size.width = v62;
  v81 = v192;
  v211.size.height = v192;
  CGRectGetWidth(v211);
  v171 = v77;
  v170 = v77 + v77;
  v212.origin.x = v18;
  v212.origin.y = v80;
  v212.size.width = v62;
  v212.size.height = v81;
  CGRectGetMaxY(v212);
  v213.origin.x = v183;
  v213.origin.y = v181;
  v213.size.width = v184;
  v213.size.height = v182;
  CGRectGetMaxY(v213);
  sub_100750404();
  sub_1007502D4();
  sub_100743514();
  v83 = v82;
  v27(v17, v193);
  v196 = v83;
  v84 = v187;
  sub_100750584();
  sub_10000C888(v79, v79[3]);
  v214.origin.x = v18;
  v214.origin.y = v80;
  v214.size.width = v84;
  v214.size.height = v81;
  CGRectGetMinX(v214);
  v215.origin.x = v18;
  v215.origin.y = v80;
  v215.size.width = v84;
  v215.size.height = v81;
  CGRectGetWidth(v215);
  v216.origin.x = v183;
  v216.origin.y = v181;
  v216.size.width = v184;
  v216.size.height = v182;
  CGRectGetMaxY(v216);
  sub_100750394();
  v85 = [a1 traitCollection];
  v86 = sub_1007537D4();

  if (v86)
  {
    v87 = v188;
    v217.origin.x = v188;
    v217.origin.y = v80;
    v217.size.width = v84;
    v217.size.height = v81;
    MinX = CGRectGetMinX(v217);
    sub_10000C888(v79, v79[3]);
    sub_100750384();
    MaxY = CGRectGetMaxY(v218);
    v219.origin.x = v87;
    v219.origin.y = v80;
    v219.size.width = v84;
    v219.size.height = v81;
    v89 = CGRectGetWidth(v219);
    v90 = v80;
    v91 = v89;
    v92 = v87;
    v93 = v84;
    v94 = v81;
    v95 = v186;
  }

  else
  {
    v96 = v186;
    v97 = (v7 + v186[6]);
    sub_10000C888(v97, v97[3]);
    sub_100750384();
    MinX = CGRectGetMinX(v220);
    sub_10000C888(v79, v79[3]);
    sub_100750384();
    MaxY = CGRectGetMaxY(v221);
    sub_10000C888(v97, v97[3]);
    sub_100750384();
    v91 = CGRectGetWidth(v222);
    sub_10000C888(v97, v97[3]);
    sub_100750384();
    v95 = v96;
  }

  v98 = CGRectGetMaxY(*&v92);
  v223.origin.x = v183;
  v223.origin.y = v181;
  v223.size.width = v184;
  v223.size.height = v182;
  v99 = v98 - CGRectGetMaxY(v223);
  v100 = v91 - v170;
  v101 = v171 + MinX;
  v102 = (v7 + v95[9]);
  sub_10000C888(v102, *(v102 + 3));
  sub_100750404();
  v184 = v103;
  v183 = v104;
  v182 = v105;
  v106 = (v7 + v95[11]);
  sub_10000C888(v106, *(v106 + 3));
  sub_100750404();
  v170 = v107;
  v171 = v108;
  v167 = v109;
  v181 = v110;
  sub_10000C888(v102, *(v102 + 3));
  v224.origin.x = v101;
  v111 = MaxY;
  v224.origin.y = MaxY;
  v224.size.width = v100;
  v224.size.height = v99;
  CGRectGetMinX(v224);
  v225.origin.x = v101;
  v225.origin.y = v111;
  v225.size.width = v100;
  v225.size.height = v99;
  CGRectGetMinY(v225);
  sub_1007502D4();
  sub_100743514();
  v113 = v112;
  v191(v17, v193);
  v196 = v113;
  v114 = v182;
  sub_100750584();
  v226.origin.x = v101;
  v226.origin.y = v111;
  v226.size.width = v100;
  v226.size.height = v99;
  CGRectGetWidth(v226);
  sub_100750394();
  sub_10000C888(v106, *(v106 + 3));
  if (sub_100750364())
  {
    v115 = *(v106 + 3);
    v184 = v106[4];
    sub_10000C888(v106, v115);
    v227.origin.x = v101;
    v116 = MaxY;
    v227.origin.y = MaxY;
    v227.size.width = v100;
    v227.size.height = v99;
    v183 = CGRectGetMinX(v227);
    sub_10000C888(v102, *(v102 + 3));
    sub_100750384();
    CGRectGetMaxY(v228);
    sub_1007502D4();
    sub_100743514();
    v118 = v117;
    v191(v17, v193);
    v196 = v118;
    v119 = v181;
    sub_100750584();
    v229.origin.x = v101;
    v229.origin.y = v116;
    v229.size.width = v100;
    v229.size.height = v99;
    CGRectGetWidth(v229);
    sub_100750394();
  }

  else
  {
    sub_10000C888(v106, *(v106 + 3));
    sub_100750394();
    v106 = v102;
    v119 = v114;
  }

  v120 = v192;
  sub_10000C888(v106, *(v106 + 3));
  sub_100750384();
  v184 = CGRectGetMaxY(v230) - v119;
  v121 = v186;
  v122 = (v7 + v186[13]);
  sub_10000C888(v122, v122[3]);
  v123 = v187;
  sub_100750404();
  v125 = v124;
  v127 = v126;
  v128 = v188;
  v231.origin.x = v188;
  v129 = v190;
  v231.origin.y = v190;
  v231.size.width = v123;
  v231.size.height = v120;
  v130 = floor(CGRectGetMidX(v231) + v125 * -0.5);
  v131 = (v7 + *(*&v189 + 36));
  v132 = v131[3];
  sub_10000C888(v131, v132);
  sub_100536120(v132);
  sub_100750564();
  v134 = v133;
  v191(v17, v193);
  v135 = floor(v184 + v134);
  sub_10000C888(v122, v122[3]);
  v182 = v130;
  v181 = v135;
  v184 = v125;
  v183 = v127;
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v7 + v121[17], &v194, &unk_100928A00, &qword_1007A5AB0);
  if (v195)
  {
    sub_100012160(&v194, &v196);
    v136 = v179;
    v232.origin.x = v179;
    v137 = v178;
    v232.origin.y = v178;
    v138 = v177;
    v232.size.width = v177;
    v139 = v180;
    v232.size.height = v180;
    MaxY = CGRectGetMinX(v232);
    v233.origin.x = v128;
    v233.origin.y = v129;
    v233.size.width = v123;
    v233.size.height = v120;
    CGRectGetMaxY(v233);
    v234.origin.x = v136;
    v234.origin.y = v137;
    v234.size.width = v138;
    v234.size.height = v139;
    CGRectGetWidth(v234);
    sub_10000C888(&v196, v197);
    sub_100750394();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v7 + v121[18], &v194, &unk_100928A00, &qword_1007A5AB0);
  if (v195)
  {
    sub_100012160(&v194, &v196);
    v140 = v179;
    v235.origin.x = v179;
    v141 = v178;
    v235.origin.y = v178;
    v142 = v177;
    v235.size.width = v177;
    v143 = v180;
    v235.size.height = v180;
    CGRectGetMinX(v235);
    v236.origin.x = v188;
    v236.origin.y = v190;
    v236.size.width = v123;
    v236.size.height = v192;
    CGRectGetMaxY(v236);
    v237.origin.x = v140;
    v237.origin.y = v141;
    v237.size.width = v142;
    v237.size.height = v143;
    CGRectGetWidth(v237);
    sub_10000C888(&v196, v197);
    sub_100750394();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0);
  }

  v144 = v189;
  sub_1001EBAAC(&v194);
  if (v195)
  {
    sub_100012160(&v194, &v196);
    sub_10000C888(&v196, v197);
    sub_100750404();
    v238.origin.x = v188;
    v238.origin.y = v190;
    v238.size.width = v123;
    v238.size.height = v192;
    CGRectGetMidX(v238);
    v239.origin.x = v182;
    v239.origin.y = v181;
    v239.size.width = v184;
    v239.size.height = v183;
    CGRectGetMaxY(v239);
    sub_10000C888((v7 + *(*&v144 + 44)), *(v7 + *(*&v144 + 44) + 24));
    v145 = v192;
    sub_100750584();
    sub_10000C888(&v196, v197);
    v123 = v187;
    sub_100750394();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0);
    v145 = v192;
  }

  sub_100016B4C(v7 + v121[16], &v194, &unk_100928A00, &qword_1007A5AB0);
  v146 = v188;
  if (v195)
  {
    sub_100012160(&v194, &v196);
    v147 = [a1 traitCollection];
    v148 = sub_100753804();

    if (v148 & 1) != 0 || (sub_1001EBAAC(&v194), v149 = v195, sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0), v149) && (v150 = [a1 traitCollection], v151 = sub_1007537D4(), v150, (v151))
    {
      sub_10000C888(&v196, v197);
    }

    else
    {
      sub_10000C888(&v196, v197);
      sub_100750414();
      v240.origin.x = v146;
      v152 = v190;
      v240.origin.y = v190;
      v240.size.width = v187;
      v240.size.height = v145;
      CGRectGetMidX(v240);
      v241.origin.x = v146;
      v241.origin.y = v152;
      v241.size.width = v187;
      v241.size.height = v145;
      CGRectGetMaxY(v241);
      sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
      v153 = v168;
      sub_100743534();
      sub_1007502D4();
      sub_100743514();
      v191(v17, v193);
      (*(v169 + 8))(v153, v174);
      v146 = v188;
      sub_10000C888(&v196, v197);
      v123 = v187;
      sub_100750394();
      sub_10000C888(&v196, v197);
    }

    sub_1007503B4();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v7 + v121[12], &v194, &unk_100928A00, &qword_1007A5AB0);
  if (v195)
  {
    sub_100012160(&v194, &v196);
    sub_10000C888(&v196, v197);
    sub_100750414();
    v154 = v123;
    v156 = v155;
    v184 = v155;
    v187 = v157;
    sub_10000C888((v7 + v121[6]), *(v7 + v121[6] + 24));
    sub_100750384();
    v158 = CGRectGetMaxX(v242) - v156;
    v159 = (v7 + *(*&v144 + 56));
    v160 = v159[3];
    sub_10000C888(v159, v160);
    sub_100536120(v160);
    sub_100750564();
    v162 = v161;
    v163 = v193;
    v164 = v191;
    v191(v17, v193);
    v189 = v158 - v162;
    v243.origin.x = v146;
    v243.origin.y = v190;
    v243.size.width = v154;
    v243.size.height = v145;
    CGRectGetMinY(v243);
    v165 = v159[3];
    sub_10000C888(v159, v165);
    sub_100536120(v165);
    sub_100750564();
    v164(v17, v163);
    sub_10000C888(&v196, v197);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(&v196);
  }

  else
  {
    sub_10000C8CC(&v194, &unk_100928A00, &qword_1007A5AB0);
  }

  return sub_100750314();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000C888((v3 + *(v13 + 52)), *(v3 + *(v13 + 52) + 24));
  sub_100750414();
  v15 = v14;
  v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
  sub_100743534();
  sub_1007502D4();
  sub_100743514();
  v18 = v17;
  v19 = v30;
  v20 = *(v31 + 8);
  v31 += 8;
  v20(v8, v30);
  (*(v10 + 8))(v12, v9);
  v21 = (v3 + *(v16 + 60));
  v22 = v21[3];
  sub_10000C888(v21, v22);
  sub_100536120(v22);
  sub_100750564();
  v24 = v23;
  v20(v8, v19);
  v25 = (v4 + *(v16 + 64));
  v26 = v25[3];
  sub_10000C888(v25, v26);
  sub_100536120(v26);
  sub_100750564();
  v28 = v27;
  v20(v8, v19);
  return v15 + v18 + v24 + v28;
}

double sub_1001EEFE0(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = v59 - v7;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007537D4();

  v62 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    v16 = (a2 + v15[15]);
    v17 = v16[3];
    sub_10000C888(v16, v17);
    sub_100536120(v17);
    sub_100750564();
    v18 = *(v9 + 8);
    v18(v12, v8);
    v19 = (a2 + v15[16]);
    v20 = v19[3];
    sub_10000C888(v19, v20);
    sub_100536120(v20);
    sub_100750564();
    v18(v12, v8);
    v21 = (a2 + v15[17]);
    v22 = v21[3];
    sub_10000C888(v21, v22);
    sub_100536120(v22);
    v23 = v63;
    sub_100750564();
    v18(v12, v8);
    sub_1007502D4();
    sub_100743514();
    v18(v12, v8);
    sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
    sub_100743534();
    sub_1007502D4();
    sub_100743514();
    v18(v12, v8);
    v9 = v62;
    (*(v64 + 8))(v23, v65);
  }

  sub_100753BA4();
  v25 = v24;
  v26 = [a1 traitCollection];
  v27 = sub_1007537E4();

  if (v27)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v9 + 8))(v12, v8);
  }

  v61 = v25;
  v28 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000C888((a2 + *(v28 + 36)), *(a2 + *(v28 + 36) + 24));
  sub_100750404();
  v59[2] = v29;
  v59[4] = v30;
  v59[1] = v31;
  v59[3] = v32;
  v60 = v28;
  v33 = (a2 + *(v28 + 44));
  sub_10000C888(v33, v33[3]);
  sub_100750404();
  sub_10000C888(v33, v33[3]);
  if (sub_100750364())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    v35 = v34;
    (*(v9 + 8))(v12, v8);
    v68[0] = v35;
    sub_100750584();
  }

  sub_1001EBAAC(&v66);
  if (v67)
  {
    sub_100012160(&v66, v68);
    sub_10000C888(v68, v69);
    sub_100750404();
    v36 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000C888((a2 + *(v36 + 44)), *(a2 + *(v36 + 44) + 24));
    sub_100750584();
    v37 = (a2 + *(v36 + 48));
    v38 = v37[3];
    sub_10000C888(v37, v38);
    sub_100536120(v38);
    sub_100750564();
    (*(v9 + 8))(v12, v8);
    sub_10000C620(v68);
  }

  else
  {
    sub_10000C8CC(&v66, &unk_100928A00, &qword_1007A5AB0);
  }

  v39 = v64;
  sub_1001EBAAC(v68);
  v40 = v69;
  sub_10000C8CC(v68, &unk_100928A00, &qword_1007A5AB0);
  if (!v40)
  {
    v41 = [a1 traitCollection];
    v42 = sub_1007537E4();

    if (v42 & 1) != 0 || (v43 = [a1 traitCollection], v44 = sub_100753804(), v43, (v44))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_1007502D4();
      sub_100743514();
      (*(v9 + 8))(v12, v8);
    }
  }

  v45 = [a1 traitCollection];
  v46 = sub_1007537D4();

  if (v46)
  {
    sub_1001EBAAC(v68);
    sub_10000C8CC(v68, &unk_100928A00, &qword_1007A5AB0);
  }

  v47 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
  v48 = v63;
  sub_100743534();
  sub_1007502D4();
  sub_100743514();
  v49 = *(v62 + 8);
  v49(v12, v8);
  (*(v39 + 8))(v48, v65);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_1007502D4();
  sub_100743514();
  v49(v12, v8);
  sub_1007502D4();
  sub_100743514();
  v51 = v50;
  v49(v12, v8);
  v68[0] = v51;
  sub_100750584();
  v52 = (a2 + v47[9]);
  v53 = v52[3];
  sub_10000C888(v52, v53);
  sub_100536120(v53);
  sub_100750564();
  v49(v12, v8);
  sub_10000C888((a2 + *(v60 + 52)), *(a2 + *(v60 + 52) + 24));
  sub_100750414();
  v54 = (a2 + v47[15]);
  v55 = v54[3];
  sub_10000C888(v54, v55);
  sub_100536120(v55);
  sub_100750564();
  v49(v12, v8);
  v56 = (a2 + v47[16]);
  v57 = v56[3];
  sub_10000C888(v56, v57);
  sub_100536120(v57);
  sub_100750564();
  v49(v12, v8);
  return a3;
}

uint64_t sub_1001EFB20(uint64_t a1)
{
  *(a1 + 8) = sub_1001EFB88(&qword_10092D490, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  result = sub_1001EFB88(&qword_10092D498, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001EFB88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001EFBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001EFCB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001EFD70(uint64_t a1)
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100110090(319, &qword_10092C920, &qword_100926520, &qword_1007A9F00);
    if (v2 <= 0x3F)
    {
      sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
      if (v3 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520, &unk_1007A5C80);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001EFED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001F0028(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_1001F016C(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1001F0280(319);
      if (v3 <= 0x3F)
      {
        sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
        if (v4 <= 0x3F)
        {
          sub_1001F02EC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001F0280(uint64_t a1)
{
  if (!qword_10092D5F0)
  {
    sub_10000C724(&unk_100923AE0, &qword_1007A8370);
    v1 = sub_100743554();
    if (!v2)
    {
      atomic_store(v1, &qword_10092D5F0);
    }
  }
}

void sub_1001F02EC(uint64_t a1)
{
  if (!qword_10092D5F8)
  {
    sub_10000C724(&unk_1009249B0, &qword_1007B5A70);
    v1 = sub_100743554();
    if (!v2)
    {
      atomic_store(v1, &qword_10092D5F8);
    }
  }
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView(uint64_t a1)
{
  result = qword_10092D698;
  if (!qword_10092D698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1001F0408(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_100741E54();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10092D678;
  sub_1007433C4();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10092D680;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10092D688;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_10092D690];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  sub_100741DD4();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v6[qword_10092D670] = sub_10027562C(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_10092D680;
  v26 = *(v24 + qword_10092D680);
  v26[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *(v24 + v25);
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *(v24 + v25);
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_10092D688;
  v35 = *(v27 + qword_10092D688);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1007A7210;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
    isa = sub_100753294().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*(v24 + v25)];
    [v27 addSubview:*(v27 + v34)];
    [v27 addSubview:*(v27 + qword_10092D678)];
    [v27 addSubview:*(v27 + qword_10092D670)];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001F0860()
{
  xmmword_10097E430 = xmmword_1007B1E80;
  unk_10097E440 = xmmword_1007B1E90;
  result = 10.0;
  xmmword_10097E450 = xmmword_1007B1EA0;
  unk_10097E460 = xmmword_1007B1EB0;
  qword_10097E470 = 0x4020000000000000;
  return result;
}

double sub_1001F089C()
{
  xmmword_10097E480 = xmmword_1007B1EC0;
  *algn_10097E490 = xmmword_1007B1E90;
  result = 146.0;
  xmmword_10097E4A0 = xmmword_1007B1ED0;
  unk_10097E4B0 = xmmword_1007B1EE0;
  qword_10097E4C0 = 0x4020000000000000;
  return result;
}

__n128 sub_1001F08D8@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_10092D690 + 32);
  v13 = *(v2 + qword_10092D690 + 48);
  v14 = *(v2 + qword_10092D690 + 64);
  v10 = *(v2 + qword_10092D690);
  v11 = *(v2 + qword_10092D690 + 16);
  v4 = *(v2 + qword_10092D670);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_1001F167C();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView(0);
  *(v5 + 120) = sub_1001F1720(&qword_10092D6F0, type metadata accessor for InAppPurchaseView, &unk_1007BF1D8);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  sub_100750434();
  v7 = *(v2 + qword_10092D678);
  *(v5 + 232) = sub_1007433C4();
  *(v5 + 240) = sub_1001F1720(&qword_10092E370, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  *(v5 + 208) = v7;
  sub_100016C60(0, &qword_100927120, UIVisualEffectView_ptr);
  v8 = v7;
  sub_100750434();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_1001F0AA8()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = v0 + qword_10092D690;
  v3 = *(v0 + qword_10092D670);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_10092D690 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_10092D678);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_1001F0CB4()
{
  v1 = *(v0 + qword_10092D688);
}

void sub_1001F0D14(uint64_t a1)
{
  v2 = *(a1 + qword_10092D688);
}

double sub_1001F0D88()
{
  v1 = sub_10074F814();
  sub_10074F834();
  sub_100741D54();
  if (swift_dynamicCastClass())
  {
    sub_100741D44();
    v2 = sub_10074EF24();
  }

  else
  {

    sub_10074F834();
    v2 = sub_10074EF24();
  }

  if (v2 && (v3 = sub_10074F1E4()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = sub_10074F204();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = sub_10074F1E4();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = sub_10074F204();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_10092D680);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A57A0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_100037ED0();

  return result;
}

uint64_t sub_1001F0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10074F314();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_10000D134(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_10000C824(v44, v43);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074F8A4();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = sub_10074F814();
    sub_10074F834();
    sub_100741D54();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      sub_100741D44();
      v19 = sub_10074EF24();
    }

    else
    {

      sub_10074F834();
      v19 = sub_10074EF24();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      sub_10074F294();
      sub_10074F254();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      sub_10074F374();
      v21 = *(v20 + qword_10092D678);
      sub_10074F324();
      sub_100743364();
      [v21 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      sub_10074F294();
      v22 = sub_10074F254();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      sub_1007433C4();
      sub_1001F1720(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      sub_10074F294();
      sub_10074F254();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      sub_10074F374();
      v26 = *(v24 + qword_10092D670);
      v27 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v29 = *(v26 + v27);
      sub_10074F294();
      v30 = sub_10074F254();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      sub_1007433C4();
      sub_1001F1720(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v32 = v31;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v44);
}

void sub_1001F15B0()
{
  v1 = qword_10092D678;
  sub_1007433C4();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10092D680;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_10092D688;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  sub_100754644();
  __break(1u);
}

unint64_t sub_1001F167C()
{
  result = qword_10092D6E8;
  if (!qword_10092D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D6E8);
  }

  return result;
}

uint64_t sub_1001F16D0()
{
  sub_10000C620(v0 + 11);
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 21);
  sub_10000C620(v0 + 26);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_1001F1720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001F1788(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1001F1878(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1007541F4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100743E94();
  v7 = sub_100743EA4();
  sub_1001F3AE8(v7, sub_100171C34);
  v9 = v8;

  sub_100151994(v6, v9);

  if (a2)
  {
    sub_100016C60(0, &qword_10093B420, UIButton_ptr);
    v10 = [v3 traitCollection];
    sub_1001F24D0(a2, v10);

    v11 = a2;
    v12 = sub_100754204();
  }

  else
  {
    v12 = 0;
  }

  v13 = *&v3[qword_10092D708];
  *&v3[qword_10092D708] = v12;
  v14 = v12;
  sub_1001F2CE0(v13);

  return [v3 setNeedsLayout];
}

uint64_t sub_1001F1A24()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F0C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_100039C50(v14, qword_10097E4D8);
  v15 = sub_10000D0FC(v14, qword_10097E4D8);
  if (qword_100920590 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, qword_10097E4F0);
  v34 = v13;
  sub_1001F4D20(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_1009204B8 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_10000D0FC(v5, qword_10097E1E8);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_1009204C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v17, qword_10097E200);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_100921358 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v1, qword_100981740);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_1001F4C14(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_1001F4C14(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_1001F1EFC()
{
  v0 = sub_10074D014();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_100039C50(v8, qword_10097E4F0);
  v9 = sub_10000D0FC(v8, qword_10097E4F0);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10074D004();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_1001F20D4()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v15[qword_100929BE8] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  sub_100748094();
  sub_1007480C4();

  sub_1007480B4();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v26 = v23;
      v27 = sub_100753FC4();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_100150D10();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_1001F24D0(void *a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100944920, &qword_1007B1FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v6 = sub_100753C14();
  sub_1007541A4();
  v7 = sub_1007540B4();
  *(v8 + 8) = 0;
  v7(v22, 0);
  v9 = sub_1007540B4();
  *(v10 + 24) = 0;
  v9(v22, 0);
  v11 = [a1 title];
  sub_100753094();

  sub_1007541C4();
  *(swift_allocObject() + 16) = v6;
  v12 = v6;
  sub_100751A04();
  v13 = sub_1007519F4();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  sub_100754144();
  v14 = [a1 image];
  if (v14)
  {
    v15 = v14;
    sub_100754194();
    if ([v15 isSymbolImage])
    {
      v16 = [objc_opt_self() configurationWithFont:v12 scale:1];
      sub_100754024();
    }

    v17 = [a1 title];
    v18 = sub_100753094();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_1007540D4();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      sub_100754094();
    }
  }
}

double *sub_1001F27B4(double *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = sub_100743584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10097E508;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_10092D708] = 0;
  v12 = a1;
  sub_1001F4D20(a1, &v2[qword_10092D6F8], type metadata accessor for SearchResultsContextCardView.Style);
  sub_100746ED4();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = sub_100746EC4();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_10092D720] = v17;
  v37[1] = sub_100743034();
  v14(v9, v12 + v16, v6);
  v21 = sub_100743004();
  v22 = *(v20 + 24);
  v23 = sub_10074F0C4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  sub_100743014();
  *&v2[qword_10092D710] = v21;
  v38(v9, v27 + v41, v39);
  v30 = sub_100743004();
  v25(v28, (v27 + *(v37[0] + 28)), v23);
  v29(v28, 0, 1, v23);
  sub_100743014();
  *&v2[qword_10092D718] = v30;
  *&v2[qword_10092D700] = sub_1001F20D4();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*(v35 + qword_10092D710)];
  [v35 addSubview:*(v35 + qword_10092D718)];
  [v35 addSubview:*(v35 + qword_10092D720)];
  [v35 addSubview:*(v35 + qword_10092D700)];

  sub_1001F4C7C(v27);
  return v35;
}

void sub_1001F2C28(uint64_t a1)
{
  v2 = qword_10097E508;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_10092D708) = 0;
  sub_100754644();
  __break(1u);
}

void sub_1001F2CE0(void *a1)
{
  v2 = qword_10092D708;
  v3 = *&v1[qword_10092D708];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_1001F2D84@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10074D014();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView(0);
  sub_100750434();
  v4 = *(v1 + qword_10092D708);
  if (v4)
  {
    sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  }

  v5 = v4;
  sub_10074D004();
  a1[3] = sub_10074D034();
  a1[4] = sub_1001F4CD8(&qword_10092D960, &type metadata accessor for SearchResultsContextCardLayout, &protocol conformance descriptor for SearchResultsContextCardLayout);
  sub_10000D134(a1);
  return sub_10074D024();
}

id sub_1001F2EDC()
{
  sub_100750B54();
  v1 = sub_100750B64();
  v1();
  v2 = *&v0[qword_10092D710];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_10092D718];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_10092D720];
  [v0 bounds];

  return [v4 setFrame:?];
}

void sub_1001F2FD8()
{
  sub_100027FAC(v0 + qword_10097E508);
  sub_1001F4C7C(v0 + qword_10092D6F8);

  v1 = *(v0 + qword_10092D720);
}

void sub_1001F3068(uint64_t a1)
{
  sub_100027FAC(a1 + qword_10097E508);
  sub_1001F4C7C(a1 + qword_10092D6F8);

  v2 = *(a1 + qword_10092D720);
}

uint64_t sub_1001F3140(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
{
  v7 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_12:

    return v10(v11, a2, v9);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_10074F0C4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_11:
    v10 = *(v15 + 48);
    v11 = a1 + v16;
    goto LABEL_12;
  }

  v17 = sub_100750534();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v15 = *(v17 - 8);
    v16 = a3[8];
    goto LABEL_11;
  }

  v18 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1001F3350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_10074F0C4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100750534();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1001F350C(uint64_t a1)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v2 <= 0x3F)
  {
    result = sub_100016C60(319, &qword_100923500, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      result = sub_10074F0C4();
      if (v4 <= 0x3F)
      {
        result = sub_100750534();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001F35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001F36CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100750534();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1001F3784(uint64_t a1)
{
  sub_100750534();
  if (v1 <= 0x3F)
  {
    sub_100016C60(319, &qword_100923500, UIColor_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001F384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100743584();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10074D014();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1001F3954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100743584();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10074D014();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1001F3A54(uint64_t a1)
{
  result = sub_100743584();
  if (v2 <= 0x3F)
  {
    result = sub_10074D014();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1001F3AE8(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, __n128))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_10001E2A8(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v27 = a1 + 64;
    v5 = sub_1007543B4();
    v6 = 0;
    v28 = *(a1 + 36);
    v25 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(a1 + 48) + 16 * v5);
      v11 = *v9;
      v10 = v9[1];
      v12 = *(*(a1 + 56) + 8 * v5);

      (a2)(v29, v11, v10, v12);

      v30 = v4;
      v14 = v4[2];
      v13 = v4[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001E2A8((v13 > 1), v14 + 1, 1);
        v4 = v30;
      }

      v4[2] = v14 + 1;
      v15 = &v4[6 * v14];
      v16 = v29[0];
      v17 = v29[2];
      v15[3] = v29[1];
      v15[4] = v17;
      v15[2] = v16;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v18 = *(v27 + 8 * v8);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (a1 + 72 + 8 * v8);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1001D3DC4(v5, v28, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1001D3DC4(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1001F3D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001F3DB0(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v109 = a5;
  v117 = sub_10000C518(&qword_10092D948, qword_1007B1FC8);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v93 - v8;
  v9 = sub_10074D014();
  __chkstk_darwin(v9 - 8);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1007541F4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100750954();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v101 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v93 - v14;
  __chkstk_darwin(v15);
  v103 = &v93 - v16;
  __chkstk_darwin(v17);
  v104 = &v93 - v18;
  __chkstk_darwin(v19);
  v105 = &v93 - v20;
  __chkstk_darwin(v21);
  v106 = &v93 - v22;
  v112 = sub_10074D034();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v25 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v97 = a6;
  v26 = a6 + v25;
  v115 = a1;
  v27 = sub_100753C14();
  v120 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v28 = *(v26 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v29 = [objc_opt_self() labelColor];
  v30 = sub_100743E94();
  v31 = sub_100743EA4();
  sub_1001F3AE8(v31, sub_100171C34);
  v121 = v32;

  v33 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v33 setAlignment:4];
  [v33 setLineBreakMode:v28];
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v35 = sub_100016C60(0, &qword_10093F2D0, NSMutableParagraphStyle_ptr);
  *(inited + 40) = v33;
  *(inited + 64) = v35;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v24;
  *(inited + 80) = v27;
  v36 = NSParagraphStyleAttributeName;
  v37 = v33;
  v38 = NSFontAttributeName;
  v39 = v27;
  v40 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  v132 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  *&aBlock = v29;
  sub_10000C610(&aBlock, &v126);
  v99 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v135 = v40;
  sub_1006734F4(&v126, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v136 = v135;

  sub_100016C60(0, &unk_100929CB0, NSMutableAttributedString_ptr);
  v119 = v39;
  v100 = v30;
  v42 = sub_100743074();
  v43 = v136;

  v44.super.isa = v42;
  v45._rawValue = v43;
  isa = sub_100753884(v44, v45).super.isa;
  v47 = v37;
  v48 = isa;
  v49 = [(objc_class *)v48 fullRange];
  [(objc_class *)v48 addAttribute:v36 value:v47 range:v49, v50];
  v98 = v47;

  v118 = swift_allocObject();
  *(v118 + 16) = 0;
  *&v126 = 0;
  v51 = *(v121 + 16);
  v123 = NSLinkAttributeName;
  if (v51)
  {
    v122 = NSUnderlineStyleAttributeName;
    v52 = v121 + 72;
    do
    {
      v53 = *(v52 - 24);
      v124 = *(v52 - 8);

      v125 = v53;

      v54 = v48;
      v55 = sub_1001522A0(&v126, v48);
      v56 = sub_100753064();
      v57 = [v55 rangeOfString:v56 options:4];
      v59 = v58;

      v48 = v54;
      if (v57 != sub_100740E44())
      {
        v60 = sub_100753064();
        [(objc_class *)v54 addAttribute:v123 value:v60 range:v57, v59];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v61 = sub_1007534B4().super.super.isa;
          [(objc_class *)v54 addAttribute:v122 value:v61 range:v57, v59];
        }
      }

      v52 += 48;

      --v51;
    }

    while (v51);
  }

  v62 = [(objc_class *)v48 fullRange];
  v64 = v63;
  v65 = v48;
  v66 = swift_allocObject();
  v67 = v121;
  v66[2] = v120;
  v66[3] = v67;
  v68 = v119;
  v66[4] = v118;
  v66[5] = v68;
  v66[6] = &v136;
  v66[7] = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_100152C50;
  *(v69 + 24) = v66;
  v133 = sub_1000CF744;
  v134 = v69;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1001529B4;
  v132 = &unk_10086C350;
  v70 = _Block_copy(&aBlock);
  v71 = v68;

  [(objc_class *)v65 enumerateAttribute:v123 inRange:v62 options:v64 usingBlock:0, v70];
  _Block_release(v70);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if (v68)
  {
    __break(1u);
  }

  else
  {
    v72 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v65];

    v73 = v126;

    v132 = sub_100750BD4();
    v133 = &protocol witness table for LabelPlaceholder;
    sub_10000D134(&aBlock);
    v74 = v71;
    v75 = v72;
    v76 = v101;
    sub_100750944();
    v77 = v102;
    sub_100750934();
    v78 = *(v107 + 8);
    v79 = v108;
    v78(v76, v108);
    v80 = v103;
    sub_100750894();
    v78(v77, v79);
    v81 = v104;
    sub_1007508F4();
    v78(v80, v79);
    v82 = v105;
    sub_1007508E4();
    v78(v81, v79);
    sub_100750904();
    v78(v82, v79);
    sub_100750BB4();
    v83 = v75;
    sub_100750C04();

    if (v109)
    {
      v84 = v109;
      v85 = v94;
      sub_1001F24D0(v84, v115);
      v86 = type metadata accessor for ButtonPlaceholder(0);
      v87 = swift_allocObject();
      *(v87 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v95 + 32))(v87 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v85, v96);

      v88 = sub_1001F4CD8(&qword_10092D958, type metadata accessor for ButtonPlaceholder, &protocol conformance descriptor for ButtonPlaceholder);
    }

    else
    {
      v87 = 0;
      v86 = 0;
      v88 = 0;
      v127 = 0;
      *(&v126 + 1) = 0;
    }

    *&v126 = v87;
    v128 = v86;
    v129 = v88;
    sub_10074D004();
    v89 = v110;
    sub_10074D024();
    sub_1001F4CD8(&qword_10092D950, &type metadata accessor for SearchResultsContextCardLayout, &protocol conformance descriptor for SearchResultsContextCardLayout);
    v90 = v114;
    v91 = v112;
    sub_100750594();
    swift_getOpaqueTypeConformance2();
    v92 = v117;
    sub_100751254();

    (*(v116 + 8))(v90, v92);
    (*(v111 + 8))(v89, v91);
  }
}

uint64_t sub_1001F4B9C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1001F4BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F4C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F4C7C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F4CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F4D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F4D8C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_100753924();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_100753944();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_1001F4EA8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007507D4();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v16);
  sub_1007507C4();
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980B28);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_100750B04();
  v15 = &protocol witness table for StaticDimension;
  sub_10000D134(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_10000D134(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v10);
  sub_1007507C4();
  qword_10097E520 = 0;
  *algn_10097E528 = 0;
  sub_100012160(&v16, &algn_10097E528[8]);
  sub_100012160(&v13, &algn_10097E528[48]);
  qword_10097E588 = 0;
  unk_10097E590 = 0;
  qword_10097E580 = 2;
  return sub_100012160(&v10, &unk_10097E598);
}

uint64_t sub_1001F50E8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747064();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v4, qword_10097E3A8);
  (*(v5 + 16))(v7, v8, v4);
  sub_100746F34();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100980B28);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_100750B04();
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v19 = sub_1007507D4();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v18);
  sub_1007507C4();
  qword_10097E5C0 = v10;
  unk_10097E5C8 = v12;
  sub_100012160(&v24, &unk_10097E5D0);
  sub_100012160(&v21, &unk_10097E5F8);
  qword_10097E628 = 0;
  unk_10097E630 = 0;
  qword_10097E620 = 3;
  return sub_100012160(&v18, &unk_10097E638);
}

char *sub_1001F5430(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  sub_1007433C4();
  *&v4[v15] = sub_1007431D4();
  v46 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100920F40 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100980B10);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_100745C84();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_100745C74();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v16, qword_100980B28);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_100745C74();
  v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView(0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_1001F5A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_10074C3E4();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = sub_1007479B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_100747064();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v23 = qword_10093FF58;
  }

  v24 = sub_10000D0FC(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10000C888(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_100748CB4();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_1001F750C();
  v36 = v50;
  sub_10074A9C4();
  v37 = v49;
  sub_100747984();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v39 = v38 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v38 + v40, v57);
    sub_10000C888(v57, v57[3]);
    sub_10074AE54();
    v42 = v41;
    v44 = v43;
    sub_10000C620(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return sub_100746FE4();
}

uint64_t sub_1001F61F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_1001F5A40(v10);
  v11 = [v1 traitCollection];
  v12 = sub_100753804();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_100920598 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_1009205A0 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_1001F756C();
  sub_10074F4B4();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView(0);
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_100745C84();
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_1001F75C0(v39, &v49);
  sub_1007433C4();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_1007503E4();
  sub_1001F761C(v39);

  sub_1007477B4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_100753804();

  v32 = v35;
  if (v16)
  {
    sub_1004AD940(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_1004ADE84(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_1001F7670(v40);
}

uint64_t sub_1001F66D0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10000C518(&qword_10092D9D0, &unk_1007B5A50);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007AB1A0;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1001F67E8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007A7210;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

double sub_1001F6890(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_1001F66D0();
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v8 = *(v5 + 16);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v6++ + 32);
      if (v9)
      {
        v10 = v9;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        v2 = &v35;
        sub_100753344();
        v7 = v35;
      }
    }

    v2 = sub_1001F67E8();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v7 = sub_1001F67E8();
    v11 = sub_1001F66D0();
    v12 = 0;
    v2 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v13 = *(v11 + 16);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v14 = *(v11 + 8 * v12++ + 32);
      if (v14)
      {
        v15 = v14;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v2 = v35;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v7 >> 62)
      {
        goto LABEL_59;
      }

      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v21 = sub_100754664();
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_61:
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v7;
    *(v31 + 24) = v2;
    v39 = sub_1001F74AC;
    v40 = v31;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1000CF7B0;
    v38 = &unk_10086C3D0;
    v32 = _Block_copy(&v35);

    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v39 = sub_1001F7504;
    v40 = v33;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100144DD8;
    v38 = &unk_10086C420;
    v34 = _Block_copy(&v35);

    [v30 animateWithDuration:4 delay:v32 options:v34 animations:0.33 completion:0.0];
    _Block_release(v34);
    _Block_release(v32);
    return result;
  }

  v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_61;
  }

LABEL_33:
  v22 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v23 = sub_100754574();
    }

    else
    {
      if (v22 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v23 = *(v2 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    [v23 setHidden:0];

    ++v22;
    if (v25 == v21)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v16 = sub_100754664();
LABEL_21:
    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = sub_100754574();
        }

        else
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v18 = *(v7 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_53;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v2 >> 62)
    {
      break;
    }

    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_64;
    }

LABEL_43:
    v26 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v27 = sub_100754574();
      }

      else
      {
        if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setAlpha:1.0];
      [v28 setHidden:0];

      ++v26;
      if (v29 == v7)
      {
        goto LABEL_64;
      }
    }
  }

  v7 = sub_100754664();
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_64:

  return result;
}

void sub_1001F6E34(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100754664())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_100754574();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_1001F6FB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1001F7090(void *a1)
{
  sub_100747014();
  sub_10000C620(a1 + 15);
  sub_100012160(&v6, (a1 + 15));
  v2 = sub_100746FD4();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_100746F94();
  a1[12] = result;
  return result;
}

uint64_t sub_1001F70EC(void *a1)
{
  sub_100746F34();
  *a1 = v2;
  a1[1] = v3;
  sub_100746F74();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_10000C620(a1 + 2);
  sub_100012160(&v9, (a1 + 2));
  sub_100747014();
  sub_10000C620(a1 + 15);
  sub_100012160(&v9, (a1 + 15));
  v5 = sub_100746FD4();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_100746F94();
  a1[12] = result;
  return result;
}

double sub_1001F7240()
{
  swift_beginAccess();

  return result;
}

double sub_1001F7288(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_1001F7344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v6 = sub_100753064();
  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v8 = sub_100753064();
  [v7 setText:v8];

  return [v4 setNeedsLayout];
}

uint64_t sub_1001F746C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001F74B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F74CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001F750C()
{
  result = qword_1009332C0;
  if (!qword_1009332C0)
  {
    sub_10074C3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009332C0);
  }

  return result;
}

unint64_t sub_1001F756C()
{
  result = qword_10092D9D8;
  if (!qword_10092D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092D9D8);
  }

  return result;
}

void sub_1001F76CC()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  sub_1007433C4();
  *(v0 + v8) = sub_1007431D4();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100920F40 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100980B10);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_100745C84();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_100745C74();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100920F48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_100980B28);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_100745C74();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1001F7A68(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v6;
  v7 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10000C518(&qword_1009242B8, &unk_1007A77F0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v29 = v1;
  sub_100016B4C(v1 + v17, v16, &unk_100924290, &qword_1007AC8E0);
  sub_100016B4C(v30, &v16[v18], &unk_100924290, &qword_1007AC8E0);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000C8CC(v16, &unk_100924290, &qword_1007AC8E0);
    }

    goto LABEL_6;
  }

  sub_100016B4C(v16, v12, &unk_100924290, &qword_1007AC8E0);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_100052BD8(v12);
LABEL_6:
    v21 = &qword_1009242B8;
    v22 = &unk_1007A77F0;
    goto LABEL_13;
  }

  v23 = v27;
  sub_100052B74(&v16[v18], v27);
  if (sub_1007457A4() & 1) != 0 && *&v12[*(v2 + 20)] == *(v23 + *(v2 + 20)) && (sub_100741734())
  {
    v24 = sub_1007457A4();
    sub_100052BD8(v23);
    sub_100052BD8(v12);
    result = sub_10000C8CC(v16, &unk_100924290, &qword_1007AC8E0);
    if (v24)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_100052BD8(v23);
  sub_100052BD8(v12);
  v21 = &unk_100924290;
  v22 = &qword_1007AC8E0;
LABEL_13:
  sub_10000C8CC(v16, v21, v22);
LABEL_14:
  sub_100016B4C(v29 + v17, v9, &unk_100924290, &qword_1007AC8E0);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000C8CC(v9, &unk_100924290, &qword_1007AC8E0);
  }

  v25 = v28;
  sub_100052B74(v9, v28);
  sub_1001F7E48();
  return sub_100052BD8(v25);
}

uint64_t sub_1001F7E48()
{
  v0 = sub_1007417F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741764();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), sub_1007539C4(), v6 = sub_100753064(), , isa = sub_100741704().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_100052C98(), sub_10000C518(&unk_1009242E0, &qword_1007A7818), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_1001F80E0(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_100741704().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_100052C98(), sub_10000C518(&unk_1009242E0, &qword_1007A7818), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_1001F80E0(v16);
  (*(v1 + 8))(v3, v0);
  sub_10000C8CC(v16, &unk_1009242D0, &qword_1007A7810);
  return sub_10000C8CC(v18, &unk_1009242D0, &qword_1007A7810);
}

uint64_t sub_1001F80E0(uint64_t a1)
{
  v50 = sub_10000C518(&qword_1009242B8, &unk_1007A77F0);
  __chkstk_darwin(v50);
  v51 = &v44 - v3;
  v4 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = (&v44 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  sub_100016B4C(a1, &v52, &unk_1009242D0, &qword_1007A7810);
  if (!v53)
  {
    return sub_10000C8CC(&v52, &unk_1009242D0, &qword_1007A7810);
  }

  v48 = v12;
  v49 = v22;
  sub_100032CCC(&v52, v55);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100016B4C(v1 + v23, v15, &unk_100924290, &qword_1007AC8E0);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100924290;
    v26 = &qword_1007AC8E0;
    v27 = v15;
LABEL_21:
    sub_10000C8CC(v27, v25, v26);
    return sub_10000C620(v55);
  }

  v44 = v19;
  v45 = v6;
  v46 = a1;
  v47 = v1;
  v29 = v49;
  sub_100052B74(v15, v49);
  v30 = v56;
  v31 = v57;
  sub_10000C888(v55, v56);
  v32 = v48;
  (*(v31 + 8))(v30, v31);
  sub_100052C34(v29, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v33 = v51;
  v34 = *(v50 + 48);
  sub_100016B4C(v32, v51, &unk_100924290, &qword_1007AC8E0);
  sub_100016B4C(v9, v33 + v34, &unk_100924290, &qword_1007AC8E0);
  if (v24(v33, 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290, &qword_1007AC8E0);
    sub_10000C8CC(v32, &unk_100924290, &qword_1007AC8E0);
    if (v24((v33 + v34), 1, v16) == 1)
    {
      sub_10000C8CC(v33, &unk_100924290, &qword_1007AC8E0);
LABEL_8:
      sub_100052BD8(v49);
      return sub_10000C620(v55);
    }

    goto LABEL_11;
  }

  v35 = v45;
  sub_100016B4C(v33, v45, &unk_100924290, &qword_1007AC8E0);
  if (v24((v33 + v34), 1, v16) == 1)
  {
    sub_10000C8CC(v9, &unk_100924290, &qword_1007AC8E0);
    sub_10000C8CC(v48, &unk_100924290, &qword_1007AC8E0);
    sub_100052BD8(v35);
LABEL_11:
    sub_10000C8CC(v33, &qword_1009242B8, &unk_1007A77F0);
    v36 = v47;
    goto LABEL_18;
  }

  v37 = v44;
  sub_100052B74(v33 + v34, v44);
  v38 = sub_1007457A4();
  v36 = v47;
  if (v38 & 1) != 0 && *(v35 + *(v16 + 20)) == *(v37 + *(v16 + 20)) && (sub_100741734())
  {
    v39 = sub_1007457A4();
    sub_100052BD8(v37);
    sub_10000C8CC(v9, &unk_100924290, &qword_1007AC8E0);
    sub_10000C8CC(v48, &unk_100924290, &qword_1007AC8E0);
    sub_100052BD8(v35);
    sub_10000C8CC(v33, &unk_100924290, &qword_1007AC8E0);
    if (v39)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100052BD8(v37);
    sub_10000C8CC(v9, &unk_100924290, &qword_1007AC8E0);
    sub_10000C8CC(v48, &unk_100924290, &qword_1007AC8E0);
    sub_100052BD8(v35);
    sub_10000C8CC(v33, &unk_100924290, &qword_1007AC8E0);
  }

LABEL_18:
  sub_100016B4C(v46, &v52, &unk_1009242D0, &qword_1007A7810);
  v40 = v53;
  if (!v53)
  {
    sub_100052BD8(v49);
    v25 = &unk_1009242D0;
    v26 = &qword_1007A7810;
    v27 = &v52;
    goto LABEL_21;
  }

  v41 = v54;
  sub_10000C888(&v52, v53);
  v42 = *(v36 + 80);
  v43 = v49;
  (*(v41 + 16))(v49, v42, v40, v41);
  sub_100052BD8(v43);
  sub_10000C620(&v52);
  return sub_10000C620(v55);
}

uint64_t sub_1001F86F4()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState, &unk_100924290, &qword_1007AC8E0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(uint64_t a1)
{
  result = qword_10092DA08;
  if (!qword_10092DA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F87D4(uint64_t a1)
{
  sub_1000501F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1001F88B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000518C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1001F8930(v6);
  sub_1007545B4();
  return result;
}

void sub_1001F8930(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C518(&qword_1009242C0, &qword_1007A7800);
        v6 = sub_100753324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1001F8C68(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1001F8A40(0, v2, 1, a1);
  }
}

void sub_1001F8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_1007417F4();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_100741744();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_100741744();

      LOBYTE(v20) = sub_100741724();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001F8C68(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_1007417F4();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10005171C(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1001F94F0((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10005171C(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        *(v104 + 1) = v103;
        v121 = v102;
        sub_100051690(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_100741744();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_100741744();

      LODWORD(v116) = sub_100741724();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_100741744();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_100741744();

        LODWORD(v32) = sub_100741724() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_1002558E0(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_1002558E0((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1001F94F0((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10005171C(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_100051690(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_100741744();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_100741744();

    LOBYTE(v49) = sub_100741724();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}