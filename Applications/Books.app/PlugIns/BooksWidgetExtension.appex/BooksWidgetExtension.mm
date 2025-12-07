uint64_t sub_100001FC4(uint64_t a1, id *a2)
{
  result = sub_1000811F8();
  *a2 = 0;
  return result;
}

uint64_t sub_10000203C(uint64_t a1, id *a2)
{
  v3 = sub_100081208();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000020BC@<X0>(uint64_t *a1@<X8>)
{
  sub_100081218();
  v2 = sub_1000811D8();

  *a1 = v2;
  return result;
}

uint64_t sub_100002100(void *a1, uint64_t *a2)
{
  v2 = sub_100081218();
  v4 = v3;
  if (v2 == sub_100081218() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100081618();
  }

  return v7 & 1;
}

uint64_t sub_10000218C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000811D8();

  *a2 = v3;
  return result;
}

uint64_t sub_1000021D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100081218();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002200(uint64_t a1)
{
  v2 = sub_10000234C(&qword_1000AC970, type metadata accessor for BDSCloudAssetType, &unk_10008580C);
  v3 = sub_10000234C(&qword_1000AC978, type metadata accessor for BDSCloudAssetType, &unk_1000857AC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000234C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000023DC(uint64_t a1)
{
  v2 = sub_10000234C(&qword_1000AC960, type metadata accessor for BDSLibraryContentAssetType, &unk_100085964);
  v3 = sub_10000234C(&qword_1000AC968, type metadata accessor for BDSLibraryContentAssetType, &unk_100085904);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000257C()
{
  sub_100081218();
  v0 = sub_100081318();

  return v0;
}

uint64_t sub_1000025B8(uint64_t a1)
{
  sub_100081218();
  sub_100081298();
}

Swift::Int sub_10000260C(uint64_t a1)
{
  sub_100081218();
  sub_1000816B8();
  sub_100081298();
  v1 = sub_1000816F8();

  return v1;
}

__n128 sub_100002680(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000026B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000026EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100002840(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000289C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SmallWidgetView(uint64_t a1)
{
  result = qword_1000AC9E8;
  if (!qword_1000AC9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000029B0(uint64_t a1)
{
  sub_100002A24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002A24(uint64_t a1)
{
  if (!qword_1000AC9F8)
  {
    sub_1000807B8();
    v1 = sub_1000807C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AC9F8);
    }
  }
}

uint64_t sub_100002A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v35 = sub_1000807B8();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100080B88();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA30, &qword_100085AE0);
  __chkstk_darwin(v9);
  v11 = (&v32 - v10);
  v38 = sub_100002840(&qword_1000ACA38, &qword_100085AE8);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v32 - v12;
  *v11 = sub_100080F48();
  v11[1] = v14;
  v15 = sub_100002840(&qword_1000ACA40, &qword_100085AF0);
  sub_100002FA4(a2, a1, v11 + *(v15 + 44));
  sub_100080B78();
  v40 = a2;
  sub_100080F48();
  sub_100002840(&qword_1000ACA48, &qword_100085AF8);
  sub_100005C98(&qword_1000ACA50, &qword_1000ACA30, &qword_100085AE0, &protocol conformance descriptor for ZStack<A>);
  sub_100005010();
  v36 = v13;
  sub_100080DF8();
  (*(v6 + 8))(v8, v32);
  sub_100005B2C(v11, &qword_1000ACA30, &qword_100085AE0);
  v16 = a2 + *(type metadata accessor for SmallWidgetView(0) + 20);
  v17 = *(v16 + 80);
  v49 = *(v16 + 64);
  v50 = v17;
  v51 = *(v16 + 96);
  v52 = *(v16 + 112);
  v18 = *(v16 + 48);
  v47 = *(v16 + 32);
  v48 = v18;
  if (sub_1000112D4())
  {
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = *(v16 + 80);
    v43 = *(v16 + 64);
    v44 = v22;
    v45 = *(v16 + 96);
    v46 = *(v16 + 112);
    v23 = *(v16 + 48);
    v41 = *(v16 + 32);
    v42 = v23;
    v24 = *(v16 + 120);
    v25 = *(v16 + 128);
    if (sub_1000112D4() & 1) != 0 && v25 && (__PAIR128__(v25, v24) == v43 || (sub_100081618()))
    {
      (*(v20 + 104))(v19, enum case for ColorScheme.light(_:), v21);
    }

    else
    {
      sub_100005180(v19);
    }
  }

  else
  {
    v20 = v34;
    v19 = v33;
    v21 = v35;
    (*(v34 + 104))(v33, enum case for ColorScheme.light(_:), v35);
  }

  KeyPath = swift_getKeyPath();
  v27 = sub_100002840(&qword_1000ACA78, &qword_100085B38);
  v28 = v39;
  v29 = (v39 + *(v27 + 36));
  v30 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v20 + 32))(v29 + *(v30 + 28), v19, v21);
  *v29 = KeyPath;
  return (*(v37 + 32))(v28, v36, v38);
}

uint64_t sub_100002FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v140 = a3;
  v4 = type metadata accessor for LogoView(0);
  v5 = __chkstk_darwin(v4 - 8);
  v141 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v139 = &v116 - v7;
  v118 = sub_100002840(&qword_1000ACAA0, &qword_100085B90);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v9 = &v116 - v8;
  v138 = sub_100002840(&qword_1000ACAA8, &qword_100085B98);
  __chkstk_darwin(v138);
  v117 = &v116 - v10;
  v11 = sub_100080A58();
  v125 = *(v11 - 8);
  v126 = v11;
  __chkstk_darwin(v11);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100080B68();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin(v14);
  v127 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SmallEmptyStateView(0);
  __chkstk_darwin(v16);
  v18 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100002840(&qword_1000ACAB0, &qword_100085BA0);
  v121 = *(v19 - 8);
  v122 = v19;
  __chkstk_darwin(v19);
  v119 = &v116 - v20;
  v21 = sub_100002840(&qword_1000ACAB8, &qword_100085BA8);
  v22 = __chkstk_darwin(v21);
  v120 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v123 = &v116 - v25;
  __chkstk_darwin(v24);
  v124 = &v116 - v26;
  v134 = sub_100002840(&qword_1000ACAC0, &qword_100085BB0);
  __chkstk_darwin(v134);
  v135 = &v116 - v27;
  v132 = sub_100002840(&qword_1000ACAC8, &qword_100085BB8);
  __chkstk_darwin(v132);
  v131 = &v116 - v28;
  v133 = sub_100002840(&qword_1000ACAD0, &qword_100085BC0);
  __chkstk_darwin(v133);
  v30 = &v116 - v29;
  v31 = type metadata accessor for SmallReadingGoalView(0);
  __chkstk_darwin(v31);
  v33 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100002840(&qword_1000ACAD8, &qword_100085BC8);
  v35 = __chkstk_darwin(v34 - 8);
  v137 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v136 = &v116 - v37;
  v38 = (a1 + *(type metadata accessor for SmallWidgetView(0) + 20));
  if (*v38 > 0.0 || *(v38 + 3) >= 1)
  {
    v75 = v38[7];
    v171 = v38[6];
    v172 = v75;
    *&v173 = *(v38 + 16);
    v76 = v38[3];
    v167 = v38[2];
    v168 = v76;
    v77 = v38[5];
    v169 = v38[4];
    v170 = v77;
    v78 = v38[1];
    v165 = *v38;
    v166 = v78;
    v79 = *(v31 + 24);
    v80 = sub_100080808();
    (*(*(v80 - 8) + 16))(&v33[v79], v130, v80);
    v81 = v172;
    *(v33 + 6) = v171;
    *(v33 + 7) = v81;
    *(v33 + 16) = v173;
    v82 = v168;
    *(v33 + 2) = v167;
    *(v33 + 3) = v82;
    v83 = v170;
    *(v33 + 4) = v169;
    *(v33 + 5) = v83;
    v84 = v166;
    *v33 = v165;
    *(v33 + 1) = v84;
    v85 = &v33[*(v31 + 20)];
    v130 = v21;
    v86 = enum case for BlendMode.plusLighter(_:);
    v87 = sub_100080F68();
    (*(*(v87 - 8) + 104))(v85, v86, v87);
    v88 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
    *&v85[v88[5]] = 2;
    *&v85[v88[6]] = 0x4010000000000000;
    *&v85[v88[7]] = 0x4028000000000000;
    *&v85[v88[8]] = 0x403C000000000000;
    v89 = v88[9];
    v90 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    (*(*(v90 - 8) + 56))(&v85[v89], 1, 1, v90);
    v91 = v88[10];
    sub_1000056CC(&v165, &v146);
    *&v85[v91] = sub_100080CB8();
    v92 = v88[11];
    *&v85[v92] = sub_100080E48();
    v93 = v131;
    v94 = v30;
    v95 = v88[12];
    sub_100080E48();
    v96 = sub_100080E58();

    *&v85[v95] = v96;
    *&v85[v88[13]] = 0x4008000000000000;
    *&v85[v88[14]] = 0x4028000000000000;
    *&v85[v88[15]] = 0x404E000000000000;
    *&v85[v88[16]] = 0x4036000000000000;
    *&v85[v88[17]] = xmmword_100085A30;
    sub_100005B8C(v33, v93, type metadata accessor for SmallReadingGoalView);
    swift_storeEnumTagMultiPayload();
    sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView, &unk_100087D38);
    sub_1000058E0();
    sub_100080AD8();
    sub_1000055FC(v94, v135, &qword_1000ACAD0, &qword_100085BC0);
    swift_storeEnumTagMultiPayload();
    sub_100005824();
    sub_100005A44();
    v71 = v136;
    sub_100080AD8();
    sub_100005B2C(v94, &qword_1000ACAD0, &qword_100085BC0);
    sub_100005BF4(v33, type metadata accessor for SmallReadingGoalView);
  }

  else
  {
    if (*(v38 + 8) == 0xD000000000000023 && 0x8000000100082090 == *(v38 + 9) || (sub_100081618() & 1) != 0)
    {
      v39 = v38[7];
      v171 = v38[6];
      v172 = v39;
      *&v173 = *(v38 + 16);
      v40 = v38[3];
      v167 = v38[2];
      v168 = v40;
      v41 = v38[5];
      v169 = v38[4];
      v170 = v41;
      v42 = v38[1];
      v165 = *v38;
      v166 = v42;
      *v18 = swift_getKeyPath();
      sub_100002840(&qword_1000ACA98, &qword_1000864C0);
      swift_storeEnumTagMultiPayload();
      v43 = v18 + *(v16 + 20);
      v44 = v172;
      *(v43 + 6) = v171;
      *(v43 + 7) = v44;
      *(v43 + 16) = v173;
      v45 = v168;
      *(v43 + 2) = v167;
      *(v43 + 3) = v45;
      v46 = v170;
      *(v43 + 4) = v169;
      *(v43 + 5) = v46;
      v47 = v166;
      *v43 = v165;
      *(v43 + 1) = v47;
      v48 = v18 + *(v16 + 24);
      v118 = v31;
      v49 = enum case for ColorScheme.dark(_:);
      v50 = sub_1000807B8();
      (*(*(v50 - 8) + 104))(v48, v49, v50);
      v51 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
      v52 = v51[5];
      v53 = enum case for BlendMode.plusLighter(_:);
      v54 = sub_100080F68();
      (*(*(v54 - 8) + 104))(&v48[v52], v53, v54);
      *&v48[v51[6]] = 0x3FF0000000000000;
      v55 = v51[7];
      sub_1000056CC(&v165, &v146);
      *&v48[v55] = sub_100080CC8();
      v56 = v51[8];
      sub_100080C88();
      *&v48[v56] = v57;
      v58 = v51[9];
      *&v48[v58] = sub_100080B18();
      v117 = v30;
      v59 = v13;
      v130 = v21;
      v60 = v51[10];
      sub_100080E48();
      v61 = sub_100080E58();

      *&v48[v60] = v61;
      *&v48[v51[11]] = 0x4018000000000000;
      *&v48[v51[12]] = 0x4014000000000000;
      v62 = v127;
      sub_100080B48();
      v63 = sub_1000059FC(&qword_1000ACB08, type metadata accessor for SmallEmptyStateView, &unk_100087774);
      v64 = v119;
      sub_100080E08();
      (*(v128 + 8))(v62, v129);
      sub_100005BF4(v18, type metadata accessor for SmallEmptyStateView);
      *&v146 = sub_1000040B4();
      *(&v146 + 1) = v65;
      *&v156 = v16;
      *(&v156 + 1) = v63;
      swift_getOpaqueTypeConformance2();
      sub_1000057D0();
      v66 = v120;
      v67 = v122;
      sub_100080DD8();

      (*(v121 + 8))(v64, v67);
      sub_100080A48();
      v68 = v123;
      sub_100080898();
      (*(v125 + 8))(v59, v126);
      sub_100005B2C(v66, &qword_1000ACAB8, &qword_100085BA8);
      sub_100004334();
      v69 = v124;
      sub_1000808A8();

      sub_100005B2C(v68, &qword_1000ACAB8, &qword_100085BA8);
      sub_1000055FC(v69, v131, &qword_1000ACAB8, &qword_100085BA8);
      swift_storeEnumTagMultiPayload();
      sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView, &unk_100087D38);
      sub_1000058E0();
      v70 = v117;
      sub_100080AD8();
      sub_1000055FC(v70, v135, &qword_1000ACAD0, &qword_100085BC0);
      swift_storeEnumTagMultiPayload();
      sub_100005824();
      sub_100005A44();
      v71 = v136;
      sub_100080AD8();
      sub_100005B2C(v70, &qword_1000ACAD0, &qword_100085BC0);
      v72 = v69;
      v73 = &qword_1000ACAB8;
      v74 = &qword_100085BA8;
    }

    else
    {
      v97 = v38[7];
      v162 = v38[6];
      v163 = v97;
      v164 = *(v38 + 16);
      v98 = v38[3];
      v158 = v38[2];
      v159 = v98;
      v99 = v38[5];
      v160 = v38[4];
      v161 = v99;
      v100 = v38[1];
      v156 = *v38;
      v157 = v100;
      sub_1000056CC(&v156, &v165);
      v101 = sub_100080CB8();
      v152 = v162;
      v153 = v163;
      *&v154[0] = v164;
      v148 = v158;
      v149 = v159;
      v150 = v160;
      v151 = v161;
      v146 = v156;
      v147 = v157;
      *(v154 + 8) = xmmword_100085A20;
      *(&v154[1] + 1) = 0x4020000000000000;
      *&v155 = v101;
      *(&v155 + 1) = 0x4036000000000000;
      v102 = v127;
      sub_100080B48();
      v103 = sub_100005728();
      sub_100080E08();
      (*(v128 + 8))(v102, v129);
      v173 = v154[0];
      v174 = v154[1];
      v175 = v155;
      v169 = v150;
      v170 = v151;
      v171 = v152;
      v172 = v153;
      v165 = v146;
      v166 = v147;
      v167 = v148;
      v168 = v149;
      sub_10000577C(&v165);
      v104 = v38[5];
      v148 = v38[4];
      v149 = v104;
      v150 = v38[6];
      LOBYTE(v151) = *(v38 + 112);
      v105 = v38[3];
      v146 = v38[2];
      v147 = v105;
      v144 = sub_100056778(0);
      v145 = v106;
      v142 = &type metadata for SmallBookProgressView;
      v143 = v103;
      swift_getOpaqueTypeConformance2();
      sub_1000057D0();
      v108 = v117;
      v107 = v118;
      sub_100080DD8();

      (*(v116 + 8))(v9, v107);
      sub_1000055FC(v108, v135, &qword_1000ACAA8, &qword_100085B98);
      swift_storeEnumTagMultiPayload();
      sub_100005824();
      sub_100005A44();
      v71 = v136;
      sub_100080AD8();
      v72 = v108;
      v73 = &qword_1000ACAA8;
      v74 = &qword_100085B98;
    }

    sub_100005B2C(v72, v73, v74);
  }

  v109 = sub_100080308();
  v110 = v139;
  (*(*(v109 - 8) + 56))(v139, 1, 1, v109);
  v111 = v137;
  sub_1000055FC(v71, v137, &qword_1000ACAD8, &qword_100085BC8);
  v112 = v141;
  sub_100005B8C(v110, v141, type metadata accessor for LogoView);
  v113 = v140;
  sub_1000055FC(v111, v140, &qword_1000ACAD8, &qword_100085BC8);
  v114 = sub_100002840(&qword_1000ACB20, &unk_100085BD0);
  sub_100005B8C(v112, v113 + *(v114 + 48), type metadata accessor for LogoView);
  sub_100005BF4(v110, type metadata accessor for LogoView);
  sub_100005B2C(v71, &qword_1000ACAD8, &qword_100085BC8);
  sub_100005BF4(v112, type metadata accessor for LogoView);
  return sub_100005B2C(v111, &qword_1000ACAD8, &qword_100085BC8);
}

uint64_t sub_1000040B4()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v6, v0);
  v16 = sub_100081268();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

void *sub_100004334()
{
  v38 = sub_100080478();
  v0 = *(v38 - 8);
  v1 = __chkstk_darwin(v38);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v30 - v4;
  v6 = sub_1000811C8();
  v34 = v6;
  v39 = *(v6 - 8);
  v7 = v39;
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100085A40;
  sub_100081158();
  sub_100080448();
  v37 = *(v7 + 16);
  v37(v10, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = ObjCClassFromMetadata;
  v35 = objc_opt_self();
  v14 = [v35 bundleForClass:ObjCClassFromMetadata];
  v32 = *(v0 + 16);
  v30[0] = v3;
  v15 = v38;
  v32(v3, v5, v38);
  v16 = sub_100081268();
  v18 = v17;
  v19 = *(v0 + 8);
  v30[1] = v0 + 8;
  v31 = v19;
  v19(v5, v15);
  v20 = *(v39 + 8);
  v39 += 8;
  v21 = v34;
  v20(v12, v34);
  v22 = v33;
  *(v33 + 32) = v16;
  v22[5] = v18;
  sub_100081158();
  sub_100080448();
  v23 = v21;
  v37(v10, v12, v21);
  v24 = [v35 bundleForClass:v36];
  v25 = v38;
  v32(v30[0], v5, v38);
  v26 = sub_100081268();
  v28 = v27;
  v31(v5, v25);
  v20(v12, v23);
  result = v22;
  v22[6] = v26;
  v22[7] = v28;
  return result;
}

uint64_t sub_1000046FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = sub_100002840(&qword_1000ACA88, &qword_100085B48);
  __chkstk_darwin(v23);
  v4 = &v22 - v3;
  v5 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v24 = sub_100002840(&qword_1000ACA68, &qword_100085B00);
  __chkstk_darwin(v24);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BackgroundView(0);
  __chkstk_darwin(v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1 + *(type metadata accessor for SmallWidgetView(0) + 20);
  v14 = *(v13 + 80);
  v34 = *(v13 + 64);
  v35 = v14;
  v36 = *(v13 + 96);
  v37 = *(v13 + 112);
  v15 = *(v13 + 48);
  v32 = *(v13 + 32);
  v33 = v15;
  v16 = *(v13 + 120);
  v17 = *(v13 + 128);
  if (sub_1000112D4() & 1) != 0 && v17 && (__PAIR128__(v17, v16) == v34 || (sub_100081618()))
  {
    if (qword_1000AC648 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = *(v13 + 80);
  v28 = *(v13 + 64);
  v29 = v18;
  v30 = *(v13 + 96);
  v31 = *(v13 + 112);
  v19 = *(v13 + 48);
  v26 = *(v13 + 32);
  v27 = v19;
  if ((sub_1000112D4() & 1) == 0)
  {
    v17 = *(&v28 + 1);
    v16 = v28;
    if (qword_1000AC648 == -1)
    {
LABEL_10:
      sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v20 = sub_10003ABAC(v16, v17, 1);
      *v12 = swift_getKeyPath();
      sub_100002840(&qword_1000ACA98, &qword_1000864C0);
      swift_storeEnumTagMultiPayload();
      *(v12 + *(v10 + 20)) = v20;
      sub_100005B8C(v12, v7, type metadata accessor for BackgroundView);
      swift_storeEnumTagMultiPayload();
      sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
      sub_100080AD8();
      sub_1000055FC(v9, v4, &qword_1000ACA68, &qword_100085B00);
      swift_storeEnumTagMultiPayload();
      sub_1000050CC();
      sub_100080AD8();
      sub_100005664(v9);
      return sub_100005BF4(v12, type metadata accessor for BackgroundView);
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  *v12 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v10 + 20)) = 0;
  sub_100005B8C(v12, v4, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_1000050CC();
  sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
  sub_100080AD8();
  return sub_100005BF4(v12, type metadata accessor for BackgroundView);
}

uint64_t sub_100004C90@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100005B8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100004EDC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100004F40;
  a2[1] = v7;
  return result;
}

uint64_t sub_100004D90()
{
  v1 = type metadata accessor for SmallWidgetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000807B8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100004EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SmallWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100002A98(a1, v6, a2);
}

uint64_t sub_100004FC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005010()
{
  result = qword_1000ACA58;
  if (!qword_1000ACA58)
  {
    sub_100004FC8(&qword_1000ACA48, &qword_100085AF8);
    sub_1000050CC();
    sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA58);
  }

  return result;
}

unint64_t sub_1000050CC()
{
  result = qword_1000ACA60;
  if (!qword_1000ACA60)
  {
    sub_100004FC8(&qword_1000ACA68, &qword_100085B00);
    sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA60);
  }

  return result;
}

uint64_t sub_100005180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000807B8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100005444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void *sub_100005554(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002840(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005664(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA68, &qword_100085B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005728()
{
  result = qword_1000ACAE0;
  if (!qword_1000ACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAE0);
  }

  return result;
}

unint64_t sub_1000057D0()
{
  result = qword_1000ACAE8;
  if (!qword_1000ACAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAE8);
  }

  return result;
}

unint64_t sub_100005824()
{
  result = qword_1000ACAF0;
  if (!qword_1000ACAF0)
  {
    sub_100004FC8(&qword_1000ACAD0, &qword_100085BC0);
    sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView, &unk_100087D38);
    sub_1000058E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAF0);
  }

  return result;
}

