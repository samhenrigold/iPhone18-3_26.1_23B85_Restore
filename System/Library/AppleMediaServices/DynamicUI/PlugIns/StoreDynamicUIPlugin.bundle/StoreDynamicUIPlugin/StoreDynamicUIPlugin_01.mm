uint64_t sub_1B9A8()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1B9DC()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1BA48()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1BAC4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 80.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 90.0;
  }

  *&xmmword_19AF28 = v2;
  *(&xmmword_19AF28 + 1) = v2;
}

uint64_t sub_1BB3C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 6.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_19AF38 = *&v6;
  return result;
}

uint64_t sub_1BC40()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 16.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_19AF40 = *&v6;
  return result;
}

uint64_t sub_1BD5C(uint64_t a1, double *a2)
{
  v3 = sub_139A34();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  result = _UISolariumEnabled();
  if (!result || ((*(v5 + 104))(v9, enum case for FlagKeys.Solarium(_:), v3), v11 = sub_139A24(), result = (*(v5 + 8))(v9, v3), v12 = 16.0, (v11 & 1) == 0))
  {
    v12 = 24.0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1BE54()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 10.0, (v5 & 1) == 0))
  {
    v6 = 8.0;
  }

  qword_19AF58 = *&v6;
  return result;
}

double sub_1C010(void *a1, void *a2, double a3, double a4)
{
  v147 = sub_13A4C4();
  v150 = *(v147 - 8);
  __chkstk_darwin(v147);
  v142 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_13A4B4();
  v149 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_13A454();
  v148 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13A514();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v140 = v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v114 - v19;
  v21 = [a1 traitCollection];
  v22 = sub_13BDE4();

  if (v22)
  {
    sub_1F144(v20);
    sub_13A464();
    a3 = v23;
    (*(v15 + 8))(v20, v14);
  }

  else
  {
    v119 = v15;
    v24 = a2[52];
    v25 = a2[53];
    sub_162F0(a2 + 49, v24);
    sub_20038(v24, v25);
    sub_13A404();
    v114[3] = v26;
    v27 = *(v11 + 8);
    v27(v13, v10);
    v28 = a2[57];
    v29 = a2[58];
    sub_162F0(a2 + 54, v28);
    sub_20038(v28, v29);
    sub_13A404();
    v114[0] = v30;
    v27(v13, v10);
    v31 = a2[62];
    v32 = a2[63];
    sub_162F0(a2 + 59, v31);
    sub_20038(v31, v32);
    sub_13A404();
    v114[2] = v33;
    v27(v13, v10);
    v34 = a2[67];
    v35 = a2[68];
    sub_162F0(a2 + 64, v34);
    sub_20038(v34, v35);
    sub_13A404();
    v117 = v36;
    v27(v13, v10);
    v37 = a2[72];
    v38 = a2[73];
    sub_162F0(a2 + 69, v37);
    sub_20038(v37, v38);
    sub_13A404();
    v27(v13, v10);
    v39 = a2[77];
    v40 = a2[78];
    sub_162F0(a2 + 74, v39);
    sub_20038(v39, v40);
    sub_13A404();
    v114[1] = v41;
    v27(v13, v10);
    v42 = a2[82];
    v43 = a2[83];
    sub_162F0(a2 + 79, v42);
    sub_20038(v42, v43);
    sub_13A404();
    v45 = v44;
    v27(v13, v10);
    v46 = a2[87];
    v47 = a2[88];
    sub_162F0(a2 + 84, v46);
    sub_20038(v46, v47);
    sub_13A404();
    v49 = v48;
    v27(v13, v10);
    v50 = a2[97];
    v51 = a2[98];
    sub_162F0(a2 + 94, v50);
    sub_20038(v50, v51);
    sub_13A404();
    v53 = v52;
    v27(v13, v10);
    v54 = a2[92];
    v55 = a2[93];
    sub_162F0(a2 + 89, v54);
    sub_20038(v54, v55);
    sub_13A404();
    v27(v13, v10);
    sub_4948(&qword_19AFE0, &unk_1402A0);
    v56 = *(sub_13A4F4() - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v115 = *(v56 + 72);
    v58 = swift_allocObject();
    v141 = xmmword_13E660;
    *(v58 + 16) = xmmword_13E660;
    v116 = v58;
    v139 = v58 + v57;
    v59 = a2[28];
    v60 = a2[29];
    v61 = sub_162F0(a2 + 25, v59);
    v159 = v59;
    v160 = *(v60 + 8);
    v62 = sub_CC08(&v158);
    (*(*(v59 - 8) + 16))(v62, v61, v59);
    v156 = &type metadata for CGFloat;
    v157 = &protocol witness table for CGFloat;
    v155 = v53;
    sub_162F0(a2 + 20, a2[23]);
    v63 = sub_13A364();
    v120 = v14;
    v118 = a1;
    if ((v63 & 1) != 0 || (sub_162F0(a2 + 20, a2[23]), (sub_13A324() & 1) == 0))
    {
      v65 = &protocol witness table for CGFloat;
      v66 = &type metadata for CGFloat;
      v64 = v49;
    }

    else
    {
      v64 = 0;
      v65 = &protocol witness table for Double;
      v66 = &type metadata for Double;
    }

    v153 = v66;
    v154 = v65;
    v152 = v64;
    v67 = v148;
    v68 = *(v148 + 104);
    v69 = v143;
    v138 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v70 = v144;
    v137 = v148 + 104;
    v136 = v68;
    v68(v143);
    v71 = sub_4948(&qword_19AFE8, &unk_140260);
    v72 = v149;
    v73 = *(v149 + 72);
    v74 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v132 = *(v149 + 80);
    v134 = v71;
    v131 = v74 + 3 * v73;
    v75 = swift_allocObject();
    *(v75 + 16) = v141;
    v133 = v74;
    sub_13A484();
    sub_13A494();
    v130 = 2 * v73;
    v135 = v73;
    sub_13A4A4();
    v151 = v75;
    v76 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v77 = sub_4948(&qword_19AFF0, &unk_1402B0);
    v78 = sub_1D268();
    v79 = v145;
    v128 = v77;
    v127 = v78;
    v80 = v146;
    v129 = v76;
    sub_13BF64();
    v81 = v150;
    v82 = *(v150 + 104);
    v83 = v142;
    v126 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v84 = v147;
    v125 = v150 + 104;
    v124 = v82;
    v82(v142);
    sub_13A4E4();
    v85 = *(v81 + 8);
    v150 = v81 + 8;
    v123 = v85;
    v85(v83, v84);
    v86 = *(v72 + 8);
    v149 = v72 + 8;
    v122 = v86;
    v86(v79, v80);
    v87 = *(v67 + 8);
    v148 = v67 + 8;
    v121 = v87;
    v87(v69, v70);
    sub_1D2CC(&v152);
    sub_3C04(&v155);
    sub_3C04(&v158);
    v88 = a2[23];
    v89 = a2[24];
    v90 = sub_162F0(a2 + 20, v88);
    v159 = v88;
    v160 = *(v89 + 8);
    v91 = sub_CC08(&v158);
    (*(*(v88 - 8) + 16))(v91, v90, v88);
    v156 = &type metadata for CGFloat;
    v157 = &protocol witness table for CGFloat;
    v155 = v45;
    sub_162F0(a2 + 15, a2[18]);
    if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
    {
      v93 = &protocol witness table for CGFloat;
      v94 = &type metadata for CGFloat;
      v92 = v49;
    }

    else
    {
      v92 = 0;
      v93 = &protocol witness table for Double;
      v94 = &type metadata for Double;
    }

    v153 = v94;
    v154 = v93;
    v152 = v92;
    v95 = v143;
    v96 = v144;
    v136(v143, v138, v144);
    v97 = swift_allocObject();
    *(v97 + 16) = v141;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v151 = v97;
    v98 = v145;
    v99 = v146;
    sub_13BF64();
    v100 = v142;
    v101 = v147;
    v124(v142, v126, v147);
    v102 = v115;
    v103 = v139;
    sub_13A4E4();
    v123(v100, v101);
    v122(v98, v99);
    v121(v95, v96);
    sub_1D2CC(&v152);
    sub_3C04(&v155);
    sub_3C04(&v158);
    v139 = v103 + 2 * v102;
    v104 = a2[18];
    v105 = a2[19];
    v106 = sub_162F0(a2 + 15, v104);
    v159 = v104;
    v160 = *(v105 + 8);
    v107 = sub_CC08(&v158);
    (*(*(v104 - 8) + 16))(v107, v106, v104);
    v156 = &type metadata for CGFloat;
    v157 = &protocol witness table for CGFloat;
    v155 = v117;
    v153 = &type metadata for CGFloat;
    v154 = &protocol witness table for CGFloat;
    v152 = v49;
    v136(v95, v138, v96);
    v108 = swift_allocObject();
    *(v108 + 16) = v141;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v151 = v108;
    sub_13BF64();
    v124(v100, v126, v101);
    sub_13A4E4();
    v123(v100, v101);
    v122(v98, v99);
    v121(v95, v96);
    sub_1D2CC(&v152);
    sub_3C04(&v155);
    sub_3C04(&v158);
    v109 = v140;
    sub_13A4D4();
    sub_13A464();
    v111 = v110;
    sub_162F0(a2 + 10, a2[13]);
    if (sub_13A324())
    {
      sub_162F0(a2 + 5, a2[8]);
      sub_13A324();
      v112 = v119;
      sub_162F0(a2 + 10, a2[13]);
      sub_13A384();
      (*(v112 + 8))(v109, v120);
    }

    else
    {
      (*(v119 + 8))(v109, v120);
      return v111;
    }
  }

  return a3;
}

unint64_t sub_1D268()
{
  result = qword_1A0750;
  if (!qword_1A0750)
  {
    sub_558C(&qword_19AFF0, &unk_1402B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0750);
  }

  return result;
}

uint64_t sub_1D2CC(uint64_t a1)
{
  v2 = sub_4948(&qword_19AFF8, &unk_140270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3E4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1D430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_139BA4();
}

id sub_1D45C()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

id sub_1D474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + a2);
  v6 = *(v3 + 3576);

  return [a1 v6];
}

uint64_t sub_1D4AC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  return sub_13BE34();
}

id sub_1D4CC()
{
  v3 = *(v1 + 3472);

  return [v0 v3];
}

uint64_t AppLockupComponentLayout.Metrics.init(artworkBottom:artworkSize:artworkTop:footerArtworkSize:footerBottom:footerLeading:footerTop:infoTop:minimumComponentHeight:minimumFooterHeight:subtitleTop:textBottom:textTop:textLeading:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17)
{
  sub_9414(a1, a9);
  a9[5] = a10;
  a9[6] = a11;
  sub_9414(a2, (a9 + 7));
  a9[12] = a12;
  a9[13] = a13;
  sub_9414(a3, (a9 + 14));
  sub_9414(a4, (a9 + 19));
  sub_9414(a5, (a9 + 24));
  sub_9414(a6, (a9 + 29));
  sub_9414(a7, (a9 + 34));
  sub_9414(a8, (a9 + 39));
  sub_9414(a14, (a9 + 44));
  sub_9414(a15, (a9 + 49));
  sub_9414(a16, (a9 + 59));

  return sub_9414(a17, (a9 + 54));
}

uint64_t AppLockupComponentLayout.init(metrics:artworkImageView:infoLabel:footerLabel:footerImageView:subtitleLabel:titleLabel:separatorView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x200uLL);
  sub_9414(a2, a9);
  sub_9414(a3, a9 + 120);
  sub_9414(a4, a9 + 80);
  sub_9414(a5, a9 + 40);
  sub_9414(a8, a9 + 240);
  sub_9414(a6, a9 + 160);

  return sub_9414(a7, a9 + 200);
}

uint64_t AppLockupComponentLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v200 = a6;
  v14 = sub_13A314();
  sub_9E94();
  v190 = v15;
  __chkstk_darwin(v16);
  sub_21548();
  sub_2159C(v17);
  MinX = COERCE_DOUBLE(sub_13A4C4());
  sub_9E94();
  v203 = v18;
  __chkstk_darwin(v19);
  sub_21548();
  sub_2159C(v20);
  v195 = COERCE_DOUBLE(sub_13A4B4());
  sub_9E94();
  v202 = v21;
  __chkstk_darwin(v22);
  sub_21548();
  sub_2159C(v23);
  v193 = COERCE_DOUBLE(sub_13A454());
  sub_9E94();
  v201 = v24;
  __chkstk_darwin(v25);
  sub_21548();
  sub_2159C(v26);
  sub_13C114();
  sub_9E94();
  v28 = v27;
  __chkstk_darwin(v29);
  v198 = sub_13A514();
  sub_9E94();
  v197 = v30;
  __chkstk_darwin(v31);
  sub_2162C();
  sub_18B60();
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v35 = v159 - v34;
  v36 = [a1 traitCollection];
  v37 = sub_13BDE4();

  if (v37)
  {
    sub_1F144(v35);
    sub_13A474();
    return (*(v197 + 8))(v35, v198);
  }

  v169 = a2;
  v170 = v14;
  sub_2156C((v8 + 336));
  v38 = sub_21524();
  v39 = *(v28 + 8);
  v40 = sub_215EC();
  v39(v40);
  sub_2156C((v8 + 392));
  v41 = sub_21524();
  v42 = sub_2155C(&v197, v41);
  v39(v42);
  sub_2156C((v8 + 432));
  v43 = sub_21524();
  v44 = sub_2155C(&v188, v43);
  v39(v44);
  sub_2156C((v8 + 472));
  v45 = sub_21524();
  v46 = sub_2155C(&v196, v45);
  v39(v46);
  sub_2156C((v8 + 512));
  v47 = sub_21524();
  v48 = sub_2155C(&v193, v47);
  v39(v48);
  sub_2156C((v8 + 552));
  v49 = sub_21524();
  v50 = sub_2155C(&v194, v49);
  v39(v50);
  sub_2156C((v8 + 592));
  v51 = sub_21524();
  v52 = sub_2155C(&v189, v51);
  v39(v52);
  sub_2156C((v8 + 632));
  v53 = sub_21524();
  v54 = sub_2155C(&v191 + 8, v53);
  v39(v54);
  sub_2156C((v8 + 672));
  v55 = sub_21524();
  v56 = sub_215EC();
  v39(v56);
  sub_2156C((v8 + 752));
  v57 = sub_21524();
  v58 = sub_2155C(v212, v57);
  v39(v58);
  sub_2156C((v8 + 712));
  sub_21524();
  v59 = sub_215EC();
  v39(v59);
  sub_162F0(v8, *(v8 + 24));
  sub_21770(a3, a4, a5);
  v215.origin.x = sub_217D4();
  CGRectGetMinY(v215);
  v159[0] = v38;
  sub_217D4();
  sub_13BE44();
  sub_215EC();
  sub_13A354();
  sub_162F0(v8, *(v8 + 24));
  sub_215EC();
  sub_13A344();
  CGRectGetWidth(v216);
  v167 = a1;
  v60 = [a1 traitCollection];
  [v60 layoutDirection];

  sub_13BE34();
  v164 = v61;
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v62 = *(sub_13A4F4() - 8);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v161 = *(v62 + 72);
  v64 = swift_allocObject();
  v191 = xmmword_13E660;
  *(v64 + 16) = xmmword_13E660;
  v163 = v64;
  *&v187 = v64 + v63;
  v65 = *(v8 + 224);
  sub_162F0((v8 + 200), v65);
  sub_21844();
  sub_9EF8();
  (*(v66 + 16))();
  v209 = &type metadata for CGFloat;
  v210 = &protocol witness table for CGFloat;
  v208[0] = v186;
  sub_21884();
  if (sub_13A364())
  {
    v67 = &type metadata for CGFloat;
    v68 = &protocol witness table for CGFloat;
  }

  else
  {
    sub_21884();
    if (sub_13A324())
    {
      v69 = 0.0;
      v68 = &protocol witness table for Double;
      v67 = &type metadata for Double;
      goto LABEL_9;
    }

    v68 = &protocol witness table for CGFloat;
    v67 = &type metadata for CGFloat;
  }

  v69 = v55;
LABEL_9:
  v206 = v67;
  v207 = v68;
  v205 = v69;
  v70 = v201;
  v71 = *(*&v201 + 104);
  v72 = v192;
  LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v73 = v193;
  v185 = *&v201 + 104;
  v184 = v71;
  v71(*&v192);
  v74 = sub_4948(&qword_19AFE8, &unk_140260);
  v75 = v202;
  v76 = *(*&v202 + 72);
  v77 = (*(*&v202 + 80) + 32) & ~*(*&v202 + 80);
  v181 = *(*&v202 + 80);
  v182 = v74;
  v180 = v77 + 3 * v76;
  v78 = swift_allocObject();
  sub_215BC(v78);
  *(v79 - 256) = v77;
  sub_13A484();
  sub_13A494();
  v178 = 2 * v76;
  v183 = v76;
  sub_13A4A4();
  v204 = v65;
  v80 = sub_20068();
  v81 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v82 = sub_1D268();
  v83 = v194;
  v177 = v81;
  v176 = v82;
  v84 = v195;
  v179 = v80;
  sub_13BF64();
  v85 = v203;
  v86 = *(*&v203 + 104);
  v87 = v196;
  v175 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v88 = MinX;
  v174 = *&v203 + 104;
  v173 = v86;
  v86(*&v196);
  sub_216F4();
  sub_13A4E4();
  v89 = *(*&v85 + 8);
  *&v203 = *&v85 + 8;
  v172 = v89;
  v89(*&v87, *&v88);
  v90 = *(*&v75 + 8);
  *&v202 = *&v75 + 8;
  v171 = v90;
  v90(*&v83, *&v84);
  v91 = *(*&v70 + 8);
  *&v201 = *&v70 + 8;
  v160 = v91;
  v91(*&v72, *&v73);
  sub_1D2CC(&v205);
  sub_3C04(v208);
  sub_3C04(&v211);
  v92 = *(v8 + 184);
  v93 = *(v8 + 192);
  sub_162F0((v8 + 160), v92);
  v213 = v92;
  v214 = *(v93 + 8);
  sub_CC08(&v211);
  sub_9EF8();
  (*(v94 + 16))();
  v209 = &type metadata for CGFloat;
  v210 = &protocol witness table for CGFloat;
  v208[0] = v162;
  v95 = *(v8 + 152);
  sub_21680((v8 + 120), *(v8 + 144));
  if (sub_13A364())
  {
    v96 = &type metadata for CGFloat;
    v97 = &protocol witness table for CGFloat;
  }

  else
  {
    v95 = *(v8 + 152);
    sub_21680((v8 + 120), *(v8 + 144));
    if (sub_13A324())
    {
      v98 = 0.0;
      v97 = &protocol witness table for Double;
      v96 = &type metadata for Double;
      goto LABEL_15;
    }

    v97 = &protocol witness table for CGFloat;
    v96 = &type metadata for CGFloat;
  }

  v98 = v55;
