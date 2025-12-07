uint64_t sub_6A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v98 = a2;
  v3 = sub_6620C(&qword_3BC8F0, &qword_2E3948);
  v95 = *(v3 - 8);
  v96 = v3;
  __chkstk_darwin(v3);
  v80 = (&v80 - v4);
  v83 = sub_2C30F8();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BC8F8, &qword_2E3950);
  __chkstk_darwin(v6 - 8);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v80 - v9;
  v89 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v89);
  v88 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v80 - v12;
  v13 = sub_2C29C8();
  v104 = *(v13 - 8);
  v105 = v13;
  __chkstk_darwin(v13);
  v103 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v80 - v16;
  v87 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v87);
  v86 = &v80 - v17;
  v84 = sub_6620C(&qword_3BC990, &qword_2E39F0);
  __chkstk_darwin(v84);
  v19 = &v80 - v18;
  v20 = sub_6620C(&qword_3BC998, &qword_2E39F8);
  v92 = *(v20 - 8);
  v93 = v20;
  __chkstk_darwin(v20);
  v91 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v80 - v23;
  v24 = sub_2C3308();
  v100 = *(v24 - 8);
  v101 = v24;
  __chkstk_darwin(v24);
  v99 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2C3678();
  v26 = *(v107 - 1);
  __chkstk_darwin(v107);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3BC9A0, &qword_2E3A00);
  __chkstk_darwin(v29);
  v31 = &v80 - v30;
  v32 = sub_6620C(&qword_3BC9A8, &qword_2E3A08);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v80 - v34;
  v36 = sub_6620C(&qword_3BC9B0, &qword_2E3A10);
  __chkstk_darwin(v36 - 8);
  v90 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v80 - v39;
  *v31 = sub_2C3328();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v41 = sub_6620C(&qword_3BC9B8, &qword_2E3A18);
  sub_6AD24(a1, &v31[*(v41 + 44)]);
  *&v31[*(v29 + 36)] = 0x3FF0000000000000;
  sub_2C3658();
  v42 = sub_72250();
  sub_2C3FA8();
  v43 = v28;
  v44 = v102;
  (*(v26 + 8))(v43, v107);
  v45 = v103;
  sub_69198(v31, &qword_3BC9A0, &qword_2E3A00);
  v46 = v99;
  sub_2C32B8();
  v109 = v29;
  v110 = v42;
  swift_getOpaqueTypeConformance2();
  v107 = v40;
  sub_2C3FE8();
  (*(v100 + 8))(v46, v101);
  (*(v33 + 8))(v35, v32);
  *v19 = sub_2C3348();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v47 = *(sub_6620C(&qword_3BC9E8, &qword_2E3A30) + 44);
  v101 = v19;
  sub_6BA10(v108, &v19[v47]);
  v48 = v105;
  v49 = v104;
  v50 = *(v104 + 104);
  v50(v44, enum case for DynamicTypeSize.xSmall(_:), v105);
  v50(v45, enum case for DynamicTypeSize.accessibility1(_:), v48);
  sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v52 = *(v49 + 32);
    v53 = v85;
    v52(v85, v44, v48);
    v54 = v89;
    v52((v53 + *(v89 + 48)), v45, v48);
    v55 = v88;
    sub_6932C(v53, v88, &qword_3BC938, &unk_2E3990);
    v56 = *(v54 + 48);
    v57 = v86;
    v52(v86, v55, v48);
    v58 = *(v49 + 8);
    v58(v55 + v56, v48);
    sub_69130(v53, v55, &qword_3BC938, &unk_2E3990);
    v52((v57 + *(v87 + 36)), (v55 + *(v54 + 48)), v48);
    v58(v55, v48);
    sub_72B74(&qword_3BC9F0, &qword_3BC990, &qword_2E39F0, &protocol conformance descriptor for VStack<A>);
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v59 = v106;
    v60 = v101;
    sub_2C3F48();
    sub_69198(v57, &qword_3BC940, &qword_2F5A90);
    sub_69198(v60, &qword_3BC990, &qword_2E39F0);
    v61 = v108 + *(type metadata accessor for RatingSummaryView(0) + 36);
    v62 = *v61;
    v63 = v59;
    if (*(v61 + 8) == 1)
    {
      v64 = v94;
      if (v62)
      {
        goto LABEL_8;
      }
    }

    else
    {

      sub_2C5DD8();
      v65 = sub_2C3718();
      sub_2C0058();

      v66 = v81;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_71AF4(v62, 0);
      (*(v82 + 8))(v66, v83);
      v64 = v94;
      if (v109)
      {
        goto LABEL_8;
      }
    }

    if (*(v108 + *(type metadata accessor for RatingSummaryComponentModel(0) + 52) + 8))
    {
      v67 = sub_2C3328();
      v68 = v80;
      *v80 = v67;
      *(v68 + 8) = 0x4020000000000000;
      *(v68 + 16) = 0;
      v69 = sub_6620C(&qword_3BC928, &qword_2E3980);
      sub_6E828(v108, (v68 + *(v69 + 44)));
      sub_69130(v68, v64, &qword_3BC8F0, &qword_2E3948);
      v70 = 0;
LABEL_9:
      (*(v95 + 56))(v64, v70, 1, v96);
      v71 = v90;
      sub_6932C(v107, v90, &qword_3BC9B0, &qword_2E3A10);
      v73 = v91;
      v72 = v92;
      v74 = *(v92 + 16);
      v75 = v93;
      v74(v91, v63, v93);
      v76 = v97;
      sub_6932C(v64, v97, &qword_3BC8F8, &qword_2E3950);
      v77 = v98;
      sub_6932C(v71, v98, &qword_3BC9B0, &qword_2E3A10);
      v78 = sub_6620C(&qword_3BC9F8, &qword_2E3A38);
      v74((v77 + *(v78 + 48)), v73, v75);
      sub_6932C(v76, v77 + *(v78 + 64), &qword_3BC8F8, &qword_2E3950);
      sub_69198(v64, &qword_3BC8F8, &qword_2E3950);
      v79 = *(v72 + 8);
      v79(v106, v75);
      sub_69198(v107, &qword_3BC9B0, &qword_2E3A10);
      sub_69198(v76, &qword_3BC8F8, &qword_2E3950);
      v79(v73, v75);
      return sub_69198(v71, &qword_3BC9B0, &qword_2E3A10);
    }