unint64_t sub_1000058E0()
{
  result = qword_1000ACB00;
  if (!qword_1000ACB00)
  {
    sub_100004FC8(&qword_1000ACAB8, &qword_100085BA8);
    type metadata accessor for SmallEmptyStateView(255);
    sub_1000059FC(&qword_1000ACB08, type metadata accessor for SmallEmptyStateView, &unk_100087774);
    swift_getOpaqueTypeConformance2();
    sub_1000059FC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB00);
  }

  return result;
}

uint64_t sub_1000059FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005A44()
{
  result = qword_1000ACB18;
  if (!qword_1000ACB18)
  {
    sub_100004FC8(&qword_1000ACAA8, &qword_100085B98);
    sub_100005728();
    swift_getOpaqueTypeConformance2();
    sub_1000059FC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB18);
  }

  return result;
}

uint64_t sub_100005B2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002840(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005C98(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005CE8()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000ACB48);
  sub_10000A480(v0, qword_1000ACB48);
  return sub_1000806E8();
}

id sub_100005D68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000803D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100081038();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000810D8();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v10 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_1000803C8();
      sub_100002840(&qword_1000ACD90, "na");
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100085C00;
      v11 = BDSCloudAssetTypeStoreEbook;
      v12 = BDSLibraryContentAssetTypeUnknown;
      v39 = 1;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = 0;
      *(v13 + 56) = 1;
      *(v13 + 64) = 0xD000000000000023;
      *(v13 + 72) = 0x8000000100082090;
      *(v13 + 80) = v11;
      *(v13 + 88) = v12;
      *(v13 + 96) = 0;
      *(v13 + 104) = 0;
      *(v13 + 112) = 0;
      v40 = 0;
      v41 = 0uLL;
      LOBYTE(v42[0]) = 0;
      *(&v42[0] + 1) = 0;
      *&v42[1] = v13;
      BYTE8(v42[1]) = 0;
      v42[2] = 0uLL;
      sub_10000AA80(&v41);
      goto LABEL_5;
    }

    if (v10 == enum case for WidgetFamily.systemLarge(_:))
    {
      sub_1000803C8();
      sub_10003CEA8();
      v21 = sub_100042C1C();
      v23 = v22;
      (*(v3 + 8))(v5, v2);
      sub_100002840(&qword_1000ACD90, "na");
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100085C00;
      v25 = BDSCloudAssetTypeStoreEbook;
      v26 = BDSLibraryContentAssetTypeUnknown;
      v39 = 1;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 32) = 0;
      *(v24 + 56) = 1;
      *(v24 + 64) = 0xD000000000000023;
      *(v24 + 72) = 0x8000000100082090;
      *(v24 + 80) = v25;
      *(v24 + 88) = v26;
      *(v24 + 96) = 0;
      *(v24 + 104) = 0;
      *(v24 + 112) = 0;
      v40 = 0;
      v41 = 0uLL;
      LOBYTE(v42[0]) = 0;
      *(&v42[0] + 1) = 0;
      *&v42[1] = v21;
      *(&v42[1] + 1) = v23;
      *&v42[2] = v24;
      BYTE8(v42[2]) = 0;
      v43 = 0uLL;
      sub_10000AA5C(&v41);
      v54 = v45;
      v55 = v46;
      v56 = v47;
      v50 = v42[1];
      v51 = v42[2];
      v52 = v43;
      v53 = v44;
      v48 = v41;
      v49 = v42[0];
      WidgetReadingHistory.Day.readingTime.getter();
      v27 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
      v28 = v55;
      *(v27 + 96) = v54;
      *(v27 + 112) = v28;
      *(v27 + 128) = v56;
      v29 = v51;
      *(v27 + 32) = v50;
      *(v27 + 48) = v29;
      v30 = v53;
      *(v27 + 64) = v52;
      *(v27 + 80) = v30;
      v31 = v49;
      *v27 = v48;
      *(v27 + 16) = v31;
      v32 = v25;
      return v26;
    }

    if (v10 != enum case for WidgetFamily.accessoryCorner(_:))
    {
      sub_1000803C8();
      sub_10000AA2C(&v48);
      v33 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
      v34 = v55;
      *(v33 + 96) = v54;
      *(v33 + 112) = v34;
      *(v33 + 128) = v56;
      v35 = v51;
      *(v33 + 32) = v50;
      *(v33 + 48) = v35;
      v36 = v53;
      *(v33 + 64) = v52;
      *(v33 + 80) = v36;
      v37 = v49;
      *v33 = v48;
      *(v33 + 16) = v37;
      return (*(v7 + 8))(v9, v6);
    }
  }

  sub_1000803C8();
  v11 = BDSCloudAssetTypeStoreEbook;
  v12 = BDSLibraryContentAssetTypeUnknown;
  v39 = 1;
  v40 = 0;
  v41 = 0uLL;
  LOBYTE(v42[0]) = 0;
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  BYTE8(v42[2]) = 1;
  *&v43 = 0xD000000000000023;
  *(&v43 + 1) = 0x8000000100082090;
  *&v44 = BDSCloudAssetTypeStoreEbook;
  *(&v44 + 1) = BDSLibraryContentAssetTypeUnknown;
  v45 = 0uLL;
  LOWORD(v46) = 0;
  *(&v46 + 1) = 0;
  v47 = 0;
  sub_10000AAA4(&v41);
LABEL_5:
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v50 = v42[1];
  v51 = v42[2];
  v52 = v43;
  v53 = v44;
  v48 = v41;
  v49 = v42[0];
  WidgetReadingHistory.Day.readingTime.getter();
  v14 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
  v15 = v55;
  *(v14 + 96) = v54;
  *(v14 + 112) = v15;
  *(v14 + 128) = v56;
  v16 = v51;
  *(v14 + 32) = v50;
  *(v14 + 48) = v16;
  v17 = v53;
  *(v14 + 64) = v52;
  *(v14 + 80) = v17;
  v18 = v49;
  *v14 = v48;
  *(v14 + 16) = v18;
  v19 = v11;
  return v12;
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v6[26] = type metadata accessor for WidgetEntry(0);
  v6[27] = swift_task_alloc();
  v7 = sub_100081038();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100006378, 0, 0);
}

uint64_t sub_100006378()
{
  type metadata accessor for WidgetDataController();
  inited = swift_initStackObject();
  v0[31] = inited;
  v2 = sub_10005C5EC();
  v0[32] = v2;
  *(inited + 16) = v2;
  v3 = [objc_allocWithZone(BDSReadingHistoryServiceClient) init];
  v0[33] = v3;
  *(inited + 24) = v3;
  sub_10003C4F8();
  sub_1000810D8();
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_100006474;
  v5 = v0[30];

  return sub_10005C784((v0 + 2), v5);
}

uint64_t sub_100006474()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000065CC, 0, 0);
}

uint64_t sub_1000065CC()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  sub_1000803C8();
  v5 = v2 + *(v3 + 20);
  *v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  *(v5 + 48) = *(v0 + 64);
  *(v5 + 64) = v8;
  *(v5 + 16) = v6;
  *(v5 + 32) = v7;
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  *(v5 + 128) = *(v0 + 144);
  *(v5 + 96) = v10;
  *(v5 + 112) = v11;
  *(v5 + 80) = v9;
  v4(v2);
  swift_unknownObjectRelease();

  sub_100009F18(v2, type metadata accessor for WidgetEntry);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000066D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000055FC(a3, v25 - v10, &qword_1000ACD78, &qword_100085E58);
  v12 = sub_1000813E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005B2C(v11, &qword_1000ACD78, &qword_100085E58);
  }

  else
  {
    sub_1000813D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000813A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100081278() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005B2C(a3, &qword_1000ACD78, &qword_100085E58);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005B2C(a3, &qword_1000ACD78, &qword_100085E58);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  sub_1000810C8();
  v6[26] = swift_task_alloc();
  v7 = sub_100002840(&qword_1000ACD80, &qword_100085E88);
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v8 = sub_100080548();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v9 = sub_1000803D8();
  v6[33] = v9;
  v6[34] = *(v9 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v10 = type metadata accessor for WidgetEntry(0);
  v6[39] = v10;
  v6[40] = *(v10 - 8);
  v6[41] = swift_task_alloc();
  v11 = sub_100081038();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();

  return _swift_task_switch(sub_100006C60, 0, 0);
}

uint64_t sub_100006C60()
{
  type metadata accessor for WidgetDataController();
  inited = swift_initStackObject();
  v0[45] = inited;
  v2 = sub_10005C5EC();
  v0[46] = v2;
  *(inited + 16) = v2;
  v3 = [objc_allocWithZone(BDSReadingHistoryServiceClient) init];
  v0[47] = v3;
  *(inited + 24) = v3;
  sub_10003C4F8();
  sub_1000810D8();
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_100006D5C;
  v5 = v0[44];

  return sub_10005C784((v0 + 2), v5);
}

uint64_t sub_100006D5C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100006EB4, 0, 0);
}

uint64_t sub_100006EB4()
{
  v30 = *(v0 + 376);
  v1 = *(v0 + 328);
  v24 = *(v0 + 320);
  v25 = v1;
  v2 = *(v0 + 312);
  v23 = *(v0 + 304);
  v3 = *(v0 + 288);
  v31 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 216);
  v26 = *(v0 + 232);
  v27 = *(v0 + 192);
  sub_1000803C8();
  v10 = v1 + *(v2 + 20);
  *v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 80);
  *(v10 + 48) = *(v0 + 64);
  *(v10 + 64) = v13;
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  v14 = *(v0 + 96);
  v15 = *(v0 + 112);
  v16 = *(v0 + 128);
  *(v10 + 128) = *(v0 + 144);
  *(v10 + 96) = v15;
  *(v10 + 112) = v16;
  *(v10 + 80) = v14;
  sub_100080508();
  sub_1000803C8();
  sub_100080498();
  v17 = *(v4 + 8);
  v17(v5, v7);
  v18 = *(v9 + 8);
  v18(v6, v8);
  sub_100080508();
  sub_100080338();
  v18(v6, v8);
  v17(v3, v7);
  sub_100080358();
  v17(v31, v7);
  sub_100002840(&qword_1000ACD88, &qword_100085E90);
  v19 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100085C00;
  sub_100009E44(v25, v20 + v19, type metadata accessor for WidgetEntry);
  sub_1000810B8();
  sub_100009B0C(&qword_1000ACCF8, type metadata accessor for WidgetEntry, &unk_100085CF8);
  sub_1000810F8();
  v27(v26);
  swift_unknownObjectRelease();

  (*(v28 + 8))(v26, v29);
  v17(v23, v7);
  sub_100009F18(v25, type metadata accessor for WidgetEntry);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100007214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000810E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = sub_1000813E8();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v7 + 32))(v15 + v14, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10000A7F8;
  v16[1] = v12;

  sub_1000066D0(0, 0, v11, &unk_100085EA0, v15);
}

uint64_t sub_100007440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000074F4;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000074F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000075E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000AB6C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t _s20BooksWidgetExtension0B14ReadingHistoryO6StreakV7endDate10Foundation0H0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000803D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100007708@<X0>(uint64_t a1@<X8>)
{
  v76 = type metadata accessor for LargeWidgetView(0);
  __chkstk_darwin(v76);
  v71 = (v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_100002840(&qword_1000ACD00, &qword_100085DE0);
  __chkstk_darwin(v73);
  v75 = v68 - v4;
  v81 = sub_100002840(&qword_1000ACD08, &qword_100085DE8);
  __chkstk_darwin(v81);
  v77 = v68 - v5;
  v74 = type metadata accessor for MediumWidgetView(0);
  __chkstk_darwin(v74);
  v70 = (v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for SmallWidgetView(0);
  __chkstk_darwin(v72);
  v69 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100002840(&qword_1000ACD10, &qword_100085DF0);
  __chkstk_darwin(v8);
  v10 = v68 - v9;
  v78 = sub_100002840(&qword_1000ACD18, &qword_100085DF8);
  __chkstk_darwin(v78);
  v80 = v68 - v11;
  v12 = sub_100002840(&qword_1000ACD20, &qword_100085E00);
  __chkstk_darwin(v12);
  v14 = v68 - v13;
  v79 = sub_100002840(&qword_1000ACD28, &qword_100085E08);
  __chkstk_darwin(v79);
  v16 = v68 - v15;
  v17 = sub_100002840(&qword_1000ACD30, &qword_100085E10);
  __chkstk_darwin(v17);
  v82 = v68 - v18;
  v19 = (v1 + *(type metadata accessor for WidgetEntry(0) + 20));
  v20 = v19[5];
  v21 = v19[7];
  v101 = v19[6];
  v102 = v21;
  v22 = v19[1];
  v23 = v19[3];
  v97 = v19[2];
  v98 = v23;
  v24 = v19[3];
  v25 = v19[5];
  v99 = v19[4];
  v100 = v25;
  v26 = v19[1];
  v95 = *v19;
  v96 = v26;
  v27 = v19[7];
  v110 = v101;
  v111 = v27;
  v106 = v97;
  v107 = v24;
  v108 = v99;
  v109 = v20;
  v103 = *(v19 + 16);
  v112 = *(v19 + 16);
  v104 = v95;
  v105 = v22;
  if (sub_100009B70(&v104) == 1)
  {
    *v10 = 0;
    v10[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_100009B88();
    return sub_100080AD8();
  }

  v68[1] = v17;
  v68[2] = a1;
  v93[6] = v110;
  v93[7] = v111;
  v94 = v112;
  v93[2] = v106;
  v93[3] = v107;
  v93[4] = v108;
  v93[5] = v109;
  v93[0] = v104;
  v93[1] = v105;
  v29 = sub_100009E10(v93);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v32 = sub_100009F08(v93);
      KeyPath = swift_getKeyPath();
      v58 = v70;
      *v70 = KeyPath;
      sub_100002840(&qword_1000ACA28, &qword_1000861E0);
      swift_storeEnumTagMultiPayload();
      v34 = v74;
      v35 = (v58 + *(v74 + 20));
      v36 = v32[1];
      v38 = v32[2];
      v37 = v32[3];
      *v35 = *v32;
      v35[1] = v36;
      v35[2] = v38;
      v35[3] = v37;
      v39 = v58 + *(v34 + 24);
      v90 = v101;
      v91 = v102;
      v92 = v103;
      v84 = v95;
      v85 = v96;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v89 = v100;
      sub_100009EAC(&v84, v83);
      v40 = sub_100080CB8();
      *v39 = 0x4036000000000000;
      *(v39 + 8) = v40;
      *(v39 + 16) = xmmword_100085A30;
      sub_100009E44(v58, v75, type metadata accessor for MediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView, &unk_100087B34);
      sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView, &unk_10008B3D4);
      v41 = v77;
      sub_100080AD8();
      sub_1000055FC(v41, v80, &qword_1000ACD08, &qword_100085DE8);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v42 = v82;
      sub_100080AD8();
      sub_100005B2C(v41, &qword_1000ACD08, &qword_100085DE8);
      sub_1000055FC(v42, v10, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(v42, &qword_1000ACD30, &qword_100085E10);
      v67 = type metadata accessor for MediumWidgetView;
    }

    else
    {
      v56 = sub_100009F08(v93);
      v57 = swift_getKeyPath();
      v58 = v71;
      *v71 = v57;
      sub_100002840(&qword_1000ACA28, &qword_1000861E0);
      swift_storeEnumTagMultiPayload();
      v60 = v75;
      v59 = v76;
      v61 = (v58 + *(v76 + 20));
      *v61 = *v56;
      v62 = v56[1];
      v63 = v56[2];
      v64 = v56[4];
      v61[3] = v56[3];
      v61[4] = v64;
      v61[1] = v62;
      v61[2] = v63;
      *(v58 + *(v59 + 24)) = 0x4030000000000000;
      sub_100009E44(v58, v60, type metadata accessor for LargeWidgetView);
      swift_storeEnumTagMultiPayload();
      v90 = v101;
      v91 = v102;
      v92 = v103;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v89 = v100;
      v84 = v95;
      v85 = v96;
      sub_100009EAC(&v84, v83);
      sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView, &unk_100087B34);
      sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView, &unk_10008B3D4);
      v65 = v77;
      sub_100080AD8();
      sub_1000055FC(v65, v80, &qword_1000ACD08, &qword_100085DE8);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v66 = v82;
      sub_100080AD8();
      sub_100005B2C(v65, &qword_1000ACD08, &qword_100085DE8);
      sub_1000055FC(v66, v10, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(v66, &qword_1000ACD30, &qword_100085E10);
      v67 = type metadata accessor for LargeWidgetView;
    }

    v54 = v67;
    v55 = v58;
  }

  else
  {
    if (!v29)
    {
      v30 = sub_100009F08(v93);
      memmove(v14, v30, 0x88uLL);
      swift_storeEnumTagMultiPayload();
      v90 = v101;
      v91 = v102;
      v92 = v103;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v89 = v100;
      v84 = v95;
      v85 = v96;
      sub_1000055FC(&v95, v83, &qword_1000ACD70, &qword_100085E50);
      sub_100009EAC(&v84, v83);
      sub_100009CD0();
      sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView, ")");
      sub_100080AD8();
      sub_1000055FC(v16, v80, &qword_1000ACD28, &qword_100085E08);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v31 = v82;
      sub_100080AD8();
      sub_100005B2C(v16, &qword_1000ACD28, &qword_100085E08);
      sub_1000055FC(v31, v10, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(&v95, &qword_1000ACD70, &qword_100085E50);
      return sub_100005B2C(v31, &qword_1000ACD30, &qword_100085E10);
    }

    v43 = sub_100009F08(v93);
    v44 = swift_getKeyPath();
    v45 = v69;
    *v69 = v44;
    sub_100002840(&qword_1000ACA28, &qword_1000861E0);
    swift_storeEnumTagMultiPayload();
    v46 = v45 + *(v72 + 20);
    *v46 = *v43;
    v47 = *(v43 + 16);
    v48 = *(v43 + 32);
    v49 = *(v43 + 64);
    *(v46 + 48) = *(v43 + 48);
    *(v46 + 64) = v49;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    v50 = *(v43 + 80);
    v51 = *(v43 + 96);
    v52 = *(v43 + 112);
    *(v46 + 128) = *(v43 + 128);
    *(v46 + 96) = v51;
    *(v46 + 112) = v52;
    *(v46 + 80) = v50;
    sub_100009E44(v45, v14, type metadata accessor for SmallWidgetView);
    swift_storeEnumTagMultiPayload();
    v90 = v101;
    v91 = v102;
    v92 = v103;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    v89 = v100;
    v84 = v95;
    v85 = v96;
    sub_100009EAC(&v84, v83);
    sub_100009CD0();
    sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView, ")");
    sub_100080AD8();
    sub_1000055FC(v16, v80, &qword_1000ACD28, &qword_100085E08);
    swift_storeEnumTagMultiPayload();
    sub_100009C14();
    sub_100009D24();
    v53 = v82;
    sub_100080AD8();
    sub_100005B2C(v16, &qword_1000ACD28, &qword_100085E08);
    sub_1000055FC(v53, v10, &qword_1000ACD30, &qword_100085E10);
    swift_storeEnumTagMultiPayload();
    sub_100009B88();
    sub_100080AD8();
    sub_100005B2C(v53, &qword_1000ACD30, &qword_100085E10);
    v54 = type metadata accessor for SmallWidgetView;
    v55 = v45;
  }

  return sub_100009F18(v55, v54);
}