LABEL_15:
  v206 = v96;
  v207 = v97;
  v205 = v98;
  v99 = v192;
  v100 = v193;
  sub_21704();
  v101();
  v102 = sub_216C8();
  sub_215BC(v102);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v204 = v95;
  sub_2174C();
  sub_21864(v103, v104, v105);
  sub_21830();
  sub_21808();
  v106();
  v107 = v161;
  v108 = v187;
  sub_216F4();
  sub_13A4E4();
  sub_215AC();
  v109();
  sub_21640();
  v110();
  v111 = v160;
  v160(*&v99, *&v100);
  sub_1D2CC(&v205);
  sub_3C04(v208);
  sub_3C04(&v211);
  *&v187 = *&v108 + 2 * v107;
  v112 = *(v8 + 144);
  sub_162F0((v8 + 120), v112);
  sub_21844();
  sub_9EF8();
  (*(v113 + 16))();
  v209 = &type metadata for CGFloat;
  v210 = &protocol witness table for CGFloat;
  v208[0] = v165;
  v206 = &type metadata for CGFloat;
  v207 = &protocol witness table for CGFloat;
  v205 = v55;
  sub_21704();
  v114();
  v115 = sub_216C8();
  sub_215BC(v115);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v204 = v112;
  sub_2174C();
  sub_21864(v116, v117, v118);
  sub_21830();
  sub_21808();
  v119();
  sub_216F4();
  sub_13A4E4();
  sub_215AC();
  v120();
  sub_21640();
  v121();
  v111(*&v99, *&v100);
  sub_1D2CC(&v205);
  sub_3C04(v208);
  sub_3C04(&v211);
  v35 = v188;
  sub_13A4D4();
  v122 = v189;
  sub_13A474();
  sub_13A2D4();
  if (v123 > v166)
  {
    v124 = v123;
  }

  else
  {
    v124 = v166;
  }

  sub_21680((v8 + 80), *(v8 + 104));
  if (sub_13A324())
  {
    v203 = 0.0;
    v194 = v124;
    v125 = a3;
    v126 = v200;
    sub_13BE34();
    sub_13BE44();
    v127 = a4;
    v129 = v128;
    v201 = v128;
    v131 = v130;
    v133 = v132;
    v135 = v134;
    sub_21664((v8 + 240));
    v217.origin.x = v125;
    v217.origin.y = v127;
    v217.size.width = a5;
    v217.size.height = v126;
    MinX = CGRectGetMinX(v217);
    v218.origin.x = v129;
    v218.origin.y = v131;
    v218.size.width = v133;
    v218.size.height = v135;
    CGRectGetMinY(v218);
    v219.origin.x = v125;
    v202 = v127;
    v219.origin.y = v127;
    v195 = a5;
    v219.size.width = a5;
    v219.size.height = v126;
    v136 = v125;
    CGRectGetWidth(v219);
    sub_217B4();
    sub_13A354();
    sub_13BE34();
    v138 = v137;
    v140 = v139;
    MinX = v141;
    v196 = v142;
    sub_21664((v8 + 40));
    sub_217B4();
    v143 = sub_13A324();
    v144 = v190;
    v201 = v136;
    if (v143)
    {
      v220.origin.x = sub_21764();
      v145 = MinX;
      v220.size.width = MinX;
      v146 = v196;
      v220.size.height = v196;
      Height = CGRectGetHeight(v220);
      v193 = *(v8 + 384);
      v148 = (Height - v193) * 0.5;
      v149 = v200;
      if (v148 <= v159[0])
      {
        v148 = v159[0];
      }

      v192 = v148;
      sub_21664((v8 + 40));
      v221.origin.x = v136;
      v221.origin.y = v202;
      v221.size.width = v195;
      v221.size.height = v149;
      CGRectGetMinX(v221);
      v222.origin.x = sub_21764();
      v222.size.width = v145;
      v222.size.height = v146;
      CGRectGetMinY(v222);
      sub_13BE44();
      sub_217B4();
      sub_13A354();
    }

    v150 = v195;
    sub_21664((v8 + 40));
    sub_217B4();
    if (sub_13A324())
    {
      v203 = v159[1] + *(v8 + 376);
    }

    v223.origin.x = sub_21764();
    v151 = MinX;
    v223.size.width = MinX;
    v152 = v196;
    v223.size.height = v196;
    CGRectGetWidth(v223);
    v224.origin.x = sub_21764();
    v224.size.width = v151;
    v224.size.height = v152;
    CGRectGetHeight(v224);
    *&v191 = v140;
    v153 = v168;
    sub_21664((v8 + 80));
    sub_13A384();
    v193 = v154;
    v156 = v155;
    v192 = v155;
    v225.origin.x = sub_21764();
    v225.size.width = v151;
    v225.size.height = v152;
    v157 = (CGRectGetHeight(v225) - v156) * 0.5;
    if (v157 <= v153)
    {
      v157 = v153;
    }

    v187 = v157;
    sub_21664((v8 + 80));
    sub_21770(v201, v202, v150);
    v226.origin.x = v138;
    *&v226.origin.y = v191;
    v226.size.width = v151;
    v226.size.height = v152;
    CGRectGetMinY(v226);
    sub_21650();
    sub_13BE44();
    sub_13A354();
    v227.origin.x = sub_21650();
    CGRectGetMinX(v227);
    v228.origin.x = sub_21650();
    CGRectGetMinY(v228);
    sub_13A2C4();
    (*(v144 + 8))(v122, v170);
  }

  else
  {
    sub_21770(a3, a4, a5);
    v229.origin.x = a3;
    v229.origin.y = a4;
    v229.size.width = a5;
    v229.size.height = v7;
    CGRectGetMinY(v229);
    sub_13A2C4();
    (*(v190 + 8))(v122, v170);
  }

  return (*(v197 + 8))(v35, v198);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.contentTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1);

  return sub_9414(a1, v1);
}

uint64_t AppRatingLockupComponentLayout.Metrics.footnoteSeparatorBottom.setter(__int128 *a1)
{
  sub_3C04((v1 + 56));

  return sub_9414(a1, v1 + 56);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 112));

  return sub_9414(a1, v1 + 112);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 152));

  return sub_9414(a1, v1 + 152);
}

uint64_t OfferPlatterComponentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 192));

  return sub_9414(a1, v1 + 192);
}

uint64_t OfferPlatterComponentLayout.Metrics.infoTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 232));

  return sub_9414(a1, v1 + 232);
}

uint64_t AppLockupComponentLayout.Metrics.minimumComponentHeight.setter(__int128 *a1)
{
  sub_3C04((v1 + 272));

  return sub_9414(a1, v1 + 272);
}

uint64_t AppLockupComponentLayout.Metrics.minimumFooterHeight.setter(__int128 *a1)
{
  sub_3C04((v1 + 312));

  return sub_9414(a1, v1 + 312);
}

uint64_t AppLockupComponentLayout.Metrics.subtitleTop.setter(__int128 *a1)
{
  sub_3C04((v1 + 352));

  return sub_9414(a1, v1 + 352);
}

uint64_t AppLockupComponentLayout.Metrics.textBottom.setter(__int128 *a1)
{
  sub_3C04((v1 + 392));

  return sub_9414(a1, v1 + 392);
}

uint64_t AppLockupComponentLayout.Metrics.textLeading.setter(__int128 *a1)
{
  sub_3C04((v1 + 432));

  return sub_9414(a1, v1 + 432);
}

uint64_t AppLockupComponentLayout.Metrics.textTop.setter(__int128 *a1)
{
  sub_3C04((v1 + 472));

  return sub_9414(a1, v1 + 472);
}

uint64_t sub_1F144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v101 = sub_13A4F4();
  v121 = *(v101 - 8);
  v103 = v121;
  __chkstk_darwin(v101);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v3);
  sub_18B60();
  __chkstk_darwin(v4);
  sub_2159C(v97 - v5);
  v125 = sub_13A4C4();
  sub_9E94();
  v123 = v6;
  __chkstk_darwin(v7);
  sub_21548();
  v122 = v8;
  v112 = sub_13A454();
  v124 = *(v112 - 8);
  __chkstk_darwin(v112);
  sub_21548();
  sub_2159C(v9);
  v10 = sub_13A4B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v12);
  v14 = v97 - v13;
  sub_4948(&qword_19AFE8, &unk_140260);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_140280;
  sub_13A494();
  v132 = v15;
  v115 = sub_20068();
  v114 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v16 = sub_1D268();
  v102 = v14;
  v17 = v122;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_217E8();
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v108 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_140290;
  v100 = v19;
  v98 = v21;
  v113 = v21 + v19;
  sub_162F0(v2, v2[3]);
  sub_13A374();
  sub_4B14((v2 + 35), v130);
  v22 = *(v124 + 104);
  v23 = v110;
  LODWORD(v121) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v109 = v124 + 104;
  v107 = v22;
  (v22)(v110);
  v24 = v123;
  v25 = *(v123 + 104);
  v120 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v119 = v123 + 104;
  v118 = v25;
  v25(v17);
  v127 = &_swiftEmptyArrayStorage;
  v26 = v104;
  sub_215F8();
  *(v27 - 256) = v16;
  sub_2169C(v28, v29, v16);
  sub_13A4E4();
  v30 = *(v11 + 8);
  v105 = v10;
  v31 = v124;
  v117 = v11 + 8;
  v116 = v30;
  v30(v26, v10);
  v111 = *(v24 + 8);
  v123 = v24 + 8;
  v111(v17, v125);
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  v34(v23, v112);
  sub_1D2CC(v130);
  sub_3C04(&v132);
  sub_162F0(v2 + 25, v2[28]);
  sub_21608();
  sub_9EF8();
  (*(v35 + 16))();
  sub_4B14((v2 + 94), v130);
  sub_21680(v2 + 20, v2[23]);
  if (sub_13A324())
  {
    v128 = &type metadata for Double;
    v129 = &protocol witness table for Double;
    v127 = 0;
  }

  else
  {
    sub_4B14((v2 + 84), &v127);
  }

  v36 = v110;
  sub_215D4();
  v37 = v107;
  v107();
  v126 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_13BF64();
  v38 = v122;
  sub_216BC();
  v39 = v125;
  sub_215AC();
  v40();
  sub_13A4E4();
  v111(v38, v39);
  sub_2181C();
  v41();
  v33(v36, v10);
  sub_3C04(v130);
  sub_1D2CC(&v127);
  sub_3C04(&v132);
  sub_162F0(v2 + 20, v2[23]);
  sub_21608();
  sub_9EF8();
  (*(v42 + 16))();
  sub_4B14((v2 + 79), v130);
  sub_21680(v2 + 15, v2[18]);
  v43 = sub_13A324();
  v106 = v33;
  v124 = v32;
  if (v43)
  {
    v129 = &protocol witness table for Double;
    v128 = &type metadata for Double;
    v127 = 0;
  }

  else
  {
    sub_4B14((v2 + 84), &v127);
  }

  v44 = v108;
  v45 = v110;
  v46 = v112;
  (v37)(v110, v121, v112);
  v126 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_2169C(v48, v49, *(v47 - 256));
  v50 = v122;
  sub_216BC();
  v51 = v125;
  sub_2178C();
  v52();
  sub_13A4E4();
  v111(v50, v51);
  sub_21640();
  v53();
  v106(v45, v46);
  sub_3C04(v130);
  sub_1D2CC(&v127);
  sub_3C04(&v132);
  v97[3] = 3 * v44;
  sub_162F0(v2 + 15, v2[18]);
  sub_21608();
  sub_9EF8();
  (*(v54 + 16))();
  sub_4B14((v2 + 84), v130);
  sub_217F4();
  v107();
  v127 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_2169C(v56, v57, *(v55 - 256));
  sub_216BC();
  sub_2178C();
  v58();
  v59 = v111;
  v60 = v125;
  sub_13A4E4();
  v59(v50, v60);
  sub_21640();
  v61();
  v106(v45, v46);
  sub_1D2CC(v130);
  sub_3C04(&v132);
  sub_21680(v2 + 10, v2[13]);
  if (sub_13A324())
  {
    v134 = &protocol witness table for Double;
    v133 = &type metadata for Double;
    v132 = 0;
    v131 = 0;
    memset(v130, 0, sizeof(v130));
    sub_217F4();
    v107();
    v62 = v122;
    sub_216BC();
    sub_215AC();
    v63();
    sub_13A4E4();
    v59(v62, v60);
    v106(v45, v46);
    sub_1D2CC(v130);
    sub_3C04(&v132);
    v64 = v98;
    v66 = *(v98 + 16);
    v65 = *(v98 + 24);
    if (v66 >= v65 >> 1)
    {
      v87 = sub_217A0(v65);
      sub_58ABC(v87, v88, v89, v64);
      v64 = v90;
    }

    *(v64 + 16) = v66 + 1;
    sub_21734();
    sub_217E8();
    v68 = *(v67 + 32);
    v103 = v67 + 32;
    v68();
    sub_162F0(v2 + 5, v2[8]);
    if (sub_13A324())
    {
      sub_162F0(v2 + 5, v2[8]);
      sub_13A374();
      sub_4B14((v2 + 35), v130);
      sub_215D4();
      v107();
      v69 = v122;
      sub_216BC();
      v70 = v125;
      sub_215AC();
      v71();
      sub_13A4E4();
      v111(v69, v70);
      sub_217C0();
      v72();
      sub_1D2CC(v130);
      sub_3C04(&v132);
      v74 = *(v64 + 16);
      v73 = *(v64 + 24);
      v75 = v64;
      if (v74 >= v73 >> 1)
      {
        v92 = sub_217A0(v73);
        sub_58ABC(v92, v93, v94, v95);
        v75 = v96;
      }

      v64 = v75;
      *(v75 + 16) = v74 + 1;
      sub_217E8();
      v68();
    }

    v76 = v2[13];
    v77 = v2[14];
    sub_162F0(v2 + 10, v76);
    v133 = v76;
    v134 = *(v77 + 8);
    sub_CC08(&v132);
    sub_9EF8();
    (*(v78 + 16))();
    sub_4B14((v2 + 84), v130);
    sub_215D4();
    v107();
    v79 = v122;
    sub_216BC();
    v80 = v125;
    sub_215AC();
    v81();
    sub_13A4E4();
    v111(v79, v80);
    sub_217C0();
    v82();
    sub_1D2CC(v130);
    sub_3C04(&v132);
    v84 = *(v64 + 16);
    v83 = *(v64 + 24);
    if (v84 >= v83 >> 1)
    {
      sub_58ABC(v83 > 1, v84 + 1, 1, v64);
      v64 = v91;
    }

    *(v64 + 16) = v84 + 1;
    sub_21734();
    sub_217E8();
    v68();
  }

  sub_13A4D4();
  sub_2181C();
  return v85();
}

double AppLockupComponentLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_200C0(v1, v2, v3, v4);
}

unint64_t sub_20068()
{
  result = qword_1A0740;
  if (!qword_1A0740)
  {
    sub_13A4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0740);
  }

  return result;
}

double sub_200C0(void *a1, void *a2, double a3, double a4)
{
  v128 = sub_13A4C4();
  v132 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_13A4B4();
  v131 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_13A454();
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13A514();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v122 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v96 - v19;
  v21 = [a1 traitCollection];
  v22 = sub_13BDE4();

  if (v22)
  {
    sub_1F144(v20);
    sub_13A464();
    a3 = v23;
    (*(v15 + 8))(v20, v14);
  }

  else
  {
    v103 = v14;
    v102 = v15;
    sub_162F0(a2 + 49, a2[52]);
    sub_13A284();
    sub_13A404();
    v96[3] = v24;
    v25 = *(v11 + 8);
    v25(v13, v10);
    sub_162F0(a2 + 54, a2[57]);
    sub_13A284();
    sub_13A404();
    v96[0] = v26;
    v25(v13, v10);
    sub_162F0(a2 + 59, a2[62]);
    sub_13A284();
    sub_13A404();
    v96[2] = v27;
    v25(v13, v10);
    sub_162F0(a2 + 64, a2[67]);
    sub_13A284();
    sub_13A404();
    v100 = v28;
    v25(v13, v10);
    sub_162F0(a2 + 69, a2[72]);
    sub_13A284();
    sub_13A404();
    v25(v13, v10);
    sub_162F0(a2 + 74, a2[77]);
    sub_13A284();
    sub_13A404();
    v96[1] = v29;
    v25(v13, v10);
    sub_162F0(a2 + 79, a2[82]);
    sub_13A284();
    sub_13A404();
    v31 = v30;
    v25(v13, v10);
    sub_162F0(a2 + 84, a2[87]);
    sub_13A284();
    sub_13A404();
    v33 = v32;
    v25(v13, v10);
    sub_162F0(a2 + 94, a2[97]);
    sub_13A284();
    sub_13A404();
    v35 = v34;
    v25(v13, v10);
    sub_162F0(a2 + 89, a2[92]);
    sub_13A284();
    sub_13A404();
    v25(v13, v10);
    sub_4948(&qword_19AFE0, &unk_1402A0);
    v36 = *(sub_13A4F4() - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v98 = *(v36 + 72);
    v38 = swift_allocObject();
    v123 = xmmword_13E660;
    *(v38 + 16) = xmmword_13E660;
    v99 = v38;
    v121 = v38 + v37;
    v39 = a2[28];
    v40 = a2[29];
    v41 = sub_162F0(a2 + 25, v39);
    v141 = v39;
    v142 = *(v40 + 8);
    v42 = sub_CC08(&v140);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    v138 = &type metadata for CGFloat;
    v139 = &protocol witness table for CGFloat;
    v137 = v35;
    sub_162F0(a2 + 20, a2[23]);
    v43 = sub_13A364();
    v101 = a1;
    if ((v43 & 1) != 0 || (sub_162F0(a2 + 20, a2[23]), (sub_13A324() & 1) == 0))
    {
      v45 = &protocol witness table for CGFloat;
      v46 = &type metadata for CGFloat;
      v44 = v33;
    }

    else
    {
      v44 = 0;
      v45 = &protocol witness table for Double;
      v46 = &type metadata for Double;
    }

    v135 = v46;
    v136 = v45;
    v134 = v44;
    v47 = v130;
    v48 = *(v130 + 104);
    v49 = v124;
    v120 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v50 = v129;
    v119 = v130 + 104;
    v118 = v48;
    v48(v124);
    v51 = sub_4948(&qword_19AFE8, &unk_140260);
    v52 = v131;
    v53 = *(v131 + 72);
    v54 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v114 = *(v131 + 80);
    v116 = v51;
    v113 = v54 + 3 * v53;
    v55 = swift_allocObject();
    *(v55 + 16) = v123;
    v115 = v54;
    sub_13A484();
    sub_13A494();
    v111 = 2 * v53;
    v117 = v53;
    sub_13A4A4();
    v133 = v55;
    v56 = sub_20068();
    v57 = sub_4948(&qword_19AFF0, &unk_1402B0);
    v58 = sub_1D268();
    v59 = v126;
    v110 = v57;
    v109 = v58;
    v60 = v127;
    v112 = v56;
    sub_13BF64();
    v61 = v132;
    v62 = *(v132 + 104);
    v63 = v125;
    v108 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v64 = v128;
    v107 = v132 + 104;
    v106 = v62;
    v62(v125);
    sub_13A4E4();
    v65 = *(v61 + 8);
    v132 = v61 + 8;
    v105 = v65;
    v65(v63, v64);
    v66 = *(v52 + 8);
    v131 = v52 + 8;
    v104 = v66;
    v66(v59, v60);
    v67 = *(v47 + 8);
    v130 = v47 + 8;
    v97 = v67;
    v67(v49, v50);
    sub_1D2CC(&v134);
    sub_3C04(&v137);
    sub_3C04(&v140);
    v68 = a2[23];
    v69 = a2[24];
    v70 = sub_162F0(a2 + 20, v68);
    v141 = v68;
    v142 = *(v69 + 8);
    v71 = sub_CC08(&v140);
    (*(*(v68 - 8) + 16))(v71, v70, v68);
    v138 = &type metadata for CGFloat;
    v139 = &protocol witness table for CGFloat;
    v137 = v31;
    sub_162F0(a2 + 15, a2[18]);
    if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
    {
      v73 = &protocol witness table for CGFloat;
      v74 = &type metadata for CGFloat;
      v72 = v33;
    }

    else
    {
      v72 = 0;
      v73 = &protocol witness table for Double;
      v74 = &type metadata for Double;
    }

    v135 = v74;
    v136 = v73;
    v134 = v72;
    v75 = v124;
    v76 = v129;
    v118(v124, v120, v129);
    v77 = swift_allocObject();
    *(v77 + 16) = v123;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v133 = v77;
    v78 = v126;
    v79 = v127;
    sub_13BF64();
    v80 = v125;
    v81 = v128;
    v106(v125, v108, v128);
    v82 = v98;
    v83 = v121;
    sub_13A4E4();
    v105(v80, v81);
    v104(v78, v79);
    v84 = v97;
    v97(v75, v76);
    sub_1D2CC(&v134);
    sub_3C04(&v137);
    sub_3C04(&v140);
    v121 = v83 + 2 * v82;
    v85 = a2[18];
    v86 = a2[19];
    v87 = sub_162F0(a2 + 15, v85);
    v141 = v85;
    v142 = *(v86 + 8);
    v88 = sub_CC08(&v140);
    (*(*(v85 - 8) + 16))(v88, v87, v85);
    v138 = &type metadata for CGFloat;
    v139 = &protocol witness table for CGFloat;
    v137 = v100;
    v135 = &type metadata for CGFloat;
    v136 = &protocol witness table for CGFloat;
    v134 = v33;
    v89 = v129;
    v118(v75, v120, v129);
    v90 = swift_allocObject();
    *(v90 + 16) = v123;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v133 = v90;
    sub_13BF64();
    v106(v80, v108, v81);
    sub_13A4E4();
    v105(v80, v81);
    v104(v78, v79);
    v84(v75, v89);
    sub_1D2CC(&v134);
    sub_3C04(&v137);
    sub_3C04(&v140);
    v91 = v122;
    sub_13A4D4();
    sub_13A464();
    v93 = v92;
    sub_162F0(a2 + 10, a2[13]);
    if (sub_13A324())
    {
      sub_162F0(a2 + 5, a2[8]);
      sub_13A324();
      v94 = v102;
      sub_162F0(a2 + 10, a2[13]);
      sub_13A384();
      (*(v94 + 8))(v91, v103);
    }

    else
    {
      (*(v102 + 8))(v91, v103);
      return v93;
    }
  }

  return a3;
}

unint64_t sub_21248()
{
  result = qword_19B000;
  if (!qword_19B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B000);
  }

  return result;
}