LABEL_8:
    v70 = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_6AD24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v149 = a1;
  v129 = a2;
  v3 = sub_6620C(&qword_3BCA00, &unk_2E3A40);
  v130 = *(v3 - 8);
  v131 = v3;
  __chkstk_darwin(v3);
  v139 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v145 = &v120 - v6;
  v143 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v143);
  v142 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v141 = &v120 - v9;
  v153 = sub_2C29C8();
  v148 = *(v153 - 1);
  __chkstk_darwin(v153);
  v152 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v151 = &v120 - v12;
  v140 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v140);
  v147 = &v120 - v13;
  v144 = sub_2C0D48();
  v150 = *(v144 - 8);
  __chkstk_darwin(v144);
  v15 = (&v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v16 - 8);
  v18 = &v120 - v17;
  v19 = sub_6620C(&qword_3BCB30, &qword_2E3B98);
  v127 = *(v19 - 8);
  v128 = v19;
  __chkstk_darwin(v19);
  v126 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v146 = &v120 - v22;
  v132 = type metadata accessor for RatingSummaryComponentModel(0);
  v23 = (a1 + *(v132 + 28));
  v24 = v23[1];
  *&v162[0] = *v23;
  *(&v162[0] + 1) = v24;
  v27 = sub_7212C(v132, v25, v26);

  v135 = v27;
  v28 = sub_2C3A48();
  v30 = v29;
  v32 = v31;
  sub_2C3888();
  sub_2C3828();
  sub_2C3898();
  sub_69198(v18, &qword_3BCB28, &qword_2E3B60);
  v33 = sub_2C39E8();
  v35 = v34;
  LOBYTE(v24) = v36;
  v138 = v37;

  sub_72180(v28, v30, v32 & 1);

  v134 = *(type metadata accessor for RatingSummaryView(0) + 32);
  sub_29A87C(v15);
  v38 = sub_2C0D38();
  v39 = *(v150 + 8);
  v136 = v15;
  v150 += 8;
  v133 = v39;
  v39(v15, v144);
  *&v162[0] = v38;
  v137 = sub_2C39A8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v148;
  sub_72180(v33, v35, v24 & 1);

  LOBYTE(v38) = sub_2C3768();
  sub_2C24D8();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  LOBYTE(v162[0]) = v43 & 1;
  LOBYTE(v154) = 0;
  LOBYTE(v24) = sub_2C3778();
  sub_2C24D8();
  v161 = 0;
  *&v154 = v137;
  *(&v154 + 1) = v41;
  LOBYTE(v155) = v43 & 1;
  *(&v155 + 1) = v45;
  LOBYTE(v156) = v38;
  *(&v156 + 1) = v48;
  *&v157 = v50;
  *(&v157 + 1) = v52;
  *&v158 = v54;
  BYTE8(v158) = 0;
  LOBYTE(v159) = v24;
  *(&v159 + 1) = v55;
  *&v160[0] = v56;
  *(&v160[0] + 1) = v57;
  *&v160[1] = v58;
  BYTE8(v160[1]) = 0;
  v59 = enum case for DynamicTypeSize.xSmall(_:);
  v60 = v46[13];
  v61 = v153;
  v60(v151, enum case for DynamicTypeSize.xSmall(_:), v153);
  v60(v152, enum case for DynamicTypeSize.medium(_:), v61);
  v62 = sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v138 = v62;
    v64 = v46[4];
    v65 = v141;
    v66 = v153;
    v64(v141, v151, v153);
    v137 = v60;
    v67 = v143;
    v64((v65 + *(v143 + 48)), v152, v66);
    v125 = v59;
    v68 = v142;
    sub_6932C(v65, v142, &qword_3BC938, &unk_2E3990);
    v124 = v46 + 13;
    v69 = *(v67 + 48);
    v64(v147, v68, v66);
    v70 = v46[1];
    v70(v68 + v69, v66);
    sub_69130(v65, v68, &qword_3BC938, &unk_2E3990);
    v71 = v147;
    v72 = &v147[*(v140 + 36)];
    v73 = v68 + *(v67 + 48);
    v122 = v64;
    v123 = v46 + 4;
    v64(v72, v73, v66);
    v148 = v46 + 1;
    v121 = v70;
    v70(v68, v66);
    sub_6620C(&qword_3BCB38, &qword_2E3BA0);
    sub_72C44();
    v120 = sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    sub_2C3F48();
    sub_69198(v71, &qword_3BC940, &qword_2F5A90);
    v162[4] = v158;
    v162[5] = v159;
    v163[0] = v160[0];
    *(v163 + 9) = *(v160 + 9);
    v162[0] = v154;
    v162[1] = v155;
    v162[2] = v156;
    v162[3] = v157;
    sub_69198(v162, &qword_3BCB38, &qword_2E3BA0);
    v74 = (v149 + *(v132 + 32));
    v75 = v74[1];
    *&v154 = *v74;
    *(&v154 + 1) = v75;

    v76 = sub_2C3A48();
    v78 = v77;
    LOBYTE(v69) = v79;
    sub_2C37D8();
    v80 = sub_2C39E8();
    v82 = v81;
    LOBYTE(v66) = v83;

    sub_72180(v76, v78, v69 & 1);

    sub_2C3878();
    v84 = sub_2C3988();
    v86 = v85;
    LOBYTE(v68) = v87;
    sub_72180(v80, v82, v66 & 1);

    v88 = v136;
    sub_29A87C(v136);
    v89 = sub_2C0D38();
    v133(v88, v144);
    *&v154 = v89;
    v90 = sub_2C39A8();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    sub_72180(v84, v86, v68 & 1);

    *&v154 = v90;
    *(&v154 + 1) = v92;
    v97 = v94 & 1;
    LOBYTE(v155) = v97;
    *(&v155 + 1) = v96;
    v98 = v153;
    v99 = v137;
    v137(v151, v125, v153);
    v99(v152, enum case for DynamicTypeSize.xxxLarge(_:), v98);
    result = sub_2C5868();
    if (result)
    {
      v150 = v96;
      v100 = v141;
      v101 = v151;
      v151 = v90;
      v102 = v153;
      v103 = v122;
      v122(v141, v101, v153);
      v104 = v143;
      v103(v100 + *(v143 + 48), v152, v102);
      LODWORD(v152) = v97;
      v105 = v142;
      sub_6932C(v100, v142, &qword_3BC938, &unk_2E3990);
      v106 = *(v104 + 48);
      v149 = v92;
      v107 = v147;
      v103(v147, v105, v102);
      v108 = v121;
      v121(v105 + v106, v102);
      sub_69130(v100, v105, &qword_3BC938, &unk_2E3990);
      v103(v107 + *(v140 + 36), (v105 + *(v104 + 48)), v102);
      v108(v105, v102);
      sub_2C3F48();
      sub_69198(v107, &qword_3BC940, &qword_2F5A90);
      sub_72180(v151, v149, v152);

      v110 = v126;
      v109 = v127;
      v111 = *(v127 + 16);
      v112 = v128;
      v111(v126, v146, v128);
      v114 = v130;
      v113 = v131;
      v153 = *(v130 + 16);
      (v153)(v139, v145, v131);
      v115 = v129;
      v111(v129, v110, v112);
      v116 = &v115[*(sub_6620C(&qword_3BCB58, &unk_2E3BB0) + 48)];
      v117 = v139;
      (v153)(v116, v139, v113);
      v118 = *(v114 + 8);
      v118(v145, v113);
      v119 = *(v109 + 8);
      v119(v146, v112);
      v118(v117, v113);
      return (v119)(v110, v112);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6BA10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v98 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v98);
  v95 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = v85 - v5;
  v6 = sub_2C29C8();
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin(v6);
  v107 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = v85 - v9;
  v99 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v99);
  v90 = v85 - v10;
  v11 = sub_2C0D48();
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11);
  v103 = (v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_6620C(&qword_3BCA00, &unk_2E3A40);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v92 = v85 - v13;
  v14 = sub_6620C(&qword_3BCA08, &qword_2FC100);
  __chkstk_darwin(v14 - 8);
  v100 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = v85 - v17;
  v18 = type metadata accessor for RatingSummaryView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v93 = sub_6620C(&qword_3BCA10, &unk_2E3A50);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v85 - v23;
  v112 = xmmword_2E3510;
  swift_getKeyPath();
  v102 = a1;
  sub_71A88(a1, v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RatingSummaryView);
  v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v26 = swift_allocObject();
  sub_725C0(v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for RatingSummaryView);
  sub_6620C(&qword_3BCA18, &qword_2E3A78);
  sub_6620C(&qword_3BCA20, &qword_2E3A80);
  sub_723B4();
  sub_72494();
  v87 = v24;
  sub_2C4558();
  v27 = type metadata accessor for RatingSummaryComponentModel(0);
  v28 = (a1 + *(v27 + 36));
  v29 = v28[1];
  v85[0] = *v28;
  *&v112 = v85[0];
  *(&v112 + 1) = v29;
  v32 = sub_7212C(v27, v30, v31);
  v86 = v29;
  swift_bridgeObjectRetain_n();
  v85[1] = v32;
  v33 = sub_2C3A48();
  v35 = v34;
  v37 = v36;
  sub_2C37D8();
  v38 = sub_2C39E8();
  v40 = v39;
  LOBYTE(v25) = v41;

  sub_72180(v33, v35, v37 & 1);

  sub_2C3878();
  v42 = sub_2C3988();
  v44 = v43;
  LOBYTE(v33) = v45;
  v46 = v38;
  v47 = v106;
  sub_72180(v46, v40, v25 & 1);

  v48 = v103;
  sub_29A87C(v103);
  v49 = sub_2C0D38();
  (*(v104 + 8))(v48, v105);
  *&v112 = v49;
  v50 = sub_2C39A8();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_72180(v42, v44, v33 & 1);

  v104 = v52;
  v105 = v50;
  *&v112 = v50;
  *(&v112 + 1) = v52;
  LOBYTE(v113) = v54 & 1;
  v114 = v56;
  v57 = v109;
  v58 = v108;
  v59 = *(v108 + 104);
  v59(v47, enum case for DynamicTypeSize.xSmall(_:), v109);
  v60 = v107;
  v59(v107, enum case for DynamicTypeSize.xxxLarge(_:), v57);
  v61 = v60;
  sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    LODWORD(v103) = v54 & 1;
    v63 = *(v58 + 32);
    v64 = v89;
    v63(v89, v47, v57);
    v65 = v98;
    v63((v64 + *(v98 + 48)), v61, v57);
    v66 = v95;
    sub_6932C(v64, v95, &qword_3BC938, &unk_2E3990);
    v67 = *(v65 + 48);
    v68 = v90;
    v63(v90, v66, v57);
    v107 = v56;
    v69 = *(v58 + 8);
    v69(v66 + v67, v57);
    sub_69130(v64, v66, &qword_3BC938, &unk_2E3990);
    v70 = *(v65 + 48);
    v71 = v99;
    v63((v68 + *(v99 + 36)), (v66 + v70), v57);
    v69(v66, v57);
    v72 = sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v73 = v92;
    sub_2C3F48();
    sub_69198(v68, &qword_3BC940, &qword_2F5A90);
    sub_72180(v105, v104, v103);

    v110 = v85[0];
    v111 = v86;
    *&v112 = &type metadata for Text;
    *(&v112 + 1) = v71;
    v113 = &protocol witness table for Text;
    v114 = v72;
    swift_getOpaqueTypeConformance2();
    v74 = v96;
    v75 = v97;
    sub_2C3F78();

    (*(v94 + 8))(v73, v75);
    v76 = v91;
    v77 = *(v91 + 16);
    v78 = v88;
    v79 = v87;
    v80 = v93;
    v77(v88, v87, v93);
    v81 = v100;
    sub_6932C(v74, v100, &qword_3BCA08, &qword_2FC100);
    v82 = v101;
    v77(v101, v78, v80);
    v83 = sub_6620C(&qword_3BCA58, &qword_2E3A90);
    sub_6932C(v81, &v82[*(v83 + 48)], &qword_3BCA08, &qword_2FC100);
    sub_69198(v74, &qword_3BCA08, &qword_2FC100);
    v84 = *(v76 + 8);
    v84(v79, v80);
    sub_69198(v81, &qword_3BCA08, &qword_2FC100);
    return (v84)(v78, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6C520@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = sub_2C3678();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BCA40, &qword_2E3A88);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_6620C(&qword_3BCA60, &qword_2E3A98);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *a1;
  *v10 = sub_2C3178();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v15 = sub_6620C(&qword_3BCA68, &unk_2E3AA0);
  sub_6C898(v14, a2, &v10[*(v15 + 44)]);
  sub_2C3658();
  v16 = sub_72B74(&qword_3BCA48, &qword_3BCA40, &qword_2E3A88, &protocol conformance descriptor for HStack<A>);
  sub_2C3FA8();
  (*(v5 + 8))(v7, v28);
  sub_69198(v10, &qword_3BCA40, &qword_2E3A88);
  result = type metadata accessor for RatingSummaryComponentModel(0);
  if (__OFSUB__(5, v14))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(5 - v14, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v29 = *(a2 + *(result + 60));
  v31 = 4 - v14;
  sub_6620C(&qword_3BCA70, &unk_2E7120);
  sub_72B74(&qword_3BCA78, &qword_3BCA70, &unk_2E7120, &protocol conformance descriptor for [A]);
  sub_2C5D38();
  v18 = v32;
  if (v33)
  {
    v19 = v33;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v32 = v18;
  v33 = v19;
  v29 = v8;
  v30 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_7212C(OpaqueTypeConformance2, v21, v22);
  v23 = v26;
  sub_2C3F78();

  return (*(v25 + 8))(v13, v23);
}

uint64_t sub_6C898@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v84 = a3;
  v5 = type metadata accessor for RatingSummaryView(0);
  v6 = *(v5 - 8);
  v80 = v5 - 8;
  v83 = v6;
  v82 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2C0D48();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2C2AA8();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BCA80, &qword_2E3AB0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = sub_6620C(&qword_3BCA88, &qword_2E3AB8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = sub_6620C(&qword_3BCA90, &qword_2E3AC0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v71 = &v70 - v23;
  v75 = sub_6620C(&qword_3BCA98, &qword_2E3AC8) - 8;
  __chkstk_darwin(v75);
  v77 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v73 = &v70 - v26;
  __chkstk_darwin(v27);
  v74 = &v70 - v28;
  v29 = sub_6620C(&qword_3BCAA0, &qword_2E3AD0);
  __chkstk_darwin(v29 - 8);
  v72 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v70 - v32;
  *v33 = sub_2C3178();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = sub_6620C(&qword_3BCAA8, &qword_2E3AD8);
  sub_6D06C(a1, a2, &v33[*(v34 + 44)]);
  v35 = *(v10 + 28);
  v36 = enum case for RoundedCornerStyle.circular(_:);
  v37 = sub_2C31A8();
  (*(*(v37 - 8) + 104))(&v12[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  *v12 = _Q0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_725C0(v12, v16, &type metadata accessor for RoundedRectangle);
  v43 = &v16[*(v14 + 44)];
  v44 = v90;
  *(v43 + 4) = v89;
  *(v43 + 5) = v44;
  *(v43 + 6) = v91;
  v45 = v86;
  *v43 = v85;
  *(v43 + 1) = v45;
  v46 = v88;
  *(v43 + 2) = v87;
  *(v43 + 3) = v46;
  sub_2C46A8();
  sub_2C2708();
  sub_69130(v16, v20, &qword_3BCA80, &qword_2E3AB0);
  v47 = &v20[*(v18 + 44)];
  v48 = v93;
  *v47 = v92;
  *(v47 + 1) = v48;
  *(v47 + 2) = v94;
  v49 = a2;
  v50 = v76;
  sub_29A87C(v76);
  v51 = sub_2C0CF8();
  (*(v78 + 8))(v50, v79);
  KeyPath = swift_getKeyPath();
  v53 = v71;
  sub_69130(v20, v71, &qword_3BCA88, &qword_2E3AB8);
  v54 = (v53 + *(v22 + 44));
  *v54 = KeyPath;
  v54[1] = v51;
  v55 = sub_2C46B8();
  v57 = v56;
  v58 = v81;
  sub_71A88(v49, v81, type metadata accessor for RatingSummaryView);
  v59 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v60 = (v82 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_725C0(v58, v61 + v59, type metadata accessor for RatingSummaryView);
  *(v61 + v60) = v70;
  v62 = v73;
  sub_69130(v53, v73, &qword_3BCA90, &qword_2E3AC0);
  v63 = (v62 + *(v75 + 44));
  *v63 = sub_72958;
  v63[1] = v61;
  v63[2] = v55;
  v63[3] = v57;
  v64 = v74;
  sub_69130(v62, v74, &qword_3BCA98, &qword_2E3AC8);
  v65 = v72;
  sub_6932C(v33, v72, &qword_3BCAA0, &qword_2E3AD0);
  v66 = v77;
  sub_6932C(v64, v77, &qword_3BCA98, &qword_2E3AC8);
  v67 = v84;
  sub_6932C(v65, v84, &qword_3BCAA0, &qword_2E3AD0);
  v68 = sub_6620C(&qword_3BCAB0, &unk_2E3B10);
  sub_6932C(v66, v67 + *(v68 + 48), &qword_3BCA98, &qword_2E3AC8);
  sub_69198(v64, &qword_3BCA98, &qword_2E3AC8);
  sub_69198(v33, &qword_3BCAA0, &qword_2E3AD0);
  sub_69198(v66, &qword_3BCA98, &qword_2E3AC8);
  return sub_69198(v65, &qword_3BCAA0, &qword_2E3AD0);
}

void sub_6D06C(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for RatingSummaryView(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BCAD8, &qword_2E3B30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __chkstk_darwin(v14);
  v40 = &v31 - v15;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v38 = v6;
    v36 = a2;
    v43 = 0;
    v44 = a1;
    swift_getKeyPath();
    v19 = sub_6620C(&qword_3BCA18, &qword_2E3A78);
    v20 = sub_6620C(&qword_3BCAE0, &qword_2E3B38);
    v21 = sub_723B4();
    v33 = sub_72A04();
    v37 = v19;
    v34 = v21;
    v35 = v20;
    sub_2C4558();
    if (a1 <= 5)
    {
      v43 = 0;
      v44 = 5 - a1;
      swift_getKeyPath();
      v32 = v18;
      sub_71A88(v36, v7, type metadata accessor for RatingSummaryView);
      v22 = v40;
      v23 = v42;
      v24 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v25 = v39;
      v26 = swift_allocObject();
      sub_725C0(v7, v26 + v24, type metadata accessor for RatingSummaryView);
      sub_2C4558();
      v27 = *(v9 + 16);
      v28 = v32;
      v27(v13, v32, v8);
      v27(v25, v22, v8);
      v27(v23, v13, v8);
      v29 = sub_6620C(&qword_3BCB20, &qword_2E3B58);
      v27(&v23[*(v29 + 48)], v25, v8);
      v30 = *(v9 + 8);
      v30(v22, v8);
      v30(v28, v8);
      v30(v25, v8);
      v30(v13, v8);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_6D480@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2C42B8();
  v6 = sub_2C4208();
  KeyPath = swift_getKeyPath();
  v8 = sub_2C3848();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_2C3898();
  sub_69198(v4, &qword_3BCB28, &qword_2E3B60);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v6;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_6D5C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_2C0D48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2C42B8();
  type metadata accessor for RatingSummaryView(0);
  sub_29A87C(v8);
  v10 = sub_2C0D08();
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  v12 = sub_2C3848();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_2C3898();
  sub_69198(v4, &qword_3BCB28, &qword_2E3B60);
  result = swift_getKeyPath();
  *a1 = v9;
  a1[1] = KeyPath;
  a1[2] = v10;
  a1[3] = result;
  a1[4] = v13;
  return result;
}

uint64_t sub_6D7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a1;
  v7 = sub_2C0D48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_6620C(&qword_3BCAB8, &qword_2F5990);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v28 - v13;
  v15 = *(sub_2C2AA8() + 20);
  v16 = enum case for RoundedCornerStyle.circular(_:);
  v17 = sub_2C31A8();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v14 = _Q0;
  type metadata accessor for RatingSummaryView(0);
  sub_29A87C(v10);
  v23 = sub_2C0D08();
  (*(v8 + 8))(v10, v7);
  *&v14[*(v12 + 60)] = v23;
  *&v14[*(v12 + 64)] = 256;
  result = type metadata accessor for RatingSummaryComponentModel(0);
  if (__OFSUB__(5, a3))
  {
    __break(1u);
  }

  else if (!__OFSUB__(5 - a3, 1))
  {
    v25 = *(a2 + *(result + 56));
    v28[2] = 4 - a3;
    v28[3] = v25;
    sub_6620C(&qword_3BCAC0, &qword_2E3B20);
    sub_72B74(&qword_3BCAC8, &qword_3BCAC0, &qword_2E3B20, &protocol conformance descriptor for [A]);
    sub_2C5D38();
    sub_2C2728();
    sub_2C46A8();
    sub_2C2708();
    sub_69130(v14, a4, &qword_3BCAB8, &qword_2F5990);
    result = sub_6620C(&qword_3BCAD0, &qword_2E3B28);
    v26 = (a4 + *(result + 36));
    v27 = v30;
    *v26 = v29;
    v26[1] = v27;
    v26[2] = v31;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_6DAB8(uint64_t a1)
{
  type metadata accessor for RatingSummaryView(0);
  sub_6620C(&qword_3BC8E8, &qword_2E3940);
  result = sub_2C4378();
  if (v2)
  {
    sub_6FB1C();
  }

  return result;
}

uint64_t sub_6DB28(uint64_t a1, double *a2, uint64_t a3)
{
  v62 = sub_2BFF28();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_2BE828();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_2BE858();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v8 - 8);
  v65 = &v56 - v9;
  v67 = type metadata accessor for JSAction(0);
  __chkstk_darwin(v67);
  v72 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v64 = sub_2C22F8();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C2208();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C2178();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2C4BF8();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v59 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v25 = *a2;
  result = type metadata accessor for RatingSummaryComponentModel(0);
  v27 = *(result + 52);
  v76 = a3;
  v28 = (a3 + v27);
  v29 = v28[1];
  if (v29)
  {
    v57 = *v28;
    v58 = type metadata accessor for RatingSummaryView(0);
    v30 = (v76 + *(v58 + 40));
    v31 = *v30;
    v32 = v30[1];
    v78[0] = v31;
    v78[1] = v32;

    sub_6620C(&qword_3BC8C0, &qword_2E3920);
    sub_2C4378();
    if (v77[0] <= 0.0)
    {
    }

    else
    {
      v33 = ceil(v25) / 5.0;
      (*(v18 + 104))(v20, enum case for Metrics.TargetType.button(_:), v17);
      (*(v14 + 104))(v16, enum case for Metrics.ClickActionType.rate(_:), v13);
      sub_2C21C8();
      sub_2C22A8();
      v56 = v24;
      v34 = v57;
      sub_2C2118();

      (*(v63 + 8))(v12, v64);
      (*(v14 + 8))(v16, v13);
      (*(v18 + 8))(v20, v17);
      v35 = v72;
      sub_2C4BE8();
      sub_6620C(&qword_3BC8E0, &qword_2E3938);
      inited = swift_initStackObject();
      v64 = xmmword_2E15C0;
      *(inited + 16) = xmmword_2E15C0;
      *(inited + 32) = 0x64496D616461;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v34;
      v37 = v34;
      *(inited + 56) = v29;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x676E69746172;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = &type metadata for Double;
      *(inited + 96) = v33;

      v38 = sub_6759C(inited);
      swift_setDeallocating();
      sub_6620C(&qword_3BC318, &qword_2E2FF0);
      swift_arrayDestroy();
      v39 = sub_2BF088();
      v40 = *(*(v39 - 8) + 56);
      v41 = v65;
      v40(v65, 1, 1, v39);
      v42 = v67;
      v43 = *(v67 + 28);
      v40((v35 + v43), 1, 1, v39);
      v44 = v35 + *(v42 + 20);
      strcpy(v44, "SubmitReview");
      *(v44 + 13) = 0;
      *(v44 + 14) = -5120;
      *(v35 + *(v42 + 24)) = v38;
      sub_71FB4(v41, v35 + v43);
      v45 = v66;
      *v66 = v37;
      *(v45 + 1) = v29;
      v45[2] = v33;
      (v68[13])(v45, enum case for AppAnalyticsAction.Type.reportRatingEvent(_:), v69);
      v46 = v73;
      sub_2BE838();
      sub_29A8A4(v78);
      if (v79)
      {
        v69 = v80;
        v68 = sub_72084(v78, v79);
        v47 = v70;
        v48 = v56;
        v49 = v71;
        (*(v70 + 16))(v59, v56, v71);
        sub_6620C(&qword_3BC240, &unk_2E9B40);
        v50 = swift_allocObject();
        *(v50 + 16) = v64;
        *(v50 + 56) = v42;
        *(v50 + 64) = sub_712BC(&qword_3BD470, type metadata accessor for JSAction, &protocol conformance descriptor for JSAction);
        v51 = sub_720C8((v50 + 32));
        sub_71A88(v35, v51, type metadata accessor for JSAction);
        v52 = v75;
        *(v50 + 96) = v75;
        *(v50 + 104) = sub_712BC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
        v53 = sub_720C8((v50 + 72));
        v54 = v74;
        (*(v74 + 16))(v53, v46, v52);
        *&v77[3] = sub_2C4D28();
        *&v77[4] = &protocol witness table for CompoundAction;
        sub_720C8(v77);
        sub_2C4D18();
        v55 = v60;
        sub_29A8B8(v60);
        sub_2BFCD8();
        (*(v61 + 8))(v55, v62);
        (*(v54 + 8))(v46, v52);
        (*(v47 + 8))(v48, v49);
        sub_72024(v35, type metadata accessor for JSAction);
        sub_68CD0(v77);
        return sub_68CD0(v78);
      }

      else
      {
        (*(v74 + 8))(v46, v75);
        (*(v70 + 8))(v56, v71);
        sub_72024(v35, type metadata accessor for JSAction);
        return sub_69198(v78, &qword_3BC840, &qword_2ED0A0);
      }
    }
  }

  return result;
}

uint64_t sub_6E674()
{
  v1 = v0;
  type metadata accessor for RatingSummaryView(0);
  sub_6620C(&qword_3BC8E8, &qword_2E3940);
  sub_2C4378();
  if (v8)
  {
    swift_getKeyPath();
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
    sub_2BE6F8();

    if (*(v8 + 25) > 1u)
    {
      if (*(v8 + 25) == 2)
      {

        v5 = (type metadata accessor for RatingSummaryComponentModel(0) + 48);
        goto LABEL_12;
      }
    }

    else if (*(v8 + 25))
    {
      swift_getKeyPath();
      sub_2BE6F8();

      v2 = *(v8 + 16);
      v3 = *(v8 + 24);

      v4 = type metadata accessor for RatingSummaryComponentModel(0);
      if ((v3 & 1) != 0 || v2 != 0.0)
      {
        v5 = (v4 + 44);
LABEL_12:
        v6 = *(v1 + *v5);

        return v6;
      }

LABEL_11:
      v5 = (v4 + 40);
      goto LABEL_12;
    }

    v4 = type metadata accessor for RatingSummaryComponentModel(0);
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_6E828@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v116 = sub_2C0D48();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_6620C(&qword_3BC930, &qword_2E3988);
  v107 = *(v4 - 8);
  __chkstk_darwin(v4);
  v106 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v123 = &v92 - v7;
  v121 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v121);
  v120 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v92 - v10;
  v122 = sub_2C29C8();
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v92 - v14;
  v118 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v118);
  v117 = &v92 - v16;
  v111 = sub_2C1C18();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_6620C(&qword_3BC948, &qword_2E39A0);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v92 - v21;
  v22 = type metadata accessor for RatingSummaryView(0);
  v23 = (a1 + *(v22 + 40));
  v24 = *v23;
  v25 = v23[1];
  v131 = v24;
  v132 = v25;
  sub_6620C(&qword_3BC8C0, &qword_2E3920);
  sub_2C4398();
  v112 = v22;
  v26 = *(v22 + 20);
  v114 = a1;
  v126 = *(a1 + v26);
  sub_6620C(&qword_3BC8E8, &qword_2E3940);
  sub_2C4378();
  v27 = v131;
  if (v131)
  {
    swift_getKeyPath();
    *&v126 = v27;
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
    sub_2BE6F8();
  }

  sub_2C1C08();
  v28 = v125;
  v29 = v125 + 104;
  v30 = *(v125 + 104);
  v109 = enum case for DynamicTypeSize.xSmall(_:);
  v31 = v122;
  v30(v15);
  v32 = v12;
  (v30)(v12, enum case for DynamicTypeSize.xxxLarge(_:), v31);
  v33 = sub_712BC(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  v35 = v121;
  if (result)
  {
    v96 = v4;
    v102 = v29;
    v97 = v18;
    v36 = *(v28 + 32);
    v101 = v30;
    v37 = v119;
    v36(v119, v15, v31);
    v36((v37 + *(v35 + 48)), v32, v31);
    v98 = v32;
    v99 = v15;
    v38 = v120;
    sub_6932C(v37, v120, &qword_3BC938, &unk_2E3990);
    v100 = v33;
    v39 = *(v35 + 48);
    v40 = v117;
    v36(v117, v38, v31);
    v41 = *(v28 + 8);
    v125 = v28 + 8;
    v41(v38 + v39, v31);
    sub_69130(v37, v38, &qword_3BC938, &unk_2E3990);
    v42 = v40 + *(v118 + 36);
    v43 = v38 + *(v35 + 48);
    v95 = v28 + 32;
    v94 = v36;
    v36(v42, v43, v31);
    v93 = v41;
    v41(v38, v31);
    sub_712BC(&qword_3BC958, &type metadata accessor for InteractiveStarRatingView, &protocol conformance descriptor for InteractiveStarRatingView);
    v44 = sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v45 = v111;
    v92 = v44;
    v46 = v97;
    sub_2C3F48();
    sub_69198(v40, &qword_3BC940, &qword_2F5A90);
    (*(v110 + 8))(v46, v45);
    *&v126 = sub_6E674();
    *(&v126 + 1) = v47;
    sub_7212C(v126, v47, v48);
    v49 = sub_2C3A48();
    v51 = v50;
    LOBYTE(v45) = v52;
    sub_2C37D8();
    v111 = sub_2C39E8();
    v54 = v53;
    LOBYTE(v38) = v55;
    v110 = v56;

    sub_72180(v49, v51, v45 & 1);

    v57 = v113;
    sub_29A87C(v113);
    v58 = sub_2C0D08();
    v59 = v98;
    (*(v115 + 8))(v57, v116);
    *&v126 = v58;
    v60 = v111;
    v61 = sub_2C39A8();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v60;
    v69 = v122;
    sub_72180(v68, v54, v38 & 1);

    KeyPath = swift_getKeyPath();
    *&v126 = v61;
    *(&v126 + 1) = v63;
    v116 = v63;
    v71 = v65 & 1;
    v72 = v99;
    LOBYTE(v127) = v71;
    v128 = v67;
    v129 = KeyPath;
    v115 = KeyPath;
    v130 = 1;
    v73 = v101;
    (v101)(v99, v109, v69);
    (v73)(v59, enum case for DynamicTypeSize.accessibility3(_:), v69);
    result = sub_2C5868();
    if (result)
    {
      LODWORD(v113) = v71;
      v74 = v119;
      v112 = v61;
      v114 = v67;
      v75 = v94;
      v94(v119, v72, v69);
      v76 = v121;
      v75(v74 + *(v121 + 48), v59, v69);
      v77 = v120;
      sub_6932C(v74, v120, &qword_3BC938, &unk_2E3990);
      v78 = *(v76 + 48);
      v79 = v117;
      v75(v117, v77, v69);
      v80 = v93;
      v93(v77 + v78, v69);
      sub_69130(v74, v77, &qword_3BC938, &unk_2E3990);
      v75(v79 + *(v118 + 36), (v77 + *(v76 + 48)), v69);
      v80(v77, v69);
      sub_6620C(&qword_3BC968, &unk_2E4580);
      sub_72198();
      sub_2C3F48();
      sub_69198(v79, &qword_3BC940, &qword_2F5A90);
      sub_72180(v112, v116, v113);

      v81 = v104;
      v82 = *(v104 + 16);
      v83 = v103;
      v84 = v105;
      v82(v103, v124, v105);
      v85 = v107;
      v125 = *(v107 + 16);
      v86 = v106;
      v87 = v96;
      (v125)(v106, v123, v96);
      v88 = v108;
      v82(v108, v83, v84);
      v89 = sub_6620C(&qword_3BC988, &qword_2E39E8);
      (v125)(&v88[*(v89 + 48)], v86, v87);
      v90 = *(v85 + 8);
      v90(v123, v87);
      v91 = *(v81 + 8);
      v91(v124, v84);
      v90(v86, v87);
      return (v91)(v83, v84);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6F574()
{
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6F8();

  return *(v0 + 16);
}

uint64_t sub_6F618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6F8();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_6F6C8(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = *&result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6E8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_6F800()
{
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6F8();

  return *(v0 + 25);
}

uint64_t sub_6F8A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6F8();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_6F948(uint64_t result)
{
  if (*(v1 + 25) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
    sub_2BE6E8();
  }

  return result;
}

Swift::Int Page.UpdateError.hashValue.getter()
{
  v1 = *v0;
  sub_2C6738();
  sub_2C6748(v1);
  return sub_2C6778();
}

Swift::Int sub_6FAD8(uint64_t a1)
{
  v2 = *v1;
  sub_2C6738();
  sub_2C6748(v2);
  return sub_2C6778();
}

uint64_t sub_6FB1C()
{
  v1 = objc_opt_self();
  v2 = sub_2C5888();
  v3 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E4C;
  v23 = v3;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70280;
  v21 = &unk_38A8F0;
  v4 = _Block_copy(&v18);

  [v1 getRatingForItem:v2 forceFetch:0 shouldSuppressMetrics:0 completion:v4];
  _Block_release(v4);

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = objc_opt_self();
  v8 = [v7 mainQueue];
  v9 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E6C;
  v23 = v9;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70688;
  v21 = &unk_38A918;
  v10 = _Block_copy(&v18);

  v11 = [v6 addObserverForName:@"BSUICloudAssetRateContentNotification" object:0 queue:v8 usingBlock:v10];
  _Block_release(v10);

  *(v0 + 48) = v11;
  swift_unknownObjectRelease();
  v12 = [v5 defaultCenter];
  v13 = [v7 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();
  v22 = sub_70E74;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_70688;
  v21 = &unk_38A940;
  v15 = _Block_copy(&v18);

  v16 = [v12 addObserverForName:@"BSUICloudAssetRatingRemovalNotification" object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  *(v0 + 56) = v16;
  return swift_unknownObjectRelease();
}

uint64_t sub_6FE70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_2C5C58();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_2C5C18();
  v14 = a3;

  v15 = sub_2C5C08();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = a3;

  sub_249B98(0, 0, v11, &unk_2E36A8, v16);
}

uint64_t sub_70000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_2C5C18();
  v5[8] = sub_2C5C08();
  v7 = sub_2C5BB8();

  return _swift_task_switch(sub_70098, v7, v6);
}

uint64_t sub_70098()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    if (v3)
    {
      v4 = v3;
      sub_2C5CA8();
      sub_6F6C8(COERCE__INT64(v5 * 5.0), 0);
    }

    else
    {
      sub_6F6C8(0, 0);
    }

    swift_getKeyPath();
    v0[5] = v2;
    sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
    sub_2BE6F8();

    if (*(v2 + 25))
    {
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = 1;
      v0[5] = v2;
      sub_2BE6E8();
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_70280(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v18 = *(a1 + 32);
  if (a5)
  {
    v10 = sub_2C58C8();
    v12 = v11;
    if (v6)
    {
LABEL_3:
      v13 = sub_2C58C8();
      v6 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:

  v15 = a3;
  v16 = a4;
  v18(a2, a3, a4, v10, v12, v13, v6);
}

void sub_70384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = sub_2BE258();
  if (!v4)
  {
LABEL_15:

    return;
  }

  v5 = v4;
  v14 = sub_2C58C8();
  v16 = v6;
  sub_2C61A8();
  if (!*(v5 + 16) || (v7 = sub_5D2A0(v17), (v8 & 1) == 0))
  {
LABEL_16:

    sub_68D90(v17);
    return;
  }

  sub_68C64(*(v5 + 56) + 32 * v7, v18);
  sub_68D90(v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(v3 + 32) != v14 || *(v3 + 40) != v16)
  {
    v9 = sub_2C65B8();

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_17:

    return;
  }

LABEL_10:
  v15 = sub_2C58C8();
  sub_2C61A8();
  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v10 = sub_5D2A0(v17);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_68C64(*(v5 + 56) + 32 * v10, v18);
  sub_68D90(v17);

  sub_70EB8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2C5CA8();
  sub_6F6C8(COERCE__INT64(v12 * 5.0), 0);
  if (*(v3 + 25) == 2)
  {

    *(v3 + 25) = 2;
    goto LABEL_15;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v17[0] = v3;
  sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
  sub_2BE6E8();
}

uint64_t sub_70688(uint64_t a1, uint64_t a2)
{
  v3 = sub_2BE268();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2BE238();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_7077C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_2BE258();
    if (v4)
    {
      v5 = v4;
      v11 = sub_2C58C8();
      v12 = v6;
      sub_2C61A8();
      if (!*(v5 + 16) || (v7 = sub_5D2A0(v13), (v8 & 1) == 0))
      {

        return sub_68D90(v13);
      }

      sub_68C64(*(v5 + 56) + 32 * v7, v14);
      sub_68D90(v13);

      if (swift_dynamicCast())
      {
        if (*(v3 + 32) == v11 && *(v3 + 40) == v12)
        {

          goto LABEL_11;
        }

        v9 = sub_2C65B8();

        if (v9)
        {
LABEL_11:
          sub_6F6C8(0, 0);
          if (*(v3 + 25) != 3)
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            v13[0] = v3;
            sub_712BC(&qword_3BC788, type metadata accessor for RatingUpdateProvider, &unk_2E3650);
            sub_2BE6E8();
          }
        }
      }
    }
  }

  return result;
}

char *sub_709C8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1 name:@"BSUICloudAssetRateContentNotification" object:0];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4 name:@"BSUICloudAssetRatingRemovalNotification" object:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC11BookStoreUIP33_478A1F1FC78ADA53CFC880D079DC87E220RatingUpdateProvider___observationRegistrar;
  v8 = sub_2BE738();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_70B14()
{
  sub_709C8();

  return swift_deallocClassInstance();
}

uint64_t sub_70B90(uint64_t a1)
{
  result = sub_2BE738();
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

uint64_t getEnumTagSinglePayload for RatingUpdateProvider.Status(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RatingUpdateProvider.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_70DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BC780;
  if (!qword_3BC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC780);
  }

  return result;
}

uint64_t sub_70E14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_70E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_70EB8()
{
  result = qword_3BC790;
  if (!qword_3BC790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BC790);
  }

  return result;
}

uint64_t sub_70F04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_70F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_7100C;

  return sub_70000(a1, v4, v5, v7, v6);
}

uint64_t sub_7100C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_71138()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

unint64_t sub_711AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BC798;
  if (!qword_3BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC798);
  }

  return result;
}

unint64_t sub_71204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BC7A0;
  if (!qword_3BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC7A0);
  }

  return result;
}

uint64_t sub_712BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7136C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_713C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RatingSummaryComponentModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_71574(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RatingSummaryComponentModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_71700(uint64_t a1)
{
  type metadata accessor for RatingSummaryComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_7191C(319, &qword_3BC830, &qword_3BC7B0, &qword_2E37B0, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_7191C(319, &qword_3BC838, &qword_3BC840, &qword_2ED0A0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_71980(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext);
        if (v4 <= 0x3F)
        {
          sub_71980(319, &qword_3BC850, &type metadata accessor for ColorConstants);
          if (v5 <= 0x3F)
          {
            sub_719D4(319, &qword_3BC858, &type metadata for Bool, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_719D4(319, &unk_3BC860, &type metadata for Double, &type metadata accessor for State);
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

uint64_t sub_718D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_7191C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_71980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_719D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_71A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_71AF4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void *sub_71B00()
{
  v1 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_6DAB8(v2);
}

uint64_t sub_71B60()
{
  v1 = type metadata accessor for RatingSummaryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0((v0 + v3));
  if (*(v0 + v3 + 64))
  {
    sub_68CD0((v5 + 40));
  }

  v6 = *(type metadata accessor for RatingSummaryComponentModel(0) + 24);
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      sub_68CD0(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0D48();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_71E7C(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6DB28(a1, a2, v6);
}

unint64_t sub_71EFC()
{
  result = qword_3BC8C8;
  if (!qword_3BC8C8)
  {
    sub_718D4(&qword_3BC8B0, &qword_2E3910);
    sub_72B74(&qword_3BC8D0, &qword_3BC8D8, &qword_2E3928, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC8C8);
  }

  return result;
}

uint64_t sub_71FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3CA260, &qword_2E3930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_72024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_72084(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_720C8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_7212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C41E0;
  if (!qword_3C41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C41E0);
  }

  return result;
}

uint64_t sub_72180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_72198()
{
  result = qword_3BC970;
  if (!qword_3BC970)
  {
    sub_718D4(&qword_3BC968, &unk_2E4580);
    sub_72B74(&qword_3BC978, &qword_3BC980, &qword_2E39E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC970);
  }

  return result;
}

unint64_t sub_72250()
{
  result = qword_3BC9C0;
  if (!qword_3BC9C0)
  {
    sub_718D4(&qword_3BC9A0, &qword_2E3A00);
    sub_72B74(&qword_3BC9C8, &qword_3BC9D0, &qword_2E3A20, &protocol conformance descriptor for VStack<A>);
    sub_72B74(&qword_3BC9D8, &qword_3BC9E0, &qword_2E3A28, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC9C0);
  }

  return result;
}

uint64_t sub_72334@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6C520(a1, v6, a2);
}

unint64_t sub_723B4()
{
  result = qword_3BCA28;
  if (!qword_3BCA28)
  {
    v1 = sub_718D4(&qword_3BCA18, &qword_2E3A78);
    sub_72440(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA28);
  }

  return result;
}

unint64_t sub_72440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BCA30;
  if (!qword_3BCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA30);
  }

  return result;
}

unint64_t sub_72494()
{
  result = qword_3BCA38;
  if (!qword_3BCA38)
  {
    sub_718D4(&qword_3BCA20, &qword_2E3A80);
    sub_718D4(&qword_3BCA40, &qword_2E3A88);
    sub_72B74(&qword_3BCA48, &qword_3BCA40, &qword_2E3A88, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_712BC(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA38);
  }

  return result;
}

uint64_t sub_725C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_72630()
{
  v1 = type metadata accessor for RatingSummaryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0((v0 + v3));
  if (*(v0 + v3 + 64))
  {
    sub_68CD0((v5 + 40));
  }

  v6 = *(type metadata accessor for RatingSummaryComponentModel(0) + 24);
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      sub_68CD0(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0D48();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_72958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RatingSummaryView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6D7C8(a1, v2 + v6, v7, a2);
}

unint64_t sub_72A04()
{
  result = qword_3BCAE8;
  if (!qword_3BCAE8)
  {
    sub_718D4(&qword_3BCAE0, &qword_2E3B38);
    sub_72ABC();
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCAE8);
  }

  return result;
}

unint64_t sub_72ABC()
{
  result = qword_3BCAF0;
  if (!qword_3BCAF0)
  {
    sub_718D4(&qword_3BCAF8, &unk_2E3B40);
    sub_72B74(&qword_3BCB00, &qword_3BCB08, &qword_2E6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCAF0);
  }

  return result;
}

uint64_t sub_72B74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_72BBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RatingSummaryView(0);

  return sub_6D5C8(a1);
}

unint64_t sub_72C44()
{
  result = qword_3BCB40;
  if (!qword_3BCB40)
  {
    sub_718D4(&qword_3BCB38, &qword_2E3BA0);
    sub_72CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB40);
  }

  return result;
}

unint64_t sub_72CD0()
{
  result = qword_3BCB48;
  if (!qword_3BCB48)
  {
    sub_718D4(&qword_3BCB50, &qword_2E3BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB48);
  }

  return result;
}

uint64_t sub_72D54()
{
  sub_718D4(&qword_3BC8B0, &qword_2E3910);
  sub_71EFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t RootHostingControllerConfiguration.init(navigationContext:pageMetadata:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for RootHostingControllerConfiguration(0) + 20);
  v6 = sub_2C0838();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_72F04(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_3BCB60;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_72F70(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_3BCB60;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_73010;
}

void sub_73010(uint64_t a1, char a2)
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
  }

  free(v3);
}

void sub_730E4(uint64_t a1)
{
  *(a1 + qword_3BCB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = a1 + qword_3BCC58;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(a1 + qword_3BCB80) = 0;
  *(a1 + qword_3BCC60) = &_swiftEmptySetSingleton;
  sub_2C6378();
  __break(1u);
}

uint64_t sub_731AC()
{
  sub_6620C(&qword_3BCE08, &qword_2F6080);
  sub_72B74(&qword_3BCE10, &qword_3BCE08, &qword_2F6080, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_2C2408();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_6620C(&qword_3BCE18, &unk_2E3D40);
  sub_72B74(&qword_3BCE20, &qword_3BCE18, &unk_2E3D40, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_2C2458();

  swift_beginAccess();
  sub_2C23B8();
  swift_endAccess();
}

void sub_73334(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_77C78(a1, v5, type metadata accessor for HostProxy.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v5;
      [v7 ba_setAnalyticsTracker:v16];

LABEL_10:
      return;
    }

    if (!EnumCaseMultiPayload)
    {
      v9 = *v5;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v10 = [v7 navigationItem];
        [v10 _setManualScrollEdgeAppearanceEnabled:v9];

        if (v9)
        {
          v11 = [v7 contentScrollViewForEdge:1];
          [v7 setContentScrollView:0 forEdge:1];
          [v7 setContentScrollView:v11 forEdge:1];
        }
      }

      v12 = &v7[qword_3BCC58];
      *v12 = v9;
      v12[8] = v9 ^ 1;
      v13 = &v7[qword_3BCB60];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 1);
        ObjectType = swift_getObjectType();
        (*(v14 + 16))(v9, v9 ^ 1, v7, ObjectType, v14);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_10;
    }

    sub_77CE0(v5, type metadata accessor for HostProxy.Event);
  }
}

id sub_73578()
{
  v1 = v0;
  v2 = sub_2C1A28();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v24 = qword_3E8830;
  sub_77C78(v0 + qword_3E8830, &v23 - v9, type metadata accessor for RootHostingControllerConfiguration);
  v11 = *(v5 + 20);
  sub_2C0818();
  v13 = v12;
  v14 = sub_2C0838();
  v23 = *(*(v14 - 8) + 8);
  v23(&v10[v11], v14);
  if (v13 || (sub_2C33A8(), v15 = v28, , sub_77C1C(v27), v15))
  {
    v16 = [v1 navigationItem];
    v17 = sub_2C5888();

    [v16 setTitle:v17];
  }

  v18 = [v1 navigationItem];
  sub_77C78(v1 + v24, v7, type metadata accessor for RootHostingControllerConfiguration);
  v19 = *(v5 + 20);
  sub_2C07F8();
  v23(&v7[v19], v14);
  v20 = sub_2C1A18();
  (*(v25 + 8))(v4, v26);
  [v18 setLargeTitleDisplayMode:v20];

  v21 = [v1 navigationItem];
  [v21 _setSupportsTwoLineLargeTitles:1];

  return [v1 bc_setNavBarVisible:1];
}

uint64_t sub_738D8()
{
  sub_77BF4(v0 + qword_3BCB60);

  sub_77CE0(v0 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);

  sub_77BF4(v0 + qword_3BCBB0);
}

uint64_t sub_739C4(uint64_t a1)
{
  sub_77BF4(a1 + qword_3BCB60);

  sub_77CE0(a1 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);

  sub_77BF4(a1 + qword_3BCBB0);
}

Swift::Void __swiftcall RootHostingController.viewSafeAreaInsetsDidChange()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v30, "viewSafeAreaInsetsDidChange");
  v1 = [v0 traitCollection];
  v2 = [v1 isInCard];

  if (v2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 isInactiveCard];

    if (v4)
    {
      v5 = [v0 navigationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationBar];

        if (v7)
        {
          v8 = v7;
          [v8 alpha];
          if (v9 == 0.0)
          {
            [v0 additionalSafeAreaInsets];
            if (v10 == 0.0)
            {
              [v8 bounds];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;

              v31.origin.x = v12;
              v31.origin.y = v14;
              v31.size.width = v16;
              v31.size.height = v18;
              Height = CGRectGetHeight(v31);
              [v0 additionalSafeAreaInsets];
              [v0 setAdditionalSafeAreaInsets:Height];
            }

            else
            {
            }

            goto LABEL_12;
          }
        }
      }
    }
  }

  [v0 additionalSafeAreaInsets];
  if (v20 != 0.0)
  {
    [v0 additionalSafeAreaInsets];
    [v0 setAdditionalSafeAreaInsets:0.0];
  }

LABEL_12:
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    [v21 safeAreaInsets];
    v24 = v23;
    v26 = v25;

    v27 = *&v0[qword_3BCB68];
    swift_getKeyPath();
    sub_77DB0(&qword_3BCB70, &protocol conformance descriptor for HostProxy);
    sub_2BE6F8();

    swift_beginAccess();
    if (*(v27 + 40) != v24)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_2BE6E8();
    }

    swift_getKeyPath();
    sub_2BE6F8();

    swift_beginAccess();
    if (*(v27 + 48) != v26)
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      sub_2BE6E8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_73E94(void *a1)
{
  v1 = a1;
  RootHostingController.viewSafeAreaInsetsDidChange()();
}

Swift::Void __swiftcall RootHostingController.viewWillLayoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v4, "viewWillLayoutSubviews");
  v1 = [v0 navigationItem];
  isa = [v1 trailingItemGroups];

  if (!isa)
  {
    sub_76AD4();
    sub_2C5B28();
    isa = sub_2C5B18().super.isa;
  }

  v3 = [v0 navigationItem];
  [v3 setTrailingItemGroups:isa];

  if ((*(v0 + qword_3BCB80) & 1) == 0)
  {
    *(v0 + qword_3BCB80) = 1;
    [v0 bsui_configureHideSmallTitleOnScroll:{objc_msgSend(v0, "bsui_hasLargeTitle")}];
  }
}

void sub_73FFC(void *a1)
{
  v1 = a1;
  RootHostingController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall RootHostingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v3 = [v1 presentedViewController];
  if (!v3)
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = [v4 isNavigationBarHidden];
    if (v6 == [v1 bc_navBarVisible])
    {
      [v5 setNavigationBarHidden:objc_msgSend(v5 animated:{"isNavigationBarHidden") ^ 1, a1}];
    }

    v3 = v5;
  }
}

void sub_7412C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  RootHostingController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall RootHostingController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v16, "viewWillDisappear:", a1);
  [v1 bc_analyticsVisibilitySubtreeWillDisappear];
  v3 = [v1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    if ([v3 isInteractive])
    {
      v14 = ContextActionItemCoverProvider.init();
      v15 = 0;
      v10 = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_74394;
      v13 = &unk_38AA78;
      v5 = _Block_copy(&v10);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = sub_76B70;
      v15 = v6;
      v10 = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_74394;
      v13 = &unk_38AAC8;
      v7 = _Block_copy(&v10);

      [v4 animateAlongsideTransition:v5 completion:v7];
      _Block_release(v7);
      _Block_release(v5);
    }

    swift_unknownObjectRelease();
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    if ([v8 isNavigationBarHidden])
    {
      if ([v1 bc_navBarVisible])
      {
        [v9 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

uint64_t sub_74394(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_743F4(void *a1, uint64_t a2)
{
  if ([a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong viewIfLoaded];

      v5 = [v4 window];
      if (v5)
      {

        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
        }
      }
    }
  }
}

void _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 isInCard];

  if (v2)
  {
    v3 = [v0 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 tabBarController];

      if (v5)
      {
        [v5 bc_setPreferredTabBarScrollEdgeAppearance:0];
      }
    }

    v10 = [v0 contentScrollViewForEdge:1];
    v6 = [v0 presentingViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 tabBarController];

      if (v8)
      {
        v9 = [v8 selectedViewController];

        if (v9)
        {
          [v9 setContentScrollView:v10 forEdge:15];
        }
      }
    }
  }
}

void sub_7464C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  RootHostingController.viewWillDisappear(_:)(a3);
}