uint64_t sub_100008460@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v81 = sub_100080478();
  v1 = *(v81 - 8);
  v2 = __chkstk_darwin(v81);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v68 - v5;
  v7 = sub_1000811C8();
  v97 = *(v7 - 8);
  v8 = v97;
  v9 = __chkstk_darwin(v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  v91 = sub_100002840(&qword_1000ACB68, &qword_100085C88);
  v82 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v68 - v14;
  v92 = sub_100002840(&qword_1000ACB70, &qword_100085C90);
  v83 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v68 - v15;
  v96 = sub_100002840(&qword_1000ACB78, &qword_100085C98);
  v84 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v68 - v16;
  v89 = sub_100002840(&qword_1000ACB80, &qword_100085CA0);
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = &v68 - v17;
  v18 = sub_100002840(&qword_1000ACB88, &qword_100085CA8);
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v85 = &v68 - v19;
  type metadata accessor for BooksWidgetEntryView(0);
  sub_100009B0C(&qword_1000ACB90, type metadata accessor for BooksWidgetEntryView, &unk_100085D90);
  sub_100009318();
  sub_1000810A8();
  v70 = v13;
  sub_100081158();
  sub_100080448();
  OpaqueTypeConformance2 = *(v8 + 16);
  v71 = v11;
  v20 = v7;
  OpaqueTypeConformance2(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = ObjCClassFromMetadata;
  v77 = objc_opt_self();
  v22 = [v77 bundleForClass:ObjCClassFromMetadata];
  v23 = v1;
  v76 = *(v1 + 16);
  v72 = v4;
  v69 = v6;
  v24 = v81;
  v76(v4, v6, v81);
  v25 = sub_100081268();
  v27 = v26;
  v28 = *(v23 + 8);
  v74 = v23 + 8;
  v75 = v28;
  v28(v6, v24);
  v29 = *(v97 + 8);
  v97 += 8;
  v73 = v29;
  v30 = v70;
  v29(v70, v20);
  v98 = v25;
  v99 = v27;
  v31 = sub_100005C98(&qword_1000ACBA0, &qword_1000ACB68, &qword_100085C88, &protocol conformance descriptor for StaticConfiguration<A>);
  v32 = sub_1000057D0();
  v33 = v91;
  v34 = v79;
  sub_100080AB8();

  (*(v82 + 8))(v34, v33);
  sub_100081158();
  v35 = v69;
  sub_100080448();
  OpaqueTypeConformance2(v71, v30, v20);
  v36 = [v77 bundleForClass:v78];
  v76(v72, v35, v24);
  v37 = v92;
  v38 = sub_100081268();
  v40 = v39;
  v75(v35, v24);
  v73(v30, v20);
  v102 = v38;
  v103 = v40;
  v98 = v91;
  v99 = &type metadata for String;
  v100 = v31;
  v101 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = v32;
  v41 = v93;
  sub_100080A88();

  (*(v83 + 8))(v41, v37);
  sub_10000936C();
  sub_100005C98(&qword_1000ACBB0, &qword_1000ACBB8, &qword_100085CB0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  LOBYTE(v40) = sub_100081348();
  sub_100002840(&qword_1000ACBC0, &qword_100085CB8);
  v42 = sub_100081038();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = (v43 + 104);
  v47 = 2 * v44;
  v93 = (2 * v44);
  v91 = 3 * v44;
  v48 = swift_allocObject();
  if (v40)
  {
    *(v48 + 16) = xmmword_100085C20;
    v49 = v48 + v45;
    v50 = *v46;
    (*v46)(v48 + v45, enum case for WidgetFamily.accessoryCircular(_:), v42);
    LODWORD(v83) = enum case for WidgetFamily.systemSmall(_:);
    v50(v49 + v44);
    LODWORD(v82) = enum case for WidgetFamily.systemMedium(_:);
    v50(v49 + v47);
    v51 = enum case for WidgetFamily.systemLarge(_:);
    v52 = v49 + 3 * v44;
  }

  else
  {
    *(v48 + 16) = xmmword_100085C10;
    v53 = v48 + v45;
    v50 = *v46;
    LODWORD(v83) = enum case for WidgetFamily.systemSmall(_:);
    v50(v48 + v45);
    LODWORD(v82) = enum case for WidgetFamily.systemMedium(_:);
    v50(v53 + v44);
    v51 = enum case for WidgetFamily.systemLarge(_:);
    v52 = v53 + v47;
  }

  LODWORD(v81) = v51;
  v50(v52);
  v98 = v92;
  v99 = &type metadata for String;
  v100 = OpaqueTypeConformance2;
  v101 = v97;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v96;
  v56 = v94;
  sub_100080A98();

  (*(v84 + 8))(v56, v55);
  v57 = [objc_opt_self() currentDevice];
  v58 = [v57 userInterfaceIdiom];

  sub_100002840(&qword_1000ACBC8, &qword_100085CC0);
  sub_100081068();
  if (v58 == 1)
  {
    *(swift_allocObject() + 16) = xmmword_100085A40;
    sub_100081048();
    sub_100081058();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_100085C00;
    sub_100081048();
  }

  sub_100002840(&qword_1000ACBC0, &qword_100085CB8);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100085C10;
  v60 = v59 + v45;
  v61 = *v46;
  (*v46)(v59 + v45, v83, v42);
  (v61)(v60 + v44, v82, v42);
  (v61)(&v93[v60], v81, v42);
  v98 = v96;
  v99 = v54;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v85;
  v64 = v89;
  v65 = v95;
  sub_100080AA8();

  (*(v86 + 8))(v65, v64);
  v98 = v64;
  v99 = v62;
  swift_getOpaqueTypeConformance2();
  v66 = v88;
  sub_100080AC8();
  return (*(v87 + 8))(v63, v66);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100009278();
  sub_100080F18();
  return 0;
}

unint64_t sub_100009278()
{
  result = qword_1000ACB60;
  if (!qword_1000ACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB60);
  }

  return result;
}

unint64_t sub_100009318()
{
  result = qword_1000ACB98;
  if (!qword_1000ACB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB98);
  }

  return result;
}

unint64_t sub_10000936C()
{
  result = qword_1000ACBA8;
  if (!qword_1000ACBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACBA8);
  }

  return result;
}

uint64_t sub_1000093C0(uint64_t a1)
{
  v2 = sub_1000807B8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100080928();
}

uint64_t sub_1000094A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000094F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000803D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16) >> 1;
    v11 = -2 - v10;
    if (-2 - v10 < 0)
    {
      v11 = -1;
    }

    if (v10 > 0x80000000)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

double sub_1000095D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000803D8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2 * ~a2;
    result = 0.0;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
  }

  return result;
}

void sub_1000096BC(uint64_t a1)
{
  sub_1000803D8();
  if (v1 <= 0x3F)
  {
    sub_100009740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009740()
{
  if (!qword_1000ACC38)
  {
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ACC38);
    }
  }
}

uint64_t sub_1000097B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000098A4(uint64_t a1)
{
  result = type metadata accessor for WidgetEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100009910()
{
  sub_100004FC8(&qword_1000ACB88, &qword_100085CA8);
  sub_100004FC8(&qword_1000ACB80, &qword_100085CA0);
  sub_100004FC8(&qword_1000ACB78, &qword_100085C98);
  sub_100004FC8(&qword_1000ACB70, &qword_100085C90);
  sub_100004FC8(&qword_1000ACB68, &qword_100085C88);
  sub_100005C98(&qword_1000ACBA0, &qword_1000ACB68, &qword_100085C88, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_1000057D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009B70(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100009B88()
{
  result = qword_1000ACD38;
  if (!qword_1000ACD38)
  {
    sub_100004FC8(&qword_1000ACD30, &qword_100085E10);
    sub_100009C14();
    sub_100009D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD38);
  }

  return result;
}

unint64_t sub_100009C14()
{
  result = qword_1000ACD40;
  if (!qword_1000ACD40)
  {
    sub_100004FC8(&qword_1000ACD28, &qword_100085E08);
    sub_100009CD0();
    sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView, ")");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD40);
  }

  return result;
}

unint64_t sub_100009CD0()
{
  result = qword_1000ACD48;
  if (!qword_1000ACD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD48);
  }

  return result;
}

unint64_t sub_100009D24()
{
  result = qword_1000ACD58;
  if (!qword_1000ACD58)
  {
    sub_100004FC8(&qword_1000ACD08, &qword_100085DE8);
    sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView, &unk_100087B34);
    sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView, &unk_10008B3D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD58);
  }

  return result;
}

uint64_t sub_100009E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009F78(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A070;

  return v6(a1);
}

uint64_t sub_10000A070()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000810E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  if (qword_1000AC5F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000806F8();
  sub_10000A480(v13, qword_1000ACB48);
  v14 = sub_1000806D8();
  v15 = sub_100081468();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v8;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Widget was awoken to fetch view model data.", v16, 2u);
    v8 = v24;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = sub_1000813E8();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  (*(v7 + 16))(v9, a1, v6);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v7 + 32))(v20 + v19, v9, v6);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_10000AB58;
  v21[1] = v17;

  sub_1000066D0(0, 0, v12, &unk_100085E68, v20);
}