uint64_t sub_212A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 792))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_212E4(uint64_t result, int a2, int a3)
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
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

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2140C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 512))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21524()
{

  sub_13A404();
  return result;
}

uint64_t sub_2156C(void *a1)
{
  sub_162F0(a1, v1);

  return sub_13A284();
}

__n128 sub_215BC(__n128 *a1)
{
  result = *(v1 - 400);
  a1[1] = result;
  return result;
}

uint64_t *sub_21608()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = *(v1 + 8);

  return sub_CC08((v2 - 128));
}

uint64_t sub_2169C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_13BF64();
}

uint64_t sub_216C8()
{

  return swift_allocObject();
}

double sub_21770(double a1, double a2, double a3)
{
  v5 = *(v3 - 312);

  return CGRectGetMinX(*&a1);
}

uint64_t *sub_21844()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = *(v0 + 8);

  return sub_CC08((v2 - 192));
}

uint64_t sub_21864(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_13BF64();
}

uint64_t sub_21884()
{
  v1 = *(v0 + 184);
  sub_162F0((v0 + 160), v1);
  return v1;
}

unint64_t sub_218B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183EF0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_218FC(char a1)
{
  if (!a1)
  {
    return 0x6853726564616568;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x68537265746F6F66;
}

unint64_t sub_21980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_219B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_218FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_218B0(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_22F30(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    a3[4] = &off_186380;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_22F30(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_22F30(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppLockupInstallSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 88);
      }

      else
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_21F00@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x108uLL);
}

uint64_t sub_221B8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_183F58;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2220C(char a1)
{
  if (a1)
  {
    return 0x68537265746F6F66;
  }

  else
  {
    return 0x6C65685374786574;
  }
}

uint64_t sub_222D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2220C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_221B8(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_22FB8(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    a3[4] = &off_186330;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0xB0uLL);
    return sub_22FB8(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v18 = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_22FB8(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppLockupInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v14 = (v13 + 16);
      v15 = v3;
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v17);
  }
}

void *sub_22814@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_22BFC@<X0>(uint64_t *a1@<X8>)
{
  sub_21F00(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x108uLL);
  sub_22814(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_22D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22BFC(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_22DB8()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_22E48()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_22EB8()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_22F68()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for AppLockupInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x230BCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLockupInstallSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x231C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231FC()
{
  result = qword_19B008;
  if (!qword_19B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B008);
  }

  return result;
}

unint64_t sub_23254()
{
  result = qword_19B010;
  if (!qword_19B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B010);
  }

  return result;
}

uint64_t type metadata accessor for AppRatingLockup(uint64_t a1)
{
  result = qword_19B078;
  if (!qword_19B078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v126 = a3;
  v6 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v6 - 8);
  v129 = &v123 - v7;
  v128 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v8);
  v131 = &v123 - v9;
  v10 = sub_13B584();
  v147 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v13 = &v123 - v12;
  __chkstk_darwin(v14);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v15);
  v17 = &v123 - v16;
  __chkstk_darwin(v18);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v19);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v21);
  v22 = type metadata accessor for AppRatingLockup(0);
  sub_9F94();
  __chkstk_darwin(v23);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v140 = swift_initStackObject();
  v142 = a2;
  v26 = sub_9DD0();
  v133 = v13;
  v132 = v17;
  if (v3)
  {

    v26 = 0;
  }

  v136 = v26;
  *(v25 + 2) = v26;
  v27 = sub_BB310();
  v139 = v10;
  v28 = v22;
  *v25 = v27;
  *(v25 + 1) = v29;
  v135 = v29;
  sub_13B594();
  v30 = &enum case for JSONError.missingProperty(_:);
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    v33 = sub_244A0(v31, v32, &protocol conformance descriptor for JSONError);
    sub_9F18(v33);
    *v34 = 0x65746F6E746F6F66;
    v34[1] = 0xE800000000000000;
    v34[2] = v22;
    sub_9EF8();
    (*(v35 + 104))();
    swift_willThrow();
    v36 = sub_24994();
    v37(v36);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    v53 = sub_24994();
    v54(v53);
    sub_249B4();
  }

  v38 = v145;
  *(v25 + 4) = v144;
  *(v25 + 5) = v38;
  *(v25 + 12) = v146;
  v39 = sub_BB310();
  v125 = 0;
  *&v144 = v39;
  *(&v144 + 1) = v40;
  sub_13BFB4();
  v41 = v130;
  v127 = a1;
  sub_13B594();
  v42 = sub_13B564();
  v138 = &enum case for JSONError.missingProperty(_:);
  if (v42)
  {
    goto LABEL_9;
  }

  v44 = v129;
  sub_7738(v41, v141, v43);
  if (sub_52E0(v44, 1, v128) == 1)
  {
    sub_928C(v44, &qword_19A420, &unk_13F430);
    v30 = v138;
LABEL_9:
    sub_13BAB4();
    sub_24948();
    v47 = sub_244A0(v45, v46, &protocol conformance descriptor for JSONError);
    sub_9F18(v47);
    *v48 = 0xD000000000000011;
    v48[1] = 0x800000000014E730;
    v48[2] = v22;
    sub_9EF8();
    (*(v49 + 104))();
    swift_willThrow();
    sub_24988();
    v30(v41, 0xE800000000000000);

    v50 = sub_13B7A4();
    v51 = v131;
    sub_53A8(v131, 1, 1, v50);
    v52 = 0;
    goto LABEL_11;
  }

  sub_24988();
  sub_24978();
  v55();
  v56 = v44;
  v51 = v131;
  sub_92E4(v56, v131);
  v52 = v125;
LABEL_11:
  sub_92E4(v51, &v25[*(v22 + 52)]);
  sub_13B594();
  if (sub_13B564())
  {
LABEL_14:
    v57 = sub_13BAB4();
    sub_24948();
    sub_244A0(v58, v59, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v60 = 1868983913;
    v60[1] = 0xE400000000000000;
    v60[2] = v22;
    (*(*(v57 - 8) + 104))(v60, enum case for JSONError.missingProperty(_:), v57);
    swift_willThrow();
    sub_24988();
    sub_24960();
    v61();

    sub_18B90();
    goto LABEL_15;
  }

  sub_139DB4();
  if (v52)
  {

    sub_18BAC();
    sub_928C(v143, &qword_19E960, &qword_13FD30);
    goto LABEL_14;
  }

  sub_24988();
  sub_24960();
  v112();
  sub_249B4();
LABEL_15:
  v62 = v145;
  *(v25 + 104) = v144;
  *(v25 + 120) = v62;
  *(v25 + 17) = v146;
  v63 = v127;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    v66 = sub_244A0(v64, v65, &protocol conformance descriptor for JSONError);
    sub_9F18(v66);
    *v67 = 0x7469736F706F7270;
    v67[1] = 0xEB000000006E6F69;
    v67[2] = v28;
    sub_9EF8();
    (*(v68 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24978();
    v69();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_24988();
    sub_24978();
    v113();
    sub_249B4();
  }

  v70 = v145;
  *(v25 + 24) = v144;
  *(v25 + 40) = v70;
  *(v25 + 7) = v146;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    v73 = sub_244A0(v71, v72, &protocol conformance descriptor for JSONError);
    v74 = sub_9F18(v73);
    sub_249E4(v74, v75);
    sub_9EF8();
    (*(v76 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24960();
    v77();

    sub_18B90();
  }

  else
  {
    sub_139BC4();
    sub_24988();
    sub_24960();
    v114();
    sub_249B4();
  }

  v78 = &v25[*(v28 + 56)];
  v79 = v145;
  *v78 = v144;
  *(v78 + 1) = v79;
  *(v78 + 4) = v146;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    v82 = sub_244A0(v80, v81, &protocol conformance descriptor for JSONError);
    sub_9F18(v82);
    *v83 = 0x676E69746172;
    v83[1] = 0xE600000000000000;
    v83[2] = v28;
    sub_9EF8();
    (*(v84 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24978();
    v85();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_24988();
    sub_24978();
    v115();
    sub_249B4();
  }

  v86 = v145;
  *(v25 + 9) = v144;
  *(v25 + 10) = v86;
  *(v25 + 22) = v146;
  sub_13B594();
  v87 = sub_13B564();
  v124 = v28;
  if (v87)
  {
    v116 = v63;
    sub_13BAB4();
    sub_24948();
    v90 = sub_244A0(v88, v89, &protocol conformance descriptor for JSONError);
    v91 = sub_9F18(v90);
    sub_249E4(v91, v92);
    sub_9EF8();
    (*(v93 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24960();
    v94();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    v116 = v63;
    sub_24988();
    sub_24960();
    v117();
    sub_249B4();
  }

  v95 = v145;
  *(v25 + 184) = v144;
  *(v25 + 200) = v95;
  *(v25 + 27) = v146;
  v96 = v134;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    v100 = sub_244A0(v98, v99, &protocol conformance descriptor for JSONError);
    sub_9F18(v100);
    *v101 = 0x656C746974;
    v101[1] = 0xE500000000000000;
    v102 = v124;
    v101[2] = v124;
    sub_9EF8();
    (*(v103 + 104))();
    swift_willThrow();

    v104 = v116;
    v105 = v138;
    v138(v104, 0xE800000000000000);
    v105(v96, 0xE800000000000000);
    v106 = v141;
    v107 = v125;
    sub_13B5A4();
    sub_9F94();
    (*(v108 + 8))(v106);

    if (v107)
    {
      v109 = &qword_19E960;
      v110 = &qword_13FD30;
      v111 = (v25 + 64);
    }

    else
    {
      sub_249CC((v25 + 24));
      sub_249CC((v25 + 64));
      sub_249CC((v25 + 104));
      sub_249CC((v25 + 144));
      sub_249CC((v25 + 184));
      sub_9238((v25 + 264));
      sub_928C(&v25[*(v102 + 52)], &qword_19A350, &unk_13F2C0);
      v109 = &unk_19E320;
      v110 = &unk_140950;
      v111 = &v25[*(v102 + 56)];
    }

    return sub_928C(v111, v109, v110);
  }

  else
  {
    v97 = v141;
    sub_139DB4();
    v118 = v116;
    v119 = v138;
    v120 = v139;
    v138(v118, v139);
    v119(v96, v120);
    sub_249B4();
    sub_9414(&v144, (v25 + 224));
    sub_244E8(v25, v126);
    sub_13B5A4();
    sub_9F94();
    (*(v121 + 8))(v97);
    return sub_2454C(v25);
  }
}

uint64_t sub_244A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_244E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRatingLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2454C(uint64_t a1)
{
  v2 = type metadata accessor for AppRatingLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 248);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_24664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 248) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_246F0(uint64_t a1)
{
  sub_24850();
  if (v1 <= 0x3F)
  {
    sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
      if (v3 <= 0x3F)
      {
        sub_18A28();
        if (v4 <= 0x3F)
        {
          sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
          if (v5 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
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

void sub_24850()
{
  if (!qword_19AE28)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19AE28);
    }
  }
}

void sub_248A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_248F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_558C(a3, a4);
    v5 = sub_13BF44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_249B4()
{

  return sub_9414((v0 - 208), v0 - 160);
}

uint64_t sub_249CC(uint64_t a1)
{

  return sub_928C(a1, v1, v2);
}

void *sub_249E4(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v3;
  return result;
}

void sub_249F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19B128, &qword_1409D8);
  sub_13B5E4();

  if (v151[0])
  {
    sub_26154(v151[0], a3);
  }

  swift_getKeyPath();
  sub_13B5E4();

  v13 = sub_2523C(v5, v6, v7, v8, v9, v10, v11, v12, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
  v14(v13);
  sub_3C04(v151);
  KeyPath = swift_getKeyPath();
  sub_2521C(KeyPath, v16, v17, v18, v19, v20, v21, v22, v147);

  if (v149)
  {
    sub_25248(v23, v24, v25, v26, v27, v28, v29, v30, v147, v148, v149, v150);
    sub_25204();
    v39 = sub_2523C(v31, v32, v33, v34, v35, v36, v37, v38, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
    v40(v39);
    sub_3C04(v151);
  }

  else
  {
    sub_2519C(&v147);
  }

  v41 = swift_getKeyPath();
  sub_2521C(v41, v42, v43, v44, v45, v46, v47, v48, v147);

  if (v149)
  {
    sub_25248(v49, v50, v51, v52, v53, v54, v55, v56, v147, v148, v149, v150);
    sub_25204();
    v65 = sub_2523C(v57, v58, v59, v60, v61, v62, v63, v64, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
    v66(v65);
    sub_3C04(v151);
  }

  else
  {
    sub_2519C(&v147);
  }

  v67 = swift_getKeyPath();
  sub_2521C(v67, v68, v69, v70, v71, v72, v73, v74, v147);

  if (v149)
  {
    sub_25248(v75, v76, v77, v78, v79, v80, v81, v82, v147, v148, v149, v150);
    sub_25204();
    v91 = sub_2523C(v83, v84, v85, v86, v87, v88, v89, v90, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
    v92(v91);
    sub_3C04(v151);
  }

  else
  {
    sub_2519C(&v147);
  }

  v93 = swift_getKeyPath();
  sub_2521C(v93, v94, v95, v96, v97, v98, v99, v100, v147);

  if (v149)
  {
    sub_25248(v101, v102, v103, v104, v105, v106, v107, v108, v147, v148, v149, v150);
    sub_25204();
    v117 = sub_2523C(v109, v110, v111, v112, v113, v114, v115, v116, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
    v118(v117);
    sub_3C04(v151);
  }

  else
  {
    sub_2519C(&v147);
  }

  v119 = swift_getKeyPath();
  sub_2521C(v119, v120, v121, v122, v123, v124, v125, v126, v147);

  if (v149)
  {
    sub_25248(v127, v128, v129, v130, v131, v132, v133, v134, v147, v148, v149, v150);
    sub_25204();
    v143 = sub_2523C(v135, v136, v137, v138, v139, v140, v141, v142, v147, *(&v147 + 1), v148, v149, v150, v151[0]);
    v144(v143);
    sub_3C04(v151);
  }

  else
  {
    sub_2519C(&v147);
  }

  v145 = [v3 contentView];
  swift_getKeyPath();
  sub_13B5E4();

  if (v151[1])
  {
    v146 = sub_13BB54();
  }

  else
  {
    v146 = 0;
  }

  [v145 setAccessibilityLabel:v146];
}

uint64_t sub_24E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppRatingLockupComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppRatingLockupComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_24F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2519C(uint64_t a1)
{
  v2 = sub_4948(&qword_19E960, &qword_13FD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_13B5E4();
}

uint64_t sub_25248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_9414(&a9, va);
}

id sub_25260()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView);
  }

  else
  {
    v4 = v0;
    if (qword_199E70 != -1)
    {
      swift_once();
    }

    v5 = objc_allocWithZone(sub_139CF4());
    v6 = sub_139CE4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_25330(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel;
  sub_139BB4();
  v11 = objc_opt_self();
  v12 = [v11 ams_secondaryText];
  v13 = sub_13A2A4();
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleFootnote;
  v14 = *(*(v13 - 8) + 104);
  sub_27C88();
  v14();
  v65 = UIFontTextStyleFootnote;
  *&v4[v10] = sub_27C94(v65, v15, v16, v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel;
  v22 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleCaption2;
  sub_27C88();
  v14();
  v64 = UIFontTextStyleCaption2;
  *&v4[v21] = sub_27C68(v64, v23, v24, v25, v26, v27, v28);
  v63 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel;
  v29 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleSubheadline;
  sub_27C88();
  v14();
  v30 = UIFontTextStyleSubheadline;
  *&v4[v63] = sub_27C68(v30, v31, v32, v33, v34, v35, v36);
  v37 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel;
  v38 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = v64;
  sub_27C88();
  v39 = (v14)();
  *&v4[v37] = sub_27C68(v39, v40, v41, v42, v43, v44, v45);
  v46 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel;
  v47 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = v65;
  sub_27C88();
  v48 = (v14)();
  *&v4[v46] = sub_27C94(v48, v49, v50, v51, v52, v53, v54);
  v55 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel;
  v56 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleHeadline;
  sub_27C88();
  v14();
  v57 = UIFontTextStyleHeadline;
  *&v4[v55] = sub_139BA4();
  v58 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher];
  *v58 = 0;
  *(v58 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView] = 0;
  v59 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator;
  *&v5[v59] = [objc_allocWithZone(AMSUICommonView) init];
  v60 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator;
  *&v5[v60] = [objc_allocWithZone(AMSUICommonView) init];
  sub_25724(__src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics], __src, 0x150uLL);
  v66.receiver = v5;
  v66.super_class = type metadata accessor for AppRatingLockupComponent();
  v61 = objc_msgSendSuper2(&v66, "initWithFrame:", a1, a2, a3, a4);
  sub_264B0();

  return v61;
}

double sub_25724@<D0>(uint64_t a1@<X8>)
{
  if (qword_199E70 != -1)
  {
    swift_once();
  }

  *(a1 + 40) = &type metadata for CGFloat;
  *(a1 + 48) = &protocol witness table for CGFloat;
  *(a1 + 16) = 0x4030000000000000;
  *(a1 + 80) = &type metadata for CGFloat;
  *(a1 + 88) = &protocol witness table for CGFloat;
  *(a1 + 56) = 0x4030000000000000;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = 0x4030000000000000;
  *(a1 + 160) = &type metadata for CGFloat;
  *(a1 + 168) = &protocol witness table for CGFloat;
  *(a1 + 136) = 0x4030000000000000;
  *(a1 + 200) = &type metadata for CGFloat;
  *(a1 + 208) = &protocol witness table for CGFloat;
  *(a1 + 176) = 0x4030000000000000;
  *(a1 + 240) = &type metadata for CGFloat;
  *(a1 + 248) = &protocol witness table for CGFloat;
  *(a1 + 216) = 0x4030000000000000;
  *(a1 + 280) = &type metadata for CGFloat;
  *(a1 + 288) = &protocol witness table for CGFloat;
  *(a1 + 256) = 0x3FE0000000000000;
  *(a1 + 320) = &type metadata for CGFloat;
  *(a1 + 328) = &protocol witness table for CGFloat;
  *(a1 + 296) = 0x4028000000000000;
  result = *&xmmword_19B150;
  *a1 = xmmword_19B150;
  return result;
}

uint64_t sub_25804()
{
  v5 = v0;
  swift_getObjectType();
  v6 = sub_13A314();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppRatingLockupComponent();
  v41.receiver = v0;
  v41.super_class = v10;
  objc_msgSendSuper2(&v41, "layoutSubviews");
  sub_25724(v39);
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics;
  swift_beginAccess();
  sub_27BA4(v39, &v0[v11]);
  swift_endAccess();
  sub_2600C();
  sub_2707C(&v0[v11], &v40);
  v12 = sub_25260();
  v39[3] = sub_139CF4();
  v39[4] = protocol witness table for UIView;
  v39[0] = v12;
  v13 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel];
  v14 = sub_139BB4();
  v39[8] = v14;
  v15 = sub_270D8();
  v39[9] = v15;
  v39[5] = v13;
  v16 = v13;
  sub_26344();
  v17 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel];
  v18 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel];
  v39[18] = v14;
  v39[19] = v15;
  v39[15] = v17;
  v39[23] = v14;
  v39[24] = v15;
  v39[20] = v18;
  v19 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel];
  v39[28] = v14;
  v39[29] = v15;
  v39[25] = v19;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  sub_26350();
  v23 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel];
  v39[38] = v14;
  v39[39] = v15;
  v39[35] = v23;
  v24 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel];
  v39[43] = v14;
  v39[44] = v15;
  v39[40] = v24;
  v25 = v23;
  v26 = v24;
  v27 = [v5 contentView];
  [v27 bounds];
  sub_1D3D0();

  v28.n128_f64[0] = sub_27C54();
  sub_1D4AC(v28, v29, v30, v31, v32, v33, v34, v35);
  sub_1D3D0();
  v36 = [v5 contentView];
  sub_27130(1, v36, v39, v1, v2, v3, v4);
  sub_13A2E4();

  (*(v7 + 8))(v9, v6);
  return sub_27B50(v39);
}

