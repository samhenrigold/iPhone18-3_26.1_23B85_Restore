double sub_2EA88C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v50 = a3;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699E0();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_7665B0();
  v18 = v17;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19 = (a2 + *(v48 + 72));
  v20 = v19[3];
  sub_B170(v19, v20);
  sub_33964(v20);
  sub_766700();
  v22 = v21;
  v23 = *(v10 + 8);
  v49 = v9;
  v23(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v24 = a2 + *(v48 + 76);
    v25 = (v24 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v26 = v25[3];
    sub_B170(v25, v26);
    sub_33964(v26);
    sub_766700();
    v28 = v27;
    v23(v13, v49);
    sub_2EACF4(a1, a2, a4, a5, a4 - (v18 + v28));
    v30 = v29;
    v31 = sub_2EB578(a1, a2, a4, a5);
    if (v30 > v31)
    {
      v31 = v30;
    }
  }

  else
  {
    v32 = v16[10];
    sub_1ED18(a2 + v32, v51, &unk_943B10, &qword_77E080);
    if (v52)
    {
      sub_B170(v51, v52);
      sub_7665B0();
      v34 = v33;
      sub_BEB8(v51);
    }

    else
    {
      sub_10A2C(v51, &unk_943B10, &qword_77E080);
      v34 = 0.0;
    }

    v35 = v48;
    sub_1ED18(a2 + v32, v51, &unk_943B10, &qword_77E080);
    v36 = v52;
    sub_10A2C(v51, &unk_943B10, &qword_77E080);
    if (v36)
    {
      v37 = (a2 + *(v35 + 80));
      v38 = v37[3];
      sub_B170(v37, v38);
      sub_33964(v38);
      sub_766700();
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
    sub_B170(v43, v44);
    sub_33964(v44);
    sub_766700();
    v46 = v45;
    v23(v13, v41);
    sub_2EACF4(a1, a2, a4, a5, a4 - (v40 + v34 + v18 + v46));
  }

  return v22 + 0.0 + v31;
}

void sub_2EACF4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v79 = sub_762D10();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_756CB0();
  v76 = *(v78 - 1);
  __chkstk_darwin(v78);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_B170(v18, v18[3]);
  sub_7665B0();
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
    sub_BD88(&unk_94E7B0, &qword_792B30);
    v67 = v20;
    sub_7592B0();
    v21 = v83;
    v68 = v17;
    v22 = v17[15];
    v69 = a2;
    v23 = *(a2 + v22);
    sub_B170(v18, v18[3]);
    if (sub_766540())
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
      if (Width > v36 || (sub_756CA0(), v80[0] = v72, v80[1] = v25, sub_12EC40(), sub_76A4C0(), v38 = v37, (*(v76 + 8))(v16, v78), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_7699E0(), v39, (v40)))
      {
        v78 = v21;
        v41 = sub_2E8950(v72, v25);
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
          v48 = sub_7653B0();
          v81 = v48;
          v82 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v49 = sub_B1B4(v80);
          (*(*(v48 - 8) + 104))(v49, v76, v48);

          v50 = v78;
          sub_765C30();
          sub_BEB8(v80);
          a1 = v47;
          sub_762D00();
          sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v51 = v79;
          sub_7665A0();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v78;
            goto LABEL_13;
          }
        }

        v60 = sub_7653B0();
        v81 = v60;
        v82 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v61 = sub_B1B4(v80);
        (*(*(v60 - 8) + 104))(v61, v76, v60);
        v62 = v78;
        sub_765C30();
        sub_BEB8(v80);
        v63 = v73;
        sub_762D00();
        sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v64 = v79;
        sub_7665A0();
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
        sub_B170((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_7665A0();
        v58 = v67[3];
        sub_B170(v67, v58);
        v59 = v74;
        sub_33964(v58);
        sub_766700();
        (*(v55 + 8))(v59, v54);
      }
    }
  }
}

double sub_2EB578(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_1ED18(a2 + *(v9 + 52), &v25, &qword_9417D0, &unk_780EA0);
  if (!v26)
  {
    sub_10A2C(&v25, &qword_9417D0, &unk_780EA0);
    return 0.0;
  }

  sub_10914(&v25, v27);
  sub_1ED18(a2 + *(v9 + 56), &v23, &qword_9417D0, &unk_780EA0);
  if (!v24)
  {
    sub_10A2C(&v23, &qword_9417D0, &unk_780EA0);
    sub_BEB8(v27);
    return 0.0;
  }

  sub_10914(&v23, &v25);
  sub_B170(v27, v27[3]);
  sub_7665A0();
  v11 = v10;
  v13 = v12;
  sub_B170(&v25, v26);
  sub_7665A0();
  v15 = v14;
  v16 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84));
  v17 = v16[3];
  sub_B170(v16, v17);
  sub_33964(v17);
  sub_766700();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v15 + v11 - v13 + v19;
  sub_BEB8(&v25);
  sub_BEB8(v27);
  return v20;
}

double sub_2EB7F4(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v58 = sub_7699E0();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v59 = a1;
  v13 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  v14 = *v62;
  v15 = v12;
  *&v59 = a1;
  v57 = v13;
  sub_7592B0();
  v16 = *v62;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_1ED18(a2 + v18, v62, &unk_943B10, &qword_77E080);
  if (v63)
  {
    sub_B170(v62, v63);
    sub_7665B0();
    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(v62, &unk_943B10, &qword_77E080);
  }

  sub_1ED18(a2 + v18, v62, &unk_943B10, &qword_77E080);
  v19 = v63;
  sub_10A2C(v62, &unk_943B10, &qword_77E080);
  if (v19)
  {
    v20 = (a2 + *(v15 + 80));
    v21 = v20[3];
    sub_B170(v20, v21);
    sub_33964(v21);
    sub_766700();
    (*(v7 + 8))(v10, v6);
  }

  v22 = (a2 + v17[6]);
  sub_B170(v22, v22[3]);
  sub_7665A0();
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

  sub_B170(v22, v22[3]);
  sub_7669E0();
  v33 = v27 - v30 + v31 + v32;
  sub_134D8(v22, v62);
  *&v59 = a1;
  sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_7592B0();
  v34 = v17[9];
  sub_1ED18(a2 + v34, &v59, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v59, &qword_9417D0, &unk_780EA0);
  sub_B170(v62, v63);
  v64.var0 = v25;
  v64.var1 = v27;
  v64.var2 = v28;
  v64.var3 = v30;
  sub_766A10(v64);
  sub_BEB8(v62);
  v35 = (a2 + v17[8]);
  sub_B170(v35, v35[3]);
  sub_7669D0();
  v36 = (a2 + v17[7]);
  sub_B170(v36, v36[3]);
  sub_7669D0();
  sub_B170(v35, v35[3]);
  sub_7665A0();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_B170(v36, v36[3]);
  sub_7665A0();
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
  sub_1ED18(a2 + v34, &v59, &qword_9417D0, &unk_780EA0);
  if (v60)
  {
    sub_10914(&v59, v62);
    v61 = a1;
    sub_7592B0();
    v51 = *&v59;
    sub_B170(v62, v63);
    sub_7665A0();
    v53 = v52;
    v50 = v50 + v51 - v54 + v55 - v52;
    sub_BEB8(v62);
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

    sub_10A2C(&v59, &qword_9417D0, &unk_780EA0);
  }

  return v50 + v53;
}

uint64_t sub_2EBDD4(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v128 = a16;
  v123 = a15;
  v142 = a8;
  v130 = a6;
  v135 = a5;
  v134 = a4;
  v141 = a3;
  v121 = a1;
  v133 = COERCE_DOUBLE(sub_76A920());
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
  sub_1ED18(a12 + v42, &v144, &unk_943B10, &qword_77E080);
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
    sub_10914(&v144, &v146);
    sub_B170((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_766520();
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
    sub_B170(&v146, v147);
    sub_769D20();
    a12 = v140;
    sub_766530();
    sub_BEB8(&v146);
  }

  else
  {
    sub_10A2C(&v144, &unk_943B10, &qword_77E080);
  }

  v121 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_B170(v44, v44[3]);
  v45 = sub_766540();
  v46 = v130;
  v47 = v134;
  if (v45)
  {
    sub_B170(v44, v44[3]);
    sub_766530();
    v48 = v129;
    v49 = v131;
  }

  else
  {
    v122 = v29;
    sub_1ED18(v43 + v42, &v146, &unk_943B10, &qword_77E080);
    v50 = v147;
    sub_10A2C(&v146, &unk_943B10, &qword_77E080);
    v51 = v136;
    if (v50)
    {
      v52 = (v43 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
      v53 = v52[3];
      sub_B170(v52, v53);
      v54 = v132;
      sub_33964(v53);
      sub_766700();
      (*(v122 + 8))(v54, COERCE_DOUBLE(*&v133));
    }

    v55 = v137;
    v56 = v129;
    sub_1ED18(v43 + v42, &v146, &unk_943B10, &qword_77E080);
    v57 = v131;
    v119 = a14;
    v118 = a13;
    if (v147)
    {
      sub_B170(&v146, v147);
      sub_7665B0();
      sub_BEB8(&v146);
    }

    else
    {
      sub_10A2C(&v146, &unk_943B10, &qword_77E080);
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
    sub_B170(v63, v64);
    v65 = v132;
    sub_33964(v64);
    sub_766700();
    v66 = a11;
    v67 = *(v58 + 8);
    v68 = v133;
    v67(v65, *&v133);
    v69 = v141;
    v70 = v59;
    v47 = v134;
    v71 = (v61 + *(v62 + 24));
    v72 = v71[3];
    sub_B170(v71, v72);
    sub_33964(v72);
    sub_766700();
    v120 = *&v67;
    v67(v65, *&v68);
    a11 = v66;
    sub_B170(v44, v44[3]);
    v46 = v60;
    sub_7665A0();
    v74 = v73;
    v153.origin.x = v69;
    v153.origin.y = v47;
    v153.size.width = v70;
    v153.size.height = v60;
    CGRectGetMidY(v153);
    v75 = (v140 + *(*&v121 + 44));
    sub_B170(v75, v75[3]);
    if ((sub_766540() & 1) != 0 || (v154.origin.x = v69, v154.origin.y = v47, v154.size.width = v70, v154.size.height = v60, CGRectGetHeight(v154) < v74))
    {
      v155.origin.x = v69;
      v155.origin.y = v47;
      v155.size.width = v70;
      v155.size.height = v60;
      CGRectGetMinY(v155);
    }

    a14 = v119;
    sub_B170(v75, v75[3]);
    v76 = sub_766540();
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
      sub_B170(v117, v81);
      v82 = v29;
      v83 = v132;
      sub_33964(v81);
      sub_766700();
      v84 = v83;
      v29 = v82;
      (*&v120)(v84, *&v133);
    }

    a13 = v118;
    sub_B170(v44, v44[3]);
    sub_769D20();
    sub_766530();
    v48 = v129;
  }

  v85 = v47;
  sub_B170(v44, v44[3]);
  v86 = v137;
  v87 = v48;
  sub_7665A0();
  v89 = v88;
  sub_B170(v44, v44[3]);
  v90 = sub_766540();
  v91 = 0.0;
  v92 = v140;
  if ((v90 & 1) == 0)
  {
    v93 = v92 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v94 = (v93 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v95 = v94[3];
    sub_B170(v94, v95);
    v96 = v132;
    sub_33964(v95);
    sub_766700();
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
  sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
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
  sub_7665A0();
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

  sub_769D20();
  sub_766530();
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
  sub_7665A0();
  v135 = v115;
  v163.origin.x = v112;
  v163.origin.y = v49;
  v163.size.width = v113;
  v163.size.height = v87;
  CGRectGetMaxX(v163);
  sub_B170((v92 + *(v102 + 84)), *(v92 + *(v102 + 84) + 24));
  sub_766720();
  sub_769D20();
  sub_766530();
  (*(v125 + 8))(v104, a13);
  return (*(v127 + 8))(v114, a14);
}

uint64_t sub_2ECAE8(uint64_t a1)
{
  *(a1 + 8) = sub_2ECB6C(&unk_94E5F0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  result = sub_2ECB6C(&qword_94E7C0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2ECB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2ECBC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2ECC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_2ECD58(uint64_t a1)
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_70B18(319, &qword_941880, &protocol descriptor for LayoutTextView);
      if (v3 <= 0x3F)
      {
        sub_7E0B0(319, &unk_94E840, &unk_941890, &unk_77E250);
        if (v4 <= 0x3F)
        {
          sub_7E0B0(319, &qword_94E850, &unk_9418A0, &qword_780FF0);
          if (v5 <= 0x3F)
          {
            sub_1994D4();
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

uint64_t sub_2ECED8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_BD88(&qword_940AD0, &unk_78F910);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_BD88(&unk_94E7B0, &qword_792B30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_BD88(&unk_94B6E0, &qword_78E688);
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

uint64_t sub_2ED0C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_BD88(&qword_940AD0, &unk_78F910);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_BD88(&unk_94E7B0, &qword_792B30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_BD88(&unk_94B6E0, &qword_78E688);
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

void sub_2ED29C(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_70B18(319, &qword_943C60, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_2ED488(319, qword_941970, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_2ED414(319);
          if (v5 <= 0x3F)
          {
            sub_2ED488(319, &unk_94E948, &type metadata for Int);
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

void sub_2ED414(uint64_t a1)
{
  if (!qword_94E938)
  {
    sub_133D8(&qword_93FBE0, &unk_77EA70);
    sub_26F08();
    v1 = sub_7593A0();
    if (!v2)
    {
      atomic_store(v1, &qword_94E938);
    }
  }
}

void sub_2ED488(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_133D8(&qword_93FBE0, &unk_77EA70);
    v4 = sub_7593A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2ED508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_BD88(&unk_94E7B0, &qword_792B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2ED5D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_BD88(&unk_94E7B0, &qword_792B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2ED688(uint64_t a1)
{
  sub_70B18(319, &qword_943C60, &protocol descriptor for AnyDimension);
  if (v1 <= 0x3F)
  {
    sub_2ED414(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2ED728()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2ED768()
{
  result = qword_94EA70;
  if (!qword_94EA70)
  {
    sub_133D8(&unk_94EA60, &qword_792F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94EA70);
  }

  return result;
}

uint64_t sub_2ED7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a1;
}

uint64_t sub_2ED828(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

void *sub_2ED8B8(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_2ED958()
{

  return swift_deallocClassInstance();
}

double sub_2ED9E4(uint64_t a1, double a2, double a3)
{
  sub_B170(v3, v3[3]);
  sub_7673F0();
  return ceil(v4);
}

__n128 sub_2EDA50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2EDA64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2EDAAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2EDB80()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_94EC40, &unk_793120);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_2F0D68(v8);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v9 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (!(v10 >> 62))
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v9] = _swiftEmptyArrayStorage;

    v15 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_13EA74(v5, &v0[v16]);
    swift_endAccess();
    sub_2F0EF0();
    sub_10A2C(v5, &qword_94EC40, &unk_793120);
    return;
  }

  v11 = sub_76A860();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2EDE24()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760620();
  sub_161DC(v4, qword_99C860);
  v30 = sub_BE38(v4, qword_99C860);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v5 = qword_94EB90;
  [v5 size];

  v6 = qword_94EB90;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99EC80);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = sub_766CA0();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  sub_766CB0();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v46);
  v35(v16, v3, v0);
  sub_766CB0();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v42);
  v21 = v35;
  v35(v20, v3, v0);
  sub_766CB0();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_B1B4(v39);
  v21(v23, v3, v0);
  sub_766CB0();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return sub_7605E0();
}

uint64_t sub_2EE3A8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760620();
  sub_161DC(v4, qword_99C878);
  v24[2] = sub_BE38(v4, qword_99C878);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v5 = qword_94EB90;
  [v5 size];

  v6 = qword_94EB90;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99EC68);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = sub_766CA0();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  sub_766CB0();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v7, qword_99EC80);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v39);
  v30(v16, v3, v0);
  sub_766CB0();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v35);
  v30(v20, v3, v0);
  sub_766CB0();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v32);
  v30(v22, v3, v0);
  sub_766CB0();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return sub_7605E0();
}

uint64_t sub_2EE95C()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_161DC(v7, qword_94EB30);
  sub_BE38(v7, qword_94EB30);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EC80);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC68);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

uint64_t sub_2EEB3C(__n128 a1)
{
  v1 = sub_760620();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = sub_BD88(&unk_94EC48, qword_793130);
  sub_161DC(v8, qword_99C890);
  sub_BE38(v8, qword_99C890);
  if (qword_93C948 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v1, qword_99C860);
  v10 = *(v2 + 16);
  v10(v7, v9, v1);
  if (qword_93C950 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v1, qword_99C878);
  v10(v4, v11, v1);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

uint64_t sub_2EED28()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_94EB60);
  sub_BE38(v0, qword_94EB60);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7593B0();
}

uint64_t sub_2EEDC4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_7699F0();

  result = sub_7605D0();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2EEE40()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_94EB90 = v5;
  return result;
}

char *sub_2EEF38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94EC10, &qword_7930D8);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  sub_7667C0();
  sub_16194(&qword_94EC18, &qword_94EC10, &qword_7930D8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_767480();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  v16 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_93C980 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_94EB90];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] = v17;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v23 = sub_76A000();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView];
  v27 = sub_769FF0();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  sub_75BAD0();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = sub_769FF0();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = sub_76A000();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  sub_75BAD0();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = sub_769FD0();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = sub_76A000();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_2EF4C8();
  return v21;
}

void sub_2EF4C8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  if (qword_93C968 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v2, qword_94EB48);
  v3 = v0;
  sub_7592B0();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  if (qword_93C970 != -1)
  {
    swift_once();
  }

  sub_BE38(v2, qword_94EB60);
  v5 = v3;
  sub_7592B0();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_93C978;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_BE38(v2, qword_94EB78);
    v10 = v5;
    v9 = v5;
    sub_7592B0();

    [v8 setTextAlignment:{v11, v10}];
  }
}