uint64_t sub_10000A480(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A4B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A4F4(uint64_t a1)
{
  v4 = *(sub_1000810E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000AB6C;

  return sub_1000069D0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10000A624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB6C;

  return sub_100009F78(a1, v4);
}

uint64_t sub_10000A6DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000074F4;

  return sub_100009F78(a1, v4);
}

uint64_t *sub_10000A794(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000A820()
{
  v1 = sub_1000810E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000A8FC(uint64_t a1)
{
  v4 = *(sub_1000810E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000074F4;

  return sub_100006284(a1, v6, v7, v1 + v5, v9, v10);
}

double sub_10000AA2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_10000AA5C(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0xC000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_10000AA80(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0x8000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_10000AAA4(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0x4000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

unint64_t sub_10000AACC()
{
  result = qword_1000ACD98;
  if (!qword_1000ACD98)
  {
    sub_100004FC8(&qword_1000ACDA0, &unk_100085EB0);
    sub_100009B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD98);
  }

  return result;
}

__n128 sub_10000AB70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000AB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000ABE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000AC74@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = a2;
  v3 = sub_100002840(&qword_1000ACDB0, &qword_100085F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v64 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v53[-v11];
  v13 = __chkstk_darwin(v10);
  v66 = &v53[-v14];
  v15 = sub_10005A0B8(v13);
  v62 = v16;
  v63 = v15;
  v17 = *(a1 + 104);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v60 = v89;
  v61 = v87;
  v58 = v92;
  v59 = v91;
  v95 = v88;
  v94 = v90;
  v57 = sub_100080C38();
  sub_100080798();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v67 = v95;
  v26 = v94;
  v54 = v94;
  LOBYTE(v86[0]) = 0;
  *v5 = sub_100080A28();
  *(v5 + 1) = v17;
  v5[16] = 0;
  v56 = *(sub_100002840(&qword_1000ACDC0, &qword_100085F80) + 44);
  v93 = *(a1 + 48);
  v74[0] = v93;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = *(a1 + 112);
  v27[7] = *(a1 + 96);
  v27[8] = v28;
  v27[9] = *(a1 + 128);
  v29 = *(a1 + 48);
  v27[3] = *(a1 + 32);
  v27[4] = v29;
  v30 = *(a1 + 80);
  v27[5] = *(a1 + 64);
  v27[6] = v30;
  v31 = *(a1 + 16);
  v27[1] = *a1;
  v27[2] = v31;
  sub_1000055FC(&v93, v86, &qword_1000ACDC8, &qword_100085FB0);
  sub_10000BFF8(a1, v86);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000ACDD0, &qword_100085FB8);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0, &protocol conformance descriptor for [A]);
  sub_10000C030();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v5, v12, &qword_1000ACDB0, &qword_100085F70);
  v32 = &v12[*(v7 + 44)];
  v33 = v86[5];
  v32[4] = v86[4];
  v32[5] = v33;
  v32[6] = v86[6];
  v34 = v86[1];
  *v32 = v86[0];
  v32[1] = v34;
  v35 = v86[3];
  v32[2] = v86[2];
  v32[3] = v35;
  v36 = v66;
  sub_10000C1E0(v12, v66, &qword_1000ACDB8, &qword_100085F78);
  v37 = v36;
  v38 = v64;
  sub_10000C248(v37, v64);
  v40 = v62;
  v39 = v63;
  *&v68 = v63;
  *(&v68 + 1) = v62;
  v42 = v60;
  v41 = v61;
  *&v69 = v61;
  BYTE8(v69) = v67;
  *&v70 = v60;
  BYTE8(v70) = v26;
  v43 = v58;
  v44 = v59;
  *&v71 = v59;
  *(&v71 + 1) = v58;
  v45 = v57;
  LOBYTE(v72) = v57;
  *(&v72 + 1) = v19;
  *&v73[0] = v21;
  *(&v73[0] + 1) = v23;
  *&v73[1] = v25;
  BYTE8(v73[1]) = 0;
  v46 = v69;
  v47 = v65;
  *v65 = v68;
  v47[1] = v46;
  v48 = v70;
  v49 = v71;
  *(v47 + 89) = *(v73 + 9);
  v50 = v73[0];
  v47[4] = v72;
  v47[5] = v50;
  v47[2] = v48;
  v47[3] = v49;
  v51 = v47 + *(sub_100002840(&qword_1000ACE08, &unk_100085FD0) + 48);
  sub_10000C248(v38, v51);
  sub_1000055FC(&v68, v74, &qword_1000ACE10, &qword_100086460);
  sub_10000C2B8(v66);
  sub_10000C2B8(v38);
  v74[0] = v39;
  v74[1] = v40;
  v74[2] = v41;
  v75 = v67;
  v76 = v42;
  v77 = v54;
  v78 = v44;
  v79 = v43;
  v80 = v45;
  v81 = v19;
  v82 = v21;
  v83 = v23;
  v84 = v25;
  v85 = 0;
  return sub_100005B2C(v74, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10000B164@<X0>(__int128 *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v31 = sub_100080B68();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACE00, &qword_100085FC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100002840(&qword_1000ACDE8, &qword_100085FC0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v32 = sub_100002840(&qword_1000ACE18, &qword_100085FE0);
  v14 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v30 - v15;
  v17 = a1[3];
  v47 = a1[2];
  v48 = v17;
  v49 = a1[4];
  v50 = *(a1 + 80);
  v18 = a1[1];
  v45 = *a1;
  v46 = v18;
  *v10 = sub_100080A28();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_100002840(&qword_1000ACE20, &qword_100085FE8);
  sub_10000B55C(a2, &v45, &v10[*(v19 + 44)]);
  sub_100080F58();
  sub_1000808F8();
  sub_10000C1E0(v10, v13, &qword_1000ACE00, &qword_100085FC8);
  v20 = &v13[*(v11 + 36)];
  v21 = v43;
  *(v20 + 4) = v42;
  *(v20 + 5) = v21;
  *(v20 + 6) = v44;
  v22 = v39;
  *v20 = v38;
  *(v20 + 1) = v22;
  v23 = v41;
  *(v20 + 2) = v40;
  *(v20 + 3) = v23;
  v51 = v45;
  v52 = v46;
  v56 = v50;
  v54 = v48;
  v55 = v49;
  v53 = v47;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v24 = sub_10000C128();
  sub_100080E08();
  (*(v5 + 8))(v7, v31);
  sub_100005B2C(v13, &qword_1000ACDE8, &qword_100085FC0);
  if (sub_1000112D4())
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v25 = sub_100056778(1);
    v26 = v27;
  }

  v36 = v25;
  v37 = v26;
  v34 = v11;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v28 = v32;
  sub_100080DD8();

  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_10000B55C@<X0>(double *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v5 = sub_100002840(&qword_1000ACE28, &qword_100085FF0);
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v88 = &v77 - v6;
  v7 = sub_100002840(&qword_1000ACE30, &qword_100085FF8);
  v8 = __chkstk_darwin(v7 - 8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v77 - v10;
  v85 = sub_100080308();
  v11 = *(v85 - 8);
  v12 = __chkstk_darwin(v85);
  v86 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v16);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v19 = __chkstk_darwin(v84);
  v78 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v77 - v22;
  __chkstk_darwin(v21);
  v87 = &v77 - v24;
  v25 = *(a1 + 3);
  v102 = *(a1 + 2);
  v103 = v25;
  v104 = *(a1 + 4);
  v26 = *(a1 + 1);
  v100 = *a1;
  v101 = v26;
  sub_100025138(a2, v15);
  v27 = a2[3];
  v96 = a2[2];
  v97 = v27;
  v98 = a2[4];
  v99 = *(a2 + 80);
  v28 = a2[1];
  v94 = *a2;
  v95 = v28;
  v29 = sub_1000112D4();
  if (*(&v104 + 1))
  {
    if (v104 == v96)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_100081618();
    }
  }

  else
  {
    v30 = 0;
  }

  *v18 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v18 + v16[5], v15, v85);
  *(v18 + v16[6]) = v29 & 1;
  v31 = v18 + v16[7];
  v32 = a2[3];
  *(v31 + 2) = a2[2];
  *(v31 + 3) = v32;
  *(v31 + 4) = a2[4];
  v31[80] = *(a2 + 80);
  v33 = a2[1];
  *v31 = *a2;
  *(v31 + 1) = v33;
  *(v18 + v16[8]) = v30 & 1;
  *(v18 + v16[9]) = 0;
  sub_10000C328(a2, v93);
  v34 = sub_100080C38();
  sub_100080798();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000C384(v18, v23);
  v43 = &v23[*(v84 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_10000C1E0(v23, v87, &qword_1000ACE38, &qword_100086000);
  v44 = sub_100025138(a2, v86);
  __chkstk_darwin(v44);
  *(&v77 - 2) = a2;
  *(&v77 - 1) = a1;
  type metadata accessor for LabelView(0);
  sub_10000C3F0(&qword_1000ACE40, type metadata accessor for LabelView, &unk_10008BAB4);
  sub_100080CE8();
  v93[0] = v94;
  v90 = v94;
  sub_1000055FC(v93, v89, &qword_1000ACE48, &unk_100086040);
  v45 = 0;
  v91 = sub_100056928(0);
  v92 = v46;
  v47 = _swiftEmptyArrayStorage;
LABEL_7:
  v48 = &v90 + 2 * v45 + 1;
  while (++v45 != 3)
  {
    v49 = v48 + 2;
    v50 = *v48;
    v48 += 2;
    if (v50)
    {
      v51 = *(v49 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_10003EE4C(0, *(v47 + 2) + 1, 1, v47);
      }

      v53 = *(v47 + 2);
      v52 = *(v47 + 3);
      if (v53 >= v52 >> 1)
      {
        v47 = sub_10003EE4C((v52 > 1), v53 + 1, 1, v47);
      }

      *(v47 + 2) = v53 + 1;
      v54 = &v47[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v56 = 0;
  v57 = *(v47 + 2);
  v58 = _swiftEmptyArrayStorage;
LABEL_16:
  v59 = &v47[16 * v56 + 40];
  while (1)
  {
    if (v57 == v56)
    {

      v89[0] = v58;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
      v66 = sub_100081128();
      v68 = v67;

      v89[0] = v66;
      v89[1] = v68;
      sub_100005C98(&qword_1000ACE60, &qword_1000ACE28, &qword_100085FF0, &protocol conformance descriptor for Link<A>);
      sub_1000057D0();
      v69 = v80;
      v70 = v81;
      v71 = v88;
      sub_100080DD8();

      (*(v79 + 8))(v71, v69);
      v72 = v87;
      v73 = v78;
      sub_1000055FC(v87, v78, &qword_1000ACE38, &qword_100086000);
      v74 = v82;
      sub_1000055FC(v70, v82, &qword_1000ACE30, &qword_100085FF8);
      v75 = v83;
      sub_1000055FC(v73, v83, &qword_1000ACE38, &qword_100086000);
      v76 = sub_100002840(&qword_1000ACE68, &qword_100086050);
      sub_1000055FC(v74, v75 + *(v76 + 48), &qword_1000ACE30, &qword_100085FF8);
      sub_100005B2C(v70, &qword_1000ACE30, &qword_100085FF8);
      sub_100005B2C(v72, &qword_1000ACE38, &qword_100086000);
      sub_100005B2C(v74, &qword_1000ACE30, &qword_100085FF8);
      return sub_100005B2C(v73, &qword_1000ACE38, &qword_100086000);
    }

    if (v56 >= *(v47 + 2))
    {
      break;
    }

    ++v56;
    v61 = *(v59 - 1);
    v60 = *v59;
    v59 += 16;
    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v58;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v58[2] + 1, 1);
        v58 = v89[0];
      }

      v64 = v58[2];
      v63 = v58[3];
      if (v64 >= v63 >> 1)
      {
        result = sub_100061B34((v63 > 1), v64 + 1, 1);
        v58 = v89[0];
      }

      v58[2] = v64 + 1;
      v65 = &v58[2 * v64];
      v65[4] = v61;
      v65[5] = v60;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

int *sub_10000BE40@<X0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_100056928(1);
  v6 = v5;
  v7 = a1[6];
  v17[0] = a1[5];
  v17[1] = v7;
  v8 = a1[8];
  v18 = a1[7];
  v19 = v8;
  v9 = *(&v18 + 1);
  sub_10000C438(v17, &v16);
  v10 = sub_100080B08();
  v11 = *&v17[0];
  v12 = v10;
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LabelView(0);
  v14 = (a2 + result[5]);
  *v14 = v4;
  v14[1] = v6;
  *(a2 + result[6]) = v9;
  v15 = a2 + result[7];
  *v15 = v12;
  *(v15 + 1) = v11;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_10000BF1C@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[7];
  v20 = v9[6];
  v21 = v11;
  v22 = v9[8];
  v12 = v9[3];
  v19[2] = v9[2];
  v19[3] = v12;
  v13 = v9[5];
  v19[4] = v9[4];
  v19[5] = v13;
  v14 = v9[1];
  v19[0] = *v9;
  v19[1] = v14;
  v15 = sub_100080A78();
  v16 = v20;
  *a9 = v15;
  *(a9 + 8) = v16;
  *(a9 + 16) = 0;
  v17 = sub_100002840(&qword_1000ACDA8, &qword_100085F68);
  return sub_10000AC74(v19, (a9 + *(v17 + 44)));
}

uint64_t sub_10000BFA0()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10000C030()
{
  result = qword_1000ACDE0;
  if (!qword_1000ACDE0)
  {
    sub_100004FC8(&qword_1000ACDD0, &qword_100085FB8);
    sub_100004FC8(&qword_1000ACDE8, &qword_100085FC0);
    sub_10000C128();
    swift_getOpaqueTypeConformance2();
    sub_10000C3F0(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACDE0);
  }

  return result;
}

unint64_t sub_10000C128()
{
  result = qword_1000ACDF0;
  if (!qword_1000ACDF0)
  {
    sub_100004FC8(&qword_1000ACDE8, &qword_100085FC0);
    sub_100005C98(&qword_1000ACDF8, &qword_1000ACE00, &qword_100085FC8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACDF0);
  }

  return result;
}

uint64_t sub_10000C1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002840(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C2B8(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C3F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000C470(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000C584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000807B8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100080F68();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10000C6A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000807B8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100080F68();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10000C7C4(uint64_t a1)
{
  result = sub_1000807B8();
  if (v2 <= 0x3F)
  {
    result = sub_100080F68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CA1C(uint64_t a1)
{
  result = type metadata accessor for TodayReadingGoalView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000CAB4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_100080F48();
  a3[1] = v6;
  v7 = sub_100002840(&qword_1000ACFC0, &qword_100086128);
  return sub_10000CB14(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_10000CB14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002840(&qword_1000ACFC8, &qword_100086130);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100002840(&qword_1000ACFD0, &qword_100086138);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_1000807F8();
  sub_10000CD68(v17, v18, v19);
  v20 = a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20);
  v21 = *&v20[*(type metadata accessor for TodayReadingGoalView.ViewConfiguration(0) + 48)];
  *v11 = sub_100080A68();
  *(v11 + 1) = v21;
  v11[16] = 0;
  v22 = sub_100002840(&qword_1000ACFD8, &qword_100086140);
  sub_10000D418(a1, a2, &v11[*(v22 + 44)]);
  sub_1000055FC(v17, v15, &qword_1000ACFD0, &qword_100086138);
  sub_1000055FC(v11, v9, &qword_1000ACFC8, &qword_100086130);
  sub_1000055FC(v15, a3, &qword_1000ACFD0, &qword_100086138);
  v23 = sub_100002840(&qword_1000ACFE0, &qword_100086148);
  sub_1000055FC(v9, a3 + *(v23 + 48), &qword_1000ACFC8, &qword_100086130);
  sub_100005B2C(v11, &qword_1000ACFC8, &qword_100086130);
  sub_100005B2C(v17, &qword_1000ACFD0, &qword_100086138);
  sub_100005B2C(v9, &qword_1000ACFC8, &qword_100086130);
  return sub_100005B2C(v15, &qword_1000ACFD0, &qword_100086138);
}

uint64_t sub_10000CD68@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_100080308();
  __chkstk_darwin(v7 - 8);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000AD0D0, &qword_100086330);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v75 - v12;
  v14 = sub_100002840(&qword_1000ACFD0, &qword_100086138);
  __chkstk_darwin(v14);
  v80 = v75 - v15;
  v16 = v3[3];
  v111 = v3[2];
  v112 = v16;
  v113 = v3[4];
  v17 = v3[1];
  v109 = *v3;
  v110 = v17;
  sub_100025F34(v9);
  v82 = a2;
  v83 = a3;
  sub_100002840(&qword_1000AD0D8, &qword_100086338);
  sub_10000EF3C();
  v18 = sub_100080CE8();
  v88[7] = sub_100026588(v18);
  v88[8] = v19;
  v20 = v3[3];
  v106 = v3[2];
  v107 = v20;
  v108 = v3[4];
  v21 = v3[1];
  v104 = *v3;
  v105 = v21;
  v88[9] = sub_100025984();
  v88[10] = v22;
  v23 = sub_100062184();
  v75[1] = v14;
  v75[2] = a1;
  v78 = v10;
  v79 = v3;
  v76 = v13;
  v77 = v11;
  if (v23)
  {
    v24 = v3[3];
    v101 = v3[2];
    v102 = v24;
    v103 = v3[4];
    v25 = v3[1];
    v99 = *v3;
    v100 = v25;
    result = sub_100057040();
  }

  else
  {
    result = sub_100025CB4();
  }

  v28 = 0;
  v88[11] = result;
  v88[12] = v27;
  v29 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v28 <= 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30 + 1;
  v32 = 16 * v28 + 40;
  while (v28 != 3)
  {
    if (v31 == ++v28)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v33 = v32 + 16;
    v34 = *(&v88[3] + v32);
    v32 += 16;
    if (v34)
    {
      v35 = *(v88 + v33);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10003EE4C(0, *(v29 + 2) + 1, 1, v29);
        v29 = result;
      }

      v37 = *(v29 + 2);
      v36 = *(v29 + 3);
      if (v37 >= v36 >> 1)
      {
        result = sub_10003EE4C((v36 > 1), v37 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 2) = v37 + 1;
      v38 = &v29[16 * v37];
      *(v38 + 4) = v35;
      *(v38 + 5) = v34;
      goto LABEL_5;
    }
  }

  v75[0] = sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v39 = 0;
  v40 = *(v29 + 2);
  v41 = _swiftEmptyArrayStorage;
LABEL_18:
  v42 = &v29[16 * v39 + 40];
  while (v40 != v39)
  {
    if (v39 >= *(v29 + 2))
    {
      goto LABEL_47;
    }

    ++v39;
    v44 = *(v42 - 1);
    v43 = *v42;
    v42 += 16;
    v45 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v45 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v94 = v41;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v41[2] + 1, 1);
        v41 = v94;
      }

      v47 = v41[2];
      v46 = v41[3];
      if (v47 >= v46 >> 1)
      {
        result = sub_100061B34((v46 > 1), v47 + 1, 1);
        v41 = v94;
      }

      v41[2] = v47 + 1;
      v48 = &v41[2 * v47];
      v48[4] = v44;
      v48[5] = v43;
      goto LABEL_18;
    }
  }

  *&v94 = v41;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
  v49 = sub_100081128();
  v51 = v50;

  *&v94 = v49;
  *(&v94 + 1) = v51;
  sub_100005C98(&qword_1000AD0E8, &qword_1000AD0D0, &qword_100086330, &protocol conformance descriptor for Link<A>);
  sub_1000057D0();
  v52 = v78;
  v53 = v76;
  sub_100080DD8();

  v54 = (*(v77 + 8))(v53, v52);
  v85 = sub_100026588(v54);
  v86 = v55;
  v56 = v79;
  v57 = v79[3];
  v96 = v79[2];
  v97 = v57;
  v98 = v79[4];
  v58 = v79[1];
  v94 = *v79;
  v95 = v58;
  v87 = sub_100025984();
  v88[0] = v59;
  if (sub_100062184())
  {
    v60 = v56[3];
    v91 = v56[2];
    v92 = v60;
    v93 = v56[4];
    v61 = v56[1];
    v89 = *v56;
    v90 = v61;
    result = sub_100057040();
  }

  else
  {
    result = sub_100025CB4();
  }

  v63 = 0;
  v88[1] = result;
  v88[2] = v62;
  v64 = _swiftEmptyArrayStorage;
LABEL_33:
  if (v63 <= 3)
  {
    v65 = 3;
  }

  else
  {
    v65 = v63;
  }

  v66 = v65 + 1;
  v67 = 16 * v63 + 40;
  while (v63 != 3)
  {
    if (v66 == ++v63)
    {
      goto LABEL_48;
    }

    v68 = v67 + 16;
    v69 = *&v84[v67];
    v67 += 16;
    if (v69)
    {
      v70 = *&v81[v68];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10003EE4C(0, *(v64 + 2) + 1, 1, v64);
        v64 = result;
      }

      v72 = *(v64 + 2);
      v71 = *(v64 + 3);
      if (v72 >= v71 >> 1)
      {
        result = sub_10003EE4C((v71 > 1), v72 + 1, 1, v64);
        v64 = result;
      }

      *(v64 + 2) = v72 + 1;
      v73 = &v64[16 * v72];
      *(v73 + 4) = v70;
      *(v73 + 5) = v69;
      goto LABEL_33;
    }
  }

  swift_arrayDestroy();
  v74 = v80;
  sub_1000808A8();

  return sub_100005B2C(v74, &qword_1000ACFD0, &qword_100086138);
}

uint64_t sub_10000D418@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v90 = a3;
  v83 = type metadata accessor for LabelView(0);
  __chkstk_darwin(v83);
  v5 = (&v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_100002840(&qword_1000ACFE8, &qword_100086150);
  __chkstk_darwin(v86);
  v85 = &v80 - v6;
  v7 = sub_100002840(&qword_1000ACFF0, &qword_100086158);
  v8 = __chkstk_darwin(v7 - 8);
  v89 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v80 - v10;
  v11 = type metadata accessor for ReadingGoalView(0);
  v12 = __chkstk_darwin(v11);
  v88 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v80 - v14);
  v16 = sub_100002840(&qword_1000ACFF8, &qword_100086160);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - v17;
  v19 = sub_100002840(&qword_1000AD000, &qword_100086168);
  v20 = __chkstk_darwin(v19);
  v84 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v80 - v23;
  __chkstk_darwin(v22);
  v91 = &v80 - v25;
  *v18 = sub_100080A28();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v26 = sub_100002840(&qword_1000AD008, &qword_100086170);
  sub_10000DC48(a1, &v18[*(v26 + 44)]);
  v27 = sub_100080C08();
  v28 = sub_100080C28();
  sub_100080C28();
  if (sub_100080C28() != v27)
  {
    v28 = sub_100080C28();
  }

  v29 = (a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20));
  v81 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  sub_100080798();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10000C1E0(v18, v24, &qword_1000ACFF8, &qword_100086160);
  v38 = &v24[*(v19 + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_10000C1E0(v24, v91, &qword_1000AD000, &qword_100086168);
  v40 = *(a1 + 4);
  v39 = *(a1 + 5);
  v41 = v11[9];
  v42 = sub_100080808();
  (*(*(v42 - 8) + 16))(v15 + v41, v82, v42);
  *(v15 + v11[6]) = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  *v15 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  swift_storeEnumTagMultiPayload();
  v43 = v15 + v11[5];
  *v43 = swift_getKeyPath();
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v43[32] = 0;
  v44 = (v15 + v11[7]);
  *v44 = v40;
  v44[1] = v39;
  v45 = v15 + v11[8];
  v46 = enum case for Font.TextStyle.callout(_:);
  v47 = sub_100080CD8();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v48 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  v49 = v48[5];
  v50 = enum case for Font.Design.rounded(_:);
  v51 = sub_100080C58();
  (*(*(v51 - 8) + 104))(&v45[v49], v50, v51);
  v52 = v48[6];

  sub_100080C88();
  *&v45[v52] = v53;
  *&v45[v48[7]] = 0x4010000000000000;
  *&v45[v48[8]] = 0xC03A000000000000;
  *&v45[v48[9]] = 0;
  v54 = v15;
  if (sub_100062184())
  {
    v55 = a1[3];
    v94 = a1[2];
    v95 = v55;
    v96 = a1[4];
    v56 = a1[1];
    v92 = *a1;
    v93 = v56;
    v57 = sub_100057040();
  }

  else
  {
    v57 = sub_100025CB4();
  }

  v59 = v57;
  v60 = v58;
  v61 = *(v29 + *(v81 + 32));

  v62 = sub_100080B08();
  v63 = *v29;
  v64 = v62;
  *v5 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v65 = v83;
  v66 = (v5 + *(v83 + 20));
  *v66 = v59;
  v66[1] = v60;
  *(v5 + *(v65 + 24)) = v61;
  v67 = v5 + *(v65 + 28);
  *v67 = v64;
  *(v67 + 1) = v63;
  *(v67 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v69 = v85;
  sub_10000EB00(v5, v85, type metadata accessor for LabelView);
  v70 = v69 + *(v86 + 36);
  *v70 = KeyPath;
  *(v70 + 8) = 1;
  sub_10000EB68();
  v71 = v87;
  sub_100080DE8();
  sub_100005B2C(v69, &qword_1000ACFE8, &qword_100086150);
  v72 = v91;
  v73 = v84;
  sub_1000055FC(v91, v84, &qword_1000AD000, &qword_100086168);
  v74 = v54;
  v75 = v88;
  sub_10000EC78(v54, v88, type metadata accessor for ReadingGoalView);
  v76 = v89;
  sub_1000055FC(v71, v89, &qword_1000ACFF0, &qword_100086158);
  v77 = v90;
  sub_1000055FC(v73, v90, &qword_1000AD000, &qword_100086168);
  v78 = sub_100002840(&qword_1000AD028, &qword_100086250);
  sub_10000EC78(v75, v77 + *(v78 + 48), type metadata accessor for ReadingGoalView);
  sub_1000055FC(v76, v77 + *(v78 + 64), &qword_1000ACFF0, &qword_100086158);
  sub_100005B2C(v71, &qword_1000ACFF0, &qword_100086158);
  sub_10000EEC4(v74, type metadata accessor for ReadingGoalView);
  sub_100005B2C(v72, &qword_1000AD000, &qword_100086168);
  sub_100005B2C(v76, &qword_1000ACFF0, &qword_100086158);
  sub_10000EEC4(v75, type metadata accessor for ReadingGoalView);
  return sub_100005B2C(v73, &qword_1000AD000, &qword_100086168);
}

uint64_t sub_10000DC48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100080B68();
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100002840(&qword_1000AD030, &qword_100086258);
  __chkstk_darwin(v49);
  v8 = &v48 - v7;
  v9 = sub_100002840(&qword_1000AD038, &qword_100086260);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v57 = sub_100002840(&qword_1000AD040, &qword_100086268);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v48 = &v48 - v12;
  v13 = sub_100002840(&qword_1000AD048, &qword_100086270);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v48 - v17;
  v18 = sub_100002840(&qword_1000AD050, &qword_100086278);
  v19 = __chkstk_darwin(v18 - 8);
  v56 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  *&v60 = sub_100057F6C();
  *(&v60 + 1) = v23;
  sub_10000ECE0();
  v54 = v22;
  sub_100080DE8();

  v24 = a1[3];
  v62 = a1[2];
  v63 = v24;
  v64 = a1[4];
  v25 = a1[1];
  v60 = *a1;
  v61 = v25;
  v26 = sub_100025984();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    *v8 = sub_100080A28();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v30 = sub_100002840(&qword_1000AD068, &qword_100086288);
    sub_10000E234(a1, v28, v29, &v8[*(v30 + 44)]);

    v31 = v6;
    sub_100080B38();
    v32 = sub_100005C98(&qword_1000AD070, &qword_1000AD030, &qword_100086258, &protocol conformance descriptor for HStack<A>);
    v33 = v50;
    v34 = v16;
    v35 = a2;
    v36 = v32;
    v37 = v49;
    sub_100080E08();
    (*(v33 + 8))(v31, v4);
    sub_100005B2C(v8, &qword_1000AD030, &qword_100086258);
    v58 = v37;
    v59 = v36;
    a2 = v35;
    v16 = v34;
    swift_getOpaqueTypeConformance2();
    v38 = v48;
    v39 = v52;
    sub_100080DE8();
    (*(v51 + 8))(v11, v39);
    v40 = v38;
    v41 = v53;
    sub_10000C1E0(v40, v53, &qword_1000AD040, &qword_100086268);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v53;
  }

  (*(v55 + 56))(v41, v42, 1, v57);
  v43 = v54;
  v44 = v56;
  sub_1000055FC(v54, v56, &qword_1000AD050, &qword_100086278);
  sub_1000055FC(v41, v16, &qword_1000AD048, &qword_100086270);
  sub_1000055FC(v44, a2, &qword_1000AD050, &qword_100086278);
  v45 = sub_100002840(&qword_1000AD060, &qword_100086280);
  v46 = a2 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_1000055FC(v16, a2 + *(v45 + 64), &qword_1000AD048, &qword_100086270);
  sub_100005B2C(v41, &qword_1000AD048, &qword_100086270);
  sub_100005B2C(v43, &qword_1000AD050, &qword_100086278);
  sub_100005B2C(v16, &qword_1000AD048, &qword_100086270);
  return sub_100005B2C(v44, &qword_1000AD050, &qword_100086278);
}

uint64_t sub_10000E234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v55 = a4;
  v52 = a2;
  v51 = type metadata accessor for LabelView(0) - 8;
  v5 = __chkstk_darwin(v51);
  v53 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v48[-v7];
  v9 = sub_100002840(&qword_1000AD078, &qword_100086290);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v57 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v48[-v13];
  v15 = a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20);
  v16 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);

  v17 = sub_100080E88();
  v56 = *(v15 + v16[8]);
  v18 = sub_100080CA8();
  KeyPath = swift_getKeyPath();
  v20 = *(v15 + v16[10]);
  v58 = v17;
  v59 = KeyPath;
  v60 = v18;
  v61 = v20;
  sub_100002840(&qword_1000AD080, &qword_1000862C8);
  sub_10000ED3C();
  sub_100080D48();

  v21 = v16[7];
  v22 = *(sub_100002840(&qword_1000AD0C0, &qword_1000862E8) + 36);
  v23 = sub_100080F68();
  (*(*(v23 - 8) + 16))(&v14[v22], v15 + v21, v23);
  v24 = v16[5];
  v25 = swift_getKeyPath();
  v26 = &v14[*(v10 + 44)];
  v50 = v14;
  v27 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v28 = sub_1000807B8();
  (*(*(v28 - 8) + 16))(v26 + v27, v15 + v24, v28);
  *v26 = v25;
  v29 = v56;
  v30 = sub_100080D18();
  v32 = v31;
  v49 = v33;
  v35 = v34;
  *v8 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v36 = v51;
  v37 = (v8 + *(v51 + 28));
  v38 = v54;
  *v37 = v52;
  v37[1] = v38;
  *(v8 + *(v36 + 32)) = v29;
  v39 = v8 + *(v36 + 36);
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 8) = 256;
  v40 = v57;
  sub_1000055FC(v14, v57, &qword_1000AD078, &qword_100086290);
  v41 = v53;
  sub_10000EC78(v8, v53, type metadata accessor for LabelView);
  v42 = v40;
  v43 = v55;
  sub_1000055FC(v42, v55, &qword_1000AD078, &qword_100086290);
  v44 = sub_100002840(&qword_1000AD0C8, &qword_100086328);
  v45 = v43 + *(v44 + 48);
  v46 = v43;
  *v45 = v30;
  *(v45 + 8) = v32;
  LOBYTE(v43) = v49 & 1;
  *(v45 + 16) = v49 & 1;
  *(v45 + 24) = v35;
  sub_10000EC78(v41, v46 + *(v44 + 64), type metadata accessor for LabelView);

  sub_10000EEB4(v30, v32, v43);

  sub_10000EEC4(v8, type metadata accessor for LabelView);
  sub_100005B2C(v50, &qword_1000AD078, &qword_100086290);
  sub_10000EEC4(v41, type metadata accessor for LabelView);
  sub_10000EF24(v30, v32, v43);

  return sub_100005B2C(v57, &qword_1000AD078, &qword_100086290);
}

double sub_10000E6D0@<D0>(uint64_t a1@<X8>)
{
  v4 = sub_100080E38();
  sub_100080F48();
  sub_1000807E8();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = *&v10;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_10000E76C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000EC78(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayReadingGoalView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000EB00(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TodayReadingGoalView);
  *a2 = sub_10000E9EC;
  a2[1] = v7;
  return result;
}

uint64_t sub_10000E880()
{
  v1 = (type metadata accessor for TodayReadingGoalView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v7 = *(v6 + 20);
  v8 = sub_1000807B8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_100080F68();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000E9EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TodayReadingGoalView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10000CAB4(a1, v6, a2);
}

void sub_10000EA7C(void *a1@<X8>)
{
  sub_1000809B8();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10000EAAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100080968();
  *a1 = result;
  return result;
}

uint64_t sub_10000EB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000EB68()
{
  result = qword_1000AD010;
  if (!qword_1000AD010)
  {
    sub_100004FC8(&qword_1000ACFE8, &qword_100086150);
    sub_10000EC20();
    sub_100005C98(&qword_1000AD018, &qword_1000AD020, &qword_100086248, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD010);
  }

  return result;
}

unint64_t sub_10000EC20()
{
  result = qword_1000ACE40;
  if (!qword_1000ACE40)
  {
    type metadata accessor for LabelView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACE40);
  }

  return result;
}

uint64_t sub_10000EC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000ECE0()
{
  result = qword_1000AD058;
  if (!qword_1000AD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD058);
  }

  return result;
}

unint64_t sub_10000ED3C()
{
  result = qword_1000AD088;
  if (!qword_1000AD088)
  {
    sub_100004FC8(&qword_1000AD080, &qword_1000862C8);
    sub_10000EDF4();
    sub_100005C98(&qword_1000AD0B0, &qword_1000AD0B8, &qword_1000862E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD088);
  }

  return result;
}

unint64_t sub_10000EDF4()
{
  result = qword_1000AD090;
  if (!qword_1000AD090)
  {
    sub_100004FC8(&qword_1000AD098, &qword_1000862D0);
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD090);
  }

  return result;
}

uint64_t sub_10000EEB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000EEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000EF24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000EF3C()
{
  result = qword_1000AD0E0;
  if (!qword_1000AD0E0)
  {
    sub_100004FC8(&qword_1000AD0D8, &qword_100086338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD0E0);
  }

  return result;
}

uint64_t sub_10000F030@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v3 = sub_100002840(&qword_1000AD108, &qword_100086400);
  __chkstk_darwin(v3 - 8);
  v5 = &v52[-v4];
  v6 = sub_100002840(&qword_1000AD110, &qword_100086408);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v62 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v52[-v11];
  v13 = __chkstk_darwin(v10);
  v64 = &v52[-v14];
  v15 = sub_10005A0B8(v13);
  v60 = v16;
  v61 = v15;
  v17 = *(a1 + 104);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v58 = v88;
  v59 = v86;
  v56 = v91;
  v57 = v90;
  v94 = v87;
  v93 = v89;
  v66 = sub_100080C38();
  sub_100080798();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v65 = v94;
  v26 = v93;
  v53 = v93;
  LOBYTE(v85[0]) = 0;
  *v5 = sub_100080A08();
  *(v5 + 1) = v17;
  v5[16] = 0;
  v55 = *(sub_100002840(&qword_1000AD118, &qword_100086410) + 44);
  v92 = *(a1 + 48);
  v73[0] = v92;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = *(a1 + 112);
  v27[7] = *(a1 + 96);
  v27[8] = v28;
  v27[9] = *(a1 + 128);
  v29 = *(a1 + 48);
  v27[3] = *(a1 + 32);
  v27[4] = v29;
  v30 = *(a1 + 80);
  v27[5] = *(a1 + 64);
  v27[6] = v30;
  v31 = *(a1 + 16);
  v27[1] = *a1;
  v27[2] = v31;
  sub_1000055FC(&v92, v85, &qword_1000ACDC8, &qword_100085FB0);
  sub_1000103A4(a1, v85);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000AD120, &qword_100086448);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0, &protocol conformance descriptor for [A]);
  sub_1000103DC();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v5, v12, &qword_1000AD108, &qword_100086400);
  v32 = &v12[*(v7 + 44)];
  v33 = v85[5];
  v32[4] = v85[4];
  v32[5] = v33;
  v32[6] = v85[6];
  v34 = v85[1];
  *v32 = v85[0];
  v32[1] = v34;
  v35 = v85[3];
  v32[2] = v85[2];
  v32[3] = v35;
  v36 = v64;
  sub_10000C1E0(v12, v64, &qword_1000AD110, &qword_100086408);
  v37 = v62;
  sub_100010508(v36, v62);
  v39 = v60;
  v38 = v61;
  *&v67 = v61;
  *(&v67 + 1) = v60;
  v41 = v58;
  v40 = v59;
  *&v68 = v59;
  BYTE8(v68) = v65;
  *&v69 = v58;
  BYTE8(v69) = v26;
  v42 = v56;
  v43 = v57;
  *&v70 = v57;
  *(&v70 + 1) = v56;
  LOBYTE(v71) = v66;
  *(&v71 + 1) = v19;
  *&v72[0] = v21;
  *(&v72[0] + 1) = v23;
  *&v72[1] = v25;
  BYTE8(v72[1]) = 0;
  v44 = v68;
  v45 = v63;
  *v63 = v67;
  v45[1] = v44;
  v46 = v69;
  v47 = v70;
  *(v45 + 89) = *(v72 + 9);
  v48 = v72[0];
  v45[4] = v71;
  v45[5] = v48;
  v45[2] = v46;
  v45[3] = v47;
  v49 = sub_100002840(&qword_1000AD140, &qword_100086458);
  sub_100010508(v37, v45 + *(v49 + 48));
  v50 = v45 + *(v49 + 64);
  *v50 = 0;
  v50[8] = 0;
  sub_1000055FC(&v67, v73, &qword_1000ACE10, &qword_100086460);
  sub_100010578(v64);
  sub_100010578(v37);
  v73[0] = v38;
  v73[1] = v39;
  v73[2] = v40;
  v74 = v65;
  v75 = v41;
  v76 = v53;
  v77 = v43;
  v78 = v42;
  v79 = v66;
  v80 = v19;
  v81 = v21;
  v82 = v23;
  v83 = v25;
  v84 = 0;
  return sub_100005B2C(v73, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10000F52C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v24 = sub_100080B68();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AD130, &qword_100086450);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v25 = sub_100002840(&qword_1000AD148, &qword_100086468);
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - v12;
  v14 = a1[3];
  v33 = a1[2];
  v34 = v14;
  v35 = a1[4];
  v36 = *(a1 + 80);
  v15 = a1[1];
  v31 = *a1;
  v32 = v15;
  *v10 = sub_100080A68();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = sub_100002840(&qword_1000AD150, &qword_100086470);
  sub_10000F8B4(a2, &v31, &v10[*(v16 + 44)]);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  v37 = v31;
  v38 = v32;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v17 = sub_100005C98(&qword_1000AD138, &qword_1000AD130, &qword_100086450, &protocol conformance descriptor for VStack<A>);
  sub_100080E08();
  (*(v5 + 8))(v7, v24);
  sub_100005B2C(v10, &qword_1000AD130, &qword_100086450);
  if (sub_1000112D4())
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v18 = sub_100056778(1);
    v19 = v20;
  }

  v29 = v18;
  v30 = v19;
  v27 = v8;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v21 = v25;
  sub_100080DD8();

  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_10000F8B4@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = sub_100002840(&qword_1000AD158, &qword_100086478);
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v84 = &v73 - v6;
  v7 = sub_100002840(&qword_1000AD160, &unk_100086480);
  v8 = __chkstk_darwin(v7 - 8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v73 - v10;
  v80 = sub_100080308();
  v11 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v16 = type metadata accessor for BookCoverView(0);
  __chkstk_darwin(v16);
  v18 = (&v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_100002840(&qword_1000AD168, &qword_100088190);
  v19 = __chkstk_darwin(v81);
  v74 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v73 - v22;
  __chkstk_darwin(v21);
  v83 = &v73 - v24;
  v25 = a1[3];
  v96[3] = a1[2];
  v96[4] = v25;
  v97 = a1[4];
  v26 = a1[1];
  v96[1] = *a1;
  v96[2] = v26;
  sub_100025138(a2, v15);
  v27 = a2[3];
  v92 = a2[2];
  v93 = v27;
  v94 = a2[4];
  v95 = *(a2 + 80);
  v28 = a2[1];
  v90 = *a2;
  v91 = v28;
  v29 = sub_1000112D4();
  if (*(&v97 + 1))
  {
    if (v97 == v92)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_100081618();
    }
  }

  else
  {
    v30 = 0;
  }

  *v18 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v18 + v16[5], v15, v80);
  *(v18 + v16[6]) = v29 & 1;
  v31 = v18 + v16[7];
  v32 = a2[3];
  *(v31 + 2) = a2[2];
  *(v31 + 3) = v32;
  *(v31 + 4) = a2[4];
  v31[80] = *(a2 + 80);
  v33 = a2[1];
  *v31 = *a2;
  *(v31 + 1) = v33;
  *(v18 + v16[8]) = v30 & 1;
  *(v18 + v16[9]) = 0;
  sub_10000C328(a2, v89);
  sub_100080F48();
  v72 = v34;
  sub_1000808F8();
  sub_10000C384(v18, v23);
  v35 = &v23[*(v81 + 36)];
  v36 = v89[5];
  *(v35 + 4) = v89[4];
  *(v35 + 5) = v36;
  *(v35 + 6) = v89[6];
  v37 = v89[1];
  *v35 = v89[0];
  *(v35 + 1) = v37;
  v38 = v89[3];
  *(v35 + 2) = v89[2];
  *(v35 + 3) = v38;
  sub_1000105E8(v23, v83);
  v39 = sub_100025138(a2, v82);
  __chkstk_darwin(v39);
  v72 = a1;
  sub_100002840(&qword_1000AD170, &qword_1000864C8);
  sub_100010660();
  sub_100080CE8();
  v96[0] = v90;
  v86 = v90;
  sub_1000055FC(v96, v85, &qword_1000ACE48, &unk_100086040);
  v40 = 0;
  v87 = sub_100056928(0);
  v88 = v41;
  v42 = _swiftEmptyArrayStorage;
