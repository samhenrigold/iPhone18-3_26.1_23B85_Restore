uint64_t sub_100001BE8()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  sub_10002F5E8(v10 - v6);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_100004CF4(&qword_100054720, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  if (v10[1] == v10[0] && *(*(v0 + *(type metadata accessor for MultipleContactsRowView(0) + 24)) + 16) == 4)
  {
    return sub_1000416BC();
  }

  else
  {
    return sub_1000416CC();
  }
}

BOOL sub_100001DB0()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  sub_10002F5E8(v10 - v6);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_100004CF4(&qword_100054720, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  return v10[1] == v10[0] && *(*(v0 + *(type metadata accessor for MultipleContactsRowView(0) + 24)) + 16) == 4;
}

__n128 sub_100001F74@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v67 = a3;
  v68 = a1;
  v62 = sub_100041BAC();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for PersonEntryType(0);
  v9 = __chkstk_darwin(v8 - 8);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v55 - v11;
  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v58 = sub_1000415AC();
  v15 = *(v58 - 8);
  __chkstk_darwin(v58);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003DC0(&qword_1000546C0, &unk_100044D10);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v60 = sub_100003DC0(&qword_1000546C8, &qword_100042AE0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v22 = &v55 - v21;
  v64 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v23 = __chkstk_darwin(v64);
  v63 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v65 = &v55 - v25;
  *v20 = sub_1000414FC();
  *(v20 + 1) = 0x4020000000000000;
  v20[16] = 0;
  v26 = &v20[*(sub_100003DC0(&qword_1000546D0, &qword_100042AE8) + 44)];
  v27 = a2;
  v28 = v68;
  sub_100002724(v27, v68, v26);
  sub_10004159C();
  sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10, &protocol conformance descriptor for VStack<A>);
  sub_10004186C();
  v29 = v17;
  v30 = v61;
  (*(v15 + 8))(v29, v58);
  v31 = v62;
  v32 = v20;
  v33 = v57;
  sub_1000049F8(v32, &qword_1000546C0, &unk_100044D10);
  sub_100004BC4(v28, v33, type metadata accessor for PersonEntryType);
  v34 = *(v30 + 48);
  if (v34(v33, 2, v31))
  {
    v35 = 1;
  }

  else
  {
    (*(v30 + 32))(v14, v33, v31);
    v35 = 0;
  }

  (*(v30 + 56))(v14, v35, 1, v31);
  sub_100041B4C();
  v36 = sub_10004083C();
  (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
  v37 = v30;
  v38 = sub_10003B680(v7);
  sub_1000049F8(v7, &qword_1000546B0, &qword_100043630);
  sub_1000049F8(v14, &qword_1000546B8, &unk_100042AD0);
  (*(v59 + 8))(v22, v60);
  v69 = v38;
  v39 = v66;
  sub_100004BC4(v68, v66, type metadata accessor for PersonEntryType);
  if (v34(v39, 2, v31))
  {
    v40 = sub_100041F4C();
    v43 = v40;
    v44 = v41;
  }

  else
  {
    v45 = v56;
    (*(v37 + 32))(v56, v39, v31);
    v43 = sub_100041B6C();
    v44 = v46;
    v40 = (*(v37 + 8))(v45, v31);
  }

  *&v70 = v43;
  *(&v70 + 1) = v44;
  sub_100004924(v40, v41, v42);
  v47 = v63;
  sub_10004183C();

  sub_100040B7C();
  v48 = v65;
  sub_10004124C();

  sub_1000049F8(v47, &qword_100054698, &qword_100042AB8);
  sub_100041A9C();
  sub_10004125C();
  v49 = v48;
  v50 = v67;
  sub_100004C8C(v49, v67, &qword_100054698, &qword_100042AB8);
  v51 = v50 + *(sub_100003DC0(&qword_100054678, &qword_100042AB0) + 36);
  v52 = v75;
  *(v51 + 64) = v74;
  *(v51 + 80) = v52;
  *(v51 + 96) = v76;
  v53 = v71;
  *v51 = v70;
  *(v51 + 16) = v53;
  result = v73;
  *(v51 + 32) = v72;
  *(v51 + 48) = result;
  return result;
}

uint64_t sub_100002724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v185 = a2;
  v182 = a1;
  v174 = a3;
  v3 = sub_100003DC0(&qword_1000546E8, &unk_100042AF0);
  v172 = *(v3 - 8);
  v173 = v3;
  __chkstk_darwin(v3);
  v171 = &v137 - v4;
  v166 = sub_100040E0C();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v167 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for StatusAndNameView(0);
  v6 = __chkstk_darwin(v158);
  v170 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v137 - v9;
  __chkstk_darwin(v8);
  v169 = &v137 - v11;
  v178 = sub_100041CAC();
  v184 = *(v178 - 8);
  v12 = __chkstk_darwin(v178);
  v157 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v137 - v14;
  v15 = sub_1000408CC();
  v180 = *(v15 - 8);
  v181 = v15;
  __chkstk_darwin(v15);
  v179 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v17 - 8);
  v177 = &v137 - v18;
  v155 = sub_10004116C();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100041BAC();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v139 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v138 = &v137 - v25;
  v26 = __chkstk_darwin(v24);
  v150 = &v137 - v27;
  v28 = __chkstk_darwin(v26);
  v149 = &v137 - v29;
  __chkstk_darwin(v28);
  v31 = &v137 - v30;
  v32 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v33 = __chkstk_darwin(v32 - 8);
  v163 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v156 = &v137 - v36;
  v37 = __chkstk_darwin(v35);
  v159 = &v137 - v38;
  __chkstk_darwin(v37);
  v175 = (&v137 - v39);
  v40 = type metadata accessor for AvatarView(0);
  v41 = __chkstk_darwin(v40);
  v168 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v137 - v44;
  __chkstk_darwin(v43);
  v164 = &v137 - v46;
  v47 = type metadata accessor for PersonEntryType(0);
  v48 = __chkstk_darwin(v47 - 8);
  v161 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v160 = &v137 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v137 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v137 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v137 - v59;
  __chkstk_darwin(v58);
  v62 = &v137 - v61;
  sub_100004BC4(v185, &v137 - v61, type metadata accessor for PersonEntryType);
  v176 = v21;
  v183 = *(v21 + 48);
  v63 = v183(v62, 2, v20);
  if (v63)
  {
    if (v63 != 1)
    {
      v64 = 1;
      v66 = v173;
      v65 = v174;
      v67 = v172;
      return (*(v67 + 56))(v65, v64, 1, v66);
    }
  }

  else
  {
    sub_100004C2C(v62, type metadata accessor for PersonEntryType);
  }

  sub_100004BC4(v185, v60, type metadata accessor for PersonEntryType);
  v68 = v183(v60, 2, v20);
  v147 = v10;
  if (v68)
  {
    v69 = 1;
    v70 = v178;
    v71 = v175;
  }

  else
  {
    v72 = v176;
    (*(v176 + 32))(v31, v60, v20);
    v71 = v175;
    sub_100041B7C();
    (*(v72 + 8))(v31, v20);
    v69 = 0;
    v70 = v178;
  }

  v73 = v184[7];
  v74 = v70;
  v152 = v184 + 7;
  v151 = v73;
  (v73)(v71, v69, 1);
  sub_100004BC4(v185, v57, type metadata accessor for PersonEntryType);
  if (v183(v57, 2, v20))
  {
    v140 = 0;
  }

  else
  {
    v75 = v176;
    v76 = v149;
    (*(v176 + 32))(v149, v57, v20);
    v77 = v153;
    sub_100041B8C();
    v78 = v75;
    v71 = v175;
    (*(v78 + 8))(v76, v20);
    v140 = sub_10004114C();
    (*(v154 + 8))(v77, v155);
  }

  v79 = type metadata accessor for MultipleContactsRowView(0);
  v80 = v182 + *(v79 + 32);
  v146 = *v80;
  v145 = *(v80 + 8);
  sub_100004BC4(v185, v54, type metadata accessor for PersonEntryType);
  if (v183(v54, 2, v20))
  {
    v81 = sub_100041C6C();
    (*(*(v81 - 8) + 56))(v177, 1, 1, v81);
  }

  else
  {
    v82 = v176;
    v83 = v150;
    (*(v176 + 32))(v150, v54, v20);
    sub_100041B5C();
    v84 = v82;
    v71 = v175;
    (*(v84 + 8))(v83, v20);
  }

  v85 = v182;
  v144 = sub_100001DB0();
  (*(v180 + 16))(v179, v85 + *(v79 + 40), v181);
  sub_100040D9C();
  v143 = sub_100040D8C();
  v86 = v40[7];
  v87 = sub_100041C6C();
  v88 = *(*(v87 - 8) + 56);
  v142 = v86;
  v88(&v45[v86], 1, 1, v87);
  v141 = sub_100040D8C();
  v89 = &v45[v40[12]];
  KeyPath = swift_getKeyPath();
  *(v89 + 1) = 0;
  *(v89 + 2) = 0;
  *v89 = KeyPath;
  *(v89 + 12) = 0;
  v91 = v40[13];
  sub_100041B0C();
  *&v45[v91] = v92;
  v93 = &v45[v40[14]];
  *v93 = xmmword_100042940;
  *(v93 + 1) = xmmword_100042950;
  v94 = v40[15];
  *&v45[v94] = swift_getKeyPath();
  v148 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v95 = v159;
  sub_100004988(v71, v159);
  v96 = v184;
  v97 = (v184 + 6);
  v98 = v184[6];
  v99 = v98(v95, 1, v74);
  v150 = v97;
  v149 = v98;
  if (v99 == 1)
  {
    v100 = v162;
    sub_100041B1C();
    sub_1000049F8(v71, &qword_1000546F8, &qword_100042B00);
    v101 = v100;
    if (v98(v95, 1, v74) != 1)
    {
      sub_1000049F8(v95, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v71, &qword_1000546F8, &qword_100042B00);
    v101 = v162;
    (v96[4])(v162, v95, v74);
  }

  v102 = v40[5];
  v103 = &v45[v40[6]];
  v104 = v40[8];
  v105 = v184[4];
  v184 += 4;
  v175 = v105;
  v105(v45, v101, v74);
  *&v45[v102] = v140;
  *v103 = v146;
  v103[8] = v145;
  sub_100004A58(v177, &v45[v142]);

  *&v45[v104] = v143;
  v45[v40[9]] = v144;
  v45[v40[10]] = 0;
  (*(v180 + 32))(&v45[v40[11]], v179, v181);
  v106 = v164;
  sub_100004B5C(v45, v164, type metadata accessor for AvatarView);
  v107 = v160;
  sub_100004BC4(v185, v160, type metadata accessor for PersonEntryType);
  v108 = v183(v107, 2, v20);
  v109 = v147;
  if (v108)
  {
    v181 = 0;
  }

  else
  {
    v110 = v176;
    v111 = v138;
    (*(v176 + 32))(v138, v107, v20);
    v112 = v153;
    sub_100041B8C();
    (*(v110 + 8))(v111, v20);
    v181 = sub_10004114C();
    (*(v154 + 8))(v112, v155);
  }

  v113 = v158;
  v114 = v161;
  sub_100004BC4(v185, v161, type metadata accessor for PersonEntryType);
  v115 = v183(v114, 2, v20);
  v116 = v178;
  if (v115)
  {
    v117 = 1;
    v118 = v157;
    v119 = v156;
  }

  else
  {
    v120 = v176;
    v121 = v139;
    (*(v176 + 32))(v139, v114, v20);
    v119 = v156;
    sub_100041B7C();
    (*(v120 + 8))(v121, v20);
    v117 = 0;
    v118 = v157;
  }

  v151(v119, v117, 1, v116);
  v122 = sub_100001BE8();
  (*(v165 + 104))(v167, enum case for ContactFormatter.Style.shortName(_:), v166);
  sub_100041F4C();
  v187 = sub_100040E2C();
  v188 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v186);
  sub_100040E1C();
  v123 = v109 + v113[12];
  *v123 = swift_getKeyPath();
  *(v123 + 1) = 0;
  v123[16] = 0;
  v124 = v113[13];
  *(v109 + v124) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v125 = v113[14];
  *(v109 + v125) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v126 = v113[15];
  *(v109 + v126) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v109 = v181;
  v127 = v163;
  sub_100004988(v119, v163);
  v128 = v149;
  if ((v149)(v127, 1, v116) == 1)
  {
    sub_100041B1C();
    sub_1000049F8(v119, &qword_1000546F8, &qword_100042B00);
    v129 = (v128)(v127, 1, v116) == 1;
    v66 = v173;
    v65 = v174;
    v67 = v172;
    if (!v129)
    {
      sub_1000049F8(v127, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v119, &qword_1000546F8, &qword_100042B00);
    v175(v118, v127, v116);
    v66 = v173;
    v65 = v174;
    v67 = v172;
  }

  v175(v109 + v113[5], v118, v116);
  *(v109 + v113[6]) = v122;
  *(v109 + v113[7]) = 0x4008000000000000;
  sub_100004B44(&v186, v109 + v113[8]);
  *(v109 + v113[9]) = 2;
  *(v109 + v113[10]) = 1;
  *(v109 + v113[11]) = 0x7FF0000000000000;
  v130 = v109;
  v131 = v169;
  sub_100004B5C(v130, v169, type metadata accessor for StatusAndNameView);
  v132 = v168;
  sub_100004BC4(v106, v168, type metadata accessor for AvatarView);
  v133 = v170;
  sub_100004BC4(v131, v170, type metadata accessor for StatusAndNameView);
  v134 = v171;
  sub_100004BC4(v132, v171, type metadata accessor for AvatarView);
  v135 = sub_100003DC0(&qword_100054718, &unk_100044CF0);
  sub_100004BC4(v133, v134 + *(v135 + 48), type metadata accessor for StatusAndNameView);
  sub_100004C2C(v131, type metadata accessor for StatusAndNameView);
  sub_100004C2C(v106, type metadata accessor for AvatarView);
  sub_100004C2C(v133, type metadata accessor for StatusAndNameView);
  sub_100004C2C(v132, type metadata accessor for AvatarView);
  sub_100004C8C(v134, v65, &qword_1000546E8, &unk_100042AF0);
  v64 = 0;
  return (*(v67 + 56))(v65, v64, 1, v66);
}