id sub_746DC(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return [v3 *a3];
}

void sub_74750(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for RootHostingController(0);
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  [v9 *a5];
}

id sub_747E8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = sub_6620C(&qword_3BCB88, &qword_2E3C20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = qword_3BB738;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_57AD8(v5, qword_3BF998);
  (*(v6 + 16))(v8, v11, v5);
  sub_2BF448();
  (*(v6 + 8))(v8, v5);
  if (v17 == 1)
  {
    v12 = type metadata accessor for RootHostingController(0);
    v16.receiver = v10;
    v16.super_class = v12;
    v13 = objc_msgSendSuper2(&v16, *a3);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_7498C(SEL *a1)
{
  v3 = v1;
  v4 = sub_6620C(&qword_3BCB88, &qword_2E3C20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  if (qword_3BB738 != -1)
  {
    swift_once();
  }

  v8 = sub_57AD8(v4, qword_3BF998);
  (*(v5 + 16))(v7, v8, v4);
  sub_2BF448();
  (*(v5 + 8))(v7, v4);
  if (v13 != 1)
  {
    return 0;
  }

  v9 = type metadata accessor for RootHostingController(0);
  v12.receiver = v3;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, *a1);
}

uint64_t sub_74B3C(SEL *a1, unsigned int *a2)
{
  v5 = sub_2BEE58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RootHostingController(0);
  v11.receiver = v2;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, *a1);
  (*(v6 + 104))(v8, *a2, v5);
  sub_2BEEA8();
  return (*(v6 + 8))(v8, v5);
}

void sub_74C68(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  v7 = sub_2BEE58();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RootHostingController(0);
  v14.receiver = a1;
  v14.super_class = v11;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v8 + 104))(v10, *a4, v7);
  sub_2BEEA8();
  (*(v8 + 8))(v10, v7);
}

void RootHostingController.present(_:animated:completion:)(void *a1, char a2, void (*a3)(uint64_t a1, char a2, uint64_t a3, uint64_t a4), void *a4)
{
  v5 = v4;
  if (a3)
  {
    v29 = a3;
    v30 = a4;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_750DC;
    v28 = &unk_38AB68;
    v8 = _Block_copy(&v25);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for RootHostingController(0);
  v31.receiver = v5;
  v31.super_class = v9;
  objc_msgSendSuper2(&v31, "presentViewController:animated:completion:", a1, a2 & 1, v8);
  _Block_release(v8);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = qword_3BB838;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_2C00B8();
    sub_57AD8(v14, qword_3C3140);
    v15 = sub_2C0098();
    v16 = sub_2C5DE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Applying workaround for rdar://108212936. View is becoming non-interactive", v17, 2u);
    }

    v18 = [v5 view];
    if (v18)
    {
      v19 = v18;
      [v18 setUserInteractionEnabled:0];

      v20 = [v11 completionWithItemsHandler];
      if (v20)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v20 = sub_76C04;
      }

      else
      {
        v21 = 0;
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v20;
      v23[4] = v21;
      v29 = sub_76BC0;
      v30 = v23;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_7536C;
      v28 = &unk_38AB18;
      v24 = _Block_copy(&v25);
      sub_77DF4(v20, v21);

      [v11 setCompletionWithItemsHandler:v24];
      _Block_release(v24);
      sub_77BDC(v20, v21);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_750DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_75120(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9.super.isa = sub_2C5B18().super.isa;
    if (a4)
    {
LABEL_3:
      v10 = sub_2BE348();
      goto LABEL_6;
    }
  }

  else
  {
    v9.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a5 + 16))(a5, a1, a2 & 1, v9.super.isa);
}

void sub_751D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  if (qword_3BB838 != -1)
  {
    swift_once();
  }

  v11 = sub_2C00B8();
  sub_57AD8(v11, qword_3C3140);
  v12 = sub_2C0098();
  v13 = sub_2C5DE8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Disabling workaround for rdar://108212936. View is becoming interactive", v14, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    if (!v17)
    {
      __break(1u);
      return;
    }

    [v17 setUserInteractionEnabled:1];
  }

  if (a6)
  {
    a6(a1, a2 & 1, a3, a4);
  }
}

uint64_t sub_7536C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_2C5B28();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_75428(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    v9[2] = v8;
    v8 = sub_77BEC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  RootHostingController.present(_:animated:completion:)(v10, a4, v8, v9);
  sub_77BDC(v8, v9);
}

id sub_75500(void *a1)
{
  v1 = a1;
  v2 = RootHostingController.supportedInterfaceOrientations.getter();

  return v2;
}

id RootHostingController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v3 = [v2 supportedInterfaceOrientations];

      return v3;
    }
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 1)
  {
    return &dword_1C + 2;
  }

  else
  {
    return &dword_0 + 2;
  }
}

Swift::Void __swiftcall RootHostingController.setContentScrollView(_:for:)(UIScrollView_optional _, NSDirectionalRectEdge a2)
{
  v3 = v2;
  v4 = *&_.is_nil;
  isa = _.value.super.super.super.isa;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for RootHostingController(0);
  objc_msgSendSuper2(&v10, "setContentScrollView:forEdge:", isa, v4);
  _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
  v6 = &v3[qword_3BCB60];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = [v3 cardContentDelegate];
  if (v9)
  {
    [v9 scrollViewDidChange];
    swift_unknownObjectRelease();
  }
}