double sub_25B3C(double a1, double a2, float a3)
{
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics;
  swift_beginAccess();
  sub_2707C(&v3[v6], &v46);
  v7 = sub_25260();
  v28[3] = sub_139CF4();
  v28[4] = protocol witness table for UIView;
  v28[0] = v7;
  v8 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel];
  v29 = sub_139BB4();
  v30 = sub_270D8();
  v28[5] = v8;
  v9 = v8;
  sub_26344();
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel];
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel];
  v32 = v29;
  v33 = v30;
  v31 = v10;
  v35 = v29;
  v36 = v30;
  v34 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel];
  v38 = v29;
  v39 = v30;
  v37 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_26350();
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel];
  v41 = v29;
  v42 = v30;
  v40 = v16;
  v17 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel];
  v44 = v29;
  v45 = v30;
  v43 = v17;
  v18 = v16;
  v19 = v17;
  sub_27C54();
  sub_13BE64();
  v21 = v20;
  v23 = v22;
  v24 = [v3 contentView];
  sub_27130(0, v24, v28, 0.0, 0.0, v21, v23);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v25;
  }

  sub_27B50(v28);
  return v26;
}

uint64_t sub_25DC0(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppRatingLockupComponent();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v2 = sub_25260();
  (*(&stru_108.reloff + (swift_isaMask & *v2)))();

  sub_1D38C();
  (*(v3 + 392))();
  sub_1D38C();
  (*(v4 + 392))();
  sub_1D38C();
  (*(v5 + 392))();
  sub_1D38C();
  (*(v6 + 392))();
  sub_1D38C();
  (*(v7 + 392))();
  sub_1D38C();
  return (*(v8 + 392))();
}

void sub_2600C()
{
  v1 = v0;
  v2 = sub_25260();
  v3 = (*(&stru_68.reserved2 + (swift_isaMask & *v2)))();

  if ((v3 & 1) == 0 || ((v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView, [*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView) frame], v6 = v5, v8 = v7, v9 = *(v1 + v4), v10 = *(&stru_68.offset + (swift_isaMask & *v9)), v11 = v9, v12 = v10(), v14 = v13, v11, v6 == v12) ? (v15 = v8 == v14) : (v15 = 0), !v15))
  {
    v16 = v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher;
    v17 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
    if (v17)
    {
      v18 = *(v16 + 8);

      v17(v19);

      sub_C9FC(v17, v18);
    }
  }
}

uint64_t sub_26154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D450();
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v5;
  *(v7 + 3) = v6;
  *(v7 + 4) = a1;
  v8 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
  v9 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
  v10 = v8[1];
  *v8 = sub_26FF8;
  v8[1] = v7;

  sub_C9FC(v9, v10);
}

void sub_2624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_25260();

      (*&stru_108.segname[(swift_isaMask & *v8) + 16])(a3, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_2635C()
{
  v1 = [v0 contentView];
  [v1 bounds];
  sub_1D3D0();

  v2.n128_f64[0] = sub_27C54();
  sub_1D4AC(v2, v3, v4, v5, v6, v7, v8, v9);
  CGRectGetWidth(v11);
  sub_1B964();
  return sub_13A374();
}

id sub_26410()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator);
  if (qword_199E68 != -1)
  {
    swift_once();
  }

  v2 = qword_19B148;
  [v1 setBackgroundColor:qword_19B148];
  v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator);

  return [v3 setBackgroundColor:v2];
}

void sub_264B0()
{
  v1 = [v0 contentView];
  if (qword_199E58 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:qword_19B138];

  v2 = sub_1D45C();
  if (qword_199E60 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_19B140);

  v3 = sub_1D45C();
  v4 = [v3 layer];

  if (qword_199E50 != -1)
  {
    swift_once();
  }

  [v4 setBorderColor:qword_19B130];

  v5 = sub_1D45C();
  v6 = [v5 layer];

  [v6 setBorderWidth:1.0];
  v7 = sub_1D45C();
  v8 = sub_25260();
  [v7 addSubview:v8];

  v9 = sub_1D45C();
  sub_1D474(v9, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel);

  v10 = sub_1D45C();
  sub_1D474(v10, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel);

  v11 = sub_1D45C();
  sub_1D474(v11, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel);

  v12 = sub_1D45C();
  sub_1D474(v12, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel);

  v13 = sub_1D45C();
  sub_1D474(v13, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator);

  v14 = sub_1D45C();
  sub_1D474(v14, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel);

  v15 = sub_1D45C();
  sub_1D474(v15, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator);

  v16 = sub_1D45C();
  sub_1D474(v16, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel);

  sub_26410();
  v17 = sub_1D45C();
  [v17 setIsAccessibilityElement:1];

  v18 = sub_1D45C();
  [v18 setAccessibilityTraits:UIAccessibilityTraitStaticText];
}

id sub_26838(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppRatingLockupComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_26970(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  sub_BBC90();
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = v4 + v4;
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:{fmin(v7 - v5, 360.0)}];
  v10 = [v8 estimatedDimension:500.0];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  return v11;
}

void sub_26AB0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_tertiaryText];
  }

  v7 = [v6 CGColor];

  qword_19B130 = v7;
}

void sub_26C38()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() ams_quaternarySystemFillColor];
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 secondarySystemBackgroundColor];
    v8 = [v7 colorWithAlphaComponent:0.5];

    v9 = [v6 tertiarySystemBackgroundColor];
    v10 = [v9 colorWithAlphaComponent:0.5];

    v5 = [v6 ams_dynamicColorWithLightColor:v8 darkColor:v10];
  }

  qword_19B138 = v5;
}

uint64_t sub_26E08()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_19B140 = *&v6;
  return result;
}

id sub_26F0C()
{
  result = [objc_opt_self() separatorColor];
  qword_19B148 = result;
  return result;
}

uint64_t sub_26F48()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26F7C()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26FB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_27004()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 80.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 90.0;
  }

  *&xmmword_19B150 = v2;
  *(&xmmword_19B150 + 1) = v2;
}

unint64_t sub_270D8()
{
  result = qword_1A0720;
  if (!qword_1A0720)
  {
    sub_139BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0720);
  }

  return result;
}

CGFloat sub_27130(int a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v68 = a1;
  v13 = sub_13A314();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v66 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = COERCE_DOUBLE(sub_13C114());
  v67 = *(*&v65 - 8);
  __chkstk_darwin(*&v65);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_13A514();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a2 traitCollection];
  LOBYTE(a2) = sub_13BDE4();

  if (a2)
  {
    sub_28C0C();
    sub_13A464();
    v25 = v24;
    v26 = *(v19 + 8);
    v26(v22, v18);
    if (v68)
    {
      sub_28C0C();
      v27 = v66;
      sub_13A474();
      v26(v22, v18);
      (*(v14 + 8))(v27, v13);
    }

    return v25;
  }

  else
  {
    v60 = v22;
    v61 = v19;
    v64 = v18;
    v59[0] = v14;
    v62 = v13;
    v28 = *(a3 + 400);
    v29 = *(a3 + 408);
    sub_162F0((a3 + 376), v28);
    sub_20038(v28, v29);
    sub_13A404();
    v31 = v30;
    v32 = *(v67 + 8);
    v33 = v65;
    v32(v17, *&v65);
    v34 = *(a3 + 680);
    v35 = *(a3 + 688);
    sub_162F0((a3 + 656), v34);
    sub_20038(v34, v35);
    sub_13A404();
    v67 = v36;
    v32(v17, *&v33);
    v37 = *(a3 + 520);
    v38 = *(a3 + 528);
    sub_162F0((a3 + 496), v37);
    sub_20038(v37, v38);
    sub_13A404();
    v63 = v39;
    v32(v17, *&v33);
    v40 = v68;
    if (v68)
    {
      sub_162F0(a3, *(a3 + 24));
      v69.origin.x = a4;
      v69.origin.y = a5;
      v69.size.width = a6;
      v69.size.height = a7;
      CGRectGetMinX(v69);
      v70.origin.x = a4;
      v70.origin.y = a5;
      v70.size.width = a6;
      v70.size.height = a7;
      CGRectGetMinY(v70);
      sub_13BE44();
      sub_13A354();
    }

    v41 = v64;
    v71.origin.x = a4;
    v71.origin.y = a5;
    v71.size.width = a6;
    v71.size.height = a7;
    v42 = CGRectGetWidth(v71) - *(a3 + 360) - v31;
    v72.origin.x = a4;
    v72.origin.y = a5;
    v72.size.width = a6;
    v72.size.height = a7;
    CGRectGetHeight(v72);
    v73.origin.x = a4;
    v73.origin.y = a5;
    v73.size.width = a6;
    v73.size.height = a7;
    MinX = CGRectGetMinX(v73);
    sub_162F0(a3, *(a3 + 24));
    sub_13A344();
    v65 = v31 + MinX + CGRectGetWidth(v74);
    sub_162F0((a3 + 320), *(a3 + 344));
    sub_13A384();
    v45 = v44;
    if (v40)
    {
      sub_162F0((a3 + 320), *(a3 + 344));
      v75.origin.x = a4;
      v75.origin.y = a5;
      v75.size.width = a6;
      v75.size.height = a7;
      CGRectGetMinY(v75);
      sub_13BE44();
      sub_13A354();
    }

    v76.origin.x = a4;
    v76.origin.y = a5;
    v76.size.width = a6;
    v76.size.height = a7;
    CGRectGetHeight(v76);
    v59[3] = v45;
    sub_162F0((a3 + 280), *(a3 + 304));
    sub_13A384();
    v47 = v46;
    if (v40)
    {
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_162F0((a3 + 320), *(a3 + 344));
      sub_13A344();
      CGRectGetMaxY(v77);
      sub_13BE44();
      sub_13A354();
    }

    v59[2] = v47;
    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A384();
    v49 = v48;
    if (v40)
    {
      sub_162F0((a3 + 200), *(a3 + 224));
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_13A344();
      CGRectGetMaxY(v78);
      sub_13BE44();
      sub_13A354();
    }

    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A344();
    Width = CGRectGetWidth(v79);
    v51 = v49;
    v52 = v42 - Width - v63;
    v59[1] = v51;
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A384();
    if (v53 >= v52)
    {
      if (v40)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMaxY(v82);
        sub_13BE44();
        sub_13A354();
      }

      v54 = v62;
    }

    else
    {
      if (v40)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetWidth(v80);
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMinY(v81);
        sub_13BE44();
        v41 = v64;
        sub_13A354();
      }

      v54 = v62;
    }

    v83.origin.x = a4;
    v83.origin.y = a5;
    v83.size.width = a6;
    v83.size.height = a7;
    CGRectGetMinX(v83);
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A344();
    CGRectGetMaxY(v84);
    v85.origin.x = a4;
    v85.origin.y = a5;
    v85.size.width = a6;
    v85.size.height = a7;
    CGRectGetWidth(v85);
    sub_282BC();
    v55 = v60;
    sub_13A4D4();
    sub_13A464();
    v56 = *(v61 + 8);
    v56(v55, v41);
    if (v40)
    {
      sub_282BC();
      sub_13A4D4();
      v57 = v66;
      sub_13A474();
      v56(v55, v41);
      (*(v59[0] + 8))(v57, v54);
    }
  }

  return a6;
}

uint64_t sub_27C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_139BA4();
}

uint64_t sub_27C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_139BA4();
}

uint64_t AppRatingLockupComponentLayout.Metrics.init(artworkSize:artworkTrailing:footnoteSeparatorBottom:footnoteSeparatorTop:infoLeading:separatorBottom:separatorTop:separatorHeight:subtitleBottom:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  *a9 = a10;
  a9[1] = a11;
  sub_9414(a1, (a9 + 2));
  sub_9414(a2, (a9 + 7));
  sub_9414(a3, (a9 + 12));
  sub_9414(a4, (a9 + 17));
  sub_9414(a5, (a9 + 22));
  sub_9414(a6, (a9 + 27));
  sub_9414(a7, (a9 + 32));

  return sub_9414(a8, (a9 + 37));
}

uint64_t AppRatingLockupComponentLayout.init(metrics:artworkImageView:footnoteLabel:footnoteSeparatorView:infoLabel:propositionLabel:ratingLabel:separatorView:subtitleLabel:titleLabel:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11)
{
  memcpy((a9 + 360), __src, 0x150uLL);
  sub_9414(a2, a9);
  sub_9414(a3, a9 + 40);
  sub_9414(a4, a9 + 80);
  sub_9414(a5, a9 + 120);
  sub_9414(a6, a9 + 160);
  sub_9414(a7, a9 + 200);
  sub_9414(a8, a9 + 240);
  sub_9414(a10, a9 + 280);

  return sub_9414(a11, a9 + 320);
}

uint64_t AppRatingLockupComponentLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  sub_29580(1, a1, v5, a2, a3, a4, a5);

  return sub_13A2E4();
}

uint64_t AppRatingLockupComponentLayout.Metrics.artworkTrailing.setter(__int128 *a1)
{
  sub_3C04((v1 + 16));

  return sub_9414(a1, v1 + 16);
}

uint64_t AppRatingLockupComponentLayout.Metrics.footnoteSeparatorTop.setter(__int128 *a1)
{
  sub_3C04((v1 + 96));

  return sub_9414(a1, v1 + 96);
}