LABEL_7:
  v43 = &v86 + 2 * v40 + 1;
  while (++v40 != 3)
  {
    v44 = v43 + 2;
    v45 = *v43;
    v43 += 2;
    if (v45)
    {
      v46 = *(v44 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10003EE4C(0, *(v42 + 2) + 1, 1, v42);
      }

      v48 = *(v42 + 2);
      v47 = *(v42 + 3);
      if (v48 >= v47 >> 1)
      {
        v42 = sub_10003EE4C((v47 > 1), v48 + 1, 1, v42);
      }

      *(v42 + 2) = v48 + 1;
      v49 = &v42[16 * v48];
      *(v49 + 4) = v46;
      *(v49 + 5) = v45;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v51 = 0;
  v52 = *(v42 + 2);
  v53 = _swiftEmptyArrayStorage;
LABEL_16:
  v54 = &v42[16 * v51 + 40];
  while (1)
  {
    if (v52 == v51)
    {

      v85[0] = v53;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
      v61 = sub_100081128();
      v63 = v62;

      v85[0] = v61;
      v85[1] = v63;
      sub_100005C98(&qword_1000AD180, &qword_1000AD158, &qword_100086478, &protocol conformance descriptor for Link<A>);
      sub_1000057D0();
      v64 = v76;
      v65 = v77;
      v66 = v84;
      sub_100080DD8();

      (*(v75 + 8))(v66, v64);
      v67 = v83;
      v68 = v74;
      sub_1000055FC(v83, v74, &qword_1000AD168, &qword_100088190);
      v69 = v78;
      sub_1000055FC(v65, v78, &qword_1000AD160, &unk_100086480);
      v70 = v79;
      sub_1000055FC(v68, v79, &qword_1000AD168, &qword_100088190);
      v71 = sub_100002840(&qword_1000AD188, &qword_1000864D0);
      sub_1000055FC(v69, v70 + *(v71 + 48), &qword_1000AD160, &unk_100086480);
      sub_100005B2C(v65, &qword_1000AD160, &unk_100086480);
      sub_100005B2C(v67, &qword_1000AD168, &qword_100088190);
      sub_100005B2C(v69, &qword_1000AD160, &unk_100086480);
      return sub_100005B2C(v68, &qword_1000AD168, &qword_100088190);
    }

    if (v51 >= *(v42 + 2))
    {
      break;
    }

    ++v51;
    v56 = *(v54 - 1);
    v55 = *v54;
    v54 += 16;
    v57 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v57 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v53;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v53[2] + 1, 1);
        v53 = v85[0];
      }

      v59 = v53[2];
      v58 = v53[3];
      if (v59 >= v58 >> 1)
      {
        result = sub_100061B34((v58 > 1), v59 + 1, 1);
        v53 = v85[0];
      }

      v53[2] = v59 + 1;
      v60 = &v53[2 * v59];
      v60[4] = v56;
      v60[5] = v55;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

double sub_100010190@<D0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_100056928(1);
  v6 = v5;
  v7 = a1[6];
  v21[0] = a1[5];
  v21[1] = v7;
  v8 = a1[8];
  v22 = a1[7];
  v23 = v8;
  v9 = v22;
  sub_10001071C(v21, v19);
  v10 = sub_100080B08();
  v11 = *&v21[0];
  v12 = v10;
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for LabelView(0);
  v14 = (a2 + v13[5]);
  *v14 = v4;
  v14[1] = v6;
  *(a2 + v13[6]) = v9;
  v15 = a2 + v13[7];
  *v15 = v12;
  *(v15 + 1) = v11;
  *(v15 + 8) = 0;
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v16 = (a2 + *(sub_100002840(&qword_1000AD170, &qword_1000864C8) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t sub_1000102C8@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[7];
  v20 = v9[6];
  v21 = v11;
  v22 = v9[8];
  v12 = v9[3];
  v19[2] = v9[2];
  v19[3] = v12;
  v13 = v9[5];
  v19[4] = v9[4];
  v19[5] = v13;
  v14 = v9[1];
  v19[0] = *v9;
  v19[1] = v14;
  v15 = sub_100080A78();
  v16 = v20;
  *a9 = v15;
  *(a9 + 8) = v16;
  *(a9 + 16) = 0;
  v17 = sub_100002840(&qword_1000AD100, &qword_1000863F8);
  return sub_10000F030(v19, (a9 + *(v17 + 44)));
}

uint64_t sub_10001034C()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_1000103DC()
{
  result = qword_1000AD128;
  if (!qword_1000AD128)
  {
    sub_100004FC8(&qword_1000AD120, &qword_100086448);
    sub_100004FC8(&qword_1000AD130, &qword_100086450);
    sub_100005C98(&qword_1000AD138, &qword_1000AD130, &qword_100086450, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000C3F0(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD128);
  }

  return result;
}

uint64_t sub_100010508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD110, &qword_100086408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010578(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD110, &qword_100086408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD168, &qword_100088190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010660()
{
  result = qword_1000AD178;
  if (!qword_1000AD178)
  {
    sub_100004FC8(&qword_1000AD170, &qword_1000864C8);
    sub_10000C3F0(&qword_1000ACE40, type metadata accessor for LabelView, &unk_10008BAB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD178);
  }

  return result;
}

uint64_t sub_100010754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001079C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.BooksWidget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlags.BooksWidget(_WORD *result, int a2, int a3)
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

uint64_t sub_100010938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100002840(&qword_1000ACBB8, &qword_100085CB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10000936C();
  sub_100081358();
  sub_100081358();
  sub_100010EE4(&qword_1000AD1B0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v10 = sub_100081148();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  return v10 & 1;
}

Swift::Int sub_100010AA0()
{
  sub_1000816B8();
  sub_1000816C8(0);
  return sub_1000816F8();
}

Swift::Int sub_100010B0C(uint64_t a1)
{
  sub_1000816B8();
  sub_1000816C8(0);
  return sub_1000816F8();
}

BOOL sub_100010B4C@<W0>(_BYTE *a1@<X8>, char *a2@<X0>)
{
  result = sub_100010D3C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100010B78()
{
  sub_100010CE8();

  return sub_100080578();
}

uint64_t sub_100010BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = sub_10000936C();
  v5 = sub_100010EE4(&qword_1000ACBB0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);

  return a3(a1, v4, v5);
}

unint64_t sub_100010C80()
{
  result = qword_1000AD1A0;
  if (!qword_1000AD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1A0);
  }

  return result;
}

unint64_t sub_100010CE8()
{
  result = qword_1000AD1A8;
  if (!qword_1000AD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1A8);
  }

  return result;
}

BOOL sub_100010D3C(char *a1)
{
  v2 = sub_100002840(&qword_1000ACBB8, &qword_100085CB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v3 + 16))(&v12 - v7, a1, v2);
  sub_100010CE8();
  sub_100080578();
  sub_100010EE4(&qword_1000AD1B0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v9 = sub_100081148();
  v10 = *(v3 + 8);
  v10(a1, v2);
  v10(v6, v2);
  v10(v8, v2);
  return (v9 & 1) == 0;
}

uint64_t sub_100010EE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(&qword_1000ACBB8, &qword_100085CB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WidgetBookInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetBookInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetBookInfo.progress.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WidgetBookInfo.assetID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetBookInfo.assetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *WidgetBookInfo.cloudAssetType.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t WidgetBookInfo.coverURL.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t WidgetBookInfo.coverURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

__n128 sub_100011200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100011224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001126C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000112D4()
{
  v1 = sub_100081218();
  v3 = v2;
  if (v1 == sub_100081218() && v3 == v4)
  {
    v7 = 1;
    goto LABEL_17;
  }

  v6 = sub_100081618();

  if ((v6 & 1) == 0)
  {
    if (!*(v0 + 48))
    {
      v7 = 0;
      return v7 & 1;
    }

    v8 = BDSCloudAssetTypeStoreAudiobook;
    v9 = sub_100081218();
    v11 = v10;
    if (v9 == sub_100081218() && v11 == v12)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_100081618();
    }

LABEL_17:

    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1000113EC()
{
  v1 = sub_100081218();
  v3 = v2;
  if (v1 == sub_100081218() && v3 == v4)
  {

    if (*(v0 + 48))
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  v6 = sub_100081618();

  if ((v6 & 1) == 0 || !*(v0 + 48))
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = BDSCloudAssetTypeStoreAudiobook;
  v8 = sub_100081218();
  v10 = v9;
  if (v8 == sub_100081218() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100081618();
  }

  return v13 & 1;
}

uint64_t sub_10001150C()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AD1B8);
  sub_10000A480(v0, qword_1000AD1B8);
  sub_100019DAC();
  sub_1000814E8();
  return sub_100080708();
}

uint64_t sub_1000115A4()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B7E80);
  v21[1] = sub_10000A480(v18, qword_1000B7E80);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_1000119B8()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1000801E8();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100080478();
  v62 = *(v54 - 8);
  v5 = __chkstk_darwin(v54);
  v53 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_1000811C8();
  v60 = *(v9 - 8);
  v10 = v60;
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v57 = sub_1000801F8();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AD488, &unk_100087410);
  v17 = sub_100002840(&qword_1000AD490, &qword_10008B2F0);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_100085A40;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_100081158();
  sub_100080448();
  v47 = *(v10 + 16);
  v36 = v13;
  v21 = v9;
  v47(v13, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100080208();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_10007FF18();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_10007FF48();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_100081158();
  sub_100080448();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100080208();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_10007FF48();
  v34 = sub_1000677AC(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7E98 = v34;
  return result;
}

uint64_t sub_10001217C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6369666963657073;
  }

  else
  {
    v3 = 0x6563655274736F6DLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6369666963657073;
  }

  else
  {
    v5 = 0x6563655274736F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100081618();
  }

  return v8 & 1;
}

unint64_t sub_10001222C()
{
  result = qword_1000AD1D0;
  if (!qword_1000AD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1D0);
  }

  return result;
}