uint64_t sub_2EF73C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_7674E0();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_767510();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_7664F0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_760640();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_760620();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81.receiver = v1;
  v81.super_class = ObjectType;
  objc_msgSendSuper2(&v81, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();

  if (qword_93C958 != -1)
  {
    swift_once();
  }

  v19 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v19, qword_94EB30);
  v78 = v1;
  v20 = v1;
  sub_7592B0();

  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  sub_75BA40();
  v24 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  sub_75BA40();
  v53 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    sub_75BA40();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_2F0214();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_93C960 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&unk_94EC48, qword_793130);
  sub_BE38(v32, qword_99C890);
  v78 = v20;
  v33 = v72;
  sub_7592B0();
  sub_7605F0();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_769D60();
  sub_760600();
  (*(v73 + 16))(v31, v33, v30);
  v35 = sub_75BB20();
  v79 = v35;
  v80 = &protocol witness table for UILabel;
  v36 = v54;
  v77 = &protocol witness table for UILabel;
  v78 = v54;
  v76 = v35;
  v75 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_141154(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v74[7] = 0;
    v74[6] = 0;
  }

  v74[5] = v40;
  v74[8] = v35;
  v74[9] = v41;
  v42 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
  v74[4] = &protocol witness table for UIView;
  v74[3] = v42;
  v74[0] = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  sub_760630();
  v46 = v56;
  sub_7605C0();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v79 = sub_766970();
  v80 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v78);
  sub_766960();
  v47 = v69;
  sub_7674F0();
  v48 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    sub_7674C0();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

BOOL sub_2F0214()
{
  ObjectType = swift_getObjectType();
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760620();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_950960, &qword_793110);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v72 = v10;
  v73 = v8;
  v75 = v4;
  v76 = v14;
  v74 = v12;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v70 = v16;
    v62 = v17;
    v63 = v19;
    v64 = sub_76A860();
    v19 = v63;
    v17 = v62;
    v22 = v64;
    v16 = v70;
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v70 = v16;
    v65 = v17;
    v66 = v19;
    v67 = sub_76A860();
    v19 = v66;
    v17 = v65;
    v68 = v67;
    v16 = v70;
    v26 = v6;
    if (!v68)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      return 1;
    }
  }

  v70 = v16;
  v71 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = sub_75AA10();
  if (v29 >> 62)
  {
    v30 = sub_76A860();
  }

  else
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
  }

  v31 = v71;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v70))
  {
    v50 = &v31[v33];
    v51 = v70;
    (*(v28 + 16))(v27, v50, v70);
    sub_75B470();
    (*(v28 + 8))(v27, v51);
    sub_764C60();
    v31 = v71;
    v53 = v52;

    if (v53)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];
  sub_75D650();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_93C960 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_BD88(&unk_94EC48, qword_793130);
  sub_BE38(v39, qword_99C890);
  v78[0] = v71;
  v40 = v71;
  sub_7592B0();

  if (sub_7605D0())
  {
    sub_75D650();
    Width = CGRectGetWidth(v81);
    sub_75D650();
    Height = CGRectGetHeight(v82) - v2;
  }

  else
  {
    sub_760610();
    v43 = v79;
    sub_B170(v78, v79);
    v44 = v72;
    sub_33964(v43);
    sub_766700();
    v46 = v45;
    (*(v73 + 8))(v44, v7);
    sub_BEB8(v78);
    sub_75D650();
    Width = CGRectGetWidth(v83) - (v1 + v46);
    sub_75D650();
    Height = CGRectGetHeight(v84);
  }

  v47 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
  v48 = [v47 text];
  if (v48)
  {
    v49 = v48;
    ObjectType = sub_769240();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_93C958 != -1)
  {
    swift_once();
  }

  v54 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v54, qword_94EB30);
  v78[0] = v40;
  v55 = v40;
  sub_7592B0();

  [v47 numberOfLines];
  v56 = sub_7653B0();
  v79 = v56;
  v80 = sub_2F2A50(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v57 = sub_B1B4(v78);
  (*(*(v56 - 8) + 104))(v57, enum case for Feature.measurement_with_labelplaceholder(_:), v56);
  sub_765C30();
  sub_BEB8(v78);
  sub_762CB0();
  v59 = v58;

  (*(v75 + 8))(v26, v23);
  [v47 sizeThatFits:{Width, Height}];
  v61 = v60;

  (*(v74 + 8))(v76, v24);
  return floor(v61 - v59) > 0.0;
}

void sub_2F0ABC()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = sub_76A860();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_BD88(&unk_94EC30, &qword_793118);
      sub_767450();
      swift_endAccess();
      sub_5203C4(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      sub_769440();
      if (*(&dword_10 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      ++v4;
      sub_769500();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_2F0D1C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_2F0D68(double a1)
{
  if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems];
    if (v5 >> 62)
    {
      result = sub_76A860();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = v1;

          sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v7 = v1;
        }

        sub_75A9B0();
        v9 = v8;

        if (v9)
        {
          v3 = sub_769210();
        }

        else
        {
          v3 = 0;
        }

        v1 = v7;
        goto LABEL_14;
      }
    }

    v3 = 0;
LABEL_14:
    [v4 setText:v3];
    goto LABEL_15;
  }

  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_summaryLabel];

  v3 = sub_769210();

  [v2 setText:v3];
LABEL_15:

  return [v1 setNeedsLayout];
}