uint64_t AppRatingLockupComponentLayout.Metrics.infoLeading.setter(__int128 *a1)
{
  sub_3C04((v1 + 136));

  return sub_9414(a1, v1 + 136);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorBottom.setter(__int128 *a1)
{
  sub_3C04((v1 + 176));

  return sub_9414(a1, v1 + 176);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorTop.setter(__int128 *a1)
{
  sub_3C04((v1 + 216));

  return sub_9414(a1, v1 + 216);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorHeight.setter(__int128 *a1)
{
  sub_3C04((v1 + 256));

  return sub_9414(a1, v1 + 256);
}

uint64_t AppRatingLockupComponentLayout.Metrics.subtitleBottom.setter(__int128 *a1)
{
  sub_3C04((v1 + 296));

  return sub_9414(a1, v1 + 296);
}

void *sub_282BC()
{
  v44 = sub_13A4C4();
  sub_9E94();
  v46 = v1;
  __chkstk_darwin(v2);
  sub_9EC0();
  v43 = v4 - v3;
  v5 = sub_13A4B4();
  sub_9E94();
  v48 = v6;
  __chkstk_darwin(v7);
  sub_9EC0();
  v45 = v9 - v8;
  v10 = sub_13A454();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  v54 = &_swiftEmptyArrayStorage;
  v49 = v15 - v14;
  if (sub_2A2A0(v0 + 20))
  {
    sub_4948(&qword_19AFE0, &unk_1402A0);
    v17 = sub_13A4F4();
    sub_CCF4(v17);
    sub_2A278(&v55);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_13E650;
    sub_4B14((v0 + 67), &v53);
    v38 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v40 = *(v12 + 104);
    v40(v16);
    v51 = &_swiftEmptyArrayStorage;
    sub_20068();
    sub_4948(&qword_19AFF0, &unk_1402B0);
    v35 = sub_1D268();
    sub_2A340(&v51, v18, v35);
    v33 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v32 = *(v46 + 104);
    v32(v43);
    sub_13A4E4();
    v29 = *(v46 + 8);
    v29(v43, v44);
    v28 = *(v48 + 8);
    v28(v45, v5);
    v27 = *(v12 + 8);
    v27(v49, v10);
    sub_1D2CC(&v53);
    sub_162F0(v0 + 20, v0[23]);
    sub_2A304();
    sub_9EF8();
    (*(v19 + 16))();
    v52 = &protocol witness table for Double;
    v20 = sub_2A2EC(&type metadata for Double);
    (v40)(v49, v38, v10, v20);
    sub_13BF64();
    (v32)(v43, v33, v44);
    sub_2A2D4();
    sub_13A4E4();
    v29(v43, v44);
    v16 = v49;
    v28(v45, v5);
    v27(v49, v10);
    sub_1D2CC(v50);
    sub_3C04(&v51);
    sub_3C04(&v53);
    sub_BCBA0(v42);
  }

  if (sub_2A2A0(v0 + 5))
  {
    sub_4948(&qword_19AFE0, &unk_1402A0);
    v21 = sub_13A4F4();
    sub_CCF4(v21);
    sub_2A278(&v56);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_13E650;
    sub_4B14((v0 + 52), &v53);
    v39 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v41 = *(v12 + 104);
    v41(v16);
    v51 = &_swiftEmptyArrayStorage;
    sub_20068();
    sub_4948(&qword_19AFF0, &unk_1402B0);
    v37 = sub_1D268();
    sub_2A340(&v51, v22, v37);
    v36 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v34 = *(v46 + 104);
    v34(v43);
    sub_13A4E4();
    (*(v46 + 8))(v43, v44);
    v31 = *(v48 + 8);
    v31(v45, v5);
    v30 = *(v12 + 8);
    v30(v16, v10);
    sub_1D2CC(&v53);
    sub_162F0(v0 + 5, v0[8]);
    sub_2A304();
    sub_9EF8();
    (*(v23 + 16))();
    v52 = &protocol witness table for Double;
    v24 = sub_2A2EC(&type metadata for Double);
    (v41)(v49, v39, v10, v24);
    sub_13BF64();
    (v34)(v43, v36, v44);
    sub_2A328();
    sub_2A2D4();
    sub_13A4E4();
    sub_2A334();
    v25();
    v31(v45, v5);
    v30(v49, v10);
    sub_1D2CC(v50);
    sub_3C04(&v51);
    sub_3C04(&v53);
    sub_BCBA0(v47);
  }

  return v54;
}

uint64_t sub_28C0C()
{
  v1 = v0;
  v64 = sub_13A4C4();
  sub_9E94();
  v69 = v2;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_13A454();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9EC0();
  v13 = v12 - v11;
  v14 = sub_13A4B4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_9EC0();
  v68 = v17 - v16;
  sub_4948(&qword_19AFE8, &unk_140260);
  v61 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_140280;
  sub_13A494();
  v76[0] = v18;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v62 = v14;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v19 = sub_13A4F4();
  sub_CCF4(v19);
  sub_2A278(&v78);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_13F4C0;
  v60 = v20;
  sub_162F0(v1, v1[3]);
  sub_13A374();
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  sub_4B14((v0 + 47), v70);
  v67 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v66 = *(v9 + 104);
  v21 = v13;
  v66(v13);
  v63 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v65 = *(v69 + 104);
  v22 = v6;
  v65(v6);
  sub_2A268();
  sub_13A4E4();
  v23 = *(v69 + 8);
  v23(v6, v64);
  v24 = *(v9 + 8);
  v25 = v21;
  v24(v21, v7);
  sub_1D2CC(v70);
  sub_3C04(v76);
  sub_3C04(v73);
  v26 = v0[43];
  v27 = v1[44];
  sub_162F0(v1 + 40, v1[43]);
  v77 = v26;
  sub_2A360(*(v27 + 8));
  sub_9EF8();
  (*(v28 + 16))();
  v75 = &protocol witness table for Double;
  v74 = &type metadata for Double;
  v72 = &protocol witness table for Double;
  v73[0] = 0;
  v71 = &type metadata for Double;
  v70[0] = 0;
  (v66)(v25, v67, v7);
  (v65)(v22, v63, v64);
  sub_2A334();
  sub_2A268();
  sub_13A4E4();
  v23(v22, v64);
  v24(v25, v7);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  v29 = v1[38];
  v30 = v1[39];
  v31 = sub_162F0(v1 + 35, v29);
  v77 = v29;
  v32 = sub_2A360(*(v30 + 8));
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  if (sub_2A2A0(v1 + 25))
  {
    sub_4B14((v1 + 82), v70);
  }

  else
  {
    v71 = &type metadata for Double;
    v72 = &protocol witness table for Double;
    v70[0] = 0;
  }

  sub_2A334();
  v33 = sub_2A234();
  v34(v33);
  sub_2A28C();
  v35();
  sub_2A268();
  sub_13A4E4();
  sub_2A328();
  v36();
  v37 = sub_2A250();
  v38(v37);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  v39 = v1[28];
  v40 = v1[29];
  v41 = sub_162F0(v1 + 25, v39);
  v77 = v39;
  v42 = sub_2A360(*(v40 + 8));
  (*(*(v39 - 8) + 16))(v42, v41, v39);
  v75 = &protocol witness table for Double;
  v74 = &type metadata for Double;
  v72 = &protocol witness table for Double;
  v73[0] = 0;
  v71 = &type metadata for Double;
  v70[0] = 0;
  v43 = sub_2A234();
  v44(v43);
  sub_2A28C();
  v45();
  sub_2A268();
  sub_13A4E4();
  sub_2A328();
  v46();
  v47 = sub_2A250();
  v48(v47);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  sub_2A334();
  v49 = v1[18];
  v50 = v1[19];
  sub_162F0(v1 + 15, v49);
  v77 = v49;
  sub_2A360(*(v50 + 8));
  sub_9EF8();
  (*(v51 + 16))();
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  v52 = sub_2A234();
  v53(v52);
  sub_2A28C();
  v54();
  sub_13A4E4();
  sub_2A328();
  v55();
  v56 = sub_2A250();
  v57(v56);
  sub_1D2CC(v73);
  sub_3C04(v76);
  v76[0] = v60;
  v58 = sub_282BC();
  sub_BCBA0(v58);
  sub_13A4D4();
  return (*(v61 + 8))(v68, v62);
}

CGFloat AppRatingLockupComponentLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_29580(0, a1, v3, 0.0, 0.0, a2, a3);
}

CGFloat sub_29580(int a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v68 = a1;
  v13 = sub_13A314();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v66 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = COERCE_DOUBLE(sub_13C114());
  v67 = *(*&v65 - 8);
  __chkstk_darwin(*&v65);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_13A514();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a2 traitCollection];
  LOBYTE(a2) = sub_13BDE4();

  if (a2)
  {
    sub_28C0C();
    sub_13A464();
    v25 = v24;
    v26 = *(v19 + 8);
    v26(v22, v18);
    if (v68)
    {
      sub_28C0C();
      v27 = v66;
      sub_13A474();
      v26(v22, v18);
      (*(v14 + 8))(v27, v13);
    }

    return v25;
  }

  else
  {
    v60 = v22;
    v61 = v19;
    v64 = v18;
    v59[0] = v14;
    v62 = v13;
    v28 = *(a3 + 400);
    v29 = *(a3 + 408);
    sub_162F0((a3 + 376), v28);
    sub_20038(v28, v29);
    sub_13A404();
    v31 = v30;
    v32 = *(v67 + 8);
    v33 = v65;
    v32(v17, *&v65);
    v34 = *(a3 + 680);
    v35 = *(a3 + 688);
    sub_162F0((a3 + 656), v34);
    sub_20038(v34, v35);
    sub_13A404();
    v67 = v36;
    v32(v17, *&v33);
    v37 = *(a3 + 520);
    v38 = *(a3 + 528);
    sub_162F0((a3 + 496), v37);
    sub_20038(v37, v38);
    sub_13A404();
    v63 = v39;
    v32(v17, *&v33);
    v40 = v68;
    if (v68)
    {
      sub_162F0(a3, *(a3 + 24));
      v69.origin.x = a4;
      v69.origin.y = a5;
      v69.size.width = a6;
      v69.size.height = a7;
      CGRectGetMinX(v69);
      v70.origin.x = a4;
      v70.origin.y = a5;
      v70.size.width = a6;
      v70.size.height = a7;
      CGRectGetMinY(v70);
      sub_13BE44();
      sub_13A354();
    }

    v41 = v64;
    v71.origin.x = a4;
    v71.origin.y = a5;
    v71.size.width = a6;
    v71.size.height = a7;
    v42 = CGRectGetWidth(v71) - *(a3 + 360) - v31;
    v72.origin.x = a4;
    v72.origin.y = a5;
    v72.size.width = a6;
    v72.size.height = a7;
    CGRectGetHeight(v72);
    v73.origin.x = a4;
    v73.origin.y = a5;
    v73.size.width = a6;
    v73.size.height = a7;
    MinX = CGRectGetMinX(v73);
    sub_162F0(a3, *(a3 + 24));
    sub_13A344();
    v65 = v31 + MinX + CGRectGetWidth(v74);
    sub_162F0((a3 + 320), *(a3 + 344));
    sub_13A384();
    v45 = v44;
    if (v40)
    {
      sub_162F0((a3 + 320), *(a3 + 344));
      v75.origin.x = a4;
      v75.origin.y = a5;
      v75.size.width = a6;
      v75.size.height = a7;
      CGRectGetMinY(v75);
      sub_13BE44();
      sub_13A354();
    }

    v76.origin.x = a4;
    v76.origin.y = a5;
    v76.size.width = a6;
    v76.size.height = a7;
    CGRectGetHeight(v76);
    v59[3] = v45;
    sub_162F0((a3 + 280), *(a3 + 304));
    sub_13A384();
    v47 = v46;
    if (v40)
    {
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_162F0((a3 + 320), *(a3 + 344));
      sub_13A344();
      CGRectGetMaxY(v77);
      sub_13BE44();
      sub_13A354();
    }

    v59[2] = v47;
    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A384();
    v49 = v48;
    if (v40)
    {
      sub_162F0((a3 + 200), *(a3 + 224));
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_13A344();
      CGRectGetMaxY(v78);
      sub_13BE44();
      sub_13A354();
    }

    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A344();
    Width = CGRectGetWidth(v79);
    v51 = v49;
    v52 = v42 - Width - v63;
    v59[1] = v51;
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A384();
    if (v53 >= v52)
    {
      if (v40)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMaxY(v82);
        sub_13BE44();
        sub_13A354();
      }

      v54 = v62;
    }

    else
    {
      if (v40)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetWidth(v80);
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMinY(v81);
        sub_13BE44();
        v41 = v64;
        sub_13A354();
      }

      v54 = v62;
    }

    v83.origin.x = a4;
    v83.origin.y = a5;
    v83.size.width = a6;
    v83.size.height = a7;
    CGRectGetMinX(v83);
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A344();
    CGRectGetMaxY(v84);
    v85.origin.x = a4;
    v85.origin.y = a5;
    v85.size.width = a6;
    v85.size.height = a7;
    CGRectGetWidth(v85);
    sub_282BC();
    v55 = v60;
    sub_13A4D4();
    sub_13A464();
    v56 = *(v61 + 8);
    v56(v55, v41);
    if (v40)
    {
      sub_282BC();
      sub_13A4D4();
      v57 = v66;
      sub_13A474();
      v56(v55, v41);
      (*(v59[0] + 8))(v57, v54);
    }
  }

  return a6;
}

unint64_t sub_29FA4()
{
  result = qword_19B1E0;
  if (!qword_19B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B1E0);
  }

  return result;
}

uint64_t sub_2A000(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 696))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A040(uint64_t result, int a2, int a3)
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 696) = 1;
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

    *(result + 696) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A2A0(void *a1)
{
  sub_162F0(a1, v1);

  return sub_13A324();
}

double sub_2A2EC@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 176) = 0;
  *(v1 - 192) = 0;
  result = 0.0;
  *(v1 - 224) = 0u;
  *(v1 - 208) = 0u;
  return result;
}

uint64_t *sub_2A304()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = *(v1 + 8);

  return sub_CC08((v2 - 136));
}

uint64_t sub_2A340(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_13BF64();
}

uint64_t *sub_2A360@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_CC08((v1 - 128));
}

uint64_t sub_2A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_2A434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkHeader(uint64_t a1)
{
  result = qword_19B240;
  if (!qword_19B240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A50C(uint64_t a1)
{
  sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_248F4(319, &qword_19B250, &unk_19B258, &unk_14C220);
    if (v2 <= 0x3F)
    {
      sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
      if (v3 <= 0x3F)
      {
        sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ArtworkHeader.Style(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2A6DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_2A714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183FA8;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

BOOL sub_2A75C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2A714(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2A794()
{
  result = qword_19B2A0;
  if (!qword_19B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B2A0);
  }

  return result;
}

uint64_t sub_2A8A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v5 - 8);
  v70 = v68 - v6;
  v83 = sub_13B584();
  sub_9E94();
  v77 = v7;
  __chkstk_darwin(v8);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v68 - v12;
  v14 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v15);
  v71 = v68 - v16;
  v17 = type metadata accessor for ArtworkHeader(0);
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = (v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  v78 = a2;
  sub_2B570();
  v21 = sub_9DD0();
  if (v3)
  {

    v21 = 0;
  }

  v74 = v21;
  *v20 = v21;
  sub_2B570();
  v28 = sub_2B110(v22, v23, v24, v25, v26, v27);
  v72 = v10;
  v73 = v28;
  v20[2] = v28;
  __chkstk_darwin(v28);
  v68[-2] = a2;
  sub_2B570();
  v29 = sub_9DD0();
  v76 = a2;
  v30 = v29;
  v20[1] = v29;
  sub_2B570();
  v31 = sub_BB310();
  v68[1] = v30;
  *&v80 = v31;
  *(&v80 + 1) = v32;
  sub_13BFB4();
  sub_13B594();
  v33 = sub_13B564();
  v68[0] = 0;
  if (v33)
  {
    goto LABEL_6;
  }

  v35 = v70;
  sub_7738(v13, v76, v34);
  if (sub_52E0(v35, 1, v14) == 1)
  {
    sub_928C(v35, &qword_19A420, &unk_13F430);
LABEL_6:
    sub_13BAB4();
    sub_2B520();
    v38 = sub_2B414(v36, v37, &protocol conformance descriptor for JSONError);
    sub_9F18(v38);
    *v39 = 0xD000000000000011;
    v39[1] = 0x800000000014E730;
    v39[2] = v17;
    sub_2B538();
    (*(v40 + 104))();
    swift_willThrow();
    v41 = sub_2B554();
    v42(v41);

    v43 = sub_13B7A4();
    v44 = v71;
    sub_53A8(v71, 1, 1, v43);
    goto LABEL_8;
  }

  v45 = sub_2B554();
  v46(v45);
  v47 = v35;
  v44 = v71;
  sub_92E4(v47, v71);
LABEL_8:
  sub_92E4(v44, v20 + *(v17 + 36));
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_2B520();
    v50 = sub_2B414(v48, v49, &protocol conformance descriptor for JSONError);
    sub_9F18(v50);
    *v51 = 0x6575676573;
    v51[1] = 0xE500000000000000;
    v51[2] = v17;
    sub_2B538();
    (*(v52 + 104))();
    swift_willThrow();
    sub_2B57C();
    sub_2B544();
    v53();

    v82 = 0;
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    sub_139BC4();
    sub_2B57C();
    sub_2B544();
    v67();
    sub_9414(&v79, &v80);
  }

  v54 = v20 + *(v17 + 40);
  v55 = v81;
  *v54 = v80;
  *(v54 + 1) = v55;
  *(v54 + 4) = v82;
  sub_2B570();
  sub_6B10(v56, v57, v58, v59, v60, v61, v62, v63);
  sub_2B57C();
  sub_2B544();
  v64();
  sub_2B45C(v20, v69);
  sub_13B5A4();
  sub_9F94();
  (*(v65 + 8))(v76);
  return sub_2B4C0(v20);
}

uint64_t sub_2B110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a3;
  v10 = sub_13B584();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v16 = sub_2B2F4(v15, a4, a5, v26)) == 0)
  {
    v17 = sub_13BAB4();
    sub_2B520();
    v20 = sub_2B414(v18, v19, &protocol conformance descriptor for JSONError);
    sub_9F18(v20);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = v27;
    sub_2B538();
    (*(v22 + 104))();
    swift_willThrow();
    v23 = *(v12 + 8);

    v23(v15, v10);
  }

  else
  {
    v17 = v16;
    (*(v12 + 8))(v15, v10);
  }

  return v17;
}

uint64_t sub_2B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_4948(&qword_19B2B0, &qword_147230);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_13B514();
  v7 = sub_13B694();
  if (sub_52E0(v6, 1, v7) == 1)
  {
    sub_928C(v6, &qword_19B2B0, &qword_147230);
    return 0;
  }

  else
  {
    v8 = sub_13B684();
    sub_2B538();
    (*(v9 + 8))(v6, v7);
  }

  return v8;
}

uint64_t sub_2B414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2B45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B4C0(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B554()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 232) + 8);
  return result;
}

void sub_2B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19B308, &qword_140E78);
  sub_13B5E4();

  swift_getKeyPath();
  sub_13B5E4();

  swift_getKeyPath();
  sub_13B5E4();

  sub_2C0F4(v8, v7, a3, v6);

  v5 = [v3 contentView];
  [v5 setNeedsLayout];
}

uint64_t sub_2B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ArtworkHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_2B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ArtworkHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_2B794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_2B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2BA34(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView] = 0;
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph] = 0;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for ArtworkHeaderComponent();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

void sub_2BAE4()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v1)
  {
    v2 = v1;
    [v2 setAccessibilityElementsHidden:1];
    v3 = [v0 contentView];
    [v3 addSubview:v2];
  }

  v4 = [v0 contentView];
  [v4 setNeedsLayout];
}

void sub_2BBA4(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_2BAE4();
}

void sub_2BC28(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ArtworkHeaderComponent();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v2 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v2)
  {
    v3 = *(&stru_108.reloff + (swift_isaMask & *v2));
    v4 = v2;
    v3();
  }
}

void sub_2BD0C()
{
  v3 = v0;
  swift_getObjectType();
  v4 = type metadata accessor for ArtworkHeaderComponent();
  v39.receiver = v0;
  v39.super_class = v4;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v5 && *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v6 = v5;
    v7 = sub_13B9A4();
    v8 = (*(*v38[0] + 88))(v7);
    if (v8 && (v9 = v8, v10 = [v8 topViewController], v9, v10))
    {
      sub_B140(v10);
      sub_2D744();
      v11 = [v3 contentView];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      MinX = CGRectGetMinX(v40);
      v21 = [v3 contentView];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v41.origin.x = v23;
      v41.origin.y = v25;
      v41.size.width = v27;
      v41.size.height = v29;
      [v6 setFrame:{MinX, CGRectGetMinY(v41), v1, v2}];
      v30 = sub_2D724();
      sub_2CD94(v31, v30, v32);
    }

    else
    {
      if (qword_19A018 != -1)
      {
        sub_CCD4(&qword_19A018);
      }

      v33 = sub_139A14();
      sub_4910(v33, qword_1B2B00);
      sub_4948(&unk_19E010, qword_13F520);
      v34 = sub_1399C4();
      sub_CCF4(v34);
      *(swift_allocObject() + 16) = xmmword_13E650;
      v38[3] = v4;
      v38[0] = v3;
      v35 = v3;
      v36 = AMSLogKey();
      if (v36)
      {
        v37 = v36;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v38);
      sub_139974();
      sub_1399F4();
    }
  }
}