uint64_t sub_100003AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_10004149C();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  sub_100003DC0(&qword_100054660, &qword_100042A78);
  v12[1] = sub_10000F630(*(v2 + *(v4 + 32)));
  swift_getKeyPath();
  sub_100004BC4(v2, v7, type metadata accessor for MultipleContactsRowView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100004B5C(v7, v9 + v8, type metadata accessor for MultipleContactsRowView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000046B4;
  *(v10 + 24) = v9;
  sub_100003DC0(&qword_100054670, &qword_100042AA8);
  sub_100003DC0(&qword_100054678, &qword_100042AB0);
  sub_100004D80(&qword_100054680, &qword_100054670, &qword_100042AA8, &protocol conformance descriptor for [A]);
  sub_1000047DC();
  return sub_100041A2C();
}

uint64_t sub_100003CE0(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000401D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100003D54(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_1000401D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003DC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003E08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100003E54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003E60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003E80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100003ED4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003EE0(uint64_t a1, int a2)
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

uint64_t sub_100003F00(uint64_t result, int a2, int a3)
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

uint64_t sub_100003F8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000416DC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000408CC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100004120(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000416DC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000408CC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for MultipleContactsRowView(uint64_t a1)
{
  result = qword_1000545F8;
  if (!qword_1000545F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000042EC(uint64_t a1)
{
  sub_100004444(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000416DC();
    if (v2 <= 0x3F)
    {
      sub_100004444(319, &qword_100054610, type metadata accessor for PersonEntryType, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000044A8(319, &qword_100054618, &type metadata for CGFloat, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000408CC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100004444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000044A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100004514()
{
  v1 = type metadata accessor for MultipleContactsRowView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100041D5C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_1000416DC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v1 + 40);
  v10 = sub_1000408CC();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000046B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleContactsRowView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_100001F74(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_10000473C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004774(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100003DC0(&qword_1000546A8, &unk_100042AC0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1000047DC()
{
  result = qword_100054688;
  if (!qword_100054688)
  {
    sub_100003E08(&qword_100054678, &qword_100042AB0);
    sub_100004868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054688);
  }

  return result;
}

unint64_t sub_100004868()
{
  result = qword_100054690;
  if (!qword_100054690)
  {
    sub_100003E08(&qword_100054698, &qword_100042AB8);
    sub_100004CF4(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054690);
  }

  return result;
}

unint64_t sub_100004924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000546E0;
  if (!qword_1000546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000546E0);
  }

  return result;
}

uint64_t sub_100004988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000049F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003DC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100004AC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004B44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100004C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003DC0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004D80(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004DC8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v98 = a4;
  v96 = a3;
  v104 = a1;
  v92 = sub_10004092C();
  isa = v92[-1].isa;
  __chkstk_darwin(v92);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipleContactsEntry(0);
  __chkstk_darwin(v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041D5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004098C();
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v95 = &v87 - v18;
  __chkstk_darwin(v17);
  v100 = sub_10004095C();
  v99 = *(v100 - 8);
  v19 = __chkstk_darwin(v100);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v20;
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  sub_100040ACC();
  v97 = v22;
  sub_10004093C();
  sub_100041E4C();
  v103 = v4;
  v23 = sub_100005970();
  v24 = v12;
  v25 = v23;
  (*(v10 + 8))(v24, v9);
  if (v25 >> 62)
  {
    goto LABEL_51;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v26)
  {
    v16 = 0;
    *&v105[0] = &_swiftEmptyArrayStorage;
    v27 = v25 & 0xC000000000000001;
    v28 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v29 = sub_10004218C();
      }

      else
      {
        if (v16 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v29 = v25[v16 + 4];
      }

      v6 = v29;
      v30 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      sub_100041FAC();
      if (*((*&v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((*&v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100041FDC();
      }

      sub_100041FFC();
      ++v16;
      if (v30 == v26)
      {
        v31 = *&v105[0];
        v32 = sub_100029284(&_swiftEmptyArrayStorage);
        v33 = __chkstk_darwin(v32);
        *(&v87 - 2) = v103;
        isa = sub_10000A8F8(v33, sub_10001162C, (&v87 - 4), v31);

        v34 = v95;
        sub_100040ACC();

        v35 = sub_10004097C();
        v16 = sub_1000420CC();

        v92 = v35;
        v36 = os_log_type_enabled(v35, v16);
        v104 = v26;
        if (v36)
        {
          LODWORD(v90) = v16;
          v37 = swift_slowAlloc();
          v16 = 0;
          v88 = swift_slowAlloc();
          *&v105[0] = v88;
          v89 = v37;
          *v37 = 136315138;
          v38 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v27)
            {
              v39 = sub_10004218C();
            }

            else
            {
              if (v16 >= *(v28 + 16))
              {
                goto LABEL_50;
              }

              v39 = v25[v16 + 4];
            }

            v6 = v39;
            v40 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v41 = v25;
            v42 = [v39 identifier];
            v43 = sub_100041EFC();
            v45 = v44;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_10000E678(0, *(v38 + 2) + 1, 1, v38);
            }

            v8 = *(v38 + 2);
            v46 = *(v38 + 3);
            v6 = (v8 + 1);
            if (v8 >= v46 >> 1)
            {
              v38 = sub_10000E678((v46 > 1), v8 + 1, 1, v38);
            }

            *(v38 + 2) = v6;
            v47 = &v38[16 * v8];
            *(v47 + 4) = v43;
            *(v47 + 5) = v45;
            ++v16;
            v25 = v41;
            if (v40 == v104)
            {
              v60 = sub_100041FCC();
              v6 = v61;

              v62 = sub_10001BA5C(v60, v6, v105);

              v63 = v89;
              *(v89 + 1) = v62;
              v64 = v92;
              _os_log_impl(&_mh_execute_header, v92, v90, "get snapshot for multiple contacts widget with Ids %s", v63, 0xCu);
              v16 = v88;
              sub_100010DCC(v88);

              (*(v101 + 8))(v95, v102);
              goto LABEL_33;
            }
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v26 = sub_1000421BC();
          goto LABEL_3;
        }

        (*(v101 + 8))(v34, v102);
LABEL_33:
        v65 = 0;
        v66 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v27)
          {
            v67 = sub_10004218C();
          }

          else
          {
            if (v65 >= *(v28 + 16))
            {
              goto LABEL_48;
            }

            v67 = v25[v65 + 4];
          }

          v8 = v67;
          v68 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          v69 = [v67 identifier];
          v16 = sub_100041EFC();
          v6 = v70;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_10000E678(0, *(v66 + 2) + 1, 1, v66);
          }

          v72 = *(v66 + 2);
          v71 = *(v66 + 3);
          v8 = v72 + 1;
          if (v72 >= v71 >> 1)
          {
            v66 = sub_10000E678((v71 > 1), v72 + 1, 1, v66);
          }

          *(v66 + 2) = v8;
          v73 = &v66[16 * v72];
          *(v73 + 4) = v16;
          *(v73 + 5) = v6;
          ++v65;
          if (v68 == v104)
          {
            v74 = v103;
            v75 = v103[13];
            v104 = v103[14];
            sub_100010A94(v103 + 10, v75);
            sub_100010AF4(v74, v105);
            v76 = v99;
            v77 = v94;
            v78 = v97;
            v79 = v100;
            (*(v99 + 16))(v94, v97, v100);
            v80 = (*(v76 + 80) + 184) & ~*(v76 + 80);
            v81 = swift_allocObject();
            *(v81 + 16) = v66;
            *(v81 + 24) = v25;
            v82 = v105[5];
            *(v81 + 96) = v105[4];
            *(v81 + 112) = v82;
            v83 = v105[7];
            *(v81 + 128) = v105[6];
            *(v81 + 144) = v83;
            v84 = v105[1];
            *(v81 + 32) = v105[0];
            *(v81 + 48) = v84;
            v85 = v105[3];
            *(v81 + 64) = v105[2];
            *(v81 + 80) = v85;
            v86 = v96;
            *(v81 + 160) = isa;
            *(v81 + 168) = v86;
            *(v81 + 176) = v98;
            (*(v76 + 32))(v81 + v80, v77, v79);

            sub_1000410BC();

            return (*(v76 + 8))(v78, v79);
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_100040ACC();
  v48 = sub_10004097C();
  v49 = sub_1000420CC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Could not get any contacts for Mutiple contacts widget", v50, 2u);
  }

  (*(v101 + 8))(v16, v102);
  sub_10004088C();
  v51 = v6[8];
  v52 = sub_100041E3C();
  (*(*(v52 - 8) + 56))(v8 + v51, 1, 1, v52);
  *v8 = &_swiftEmptyArrayStorage;
  *(v8 + v6[6]) = 0;
  sub_1000408BC();
  v96(v8);
  sub_1000111F8(v8, type metadata accessor for MultipleContactsEntry);
  v53 = v90;
  sub_10004091C();
  v54 = v97;
  v55 = sub_10004094C();
  v56 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, v56, v58, "getSnapshot", "no contacts", v57, 2u);
  }

  (isa)[1](v53, v92);
  return (*(v99 + 8))(v54, v100);
}

void *sub_100005970()
{
  v1 = v0;
  v2 = sub_10004098C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041D3C();
  v6 = sub_10004099C();
  sub_100040ACC();

  v7 = sub_10004097C();
  v8 = sub_1000420CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_100040BFC();
    v12 = sub_100041FCC();
    v14 = sub_10001BA5C(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration returned contacts: %s", v10, 0xCu);
    sub_100010DCC(v11);

    v1 = v19;
  }

  v15 = (*(v3 + 8))(v5, v2);
  __chkstk_darwin(v15);
  *(&v18 - 2) = v1;
  v16 = sub_100005BB0(sub_100011050, (&v18 - 4), v6);

  return v16;
}

void *sub_100005BB0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000421BC())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10004218C();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_100041FAC();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100041FDC();
        }

        sub_100041FFC();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100005D5C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v120 = a8;
  v121 = a7;
  v140 = a6;
  v127 = a4;
  v11 = sub_10004092C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v122 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for MultipleContactsEntry(0);
  __chkstk_darwin(v118);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v15 - 8);
  v139 = &v113 - v16;
  v138 = sub_100040E0C();
  v17 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004116C();
  __chkstk_darwin(v19 - 8);
  v148 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100041BAC();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v147 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10004089C();
  v22 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10004098C();
  v123 = *(v124 - 8);
  v24 = __chkstk_darwin(v124);
  v115 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v113 - v27;
  __chkstk_darwin(v26);
  v30 = &v113 - v29;
  v117 = v11;
  v116 = v12;
  if (a2)
  {
    *&v153 = a1;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    v31 = sub_10004097C();
    v32 = sub_1000420CC();
    sub_100010E18(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v153 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = sub_10004225C();
      v37 = sub_10001BA5C(v35, v36, &v153);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "got failure fetching statuses for contactID's: %s", v33, 0xCu);
      sub_100010DCC(v34);

      sub_100010E18(a1, 1);
    }

    else
    {
      sub_100010E18(a1, 1);
    }

    v90 = *(v123 + 8);
    v90(v28, v124);
    v52 = &_swiftEmptyArrayStorage;
    goto LABEL_49;
  }

  sub_100040ACC();

  v38 = sub_10004097C();
  v39 = sub_1000420CC();

  v40 = os_log_type_enabled(v38, v39);
  v143 = a1;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v153 = v42;
    *v41 = 136315138;
    v43 = sub_100041FCC();
    v45 = v22;
    v46 = v17;
    v47 = a5;
    v48 = sub_10001BA5C(v43, v44, &v153);

    *(v41 + 4) = v48;
    a5 = v47;
    v17 = v46;
    v22 = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "got statuses for contactIDs %s", v41, 0xCu);
    sub_100010DCC(v42);

    a1 = v143;
  }

  v114 = *(v123 + 8);
  v114(v30, v124);
  v49 = v127;
  if (v127 >> 62)
  {
    goto LABEL_46;
  }

  v50 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
LABEL_8:
    v51 = 0;
    v132 = a5[15];
    v134 = v49 & 0xC000000000000001;
    v126 = v49 & 0xFFFFFFFFFFFFFF8;
    v125 = (v49 + 32);
    v131 = (v22 + 8);
    v130 = enum case for ContactFormatter.Style.shortName(_:);
    v129 = (v17 + 104);
    v128 = v141 + 32;
    v52 = &_swiftEmptyArrayStorage;
    v49 = &qword_100054A30;
    v22 = &unk_1000430A0;
    a5 = &qword_100054A40;
    v133 = v50;
    while (1)
    {
      if (v134)
      {
        v53 = sub_10004218C();
        v54 = __OFADD__(v51, 1);
        v55 = v51 + 1;
        if (v54)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v51 >= *(v126 + 16))
        {
          goto LABEL_45;
        }

        v53 = v125[v51];
        v54 = __OFADD__(v51, 1);
        v55 = v51 + 1;
        if (v54)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v50 = sub_1000421BC();
          if (!v50)
          {
            goto LABEL_47;
          }

          goto LABEL_8;
        }
      }

      v144 = v55;
      v145 = v53;
      v56 = [v53 identifier];
      v57 = sub_100041EFC();
      v59 = v58;

      v60 = *(a1 + 16);
      v146 = v52;
      if (v60)
      {
        v61 = sub_1000291E8(v57, v59);
        v63 = v62;

        v64 = &_swiftEmptyArrayStorage;
        if (v63)
        {
          v64 = *(*(v143 + 56) + 8 * v61);
        }
      }

      else
      {

        v64 = &_swiftEmptyArrayStorage;
      }

      sub_100006DE8(v64, sub_100025AC0);

      v65 = v135;
      sub_10004088C();
      v66 = sub_100040F0C();

      (*v131)(v65, v136);
      v67 = *(v66 + 16);
      if (v67)
      {
        v68 = v66 + 32;
        v69 = &_swiftEmptyArrayStorage;
        do
        {
          sub_100010F30(v68, &v153);
          sub_100004B44(&v153, &v152);
          sub_100003DC0(&qword_100054A30, &unk_1000430A0);
          sub_100003DC0(&qword_100054A38, &unk_100043590);
          if (swift_dynamicCast())
          {
            if (*(&v150 + 1))
            {
              sub_100004B44(&v149, &v152);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_10000E95C(0, v69[2] + 1, 1, v69);
              }

              v71 = v69[2];
              v70 = v69[3];
              if (v71 >= v70 >> 1)
              {
                v69 = sub_10000E95C((v70 > 1), v71 + 1, 1, v69);
              }

              v69[2] = v71 + 1;
              sub_100004B44(&v152, &v69[5 * v71 + 4]);
              a5 = &qword_100054A40;
              goto LABEL_23;
            }
          }

          else
          {
            v151 = 0;
            v149 = 0u;
            v150 = 0u;
          }

          sub_1000049F8(&v149, &qword_100054A40, &qword_1000430B0);
LABEL_23:
          v68 += 40;
          --v67;
        }

        while (v67);
      }

      (*v129)(v137, v130, v138);
      sub_100041F4C();
      v154 = sub_100040E2C();
      v155 = &protocol witness table for ContactFormatter;
      sub_100004AC8(&v153);
      sub_100040E1C();
      v72 = v145;
      sub_10004113C();
      v73 = [v72 identifier];
      v74 = sub_100041EFC();
      v76 = v75;

      if (!*(v140 + 16))
      {
        break;
      }

      v77 = v74;
      v78 = v140;
      v79 = sub_1000291E8(v77, v76);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_35;
      }

      v82 = *(v78 + 56);
      v83 = sub_100041C6C();
      v84 = *(v83 - 8);
      v85 = v84;
      v86 = v82 + *(v84 + 72) * v79;
      v87 = v139;
      (*(v84 + 16))(v139, v86, v83);
      (*(v85 + 56))(v87, 0, 1, v83);
LABEL_36:
      v51 = v144;
      sub_100041B9C();
      v52 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_10000E784(0, v52[2] + 1, 1, v52);
      }

      v17 = v52[2];
      v89 = v52[3];
      if (v17 >= v89 >> 1)
      {
        v52 = sub_10000E784((v89 > 1), v17 + 1, 1, v52);
      }

      v52[2] = v17 + 1;
      (*(v141 + 32))(v52 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v17, v147, v142);
      a1 = v143;
      if (v51 == v133)
      {
        goto LABEL_48;
      }
    }

LABEL_35:
    v88 = sub_100041C6C();
    (*(*(v88 - 8) + 56))(v139, 1, 1, v88);
    goto LABEL_36;
  }

LABEL_47:
  v52 = &_swiftEmptyArrayStorage;
LABEL_48:
  v90 = v114;
LABEL_49:
  v91 = v115;
  sub_100040ACC();

  v92 = sub_10004097C();
  v93 = sub_1000420CC();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v153 = v95;
    *v94 = 136315138;
    v96 = sub_100041FEC();
    v97 = v52;
    v99 = sub_10001BA5C(v96, v98, &v153);

    *(v94 + 4) = v99;

    _os_log_impl(&_mh_execute_header, v92, v93, "snapshot created for multiple widget %s", v94, 0xCu);
    sub_100010DCC(v95);

    v90(v91, v124);
    v100 = v122;
    v101 = v121;
  }

  else
  {

    v90(v91, v124);

    v100 = v122;
    v101 = v121;
    v97 = v52;
  }

  v102 = v119;
  v103 = v118;
  sub_10004088C();
  v104 = *(v103 + 32);
  v105 = sub_100041E3C();
  (*(*(v105 - 8) + 56))(&v102[v104], 1, 1, v105);
  *v102 = v97;
  v102[*(v103 + 24)] = 0;
  sub_1000408BC();
  v101(v102);
  sub_1000111F8(v102, type metadata accessor for MultipleContactsEntry);
  sub_10004091C();
  v106 = sub_10004094C();
  v107 = sub_1000420DC();
  v108 = sub_1000420EC();
  v109 = v117;
  if (v108)
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    v111 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v107, v111, "getSnapshot", "completed", v110, 2u);
  }

  return (*(v116 + 8))(v100, v109);
}