void sub_756F8(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v7 = a3;
  v8 = a1;
  v10.value.super.super.super.isa = a3;
  v10.is_nil = a4;
  RootHostingController.setContentScrollView(_:for:)(v10, v8);
}

void sub_75770(void *a1)
{
  v1 = a1;
  _s11BookStoreUI21RootHostingControllerC33didBecomeVisibleContentScrollViewyyF_0();
}

id sub_757BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_6620C(&qword_3BCE68, &qword_2E3DC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_2C1898();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (a4)
  {
    v54 = a1;
    v55 = a2;

    v57._countAndFlagsBits = 45;
    v57._object = 0xE100000000000000;
    sub_2C5978(v57);
    v58._countAndFlagsBits = a3;
    v58._object = a4;
    sub_2C5978(v58);
    a1 = v54;
    a2 = v55;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v51 = a1;
  v52 = a2;
  sub_2C61A8();
  sub_2C0988();
  sub_68D90(v53);
  if (!v56)
  {

    sub_69198(&v54, &qword_3BCE70, &qword_2E3DC8);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  sub_6620C(&qword_3BCE78, &unk_2E3DD0);
  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

LABEL_9:
    sub_69198(v12, &qword_3BCE68, &qword_2E3DC0);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];
    v21 = v20;
    v23 = v22;

    v24 = [v5 navigationItem];
    v25 = [v24 _isManualScrollEdgeAppearanceEnabled];

    if (v25 & 1) != 0 || (sub_2C1888())
    {
      sub_2C1868();
      v27 = v26;
      v29 = v28;
      Width = v30;
      Height = v32;
    }

    else
    {
      sub_2C1868();
      v27 = v23 + v34;
      sub_2C1868();
      v29 = v21 + v35;
      sub_2C1868();
      Width = CGRectGetWidth(v59);
      sub_2C1868();
      Height = CGRectGetHeight(v60);
    }

    v49 = a1;
    v36 = sub_2C1878();
    result = [v5 view];
    if (result)
    {
      v37 = result;
      v38 = sub_2C1858();
      v40 = v39;
      v42 = v41;
      v43 = type metadata accessor for SwiftUICoverAnimationProvider();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset] = 0;
      v45 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame];
      *v45 = v27;
      v45[1] = v29;
      v45[2] = Width;
      v45[3] = Height;
      v46 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_imageViewIdentifier];
      *v46 = v49;
      v46[1] = a2;
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView] = v37;
      *&v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_coverSourceImage] = v36;
      v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_isInNonHorizontalLayout] = 0;
      v47 = &v44[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider__isVisible];
      *v47 = v38;
      *(v47 + 1) = v40;
      v47[16] = v42 & 1;
      v50.receiver = v44;
      v50.super_class = v43;
      v48 = objc_msgSendSuper2(&v50, "init");
      (*(v14 + 8))(v16, v13);
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RootHostingController.coverSource(forRepresentedObject:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    sub_2C57D8();
    return 0;
  }

  return result;
}

id sub_75E58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = RootHostingController.coverSource(forRepresentedObject:)(v4);

  return v6;
}

