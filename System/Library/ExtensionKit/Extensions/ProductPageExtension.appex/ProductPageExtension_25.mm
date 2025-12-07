double sub_1002D350C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v50 = a3;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706FC();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_10076D2BC();
  v18 = v17;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19 = (a2 + *(v48 + 72));
  v20 = v19[3];
  sub_10000CF78(v19, v20);
  sub_1000FF02C(v20);
  sub_10076D40C();
  v22 = v21;
  v23 = *(v10 + 8);
  v49 = v9;
  v23(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v24 = a2 + *(v48 + 76);
    v25 = (v24 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v26 = v25[3];
    sub_10000CF78(v25, v26);
    sub_1000FF02C(v26);
    sub_10076D40C();
    v28 = v27;
    v23(v13, v49);
    sub_1002D3974(a1, a2, a4, a5, a4 - (v18 + v28));
    v30 = v29;
    v31 = sub_1002D41F8(a1, a2, a4, a5);
    if (v30 > v31)
    {
      v31 = v30;
    }
  }

  else
  {
    v32 = v16[10];
    sub_100016E2C(a2 + v32, v51, &unk_10094DA00, &qword_100783FA0);
    if (v52)
    {
      sub_10000CF78(v51, v52);
      sub_10076D2BC();
      v34 = v33;
      sub_10000CD74(v51);
    }

    else
    {
      sub_10000CFBC(v51, &unk_10094DA00, &qword_100783FA0);
      v34 = 0.0;
    }

    v35 = v48;
    sub_100016E2C(a2 + v32, v51, &unk_10094DA00, &qword_100783FA0);
    v36 = v52;
    sub_10000CFBC(v51, &unk_10094DA00, &qword_100783FA0);
    if (v36)
    {
      v37 = (a2 + *(v35 + 80));
      v38 = v37[3];
      sub_10000CF78(v37, v38);
      sub_1000FF02C(v38);
      sub_10076D40C();
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
    sub_10000CF78(v43, v44);
    sub_1000FF02C(v44);
    sub_10076D40C();
    v46 = v45;
    v23(v13, v41);
    sub_1002D3974(a1, a2, a4, a5, a4 - (v40 + v34 + v18 + v46));
  }

  return v22 + 0.0 + v31;
}

void sub_1002D3974(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v79 = sub_10076997C();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10075D78C();
  v76 = *(v78 - 1);
  __chkstk_darwin(v78);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10000CF78(v18, v18[3]);
  sub_10076D2BC();
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
    sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    v67 = v20;
    sub_10075FDCC();
    v21 = v83;
    v68 = v17;
    v22 = v17[15];
    v69 = a2;
    v23 = *(a2 + v22);
    sub_10000CF78(v18, v18[3]);
    if (sub_10076D24C())
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
      if (Width > v36 || (sub_10075D77C(), v80[0] = v72, v80[1] = v25, sub_10002564C(), sub_1007711EC(), v38 = v37, (*(v76 + 8))(v16, v78), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_1007706FC(), v39, (v40)))
      {
        v78 = v21;
        v41 = sub_1002D16C0(v72, v25);
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
          v48 = sub_10076C04C();
          v81 = v48;
          v82 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v49 = sub_10000DB7C(v80);
          (*(*(v48 - 8) + 104))(v49, v76, v48);

          v50 = v78;
          sub_10076C90C();
          sub_10000CD74(v80);
          a1 = v47;
          sub_10076996C();
          sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v51 = v79;
          sub_10076D2AC();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v78;
            goto LABEL_13;
          }
        }

        v60 = sub_10076C04C();
        v81 = v60;
        v82 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v61 = sub_10000DB7C(v80);
        (*(*(v60 - 8) + 104))(v61, v76, v60);
        v62 = v78;
        sub_10076C90C();
        sub_10000CD74(v80);
        v63 = v73;
        sub_10076996C();
        sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v64 = v79;
        sub_10076D2AC();
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
        sub_10000CF78((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_10076D2AC();
        v58 = v67[3];
        sub_10000CF78(v67, v58);
        v59 = v74;
        sub_1000FF02C(v58);
        sub_10076D40C();
        (*(v55 + 8))(v59, v54);
      }
    }
  }
}

double sub_1002D41F8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_100016E2C(a2 + *(v9 + 52), &v25, &qword_10094BB30, qword_100796E40);
  if (!v26)
  {
    sub_10000CFBC(&v25, &qword_10094BB30, qword_100796E40);
    return 0.0;
  }

  sub_100012498(&v25, v27);
  sub_100016E2C(a2 + *(v9 + 56), &v23, &qword_10094BB30, qword_100796E40);
  if (!v24)
  {
    sub_10000CFBC(&v23, &qword_10094BB30, qword_100796E40);
    sub_10000CD74(v27);
    return 0.0;
  }

  sub_100012498(&v23, &v25);
  sub_10000CF78(v27, v27[3]);
  sub_10076D2AC();
  v11 = v10;
  v13 = v12;
  sub_10000CF78(&v25, v26);
  sub_10076D2AC();
  v15 = v14;
  v16 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84));
  v17 = v16[3];
  sub_10000CF78(v16, v17);
  sub_1000FF02C(v17);
  sub_10076D40C();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v15 + v11 - v13 + v19;
  sub_10000CD74(&v25);
  sub_10000CD74(v27);
  return v20;
}