Swift::Int sub_100012280()
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100012308(uint64_t a1)
{
  sub_100081298();
}

Swift::Int sub_10001237C(uint64_t a1)
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

void sub_10001240C(uint64_t *a1@<X8>)
{
  v2 = 0x6563655274736F6DLL;
  if (*v1)
  {
    v2 = 0x6369666963657073;
  }

  v3 = 0xEA0000000000746ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100012454()
{
  result = qword_1000AD1D8;
  if (!qword_1000AD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1D8);
  }

  return result;
}

unint64_t sub_1000124AC()
{
  result = qword_1000AD1E0;
  if (!qword_1000AD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1E0);
  }

  return result;
}

unint64_t sub_100012504()
{
  result = qword_1000AD1E8;
  if (!qword_1000AD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1E8);
  }

  return result;
}

unint64_t sub_100012568()
{
  result = qword_1000AD1F0;
  if (!qword_1000AD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1F0);
  }

  return result;
}

unint64_t sub_1000125C0()
{
  result = qword_1000AD1F8;
  if (!qword_1000AD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1F8);
  }

  return result;
}

unint64_t sub_100012614()
{
  result = qword_1000AD200;
  if (!qword_1000AD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD200);
  }

  return result;
}

unint64_t sub_10001266C()
{
  result = qword_1000AD208;
  if (!qword_1000AD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD208);
  }

  return result;
}

unint64_t sub_100012710()
{
  result = qword_1000AD210;
  if (!qword_1000AD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD210);
  }

  return result;
}

uint64_t sub_100012768(uint64_t a1)
{
  v2 = sub_100012710();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000127B8()
{
  result = qword_1000AD218;
  if (!qword_1000AD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD218);
  }

  return result;
}

unint64_t sub_100012810()
{
  result = qword_1000AD220;
  if (!qword_1000AD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD220);
  }

  return result;
}

unint64_t sub_100012868()
{
  result = qword_1000AD228;
  if (!qword_1000AD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD228);
  }

  return result;
}

uint64_t sub_1000128E0(uint64_t a1)
{
  v2 = sub_10001266C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100012984()
{
  result = qword_1000AD240;
  if (!qword_1000AD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD240);
  }

  return result;
}

unint64_t sub_1000129DC()
{
  result = qword_1000AD248;
  if (!qword_1000AD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD248);
  }

  return result;
}

uint64_t sub_100012A68()
{
  v0 = sub_1000801E8();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1000801F8();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100080478();
  v5 = *(v23 - 8);
  v6 = __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000811C8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v22 = v3;
  sub_10000A794(v3, qword_1000B7EA0);
  v21 = sub_10000A480(v3, qword_1000B7EA0);
  sub_100081158();
  sub_100080448();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v8, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100080208();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_100012E54@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100002840(&qword_1000AD438, &qword_1000873B0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = __chkstk_darwin(v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v25 - v5;
  v6 = sub_100002840(&qword_1000AD440, &qword_1000873B8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v25[3] = sub_100019E98();
  v14 = sub_100012614();
  v25[2] = sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080158();
  v25[1] = sub_100005C98(&qword_1000AD458, &qword_1000AD440, &qword_1000873B8, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  sub_100080128();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_100080158();
  sub_100080128();
  v36(v15, v6);
  v16 = v30;
  sub_1000801A8();
  sub_100005C98(&qword_1000AD460, &qword_1000AD438, &qword_1000873B0, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_100080128();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_100080118();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_100013320@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100002840(&qword_1000AD468, &qword_1000873C8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002840(&qword_1000AD470, &qword_1000873D0);
  __chkstk_darwin(v2);
  v3 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100019E98();
  sub_10007FFE8();
  v13._countAndFlagsBits = 0x206E65704FLL;
  v13._object = 0xE500000000000000;
  sub_10007FFD8(v13);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD478, &qword_1000873D8);
  sub_10007FFC8();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_10007FFD8(v14);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD480, &qword_100087408);
  sub_10007FFC8();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10007FFD8(v15);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080098();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_100080088();
  return (v10)(v9, v3);
}

uint64_t sub_100013658@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100002840(&qword_1000AD468, &qword_1000873C8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002840(&qword_1000AD470, &qword_1000873D0);
  __chkstk_darwin(v2);
  v3 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100019E98();
  sub_10007FFE8();
  v13._countAndFlagsBits = 0x206E65704FLL;
  v13._object = 0xE500000000000000;
  sub_10007FFD8(v13);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD478, &qword_1000873D8);
  sub_10007FFC8();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_10007FFD8(v14);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080098();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_100080088();
  return (v10)(v9, v3);
}

uint64_t sub_10001398C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002840(&qword_1000AD428, &qword_1000873A8);
  v5 = sub_100005C98(&qword_1000AD430, &qword_1000AD428, &qword_1000873A8, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_100012E54, 0, v4, a2, v5);
}

uint64_t sub_100013A58(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000813C8();
  *(v1 + 24) = sub_1000813B8();
  v3 = sub_1000813A8();

  return _swift_task_switch(sub_100013AF0, v3, v2);
}

uint64_t sub_100013AF0()
{

  sub_10007FC28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018218();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100013B88(uint64_t a1)
{
  v2 = sub_100019E98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100013BC4()
{
  result = qword_1000AD250;
  if (!qword_1000AD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD250);
  }

  return result;
}

uint64_t sub_100013C18()
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  qword_1000B7EB8 = result;
  return result;
}

uint64_t sub_100013C88()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B7EC0);
  v21[1] = sub_10000A480(v18, qword_1000B7EC0);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_100014090@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v1 - 8);
  v19[0] = v19 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = sub_1000801F8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  sub_10007FC58();
  if (!v20)
  {
  }

  sub_1000801D8();
  v16 = *(v10 + 56);
  v16(v8, 1, 1, v9);
  sub_10007FC58();
  if (v20)
  {
    sub_1000801D8();
    sub_100005B2C(v8, &qword_1000AD3C8, &qword_100087330);
    v16(v6, 0, 1, v9);
    sub_10000C1E0(v6, v8, &qword_1000AD3C8, &qword_100087330);
  }

  (*(v10 + 16))(v13, v15, v9);
  sub_1000055FC(v8, v6, &qword_1000AD3C8, &qword_100087330);
  v17 = sub_10007FF18();
  (*(*(v17 - 8) + 56))(v19[0], 1, 1, v17);
  sub_10007FF48();
  sub_100005B2C(v8, &qword_1000AD3C8, &qword_100087330);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1000143C4()
{
  v0 = sub_100002840(&qword_1000AD3F8, &qword_100087358);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  v4 = sub_100002840(&qword_1000AD400, &unk_100087360);
  __chkstk_darwin(v4);
  v5 = sub_100002840(&qword_1000AD3F0, &qword_100087350);
  sub_10000A794(v5, qword_1000B7ED8);
  sub_10000A480(v5, qword_1000B7ED8);
  sub_100013BC4();
  sub_100080058();
  v8._object = 0x80000001000823C0;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_100080048(v8);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100080038();
  (*(v1 + 8))(v3, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100080048(v9);
  return sub_100080068();
}

unint64_t sub_1000145D0()
{
  result = qword_1000AD258;
  if (!qword_1000AD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD258);
  }

  return result;
}

uint64_t sub_100014624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC630 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AD3F0, &qword_100087350);
  v3 = sub_10000A480(v2, qword_1000B7ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000146DC()
{
  result = qword_1000AD260;
  if (!qword_1000AD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD260);
  }

  return result;
}

unint64_t sub_100014734()
{
  result = qword_1000AD268;
  if (!qword_1000AD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD268);
  }

  return result;
}

unint64_t sub_10001478C()
{
  result = qword_1000AD270;
  if (!qword_1000AD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD270);
  }

  return result;
}

unint64_t sub_1000147E4()
{
  result = qword_1000AD278;
  if (!qword_1000AD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD278);
  }

  return result;
}

uint64_t sub_100014844@<X0>(void *a1@<X8>)
{
  if (qword_1000AC620 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000B7EB8;
}

uint64_t sub_1000148B4(uint64_t a1)
{
  sub_100019E44();
  v2 = sub_100080008();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100014924()
{
  result = qword_1000AD280;
  if (!qword_1000AD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD280);
  }

  return result;
}

unint64_t sub_10001497C()
{
  result = qword_1000AD288;
  if (!qword_1000AD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD288);
  }

  return result;
}

unint64_t sub_1000149D4()
{
  result = qword_1000AD290;
  if (!qword_1000AD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD290);
  }

  return result;
}

unint64_t sub_100014A2C()
{
  result = qword_1000AD298;
  if (!qword_1000AD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD298);
  }

  return result;
}

uint64_t sub_100014A8C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100014B18(uint64_t a1)
{
  v2 = sub_100013BC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100014B68()
{
  result = qword_1000AD2B0;
  if (!qword_1000AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2B0);
  }

  return result;
}

uint64_t sub_100014BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000074F4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100014C84(uint64_t a1)
{
  v2 = sub_100014A2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014CD0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100019F7C, 0, 0);
}

unint64_t sub_100014CF8()
{
  result = qword_1000AD2B8;
  if (!qword_1000AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2B8);
  }

  return result;
}

unint64_t sub_100014D50()
{
  result = qword_1000AD2C0;
  if (!qword_1000AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2C0);
  }

  return result;
}

uint64_t sub_100014DA4@<X0>(uint64_t *a1@<X8>)
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  *a1 = result;
  return result;
}

uint64_t sub_100014E40()
{
  sub_10007FAA8();
  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

uint64_t sub_100014EAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100014ED0, 0, 0);
}

uint64_t sub_100014ED0()
{
  v1 = *(v0 + 16);
  sub_10007FAA8();
  *v1 = _swiftEmptyArrayStorage;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100015000;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100015000(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100015104()
{
  result = qword_1000AD2C8;
  if (!qword_1000AD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2C8);
  }

  return result;
}

unint64_t sub_10001515C()
{
  result = qword_1000AD2D0;
  if (!qword_1000AD2D0)
  {
    sub_100004FC8(&qword_1000AD2D8, qword_100086DD0);
    sub_1000149D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2D0);
  }

  return result;
}

uint64_t sub_1000151E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000147E4();
  *v5 = v2;
  v5[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000AB6C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10001534C()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B7EF0);
  v21[1] = sub_10000A480(v18, qword_1000B7EF0);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_100015764()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1000801E8();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100080478();
  v62 = *(v54 - 8);
  v5 = __chkstk_darwin(v54);
  v53 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_1000811C8();
  v60 = *(v9 - 8);
  v10 = v60;
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v57 = sub_1000801F8();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AD3D0, &qword_100087338);
  v17 = sub_100002840(&qword_1000AD3D8, &qword_100087340);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_100085A40;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_100081158();
  sub_100080448();
  v47 = *(v10 + 16);
  v36 = v13;
  v21 = v9;
  v47(v13, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100080208();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_10007FF18();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_10007FF48();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_100081158();
  sub_100080448();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100080208();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_10007FF48();
  v34 = sub_100067994(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7F08 = v34;
  return result;
}

uint64_t sub_100015F04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710384;
  }

  else
  {
    v3 = 1802465122;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710384;
  }

  else
  {
    v5 = 1802465122;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100081618();
  }

  return v8 & 1;
}

unint64_t sub_100015FA0()
{
  result = qword_1000AD2E0;
  if (!qword_1000AD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2E0);
  }

  return result;
}

Swift::Int sub_100015FF4()
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100016068(uint64_t a1)
{
  sub_100081298();
}

Swift::Int sub_1000160C8(uint64_t a1)
{
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100016144@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000815F8(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_1000161A0(uint64_t *a1@<X8>)
{
  v2 = 1802465122;
  if (*v1)
  {
    v2 = 6710384;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000161D4()
{
  result = qword_1000AD2E8;
  if (!qword_1000AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2E8);
  }

  return result;
}

unint64_t sub_10001622C()
{
  result = qword_1000AD2F0;
  if (!qword_1000AD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2F0);
  }

  return result;
}

unint64_t sub_100016284()
{
  result = qword_1000AD2F8;
  if (!qword_1000AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2F8);
  }

  return result;
}

unint64_t sub_1000162DC()
{
  result = qword_1000AD300;
  if (!qword_1000AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD300);
  }

  return result;
}

unint64_t sub_100016334()
{
  result = qword_1000AD308;
  if (!qword_1000AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD308);
  }

  return result;
}

unint64_t sub_10001638C()
{
  result = qword_1000AD310;
  if (!qword_1000AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD310);
  }

  return result;
}

unint64_t sub_1000163E4()
{
  result = qword_1000AD318;
  if (!qword_1000AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD318);
  }

  return result;
}

uint64_t sub_100016470@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000A480(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100016584()
{
  result = qword_1000AD320;
  if (!qword_1000AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD320);
  }

  return result;
}

uint64_t sub_1000165D8(uint64_t a1)
{
  v2 = sub_100016584();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016628()
{
  result = qword_1000AD328;
  if (!qword_1000AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD328);
  }

  return result;
}

unint64_t sub_100016680()
{
  result = qword_1000AD330;
  if (!qword_1000AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD330);
  }

  return result;
}

unint64_t sub_1000166D8()
{
  result = qword_1000AD338;
  if (!qword_1000AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD338);
  }

  return result;
}

uint64_t sub_100016750(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1000167B4(uint64_t a1)
{
  v2 = sub_1000163E4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016858()
{
  result = qword_1000AD350;
  if (!qword_1000AD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD350);
  }

  return result;
}

void sub_1000168AC(uint64_t a1)
{
  sub_100081298();
  sub_10007FC58();
  if (v1)
  {
    sub_1000816D8(1u);
    sub_100081298();
  }

  else
  {
    sub_1000816D8(0);
  }

  sub_10007FC58();
  if (v1)
  {
    sub_1000816D8(1u);
    sub_100081298();
  }

  else
  {
    sub_1000816D8(0);
  }
}

Swift::Int sub_100016988()
{
  sub_1000816B8();
  sub_1000168AC(v1);
  return sub_1000816F8();
}

Swift::Int sub_1000169CC(uint64_t a1)
{
  sub_1000816B8();
  sub_1000168AC(v2);
  return sub_1000816F8();
}

uint64_t sub_100016A08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10001808C(v9, v10) & 1;
}

uint64_t sub_100016A80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = sub_100080308();
  v15 = *(*(v14 - 8) + 56);
  if (v13)
  {
    v16 = *(v14 - 8);
    v15(v11, 1, 1, v14);
    sub_1000055FC(v11, v9, &qword_1000AD3B0, &unk_100087320);
    if ((*(v16 + 48))(v9, 1, v14) == 1)
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v12, v13, 0, v6);
      sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v6, v11, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
    }

    return sub_10000C1E0(v11, a1, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {

    return (v15)(a1, 1, 1, v14);
  }
}

uint64_t sub_100016CC0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_100002840(&qword_1000AD388, &qword_1000872F8);
  __chkstk_darwin(v19);
  v2 = &v16 - v1;
  v3 = sub_100080608();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100002840(&qword_1000AD390, &qword_100087300);
  v18 = *(v4 - 8);
  v5 = v18;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v20 = sub_100002840(&qword_1000AD398, &qword_100087308);
  v17 = *(v20 - 8);
  v8 = v17;
  __chkstk_darwin(v20);
  v10 = &v16 - v9;
  sub_1000805E8();
  sub_100017F78();
  sub_100080588();
  sub_100005C98(&qword_1000AD3A8, &qword_1000AD390, &qword_100087300, &protocol conformance descriptor for DataRepresentation<A>);
  sub_100080598();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1000805F8();
  sub_100080588();
  v12 = *(v19 + 48);
  v13 = *(v8 + 16);
  v14 = v20;
  v13(v2, v10, v20);
  (*(v18 + 16))(&v2[v12], v7, v4);
  sub_1000805A8();
  v11(v7, v4);
  return (*(v17 + 8))(v10, v14);
}

uint64_t sub_100017030(_OWORD *a1)
{
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  *(v1 + 112) = swift_task_alloc();
  v3 = sub_100080308();
  *(v1 + 120) = v3;
  *(v1 + 128) = *(v3 - 8);
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v4 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v4;
  v5 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v5;
  v6 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_10001714C, 0, 0);
}

uint64_t sub_10001714C()
{
  v35 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100016A80(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005B2C(v0[14], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC600 != -1)
    {
      swift_once();
    }

    v4 = sub_1000806F8();
    sub_10000A480(v4, qword_1000AD1B8);
    v5 = sub_1000806D8();
    v6 = sub_100081438();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v34);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_100019DF8(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    if (qword_1000AC600 != -1)
    {
      swift_once();
    }

    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AD1B8);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_1000806D8();
    v17 = sub_100081438();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];
    if (v18)
    {
      v33 = v0[15];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v34);
      *(v22 + 12) = 2080;
      v23 = sub_100080278();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v33);
      v27 = sub_10006150C(v23, v25, &v34);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[18];
    v29 = v0[15];
    v9 = sub_100080298();
    v10 = v30;
    v26(v28, v29);
  }

  v31 = v0[1];

  return v31(v9, v10);
}