id sub_75EBC(void *a1)
{
  v1 = a1;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = [result superview];

  if (!v4)
  {
    result = [v1 view];
    if (result)
    {
      v4 = result;
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return v4;
}

id RootHostingController.containerViewForHostingCoversDuringAnimation.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result superview];

  if (v3)
  {
    return v3;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_75FF0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = _s11BookStoreUI21RootHostingControllerC10visibility2of13ignoringYAxisSo45BCCardStackTransitioningCoverSourceVisibilityVSo0klmnO0_p_SbtF_0(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_76078()
{
  result = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID + 8);
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID + 8);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID);

      v5._countAndFlagsBits = 45;
      v5._object = 0xE100000000000000;
      sub_2C5978(v5);
      v6._countAndFlagsBits = v3;
      v6._object = v2;
      sub_2C5978(v6);

      v4 = sub_2C5F68();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_761F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_762B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (a3)
  {
    sub_2BE5A8();
    v14 = sub_2BE5C8();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_2BE5C8();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (a4)
  {
    sub_2C58C8();
  }

  if (a5)
  {
    v16 = sub_2C58C8();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a6;
  v19 = a1;
  if (v18)
  {
    v20 = sub_2C58C8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = sub_7759C(v13, v16, a5, v20, v22);

  sub_69198(v13, &qword_3BCE00, &unk_2E3D30);

  return v23;
}

id RootHostingController.coverAnimationHostSource(forItem:)()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
    v6 = &v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
    *&v4[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v2;
    *v5 = 0;
    *(v5 + 1) = 0;
    *v6 = 0;
    *(v6 + 1) = 0;
    v7.receiver = v4;
    v7.super_class = v3;
    return objc_msgSendSuper2(&v7, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_7652C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_2C6128();
  swift_unknownObjectRelease();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
    v10 = &v8[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
    *&v8[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v6;
    *v9 = 0;
    *(v9 + 1) = 0;
    *v10 = 0;
    *(v10 + 1) = 0;
    v12.receiver = v8;
    v12.super_class = v7;
    v11 = objc_msgSendSuper2(&v12, "init");

    sub_68CD0(v13);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_76638(void *a1)
{
  v1 = [a1 contentScrollViewForEdge:1];

  return v1;
}

id RootHostingController.scrollView.getter()
{
  v1 = [v0 contentScrollViewForEdge:1];

  return v1;
}

id sub_766B0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t RootHostingController.cardContentDelegate.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall RootHostingController.scrollToTop(animated:)(Swift::Bool animated)
{
  v3 = [v1 contentScrollViewForEdge:1];
  if (v3)
  {
    v5 = v3;
    [v3 adjustedContentInset];
    [v5 setContentOffset:animated animated:{0.0, -v4}];
  }
}

void sub_76804(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = [v7 contentScrollViewForEdge:1];
  if (v4)
  {
    v5 = v4;
    [v4 adjustedContentInset];
    [v5 setContentOffset:a3 animated:{0.0, -v6}];
  }
}

double sub_7689C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_77DB0(&qword_3BCB70, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

double sub_7696C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_77DB0(&qword_3BCB70, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

unint64_t sub_76AD4()
{
  result = qword_3BCB78;
  if (!qword_3BCB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BCB78);
  }

  return result;
}

uint64_t sub_76B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_76B38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_76B78()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_76BCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_76C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v48 = a8;
  v47 = a7;
  v52 = a6;
  v51 = a5;
  v54 = a3;
  v39 = a2;
  v46 = a1;
  v50 = a9;
  v49 = a10;
  v53 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v53);
  v45 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  *(v10 + qword_3BCB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = v10 + qword_3BCC58;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v10 + qword_3BCB80) = 0;
  *(v10 + qword_3BCC60) = &_swiftEmptySetSingleton;
  v18 = type metadata accessor for HostProxy(0);
  swift_allocObject();
  v19 = sub_C2644();
  v40 = qword_3BCB68;
  *(v10 + qword_3BCB68) = v19;
  sub_2C09A8();
  swift_allocObject();
  v20 = sub_2C0998();
  v38 = qword_3BCC48;
  *(v10 + qword_3BCC48) = v20;
  v42 = type metadata accessor for NavigationProvider();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = qword_3BCC50;
  *(v11 + qword_3BCC50) = v21;
  sub_2BEED8();
  swift_allocObject();
  v22 = sub_2BEEC8();
  v37 = qword_3BCB90;
  *(v11 + qword_3BCB90) = v22;
  v44 = type metadata accessor for RootHostingControllerConfiguration;
  sub_77C78(a4, v11 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);
  sub_6620C(&qword_3BC330, &unk_2E3D50);
  sub_2C4968();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2E3BC0;
  sub_77D40(v54, v16);
  sub_2C4958();
  sub_2BF028();
  v56[0] = v39;
  v23 = v39;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  v56[0] = sub_2BEC38();
  sub_2C4958();
  LOBYTE(v56[0]) = sub_2C07D8() & 1;
  sub_2C4958();
  v56[0] = *(v11 + v38);

  sub_2C4958();
  v56[0] = *(v11 + v37);

  sub_2C4958();
  v24 = v40;
  v56[0] = *(v11 + v40);

  sub_2C4958();
  sub_6620C(&unk_3BFED0, &unk_2E7D50);
  sub_2C53F8();
  v56[0] = sub_2C53E8();
  v56[1] = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30, qword_2E3D60);
  v25 = *(v11 + v41);
  v57 = v42;
  v58 = &protocol witness table for NavigationProvider;
  v56[0] = v25;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v26 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v27 = swift_allocObject();
  *(v27 + 16) = _swiftEmptyDictionarySingleton;
  *(v26 + 16) = v27;
  v56[0] = v26;
  sub_2C4958();
  sub_6620C(&qword_3BCE38, &unk_2E7D60);
  v28 = *(v11 + v24);
  v57 = v18;
  v58 = sub_77DB0(&qword_3BCE40, &protocol conformance descriptor for HostProxy);
  v56[0] = v28;

  sub_2C4958();
  sub_6620C(&qword_3BCE48, &unk_2E3DB0);
  v29 = *(v11 + v24);
  v57 = v18;
  v58 = sub_77DB0(&unk_3BCE50, &protocol conformance descriptor for HostProxy);
  v56[0] = v29;

  sub_2C4958();
  v30 = v44;
  sub_77C78(a4, v45, v44);
  sub_2C4958();
  v56[0] = v43;
  sub_6620C(&unk_3BD220, &qword_2E3FF0);
  sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
  v31 = sub_2C4DF8();

  v32 = v47;
  v33 = v48;
  sub_77DF4(v47, v48);
  sub_125A4C(v31, v32, v33, v50, v49, v56);
  sub_77E04(v56, v55);
  v34 = sub_2C3398();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v35 = v34;
  sub_731AC();
  sub_73578();

  sub_77BDC(v32, v33);

  sub_77CE0(a4, v30);
  sub_69198(v54, &qword_3BCE28, &qword_2E9620);
  sub_77C1C(v56);
  return v35;
}

id _s11BookStoreUI21RootHostingControllerC10visibility2of13ignoringYAxisSo45BCCardStackTransitioningCoverSourceVisibilityVSo0klmnO0_p_SbtF_0(void *a1)
{
  [a1 cardStackTransitioningCoverSourceFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  v20 = CGRectContainsRect(v32, v34);
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v33.origin.x = v23;
  v33.origin.y = v25;
  v33.size.width = v27;
  v33.size.height = v29;
  v35.origin.x = v3;
  v35.origin.y = v5;
  v35.size.width = v7;
  v35.size.height = v9;
  v30 = CGRectIntersectsRect(v33, v35);
  v31 = 1;
  if (!v30)
  {
    v31 = 2;
  }

  if (v20)
  {
    return 0;
  }

  else
  {
    return v31;
  }
}

id sub_7759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_757BC(a2, a3, a4, a5);
  if (!result)
  {
    result = [v5 view];
    if (result)
    {
      v11 = result;
      v12 = type metadata accessor for RootHostingController.FallbackCoverAnimatingSource();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_adamID];
      *v14 = 0;
      *(v14 + 1) = 0;
      v15 = &v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_instanceID];
      *v15 = 0;
      *(v15 + 1) = 0;
      *&v13[OBJC_IVAR____TtCC11BookStoreUI21RootHostingControllerP33_33EEA6210FEC2640A5148301F86EE4A328FallbackCoverAnimatingSource_referenceView] = v11;
      *v14 = a2;
      *(v14 + 1) = a3;
      *v15 = a4;
      *(v15 + 1) = a5;
      v16.receiver = v13;
      v16.super_class = v12;

      return objc_msgSendSuper2(&v16, "init");
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_776AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_3BCB60;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_77708(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + qword_3BCB60;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_77778@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cardContentDelegate];
  *a2 = result;
  return result;
}

uint64_t sub_77808(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2C0838();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_778C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2C0838();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_77968(uint64_t a1)
{
  result = sub_2C0838();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_779E4(uint64_t a1)
{
  result = type metadata accessor for RootHostingControllerConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_77BDC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_77C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_77CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_77D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_77DB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HostProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_77DF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id Defaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationBarInsets.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarInsets();
  return objc_msgSendSuper2(&v2, "init");
}

id NavigationBarInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarInsets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_78068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2BF738();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2C4BF8();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_6620C(&unk_3CA260, &qword_2E3930);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_78200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2BF738();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_2C4BF8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_6620C(&unk_3CA260, &qword_2E3930);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SeriesListSortAction(uint64_t a1)
{
  result = qword_3BCF60;
  if (!qword_3BCF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_783D0(uint64_t a1)
{
  sub_2BF738();
  if (v1 <= 0x3F)
  {
    sub_7848C();
    if (v2 <= 0x3F)
    {
      sub_2C4BF8();
      if (v3 <= 0x3F)
      {
        sub_784F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_7848C()
{
  result = qword_3BCF70;
  if (!qword_3BCF70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3BCF70);
  }

  return result;
}

void sub_784F0(uint64_t a1)
{
  if (!qword_3BCF78)
  {
    sub_2BF088();
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3BCF78);
    }
  }
}

uint64_t sub_78558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2C4BF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_785D0()
{
  result = qword_3BCFB8;
  if (!qword_3BCFB8)
  {
    type metadata accessor for SeriesListSortAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCFB8);
  }

  return result;
}

uint64_t sub_78628(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3CA260, &qword_2E3930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  type metadata accessor for RootHostingControllerConfiguration(0);
  v7[8] = swift_task_alloc();
  sub_6620C(&qword_3BCE28, &qword_2E9620);
  v7[9] = swift_task_alloc();
  v7[10] = *(a5 - 8);
  v9 = swift_task_alloc();
  v10 = *v6;
  v7[11] = v9;
  v7[12] = v10;
  sub_2C5C18();
  v7[13] = sub_2C5C08();
  v12 = sub_2C5BB8();
  v7[14] = v12;
  v7[15] = v11;

  return _swift_task_switch(sub_787FC, v12, v11);
}

uint64_t sub_787FC()
{
  (*(v0[10] + 16))(v0[11], v0[2], v0[6]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_788AC;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_788AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    (*(v4[10] + 8))(v4[11], v4[6]);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_78B18;
  }

  else
  {
    v4[18] = a1;
    v4[19] = type metadata accessor for PageHostingController(0);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_789F4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_789F4()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v14 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  sub_77D40(v8, v5);
  sub_78BA4(v7, v4);
  v10 = v9;
  v11 = sub_C00B0(v2, v1, v10, v5, v4, v6, v14);

  (*(v3 + 8))(v2, v6);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_78B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootHostingControllerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for PageControllerFactory(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for PageControllerFactory(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for PageControllerFactory(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PageControllerFactory(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PageControllerFactory(uint64_t result, int a2, int a3)
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

void sub_78E0C(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_750DC;
    v17[3] = &unk_38AC80;
    v7 = _Block_copy(v17);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for BSUISearchFeedViewController();
  v18.receiver = v4;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, "presentViewController:animated:completion:", a1, a2 & 1, v7);
  _Block_release(v7);
  v9 = [v4 navigationItem];
  v10 = [v9 searchController];

  if (v10)
  {

    if (v10 == a1)
    {
      v11 = [v4 navigationController];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v15 = [v4 transitionCoordinator];
          if (v15)
          {
            v16 = [v15 isInteractive];
            swift_unknownObjectRelease();
          }

          else
          {
            v16 = 0;
          }

          [v14 _updateLayoutMarginsForViewController:v4 forInteractiveTransition:v16];
        }
      }
    }
  }
}

uint64_t sub_78FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_790C0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v15[4] = a2;
    v15[5] = a3;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_750DC;
    v15[3] = &unk_38ACA8;
    v5 = _Block_copy(v15);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BSUISearchFeedViewController();
  v16.receiver = v3;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, "dismissViewControllerAnimated:completion:", a1 & 1, v5);
  _Block_release(v5);
  v7 = [v3 presentedViewController];
  v8 = [v3 navigationItem];
  v9 = [v8 searchController];

  if (v7)
  {
    if (!v9)
    {
      v9 = v7;
      goto LABEL_16;
    }

    if (v7 != v9)
    {
      return;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  v10 = [v3 navigationController];
  if (!v10)
  {
    return;
  }

  v9 = v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v3 transitionCoordinator];
    if (v13)
    {
      v14 = [v13 isInteractive];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    [v12 _updateLayoutMarginsForViewController:v3 forInteractiveTransition:v14];
  }

LABEL_16:
}

id sub_79464()
{
  v1 = [v0 bc_childPresentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationItem];
    v4 = [v3 searchController];

    if (v4)
    {

      if (v2 == v4)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for BSUISearchFeedViewController();
  return objc_msgSendSuper2(&v6, "bc_navBarVisible");
}

void sub_795AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_79714;
    v11[3] = &unk_38ACD0;
    v5 = _Block_copy(v11);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BSUISearchFeedViewController();
  v12.receiver = v3;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "feedController:dismissKeyboard:", a1, v5);
  _Block_release(v5);
  v7 = [v3 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    v9 = [v8 searchBar];

    v10 = [v9 searchTextField];
    [v10 resignFirstResponder];
  }
}

uint64_t sub_79714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2C5B28();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_79864(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_2C5B18().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_798D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = [v8 navigationItem];
  v15 = [v14 searchController];

  if (v15)
  {
    v16 = [v15 searchBar];

    v17 = [v16 searchTextField];
    [v17 resignFirstResponder];
  }

  sub_6620C(&qword_3BC1F8, &qword_2E2ED0);
  v18.super.isa = sub_2C5B18().super.isa;
  v19.super.isa = sub_2C57C8().super.isa;
  if (a6)
  {
    v21[4] = a6;
    v21[5] = a7;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_750DC;
    v21[3] = &unk_38ACF8;
    a6 = _Block_copy(v21);
  }

  v20 = type metadata accessor for BSUISearchFeedViewController();
  v22.receiver = v8;
  v22.super_class = v20;
  objc_msgSendSuper2(&v22, "feedController:wantsToPresentCardsWithCardArray:focusedIndex:animated:options:completion:", a1, v18.super.isa, a3, a4 & 1, v19.super.isa, a6);
  _Block_release(a6);
}

uint64_t sub_79C04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_79C80(a2, a3);
  if ((result & 1) == 0)
  {
    v7 = (v3 + OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText);
    *v7 = a2;
    v7[1] = a3;
  }

  return result;
}

uint64_t sub_79C80(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2C4908();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_66278(0, &qword_3BFEF0, OS_dispatch_queue_ptr);
  *v9 = sub_2C5E88();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_2C4928();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = [v3 navigationItem];
    v13 = [v12 searchController];

    if (!v13)
    {
      return v13 != 0;
    }

    v14 = [v13 searchBar];
    v15 = [v14 text];

    if (v15)
    {
      v16 = sub_2C58C8();
      v18 = v17;

      if (v16 == a1 && v18 == a2)
      {

LABEL_11:
        v23 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v23 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          v24 = [v3 presentedViewController];
          if (v24)
          {
            v25 = v24;

LABEL_18:
            return v13 != 0;
          }

          [v13 setActive:1];
        }

        v25 = v13;
        goto LABEL_18;
      }

      v20 = sub_2C65B8();

      if (v20)
      {
        goto LABEL_11;
      }
    }

    v21 = [v13 searchBar];
    v22 = sub_2C5888();
    [v21 setText:v22];

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

double sub_79FE4()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for BSUISearchFeedViewController();
  objc_msgSendSuper2(&v24, "navigationBarMetricsLayoutMargins");
  v5 = v4;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if (v4 == UIEdgeInsetsZero.top && v1 == left && v2 == bottom && v3 == right)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v5 = v13 == &dword_0 + 1 ? 0.0 : UIEdgeInsetsZero.top;
    v14 = v13 == &dword_0 + 1 ? 16.0 : left;
    v15 = v13 == &dword_0 + 1 ? 0.0 : bottom;
    v16 = v13 == &dword_0 + 1 ? 16.0 : right;
    v17 = [v0 navigationItem];
    v18 = [v17 searchController];

    if (!v18)
    {
      return UIEdgeInsetsZero.top;
    }

    v19 = [v18 isActive];

    if (!v19)
    {
      return UIEdgeInsetsZero.top;
    }

    v20 = v5 == UIEdgeInsetsZero.top && v14 == left;
    v21 = v20 && v15 == bottom;
    if (v21 && v16 == right)
    {
      return UIEdgeInsetsZero.top;
    }
  }

  return v5;
}

id sub_7A1B0(uint64_t a1, uint64_t a2, uint64_t a3, Class a4)
{
  sub_7A788(a1, v20);
  v8 = v21;
  if (v21)
  {
    v9 = sub_72084(v20, v21);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_2C6598();
    (*(v10 + 8))(v13, v8);
    sub_68CD0(v20);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = 0;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v15 = sub_2C5888();
  if (a4)
  {
LABEL_4:
    a4 = sub_2C57C8().super.isa;
  }

LABEL_5:
  v16 = type metadata accessor for BSUISearchFeedViewController();
  v19.receiver = v4;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "handleActionForObject:withName:arguments:", v14, v15, a4);
  swift_unknownObjectRelease();

  if (a3 && (a2 == 0x475F5443454C4553 && a3 == 0xEC00000050554F52 || (sub_2C65B8() & 1) != 0))
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  }

  return v17;
}

id BSUIProductFeedViewController.__allocating_init(options:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_2C57C8().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithOptions:v2.super.isa];

  return v3;
}

id BSUISearchFeedViewController.init(options:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText];
  *v2 = 0;
  *(v2 + 1) = 0;
  if (a1)
  {
    v3.super.isa = sub_2C57C8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for BSUISearchFeedViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithOptions:", v3.super.isa);

  if (v4)
  {
  }

  return v4;
}

id BSUISearchFeedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BSUISearchFeedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7A788(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(qword_3C0250, &unk_2E4630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7A844(uint64_t a1)
{
  v2 = sub_6620C(qword_3C0250, &unk_2E4630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7A8AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7A934()
{
  v0[5] = sub_66278(0, &unk_3BD190, off_380D90);
  v0[2] = v0 + 5;
  v0[6] = sub_6620C(&unk_3BDC20, &unk_2E3F50);
  v0[3] = v0 + 6;
  v0[7] = sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  v0[4] = v0 + 7;
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_7AA48;

  return (sub_7F534)(v0 + 2);
}

uint64_t sub_7AA48(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_7AB84, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_7AB84()
{
  if (qword_3BB7A0 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2F90);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DD8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to resolve dependencies for SwiftUI: %@", v4, 0xCu);
    sub_69198(v5, &qword_3BFEE0, &unk_2E9520);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t static PartialObjectGraphProvider.buildPartialObjectGraph()()
{
  v0 = sub_2C4968();
  v51 = *(v0 - 8);
  v52 = v0 - 8;
  v1 = v51;
  __chkstk_darwin(v0);
  v58 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = v50 - v4;
  __chkstk_darwin(v5);
  v71 = v50 - v6;
  __chkstk_darwin(v7);
  v69 = v50 - v8;
  __chkstk_darwin(v9);
  v68 = v50 - v10;
  __chkstk_darwin(v11);
  v57 = v50 - v12;
  __chkstk_darwin(v13);
  v56 = v50 - v14;
  __chkstk_darwin(v15);
  v55 = v50 - v16;
  __chkstk_darwin(v17);
  v54 = v50 - v18;
  __chkstk_darwin(v19);
  v53 = v50 - v20;
  __chkstk_darwin(v21);
  v67 = v50 - v22;
  __chkstk_darwin(v23);
  v70 = v50 - v24;
  __chkstk_darwin(v25);
  v72 = v50 - v26;
  __chkstk_darwin(v27);
  v74 = v50 - v28;
  __chkstk_darwin(v29);
  v59 = v50 - v30;
  __chkstk_darwin(v31);
  v60 = v50 - v32;
  __chkstk_darwin(v33);
  v61 = v50 - v34;
  __chkstk_darwin(v35);
  v62 = v50 - v36;
  __chkstk_darwin(v37);
  v63 = v50 - v38;
  __chkstk_darwin(v39);
  v64 = v50 - v40;
  __chkstk_darwin(v41);
  v65 = v50 - v42;
  __chkstk_darwin(v43);
  v66 = v50 - v44;
  sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  sub_2C4948();
  sub_6620C(&qword_3BD1B8, &qword_2E3F78);
  sub_2C4948();
  sub_66278(0, &qword_3BD1C0, BUBag_ptr);
  sub_2C4948();
  sub_2C5568();
  sub_2C4948();
  sub_6620C(&qword_3BD1C8, &qword_2E3F80);
  sub_2C4948();
  sub_6620C(&qword_3BD1D0, &qword_2E3F88);
  sub_2C4948();
  sub_6620C(&qword_3BD1D8, &qword_2E3F90);
  sub_2C4948();
  sub_6620C(&qword_3BD1E0, &qword_2E3F98);
  sub_2C4948();
  sub_6620C(&qword_3BD1E8, &unk_2E3FA0);
  sub_2C4948();
  sub_6620C(&qword_3BD1F0, &unk_2F55C0);
  sub_2C4948();
  sub_6620C(&qword_3BD1F8, &unk_2E3FB0);
  sub_2C4948();
  sub_2C4B78();
  sub_2C4948();
  sub_6620C(&qword_3BD200, &qword_2FA030);
  sub_2C4948();
  sub_6620C(&qword_3BD208, &qword_2E3FC0);
  sub_2C4948();
  sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  sub_2C4938();
  type metadata accessor for LocalizerManager();
  sub_2C4938();
  sub_2BF548();
  sub_2C4948();
  sub_6620C(&unk_3BD210, &unk_2E3FD8);
  sub_2C4948();
  sub_2C4E58();
  sub_2C4948();
  sub_2C4948();
  sub_2C1498();
  sub_2C4948();
  sub_2C2098();
  sub_2C4948();
  sub_2C4E28();
  sub_6620C(&qword_3BC330, &unk_2E3D50);
  v45 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2E3F30;
  (*(v1 + 16))(v46 + v45, v66, v0);
  v51 = sub_2C4DD8();
  v50[12] = sub_2C4DE8();
  v50[11] = sub_2C4DE8();
  v50[10] = sub_2C4DE8();
  v50[9] = sub_2C4DE8();
  v50[8] = sub_2C4DE8();
  v50[7] = sub_2C4DE8();
  v50[6] = sub_2C4DE8();
  v50[5] = sub_2C4DE8();
  v50[4] = sub_2C4DE8();
  v50[3] = sub_2C4DE8();
  v50[2] = sub_2C4DE8();
  v50[1] = sub_2C4DE8();
  v50[0] = sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  sub_2C4DE8();
  v47 = v58;
  v52 = sub_2C4DE8();

  v48 = *(v1 + 8);
  v48(v47, v0);
  v48(v73, v0);
  v48(v71, v0);
  v48(v69, v0);
  v48(v68, v0);
  v48(v57, v0);
  v48(v56, v0);
  v48(v55, v0);
  v48(v54, v0);
  v48(v53, v0);
  v48(v67, v0);
  v48(v70, v0);
  v48(v72, v0);
  v48(v74, v0);
  v48(v59, v0);
  v48(v60, v0);
  v48(v61, v0);
  v48(v62, v0);
  v48(v63, v0);
  v48(v64, v0);
  v48(v65, v0);
  v48(v66, v0);
  return v52;
}

uint64_t sub_7BA4C()
{
  v0 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_7BB20(&v5 - v2);
  sub_2C4F08();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7BB20@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v87 = sub_6620C(&qword_3BD4B0, &qword_2E40A0);
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v82 - v1;
  v2 = sub_6620C(&qword_3BD4B8, &qword_2E40A8);
  v3 = *(v2 - 8);
  v84 = v2;
  v85 = v3;
  __chkstk_darwin(v2);
  v83 = v82 - v4;
  v5 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = v82 - v9;
  __chkstk_darwin(v10);
  v100 = v82 - v11;
  __chkstk_darwin(v12);
  v98 = v82 - v13;
  __chkstk_darwin(v14);
  v99 = v82 - v15;
  __chkstk_darwin(v16);
  v102 = v82 - v17;
  __chkstk_darwin(v18);
  v103 = v82 - v19;
  __chkstk_darwin(v20);
  v22 = v82 - v21;
  __chkstk_darwin(v23);
  v25 = v82 - v24;
  __chkstk_darwin(v26);
  v28 = v82 - v27;
  __chkstk_darwin(v29);
  v31 = v82 - v30;
  v96 = v82 - v30;
  v32 = sub_2C4E28();
  sub_2C4F38();
  v33 = *(v6 + 16);
  v34 = v33(v31, v28, v5);
  sub_81FE4(v34, v35, v36);
  sub_2C4EF8();
  v37 = *(v6 + 8);
  v37(v28, v5);
  v92 = v37;
  sub_2C4F38();
  v94 = v28;
  v38 = v33(v28, v25, v5);
  sub_82038(v38, v39, v40);
  sub_2C4EF8();
  v37(v25, v5);
  v41 = v83;
  v97 = v32;
  sub_2BFF48();
  sub_2C4F38();
  v95 = v25;
  v33(v25, v22, v5);
  sub_72B74(&qword_3BD4D0, &qword_3BD4B8, &qword_2E40A8, &protocol conformance descriptor for ExternalURLActionImplementation<A>);
  v42 = v84;
  sub_2C4EF8();
  v43 = v92;
  v92(v22, v5);
  (*(v85 + 8))(v41, v42);
  v44 = v103;
  sub_2C4F38();
  v93 = v22;
  v45 = v44;
  v46 = v33(v22, v44, v5);
  sub_8208C(v46, v47, v48);
  sub_2C4EF8();
  v49 = v43;
  v43(v44, v5);
  v50 = v102;
  sub_2C4F38();
  v51 = v33(v45, v50, v5);
  v91 = v33;
  sub_820E0(v51, v52, v53);
  sub_2C4EF8();
  v43(v50, v5);
  v54 = v99;
  sub_2C4F38();
  v55 = v54;
  v56 = v33(v50, v54, v5);
  sub_82134(v56, v57, v58);
  sub_2C4EF8();
  v43(v54, v5);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_80DF8(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_80DF8(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v59 = v86;
  sub_2C1F78();
  v60 = v98;
  sub_2C4F38();
  v61 = v60;
  (v91)(v55, v60, v5);
  sub_72B74(&qword_3BD500, &qword_3BD4B0, &qword_2E40A0, &protocol conformance descriptor for PageUpdateActionImplementation<A, B>);
  v62 = v87;
  sub_2C4EF8();
  v49(v60, v5);
  (*(v89 + 8))(v59, v62);
  v63 = v100;
  sub_2C4F38();
  v64 = v63;
  v65 = v91;
  v66 = (v91)(v61, v63, v5);
  sub_82188(v66, v67, v68);
  sub_2C4EF8();
  v49(v63, v5);
  v69 = v101;
  sub_2C4F38();
  v70 = (v65)(v64, v69, v5);
  sub_821DC(v70, v71, v72);
  sub_2C4EF8();
  v49(v69, v5);
  v73 = v88;
  sub_2C4F38();
  v74 = (v65)(v69, v73, v5);
  sub_82230(v74, v75, v76);
  sub_2C4EF8();
  v49(v73, v5);
  sub_6620C(&qword_3BD520, &qword_2E40B0);
  v82[1] = v6 + 8;
  v77 = *(v6 + 72);
  v78 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v89 = swift_allocObject();
  v79 = v89 + v78;
  (v65)(v89 + v78, v96, v5);
  (v65)(v79 + v77, v94, v5);
  (v65)(v79 + 2 * v77, v95, v5);
  (v65)(v79 + 3 * v77, v93, v5);
  (v65)(v79 + 4 * v77, v103, v5);
  v88 = 5 * v77;
  (v65)(v79 + 5 * v77, v102, v5);
  v87 = v79 + 6 * v77;
  v65();
  v86 = 7 * v77;
  (v65)(v79 + 7 * v77, v98, v5);
  (v65)(v79 + 8 * v77, v100, v5);
  (v65)(v79 + 9 * v77, v101, v5);
  sub_2C4F38();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  sub_2C4EE8();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v80 = v92;
  v92(v101, v5);
  v80(v100, v5);
  v80(v98, v5);
  v80(v99, v5);
  v80(v102, v5);
  v80(v103, v5);
  v80(v93, v5);
  v80(v95, v5);
  v80(v94, v5);
  return (v80)(v96, v5);
}

uint64_t sub_7C654@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSAction(0);
  sub_80DF8(&qword_3BD470, type metadata accessor for JSAction, &protocol conformance descriptor for JSAction);
  sub_2C4A38();
  sub_6620C(&qword_3BD478, &unk_2E4090);
  sub_72B74(&qword_3BD480, &qword_3BD478, &unk_2E4090, &protocol conformance descriptor for PageUpdateAction<A, B>);
  sub_2C4A38();
  sub_2C0368();
  sub_80DF8(&qword_3BD488, &type metadata accessor for BooksAlertAction, &protocol conformance descriptor for BooksAlertAction);
  sub_2C4A38();
  sub_2C0518();
  sub_2C1658();
  sub_6620C(&qword_3BD490, &unk_2F2730);
  sub_72B74(&qword_3BD498, &qword_3BD490, &unk_2F2730, &protocol conformance descriptor for FlowAction.PageDestination<A>);
  v2 = sub_2C1658();
  sub_81F90(v2, v3, v4);
  sub_2C1658();
  v5 = sub_2C0598();
  result = sub_80DF8(&qword_3BD4A8, &type metadata accessor for ActionKinds, &protocol conformance descriptor for ActionKinds);
  *a1 = v5;
  a1[1] = result;
  return result;
}

id sub_7C8CC@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultBag];
  *a1 = result;
  return result;
}

uint64_t sub_7C910()
{
  sub_2C4E28();
  sub_2C4E08();
  sub_66278(0, &qword_3BD1C0, BUBag_ptr);
  sub_2C4DB8();

  return sub_2C5558();
}

uint64_t (*sub_7C9D4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>))(void)
{
  sub_2C4E28();
  v8 = sub_2C4E08();
  v9 = a1(0);
  v10 = objc_allocWithZone(v9);
  *&v10[*a2] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "init");
  *a4 = result;
  a4[1] = a3;
  return result;
}

id sub_7CA60@<X0>(void *a1@<X8>)
{
  if (qword_3BB710 != -1)
  {
    swift_once();
  }

  v3 = qword_3BB718;
  a1[3] = type metadata accessor for BSUISharedWithYouController();
  a1[4] = sub_80DF8(&qword_3BD380, type metadata accessor for BSUISharedWithYouController, &protocol conformance descriptor for BSUISharedWithYouController);
  *a1 = v3;

  return v3;
}

unint64_t sub_7CB20@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 manager];
  v4 = [v3 imageResourceCache];

  v5 = [v2 manager];
  v6 = [v5 resourceRegistry];

  a1[3] = &type metadata for ImageResourceProvider;
  result = sub_812D8(v7, v8, v9);
  a1[4] = result;
  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_7CBE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2C53B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v13[-v7 - 8];
  sub_7CDB4(&v13[-v7 - 8]);
  sub_2C5388();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = [objc_opt_self() sharedInstance];
  v14[3] = sub_66278(0, &qword_3BD330, JSABridge_ptr);
  v14[4] = sub_810CC();
  v14[0] = v10;
  a1[3] = v2;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_720C8(a1);
  (*(v3 + 16))();
  sub_6932C(v14, v13, &qword_3BD340, &qword_2E4078);
  sub_2C5378();
  v9(v5, v2);
  return sub_69198(v14, &qword_3BD340, &qword_2E4078);
}

uint64_t sub_7CDB4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_2C53B8();
  v45 = *(v1 - 8);
  v2 = v45;
  v43 = v45;
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v51 = &v41 - v18;
  v19 = sub_2C53A8();
  sub_81134(v19, v20, v21);
  sub_2C5368();
  v22 = *(v2 + 8);
  v50 = v16;
  v22(v16, v1);
  v23 = sub_2C53A8();
  sub_81188(v23, v24, v25);
  sub_2C5368();
  v48 = v13;
  v22(v13, v1);
  v52 = 15;
  v26 = sub_2C53A8();
  sub_811DC(v26, v27, v28);
  sub_2C5368();
  v47 = v10;
  v22(v10, v1);
  v29 = sub_2C53A8();
  sub_81230(v29, v30, v31);
  sub_2C5368();
  v46 = v7;
  v22(v7, v1);
  v32 = sub_2C53A8();
  sub_81284(v32, v33, v34);
  sub_2C5368();
  v22(v4, v1);
  sub_6620C(&qword_3BD370, &qword_2E4080);
  v35 = *(v45 + 72);
  v36 = v43;
  v37 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = 4 * v35;
  v44 = swift_allocObject();
  v38 = v44 + v37;
  v39 = *(v36 + 16);
  v39(v44 + v37, v51, v1);
  v39(v38 + v35, v50, v1);
  v42 = 2 * v35;
  v39(v38 + 2 * v35, v48, v1);
  v43 = 3 * v35;
  v39(v38 + 3 * v35, v47, v1);
  v39(v38 + v45, v46, v1);
  sub_2C53A8();
  v39(v4, v38, v1);
  sub_2C5398();
  v22(v4, v1);
  v39(v4, (v38 + v35), v1);
  sub_2C5398();
  v22(v4, v1);
  v39(v4, (v38 + v42), v1);
  sub_2C5398();
  v22(v4, v1);
  v39(v4, (v38 + v43), v1);
  sub_2C5398();
  v22(v4, v1);
  v39(v4, (v38 + v45), v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2C5398();
  v22(v4, v1);
  v22(v46, v1);
  v22(v47, v1);
  v22(v48, v1);
  v22(v50, v1);
  return (v22)(v51, v1);
}

uint64_t sub_7D2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_6620C(&qword_3BD2D8, &qword_2E4070);
  sub_72B74(&qword_3BD2E0, &qword_3BD2D8, &qword_2E4070, &protocol conformance descriptor for StaticIntent<A>);
  v2 = sub_2C4A98();
  sub_80F7C(v2, v3, v4);
  sub_2C4A98();
  type metadata accessor for JSShelfPaginationIntent(0);
  sub_80DF8(&qword_3BD2F0, type metadata accessor for JSShelfPaginationIntent, &protocol conformance descriptor for JSShelfPaginationIntent);
  v5 = sub_2C4A98();
  sub_80FD0(v5, v6, v7);
  sub_2C4A98();
  type metadata accessor for SeriesRoomPageIntent(0);
  sub_80DF8(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent, &protocol conformance descriptor for SeriesRoomPageIntent);
  sub_2C4A98();
  type metadata accessor for SeriesSeeAllPageIntent(0);
  sub_80DF8(&qword_3BD308, type metadata accessor for SeriesSeeAllPageIntent, &protocol conformance descriptor for SeriesSeeAllPageIntent);
  sub_2C4A98();
  type metadata accessor for SeriesSeeAllPaginationIntent(0);
  sub_80DF8(&qword_3BD310, type metadata accessor for SeriesSeeAllPaginationIntent, &protocol conformance descriptor for SeriesSeeAllPaginationIntent);
  v8 = sub_2C4A98();
  sub_81024(v8, v9, v10);
  v11 = sub_2C4A98();
  sub_81078(v11, v12, v13);
  sub_2C4A98();
  v14 = sub_2C0678();
  result = sub_80DF8(&qword_3BD328, &type metadata accessor for IntentKinds, &protocol conformance descriptor for IntentKinds);
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_7D54C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v89 = sub_6620C(&qword_3BD290, &qword_2E4030);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v51 - v1;
  v2 = sub_6620C(&qword_3BD298, &qword_2E4038);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v82 = &v51 - v3;
  v81 = sub_2BF7D8();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BD2A0, &qword_2E4040);
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v51 - v6;
  v76 = sub_6620C(&qword_3BD2A8, &qword_2E4048);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v51 - v7;
  v73 = sub_6620C(&qword_3BD2B0, &qword_2E4050);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v51 - v8;
  v68 = sub_6620C(&qword_3BD2B8, &qword_2E4058);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v51 - v9;
  v63 = sub_6620C(&qword_3BD2C0, &qword_2E4060);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v56 = &v51 - v10;
  v60 = sub_2C4B78();
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v51 - v13;
  __chkstk_darwin(v14);
  v55 = &v51 - v15;
  __chkstk_darwin(v16);
  v59 = &v51 - v17;
  __chkstk_darwin(v18);
  v62 = &v51 - v19;
  __chkstk_darwin(v20);
  v65 = &v51 - v21;
  __chkstk_darwin(v22);
  v66 = &v51 - v23;
  v58 = sub_2C4C58();
  v71 = *(v58 - 8);
  __chkstk_darwin(v58);
  v90 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2C4C98();
  v70 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C4E28();
  sub_2C4E08();
  sub_6620C(&qword_3BD1F8, &unk_2E3FB0);
  sub_2C4DB8();

  v26 = v93;
  sub_2C4CA8();
  sub_2C4E08();
  sub_6620C(&qword_3BD1B8, &qword_2E3F78);
  sub_2C4DB8();

  v27 = v93;
  sub_2C4C68();
  sub_2C4E08();
  v52 = sub_6620C(&qword_3BD1C8, &qword_2E3F80);
  sub_2C4DB8();

  v51 = v93;
  v28 = v53;
  sub_2C4B68();
  v93 = v26;
  v29 = v56;
  sub_2C4B08();
  v30 = v54;
  sub_2C4AE8();
  (*(v61 + 8))(v29, v63);
  v31 = *(v57 + 8);
  v32 = v60;
  v31(v28, v60);
  v33 = v64;
  sub_2C4B38();
  v34 = v55;
  sub_2C4AE8();
  (*(v67 + 8))(v33, v68);
  v31(v30, v32);
  v93 = v27;
  v35 = v69;
  sub_2C4B48();
  v36 = v59;
  sub_2C4AE8();
  (*(v72 + 8))(v35, v73);
  v31(v34, v32);
  v37 = v74;
  sub_2C4B28();
  v38 = v62;
  v39 = v58;
  sub_2C4AE8();
  (*(v75 + 8))(v37, v76);
  v31(v36, v32);
  v93 = v51;
  v40 = v77;
  sub_2C4B18();
  v41 = v65;
  sub_2C4AE8();
  (*(v78 + 8))(v40, v79);
  v31(v38, v32);
  v42 = v80;
  sub_2BF7C8();
  v43 = v82;
  sub_2C4AF8();
  v44 = v66;
  v45 = v81;
  sub_2C4AE8();
  (*(v84 + 8))(v43, v85);
  (*(v83 + 8))(v42, v45);
  v46 = (v31)(v41, v32);
  v94 = &type metadata for PartialObjectGraphProvider.InitFailureObserver;
  v95 = sub_80F28(v46, v47, v48);
  v49 = v86;
  sub_2C4B58();
  sub_6620C(&qword_3BD2D0, &qword_2E4068);
  sub_2C4AE8();
  (*(v87 + 8))(v49, v89);
  v31(v44, v32);
  (*(v71 + 8))(v90, v39);
  (*(v70 + 8))(v91, v92);
  return sub_68CD0(&v93);
}

uint64_t sub_7E0BC@<X0>(void *a1@<X8>)
{
  sub_2C4E28();
  sub_2C4E08();
  v2 = type metadata accessor for LibraryAssetStateObserverProvider();
  v3 = swift_allocObject();
  v3[4] = [objc_opt_self() strongToWeakObjectsMapTable];
  sub_6620C(&unk_3BDC20, &unk_2E3F50);
  sub_2C5668();
  v3[2] = v5;
  sub_66278(0, &unk_3BD190, off_380D90);
  sub_2C5668();

  v3[3] = v5;
  a1[3] = v2;
  result = sub_80DF8(&qword_3BD288, type metadata accessor for LibraryAssetStateObserverProvider, &unk_2EC918);
  a1[4] = result;
  *a1 = v3;
  return result;
}

id sub_7E1F8@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v8 = sub_66278(0, &qword_3BD280, JSAStore_ptr);
    v9 = &protocol witness table for JSAStore;
    *&v7 = v3;
    v4 = sub_2C0178();
    v5 = sub_2C0158();
    a1[3] = &type metadata for MenuLikeStateController;
    a1[4] = &protocol witness table for MenuLikeStateController;
    v6 = swift_allocObject();
    *a1 = v6;
    v6[10] = v4;
    v6[11] = &protocol witness table for AccountController;
    v6[7] = v5;
    return sub_68D1C(&v7, (v6 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7E2FC()
{
  sub_2C4E28();
  *(v0 + 32) = sub_2C4E08();
  v1 = type metadata accessor for LocalizerManager();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_7E3C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_7E3C0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_7E81C;
    v4 = 0;
  }

  else
  {

    v4 = *(v2 + 16);
    *(v2 + 56) = v4;
    v3 = sub_7E4E8;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_7E4E8()
{
  v1 = *(v0[7] + 160);
  v0[8] = v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  v4 = sub_6620C(&unk_3BF5A0, &qword_2EC790);
  *v2 = v0;
  v2[1] = sub_7E5E0;
  v5 = v0[3];

  return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_7E5E0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_7E794;
  }

  else
  {
    v4 = sub_7E70C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_7E70C()
{

  return _swift_task_switch(sub_7E77C, 0, 0);
}

uint64_t sub_7E794()
{

  return _swift_task_switch(sub_7E804, 0, 0);
}

uint64_t sub_7E81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7E8A0()
{
  sub_2C4E28();
  v1 = sub_2C4E08();
  type metadata accessor for LocalizerManager();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_7E964;

  return LocalizerManager.init(objectGraph:)(v1);
}

uint64_t sub_7E964(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_7EA64, 0, 0);
}

uint64_t sub_7EA88()
{
  v0 = sub_2BF7D8();
  __chkstk_darwin(v0 - 8);
  sub_2BF7C8();
  sub_2C4E28();
  v1 = sub_2C4E08();
  sub_80E94(v1, v2, v3);
  return sub_2BF538();
}

uint64_t sub_7EB40@<X0>(uint64_t *a1@<X8>)
{
  sub_2C01A8();
  v2 = sub_2C0188();
  sub_2C0198();

  sub_2C21A8();
  v3 = sub_2C53D8();
  swift_allocObject();
  result = sub_2C53C8();
  a1[3] = v3;
  a1[4] = &protocol witness table for AMSMetricsEventRecorder;
  *a1 = result;
  return result;
}

uint64_t sub_7EBDC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_2C54F8();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2C5528();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C5458();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_2C5568();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  sub_2C4E28();
  sub_2C4E08();
  sub_2C4DB8();

  sub_2C4E08();
  sub_6620C(&unk_3BD210, &unk_2E3FD8);
  sub_2C4DB8();

  v32 = sub_2C4E08();
  (*(v13 + 16))(v15, v18, v12);
  v19 = [objc_opt_self() ams_sharedAccountStore];
  v41 = sub_66278(0, &qword_3BD248, ACAccountStore_ptr);
  v42 = &protocol witness table for ACAccountStore;
  v40[0] = v19;
  v20 = [objc_opt_self() mainBundle];
  sub_2C5448();
  v41 = sub_2C1DE8();
  v42 = sub_80DF8(&qword_3BD250, &type metadata accessor for ActionContextFieldProvider, &protocol conformance descriptor for ActionContextFieldProvider);
  sub_720C8(v40);
  sub_2C1DD8();
  sub_2C5508();
  sub_2C5428();
  v21 = *(v4 + 8);
  v22 = v31;
  v21(v6, v31);
  sub_68CD0(v40);
  v41 = sub_2C16A8();
  v42 = sub_80DF8(&qword_3BD258, &type metadata accessor for LocationFieldProvider, &protocol conformance descriptor for LocationFieldProvider);
  sub_720C8(v40);
  sub_2C1698();
  sub_2C5518();
  sub_2C5428();
  v21(v6, v22);
  sub_68CD0(v40);
  v23 = type metadata accessor for JSPageHistoryFieldProvider();
  v24 = swift_allocObject();
  v41 = v23;
  v42 = sub_80DF8(&qword_3BD260, type metadata accessor for JSPageHistoryFieldProvider, &unk_2E4B08);
  v40[0] = v24;
  sub_2C54E8();
  sub_2C5438();
  (*(v36 + 8))(v3, v37);
  sub_68CD0(v40);
  sub_2C5538();
  v25 = v34;
  v26 = v35;
  v27 = (*(v34 + 16))(v33, v11, v35);
  v41 = &_s20JSMetricsEventLinterVN;
  v42 = sub_80E40(v27, v28, v29);
  v40[0] = v32;
  sub_691F8(v43, v39);
  sub_2C4E48();
  (*(v25 + 8))(v11, v26);
  sub_68CD0(v43);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_7F1C0@<X0>(uint64_t *a1@<X8>)
{
  sub_2C4E28();
  result = sub_2C4E08();
  *a1 = result;
  return result;
}

id sub_7F1F4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(sub_2C1498()) init];
  *a1 = result;
  return result;
}

uint64_t sub_7F25C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_2C2098();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __chkstk_darwin(v8);
  v27 = &v23 - v9;
  v10 = sub_2C2088();
  sub_80D50(v10, v11, v12);
  sub_2C2058();
  v13 = *(v2 + 8);
  v25 = v7;
  v13(v7, v1);
  v24 = v13;
  v14 = sub_2C2088();
  sub_80DA4(v14, v15, v16);
  sub_2C2058();
  v13(v4, v1);
  sub_6620C(&qword_3BD240, &unk_2E4020);
  v17 = *(v2 + 72);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v19 = swift_allocObject() + v18;
  v20 = *(v2 + 16);
  v20(v19, v27, v1);
  v20(v19 + v17, v25, v1);
  sub_2C2088();
  v20(v4, v19, v1);
  sub_2C2078();
  v24(v4, v1);
  v20(v4, (v19 + v17), v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2C2078();
  v21 = v24;
  v24(v4, v1);
  v21(v25, v1);
  return (v21)(v27, v1);
}

uint64_t sub_7F534()
{
  v1[17] = v0;
  v2 = sub_2C4968();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_7F60C, 0, 0);
}

uint64_t sub_7F60C()
{
  v1 = sub_66278(0, &unk_3BD190, off_380D90);
  v2 = v0 + *(sub_6620C(&qword_3BD528, &qword_2E40B8) + 32);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_7F6F0;

  return BaseObjectGraph.inject<A>(_:)(v2 + 16, v1, v1);
}

uint64_t sub_7F6F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_80090;
  }

  else
  {
    v2 = sub_7F804;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7F804()
{
  v1 = sub_6620C(&unk_3BDC20, &unk_2E3F50);
  v2 = sub_6620C(&qword_3BD528, &qword_2E40B8);
  *(v0 + 200) = v2;
  v3 = v0 + *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_7F8E8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v1, v1);
}

uint64_t sub_7F8E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[25];
    v2[30] = v0;
    v2[31] = 1;
    v2[29] = v3;
    v4 = sub_80110;
  }

  else
  {
    v4 = sub_7FA14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7FA14()
{
  v1 = sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  v2 = sub_6620C(&qword_3BD528, &qword_2E40B8);
  *(v0 + 216) = v2;
  v3 = v0 + *(v2 + 64);
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_7FAF8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v1, v1);
}

uint64_t sub_7FAF8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];
    v2[30] = v0;
    v2[31] = 2;
    v2[29] = v3;
    v4 = sub_80110;
  }

  else
  {
    v4 = sub_7FC24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7FC24()
{
  sub_6932C((v0 + 2), (v0 + 9), &qword_3BD528, &qword_2E40B8);
  v1 = *(sub_66278(0, &unk_3BD190, off_380D90) - 8);
  swift_task_alloc();
  (*(v1 + 16))();
  sub_2C4958();

  v2 = sub_5BA4C(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_5BA4C((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  *(v2 + 2) = v4 + 1;
  v9 = *(v7 + 32);
  v7 += 32;
  v8 = v9;
  v10 = (*(v7 + 48) + 32) & ~*(v7 + 48);
  v11 = *(v7 + 40);
  v9(&v2[v10 + v11 * v4], v5, v6);
  v12 = *(sub_6620C(&unk_3BDC20, &unk_2E3F50) - 8);
  swift_task_alloc();
  (*(v12 + 16))();
  sub_2C4958();

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_5BA4C((v13 > 1), v14 + 1, 1, v2);
  }

  v15 = v0[21];
  v16 = v0[18];
  *(v2 + 2) = v14 + 1;
  v25 = v11;
  v8(&v2[v10 + v14 * v11], v15, v16);
  v17 = *(sub_6620C(&unk_3BD1A0, &qword_2E5AD0) - 8);
  swift_task_alloc();
  (*(v17 + 16))();
  sub_2C4958();

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_5BA4C((v18 > 1), v19 + 1, 1, v2);
  }

  v20 = v0[20];
  v21 = v0[18];
  *(v2 + 2) = v19 + 1;
  v8(&v2[v10 + v19 * v25], v20, v21);
  v0[16] = v2;
  sub_6620C(&unk_3BD220, &qword_2E3FF0);
  sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
  v22 = sub_2C4DF8();

  sub_69198((v0 + 9), &qword_3BD528, &qword_2E40B8);
  sub_69198((v0 + 2), &qword_3BD528, &qword_2E40B8);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_80090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_80110()
{
  v1 = v0[31];
  v2 = 16 * v1 + 16;
  do
  {
    if (--v1)
    {
      v3 = sub_6620C(&unk_3BDC20, &unk_2E3F50);
    }

    else
    {
      v3 = sub_66278(0, &unk_3BD190, off_380D90);
    }

    (*(*(v3 - 8) + 8))(v0 + *(v0[29] + v2) + 16, v3);
    v2 -= 16;
  }

  while (v1);

  v4 = v0[1];

  return v4();
}

uint64_t BaseObjectGraph.withAsyncDependenciesResolved<each A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v7 = sub_2C4968();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = swift_task_alloc();
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (v9 - v11 < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = (v9 + 16);
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = (v9 + 8 * v10);
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v4[9] = TupleTypeMetadata;
  v4[10] = *(TupleTypeMetadata - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_8042C, 0, 0);
}

uint64_t sub_8042C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v3 = (v0[4] & 0xFFFFFFFFFFFFFFFELL);
    v0[13] = 0;
    v4 = *v3;
    if (v1 != 1)
    {
      v2 = *(v0[9] + 32);
    }

    v5 = v0[12];
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_80650;

    return BaseObjectGraph.inject<A>(_:)(v5 + v2, v4, v4);
  }

  else
  {
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v0[2] = _swiftEmptyArrayStorage;
    sub_6620C(&unk_3BD220, &qword_2E3FF0);
    sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
    v11 = sub_2C4DF8();

    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);

    v13 = v0[1];

    return v13(v11);
  }
}