void sub_2F0EF0()
{
  v1 = sub_BD88(&unk_950960, &qword_793110);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, sub_75B470(), (*(v2 + 8))(v4, v1), sub_764C60(), v11 = v10, , v11))
  {
    sub_75BB20();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_75BA70();

    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v13 = v12;
    v14 = sub_76A0F0();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = sub_76A000();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_2F1260(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = sub_7699F0();

  if (!a1 || (sub_7699F0() & 1) != (v4 & 1))
  {
    sub_2EF4C8();
  }
}

double *sub_2F13CC()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8)); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = sub_76A770();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_BD88(&unk_94EC60, &unk_786EF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77DC20;
      *(inited + 32) = sub_75A9C0();
      *(inited + 40) = v8;
      *(inited + 48) = sub_75A9B0();
      *(inited + 56) = v9;
      *(inited + 64) = sub_75AA00();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = sub_75AA10();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_76A860();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_76A770();
          }

          else
          {
          }

          v14 = sub_75A9D0();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_7C180((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = sub_75A9E0();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_7C180((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_7B5CC(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_7B5CC((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[2 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_BD88(&unk_947FF0, &unk_7801F0);
      sub_16194(&qword_94EC70, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
      v38 = sub_7691A0();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_7B5CC(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_7B5CC((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[2 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = sub_76A860();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell(uint64_t a1)
{
  result = qword_94EBF0;
  if (!qword_94EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F1AB4(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_2F1BFC(319);
    if (v2 <= 0x3F)
    {
      sub_2F1CA0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2F1BFC(uint64_t a1)
{
  if (!qword_94EC08)
  {
    sub_133D8(&qword_94EC10, &qword_7930D8);
    sub_16194(&qword_94EC18, &qword_94EC10, &qword_7930D8, &protocol conformance descriptor for ViewRecycler<A>);
    v1 = sub_767490();
    if (!v2)
    {
      atomic_store(v1, &qword_94EC08);
    }
  }
}

void sub_2F1CA0(uint64_t a1)
{
  if (!qword_94EC20)
  {
    sub_133D8(&unk_950960, &qword_793110);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_94EC20);
    }
  }
}

double *sub_2F1D04(char *a1, int a2, void *a3, __n128 a4, double a5)
{
  v78 = a2;
  v7 = sub_760640();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_760620();
  v88 = *(v80 - 8);
  __chkstk_darwin(v80);
  v86 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v70 - v11;
  v85 = sub_762D10();
  v89 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93C958 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = sub_BD88(&qword_94E610, &qword_792B38);
    sub_BE38(v18, qword_94EB30);
    v108[0] = a3;
    sub_7592B0();
    v81 = a3;
    v19 = [a3 traitCollection];
    v20 = sub_769E10();

    (*(v15 + 8))(v17, v14);
    sub_7589E0();
    v21 = sub_7653B0();
    v108[3] = v21;
    v84 = sub_2F2A50(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v108[4] = v84;
    v22 = sub_B1B4(v108);
    v90 = a1;
    v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v24 = *(v21 - 8);
    v25 = *(v24 + 104);
    v26 = v24 + 104;
    v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    v93 = v20;
    sub_765C30();
    sub_BEB8(v108);
    sub_762D00();
    sub_762CE0();
    v27 = v89 + 8;
    v28 = *(v89 + 8);
    v29 = v85;
    v28(v13, v85);
    sub_7589F0();
    v92 = v30;
    v107[3] = v21;
    v107[4] = v84;
    v31 = sub_B1B4(v107);
    v75 = v23;
    v32 = v23;
    v33 = v21;
    v73 = v26;
    v74 = v25;
    v25(v31, v32, v21);
    v34 = v93;
    v17 = sub_765C30();
    sub_BEB8(v107);
    sub_762D00();
    sub_762CE0();
    v72 = v28;
    v28(v13, v29);
    v35 = sub_7589D0();
    v36 = v35;
    v15 = v35 >> 62;
    v37 = v35 >> 62 ? sub_76A860() : *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    v89 = v27;
    v76 = v33;
    v77 = v13;
    if (!v37)
    {
      break;
    }

    *&v101 = _swiftEmptyArrayStorage;
    result = sub_1439B8(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v101;
    v71 = v34;
    v92 = v37;
    v91 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v15)
    {
      v39 = sub_76A860();
    }

    else
    {
      v39 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
    }

    v14 = v36;
    v93 = (v36 & 0xC000000000000001);
    v43 = _s8ItemViewCMa();
    a1 = 0;
    v13 = (v39 & ~(v39 >> 63));
    while (v13 != a1)
    {
      if (v93)
      {
        v44 = sub_76A770();
      }

      else
      {
        if (a1 >= *(v91 + 16))
        {
          goto LABEL_30;
        }

        v44 = *(v14 + 8 * a1 + 32);
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v44;
      v46 = sub_7670D0();
      swift_allocObject();

      v47 = sub_767090();
      *(&v105 + 1) = v46;
      v106 = &protocol witness table for LayoutViewPlaceholder;

      *&v104 = v47;
      *&v101 = a3;
      v49 = a3[2];
      v48 = a3[3];
      if (v49 >= v48 >> 1)
      {
        sub_1439B8((v48 > 1), v49 + 1, 1);
      }

      ++a1;
      v50 = *(&v105 + 1);
      v15 = v106;
      v51 = sub_10974(&v104, *(&v105 + 1));
      v52 = __chkstk_darwin(v51);
      v17 = &v70 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v17, v52);
      sub_146570(v49, v17, &v101, v50, v15);
      sub_BEB8(&v104);
      a3 = v101;
      if (v92 == a1)
      {

        v41 = v82;
        v40 = v83;
        v42 = v81;
        v34 = v71;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v41 = v82;
  v40 = v83;
  v42 = v81;
LABEL_20:
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  if (sub_7589B0())
  {
    sub_764C60();
    v56 = v55;

    if (v56)
    {
      v57 = v76;
      *(&v102 + 1) = v76;
      v103 = v84;
      v58 = sub_B1B4(&v101);
      v74(v58, v75, v57);
      v59 = v34;
      sub_765C30();
      sub_BEB8(&v101);
      v60 = v77;
      sub_762D00();
      sub_762CE0();
      v72(v60, v85);
      sub_10A2C(&v104, &qword_9417D0, &unk_780EA0);
      v104 = v101;
      v105 = v102;
      v106 = v103;
    }
  }

  if (qword_93C960 != -1)
  {
    swift_once();
  }

  v61 = sub_BD88(&unk_94EC48, qword_793130);
  sub_BE38(v61, qword_99C890);
  *&v101 = v42;
  v62 = v87;
  sub_7592B0();
  sub_7605F0();
  v63 = [v42 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_769D60();
  sub_760600();
  v64 = v80;
  (*(v88 + 16))(v86, v62, v80);
  sub_134D8(v108, &v101);
  sub_134D8(v107, &v100);
  sub_1ED18(&v104, &v94, &qword_9417D0, &unk_780EA0);
  v65 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v66 = v96;
    v67 = sub_B170(&v94, *(&v95 + 1));
    *(&v98 + 1) = v65;
    v99 = *(v66 + 8);
    v68 = sub_B1B4(&v97);
    (*(*(v65 - 8) + 16))(v68, v67, v65);
    sub_BEB8(&v94);
  }

  else
  {
    sub_10A2C(&v94, &qword_9417D0, &unk_780EA0);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v69 = v79;
  sub_760630();
  sub_2F2A50(&qword_94EC58, &type metadata accessor for ProductAnnotationLayout, &protocol conformance descriptor for ProductAnnotationLayout);
  sub_7665A0();

  (*(v41 + 8))(v69, v40);
  (*(v88 + 8))(v87, v64);
  sub_10A2C(&v104, &qword_9417D0, &unk_780EA0);
  sub_BEB8(v107);
  return sub_BEB8(v108);
}

void sub_2F28AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_76A860();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_BD88(&unk_94EC30, &qword_793118);
      sub_767470();
      swift_endAccess();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2F2A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F2A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2F2A98()
{
  v1 = sub_BD88(&qword_94EC10, &qword_7930D8);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  sub_7667C0();
  sub_16194(&qword_94EC18, &qword_94EC10, &qword_7930D8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_767480();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  v7 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_76A840();
  __break(1u);
}

uint64_t sub_2F2CC4()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_BD88(&unk_950960, &qword_793110);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_1ED18(v0 + v11, v6, &qword_94EC40, &unk_793120);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_94EC40;
    v13 = &unk_793120;
    v14 = v6;
    return sub_10A2C(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75B460();
  v15 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_93F980;
    v13 = &qword_77EDA0;
    v14 = v3;
    return sub_10A2C(v14, v12, v13);
  }

  sub_75B470();
  v18 = sub_75B460();
  sub_32A6C0(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

uint64_t sub_2F2FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = sub_75FDA0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell(uint64_t a1)
{
  result = qword_94ECA0;
  if (!qword_94ECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v20 = sub_663E34(v34, v19);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    sub_1EB60(v34);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = v17;
    v23 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
    v24 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    (*(v7 + 32))(v22 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v22 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_objectGraph) = v32;

    v25 = v30;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v29(v25, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_459CD8(v22, v34, isUniquelyReferenced_nonNull_native, v27);
    *(v4 + 16) = v33;
    swift_endAccess();
    sub_1EB60(v34);
    return v22;
  }

  v22 = *(*(v18 + 56) + 8 * v20);

  sub_1EB60(v34);

  return v22;
}

uint64_t sub_2F354C()
{

  return swift_deallocClassInstance();
}

double sub_2F35F8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B610();
  sub_2F37F4(&qword_949660, &type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  sub_75C750();
  v4 = v11;
  if (!v11)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v1 + 8))(v3, v0);
  v5 = sub_527DE4();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v11 = sub_4DBE18(v4, v5, v6);
  sub_7670D0();
  sub_7665A0();
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_2F37F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2F3840(uint64_t a1)
{
  v2 = ASKDeviceTypeGetCurrent();
  v3 = sub_769240();
  v5 = v4;
  if (v3 == sub_769240() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_76A950();

    if ((v8 & 1) == 0 && (sub_769A00() & 1) == 0)
    {
      if (*(*(v1 + 88) + 16))
      {
        sub_663D5C(*(*(v1 + 96) + 16));
      }
    }
  }
}

void sub_2F399C(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v102 = sub_76A920();
  v13 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10CF28(_swiftEmptyArrayStorage);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  Width = CGRectGetWidth(v108);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v105 = *(v6 + 16);
  v103 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v103 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_BD88(&qword_94ED88, &unk_7932B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_77B6D0;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_BD88(&unk_9418A0, &qword_780FF0);
    v23 = sub_7694A0();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v25 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v25;
      a2[2] = v26;
      a2[3] = v27;
      a2[4] = v28;
      return;
    }
  }

  v29 = *(v23 + 32);
  v89 = v23 + 32;
  v30 = *(v29 + 16);
  if (v17 < v30)
  {
    v30 = v17;
  }

  v31 = v18 * v30;
  v95 = v30;
  v32 = v30 + -1.0;
  v104 = a6;
  v99 = a3;
  if (v32 >= 0.0)
  {
    v33 = v31 + v105 * v32;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v110.origin.x = a3;
    v110.origin.y = a4;
    v110.size.width = a5;
    v110.size.height = a6;
    v37 = CGRectGetWidth(v110);
    v100 = v33;
    v38 = (v37 - v33) * 0.5;
    v111.origin.x = a3;
    v34 = a4;
    v111.origin.y = a4;
    v35 = a5;
    v111.size.width = a5;
    v111.size.height = a6;
    MinX = CGRectGetMinX(v111) + v38;
    goto LABEL_20;
  }

  v33 = v105 * 0.0 + v31;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v100 = v33;
  v109.origin.x = a3;
  v34 = a4;
  v109.origin.y = a4;
  v35 = a5;
  v109.size.width = a5;
  v109.size.height = a6;
  MinX = CGRectGetMinX(v109);
LABEL_20:
  v96 = 0.0;
  if (a1)
  {
    v39 = MinX;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = v103;
  if (v103 >= v24)
  {
    v40 = v24;
  }

  v41 = v19 * v40 + v105 * (v24 - 1);
  v42 = 0.0;
  if (a1)
  {
    v43 = v99;
    v112.origin.x = v99;
    v112.origin.y = v34;
    v112.size.width = v35;
    v44 = v104;
    v112.size.height = v104;
    v98 = (CGRectGetHeight(v112) - v41) * 0.5;
    v113.origin.x = v43;
    v113.origin.y = v34;
    v113.size.width = v35;
    v113.size.height = v44;
    v42 = CGRectGetMinY(v113) + v98;
  }

  v86 = a2;
  v88 = *(v23 + 16);
  if (!v88)
  {
    v93 = 0.0;
    v92 = 0.0;
    v94 = 0.0;
LABEL_64:

    a2 = v86;
    v28 = v96;
    v25 = v94;
    v27 = v93;
    v26 = v92;
    goto LABEL_65;
  }

  v45 = 0;
  LODWORD(v99) = enum case for FloatingPointRoundingRule.down(_:);
  v46 = (v13 + 104);
  v47 = (v13 + 8);
  v48 = 0.0;
  v91 = v95;
  v94 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  v96 = 0.0;
  v87 = v23;
LABEL_30:
  if (*&v48 < *(v23 + 16))
  {
    v49 = *(v89 + 8 * *&v48);
    *&v90 = *&v48 + 1;
    v50 = *(*&v49 + 16);
    v97 = *&v49 + 32;
    v98 = v49;

    v51 = 0;
    v104 = v48;
    while (1)
    {
      v52 = 0uLL;
      v53 = v50;
      v54 = 0uLL;
      v55 = 0uLL;
      if (v51 != v50)
      {
        if (v51 >= *(*&v98 + 16))
        {
          goto LABEL_68;
        }

        v53 = v51 + 1;
        *&v106[0] = v51;
        sub_134D8(v97 + 40 * v51, v106 + 8);
        v52 = v106[0];
        v54 = v106[1];
        v55 = v106[2];
      }

      v107[0] = v52;
      v107[1] = v54;
      v107[2] = v55;
      if (!v55)
      {

        v48 = v90;
        v23 = v87;
        if (*&v90 == v88)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v56 = v52;
      v57 = v101;
      v58 = v102;
      (*v46)(v101, LODWORD(v99), v102);
      sub_769F80();
      v60 = v59;
      v62 = v61;
      (*v47)(v57, v58);
      v114.origin.x = v60;
      v114.origin.y = v62;
      v114.size.width = v18;
      v114.size.height = v19;
      v119.origin.x = v39;
      v119.origin.y = v42;
      v119.size.width = v100;
      v119.size.height = v41;
      v63 = CGRectIntersectsRect(v114, v119);
      v64 = 0;
      if (*&v48 < v103 && v63)
      {
        if (v95 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v95 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v56 >= v91)
        {
          v64 = 0;
        }

        else
        {
          v115.origin.x = v60;
          v115.origin.y = v62;
          v115.size.width = v18;
          v115.size.height = v19;
          v65 = CGRectGetMinX(v115);
          v66 = v94;
          if (v65 < v94)
          {
            v66 = v65;
          }

          v94 = v66;
          v116.origin.x = v60;
          v116.origin.y = v62;
          v116.size.width = v18;
          v116.size.height = v19;
          MinY = CGRectGetMinY(v116);
          v68 = v92;
          if (MinY < v92)
          {
            v68 = MinY;
          }

          v92 = v68;
          v117.origin.x = v60;
          v117.origin.y = v62;
          v117.size.width = v18;
          v117.size.height = v19;
          MaxX = CGRectGetMaxX(v117);
          v70 = v93;
          if (v93 <= MaxX)
          {
            v70 = MaxX;
          }

          v93 = v70;
          v118.origin.x = v60;
          v118.origin.y = v62;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxY = CGRectGetMaxY(v118);
          v72 = v96;
          if (v96 <= MaxY)
          {
            v72 = MaxY;
          }

          v96 = v72;
          v64 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v15;
      v74 = sub_663D5C(v45);
      v76 = v15[2];
      v77 = (v75 & 1) == 0;
      v22 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v22)
      {
        __break(1u);
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

      v79 = v75;
      if (v15[3] < v78)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v82 = v74;
      sub_45AEA8();
      v74 = v82;
      v15 = *&v106[0];
      if (v79)
      {
LABEL_57:
        v81 = v15[7] + 40 * v74;
        *v81 = v60;
        *(v81 + 8) = v62;
        *(v81 + 16) = v18;
        *(v81 + 24) = v19;
        *(v81 + 32) = v64;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v74 >> 6) + 8] |= 1 << v74;
      *(v15[6] + 8 * v74) = v45;
      v83 = v15[7] + 40 * v74;
      *v83 = v60;
      *(v83 + 8) = v62;
      *(v83 + 16) = v18;
      *(v83 + 24) = v19;
      *(v83 + 32) = v64;
      v84 = v15[2];
      v22 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v85;
LABEL_61:
      v48 = v104;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_67;
      }

      sub_BEB8(v107 + 1);
      ++v45;
      v51 = v53;
    }

    sub_45447C(v78, isUniquelyReferenced_nonNull_native);
    v74 = sub_663D5C(v45);
    if ((v79 & 1) != (v80 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v106[0];
    if (v79)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  sub_76A9B0();
  __break(1u);
}

void sub_2F422C(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_10CF28(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_76A950();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_134D8(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_663D5C(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_45447C(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_663D5C(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_45AEA8();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_BEB8(v70 + 1);
    v42 = v48;
  }

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
  sub_76A9B0();
  __break(1u);
}

void sub_2F4694(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = [a1 traitCollection];
  sub_2F3840(v8);

  sub_769D10();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a1 traitCollection];
  LOBYTE(v8) = sub_769A00();

  if (v8)
  {
    sub_2F399C(1, v35, v10, v12, v14, v16);
  }

  else
  {
    sub_2F422C(1, v35, v10, v12, v14, v16);
  }

  v18 = 0;
  v27 = v35[4];
  v28 = v35[3];
  v19 = v35[0];
  v20 = *(v6 + 96);
  v21 = *(v20 + 16);
  v29 = v20 + 32;
  while (1)
  {
    v22 = 0uLL;
    v23 = v21;
    v24 = 0uLL;
    v25 = 0uLL;
    if (v18 == v21)
    {
      goto LABEL_10;
    }

    if (v18 >= v21)
    {
      break;
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_17;
    }

    *&v31 = v18;
    sub_134D8(v29 + 40 * v18, &v31 + 8);
    v22 = v31;
    v24 = v32;
    v25 = v33;
LABEL_10:
    v34[0] = v22;
    v34[1] = v24;
    v34[2] = v25;
    if (!v25)
    {

      sub_769D50();
      sub_7664B0();
      return;
    }

    v30 = v22;
    sub_10914((v34 + 8), &v31);
    sub_B170(&v31, *(&v32 + 1));
    v26 = [a1 traitCollection];
    if (*(*&v19 + 16))
    {
      sub_663D5C(v30);
    }

    sub_769CA0();

    sub_766530();
    sub_B170(&v31, *(&v32 + 1));
    if (*(*&v19 + 16))
    {
      sub_663D5C(v30);
    }

    sub_766550();
    sub_BEB8(&v31);
    v18 = v23;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_2F4A24(void *a1, double a2, double a3)
{
  v7 = v3[5];
  v10[4] = v3[4];
  v11[0] = v7;
  *(v11 + 10) = *(v3 + 90);
  v8 = v3[1];
  v10[0] = *v3;
  v10[1] = v8;
  v9 = v3[3];
  v10[2] = v3[2];
  v10[3] = v9;
  swift_getObjectType();
  sub_2F4AE4(a1, v10, a2, a3);
}

uint64_t sub_2F4A98@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2F4E74(v9, &v8);
}

void sub_2F4AE4(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = [a1 traitCollection];
  sub_2F3840(v6);

  sub_769DA0();
  v8 = v7;
  v10 = v9;
  v11 = [a1 traitCollection];
  LOBYTE(v6) = sub_769A00();

  if (v6)
  {
    sub_2F399C(0, v14, 0.0, 0.0, v8, v10);
  }

  else
  {
    sub_2F422C(0, v14, 0.0, 0.0, v8, v10);
  }

  sub_2F4CC4(v14);
  sub_769DC0();
  v12 = [a1 traitCollection];
  v13 = v12;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_769A00();
  }

  else
  {
  }
}

uint64_t sub_2F4CF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2F4D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2F4D94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2F4DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F4E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2F4EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F4EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2F4F5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760370();
  __chkstk_darwin(v9 - 8);
  v10 = sub_7603D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7602F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_760360();
  sub_760300();
  v21 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView]];
  sub_BD88(&qword_9477F0, qword_780200);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77B6D0;
  *(v30 + 32) = sub_767B80();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F20();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_2F53FC@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v3 = sub_766950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_766880();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766850();
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_766930();
  v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView];
  v26 = type metadata accessor for CarouselItemModuleHeaderView(0);
  v27 = sub_2F67DC(&qword_957980, type metadata accessor for CarouselItemModuleHeaderView, &unk_7AF460);
  v25[0] = v15;
  v16 = v15;
  sub_766940();
  v17 = *(v4 + 8);
  v17(v6, v3);
  sub_BEB8(v25);
  v18 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView];
  v24[3] = type metadata accessor for CarouselItemModuleLockupView();
  v24[4] = sub_2F67DC(&unk_94EDF0, type metadata accessor for CarouselItemModuleLockupView, &unk_78FF30);
  v24[0] = v18;
  v26 = v3;
  v27 = &protocol witness table for VerticalStack;
  sub_B1B4(v25);
  v19 = v18;
  sub_766940();
  v17(v9, v3);
  sub_BEB8(v24);
  v20 = v23;
  v23[3] = v10;
  v20[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v20);
  sub_766870();
  (*(v11 + 8))(v13, v10);
  return sub_BEB8(v25);
}

uint64_t sub_2F5834()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_766970();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_7667F0();
}

uint64_t sub_2F5928(uint64_t a1, uint64_t a2)
{
  v3 = sub_7603D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_760390();
  (*(v8 + 8))(v10, v7);
  sub_7603B0();
  (*(v4 + 8))(v6, v3);
  return sub_7668E0();
}

id sub_2F5C60(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7603F0();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 40))(&v4[v11], v10, v7);
  swift_endAccess();
  sub_285158(a1, a2);
  sub_7603F0();
  v12 = sub_760450();
  v14 = v13;
  v15 = sub_760410();
  sub_703558(v10, v12, v14, v15, v16);

  (*(v8 + 8))(v10, v7);
  return [v4 setNeedsLayout];
}

void sub_2F5E10()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_765240();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView);
  if (sub_760440())
  {
    v7 = sub_764F20();

    if (v7)
    {
      sub_765250();
      sub_765210();
      (*(v3 + 8))(v5, v2);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v8 = sub_75CF00();
      sub_BE38(v8, qword_99B898);
      sub_75CDD0();
      sub_765330();
      v9 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v10 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_759210();
      sub_2F67DC(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v12 = v11;
      sub_75A050();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay(uint64_t a1)
{
  result = qword_94EDD8;
  if (!qword_94EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F61FC(uint64_t a1, __n128 a2)
{
  result = sub_7603E0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2F62A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_F704(a1, a2);
}

void sub_2F6360()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_2F67DC(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_75A0C0();
}

void sub_2F6430()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_2F66C4(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v4 = sub_769640();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_76A630();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_2F679C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F67DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2F6824(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_757640();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_32CB94(a3);
    v25 = &unk_99C000;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController(0);
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = sub_769460();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = sub_757550().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &unk_99C000;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &unk_99C000;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &unk_99C000;
LABEL_33:
        v57 = *(v3 + v25[287]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              sub_757590();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_2F8C4C(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_127C68(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_2F6F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_127C1C(), v6 = v5, sub_BD88(&qword_94EE70, qword_791980), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10A2C(&v47, &qword_94DAB0, &qword_791970);
    goto LABEL_8;
  }

  v8 = v49;
  sub_B170(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_BEB8(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_127C1C(), v13 = v12, sub_BD88(&qword_94EE70, qword_791980), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_B170(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_BEB8(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10A2C(&v39, &qword_94DAB0, &qword_791970);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_127C1C(), v28 = v27, sub_BD88(&qword_94EE70, qword_791980), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_B170(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_BEB8(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10A2C(&v39, &qword_94DAB0, &qword_791970);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_127C1C();
  v34 = v33;
  sub_BD88(&qword_94EE70, qword_791980);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_B170(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_BEB8(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10A2C(&v39, &qword_94DAB0, &qword_791970);
}

void sub_2F744C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_127C1C(), v5 = v4, sub_BD88(&qword_94EE70, qword_791980), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_B170(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_BEB8(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10A2C(&v32, &qword_94DAB0, &qword_791970);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_2F763C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_2F7770(void *a1)
{
  v3 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_E5A10(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10A2C(v5, &unk_94EE60, qword_7841A0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = sub_757550().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_127C1C();
  v21 = v18;
  sub_BD88(&qword_94EE70, qword_791980);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_B170(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_BEB8(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_B170(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_BEB8(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_B170(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_BEB8(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_B170(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_BEB8(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10A2C(&v120, &qword_94DAB0, &qword_791970);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_7BB70(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_7BB70((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[3 * v95];
  *(v96 + 4) = sub_2F8C14;
  *(v96 + 5) = v88;
  *(v96 + 48) = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_7BB70(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_7BB70((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[3 * v102];
  *(v103 + 4) = sub_2F8C1C;
  *(v103 + 5) = v97;
  *(v103 + 48) = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_7BB70(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_7BB70((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[3 * v109];
  *(v110 + 4) = sub_2F8C24;
  *(v110 + 5) = v104;
  *(v110 + 48) = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}

void sub_2F81E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_2F8C2C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_23F0CC;
  v8[3] = &unk_88CE30;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_2F82D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_2F8388(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC18ASMessagesProvider44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_134D8(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_B170(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_BEB8(v9);
        return;
      }
    }
  }
}

void sub_2F849C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_127C1C();
  v11 = v10;
  sub_BD88(&qword_94EE70, qword_791980);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10A2C(&v44, &qword_94DAB0, &qword_791970);
    goto LABEL_15;
  }

  v13 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_BEB8(&v44);
  v15 = *(a3 + v9);
  if (!v15)
  {

LABEL_13:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  v43 = *(a3 + v9);
  v16 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_25;
  }

  v17 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_25:

    goto LABEL_14;
  }

  v42 = v14;
  v18 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_BEB8(&v44);
  [v22 addSubview:v21];
  v23 = *(a3 + v9);
  if (!v23)
  {

    goto LABEL_13;
  }

  v43 = *(a3 + v9);
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_28;
  }

  v25 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_28:

    goto LABEL_14;
  }

  v26 = v46;
  sub_B170(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_BEB8(&v44);
LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong collectionView];

    if (v30)
    {
      v31 = [v30 indexPathsForSelectedItems];
      if (v31)
      {
        v32 = v31;
        v33 = sub_769460();

        v34 = *(v33 + 16);
        if (v34)
        {
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v35 = v37;
          v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
          v42 = v33;
          v39 = v33 + v38;
          v40 = *(v36 + 56);
          do
          {
            v35(v8, v39, v5);
            isa = sub_757550().super.isa;
            (*(v36 - 8))(v8, v5);
            [v30 deselectItemAtIndexPath:isa animated:{0, v42}];

            v39 += v40;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

id sub_2F8910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate(uint64_t a1)
{
  result = qword_94EE48;
  if (!qword_94EE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F8A38(uint64_t a1, uint64_t a2)
{
  sub_127A0C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_2F8AE8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = sub_757640();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0);
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_2F8BDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_2F8C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2F8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94EE60, qword_7841A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2F8CBC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v2)
  {
    v29 = 0.0;
    v28 = 1;
    v4 = 0.0;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = 0.0;
  if (!Strong)
  {
LABEL_10:
    v28 = 1;
    v29 = 0.0;
    v30 = *&v0[v1];
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_15;
  }

  v5 = Strong;
  sub_127C1C();
  v6 = v2;
  sub_BD88(&qword_94EE70, qword_791980);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v7 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
LABEL_9:

    sub_10A2C(&v64, &qword_94DAB0, &qword_791970);
    goto LABEL_10;
  }

  v8 = v66;
  sub_B170(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_BEB8(&v64);
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v6 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  [v9 bounds];
  [v9 convertRect:v6 toCoordinateSpace:?];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v4 = v20 + CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);

  v28 = 0;
  v29 = v22 + MidY;
  v30 = *&v0[v1];
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_127C1C();
  v31 = v30;
  sub_BD88(&qword_94EE70, qword_791980);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_B170(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_BEB8(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10A2C(&v64, &qword_94DAB0, &qword_791970);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_7BB70(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_7BB70((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[3 * v46];
  *(v47 + 4) = sub_2F92D4;
  *(v47 + 5) = v40;
  *(v47 + 48) = 0;
  *&v39[v41] = v42;
  swift_endAccess();

  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  swift_beginAccess();
  v49 = *&v39[v41];
  v50 = v43;

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v49;
  if ((v51 & 1) == 0)
  {
    v49 = sub_7BB70(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_7BB70((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[3 * v53];
  *(v54 + 4) = sub_2F92DC;
  *(v54 + 5) = v48;
  *(v54 + 48) = 1;
  *&v39[v41] = v49;
  swift_endAccess();

  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  swift_beginAccess();
  v56 = *&v39[v41];
  v57 = v50;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v56;
  if ((v58 & 1) == 0)
  {
    v56 = sub_7BB70(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_7BB70((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[3 * v60];
  *(v61 + 4) = sub_2F92E4;
  *(v61 + 5) = v55;
  *(v61 + 48) = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId;
  v4 = sub_764CF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_2F93D8(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2F9664;
}

void sub_2F9664(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = sub_764CF0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_757A90();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = sub_758330();
  v25 = &v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  sub_757D70();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    sub_7581F0();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  sub_757D50();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_2F9D8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2F9DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_7580D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758220();
  if ((*(v4 + 88))(v6, v3) == enum case for LegacyAppState.purchased(_:))
  {
    (*(v4 + 96))(v6, v3);
    v7 = sub_759E00();
    (*(*(v7 - 8) + 8))(v6, v7);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_2F93D8(0);
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2F9F60(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_757A90();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_757D70();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(v9, v12, v6);
    v13 = (*(v7 + 88))(v9, v6);
    v15 = v13 == enum case for InAppPurchaseState.buyable(_:) || v13 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v13 == enum case for InAppPurchaseState.unknown(_:);
    v16 = v15;
    if (!v15)
    {
      (*(v7 + 8))(v9, v6);
    }

    sub_2F93D8(v16);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2FA144()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2FA204(uint64_t a1)
{
  v3 = *(sub_764CF0() - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);

  return sub_2F9F60(v4, a1, v1 + v5, v9, v10, v11);
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  sub_7576E0();
  if (sub_7576C0())
  {
    sub_757D60();
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_iapAdamId;
  v3 = sub_764CF0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_13238(v1 + OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

void sub_2FA414(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for SubscriptionLockupPresenter(uint64_t a1)
{
  result = qword_94EEA8;
  if (!qword_94EEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FA4E8(uint64_t a1)
{
  result = sub_764CF0();
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

void *sub_2FA594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_BD88(&unk_944E70, &unk_784960);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  sub_759D00();
  sub_2FA840();
  result = sub_75C750();
  if (v10[1])
  {
    sub_768900();
    sub_768820();
    v8 = sub_BD88(&unk_944E80, &unk_799630);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_2FA898(v6, v3 + v9);
    swift_endAccess();
    sub_3B4D34();

    return sub_2FA908(v6);
  }

  return result;
}

uint64_t sub_2FA718@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_2FA774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_2FA840()
{
  result = qword_9513B0;
  if (!qword_9513B0)
  {
    sub_759D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9513B0);
  }

  return result;
}

uint64_t sub_2FA898(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944E70, &unk_784960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FA908(uint64_t a1)
{
  v2 = sub_BD88(&unk_944E70, &unk_784960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2FA970(uint64_t a1)
{
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_BD88(&qword_94EFA8, &qword_7936B8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel];
  sub_75BA30();
  v24 = *(v10 + 56);
  sub_1E9A94(v23, v12);
  v45 = a1;
  sub_1E9A94(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10A2C(v23, &unk_93E530, &unk_77C5F0);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10A2C(v12, &unk_93E530, &unk_77C5F0);
      return sub_10A2C(v45, &unk_93E530, &unk_77C5F0);
    }
  }

  else
  {
    sub_1E9A94(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_2FC64C(&qword_94EFB0, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v39 = sub_7691C0();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10A2C(v23, &unk_93E530, &unk_77C5F0);
      v37(v20, v3);
      sub_10A2C(v12, &unk_93E530, &unk_77C5F0);
      if (v39)
      {
        return sub_10A2C(v45, &unk_93E530, &unk_77C5F0);
      }

      goto LABEL_7;
    }

    sub_10A2C(v23, &unk_93E530, &unk_77C5F0);
    (*(v44 + 8))(v20, v3);
  }

  sub_10A2C(v12, &qword_94EFA8, &qword_7936B8);
LABEL_7:
  v26 = v45;
  sub_1E9A94(v45, v17);
  sub_75BA40();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_1E9A94(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10A2C(v30, &unk_93E530, &unk_77C5F0);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_26F08();
    v33 = sub_769E10();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10A2C(v45, &unk_93E530, &unk_77C5F0);
}

char *sub_2FAED0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = sub_7666D0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(sub_75BB20());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel] = sub_75BB10();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_2FB324()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D2A4(&v1[v10], v12);
  sub_2FB4BC(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_16D35C(v12);
  sub_B170(v13, v13[3]);
  sub_75D650();
  sub_7672C0();
  (*(v4 + 8))(v7, v3);
  return sub_BEB8(v13);
}

uint64_t sub_2FB4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = sub_761400();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_761410();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_7613E0();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_761450();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_761440();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_761430();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_761470();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  sub_761420();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  sub_7613F0();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  sub_761460();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_BEB8(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_BD88(&qword_94EF88, "J\b");
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  sub_761420();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  sub_7613F0();
  v82(v61, v60);
  v63 = v98;
  sub_761460();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_BEB8(v120);
  sub_BEB8(&v121);
  sub_BD88(&qword_94EF90, "^\b");
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_77E280;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = sub_761490();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_2FC64C(&qword_94EF98, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  v74[5] = sub_2FC64C(&qword_94EFA0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  sub_B1B4(v74);
  sub_761480();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

void sub_2FBFF4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v34 = v8;
    v23 = v6;

LABEL_7:
    v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
    sub_75BA30();
    v26 = [v2 traitCollection];
    sub_1E9A94(v15, v11);
    v27 = v23;
    if ((*(v23 + 48))(v11, 1, v5) == 1)
    {

      sub_10A2C(v15, &unk_93E530, &unk_77C5F0);
      v28 = v11;
    }

    else
    {
      v29 = *(v23 + 32);
      v30 = v34;
      v29(v34, v11, v5);
      sub_26F08();
      v31 = sub_769E10();
      v32 = [objc_opt_self() configurationWithFont:v31];
      [v25 setPreferredSymbolConfiguration:v32];

      (*(v27 + 8))(v30, v5);
      v28 = v15;
    }

    sub_10A2C(v28, &unk_93E530, &unk_77C5F0);
    return;
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = sub_769240();
  v21 = v20;
  if (v19 == sub_769240() && v21 == v22)
  {

    return;
  }

  v34 = v8;
  v23 = v6;
  v24 = sub_76A950();

  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

double sub_2FC404(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView);
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D2A4(v3 + v6, v10);
  sub_2FB4BC(v4, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, v11);
  sub_16D35C(v10);
  sub_B170(v11, v11[3]);
  sub_7665A0();
  v8 = v7;
  sub_BEB8(v11);
  return v8;
}

uint64_t sub_2FC64C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2FC694(void *a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_93CA20 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_94F4F0;
  v18.value._rawValue = 0;
  isa = sub_7699C0(v18, v7).super.isa;
  sub_1582B4();
  v10 = sub_769C60();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = sub_759930();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

id sub_2FC8C8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  LODWORD(v5) = a2;
  v53 = a1;
  swift_getObjectType();
  v6 = sub_BD88(&qword_93FAE8, &qword_77EDA8);
  __chkstk_darwin(v6 - 8);
  v54 = &v42 - v7;
  v8 = sub_767030();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v18 = sub_766D70();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel];
  sub_75D650();
  v22 = v21;
  v55[5] = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  sub_7665D0();
  v23 = [v3 traitCollection];
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {

    sub_BEB8(v55);
LABEL_6:
    v24._countAndFlagsBits = 0x525F4F545F504154;
    v24._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v5;
  v43 = "ion";
  v56._object = 0x80000000007C9F90;
  v56._countAndFlagsBits = 0xD000000000000016;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v32 = sub_75B750(v56, v58);
  v44 = v33;
  v45 = v32;
  sub_767020();
  if (qword_93D758 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  sub_BE38(v34, qword_99EE00);
  sub_766FF0();
  v35 = *(v48 + 8);
  v35(v10, v8);
  sub_767010();
  v35(v13, v8);
  sub_767000();
  v35(v16, v8);
  sub_766D50();
  v5 = v46;
  sub_766D90();
  sub_766D60();
  v37 = v36;
  sub_B170(v55, v55[3]);
  sub_7673F0();
  v39 = v38;
  sub_B170(qword_999FA0, qword_999FB8);
  sub_766710();
  v41 = v40;

  (*(v49 + 8))(v5, v50);
  sub_BEB8(v55);
  LOBYTE(v5) = v47;
  if (v22 < v39 + v37 + v41)
  {
    goto LABEL_6;
  }

  v24._object = (v43 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_75B750(v24, v57);
  v25 = v54;
  v26 = sub_769210();

  [v52 setText:v26];

  v27 = sub_765A00();
  if (v27)
  {
    v55[0] = v27;
    sub_758E30();
    sub_768900();
    sub_2FCF50();
    sub_768820();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_BD88(&qword_93FAE0, &qword_77ED78);
  (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_2FCEE0(v25, &v4[v30]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_2FCEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FAE8, &qword_77EDA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2FCF50()
{
  result = qword_94EFB8;
  if (!qword_94EFB8)
  {
    sub_758E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94EFB8);
  }

  return result;
}

double sub_2FCFA8(void *a1, double a2, double a3)
{
  v5 = sub_767030();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v62 - v10;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  __chkstk_darwin(v14);
  v71 = &v62 - v15;
  v16 = sub_766D70();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = &v62 - v20;
  v21 = sub_7670D0();
  swift_allocObject();
  v73 = sub_767090();
  v75[0] = v73;
  v67 = v21;
  sub_7665D0();
  v68 = a1;
  v22 = [a1 traitCollection];
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  v23 = sub_769A00();
  v24 = &qword_93D000;
  v66 = v8;
  v69 = v16;
  v72 = v17;
  if (v23 & 1) != 0 || (v24 = &qword_93D000, (sub_7699D0()))
  {

    sub_BEB8(v76);
LABEL_6:
    v25 = v6;
    v26._countAndFlagsBits = 0x525F4F545F504154;
    v26._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v64 = "ion";
  v81._object = 0x80000000007C9F90;
  v81._countAndFlagsBits = 0xD000000000000016;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_75B750(v81, v85);
  sub_767020();
  if (qword_93D758 != -1)
  {
    swift_once();
  }

  v38 = sub_7666D0();
  sub_BE38(v38, qword_99EE00);
  v39 = v70;
  sub_766FF0();
  v40 = *(v6 + 8);
  v40(v66, v5);
  sub_767010();
  v40(v39, v5);
  sub_767000();
  v40(v13, v5);
  v8 = v66;
  sub_766D50();
  v41 = v65;
  sub_766D90();
  sub_766D60();
  v43 = v42;
  sub_B170(v76, v77);
  sub_7673F0();
  v45 = v44;
  sub_B170(qword_999FA0, qword_999FB8);
  sub_766710();
  v47 = v46;

  (*(v72 + 8))(v41, v69);
  sub_BEB8(v76);
  v24 = &qword_93D000;
  if (v45 + v43 + v47 > a2)
  {
    goto LABEL_6;
  }

  v25 = v6;
  v26._object = (v64 | 0x8000000000000000);
  v26._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v80._countAndFlagsBits = sub_75B750(v26, v83);
  v27 = v13;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_75B750(v80, v84);

  sub_767020();
  if (v24[235] != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  sub_BE38(v28, qword_99EE00);
  v29 = v70;
  sub_766FF0();
  v30 = v8;
  v31 = *(v25 + 8);
  v31(v30, v5);
  v32 = 1;
  sub_767010();
  v31(v29, v5);
  sub_767000();
  v63 = v27;
  v64 = v5;
  v31(v27, v5);
  sub_766D50();
  v33 = v74;
  sub_766D90();
  sub_337B0(qword_999FA0, v76);
  v34 = v69;
  v78[3] = v69;
  v78[4] = &protocol witness table for LabelPlaceholder;
  v35 = sub_B1B4(v78);
  v36 = v72;
  (*(v72 + 16))(v35, v33, v34);
  v75[0] = v73;
  sub_7665D0();
  v37 = [v68 traitCollection];
  if ((sub_769A00() & 1) == 0)
  {
    if (sub_7699D0())
    {
      v32 = 1;
      v36 = v72;
    }

    else
    {
      v82._object = 0x80000000007C9F90;
      v82._countAndFlagsBits = 0xD000000000000016;
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      sub_75B750(v82, v86);
      v48 = v66;
      sub_767020();
      v49 = v70;
      sub_766FF0();
      v50 = v64;
      v31(v48, v64);
      v51 = v63;
      sub_767010();
      v31(v49, v50);
      sub_767000();
      v31(v51, v50);
      sub_766D50();
      v52 = v65;
      sub_766D90();
      sub_766D60();
      v54 = v53;
      sub_B170(v79, v79[3]);
      sub_7673F0();
      v56 = v55;
      sub_B170(v76, v77);
      sub_766710();
      v58 = v57;
      v36 = v72;
      (*(v72 + 8))(v52, v34);
      v32 = v56 + v54 + v58 > a2;
    }
  }

  sub_5AA3E4(v32, v75);
  sub_B170(v75, v75[3]);
  sub_7673F0();
  v60 = v59;

  (*(v36 + 8))(v74, v34);
  sub_BEB8(v75);
  sub_33860(v76);
  return v60;
}

uint64_t sub_2FD90C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void sub_2FD950()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v12 = _swiftEmptyArrayStorage[2];
    if (v12 == 0.0)
    {
LABEL_19:

      return;
    }

LABEL_14:
    v13 = _swiftEmptyArrayStorage[4];
    v14 = *&v12 - 1;
    if (*&v12 != 1)
    {
      v15 = &_swiftEmptyArrayStorage[5];
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (v13 < v16)
        {
          v13 = v17;
        }

        --v14;
      }

      while (v14);
    }

    goto LABEL_19;
  }

  v2 = sub_76A860();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_143C5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 contentOffset];
      v7 = v6;
      [v5 adjustedContentInset];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      *&v12 = *&v11 + 1;
      if (*&v11 >= *&v10 >> 1)
      {
        sub_143C5C((*&v10 > 1uLL), *&v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      _swiftEmptyArrayStorage[*&v11 + 4] = v7 + v9;
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2FDB14()
{

  sub_F704(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2FDB78()
{
  sub_2FD950();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 32);

    v2(v5, v3);

    sub_F704(v2, v4);
  }
}

unint64_t sub_2FDC00()
{
  result = qword_94F068;
  if (!qword_94F068)
  {
    sub_75C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F068);
  }

  return result;
}

uint64_t sub_2FDC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_7687C0();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760280();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v12 = sub_768F90();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_2FE650(v3, v44);
    v16 = swift_allocObject();
    sub_2FE6D8(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_2FE710;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88D0A8;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = sub_75C5F0();
    sub_75C5E0();
    if (sub_75C600())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_BE70(0, &qword_955FA0, UIAction_ptr);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = sub_76A1F0();
      sub_392A30(v20, v27);

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_77D9F0;
      *(v28 + 32) = v20;
      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v29 = v20;
      isa = sub_769450().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    sub_768F60();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_2FE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = sub_7687C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760280();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75C5F0();
  sub_75C5E0();
  if (sub_75C600())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_BE70(0, &qword_955FA0, UIAction_ptr);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = sub_76A1F0();
    sub_392A30(v14, v22);

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_77D9F0;
    *(v23 + 32) = v14;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v24 = v14;
    isa = sub_769450().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  sub_768F60();
  return (*(v7 + 8))(v9, v6);
}

void sub_2FE580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_2FE610()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2FE688(__n128 a1)
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v1, 48, 7);
}

double sub_2FE720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_2FE784(void *a1, double a2, double a3)
{
  v6 = sub_75CF00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75FC00())
  {
    swift_getKeyPath();
    sub_75C7B0();

    v10 = v14;
    v11 = [v14 userInterfaceIdiom];

    if (v11 == &dword_0 + 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_2221DC(v9);
      swift_getObjectType();
      a2 = sub_1FE304(v9, a1, a2, a3);

      (*(v7 + 8))(v9, v6);
    }
  }

  return a2;
}

double sub_2FE964(uint64_t a1)
{
  v3 = sub_762760();
  __chkstk_darwin(v3 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762780();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C840();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = v11;
  v60 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7656C0();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_762D10();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FC20();
  sub_2FF564(&unk_94ABE0, &type metadata accessor for GameCenterReengagement, &protocol conformance descriptor for GameCenterReengagement);
  sub_75C750();
  v16 = v88[0];
  if (!v88[0])
  {
    return 0.0;
  }

  v50 = v1;
  v52 = v5;
  v54 = v7;
  v51 = sub_527DE4();
  v63 = sub_75FBE0();
  v49[1] = v17;
  v18 = sub_26F08();
  v70 = v16;
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v55 = v6;
  v19 = sub_7666D0();
  sub_BE38(v19, qword_99FA48);
  swift_getKeyPath();
  sub_75C7B0();

  v20 = v88[0];
  sub_769E10();

  v21 = sub_7653B0();
  v88[3] = v21;
  v68 = sub_2FF564(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v88[4] = v68;
  v22 = sub_B1B4(v88);
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v69 = a1;
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v65 = v23 + 104;
  v66 = v24;
  v24(v22);
  sub_765C30();
  sub_BEB8(v88);
  sub_762D00();
  sub_762CE0();
  v63 = v18;
  v64 = *(v64 + 8);
  (v64)(v15, v71);
  sub_75FBF0();
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99FA60);
  swift_getKeyPath();
  sub_75C7B0();

  v25 = v87[0];
  sub_769E10();

  v87[3] = v21;
  v87[4] = v68;
  v26 = sub_B1B4(v87);
  v66(v26, v67, v21);
  sub_765C30();
  sub_BEB8(v87);
  sub_762D00();
  sub_762CE0();
  (v64)(v15, v71);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99FA78);
  swift_getKeyPath();
  v27 = v69;
  sub_75C7B0();

  v28 = v86[0];
  sub_769E10();

  v86[3] = v21;
  v86[4] = v68;
  v29 = sub_B1B4(v86);
  v66(v29, v67, v21);
  sub_765C30();
  sub_BEB8(v86);
  sub_762D00();
  sub_762CE0();
  (v64)(v15, v71);
  swift_getKeyPath();
  v30 = v56;
  v31 = v27;
  sub_75C7B0();

  sub_765630();
  (*(v57 + 8))(v30, v58);
  v32 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670A0();
  v35 = v60;
  v34 = v61;
  v36 = v62;
  (*(v61 + 16))(v60, v31, v62);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  (*(v34 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = v50;
  swift_allocObject();

  v40 = sub_767090();
  v41 = swift_unknownObjectRetain();
  sub_48E270(v41, v52);
  swift_unknownObjectRelease();
  v85 = 0;
  *&v83[40] = 0u;
  v84 = 0u;
  sub_134D8(v88, v83);
  sub_134D8(v87, &v82);
  sub_134D8(v86, &v81);
  v79 = v32;
  v80 = &protocol witness table for LayoutViewPlaceholder;
  v71 = v33;
  v78 = v33;
  swift_getKeyPath();

  sub_75C7B0();

  v42 = v75;
  sub_767500();

  swift_allocObject();
  v43 = sub_7670B0();
  v76 = v32;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v43;
  v73 = v32;
  v72 = v40;

  v44 = v53;
  sub_762770();
  swift_getKeyPath();
  sub_75C7B0();

  sub_2FF564(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v45 = v55;
  sub_7665A0();
  v47 = v46;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v54 + 8))(v44, v45);
  sub_BEB8(v86);
  sub_BEB8(v87);
  sub_BEB8(v88);
  return v47;
}

uint64_t sub_2FF3D8()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_2FF4A8(void *a1, double a2, double a3)
{
  sub_75C840();

  return sub_2FE784(a1, a2, a3);
}

uint64_t sub_2FF564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2FF5AC(uint64_t a1)
{
  v1 = sub_764930();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v12 = *(v6 + 8);
  v12(v11, v5);
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == enum case for Shelf.ContentType.annotation(_:))
  {
    v14 = 1;
    return v14 & 1;
  }

  if (v13 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v14 = sub_61BEA4();
    (*(v2 + 8))(v4, v1);
    return v14 & 1;
  }

  result = sub_75C7F0();
  v16 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    v12(v8, v5);
    v17 = *(v18[1] + 16);

    v14 = v16 < v17;
    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2FF874()
{
  sub_BEB8((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_2FF8DC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, __n128 a5, double a6)
{
  v63 = a3;
  v62 = a2;
  v70 = a1;
  v9 = a5.n128_u64[0];
  v68 = sub_75FE00();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_762D10();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75FDA0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = sub_BD88(&qword_94DF10, &qword_7817B8);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  v65 = sub_75FDE0();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = &v57 - v29;
  swift_getObjectType();
  v30.n128_u64[0] = v9;
  sub_3030B0(a4, v30, a6);
  (*(v13 + 56))(v26, 1, 1, v12);
  sub_1ED18(v26, v23, &qword_94DF10, &qword_7817B8);
  v31 = *(v13 + 48);
  if (v31(v23, 1, v12) == 1)
  {
    (*(v6 + 224))();
    if (v31(v23, 1, v12) != 1)
    {
      sub_10A2C(v23, &qword_94DF10, &qword_7817B8);
    }
  }

  else
  {
    (*(v13 + 32))(v20, v23, v12);
  }

  v32 = *(v13 + 16);
  v32(v17, v20, v12);
  v33 = (*(v13 + 88))(v17, v12);
  if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v77);
  }

  else if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_93C8B8 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C660, &v77);
  }

  else
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v77);
    (*(v13 + 8))(v17, v12);
  }

  v32(v69, v20, v12);
  sub_134D8(&v77, v76);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  sub_BE38(v34, qword_99F778);
  v60 = a4;
  v35 = [a4 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v36 = sub_766CA0();
  v37 = sub_BE38(v36, qword_99FDE8);
  v74 = v36;
  v75 = &protocol witness table for StaticDimension;
  v38 = sub_B1B4(v73);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v39 = v70;
  sub_75FDC0();
  sub_BEB8(&v77);
  (*(v13 + 8))(v20, v12);
  sub_10A2C(v26, &qword_94DF10, &qword_7817B8);
  v40 = sub_7670D0();
  swift_allocObject();
  v41 = sub_767090();
  if (v63)
  {
    v42 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v42 = v62 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v60;
    if (!v42 && (v39 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v44 = [v43 traitCollection];
    sub_769E10();

    v45 = sub_7653B0();
    *(&v78 + 1) = v45;
    v79 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v46 = sub_B1B4(&v77);
    (*(*(v45 - 8) + 104))(v46, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
    sub_765C30();
    sub_BEB8(&v77);
    v47 = v57;
    sub_762D00();
    sub_762CE0();
    (*(v58 + 8))(v47, v59);
    goto LABEL_28;
  }

  v43 = v60;
  if (v39)
  {
    goto LABEL_27;
  }

LABEL_25:
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
LABEL_28:
  v48 = v64;
  v49 = v71;
  v50 = v65;
  (*(v64 + 16))(v61, v71, v65);
  v76[3] = v40;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  v76[0] = v41;
  swift_allocObject();

  v51 = sub_7670B0();
  v74 = v40;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73[0] = v51;
  sub_1ED18(&v77, v72, &qword_9417D0, &unk_780EA0);
  v52 = v66;
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v53 = v68;
  sub_7665A0();
  v55 = v54;

  (*(v67 + 8))(v52, v53);
  sub_10A2C(&v77, &qword_9417D0, &unk_780EA0);
  (*(v48 + 8))(v49, v50);
  return v55;
}

unint64_t sub_3003DC(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, void, uint64_t, uint64_t, __n128), uint64_t a5, void *a6)
{
  v7 = v6;
  v238 = a5;
  v247 = a4;
  v258 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_946D98, &qword_787F68);
  __chkstk_darwin(v10 - 8);
  v220 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v225 = &v216 - v13;
  v237 = sub_764A60();
  v249 = *(v237 - 8);
  __chkstk_darwin(v237);
  v15 = &v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v16 - 8);
  v233 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v234 = &v216 - v19;
  v20 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v20 - 8);
  v232 = &v216 - v21;
  v22 = sub_75A6B0();
  __chkstk_darwin(v22 - 8);
  v224 = &v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v223 = &v216 - v25;
  __chkstk_darwin(v26);
  v229 = &v216 - v27;
  __chkstk_darwin(v28);
  v228 = &v216 - v29;
  v231 = sub_75A6E0();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v222 = &v216 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v227 = &v216 - v32;
  v236 = sub_75DC30();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v226 = &v216 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v251 = &v216 - v35;
  v219 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v243 = &v216 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_766690();
  v266 = *(v257 - 8);
  __chkstk_darwin(v257);
  v248 = &v216 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_75C9A0();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v216 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_75C930();
  v262 = *(v39 - 8);
  v263 = v39;
  __chkstk_darwin(v39);
  v217 = &v216 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v252 = (&v216 - v42);
  __chkstk_darwin(v43);
  v261 = &v216 - v44;
  v260 = sub_760770();
  v267 = *(v260 - 8);
  __chkstk_darwin(v260);
  v242 = &v216 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v268 = &v216 - v47;
  v246 = sub_75FA00();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v216 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v49 - 8);
  v221 = &v216 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v256 = &v216 - v52;
  __chkstk_darwin(v53);
  v269 = &v216 - v54;
  v55 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v55 - 8);
  v265 = &v216 - v56;
  v57 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v57 - 8);
  v270 = &v216 - v58;
  v59 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v59 - 8);
  v264 = &v216 - v60;
  v61 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v61 - 8);
  v259 = &v216 - v62;
  v63 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v63 - 8);
  v65 = (&v216 - v64);
  v66 = sub_75BC60();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v216 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_BD88(&qword_94F1A8, &qword_793A58);
  __chkstk_darwin(v70 - 8);
  v72 = &v216 - v71;
  v73 = sub_BD88(&qword_94DF10, &qword_7817B8);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v216 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v254 = a1;
  sub_75BC50();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v255 = v7;
  v250 = v15;
  if (v78 == 1)
  {
    sub_10A2C(v72, &qword_94F1A8, &qword_793A58);
    v79 = sub_75FDA0();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = sub_75FDA0();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = sub_75FDA0();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    sub_75FDA0();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v255;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_303040(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10A2C(v76, &qword_94DF10, &qword_7817B8);
  v88 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = sub_758C70();
  v91 = v259;
  (*(*(v90 - 8) + 56))(v259, 1, 1, v90);
  v92 = sub_75BD30();
  v93 = v264;
  (*(*(v92 - 8) + 56))(v264, 1, 1, v92);
  v94 = sub_BD88(&unk_9457F0, qword_783FD0);
  v95 = v270;
  (*(*(v94 - 8) + 56))(v270, 1, 1, v94);
  v96 = sub_765870();
  v97 = v265;
  (*(*(v96 - 8) + 56))(v265, 1, 1, v96);
  v98 = v88;
  v99 = v254;
  sub_4A18A4(v254, v98, v65, v258, 0, 0, v91, v93, v97, v95);
  sub_10A2C(v97, &unk_9457D0, &unk_785630);
  v98[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v98 setNeedsLayout];

  sub_10A2C(v95, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v93, &unk_9457E0, &qword_785640);
  sub_10A2C(v91, &unk_94A780, &unk_788DC0);
  v100 = sub_10A2C(v65, &unk_948730, &qword_788DD0);
  v101 = (*(v86 + 192))(v100);
  v265 = 0;
  v102 = v269;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = sub_75BC70();
  if (result >> 62)
  {
    v104 = result;
    v105 = sub_76A860();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v265 = 0;
    goto LABEL_19;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v265 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_90;
    }

    v265 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v264 = 0;
    goto LABEL_30;
  }

  result = sub_75BCF0();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_22;
    }

LABEL_28:

    v264 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = sub_76A860();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v264 = sub_76A770();
    goto LABEL_25;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v264 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = sub_75BC80();
LABEL_30:
  v270 = v106;
  v259 = sub_75BCA0();
  v109 = v244;
  sub_75F9E0();
  sub_3054B4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v110 = v246;
  v111 = sub_76A520();
  (*(v245 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_2BA684(v113);

    v112 = 0;
  }

  v114 = *(v266 + 56);
  v266 += 56;
  v247 = v114;
  (v114)(v102, v112, 1, v257);
  v115 = v268;
  sub_75BCC0();
  v99 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = sub_75BCA0();
  v117 = sub_75BC80();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v261;
  v121 = v264;
  v120 = v265;
  (*(v86 + 456))(v116, v117, v265, v264, v118, v115);

  v272[3] = &type metadata for CGFloat;
  v272[4] = &protocol witness table for CGFloat;
  v272[0] = 0x4021000000000000;
  sub_134D8(v272, v271);
  v97 = *(v262 + 16);
  (v97)(v252, v119, v263);
  if (v270 | v259)
  {
    sub_7666A0();
    v93 = v250;
    v123 = v120;
    v65 = &unk_90D000;
  }

  else
  {
    result = sub_55BABC(v120, v121, 0, 1, v122);
    v123 = v120;
    if (result >> 62)
    {
      v193 = result;
      v124 = sub_76A860();
      result = v193;
    }

    else
    {
      v124 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v93 = v250;
    v65 = &unk_90D000;
    if (v124)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_76A770();
        goto LABEL_40;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {

LABEL_40:

        sub_765260();
        sub_7666A0();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_7666A0();
  }

LABEL_43:
  sub_1ED18(v269, v256, &unk_948720, &unk_784970);
  v125 = v239;
  sub_75C970();
  sub_BEB8(v272);
  v126 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v240;
  v128 = &v99[v126];
  v129 = v241;
  (*(v240 + 24))(v128, v125, v241);
  swift_endAccess();
  [v99 v65[463]];
  (*(v127 + 8))(v125, v129);
  if (v123)
  {
    v130 = sub_759690();
  }

  else
  {
    v130 = 0;
  }

  sub_7596B0();
  v131 = v243;
  sub_6C14C(v130, v243);

  v132 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v131, &v99[v132]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v131);
  if (v123)
  {
    v123 = sub_759690();
  }

  v133 = v242;
  *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v123;

  sub_559DA4();

  v134 = v267;
  v135 = v260;
  (*(v267 + 16))(v133, v268, v260);
  v136 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v134 + 24))(&v99[v136], v133, v135);
  swift_endAccess();
  [v99 v65[463]];
  v137 = *(v134 + 8);
  v267 = v134 + 8;
  v252 = v137;
  v137(v133, v135);
  if (!v270)
  {
    if (!v264)
    {
      goto LABEL_94;
    }

    result = sub_765750();
    if (!(result >> 62))
    {
      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v196 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v197 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      if (v197)
      {
        [v197 removeFromSuperview];
        v198 = *&v99[v196];
      }

      else
      {
        v198 = 0;
      }

      v157 = v255;
      v158 = v249;
      *&v99[v196] = 0;

      v153 = v65;
      [v99 v65[463]];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v200 = Strong;
      sub_3054B4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v201 = [v200 superview];
      if (v201)
      {
        v202 = v201;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v203 = v99;
        v204 = sub_76A1C0();

        v158 = v249;
        if ((v204 & 1) == 0)
        {
          goto LABEL_103;
        }

        v205 = swift_unknownObjectWeakLoadStrong();
        if (!v205)
        {
          goto LABEL_103;
        }

        v200 = v205;
        [v205 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v206 = swift_unknownObjectWeakLoadStrong();
      if (v206)
      {
        v207 = v206;
        [v99 addSubview:v206];
      }

      sub_55A7A8();
      [v99 v65[463]];
      goto LABEL_106;
    }

LABEL_92:
    v194 = result;
    v195 = sub_76A860();
    result = v194;
    if (v195)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v256 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v256 = *(result + 32);
      }

      v160 = v217;
      v161 = v263;
      (v97)(v217, v261, v263);
      v162 = v262;
      v163 = (*(v262 + 88))(v160, v161);
      v164 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v162 + 8))(v160, v161);
      if (v163 == v164)
      {
        v165 = 1;
        v157 = v255;
        v93 = v250;
        v166 = v225;
      }

      else
      {
        v168 = sub_765740();
        v166 = v225;
        sub_6C14C(v168, v225);

        v165 = 0;
        v157 = v255;
        v93 = v250;
      }

      v169 = v218;
      v170 = v219;
      (*(v218 + 56))(v166, v165, 1, v219);
      (*(v230 + 104))(v222, enum case for VideoFillMode.scaleAspectFill(_:), v231);
      sub_764BC0();
      sub_765260();
      v171 = v221;
      sub_7666A0();

      (v247)(v171, 0, 1, v257);
      sub_764B60();
      sub_764BA0();
      LODWORD(v266) = sub_764B70();
      sub_764B50();
      sub_764BB0();
      v172 = v220;
      sub_1ED18(v166, v220, &qword_946D98, &qword_787F68);
      if ((*(v169 + 48))(v172, 1, v170) == 1)
      {
        sub_10A2C(v172, &qword_946D98, &qword_787F68);
      }

      else
      {
        sub_161D14(v172);
      }

      sub_75DC10();
      sub_75C360();
      sub_768880();
      v173 = v272[0];
      sub_764B40();
      v174 = v232;
      sub_764BD0();
      v175 = sub_7570A0();
      (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
      v176 = v234;
      sub_764B90();
      v177 = v233;
      sub_764B80();
      type metadata accessor for VideoView(0);
      sub_3054B4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v266 = v173;
      v178 = sub_75C340();
      sub_10A2C(v177, &unk_948710, &qword_77FF90);
      sub_10A2C(v176, &unk_948710, &qword_77FF90);
      sub_10A2C(v174, &unk_93FD30, qword_77F240);
      sub_10A2C(v272, &unk_9443A0, &unk_77E240);
      v179 = swift_unknownObjectWeakLoadStrong();
      if (!v179)
      {
        goto LABEL_79;
      }

      v180 = v179;
      v181 = [v179 superview];
      if (v181)
      {
        v182 = v181;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v183 = v99;
        v184 = sub_76A1C0();

        v157 = v255;
        if ((v184 & 1) == 0)
        {
          goto LABEL_79;
        }

        v185 = swift_unknownObjectWeakLoadStrong();
        if (!v185)
        {
          goto LABEL_79;
        }

        v180 = v185;
        [v185 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v186 = swift_unknownObjectWeakLoadStrong();
      if (v186)
      {
        v187 = v186;
        [v99 addSubview:v186];
      }

      sub_55A7A8();
      [v99 setNeedsLayout];

      v188 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v189 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      v158 = v249;
      v190 = v225;
      if (v189)
      {
        [v189 removeFromSuperview];
        v191 = *&v99[v188];
      }

      else
      {
        v191 = 0;
      }

      v192 = v236;
      *&v99[v188] = 0;

      v153 = &unk_90D000;
      [v99 setNeedsLayout];

      (*(v235 + 8))(v226, v192);
      sub_10A2C(v190, &qword_946D98, &qword_787F68);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v230 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v231);

  sub_764BC0();
  sub_765260();
  v138 = v93;
  v139 = v256;
  sub_7666A0();

  (v247)(v139, 0, 1, v257);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v93 = v138;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  sub_764B40();
  v140 = v232;
  sub_764BD0();
  v141 = sub_7570A0();
  (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  v142 = v234;
  sub_764B90();
  v143 = v233;
  sub_764B80();
  type metadata accessor for VideoView(0);
  sub_3054B4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  v144 = sub_75C340();
  sub_10A2C(v143, &unk_948710, &qword_77FF90);
  sub_10A2C(v142, &unk_948710, &qword_77FF90);
  sub_10A2C(v140, &unk_93FD30, qword_77F240);
  sub_10A2C(v272, &unk_9443A0, &unk_77E240);
  v145 = swift_unknownObjectWeakLoadStrong();
  if (v145)
  {
    v146 = v145;
    v147 = [v145 superview];
    if (v147)
    {
      v148 = v147;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v149 = v99;
      v150 = sub_76A1C0();

      if ((v150 & 1) == 0)
      {
        goto LABEL_55;
      }

      v151 = swift_unknownObjectWeakLoadStrong();
      if (!v151)
      {
        goto LABEL_55;
      }

      v146 = v151;
      [v151 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v152 = swift_unknownObjectWeakLoadStrong();
  v153 = &unk_90D000;
  if (v152)
  {
    v154 = v152;
    [v99 addSubview:v152];
  }

  sub_55A7A8();
  [v99 setNeedsLayout];

  v155 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v156 = *&v99[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  v157 = v255;
  v158 = v249;
  if (v156)
  {
    [v156 removeFromSuperview];
    v159 = *&v99[v155];
  }

  else
  {
    v159 = 0;
  }

  v167 = v236;
  *&v99[v155] = 0;

  [v99 setNeedsLayout];

  (*(v235 + 8))(v251, v167);
LABEL_106:
  v208 = v153;
  [v99 v153[463]];

  (*(v262 + 8))(v261, v263);
  v209 = *&v157[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_764A20();
  sub_3054B4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v210 = v237;
  v211 = sub_76A520();
  v212 = *(v158 + 8);
  v212(v93, v210);
  if ((v211 & 1) != 0 && ((*(ObjectType + 472))(v254), v213))
  {
    v214 = sub_769210();
    v208 = 9490432;
  }

  else
  {
    v214 = 0;
  }

  [v209 setText:v214];

  sub_764A20();
  v215 = sub_76A520();
  v212(v93, v210);
  v157[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v215 & 1;
  [v157 *(v208 + 3704)];
  [v157 *(v208 + 3704)];

  v252(v268, v260);
  return sub_10A2C(v269, &unk_948720, &unk_784970);
}

double sub_3028D0(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v7 = a3.n128_u64[0];
  v32 = sub_75FDE0();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75FE00();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_762D10();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v16.n128_u64[0] = v7;
  sub_3030B0(a2, v16, a4);
  v17 = sub_7670D0();
  swift_allocObject();
  v18 = sub_767090();
  if (sub_75FDD0())
  {
    v28 = a1;
    v29 = v11;
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if (qword_93DA80 != -1)
    {
      swift_once();
    }

    v19 = sub_7666D0();
    sub_BE38(v19, qword_99F778);
    v20 = [a2 traitCollection];
    sub_769E10();

    v21 = sub_7653B0();
    *(&v42 + 1) = v21;
    v43 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v22 = sub_B1B4(&v41);
    (*(*(v21 - 8) + 104))(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    sub_765C30();
    sub_BEB8(&v41);
    sub_762D00();
    sub_762CE0();
    (*(v30 + 8))(v15, v31);
    v11 = v29;
    a1 = v28;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  (*(v8 + 16))(v10, a1, v32);
  v39 = v17;
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v38 = v18;
  swift_allocObject();

  v23 = sub_7670B0();
  v36 = v17;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  sub_1ED18(&v41, v34, &qword_9417D0, &unk_780EA0);
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  sub_7665A0();
  v25 = v24;

  (*(v33 + 8))(v13, v11);
  sub_10A2C(&v41, &qword_9417D0, &unk_780EA0);
  return v25;
}

void sub_302E0C(void *a1, double a2, double a3)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v6 = sub_75CF00();
  v7 = sub_BE38(v6, qword_99B898);
  swift_getObjectType();
  sub_1FE304(v7, a1, a2, a3);
}

void sub_302F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView);
  sub_219128(a1, a2);
}

uint64_t sub_303040(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94DF10, &qword_7817B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_3030B0(uint64_t a1, __n128 a2, double a3)
{
  v3 = sub_75C9A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ASKDeviceTypeGetCurrent();
  sub_2BA684(v11);

  sub_558ED0(v10, v6);
  sub_75C9D0();
  sub_3054B4(&qword_946D78, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  sub_766ED0();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v13;
}

double sub_3032BC(char *a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v138 = a6;
  v8 = a2.n128_f64[0];
  v129 = sub_75FE00();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_762D10();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_75FDA0();
  v139 = *(v134 - 8);
  __chkstk_darwin(v134);
  v135 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v106 - v14;
  __chkstk_darwin(v15);
  v113 = &v106 - v16;
  v126 = sub_75FDE0();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v106 - v19;
  v121 = sub_75C930();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v21 - 8);
  v118 = &v106 - v22;
  v124 = sub_760770();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v136 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_75BC60();
  v133 = *(v116 - 8);
  __chkstk_darwin(v116);
  v107 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&qword_94F1A8, &qword_793A58);
  __chkstk_darwin(v25 - 8);
  v132 = (&v106 - v26);
  v27 = sub_BD88(&qword_94DF10, &qword_7817B8);
  __chkstk_darwin(v27 - 8);
  v117 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v140 = &v106 - v30;
  v31 = sub_75FA00();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9E0();
  sub_3054B4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v35 = sub_76A520();
  v36 = *(v32 + 8);
  v36(v34, v31);
  v37 = *(v6 + 472);
  v131 = a1;
  v38 = a1;
  v39 = v6;
  v115 = v6 + 472;
  v114 = v37;
  v130 = (v37)(v38);
  v41 = v40;
  sub_75F9D0();
  v42 = sub_76A520();
  v36(v34, v31);
  if ((v35 & 1) == 0)
  {
    v43.n128_f64[0] = v8;
    sub_2FF8DC(v42 & 1, v130, v41, v138, v43, a3);

    return v8;
  }

  v44 = v131;
  v130 = sub_75BCA0();
  v45 = (*(v6 + 216))();
  v46 = v6;
  if (v45)
  {
    v111 = sub_75BC80();
  }

  else
  {
    v111 = 0;
  }

  v47 = v134;
  v48 = v139;
  v49 = v133;
  v50 = v132;
  if (((*(v6 + 192))() & 1) == 0)
  {
LABEL_16:
    v133 = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v51 = v44;
  v52 = sub_75BC70();
  if (v52 >> 62)
  {
    v51 = v52;
    v53 = sub_76A860();
    v52 = v51;
    if (v53)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_9:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v133 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v133 = *(v52 + 32);
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v51 = v44;
  v54 = sub_75BCF0();
  if (v54 >> 62)
  {
    v55 = v54;
    v56 = sub_76A860();
    v54 = v55;
    if (v56)
    {
      goto LABEL_19;
    }
  }

  else if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    if ((v54 & 0xC000000000000001) != 0)
    {
      v132 = sub_76A770();
      goto LABEL_22;
    }

    if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
    {
      v132 = *(v54 + 32);

LABEL_22:

      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

LABEL_25:
  v132 = 0;
LABEL_26:
  v57 = (v114)(v44);
  v134 = v58;
  sub_75BC50();
  v59 = v116;
  v60 = (*(v49 + 48))(v50, 1, v116);
  v115 = v57;
  if (v60 == 1)
  {
    sub_10A2C(v50, &qword_94F1A8, &qword_793A58);
    v61 = 1;
  }

  else
  {
    v62 = v107;
    (*(v49 + 16))(v107, v50, v59);
    v63 = (*(v49 + 88))(v62, v59);
    if (v63 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      (*(v48 + 104))(v140, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v47);
    }

    else
    {
      v64 = *(v48 + 104);
      if (v63 == enum case for MixedMediaLockup.LockupPosition.bottom(_:))
      {
        v64(v140, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v47);
      }

      else
      {
        v64(v140, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v47);
        (*(v49 + 8))(v107, v59);
      }
    }

    (*(v49 + 8))(v50, v59);
    v61 = 0;
  }

  (*(v48 + 56))(v140, v61, 1, v47);
  v65 = v136;
  sub_75BCC0();
  v66 = ASKDeviceTypeGetCurrent();
  v116 = type metadata accessor for LockupMediaView(0);
  v67 = sub_766690();
  v68 = v118;
  (*(*(v67 - 8) + 56))(v118, 1, 1, v67);
  v69 = *(v39 + 456);
  v70 = v119;
  v71 = v130;
  v72 = v111;
  v73 = v133;
  v74 = v46;
  v75 = v132;
  v131 = v66;
  v114 = v74;
  v69(v130, v111, v133, v132, v66, v65);
  v76 = v138;
  swift_getObjectType();
  sub_161888(v71, v72, v73, v75, v68, v70, v76, v65, v8, a3);
  (*(v120 + 8))(v70, v121);
  sub_10A2C(v68, &unk_948720, &unk_784970);
  v77 = v117;
  sub_1ED18(v140, v117, &qword_94DF10, &qword_7817B8);
  v78 = v139;
  v79 = *(v139 + 48);
  v80 = v139;
  if (v79(v77, 1, v47) == 1)
  {
    v44 = v113;
    v114[28]();
    v81 = v79(v77, 1, v47);
    v82 = v112;
    v83 = v134;
    if (v81 != 1)
    {
      sub_10A2C(v77, &qword_94DF10, &qword_7817B8);
    }
  }

  else
  {
    v44 = v113;
    (*(v78 + 32))(v113, v77, v47);
    v82 = v112;
    v83 = v134;
  }

  v51 = *(v80 + 16);
  v51(v82, v44, v47);
  v84 = (*(v80 + 88))(v82, v47);
  if (v84 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v46 = v83;
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    v85 = qword_99C688;
    goto LABEL_45;
  }

  v46 = v83;
  if (v84 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, &v146);
    (*(v80 + 8))(v82, v47);
    goto LABEL_49;
  }

  if (qword_93C8B8 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v85 = qword_99C660;
LABEL_45:
  sub_134D8(v85, &v146);
LABEL_49:
  v86 = v138;
  v51(v135, v44, v47);
  sub_134D8(&v146, v145);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v87 = sub_7666D0();
  sub_BE38(v87, qword_99F778);
  v88 = [v86 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v89 = sub_766CA0();
  v90 = sub_BE38(v89, qword_99FDE8);
  v143 = v89;
  v144 = &protocol witness table for StaticDimension;
  v91 = sub_B1B4(&v142);
  (*(*(v89 - 8) + 16))(v91, v90, v89);
  sub_75FDC0();
  sub_BEB8(&v146);
  (*(v139 + 8))(v44, v47);
  v92 = sub_7670D0();
  swift_allocObject();
  v93 = sub_767090();
  if (v46)
  {

    v94 = [v86 traitCollection];
    sub_769E10();

    v95 = sub_7653B0();
    *(&v147 + 1) = v95;
    v148 = sub_3054B4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v96 = sub_B1B4(&v146);
    (*(*(v95 - 8) + 104))(v96, enum case for Feature.measurement_with_labelplaceholder(_:), v95);
    sub_765C30();
    sub_BEB8(&v146);
    v97 = v108;
    sub_762D00();
    sub_762CE0();
    (*(v109 + 8))(v97, v110);
  }

  else
  {
    v134 = 0;
    v148 = 0;
    v146 = 0u;
    v147 = 0u;
  }

  v98 = v131;
  v99 = v125;
  v100 = v137;
  v101 = v126;
  (*(v125 + 16))(v122, v137, v126);
  v145[3] = v92;
  v145[4] = &protocol witness table for LayoutViewPlaceholder;
  v145[0] = v93;
  swift_allocObject();

  v102 = sub_7670B0();
  v143 = v92;
  v144 = &protocol witness table for LayoutViewPlaceholder;
  v142 = v102;
  sub_1ED18(&v146, v141, &qword_9417D0, &unk_780EA0);
  v103 = v127;
  sub_75FDF0();
  sub_3054B4(&qword_94F1B0, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v104 = v129;
  sub_7665A0();

  (*(v128 + 8))(v103, v104);
  sub_10A2C(&v146, &qword_9417D0, &unk_780EA0);
  (*(v99 + 8))(v100, v101);
  (*(v123 + 8))(v136, v124);
  sub_10A2C(v140, &qword_94DF10, &qword_7817B8);
  return v8;
}

void sub_3046F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_75C930();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v9 - 8);
  v70 = &v58 - v10;
  v11 = sub_760770();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_7652D0();
  __chkstk_darwin(v15 - 8);
  sub_134D8(a1, v74);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75BD00();
  if (swift_dynamicCast())
  {
    v66 = v7;
    v67 = v6;
    v68 = v12;
    v16 = v73;
    v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v17)
    {

      return;
    }

    v65 = v11;

    swift_unknownObjectRetain();
    v18 = sub_764EE0();

    v69 = v3;
    if (v18)
    {
      v20 = qword_93C668;
      v21 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = sub_75CF00();
      sub_BE38(v22, qword_99B898);
      sub_75CDD0();
      [v21 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v21 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_3054B4(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }

    v23 = ObjectType;
    v24 = (*(ObjectType + 192))(v19);
    if (v24)
    {
      v25 = sub_75BC70();
      if (v25 >> 62)
      {
        v27 = v25;
        v28 = sub_76A860();
        v25 = v27;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_12:
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = *(v25 + 32);
        }

LABEL_20:
        v29 = (*(v23 + 216))(v24);
        v63 = v26;
        v64 = a2;
        v62 = v17;
        if ((v29 & 1) == 0)
        {
          v32 = v14;
          v59 = sub_75BCA0();
          v33 = 0;
          v34 = 0;
LABEL_31:
          v37 = v32;
          sub_75BCC0();
          v38 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell(0);
          sub_75D650();
          v40 = v39;
          v42 = v41;
          v60 = type metadata accessor for LockupMediaView(0);
          v61 = v16;
          v43 = sub_766690();
          v44 = v70;
          (*(*(v43 - 8) + 56))(v70, 1, 1, v43);
          v45 = v71;
          v46 = v59;
          v47 = v34;
          v48 = v34;
          v49 = v63;
          v50 = v38;
          (*(ObjectType + 456))(v59, v48, v63, v33, v38, v37);
          v51 = v62;
          swift_getObjectType();
          sub_161888(v46, v47, v49, v33, v44, v45, v51, v37, v40, v42);
          v53 = v52;
          v55 = v54;

          (*(v66 + 8))(v45, v67);
          sub_10A2C(v44, &unk_948720, &unk_784970);
          v56 = *(v69 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
          v57 = [v51 traitCollection];
          sub_1600F8(v46, v47, v49, v33, v57, v64, v37, v53, v55);

          swift_unknownObjectRelease();

          (*(v68 + 8))(v37, v65);
          return;
        }

        v30 = sub_75BCF0();
        if (v30 >> 62)
        {
          v35 = v30;
          v36 = sub_76A860();
          v30 = v35;
          if (v36)
          {
            goto LABEL_23;
          }
        }

        else if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_23:
          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = sub_76A770();
            goto LABEL_26;
          }

          if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
          {
            v31 = *(v30 + 32);

LABEL_26:
            v32 = v14;

LABEL_30:
            v59 = sub_75BCA0();
            v34 = sub_75BC80();
            v33 = v31;
            goto LABEL_31;
          }

LABEL_36:
          __break(1u);
          return;
        }

        v32 = v14;

        v31 = 0;
        goto LABEL_30;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }
}

id sub_304EC8(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_764A60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  sub_764A20();
  sub_3054B4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v12 = sub_76A520();
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_f64[0] = v11;
  v14 = sub_2FF8DC(v12 & 1, 0, 0xE000000000000000, a4, v13, a2);
  v15 = objc_opt_self();
  v16 = [v15 absoluteDimension:v11];
  v17 = [v15 absoluteDimension:v14];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = [objc_opt_self() itemWithLayoutSize:v18];
  v20 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v19;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v22 = v19;
  isa = sub_769450().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v18 subitems:isa];

  return v24;
}

void sub_30518C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759050();
  sub_759210();
  sub_3054B4(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    v7 = sub_76A860();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = v4;
    goto LABEL_12;
  }

  v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v19 = v4;
  v8 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    type metadata accessor for BorderedScreenshotView(0);
    sub_3054B4(&qword_946D80, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v12 = v11;
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v20);
    v13 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
    v21.value.super.isa = 0;
    v21.is_nil = 0;
    sub_7591D0(v21, v14);
  }

  while (v7 != v9);

  v4 = v19;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [*(Strong + qword_940590) setImage:0];
    type metadata accessor for VideoView(0);
    sub_3054B4(&qword_952550, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v18 = v17;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v20);
  }

  else
  {
  }
}

uint64_t sub_3054B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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