BOOL sub_100017560(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = sub_100080308();
  v17 = *(*(v16 - 8) + 56);
  if (v15)
  {
    v18 = *(v16 - 8);
    v17(v11, 1, 1, v16);
    sub_1000055FC(v11, v8, &qword_1000AD3B0, &unk_100087320);
    v19 = *(v18 + 48);
    if (v19(v8, 1, v16) == 1)
    {
      sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v14, v15, 0, v5);
      sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v5, v11, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }

    sub_10000C1E0(v11, v13, &qword_1000AD3B0, &unk_100087320);
    v20 = v19(v13, 1, v16) != 1;
  }

  else
  {
    v17(v13, 1, 1, v16);
    v20 = 0;
  }

  sub_100005B2C(v13, &qword_1000AD3B0, &unk_100087320);
  return v20;
}

uint64_t sub_1000177DC(_OWORD *a1)
{
  v3 = sub_100081248();
  *(v1 + 144) = v3;
  *(v1 + 152) = *(v3 - 8);
  *(v1 + 160) = swift_task_alloc();
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  *(v1 + 168) = swift_task_alloc();
  v4 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v4;
  v5 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v5;
  v6 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_1000178EC, 0, 0);
}

uint64_t sub_1000178EC(uint64_t a1)
{
  v25 = v1;
  v2 = v1[21];
  sub_10007FC58();
  v3 = v1[14];
  v4 = v1[15];
  sub_10007FC58();
  v5 = v1[16];
  v6 = v1[17];
  sub_100016A80(v2);
  v7 = sub_100044E44(v3, v4, v5, v6, v2);
  v9 = v8;

  sub_100005B2C(v2, &qword_1000AD3B0, &unk_100087320);
  if (qword_1000AC600 != -1)
  {
    swift_once();
  }

  v10 = sub_1000806F8();
  sub_10000A480(v10, qword_1000AD1B8);

  v11 = sub_1000806D8();
  v12 = sub_100081438();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v24);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10006150C(v7, v9, &v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s -- .text: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v1[20];
  v15 = v1[18];
  v16 = v1[19];
  sub_100081238();
  v17 = sub_100081228();
  v19 = v18;

  (*(v16 + 8))(v14, v15);
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (v19 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v19;
  }

  v22 = v1[1];

  return v22(v20, v21);
}

__n128 sub_100017BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100017BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100017C2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100017C94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017CA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100017CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100017F78()
{
  result = qword_1000AD3A0;
  if (!qword_1000AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3A0);
  }

  return result;
}

uint64_t sub_100017FEC()
{
  v1 = *(v0 + 16);
  v2 = sub_100080308();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001808C(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_100081618() & 1) != 0)
  {
    sub_10007FC58();
    sub_10007FC58();
    if (v5)
    {
    }

    sub_10007FC58();
    sub_10007FC58();
    if (v5)
    {

      v3 = 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100018218()
{
  v80 = sub_100080078();
  v89 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v62 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v2 = __chkstk_darwin(v1 - 8);
  v77 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = &v62 - v4;
  v5 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v5 - 8);
  v88 = &v62 - v6;
  v92 = sub_1000801E8();
  v97 = *(v92 - 8);
  __chkstk_darwin(v92);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_100080478();
  v98 = *(v90 - 8);
  v9 = v98;
  v10 = __chkstk_darwin(v90);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = sub_1000811C8();
  v81 = v15;
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v79 = sub_1000801F8();
  v85 = *(v79 - 8);
  v22 = __chkstk_darwin(v79);
  v71 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v75 = &v62 - v24;
  v70 = sub_100002840(&qword_1000AD418, &qword_100087370);
  sub_100081158();
  sub_100080448();
  v25 = *(v16 + 16);
  v84 = v16 + 16;
  v93 = v25;
  v25(v19, v21, v15);
  v26 = *(v9 + 16);
  v87 = v9 + 16;
  v96 = v26;
  v73 = v12;
  v27 = v90;
  v26(v12, v14, v90);
  v94 = type metadata accessor for BundleFinder();
  *v8 = v94;
  v86 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v97 + 104);
  v97 += 104;
  v95 = v28;
  v29 = v92;
  v28(v8);
  v30 = v8;
  sub_100080208();
  v91 = *(v98 + 8);
  v98 += 8;
  v91(v14, v27);
  v83 = *(v16 + 8);
  v31 = v81;
  v83(v21, v81);
  v82 = v16 + 8;
  v32 = v21;
  sub_100081158();
  sub_100080448();
  v72 = v19;
  v93(v19, v21, v31);
  v33 = v90;
  v96(v73, v14, v90);
  *v30 = v94;
  v74 = v30;
  v95(v30, v86, v29);
  v34 = v88;
  sub_100080208();
  v35 = v14;
  v91(v14, v33);
  v36 = v31;
  v83(v32, v31);
  v37 = *(v85 + 56);
  v85 += 56;
  v63 = v37;
  v37(v34, 0, 1, v79);
  LOBYTE(v99) = 0;
  v38 = sub_10007FBF8();
  v65 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v66 = v40;
  v67 = v39 + 56;
  v40(v76, 1, 1, v38);
  v40(v77, 1, 1, v38);
  v68 = enum case for InputConnectionBehavior.default(_:);
  v41 = *(v89 + 104);
  v89 += 104;
  v69 = v41;
  v41(v78);
  sub_100012710();
  v70 = sub_10007FD18();
  v64 = sub_100002840(&qword_1000AD420, &qword_100087378);
  v42 = v32;
  sub_100081158();
  sub_100080448();
  v93(v72, v32, v36);
  v43 = v73;
  v44 = v90;
  v96(v73, v35, v90);
  v45 = v74;
  v46 = v95;
  *v74 = v94;
  v47 = v86;
  v46(v45, v86, v92);
  sub_100080208();
  v48 = v35;
  v91(v35, v44);
  v62 = v42;
  v49 = v81;
  v50 = v83;
  v83(v42, v81);
  sub_100081158();
  sub_100080448();
  v51 = v72;
  v93(v72, v42, v49);
  v52 = v90;
  v96(v43, v48, v90);
  v53 = v74;
  v54 = v95;
  *v74 = v94;
  v54(v53, v47, v92);
  v55 = v88;
  sub_100080208();
  v91(v48, v52);
  v56 = v62;
  v57 = v81;
  v50(v62, v81);
  v63(v55, 0, 1, v79);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  sub_100081158();
  sub_100080448();
  v93(v51, v56, v57);
  v96(v43, v48, v52);
  *v53 = v94;
  v95(v53, v86, v92);
  sub_100080208();
  v91(v48, v52);
  v83(v56, v57);
  v58 = v76;
  sub_10007FC08();
  v59 = v65;
  v60 = v66;
  v66(v58, 0, 1, v65);
  v60(v77, 1, 1, v59);
  v69(v78, v68, v80);
  sub_100013BC4();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v99 = 0u;
  v100 = 0u;
  *&v101 = 0;
  sub_10007FAE8();
  sub_10007FAB8();
  return v70;
}

uint64_t sub_100018F28(int a1, _OWORD *a2)
{
  v79 = a2;
  v78 = a1;
  v88 = sub_100080078();
  v99 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v4 = __chkstk_darwin(v3 - 8);
  v85 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = &v67 - v6;
  v7 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v7 - 8);
  v98 = &v67 - v8;
  v91 = sub_1000801E8();
  v107 = *(v91 - 8);
  __chkstk_darwin(v91);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_100080478();
  v11 = *(v100 - 8);
  v12 = __chkstk_darwin(v100);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v17 = sub_1000811C8();
  v81 = v17;
  v106 = *(v17 - 8);
  v18 = v106;
  v19 = __chkstk_darwin(v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v87 = sub_1000801F8();
  v93 = *(v87 - 8);
  v24 = __chkstk_darwin(v87);
  v77 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v67 - v26;
  v76 = sub_100002840(&qword_1000AD418, &qword_100087370);
  sub_100081158();
  sub_100080448();
  v27 = *(v18 + 16);
  v90 = v18 + 16;
  v102 = v27;
  v27(v21, v23, v17);
  v28 = *(v11 + 16);
  v96 = v11 + 16;
  v97 = v28;
  v89 = v14;
  v29 = v100;
  v28(v14, v16, v100);
  v103 = type metadata accessor for BundleFinder();
  *v10 = v103;
  v105 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v107 + 104);
  v107 += 104;
  v104 = v30;
  v31 = v91;
  v30(v10);
  sub_100080208();
  v94 = *(v11 + 8);
  v95 = v11 + 8;
  v94(v16, v29);
  v32 = v106 + 8;
  v101 = *(v106 + 8);
  v33 = v81;
  v101(v23, v81);
  v106 = v32;
  v34 = v23;
  sub_100081158();
  sub_100080448();
  v82 = v21;
  v102(v21, v23, v33);
  v68 = v16;
  v35 = v100;
  v97(v89, v16, v100);
  *v10 = v103;
  v83 = v10;
  v104(v10, v105, v31);
  v36 = v98;
  sub_100080208();
  v94(v16, v35);
  v37 = v34;
  v101(v34, v33);
  v38 = *(v93 + 56);
  v93 += 56;
  v69 = v38;
  v38(v36, 0, 1, v87);
  LOBYTE(v109) = 0;
  v39 = sub_10007FBF8();
  v71 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v72 = v41;
  v73 = v40 + 56;
  v41(v84, 1, 1, v39);
  v41(v85, 1, 1, v39);
  v74 = enum case for InputConnectionBehavior.default(_:);
  v42 = *(v99 + 104);
  v99 += 104;
  v75 = v42;
  v42(v86);
  sub_100012710();
  v76 = sub_10007FD18();
  v70 = sub_100002840(&qword_1000AD420, &qword_100087378);

  v80 = v34;
  sub_100081158();
  v43 = v68;
  sub_100080448();
  v44 = v82;
  v102(v82, v37, v33);
  v45 = v100;
  v46 = v97;
  v97(v89, v43, v100);
  v47 = v83;
  *v83 = v103;
  v48 = v91;
  v104(v47, v105, v91);
  sub_100080208();
  v49 = v94;
  v94(v43, v45);
  v50 = v80;
  v51 = v81;
  v101(v80, v81);
  sub_100081158();
  sub_100080448();
  v102(v44, v50, v51);
  v52 = v89;
  v53 = v100;
  v46(v89, v43, v100);
  v54 = v83;
  *v83 = v103;
  v104(v54, v105, v48);
  v55 = v98;
  v56 = v82;
  sub_100080208();
  v49(v43, v53);
  v57 = v80;
  v101(v80, v51);
  v69(v55, 0, 1, v87);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  sub_100081158();
  sub_100080448();
  v102(v56, v57, v51);
  v97(v52, v43, v53);
  *v54 = v103;
  v104(v54, v105, v91);
  sub_100080208();
  v94(v43, v53);
  v101(v57, v51);
  v58 = v84;
  sub_10007FC08();
  v59 = v71;
  v60 = v72;
  v72(v58, 0, 1, v71);
  v60(v85, 1, 1, v59);
  v75(v86, v74, v88);
  sub_100013BC4();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v109 = 0u;
  v110 = 0u;
  *&v111 = 0;

  sub_10007FAE8();
  sub_10007FAB8();
  LOBYTE(v109) = v78 & 1;

  v61 = v76;
  sub_10007FCF8();
  v62 = v79;
  v63 = v79[3];
  v111 = v79[2];
  v112 = v63;
  v64 = v79[5];
  v113 = v79[4];
  v114 = v64;
  v65 = v79[1];
  v109 = *v79;
  v110 = v65;
  sub_1000055FC(v79, v108, &qword_1000AD498, &qword_100087420);
  sub_10007FCF8();
  sub_100005B2C(v62, &qword_1000AD498, &qword_100087420);

  return v61;
}

unint64_t sub_100019DAC()
{
  result = qword_1000AD3B8;
  if (!qword_1000AD3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AD3B8);
  }

  return result;
}

uint64_t sub_100019DF8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100019E44()
{
  result = qword_1000AD3E8;
  if (!qword_1000AD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3E8);
  }

  return result;
}

unint64_t sub_100019E98()
{
  result = qword_1000AD408;
  if (!qword_1000AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD408);
  }

  return result;
}

uint64_t sub_100019EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FD08();
  *a1 = result;
  return result;
}

uint64_t sub_100019F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FD08();
  *a1 = result;
  return result;
}

uint64_t sub_100019F80()
{
  v0 = type metadata accessor for WidgetDataCacheManager();
  result = swift_allocObject();
  qword_1000B7F28 = v0;
  unk_1000B7F30 = &off_1000A7B08;
  qword_1000B7F10[0] = result;
  return result;
}

void sub_100019FCC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1000B7F38 = v2;
}

Swift::Int sub_10001A044()
{
  v1 = *v0;
  sub_1000816B8();
  sub_1000816C8(v1);
  return sub_1000816F8();
}

Swift::Int sub_10001A0B8(uint64_t a1)
{
  v2 = *v1;
  sub_1000816B8();
  sub_1000816C8(v2);
  return sub_1000816F8();
}

uint64_t sub_10001A10C(uint64_t a1)
{
  v1 = sub_100080688();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000AC660 != -1)
  {
    swift_once();
  }

  v9 = sub_100080678();
  sub_10000A480(v9, qword_1000AD4B8);
  v10 = sub_100080668();
  sub_100080698();
  v11 = sub_100081488();
  if (sub_1000814D8())
  {

    sub_1000806C8();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_100080628();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "Raw Cover Fetching", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10001A398(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10001A3E4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005554((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100002840(&qword_1000AD580, &qword_1000874A0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001A4BC(uint64_t a1, void *a2)
{
  v3 = sub_100005554((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001A544()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AD4A0);
  sub_10000A480(v0, qword_1000AD4A0);
  return sub_1000806E8();
}

uint64_t sub_10001A5C4()
{
  v0 = sub_1000806F8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100080678();
  sub_10000A794(v4, qword_1000AD4B8);
  sub_10000A480(v4, qword_1000AD4B8);
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A480(v0, qword_1000AD4A0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100080658();
}

uint64_t sub_10001A700(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 152) = a1;
  v6 = sub_100080308();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10001A7D4, 0, 0);
}

uint64_t sub_10001A7D4()
{
  v33 = v0;
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 27);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 19);
  v5 = sub_1000806F8();
  *(v0 + 28) = sub_10000A480(v5, qword_1000AD4A0);
  v6 = *(v3 + 16);
  *(v0 + 29) = v6;
  *(v0 + 30) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = sub_1000806D8();
  v8 = sub_100081468();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 27);
  v12 = *(v0 + 24);
  v11 = *(v0 + 25);
  if (v9)
  {
    v14 = *(v0 + 20);
    v13 = *(v0 + 21);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10006150C(v14, v13, &v32);
    *(v15 + 12) = 2080;
    v16 = sub_100080288();
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v10, v12);
    v20 = sub_10006150C(v16, v18, &v32);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Generating a thumbnail from QuickLook for assetID: %s, url: %s.", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
  }

  *(v0 + 31) = v19;
  if (qword_1000AC650 != -1)
  {
    swift_once();
  }

  v22 = v0[22];
  v21 = v0[23];
  v23 = *&qword_1000B7F38;
  v24 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_1000802A8(v25);
  v27 = v26;
  v28 = [v24 initWithFileAtURL:v26 size:-1 scale:v22 representationTypes:{v21, v23}];
  *(v0 + 32) = v28;

  v29 = [objc_opt_self() sharedGenerator];
  *(v0 + 33) = v29;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_10001AB9C;
  v30 = swift_continuation_init();
  *(v0 + 17) = sub_100002840(&qword_1000AD578, &qword_100087498);
  *(v0 + 10) = _NSConcreteStackBlock;
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_10001A3E4;
  *(v0 + 13) = &unk_1000A76A0;
  *(v0 + 14) = v30;
  [v29 generateBestRepresentationForRequest:v28 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AB9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_10001AD80;
  }

  else
  {
    v2 = sub_10001ACAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001ACAC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 144);

  v3 = [v2 UIImage];
  v4 = [v2 type];

  v5 = *(v0 + 8);

  return v5(v3, v4 == 0);
}

uint64_t sub_10001AD80()
{
  v24 = v0;
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[19];
  swift_willThrow();

  v3(v4, v6, v5);

  v7 = sub_1000806D8();
  v8 = sub_100081448();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  v11 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v14 = v0[20];
    v13 = v0[21];
    v15 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10006150C(v14, v13, v23);
    *(v15 + 12) = 2080;
    v16 = sub_100080288();
    v18 = v17;
    v10(v11, v12);
    v19 = sub_10006150C(v16, v18, v23);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to download a thumbnail from QuickLook for assetID: %s, url: %s.", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  sub_10001EF88();
  swift_allocError();
  *v20 = 3;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10001AFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = a6;
  *(v6 + 192) = a3;
  *(v6 + 200) = a4;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  *(v6 + 224) = swift_task_alloc();
  v7 = sub_100080308();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10001B0E4, 0, 0);
}

uint64_t sub_10001B0E4()
{
  v41 = v1;
  if (qword_1000AC650 != -1)
  {
    swift_once();
  }

  v2 = v1[22];
  v3 = v1[23];
  v1[32] = qword_1000B7F38;
  sub_1000814B8();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = 8222587;
  v1[5] = 0xE300000000000000;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  if (v4 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v1[20] = v4;
  v1[6] = sub_100081608();
  v1[7] = v7;
  v0 = sub_1000057D0();
  v2 = &type metadata for String;
  v8 = sub_100081538();
  v10 = v9;

  v1[8] = v8;
  v1[9] = v10;
  v1[10] = 8218747;
  v1[11] = 0xE300000000000000;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = v1[29];
  v12 = v1[30];
  v13 = v1[28];
  v1[21] = v6;
  v1[12] = sub_100081608();
  v1[13] = v14;
  v15 = sub_100081538();
  v17 = v16;

  v1[14] = v15;
  v1[15] = v17;
  v1[16] = 8218235;
  v1[17] = 0xE300000000000000;
  v1[18] = 6778986;
  v1[19] = 0xE300000000000000;
  v38 = v0;
  v39 = v0;
  v37 = v0;
  v0 = sub_100081538();
  v2 = v18;

  v1[33] = v0;
  v1[34] = v2;
  sub_1000802E8();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_100005B2C(v1[28], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC658 == -1)
    {
LABEL_11:
      v19 = sub_1000806F8();
      sub_10000A480(v19, qword_1000AD4A0);

      v20 = sub_1000806D8();
      v21 = sub_100081448();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = v1[24];
        v22 = v1[25];
        v24 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_10006150C(v23, v22, v40);
        *(v24 + 12) = 2080;
        v25 = sub_10006150C(v0, v2, v40);

        *(v24 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid cover URL for assetID: %s, url: %s.", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_10001EF88();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();

      v35 = v1[1];

      return v35();
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  (*(v1[30] + 32))(v1[31], v1[28], v1[29]);
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v26 = sub_1000806F8();
  v1[35] = sub_10000A480(v26, qword_1000AD4A0);

  v27 = sub_1000806D8();
  v28 = sub_100081468();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v1[24];
    v29 = v1[25];
    v31 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_10006150C(v30, v29, v40);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_10006150C(v0, v2, v40);
    _os_log_impl(&_mh_execute_header, v27, v28, "Downloading cover image for asset '%s' from url %s.", v31, 0x16u);
    swift_arrayDestroy();
  }

  v1[36] = [objc_opt_self() sharedSession];
  v32 = swift_task_alloc();
  v1[37] = v32;
  *v32 = v1;
  v32[1] = sub_10001B7CC;
  v33 = v1[31];

  return NSURLSession.data(from:delegate:)(v33, 0);
}

uint64_t sub_10001B7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[38] = a1;
  v6[39] = a2;
  v6[40] = a3;
  v6[41] = v3;

  if (v3)
  {

    v7 = sub_10001BD9C;
  }

  else
  {
    v7 = sub_10001B91C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001B91C()
{
  v41 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 statusCode] == 200)
  {
    v3 = *(v0 + 38);
    v2 = *(v0 + 39);
    v4 = v0[32];

    v5 = objc_allocWithZone(UIImage);
    sub_10001F128(v3, v2);
    isa = sub_100080328().super.isa;
    v7 = [v5 initWithData:isa scale:v4];

    sub_10001F0D4(v3, v2);
    if (v7)
    {
      v8 = *(v0 + 39);
      v9 = *(v0 + 40);
      v10 = *(v0 + 38);
      (*(*(v0 + 30) + 8))(*(v0 + 31), *(v0 + 29));
      sub_10001F0D4(v10, v8);

      v11 = *(v0 + 1);

      return v11(v7);
    }

    v30 = sub_1000806D8();
    v31 = sub_100081448();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 24);
      v32 = *(v0 + 25);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10006150C(v33, v32, &v40);
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to create UIImage from downloaded image data for assetID %s.", v34, 0xCu);
      sub_100019DF8(v35);
    }

    v36 = *(v0 + 39);
    v37 = *(v0 + 40);
    v38 = *(v0 + 38);
    v26 = *(v0 + 30);
    v25 = *(v0 + 31);
    v27 = *(v0 + 29);
    sub_10001EF88();
    swift_allocError();
    *v39 = 5;
    swift_willThrow();

    sub_10001F0D4(v38, v36);
  }

  else
  {

    v13 = sub_1000806D8();
    v14 = sub_100081448();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 34);
    if (v15)
    {
      v17 = *(v0 + 33);
      v19 = *(v0 + 24);
      v18 = *(v0 + 25);
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_10006150C(v19, v18, &v40);
      *(v20 + 12) = 2080;
      v21 = sub_10006150C(v17, v16, &v40);

      *(v20 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Cover httpResponse status code is not 200 for assetID: %s, url: %s.", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v22 = *(v0 + 39);
    v23 = *(v0 + 40);
    v24 = *(v0 + 38);
    v26 = *(v0 + 30);
    v25 = *(v0 + 31);
    v27 = *(v0 + 29);
    sub_10001EF88();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    sub_10001F0D4(v24, v22);
  }

  (*(v26 + 8))(v25, v27);

  v29 = *(v0 + 1);

  return v29();
}