unint64_t *sub_100006DE8(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v12 = &_swiftEmptyArrayStorage;
    a2(0, v2, 0);
    v3 = &_swiftEmptyArrayStorage;
    v5 = a1 + 32;
    do
    {
      sub_100010F30(v5, v10);
      sub_100003DC0(&qword_100054A38, &unk_100043590);
      sub_100003DC0(&qword_100054A30, &unk_1000430A0);
      swift_dynamicCast();
      v12 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        a2(v6 > 1, v7 + 1, 1);
        v3 = v12;
      }

      v3[2] = v7 + 1;
      sub_100004B44(&v11, &v3[5 * v7 + 4]);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_100006F34(uint64_t a1, uint64_t a2, void (*a3)(char *), void (*a4)(char *))
{
  v126 = a4;
  v125 = a3;
  v133 = a1;
  v132 = sub_10004092C();
  v114 = *(v132 - 8);
  __chkstk_darwin(v132);
  v113 = (&v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100041DDC();
  __chkstk_darwin(v6 - 8);
  v112 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  __chkstk_darwin(v8 - 8);
  v108 = &v106 - v9;
  v111 = sub_100003DC0(&qword_1000549E0, &unk_100043040);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v106 - v10;
  v120 = sub_100041E5C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = v11;
  v118 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  __chkstk_darwin(v12 - 8);
  v122 = &v106 - v13;
  v14 = sub_100041D5C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004089C();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10004098C();
  v127 = *(v128 - 8);
  v22 = __chkstk_darwin(v128);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v123 = &v106 - v26;
  __chkstk_darwin(v25);
  v130 = sub_10004095C();
  v124 = *(v130 - 8);
  v27 = __chkstk_darwin(v130);
  v116 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v28;
  __chkstk_darwin(v27);
  v30 = &v106 - v29;
  sub_100040ACC();
  v129 = v30;
  sub_10004093C();
  sub_10004088C();
  sub_10004086C();
  v32 = v31;
  v107 = v19;
  (*(v19 + 8))(v21, v18);
  v121 = a2;
  sub_100041E4C();
  v33 = sub_100005970();
  (*(v15 + 8))(v17, v14);
  if (v33 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000421BC())
  {
    v35 = v123;
    sub_100040ACC();

    v21 = sub_10004097C();
    v36 = sub_1000420CC();

    LODWORD(v114) = v36;
    v37 = os_log_type_enabled(v21, v36);
    v38 = v33 & 0xC000000000000001;
    v132 = i;
    v133 = v33;
    if (v37)
    {
      v113 = v21;
      v18 = swift_slowAlloc();
      v24 = 0;
      v112 = swift_slowAlloc();
      *&v134[0] = v112;
      v39 = v18;
      *v18 = 136315138;
      v40 = v33 & 0xFFFFFFFFFFFFFF8;
      v33 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v38)
        {
          v41 = sub_10004218C();
        }

        else
        {
          if (v24 >= *(v40 + 16))
          {
            goto LABEL_44;
          }

          v41 = *(v133 + 8 * v24 + 32);
        }

        v21 = v41;
        v18 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v42 = [v41 identifier];
        v43 = sub_100041EFC();
        v45 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_10000E678(0, *(v33 + 16) + 1, 1, v33);
        }

        v47 = *(v33 + 16);
        v46 = *(v33 + 24);
        v21 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v33 = sub_10000E678((v46 > 1), v47 + 1, 1, v33);
        }

        *(v33 + 16) = v21;
        v48 = (v33 + 16 * v47);
        *(v48 + 4) = v43;
        *(v48 + 5) = v45;
        ++v24;
        if (v18 == v132)
        {
          v49 = sub_100041FCC();
          v21 = v50;

          v51 = sub_10001BA5C(v49, v21, v134);

          *(v39 + 4) = v51;
          v52 = v113;
          _os_log_impl(&_mh_execute_header, v113, v114, "get timeline for multiple contacts widget with Ids %s", v39, 0xCu);
          sub_100010DCC(v112);

          (v127[1])(v123, v128);
          v33 = v133;
          goto LABEL_17;
        }
      }
    }

    else
    {

      (v127[1])(v35, v128);
      v40 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v53 = sub_10004205C();
      v54 = v122;
      (*(*(v53 - 8) + 56))(v122, 1, 1, v53);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      sub_1000279C0(0, 0, v54, &unk_100043058, v55);

      v56 = 0;
      v18 = &_swiftEmptyArrayStorage;
      do
      {
        if (v38)
        {
          v57 = sub_10004218C();
        }

        else
        {
          if (v56 >= *(v40 + 16))
          {
            goto LABEL_40;
          }

          v57 = *(v33 + 8 * v56 + 32);
        }

        v58 = v57;
        v33 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v59 = [v57 identifier];
        v21 = sub_100041EFC();
        v61 = v60;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10000E678(0, *(v18 + 2) + 1, 1, v18);
        }

        v24 = *(v18 + 2);
        v62 = *(v18 + 3);
        if (v24 >= v62 >> 1)
        {
          v18 = sub_10000E678((v62 > 1), v24 + 1, 1, v18);
        }

        *(v18 + 2) = v24 + 1;
        v63 = &v18[16 * v24];
        *(v63 + 4) = v21;
        *(v63 + 5) = v61;
        ++v56;
        v64 = v33 == v132;
        v33 = v133;
      }

      while (!v64);
      sub_100010A94(v131, v131[3]);
      sub_10004105C();
      v21 = 0;
      *&v134[0] = &_swiftEmptyArrayStorage;
      v65 = v132;
      while (1)
      {
        if (v38)
        {
          sub_10004218C();
        }

        else
        {
          if (v21 >= *(v40 + 16))
          {
            goto LABEL_42;
          }

          v66 = *(v33 + 8 * v21 + 32);
        }

        v67 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        sub_100041FAC();
        if (*((*&v134[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v134[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((*&v134[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100041FDC();
        }

        sub_100041FFC();
        ++v21;
        if (v67 == v65)
        {
          v68 = *&v134[0];
          v69 = sub_100029284(&_swiftEmptyArrayStorage);
          v70 = __chkstk_darwin(v69);
          v71 = v131;
          *(&v106 - 2) = v131;
          v123 = sub_10000A8F8(v70, sub_100010AD8, (&v106 - 4), v68);

          v128 = v71[13];
          v132 = v71[14];
          v127 = sub_100010A94(v71 + 10, v128);
          sub_100010AF4(v71, v134);
          v72 = v119;
          v73 = v118;
          v74 = v120;
          (*(v119 + 16))(v118, v121, v120);
          v75 = v124;
          v76 = v116;
          (*(v124 + 16))(v116, v129, v130);
          v77 = (*(v72 + 80) + 176) & ~*(v72 + 80);
          v78 = (v117 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
          v79 = (*(v75 + 80) + v78 + 16) & ~*(v75 + 80);
          v80 = swift_allocObject();
          v81 = v134[5];
          *(v80 + 88) = v134[4];
          *(v80 + 104) = v81;
          v82 = v134[7];
          *(v80 + 120) = v134[6];
          *(v80 + 136) = v82;
          v83 = v134[1];
          *(v80 + 24) = v134[0];
          *(v80 + 40) = v83;
          v84 = v134[3];
          *(v80 + 56) = v134[2];
          *(v80 + 16) = v18;
          *(v80 + 72) = v84;
          v85 = v123;
          *(v80 + 152) = v133;
          *(v80 + 160) = v85;
          *(v80 + 168) = v32;
          (*(v72 + 32))(v80 + v77, v73, v74);
          v86 = (v80 + v78);
          v87 = v126;
          *v86 = v125;
          v86[1] = v87;
          v88 = v130;
          (*(v75 + 32))(v80 + v79, v76, v130);

          sub_1000410BC();

          return (*(v75 + 8))(v129, v88);
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  sub_100040ACC();
  v90 = sub_10004097C();
  v91 = sub_1000420CC();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "Could not get any contacts for Mutiple contacts widget", v92, 2u);
  }

  (v127[1])(v24, v128);
  sub_100003DC0(&qword_1000549F0, &unk_100043060);
  v93 = type metadata accessor for MultipleContactsEntry(0);
  v94 = (*(*(v93 - 1) + 80) + 32) & ~*(*(v93 - 1) + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100042C30;
  v96 = (v95 + v94);
  sub_10004088C();
  v97 = sub_100041E3C();
  v98 = v108;
  (*(*(v97 - 8) + 56))(v108, 1, 1, v97);
  *v96 = &_swiftEmptyArrayStorage;
  (*(v107 + 32))(&v96[v93[5]], v21, v18);
  v96[v93[6]] = 0;
  sub_1000408BC();
  sub_100004C8C(v98, &v96[v93[8]], &qword_100054788, &unk_100042DD0);
  sub_100041DCC();
  sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry, &unk_100042E8C);
  v99 = v109;
  sub_100041E9C();
  v125(v99);
  (*(v110 + 8))(v99, v111);
  v100 = v113;
  sub_10004091C();
  v101 = v129;
  v102 = sub_10004094C();
  v103 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    v105 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, v103, v105, "getTimeline", "no contacts", v104, 2u);
  }

  (*(v114 + 8))(v100, v132);
  return (*(v124 + 8))(v101, v130);
}

uint64_t sub_100008064()
{
  v0[2] = sub_100040BCC();
  v0[3] = v1;
  sub_10004203C();
  v0[4] = sub_10004202C();
  v3 = sub_10004200C();

  return _swift_task_switch(sub_100008100, v3, v2);
}

uint64_t sub_100008100()
{

  sub_100040DCC();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100008178(uint64_t a1, int a2, uint64_t a3, void (**a4)(char *, uint64_t), unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *), double a9)
{
  v196 = a8;
  v192 = a7;
  v226 = a6;
  v212 = a4;
  LODWORD(v213) = a2;
  v13 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v13 - 8);
  v219 = &v170 - v14;
  v223 = sub_100040E0C();
  v172 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004116C();
  __chkstk_darwin(v16 - 8);
  v225 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v170 - v19;
  v195 = sub_10004092C();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100040ADC();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_100041D5C();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100040AEC();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100041BAC();
  v26 = *(v25 - 8);
  v227 = v25;
  v228 = v26;
  v27 = __chkstk_darwin(v25);
  v220 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v170 - v29;
  v31 = sub_100003DC0(&qword_1000549F8, &unk_100043070);
  v217 = *(v31 - 8);
  __chkstk_darwin(v31);
  v224 = &v170 - v32;
  v216 = type metadata accessor for MultipleContactsEntry(0);
  v218 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003DC0(&qword_100054A00, &unk_100043560);
  v35 = __chkstk_darwin(v34 - 8);
  v174 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v180 = &v170 - v37;
  v38 = sub_100003DC0(&qword_100054A08, &unk_100043080);
  __chkstk_darwin(v38 - 8);
  v211 = &v170 - v39;
  v176 = sub_100041DDC();
  v183 = *(v176 - 8);
  v40 = __chkstk_darwin(v176);
  v184 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v182 = &v170 - v42;
  v179 = sub_100003DC0(&qword_100054A10, &qword_100043570);
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v170 - v43;
  v199 = sub_100003DC0(&qword_100054A18, &unk_100043090);
  v175 = *(v199 - 8);
  __chkstk_darwin(v199);
  v198 = &v170 - v44;
  v202 = sub_10004098C();
  v201 = *(v202 - 8);
  v45 = __chkstk_darwin(v202);
  v181 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v170 - v48;
  __chkstk_darwin(v47);
  v51 = &v170 - v50;
  v209 = sub_10004089C();
  v208 = *(v209 - 8);
  v52 = __chkstk_darwin(v209);
  v173 = &v170 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v170 - v54;
  v203 = sub_100003DC0(&qword_1000549E0, &unk_100043040);
  v56 = *(v203 - 8);
  __chkstk_darwin(v203);
  v210 = &v170 - v57;
  v207 = v55;
  sub_10004088C();
  v222 = a5;
  v200 = a5 >> 62;
  v197 = a3;
  v185 = v56;
  if ((v213 & 1) == 0)
  {
    sub_100040ACC();

    v96 = sub_10004097C();
    v97 = sub_1000420CC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = v31;
      v99 = swift_slowAlloc();
      v229[0] = swift_slowAlloc();
      v100 = v229[0];
      *v99 = 136315138;
      v101 = sub_100041FCC();
      v103 = sub_10001BA5C(v101, v102, v229);

      *(v99 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v96, v97, "got statuses for contactID's: %s", v99, 0xCu);
      sub_100010DCC(v100);

      v31 = v98;
    }

    v172 = *(v201 + 8);
    (v172)(v51, v202);
    v104 = v211;
    v105 = a1;
    v106 = v177;
    sub_100040B4C();
    v107 = swift_allocObject();
    *(v107 + 16) = v105;
    v108 = __chkstk_darwin(v107);
    *(&v170 - 2) = sub_100010E5C;
    *(&v170 - 1) = v108;
    __chkstk_darwin(v108);
    *(&v170 - 2) = sub_100010E64;
    *(&v170 - 1) = v109;
    sub_100010EE4();

    sub_100040F3C();

    (*(v178 + 8))(v106, v179);
    v110 = sub_100040F2C();
    v111 = *(v110 + 16);
    if (v111)
    {
      v229[0] = &_swiftEmptyArrayStorage;
      v112 = v110;
      sub_100024330(0, v111, 0);
      v113 = v112;
      v114 = 0;
      v115 = v229[0];
      v221 = &v112[(*(v217 + 80) + 32) & ~*(v217 + 80)];
      v220 = (v217 + 16);
      v212 = (v217 + 8);
      v214 = v31;
      v219 = v112;
      v213 = v111;
      while (v114 < *(v113 + 2))
      {
        v225 = v115;
        v116 = *(v217 + 72);
        v223 = v114;
        (*(v217 + 16))(v224, &v221[v116 * v114], v31);
        v117 = sub_100040EDC();
        v118 = *(v117 + 16);
        if (v118)
        {
          v230 = &_swiftEmptyArrayStorage;
          sub_1000242EC(0, v118, 0);
          v119 = 0;
          v120 = v230;
          v121 = (v117 + 40);
          while (v119 < *(v117 + 16))
          {
            v122 = *v121;
            v123 = *(v121 - 1);

            sub_100009F84(v123, v122, v226, v30);

            v230 = v120;
            v125 = v120[2];
            v124 = v120[3];
            if (v125 >= v124 >> 1)
            {
              sub_1000242EC((v124 > 1), v125 + 1, 1);
              v120 = v230;
            }

            ++v119;
            v120[2] = v125 + 1;
            (*(v228 + 32))(v120 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v125, v30, v227);
            v121 += 2;
            if (v118 == v119)
            {

              v104 = v211;
              goto LABEL_34;
            }
          }

          __break(1u);
          break;
        }

        v120 = &_swiftEmptyArrayStorage;
LABEL_34:
        v126 = v216;
        v127 = v215;
        v31 = v214;
        v128 = v224;
        sub_100040ECC();
        v129 = *(v126 + 32);
        sub_100040EEC();
        sub_100041AEC();
        sub_100040EFC();
        sub_100041E2C();
        v130 = sub_100041E3C();
        (*(*(v130 - 8) + 56))(&v127[v129], 0, 1, v130);
        *v127 = v120;
        v127[*(v126 + 24)] = 0;
        sub_1000408BC();
        (*v212)(v128, v31);
        v115 = v225;
        v229[0] = v225;
        v132 = *(v225 + 2);
        v131 = *(v225 + 3);
        if (v132 >= v131 >> 1)
        {
          sub_100024330((v131 > 1), v132 + 1, 1);
          v115 = v229[0];
        }

        v114 = v223 + 1;
        *(v115 + 16) = v132 + 1;
        sub_100010530(v127, v115 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v132, type metadata accessor for MultipleContactsEntry);
        v113 = v219;
        if (v114 == v213)
        {
          v136 = v115;

          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

    v136 = &_swiftEmptyArrayStorage;
LABEL_40:
    v137 = v180;
    sub_100040F1C();
    v138 = v174;
    sub_100011258(v137, v174, &qword_100054A00, &unk_100043560);
    v139 = 1;
    v140 = (*(v208 + 48))(v138, 1, v209);
    v141 = v176;
    v142 = v173;
    if (v140 != 1)
    {
      v143 = v208;
      v144 = v209;
      (*(v208 + 32))(v173, v138, v209);
      sub_100041DAC();
      v145 = v144;
      v137 = v180;
      (*(v143 + 8))(v142, v145);
      v139 = 0;
    }

    sub_1000049F8(v137, &qword_100054A00, &unk_100043560);
    v146 = v183;
    (*(v183 + 56))(v104, v139, 1, v141);
    v147 = *(v146 + 48);
    if (v147(v104, 1, v141) == 1)
    {
      v148 = v182;
      sub_100041DBC();
      v149 = v147(v104, 1, v141);
      v150 = v148;
      v151 = v181;
      if (v149 != 1)
      {
        sub_1000049F8(v104, &qword_100054A08, &unk_100043080);
      }
    }

    else
    {
      v150 = v182;
      (*(v146 + 32))(v182, v104, v141);
      v151 = v181;
    }

    (*(v146 + 16))(v184, v150, v141);
    sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry, &unk_100042E8C);

    sub_100041E9C();
    sub_10004088C();
    sub_10004086C();
    v153 = v152;
    (*(v208 + 8))(v142, v209);
    sub_100040ACC();

    v154 = sub_10004097C();
    v155 = sub_1000420CC();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 134349312;
      v157 = v136[2];

      *(v156 + 4) = v157;

      *(v156 + 12) = 2048;
      *(v156 + 14) = v153 - a9;
      _os_log_impl(&_mh_execute_header, v154, v155, "timeline created with %{public}ld entries elapsed %f", v156, 0x16u);
      v151 = v181;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v158 = v175;
    (v172)(v151, v202);
    (*(v183 + 8))(v182, v141);
    (*(v158 + 8))(v198, v199);
LABEL_50:
    (*(v205 + 104))(v204, enum case for PeopleAnalytics.WidgetType.multiple(_:), v206);
    sub_100041EAC();

    if (!v200)
    {
LABEL_51:
      sub_100040B3C();
      v159 = v186;
      sub_100041E4C();
      v160 = v189;
      sub_100041D4C();
      (*(v187 + 8))(v159, v188);
      v161 = v204;
      sub_100040AFC();
      (*(v190 + 8))(v160, v191);
      (*(v205 + 8))(v161, v206);
      v196(v210);
      v162 = v197;

      v163 = v193;
      sub_10004091C();
      v164 = sub_10004094C();
      v165 = sub_1000420DC();
      if (sub_1000420EC())
      {
        v166 = swift_slowAlloc();
        *v166 = 134217984;
        *(v166 + 4) = *(v162 + 16);

        v167 = sub_10004090C();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v164, v165, v167, "getTimeline", "completed %ld contacts", v166, 0xCu);
      }

      else
      {
      }

      v168 = v195;
      v169 = v185;

      (*(v194 + 8))(v163, v168);
      (*(v208 + 8))(v207, v209);
      return (*(v169 + 8))(v210, v203);
    }

LABEL_57:
    sub_1000421BC();
    goto LABEL_51;
  }

  v229[0] = a1;
  swift_errorRetain();
  sub_100003DC0(&qword_100054A20, &unk_100043580);
  swift_willThrowTypedImpl();
  sub_100040ACC();
  swift_errorRetain();
  v58 = sub_10004097C();
  v59 = a1;
  v60 = sub_1000420CC();
  sub_100010E18(v59, 1);
  v61 = os_log_type_enabled(v58, v60);
  v171 = v59;
  if (v61)
  {
    v62 = v20;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v229[0] = v64;
    *v63 = 136315138;
    swift_getErrorValue();
    v65 = sub_10004225C();
    v67 = sub_10001BA5C(v65, v66, v229);

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v58, v60, "got failure fetching statuses for contactID's: %s", v63, 0xCu);
    sub_100010DCC(v64);

    v20 = v62;
  }

  (*(v201 + 8))(v49, v202);
  v68 = v226;
  sub_100003DC0(&qword_1000549F0, &unk_100043060);
  v69 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100042C30;
  v71 = v219;
  if (v200)
  {
    v72 = sub_1000421BC();
  }

  else
  {
    v72 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = &_swiftEmptyArrayStorage;
  if (!v72)
  {
LABEL_38:
    v133 = (v70 + v69);
    sub_100041B2C();
    v134 = sub_100041E3C();
    (*(*(v134 - 8) + 56))(v20, 0, 1, v134);
    *v133 = v73;
    v135 = v216;
    (*(v208 + 16))(&v133[*(v216 + 20)], v207, v209);
    v133[*(v135 + 24)] = 0;
    sub_1000408BC();
    sub_100004C8C(v20, &v133[*(v135 + 32)], &qword_100054788, &unk_100042DD0);
    sub_100041DCC();
    sub_10000E448(&qword_100054918, type metadata accessor for MultipleContactsEntry, &unk_100042E8C);
    sub_100041E9C();
    sub_100010E18(v171, 1);
    goto LABEL_50;
  }

  v230 = &_swiftEmptyArrayStorage;
  result = sub_1000242EC(0, v72 & ~(v72 >> 63), 0);
  if ((v72 & 0x8000000000000000) == 0)
  {
    v213 = v69;
    v214 = v70;
    v215 = v20;
    v75 = 0;
    v73 = v230;
    v224 = (v222 & 0xC000000000000001);
    LODWORD(v218) = enum case for ContactFormatter.Style.shortName(_:);
    v76 = (v172 + 104);
    v217 = v228 + 32;
    while (1)
    {
      v77 = v224 ? sub_10004218C() : *(v222 + 8 * v75 + 32);
      v78 = v77;
      (*v76)(v221, v218, v223);
      v79 = v78;
      sub_100041F4C();
      v229[3] = sub_100040E2C();
      v229[4] = &protocol witness table for ContactFormatter;
      sub_100004AC8(v229);
      sub_100040E1C();
      sub_10004113C();
      v80 = [v79 identifier];
      v81 = sub_100041EFC();
      v83 = v82;

      if (!*(v68 + 16))
      {
        break;
      }

      v84 = sub_1000291E8(v81, v83);
      v86 = v85;

      if ((v86 & 1) == 0)
      {
        goto LABEL_16;
      }

      v87 = *(v226 + 56);
      v88 = sub_100041C6C();
      v89 = *(v88 - 8);
      v90 = v89;
      v91 = v87 + *(v89 + 72) * v84;
      v68 = v226;
      (*(v89 + 16))(v219, v91, v88);
      (*(v90 + 56))(v219, 0, 1, v88);
      v71 = v219;
LABEL_17:
      v93 = v220;
      sub_100041B9C();

      v230 = v73;
      v95 = v73[2];
      v94 = v73[3];
      if (v95 >= v94 >> 1)
      {
        sub_1000242EC((v94 > 1), v95 + 1, 1);
        v73 = v230;
      }

      ++v75;
      v73[2] = v95 + 1;
      (*(v228 + 32))(v73 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v95, v93, v227);
      if (v72 == v75)
      {
        v20 = v215;
        v70 = v214;
        v69 = v213;
        goto LABEL_38;
      }
    }

LABEL_16:
    v92 = sub_100041C6C();
    (*(*(v92 - 8) + 56))(v71, 1, 1, v92);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_100009EEC(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = sub_100041EFC();
  v6 = v5;

  if (*(a2 + 16))
  {
    sub_1000291E8(v4, v6);
    v8 = v7;

    if (v8)
    {
    }
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100009F84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v36 = a3;
  v39 = a4;
  v5 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v5 - 8);
  v38 = &v32 - v6;
  v33 = sub_100040E0C();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004116C();
  __chkstk_darwin(v8 - 8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + 32;
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100010F30(v11, &v44);
      sub_100004B44(&v44, v43);
      sub_100003DC0(&qword_100054A30, &unk_1000430A0);
      sub_100003DC0(&qword_100054A38, &unk_100043590);
      if (swift_dynamicCast())
      {
        if (*(&v41 + 1))
        {
          sub_100004B44(&v40, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_10000E95C(0, v12[2] + 1, 1, v12);
          }

          v14 = v12[2];
          v13 = v12[3];
          if (v14 >= v13 >> 1)
          {
            v12 = sub_10000E95C((v13 > 1), v14 + 1, 1, v12);
          }

          v12[2] = v14 + 1;
          sub_100004B44(v43, &v12[5 * v14 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }

      sub_1000049F8(&v40, &qword_100054A40, &qword_1000430B0);
LABEL_5:
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  (*(v32 + 104))(v34, enum case for ContactFormatter.Style.shortName(_:), v33);
  sub_100041F4C();
  v45 = sub_100040E2C();
  v46 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v44);
  sub_100040E1C();
  v15 = v35;
  sub_10004113C();
  v16 = [v15 identifier];
  v17 = sub_100041EFC();
  v19 = v18;

  v20 = v36;
  if (!*(v36 + 16))
  {

    goto LABEL_17;
  }

  v21 = sub_1000291E8(v17, v19);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_17:
    v30 = sub_100041C6C();
    (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
    return sub_100041B9C();
  }

  v24 = *(v20 + 56);
  v25 = sub_100041C6C();
  v26 = *(v25 - 8);
  v27 = v26;
  v28 = v24 + *(v26 + 72) * v21;
  v29 = v38;
  (*(v26 + 16))(v38, v28, v25);
  (*(v27 + 56))(v29, 0, 1, v25);
  return sub_100041B9C();
}

uint64_t sub_10000A450@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_10003E590();
  if (v5)
  {
    sub_100010A94(a1, a1[3]);
    v6 = sub_10004109C();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_10000A4F0(uint64_t a1, void **a2, void *a3)
{
  v21[1] = a1;
  v5 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100041C6C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_100010A94(a3, a3[3]);
  sub_100041B0C();
  result = sub_10004107C();
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    sub_100010F94(result, v14);
    sub_100041C2C();
    if (sub_100041C5C())
    {

      v17 = [v12 identifier];
      v18 = sub_100041EFC();
      v20 = v19;

      (*(v9 + 16))(v7, v11, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_10000A720(v7, v18, v20);
    }

    sub_100010FE8(v15, v16);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_10000A720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_100041C6C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000049F8(a1, &qword_1000546F0, &unk_100044170);
    sub_10000EAA4(a2, a3, v9);

    return sub_1000049F8(v9, &qword_1000546F0, &unk_100044170);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10000F180(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

id sub_10000A8F8(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = sub_10004218C();
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_1000421BC();
  }

  return result;
}

uint64_t sub_10000AA24@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for MultipleContactsEntry(0);
  sub_10004088C();
  v3 = *(v2 + 32);
  v4 = sub_100041E3C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *a1 = &_swiftEmptyArrayStorage;
  a1[*(v2 + 24)] = 1;
  return sub_1000408BC();
}

uint64_t sub_10000AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000AB88;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000AB88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100011628;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000AD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10004089C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000ADD8()
{
  v0 = sub_100041D5C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v23 - v5;
  v7 = sub_1000414EC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v25 = v23 - v12;
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  v23[1] = *(type metadata accessor for MultipleContactsEntryView(0) + 28);
  sub_10002F610(v14);
  v15 = sub_1000414DC();
  v27 = v8;
  v24 = *(v8 + 8);
  v24(v14, v7);
  if ((v15 & 1) != 0 && (sub_10002F5E8(v6), (*(v1 + 104))(v4, enum case for WidgetFamily.systemMedium(_:), v0), sub_10000E448(&qword_100054720, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily), sub_100041F9C(), sub_100041F9C(), v16 = *(v1 + 8), v16(v4, v0), v16(v6, v0), v29 == v28))
  {
    v17 = v25;
    sub_10002F610(v25);
    v18 = v26;
    (*(v27 + 104))(v26, enum case for ContentSizeCategory.accessibilityLarge(_:), v7);
    v19 = sub_100010598(v17, v18);
    v20 = v18;
    v21 = v24;
    v24(v20, v7);
    v21(v17, v7);
    if (v19)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    sub_10002F5E8(v6);
    sub_100041D3C();
    (*(v1 + 8))(v6, v0);
    return sub_100040A0C();
  }
}

uint64_t sub_10000B160()
{
  v16 = sub_10004146C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003DC0(&qword_100054668, &qword_100042AA0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_100041D5C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultipleContactsEntryView(0);
  sub_100011258(v0 + *(v11 + 24), v6, &qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1000420BC();
    v12 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 1;
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:))
  {
    result = 2;
    if (v13 != enum case for WidgetFamily.systemLarge(_:) && v13 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      result = 1;
      if (v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v10, v7);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10000B498()
{
  v1 = sub_100041D5C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  type metadata accessor for MultipleContactsEntryView(0);
  sub_10002F5E8(v7);
  (*(v2 + 104))(v5, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10000E448(&qword_100054720, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100041F9C();
  sub_100041F9C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  if (v12[1] != v12[0])
  {
    return 1;
  }

  v9 = *(*v0 + 16);
  v10 = 2;
  if (v9 != sub_100040A0C())
  {
    return 1;
  }

  return v10;
}

uint64_t sub_10000B66C()
{
  v1 = sub_100003DC0(&qword_1000549C8, &qword_100043030);
  __chkstk_darwin(v1 - 8);
  v3 = v36 - v2;
  v4 = sub_100041D5C();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041BAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersonEntryType(0);
  v49 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v36 - v14;
  v16 = *v0;

  v43 = v0;
  v17 = sub_10000ADD8();
  result = sub_10000BBF0(v17, v16);
  v47 = v20;
  v48 = v21 >> 1;
  v22 = (v21 >> 1) - v19;
  if (__OFSUB__(v21 >> 1, v19))
  {
    goto LABEL_18;
  }

  v38 = v10;
  v39 = v3;
  v37 = v13;
  if (v22)
  {
    v23 = v19;
    v36[1] = result;
    v50 = &_swiftEmptyArrayStorage;
    result = sub_100024374(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v24 = v50;
    v44 = v7 + 8;
    v45 = v7 + 56;
    v25 = v48;
    if (v23 > v48)
    {
      v25 = v23;
    }

    v46 = v25;
    while (v46 != v23)
    {
      v26 = *(v7 + 16);
      v26(v9, v47 + *(v7 + 72) * v23, v6);
      v26(v15, v9, v6);
      (*(v7 + 56))(v15, 0, 2, v6);
      (*(v7 + 8))(v9, v6);
      v50 = v24;
      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        sub_100024374((v27 > 1), v28 + 1, 1);
        v24 = v50;
      }

      v24[2] = v28 + 1;
      result = sub_100010530(v15, v24 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v28, type metadata accessor for PersonEntryType);
      if (v48 == ++v23)
      {
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  v24 = &_swiftEmptyArrayStorage;
LABEL_13:
  v50 = v24;
  v29 = *(v43 + *(type metadata accessor for MultipleContactsEntry(0) + 24));
  type metadata accessor for MultipleContactsEntryView(0);
  v30 = v40;
  sub_10002F5E8(v40);
  sub_100041D3C();
  (*(v41 + 8))(v30, v42);
  if (v29)
  {
    sub_100040A0C();
  }

  else
  {
    sub_100040A1C();
  }

  v31 = *(v7 + 56);
  v32 = v37;
  v31(v37, 1, 2, v6);
  sub_100003DC0(&qword_1000549D0, &qword_100043038);
  sub_100004D80(&qword_1000549D8, &qword_1000549D0, &qword_100043038, &protocol conformance descriptor for [A]);
  v33 = sub_10004207C();
  sub_1000111F8(v32, type metadata accessor for PersonEntryType);

  v50 = v33;
  sub_10000B160();
  v34 = v39;
  v31(v39, 2, 2, v6);
  (*(v49 + 56))(v34, 0, 1, v38);
  v35 = sub_10004208C();
  sub_1000049F8(v34, &qword_1000549C8, &qword_100043030);

  return v35;
}

uint64_t sub_10000BBF0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100041BAC();
    return a2;
  }

  return result;
}

uint64_t sub_10000BC84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MultipleContactsEntryView(0);
  sub_100011258(v1 + *(v10 + 36), v9, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100041CFC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10000BE8C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_100003DC0(&qword_100054970, &qword_100042FB0);
  __chkstk_darwin(v39);
  v38 = &v31 - v2;
  v3 = type metadata accessor for MultipleContactsEntryView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v36 = v5;
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100003DC0(&qword_100054940, &qword_100042F90);
  __chkstk_darwin(v37);
  v8 = &v31 - v7;
  *v8 = sub_1000414FC();
  *(v8 + 1) = 0x4040000000000000;
  v8[16] = 0;
  sub_100003DC0(&qword_100054978, &qword_100042FB8);
  v34 = v1;
  v9 = sub_10000B66C();
  v10 = sub_10000F98C(v9);

  *&v41 = v10;
  KeyPath = swift_getKeyPath();
  v33 = type metadata accessor for MultipleContactsEntryView;
  sub_10000FB1C(v1, v6, type metadata accessor for MultipleContactsEntryView);
  v11 = *(v4 + 80);
  v12 = swift_allocObject();
  v35 = type metadata accessor for MultipleContactsEntryView;
  sub_100010530(v6, v12 + ((v11 + 16) & ~v11), type metadata accessor for MultipleContactsEntryView);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10000FEC8;
  *(v13 + 24) = v12;
  sub_100003DC0(&qword_100054980, &qword_100042FE0);
  sub_100003DC0(&qword_100054988, &qword_100042FE8);
  sub_100004D80(&qword_100054990, &qword_100054980, &qword_100042FE0, &protocol conformance descriptor for [A]);
  sub_10000FFB8();
  sub_100041A2C();
  KeyPath = swift_getKeyPath();
  v14 = v33;
  v15 = v34;
  sub_10000FB1C(v34, v6, v33);
  sub_10004203C();
  v16 = sub_10004202C();
  v17 = (v11 + 32) & ~v11;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = v35;
  sub_100010530(v6, v18 + v17, v35);
  sub_10000FB1C(v15, v6, v14);
  v20 = sub_10004202C();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_100010530(v6, v21 + v17, v19);
  sub_100003DC0(&qword_100054780, &qword_100042D98);
  sub_100041A0C();
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v25 = v38;
  v26 = &v8[*(v37 + 36)];
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  *(v26 + 3) = v23;
  v26[32] = v24;
  sub_100011258(v8, v25, &qword_100054940, &qword_100042F90);
  v27 = swift_storeEnumTagMultiPayload();
  sub_10000E540(v27, v28, v29);
  sub_10000E594();
  sub_10004158C();
  return sub_1000049F8(v8, &qword_100054940, &qword_100042F90);
}

uint64_t sub_10000C34C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100041CFC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  sub_10000BC84(&v14 - v7);
  if (sub_100040BDC())
  {
    v9 = sub_10004192C();
    result = (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_100041CDC();
    v11 = sub_100041CCC();
    v12 = *(v3 + 8);
    v12(v6, v2);
    if (v11)
    {
      v13 = sub_1000418BC();
    }

    else
    {
      v13 = sub_1000418CC();
    }

    v9 = v13;
    result = (v12)(v8, v2);
  }

  *a1 = v9;
  return result;
}

void *sub_10000C4C0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MultipleContactsEntryView(0);
  sub_100003DC0(&qword_1000549B8, &qword_100043020);
  result = sub_10004199C();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10000C54C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    type metadata accessor for MultipleContactsEntryView(0);
    sub_100003DC0(&qword_1000549B8, &qword_100043020);
    sub_10004199C();
    return sub_1000419AC();
  }

  return result;
}

uint64_t sub_10000C624@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{

  v6 = sub_10000B498();
  type metadata accessor for MultipleContactsEntryView(0);
  sub_100003DC0(&qword_1000549B8, &qword_100043020);
  sub_10004199C();
  v7 = *(type metadata accessor for MultipleContactsEntry(0) + 28);
  v8 = type metadata accessor for MultipleContactsRowView(0);
  v9 = v8[10];
  v10 = sub_1000408CC();
  (*(*(v10 - 8) + 16))(&a3[v9], a2 + v7, v10);
  *a3 = swift_getKeyPath();
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  v11 = v8[5];
  v12 = enum case for Font.TextStyle.caption2(_:);
  v13 = sub_1000416DC();
  (*(*(v13 - 8) + 104))(&a3[v11], v12, v13);
  *&a3[v8[6]] = a1;
  *&a3[v8[7]] = v6;
  v14 = &a3[v8[8]];
  *v14 = v16;
  v14[8] = v17;
  *&a3[v8[9]] = 2;
  result = sub_100003DC0(&qword_100054988, &qword_100042FE8);
  *&a3[*(result + 36)] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_10000C7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000415CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003DC0(&qword_100054920, &qword_100042F88);
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  sub_10000BE8C(&v13[-v8]);
  sub_1000415BC();
  v14 = v1;
  sub_100041A9C();
  sub_10000E4B4();
  sub_10004185C();
  (*(v4 + 8))(v6, v3);
  sub_1000049F8(v9, &qword_100054920, &qword_100042F88);
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100003DC0(&qword_100054968, &qword_100042FA8) + 36));
  *v11 = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TimeStampModifier(0);
  *(v11 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_10000CA18()
{
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v0 = sub_100041D5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100042C40;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.systemMedium(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.systemLarge(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  qword_1000574A0 = v4;
  return result;
}

uint64_t sub_10000CB84@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v52 = sub_100041D0C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003DC0(&qword_100054740, &qword_100042CC8);
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v40 - v3;
  v5 = sub_100003DC0(&qword_100054748, &qword_100042CD0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v40 - v6;
  v8 = sub_100003DC0(&qword_100054750, &qword_100042CD8);
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v40 - v9;
  v46 = sub_100003DC0(&qword_100054758, &qword_100042CE0);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = v40 - v11;
  v48 = sub_100003DC0(&qword_100054760, &qword_100042CE8);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v40 - v13;
  v40[1] = sub_100040BCC();
  v40[0] = v14;
  v15 = sub_100040D9C();
  v16 = sub_100040D8C();
  v60 = v15;
  v61 = &protocol witness table for ContactFetcher;
  *&v59 = v16;
  v57 = sub_1000408EC();
  v58 = &protocol witness table for Locale;
  sub_100004AC8(&v56);
  sub_1000408DC();
  sub_1000409CC();
  if (sub_1000409BC())
  {
    v17 = sub_100040F8C();
    swift_allocObject();
    v18 = sub_100040F7C();
    v19 = &protocol witness table for DemoStatusProvider;
  }

  else
  {
    v17 = sub_100040DEC();
    v18 = sub_100040DDC();
    v19 = &protocol witness table for StatusProvider;
  }

  v55 = v19;
  v54 = v17;
  *&v53 = v18;
  sub_1000409AC();
  sub_100040F6C();
  swift_allocObject();
  v20 = sub_100040F5C();
  sub_100004B44(&v59, &v62);
  sub_100004B44(&v56, v66);
  sub_100004B44(&v53, v67);
  v68 = v20;
  type metadata accessor for MultipleContactsEntryView(0);
  v39 = sub_10000E448(&qword_100054768, type metadata accessor for MultipleContactsEntryView, &unk_100042F38);
  sub_10000D58C(v39, v21, v22);
  sub_100041D9C();
  v23 = sub_100004D80(&qword_100054778, &qword_100054740, &qword_100042CC8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10004156C();
  (*(v41 + 8))(v4, v2);
  v62 = sub_100041F4C();
  v63 = v24;
  *&v59 = v2;
  *(&v59 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100004924(OpaqueTypeConformance2, v26, v27);
  sub_10004154C();

  (*(v42 + 8))(v7, v5);
  *&v59 = sub_100041F4C();
  *(&v59 + 1) = v29;
  v62 = v5;
  v63 = &type metadata for String;
  v64 = OpaqueTypeConformance2;
  v65 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  sub_10004150C();

  (*(v43 + 8))(v10, v8);
  if (qword_100054540 != -1)
  {
    swift_once();
  }

  v62 = v8;
  v63 = &type metadata for String;
  v64 = v30;
  v65 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v46;
  sub_10004151C();
  (*(v44 + 8))(v12, v33);
  v34 = v50;
  v35 = v49;
  v36 = v52;
  (*(v50 + 104))(v49, enum case for WidgetBackgroundStyle.blur(_:), v52);
  v62 = v33;
  v63 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_10004155C();
  (*(v34 + 8))(v35, v36);
  return (*(v47 + 8))(v32, v37);
}

uint64_t sub_10000D3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000FB1C(a1, a2, type metadata accessor for MultipleContactsEntry);
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for MultipleContactsEntryView(0);
  *(a2 + v4[9]) = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  sub_100040D9C();
  *(a2 + v5) = sub_100040D8C();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v4[8];
  sub_100003DC0(&qword_100054780, &qword_100042D98);
  sub_10004198C();
  *v8 = v11;
  *(v8 + 8) = v12;
  *(v8 + 16) = v13;
  v9 = a2 + v4[10];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

unint64_t sub_10000D58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100054770;
  if (!qword_100054770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054770);
  }

  return result;
}

uint64_t sub_10000D658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004135C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000D6C4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10004089C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000408CC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10000D850(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_10004089C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000408CC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

void sub_10000D9C8(uint64_t a1)
{
  sub_10000E198(319, &qword_1000547F8, &type metadata accessor for PersonInfo, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10004089C();
    if (v2 <= 0x3F)
    {
      sub_1000408CC();
      if (v3 <= 0x3F)
      {
        sub_10000E198(319, &unk_100054800, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_10000DAE4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10000DB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10000DB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000DBD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MultipleContactsEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10000DDC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for MultipleContactsEntry(0);
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

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
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

  v16 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10000DFA8(uint64_t a1)
{
  type metadata accessor for MultipleContactsEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100040D9C();
    if (v2 <= 0x3F)
    {
      sub_10000E198(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10000E198(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10000E134(319);
          if (v5 <= 0x3F)
          {
            sub_10000E198(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_10000E1FC();
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

void sub_10000E134(uint64_t a1)
{
  if (!qword_1000548C0)
  {
    sub_100003E08(&qword_100054780, &qword_100042D98);
    v1 = sub_1000419BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000548C0);
    }
  }
}

void sub_10000E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10000E1FC()
{
  if (!qword_1000548D0)
  {
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000548D0);
    }
  }
}

uint64_t sub_10000E24C()
{
  sub_100003E08(&qword_100054760, &qword_100042CE8);
  sub_100003E08(&qword_100054758, &qword_100042CE0);
  sub_100003E08(&qword_100054750, &qword_100042CD8);
  sub_100003E08(&qword_100054748, &qword_100042CD0);
  sub_100003E08(&qword_100054740, &qword_100042CC8);
  sub_100004D80(&qword_100054778, &qword_100054740, &qword_100042CC8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100004924(OpaqueTypeConformance2, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000E448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E4B4()
{
  result = qword_100054928;
  if (!qword_100054928)
  {
    v1 = sub_100003E08(&qword_100054920, &qword_100042F88);
    sub_10000E540(v1, v2, v3);
    sub_10000E594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054928);
  }

  return result;
}

unint64_t sub_10000E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100054930;
  if (!qword_100054930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054930);
  }

  return result;
}

unint64_t sub_10000E594()
{
  result = qword_100054938;
  if (!qword_100054938)
  {
    sub_100003E08(&qword_100054940, &qword_100042F90);
    sub_100004D80(&qword_100054948, &qword_100054950, &qword_100042F98, &protocol conformance descriptor for VStack<A>);
    sub_100004D80(&qword_100054958, &qword_100054960, &qword_100042FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054938);
  }

  return result;
}

char *sub_10000E678(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003DC0(&qword_100054A58, &qword_1000430C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000E784(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003DC0(&qword_100054A60, &qword_1000430D0);
  v10 = *(sub_100041BAC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100041BAC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10000E95C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003DC0(&qword_100054A48, &qword_1000430B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003DC0(&qword_100054A38, &unk_100043590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000EAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000291E8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000F3B0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_100041C6C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10000EF94(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_100041C6C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_10000EC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_100041C6C();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100003DC0(&qword_100054A50, &qword_1000430C0);
  v42 = v4;
  result = sub_1000421DC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_10004226C();
      sub_100041F2C();
      result = sub_10004227C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_10000EF94(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004212C() + 1) & ~v5;
    while (1)
    {
      sub_10004226C();

      sub_100041F2C();
      v9 = sub_10004227C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_100041C6C() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000F180(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000291E8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10000F3B0();
      goto LABEL_7;
    }

    sub_10000EC14(v15, a4 & 1);
    v26 = sub_1000291E8(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10004224C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100041C6C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10000F300(v12, a2, a3, a1, v18);
}

uint64_t sub_10000F300(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100041C6C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_10000F3B0()
{
  v1 = v0;
  v35 = sub_100041C6C();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DC0(&qword_100054A50, &qword_1000430C0);
  v3 = *v0;
  v4 = sub_1000421CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10000F630(uint64_t a1)
{
  v42 = sub_100003DC0(&qword_1000546A8, &unk_100042AC0);
  v2 = __chkstk_darwin(v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v2);
  v7 = &v37 - v6;
  v8 = &_swiftEmptyArrayStorage;
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v5;
    v9 = *(v5 + 80);
    v37 = v9;
    v38 = (v9 + 32) & ~v9;
    v10 = &_swiftEmptyArrayStorage + v38;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PersonEntryType(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v39 = *(v13 + 72);
    v15 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v16 = v41;
      v17 = *(v42 + 48);
      *v41 = v11;
      sub_10000FB1C(v14, v16 + v17, type metadata accessor for PersonEntryType);
      v18 = v7;
      result = sub_100004C8C(v16, v7, &qword_1000546A8, &unk_100042AC0);
      if (v12)
      {
        v44 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_100003DC0(&qword_100054B30, &unk_1000430F8);
        v22 = *(v43 + 72);
        v23 = v38;
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v22)
        {
          goto LABEL_35;
        }

        v24 = result - v23;
        if ((result - v23) == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v22;
        v27 = v44;
        *(v44 + 2) = v21;
        v27[3] = 2 * (v24 / v22);
        v28 = v27 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v27 < v15 || v28 >= v15 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v7 = v18;
      v33 = __OFSUB__(v12--, 1);
      if (v33)
      {
        break;
      }

      ++v11;
      result = sub_100004C8C(v18, v10, &qword_1000546A8, &unk_100042AC0);
      v10 += *(v32 + 72);
      v14 += v39;
      v8 = v44;
      v15 = v44;
      if (v40 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v12);
  v36 = v35 - v12;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

char *sub_10000F98C(char *result)
{
  v1 = *(result + 2);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_100003DC0(&qword_1000549C0, &qword_100043028);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

uint64_t sub_10000FB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000FB84()
{
  v1 = type metadata accessor for MultipleContactsEntryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for MultipleContactsEntry(0);
  v7 = v6[5];
  v8 = sub_10004089C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v6[7];
  v10 = sub_1000408CC();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v6[8];
  v12 = sub_100041E3C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[6];
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100041D5C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[7];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000414EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  v18 = v1[9];
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_100041CFC();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
  }

  sub_10000FEBC(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FEBC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10000FEC8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleContactsEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000C624(a1, v6, a2);
}

uint64_t sub_10000FF50()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000FFB8()
{
  result = qword_100054998;
  if (!qword_100054998)
  {
    sub_100003E08(&qword_100054988, &qword_100042FE8);
    sub_10000E448(&qword_1000549A0, type metadata accessor for MultipleContactsRowView, &unk_100042A28);
    sub_100004D80(&qword_1000549A8, &qword_1000549B0, &qword_100042FF0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054998);
  }

  return result;
}

void *sub_1000100AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MultipleContactsEntryView(0);

  return sub_10000C4C0(a1);
}

uint64_t sub_100010120()
{
  v1 = type metadata accessor for MultipleContactsEntryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = type metadata accessor for MultipleContactsEntry(0);
  v7 = v6[5];
  v8 = sub_10004089C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v6[7];
  v10 = sub_1000408CC();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v6[8];
  v12 = sub_100041E3C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[6];
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100041D5C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[7];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000414EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  v18 = v1[9];
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_100041CFC();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
  }

  sub_10000FEBC(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010460(uint64_t a1)
{
  v3 = *(type metadata accessor for MultipleContactsEntryView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000C54C(a1, v4, v5, v6);
}

uint64_t sub_1000104F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_100010598(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1000414EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_1000109B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000109E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000AB88;

  return sub_100008048();
}

void *sub_100010A94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010B2C()
{
  v1 = sub_100041E5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 176) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004095C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  sub_100010DCC(v0 + 3);
  sub_100010DCC(v0 + 8);
  sub_100010DCC(v0 + 13);

  (*(v2 + 8))(&v0[v4], v1);

  (*(v7 + 8))(&v0[v9], v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void *sub_100010CC4(uint64_t a1, char a2)
{
  v5 = *(sub_100041E5C() - 8);
  v6 = (*(v5 + 80) + 176) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10004095C();
  return sub_100008178(a1, a2 & 1, *(v2 + 16), (v2 + 24), *(v2 + 152), *(v2 + 160), v2 + v6, *(v2 + v7), *(v2 + 168));
}

uint64_t sub_100010DCC(void *a1)
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

uint64_t sub_100010E18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100010E24()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t *sub_100010E64()
{
  v1 = (*(v0 + 16))();
  v2 = sub_100006DE8(v1, sub_100025AC0);

  return v2;
}

unint64_t sub_100010EE4()
{
  result = qword_100054A28;
  if (!qword_100054A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054A28);
  }

  return result;
}

uint64_t sub_100010F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010F94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100010FE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010FFC(a1, a2);
  }

  return a1;
}

uint64_t sub_100010FFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001106C()
{
  v1 = sub_10004095C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 184) & ~v3;
  v5 = *(v2 + 64);

  sub_100010DCC(v0 + 4);
  sub_100010DCC(v0 + 9);
  sub_100010DCC(v0 + 14);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000111F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003DC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000112D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041BAC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011354(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100041BAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000113DC(uint64_t a1)
{
  v1 = sub_100041BAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_100011438()
{
  result = qword_100054B08;
  if (!qword_100054B08)
  {
    sub_100003E08(&qword_100054B10, &unk_1000430E8);
    v3 = sub_1000114C4();
    sub_1000115D0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B08);
  }

  return result;
}

unint64_t sub_1000114C4()
{
  result = qword_100054B18;
  if (!qword_100054B18)
  {
    sub_100003E08(&qword_100054968, &qword_100042FA8);
    sub_100003E08(&qword_100054920, &qword_100042F88);
    sub_10000E4B4();
    swift_getOpaqueTypeConformance2();
    sub_10000E448(&qword_100054B20, type metadata accessor for TimeStampModifier, &unk_1000436C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B18);
  }

  return result;
}

unint64_t sub_1000115D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100054B28;
  if (!qword_100054B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054B28);
  }

  return result;
}

uint64_t sub_100011658(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SingleContactTimelineEntry(0);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100011818(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SingleContactTimelineEntry(0);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054598, &unk_100042E50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_1000119C4(uint64_t a1)
{
  type metadata accessor for SingleContactTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100040D9C();
    if (v2 <= 0x3F)
    {
      sub_1000120DC(319, &qword_100054608, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000120DC(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100011AF0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100011AF0()
{
  if (!qword_100054BA0)
  {
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054BA0);
    }
  }
}

uint64_t sub_100011B54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004089C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100040D7C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = sub_1000408CC();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v18 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_100011D90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10004089C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100040D7C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
    return result;
  }

  v17 = sub_1000408CC();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

void sub_100011FA8(uint64_t a1)
{
  sub_10004089C();
  if (v1 <= 0x3F)
  {
    sub_100040D7C();
    if (v2 <= 0x3F)
    {
      sub_1000120DC(319, &qword_100054C48, &type metadata accessor for PersonInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000408CC();
        if (v4 <= 0x3F)
        {
          sub_1000120DC(319, &unk_100054800, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000120DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t *sub_100012140(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SingleContactTimelineEntry(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_1000243B8(0, v10, 0);
  v11 = v21;
  v12 = *(sub_100040EBC() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_1000243B8((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10001D120(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012328(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004092C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v3[8] = swift_task_alloc();
  v5 = sub_10004100C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100003DC0(&qword_100054DF0, &qword_100043528);
  v3[12] = swift_task_alloc();
  v6 = sub_10004098C();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_10004095C();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100012588, 0, 0);
}

uint64_t sub_100012588(uint64_t a1)
{
  v61 = v1;
  sub_100040ACC();
  sub_10004093C();
  sub_100040ACC();
  v2 = sub_10004097C();
  v3 = sub_1000420CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Snapshot requested for single contact widget", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[12];
  v9 = v1[9];
  v10 = v1[10];

  v11 = *(v7 + 8);
  v11(v5, v6);
  sub_100040D5C();
  v12 = (*(v10 + 48))(v8, 1, v9);
  v13 = v1[12];
  if (v12)
  {
    sub_1000049F8(v1[12], &qword_100054DF0, &qword_100043528);
LABEL_11:
    sub_10004091C();
    v31 = sub_10004094C();
    v32 = sub_1000420DC();
    if (sub_1000420EC())
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_10004090C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v34, "getSnapshot", "no contact", v33, 2u);
    }

    v36 = v1[6];
    v35 = v1[7];
    v37 = v1[5];
    v38 = v1[2];
    v39 = v1[3];

    (*(v36 + 8))(v35, v37);
    sub_10004088C();
    v40 = type metadata accessor for SingleContactTimelineEntry(0);
    v41 = v40[5];
    v42 = sub_100040D7C();
    (*(*(v42 - 8) + 16))(v38 + v41, v39, v42);
    v43 = v40[6];
    v44 = sub_100041BAC();
    (*(*(v44 - 8) + 56))(v38 + v43, 1, 1, v44);
    v45 = v40[9];
    v46 = sub_100041E3C();
    (*(*(v46 - 8) + 56))(v38 + v45, 1, 1, v46);
    *(v38 + v40[7]) = 0;
    sub_1000408BC();
    *(v38 + v40[10]) = 0;
    (*(v1[19] + 8))(v1[20], v1[18]);

    v47 = v1[1];

    return v47();
  }

  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[9];
  (*(v14 + 16))(v15, v1[12], v16);
  sub_1000049F8(v13, &qword_100054DF0, &qword_100043528);
  v17 = sub_100040FFC();
  v19 = v18;
  v1[21] = v18;
  (*(v14 + 8))(v15, v16);

  v20 = sub_100040FEC();
  v22 = v21;

  if (!v22)
  {
LABEL_10:

    goto LABEL_11;
  }

  v23 = v1[4];
  sub_100010A94(v23, v23[3]);
  v24 = sub_10004109C();
  v1[22] = v24;
  if (!v24)
  {

    goto LABEL_10;
  }

  v25 = v24;
  sub_100040ACC();

  v26 = sub_10004097C();
  v27 = sub_1000420CC();

  v28 = os_log_type_enabled(v26, v27);
  v58 = v1[13];
  v59 = v1[15];
  if (v28)
  {
    v57 = v17;
    v29 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_10001BA5C(v57, v19, &v60);
    *(v29 + 12) = 2080;
    v30 = sub_10001BA5C(v20, v22, &v60);

    *(v29 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "get snapshot for single contact widget with appEntityID: %s, contactID: %s", v29, 0x16u);
    swift_arrayDestroy();

    v17 = v57;
  }

  else
  {
  }

  v11(v59, v58);
  v49 = v1[20];
  v50 = v1[8];
  v52 = v1[3];
  v51 = v1[4];
  sub_100010A94(v51, v23[3]);
  sub_10004108C();
  v53 = swift_task_alloc();
  v1[23] = v53;
  v53[2] = v51;
  v53[3] = v25;
  v53[4] = v52;
  v53[5] = v50;
  v53[6] = v17;
  v53[7] = v19;
  v53[8] = v49;
  v54 = swift_task_alloc();
  v1[24] = v54;
  v55 = type metadata accessor for SingleContactTimelineEntry(0);
  *v54 = v1;
  v54[1] = sub_100012C74;
  v56 = v1[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v56, 0, 0, 0xD000000000000011, 0x800000010004C490, sub_10001D184, v53, v55);
}

uint64_t sub_100012C74()
{

  return _swift_task_switch(sub_100012DA8, 0, 0);
}

uint64_t sub_100012DA8()
{
  v1 = *(v0 + 64);

  sub_1000049F8(v1, &qword_1000546F0, &unk_100044170);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100012EA4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v57 = a7;
  v56 = a6;
  v50 = a5;
  v49 = a4;
  v43 = a3;
  v46 = a1;
  v61 = sub_10004095C();
  v58 = *(v61 - 8);
  v54 = *(v58 + 64);
  __chkstk_darwin(v61);
  v60 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  __chkstk_darwin(v11 - 8);
  v59 = &v40 - v12;
  v13 = sub_100040D7C();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  v40 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v53 = a2[13];
  v55 = a2[14];
  v52 = sub_100010A94(a2 + 10, v53);
  v21 = [a3 identifier];
  v48 = sub_100041EFC();
  v47 = v22;

  sub_10001CABC(a2, v62);
  (*(v17 + 16))(v20, v46, v16);
  (*(v14 + 16))(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v13);
  sub_100011258(v50, v59, &qword_1000546F0, &unk_100044170);
  v23 = v58;
  (*(v58 + 16))(v60, v51, v61);
  v24 = (*(v17 + 80) + 160) & ~*(v17 + 80);
  v25 = (v18 + *(v14 + 80) + v24) & ~*(v14 + 80);
  v26 = (v15 + *(v45 + 80) + v25) & ~*(v45 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v23 + 80) + v27 + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v30 = v62[7];
  *(v29 + 112) = v62[6];
  *(v29 + 128) = v30;
  v31 = v63;
  v32 = v62[3];
  *(v29 + 48) = v62[2];
  *(v29 + 64) = v32;
  v33 = v62[5];
  *(v29 + 80) = v62[4];
  *(v29 + 96) = v33;
  v34 = v62[1];
  *(v29 + 16) = v62[0];
  *(v29 + 32) = v34;
  v35 = v43;
  *(v29 + 144) = v31;
  *(v29 + 152) = v35;
  (*(v17 + 32))(v29 + v24, v20, v40);
  (*(v14 + 32))(v29 + v25, v42, v41);
  sub_100004C8C(v59, v29 + v26, &qword_1000546F0, &unk_100044170);
  v36 = (v29 + v27);
  v37 = v57;
  *v36 = v56;
  v36[1] = v37;
  (*(v58 + 32))(v29 + v28, v60, v61);
  v38 = v35;

  sub_1000410AC();
}

uint64_t sub_1000133E8(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v91 = a8;
  v84 = a7;
  v92 = a6;
  v93 = a5;
  v97 = a4;
  v13 = sub_10004092C();
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v94 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  __chkstk_darwin(v15 - 8);
  v87 = &v75 - v16;
  v17 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v17 - 8);
  v83 = &v75 - v18;
  v86 = type metadata accessor for SingleContactTimelineEntry(0);
  __chkstk_darwin(v86);
  v85 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100040E0C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10004116C();
  v89 = *(v90 - 8);
  v21 = __chkstk_darwin(v90);
  v82 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = &v75 - v23;
  v24 = sub_10004098C();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v75 - v29;
  v31 = sub_10004089C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a3;
  v76 = v24;
  if (a2)
  {
    *&v103 = a1;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    sub_10004096C();
    sub_100010E18(a1, 1);
    (*(v25 + 8))(v30, v24);
    sub_100010E18(a1, 1);
    v35 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100006DD0(a1);
    sub_10004088C();
    v35 = sub_100040F0C();

    (*(v32 + 8))(v34, v31);
  }

  sub_100040ACC();
  v36 = v97;

  v37 = sub_10004097C();
  v38 = sub_1000420CC();

  v39 = os_log_type_enabled(v37, v38);
  v78 = a10;
  v77 = a9;
  v97 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *&v103 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = v28;
    v42 = [v36 identifier];
    v43 = sub_100041EFC();
    v45 = v44;

    v46 = sub_10001BA5C(v43, v45, &v103);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    v47 = sub_100041FCC();
    v49 = sub_10001BA5C(v47, v48, &v103);

    *(v40 + 14) = v49;
    v36 = v97;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating snapshot for contact %s with statues %s", v40, 0x16u);
    swift_arrayDestroy();

    (*(v25 + 8))(v41, v76);
    v50 = v35[2];
    if (v50)
    {
LABEL_6:
      v76 = v35;
      v51 = (v35 + 4);
      v52 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_100010F30(v51, &v103);
        sub_100004B44(&v103, v102);
        sub_100003DC0(&qword_100054A30, &unk_1000430A0);
        sub_100003DC0(&qword_100054A38, &unk_100043590);
        if (swift_dynamicCast())
        {
          if (*(&v100 + 1))
          {
            sub_100004B44(&v99, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_10000E95C(0, v52[2] + 1, 1, v52);
            }

            v54 = v52[2];
            v53 = v52[3];
            if (v54 >= v53 >> 1)
            {
              v52 = sub_10000E95C((v53 > 1), v54 + 1, 1, v52);
            }

            v52[2] = v54 + 1;
            sub_100004B44(v102, &v52[5 * v54 + 4]);
            goto LABEL_9;
          }
        }

        else
        {
          v101 = 0;
          v99 = 0u;
          v100 = 0u;
        }

        sub_1000049F8(&v99, &qword_100054A40, &qword_1000430B0);
LABEL_9:
        v51 += 40;
        if (!--v50)
        {

          v36 = v97;
          goto LABEL_20;
        }
      }
    }
  }

  else
  {

    (*(v25 + 8))(v28, v76);
    v50 = v35[2];
    if (v50)
    {
      goto LABEL_6;
    }
  }

LABEL_20:
  (*(v79 + 104))(v81, enum case for ContactFormatter.Style.shortName(_:), v80);
  sub_100041F4C();
  v104 = sub_100040E2C();
  v105 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v103);
  sub_100040E1C();
  v55 = v36;
  v56 = v88;
  sub_10004113C();
  v57 = v85;
  sub_10004088C();
  v58 = v86;
  v59 = *(v86 + 20);
  v60 = sub_100040D7C();
  v61 = v92;
  (*(*(v60 - 8) + 16))(&v57[v59], v92, v60);
  v62 = v58[6];
  v63 = v89;
  v64 = v90;
  (*(v89 + 16))(v82, v56, v90);
  sub_100011258(v84, v83, &qword_1000546F0, &unk_100044170);
  sub_100041B9C();
  v65 = sub_100041BAC();
  (*(*(v65 - 8) + 56))(&v57[v62], 0, 1, v65);
  v66 = v58[9];
  v67 = sub_100041E3C();
  (*(*(v67 - 8) + 56))(&v57[v66], 1, 1, v67);
  v68 = v87;
  sub_100040A2C();
  LOBYTE(v66) = sub_10002706C(v56, v61, v68);
  sub_1000049F8(v68, &qword_100054E10, &qword_100043558);
  v57[v58[7]] = 0;
  sub_1000408BC();
  v57[v58[10]] = v66 & 1;
  sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  sub_10004201C();
  v69 = v94;
  sub_10004091C();
  v70 = sub_10004094C();
  v71 = sub_1000420DC();
  if (sub_1000420EC())
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, v71, v73, "getSnapshot", "Completed", v72, 2u);
  }

  (*(v95 + 8))(v69, v96);
  return (*(v63 + 8))(v56, v64);
}

uint64_t sub_100013FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100041DDC();
  v4[6] = swift_task_alloc();
  sub_100003DC0(&qword_100054788, &unk_100042DD0);
  v4[7] = swift_task_alloc();
  v5 = sub_10004092C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v4[11] = swift_task_alloc();
  v6 = sub_10004089C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_100003DC0(&qword_1000549E8, &qword_100043520);
  v4[15] = swift_task_alloc();
  v7 = sub_10004100C();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  sub_100003DC0(&qword_100054DF0, &qword_100043528);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_100040D7C();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = sub_10004098C();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v10 = sub_10004095C();
  v4[34] = v10;
  v4[35] = *(v10 - 8);
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000143C8, 0, 0);
}

uint64_t sub_1000143C8(uint64_t a1)
{
  v142 = v1;
  sub_100040ACC();
  sub_10004093C();
  sub_100040ACC();
  v2 = sub_10004097C();
  v3 = sub_1000420CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getTimeline requested for single contact widget", v4, 2u);
  }

  v5 = v1[32];
  v6 = v1[27];
  v7 = v1[28];
  v8 = v1[26];
  v138 = v1[25];
  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[3];

  v12 = *(v7 + 8);
  v12(v5, v6);
  v13 = v12;
  sub_100040ACC();
  v14 = *(v9 + 16);
  v14(v8, v11, v10);
  v133 = v14;
  v14(v138, v11, v10);
  v15 = sub_10004097C();
  v16 = sub_1000420CC();
  if (os_log_type_enabled(v15, v16))
  {
    v128 = v16;
    log = v15;
    v139 = v13;
    v17 = v1[22];
    v19 = v1[16];
    v18 = v1[17];
    v20 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v20 = 136315394;
    sub_100040D5C();
    v125 = *(v18 + 48);
    v21 = v125(v17, 1, v19);
    v22 = v1[22];
    if (v21)
    {
      sub_1000049F8(v1[22], &qword_100054DF0, &qword_100043528);
      v23 = 0xE100000000000000;
      v24 = 45;
    }

    else
    {
      v34 = v1[17];
      v35 = v1[18];
      v36 = v1[16];
      (*(v34 + 16))(v35, v1[22], v36);
      sub_1000049F8(v22, &qword_100054DF0, &qword_100043528);
      v24 = sub_100040FDC();
      v23 = v37;
      (*(v34 + 8))(v35, v36);
    }

    v38 = v1[21];
    v39 = v1[16];
    v40 = *(v1[24] + 8);
    v40(v1[26], v1[23]);
    v41 = sub_10001BA5C(v24, v23, &v141);

    *(v20 + 4) = v41;
    *(v20 + 12) = 2080;
    sub_100040D5C();
    v42 = v125(v38, 1, v39);
    v43 = v1[21];
    if (v42)
    {
      sub_1000049F8(v1[21], &qword_100054DF0, &qword_100043528);
      v44 = 0xE100000000000000;
      v45 = 45;
    }

    else
    {
      v46 = v1[17];
      v47 = v1[18];
      v48 = v1[16];
      (*(v46 + 16))(v47, v1[21], v48);
      sub_1000049F8(v43, &qword_100054DF0, &qword_100043528);
      v45 = sub_100040FFC();
      v44 = v49;
      (*(v46 + 8))(v47, v48);
    }

    v50 = v1[31];
    v51 = v1[27];
    v40(v1[25], v1[23]);
    v52 = sub_10001BA5C(v45, v44, &v141);

    *(v20 + 14) = v52;
    _os_log_impl(&_mh_execute_header, log, v128, "SingleContactTimelineProvider person: %s, id: %s", v20, 0x16u);
    swift_arrayDestroy();

    v32 = v50;
    v33 = v51;
    v13 = v139;
  }

  else
  {
    v25 = v1[31];
    v26 = v1[27];
    v28 = v1[25];
    v27 = v1[26];
    v29 = v1[23];
    v30 = v1[24];

    v31 = *(v30 + 8);
    v31(v28, v29);
    v31(v27, v29);
    v32 = v25;
    v33 = v26;
  }

  v13(v32, v33);
  v53 = v1[20];
  v54 = v1[16];
  v55 = v1[17];
  v56 = v1[15];
  v57 = sub_10004205C();
  (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  sub_1000279C0(0, 0, v56, &unk_100043538, v58);

  sub_100040D5C();
  v59 = *(v55 + 48);
  v60 = v59(v53, 1, v54);
  v61 = v1[20];
  if (v60)
  {
    sub_1000049F8(v1[20], &qword_100054DF0, &qword_100043528);
LABEL_23:
    sub_100040ACC();
    v92 = sub_10004097C();
    v93 = sub_1000420AC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Could not get contact for SingleContactTimelineProvider", v94, 2u);
    }

    v95 = v1[29];
    v96 = v1[27];

    v13(v95, v96);
    sub_10004091C();
    v97 = sub_10004094C();
    v98 = sub_1000420DC();
    if (sub_1000420EC())
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = sub_10004090C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, v98, v100, "getTimeline", "no contact", v99, 2u);
    }

    v101 = v1[23];
    v103 = v1[13];
    v102 = v1[14];
    v104 = v1[9];
    v105 = v1[10];
    v106 = v1[7];
    v107 = v1[8];
    v130 = v1[12];
    v108 = v1[3];

    (*(v104 + 8))(v105, v107);
    sub_100003DC0(&qword_100054DF8, &qword_100043540);
    v109 = type metadata accessor for SingleContactTimelineEntry(0);
    v110 = (*(*(v109 - 1) + 80) + 32) & ~*(*(v109 - 1) + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_100042C30;
    v112 = v111 + v110;
    sub_10004088C();
    v133(v112 + v109[5], v108, v101);
    v113 = v109[6];
    v114 = sub_100041BAC();
    (*(*(v114 - 8) + 56))(v112 + v113, 1, 1, v114);
    v115 = sub_100041E3C();
    (*(*(v115 - 8) + 56))(v106, 1, 1, v115);
    (*(v103 + 32))(v112, v102, v130);
    *(v112 + v109[7]) = 0;
    sub_1000408BC();
    sub_100004C8C(v106, v112 + v109[9], &qword_100054788, &unk_100042DD0);
    *(v112 + v109[10]) = 0;
    sub_100041DCC();
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry, &unk_10004314C);
    sub_100041E9C();
    (*(v1[35] + 8))(v1[36], v1[34]);

    v116 = v1[1];

    return v116();
  }

  v63 = v1[18];
  v62 = v1[19];
  v65 = v1[16];
  v64 = v1[17];
  v127 = *(v64 + 16);
  v127(v63, v61, v65);
  sub_1000049F8(v61, &qword_100054DF0, &qword_100043528);
  v129 = sub_100040FFC();
  loga = v66;
  v1[37] = v66;
  v126 = *(v64 + 8);
  v126(v63, v65);
  sub_100040D5C();
  v67 = v59(v62, 1, v65);
  v68 = v1[19];
  if (v67)
  {
    sub_1000049F8(v1[19], &qword_100054DF0, &qword_100043528);
  }

  else
  {
    v69 = v1[18];
    v70 = v1[16];
    v127(v69, v1[19], v70);
    sub_1000049F8(v68, &qword_100054DF0, &qword_100043528);
    sub_100040FFC();
    v126(v69, v70);
  }

  v71 = sub_100040FEC();
  v73 = v72;

  if (!v73)
  {
LABEL_22:

    goto LABEL_23;
  }

  v74 = v1[5];
  sub_100010A94(v74, v74[3]);
  v75 = sub_10004109C();
  v1[38] = v75;
  if (!v75)
  {

    goto LABEL_22;
  }

  v76 = v75;
  v136 = v71;
  v78 = v1[13];
  v77 = v1[14];
  v79 = v1[12];
  v80 = v1[5];
  sub_10004088C();
  sub_10004086C();
  v82 = v81;
  (*(v78 + 8))(v77, v79);
  sub_100010A94(v80, v74[3]);
  sub_10004108C();
  sub_100040ACC();

  v83 = sub_10004097C();
  v84 = sub_1000420CC();

  v85 = os_log_type_enabled(v83, v84);
  v86 = v1[30];
  v87 = v1[27];
  if (v85)
  {
    v134 = v1[27];
    v88 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v88 = 136315394;
    *(v88 + 4) = sub_10001BA5C(v129, loga, &v141);
    *(v88 + 12) = 2080;
    v89 = sub_10001BA5C(v136, v73, &v141);

    *(v88 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Get timeline for single contact widget with appEntityID: %s, contactID: %s", v88, 0x16u);
    swift_arrayDestroy();

    v90 = v86;
    v91 = v134;
  }

  else
  {

    v90 = v86;
    v91 = v87;
  }

  v13(v90, v91);
  v135 = v1[11];
  v118 = v1[5];
  v137 = v1[4];
  v140 = v1[36];
  v119 = v1[3];
  sub_100010A94(v118, v74[3]);
  v120 = [v76 identifier];
  sub_100041EFC();

  sub_10004106C();

  v121 = swift_task_alloc();
  v1[39] = v121;
  v121[2] = v118;
  v121[3] = v76;
  v121[4] = v119;
  v121[5] = v135;
  v121[6] = v129;
  v121[7] = loga;
  v121[8] = v82;
  v121[9] = v137;
  v121[10] = v140;
  v122 = swift_task_alloc();
  v1[40] = v122;
  v123 = sub_100003DC0(&qword_100054E00, &qword_100043548);
  *v122 = v1;
  v122[1] = sub_100015298;
  v124 = v1[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v124, 0, 0, 0xD000000000000011, 0x800000010004C440, sub_10001CA84, v121, v123);
}

uint64_t sub_100015298()
{

  return _swift_task_switch(sub_1000153CC, 0, 0);
}

uint64_t sub_1000153CC()
{
  v1 = *(v0 + 88);

  sub_1000049F8(v1, &qword_1000546F0, &unk_100044170);
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100015574()
{
  v0[2] = sub_100040BBC();
  v0[3] = v1;
  sub_10004203C();
  v0[4] = sub_10004202C();
  v3 = sub_10004200C();

  return _swift_task_switch(sub_100008100, v3, v2);
}

uint64_t sub_100015610(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v61 = a8;
  v69 = a7;
  v68 = a6;
  v59 = a5;
  v56 = a4;
  v54 = a3;
  v62 = a1;
  v63 = a10;
  v76 = sub_10004095C();
  v72 = *(v76 - 8);
  v67 = *(v72 + 64);
  __chkstk_darwin(v76);
  v75 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100003DC0(&qword_100054E08, &qword_100043550);
  v70 = *(v74 - 8);
  v60 = *(v70 + 64);
  __chkstk_darwin(v74);
  v73 = &v47 - v14;
  v71 = sub_100041E5C();
  v15 = *(v71 - 8);
  v55 = *(v15 + 64);
  __chkstk_darwin(v71);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v17;
  v18 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v47 - v20;
  v51 = &v47 - v20;
  v22 = sub_100040D7C();
  v49 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v50 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2[13];
  v66 = a2[14];
  v64 = sub_100010A94(a2 + 10, v65);
  v25 = [a3 identifier];
  v58 = sub_100041EFC();
  v57 = v26;

  sub_10001CABC(a2, v77);
  (*(v23 + 16))(&v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v56, v22);
  sub_100011258(v59, v21, &qword_1000546F0, &unk_100044170);
  v48 = v15;
  (*(v15 + 16))(v17, v61, v71);
  v27 = v70;
  (*(v70 + 16))(v73, v62, v74);
  v28 = v72;
  (*(v72 + 16))(v75, v63, v76);
  v29 = (*(v23 + 80) + 160) & ~*(v23 + 80);
  v30 = (v24 + *(v53 + 80) + v29) & ~*(v53 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v15 + 80) + v32 + 8) & ~*(v15 + 80);
  v34 = (v55 + *(v27 + 80) + v33) & ~*(v27 + 80);
  v35 = (v60 + *(v28 + 80) + v34) & ~*(v28 + 80);
  v36 = swift_allocObject();
  v37 = v77[7];
  *(v36 + 112) = v77[6];
  *(v36 + 128) = v37;
  v38 = v78;
  v39 = v77[3];
  *(v36 + 48) = v77[2];
  *(v36 + 64) = v39;
  v40 = v77[5];
  *(v36 + 80) = v77[4];
  *(v36 + 96) = v40;
  v41 = v77[1];
  *(v36 + 16) = v77[0];
  *(v36 + 32) = v41;
  v42 = v54;
  *(v36 + 144) = v38;
  *(v36 + 152) = v42;
  (*(v23 + 32))(v36 + v29, v50, v49);
  sub_100004C8C(v51, v36 + v30, &qword_1000546F0, &unk_100044170);
  v43 = (v36 + v31);
  v44 = v69;
  *v43 = v68;
  v43[1] = v44;
  *(v36 + v32) = a9;
  (*(v48 + 32))(v36 + v33, v52, v71);
  (*(v70 + 32))(v36 + v34, v73, v74);
  (*(v72 + 32))(v36 + v35, v75, v76);
  v45 = v42;

  sub_1000410AC();
}

uint64_t sub_100015CB4(void (*a1)(void, void), int a2, char *a3, void *a4, uint64_t a5, char *a6, char *a7, char *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v150 = a8;
  v149 = a7;
  v146 = a6;
  v151 = a5;
  v142 = a4;
  v148 = a3;
  v140 = a2;
  v171 = a1;
  v168 = a11;
  v169 = a12;
  v167 = a10;
  v13 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  __chkstk_darwin(v13 - 8);
  v137 = &v123 - v14;
  v15 = sub_100003DC0(&qword_100054788, &unk_100042DD0);
  __chkstk_darwin(v15 - 8);
  v138 = &v123 - v16;
  v17 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v17 - 8);
  v134 = &v123 - v18;
  v19 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v19 - 8);
  v135 = &v123 - v20;
  v128 = sub_100040E0C();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v130 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10004116C();
  v136 = *(v144 - 8);
  v22 = __chkstk_darwin(v144);
  v132 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v123 - v24;
  v25 = sub_10004092C();
  v165 = *(v25 - 8);
  v166 = v25;
  __chkstk_darwin(v25);
  v164 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100040ADC();
  v162 = *(v27 - 8);
  v163 = v27;
  __chkstk_darwin(v27);
  v161 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100041D5C();
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v156 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_100040AEC();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v155 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10004098C();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v133 = &v123 - v36;
  v37 = sub_100003DC0(&qword_100054A00, &unk_100043560);
  v38 = __chkstk_darwin(v37 - 8);
  v124 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v123 = &v123 - v40;
  v41 = sub_100003DC0(&qword_100054A08, &unk_100043080);
  __chkstk_darwin(v41 - 8);
  v125 = &v123 - v42;
  v131 = sub_100041DDC();
  v141 = *(v131 - 8);
  v43 = __chkstk_darwin(v131);
  v45 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v129 = &v123 - v46;
  v47 = sub_100003DC0(&qword_100054A10, &qword_100043570);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v123 - v49;
  v170 = sub_10004089C();
  v139 = *(v170 - 8);
  __chkstk_darwin(v170);
  v52 = &v123 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100003DC0(&qword_100054E18, &qword_100043578);
  v126 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v123 - v54;
  v154 = sub_100003DC0(&qword_100054E00, &qword_100043548);
  v153 = *(v154 - 8);
  v56 = __chkstk_darwin(v154);
  v152 = &v123 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v147 = &v123 - v58;
  v145 = v45;
  if (v140)
  {
    v59 = v171;
    v172[0] = v171;
    swift_errorRetain();
    sub_100003DC0(&qword_100054A20, &unk_100043580);
    swift_willThrowTypedImpl();
    sub_100040ACC();
    swift_errorRetain();
    sub_10004096C();
    sub_100010E18(v59, 1);
    v32[1](v35, v31);
    (*(v127 + 104))(v130, enum case for ContactFormatter.Style.shortName(_:), v128);
    v60 = v142;
    sub_100041F4C();
    v172[3] = sub_100040E2C();
    v172[4] = &protocol witness table for ContactFormatter;
    sub_100004AC8(v172);
    sub_100040E1C();
    v61 = v143;
    sub_10004113C();
    sub_100003DC0(&qword_100054DF8, &qword_100043540);
    v62 = type metadata accessor for SingleContactTimelineEntry(0);
    v63 = (*(*(v62 - 1) + 80) + 32) & ~*(*(v62 - 1) + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100042C30;
    v65 = v64 + v63;
    sub_10004088C();
    v66 = v136;
    (*(v136 + 16))(v132, v61, v144);
    sub_100011258(v146, v134, &qword_1000546F0, &unk_100044170);
    v67 = v135;
    sub_100041B9C();
    v68 = sub_100041BAC();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v138;
    sub_100041B2C();
    v70 = sub_100041E3C();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v71 = v137;
    sub_100040A2C();
    v72 = v61;
    v73 = v151;
    v74 = sub_10002706C(v72, v151, v71);
    sub_1000049F8(v71, &qword_100054E10, &qword_100043558);
    (*(v139 + 32))(v65, v52, v170);
    v75 = v62[5];
    v76 = sub_100040D7C();
    (*(*(v76 - 8) + 16))(v65 + v75, v73, v76);
    sub_100004C8C(v67, v65 + v62[6], &qword_1000546B8, &unk_100042AD0);
    *(v65 + v62[7]) = 0;
    sub_1000408BC();
    sub_100004C8C(v69, v65 + v62[9], &qword_100054788, &unk_100042DD0);
    *(v65 + v62[10]) = v74 & 1;
    sub_100041DCC();
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry, &unk_10004314C);
    v77 = v147;
    sub_100041E9C();
    sub_100010E18(v171, 1);
    (*(v66 + 8))(v143, v144);
  }

  else
  {
    v143 = v32;
    v144 = v31;
    v78 = v148;
    sub_100006DD0(v171);
    sub_10004088C();
    sub_100040B4C();
    sub_100040F4C();

    (*(v48 + 8))(v50, v47);
    v79 = v139;
    v80 = v170;
    v171 = *(v139 + 8);
    v171(v52, v170);
    v81 = sub_100040F2C();
    __chkstk_darwin(v81);
    v82 = v151;
    *(&v123 - 6) = v142;
    *(&v123 - 5) = v82;
    *(&v123 - 4) = v146;
    *(&v123 - 3) = v78;
    v83 = v150;
    *(&v123 - 2) = v149;
    *(&v123 - 1) = v83;
    v84 = sub_100012140(sub_10001D0F8, (&v123 - 8), v81);

    v85 = v123;
    v151 = v53;
    v150 = v55;
    sub_100040F1C();
    v86 = v124;
    sub_100011258(v85, v124, &qword_100054A00, &unk_100043560);
    v87 = 1;
    v88 = (*(v79 + 48))(v86, 1, v80);
    v89 = v125;
    if (v88 != 1)
    {
      (*(v79 + 32))(v52, v86, v80);
      sub_100041DAC();
      v171(v52, v80);
      v87 = 0;
    }

    sub_1000049F8(v85, &qword_100054A00, &unk_100043560);
    v90 = v141;
    v91 = v131;
    (*(v141 + 56))(v89, v87, 1, v131);
    v92 = *(v90 + 48);
    v93 = v92(v89, 1, v91);
    v94 = v145;
    if (v93 == 1)
    {
      v95 = v129;
      sub_100041DBC();
      v96 = v92(v89, 1, v91) == 1;
      v97 = v89;
      v77 = v147;
      if (!v96)
      {
        sub_1000049F8(v97, &qword_100054A08, &unk_100043080);
      }
    }

    else
    {
      v95 = v129;
      (*(v90 + 32))(v129, v89, v91);
      v77 = v147;
    }

    (*(v90 + 16))(v94, v95, v91);
    type metadata accessor for SingleContactTimelineEntry(0);
    sub_10001B408(&qword_100054DE0, type metadata accessor for SingleContactTimelineEntry, &unk_10004314C);

    sub_100041E9C();
    sub_10004088C();
    sub_10004086C();
    v99 = v98;
    v171(v52, v170);
    v100 = v133;
    sub_100040ACC();

    v101 = sub_10004097C();
    v102 = sub_1000420CC();
    v103 = v95;
    if (os_log_type_enabled(v101, v102))
    {
      v104 = swift_slowAlloc();
      *v104 = 134349312;
      v105 = v84[2];

      *(v104 + 4) = v105;

      *(v104 + 12) = 2048;
      *(v104 + 14) = v99 - a9;
      _os_log_impl(&_mh_execute_header, v101, v102, "Single contact timeline created with %{public}ld entries elasped %f", v104, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v106 = v151;
    v107 = v150;
    (*(v143 + 1))(v100, v144);
    (*(v141 + 8))(v103, v91);
    (*(v126 + 8))(v107, v106);
  }

  v108 = v154;
  sub_100040B3C();
  v109 = v157;
  v110 = v155;
  v111 = v159;
  (*(v157 + 104))(v155, enum case for PeopleAnalytics.WidgetType.single(_:), v159);
  sub_100041EAC();

  v112 = v77;
  v113 = v156;
  sub_100041E4C();
  v114 = v161;
  sub_100041D4C();
  (*(v158 + 8))(v113, v160);
  sub_100040AFC();
  (*(v162 + 8))(v114, v163);
  (*(v109 + 8))(v110, v111);
  v115 = v153;
  (*(v153 + 16))(v152, v112, v108);
  sub_100003DC0(&qword_100054E08, &qword_100043550);
  sub_10004201C();
  v116 = v164;
  sub_10004091C();
  v117 = sub_10004094C();
  v118 = sub_1000420DC();
  v119 = v116;
  if (sub_1000420EC())
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = sub_10004090C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v117, v118, v121, "getTimeline", "Completed", v120, 2u);
  }

  (*(v165 + 8))(v119, v166);
  return (*(v115 + 8))(v112, v108);
}

uint64_t sub_1000171C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a5;
  v57 = a6;
  v51 = a4;
  v13 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  __chkstk_darwin(v13 - 8);
  v55 = v42 - v14;
  v15 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v15 - 8);
  v49 = v42 - v16;
  v47 = sub_100040E0C();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10004116C();
  v52 = *(v53 - 8);
  v19 = __chkstk_darwin(v53);
  v48 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = v42 - v21;
  v54 = a1;
  v22 = sub_100040EAC();
  v23 = *(v22 + 16);
  v59 = a3;
  v58 = a7;
  if (!v23)
  {

    goto LABEL_15;
  }

  v43 = v18;
  v44 = a2;
  v45 = a8;
  v42[1] = v22;
  v24 = v22 + 32;
  v25 = &_swiftEmptyArrayStorage;
  do
  {
    sub_100010F30(v24, &v64);
    sub_100004B44(&v64, v63);
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    sub_100003DC0(&qword_100054A38, &unk_100043590);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
LABEL_4:
      sub_1000049F8(&v60, &qword_100054A40, &qword_1000430B0);
      goto LABEL_5;
    }

    if (!*(&v61 + 1))
    {
      goto LABEL_4;
    }

    sub_100004B44(&v60, v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_10000E95C(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_10000E95C((v26 > 1), v27 + 1, 1, v25);
    }

    v25[2] = v27 + 1;
    sub_100004B44(v63, &v25[5 * v27 + 4]);
LABEL_5:
    v24 += 40;
    --v23;
  }

  while (v23);

  a8 = v45;
  a3 = v59;
  a2 = v44;
  v18 = v43;
LABEL_15:
  (*(v46 + 104))(v18, enum case for ContactFormatter.Style.shortName(_:), v47);
  sub_100041F4C();
  v65 = sub_100040E2C();
  v66 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v64);
  sub_100040E1C();
  v28 = a2;
  v29 = v50;
  sub_10004113C();
  sub_100040E7C();
  v30 = type metadata accessor for SingleContactTimelineEntry(0);
  v31 = v30[5];
  v32 = sub_100040D7C();
  (*(*(v32 - 8) + 16))(a8 + v31, a3, v32);
  v33 = v30[6];
  v34 = v52;
  v35 = v53;
  (*(v52 + 16))(v48, v29, v53);
  sub_100011258(v51, v49, &qword_1000546F0, &unk_100044170);
  sub_100041B9C();
  v36 = sub_100041BAC();
  (*(*(v36 - 8) + 56))(a8 + v33, 0, 1, v36);
  v37 = v30[9];
  sub_100040E8C();
  sub_100041AEC();
  sub_100040E9C();
  sub_100041E2C();
  v38 = sub_100041E3C();
  (*(*(v38 - 8) + 56))(a8 + v37, 0, 1, v38);
  v39 = v55;
  sub_100040A2C();
  v40 = sub_10002706C(v29, v59, v39);
  sub_1000049F8(v39, &qword_100054E10, &qword_100043558);
  *(a8 + v30[7]) = 0;
  sub_1000408BC();
  result = (*(v34 + 8))(v29, v35);
  *(a8 + v30[10]) = v40 & 1;
  return result;
}

uint64_t sub_100017854@<X0>(uint64_t a2@<X8>)
{
  sub_10004088C();
  v3 = type metadata accessor for SingleContactTimelineEntry(0);
  sub_100040D6C();
  v4 = v3[6];
  v5 = sub_100041BAC();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = v3[9];
  v7 = sub_100041E3C();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + v3[7]) = 1;
  result = sub_1000408BC();
  *(a2 + v3[10]) = 0;
  return result;
}

uint64_t sub_100017940(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011628;

  return sub_100012328(a1, a2);
}

uint64_t sub_1000179E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100011628;

  return sub_100013FCC(a1, a2, a3);
}

uint64_t sub_100017AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000AB88;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100017B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100011628;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100017C08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004089C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100017CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for SingleContactWidgetEntryView(0);
  __chkstk_darwin(v3 - 8);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004098C();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v8 = __chkstk_darwin(v7 - 8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v12 = sub_10004116C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v45 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = type metadata accessor for SingleContactTimelineEntry(0);
  sub_100011258(v2 + *(v18 + 24), v11, &qword_1000546B8, &unk_100042AD0);
  v19 = sub_100041BAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v11, 1, v19) == 1)
  {
    v22 = v13;
    sub_1000049F8(v11, &qword_1000546B8, &unk_100042AD0);
    if ((*(v2 + *(v18 + 28)) & 1) == 0)
    {
      v23 = v50;
      sub_100040ACC();
      v24 = v2;
      v25 = v49;
      sub_10001C28C(v24, v49, type metadata accessor for SingleContactWidgetEntryView);
      v26 = sub_10004097C();
      v44 = sub_1000420AC();
      if (os_log_type_enabled(v26, v44))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v52 = v42;
        v43 = v27;
        *v27 = 136315138;
        v28 = v46;
        sub_100011258(v25 + *(v18 + 24), v46, &qword_1000546B8, &unk_100042AD0);
        if (v21(v28, 1, v19) == 1)
        {
          sub_1000049F8(v28, &qword_1000546B8, &unk_100042AD0);
          v29 = 0xE100000000000000;
          v30 = 45;
        }

        else
        {
          v34 = v45;
          sub_100041B8C();
          (*(v20 + 8))(v28, v19);
          v35 = sub_10004114C();
          (*(v22 + 8))(v34, v12);
          v36 = [v35 identifier];

          v30 = sub_100041EFC();
          v29 = v37;
        }

        sub_10001B9E8(v49, type metadata accessor for SingleContactWidgetEntryView);
        v38 = sub_10001BA5C(v30, v29, &v52);

        v39 = v43;
        *(v43 + 1) = v38;
        _os_log_impl(&_mh_execute_header, v26, v44, "contact not found for identifier: %s", v39, 0xCu);
        sub_100010DCC(v42);

        (*(v47 + 8))(v50, v48);
      }

      else
      {

        sub_10001B9E8(v25, type metadata accessor for SingleContactWidgetEntryView);
        (*(v47 + 8))(v23, v48);
      }
    }

    v32 = 1;
    v33 = v51;
  }

  else
  {
    sub_100041B8C();
    (*(v20 + 8))(v11, v19);
    v31 = v51;
    (*(v13 + 32))(v51, v17, v12);
    v32 = 0;
    v33 = v31;
    v22 = v13;
  }

  return (*(v22 + 56))(v33, v32, 1, v12);
}

uint64_t sub_100018250@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SingleContactWidgetEntryView(0);
  sub_100011258(v1 + *(v10 + 28), v9, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100041CFC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_100018458()
{
  v1 = sub_10004146C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SingleContactWidgetEntryView(0) + 32);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_1000420BC();
  v11 = sub_1000415DC();
  sub_1000408FC();

  sub_10004145C();
  swift_getAtKeyPath();
  sub_10001BA50(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_1000185E4@<X0>(uint64_t a1@<X8>)
{
  v259 = a1;
  v257 = sub_100003DC0(&qword_100054C90, &qword_1000431D0);
  __chkstk_darwin(v257);
  v258 = &v199 - v2;
  v229 = type metadata accessor for SingleContactSmallWidgetView(0);
  __chkstk_darwin(v229);
  v230 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_100003DC0(&qword_100054C98, &qword_1000431D8);
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v228 = &v199 - v4;
  v250 = sub_100003DC0(&qword_100054CA0, &qword_1000431E0);
  v5 = __chkstk_darwin(v250);
  v227 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v233 = &v199 - v7;
  v248 = sub_100003DC0(&qword_100054CA8, &qword_1000431E8);
  __chkstk_darwin(v248);
  v249 = &v199 - v8;
  v206 = sub_10004104C();
  v219 = *(v206 - 8);
  __chkstk_darwin(v206);
  v199 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003DC0(&qword_100054CB0, &qword_1000431F0);
  v11 = __chkstk_darwin(v10 - 8);
  v203 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v201 = &v199 - v13;
  v223 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  __chkstk_darwin(v223);
  v208 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100003DC0(&qword_100054CB8, &qword_1000431F8);
  v211 = *(v213 - 8);
  __chkstk_darwin(v213);
  v209 = &v199 - v15;
  v207 = sub_100003DC0(&qword_100054CC0, &qword_100043200);
  __chkstk_darwin(v207);
  v212 = &v199 - v16;
  v210 = sub_100003DC0(&qword_100054CC8, &qword_100043208);
  __chkstk_darwin(v210);
  v215 = &v199 - v17;
  v214 = sub_100003DC0(&qword_100054CD0, &qword_100043210);
  __chkstk_darwin(v214);
  v217 = &v199 - v18;
  v246 = sub_100003DC0(&qword_100054CD8, &qword_100043218);
  v19 = __chkstk_darwin(v246);
  v216 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v218 = &v199 - v21;
  v256 = sub_100003DC0(&qword_100054CE0, &qword_100043220);
  __chkstk_darwin(v256);
  v247 = &v199 - v22;
  v254 = sub_100003DC0(&qword_100054CE8, &qword_100043228);
  __chkstk_darwin(v254);
  v255 = &v199 - v23;
  v245 = sub_1000415CC();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v26 = __chkstk_darwin(v25 - 8);
  v224 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v202 = &v199 - v29;
  __chkstk_darwin(v28);
  v31 = &v199 - v30;
  v32 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v33 = __chkstk_darwin(v32 - 8);
  v225 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v226 = &v199 - v36;
  v37 = __chkstk_darwin(v35);
  v204 = &v199 - v38;
  v39 = __chkstk_darwin(v37);
  v205 = &v199 - v40;
  v41 = __chkstk_darwin(v39);
  v200 = &v199 - v42;
  v43 = __chkstk_darwin(v41);
  v222 = &v199 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v199 - v46;
  __chkstk_darwin(v45);
  v242 = &v199 - v48;
  v49 = sub_1000408CC();
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v221 = &v199 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v54 = &v199 - v53;
  v55 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v56 = __chkstk_darwin(v55 - 8);
  v220 = &v199 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v199 - v58;
  v234 = type metadata accessor for SingleContactSmallWidgetVerticalView(0);
  __chkstk_darwin(v234);
  v61 = &v199 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_100003DC0(&qword_100054CF8, &qword_100043240);
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v236 = &v199 - v62;
  v238 = sub_100003DC0(&qword_100054D00, &qword_100043248);
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v199 - v63;
  v251 = sub_100003DC0(&qword_100054D08, &qword_100043250);
  v64 = __chkstk_darwin(v251);
  v66 = &v199 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = &v199 - v67;
  v253 = sub_100003DC0(&qword_100054D10, &qword_100043258);
  __chkstk_darwin(v253);
  v252 = &v199 - v68;
  v69 = type metadata accessor for SingleContactTimelineEntry(0);
  v70 = v69;
  if (*(v1 + *(v69 + 40)) != 1)
  {
    if (qword_100054550 != -1)
    {
      swift_once();
    }

    v75 = v49;
    v76 = v50;
    if (byte_1000574A8 == 1 && (sub_100040D4C() & 1) != 0)
    {
      sub_100011258(v1 + *(v70 + 24), v220, &qword_1000546B8, &unk_100042AD0);
      (*(v50 + 16))(v221, v1 + *(v70 + 32), v75);
      v77 = v201;
      sub_100040D1C();
      v78 = v219;
      v79 = *(v219 + 48);
      v80 = v206;
      if (v79(v77, 1, v206))
      {
        sub_1000049F8(v77, &qword_100054CB0, &qword_1000431F0);
        v81 = sub_10004083C();
        (*(*(v81 - 8) + 56))(v222, 1, 1, v81);
      }

      else
      {
        v130 = v199;
        (*(v78 + 16))(v199, v77, v80);
        sub_1000049F8(v77, &qword_100054CB0, &qword_1000431F0);
        sub_10004103C();
        (*(v78 + 8))(v130, v80);
      }

      v89 = v252;
      v131 = v208;
      v132 = v203;
      sub_100040D0C();
      if (v79(v132, 1, v80))
      {
        sub_1000049F8(v132, &qword_100054CB0, &qword_1000431F0);
        v133 = sub_10004083C();
        v134 = v200;
        (*(*(v133 - 8) + 56))(v200, 1, 1, v133);
      }

      else
      {
        v135 = v132;
        v136 = v219;
        v137 = v199;
        (*(v219 + 16))(v199, v135, v80);
        sub_1000049F8(v135, &qword_100054CB0, &qword_1000431F0);
        v134 = v200;
        sub_10004103C();
        (*(v136 + 8))(v137, v80);
      }

      v138 = v204;
      KeyPath = swift_getKeyPath();
      v140 = swift_getKeyPath();
      v141 = v223;
      *(v131 + *(v223 + 20)) = v140;
      sub_100003DC0(&qword_100054700, &qword_100042B60);
      swift_storeEnumTagMultiPayload();
      *v131 = KeyPath;
      *(v131 + 8) = 0;
      sub_100004C8C(v220, v131 + v141[6], &qword_1000546B8, &unk_100042AD0);
      (*(v76 + 32))(v131 + v141[7], v221, v75);
      sub_100004C8C(v222, v131 + v141[8], &qword_1000546B0, &qword_100043630);
      sub_100004C8C(v134, v131 + v141[9], &qword_1000546B0, &qword_100043630);
      *(v131 + v141[10]) = 0x3FD999999999999ALL;
      *(v131 + v141[11]) = 0x3FE0000000000000;
      *(v131 + v141[12]) = 0x3FF8000000000000;
      v142 = v202;
      sub_100017CC0(v202);
      v143 = v142;
      v144 = sub_10004116C();
      v145 = *(v144 - 8);
      if ((*(v145 + 48))(v143, 1, v144) == 1)
      {
        sub_1000049F8(v143, &qword_100054CF0, &unk_100043230);
        v146 = sub_10004083C();
        (*(*(v146 - 8) + 56))(v138, 1, 1, v146);
        v147 = v205;
      }

      else
      {
        sub_10004111C();
        (*(v145 + 8))(v143, v144);
        v146 = sub_10004083C();
        v148 = *(v146 - 8);
        v149 = (*(v148 + 48))(v138, 1, v146);
        v147 = v205;
        if (v149 != 1)
        {
          (*(v148 + 32))(v205, v138, v146);
          (*(v148 + 56))(v147, 0, 1, v146);
LABEL_32:
          sub_10001B408(&qword_100054D40, type metadata accessor for SingleContactQuickActionWidgetView, &unk_100044004);
          v150 = v209;
          sub_1000417BC();
          sub_1000049F8(v147, &qword_1000546B0, &qword_100043630);
          sub_10001B9E8(v131, type metadata accessor for SingleContactQuickActionWidgetView);
          v151 = sub_1000415FC();
          sub_100018458();
          sub_10004117C();
          v153 = v152;
          v155 = v154;
          v157 = v156;
          v159 = v158;
          v160 = v212;
          (*(v211 + 32))(v212, v150, v213);
          v161 = &v160[*(v207 + 36)];
          *v161 = v151;
          *(v161 + 1) = v153;
          *(v161 + 2) = v155;
          *(v161 + 3) = v157;
          *(v161 + 4) = v159;
          v161[40] = 0;
          v162 = sub_10004160C();
          sub_100018458();
          sub_10004117C();
          v164 = v163;
          v166 = v165;
          v168 = v167;
          v170 = v169;
          v171 = v160;
          v172 = v215;
          sub_100004C8C(v171, v215, &qword_100054CC0, &qword_100043200);
          v173 = v172 + *(v210 + 36);
          *v173 = v162;
          *(v173 + 8) = v164;
          *(v173 + 16) = v166;
          *(v173 + 24) = v168;
          *(v173 + 32) = v170;
          *(v173 + 40) = 0;
          v174 = sub_10004161C();
          sub_100018458();
          sub_10004117C();
          v176 = v175;
          v178 = v177;
          v180 = v179;
          v182 = v181;
          v183 = v172;
          v184 = v217;
          sub_100004C8C(v183, v217, &qword_100054CC8, &qword_100043208);
          v185 = v184 + *(v214 + 36);
          *v185 = v174;
          *(v185 + 8) = v176;
          *(v185 + 16) = v178;
          *(v185 + 24) = v180;
          *(v185 + 32) = v182;
          *(v185 + 40) = 0;
          v186 = sub_10004162C();
          sub_100018458();
          sub_10004117C();
          v188 = v187;
          v190 = v189;
          v192 = v191;
          v194 = v193;
          v195 = v184;
          v196 = v216;
          sub_100004C8C(v195, v216, &qword_100054CD0, &qword_100043210);
          v197 = v196 + *(v246 + 36);
          *v197 = v186;
          *(v197 + 8) = v188;
          *(v197 + 16) = v190;
          *(v197 + 24) = v192;
          *(v197 + 32) = v194;
          *(v197 + 40) = 0;
          v126 = &qword_100054CD8;
          v127 = &qword_100043218;
          v128 = v218;
          sub_100004C8C(v196, v218, &qword_100054CD8, &qword_100043218);
          sub_100011258(v128, v249, &qword_100054CD8, &qword_100043218);
          swift_storeEnumTagMultiPayload();
          sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
          sub_10001B450();
          v129 = v247;
          goto LABEL_33;
        }
      }

      sub_10004112C();
      sub_10004083C();
      if ((*(*(v146 - 8) + 48))(v138, 1, v146) != 1)
      {
        sub_1000049F8(v138, &qword_1000546B0, &qword_100043630);
      }

      goto LABEL_32;
    }

    sub_100011258(v1 + *(v70 + 24), v59, &qword_1000546B8, &unk_100042AD0);
    v82 = v230;
    (*(v50 + 16))(&v230[*(v229 + 20)], v1 + *(v70 + 32), v75);
    v83 = sub_100041BAC();
    (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
    sub_10001B1C8(v59, v82);
    v84 = v224;
    sub_100017CC0(v224);
    v85 = sub_10004116C();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v84, 1, v85) == 1)
    {
      sub_1000049F8(v84, &qword_100054CF0, &unk_100043230);
      v87 = sub_10004083C();
      v88 = v225;
      (*(*(v87 - 8) + 56))(v225, 1, 1, v87);
      v89 = v252;
      v90 = v226;
    }

    else
    {
      v88 = v225;
      sub_10004111C();
      (*(v86 + 8))(v84, v85);
      v87 = sub_10004083C();
      v93 = *(v87 - 8);
      v94 = (*(v93 + 48))(v88, 1, v87);
      v89 = v252;
      v90 = v226;
      if (v94 != 1)
      {
        (*(v93 + 32))(v226, v88, v87);
        (*(v93 + 56))(v90, 0, 1, v87);
LABEL_21:
        sub_10001B408(&qword_100054D18, type metadata accessor for SingleContactSmallWidgetView, &unk_100044B70);
        v115 = v228;
        sub_1000417BC();
        sub_1000049F8(v90, &qword_1000546B0, &qword_100043630);
        sub_10001B9E8(v82, type metadata accessor for SingleContactSmallWidgetView);
        v116 = sub_100018458();
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v123 = sub_1000415EC();
        v124 = v227;
        (*(v231 + 32))(v227, v115, v232);
        v125 = v124 + *(v250 + 36);
        *v125 = v123;
        *(v125 + 8) = v116;
        *(v125 + 16) = v118;
        *(v125 + 24) = v120;
        *(v125 + 32) = v122;
        *(v125 + 40) = 0;
        v126 = &qword_100054CA0;
        v127 = &qword_1000431E0;
        v128 = v233;
        sub_100004C8C(v124, v233, &qword_100054CA0, &qword_1000431E0);
        sub_100011258(v128, v249, &qword_100054CA0, &qword_1000431E0);
        swift_storeEnumTagMultiPayload();
        sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
        sub_10001B450();
        v129 = v247;
LABEL_33:
        sub_10004158C();
        sub_1000049F8(v128, v126, v127);
        sub_100011258(v129, v255, &qword_100054CE0, &qword_100043220);
        swift_storeEnumTagMultiPayload();
        sub_10001B53C();
        sub_10001B680();
        sub_10004158C();
        v112 = v129;
        v113 = &qword_100054CE0;
        v114 = &qword_100043220;
        goto LABEL_34;
      }
    }

    sub_10004112C();
    sub_10004083C();
    if ((*(*(v87 - 8) + 48))(v88, 1, v87) != 1)
    {
      sub_1000049F8(v88, &qword_1000546B0, &qword_100043630);
    }

    goto LABEL_21;
  }

  sub_100011258(v1 + *(v69 + 24), v59, &qword_1000546B8, &unk_100042AD0);
  (*(v50 + 16))(v54, v1 + *(v70 + 32), v49);
  sub_10003E6C8(v59, v54, v61);
  v250 = v1;
  sub_100017CC0(v31);
  v71 = sub_10004116C();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v31, 1, v71) == 1)
  {
    sub_1000049F8(v31, &qword_100054CF0, &unk_100043230);
    v73 = sub_10004083C();
    (*(*(v73 - 8) + 56))(v47, 1, 1, v73);
    v74 = v242;
    goto LABEL_13;
  }

  sub_10004111C();
  (*(v72 + 8))(v31, v71);
  v73 = sub_10004083C();
  v91 = *(v73 - 8);
  v92 = (*(v91 + 48))(v47, 1, v73);
  v74 = v242;
  if (v92 == 1)
  {
LABEL_13:
    sub_10004112C();
    sub_10004083C();
    if ((*(*(v73 - 8) + 48))(v47, 1, v73) != 1)
    {
      sub_1000049F8(v47, &qword_1000546B0, &qword_100043630);
    }

    goto LABEL_19;
  }

  (*(v91 + 32))(v242, v47, v73);
  (*(v91 + 56))(v74, 0, 1, v73);
LABEL_19:
  v95 = sub_10001B408(&qword_100054D58, type metadata accessor for SingleContactSmallWidgetVerticalView, &unk_100044E48);
  v96 = v236;
  v97 = v234;
  sub_1000417BC();
  sub_1000049F8(v74, &qword_1000546B0, &qword_100043630);
  sub_10001B9E8(v61, type metadata accessor for SingleContactSmallWidgetVerticalView);
  v98 = v243;
  v99 = sub_1000415BC();
  __chkstk_darwin(v99);
  sub_100041A9C();
  v260 = v97;
  v261 = v95;
  swift_getOpaqueTypeConformance2();
  v100 = v235;
  v101 = v240;
  sub_10004185C();
  (*(v244 + 8))(v98, v245);
  (*(v239 + 8))(v96, v101);
  v102 = sub_100018458();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = sub_1000415EC();
  (*(v237 + 32))(v66, v100, v238);
  v110 = &v66[*(v251 + 36)];
  *v110 = v109;
  *(v110 + 1) = v102;
  *(v110 + 2) = v104;
  *(v110 + 3) = v106;
  *(v110 + 4) = v108;
  v110[40] = 0;
  v111 = v241;
  sub_100004C8C(v66, v241, &qword_100054D08, &qword_100043250);
  sub_100011258(v111, v255, &qword_100054D08, &qword_100043250);
  swift_storeEnumTagMultiPayload();
  sub_10001B53C();
  sub_10001B680();
  v89 = v252;
  sub_10004158C();
  v112 = v111;
  v113 = &qword_100054D08;
  v114 = &qword_100043250;
LABEL_34:
  sub_1000049F8(v112, v113, v114);
  sub_100011258(v89, v258, &qword_100054D10, &qword_100043258);
  swift_storeEnumTagMultiPayload();
  sub_100003DC0(&qword_100054D68, &qword_100043260);
  sub_10001B268(&qword_100054D70, &qword_100054D68, &qword_100043260, sub_10000E540);
  sub_10001B738();
  sub_10004158C();
  return sub_1000049F8(v89, &qword_100054D10, &qword_100043258);
}

uint64_t sub_10001A614@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100041CFC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  sub_100018250(&v14 - v7);
  if (sub_100040BDC())
  {
    v9 = sub_10004192C();
    result = (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_100041CDC();
    v11 = sub_100041CCC();
    v12 = *(v3 + 8);
    v12(v6, v2);
    if (v11)
    {
      v13 = sub_1000418BC();
    }

    else
    {
      v13 = sub_1000418CC();
    }

    v9 = v13;
    result = (v12)(v8, v2);
  }

  *a1 = v9;
  return result;
}

uint64_t sub_10001A78C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v67 = sub_100041D0C();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003DC0(&qword_100054570, &qword_100042978);
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v50 - v3;
  v5 = sub_100003DC0(&qword_100054568, &qword_100042970);
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v50 - v6;
  v55 = sub_100003DC0(&qword_100054DB0, &qword_100043348);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v50 - v8;
  v59 = sub_100003DC0(&qword_100054DB8, &qword_100043350);
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = v50 - v10;
  v62 = sub_100003DC0(&qword_100054DC0, &qword_100043358);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = v50 - v11;
  v63 = sub_100003DC0(&qword_100054DC8, &unk_100043360);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v50 - v12;
  v13 = sub_100040BBC();
  v50[0] = v14;
  v50[1] = v13;
  v15 = sub_100040D9C();
  v16 = sub_100040D8C();
  v75 = v15;
  v76 = &protocol witness table for ContactFetcher;
  *&v74 = v16;
  v72 = sub_1000408EC();
  v73 = &protocol witness table for Locale;
  sub_100004AC8(&v71);
  sub_1000408DC();
  sub_1000409CC();
  if (sub_1000409BC())
  {
    v17 = sub_100040F8C();
    swift_allocObject();
    v18 = sub_100040F7C();
    v19 = &protocol witness table for DemoStatusProvider;
  }

  else
  {
    v17 = sub_100040DEC();
    v18 = sub_100040DDC();
    v19 = &protocol witness table for StatusProvider;
  }

  v69 = v17;
  v70 = v19;
  *&v68 = v18;
  sub_100040D7C();
  sub_100040F6C();
  swift_allocObject();
  v20 = sub_100040F5C();
  sub_100040FCC();
  v21 = sub_100040FBC();
  sub_100004B44(&v74, &v77);
  sub_100004B44(&v71, &v81);
  sub_100004B44(&v68, v82);
  v82[5] = v20;
  v82[6] = v21;
  type metadata accessor for SingleContactWidgetEntryView(0);
  v49 = sub_10001B408(&qword_100054DD0, type metadata accessor for SingleContactWidgetEntryView, &unk_10004317C);
  sub_10001C1D4(v49, v22, v23);
  sub_100041DEC();
  v24 = sub_10001C228();
  sub_10004156C();
  (*(v52 + 8))(v4, v2);
  v77 = v2;
  v78 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10004153C();
  (*(v51 + 8))(v7, v5);
  v77 = sub_100041F4C();
  v78 = v26;
  *&v74 = v5;
  *(&v74 + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v30 = sub_100004924(v27, v28, v29);
  v32 = v54;
  v31 = v55;
  sub_10004154C();

  (*(v53 + 8))(v9, v31);
  *&v74 = sub_100041F4C();
  *(&v74 + 1) = v33;
  v77 = v31;
  v78 = &type metadata for String;
  v79 = v27;
  v80 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v57;
  v36 = v59;
  sub_10004150C();

  (*(v56 + 8))(v32, v36);
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v37 = sub_100041D5C();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100042C30;
  (*(v38 + 104))(v40 + v39, enum case for WidgetFamily.systemSmall(_:), v37);
  v77 = v36;
  v78 = &type metadata for String;
  v79 = v34;
  v80 = v30;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v60;
  v43 = v62;
  sub_10004151C();

  (*(v58 + 8))(v35, v43);
  v45 = v64;
  v44 = v65;
  v46 = v67;
  (*(v65 + 104))(v64, enum case for WidgetBackgroundStyle.blur(_:), v67);
  v77 = v43;
  v78 = v41;
  swift_getOpaqueTypeConformance2();
  v47 = v63;
  sub_10004155C();
  (*(v44 + 8))(v45, v46);
  return (*(v61 + 8))(v42, v47);
}

uint64_t sub_10001B0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001C28C(a1, a2, type metadata accessor for SingleContactTimelineEntry);
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for SingleContactWidgetEntryView(0);
  *(a2 + v4[6]) = KeyPath;
  sub_100003DC0(&qword_100054668, &qword_100042AA0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  v5 = swift_getKeyPath();
  v6 = v4[5];
  sub_100040D9C();
  result = sub_100040D8C();
  *(a2 + v6) = result;
  v8 = a2 + v4[8];
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = v5;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  return result;
}

uint64_t sub_10001B1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B268(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B31C()
{
  result = qword_100054D38;
  if (!qword_100054D38)
  {
    sub_100003E08(&qword_100054CC0, &qword_100043200);
    type metadata accessor for SingleContactQuickActionWidgetView(255);
    sub_10001B408(&qword_100054D40, type metadata accessor for SingleContactQuickActionWidgetView, &unk_100044004);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D38);
  }

  return result;
}

uint64_t sub_10001B408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001B450()
{
  result = qword_100054D48;
  if (!qword_100054D48)
  {
    sub_100003E08(&qword_100054CA0, &qword_1000431E0);
    type metadata accessor for SingleContactSmallWidgetView(255);
    sub_10001B408(&qword_100054D18, type metadata accessor for SingleContactSmallWidgetView, &unk_100044B70);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D48);
  }

  return result;
}

unint64_t sub_10001B53C()
{
  result = qword_100054D50;
  if (!qword_100054D50)
  {
    sub_100003E08(&qword_100054D08, &qword_100043250);
    sub_100003E08(&qword_100054CF8, &qword_100043240);
    type metadata accessor for SingleContactSmallWidgetVerticalView(255);
    sub_10001B408(&qword_100054D58, type metadata accessor for SingleContactSmallWidgetVerticalView, &unk_100044E48);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D50);
  }

  return result;
}

unint64_t sub_10001B680()
{
  result = qword_100054D60;
  if (!qword_100054D60)
  {
    sub_100003E08(&qword_100054CE0, &qword_100043220);
    sub_10001B268(&qword_100054D20, &qword_100054CD8, &qword_100043218, sub_10001B238);
    sub_10001B450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D60);
  }

  return result;
}

unint64_t sub_10001B738()
{
  result = qword_100054D78;
  if (!qword_100054D78)
  {
    sub_100003E08(&qword_100054D10, &qword_100043258);
    sub_10001B53C();
    sub_10001B680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D78);
  }

  return result;
}

uint64_t sub_10001B7E8(uint64_t a1)
{
  v2 = sub_10004119C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000412BC();
}

uint64_t sub_10001B8B0()
{
  sub_1000413BC();
  sub_10001B408(&qword_100054D80, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10004147C();
  return v1;
}

void *sub_10001B92C@<X0>(_BYTE *a1@<X8>)
{
  sub_1000413BC();
  sub_10001B408(&qword_100054D80, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10004147C();
  *a1 = v3;
  return result;
}

uint64_t sub_10001B9E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001BA50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

unint64_t sub_10001BA5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001BB28(v11, 0, 0, 1, a1, a2);
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
    sub_10001C004(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010DCC(v11);
  return v7;
}

unint64_t sub_10001BB28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001BC34(a5, a6);
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
    result = sub_10004219C();
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

char *sub_10001BC34(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001BC80(a1, a2);
  sub_10001BDB0(&off_100052188);
  return v3;
}

char *sub_10001BC80(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001BE9C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004219C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100041F7C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001BE9C(v10, 0);
        result = sub_10004216C();
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

uint64_t sub_10001BDB0(uint64_t result)
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

  result = sub_10001BF10(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_10001BE9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003DC0(&qword_100054D88, &qword_1000432C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001BF10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003DC0(&qword_100054D88, &qword_1000432C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10001C004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001C064()
{
  result = qword_100054D90;
  if (!qword_100054D90)
  {
    sub_100003E08(&qword_100054D98, &qword_1000432C8);
    v3 = sub_10001C0F0();
    sub_1000115D0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D90);
  }

  return result;
}

unint64_t sub_10001C0F0()
{
  result = qword_100054DA0;
  if (!qword_100054DA0)
  {
    sub_100003E08(&qword_100054DA8, &unk_1000432D0);
    sub_10001B268(&qword_100054D70, &qword_100054D68, &qword_100043260, sub_10000E540);
    sub_10001B738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DA0);
  }

  return result;
}

unint64_t sub_10001C1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100054DD8;
  if (!qword_100054DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DD8);
  }

  return result;
}

unint64_t sub_10001C228()
{
  result = qword_100054578;
  if (!qword_100054578)
  {
    sub_100003E08(&qword_100054570, &qword_100042978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054578);
  }

  return result;
}

uint64_t sub_10001C28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10001C300(void *a1@<X8>)
{
  sub_1000413EC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 sub_10001C330(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10001C364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10001C3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001C41C()
{
  sub_100003E08(&qword_100054DC8, &unk_100043360);
  sub_100003E08(&qword_100054DC0, &qword_100043358);
  sub_100003E08(&qword_100054DB8, &qword_100043350);
  sub_100003E08(&qword_100054DB0, &qword_100043348);
  sub_100003E08(&qword_100054568, &qword_100042970);
  sub_100003E08(&qword_100054570, &qword_100042978);
  sub_10001C228();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100004924(OpaqueTypeConformance2, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001C670()
{
  v0 = sub_10004098C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040ACC();
  v4 = sub_10004097C();
  v5 = sub_1000420AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001BA5C(0xD00000000000001FLL, 0x800000010004C410, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "Should not be calling the completion version of %s", v6, 0xCu);
    sub_100010DCC(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10001C808()
{
  v0 = sub_10004098C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040ACC();
  v4 = sub_10004097C();
  v5 = sub_1000420AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001BA5C(0xD00000000000001FLL, 0x800000010004C3F0, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "Should not be calling the completion version of %s", v6, 0xCu);
    sub_100010DCC(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10001C9A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C9D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000AB88;

  return sub_100015558();
}

uint64_t sub_10001CAF4()
{
  v1 = sub_100040D7C();
  v2 = *(v1 - 8);
  v28 = *(v2 + 80);
  v3 = (v28 + 160) & ~v28;
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v25 = *(v5 + 80);
  v20 = (v4 + v25) & ~v25;
  v24 = *(v5 + 64);
  v27 = sub_100041E5C();
  v6 = *(v27 - 8);
  v7 = *(v6 + 80);
  v22 = *(v6 + 64);
  v26 = sub_100003DC0(&qword_100054E08, &qword_100043550);
  v8 = *(v26 - 8);
  v9 = *(v8 + 80);
  v19 = *(v8 + 64);
  v23 = sub_10004095C();
  v10 = *(v23 - 8);
  v11 = *(v10 + 80);
  v21 = *(v10 + 64);
  sub_100010DCC((v0 + 16));
  sub_100010DCC((v0 + 56));
  sub_100010DCC((v0 + 96));

  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_100041C6C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v20, 1, v12))
  {
    (*(v13 + 8))(v0 + v20, v12);
  }

  v14 = v28 | v25 | v7 | v9 | v11;
  v15 = (((((v24 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v16 = (v15 + v22 + v9) & ~v9;
  v17 = (v16 + v19 + v11) & ~v11;

  (*(v6 + 8))(v0 + v15, v27);
  (*(v8 + 8))(v0 + v16, v26);
  (*(v10 + 8))(v0 + v17, v23);

  return _swift_deallocObject(v0, v17 + v21, v14 | 7);
}

uint64_t sub_10001CEAC(void (*a1)(void, void), char a2)
{
  v5 = *(sub_100040D7C() - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_100041E5C() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_100003DC0(&qword_100054E08, &qword_100043550) - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_10004095C() - 8);
  return sub_100015CB4(a1, a2 & 1, (v2 + 16), *(v2 + 152), v2 + v6, (v2 + v9), *(v2 + v10), *(v2 + v10 + 8), *(v2 + v11), v2 + v13, v2 + v16, v2 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)));
}

uint64_t sub_10001D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleContactTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D198()
{
  v19 = sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  v1 = *(v19 - 8);
  v21 = *(v1 + 80);
  v2 = *(v1 + 64);
  v3 = sub_100040D7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (((v21 + 160) & ~v21) + v2 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v17 = *(v8 + 64);
  v20 = sub_10004095C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 80);
  v18 = *(v11 + 64);
  sub_100010DCC((v0 + 16));
  sub_100010DCC((v0 + 56));
  sub_100010DCC((v0 + 96));

  (*(v1 + 8))(v0 + ((v21 + 160) & ~v21), v19);
  (*(v4 + 8))(v0 + v6, v3);
  v13 = sub_100041C6C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v10, 1, v13))
  {
    (*(v14 + 8))(v0 + v10, v13);
  }

  v15 = (((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;

  (*(v11 + 8))(v0 + v15, v20);

  return _swift_deallocObject(v0, v15 + v18, v21 | v5 | v9 | v12 | 7);
}

uint64_t sub_10001D4B0(uint64_t a1, char a2)
{
  v5 = *(sub_100003DC0(&qword_100054E20, &unk_1000435A8) - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100040D7C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_10004095C() - 8);
  return sub_1000133E8(a1, a2 & 1, v2 + 16, *(v2 + 152), v2 + v6, v2 + v9, v2 + v12, *(v2 + v13), *(v2 + v13 + 8), v2 + ((v13 + *(v14 + 80) + 16) & ~*(v14 + 80)));
}

uint64_t sub_10001D6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004146C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100011258(v2, &v14 - v9, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100041CFC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001D8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  v24 = sub_100003DC0(&qword_100054FF0, &qword_100043760);
  __chkstk_darwin(v24);
  v3 = &v22 - v2;
  v4 = sub_100003DC0(&qword_100054FF8, &qword_100043768);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_100041CFC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_10001D6B4(&v22 - v13);
  sub_100041CEC();
  v15 = sub_100041CCC();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  v17 = sub_100003DC0(&qword_100055000, &unk_100043770);
  v18 = v17;
  if (v15)
  {
    v19 = sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000417AC();
    (*(v5 + 16))(v3, v7, v4);
    swift_storeEnumTagMultiPayload();
    v26 = v18;
    v27 = v19;
    swift_getOpaqueTypeConformance2();
    sub_10004158C();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(*(v17 - 8) + 16))(v3, v23, v17);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v26 = v18;
    v27 = v21;
    swift_getOpaqueTypeConformance2();
    return sub_10004158C();
  }
}

uint64_t sub_10001DC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_100003DC0(&qword_100054E28, &qword_100043620);
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = sub_100003DC0(&qword_100054E30, &qword_100043628);
  __chkstk_darwin(v5);
  v36 = &v35 - v6;
  v37 = sub_100040A7C();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100040A5C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_10004083C();
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v38 = &v35 - v22;
  if ((sub_100040DAC() & 1) == 0)
  {
    goto LABEL_4;
  }

  v35 = v2;
  (*(v11 + 104))(v13, enum case for PeopleURL.PathAction.showGatheredMetrics(_:), v10);
  sub_10001F24C(&_swiftEmptyArrayStorage);
  sub_10001F434(&_swiftEmptyArrayStorage);
  (*(v7 + 104))(v9, enum case for PeopleURL.Scheme.people(_:), v37);
  sub_10004082C();
  v23 = v39;
  if ((*(v40 + 48))(v16, 1, v39) == 1)
  {
    sub_1000049F8(v16, &qword_1000546B0, &qword_100043630);
LABEL_4:
    v24 = sub_100003DC0(&qword_100054E38, &qword_100043638);
    (*(*(v24 - 8) + 16))(v4, v41, v24);
    swift_storeEnumTagMultiPayload();
    sub_10001E43C();
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_10004158C();
  }

  v26 = v40;
  v27 = v38;
  (*(v40 + 32))(v38, v16, v23);
  v28 = sub_100041A5C();
  v30 = v29;
  v31 = v36;
  v32 = &v36[*(v5 + 36)];
  (*(v26 + 16))(v21, v27, v23);
  sub_100003DC0(&qword_100054E60, &qword_100043648);
  sub_10001F61C();
  sub_1000416FC();
  v33 = &v32[*(sub_100003DC0(&qword_100054E58, &qword_100043640) + 36)];
  *v33 = v28;
  v33[1] = v30;
  v34 = sub_100003DC0(&qword_100054E38, &qword_100043638);
  (*(*(v34 - 8) + 16))(v31, v41, v34);
  sub_100011258(v31, v4, &qword_100054E30, &qword_100043628);
  swift_storeEnumTagMultiPayload();
  sub_10001E43C();
  sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004158C();
  sub_1000049F8(v31, &qword_100054E30, &qword_100043628);
  return (*(v26 + 8))(v38, v23);
}

double sub_10001E29C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004194C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004193C();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = sub_10004197C();

  (*(v3 + 8))(v5, v2);
  sub_100041A9C();
  sub_10004120C();
  v7 = v12[4];
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = *&v16;
  *(a1 + 40) = v16;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

unint64_t sub_10001E43C()
{
  result = qword_100054E40;
  if (!qword_100054E40)
  {
    sub_100003E08(&qword_100054E30, &qword_100043628);
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004D80(&qword_100054E50, &qword_100054E58, &qword_100043640, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E40);
  }

  return result;
}

uint64_t sub_10001E520()
{
  v0 = sub_10004089C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setTimeStyle:1];
  [v4 setDateStyle:0];
  v5 = sub_100041F4C();
  v7 = v6;
  sub_10004088C();
  isa = sub_10004087C().super.isa;
  (*(v1 + 8))(v3, v0);
  v9 = [v4 stringFromDate:isa];

  v10 = sub_100041EFC();
  v12 = v11;

  v14[0] = v5;
  v14[1] = v7;

  v15._countAndFlagsBits = v10;
  v15._object = v12;
  sub_100041F6C(v15);

  return v14[0];
}

uint64_t sub_10001E6CC(uint64_t a1)
{
  v3 = sub_100003DC0(&qword_100055010, &qword_100043780);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_100003DC0(&qword_100055018, &qword_100043788);
  __chkstk_darwin(v6);
  v8 = (&v19 - v7);
  if (sub_100040DBC())
  {
    *v8 = sub_100041A7C();
    v8[1] = v9;
    v10 = sub_100003DC0(&qword_100055048, &qword_1000437A0);
    sub_10001E980(v1, v8 + *(v10 + 44));
    v11 = sub_1000415EC();
    sub_10004117C();
    v12 = v8 + *(v6 + 36);
    *v12 = v11;
    *(v12 + 1) = v13;
    *(v12 + 2) = v14;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    v12[40] = 0;
    sub_100011258(v8, v5, &qword_100055018, &qword_100043788);
    swift_storeEnumTagMultiPayload();
    sub_100003DC0(&qword_100055020, &qword_100043790);
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10004158C();
    return sub_1000049F8(v8, &qword_100055018, &qword_100043788);
  }

  else
  {
    v18 = sub_100003DC0(&qword_100055020, &qword_100043790);
    (*(*(v18 - 8) + 16))(v5, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_10004158C();
  }
}

uint64_t sub_10001E980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v56 = a1;
  v62 = a2;
  v2 = sub_10004169C();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DC0(&qword_100055050, &qword_1000437A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v63 = sub_100003DC0(&qword_100055020, &qword_100043790);
  v61 = *(v63 - 8);
  v8 = v61;
  v9 = __chkstk_darwin(v63);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = *(v8 + 16);
  v60 = &v53 - v11;
  v59();
  v82 = sub_10001E520();
  v83 = v12;
  sub_100004924(v82, v12, v13);
  v14 = sub_10004178C();
  v16 = v15;
  v18 = v17;
  sub_1000418FC();
  v19 = sub_10004173C();
  v54 = v20;
  v55 = v19;
  v22 = v21;
  v53 = v23;

  sub_10001FD78(v14, v16, v18 & 1);

  sub_10004165C();
  v24 = sub_10004164C();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_10004168C();
  sub_1000049F8(v7, &qword_100055050, &qword_1000437A8);
  v26 = v57;
  v25 = v58;
  (*(v57 + 104))(v4, enum case for Font.Leading.tight(_:), v58);
  sub_1000416AC();

  (*(v26 + 8))(v4, v25);
  v28 = v54;
  v27 = v55;
  v29 = sub_10004176C();
  v31 = v30;
  v33 = v32;
  v58 = v34;

  sub_10001FD78(v27, v28, v22 & 1);

  if (*(v56 + *(type metadata accessor for TimeStampModifier(0) + 20)))
  {
    v35 = 16.0;
  }

  else
  {
    v35 = -8.0;
  }

  sub_100041A9C();
  sub_10004125C();
  v36 = v33 & 1;
  v97 = v33 & 1;
  v38 = v63;
  v37 = v64;
  v39 = v59;
  v40 = v60;
  (v59)(v64, v60, v63);
  v41 = v62;
  (v39)(v62, v37, v38);
  v42 = (v41 + *(sub_100003DC0(&qword_100055058, &qword_1000437B0) + 48));
  *&v72 = v29;
  *(&v72 + 1) = v31;
  LOBYTE(v73) = v36;
  *(&v73 + 1) = *v96;
  DWORD1(v73) = *&v96[3];
  v43 = v58;
  *(&v73 + 1) = v58;
  *&v74 = 0;
  *(&v74 + 1) = v35;
  v79 = v69;
  v80 = v70;
  v81 = v71;
  v75 = v65;
  v76 = v66;
  v77 = v67;
  v78 = v68;
  v44 = v67;
  v42[4] = v66;
  v42[5] = v44;
  v45 = v73;
  *v42 = v72;
  v42[1] = v45;
  v46 = v81;
  v42[8] = v80;
  v42[9] = v46;
  v47 = v79;
  v42[6] = v78;
  v42[7] = v47;
  v48 = v75;
  v42[2] = v74;
  v42[3] = v48;
  sub_100011258(&v72, &v82, &qword_100055060, &qword_1000437B8);
  v49 = *(v61 + 8);
  v50 = v40;
  v51 = v63;
  v49(v50, v63);
  v82 = v29;
  v83 = v31;
  v84 = v36;
  *v85 = *v96;
  *&v85[3] = *&v96[3];
  v86 = v43;
  v87 = 0;
  v88 = v35;
  v93 = v69;
  v94 = v70;
  v95 = v71;
  v89 = v65;
  v90 = v66;
  v91 = v67;
  v92 = v68;
  sub_1000049F8(&v82, &qword_100055060, &qword_1000437B8);
  return (v49)(v64, v51);
}