double sub_1002D4474(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v58 = sub_1007706FC();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v59 = a1;
  v13 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  v14 = *v62;
  v15 = v12;
  *&v59 = a1;
  v57 = v13;
  sub_10075FDCC();
  v16 = *v62;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_100016E2C(a2 + v18, v62, &unk_10094DA00, &qword_100783FA0);
  if (v63)
  {
    sub_10000CF78(v62, v63);
    sub_10076D2BC();
    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(v62, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(a2 + v18, v62, &unk_10094DA00, &qword_100783FA0);
  v19 = v63;
  sub_10000CFBC(v62, &unk_10094DA00, &qword_100783FA0);
  if (v19)
  {
    v20 = (a2 + *(v15 + 80));
    v21 = v20[3];
    sub_10000CF78(v20, v21);
    sub_1000FF02C(v21);
    sub_10076D40C();
    (*(v7 + 8))(v10, v6);
  }

  v22 = (a2 + v17[6]);
  sub_10000CF78(v22, v22[3]);
  sub_10076D2AC();
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

  sub_10000CF78(v22, v22[3]);
  sub_10076D6EC();
  v33 = v27 - v30 + v31 + v32;
  sub_10000A570(v22, v62);
  *&v59 = a1;
  sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10075FDCC();
  v34 = v17[9];
  sub_100016E2C(a2 + v34, &v59, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v59, &qword_10094BB30, qword_100796E40);
  sub_10000CF78(v62, v63);
  v64.var0 = v25;
  v64.var1 = v27;
  v64.var2 = v28;
  v64.var3 = v30;
  sub_10076D71C(v64);
  sub_10000CD74(v62);
  v35 = (a2 + v17[8]);
  sub_10000CF78(v35, v35[3]);
  sub_10076D6DC();
  v36 = (a2 + v17[7]);
  sub_10000CF78(v36, v36[3]);
  sub_10076D6DC();
  sub_10000CF78(v35, v35[3]);
  sub_10076D2AC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000CF78(v36, v36[3]);
  sub_10076D2AC();
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
  sub_100016E2C(a2 + v34, &v59, &qword_10094BB30, qword_100796E40);
  if (v60)
  {
    sub_100012498(&v59, v62);
    v61 = a1;
    sub_10075FDCC();
    v51 = *&v59;
    sub_10000CF78(v62, v63);
    sub_10076D2AC();
    v53 = v52;
    v50 = v50 + v51 - v54 + v55 - v52;
    sub_10000CD74(v62);
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

    sub_10000CFBC(&v59, &qword_10094BB30, qword_100796E40);
  }

  return v50 + v53;
}

uint64_t sub_1002D4A54(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v128 = a16;
  v123 = a15;
  v142 = a8;
  v130 = a6;
  v135 = a5;
  v134 = a4;
  v141 = a3;
  v121 = a1;
  v133 = COERCE_DOUBLE(sub_10077164C());
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
  sub_100016E2C(a12 + v42, &v144, &unk_10094DA00, &qword_100783FA0);
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
    sub_100012498(&v144, &v146);
    sub_10000CF78((a12 + v41[6]), *(a12 + v41[6] + 24));
    sub_10076D22C();
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
    sub_10000CF78(&v146, v147);
    sub_100770A4C();
    a12 = v140;
    sub_10076D23C();
    sub_10000CD74(&v146);
  }

  else
  {
    sub_10000CFBC(&v144, &unk_10094DA00, &qword_100783FA0);
  }

  v121 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10000CF78(v44, v44[3]);
  v45 = sub_10076D24C();
  v46 = v130;
  v47 = v134;
  if (v45)
  {
    sub_10000CF78(v44, v44[3]);
    sub_10076D23C();
    v48 = v129;
    v49 = v131;
  }

  else
  {
    v122 = v29;
    sub_100016E2C(v43 + v42, &v146, &unk_10094DA00, &qword_100783FA0);
    v50 = v147;
    sub_10000CFBC(&v146, &unk_10094DA00, &qword_100783FA0);
    v51 = v136;
    if (v50)
    {
      v52 = (v43 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
      v53 = v52[3];
      sub_10000CF78(v52, v53);
      v54 = v132;
      sub_1000FF02C(v53);
      sub_10076D40C();
      (*(v122 + 8))(v54, COERCE_DOUBLE(*&v133));
    }

    v55 = v137;
    v56 = v129;
    sub_100016E2C(v43 + v42, &v146, &unk_10094DA00, &qword_100783FA0);
    v57 = v131;
    v119 = a14;
    v118 = a13;
    if (v147)
    {
      sub_10000CF78(&v146, v147);
      sub_10076D2BC();
      sub_10000CD74(&v146);
    }

    else
    {
      sub_10000CFBC(&v146, &unk_10094DA00, &qword_100783FA0);
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
    sub_10000CF78(v63, v64);
    v65 = v132;
    sub_1000FF02C(v64);
    sub_10076D40C();
    v66 = a11;
    v67 = *(v58 + 8);
    v68 = v133;
    v67(v65, *&v133);
    v69 = v141;
    v70 = v59;
    v47 = v134;
    v71 = (v61 + *(v62 + 24));
    v72 = v71[3];
    sub_10000CF78(v71, v72);
    sub_1000FF02C(v72);
    sub_10076D40C();
    v120 = *&v67;
    v67(v65, *&v68);
    a11 = v66;
    sub_10000CF78(v44, v44[3]);
    v46 = v60;
    sub_10076D2AC();
    v74 = v73;
    v153.origin.x = v69;
    v153.origin.y = v47;
    v153.size.width = v70;
    v153.size.height = v60;
    CGRectGetMidY(v153);
    v75 = (v140 + *(*&v121 + 44));
    sub_10000CF78(v75, v75[3]);
    if ((sub_10076D24C() & 1) != 0 || (v154.origin.x = v69, v154.origin.y = v47, v154.size.width = v70, v154.size.height = v60, CGRectGetHeight(v154) < v74))
    {
      v155.origin.x = v69;
      v155.origin.y = v47;
      v155.size.width = v70;
      v155.size.height = v60;
      CGRectGetMinY(v155);
    }

    a14 = v119;
    sub_10000CF78(v75, v75[3]);
    v76 = sub_10076D24C();
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
      sub_10000CF78(v117, v81);
      v82 = v29;
      v83 = v132;
      sub_1000FF02C(v81);
      sub_10076D40C();
      v84 = v83;
      v29 = v82;
      (*&v120)(v84, *&v133);
    }

    a13 = v118;
    sub_10000CF78(v44, v44[3]);
    sub_100770A4C();
    sub_10076D23C();
    v48 = v129;
  }

  v85 = v47;
  sub_10000CF78(v44, v44[3]);
  v86 = v137;
  v87 = v48;
  sub_10076D2AC();
  v89 = v88;
  sub_10000CF78(v44, v44[3]);
  v90 = sub_10076D24C();
  v91 = 0.0;
  v92 = v140;
  if ((v90 & 1) == 0)
  {
    v93 = v92 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v94 = (v93 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v95 = v94[3];
    sub_10000CF78(v94, v95);
    v96 = v132;
    sub_1000FF02C(v95);
    sub_10076D40C();
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
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
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
  sub_10076D2AC();
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

  sub_100770A4C();
  sub_10076D23C();
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
  sub_10076D2AC();
  v135 = v115;
  v163.origin.x = v112;
  v163.origin.y = v49;
  v163.size.width = v113;
  v163.size.height = v87;
  CGRectGetMaxX(v163);
  sub_10000CF78((v92 + *(v102 + 84)), *(v92 + *(v102 + 84) + 24));
  sub_10076D42C();
  sub_100770A4C();
  sub_10076D23C();
  (*(v125 + 8))(v104, a13);
  return (*(v127 + 8))(v114, a14);
}

uint64_t sub_1002D5768(uint64_t a1)
{
  *(a1 + 8) = sub_1002D57EC(&unk_1009522B0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  result = sub_1002D57EC(&qword_100950EF0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D57EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D5848(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1002D591C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_1002D59D8(uint64_t a1)
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
      if (v3 <= 0x3F)
      {
        sub_1001A3380(319, &unk_100950F70, &unk_100953E10, &unk_100784160);
        if (v4 <= 0x3F)
        {
          sub_1001A3380(319, &qword_100950F80, &qword_10094CF50, &unk_100791F20);
          if (v5 <= 0x3F)
          {
            sub_1001962D4();
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

uint64_t sub_1002D5B58(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
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

uint64_t sub_1002D5D44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
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

void sub_1002D5F1C(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1002D6108(319, &qword_100953EE0, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_1002D6094(319);
          if (v5 <= 0x3F)
          {
            sub_1002D6108(319, &unk_100951078, &type metadata for Int);
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

void sub_1002D6094(uint64_t a1)
{
  if (!qword_100951068)
  {
    sub_10000CE78(&unk_100943120, &unk_100784C10);
    sub_10005312C();
    v1 = sub_10075FEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100951068);
    }
  }
}

void sub_1002D6108(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_10000CE78(&unk_100943120, &unk_100784C10);
    v4 = sub_10075FEBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002D6188(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002D6258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002D6308(uint64_t a1)
{
  sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
  if (v1 <= 0x3F)
  {
    sub_1002D6094(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002D63A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002D63E8()
{
  result = qword_1009511A0;
  if (!qword_1009511A0)
  {
    sub_10000CE78(&unk_100951190, qword_10079A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009511A0);
  }

  return result;
}

uint64_t sub_1002D644C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007634CC();
  sub_10000DB18(v4, qword_10099E3E8);
  v37 = sub_10000A61C(v4, qword_10099E3E8);
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = sub_10076D9AC();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v5, qword_1009A0CE8);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  sub_10076D9BC();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v55);
  v16(v20, v3, v0);
  sub_10076D9BC();
  v47(v3, v0);
  v21 = v18;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_10000A61C(v42, qword_1009A0D48);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v52);
  v26 = v41;
  v41(v25, v3, v0);
  sub_10076D9BC();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v49);
  v27(v30, v3, v0);
  sub_10076D9BC();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v48);
  v27(v32, v3, v0);
  sub_10076D9BC();
  v31(v3, v0);
  return sub_1007634BC();
}

char *sub_1002D6AD0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = sub_10076341C();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView] = sub_10075FB3C();
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A0CE8);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = sub_1007626BC();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v19, qword_1009A0D48);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10076266C();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v36 = v35;
  v37 = sub_100770D1C();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  sub_10076266C();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

void sub_1002D7138(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_1002D7218()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_10076D1FC();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007634CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1007634EC();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v1;
  v36.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v36, "layoutSubviews", v10);
  if (qword_10093FD60 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_10099E3E8);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_artworkView];
  v35[23] = sub_10075FD2C();
  v35[24] = &protocol witness table for UIView;
  v35[20] = v14;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = sub_1007626BC();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v35[16] = 0;
    v35[17] = 0;
  }

  v35[15] = v18;
  v35[18] = v16;
  v35[19] = v17;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  v20 = sub_1007626BC();
  v35[13] = v20;
  v35[14] = &protocol witness table for UILabel;
  v35[10] = v19;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  v35[9] = &protocol witness table for UILabel;
  v35[8] = v20;
  v35[5] = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v35[2] = 0;
    v35[1] = 0;
  }

  v35[0] = v22;
  v35[3] = v20;
  v35[4] = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  sub_1007634DC();
  v29 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  sub_1007634AC();
  (*(v32 + 8))(v4, v33);
  sub_1002D811C(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007A6858);
  sub_1007676CC();
  return (*(v9 + 8))(v12, v31);
}

id sub_1002D76D0(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1002AC2EC(v20, &OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_1002D7980()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1002AC2EC(v15, &OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009511E8;
  if (!qword_1009511E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D7D40(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D7E1C(uint64_t a1)
{
  v1 = sub_10076BEDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076BE8C();
  sub_1002D811C(&qword_1009441E0, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
  v5 = sub_10076FF1C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return 6;
  }

  else
  {
    return sub_10076BE9C();
  }
}

uint64_t sub_1002D7F4C(uint64_t a1, uint64_t a2)
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002D811C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1002D7FE4(uint64_t a1)
{
  result = sub_1002D811C(&qword_1009511F8, type metadata accessor for LargeLockupCollectionViewCell, &unk_10079A830);
  *(a1 + 8) = result;
  return result;
}

void sub_1002D803C(uint64_t a1, double a2, double a3)
{
  if (qword_10093FD60 != -1)
  {
    swift_once();
  }

  v3 = sub_1007634CC();
  sub_10000A61C(v3, qword_10099E3E8);
  sub_1007634EC();
  sub_1002D811C(&qword_100951200, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  sub_10076DBDC();
}

uint64_t sub_1002D811C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider(uint64_t a1)
{
  result = qword_100951210;
  if (!qword_100951210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002D81F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = sub_10076341C();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = sub_10076C38C();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076B5BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = sub_10076FF9C();
  v33 = v32;
  if (v31 == sub_10076FF9C() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = sub_10077167C();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = sub_10076FF9C();
    v65 = v64;
    if (v63 == sub_10076FF9C() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = sub_10077167C();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      sub_10076980C();
      v69 = sub_10076981C();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_1000F79F4, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      sub_10076468C();
      swift_getKeyPath();
      v74 = v116;
      sub_10076F49C();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_10075203C(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_100753380(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004BBAA4(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_10058FD5C(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_1004BBAA4((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      v39[2] = v50 + 1;
      *&v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_10023428C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
    v59 = sub_10076469C();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_10077096C();
    sub_1002D900C(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  sub_10076460C();
  sub_10076C21C();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = sub_10077023C();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = sub_1007665AC();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  sub_100768A7C();
  sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = sub_1007701AC().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  sub_100768A6C();
  sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
  v94 = sub_1007701AC().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  sub_10076460C();
  sub_10076C31C();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_10000CF78(v92, v92[3]);
  sub_100768A3C();
  v101 = v100;
  sub_10000CF78(v92, v92[3]);
  sub_100768A5C();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  sub_1007697FC();
  v103 = sub_1007701DC();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    aBlock[3] = &unk_1008907A0;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}

uint64_t sub_1002D900C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1002D9074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002D908C(void *a1)
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

void *sub_1002D911C(void *result, double a2)
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

uint64_t sub_1002D91BC()
{

  return swift_deallocClassInstance();
}

double sub_1002D921C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007708EC() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_10077167C();

  if (v8)
  {
LABEL_11:

    sub_1007708FC();
    *(a3 + 24) = sub_10000A5D4(&qword_100950658, &unk_10079A078);
    *(a3 + 32) = sub_100071820(&unk_100950660, &qword_100950658, &unk_10079A078, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10000A5D4(&qword_100950640, &qword_10079A070);
    *(a3 + 32) = sub_100071820(&qword_100950648, &qword_100950640, &qword_10079A070, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a3);
    sub_100016F40(0, &qword_100950650, UICollectionReusableView_ptr);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10076A3BC();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002D956C(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1007621EC();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_10076469C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    return sub_10000CFBC(v15, &unk_10095DCF0, &unk_10078C910);
  }

  v21 = Strong;
  v30 = v7;
  v31 = v9;
  v29 = a1;
  sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
  sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
  sub_10076A67C();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000CFBC(v15, &unk_10095DCF0, &unk_10078C910);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10076468C();
  swift_getKeyPath();
  v22 = v31;
  sub_10076F49C();

  (*(v32 + 8))(v12, v10);
  v23 = v33;
  v24 = v30;
  if ((*(v33 + 88))(v22, v30) == enum case for ShelfBackground.color(_:))
  {
    (*(v23 + 96))(v22, v24);
    v25 = *v22;
    v26 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v27 = sub_1007659CC();
    (*(*(v27 - 8) + 8))(v22 + v26, v27);
    [v29 setBackgroundColor:v25];

    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    return (*(v23 + 8))(v22, v24);
  }
}

void sub_1002D99E0(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1007621EC();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v43 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10076469C();
  v44 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v38 = a1;
    v24 = qword_1009503C8;
    swift_beginAccess();
    v25 = *&v23[v24];
    if (!v25)
    {

      return;
    }

    v26 = v25;

    sub_10076E79C();
    v27 = sub_10076E5EC();
    (*(v19 + 8))(v21, v18);
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      if (__OFSUB__(v27, 1))
      {
        __break(1u);
        return;
      }

      v29 = v28;
      sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
      sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
      sub_10076A67C();

      v30 = v44;
      if ((*(v44 + 48))(v14, 1, v15) != 1)
      {
        (*(v30 + 32))(v17, v14, v15);
        sub_10076468C();
        swift_getKeyPath();
        v31 = v43;
        v32 = v40;
        sub_10076F49C();

        (*(v39 + 8))(v11, v32);
        v34 = v41;
        v33 = v42;
        if ((*(v41 + 88))(v31, v42) == enum case for ShelfBackground.color(_:))
        {
          (*(v34 + 96))(v31, v33);
          v35 = *v31;
          v36 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
          v37 = sub_1007659CC();
          (*(*(v37 - 8) + 8))(v31 + v36, v37);
          [v38 setBackgroundColor:v35];

          (*(v30 + 8))(v17, v15);
        }

        else
        {
          (*(v30 + 8))(v17, v15);
          (*(v34 + 8))(v31, v33);
        }

        return;
      }
    }

    else
    {
      (*(v44 + 56))(v14, 1, 1, v15);
    }

    sub_10000CFBC(v14, &unk_10095DCF0, &unk_10078C910);
  }
}

uint64_t sub_1002DA030(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F2EC();
  __chkstk_darwin(v11 - 8);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076FD4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10075E11C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v78 - v22;
  v24 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v24 - 8);
  v83 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v82 = v78 - v27;
  __chkstk_darwin(v28);
  v81 = v78 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v78 - v32;
  v96.receiver = v5;
  v96.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v96, "frame", v31);
  IsEmpty = CGRectIsEmpty(v99);
  v89 = v5;
  v90 = v19;
  v86 = v14;
  v85 = v15;
  v84 = v17;
  if (IsEmpty || (v95.receiver = v5, v95.super_class = v88, objc_msgSendSuper2(&v95, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v81;
    (*(v19 + 56))(v81, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = sub_1007701BC();

  *&v93 = v39;

  sub_1002E0D70(&v93, v40);

  v14 = v93;
  v17 = *(v93 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v81;
    (*(v90 + 56))(v81, 1, 1, v18);
    v5 = v89;
LABEL_13:
    v14 = v86;
    v15 = v85;
    v33 = v78[1];
    v17 = v84;
LABEL_14:
    v80 = v18;
    sub_100023AD0(v37, v33, &unk_10094DE60, "ܱ\b");
    if (qword_1009412E0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v87 = v93 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  v33 = (v90 + 8);
  v41 = v89;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v90 + 16))(v23, v87 + *(v90 + 72) * v5, v18);
    isa = sub_10075E02C().super.isa;
    v43 = [v41 cellForItemAtIndexPath:isa];

    if (v43)
    {
      [v41 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [v43 frame];
      v101.origin.x = v52;
      v101.origin.y = v53;
      v101.size.width = v54;
      v101.size.height = v55;
      v100.origin.x = v45;
      v100.origin.y = v47;
      v100.size.width = v49;
      v100.size.height = v51;
      v56 = CGRectContainsRect(v100, v101);

      if (v56)
      {

        v57 = v90;
        v37 = v81;
        v18 = v15;
        (*(v90 + 32))(v81, v23, v15);
        (*(v57 + 56))(v37, 0, 1, v15);
        v5 = v41;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v58 = sub_10000A61C(v14, qword_1009A25E8);
  (*(v15 + 16))(v17, v58, v14);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100785C70;
  sub_10076F27C();
  type metadata accessor for CGSize(0);
  v60 = v59;
  *(&v94 + 1) = v59;
  *&v93 = a3;
  *(&v93 + 1) = a4;
  sub_10076F30C();
  sub_10000CFBC(&v93, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v92.receiver = v5;
  v92.super_class = v88;
  objc_msgSendSuper2(&v92, "frame");
  *(&v94 + 1) = v60;
  *&v93 = v61;
  *(&v93 + 1) = v62;
  sub_10076F30C();
  sub_10000CFBC(&v93, &unk_1009434C0, &qword_100783F60);
  sub_10076F2DC();
  v97._countAndFlagsBits = 0x6E696C6C6F726373;
  v97._object = 0xED0000206F742067;
  sub_10076F2CC(v97);
  v63 = v33;
  v64 = v33;
  v65 = v82;
  sub_100016E2C(v64, v82, &unk_10094DE60, "ܱ\b");
  v66 = v90;
  v67 = *(v90 + 48);
  v68 = v80;
  if (v67(v65, 1, v80) == 1)
  {
    sub_10000CFBC(v65, &unk_10094DE60, "ܱ\b");
    v93 = 0u;
    v94 = 0u;
  }

  else
  {
    *(&v94 + 1) = v68;
    v69 = sub_10000DB7C(&v93);
    (*(v66 + 32))(v69, v65, v68);
  }

  sub_10076F29C();
  sub_10000CFBC(&v93, &unk_1009434C0, &qword_100783F60);
  v98._countAndFlagsBits = 46;
  v98._object = 0xE100000000000000;
  sub_10076F2CC(v98);
  sub_10076F2FC();
  v70 = v86;
  v71 = v84;
  sub_10076FBCC();

  (*(v85 + 8))(v71, v70);
  v72 = v89;
  v91.receiver = v89;
  v91.super_class = v88;
  objc_msgSendSuper2(&v91, "setFrame:", a1, a2, a3, a4);
  v73 = v83;
  sub_100016E2C(v63, v83, &unk_10094DE60, "ܱ\b");
  if (v67(v73, 1, v68) == 1)
  {
    sub_10000CFBC(v63, &unk_10094DE60, "ܱ\b");
  }

  else
  {
    v74 = v90;
    v75 = v79;
    (*(v90 + 32))(v79, v73, v68);
    [v72 layoutIfNeeded];
    v76 = sub_10075E02C().super.isa;
    [v72 scrollToItemAtIndexPath:v76 atScrollPosition:1 animated:0];

    (*(v74 + 8))(v75, v68);
    v73 = v63;
  }

  return sub_10000CFBC(v73, &unk_10094DE60, "ܱ\b");
}

id sub_1002DAA80()
{
  ObjectType = swift_getObjectType();
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076FD4C();
  sub_10000A61C(v2, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  sub_10076F30C();
  sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  sub_10076F30C();
  sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_1002DADA0(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_10077087C())
  {
    v5 = sub_10077088C();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_10077088C() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_10077087C())
  {
    sub_10077088C();
  }
}

char *sub_1002DAF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_100951310) = 0;
  *(v2 + qword_10099E450) = 0;
  *(v2 + qword_100951318) = 0;
  sub_10076486C();
  v6 = qword_100951328;
  v7 = sub_10075DD7C();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_100951330;
  v9 = sub_10075E00C();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_100951340) = 0;
  v10 = v3 + qword_100951348;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_100951350) = 0;
  sub_10076A14C();
  sub_10076F5CC();
  *(v3 + qword_100951338) = v19;

  v11 = sub_10048462C(a1, a2);
  v12 = *&v11[qword_10099E390];

  sub_10076668C();

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100784500;
  *(v13 + 32) = sub_10076E3EC();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = sub_10076E88C();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_10077061C();
  swift_unknownObjectRelease();

  if (sub_1001E7518(v14))
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v17 + 71) = 0;
    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_100951350] = v17;

    return v11;
  }

  v16 = sub_1001E753C(v15);

  if (v16)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1002DB200()
{
  v1 = qword_100951340;
  v2 = *(v0 + qword_100951340);
  if (v2)
  {
    v3 = *(v0 + qword_100951340);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002DB284()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = sub_10076C03C();
  v24[3] = v2;
  v24[4] = sub_1002E6D08(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v3 = sub_10000DB7C(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v24);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setDelaysContentTouches:0];
  }

  if ((byte_1009626A0 & 1) == 0)
  {
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setMinimumLineHeight:13.0];
    [v13 setMaximumLineHeight:13.0];
    sub_10000A5D4(&unk_10094E7E0, qword_100785360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100784500;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v15 = sub_100016F40(0, &unk_10095D790, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v13;
    *(inited + 64) = v15;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v16 = objc_allocWithZone(NSNumber);
    v17 = NSParagraphStyleAttributeName;
    v18 = v13;
    v19 = NSBaselineOffsetAttributeName;
    v20 = [v16 initWithDouble:2.0];
    *(inited + 104) = sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
    *(inited + 80) = v20;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
    swift_arrayDestroy();
    sub_100016F40(0, &unk_10095B410, NSString_ptr);
    v21 = sub_100770F0C();
    type metadata accessor for Key(0);
    sub_1002E6D08(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    isa = sub_10076FE3C().super.isa;

    [v21 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v23 = [objc_allocWithZone(NSTextStorage) init];
    byte_1009626A0 = 1;
  }

  if (*&v1[qword_100951350])
  {

    sub_100189F48();
  }
}

void sub_1002DB6EC(void *a1)
{
  v1 = a1;
  sub_1002DB284();
}

uint64_t sub_1002DB734(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076A13C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  sub_10076A0FC();
  (*(v5 + 8))(v8, v4);
  return sub_1002DD388();
}

void sub_1002DB8F0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002DB734(a3);
}

uint64_t sub_1002DB944()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v6, v2);
}

void sub_1002DBAEC(void *a1)
{
  v1 = a1;
  sub_1002DB944();
}

id sub_1002DBB5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100770BFC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_100951350])
  {

    sub_10018ABAC();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100770BDC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100770BEC();
  sub_10000CFBC(v5, &unk_10094FD50, &unk_100788D10);
  sub_100770C3C();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100951348];
  v19 = *&v1[qword_100951348];
  v20 = v1[qword_100951348 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController, &unk_100799ED0);
      return sub_10076A6CC();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1002DBE6C(void *a1)
{
  v1 = a1;
  sub_1002DBB5C();
}

void sub_1002DBEC8(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

void sub_1002DC010(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076A13C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10076A0FC();
  (*(v11 + 8))(v13, v10);
}

void sub_1002DC14C(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = sub_10075E11C();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = sub_1007701BC();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (v77[2])
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_1002E6D00;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1006F5994;
            v100 = &unk_100890918;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController, &unk_100799ED0);
          sub_10076A65C();
          v43 = sub_10076341C();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10000CFBC(v38, &unk_1009428D0, &unk_100783DC0);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            sub_10076338C();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            sub_10076F49C();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100016E2C(v46, v40, &unk_1009568A0, &qword_100784890);
          sub_100016E2C(v23, v40 + v51, &unk_1009568A0, &qword_100784890);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100016E2C(v13, v72, &unk_1009568A0, &qword_100784890);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10000CFBC(v94, &unk_1009568A0, &qword_100784890);
            sub_10000CFBC(v46, &unk_1009568A0, &qword_100784890);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10000CFBC(v13, &qword_100942C28, &unk_1007898E0);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_1002E6D08(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v55 = sub_10076FF1C();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10000CFBC(v94, &unk_1009568A0, &qword_100784890);
          sub_10000CFBC(v93, &unk_1009568A0, &qword_100784890);
          v56(v53, v50);
          sub_10000CFBC(v13, &unk_1009568A0, &qword_100784890);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10000CFBC(v23, &unk_1009568A0, &qword_100784890);
        sub_10000CFBC(v46, &unk_1009568A0, &qword_100784890);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10000CFBC(v13, &unk_1009568A0, &qword_100784890);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004BBCC8(0, v58[2] + 1, 1);
            v58 = aBlock;
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            sub_1004BBCC8((v60 > 1), v61 + 1, 1);
            v58 = aBlock;
          }

          v58[2] = v61 + 1;
          v77 = v58;
          v57(v58 + v92 + v61 * v91, v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1002DCCE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(sub_10075E11C() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = sub_10075E02C().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = sub_10075E02C().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_1002DCE70(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002DC14C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1002DCEF0(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1002DCFD4(uint64_t a1, __n128 a2, double a3, double a4, double a5)
{
  v9 = a2.n128_f64[0];
  v10 = ASKDeviceTypeGetCurrent();
  v11 = sub_10076FF9C();
  v13 = v12;
  if (v11 == sub_10076FF9C() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_10077167C();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{v9, a3, a4, a5}];
}

uint64_t sub_1002DD0F0()
{
  v1 = v0;
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v10, v14, &unk_10094E1F0, qword_100783D20);
  if (v15)
  {
    sub_10000A570(v14, v13);
    sub_10000CFBC(v14, &unk_10094E1F0, qword_100783D20);
    sub_10000CF78(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v14, &unk_10094E1F0, qword_100783D20);
  }

  sub_100765E3C();
  sub_1002DD388();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002DD388()
{
  v1 = sub_10076F08C();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10076F0CC();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_10075DD7C();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_10000A5D4(&qword_100951950, &qword_10079AA90);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_10075E00C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_100951330;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100016E2C(v25, v17, &qword_100951950, &qword_10079AA90);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10000CFBC(v17, &qword_100951950, &qword_10079AA90);
LABEL_5:
    if (qword_1009412E0 != -1)
    {
      swift_once();
    }

    v34 = sub_10076FD4C();
    sub_10000A61C(v34, qword_1009A25E8);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v35 = v76;
    sub_10075DD6C();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_100951328;
    swift_beginAccess();
    sub_10003837C(v35, v27 + v36, &unk_10094FA00, &unk_100786640);
    swift_endAccess();
    v37 = v77;
    sub_10075DFFC();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_10003837C(v37, v27 + v38, &qword_100951950, &qword_10079AA90);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_100951328;
  swift_beginAccess();
  sub_100016E2C(&v0[v30], v8, &unk_10094FA00, &unk_100786640);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10000CFBC(v8, &unk_10094FA00, &unk_100786640);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_10000CF78(&v0[qword_100951320], *&v0[qword_100951320 + 24]);
  if (sub_10076184C())
  {
    sub_10075DFFC();
    sub_10075DD6C();
    sub_1002E6D08(&qword_100951990, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v42 = sub_10076FF1C();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_1002E668C(v41, v74))
    {
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v54 = sub_10076FD4C();
      sub_10000A61C(v54, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
    }

    else
    {
      if (qword_1009412E0 != -1)
      {
        swift_once();
      }

      v43 = sub_10076FD4C();
      sub_10000A61C(v43, qword_1009A25E8);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v59 = sub_10077068C();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_1002E663C;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890878;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_1002E6D08(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
      v50 = v68;
      v51 = v71;
      sub_1007712CC();
      v52 = v59;
      sub_10077069C();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_10003837C(v56, v27 + v57, &unk_10094FA00, &unk_100786640);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v53 = sub_10076FD4C();
  sub_10000A61C(v53, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBCC();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_1002DE1D8(void *a1)
{
  v1 = a1;
  sub_1002DD0F0();
}

uint64_t sub_1002DE220()
{
  v1 = v0;
  v2 = sub_10076A13C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v10, v14, &unk_10094E1F0, qword_100783D20);
  if (v15)
  {
    sub_10000A570(v14, v13);
    sub_10000CFBC(v14, &unk_10094E1F0, qword_100783D20);
    sub_10000CF78(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v14, &unk_10094E1F0, qword_100783D20);
  }

  sub_100765E2C();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  sub_10076A0FC();
  return (*(v3 + 8))(v5, v2);
}

void sub_1002DE4B0(void *a1)
{
  v1 = a1;
  sub_1002DE220();
}

uint64_t sub_1002DE4F8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController, &unk_100799ED0);
  v2 = sub_10076A6BC();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = sub_10076A6AC();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_10000CD08(v20, v18);
  sub_10000CD64(v18, v17);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v21, v18);
  sub_10000CD64(v18, v17);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  sub_10076F5CC();
  v10 = v19;
  sub_10076A6DC();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider(0);
  *(swift_allocObject() + qword_1009500A0) = v10;
  sub_10000A570(v18, v17);
  sub_10000A570(v17, &v16);

  v12 = sub_1007697CC();
  sub_10000CD74(v17);
  result = sub_10000CD74(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_1002DE84C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_1002E65B0();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002DE880()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1002E6D08(&qword_100951978, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1002E6D08(&qword_100951980, type metadata accessor for TodayPageShelfSupplementaryProvider, &unk_10079E0E0);

  return v2;
}

id sub_1002DE980()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006DE1A8();
  sub_10076A43C();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10076A40C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10076A42C();
  }

  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  sub_10000A5D4(&qword_100951968, &unk_10079AAF0);
  swift_allocObject();
  swift_retain_n();

  v4 = sub_10076A80C();
  v5 = sub_100071820(&qword_100951970, &qword_100951968, &unk_10079AAF0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v3 + 48) = sub_10076AF6C();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v7._rawValue = v3;
    sub_10076A3FC(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DEC18(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100951958, &unk_10079AAE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10073649C(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_1002E63D4();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10076A0DC();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *sub_1002DED90(double a1, double a2)
{
  v3 = v2;
  v4 = sub_10076C36C();
  v86 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v80 - v7;
  v9 = sub_10076C38C();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_100770BFC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TitleHeaderView.Style(0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 traitCollection];
  v22 = sub_1007706FC();

  if (v22)
  {
    v83 = *&v3[qword_10099E360];
    sub_100768B3C();
    v24 = sub_10077117C();

    if (v24)
    {
      v25 = qword_100951318;
      v26 = *&v3[qword_100951318];
      v27 = 0.0;
      v82 = v15;
      if (v26)
      {
        [v26 sizeToFit];
        v28 = *&v3[v25];
        v29 = 0.0;
        if (v28)
        {
          [v28 frame];
          v27 = v30;
          v29 = v31;
        }
      }

      else
      {
        v29 = 0.0;
      }

      result = [v3 view];
      if (result)
      {
        v33 = result;
        v80 = v27;
        v81 = v9;
        v34 = [result traitCollection];

        sub_100570CF0(v34, v88);
        result = [v3 view];
        if (result)
        {
          v35 = result;
          v36 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v37 = sub_100770BDC();
          v38 = *(v37 - 8);
          (*(v38 + 104))(v13, v36, v37);
          (*(v38 + 56))(v13, 0, 1, v37);
          sub_100770BEC();
          sub_10000CFBC(v13, &unk_10094FD50, &unk_100788D10);
          sub_100770BBC();

          (*(v82 + 8))(v17, v14);
          v39 = v86;
          (*(v86 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v4);
          (*(v39 + 16))(v85, v8, v4);
          v40 = 0.0;
          sub_1005AC334(0.0);
          v41 = v87;
          sub_10076C33C();
          (*(v39 + 8))(v8, v4);
          if ((sub_1000735EC() & 1) == 0)
          {
            v40 = sub_1000D3EB4();
          }

          sub_10076C2EC();
          v43 = v42;
          sub_10076C2EC();
          v45 = v44;
          v46 = [v3 traitCollection];
          v47 = sub_1007706EC();

          if (v47)
          {
            v48 = sub_100768B8C();
          }

          else
          {
            v48 = sub_100768B3C();
          }

          v86 = v48;
          v50 = v49;
          v51 = [v3 traitCollection];
          v52 = sub_1007706EC();

          if (v52)
          {
            v53 = sub_100768B5C();
            v55 = v54;
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          v56 = [v3 traitCollection];
          v57 = sub_1007706EC();

          if (v57)
          {
            v58 = sub_100768B6C();
            v60 = v59;
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          sub_10076C24C();
          v62 = v61;
          sub_10076C26C();
          v64 = v63;
          result = [v3 view];
          if (result)
          {
            v65 = result;
            v66 = v88;
            sub_1002E232C(0, 0, 0, v86, v50, 0, v53, v55, v62, v64, v80, v29, v40, v43, 0.0, v45, v58, v60, 2, v88, 0, v65);
            v68 = v67;

            v69 = objc_opt_self();
            v70 = [v69 fractionalWidthDimension:1.0];
            v71 = [v69 absoluteDimension:v68];
            v72 = [objc_opt_self() sizeWithWidthDimension:v70 heightDimension:v71];

            v73 = v72;
            v74 = sub_10076FF6C();
            v75 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v73 elementKind:v74 alignment:1];

            v76 = v75;
            sub_10076C31C();
            [v76 setContentInsets:?];

            v78 = sub_1002E5378(v77);
            sub_10000A5D4(&unk_100942870, &qword_100784460);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007841E0;
            *(inited + 32) = v76;
            v89 = v78;
            sub_1000F9964(inited);

            (*(v84 + 8))(v41, v81);
            sub_1002E6374(v66, type metadata accessor for TitleHeaderView.Style);
            return v89;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_1002E5378(v23);
}

double sub_1002DF6B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x80000001007D7F90 == a2 || (sub_10077167C() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10000A5D4(&qword_10094A0F8, qword_10078CE58);
    a3[4] = sub_100071820(&qword_10094A100, &qword_10094A0F8, qword_10078CE58, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a3);
    type metadata accessor for TitleHeaderView(0);

    sub_10076A3BC();
  }

  else
  {

    return sub_1002D921C(a1, a2, a3);
  }

  return result;
}

void sub_1002DF860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v51[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((sub_1000735EC() & 1) == 0)
    {
      v14 = v13;
      sub_1000D3EB4();
    }

    sub_1007704EC();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v15 = *&v13[qword_100951318];
    v16 = v15;
    sub_10018ED24(v15);
    v17 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v17 = sub_1002091B8;
    v17[1] = 0;

    v18 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
    [v18 setNumberOfLines:2];
    v19 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
    v20 = *&UIEdgeInsetsZero.bottom;
    *v19 = *&UIEdgeInsetsZero.top;
    v19[1] = v20;
    [a1 setNeedsLayout];
    v21 = v13;
    v22 = [v21 traitCollection];

    sub_100570CF0(v22, v11);

    sub_1002E630C(v11, v8, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v8);
    v23 = [v21 traitCollection];

    v24 = sub_1007706EC();
    if (v24)
    {
      v25 = v21;

      sub_100768B8C();
      v27 = v26;

      if (v27)
      {
        v28 = sub_10076FF6C();
      }

      else
      {
        v28 = 0;
      }

      [v18 setText:v28];

      v32 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
      if (v32)
      {

        v33 = v32;
        sub_100768B5C();
        v35 = v34;

        if (v35)
        {
          v36 = sub_10076FF6C();
        }

        else
        {
          v36 = 0;
        }

        [v33 setText:v36];
      }

      v39 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
      if (v39)
      {

        v40 = v39;

        sub_100768B6C();
        v42 = v41;

        if (v42)
        {
          v43 = sub_10076FF6C();
        }

        else
        {
          v43 = 0;
        }

        [v40 setText:v43];
      }

      else
      {
      }
    }

    else
    {

      sub_100768B3C();
      v30 = v29;

      if (v30)
      {
        v31 = sub_10076FF6C();
      }

      else
      {
        v31 = 0;
      }

      [v18 setText:v31];

      v37 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
      if (v37)
      {
        [v37 setText:0];
      }

      v38 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
      if (v38)
      {
        [v38 setText:0];
      }
    }

    [v18 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_1001E7584(v44) & 1) == 0 || (v45 = [a1 gestureRecognizers]) != 0 && (v46 = v45, sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr), v47 = sub_1007701BC(), v46, v48 = sub_1002DB200(), v52 = v48, __chkstk_darwin(v48), *&v51[-16] = &v52, v49 = sub_1001A5D04(sub_1002E6290, &v51[-32], v47), v48, , (v49))
    {
      sub_1002E6374(v11, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v50 = sub_1002DB200();
      [a1 addGestureRecognizer:v50];

      sub_1002E6374(v11, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_1002DFE98(uint64_t a1)
{
  v37 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075DB7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_1002E630C(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1002E6374(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  sub_100765E7C();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100016E2C(v11, v3, &unk_1009435D0, &qword_100785850);
  v37 = v21;
  sub_100016E2C(v8, &v3[v21], &unk_1009435D0, &qword_100785850);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100016E2C(v3, v36, &unk_1009435D0, &qword_100785850);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_1002E6D08(&qword_100944C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = v24;
      v23 = sub_10076FF1C();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v11, &unk_1009435D0, &qword_100785850);
      v31(v33, v15);
      v31(v30, v15);
      sub_10000CFBC(v3, &unk_1009435D0, &qword_100785850);
      return v23 & 1;
    }

    sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v11, &unk_1009435D0, &qword_100785850);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v11, &unk_1009435D0, &qword_100785850);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10000CFBC(v3, &unk_100964140, &unk_1007869B0);
    goto LABEL_9;
  }

  sub_10000CFBC(v3, &unk_1009435D0, &qword_100785850);
  v23 = 1;
  return v23 & 1;
}

double sub_1002E0434(void *a1)
{
  v2 = sub_10076F08C();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076F0EC();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_100768B4C();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = sub_10076FF6C();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v28 = sub_10077068C();
      sub_10076F0DC();
      sub_10076F15C();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_1002E6C6C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_1008908C8;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002E6D08(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
      v23 = v27;
      sub_1007712CC();
      v24 = v28;
      sub_10077064C();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      v29(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002E0934(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E0434(v4);
}

double sub_1002E099C()
{

  sub_10000CD74((v0 + qword_100951320));
  sub_10000CFBC(v0 + qword_100951328, &unk_10094FA00, &unk_100786640);
  sub_10000CFBC(v0 + qword_100951330, &qword_100951950, &qword_10079AA90);

  return result;
}

double sub_1002E0A6C(uint64_t a1)
{

  sub_10000CD74((a1 + qword_100951320));
  sub_10000CFBC(a1 + qword_100951328, &unk_10094FA00, &unk_100786640);
  sub_10000CFBC(a1 + qword_100951330, &qword_100951950, &qword_10079AA90);

  return result;
}

uint64_t type metadata accessor for TodayDiffablePageViewController(uint64_t a1)
{
  result = qword_100951380;
  if (!qword_100951380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E0B94(uint64_t a1)
{
  sub_1002E0CC8(319, &qword_100951390, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1002E0CC8(319, &unk_100951398, &type metadata accessor for TimeZone);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1002E0CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002E0D70(uint64_t *a1, uint64_t a2)
{
  v3 = *(sub_10075E11C() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10043FD24(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1002E0E18(v6);
  *a1 = v4;
}

void sub_1002E0E18(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
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
        sub_10075E11C();
        v6 = sub_10077023C();
        v6[2] = v5;
      }

      v7 = *(sub_10075E11C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002E1208(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_1002E0F44(0, v2, 1, a1);
  }
}

void sub_1002E0F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10075E11C();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v26 = sub_10076FF0C();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002E1208(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10043FB64(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1002E1C30((*a3 + v9[9] * v116), (*a3 + v9[9] * *&v20[16 * v115 + 16]), *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10043FB64(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_10043FAD8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if ((v19 + 1) >= v18)
    {
      v34 = (v19 + 1);
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v133) = sub_10076FF0C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_10076FF0C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = (v32 - 1);
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (&v21[v119] >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = &v21[v119];
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10049D820(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_10049D820((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1002E1C30((*a3 + v9[9] * v96), (*a3 + v9[9] * *&v20[16 * v57 + 32]), *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10043FB64(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_10043FAD8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = &v21[-v34];
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v109 = sub_10076FF0C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = (v130 - 1);
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1002E1C30(char *a1, char *a2, unint64_t a3, char *a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = &a4[v17];
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = &a4[v17];
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = &a2[v27];
        v46 = &a2[v27];
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = &v28[v27];
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, &v28[v27], v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v34) = sub_10076FF0C();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || &a1[v16] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = &a4[v16];
    v52 = &a4[v16];
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = (v8 + 16);
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        (v21)(v49, a4, v20);
        sub_1002E6D08(&qword_100951948, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v21) = sub_10076FF0C();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = &v24[a2];
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 = &v24[a4];
        }

        a1 = &v24[a1];
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1002E2224(&v54, &v53, &v52);
}

uint64_t sub_1002E2224(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10075E11C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1002E232C(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char *a18, char *a19, uint64_t a20, char a21, void *a22)
{
  v343 = a8;
  v297 = a7;
  v337 = a6;
  v338 = a5;
  v332 = a4;
  v333 = a2;
  v306 = a3;
  v334 = a1;
  v329 = a9;
  v330 = a10;
  v349 = a20;
  v24 = sub_10076D39C();
  v304 = *(v24 - 8);
  v305 = v24;
  __chkstk_darwin(v24);
  v303 = v296 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_10076D1AC();
  v300 = *(v302 - 8);
  __chkstk_darwin(v302);
  v299 = v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_10076D9AC();
  v359 = *(v344 - 8);
  __chkstk_darwin(v344);
  v301 = v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_100763BCC();
  v324 = *(v326 - 8);
  __chkstk_darwin(v326);
  v325 = v296 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100763BBC();
  v321 = *(v29 - 8);
  v322 = v29;
  __chkstk_darwin(v29);
  v323 = v296 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100763BAC();
  v318 = *(v31 - 8);
  v319 = v31;
  __chkstk_darwin(v31);
  v320 = v296 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_100763BFC();
  v331 = *(v328 - 8);
  __chkstk_darwin(v328);
  v327 = v296 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100763BEC();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v311 = v296 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v356 = v296 - v38;
  __chkstk_darwin(v39);
  v355 = v296 - v40;
  __chkstk_darwin(v41);
  v347 = v296 - v42;
  v43 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v43 - 8);
  v309 = v296 - v44;
  v45 = sub_10076997C();
  v340 = *(v45 - 8);
  v341 = v45;
  __chkstk_darwin(v45);
  v339 = v296 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10075D78C();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v296 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v308 = *(v51 - 1);
  __chkstk_darwin(v51);
  v348 = v296 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v312 = v296 - v54;
  __chkstk_darwin(v55);
  v57 = v296 - v56;
  v58 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  v59 = *(v58 - 8);
  v316 = v58;
  v317 = v59;
  __chkstk_darwin(v58);
  v298 = v296 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v352 = v296 - v62;
  __chkstk_darwin(v63);
  v351 = v296 - v64;
  __chkstk_darwin(v65);
  v310 = v296 - v66;
  __chkstk_darwin(v67);
  v354 = v296 - v68;
  __chkstk_darwin(v69);
  v353 = v296 - v70;
  __chkstk_darwin(v71);
  v346 = v296 - v72;
  __chkstk_darwin(v73);
  v307 = v296 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = v296 - v77;
  v336 = a22;
  v79 = [a22 traitCollection];
  v357 = v34;
  v358 = v35;
  v345 = v78;
  v350 = v51;
  v342 = v79;
  v335 = v47;
  v314 = v50;
  v315 = v48;
  if (!v333)
  {
    v92 = *(v35 + 56);
    v92(v78, 1, 1, v34);
    v93 = v344;
    goto LABEL_23;
  }

  v80 = v333;
  v81 = v349;
  sub_1002E630C(v349, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v79 = sub_100770B3C();
  *&v395 = v334;
  *(&v395 + 1) = v80;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v79 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v296[1] = v84;
  v313 = v57;
  if (!v306)
  {
    goto LABEL_15;
  }

  v296[0] = v79;

  sub_10076BE2C();
  if (v87 && (v88 = [objc_opt_self() configurationWithFont:v296[0]], v89 = sub_10076FF6C(), , v90 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v89, v88), v89, v88, v51 = v350, v90))
  {
    [v90 size];
    sub_10076DDDC();
    swift_allocObject();
    v91 = sub_10076DDBC();
  }

  else
  {
    v94 = v51[6];
    v95 = sub_10076D3DC();
    v96 = v299;
    (*(*(v95 - 8) + 16))(v299, v81 + v94, v95);
    v97 = v300;
    v98 = v302;
    (*(v300 + 104))(v96, enum case for FontSource.useCase(_:), v302);
    *(&v396 + 1) = v98;
    v397 = &protocol witness table for FontSource;
    v99 = sub_10000DB7C(&v395);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v301;
    sub_10076D9BC();
    (*(v97 + 8))(v96, v98);
    sub_10076D99C();
    sub_10076BEFC();
    v101 = v303;
    sub_10076D3AC();
    sub_10076D31C();

    (*(v304 + 8))(v101, v305);
    (*(v359 + 8))(v100, v344);
    sub_10076DDDC();
    swift_allocObject();
    v91 = sub_10076DDBC();
  }

  v79 = v296[0];
  if (v91)
  {
    *(&v396 + 1) = sub_10076DDDC();
    v397 = &protocol witness table for LayoutViewPlaceholder;
    v333 = v91;
    *&v395 = v91;
  }

  else
  {
LABEL_15:
    v333 = 0;
    v397 = 0;
    v395 = 0u;
    v396 = 0u;
  }

  v394 = 0;
  v392 = 0u;
  v393 = 0u;
  v391 = 0;
  v389 = 0u;
  v390 = 0u;
  v102 = sub_10076C04C();
  v387 = v102;
  v388 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_10000DB7C(v386);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v79;

  v105 = v104;
  sub_10076C90C();
  sub_10000CD74(v386);
  v106 = v339;
  sub_10076996C();
  sub_10076994C();
  (*(v340 + 8))(v106, v341);
  sub_100016E2C(&v395, v385, &unk_10094DA00, &qword_100783FA0);
  v107 = v387;
  v108 = v388;
  v109 = sub_10000CF78(v386, v387);
  v383 = v107;
  v384 = *(v108 + 8);
  v110 = sub_10000DB7C(v382);
  (*(*(v107 - 8) + 16))(v110, v109, v107);
  v111 = v350;
  v112 = v313;
  v113 = *&v313[v350[8]];
  v380 = &type metadata for Float;
  v381 = &protocol witness table for Float;
  v379 = v113;
  v114 = v350[9];
  v115 = v344;
  v377 = v344;
  v378 = &protocol witness table for StaticDimension;
  v116 = sub_10000DB7C(v376);
  v117 = *(v359 + 16);
  v117(v116, &v112[v114], v115);
  v118 = v111[10];
  v374 = v115;
  v375 = &protocol witness table for StaticDimension;
  v119 = sub_10000DB7C(v373);
  v117(v119, &v112[v118], v115);
  sub_100016E2C(&v392, &v367, &qword_10094BB30, qword_100796E40);
  v120 = *(&v368 + 1);
  if (*(&v368 + 1))
  {
    v121 = v369;
    v122 = sub_10000CF78(&v367, *(&v368 + 1));
    *(&v371 + 1) = v120;
    v372 = *(v121 + 8);
    v123 = sub_10000DB7C(&v370);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_10000CD74(&v367);
  }

  else
  {
    sub_10000CFBC(&v367, &qword_10094BB30, qword_100796E40);
    v370 = 0u;
    v371 = 0u;
    v372 = 0;
  }

  v124 = v307;
  sub_100016E2C(&v389, v364, &qword_10094BB30, qword_100796E40);
  v125 = v365;
  if (v365)
  {
    v126 = v366;
    v127 = sub_10000CF78(v364, v365);
    *(&v368 + 1) = v125;
    v369 = *(v126 + 8);
    v128 = sub_10000DB7C(&v367);
    (*(*(v125 - 8) + 16))(v128, v127, v125);
    sub_10000CD74(v364);
  }

  else
  {
    sub_10000CFBC(v364, &qword_10094BB30, qword_100796E40);
    v367 = 0u;
    v368 = 0u;
    v369 = 0;
  }

  v129 = v350;
  v130 = v313;
  sub_10000A570(&v313[v350[12]], v364);
  sub_10000A570(v130 + v129[13], v363);
  v362 = &protocol witness table for Double;
  v361 = &type metadata for Double;
  v360 = 0x4020000000000000;
  sub_100763BDC();

  sub_10000CFBC(&v389, &qword_10094BB30, qword_100796E40);
  v51 = v129;
  sub_10000CFBC(&v392, &qword_10094BB30, qword_100796E40);
  sub_1002E6374(v130, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CD74(v386);

  sub_10000CFBC(&v395, &unk_10094DA00, &qword_100783FA0);
  v34 = v357;
  v92 = *(v358 + 56);
  v92(v124, 0, 1, v357);
  sub_100023AD0(v124, v345, &unk_10094BB20, &unk_10079AAD0);
  v79 = v342;
  v93 = v344;
LABEL_23:
  v131 = v338;
  if (!v343)
  {
LABEL_26:
    v92(v346, 1, 1, v34);
    v397 = 0;
    v395 = 0u;
    v396 = 0u;
    v392 = 0u;
    v393 = 0u;
    v394 = 0;
    goto LABEL_27;
  }

  v132 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v309;
  sub_100016E2C(v349 + *(v132 + 24), v309, &qword_100949718, &unk_10078CE10);
  if ((*(v308 + 48))(v133, 1, v51) == 1)
  {
    sub_10000CFBC(v133, &qword_100949718, &unk_10078CE10);
    goto LABEL_26;
  }

  sub_10013B084(v133, v312, v134);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v138 = sub_100770B3C();
  *&v395 = v297;
  *(&v395 + 1) = v343;

  v139 = v314;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v141 = v140;
  (*(v315 + 8))(v139, v335);

  v142 = 0;
  if (v141)
  {
LABEL_37:
    v146 = v138;
    if (*(v349 + *(v132 + 36)) == 2)
    {
      v313 = a18;
      v333 = a17;
      v147 = sub_10076C04C();
      v308 = v142;
      v148 = v147;
      *(&v396 + 1) = v147;
      v309 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v397 = v309;
      v149 = sub_10000DB7C(&v395);
      v150 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v151 = *(*(v148 - 8) + 104);
      v334 = v92;
      v151(v149, enum case for Feature.measurement_with_labelplaceholder(_:), v148);
      v152 = v146;

      v153 = v152;
      sub_10076C90C();
      sub_10000CD74(&v395);
      v154 = v339;
      sub_10076996C();
      sub_10076994C();
      v155 = v341;
      v156 = *(v340 + 8);
      v156(v154, v341);
      *(&v393 + 1) = v148;
      v394 = v309;
      v157 = sub_10000DB7C(&v392);
      v151(v157, v150, v148);
      v57 = v335;
      v93 = v344;

      v158 = v153;
      sub_10076C90C();
      sub_10000CD74(&v392);
      sub_10076996C();
      sub_10076994C();

      v156(v154, v155);
      v131 = v338;
      sub_1002E6374(v312, type metadata accessor for TitleHeaderView.TextConfiguration);

      v334(v346, 1, 1, v357);
      v51 = v350;
      v79 = v342;
LABEL_28:
      v343 = type metadata accessor for TitleHeaderView.Style(0);
      v334 = (v349 + v343[5]);
      sub_1002E630C(v334, v348, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      v338 = sub_100770B3C();
      if (!v131)
      {
        goto LABEL_43;
      }

      v135 = v93;
      v48 = v332;
      *&v389 = v332;
      *(&v389 + 1) = v131;

      v50 = v314;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      v137 = v136;
      (*(v315 + 8))(v50, v57);

      if (v137)
      {
LABEL_42:
        v93 = v135;
        if (!v337)
        {
          goto LABEL_50;
        }

LABEL_43:
        v335 = a19;

        sub_10076BE2C();
        if (v161 && (v162 = [objc_opt_self() configurationWithFont:v338], v163 = sub_10076FF6C(), , v164 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v163, v162), v163, v51 = v350, v162, v164))
        {
          [v164 size];
          sub_10076DDDC();
          swift_allocObject();
          v165 = sub_10076DDBC();
        }

        else
        {
          v166 = v93;
          v167 = v334;
          v168 = v51[6];
          v169 = sub_10076D3DC();
          v170 = v167 + v168;
          v93 = v166;
          v171 = v299;
          (*(*(v169 - 8) + 16))(v299, v170, v169);
          v172 = v300;
          v173 = v302;
          (*(v300 + 104))(v171, enum case for FontSource.useCase(_:), v302);
          *(&v390 + 1) = v173;
          v391 = &protocol witness table for FontSource;
          v174 = sub_10000DB7C(&v389);
          (*(v172 + 16))(v174, v171, v173);

          v175 = v301;
          sub_10076D9BC();
          (*(v172 + 8))(v171, v173);
          sub_10076D99C();
          sub_10076BEFC();
          v176 = v303;
          sub_10076D3AC();
          sub_10076D31C();

          (*(v304 + 8))(v176, v305);
          (*(v359 + 8))(v175, v93);
          sub_10076DDDC();
          swift_allocObject();
          v165 = sub_10076DDBC();
        }

        if (v165)
        {
          v177 = sub_10076DDDC();
          v391 = &protocol witness table for LayoutViewPlaceholder;
          *(&v390 + 1) = v177;
          v337 = v165;
          *&v389 = v165;
        }

        else
        {
LABEL_50:
          v337 = 0;
          v391 = 0;
          v389 = 0u;
          v390 = 0u;
        }

        v178 = sub_10076C04C();
        v387 = v178;
        v388 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v179 = sub_10000DB7C(v386);
        (*(*(v178 - 8) + 104))(v179, enum case for Feature.measurement_with_labelplaceholder(_:), v178);

        v180 = v338;
        sub_10076C90C();
        sub_10000CD74(v386);
        v181 = v339;
        v338 = v180;
        sub_10076996C();
        sub_10076994C();
        (*(v340 + 8))(v181, v341);
        sub_100016E2C(&v389, v385, &unk_10094DA00, &qword_100783FA0);
        v182 = v387;
        v183 = v388;
        v184 = sub_10000CF78(v386, v387);
        v383 = v182;
        v384 = *(v183 + 8);
        v185 = sub_10000DB7C(v382);
        (*(*(v182 - 8) + 16))(v185, v184, v182);
        v186 = v350;
        v187 = v348;
        v188 = *(v348 + v350[8]);
        v380 = &type metadata for Float;
        v381 = &protocol witness table for Float;
        v379 = v188;
        v189 = v350[9];
        v377 = v93;
        v378 = &protocol witness table for StaticDimension;
        v190 = sub_10000DB7C(v376);
        v191 = *(v359 + 16);
        v191(v190, v187 + v189, v93);
        v192 = v186[10];
        v374 = v93;
        v375 = &protocol witness table for StaticDimension;
        v193 = sub_10000DB7C(v373);
        v191(v193, v187 + v192, v93);
        sub_100016E2C(&v395, &v367, &qword_10094BB30, qword_100796E40);
        v194 = *(&v368 + 1);
        if (*(&v368 + 1))
        {
          v195 = v369;
          v196 = sub_10000CF78(&v367, *(&v368 + 1));
          *(&v371 + 1) = v194;
          v372 = *(v195 + 8);
          v197 = sub_10000DB7C(&v370);
          (*(*(v194 - 8) + 16))(v197, v196, v194);
          sub_10000CD74(&v367);
        }

        else
        {
          sub_10000CFBC(&v367, &qword_10094BB30, qword_100796E40);
          v370 = 0u;
          v371 = 0u;
          v372 = 0;
        }

        v198 = v351;
        v199 = v349;
        sub_100016E2C(&v392, v364, &qword_10094BB30, qword_100796E40);
        v200 = v365;
        if (v365)
        {
          v201 = v366;
          v202 = sub_10000CF78(v364, v365);
          *(&v368 + 1) = v200;
          v369 = *(v201 + 8);
          v203 = sub_10000DB7C(&v367);
          (*(*(v200 - 8) + 16))(v203, v202, v200);
          sub_10000CD74(v364);
        }

        else
        {
          sub_10000CFBC(v364, &qword_10094BB30, qword_100796E40);
          v367 = 0u;
          v368 = 0u;
          v369 = 0;
        }

        v204 = v352;
        v205 = v350;
        v206 = v348;
        sub_10000A570(v348 + v350[12], v364);
        sub_10000A570(v206 + v205[13], v363);
        v362 = &protocol witness table for Double;
        v361 = &type metadata for Double;
        v360 = 0x4020000000000000;
        sub_100763BDC();
        sub_10000CD74(v386);
        sub_10000CFBC(&v389, &unk_10094DA00, &qword_100783FA0);
        v207 = *(v199 + v343[9]);
        sub_10000A5D4(&qword_10094BB38, &unk_100791CD0);
        v359 = *(v317 + 72);
        v208 = (*(v317 + 80) + 32) & ~*(v317 + 80);
        if (v207)
        {
          if (v207 != 1)
          {
            v237 = v359;
            v344 = swift_allocObject();
            v238 = v344 + v208;
            sub_100016E2C(v345, v344 + v208, &unk_10094BB20, &unk_10079AAD0);
            v239 = v357;
            v240 = v358;
            (*(v358 + 16))(v238 + v237, v347, v357);
            (*(v240 + 56))(v238 + v237, 0, 1, v239);
            v241 = v310;
            sub_100016E2C(v238, v310, &unk_10094BB20, &unk_10079AAD0);
            v242 = v298;
            sub_100023AD0(v241, v298, &unk_10094BB20, &unk_10079AAD0);
            v243 = *(v240 + 48);
            v244 = (v240 + 32);
            v245 = v243(v242, 1, v239);
            v356 = (v240 + 32);
            if (v245 == 1)
            {
              sub_10000CFBC(v242, &unk_10094BB20, &unk_10079AAD0);
              v246 = _swiftEmptyArrayStorage;
            }

            else
            {
              v247 = *v244;
              (*v244)(v311, v242, v239);
              v246 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v246 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v249 = *(v246 + 2);
              v248 = *(v246 + 3);
              if (v249 >= v248 >> 1)
              {
                v246 = sub_10049E330((v248 > 1), v249 + 1, 1, v246);
              }

              *(v246 + 2) = v249 + 1;
              v250 = &v246[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v249];
              v239 = v357;
              v247(v250, v311, v357);
              v242 = v298;
            }

            v251 = v310;
            sub_100016E2C(v238 + v359, v310, &unk_10094BB20, &unk_10079AAD0);
            sub_100023AD0(v251, v242, &unk_10094BB20, &unk_10079AAD0);
            if (v243(v242, 1, v239) == 1)
            {
              sub_10000CFBC(v242, &unk_10094BB20, &unk_10079AAD0);
              v236 = v349;
              v79 = v345;
            }

            else
            {
              v252 = v239;
              v253 = *v356;
              (*v356)(v311, v242, v252);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v236 = v349;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v246 = sub_10049E330(0, *(v246 + 2) + 1, 1, v246);
              }

              v79 = v345;
              v256 = *(v246 + 2);
              v255 = *(v246 + 3);
              if (v256 >= v255 >> 1)
              {
                v246 = sub_10049E330((v255 > 1), v256 + 1, 1, v246);
              }

              *(v246 + 2) = v256 + 1;
              v253(&v246[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v256], v311, v357);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v57 = v327;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v257 = 0;
              v258 = 0;
              v259 = 0;
              *&v390 = 0;
              *(&v389 + 1) = 0;
            }

            else
            {
              v258 = sub_10076DDDC();
              swift_allocObject();
              v257 = sub_10076DDBC();
              v259 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v389 = v257;
            *(&v390 + 1) = v258;
            v391 = v259;
            sub_100016E2C(&v389, v386, &unk_10094DA00, &qword_100783FA0);
            v260 = v343;
            v261 = *(v236 + v343[14]);
            v385[3] = &type metadata for CGFloat;
            v385[4] = &protocol witness table for CGFloat;
            v385[0] = v261;
            (*(v318 + 16))(v320, v236 + v343[10], v319);
            (*(v321 + 16))(v323, v236 + v260[11], v322);
            (*(v324 + 104))(v325, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v326);
            sub_100763B7C();
            sub_100770ACC();
            sub_1002E6D08(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
            v48 = v328;
            sub_10076D2AC();
            v386[0] = v262;
            v386[1] = v263;
            sub_100770ADC();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v331 + 8))(v57, v48);
              (*(v358 + 8))(v347, v357);
              sub_1002E6374(v348, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v392, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(&v395, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(v346, &unk_10094BB20, &unk_10079AAD0);
              sub_10000CFBC(v79, &unk_10094BB20, &unk_10079AAD0);
              return sub_10000CFBC(&v389, &unk_10094DA00, &qword_100783FA0);
            }

            v264 = v357;
            v51 = v358;
            v50 = v342;
            if (qword_10093FC38 != -1)
            {
              swift_once();
            }

            v265 = sub_10000A61C(v350, qword_10099DF58);
            if (sub_10019942C(v334, v265))
            {

              (*(v331 + 8))(v57, v48);
              (*(v51 + 1))(v347, v264);
              sub_1002E6374(v348, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v392, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(&v395, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(v346, &unk_10094BB20, &unk_10079AAD0);
              sub_10000CFBC(v79, &unk_10094BB20, &unk_10079AAD0);
              return sub_10000CFBC(&v389, &unk_10094DA00, &qword_100783FA0);
            }

            if (qword_10093FC40 == -1)
            {
LABEL_105:
              v266 = sub_10000A61C(v350, qword_10099DF70);
              sub_10019942C(v334, v266);

              (*(v331 + 8))(v57, v48);
              (*(v51 + 1))(v347, v357);
              sub_1002E6374(v348, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000CFBC(&v392, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(&v395, &qword_10094BB30, qword_100796E40);
              sub_10000CFBC(v346, &unk_10094BB20, &unk_10079AAD0);
              sub_10000CFBC(v79, &unk_10094BB20, &unk_10079AAD0);
              return sub_10000CFBC(&v389, &unk_10094DA00, &qword_100783FA0);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v209 = v359;
          v344 = swift_allocObject();
          v210 = v344 + v208;
          sub_100016E2C(v345, v344 + v208, &unk_10094BB20, &unk_10079AAD0);
          v212 = v357;
          v211 = v358;
          (*(v358 + 16))(v210 + v209, v347, v357);
          v213 = *(v211 + 56);
          v211 += 56;
          v213(v210 + v209, 0, 1, v212);
          sub_100016E2C(v346, v210 + 2 * v209, &unk_10094BB20, &unk_10079AAD0);
          v214 = (v211 - 8);
          v355 = (v211 - 24);
          v215 = v212;
          v216 = _swiftEmptyArrayStorage;
          v217 = 3;
          v353 = v210;
          do
          {
            v218 = v354;
            sub_100016E2C(v210, v354, &unk_10094BB20, &unk_10079AAD0);
            sub_100023AD0(v218, v204, &unk_10094BB20, &unk_10079AAD0);
            if ((*v214)(v204, 1, v215) == 1)
            {
              sub_10000CFBC(v204, &unk_10094BB20, &unk_10079AAD0);
            }

            else
            {
              v219 = *v355;
              (*v355)(v356, v204, v215);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v216 = sub_10049E330(0, *(v216 + 2) + 1, 1, v216);
              }

              v221 = *(v216 + 2);
              v220 = *(v216 + 3);
              if (v221 >= v220 >> 1)
              {
                v216 = sub_10049E330((v220 > 1), v221 + 1, 1, v216);
              }

              *(v216 + 2) = v221 + 1;
              v215 = v357;
              v219(&v216[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v221], v356, v357);
              v204 = v352;
            }

            v210 += v359;
            --v217;
          }

          while (v217);
        }

        else
        {
          v222 = v359;
          v223 = 2 * v359;
          v344 = swift_allocObject();
          v224 = v344 + v208;
          sub_100016E2C(v345, v344 + v208, &unk_10094BB20, &unk_10079AAD0);
          sub_100016E2C(v346, v224 + v222, &unk_10094BB20, &unk_10079AAD0);
          v226 = v357;
          v225 = v358;
          (*(v358 + 16))(v224 + v223, v347, v357);
          v227 = *(v225 + 56);
          v225 += 56;
          v227(v224 + v223, 0, 1, v226);
          v228 = (v225 - 8);
          v356 = (v225 - 24);
          v229 = v226;
          v230 = _swiftEmptyArrayStorage;
          v231 = 3;
          v354 = v224;
          do
          {
            v232 = v353;
            sub_100016E2C(v224, v353, &unk_10094BB20, &unk_10079AAD0);
            sub_100023AD0(v232, v198, &unk_10094BB20, &unk_10079AAD0);
            if ((*v228)(v198, 1, v229) == 1)
            {
              sub_10000CFBC(v198, &unk_10094BB20, &unk_10079AAD0);
            }

            else
            {
              v233 = *v356;
              (*v356)(v355, v198, v229);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v230 = sub_10049E330(0, *(v230 + 2) + 1, 1, v230);
              }

              v235 = *(v230 + 2);
              v234 = *(v230 + 3);
              if (v235 >= v234 >> 1)
              {
                v230 = sub_10049E330((v234 > 1), v235 + 1, 1, v230);
              }

              *(v230 + 2) = v235 + 1;
              v229 = v357;
              v233(&v230[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v235], v355, v357);
              v198 = v351;
            }

            v224 += v359;
            --v231;
          }

          while (v231);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v236 = v349;
        v79 = v345;
        goto LABEL_94;
      }

      [v338 lineHeight];
      v160 = ceil(v159 * 1.3);
      if ((*&v160 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v160 > -9.22337204e18)
        {
          if (v160 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v397 = 0;
    v395 = 0u;
    v396 = 0u;
    v394 = 0;
    v392 = 0u;
    v393 = 0u;
    v391 = 0;
    v389 = 0u;
    v390 = 0u;
    v267 = sub_10076C04C();
    v387 = v267;
    v388 = sub_1002E6D08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v268 = sub_10000DB7C(v386);
    (*(*(v267 - 8) + 104))(v268, enum case for Feature.measurement_with_labelplaceholder(_:), v267);

    v269 = v138;
    sub_10076C90C();
    sub_10000CD74(v386);
    v270 = v339;
    v343 = v269;
    sub_10076996C();
    sub_10076994C();
    (*(v340 + 8))(v270, v341);
    sub_100016E2C(&v395, v385, &unk_10094DA00, &qword_100783FA0);
    v271 = v387;
    v272 = v388;
    v273 = sub_10000CF78(v386, v387);
    v383 = v271;
    v384 = *(v272 + 8);
    v274 = sub_10000DB7C(v382);
    (*(*(v271 - 8) + 16))(v274, v273, v271);
    v275 = v350;
    v276 = v312;
    v277 = *(v312 + v350[8]);
    v380 = &type metadata for Float;
    v381 = &protocol witness table for Float;
    v379 = v277;
    v278 = v350[9];
    v377 = v93;
    v378 = &protocol witness table for StaticDimension;
    v279 = sub_10000DB7C(v376);
    v280 = v93;
    v281 = *(v359 + 16);
    v281(v279, v276 + v278, v280);
    v282 = v275[10];
    v374 = v280;
    v375 = &protocol witness table for StaticDimension;
    v283 = sub_10000DB7C(v373);
    v281(v283, v276 + v282, v280);
    sub_100016E2C(&v392, &v367, &qword_10094BB30, qword_100796E40);
    v284 = *(&v368 + 1);
    if (*(&v368 + 1))
    {
      v285 = v369;
      v286 = sub_10000CF78(&v367, *(&v368 + 1));
      *(&v371 + 1) = v284;
      v372 = *(v285 + 8);
      v287 = sub_10000DB7C(&v370);
      (*(*(v284 - 8) + 16))(v287, v286, v284);
      sub_10000CD74(&v367);
    }

    else
    {
      sub_10000CFBC(&v367, &qword_10094BB30, qword_100796E40);
      v370 = 0u;
      v371 = 0u;
      v372 = 0;
    }

    v288 = v358;
    sub_100016E2C(&v389, v364, &qword_10094BB30, qword_100796E40);
    v289 = v365;
    if (v365)
    {
      v290 = v366;
      v291 = sub_10000CF78(v364, v365);
      *(&v368 + 1) = v289;
      v369 = *(v290 + 8);
      v292 = sub_10000DB7C(&v367);
      (*(*(v289 - 8) + 16))(v292, v291, v289);
      sub_10000CD74(v364);
    }

    else
    {
      sub_10000CFBC(v364, &qword_10094BB30, qword_100796E40);
      v367 = 0u;
      v368 = 0u;
      v369 = 0;
    }

    v293 = v350;
    v294 = v312;
    sub_10000A570(v312 + v350[12], v364);
    sub_10000A570(v294 + v293[13], v363);
    v362 = &protocol witness table for Double;
    v361 = &type metadata for Double;
    v360 = 0x4020000000000000;
    v295 = v346;
    sub_100763BDC();
    sub_10000CFBC(&v389, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(&v392, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(&v395, &unk_10094DA00, &qword_100783FA0);
    sub_1002E6374(v294, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v386);

    v51 = v293;
    (*(v288 + 56))(v295, 0, 1, v357);
    v397 = 0;
    v395 = 0u;
    v396 = 0u;
    v392 = 0u;
    v393 = 0u;
    v394 = 0;
    v79 = v342;
    v93 = v344;
    v131 = v338;
LABEL_27:
    v57 = v335;
    goto LABEL_28;
  }

  result = [v138 lineHeight];
  v145 = ceil(v144 * 1.3);
  if ((*&v145 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v145 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v145 < 9.22337204e18)
  {
    v142 = v145;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

void *sub_1002E5378(__n128 a1)
{
  v2 = v1;
  v103 = sub_1007621EC();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v96 = (&v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v93 = (&v89 - v5);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v99 = *(v6 - 8);
  v100 = v6;
  __chkstk_darwin(v6);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v89 - v9;
  v10 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v10 - 8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v89 - v14;
  v15 = sub_10076469C();
  v104 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v94 = &v89 - v19;
  v20 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v105 = *(v20 - 8);
  __chkstk_darwin(v20);
  v102 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  v25 = sub_10076903C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = _swiftEmptyArrayStorage;
  sub_100765DFC();
  v29 = (*(v26 + 88))(v28, v25);
  v98 = v17;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v91 = v15;
    (*(v26 + 96))(v28, v25);
    sub_10000CD74(v28);
    v30 = [v1 traitCollection];
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v31 = sub_10076D9AC();
    sub_10000A61C(v31, qword_1009A2380);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007841E0;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = sub_10076DEEC();
    sub_10076D3EC();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    sub_1007708EC();
    v42 = sub_10076FF6C();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    sub_10077019C();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v45 = v106;
    v15 = v91;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_1009503C8;
  swift_beginAccess();
  v47 = *&v2[v46];
  if (v47)
  {
    v48 = v47;
    sub_10076E79C();

    v49 = sub_10076E5EC();
    v50 = *(v105 + 8);
    v105 += 8;
    v50(v24, v20);
    if (v49 > 0)
    {
      sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
      sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
      sub_10076A67C();
      v51 = v104;
      if ((*(v104 + 48))(v12, 1, v15) != 1)
      {
        v89 = v45;
        v90 = v50;
        v91 = v20;
        v59 = v98;
        (*(v51 + 32))(v98, v12, v15);
        v60 = v95;
        sub_10076468C();
        swift_getKeyPath();
        v61 = v15;
        v62 = v96;
        v63 = v100;
        sub_10076F49C();

        (*(v99 + 8))(v60, v63);
        v64 = v101;
        v52 = v103;
        if ((*(v101 + 88))(v62, v103) == enum case for ShelfBackground.color(_:))
        {
          (*(v64 + 96))(v62, v52);

          v65 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
          v66 = sub_1007659CC();
          (*(*(v66 - 8) + 8))(v62 + v65, v66);
          v67 = objc_opt_self();
          v68 = [v67 fractionalWidthDimension:1.0];
          v69 = [v67 absoluteDimension:2000.0];
          v70 = [objc_opt_self() sizeWithWidthDimension:v68 heightDimension:v69];

          v71 = sub_10076FF6C();
          v72 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v70 elementKind:v71 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v72 setExtendsBoundary:0];
          v73 = v72;
          sub_10077019C();
          if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          v15 = v61;
          (*(v104 + 8))(v98, v61);
          v45 = v106;
          v20 = v91;
          v50 = v90;
        }

        else
        {
          (*(v51 + 8))(v59, v61);
          (*(v64 + 8))(v62, v52);
          v15 = v61;
          v20 = v91;
          v50 = v90;
          v45 = v89;
        }

        goto LABEL_13;
      }

      sub_10000CFBC(v12, &unk_10095DCF0, &unk_10078C910);
    }

    v52 = v103;
LABEL_13:
    v53 = *&v2[v46];
    if (v53)
    {
      v54 = v53;
      v55 = v102;
      sub_10076E79C();

      v56 = sub_10076E5EC();
      v50(v55, v20);
      if (v56 > 0)
      {
        sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
        v57 = v104;
        sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
        v58 = v97;
        sub_10076A67C();
        if ((*(v57 + 48))(v58, 1, v15) == 1)
        {
          sub_10000CFBC(v58, &unk_10095DCF0, &unk_10078C910);
        }

        else
        {
          v74 = v94;
          (*(v57 + 32))(v94, v58, v15);
          v75 = v92;
          sub_10076468C();
          swift_getKeyPath();
          v76 = v93;
          v77 = v100;
          sub_10076F49C();

          (*(v99 + 8))(v75, v77);
          v78 = v101;
          if ((*(v101 + 88))(v76, v52) == enum case for ShelfBackground.color(_:))
          {
            (*(v78 + 96))(v76, v52);

            v79 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
            v80 = sub_1007659CC();
            (*(*(v80 - 8) + 8))(v76 + v79, v80);
            v81 = objc_opt_self();
            v82 = [v81 fractionalWidthDimension:1.0];
            v83 = [v81 absoluteDimension:2000.0];
            v84 = [objc_opt_self() sizeWithWidthDimension:v82 heightDimension:v83];

            v85 = sub_10076FF6C();
            v86 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v84 elementKind:v85 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v86 setExtendsBoundary:0];
            v87 = v86;
            sub_10077019C();
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();

            (*(v104 + 8))(v74, v15);
            return v106;
          }

          else
          {
            (*(v57 + 8))(v74, v15);
            (*(v78 + 8))(v76, v52);
          }
        }
      }
    }
  }

  return v45;
}

uint64_t sub_1002E6218()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E6250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E6374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1002E63D4()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  sub_100768B7C();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_10076FF6C();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  sub_100768B8C();
  if (v7)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_1002B3AB4();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_1002E6D08(&qword_100951960, type metadata accessor for TodayDiffablePageViewController, &unk_100799ED0);

  return sub_10076A6CC();
}

unint64_t sub_1002E65B0()
{
  result = qword_100951988;
  if (!qword_100951988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951988);
  }

  return result;
}

uint64_t sub_1002E6604()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1002E6674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL sub_1002E668C(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = sub_10075D8BC();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = sub_10075DEAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075DF6C();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  sub_10075DEBC();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10000A5D4(&qword_100951998, &unk_10079AB00);
  v15 = sub_10075DF5C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_100783C60;
  *(v19 + 16) = xmmword_100783C60;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_1001799AC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  sub_10075DEEC();
  v22 = v21;

  v23 = sub_10075D88C();
  if (v24 & 1) != 0 || (v25 = v23, v67 = sub_10075D89C(), (v26) || (v27 = sub_10075D87C(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_1001799AC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  sub_10075DEEC();

  v35 = sub_10075D88C();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = sub_10075D89C();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = sub_10075D87C();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_1002E6C6C()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_1002E6CC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E6D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E6D9C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1B10);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002E6F78()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009519E8);
  sub_10000A61C(v4, qword_1009519E8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002E70E4()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100951A00);
  sub_10000A61C(v0, qword_100951A00);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_1002E7180()
{
  v1 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100768FEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_10099E460))
  {
    v14 = *(v0 + qword_10099E458);
    if (v14)
    {
      v19 = *(v0 + qword_100951A38);

      v18 = sub_10076BB3C();
      v15 = sub_10076BA2C();
      v16 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_1002E9BB8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      sub_10076759C();
      sub_1001F12C8(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10000CFBC(v13, &unk_100946760, &unk_100787A20);
    }
  }
}

double sub_1002E750C(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_100768FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_10099E458;
  *(v1 + qword_10099E458) = a1;

  if (*(v1 + qword_10099E460) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_100951A38);

    v21[0] = sub_10076BB3C();
    v18 = sub_10076BA2C();
    v19 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1002E9BB8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    sub_10076759C();
    sub_1001F12C8(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    sub_10000CFBC(v15, &unk_100946760, &unk_100787A20);
  }

  else
  {
  }

  return result;
}

id sub_1002E78E8()
{
  v1 = v0;
  v2 = *&v0[qword_10099E460];
  if (v2 && (v3 = *&v0[qword_10099E458]) != 0)
  {
    v4 = *&v0[qword_100951A20];

    sub_10076BB6C();
    if (v5)
    {
      v6 = sub_10076FF6C();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_100940F08 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D3DC();
    v8 = sub_10000A61C(v7, qword_1009A1B10);
    sub_1006EDDF4(v9, v2, v8, v3);
    v10 = *&v1[qword_100951A30];
    sub_10075E64C();
    if (v11)
    {
      v12 = sub_10076FF6C();
    }

    else
    {
      v12 = 0;
    }

    [v10 setText:v12];
  }

  else
  {
    [*&v0[qword_100951A20] setText:0];
    sub_10050C548();
    [*&v0[qword_100951A30] setText:0];
  }

  sub_1002E7180();

  return [v1 setNeedsLayout];
}

char *sub_1002E7AC0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076771C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_10075E77C();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_10099E458] = 0;
  *&v5[qword_10099E460] = 0;
  sub_10075E6FC();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[qword_100951A18] = sub_1005B7DD4(v23, 1);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v12, qword_1009A1B10);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = sub_1007626BC();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = sub_1007626AC();
  v65 = qword_100951A20;
  *&v5[qword_100951A20] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  v35 = sub_10050BDFC(v33, 1, 4, 0);
  v36 = qword_100951A28;
  *&v5[qword_100951A28] = v35;
  if (qword_100940F10 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v12, qword_1009A1B28);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = sub_1007626AC();
  v40 = qword_100951A30;
  *&v5[qword_100951A30] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_100951A38] = sub_1001E89B8(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v76, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v76, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  sub_10076F95C();
  sub_10000CFBC(&v74, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v76, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_100951A18]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_100951A20]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_100951A28]];

  v55 = qword_100951A30;
  v56 = *&v51[qword_100951A30];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v57 = v56;
  v58 = sub_100770D1C();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_100951A38]];

  return v51;
}

void sub_1002E8358()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_100951A38];
  v18 = &v17[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v17[v19], v100);
    sub_10000CF78(v100, v100[3]);
    sub_100767A2C();
    v21 = v20;
    v23 = v22;
    sub_10000CD74(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_10093FD70 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D9AC();
  sub_10000A61C(v25, qword_1009519B8);
  sub_10076D17C();
  sub_10076D40C();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_10093FD80 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519E8);
  sub_10076D17C();
  sub_10076D40C();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_100951A18];
  sub_10075E73C();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  sub_100770A4C();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_100951A30];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  sub_100770A4C();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  sub_100770A4C();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_1001E8144(v51, v53, v55, v57);
  if (qword_10093FD78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519D0);
  sub_10076D17C();
  sub_10076D40C();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_100951A20];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_10093FD68 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_1009519A0);
  sub_10076D17C();
  v66 = [v60 traitCollection];
  sub_10076D97C();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  sub_100770A4C();
  [v60 setFrame:?];
  v75 = *&v1[qword_100951A28];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940F08 != -1)
  {
    swift_once();
  }

  v78 = sub_10076D3DC();
  sub_10000A61C(v78, qword_1009A1B10);
  v79 = [v1 traitCollection];
  v80 = sub_100770B3C();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  sub_100770B4C();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  sub_100770A4C();
  [v75 setFrame:?];
}

void sub_1002E8CF4(void *a1)
{
  v1 = a1;
  sub_1002E8358();
}

double sub_1002E8D3C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1005D3ACC(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = a1;
    v12 = [v4 backgroundView];
    if (v12)
    {
      v13 = v12;
      v14 = [v10 backgroundView];
      v15 = [v14 backgroundColor];

      [v13 setBackgroundColor:v15];
    }

    v16 = *&v10[qword_100951A18];
    sub_1005B7AE4(v16);

    *&v4[qword_10099E460] = *&v10[qword_10099E460];
    swift_retain_n();

    sub_1002E78E8();
  }

  return result;
}

void sub_1002E8EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_10075E57C();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v48 - v12;
  v13 = sub_10076C7EC();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_1005D5228(v21);
  v24 = sub_10076C7FC();
  sub_10075E36C();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v59 = v25;
    v49 = v10;
    v50 = v24;
    v51 = v8;
    sub_100760C4C();
    sub_10076F64C();
    v52 = a4;
    sub_10076FC1C();
    v60 = v62;
    v61 = v5;
    [*&v5[qword_10099C9F8] setText:0];
    v55 = a1;
    sub_10076C80C();
    v26 = v56;
    v48 = *(v56 + 104);
    v48(v19, enum case for TodayCard.Style.dark(_:), v13);
    sub_1002E9BB8(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    sub_10077018C();
    sub_10077018C();
    if (v62 == v64 && v63 == v65)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_10077167C();
    }

    v28 = *(v26 + 8);
    v28(v19, v13);
    v28(v23, v13);

    if (v27)
    {
      v29 = 2;
      v30 = v61;
    }

    else
    {
      v31 = v54;
      sub_10076C80C();
      v32 = v53;
      v48(v53, enum case for TodayCard.Style.light(_:), v13);
      sub_10077018C();
      sub_10077018C();
      v30 = v61;
      if (v62 == v64 && v63 == v65)
      {
        v28(v32, v13);
        v28(v31, v13);

        v29 = 1;
      }

      else
      {
        v33 = sub_10077167C();
        v28(v32, v13);
        v28(v31, v13);

        v29 = v33 & 1;
      }
    }

    [v30 setOverrideUserInterfaceStyle:v29];
    v34 = sub_10076C70C();
    if (!v34)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v34 = sub_100770D8C();
    }

    v35 = v34;
    v36 = [v30 backgroundView];
    if (v36)
    {
      v37 = v36;
      [v36 setBackgroundColor:v35];
    }

    v38 = *&v30[qword_100951A18];
    v56 = sub_10075E35C();
    v55 = v35;
    v39 = v57;
    sub_10075E65C();
    v40 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v41 = v58;
    v42 = v51;
    (*(v58 + 24))(&v38[v40], v39, v51);
    swift_endAccess();
    v54 = *(v41 + 16);
    v43 = v49;
    (v54)(v49, &v38[v40], v42);
    sub_1005B84F8(v43);
    v44 = *(v41 + 8);
    v44(v43, v42);
    v44(v39, v42);
    v45 = v55;
    [v38 setBackgroundColor:v55];
    sub_1006EC184(159.0, 159.0, v56, v38, v60);
    (v54)(v39, &v38[v40], v42);
    sub_1005B84F8(v39);
    v44(v39, v42);
    [v38 setNeedsLayout];

    v47 = v61;
    sub_1002E750C(v46);
    *&v47[qword_10099E460] = sub_10075E35C();

    sub_1002E78E8();

    [v47 setNeedsLayout];
  }

  else
  {
  }
}

double sub_1002E95B8(uint64_t a1, uint64_t a2)
{
  sub_10051A43C();
  sub_10000A570(a1, v8);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    sub_10076C7FC();

    sub_10075E36C();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_100951A18);
      v7 = sub_10075E35C();
      sub_1006EC184(159.0, 159.0, v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_1002E96B4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_10099CA08))
  {
    v5 = *(v3 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_10075FCEC(v11, v8);
  sub_10075FD2C();
  sub_1002E9BB8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

id sub_1002E9804(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FD88 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_100951A00);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[qword_100951A20] setTextAlignment:{v8, v1}];
    [*&v7[qword_100951A28] setTextAlignment:v8];
    return [*&v7[qword_100951A30] setTextAlignment:v8];
  }

  return result;
}

void sub_1002E9970(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002E9804(a3);
}

double sub_1002E99DC()
{

  return result;
}

double sub_1002E9A6C(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100951A68;
  if (!qword_100951A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E9BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002E9C00()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
  if (qword_10093F800 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_100949F38];
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron) = 0;
  sub_100133E3C(v3);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) = 0;
}

char *sub_1002E9CD4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

id sub_1002EA0A8(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_10093F808 != -1)
    {
      swift_once();
    }

    v6 = &qword_100949F40;
  }

  else
  {
    if (qword_10093F800 != -1)
    {
      swift_once();
    }

    v6 = &qword_100949F38;
  }

  return [*(v4 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell(uint64_t a1)
{
  result = qword_100951E50;
  if (!qword_100951E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EA29C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v85 = a2;
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = sub_10076182C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10076B5BC();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((sub_1007645FC() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    sub_10076463C();
    sub_10000CFBC(v17, &qword_1009499A0, &qword_1007848B0);
    sub_100023AD0(v20, v23, &qword_1009499A0, &qword_1007848B0);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10000CFBC(v23, &qword_1009499A0, &qword_1007848B0);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v41 + 8))(v23, v40);
      v42 = 0;
    }

    v46 = v79;
    v45 = v80;
    v47 = v83;
    v48 = *(v83 + 56);
    v48(v31, v42, 1, v80);
    (*(v47 + 104))(v28, enum case for Shelf.ContentType.searchResultsContextCard(_:), v45);
    v48(v28, 0, 1, v45);
    v49 = *(v78 + 48);
    v50 = v84;
    sub_10002ABBC(v31, v84);
    sub_10002ABBC(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10000CFBC(v28, &unk_1009568A0, &qword_100784890);
      v52 = v84;
      sub_10000CFBC(v31, &unk_1009568A0, &qword_100784890);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10000CFBC(v52, &unk_1009568A0, &qword_100784890);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_10002ABBC(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_100077514();
        v56 = v50;
        v57 = sub_10076FF1C();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10000CFBC(v28, &unk_1009568A0, &qword_100784890);
        sub_10000CFBC(v31, &unk_1009568A0, &qword_100784890);
        v58(v46, v45);
        sub_10000CFBC(v56, &unk_1009568A0, &qword_100784890);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        sub_10076468C();
        swift_getKeyPath();
        v60 = v81;
        sub_10076F49C();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_10000A570(v86 + 32, v87);

          sub_10000A5D4(&qword_1009575A0, &unk_100784980);
          sub_10000A5D4(&qword_100942F18, &unk_100788330);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_10000CF78(&v88, *(&v89 + 1));
              v53 = v85;
              sub_1007670CC();
              sub_10000CD74(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (sub_10076181C())
                {
                  v66 = v68;
                  sub_10076460C();
                  v67 = sub_10023E590(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_10003F19C(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_10003F19C(&v88, v53);
              }

LABEL_26:
              sub_10000CFBC(v64, &unk_100952090, &unk_100784CD0);
              goto LABEL_27;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {

          v88 = 0u;
          v89 = 0u;
          v90 = 0;
          v62 = v77;
          v63 = v76;
          v64 = v75;
        }

        sub_10000CFBC(&v88, &qword_100942F20, &qword_100784D10);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10000CFBC(v28, &unk_1009568A0, &qword_100784890);
      v52 = v84;
      sub_10000CFBC(v31, &unk_1009568A0, &qword_100784890);
      (*(v83 + 8))(v46, v45);
    }

    sub_10000CFBC(v52, &qword_100942C28, &unk_1007898E0);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  sub_10076460C();
  sub_10076C21C();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    sub_10076460C();
    sub_10076C23C();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v36 = sub_10076D9AC();
    v37 = sub_10000A61C(v36, qword_1009A2380);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_10000DB7C(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_1002EAE3C@<X0>(double *a1@<X8>)
{
  v59 = a1;
  v1 = sub_10076C38C();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_10076B5BC();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_10076468C();
  swift_getKeyPath();
  v53 = v19;
  sub_10076F49C();

  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_10076463C();
  sub_10000CFBC(v9, &qword_1009499A0, &qword_1007848B0);
  sub_100023AD0(v6, v12, &qword_1009499A0, &qword_1007848B0);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10000CFBC(v12, &qword_1009499A0, &qword_1007848B0);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    sub_10076F49C();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_100023AD0(v26, v30 + v29, &unk_1009568A0, &qword_100784890);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_10002ABBC(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        sub_10076460C();
        sub_10076C23C();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        *(v59 + 3) = &type metadata for CGFloat;
        *(v38 + 4) = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10000CFBC(v30 + v29, &unk_1009568A0, &qword_100784890);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    sub_10076460C();
    sub_10076C23C();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    *(v59 + 3) = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v44 = sub_10076D9AC();
  v45 = sub_10000A61C(v44, qword_1009A2380);
  v46 = v59;
  *(v59 + 3) = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10000CFBC(v30, &qword_100942F28, &unk_10079ACB0);
}

uint64_t sub_1002EB540(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView(0);
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = sub_10077156C();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}

uint64_t sub_1002EB674@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v4 = sub_1007669EC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100951E88;
  if (!qword_100951E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002EB7D0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v74 = a3;
  v72 = a2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B96C();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v65 - v11;
  v12 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v15 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v65 - v26;
  v28 = OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  v78 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_100494A30(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_100494194(v34), sub_1004941A0(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v36 = *(*(v35 - 8) + 56);
    v77 = v27;
    v36(v27, 1, 1, v35);
    v70 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView];
    v76 = v29;
    v38 = sub_10076BB5C();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v76;
    v40 = *&v76[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
    v41 = sub_10075F78C();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = sub_1007628DC();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = sub_10076C54C();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_1004D0A60(v78, v40, v77, v74, 1, 0, v23, v20, v14, v17);
    sub_10000CFBC(v14, &unk_100949290, &unk_10078BBF0);
    v40[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v40 setNeedsLayout];
    sub_10000CFBC(v17, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v20, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v23, &unk_10094D210, &qword_10078DE20);
    v45 = v75;
    sub_10076BB7C();
    v46 = sub_10076BA5C();
    v48 = v47;
    v68 = sub_10076BABC();
    v50 = v49;
    v51 = sub_10076BA7C();
    if (v48 && v50)
    {
      v52 = v51;
      v67 = v46;
      v53 = v73;
      v54 = v69;
      (*(v73 + 16))(v69, v45, v8);
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076F64C();
      sub_10076FC1C();
      v66 = v8;
      v55 = v79[0];
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v56 = v76;
      v74 = v4;
      v57 = v56;
      v39 = v76;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v67, v48, v68, v50, v52 & 1, v29, &off_1008922A8, v55, *(&v55 + 1));
      (*(v53 + 8))(v75, v66);
      sub_10000CFBC(v77, &unk_100946760, &unk_100787A20);
      v59 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v74;
    }

    else
    {

      v60 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      v61 = sub_100354258(0, 0);
      (*(v73 + 8))(v45, v8, v61);
      sub_10000CFBC(v77, &unk_100946760, &unk_100787A20);
    }

    if (sub_10076BB5C())
    {
      if (qword_1009405C0 != -1)
      {
        swift_once();
      }

      v62 = sub_100763ADC();
      sub_10000A61C(v62, qword_10099FBD0);
      sub_1007639AC();
      v63 = v70;
      [*&v29[v70] contentMode];
      sub_10076BFCC();
      v64 = *&v29[v63];
      sub_10076BF7C();
      sub_10075FCCC();
      [v64 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      v80 = 0;
      memset(v79, 0, sizeof(v79));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v79, &qword_100943310, &unk_100784150);
    }

    [v4 setNeedsLayout];
  }
}

void sub_1002EC11C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100763E9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_100494194(0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_1009A0D90);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_1009405C8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v6, qword_10099FBE8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  v17 = sub_1001AB12C(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_1004941A0(v17);
  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    [v3 setNeedsLayout];
  }
}

void sub_1002EC3E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);

    v9 = a1;
    sub_10075FCAC();
  }
}

uint64_t sub_1002EC464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_1002ECDCC(a1, a2, a3, a4);
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100012498(a1, a4);
  sub_100012498(a2, (a4 + 5));
  result = sub_100012498(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = sub_10075DE9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002ED13C(a1, v22);
  sub_10075DE6C();
  v15 = sub_10075DE7C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10000CF78(a2, a2[3]);
    sub_10076D72C();
    sub_1002ED174(a1);
  }

  else
  {
    sub_1002ED174(a1);
    sub_10000A570(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_10000CD74(a2);
}

void AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  sub_1002ED1A4(a1, v3, a2, a3);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100102958(v5 + 248, v57);
  if (v58)
  {
    sub_10000CF78(v57, v58);
    sub_10076D23C();
    sub_10000CD74(v57);
  }

  else
  {
    sub_1001029C8(v57);
  }

  sub_100102958(v5 + 288, v57);
  if (v58)
  {
    sub_10000CF78(v57, v58);
    sub_10076D23C();
    sub_10000CD74(v57);
  }

  else
  {
    sub_1001029C8(v57);
  }

  sub_100770A3C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100102958(v5 + 208, &v55);
  v53 = a2;
  v54 = a4;
  v51 = a3;
  v52 = a5;
  v48 = v16;
  v47 = v18;
  v46 = v20;
  v45 = v22;
  if (!v56)
  {
    sub_1001029C8(&v55);
    goto LABEL_11;
  }

  sub_100012498(&v55, v57);
  sub_10000CF78(v57, v58);
  if (sub_10076D24C())
  {
    sub_10000CD74(v57);
LABEL_11:
    v50 = v16;
    v23 = v18;
    Height = v22;
    goto LABEL_13;
  }

  v25 = *(v5 + 120);
  v26 = *(v5 + 104);
  sub_10000CF78((v6 + 80), *(v6 + 104));
  sub_1000FF02C(v26);
  sub_10076D40C();
  v28 = v27;
  (*(v12 + 8))(v14, v11);
  v29 = v25 + v28;
  v59.origin.x = v16;
  v59.origin.y = v18;
  v59.size.width = v20;
  v59.size.height = v22;
  v50 = v29 + CGRectGetMinX(v59);
  v60.origin.x = v16;
  v60.origin.y = v18;
  v60.size.width = v20;
  v60.size.height = v22;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v16;
  v61.origin.y = v18;
  v61.size.width = v20;
  v61.size.height = v22;
  Width = CGRectGetWidth(v61);
  v62.size.width = v20;
  v20 = Width - v29;
  v62.origin.x = v16;
  v23 = MinY;
  v62.origin.y = v18;
  v62.size.height = v22;
  Height = CGRectGetHeight(v62);
  sub_10000CD74(v57);
LABEL_13:
  sub_10000CF78((v6 + 168), *(v6 + 192));
  sub_10076D2AC();
  v33 = v32;
  v35 = v34;
  sub_10000CF78(v6, *(v6 + 24));
  sub_10076D42C();
  v49 = v36;
  v37 = v50;
  v63.origin.x = v50;
  v63.origin.y = v23;
  v63.size.width = v20;
  v63.size.height = Height;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = v37;
  v64.origin.y = v23;
  v64.size.width = v20;
  v64.size.height = Height;
  v39 = CGRectGetMinY(v64);
  v65.origin.x = v37;
  v65.origin.y = v23;
  v65.size.width = v20;
  v65.size.height = Height;
  v40 = CGRectGetWidth(v65);
  if (v40 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v40;
  }

  v42 = v49 + v39;
  sub_10000CF78((v6 + 168), *(v6 + 192));
  v50 = v35;
  sub_100770A4C();
  sub_10076D23C();
  sub_100102958(v6 + 208, &v55);
  if (v56)
  {
    sub_100012498(&v55, v57);
    v49 = *(v6 + 120);
    v66.origin.x = MinX;
    v66.origin.y = v42;
    v66.size.width = v41;
    v43 = v50;
    v66.size.height = v50;
    CGRectGetMinY(v66);
    v67.origin.x = MinX;
    v67.origin.y = v42;
    v67.size.width = v41;
    v67.size.height = v43;
    CGRectGetHeight(v67);
    v68.origin.x = v48;
    v68.origin.y = v47;
    v68.size.width = v46;
    v68.size.height = v45;
    CGRectGetMinX(v68);
    sub_10000CF78(v57, v58);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v57);
  }

  else
  {
    sub_1001029C8(&v55);
  }

  return sub_10076D1BC();
}

double sub_1002ECDCC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = sub_10076DEBC();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D93C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D95C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100784500;
  sub_10000A570(a1, v33);
  v18 = sub_10076DE7C();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v17 + 32));
  sub_10076DE8C();
  sub_10000A570(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v17 + 72));
  sub_10076DE8C();
  sub_10076D94C();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_10000DB7C(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  sub_10076DEAC();
  sub_10076DE9C();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

void sub_1002ED1A4(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[17];
  v12[0] = a2[18];
  v12[1] = v9;
  sub_100770ACC();
  sub_100102958((a2 + 26), &v13);
  if (v14)
  {
    sub_100012498(&v13, v15);
    sub_10000CF78(v15, v15[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v10 = a2[13];
      sub_10000CF78(a2 + 10, v10);
      sub_1000FF02C(v10);
      sub_10076D40C();
      (*(v6 + 8))(v8, v5);
    }

    sub_10000CD74(v15);
  }

  else
  {
    sub_1001029C8(&v13);
  }

  sub_10000CF78(a2 + 21, a2[24]);
  sub_10076D2AC();
  sub_10000CF78(a2, a2[3]);
  sub_10076D42C();
  v11 = a2[8];
  sub_10000CF78(a2 + 5, v11);
  sub_1000FF02C(v11);
  sub_10076D40C();
  (*(v6 + 8))(v8, v5);
  sub_100770AEC();
}

uint64_t sub_1002ED498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1002ED4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002ED5DC(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10076D39C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100768D1C();
  sub_10000DB18(v6, a4);
  sub_10000A61C(v6, a4);
  sub_10076D3AC();
  return sub_100768D0C();
}

void sub_1002ED72C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10076D39C();
  sub_10000DB18(v5, a4);
  sub_10000A61C(v5, a4);
  sub_10076D3AC();
}

uint64_t sub_1002ED78C()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_100951F70, &qword_10079AF60);
  sub_10000DB18(v7, qword_100951F00);
  sub_10000A61C(v7, qword_100951F00);
  if (qword_10093FDA8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_100951EE8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10093FDA0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_100951ED0);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

char *sub_1002ED96C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_10075FD2C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_10075FB8C();

  sub_1002EDB10();
  return v15;
}

id sub_1002EDB10()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_10076262C();
    v10(v6, v9, v2);
    return sub_10076262C();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_1002EDEB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100768D3C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100768D1C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_10013EEE8())
  {
    if (qword_10093FD98 != -1)
    {
      swift_once();
    }

    v17 = qword_100951EB8;
  }

  else
  {
    if (qword_10093FD90 != -1)
    {
      swift_once();
    }

    v17 = qword_100951EA0;
  }

  v18 = sub_10000A61C(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_10076C13C();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_1007626BC();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_100768D2C();
  sub_10076422C();
  v29 = v34;
  sub_100768CEC();
  (*(v37 + 8))(v29, v38);
  sub_1002EE368();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_1002EE308()
{
  swift_getObjectType();
  sub_10076422C();
  CGRectGetWidth(v1);
  return sub_100768CFC();
}

void sub_1002EE368()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076422C();
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(v14, v15))
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork])
      {
        v7 = qword_10093FDB0;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_10000A5D4(&qword_100951F70, &qword_10079AF60);
        sub_10000A61C(v8, qword_100951F00);
        v13 = v1;
        v9 = v1;
        sub_10075FDCC();

        sub_10076422C();
        sub_10076D31C();
        (*(v3 + 8))(v5, v2);
        sub_10076BFBC();
        if (*&v9[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader])
        {
          v12 = *&v9[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView];
          v10 = v12;
          sub_10075FD2C();
          sub_1002EEDD8();

          v11 = v10;
          sub_10077140C();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_100760B7C();

          sub_10002CBB4(&v13);
        }

        else
        {
        }
      }

      *(v1 + v6) = 0;
    }
  }
}

double sub_1002EE688(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v6 = a2.n128_u64[0];
  v35 = sub_100768D3C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768D1C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_10013EEE8())
  {
    if (qword_10093FD98 != -1)
    {
      swift_once();
    }

    v18 = qword_100951EB8;
  }

  else
  {
    if (qword_10093FD90 != -1)
    {
      swift_once();
    }

    v18 = qword_100951EA0;
  }

  v19 = sub_10000A61C(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = v6;
  *(&v32 - 1) = a3;
  sub_10076C13C();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_1007626BC();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView);
  v37 = sub_10075FD2C();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_100768D2C();
  sub_100768CDC();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_1002EEACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView;
      v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkView);
      v9 = Strong;
      v10 = a1;
      v11 = v8;
      [v10 size];
      sub_10075FCFC();
      sub_100770A9C();
      sub_10075FD0C();

      v12 = *&v9[v7];
      v13 = v10;
      v14 = v12;
      v16.value.super.isa = a1;
      v16.is_nil = 0;
      sub_10075FCEC(v16, v15);
    }
  }
}

id sub_1002EEBC4(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || (sub_10077071C() & 1) != (v5 & 1))
  {
    sub_1002EDB10();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_1002EEDD8()
{
  result = qword_100951F78;
  if (!qword_100951F78)
  {
    sub_10075FD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951F78);
  }

  return result;
}

uint64_t sub_1002EEE30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002EEE70(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = a3;
  if (a2 >> 62)
  {
    v11 = sub_10077158C();
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v11 == 2)
  {
    sub_1002EF240(a2, v7, v13, a6, a7);
    goto LABEL_9;
  }

  if (v11 != 1)
  {
LABEL_8:
    sub_1002EF614(a2, v7, v13, a6, a7);
    goto LABEL_9;
  }

  sub_1002EF0E0(a2, v7, v13);
LABEL_9:
  sub_100012498(v13, v14);
  sub_10000CF78(v14, v14[3]);
  sub_10076E0EC();
  return sub_10000CD74(v14);
}

double sub_1002EEFA0(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a3;
  if (a2 >> 62)
  {
    v9 = sub_10077158C();
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v9 == 2)
  {
    sub_1002EF240(a2, v5, v13, a4, a5);
    goto LABEL_9;
  }

  if (v9 != 1)
  {
LABEL_8:
    sub_1002EF614(a2, v5, v13, a4, a5);
    goto LABEL_9;
  }

  sub_1002EF0E0(a2, v5, v13);
LABEL_9:
  sub_100012498(v13, v14);
  sub_10000CF78(v14, v14[3]);
  sub_10076E0FC();
  v11 = v10;
  sub_10000CD74(v14);
  return v11;
}

uint64_t sub_1002EF0E0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(result + 32);
  }

  v8 = v7;
  if (a2 != 4)
  {
    sub_100770A8C();
  }

  sub_1000ACA5C();
  sub_10076D28C();
  sub_10000CF78(v9, v9[3]);
  sub_10076D2DC();
  sub_10076DF8C();
  a3[3] = sub_10076DFAC();
  a3[4] = &protocol witness table for Center;
  sub_10000DB7C(a3);
  sub_10076DFBC();

  return sub_10000CD74(v9);
}

void sub_1002EF240(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_10076D58C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = sub_10077149C();
    v19 = sub_10077149C();
    goto LABEL_5;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(a1 + 40);
  v31 = *(a1 + 32);
  v19 = v18;
LABEL_5:
  v20 = v19;
  if (a2 == 4)
  {
    v21 = 33.0;
  }

  else
  {
    v22 = a5 / 224.0;
    v23 = fmin(a5 / 224.0, 1.0);
    if (a5 / 224.0 >= a4 / 224.0)
    {
      v22 = a4 / 224.0;
    }

    if (a4 / 224.0 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_100770A8C();
    v21 = v24 * 80.0;
  }

  sub_10076D55C();
  v32[0] = v20;
  sub_1000ACA5C();
  sub_10076D28C();
  v30 = v20;
  sub_10000CF78(v33, v34);
  sub_10076D2DC();
  sub_10076D57C();
  sub_10000CD74(v32);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_10000CD74(v33);
  v26 = v31;
  v32[0] = v31;
  sub_10076D28C();
  sub_10000CF78(v33, v34);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v21;
  a3[3] = v10;
  a3[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(a3);
  sub_10076D57C();

  sub_10000CD74(v32);
  v25(v16, v10);
  sub_10000CD74(v33);
  v27 = [v26 layer];
  [v27 setZPosition:2.0];

  v28 = v30;
  v29 = [v30 layer];
  [v29 setZPosition:1.0];
}

void sub_1002EF614(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_10076D8DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_10077149C();
    v25 = sub_10077149C();
    v26 = sub_10077149C();
    goto LABEL_6;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v20 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v21;
  v25 = v22;
  v26 = v23;
LABEL_6:
  v37 = v26;
  v38 = a3;
  v35 = v24;
  if (a2 == 4)
  {
    v27 = 10.0;
  }

  else
  {
    v28 = a5 / 127.0;
    v29 = fmin(a5 / 127.0, 1.0);
    if (a5 / 127.0 >= a4 / 421.0)
    {
      v28 = a4 / 421.0;
    }

    if (a4 / 421.0 >= 1.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    sub_100770A8C();
    v27 = v30 * 20.0;
  }

  sub_10076D8AC();
  v39[0] = v25;
  sub_1000ACA5C();
  sub_10076D28C();
  v36 = v25;
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v27;
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31 = *(v11 + 8);
  v31(v13, v10);
  sub_10000CD74(v40);
  v32 = v35;
  v39[0] = v35;
  sub_10076D28C();
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  *(swift_allocObject() + 16) = v27;
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31(v16, v10);
  sub_10000CD74(v40);
  v33 = v37;
  v39[0] = v37;
  sub_10076D28C();
  sub_10000CF78(v40, v41);
  sub_10076D2DC();
  v34 = v38;
  v38[3] = v10;
  v34[4] = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v34);
  sub_10076D8BC();

  sub_10000CD74(v39);
  v31(v19, v10);
  sub_10000CD74(v40);
}

uint64_t sub_1002EFA78()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_10076D53C();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_10076D50C();
}

uint64_t sub_1002EFB9C(double a1)
{
  v2 = sub_10076D54C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v7 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v2, v4);
  sub_10076D53C();
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v8(v6, v7, v2);
  return sub_10076D50C();
}

double sub_1002EFD44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1002EFEE4(v11, a6, ObjectType, a7, a8);
}

double sub_1002EFDA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100761EDC();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_1002F017C(v5, a3);
  }

  else
  {
    sub_10076C52C();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_1002F0400(v8, a3);
  }

  return result;
}