uint64_t sub_10001BD9C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001BE24(uint64_t a1, double a2, double a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 72) = a1;
  return _swift_task_switch(sub_10001BE48, 0, 0);
}

uint64_t sub_10001BE48()
{
  v61 = v0;
  v1 = *(v0 + 72);
  v3 = v1[4];
  v2 = v1[5];
  if (v1[1])
  {
    v4 = *v1;
    v5 = v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = objc_opt_self();

  v7 = sub_1000811D8();
  v8 = sub_1000811D8();
  v9 = [v6 bk_queryWithStoreID:v7 albumTitle:v8 isCloudItem:1];

  if (!v9)
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AD4A0);

    v16 = sub_1000806D8();
    v17 = sub_100081448();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *&v59 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10006150C(v3, v2, &v59);
      *(v18 + 12) = 2080;
      v19 = sub_10006150C(v4, v5, &v59);

      *(v18 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v16, v17, "Nil MPMediaQuery for audiobook with assetID: %s title: %s.", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10001EF88();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();
    goto LABEL_50;
  }

  v10 = [v9 items];
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = v10;
  sub_10001F1E0(0, &qword_1000AD590, MPMediaItem_ptr);
  v12 = sub_100081378();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (!sub_1000815B8())
  {
LABEL_43:

LABEL_44:
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v51 = sub_1000806F8();
    sub_10000A480(v51, qword_1000AD4A0);

    v52 = sub_1000806D8();
    v53 = sub_100081448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v59 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_10006150C(v3, v2, &v59);
      _os_log_impl(&_mh_execute_header, v52, v53, "Nil MPMediaItem for audiobook with assetID: %s.", v54, 0xCu);
      sub_100019DF8(v55);
    }

    sub_10001EF88();
    swift_allocError();
    *v56 = 7;
    swift_willThrow();
    goto LABEL_49;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_100081598();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v13 = *(v12 + 32);
  }

  v5 = v13;
  isEscapingClosureAtFileLocation = v0 + 16;

  if ([v5 valueForProperty:MPMediaItemPropertyArtwork])
  {
    sub_100081548();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v21 = v60;
  *isEscapingClosureAtFileLocation = v59;
  *(v0 + 32) = v21;
  if (!*(v0 + 40))
  {
    goto LABEL_27;
  }

  sub_10001F1E0(0, &qword_1000AD5A0, MPMediaItemArtwork_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = *(v0 + 64);
  v23 = [v22 imageWithSize:{*(v0 + 80), *(v0 + 88)}];
  if (!v23)
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v41 = sub_1000806F8();
    sub_10000A480(v41, qword_1000AD4A0);

    v42 = sub_1000806D8();
    v43 = sub_100081448();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = *(v0 + 80);
      v44 = *(v0 + 88);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v59 = v47;
      *v46 = 136315650;
      *(v46 + 4) = sub_10006150C(v3, v2, &v59);
      *(v46 + 12) = 2048;
      *(v46 + 14) = v45;
      *(v46 + 22) = 2048;
      *(v46 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v42, v43, "Nil image for store audiobook with assetID: %s width: %f height: %f.", v46, 0x20u);
      sub_100019DF8(v47);
    }

    sub_10001EF88();
    swift_allocError();
    *v48 = 8;
    swift_willThrow();

    goto LABEL_32;
  }

  v24 = v23;
  v25 = *(v0 + 88);
  [v23 size];
  if (v26 <= v25 && (v27 = *(v0 + 80), [v24 size], v28 <= v27))
  {
  }

  else
  {
    [v24 size];
    sub_1000814C8();
    v30 = v29;
    v32 = v31;
    v58 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v29, v31}];
    v2 = swift_allocObject();
    *(v2 + 2) = v24;
    v2[3] = v30;
    v2[4] = v32;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10001F260;
    *(v3 + 24) = v2;
    *(v0 + 48) = sub_10001F28C;
    *(v0 + 56) = v3;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A398;
    *(v0 + 40) = &unk_1000A7740;
    v33 = _Block_copy((v0 + 16));
    v34 = v24;

    v24 = [v58 imageWithActions:v33];

    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_27:
      sub_100005B2C(isEscapingClosureAtFileLocation, &qword_1000AD598, &qword_1000874B0);
LABEL_28:
      if (qword_1000AC658 == -1)
      {
LABEL_29:
        v35 = sub_1000806F8();
        sub_10000A480(v35, qword_1000AD4A0);

        v36 = sub_1000806D8();
        v37 = sub_100081448();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v59 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_10006150C(v3, v2, &v59);
          _os_log_impl(&_mh_execute_header, v36, v37, "Nil media artwork for audiobook with assetID: %s.", v38, 0xCu);
          sub_100019DF8(v39);
        }

        sub_10001EF88();
        swift_allocError();
        *v40 = 8;
        swift_willThrow();
LABEL_32:

LABEL_49:
LABEL_50:
        v57 = *(v0 + 8);

        return v57();
      }

LABEL_55:
      swift_once();
      goto LABEL_29;
    }
  }

  v49 = *(v0 + 8);

  return v49(v24);
}

uint64_t sub_10001C890(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_10001C8B4, 0, 0);
}

uint64_t sub_10001C8B4()
{
  v58 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 32);
  *(v0 + 168) = v2;
  v3 = *(v1 + 40);
  *(v0 + 176) = v3;
  if (qword_1000AC648 != -1)
  {
    swift_once();
  }

  sub_100005554(qword_1000B7F10, qword_1000B7F28);
  if (sub_10003A734(v2, v3, 0))
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v4 = sub_1000806F8();
    sub_10000A480(v4, qword_1000AD4A0);

    v5 = sub_1000806D8();
    v6 = sub_100081468();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v57[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10006150C(v2, v3, v57);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found cached untreated thumbnail image for asset: %s.", v7, 0xCu);
      sub_100019DF8(v8);
    }

LABEL_9:
    v9 = *(v0 + 8);

    return v9();
  }

  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v55 = (v0 + 144);
  v11 = sub_1000806F8();
  *(v0 + 184) = sub_10000A480(v11, qword_1000AD4A0);

  v12 = sub_1000806D8();
  v13 = sub_100081468();

  v56 = (v0 + 80);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10006150C(v2, v3, v57);
    _os_log_impl(&_mh_execute_header, v12, v13, "Generating untreated thumbnail image for asset: %s.", v14, 0xCu);
    sub_100019DF8(v15);
  }

  [*(v0 + 152) size];
  if (v16 <= 160.0)
  {
    [*(v0 + 152) size];
    if (v17 <= 160.0)
    {
      v29 = *(v0 + 152);

      v30 = v29;
      v31 = sub_1000806D8();
      v32 = sub_100081468();

      if (os_log_type_enabled(v31, v32))
      {
        v54 = *(v0 + 192);
        v33 = *(v0 + 152);
        v34 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v34 = 136315906;
        [v33 size];
        v35 = sub_1000814A8();
        v37 = sub_10006150C(v35, v36, v57);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2048;
        [v33 scale];
        *(v34 + 14) = v38;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_10006150C(v2, v3, v57);
        *(v34 + 32) = 1024;
        *(v34 + 34) = v54;
        _os_log_impl(&_mh_execute_header, v31, v32, "Using the raw untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v34, 0x26u);
        swift_arrayDestroy();
      }

      v39 = *(v0 + 152);

      v40 = sub_1000806D8();
      v41 = sub_100081468();

      if (os_log_type_enabled(v40, v41))
      {
        v43 = *(v0 + 168);
        v42 = *(v0 + 176);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_10006150C(v43, v42, v57);
        _os_log_impl(&_mh_execute_header, v40, v41, "Caching untreated thumbnail for asset: %s.", v44, 0xCu);
        sub_100019DF8(v45);
      }

      v46 = *(v0 + 192);
      sub_10001F17C(qword_1000B7F10, v56);
      v47 = sub_100005554(v56, *(v0 + 104));
      if (v46 == 1)
      {
        if (_UISolariumEnabled())
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }
      }

      else
      {
        v48 = 0;
      }

      v50 = *(v0 + 168);
      v49 = *(v0 + 176);
      v51 = *v47;
      v52 = objc_autoreleasePoolPush();
      sub_10003B608(v50, v49, v48, v39, v51, v55);
      objc_autoreleasePoolPop(v52);

      sub_100019DF8(v56);
      goto LABEL_9;
    }
  }

  v18 = *(v0 + 152);

  v19 = v18;
  v20 = sub_1000806D8();
  v21 = sub_100081468();

  if (os_log_type_enabled(v20, v21))
  {
    v53 = *(v0 + 192);
    v22 = *(v0 + 152);
    v23 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v23 = 136315650;
    [v22 size];
    v24 = sub_1000814A8();
    v26 = sub_10006150C(v24, v25, v57);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10006150C(v2, v3, v57);
    *(v23 + 22) = 1024;
    *(v23 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v20, v21, "About to resize the untreated cover because its current size: %s is larger than the specified size for asset: %s isAppIconCover: %{BOOL}d.", v23, 0x1Cu);
    swift_arrayDestroy();
  }

  v27 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v55;
  *(v0 + 24) = sub_10001D118;
  v28 = swift_continuation_init();
  *(v0 + 136) = sub_100002840(&qword_1000AD588, &qword_1000874A8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001A4BC;
  *(v0 + 104) = &unk_1000A76C8;
  *(v0 + 112) = v28;
  [v27 prepareThumbnailOfSize:v56 completionHandler:{160.0, 160.0}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10001D118()
{

  return _swift_task_switch(sub_10001D1F8, 0, 0);
}

uint64_t sub_10001D1F8(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = (v1 + 80);
    v4 = v2;

    v5 = v4;
    v6 = sub_1000806D8();
    v7 = sub_100081468();

    if (os_log_type_enabled(v6, v7))
    {
      v31 = *(v1 + 176);
      v8 = *(v1 + 168);
      v32 = *(v1 + 192);
      v9 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v9 = 136315906;
      [v5 size];
      v10 = sub_1000814A8();
      v12 = sub_10006150C(v10, v11, v33);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      [v5 scale];
      *(v9 + 14) = v13;
      *(v9 + 22) = 2080;
      v14 = v8;
      v3 = (v1 + 80);
      *(v9 + 24) = sub_10006150C(v14, v31, v33);
      *(v9 + 32) = 1024;
      *(v9 + 34) = v32;
      _os_log_impl(&_mh_execute_header, v6, v7, "Done resizing the untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v9, 0x26u);
      swift_arrayDestroy();
    }

    v15 = sub_1000806D8();
    v16 = sub_100081468();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v1 + 168);
      v17 = *(v1 + 176);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10006150C(v18, v17, v33);
      _os_log_impl(&_mh_execute_header, v15, v16, "Caching untreated thumbnail for asset: %s.", v19, 0xCu);
      sub_100019DF8(v20);
    }

    v21 = *(v1 + 192);
    sub_10001F17C(qword_1000B7F10, v3);
    v22 = sub_100005554(v3, *(v1 + 104));
    if (v21 == 1)
    {
      if (_UISolariumEnabled())
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = *(v1 + 168);
    v25 = *(v1 + 176);
    v27 = *v22;
    v28 = objc_autoreleasePoolPush();
    sub_10003B608(v26, v25, v23, v5, v27, (v1 + 144));
    objc_autoreleasePoolPop(v28);

    sub_100019DF8(v3);
    v29 = *(v1 + 8);
  }

  else
  {
    sub_10001EF88();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v29 = *(v1 + 8);
  }

  return v29();
}

uint64_t sub_10001D5A8(uint64_t a1)
{
  v1[8] = a1;
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v1[9] = swift_task_alloc();
  v2 = sub_100080308();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_100080648();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10001D708, 0, 0);
}

uint64_t sub_10001D708()
{
  v55 = v0;
  if (qword_1000AC660 != -1)
  {
    swift_once();
  }

  v1 = sub_100080678();
  sub_10000A480(v1, qword_1000AD4B8);
  sub_100080638();
  v2 = sub_100080668();
  v3 = sub_100081498();
  if (sub_1000814D8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_100080628();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Raw Cover Fetching", "", v4, 2u);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 64);

  (*(v9 + 16))(v6, v7, v8);
  sub_1000806B8();
  swift_allocObject();
  v11 = sub_1000806A8();
  *(v0 + 136) = v11;
  (*(v9 + 8))(v7, v8);
  v12 = *(v10 + 32);
  *(v0 + 144) = v12;
  v13 = *(v10 + 40);
  *(v0 + 152) = v13;
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v14 = sub_1000806F8();
  *(v0 + 160) = sub_10000A480(v14, qword_1000AD4A0);

  v15 = sub_1000806D8();
  v16 = sub_100081468();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10006150C(v12, v13, v54);
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching raw cover for assetID: %s.", v17, 0xCu);
    sub_100019DF8(v18);
  }

  if (qword_1000AC648 != -1)
  {
    swift_once();
  }

  sub_100005554(qword_1000B7F10, qword_1000B7F28);
  if (sub_10003A734(v12, v13, 0))
  {

    v19 = sub_1000806D8();
    v20 = sub_100081468();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v54[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10006150C(v12, v13, v54);
      _os_log_impl(&_mh_execute_header, v19, v20, "Found cached raw cover for assetID: %s.", v21, 0xCu);
      sub_100019DF8(v22);
    }

    sub_10001A10C(v11);

    v23 = *(v0 + 8);
LABEL_15:

    return v23();
  }

  *(v0 + 16) = *(*(v0 + 64) + 64);
  v25 = *(v0 + 24);
  if (v25)
  {
    v26 = *(v0 + 16);

    sub_10001EFDC(v0 + 16, v0 + 32);
    v27 = sub_1000806D8();
    v28 = sub_100081468();
    sub_100005B2C(v0 + 16, &qword_1000ACE48, &unk_100086040);

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10006150C(v26, v25, v54);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10006150C(v12, v13, v54);
      _os_log_impl(&_mh_execute_header, v27, v28, "Fetching a raw cover for url string: %s, assetID: %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v32 = *(v0 + 72);
    sub_1000802E8();
    if ((*(v31 + 48))(v32, 1, v30) == 1)
    {
      sub_100005B2C(*(v0 + 72), &qword_1000AD3B0, &unk_100087320);
LABEL_39:

      sub_10001EFDC(v0 + 16, v0 + 48);
      v50 = sub_1000806D8();
      v51 = sub_100081468();

      sub_100005B2C(v0 + 16, &qword_1000ACE48, &unk_100086040);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v52 = 136315394;
        *(v52 + 4) = sub_10006150C(v12, v13, v54);
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_10006150C(v26, v25, v54);
        _os_log_impl(&_mh_execute_header, v50, v51, "Not a file URL for assetID: %s, url: %s. Now using URLSession to download the book cover.", v52, 0x16u);
        swift_arrayDestroy();
      }

      v53 = swift_task_alloc();
      *(v0 + 192) = v53;
      *v53 = v0;
      v53[1] = sub_10001E568;

      return sub_10001AFE4(v26, v25, v12, v13, 160.0, 160.0);
    }

    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    if ((sub_100080258() & 1) == 0)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
      goto LABEL_39;
    }

    v40 = sub_1000806D8();
    v41 = sub_100081468();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10006150C(v12, v13, v54);
      _os_log_impl(&_mh_execute_header, v40, v41, "Using QuickLook to generate a thumbnail with assetID: %s.", v42, 0xCu);
      sub_100019DF8(v43);
    }

    v44 = swift_task_alloc();
    *(v0 + 168) = v44;
    *v44 = v0;
    v44[1] = sub_10001E28C;
    v45 = *(v0 + 96);

    return sub_10001A700(v45, v12, v13, 160.0, 160.0);
  }

  else
  {
    v33 = sub_1000113EC();

    v34 = sub_1000806D8();
    if ((v33 & 1) == 0)
    {
      v46 = sub_100081448();

      if (os_log_type_enabled(v34, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_10006150C(v12, v13, v54);
        _os_log_impl(&_mh_execute_header, v34, v46, "nil cover URL for assetID: %s.", v47, 0xCu);
        sub_100019DF8(v48);
      }

      sub_10001EF88();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
      sub_10001A10C(v11);

      v23 = *(v0 + 8);
      goto LABEL_15;
    }

    v35 = sub_100081468();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10006150C(v12, v13, v54);
      _os_log_impl(&_mh_execute_header, v34, v35, "Attempting to fetch raw store audiobook cover from MediaLibrary for assetID: %s.", v36, 0xCu);
      sub_100019DF8(v37);
    }

    v38 = swift_task_alloc();
    *(v0 + 216) = v38;
    *v38 = v0;
    v38[1] = sub_10001E7F4;
    v39 = *(v0 + 64);

    return sub_10001BE24(v39, 160.0, 160.0);
  }
}

uint64_t sub_10001E28C(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_10001E4B0;
  }

  else
  {
    *(v6 + 264) = a2 & 1;
    *(v6 + 184) = a1;
    v7 = sub_10001E3C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001E3C8()
{
  v1 = *(v0 + 184);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v2 = *(v0 + 184);
  v3 = *(v0 + 264);
  *(v0 + 240) = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_10001EBA4;
  v6 = *(v0 + 64);

  return sub_10001C890(v2, v3, v6);
}

uint64_t sub_10001E4B0()
{
  v1 = v0[17];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_10001A10C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10001E568(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_10001E754;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_10001E690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001E690()
{
  v1 = v0[26];
  v0[30] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_10001EBA4;
  v4 = v0[8];

  return sub_10001C890(v2, 0, v4);
}

uint64_t sub_10001E754()
{
  sub_10001A10C(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E7F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_10001EB04;
  }

  else
  {
    v4 = sub_10001E908;
  }

  return _swift_task_switch(v4, 0, 0);
}