uint64_t sub_2C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph] = a3;

  sub_139E64();
  sub_13B6B4();
  v10 = sub_13B9A4();
  v11 = (*(*v38[0] + 88))(v10);
  if (v11 && (v12 = v11, v13 = [v11 topViewController], v12, v13))
  {
    v37 = a2;
    sub_B140(v13);
    sub_2D744();
    v14 = objc_allocWithZone(sub_139CF4());
    sub_2D724();
    v15 = sub_139CE4();
    sub_4948(&unk_1A16C0, &unk_147380);
    sub_13B9A4();
    sub_13BA84();
    swift_unknownObjectRetain();
    v36 = sub_13BA64();
    v16 = v15;
    sub_2BBA4(v15);
    if (a1 && v37)
    {
      v35 = a4;
      sub_1D450();
      v17 = swift_allocObject();
      swift_weakInit();
      sub_1D450();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
      *(v19 + 4) = a1;
      *(v19 + 5) = v37;
      v20 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
      v33 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher + 8];
      v34 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
      *v20 = sub_2D710;
      v20[1] = v19;
      swift_retain_n();
      swift_retain_n();

      sub_C9FC(v34, v33);

      v21 = *v20;
      if (*v20)
      {
        v22 = v20[1];

        (v21)(v23);

        sub_C9FC(v21, v22);
      }

      else
      {
      }

      a4 = v35;
    }

    if (a4)
    {
      v30 = sub_2D724();
      sub_2CA18(v31, v36, a3, v30, v32);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4(&qword_19A018);
    }

    v24 = sub_139A14();
    sub_4910(v24, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    v25 = sub_1399C4();
    sub_CCF4(v25);
    *(swift_allocObject() + 16) = xmmword_13E650;
    v38[3] = type metadata accessor for ArtworkHeaderComponent();
    v38[0] = v5;
    v26 = v5;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v38);
    sub_139974();
    sub_1399F4();
  }
}

void sub_2C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
      v11 = v10;

      if (v10)
      {
        if (qword_19A018 != -1)
        {
          swift_once();
        }

        v12 = sub_139A14();
        sub_4910(v12, qword_1B2B00);
        sub_4948(&unk_19E010, qword_13F520);
        sub_1399C4();
        *(swift_allocObject() + 16) = xmmword_13E660;
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        v21 = sub_4948(&qword_19B358, &unk_140F00);
        v20[0] = v13;
        v14 = AMSLogKey();
        if (v14)
        {
          v15 = v14;
          sub_13BB84();
        }

        sub_139994();

        sub_3C04(v20);
        sub_139974();
        v21 = sub_139F94();
        v20[0] = a3;

        sub_139984();
        sub_49C8(v20);
        sub_1399F4();

        (*(&stru_108.size + (swift_isaMask & *v11)))(a3, a4, v7);

        return;
      }
    }
  }

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v16 = sub_139A14();
  sub_4910(v16, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  v21 = sub_4948(&qword_19B358, &unk_140F00);
  v20[0] = v17;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v20);
  sub_139974();
  sub_1399E4();
}

uint64_t sub_2CA18(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v10 = sub_4948(&unk_19E970, &unk_1472E0);
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v28[-1] - v14;
  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v16 = v28[0];
  v17 = (*(*v28[0] + 248))(a1, 0.0, 0.0, a4, a5);
  if (v17)
  {
    v18 = v17;
    sub_2CEAC(v17);
    v27 = *(v16 + 16);
    sub_1D450();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v21;
    v22[4] = v19;
    sub_4948(&qword_19B350, &unk_1472F0);
    sub_2D65C();
    sub_13B614();
    sub_13B624();

    sub_3C04(v28);
    (*(v12 + 8))(v15, v10);
    v23 = *(v6 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
    if (v23)
    {
      v24 = v23;
      v25 = v18;
      [v24 addSubview:v25];
    }
  }
}

void sub_2CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        sub_2CEAC(v5);
      }
    }

    else
    {
    }
  }
}

void sub_2CD94(void *a1, double a2, double a3)
{
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || (sub_2D730(), (*(v6 + 152))() != a2))
  {
    sub_2D730();
    (*(v7 + 160))(a2, a3);
    v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher);
    if (v8)
    {
      v9 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher + 8);

      v8(v10);

      sub_C9FC(v8, v9);
    }
  }
}

uint64_t sub_2CEAC(void *a1)
{
  v25 = sub_13B7A4();
  sub_9E94();
  v3 = v2;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 respondsToSelector:{"impressionItems", v5}];
  if (result)
  {
    v9 = [a1 impressionItems];
    sub_139E24();
    v10 = sub_13BC24();

    sub_13BA54();
    v11 = v10;
    result = sub_127E54();
    if (result)
    {
      v12 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v24[1] = a1;
        v13 = 0;
        v14 = v10 & 0xC000000000000001;
        v15 = (v3 + 8);
        v16 = v11;
        do
        {
          if (v14)
          {
            v17 = sub_13C004();
          }

          else
          {
            v17 = *(v11 + 8 * v13 + 32);
          }

          v18 = v17;
          ++v13;
          v19 = (*&stru_68.segname[(swift_isaMask & *v17) + 8])();
          sub_92E64();

          (*&stru_68.sectname[swift_isaMask & *v18])();
          sub_2D744();
          v20 = [v26 contentView];
          v21 = sub_2D724();
          [v22 v23];
          sub_2D744();

          sub_2D724();
          sub_13BA34();

          (*v15)(v7, v25);
          v11 = v16;
        }

        while (v12 != v13);
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_2D180(double a1, double a2, float a3)
{
  v4 = v3;
  swift_getObjectType();
  if (*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v7 = sub_13B9A4();
    v8 = (*(*v18[0] + 88))(v7);

    if (v8)
    {
      v9 = [v8 topViewController];

      if (v9)
      {
        sub_B140(v9);
        v11 = v10;

        if (a3 != 1000.0)
        {
          return v11;
        }

        return a1;
      }
    }
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v12 = sub_139A14();
  sub_4910(v12, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v13 = sub_1399C4();
  sub_CCF4(v13);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v18[3] = type metadata accessor for ArtworkHeaderComponent();
  v18[0] = v4;
  v14 = v4;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v18);
  sub_139974();
  sub_1399E4();

  return a1;
}

id sub_2D4E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkHeaderComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2D5A0()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2D5D4()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2D608()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_2D65C()
{
  result = qword_19E980;
  if (!qword_19E980)
  {
    sub_558C(&qword_19B350, &unk_1472F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E980);
  }

  return result;
}

uint64_t sub_2D6C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t AXServiceSubscribePageLayout.init(metrics:contentView:detailsView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0x168uLL);
  v11 = *(a2 + 16);
  *(a6 + 360) = *a2;
  *(a6 + 376) = v11;
  *(a6 + 392) = *(a2 + 32);
  sub_9414(a3, a6 + 400);
  sub_9414(a4, a6 + 440);

  return sub_9414(a5, a6 + 480);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.contentHeight.setter(__int128 *a1)
{
  sub_3C04((v1 + 40));

  return sub_9414(a1, v1 + 40);
}

uint64_t ServiceOptionComponentLayout.Metrics.selectionStatusDimension.setter(__int128 *a1)
{
  sub_3C04((v1 + 80));

  return sub_9414(a1, v1 + 80);
}

uint64_t ServiceOptionComponentLayout.Metrics.selectionStatusTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 120));

  return sub_9414(a1, v1 + 120);
}

uint64_t ServiceOptionComponentLayout.Metrics.disclaimerTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 160));

  return sub_9414(a1, v1 + 160);
}

uint64_t ServiceOptionComponentLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 200));

  return sub_9414(a1, v1 + 200);
}

void AXServiceSubscribePageLayout.Metrics.primaryButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = a3;
  v4[33] = a4;
}

uint64_t ServiceOptionComponentLayout.Metrics.gridTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 280));

  return sub_9414(a1, v1 + 280);
}

uint64_t AXServiceSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 320));

  return sub_9414(a1, v1 + 320);
}

uint64_t sub_2DAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_1A0730, &qword_140F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double AXServiceSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_2F34C(v1, v2, v3, v4, v5);
}

uint64_t AXServiceSubscribePageLayout.placeChildren(relativeTo:in:)(uint64_t a1)
{
  v6 = v1;
  sub_3007C();
  v79 = v8;
  v80 = sub_13A314();
  sub_9E94();
  v78 = v9;
  __chkstk_darwin(v10);
  v77 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_13C114();
  sub_9E94();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 104);
  v19 = *(v6 + 112);
  sub_162F0((v6 + 80), v18);
  sub_20038(v18, v19);
  sub_3006C();
  sub_13A404();
  v21 = v20;
  v22 = *(v14 + 8);
  v22(v17, v12);
  sub_162F0(v6, *(v6 + 24));
  sub_30090();
  sub_3006C();
  sub_13A404();
  v24 = v23;
  v22(v17, v12);
  sub_162F0((v6 + 40), *(v6 + 64));
  sub_30090();
  sub_3006C();
  sub_13A404();
  v26 = v25;
  v22(v17, v12);
  ObjectType = swift_getObjectType();
  v28 = sub_2F500(a1, v6, ObjectType, v3, v2);
  sub_2DAFC(v6 + 360, &v86);
  v81 = v4;
  v74 = v2;
  if (v88)
  {
    if (v24 > v28)
    {
      v29 = v24;
    }

    else
    {
      v29 = v28;
    }

    if (v29 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v29;
    }

    sub_9414(&v86, v82);
    v94.origin.x = sub_3001C();
    v31 = v21 + CGRectGetMinY(v94);
    v95.origin.x = sub_3001C();
    MinX = CGRectGetMinX(v95);
    v96.origin.x = sub_3001C();
    Width = CGRectGetWidth(v96);
    sub_162F0(v82, v82[3]);
    sub_3001C();
    v72 = Width;
    v73 = MinX;
    v34 = v5;
    v35 = v31;
    v36 = v30;
    sub_13BE44();
    sub_13A354();
    sub_3C04(v82);
  }

  else
  {
    sub_CC68(&v86, &unk_1A0730, &qword_140F10);
    v72 = 0.0;
    v73 = v5;
    v34 = v5;
    v35 = v4;
    v36 = 0.0;
  }

  v37 = sub_2F710(a1, v6);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = *(v6 + 272);
  v45 = *(v6 + 240);
  v75 = *(v6 + 256);
  *v76 = v45;
  sub_4B14(v6 + 280, &v92);
  sub_4B14(v6 + 320, &v93);
  *&v86 = v37;
  *(&v86 + 1) = v39;
  v87 = v41;
  v88 = v43;
  v89 = *v76;
  v90 = v75;
  v91 = v44;
  sub_2F8F0(&v86, v82);
  sub_4B14(v6 + 400, &v83);
  sub_4B14(v6 + 440, &v84);
  sub_4B14(v6 + 480, &v85);
  v97.origin.x = v34;
  v46 = v81;
  v97.origin.y = v81;
  v97.size.width = v3;
  v47 = v74;
  v97.size.height = v74;
  v71 = CGRectGetMinX(v97);
  v49 = v72;
  v48 = v73;
  v98.origin.x = v73;
  v98.origin.y = v35;
  v98.size.width = v72;
  v98.size.height = v36;
  MaxY = CGRectGetMaxY(v98);
  v99.origin.x = v34;
  v99.origin.y = v46;
  v99.size.width = v3;
  v99.size.height = v47;
  v69 = CGRectGetWidth(v99);
  v76[0] = v34;
  v100.origin.x = v34;
  v50 = v71;
  v100.origin.y = v46;
  *&v75 = v3;
  v100.size.width = v3;
  v100.size.height = v47;
  v51 = CGRectGetMaxY(v100);
  v101.origin.x = v48;
  v101.origin.y = v35;
  v53 = v69;
  v52 = MaxY;
  v101.size.width = v49;
  v101.size.height = v36;
  v54 = v51 - CGRectGetMaxY(v101);
  sub_2F928(a1, v82, v53, v54);
  v56 = v55;
  v102.origin.x = v50;
  v102.origin.y = v52;
  v102.size.width = v53;
  v102.size.height = v54;
  if (v56 <= CGRectGetHeight(v102))
  {
    v63 = sub_30044();
    sub_2E218(v63, v64, v65, v66, v67);
  }

  else
  {
    v57 = sub_30044();
    sub_2E704(v57, v58, v59, v60, v61, v62);
  }

  sub_13A304();
  sub_13A2D4();
  v103.origin.x = v76[0];
  v103.origin.y = v81;
  *&v103.size.width = v75;
  v103.size.height = v47;
  CGRectGetHeight(v103);
  v104.origin.x = sub_30030();
  CGRectGetMinX(v104);
  v105.origin.x = sub_30030();
  CGRectGetMinY(v105);
  v106.origin.x = sub_30030();
  CGRectGetWidth(v106);
  sub_13A2B4();
  (*(v78 + 8))(&v86, v80);
  sub_2FC0C(v82);
  return sub_2FC3C(&v86);
}