uint64_t sub_80650()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_80B20;
  }

  else
  {
    v2 = sub_80764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_80764()
{
  v1 = v0[3];
  v2 = v0[13] + 1;
  if (v2 == v1)
  {
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    v3 = 0;
    v23 = v0[4] & 0xFFFFFFFFFFFFFFFELL;
    v25 = v0[7];
    v4 = _swiftEmptyArrayStorage;
    v5 = 32;
    do
    {
      v6 = *(*(v23 + 8 * v3) - 8);
      swift_task_alloc();
      (*(v6 + 16))();
      sub_2C4958();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_5BA4C(0, v4[2] + 1, 1, v4);
      }

      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v4 = sub_5BA4C((v7 > 1), v8 + 1, 1, v4);
      }

      v9 = v0[8];
      v10 = v0[6];
      v11 = v0[3];
      v4[2] = v8 + 1;
      (*(v25 + 32))(v4 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v8, v9, v10);
      ++v3;
      v5 += 16;
    }

    while (v3 != v11);
    v14 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v24 = v0[11];
    v0[2] = v4;
    sub_6620C(&unk_3BD220, &qword_2E3FF0);
    sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
    v17 = sub_2C4DF8();

    v18 = *(v15 + 8);
    v18(v24, v16);
    v18(v14, v16);

    v19 = v0[1];

    return v19(v17);
  }

  else
  {
    v0[13] = v2;
    v12 = *((v0[4] & 0xFFFFFFFFFFFFFFFELL) + 8 * v2);
    if (v1 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v0[9] + 16 * v2 + 32);
    }

    v21 = v0[12];
    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_80650;

    return BaseObjectGraph.inject<A>(_:)(v21 + v13, v12, v12);
  }
}

uint64_t sub_80B20()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1 - 1;
    v3 = 16 * v1 + 16;
    do
    {
      (*(*(*((v0[4] & 0xFFFFFFFFFFFFFFFELL) + 8 * v2--) - 8) + 8))(v0[12] + *(v0[9] + v3));
      v3 -= 16;
    }

    while (v2 != -1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_80C04@<X0>(uint64_t *a1@<X8>)
{
  sub_814F8();
  v2 = sub_2C0D68();
  result = sub_80DF8(&qword_3BD388, &type metadata accessor for ComponentKinds, &protocol conformance descriptor for ComponentKinds);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PartialObjectGraphProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PartialObjectGraphProvider(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_80D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD230;
  if (!qword_3BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD230);
  }

  return result;
}

unint64_t sub_80DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD238;
  if (!qword_3BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD238);
  }

  return result;
}

uint64_t sub_80DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_80E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD268;
  if (!qword_3BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD268);
  }

  return result;
}

unint64_t sub_80E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD270;
  if (!qword_3BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD270);
  }

  return result;
}

uint64_t sub_80EE8()
{
  sub_68CD0((v0 + 16));
  sub_68CD0((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_80F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD2C8;
  if (!qword_3BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2C8);
  }

  return result;
}

unint64_t sub_80F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD2E8;
  if (!qword_3BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2E8);
  }

  return result;
}

unint64_t sub_80FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD2F8;
  if (!qword_3BD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2F8);
  }

  return result;
}

unint64_t sub_81024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD318;
  if (!qword_3BD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD318);
  }

  return result;
}

unint64_t sub_81078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD320;
  if (!qword_3BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD320);
  }

  return result;
}

unint64_t sub_810CC()
{
  result = qword_3BD338;
  if (!qword_3BD338)
  {
    sub_66278(255, &qword_3BD330, JSABridge_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD338);
  }

  return result;
}

unint64_t sub_81134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD348;
  if (!qword_3BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD348);
  }

  return result;
}

unint64_t sub_81188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD350;
  if (!qword_3BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD350);
  }

  return result;
}

unint64_t sub_811DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD358;
  if (!qword_3BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD358);
  }

  return result;
}

unint64_t sub_81230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD360;
  if (!qword_3BD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD360);
  }

  return result;
}

unint64_t sub_81284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD368;
  if (!qword_3BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD368);
  }

  return result;
}

unint64_t sub_812D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD378;
  if (!qword_3BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD378);
  }

  return result;
}

void sub_8132C(uint64_t a1, uint64_t a2)
{
  if (qword_3BB7C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C3008);
  swift_errorRetain();
  oslog = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    v7 = sub_2C67E8();
    v9 = sub_5CCF4(v7, v8, &v12);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&dword_0, oslog, v3, "Failed to initialize %s with error: %@", v4, 0x16u);
    sub_69198(v5, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v6);
  }
}

uint64_t sub_814F8()
{
  type metadata accessor for BrickComponentModel(0);
  sub_80DF8(&qword_3BD390, type metadata accessor for BrickComponentModel, &unk_2EE2F8);
  sub_2C4CD8();
  type metadata accessor for ChartComponentModel(0);
  sub_80DF8(&qword_3BD398, type metadata accessor for ChartComponentModel, &unk_2EF500);
  sub_2C4CD8();
  type metadata accessor for ChartSwooshItemComponentModel(0);
  sub_80DF8(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel, &unk_2EFA80);
  sub_2C4CD8();
  type metadata accessor for ContentUnavailableComponentModel(0);
  sub_80DF8(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel, &protocol conformance descriptor for ContentUnavailableComponentModel);
  sub_2C4CD8();
  type metadata accessor for DescriptionHeaderComponentModel(0);
  sub_80DF8(&qword_3BD3B0, type metadata accessor for DescriptionHeaderComponentModel, &unk_2E9970);
  sub_2C4CD8();
  type metadata accessor for DividerComponentModel(0);
  sub_80DF8(&qword_3BD3B8, type metadata accessor for DividerComponentModel, &unk_2EFC58);
  sub_2C4CD8();
  sub_2C1418();
  sub_80DF8(&qword_3BD3C0, &type metadata accessor for EmptyComponentModel, &protocol conformance descriptor for EmptyComponentModel);
  sub_2C4CD8();
  type metadata accessor for FanComponentModel(0);
  sub_80DF8(&qword_3BD3C8, type metadata accessor for FanComponentModel, &unk_2ED8F8);
  sub_2C4CD8();
  type metadata accessor for GridItemComponentModel(0);
  sub_80DF8(&qword_3BD3D0, type metadata accessor for GridItemComponentModel, &unk_2FB1B0);
  sub_2C4CD8();
  type metadata accessor for HeroComponentModel(0);
  sub_80DF8(&qword_3BD3D8, type metadata accessor for HeroComponentModel, &unk_2F1828);
  sub_2C4CD8();
  type metadata accessor for InfoItemComponentModel(0);
  sub_80DF8(&qword_3BD3E0, type metadata accessor for InfoItemComponentModel, &unk_2E5D44);
  sub_2C4CD8();
  sub_2C1A08();
  sub_80DF8(&qword_3BD3E8, &type metadata accessor for LabelItemComponentModel, &protocol conformance descriptor for LabelItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for LargeNavigationBarComponentModel(0);
  sub_80DF8(&qword_3BD3F0, type metadata accessor for LargeNavigationBarComponentModel, &unk_2EF700);
  sub_2C4CD8();
  type metadata accessor for ListItemComponentModel(0);
  sub_80DF8(&qword_3BD3F8, type metadata accessor for ListItemComponentModel, &protocol conformance descriptor for ListItemComponentModel);
  sub_2C4CD8();
  type metadata accessor for RatingSummaryComponentModel(0);
  sub_80DF8(&qword_3BD400, type metadata accessor for RatingSummaryComponentModel, &unk_2E92E0);
  sub_2C4CD8();
  type metadata accessor for RecommendationItemComponentModel(0);
  sub_80DF8(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel, &unk_2EA5FC);
  sub_2C4CD8();
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_80DF8(&qword_3BD410, type metadata accessor for ReviewBrickComponentModel, &protocol conformance descriptor for ReviewBrickComponentModel);
  sub_2C4CD8();
  type metadata accessor for ReviewsHeaderComponentModel(0);
  sub_80DF8(&qword_3BD418, type metadata accessor for ReviewsHeaderComponentModel, &unk_2FBFD8);
  sub_2C4CD8();
  type metadata accessor for SeriesEntityCardComponentModel(0);
  sub_80DF8(&qword_3BD420, type metadata accessor for SeriesEntityCardComponentModel, &unk_2F9A68);
  sub_2C4CD8();
  type metadata accessor for SeriesRoomHeaderComponentModel(0);
  sub_80DF8(&qword_3BD428, type metadata accessor for SeriesRoomHeaderComponentModel, &protocol conformance descriptor for SeriesRoomHeaderComponentModel);
  sub_2C4CD8();
  type metadata accessor for SheetHeaderComponentModel(0);
  sub_80DF8(&qword_3BD430, type metadata accessor for SheetHeaderComponentModel, &unk_2F8C7C);
  sub_2C4CD8();
  sub_2C1FD8();
  sub_80DF8(&qword_3BD438, &type metadata accessor for ShelfFooterSeeAllComponentModel, &protocol conformance descriptor for ShelfFooterSeeAllComponentModel);
  sub_2C4CD8();
  sub_2C1F98();
  sub_80DF8(&qword_3BD440, &type metadata accessor for ShelfHeaderTitleComponentModel, &protocol conformance descriptor for ShelfHeaderTitleComponentModel);
  sub_2C4CD8();
  type metadata accessor for SingleBookWidgetComponentModel(0);
  sub_80DF8(&qword_3BD448, type metadata accessor for SingleBookWidgetComponentModel, &unk_2F3498);
  sub_2C4CD8();
  type metadata accessor for SwooshItemComponentModel(0);
  sub_80DF8(&unk_3BD450, type metadata accessor for SwooshItemComponentModel, &unk_2ECE78);
  sub_2C4CD8();
  sub_6620C(&unk_3C85C0, &qword_2E4088);
  sub_72B74(&qword_3BD460, &unk_3C85C0, &qword_2E4088, &protocol conformance descriptor for NestedShelfComponentModel<A>);
  sub_2C4CD8();
  type metadata accessor for TextComponentModel(0);
  sub_80DF8(&qword_3BD468, type metadata accessor for TextComponentModel, &unk_2E7408);
  return sub_2C4CD8();
}

unint64_t sub_81F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4A0;
  if (!qword_3BD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4A0);
  }

  return result;
}

unint64_t sub_81FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4C0;
  if (!qword_3BD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4C0);
  }

  return result;
}

unint64_t sub_82038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4C8;
  if (!qword_3BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4C8);
  }

  return result;
}

unint64_t sub_8208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4D8;
  if (!qword_3BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4D8);
  }

  return result;
}

unint64_t sub_820E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4E0;
  if (!qword_3BD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4E0);
  }

  return result;
}

unint64_t sub_82134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD4E8;
  if (!qword_3BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4E8);
  }

  return result;
}

unint64_t sub_82188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD508;
  if (!qword_3BD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD508);
  }

  return result;
}

unint64_t sub_821DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD510;
  if (!qword_3BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD510);
  }

  return result;
}

unint64_t sub_82230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD518;
  if (!qword_3BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD518);
  }

  return result;
}

uint64_t sub_82294@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD530, &qword_2E4150);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EditFinishedDateSheetRootView(0);
  sub_6932C(v1 + *(v10 + 24), v9, &qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t EditFinishedDateSheetRootView.init(assetInfo:objectGraph:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for EditFinishedDateSheetRootView(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  result = sub_693D0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for EditFinishedDateSheetRootView(uint64_t a1)
{
  result = qword_3BD5E8;
  if (!qword_3BD5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditFinishedDateSheetRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = sub_2C0BB8();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2C0C68();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2C0C98();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_6620C(&qword_3BD538, &qword_2E4158);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v49 = sub_6620C(&qword_3BD540, &qword_2E4160);
  __chkstk_darwin(v49);
  v11 = &v48 - v10;
  v53 = sub_6620C(&qword_3BD548, &qword_2E4168);
  __chkstk_darwin(v53);
  v13 = &v48 - v12;
  v55 = sub_6620C(&qword_3BD550, &qword_2E4170);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v48 - v14;
  v58 = sub_6620C(&qword_3BD558, &qword_2E4178);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v48 - v15;
  sub_691F8(v1, v68);
  v64 = v1;
  v67 = v1;
  sub_835A4(v68, 0, sub_85304, v66, v9);
  sub_6620C(&qword_3BD560, &qword_2E4180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E4110;
  v17 = sub_2C3768();
  *(inited + 32) = v17;
  v18 = sub_2C3788();
  *(inited + 33) = v18;
  v19 = sub_2C37A8();
  *(inited + 34) = v19;
  v20 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v17)
  {
    v20 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v18)
  {
    v20 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v19)
  {
    v20 = sub_2C3798();
  }

  sub_82294(v6);
  sub_2C0C78();
  v21 = *(v65 + 8);
  v65 += 8;
  v21(v6, v63);
  sub_2C0C58();
  (*(v50 + 8))(v4, v51);
  sub_2C24D8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_69130(v9, v11, &qword_3BD538, &qword_2E4158);
  v30 = &v11[*(v49 + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v11, v13, &qword_3BD540, &qword_2E4160);
  v31 = v53;
  v32 = &v13[*(v53 + 36)];
  v33 = v68[5];
  *(v32 + 4) = v68[4];
  *(v32 + 5) = v33;
  *(v32 + 6) = v68[6];
  v34 = v68[1];
  *v32 = v68[0];
  *(v32 + 1) = v34;
  v35 = v68[3];
  *(v32 + 2) = v68[2];
  *(v32 + 3) = v35;
  sub_2BF028();
  sub_2C4DB8();
  v36 = v69;
  v37 = sub_8530C();
  v38 = v52;
  sub_2C3DD8();

  sub_85450(v13);
  sub_2C4DB8();
  if (v69 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  sub_2C4E28();
  v69 = v31;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v55;
  sub_2C3AD8();

  (*(v54 + 8))(v38, v40);
  sub_2C3778();
  sub_82294(v6);
  v41 = v59;
  sub_2C0BE8();
  v21(v6, v63);
  sub_2C0B98();
  (*(v60 + 8))(v41, v61);
  sub_2C24D8();
  v69 = v42;
  v70 = v43;
  v71 = v44;
  v72 = v45;
  v73 = 0;
  sub_6620C(&qword_3BD580, &qword_2E4188);
  v46 = v62;
  sub_2C35C8();
  return (*(v57 + 32))(v46, v39, v58);
}

uint64_t sub_82E20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = sub_6620C(&qword_3BD6A0, &qword_2E44A0);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = v49 - v3;
  v58 = sub_6620C(&qword_3BD6A8, &unk_2E4290);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v49 - v4;
  v53 = sub_2C0C98();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v6 - 8);
  v8 = v49 - v7;
  v9 = sub_2C3918();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_6620C(&qword_3BD6B0, &qword_2E42A0);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v49[0] = v49 - v13;
  v52 = sub_6620C(&qword_3BD6B8, &qword_2E42A8) - 8;
  __chkstk_darwin(v52);
  v50 = v49 - v14;
  v49[1] = a1;
  sub_72084(a1, a1[3]);
  if (sub_2BFA28())
  {
    v15 = 0xD000000000000012;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  v16 = sub_1DA078(v15);
  v18 = v17;
  KeyPath = swift_getKeyPath();
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title2(_:), v9);
  v20 = enum case for Font.Design.serif (_:);
  v21 = sub_2C3848();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v8, v20, v21);
  (*(v22 + 56))(v8, 0, 1, v21);
  v23 = sub_2C38A8();
  sub_69198(v8, &qword_3BCB28, &qword_2E3B60);
  (*(v10 + 8))(v12, v9);
  v24 = swift_getKeyPath();
  v69 = 0;
  *&v64 = v16;
  *(&v64 + 1) = v18;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = _swiftEmptyArrayStorage;
  *&v66 = KeyPath;
  BYTE8(v66) = 1;
  *&v67 = v24;
  *(&v67 + 1) = v23;
  sub_6620C(&qword_3BD6C0, &unk_2E4310);
  sub_85A38();
  v25 = v49[0];
  sub_2C4058();
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = v67;
  sub_69198(v68, &qword_3BD6C0, &unk_2E4310);
  v26 = sub_2C3778();
  v27 = v51;
  sub_82294(v51);
  v28 = v56;
  v29 = v53;
  sub_2C1768();
  (*(v54 + 8))(v27, v29);
  swift_getKeyPath();
  v30 = v60;
  v31 = v58;
  sub_2C0BC8();

  (*(v59 + 8))(v28, v31);
  v32 = swift_getKeyPath();
  sub_85AF8(v32, v33, v34);
  v35 = v61;
  sub_2C0BD8();

  (*(v62 + 8))(v30, v35);
  sub_2C24D8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v50;
  (*(v55 + 32))(v50, v25, v57);
  v45 = &v44[*(v52 + 44)];
  *v45 = v26;
  *(v45 + 1) = v37;
  *(v45 + 2) = v39;
  *(v45 + 3) = v41;
  *(v45 + 4) = v43;
  v45[40] = 0;
  v46 = v44;
  v47 = v63;
  sub_69130(v46, v63, &qword_3BD6B8, &qword_2E42A8);
  result = sub_6620C(&qword_3BD6D8, &unk_2E4380);
  *(v47 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_835A4@<X0>(void *a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v103 = a3;
  LODWORD(v101) = a2;
  v105 = a5;
  v6 = sub_6620C(&qword_3BD648, &qword_2E4210);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_2BE6D8();
  v90 = *(v8 - 8);
  v91 = v8;
  __chkstk_darwin(v8);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v86 - v11;
  v100 = sub_2BF568();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BD650, &qword_2E4218);
  __chkstk_darwin(v94);
  v99 = &v86 - v13;
  v14 = sub_6620C(&qword_3BD658, &unk_2E4220);
  __chkstk_darwin(v14 - 8);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v86 - v17;
  __chkstk_darwin(v18);
  v98 = &v86 - v19;
  v104 = sub_2BF558();
  v20 = *(v104 - 8);
  __chkstk_darwin(v104);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v97 = &v86 - v24;
  v25 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v25 - 8);
  v27 = &v86 - v26;
  v28 = sub_2BE588();
  v107 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v106 = &v86 - v32;
  v33 = sub_6620C(&qword_3BD538, &qword_2E4158);
  __chkstk_darwin(v33);
  v35 = &v86 - v34;
  v37 = &v86 + *(v36 + 52) - v34;
  LOBYTE(v108) = 0;
  sub_2C4368();
  v38 = v110;
  *v37 = v109;
  *(v37 + 1) = v38;
  v39 = &v35[v33[14]];
  v108 = 0;
  sub_2C4368();
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  v41 = &v35[v33[15]];
  v108 = 0;
  sub_2C4368();
  v42 = v110;
  *v41 = v109;
  *(v41 + 1) = v42;
  v43 = &v35[v33[16]];
  v108 = sub_676CC(_swiftEmptyArrayStorage);
  sub_6620C(&qword_3BD668, &qword_2E4238);
  sub_2C4368();
  v44 = v110;
  *v43 = v109;
  *(v43 + 1) = v44;
  v45 = v33[17];
  *&v35[v45] = swift_getKeyPath();
  sub_6620C(&qword_3BD670, &unk_2E4270);
  swift_storeEnumTagMultiPayload();
  v46 = v33[18];
  *&v35[v46] = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v47 = sub_691F8(a1, v35);
  v35[v33[10]] = v101;
  v103(v47);
  sub_72084(a1, a1[3]);
  v48 = v107;
  sub_2BF978();
  if ((*(v48 + 48))(v27, 1, v28) == 1)
  {
    sub_69198(v27, &qword_3BC418, &unk_2E9200);
LABEL_10:
    v54 = v106;
    sub_2BE548();
    v66 = v104;
    (*(v20 + 104))(v22, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
    sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
    sub_72B74(&qword_3BD680, &qword_3BD688, &unk_2E4CE0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
    v67 = sub_2C5A78();
    (*(v20 + 8))(v22, v66);
    v68 = v67 ^ 1;
    v69 = *(v48 + 32);
LABEL_11:
    v70 = &v35[v33[11]];
    *&v70[*(sub_6620C(&qword_3BD690, &unk_2E4280) + 28)] = 0;
    v69(v70, v54, v28);
    v71 = &v35[v33[12]];
    *v71 = v68 & 1;
    *(v71 + 1) = 0;
    sub_69130(v35, v105, &qword_3BD538, &qword_2E4158);
    return sub_68CD0(a1);
  }

  v49 = *(v48 + 32);
  v102 = v30;
  v103 = v28;
  v101 = v49;
  v49(v30, v27, v28);
  sub_72084(a1, a1[3]);
  v50 = sub_2BFA28();
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v48 = v107;
    v28 = v103;
    (*(v107 + 8))(v102, v103);
    goto LABEL_10;
  }

  v51 = v97;
  v52 = v104;
  (*(v20 + 104))(v97, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
  sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688, &unk_2E4CE0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v53 = sub_2C5A78();
  (*(v20 + 8))(v51, v52);
  v54 = v106;
  if ((v53 & 1) == 0)
  {
LABEL_15:
    v28 = v103;
    v69 = v101;
    v101(v54, v102, v103);
    v68 = 1;
    goto LABEL_11;
  }

  sub_72084(a1, a1[3]);
  v55 = v98;
  sub_2BFA18();
  v56 = v95;
  v57 = v96;
  v58 = v100;
  (*(v96 + 104))(v95, enum case for FinishedDateKind.yearOnly(_:), v100);
  (*(v57 + 56))(v56, 0, 1, v58);
  v59 = *(v94 + 48);
  v60 = v55;
  v61 = v99;
  sub_6932C(v60, v99, &qword_3BD658, &unk_2E4220);
  v104 = v59;
  v62 = v61 + v59;
  v63 = v61;
  sub_6932C(v56, v62, &qword_3BD658, &unk_2E4220);
  v64 = *(v57 + 48);
  if (v64(v61, 1, v58) == 1)
  {
    sub_69198(v56, &qword_3BD658, &unk_2E4220);
    v65 = v99;
    sub_69198(v98, &qword_3BD658, &unk_2E4220);
    if (v64(v65 + v104, 1, v100) == 1)
    {
      sub_69198(v65, &qword_3BD658, &unk_2E4220);
      v54 = v106;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v73 = v92;
  sub_6932C(v61, v92, &qword_3BD658, &unk_2E4220);
  v74 = v100;
  if (v64(v61 + v104, 1, v100) == 1)
  {
    sub_69198(v95, &qword_3BD658, &unk_2E4220);
    v65 = v99;
    sub_69198(v98, &qword_3BD658, &unk_2E4220);
    (*(v96 + 8))(v73, v74);
LABEL_14:
    sub_69198(v65, &qword_3BD650, &qword_2E4218);
    v54 = v106;
    goto LABEL_15;
  }

  v75 = v96;
  v76 = v87;
  (*(v96 + 32))(v87, v63 + v104, v74);
  sub_85984(&qword_3BD698, &type metadata accessor for FinishedDateKind, &protocol conformance descriptor for FinishedDateKind);
  LODWORD(v104) = sub_2C5878();
  v77 = *(v75 + 8);
  v77(v76, v74);
  sub_69198(v95, &qword_3BD658, &unk_2E4220);
  sub_69198(v98, &qword_3BD658, &unk_2E4220);
  v77(v92, v74);
  sub_69198(v99, &qword_3BD658, &unk_2E4220);
  v54 = v106;
  if ((v104 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v78 = v93;
  sub_2BE6C8();
  v79 = v89;
  sub_2BE6A8();
  v81 = v90;
  v80 = v91;
  result = (*(v90 + 48))(v79, 1, v91);
  if (result != 1)
  {
    v82 = v88;
    (*(v81 + 32))(v88, v79, v80);
    v83 = v78;
    v84 = v102;
    sub_29A268(v83, v82, v54);
    v85 = *(v81 + 8);
    v85(v82, v80);
    v85(v93, v80);
    v28 = v103;
    (*(v107 + 8))(v84, v103);
    v68 = 0;
    v69 = v101;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_842D4@<X0>(void *a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v103 = a3;
  LODWORD(v101) = a2;
  v105 = a5;
  v6 = sub_6620C(&qword_3BD648, &qword_2E4210);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_2BE6D8();
  v90 = *(v8 - 8);
  v91 = v8;
  __chkstk_darwin(v8);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v86 - v11;
  v100 = sub_2BF568();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v87 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BD650, &qword_2E4218);
  __chkstk_darwin(v94);
  v99 = &v86 - v13;
  v14 = sub_6620C(&qword_3BD658, &unk_2E4220);
  __chkstk_darwin(v14 - 8);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v86 - v17;
  __chkstk_darwin(v18);
  v98 = &v86 - v19;
  v104 = sub_2BF558();
  v20 = *(v104 - 8);
  __chkstk_darwin(v104);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v97 = &v86 - v24;
  v25 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v25 - 8);
  v27 = &v86 - v26;
  v28 = sub_2BE588();
  v107 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v106 = &v86 - v32;
  v33 = sub_6620C(&qword_3BD660, &qword_2E4230);
  __chkstk_darwin(v33);
  v35 = &v86 - v34;
  v37 = &v86 + *(v36 + 52) - v34;
  LOBYTE(v108) = 0;
  sub_2C4368();
  v38 = v110;
  *v37 = v109;
  *(v37 + 1) = v38;
  v39 = &v35[v33[14]];
  v108 = 0;
  sub_2C4368();
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  v41 = &v35[v33[15]];
  v108 = 0;
  sub_2C4368();
  v42 = v110;
  *v41 = v109;
  *(v41 + 1) = v42;
  v43 = &v35[v33[16]];
  v108 = sub_676CC(_swiftEmptyArrayStorage);
  sub_6620C(&qword_3BD668, &qword_2E4238);
  sub_2C4368();
  v44 = v110;
  *v43 = v109;
  *(v43 + 1) = v44;
  v45 = v33[17];
  *&v35[v45] = swift_getKeyPath();
  sub_6620C(&qword_3BD670, &unk_2E4270);
  swift_storeEnumTagMultiPayload();
  v46 = v33[18];
  *&v35[v46] = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v47 = sub_691F8(a1, v35);
  v35[v33[10]] = v101;
  v103(v47);
  sub_72084(a1, a1[3]);
  v48 = v107;
  sub_2BF978();
  if ((*(v48 + 48))(v27, 1, v28) == 1)
  {
    sub_69198(v27, &qword_3BC418, &unk_2E9200);
LABEL_10:
    v54 = v106;
    sub_2BE548();
    v66 = v104;
    (*(v20 + 104))(v22, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
    sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
    sub_72B74(&qword_3BD680, &qword_3BD688, &unk_2E4CE0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
    v67 = sub_2C5A78();
    (*(v20 + 8))(v22, v66);
    v68 = v67 ^ 1;
    v69 = *(v48 + 32);
LABEL_11:
    v70 = &v35[v33[11]];
    *&v70[*(sub_6620C(&qword_3BD690, &unk_2E4280) + 28)] = 0;
    v69(v70, v54, v28);
    v71 = &v35[v33[12]];
    *v71 = v68 & 1;
    *(v71 + 1) = 0;
    sub_85914(v35, v105);
    return sub_68CD0(a1);
  }

  v49 = *(v48 + 32);
  v102 = v30;
  v103 = v28;
  v101 = v49;
  v49(v30, v27, v28);
  sub_72084(a1, a1[3]);
  v50 = sub_2BFA28();
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v48 = v107;
    v28 = v103;
    (*(v107 + 8))(v102, v103);
    goto LABEL_10;
  }

  v51 = v97;
  v52 = v104;
  (*(v20 + 104))(v97, enum case for BooksFeatureFlag.fuzzyFinishedDate(_:), v104);
  sub_85984(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688, &unk_2E4CE0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v53 = sub_2C5A78();
  (*(v20 + 8))(v51, v52);
  v54 = v106;
  if ((v53 & 1) == 0)
  {
LABEL_15:
    v28 = v103;
    v69 = v101;
    v101(v54, v102, v103);
    v68 = 1;
    goto LABEL_11;
  }

  sub_72084(a1, a1[3]);
  v55 = v98;
  sub_2BFA18();
  v56 = v95;
  v57 = v96;
  v58 = v100;
  (*(v96 + 104))(v95, enum case for FinishedDateKind.yearOnly(_:), v100);
  (*(v57 + 56))(v56, 0, 1, v58);
  v59 = *(v94 + 48);
  v60 = v55;
  v61 = v99;
  sub_6932C(v60, v99, &qword_3BD658, &unk_2E4220);
  v104 = v59;
  v62 = v61 + v59;
  v63 = v61;
  sub_6932C(v56, v62, &qword_3BD658, &unk_2E4220);
  v64 = *(v57 + 48);
  if (v64(v61, 1, v58) == 1)
  {
    sub_69198(v56, &qword_3BD658, &unk_2E4220);
    v65 = v99;
    sub_69198(v98, &qword_3BD658, &unk_2E4220);
    if (v64(v65 + v104, 1, v100) == 1)
    {
      sub_69198(v65, &qword_3BD658, &unk_2E4220);
      v54 = v106;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v73 = v92;
  sub_6932C(v61, v92, &qword_3BD658, &unk_2E4220);
  v74 = v100;
  if (v64(v61 + v104, 1, v100) == 1)
  {
    sub_69198(v95, &qword_3BD658, &unk_2E4220);
    v65 = v99;
    sub_69198(v98, &qword_3BD658, &unk_2E4220);
    (*(v96 + 8))(v73, v74);
LABEL_14:
    sub_69198(v65, &qword_3BD650, &qword_2E4218);
    v54 = v106;
    goto LABEL_15;
  }

  v75 = v96;
  v76 = v87;
  (*(v96 + 32))(v87, v63 + v104, v74);
  sub_85984(&qword_3BD698, &type metadata accessor for FinishedDateKind, &protocol conformance descriptor for FinishedDateKind);
  LODWORD(v104) = sub_2C5878();
  v77 = *(v75 + 8);
  v77(v76, v74);
  sub_69198(v95, &qword_3BD658, &unk_2E4220);
  sub_69198(v98, &qword_3BD658, &unk_2E4220);
  v77(v92, v74);
  sub_69198(v99, &qword_3BD658, &unk_2E4220);
  v54 = v106;
  if ((v104 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v78 = v93;
  sub_2BE6C8();
  v79 = v89;
  sub_2BE6A8();
  v81 = v90;
  v80 = v91;
  result = (*(v90 + 48))(v79, 1, v91);
  if (result != 1)
  {
    v82 = v88;
    (*(v81 + 32))(v88, v79, v80);
    v83 = v78;
    v84 = v102;
    sub_29A268(v83, v82, v54);
    v85 = *(v81 + 8);
    v85(v82, v80);
    v85(v93, v80);
    v28 = v103;
    (*(v107 + 8))(v84, v103);
    v68 = 0;
    v69 = v101;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_84FF4()
{
  v0 = type metadata accessor for AssetActionImplementation(0);
  __chkstk_darwin(v0);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_2BEF48();
  v15[1] = sub_2C4E28();
  sub_2C4F38();
  v10 = *(v4 + 16);
  v10(v9, v6, v3);
  sub_85984(&unk_3BFEA0, type metadata accessor for AssetActionImplementation, &protocol conformance descriptor for AssetActionImplementation);
  sub_2C4EF8();
  v11 = *(v4 + 8);
  v11(v6, v3);
  sub_859CC(v2);
  sub_6620C(&qword_3BD520, &qword_2E40B0);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v10((v13 + v12), v9, v3);
  sub_2C4F38();
  v10(v6, (v13 + v12), v3);
  swift_setDeallocating();
  v11((v13 + v12), v3);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v11(v6, v3);
  return (v11)(v9, v3);
}

unint64_t sub_8530C()
{
  result = qword_3BD568;
  if (!qword_3BD568)
  {
    sub_718D4(&qword_3BD548, &qword_2E4168);
    sub_85398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD568);
  }

  return result;
}

unint64_t sub_85398()
{
  result = qword_3BD570;
  if (!qword_3BD570)
  {
    sub_718D4(&qword_3BD540, &qword_2E4160);
    sub_72B74(&qword_3BD578, &qword_3BD538, &qword_2E4158, &unk_2FBC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD570);
  }

  return result;
}

uint64_t sub_85450(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BD548, &qword_2E4168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_854E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_855B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_85668(uint64_t a1)
{
  sub_85704();
  if (v1 <= 0x3F)
  {
    sub_2C4E28();
    if (v2 <= 0x3F)
    {
      sub_85768(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_85704()
{
  result = qword_3BD5F8;
  if (!qword_3BD5F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3BD5F8);
  }

  return result;
}

void sub_85768(uint64_t a1)
{
  if (!qword_3BD600)
  {
    sub_2C0C98();
    v1 = sub_2C2558();
    if (!v2)
    {
      atomic_store(v1, &qword_3BD600);
    }
  }
}

unint64_t sub_857C4()
{
  result = qword_3BD638;
  if (!qword_3BD638)
  {
    sub_718D4(&qword_3BD580, &qword_2E4188);
    sub_718D4(&qword_3BD550, &qword_2E4170);
    sub_2C4E28();
    sub_718D4(&qword_3BD548, &qword_2E4168);
    sub_8530C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_85984(&qword_3BD640, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD638);
  }

  return result;
}

uint64_t sub_85914(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD660, &qword_2E4230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_859CC(uint64_t a1)
{
  v2 = type metadata accessor for AssetActionImplementation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_85A38()
{
  result = qword_3BD6C8;
  if (!qword_3BD6C8)
  {
    sub_718D4(&qword_3BD6C0, &unk_2E4310);
    sub_72198();
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD6C8);
  }

  return result;
}

unint64_t sub_85AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD6D0;
  if (!qword_3BD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD6D0);
  }

  return result;
}

uint64_t sub_85B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_85C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PriceTrackingOptInView(uint64_t a1)
{
  result = qword_3BD738;
  if (!qword_3BD738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_85D2C(uint64_t a1)
{
  sub_85DC0();
  if (v1 <= 0x3F)
  {
    sub_85768(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_85DC0()
{
  result = qword_3BD748;
  if (!qword_3BD748)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_3BD748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeriesRoomType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationContext(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_85F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BD780;
  if (!qword_3BD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD780);
  }

  return result;
}

uint64_t sub_85FC4@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD530, &qword_2E4150);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PriceTrackingOptInView(0);
  sub_6932C(v1 + *(v10 + 28), v9, &qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_86200@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_2BFDD8();
  __chkstk_darwin(v2 - 8);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v27 - v5;
  v6 = type metadata accessor for PriceTrackingOptInView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_2C4BF8();
  __chkstk_darwin(v9 - 8);
  v10 = sub_2C4C28();
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v29 = &v27 - v13;
  __chkstk_darwin(v14);
  v27 = &v27 - v15;
  __chkstk_darwin(v16);
  v28 = &v27 - v17;
  sub_2C4BE8();
  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_2C4C18();
  sub_2C4BE8();
  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_2C4C18();
  sub_8665C();
  sub_2BFDC8();

  sub_867F4();
  sub_2BFDC8();

  sub_88140(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_881A8(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v18);
  v22 = *(v34 + 16);
  v23 = v28;
  v22(v29, v28, v10);
  v24 = v27;
  v22(v30, v27, v10);
  sub_6620C(&qword_3BD788, &qword_2E4488);
  sub_88494();
  sub_2C1098();
  v25 = *(v34 + 8);
  v25(v24, v10);
  return (v25)(v23, v10);
}

uint64_t sub_8665C()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_867F4()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_8690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C0C68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0C98();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = sub_2C3328();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v12 = sub_6620C(&qword_3BD7A8, &qword_2E4498);
  sub_86B20(a1, a2 + *(v12 + 44));
  v13 = sub_2C3778();
  sub_85FC4(v11);
  sub_2C0C78();
  (*(v9 + 8))(v11, v8);
  sub_2C0C58();
  (*(v5 + 8))(v7, v4);
  sub_2C24D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_6620C(&qword_3BD788, &qword_2E4488);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_86B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v112 = a2;
  v2 = sub_6620C(&qword_3BD6A0, &qword_2E44A0);
  v3 = *(v2 - 8);
  v110 = v2;
  v111 = v3;
  __chkstk_darwin(v2);
  v109 = &v93 - v4;
  v5 = sub_6620C(&qword_3BD6A8, &unk_2E4290);
  v6 = *(v5 - 8);
  v107 = v5;
  v108 = v6;
  __chkstk_darwin(v5);
  v105 = &v93 - v7;
  v8 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v8 - 8);
  v102 = &v93 - v9;
  v10 = sub_6620C(&qword_3BD7B0, &qword_2E44A8);
  v11 = *(v10 - 8);
  v103 = v10;
  v104 = v11;
  __chkstk_darwin(v10);
  v101 = &v93 - v12;
  v106 = sub_6620C(&qword_3BD7B8, &qword_2E44B0) - 8;
  __chkstk_darwin(v106);
  v116 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v93 - v15;
  v16 = sub_2C0C68();
  v98 = *(v16 - 8);
  v99 = v16;
  __chkstk_darwin(v16);
  v97 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2C0C98();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v96 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2C29C8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6620C(&qword_3BD7C0, &qword_2E44B8);
  __chkstk_darwin(v94);
  v24 = &v93 - v23;
  v95 = sub_6620C(&qword_3BD7C8, &qword_2E44C0) - 8;
  __chkstk_darwin(v95);
  v115 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v113 = &v93 - v27;
  v28 = sub_2C42B8();
  v29 = sub_2C37C8();
  KeyPath = swift_getKeyPath();
  *&v131 = v28;
  *(&v131 + 1) = KeyPath;
  *&v132 = v29;
  (*(v20 + 104))(v22, enum case for DynamicTypeSize.medium(_:), v19);
  sub_6620C(&qword_3BD7D0, &unk_2E6640);
  sub_88554();
  sub_2C3F38();
  (*(v20 + 8))(v22, v19);

  v31 = &v24[*(sub_6620C(&qword_3BD7E0, &qword_2E44F8) + 36)];
  v32 = *(sub_6620C(&qword_3BD7E8, &qword_2E4500) + 28);
  v33 = enum case for Image.Scale.large(_:);
  v34 = sub_2C42D8();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *&v24[*(v94 + 36)] = sub_2C3538();
  sub_88614();
  v35 = v113;
  sub_2C3F88();
  sub_69198(v24, &qword_3BD7C0, &qword_2E44B8);
  sub_2C46A8();
  sub_2C2708();
  v36 = (v35 + *(sub_6620C(&qword_3BD818, &qword_2E4540) + 36));
  v37 = v35;
  v38 = v120;
  *v36 = v119;
  v36[1] = v38;
  v36[2] = v121;
  LOBYTE(v35) = sub_2C3778();
  v39 = v96;
  sub_85FC4(v96);
  v40 = v97;
  sub_2C0C78();
  v41 = *(v117 + 8);
  v117 += 8;
  v94 = v41;
  v41(v39, v114);
  sub_2C0BF8();
  (*(v98 + 8))(v40, v99);
  sub_2C24D8();
  v42 = v37 + *(v95 + 44);
  *v42 = v35;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  v47 = sub_877A4();
  v49 = v48;
  v50 = swift_getKeyPath();
  v51 = sub_2C3818();
  v52 = swift_getKeyPath();
  LOBYTE(v127) = 0;
  *&v131 = v47;
  *(&v131 + 1) = v49;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = *v123;
  DWORD1(v132) = *&v123[3];
  *(&v132 + 1) = _swiftEmptyArrayStorage;
  *&v133 = v50;
  BYTE8(v133) = 1;
  *(&v133 + 9) = *v122;
  HIDWORD(v133) = *&v122[3];
  *&v134 = v52;
  *(&v134 + 1) = v51;
  v53 = v102;
  sub_2C3828();
  v54 = sub_6620C(&qword_3BD6C0, &unk_2E4310);
  v55 = sub_85A38();
  v56 = v101;
  sub_2C3E08();
  sub_69198(v53, &qword_3BCB28, &qword_2E3B60);
  v124[0] = v131;
  v124[1] = v132;
  v124[2] = v133;
  v124[3] = v134;
  sub_69198(v124, &qword_3BD6C0, &unk_2E4310);
  *&v131 = v54;
  *(&v131 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v57 = v118;
  v58 = v103;
  sub_2C4058();
  (*(v104 + 8))(v56, v58);
  *(v57 + *(sub_6620C(&qword_3BD820, &qword_2E4590) + 36)) = 256;
  LOBYTE(v54) = sub_2C3778();
  sub_85FC4(v39);
  v59 = v105;
  v60 = v114;
  sub_2C1768();
  (v94)(v39, v60);
  swift_getKeyPath();
  v61 = v109;
  v62 = v107;
  sub_2C0BC8();

  (*(v108 + 8))(v59, v62);
  v63 = swift_getKeyPath();
  sub_85AF8(v63, v64, v65);
  v66 = v110;
  sub_2C0BD8();

  (*(v111 + 8))(v61, v66);
  sub_2C24D8();
  v67 = v118;
  v68 = v118 + *(v106 + 44);
  *v68 = v54;
  *(v68 + 8) = v69;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v72;
  *(v68 + 40) = 0;
  v73 = sub_878C0();
  v111 = v74;
  v114 = swift_getKeyPath();
  v117 = sub_2C37F8();
  v75 = swift_getKeyPath();
  LOBYTE(v131) = 0;
  LODWORD(v110) = sub_2C3538();
  v76 = v113;
  v77 = v115;
  sub_6932C(v113, v115, &qword_3BD7C8, &qword_2E44C0);
  v78 = v67;
  v79 = v116;
  sub_6932C(v78, v116, &qword_3BD7B8, &qword_2E44B0);
  v80 = v77;
  v81 = v112;
  sub_6932C(v80, v112, &qword_3BD7C8, &qword_2E44C0);
  v82 = sub_6620C(&qword_3BD828, &qword_2E45F8);
  sub_6932C(v79, v81 + *(v82 + 48), &qword_3BD7B8, &qword_2E44B0);
  v83 = v81 + *(v82 + 64);
  v84 = v111;
  *&v127 = v73;
  *(&v127 + 1) = v111;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = *v126;
  DWORD1(v128) = *&v126[3];
  v85 = v114;
  *(&v128 + 1) = _swiftEmptyArrayStorage;
  *&v129 = v114;
  BYTE8(v129) = 1;
  *(&v129 + 9) = *v125;
  HIDWORD(v129) = *&v125[3];
  v86 = v75;
  *v130 = v75;
  v87 = v117;
  *&v130[8] = v117;
  LODWORD(v82) = v110;
  *&v130[16] = v110;
  *&v130[20] = 256;
  v88 = v127;
  v89 = v128;
  v90 = v129;
  v91 = *v130;
  *(v83 + 62) = *&v130[14];
  *(v83 + 32) = v90;
  *(v83 + 48) = v91;
  *v83 = v88;
  *(v83 + 16) = v89;
  sub_6932C(&v127, &v131, &qword_3BD830, &unk_2E4600);
  sub_69198(v118, &qword_3BD7B8, &qword_2E44B0);
  sub_69198(v76, &qword_3BD7C8, &qword_2E44C0);
  *&v131 = v73;
  *(&v131 + 1) = v84;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = *v126;
  DWORD1(v132) = *&v126[3];
  *(&v132 + 1) = _swiftEmptyArrayStorage;
  *&v133 = v85;
  BYTE8(v133) = 1;
  *(&v133 + 9) = *v125;
  HIDWORD(v133) = *&v125[3];
  *&v134 = v86;
  *(&v134 + 1) = v87;
  v135 = v82;
  v136 = 256;
  sub_69198(&v131, &qword_3BD830, &unk_2E4600);
  sub_69198(v116, &qword_3BD7B8, &qword_2E44B0);
  return sub_69198(v115, &qword_3BD7C8, &qword_2E44C0);
}

uint64_t sub_877A4()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_878C0()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_879DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_2C5C18();
  *(v5 + 24) = sub_2C5C08();
  v7 = sub_2C5BB8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_87A78, v7, v6);
}

uint64_t sub_87A78()
{
  v3 = (*(*(v0 + 16) + 8) + **(*(v0 + 16) + 8));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_87B64;

  return v3();
}

uint64_t sub_87B64()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_87C84, v3, v2);
}

uint64_t sub_87C84()
{
  if (*(v0 + 64) == 1)
  {
    v4 = (*(*(v0 + 16) + 24) + **(*(v0 + 16) + 24));
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_87DB4;

    return v4();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_87DB4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_87ED4, v3, v2);
}

uint64_t sub_87ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87F34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v22 = a4;
  v6 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PriceTrackingOptInView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  sub_88140(a1, &v21 - v14);
  v16 = sub_2C5C58();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_88140(v15, v12);
  sub_2C5C18();
  v17 = sub_2C5C08();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_881A8(v12, v19 + v18);
  *(v19 + v18 + v11) = a3;
  sub_249B98(0, 0, v8, v22, v19);

  return sub_888EC(v15);
}

uint64_t sub_88140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceTrackingOptInView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_881A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceTrackingOptInView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_88300()
{
  v1 = (type metadata accessor for PriceTrackingOptInView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_88424@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PriceTrackingOptInView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_8690C(v4, a1);
}

unint64_t sub_88494()
{
  result = qword_3BD790;
  if (!qword_3BD790)
  {
    sub_718D4(&qword_3BD788, &qword_2E4488);
    sub_72B74(&qword_3BD798, &qword_3BD7A0, &qword_2E4490, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD790);
  }

  return result;
}

unint64_t sub_88554()
{
  result = qword_3BD7D8;
  if (!qword_3BD7D8)
  {
    sub_718D4(&qword_3BD7D0, &unk_2E6640);
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7D8);
  }

  return result;
}

unint64_t sub_88614()
{
  result = qword_3BD7F0;
  if (!qword_3BD7F0)
  {
    sub_718D4(&qword_3BD7C0, &qword_2E44B8);
    sub_886CC();
    sub_72B74(&qword_3BD808, &qword_3BD810, &qword_2E4538, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7F0);
  }

  return result;
}

unint64_t sub_886CC()
{
  result = qword_3BD7F8;
  if (!qword_3BD7F8)
  {
    sub_718D4(&qword_3BD7E0, &qword_2E44F8);
    sub_718D4(&qword_3BD7D0, &unk_2E6640);
    sub_88554();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BD800, &qword_3BD7E8, &qword_2E4500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD7F8);
  }

  return result;
}

uint64_t sub_887D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PriceTrackingOptInView(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_879DC(a1, v5, v6, v7, v8);
}

uint64_t sub_888EC(uint64_t a1)
{
  v2 = type metadata accessor for PriceTrackingOptInView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_88948()
{
  v1 = (type metadata accessor for PriceTrackingOptInView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[9];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_88A78(uint64_t a1)
{
  v4 = *(type metadata accessor for PriceTrackingOptInView(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_879DC(a1, v5, v6, v7, v8);
}

id JetActionHandler.__allocating_init(objectGraph:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t UIViewController.jetActionHandlerInContext.getter()
{
  if ([v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIJetActionHandling])
  {
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    sub_6620C(&qword_3BD1D0, &qword_2E3F88);
    if (swift_dynamicCast())
    {
      return v16;
    }
  }

  else
  {
    sub_7A844(v19);
  }

  v2 = v0;
  v3 = [v2 description];
  v4 = sub_2C58C8();
  v6 = v5;

  if (qword_3BB7B8 != -1)
  {
    swift_once();
  }

  v7 = sub_2C00B8();
  sub_57AD8(v7, qword_3C2FD8);

  v8 = sub_2C0098();
  v9 = sub_2C5DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v19[0] = v11;
    *v10 = 136315138;
    v12 = sub_5CCF4(v4, v6, v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_0, v8, v9, "jetActionHandler not found on %s", v10, 0xCu);
    sub_68CD0(v11);
  }

  else
  {
  }

  sub_8A7C4(v13, v14, v15);
  swift_allocError();
  return swift_willThrow();
}

uint64_t UIViewController.objectGraphInContext.getter()
{
  result = UIViewController.jetActionHandlerInContext.getter();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_88FA0()
{
  result = UIViewController.jetActionHandlerInContext.getter();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

Swift::Int Shelf.ValidationError.hashValue.getter()
{
  sub_2C6738();
  sub_2C6748(0);
  return sub_2C6778();
}

Swift::Int sub_89078(uint64_t a1)
{
  sub_2C6738();
  sub_2C6748(0);
  return sub_2C6778();
}

id JetActionHandler.init(objectGraph:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t JetActionHandler.perform(rawActionModel:parentTracker:shouldReportFigaro:sourceViewController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 417) = a3;
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  v6 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  *(v5 + 168) = v6;
  *(v5 + 176) = *(v6 - 8);
  *(v5 + 184) = swift_task_alloc();
  v7 = sub_2C4C08();
  *(v5 + 192) = v7;
  *(v5 + 200) = *(v7 - 8);
  *(v5 + 208) = swift_task_alloc();
  v8 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  *(v5 + 216) = v8;
  *(v5 + 224) = *(v8 - 8);
  *(v5 + 232) = swift_task_alloc();
  v9 = sub_2C4B78();
  *(v5 + 240) = v9;
  *(v5 + 248) = *(v9 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v10 = sub_2C1398();
  *(v5 + 272) = v10;
  *(v5 + 280) = *(v10 - 8);
  *(v5 + 288) = swift_task_alloc();
  v11 = sub_2C49F8();
  *(v5 + 296) = v11;
  *(v5 + 304) = *(v11 - 8);
  *(v5 + 312) = swift_task_alloc();
  sub_2C5C18();
  *(v5 + 320) = sub_2C5C08();
  v13 = sub_2C5BB8();
  *(v5 + 328) = v13;
  *(v5 + 336) = v12;

  return _swift_task_switch(sub_89414, v13, v12);
}

uint64_t sub_89414()
{
  v1 = v0[20];
  sub_6620C(&qword_3BD860, &qword_2EB540);

  sub_2C49E8();
  v0[43] = *(v1 + OBJC_IVAR____TtC11BookStoreUI16JetActionHandler_objectGraph);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_89508;
  v3 = v0[33];
  v4 = v0[30];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_89508()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_89EEC;
  }

  else
  {
    v5 = sub_89644;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_89644()
{
  v1 = *(v0 + 360);
  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
  sub_2C5808();
  sub_8A818();
  sub_2C49B8();
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);

    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v2, v3);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    v21 = *(v0 + 417);
    v13 = *(v0 + 144);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));

    sub_2C1388();
    (*(v10 + 8))(v11, v12);
    v14 = type metadata accessor for NavigationProvider();
    v15 = swift_allocObject();
    *(v0 + 368) = v15;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    sub_6620C(&qword_3BC330, &unk_2E3D50);
    sub_2C4968();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2E4110;
    sub_2BF028();
    *(v0 + 120) = v13;
    v17 = v13;
    sub_2C4958();
    sub_6620C(&qword_3BCE30, qword_2E3D60);
    *(v0 + 80) = v14;
    *(v0 + 88) = &protocol witness table for NavigationProvider;
    *(v0 + 56) = v15;

    sub_2C4958();
    *(v0 + 416) = v21;
    sub_2C4958();
    *(v0 + 128) = v16;
    sub_6620C(&unk_3BD220, &qword_2E3FF0);
    sub_8A870();
    *(v0 + 376) = sub_2C4DF8();

    v18 = swift_task_alloc();
    *(v0 + 384) = v18;
    *v18 = v0;
    v18[1] = sub_89A54;
    v19 = *(v0 + 232);
    v20 = *(v0 + 216);

    return BaseObjectGraph.inject<A>(_:)(v19, v20, v20);
  }
}