uint64_t sub_2E160(uint64_t a1)
{
  sub_3007C();
  swift_getObjectType();
  v2 = sub_2171C();
  sub_2F928(v2, v3, v4, v5);
  v7 = v6;
  v19.origin.x = sub_3001C();
  if (v7 <= CGRectGetHeight(v19))
  {
    v14 = sub_3001C();

    return sub_2E218(a1, v14, v15, v16, v17);
  }

  else
  {
    v9 = sub_3001C();

    return sub_2E704(a1, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_2E218(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_13C114();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 24);
  v17 = *(v5 + 96);
  v18 = v6[13];
  sub_162F0(v6 + 9, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v25[0] = v19;
  v20 = *(v12 + 8);
  v20(v14, v11);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v21 = CGRectGetWidth(v26) - v15 - v16;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetHeight(v27);
  sub_162F0(v6 + 19, v6[22]);
  *&v25[1] = v21;
  sub_13A394();
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMinY(v29);
  sub_162F0(v6 + 19, v6[22]);
  sub_13BE44();
  sub_13A354();
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMaxY(v30);
  v22 = v6[17];
  v23 = v6[18];
  sub_162F0(v6 + 14, v22);
  sub_20038(v22, v23);
  sub_13A404();
  v20(v14, v11);
  sub_162F0(v6 + 29, v6[32]);
  LOBYTE(v23) = sub_13A364();
  sub_162F0(v6 + 29, v6[32]);
  if ((v23 & 1) == 0)
  {
    sub_13A394();
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMidX(v31);
    sub_162F0(v6 + 29, v6[32]);
    sub_13BE44();
  }

  sub_13A354();
  sub_162F0(v6 + 24, v6[27]);
  if (sub_13A364())
  {
    sub_162F0(v6 + 24, v6[27]);
  }

  else
  {
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetWidth(v32);
    sub_162F0(v6 + 24, v6[27]);
    sub_13A394();
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMidX(v33);
    sub_162F0(v6 + 24, v6[27]);
    sub_13BE44();
  }

  sub_13A354();
  return sub_13A2B4();
}

uint64_t sub_2E704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a1;
  v73 = a2;
  v93 = sub_13A4B4();
  v97 = *(v93 - 8);
  v12 = v97;
  __chkstk_darwin(v93);
  v75 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_13A4C4();
  v98 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_13A454();
  v96 = *(v91 - 8);
  v15 = v96;
  __chkstk_darwin(v91);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_13A4F4();
  v95 = *(v92 - 8);
  __chkstk_darwin(v92);
  v66 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_13A514();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v94 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v6;
  v69 = *(v6 + 8);
  v21 = v69;
  v23 = *(v6 + 16);
  v22 = *(v6 + 24);
  v107.origin.x = a3;
  v107.origin.y = a4;
  v107.size.width = a5;
  v107.size.height = a6;
  v70 = CGRectGetWidth(v107) - v21 - v22;
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetWidth(v108);
  sub_162F0((v6 + 192), *(v6 + 216));
  sub_13A394();
  sub_13A4D4();
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v101 = v23;
  v87 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v24 = *(v15 + 104);
  v88 = v15 + 104;
  v89 = v24;
  v25 = v17;
  v24(v17);
  v84 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v26 = *(v98 + 104);
  v85 = v98 + 104;
  v86 = v26;
  v27 = v67;
  v28 = v68;
  v26(v67);
  v83 = sub_4948(&qword_19AFE8, &unk_140260);
  v74 = *(v12 + 72);
  v29 = v97;
  v82 = *(v97 + 80);
  v30 = (v82 + 32) & ~v82;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_140280;
  sub_13A484();
  v100 = v31;
  v80 = sub_20068();
  v79 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v81 = sub_1D268();
  v32 = v75;
  v33 = v93;
  sub_13BF64();
  v34 = v66;
  v35 = v25;
  sub_13A4E4();
  v36 = *(v29 + 8);
  v97 = v29 + 8;
  v78 = v36;
  v36(v32, v33);
  v37 = *(v98 + 8);
  v98 += 8;
  v77 = v37;
  v38 = v27;
  v39 = v27;
  v40 = v28;
  v37(v38, v28);
  v41 = *(v96 + 8);
  v96 += 8;
  v76 = v41;
  v42 = v91;
  v41(v25, v91);
  sub_CC68(&v101, &qword_19AFF8, &unk_140270);
  sub_3C04(&v104);
  v43 = v34;
  sub_13A504();
  v65 = *(v95 + 8);
  v95 += 8;
  v65(v34, v92);
  sub_162F0((v7 + 192), *(v7 + 216));
  sub_13A374();
  v64 = sub_13A424();
  v102 = v64;
  v103 = &protocol witness table for ZeroDimension;
  sub_CC08(&v101);
  sub_13A414();
  sub_4B14(v7 + 72, &v100);
  v89(v25, v87, v42);
  v44 = v39;
  v45 = v40;
  v86(v39, v84, v40);
  v63 = 3 * v74;
  v61[1] = v30;
  v46 = swift_allocObject();
  v62 = xmmword_13E660;
  *(v46 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A484();
  sub_13A494();
  v99 = v46;
  v47 = v75;
  v48 = v93;
  sub_13BF64();
  v49 = v43;
  sub_13A4E4();
  v78(v47, v48);
  v50 = v44;
  v51 = v45;
  v77(v44, v45);
  v52 = v35;
  v53 = v91;
  v76(v35, v91);
  sub_CC68(&v100, &qword_19AFF8, &unk_140270);
  sub_3C04(&v104);
  sub_3C04(&v101);
  v54 = v49;
  sub_13A504();
  v55 = v65;
  v65(v49, v92);
  v105 = v64;
  v106 = &protocol witness table for ZeroDimension;
  sub_CC08(&v104);
  sub_13A414();
  sub_4B14(v7 + 112, &v101);
  v89(v52, v87, v53);
  v56 = v51;
  v86(v50, v84, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = v62;
  sub_13A4A4();
  sub_13A484();
  sub_13A494();
  v100 = v57;
  v58 = v93;
  sub_13BF64();
  sub_13A4E4();
  v78(v47, v58);
  v77(v50, v56);
  v76(v52, v91);
  sub_CC68(&v101, &qword_19AFF8, &unk_140270);
  sub_3C04(&v104);
  v59 = v94;
  sub_13A504();
  v55(v54, v92);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetMinX(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetMinY(v110);
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  CGRectGetHeight(v111);
  sub_13A474();
  return (*(v71 + 8))(v59, v72);
}

double sub_2F2E4(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_2F928(v1, v2, v3, v4);
}

double sub_2F34C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v15 = a2[4];
  sub_162F0(a2, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_2F500(a1, a2, a3, a4, a5);
  v17 = a2[8];
  v18 = a2[9];
  sub_162F0(a2 + 5, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v16(v13, v10);
  return a4;
}

double sub_2F500(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = sub_13C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2F710(a1, a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(a2 + 272);
  v21 = *(a2 + 240);
  v30 = *(a2 + 256);
  v31 = v21;
  sub_4B14(a2 + 280, &v40);
  sub_4B14(a2 + 320, &v41);
  *v36 = v13;
  v36[1] = v15;
  v36[2] = v17;
  v36[3] = v19;
  v38 = v30;
  v37 = v31;
  v39 = v20;
  sub_2F8F0(v36, v32);
  sub_4B14(a2 + 400, &v33);
  sub_4B14(a2 + 440, &v34);
  sub_4B14(a2 + 480, &v35);
  v22 = *(a2 + 104);
  v23 = *(a2 + 112);
  sub_162F0((a2 + 80), v22);
  sub_20038(v22, v23);
  sub_13A404();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = a5 - v25;
  sub_2F928(a1, v32, a4, a5);
  v28 = v27;
  sub_2FC0C(v32);
  sub_2FC3C(v36);
  return v26 - v28;
}

double sub_2F710(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[23];
  v8 = a2[24];
  sub_162F0(a2 + 20, v7);
  sub_20038(v7, v8);
  sub_13A404();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = a2[18];
  v11 = a2[19];
  sub_162F0(a2 + 15, v10);
  sub_20038(v10, v11);
  sub_13A404();
  v13 = v12;
  v9(v6, v3);
  v14 = a2[28];
  v15 = a2[29];
  sub_162F0(a2 + 25, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v9(v6, v3);
  return v13;
}

double sub_2F928(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a2 + 19, a2[22]);
  sub_13A394();
  v10 = a2[17];
  v11 = a2[18];
  sub_162F0(a2 + 14, v10);
  sub_20038(v10, v11);
  sub_13A404();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_162F0(a2 + 24, a2[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a2 + 24, a2[27]);
    sub_13A394();
  }

  sub_162F0(a2 + 29, a2[32]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a2 + 29, a2[32]);
    sub_13A394();
  }

  sub_162F0(a2 + 24, a2[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a2 + 29, a2[32]);
    if ((sub_13A364() & 1) == 0)
    {
      v13 = a2[12];
      v14 = a2[13];
      sub_162F0(a2 + 9, v13);
      sub_20038(v13, v14);
      sub_13A404();
      v12(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_2FC6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2FC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 520))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FCCC(uint64_t result, int a2, int a3)
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FDE4(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FE94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FF6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_30090()
{

  return sub_20038(v0, v1);
}

uint64_t type metadata accessor for Badge(uint64_t a1)
{
  result = qword_19B3C0;
  if (!qword_19B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_30150(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v6 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v77 = sub_13B584();
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = type metadata accessor for Badge(0);
  sub_9F94();
  __chkstk_darwin(v20);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = a2;
  v71 = a2;
  v23 = sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, v19, sub_30AC0, v70);
  if (v3)
  {

    v24 = [objc_opt_self() ams_clear];
  }

  else
  {
    v24 = v23;
  }

  *v22 = v24;
  v25 = sub_BB310();
  v62 = 0;
  v61 = v24;
  *&v74 = v25;
  *(&v74 + 1) = v26;
  sub_13BFB4();
  v63 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738(v14, v68, v27);
  if (sub_52E0(v8, 1, v15) == 1)
  {
    sub_928C(v8, &qword_19A420, &unk_13F430);
LABEL_7:
    v28 = sub_13BAB4();
    sub_30E18();
    v31 = sub_30AC8(v29, v30, &protocol conformance descriptor for JSONError);
    sub_9F18(v31);
    *v32 = 0xD000000000000011;
    v32[1] = 0x800000000014E730;
    v32[2] = v19;
    (*(*(v28 - 8) + 104))(v32, enum case for JSONError.missingProperty(_:), v28);
    swift_willThrow();
    v33 = sub_30E4C();
    v34(v33);

    v35 = sub_13B7A4();
    sub_53A8(v18, 1, 1, v35);
    goto LABEL_9;
  }

  v36 = sub_30E4C();
  v37(v36);
  sub_92E4(v8, v18);
LABEL_9:
  sub_92E4(v18, v22 + *(v19 + 28));
  v38 = v66;
  v39 = v63;
  sub_13B594();
  v40 = sub_13B564();
  v41 = v68;
  if ((v40 & 1) == 0)
  {
    sub_30A20(v38, v68, &type metadata accessor for ActionFactory, &ActionFactory.action(deserializing:using:));
    if (v73)
    {
      v65(v38, v77);
      sub_9414(&v72, &v74);
      goto LABEL_14;
    }

    sub_928C(&v72, &unk_19E320, &unk_140950);
  }

  v42 = sub_13BAB4();
  sub_30E18();
  v45 = sub_30AC8(v43, v44, &protocol conformance descriptor for JSONError);
  sub_9F18(v45);
  *v46 = 0x6575676573;
  v46[1] = 0xE500000000000000;
  v46[2] = v19;
  (*(*(v42 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v42);
  swift_willThrow();
  v65(v38, v77);

  v76 = 0;
  v74 = 0u;
  v75 = 0u;
LABEL_14:
  v47 = v22 + *(v19 + 32);
  v48 = v75;
  *v47 = v74;
  *(v47 + 1) = v48;
  *(v47 + 4) = v76;
  v49 = v67;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_30A20(v49, v41, &type metadata accessor for DynamicTextFactory, &DynamicTextFactory.dynamicText(deserializing:using:));
    if (v73)
    {
      v50 = sub_30E30();
      v39(v50);
      (v39)(v49, &enum case for JSONError.missingProperty(_:));
      sub_9414(&v72, &v74);
      sub_9414(&v74, (v22 + 1));
      sub_30B10(v22, v64);
      sub_13B5A4();
      sub_9F94();
      (*(v51 + 8))(v41);
      sub_30B74(v22);
      return;
    }

    sub_928C(&v72, &qword_19E960, &qword_13FD30);
  }

  v52 = sub_13BAB4();
  sub_30E18();
  sub_30AC8(v53, v54, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v55 = 1954047348;
  v55[1] = 0xE400000000000000;
  v55[2] = v19;
  (*(*(v52 - 8) + 104))(v55, enum case for JSONError.missingProperty(_:), v52);
  swift_willThrow();
  v56 = sub_30E30();
  v39(v56);
  (v39)(v49, &enum case for JSONError.missingProperty(_:));
  v57 = v61;
  v58 = v62;
  sub_13B5A4();
  sub_9F94();
  (*(v59 + 8))(v41);

  if (!v58)
  {
    sub_9238((v22 + 6));
    sub_928C(v22 + *(v19 + 28), &qword_19A350, &unk_13F2C0);
    sub_928C(v22 + *(v19 + 32), &unk_19E320, &unk_140950);
  }
}

uint64_t sub_30994@<X0>(uint64_t *a3@<X8>)
{
  sub_139B64();
  swift_allocObject();
  v4 = sub_139B54();

  *a3 = v4;
  return result;
}

uint64_t sub_30A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  a3(0);
  swift_initStackObject();
  return a4(a1, a2);
}

uint64_t sub_30AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_30B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Badge(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30B74(uint64_t a1)
{
  v2 = type metadata accessor for Badge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30BE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

void *sub_30C8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_30D18(uint64_t a1)
{
  sub_30DD4();
  if (v1 <= 0x3F)
  {
    sub_18A28();
    if (v2 <= 0x3F)
    {
      sub_54D0(319);
      if (v3 <= 0x3F)
      {
        sub_5528(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_30DD4()
{
  result = qword_19B3D0;
  if (!qword_19B3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19B3D0);
  }

  return result;
}

uint64_t sub_30E4C()
{
  result = v0;
  *(v1 - 232) = *(*(v1 - 200) + 8);
  return result;
}

id sub_30E64(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin14BadgeComponent_badgeView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for BadgeView()) init];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BadgeComponent();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_30F30();

  return v10;
}

void sub_30F30()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin14BadgeComponent_badgeView]];
}

id sub_310B8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BadgeComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_3112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Badge(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4948(&qword_19B498, &unk_141260);
  sub_13B5F4();
  sub_31DEC(v5);
  return sub_30B74(v5);
}

uint64_t sub_311F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BadgeComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_31254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BadgeComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_312B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_3130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_31388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_31404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_31484()
{
  result = qword_19B440;
  if (!qword_19B440)
  {
    type metadata accessor for Badge(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B440);
  }

  return result;
}

unint64_t sub_314E0()
{
  result = qword_19B448;
  if (!qword_19B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B448);
  }

  return result;
}

id sub_31534()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v2 = [objc_opt_self() ams_primaryText];
  v3 = sub_13A2A4();
  v10[3] = v3;
  v10[4] = &protocol witness table for FontSource;
  *sub_CC08(v10) = UIFontTextStyleCaption2;
  (*(*(v3 - 8) + 104))();
  v4 = UIFontTextStyleCaption2;
  *&v0[v1] = sub_31FE8(v4, v5, v6);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BadgeView();
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_31938();

  return v7;
}

id sub_3166C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v10 = [objc_opt_self() ams_primaryText];
  v11 = sub_13A2A4();
  v18[3] = v11;
  v18[4] = &protocol witness table for FontSource;
  *sub_CC08(v18) = UIFontTextStyleCaption2;
  (*(*(v11 - 8) + 104))();
  v12 = UIFontTextStyleCaption2;
  *&v4[v9] = sub_31FE8(v12, v13, v14);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BadgeView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_31938();

  return v15;
}

id sub_317D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v4 = [objc_opt_self() ams_primaryText];
  v5 = sub_13A2A4();
  v12[3] = v5;
  v12[4] = &protocol witness table for FontSource;
  *sub_CC08(v12) = UIFontTextStyleCaption2;
  (*(*(v5 - 8) + 104))();
  v6 = UIFontTextStyleCaption2;
  *&v1[v3] = sub_139BA4();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BadgeView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_31938();
  }

  return v8;
}

id sub_31938()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel];
  [v1 setClipsToBounds:1];

  return [v0 addSubview:v1];
}

void sub_31B1C()
{
  v1 = sub_139A34();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10190();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BadgeView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel];
  [v0 bounds];
  [v5 measurementsWithFitting:v0 in:{v6, v7}];
  [v0 bounds];
  [v5 setFrame:?];
  v8 = qword_199E78;
  v9 = *&v5[direct field offset for DynamicLabel.label];
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *&qword_1B2950;
  if (qword_199E80 != -1)
  {
    swift_once();
  }

  v11 = 4.0;
  [v9 setTextContainerInset:{4.0, v10, 4.0, *&qword_1B2958}];

  v12 = [v5 layer];
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v0, enum case for FlagKeys.Solarium(_:), v1);
    v13 = sub_139A24();
    (*(v3 + 8))(v0, v1);
    if (v13)
    {
      v14 = [v5 layer];
      [v14 frame];
      v16 = v15;

      v11 = v16 * 0.5;
    }
  }

  [v12 setCornerRadius:v11];
}

id sub_31DEC(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel);
  (*(&stru_158.size + (swift_isaMask & *v3)))(a1 + 1);
  v4 = *a1;

  return [v3 setBackgroundColor:v4];
}

id sub_31E78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BadgeView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_31EF8(uint64_t a1, double *a2)
{
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || ((*(v6 + 104))(v2, enum case for FlagKeys.Solarium(_:), v4), v9 = sub_139A24(), result = (*(v6 + 8))(v2, v4), v10 = 8.0, (v9 & 1) == 0))
  {
    v10 = 5.0;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_31FE8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_139BA4();
}

uint64_t sub_32034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_320DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BannerHeader(uint64_t a1)
{
  result = qword_19B528;
  if (!qword_19B528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_321B4(uint64_t a1)
{
  sub_18A84(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_18AD4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
    if (v2 <= 0x3F)
    {
      sub_322F8();
      if (v3 <= 0x3F)
      {
        sub_18A84(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        if (v4 <= 0x3F)
        {
          sub_18AD4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_322F8()
{
  if (!qword_19B538)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19B538);
    }
  }
}

_BYTE *sub_32348(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x32414);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_3244C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183FE0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_32498(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 1819042164;
      break;
    case 2:
      result = 0x4165636976726573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_32530(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184060;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3257C(char a1)
{
  result = 7368564;
  switch(a1)
  {
    case 1:
      result = 0x7265746E6563;
      break;
    case 2:
      result = 0x6D6F74746F62;
      break;
    case 3:
      result = 0x6C61727574616ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_32624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3244C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_32654@<X0>(unint64_t *a1@<X8>)
{
  result = sub_32498(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_32684()
{
  result = qword_19B580;
  if (!qword_19B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B580);
  }

  return result;
}

unint64_t sub_326FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_32530(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_3272C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3257C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_327B0()
{
  result = qword_19B590;
  if (!qword_19B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B590);
  }

  return result;
}

uint64_t sub_32804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v6 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v6 - 8);
  v8 = &v76 - v7;
  v92 = sub_13B584();
  v85 = *(v92 - 8);
  __chkstk_darwin(v92);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v76 - v11;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  v15 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for BannerHeader(0);
  sub_9F94();
  __chkstk_darwin(v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v83 = swift_initStackObject();
  v84 = a2;
  v86 = a2;
  sub_33270();
  v23 = sub_9DD0();
  if (v3)
  {

    v23 = 0;
  }

  v82 = v23;
  *v22 = v23;
  sub_33270();
  v24 = sub_BB310();
  v76 = 0;
  *&v89 = v24;
  *(&v89 + 1) = v25;
  sub_13BFB4();
  v77 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738(v14, v84, v26);
  if (sub_52E0(v8, 1, v15) == 1)
  {
    sub_928C(v8, &qword_19A420, &unk_13F430);
LABEL_6:
    v27 = sub_13BAB4();
    sub_33238();
    v30 = sub_3312C(v28, v29);
    sub_18B70(v30);
    *v31 = 0xD000000000000011;
    v31[1] = 0x800000000014E730;
    v31[2] = v19;
    (*(*(v27 - 8) + 104))(v31, enum case for JSONError.missingProperty(_:), v27);
    swift_willThrow();
    v32 = *(v85 + 8);
    v33 = sub_33264();
    v32(v33);

    v34 = sub_13B7A4();
    sub_53A8(v18, 1, 1, v34);
    v35 = 0;
    goto LABEL_8;
  }

  v32 = *(v85 + 8);
  v36 = sub_33264();
  v32(v36);
  sub_92E4(v8, v18);
  v35 = v76;
LABEL_8:
  sub_92E4(v18, &v22[*(v19 + 36)]);
  v37 = v77;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    v38 = sub_13BAB4();
    sub_33238();
    v41 = sub_3312C(v39, v40);
    sub_18B70(v41);
    *v42 = 1954047348;
    v42[1] = 0xE400000000000000;
    v42[2] = v19;
    (*(*(v38 - 8) + 104))(v42, enum case for JSONError.missingProperty(_:), v38);
    swift_willThrow();
    v43 = sub_33264();
    v32(v43);

    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    goto LABEL_12;
  }

  sub_139DB4();
  if (v35)
  {

    v88 = 0;
    memset(v87, 0, sizeof(v87));
    sub_928C(v87, &qword_19E960, &qword_13FD30);
    goto LABEL_11;
  }

  v74 = sub_33264();
  v32(v74);
  sub_9414(v87, &v89);
LABEL_12:
  v44 = v90;
  *(v22 + 1) = v89;
  *(v22 + 2) = v44;
  *(v22 + 6) = v91;
  sub_33270();
  sub_6CC4(v45, v46, v47, v48, v49, v50, v51, v52);
  v22[56] = v53;
  sub_13B594();
  if (sub_13B564())
  {
    v54 = sub_13BAB4();
    sub_33238();
    sub_3312C(v55, v56);
    sub_18BF0();
    swift_allocError();
    *v57 = 0x6575676573;
    v57[1] = 0xE500000000000000;
    v57[2] = v19;
    (*(*(v54 - 8) + 104))(v57, enum case for JSONError.missingProperty(_:), v54);
    swift_willThrow();
    v58 = sub_33250();
    v32(v58);

    v91 = 0;
    v89 = 0u;
    v90 = 0u;
  }

  else
  {
    sub_139BC4();
    v75 = sub_33250();
    v32(v75);
    sub_9414(v87, &v89);
  }

  v59 = &v22[*(v19 + 40)];
  v60 = v90;
  *v59 = v89;
  *(v59 + 1) = v60;
  *(v59 + 4) = v91;
  sub_33270();
  sub_6CF8(v61, v62, v63, v64, v65, v66, v67, v68);
  v69 = v84;
  v71 = v70;
  (v32)(v37, v92);
  v22[8] = v71;
  sub_33170(v22, v78);
  sub_13B5A4();
  sub_9F94();
  (*(v72 + 8))(v69);
  return sub_331D4(v22);
}

uint64_t sub_3312C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_331D4(uint64_t a1)
{
  v2 = type metadata accessor for BannerHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_3327C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_4948(&qword_19B5E8, &qword_1414D8);
  sub_13B5E4();

  v6 = v15;
  if (!v15)
  {
    sub_2519C(v14);
    goto LABEL_5;
  }

  v7 = v16;
  sub_162F0(v14, v15);
  v8 = (*(v7 + 24))(v6, v7);
  sub_3C04(v14);
  if (v8 == 5)
  {
LABEL_5:
    v8 = 4;
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment] = v8;
  sub_33F58();
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  v9 = v14[0];
  if (v14[0] == 4)
  {
    v9 = 3;
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition] = v9;
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle] = v14[0];
  sub_34A68();
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  if (*v14)
  {
    sub_34B48(*v14, a3);
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v13)
  {
    sub_9414(&v12, v14);
    v10 = sub_33D14();
    (*(&stru_158.size + (swift_isaMask & *v10)))(v14, a3);

    sub_3C04(v14);
  }

  else
  {
    sub_2519C(&v12);
  }

  v11 = [v4 contentView];
  [v11 setNeedsLayout];
}

uint64_t sub_33518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BannerHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_33580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BannerHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_335E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_3363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_336B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_33734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_33840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_33898()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle) = 0;
  bzero((v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics), 0xB0uLL);
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment) = 4;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition) = 3;
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView) = 0;
  v10 = type metadata accessor for BannerHeaderComponent();
  v2 = sub_3001C();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v10);
  v11.origin.x = sub_3001C();
  CGRectGetWidth(v11);
  v6 = objc_allocWithZone(sub_139CF4());
  v7 = sub_35C38();
  v8 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView] = v7;

  sub_34D38();
  return v5;
}

double sub_339B0(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  switch(a1)
  {
    case 4:
      v12.origin.x = a2;
      v12.origin.y = a3;
      v12.size.width = a4;
      v12.size.height = a5;
      CGRectGetWidth(v12);
      break;
    default:
      return Width;
  }

  return Width;
}

void *sub_33AB0@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics;
  swift_beginAccess();
  sub_35AC8(v1 + v3, __src);
  if (__src[15])
  {
    return memcpy(a1, __src, 0xB0uLL);
  }

  sub_CC68(__src, &qword_19B650, &unk_1415B0);
  sub_33BA4(v1, a1);
  sub_35B38(a1, __src);
  swift_beginAccess();
  sub_35A60(__src, v1 + v3, &qword_19B650, &unk_1415B0);
  return swift_endAccess();
}

uint64_t sub_33BA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  Width = CGRectGetWidth(v16);
  *(a2 + 40) = &type metadata for Double;
  *(a2 + 48) = &protocol witness table for Double;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 120) = &type metadata for Double;
  *(a2 + 128) = &protocol witness table for Double;
  *(a2 + 96) = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 136) = 0u;
  *a2 = Width;
  *(a2 + 8) = xmmword_141560;
  return sub_35A60(v14, a2 + 136, &qword_19AFF8, &unk_140270);
}

uint64_t sub_33CA0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics;
  swift_beginAccess();
  sub_35A60(__dst, v1 + v2, &qword_19B650, &unk_1415B0);
  return swift_endAccess();
}

void *sub_33D14()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel);
  }

  else
  {
    v4 = sub_33D78();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_33D78()
{
  sub_139BB4();
  v0 = [objc_opt_self() ams_primaryText];
  v1 = sub_13A2A4();
  v6[3] = v1;
  v6[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v6);
  v3 = sub_340A0();
  sub_33EB8(v3, v2);
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.useCase(_:), v1);
  v4 = sub_139BA4();
  (*&stru_108.segname[(swift_isaMask & *v4) + 8])(1);
  return v4;
}

uint64_t sub_33EB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&off_186D30 + a1);
  *a2 = v3;
  *(a2 + 8) = UIFontWeightSemibold;
  v4 = v3;
  v5 = enum case for FontUseCase.preferredFontDerivative(_:);
  v6 = sub_13A3E4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

void sub_33F58()
{
  v1 = sub_33D14();
  v0 = sub_139E14();
  (*&stru_B8.sectname[swift_isaMask & *v1])(v0);
}

id sub_33FE4()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  }

  else
  {
    v4 = v0;
    v5 = [v0 contentView];
    [v5 bounds];
    sub_1D3D0();

    v11.origin.x = sub_35BE8();
    CGRectGetWidth(v11);
    v6 = objc_allocWithZone(sub_139CF4());
    v7 = sub_35C38();
    v8 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_340A0()
{
  result = 2;
  switch(*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle))
  {
    case 1:
      return result;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    default:
      v2 = [v0 contentView];
      v3 = sub_BBCC4();

      result = v3;
      break;
  }

  return result;
}

void sub_34138(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BannerHeaderComponent();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = sub_33FE4();
  (*(&stru_108.reloff + (swift_isaMask & *v2)))();

  v3 = sub_33D14();
  (*(&stru_158.offset + (swift_isaMask & *v3)))();
}

uint64_t sub_3426C()
{
  v5 = sub_13A314();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BannerHeaderComponent();
  v80.receiver = v0;
  v80.super_class = v7;
  objc_msgSendSuper2(&v80, "layoutSubviews");
  sub_34DF4();
  v8 = sub_33D14();
  [v8 setNeedsLayout];

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v9 = sub_139A14();
  v71 = sub_4910(v9, qword_1B2B00);
  v10 = sub_4948(&unk_19E010, qword_13F520);
  v11 = *(*(sub_1399C4() - 8) + 72);
  v66[2] = v10;
  *(swift_allocObject() + 16) = xmmword_13E650;
  v67 = v7;
  v73 = v7;
  v72[0] = v0;
  v12 = v0;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v72);
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_13BFE4(16);
  v78 = v72[0];
  v79 = v72[1];
  v81._countAndFlagsBits = 0x20746E65746E6F43;
  v81._object = 0xEE00203A77656956;
  sub_13BBC4(v81);
  v15 = [v12 contentView];
  [v15 bounds];
  sub_1D3D0();

  v72[0] = v1;
  v72[1] = v2;
  v72[2] = v3;
  v73 = v4;
  type metadata accessor for CGRect(0);
  sub_13C074();
  v73 = &type metadata for String;
  v72[0] = v78;
  v72[1] = v79;
  sub_139984();
  sub_CC68(v72, &unk_1A06F0, &unk_13EF80);
  sub_1399D4();

  v16 = &qword_19B000;
  if (sub_35578())
  {
    v66[1] = 2 * v11;
    v17 = sub_33FE4();
    v18 = [v12 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;

    (*(&stru_68.reloff + (swift_isaMask & *v17)))(v20, v22);
    *(swift_allocObject() + 16) = xmmword_13E660;
    v73 = v67;
    v72[0] = v12;
    v23 = v12;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v72);
    v73 = &type metadata for String;
    strcpy(v72, "Apply artwork");
    HIWORD(v72[1]) = -4864;
    sub_139984();
    sub_CC68(v72, &unk_1A06F0, &unk_13EF80);
    v16 = &qword_19B000;
    sub_35C68();
    v27 = *(v26 + 152);
    v29 = v28;
    v30 = v27();
    v32 = v31;

    type metadata accessor for CGSize(0);
    v73 = v33;
    v72[0] = *&v30;
    v72[1] = v32;
    sub_139984();
    sub_CC68(v72, &unk_1A06F0, &unk_13EF80);
    sub_1399D4();

    v34 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher];
    if (v34)
    {
      v35 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher + 8];

      v34(v36);
      sub_C9FC(v34, v35);
    }
  }

  sub_33FE4();
  sub_1D48C();
  sub_35C7C();
  (*(v37 + 152))();

  v38 = v16[196];
  sub_35C68();
  v40 = *(v39 + 184);
  v42 = v41;
  v43 = v40();

  if (v43)
  {
    [v43 size];

    v44 = [v12 contentView];
    [v44 bounds];
    sub_1D3D0();

    v82.origin.x = sub_35BE8();
    CGRectGetWidth(v82);
  }

  v72[0] = *&v12[v38];
  v45 = v72[0];
  v46 = [v12 contentView];
  [v46 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v83.origin.x = v48;
  v83.origin.y = v50;
  v83.size.width = v52;
  v83.size.height = v54;
  CGRectGetWidth(v83);
  sub_139CF4();
  sub_13A374();

  sub_33AB0(&v77);
  sub_4B14(&v78, v72);
  v55 = *&v12[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel];
  v75 = sub_139BB4();
  v76 = sub_270D8();
  v74 = v55;
  v56 = v55;
  v57 = [v12 contentView];
  [v57 bounds];
  sub_1D3D0();

  v58 = [v12 contentView];
  v59 = v68;
  v60 = sub_35BE8();
  BannerHeaderComponentLayout.placeChildren(relativeTo:in:)(v61, v60, v62, v63, v64);

  sub_35B94(v72);
  (*(v69 + 8))(v59, v70);
  return sub_3C04(&v78);
}

void sub_34A68()
{
  v0 = sub_33D14();
  v1 = sub_13A2A4();
  v4[3] = v1;
  v4[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v4);
  v3 = sub_340A0();
  sub_33EB8(v3, v2);
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.useCase(_:), v1);
  (*(&stru_B8.reloff + (swift_isaMask & *v0)))(v4);
}

uint64_t sub_34B48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D450();
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v5;
  *(v7 + 3) = v6;
  *(v7 + 4) = a1;
  v8 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  v9 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  v10 = v8[1];
  *v8 = sub_35A54;
  v8[1] = v7;

  sub_C9FC(v9, v10);
}

void sub_34C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_33FE4();

      (*&stru_108.segname[(swift_isaMask & *v8) + 16])(a3, v5);
    }

    else
    {
    }
  }
}

void sub_34D38()
{
  v1 = [v0 contentView];
  v2 = sub_33FE4();
  [v1 addSubview:v2];

  v3 = [v0 contentView];
  v4 = sub_33D14();
  [v3 addSubview:v4];
}

uint64_t sub_34DF4()
{
  switch(sub_340A0())
  {
    case 1u:
      sub_350B8(v1);
      break;
    case 2u:
      sub_34E8C(v1);
      break;
    case 3u:
      sub_35204(v1);
      break;
    case 4u:
      sub_352D0(v1);
      break;
    default:
      sub_34F7C(v1);
      break;
  }

  return sub_33CA0(v1);
}

uint64_t sub_34E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contentView];
  [v3 bounds];
  sub_1D3D0();

  v7.origin.x = sub_35BE8();
  CGRectGetWidth(v7);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0x4057400000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = 0x404C000000000000;
  v6[3] = &type metadata for CGFloat;
  v6[4] = &protocol witness table for CGFloat;
  v6[0] = 0x404C000000000000;
  sub_35BFC(0);
  *(a1 + 8) = 0x4072200000000000;
  return sub_35A60(v6, v4, &qword_19AFF8, &unk_140270);
}

uint64_t sub_34F7C@<X0>(uint64_t a1@<X8>)
{
  sub_33D14();
  sub_1D48C();
  sub_35C7C();
  v4 = (*(v3 + 176))();

  if (v4 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 24.0;
  }

  v6 = [v1 contentView];
  [v6 bounds];
  sub_1D3D0();

  v12.origin.x = sub_35BE8();
  CGRectGetWidth(v12);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0x4069000000000000;
  *(a1 + 88) = 0;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_35BFC(0);
  *(a1 + 8) = v7;
  return sub_35A60(v10, v8, &qword_19AFF8, &unk_140270);
}

uint64_t sub_350B8@<X0>(uint64_t a1@<X8>)
{
  sub_33D14();
  sub_1D48C();
  sub_35C7C();
  v4 = (*(v3 + 176))();

  if (v4 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 100.0;
  }

  v6 = [v1 contentView];
  [v6 bounds];
  sub_1D3D0();

  v11.origin.x = sub_35BE8();
  CGRectGetWidth(v11);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0x4070E00000000000;
  *(a1 + 88) = 0;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = v5;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_35BFC(0);
  *(a1 + 8) = 0x406F400000000000;
  return sub_35A60(v9, v7, &qword_19AFF8, &unk_140270);
}

uint64_t sub_35204@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contentView];
  [v3 bounds];
  sub_1D3D0();

  v9.origin.x = sub_35BE8();
  CGRectGetWidth(v9);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  *(a1 + 40) = &type metadata for Double;
  *(a1 + 48) = &protocol witness table for Double;
  sub_35C14(&type metadata for Double);
  *(a1 + 152) = v4;
  *(a1 + 168) = 0;
  *(a1 + 136) = v4;
  *a1 = v5;
  *(a1 + 8) = xmmword_141570;
  return sub_35A60(v7, a1 + 136, &qword_19AFF8, &unk_140270);
}

uint64_t sub_352D0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v7 = [v1 contentView];
  [v7 bounds];
  sub_1D3D0();

  sub_339B0(4, v2, v3, v4, v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  *(a1 + 40) = &type metadata for Double;
  *(a1 + 48) = &protocol witness table for Double;
  *(a1 + 16) = 0;
  sub_35C14(&type metadata for Double);
  *(a1 + 152) = v8;
  *(a1 + 168) = 0;
  *(a1 + 136) = v8;
  *a1 = v9;
  *(a1 + 8) = v10;
  return sub_35A60(v12, a1 + 136, &qword_19AFF8, &unk_140270);
}

void sub_353BC(double a1, double a2, float a3, float a4)
{
  swift_getObjectType();
  if (a3 == 1000.0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  if (a4 == 1000.0)
  {
    v9 = a2;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  v10 = sub_340A0();
  sub_339B0(v10, 0.0, 0.0, v8, v9);
}

id sub_354CC()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  v2 = [v0 estimatedDimension:200.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

BOOL sub_35578()
{
  v1 = v0;
  sub_33FE4();
  sub_1D48C();
  sub_35C7C();
  v3 = (*(v2 + 176))();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  v5 = *(&stru_68.offset + (swift_isaMask & *v4));
  v6 = v4;
  v7 = v5();
  v9 = v8;

  v10 = [v1 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  return v9 != v14 || v7 != v12;
}

double sub_35688@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment);
  if (v3 >= 3)
  {
    LOBYTE(v3) = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle) - 1 < 3;
  }

  sub_357D0(&v12);
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition);
  switch(v4)
  {
    case 1:
      sub_35950(&v12);
      *&v12 = 0;
      v7 = &protocol witness table for Double;
      v8 = &type metadata for Double;
      goto LABEL_8;
    case 2:
      v5 = sub_340A0();
      v6 = &unk_1415E8;
      goto LABEL_7;
    case 3:
      goto LABEL_9;
    default:
      v5 = sub_340A0();
      v6 = &unk_1415C0;
LABEL_7:
      v9 = v6[v5];
      sub_35950(&v12);
      *&v12 = v9;
      v7 = &protocol witness table for CGFloat;
      v8 = &type metadata for CGFloat;
LABEL_8:
      *&v13[8] = v8;
      *&v13[16] = v7;
      v13[24] = v4;
LABEL_9:
      v10 = *v13;
      *a1 = v12;
      *(a1 + 16) = v10;
      result = *&v13[9];
      *(a1 + 25) = *&v13[9];
      *(a1 + 41) = v3;
      return result;
  }
}

double sub_357D0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle);
  v3 = *(&off_186D78 + v2);
  result = dbl_141610[v2];
  *(a1 + 24) = *(&off_186D58 + v2);
  *(a1 + 32) = v3;
  *a1 = result;
  *(a1 + 40) = 1u >> (8 * v2);
  return result;
}

id sub_35860(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BannerHeaderComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_359A4()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_359D8()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_35A0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_35A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4948(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_35AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B650, &unk_1415B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_35BFC(__n128 a1)
{
  *(v1 + 152) = a1;
  *(v1 + 168) = 0;
  *(v1 + 136) = a1;
  *v1 = v2;
}

void sub_35C14(uint64_t a1@<X8>)
{
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  *(v2 + 96) = 0;
}

uint64_t sub_35C38()
{

  return sub_139CE4();
}

__n128 BannerHeaderComponentLayout.Metrics.TextSafeArea.init(relativePosition:maxHeight:maxWidth:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  result = *(a1 + 26);
  *(a6 + 26) = result;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3 & 1;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5 & 1;
  return result;
}

uint64_t BannerHeaderComponentLayout.Metrics.init(artworkSize:textSafeArea:textLeading:textTrailing:)()
{
  sub_36E34();
  *(v3 + 168) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  v4 = v3 + 136;
  *v3 = v5;
  *(v3 + 8) = v6;
  memcpy((v3 + 16), v7, 0x49uLL);
  sub_9414(v1, v2 + 96);

  return sub_35D24(v0, v4);
}

uint64_t sub_35D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AFF8, &unk_140270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BannerHeaderComponentLayout.init(metrics:artworkView:messageView:)()
{
  sub_36E34();
  memcpy((v3 + 80), v4, 0xB0uLL);
  sub_9414(v1, v2);

  return sub_9414(v0, v2 + 40);
}

uint64_t BannerHeaderComponentLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_162F0(v5 + 5, v5[8]);
  v8 = sub_3001C();
  sub_3601C(a1, v8, v9, v10, v11);
  sub_13A354();
  sub_162F0(v6, v6[3]);
  sub_13A384();
  v14.origin.x = sub_3001C();
  CGRectGetMaxY(v14);
  sub_162F0(v6, v6[3]);
  v15.origin.x = sub_3001C();
  CGRectGetMinX(v15);
  v16.origin.x = sub_3001C();
  CGRectGetHeight(v16);
  sub_13A354();
  sub_3001C();

  return sub_13A2E4();
}

__n128 BannerHeaderComponentLayout.Metrics.RelativeTextPosition.init(vertical:horizontal:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 25);
  *(a3 + 25) = result;
  *(a3 + 41) = a2;
  return result;
}

Swift::Int sub_35F58()
{
  v1 = *v0;
  sub_13C214();
  BannerHeaderComponentLayout.Metrics.Layout.Horizontal.hash(into:)(v3, v1);
  return sub_13C234();
}

void sub_3601C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_13C114();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 200);
  v17 = *(v6 + 208);
  sub_162F0((v6 + 176), v16);
  sub_20038(v16, v17);
  sub_13A404();
  v18 = *(v13 + 8);
  v18(v15, v12);
  if (*(v6 + 168))
  {
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    CGRectGetWidth(v43);
    sub_36630(v6 + 216, &v40);
    v19 = *&v41[8];
    if (*&v41[8])
    {
      v20 = *&v41[16];
      sub_162F0(&v40, *&v41[8]);
      sub_20038(v19, v20);
      sub_13A404();
      v18(v15, v12);
      sub_3C04(&v40);
    }

    else
    {
      sub_1D2CC(&v40);
    }
  }

  sub_36750(a1, a2, a3, a4, a5);
  sub_162F0((v6 + 40), *(v6 + 64));
  sub_13A384();
  sub_365C0(v6 + 96, &v40);
  *&v39[9] = *&v41[9];
  v38 = v40;
  *v39 = *v41;
  if (v41[24])
  {
    if (v41[24] == 1)
    {
      sub_9414(&v38, v35);
      v21 = v36;
      v22 = v37;
      sub_162F0(v35, v36);
      sub_20038(v21, v22);
      sub_13A404();
      v18(v15, v12);
      v44.origin.x = a2;
      v44.origin.y = a3;
      v44.size.width = a4;
      v44.size.height = a5;
      CGRectGetMinY(v44);
      v45.origin.x = a2;
      v45.origin.y = a3;
      v45.size.width = a4;
      v45.size.height = a5;
      CGRectGetHeight(v45);
    }

    else
    {
      sub_9414(&v38, v35);
      v25 = v36;
      v26 = v37;
      sub_162F0(v35, v36);
      sub_20038(v25, v26);
      sub_13A404();
      v18(v15, v12);
      v47.origin.x = a2;
      v47.origin.y = a3;
      v47.size.width = a4;
      v47.size.height = a5;
      CGRectGetMaxY(v47);
    }
  }

  else
  {
    sub_9414(&v38, v35);
    v23 = v36;
    v24 = v37;
    sub_162F0(v35, v36);
    sub_20038(v23, v24);
    sub_13A404();
    v18(v15, v12);
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    CGRectGetMinY(v46);
  }

  sub_3C04(v35);
  sub_365C0(v6 + 96, &v40);
  v27 = v42;
  sub_36E04(&v40);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  if (v27)
  {
    if (v27 == 1)
    {
      CGRectGetMidX(*&v28);
    }

    else
    {
      CGRectGetMaxX(*&v28);
      sub_36630(v6 + 216, &v38);
      v32 = *&v39[8];
      if (*&v39[8])
      {
        v33 = *&v39[16];
        sub_162F0(&v38, *&v39[8]);
        sub_20038(v32, v33);
        sub_13A404();
        v18(v15, v12);
        sub_3C04(&v38);
      }

      else
      {
        sub_1D2CC(&v38);
      }
    }
  }

  else
  {
    CGRectGetMinX(*&v28);
  }
}

uint64_t sub_36630(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AFF8, &unk_140270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_366A4()
{
  result = qword_19B658;
  if (!qword_19B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B658);
  }

  return result;
}

unint64_t sub_366FC()
{
  result = qword_19B660;
  if (!qword_19B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B660);
  }

  return result;
}

void sub_36750(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 152))
  {
    sub_365C0(v5 + 96, &v23);
    *&v22[9] = *&v24[9];
    v21 = v23;
    *v22 = *v24;
    v14 = (v11 + 8);
    sub_9414(&v21, v18);
    v15 = v19;
    v16 = v20;
    sub_162F0(v18, v19);
    sub_20038(v15, v16);
    sub_13A404();
    (*v14)(v13, v10);
    sub_3C04(v18);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetHeight(v25);
  }
}

uint64_t sub_36928(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_36948(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_36A14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_36AD8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}