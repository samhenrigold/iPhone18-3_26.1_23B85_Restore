double sub_10003D3C8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1000C1648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = sub_1000C1668();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = *(v8 + 44);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C2898();
  sub_1000C28D8();
  v13 = 0.0;
  if (*&v10[v12] != v22[0])
  {
    v14 = (v4 + 16);
    v15 = (v4 + 8);
    do
    {
      v16 = sub_1000C28F8();
      (*v14)(v6);
      v16(v22, 0);
      sub_1000C28E8();
      LOBYTE(v22[0]) = 0;
      v21 = 1;
      sub_1000C1628();
      v18 = v17;
      (*v15)(v6, v3);
      if (v13 < v18)
      {
        v13 = v18;
      }

      sub_1000C28D8();
    }

    while (*&v10[v12] != v22[0]);
  }

  sub_1000084C0(v10, &qword_1000EF5E8, &qword_1000C76C8);
  return v13;
}

double sub_10003D694(double a1, double a2, uint64_t a3, double *a4)
{
  sub_1000C1628();
  if (v6 - a1 <= *a4)
  {
    *a4 = *a4 - (v6 - a1);
    return v6;
  }

  return a1;
}

double sub_10003D73C(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return INFINITY;
  }

  return result;
}

uint64_t (*sub_10003D818(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C1588();
  return sub_10006895C;
}

void sub_10003D8A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10003D8E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v38 = a1;
  v4 = sub_1000C0938();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100004D04(&qword_1000EE580, &qword_1000C6628);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v36[-v10];
  v12 = type metadata accessor for TTRAnyListWidget.CompletedView(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v36[-v17];
  v37 = sub_1000C1B18();
  v19 = a1 + *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 32);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  *(v18 + 3) = swift_getKeyPath();
  v18[32] = 0;
  v23 = v13[11];
  *&v18[v23] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  swift_storeEnumTagMultiPayload();
  v24 = &v18[v13[12]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v13[13];
  *&v18[v25] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v18 = v37 & 1;
  v18[1] = v22 ^ 1;
  v26 = 0.0;
  if (v22)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v20;
  }

  if (!v22)
  {
    v26 = v21;
  }

  *(v18 + 1) = v27;
  *(v18 + 2) = v26;
  v28 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v29 = v38;
  (*(v40 + 16))(v39, v38 + *(v28 + 28), v41);
  v45 = v29;
  v46 = v43;
  sub_100004D04(&qword_1000EE588, &qword_1000C6658);
  sub_100050788();
  sub_1000C1CE8();
  sub_100048828(v18, v15, type metadata accessor for TTRAnyListWidget.CompletedView);
  v30 = *(v7 + 16);
  v31 = v42;
  v30(v42, v11, v6);
  v32 = v44;
  sub_100048828(v15, v44, type metadata accessor for TTRAnyListWidget.CompletedView);
  v33 = sub_100004D04(&qword_1000EE5B8, &qword_1000C6670);
  v30((v32 + *(v33 + 48)), v31, v6);
  v34 = *(v7 + 8);
  v34(v11, v6);
  sub_100048940(v18, type metadata accessor for TTRAnyListWidget.CompletedView);
  v34(v31, v6);
  return sub_100048940(v15, type metadata accessor for TTRAnyListWidget.CompletedView);
}

uint64_t sub_10003DD10@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004D04(&qword_1000EE5B0, &qword_1000C6668);
  __chkstk_darwin(v6 - 8);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000EE5A0, &qword_1000C6660);
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  *v8 = sub_1000C1968();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = sub_100004D04(&qword_1000EE5C0, &qword_1000C6678);
  sub_10003DFDC(a1, a2, &v8[*(v12 + 44)]);
  type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0);
  sub_1000C2108();
  sub_1000C1788();
  sub_10001DA60(v8, v11, &qword_1000EE5B0, &qword_1000C6668);
  v13 = &v11[*(v9 + 36)];
  v14 = v28[5];
  *(v13 + 4) = v28[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v28[6];
  v15 = v28[1];
  *v13 = v28[0];
  *(v13 + 1) = v15;
  v16 = v28[3];
  *(v13 + 2) = v28[2];
  *(v13 + 3) = v16;
  LOBYTE(v9) = sub_1000C1BF8();
  v17 = sub_1000C1C18();
  sub_1000C1C18();
  if (sub_1000C1C18() != v9)
  {
    v17 = sub_1000C1C18();
  }

  sub_1000C15A8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10001DA60(v11, a3, &qword_1000EE5A0, &qword_1000C6660);
  result = sub_100004D04(&qword_1000EE588, &qword_1000C6658);
  v27 = a3 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

void sub_10003DFDC(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v182 = a2;
  v184 = a3;
  v4 = sub_1000C0818();
  v178 = *(v4 - 8);
  __chkstk_darwin(v4);
  v158 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = &v156 - v7;
  v8 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v8 - 8);
  v160 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v162 = &v156 - v11;
  v12 = sub_100004D04(&qword_1000EE5C8, &qword_1000C6680);
  __chkstk_darwin(v12);
  v177 = (&v156 - v13);
  v169 = sub_100004D04(&qword_1000EE5D0, &qword_1000C6688);
  __chkstk_darwin(v169);
  v173 = &v156 - v14;
  v176 = sub_100004D04(&qword_1000EE5D8, &qword_1000C6690);
  __chkstk_darwin(v176);
  v171 = &v156 - v15;
  v168 = sub_100004D04(&qword_1000EE5E0, &qword_1000C6698);
  __chkstk_darwin(v168);
  v170 = (&v156 - v16);
  v172 = sub_100004D04(&qword_1000EE5E8, &qword_1000C66A0);
  __chkstk_darwin(v172);
  v156 = (&v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v157 = &v156 - v19;
  __chkstk_darwin(v20);
  v167 = &v156 - v21;
  __chkstk_darwin(v22);
  v163 = (&v156 - v23);
  __chkstk_darwin(v24);
  v164 = &v156 - v25;
  v26 = sub_100004D04(&qword_1000EE5F0, &qword_1000C66A8);
  __chkstk_darwin(v26 - 8);
  v183 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v188 = &v156 - v29;
  v30 = sub_1000C1938();
  v187 = *(v30 - 8);
  __chkstk_darwin(v30);
  v186 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v33 = type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0);
  v34 = a1 + *(v33 + 44);
  v35 = *v34;
  v36 = v34[8];

  if ((v36 & 1) == 0)
  {
    sub_1000C2958();
    v37 = sub_1000C1BC8();
    sub_1000C1548();

    v38 = v186;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v187 + 8))(v38, v30);
    v35 = aBlock[0];
  }

  v189 = v33;
  v39 = a1 + *(v33 + 48);
  v40 = *v39;
  v41 = v39[8];

  if ((v41 & 1) == 0)
  {
    sub_1000C2958();
    v42 = sub_1000C1BC8();
    sub_1000C1548();

    v43 = v186;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v187 + 8))(v43, v30);
    v40 = aBlock[0];
  }

  v161 = v30;
  v174 = v4;
  v185 = a1;
  v175 = v12;
  v44 = [v32 string];
  if (v44)
  {
    v45 = v44;
    v191 = xmmword_1000C35A0;
    v192 = 0;
    v193 = _swiftEmptyArrayStorage;
    v46 = [objc_opt_self() attributeName];
    v47 = [v32 length];
    v48 = swift_allocObject();
    v48[2] = &v191;
    v48[3] = v45;
    v48[4] = v35;
    v48[5] = v40;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_100008748;
    *(v49 + 24) = v48;
    aBlock[4] = sub_100068908;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045698;
    aBlock[3] = &unk_1000E86A8;
    v50 = _Block_copy(aBlock);
    v51 = v45;

    [v32 enumerateAttribute:v46 inRange:0 options:v47 usingBlock:{0, v50}];

    _Block_release(v50);
    LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

    if ((v51 & 1) == 0)
    {
      v52 = v191;
      v53 = v192;

      v54 = v185;
      sub_10003F4BC();
      v55 = sub_1000C1DA8();
      v57 = v56;
      v59 = v58;

      sub_10000537C(v52, *(&v52 + 1), v53);

      v182 = sub_1000C1D78();
      v181 = v60;
      v180 = v61;
      v63 = v62;
      v64 = v54;
      sub_10000537C(v55, v57, v59 & 1);

      v65 = v189;
      v66 = *(v54 + v189[5]);
      KeyPath = swift_getKeyPath();
      v68 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
      v69 = *(v54 + *(v68 + 44)) == 1;
      v179 = v66;
      if (v69)
      {
        v70 = sub_1000C2018();
        v71 = v54 + v65[9];
        v72 = *v71;
        v73 = v71[8];

        if ((v73 & 1) == 0)
        {
          sub_1000C2958();
          v74 = v63;
          v75 = sub_1000C1BC8();
          sub_1000C1548();

          v63 = v74;
          v76 = v186;
          sub_1000C1928();
          swift_getAtKeyPath();

          (*(v187 + 8))(v76, v161);
          v72 = aBlock[0];
        }

        v77 = v173;
        v78 = v172;
        v79 = swift_getKeyPath();
        v80 = sub_1000451A0();
        v166 = v63;
        v165 = KeyPath;
        if (v80)
        {
          v81 = sub_1000C1FC8();
        }

        else
        {
          v81 = sub_1000C1FD8();
        }

        v105 = v81;
        v106 = swift_getKeyPath();
        v107 = v163;
        v108 = (v163 + *(v78 + 36));
        v109 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
        v110 = enum case for Image.Scale.small(_:);
        v111 = sub_1000C2048();
        (*(*(v111 - 8) + 104))(v108 + v109, v110, v111);
        *v108 = swift_getKeyPath();
        *v107 = v70;
        v107[1] = v79;
        v107[2] = v72;
        v107[3] = v106;
        v107[4] = v105;
        v112 = v164;
        sub_10001DA60(v107, v164, &qword_1000EE5E8, &qword_1000C66A0);
        v113 = v167;
        sub_1000082B4(v112, v167, &qword_1000EE5E8, &qword_1000C66A0);
        v114 = v170;
        *v170 = 0;
        *(v114 + 8) = 1;
        v115 = sub_100004D04(&qword_1000EE628, &qword_1000C6700);
        sub_1000082B4(v113, v114 + *(v115 + 48), &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000084C0(v113, &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000082B4(v114, v77, &qword_1000EE5E0, &qword_1000C6698);
      }

      else
      {
        v82 = v63;
        v83 = v162;
        sub_1000082B4(v64 + *(v68 + 24), v162, &qword_1000ECE78, &unk_1000C3810);
        v84 = *(v178 + 48);
        v85 = v174;
        v86 = v84(v83, 1, v174);
        sub_1000084C0(v83, &qword_1000ECE78, &unk_1000C3810);
        v69 = v86 == 1;
        v87 = v188;
        if (v69 || *(v64 + v189[7]) != 1)
        {
          v99 = v160;
          sub_10003F68C(v160);
          if (v84(v99, 1, v85) == 1)
          {
            sub_1000084C0(v99, &qword_1000ECE78, &unk_1000C3810);
            v100 = 1;
            v101 = v182;
            v102 = v181;
            v103 = v179;
            v104 = v87;
LABEL_31:
            v141 = sub_100004D04(&qword_1000EE5F8, &qword_1000C66B0);
            (*(*(v141 - 8) + 56))(v104, v100, 1, v141);
            v142 = v104;
            v143 = v183;
            sub_1000082B4(v142, v183, &qword_1000EE5F0, &qword_1000C66A8);
            v144 = v184;
            *v184 = v101;
            v144[1] = v102;
            v145 = v180 & 1;
            *(v144 + 16) = v180 & 1;
            v144[3] = v82;
            v144[4] = KeyPath;
            v144[5] = v103;
            *(v144 + 48) = 0;
            v144[7] = 0;
            *(v144 + 64) = 0;
            v146 = sub_100004D04(&qword_1000EE600, &qword_1000C66B8);
            sub_1000082B4(v143, v144 + *(v146 + 64), &qword_1000EE5F0, &qword_1000C66A8);
            sub_100008420(v101, v102, v145);

            sub_1000084C0(v188, &qword_1000EE5F0, &qword_1000C66A8);
            sub_1000084C0(v143, &qword_1000EE5F0, &qword_1000C66A8);
            sub_10000537C(v101, v102, v145);

            return;
          }

          v165 = KeyPath;
          v166 = v82;
          v117 = v178;
          v118 = v159;
          (*(v178 + 32))(v159, v99, v85);
          (*(v117 + 16))(v158, v118, v85);
          v119 = sub_1000C1DC8();
          v121 = v120;
          v123 = v122;
          v124 = *(v64 + v189[9] + 8);

          if ((v124 & 1) == 0)
          {
            sub_1000C2958();
            v125 = sub_1000C1BC8();
            sub_1000C1548();

            v126 = v186;
            sub_1000C1928();
            swift_getAtKeyPath();

            (*(v187 + 8))(v126, v161);
          }

          v127 = sub_1000C1DA8();
          v129 = v128;
          v131 = v130;

          sub_10000537C(v119, v121, v123 & 1);

          if (sub_1000451A0())
          {
            sub_1000C1FC8();
          }

          else
          {
            sub_1000C1FD8();
          }

          v132 = sub_1000C1D78();
          v134 = v133;
          v136 = v135;
          v138 = v137;

          sub_10000537C(v127, v129, v131 & 1);

          v139 = v136 & 1;
          sub_100008420(v132, v134, v136 & 1);

          sub_100008420(v132, v134, v136 & 1);

          sub_10000537C(v132, v134, v136 & 1);

          v140 = v177;
          *v177 = 0;
          *(v140 + 8) = 1;
          v140[2] = v132;
          v140[3] = v134;
          *(v140 + 32) = v136 & 1;
          v140[5] = v138;
          swift_storeEnumTagMultiPayload();
          sub_100004D04(&qword_1000EE608, &unk_1000C66C0);
          sub_1000508DC();
          sub_100008478(&qword_1000EE620, &qword_1000EE608, &unk_1000C66C0, &protocol conformance descriptor for TupleView<A>);
          v104 = v188;
          sub_1000C1AE8();
          sub_10000537C(v132, v134, v139);

          (*(v178 + 8))(v159, v174);
LABEL_30:
          v100 = 0;
          v82 = v166;
          v101 = v182;
          v102 = v181;
          KeyPath = v165;
          v103 = v179;
          goto LABEL_31;
        }

        v88 = sub_1000C2018();
        v89 = v64 + v189[9];
        v90 = *v89;
        v91 = *(v89 + 8);

        if ((v91 & 1) == 0)
        {
          sub_1000C2958();
          v92 = sub_1000C1BC8();
          sub_1000C1548();

          v93 = v186;
          sub_1000C1928();
          swift_getAtKeyPath();

          (*(v187 + 8))(v93, v161);
          v90 = aBlock[0];
        }

        v94 = v173;
        v95 = v172;
        v96 = swift_getKeyPath();
        v97 = sub_1000451A0();
        v166 = v82;
        v165 = KeyPath;
        if (v97)
        {
          v98 = sub_1000C1FC8();
        }

        else
        {
          v98 = sub_1000C1FD8();
        }

        v147 = v98;
        v148 = swift_getKeyPath();
        v149 = v156;
        v150 = (v156 + *(v95 + 36));
        v151 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
        v152 = enum case for Image.Scale.medium(_:);
        v153 = sub_1000C2048();
        (*(*(v153 - 8) + 104))(v150 + v151, v152, v153);
        *v150 = swift_getKeyPath();
        *v149 = v88;
        v149[1] = v96;
        v149[2] = v90;
        v149[3] = v148;
        v149[4] = v147;
        v112 = v157;
        sub_10001DA60(v149, v157, &qword_1000EE5E8, &qword_1000C66A0);
        v154 = v167;
        sub_1000082B4(v112, v167, &qword_1000EE5E8, &qword_1000C66A0);
        v114 = v170;
        *v170 = 0;
        *(v114 + 8) = 1;
        v155 = sub_100004D04(&qword_1000EE628, &qword_1000C6700);
        sub_1000082B4(v154, v114 + *(v155 + 48), &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000084C0(v154, &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000082B4(v114, v94, &qword_1000EE5E0, &qword_1000C6698);
      }

      swift_storeEnumTagMultiPayload();
      sub_100008478(&qword_1000EE618, &qword_1000EE5E0, &qword_1000C6698, &protocol conformance descriptor for TupleView<A>);
      v116 = v171;
      sub_1000C1AE8();
      sub_1000082B4(v116, v177, &qword_1000EE5D8, &qword_1000C6690);
      swift_storeEnumTagMultiPayload();
      sub_100004D04(&qword_1000EE608, &unk_1000C66C0);
      sub_1000508DC();
      sub_100008478(&qword_1000EE620, &qword_1000EE608, &unk_1000C66C0, &protocol conformance descriptor for TupleView<A>);
      v104 = v188;
      sub_1000C1AE8();
      sub_1000084C0(v116, &qword_1000EE5D8, &qword_1000C6690);
      sub_1000084C0(v114, &qword_1000EE5E0, &qword_1000C6698);
      sub_1000084C0(v112, &qword_1000EE5E8, &qword_1000C66A0);
      goto LABEL_30;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10003F4BC()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 36));
  if (v5 < 1)
  {
    v8 = *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 36);
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [objc_allocWithZone(NSNumber) initWithInteger:v5];

    v8 = *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 40);
  }

  v9 = (v0 + v8);
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_1000C2958();
    v12 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v14[1];
  }

  return v10;
}

uint64_t sub_10003F68C@<X0>(char *a1@<X8>)
{
  v3 = sub_1000C0858();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000C0818();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + *(v11 + 24), v6, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000084C0(v6, &qword_1000ECE78, &unk_1000C3810);
    v12 = *(v1 + *(v11 + 36));
    if (v12 < 1)
    {
      v17 = 1;
      return (*(v8 + 56))(a1, v17, 1, v7);
    }

    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
    v15 = [v13 localizedStringFromNumber:v14 numberStyle:1];

    sub_1000C2678();
    sub_1000C0848();
    sub_1000C0828();
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v10, v6, v7);
    v16(a1, v10, v7);
  }

  v17 = 0;
  return (*(v8 + 56))(a1, v17, 1, v7);
}

uint64_t sub_10003F960@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000C1B18();
  if ((sub_1000451A0() & 1) != 0 || (v5 & 1) == 0)
  {
    v6 = sub_1000C1FC8();
  }

  else
  {
    v6 = sub_1000C1FD8();
  }

  v7 = v6;
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_100004D04(&qword_1000EE578, &qword_1000C6620);
  sub_10003D8E8(v3, v7, a2 + *(v8 + 44));
}

uint64_t sub_10003FA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v66 = sub_1000C16C8();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C2338();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_1000C1938();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100004D04(&qword_1000EEE70, &qword_1000C6F08);
  v9 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v48 - v10;
  v49 = sub_100004D04(&qword_1000EEE78, &qword_1000C6F10);
  __chkstk_darwin(v49);
  v67 = &v48 - v12;
  v57 = sub_100004D04(&qword_1000EEE80, &qword_1000C6F18);
  __chkstk_darwin(v57);
  v56 = &v48 - v13;
  v62 = sub_100004D04(&qword_1000EEE88, &qword_1000C6F20);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v48 - v14;
  v59 = sub_100004D04(&qword_1000EEE90, &qword_1000C6F28);
  __chkstk_darwin(v59);
  v61 = &v48 - v15;
  v55 = *v1;
  v16 = sub_1000C2018();
  v68 = v1;
  v69 = v16;
  sub_100004D04(&qword_1000EEE98, &qword_1000C6F30);
  sub_10005C7C8();
  sub_1000C1E08();

  v17 = &v1[*(type metadata accessor for TTRAnyListWidget.CompletedView(0) + 40)];
  v18 = *v17;
  v19 = v17[8];

  v48 = v8;
  if (v19)
  {
    v20 = v52;
    v21 = v50;
  }

  else
  {
    sub_1000C2958();
    v22 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    v21 = v50;
    v23 = v8;
    v20 = v52;
    (*(v50 + 8))(v23, v52);
    v18 = v69;
  }

  KeyPath = swift_getKeyPath();
  v25 = v67;
  (*(v9 + 32))(v67, v11, v51);
  v26 = (v25 + *(v49 + 36));
  *v26 = KeyPath;
  v26[1] = v18;
  v27 = sub_1000451A0();
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v6);
  v28 = sub_10002E38C();
  (*(v53 + 8))(v6, v54);
  if ((v28 & 1) != 0 || (v27 & 1) == 0)
  {
    if (v55)
    {
      v29 = *(v2 + 3);
      v30 = v2[32];

      if ((v30 & 1) == 0)
      {
        sub_1000C2958();
        v31 = sub_1000C1BC8();
        sub_1000C1548();

        v32 = v48;
        sub_1000C1928();
        swift_getAtKeyPath();
        j__swift_release(v29);
        (*(v21 + 8))(v32, v20);
        v29 = v69;
      }
    }

    else
    {
      if (qword_1000EC978 != -1)
      {
        swift_once();
      }

      v29 = qword_1000FAB00;
    }
  }

  else
  {
    v29 = sub_1000C1FD8();
  }

  v33 = swift_getKeyPath();
  v34 = v56;
  sub_10001DA60(v67, v56, &qword_1000EEE78, &qword_1000C6F10);
  v35 = v57;
  v36 = (v34 + *(v57 + 36));
  *v36 = v33;
  v36[1] = v29;
  sub_100004D04(&qword_1000EEEB8, &qword_1000C6F40);
  v37 = sub_10005C8E4();
  v69 = v35;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v58;
  sub_1000C1E08();
  sub_1000084C0(v34, &qword_1000EEE80, &qword_1000C6F18);
  v39 = v61;
  v40 = &v61[*(v59 + 36)];
  v41 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
  v42 = enum case for Image.Scale.large(_:);
  v43 = sub_1000C2048();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  (*(v60 + 32))(v39, v38, v62);
  v45 = v63;
  v44 = v64;
  v46 = v66;
  (*(v64 + 104))(v63, enum case for DynamicTypeSize.large(_:), v66);
  sub_10005CAA4();
  sub_1000C1ED8();
  (*(v44 + 8))(v45, v46);
  return sub_1000084C0(v39, &qword_1000EEE90, &qword_1000C6F28);
}

double sub_100040310@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_1000C2028();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4, v6);
  v9 = sub_1000C2068();
  (*(v5 + 8))(v8, v4);
  sub_1000C2108();
  sub_1000C1608();
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = v12[1];
  *(a3 + 24) = v12[0];
  *(a3 + 40) = v10;
  result = *&v13;
  *(a3 + 56) = v13;
  return result;
}

uint64_t sub_100040474()
{
  sub_100004D04(&qword_1000EEE80, &qword_1000C6F18);
  sub_10005C8E4();
  return sub_1000C1E18();
}

double sub_1000404F4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C1A38();
  sub_100040650(v2, v15);
  *&v6[7] = v15[0];
  *&v6[23] = v15[1];
  *&v6[39] = v16[0];
  *&v6[48] = *(v16 + 9);
  if (*v2 >= 2u)
  {
    sub_1000C2108();
  }

  else
  {
    sub_1000C2118();
  }

  sub_1000C1788();
  *&v7[55] = v11;
  *&v7[71] = v12;
  *&v7[87] = v13;
  *&v7[103] = v14;
  *&v7[7] = v8;
  *&v7[23] = v9;
  *&v7[39] = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v6[48];
  *(a1 + 49) = *&v6[32];
  *(a1 + 33) = *&v6[16];
  *(a1 + 17) = *v6;
  *(a1 + 145) = *&v7[64];
  *(a1 + 161) = *&v7[80];
  *(a1 + 177) = *&v7[96];
  *(a1 + 192) = *(&v14 + 1);
  *(a1 + 81) = *v7;
  *(a1 + 97) = *&v7[16];
  result = *&v7[32];
  *(a1 + 113) = *&v7[32];
  *(a1 + 129) = *&v7[48];
  return result;
}

double sub_100040650@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v30 = sub_1000C1938();
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0E38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v10 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
  (*(v7 + 104))(v9, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v6);
  sub_1000C0E48();
  if (!v11)
  {
    sub_1000C0E08();
  }

  (*(v7 + 8))(v9, v6);
  v12 = a1[*(v10 + 24) + 8];

  if ((v12 & 1) == 0)
  {
    sub_1000C2958();
    v13 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v30);
  }

  v14 = sub_1000C1DA8();
  v16 = v15;
  v18 = v17;

  if (sub_1000451A0())
  {
    sub_1000C1FC8();
  }

  else
  {
    sub_1000C1FD8();
  }

  v19 = v32 == 0;
  v32 = v32 != 0;
  v20 = v19;
  v21 = sub_1000C1D78();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10000537C(v14, v16, v18 & 1);

  v35 = v20;
  v34 = v25 & 1;
  v33 = 1;
  v28 = v31;
  *v31 = 0;
  *(v28 + 8) = v32;
  *(v28 + 9) = v20;
  v28[2] = v21;
  v28[3] = v23;
  *(v28 + 32) = v25 & 1;
  v28[5] = v27;
  v28[6] = 0;
  *(v28 + 56) = 1;
  sub_100008420(v21, v23, v25 & 1);

  sub_10000537C(v21, v23, v25 & 1);

  return result;
}

uint64_t sub_1000409B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v18 = sub_1000C1B58();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004D04(&qword_1000EF740, &qword_1000C7980);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v17 = sub_100004D04(&qword_1000EF748, &qword_1000C7988);
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - v10;
  *v8 = sub_1000C1998();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = sub_100004D04(&qword_1000EF750, &qword_1000C7990);
  sub_100040C70(v2, &v8[*(v12 + 44)]);
  sub_1000C1B38();
  v13 = sub_100008478(&qword_1000EF758, &qword_1000EF740, &qword_1000C7980, &protocol conformance descriptor for HStack<A>);
  sub_1000C1F28();
  (*(v3 + 8))(v5, v18);
  sub_1000084C0(v8, &qword_1000EF740, &qword_1000C7980);
  v22 = *v2;
  v20 = v6;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_100012814();
  v14 = v17;
  sub_1000C1F08();
  return (*(v9 + 8))(v11, v14);
}

double sub_100040C70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
  __chkstk_darwin(v34);
  v35 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v31[-v6];
  v8 = sub_1000C1938();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = a1[3];
  v39 = *(a1 + 32);
  v12 = v39;

  sub_1000082B4(&v38, v37, &qword_1000ED668, &qword_1000C76F0);
  if (v12 != 1)
  {
    sub_1000C2958();
    v13 = sub_1000C1BC8();
    v33 = v8;
    v14 = v13;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v38, &qword_1000ED668, &qword_1000C76F0);
    (*(v9 + 8))(v11, v33);
  }

  v15 = sub_1000C1DA8();
  v17 = v16;
  v19 = v18;

  sub_1000C1FD8();
  v20 = sub_1000C1D78();
  v22 = v21;
  v32 = v23;
  v33 = v24;

  sub_10000537C(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v37[0] = a1[2];
  *v7 = v37[0];
  v26 = v34;
  v27 = *(v34 + 20);
  *(v7 + v27) = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v26 + 24)) = 0x4020000000000000;
  *(v7 + *(v26 + 28)) = 0x3FF0000000000000;
  v28 = v35;
  sub_100048828(v7, v35, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  *a2 = v20;
  *(a2 + 8) = v22;
  LOBYTE(v26) = v32 & 1;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4030000000000000;
  *(a2 + 64) = 0;
  v29 = sub_100004D04(&qword_1000EF760, &qword_1000C7998);
  sub_100048828(v28, a2 + *(v29 + 64), type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_1000082B4(v37, v36, &qword_1000EF768, &unk_1000C79A0);
  sub_100008420(v20, v22, v26);

  sub_100048940(v7, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_100048940(v28, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_10000537C(v20, v22, v26);

  return result;
}

uint64_t sub_1000410A8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1000C1948();
  return v3;
}

uint64_t sub_1000410F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1000C1958();
}

uint64_t sub_100041190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v89 = sub_1000C0C58();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v92);
  v104 = &v86 - v4;
  v102 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  __chkstk_darwin(v102);
  v103 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100004D04(&qword_1000EE018, &qword_1000C5D88);
  __chkstk_darwin(v93);
  v105 = &v86 - v6;
  v95 = sub_100004D04(&qword_1000EE020, &qword_1000C5D90);
  __chkstk_darwin(v95);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v86 - v9;
  __chkstk_darwin(v10);
  v97 = &v86 - v11;
  KeyPath = sub_1000C0938();
  v12 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004D04(&qword_1000EE028, &qword_1000C5D98);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v22 = sub_100004D04(&qword_1000EE030, &qword_1000C5DA0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v96 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v86 - v26;
  *v27 = sub_1000C1998();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v27[*(sub_100004D04(&qword_1000EE038, &qword_1000C5DA8) + 44)];
  v29 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v30 = *(v12 + 16);
  v100 = a1;
  v30(v14, a1 + v29, KeyPath);
  v106 = a1;
  sub_100004D04(&qword_1000EE040, &qword_1000C5DB0);
  sub_1000485EC();
  sub_1000C1CE8();
  v31 = *(v16 + 16);
  v31(v18, v21, v15);
  v31(v28, v18, v15);
  v32 = &v28[*(sub_100004D04(&qword_1000EE070, &qword_1000C5DC0) + 48)];
  *v32 = 0;
  v32[8] = 1;
  v33 = *(v16 + 8);
  v33(v21, v15);
  v33(v18, v15);
  v34 = v100;
  LOBYTE(v15) = sub_1000C1BF8();
  sub_1000C15A8();
  v35 = v27;
  v36 = &v27[*(v23 + 44)];
  *v36 = v15;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v91 = swift_getKeyPath();
  v86 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  if ((sub_1000451A0() & 1) == 0)
  {
    if (qword_1000EC960 != -1)
    {
      swift_once();
    }

    v42 = &qword_1000EDD70;
    goto LABEL_7;
  }

  if (qword_1000EC980 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v42 = &qword_1000FAB08;
LABEL_7:
    v43 = v104;
    v44 = v105;
    v46 = v102;
    v45 = v103;
    v105 = *v42;

    v108 = 0;
    v107 = 0;
    sub_100048828(v34, v45, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v47 = v45 + v46[9];
    *v47 = swift_getKeyPath();
    *(v47 + 8) = 0;
    v48 = v45 + v46[10];
    *v48 = swift_getKeyPath();
    *(v48 + 8) = 0;
    v49 = v45 + v46[11];
    *v49 = swift_getKeyPath();
    *(v49 + 8) = 0;
    *(v45 + v46[5]) = 5;
    v50 = v45 + v46[6];
    *v50 = 0;
    *(v50 + 8) = 1;
    *(v45 + v46[7]) = 0;
    v51 = (v45 + v46[8]);
    *v51 = vdupq_n_s64(0x4041000000000000uLL);
    v51[1].i8[0] = 0;
    v52 = enum case for DynamicTypeSize.xxxLarge(_:);
    v53 = sub_1000C16C8();
    (*(*(v53 - 8) + 104))(v43, v52, v53);
    sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    if (sub_1000C2608())
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v104 = v41;
  sub_100048784(&qword_1000EE080, type metadata accessor for TTRAnyListWidget.InteractiveReminderView, &unk_1000C6188);
  sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
  sub_1000C1EE8();
  sub_1000084C0(v43, &qword_1000EE010, &qword_1000C5D80);
  sub_100048940(v45, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  v54 = sub_1000C1BE8();
  sub_1000C15A8();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = &v44[*(sub_100004D04(&qword_1000EE088, &qword_1000C5E98) + 36)];
  *v63 = v54;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  v64 = swift_getKeyPath();
  v65 = sub_1000423D8();
  v66 = &v44[*(v93 + 36)];
  *v66 = v64;
  v66[1] = v65;
  v67 = swift_getKeyPath();
  if (sub_1000451A0())
  {
    v68 = sub_1000C1FC8();
  }

  else
  {
    v69 = v87;
    sub_1000C0EC8();
    sub_1000C0C38();
    (*(v88 + 8))(v69, v89);
    v68 = sub_1000C1FF8();
  }

  v70 = v68;
  v71 = v44;
  v72 = v94;
  sub_10001DA60(v71, v94, &qword_1000EE018, &qword_1000C5D88);
  v73 = (v72 + *(v95 + 36));
  *v73 = v67;
  v73[1] = v70;
  v74 = v72;
  v75 = v97;
  sub_10001DA60(v74, v97, &qword_1000EE020, &qword_1000C5D90);
  v90 = v35;
  v76 = v96;
  sub_1000082B4(v35, v96, &qword_1000EE030, &qword_1000C5DA0);
  v77 = v107;
  v78 = v108;
  v79 = v98;
  sub_1000082B4(v75, v98, &qword_1000EE020, &qword_1000C5D90);
  v80 = v99;
  sub_1000082B4(v76, v99, &qword_1000EE030, &qword_1000C5DA0);
  v81 = sub_100004D04(&qword_1000EE090, &unk_1000C5EC8);
  v82 = v80 + *(v81 + 48);
  *v82 = 0;
  *(v82 + 8) = 0;
  v83 = KeyPath;
  *(v82 + 16) = KeyPath;
  *(v82 + 24) = v78;
  v84 = v105;
  *(v82 + 32) = v104;
  *(v82 + 40) = v77;
  *(v82 + 48) = v91;
  *(v82 + 56) = v84;
  sub_1000082B4(v79, v80 + *(v81 + 64), &qword_1000EE020, &qword_1000C5D90);
  sub_1000489F4(v83, v78 & 1);

  sub_1000084C0(v75, &qword_1000EE020, &qword_1000C5D90);
  sub_1000084C0(v90, &qword_1000EE030, &qword_1000C5DA0);
  sub_1000084C0(v79, &qword_1000EE020, &qword_1000C5D90);
  sub_100048A00(v83, v78 & 1);

  return sub_1000084C0(v76, &qword_1000EE030, &qword_1000C5DA0);
}

uint64_t sub_100041CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(a1, v9, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v10 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  v11 = *(v10 + 20);
  v12 = *(v7 + 20);
  v13 = sub_1000C0EF8();
  (*(*(v13 - 8) + 16))(&v9[v12], a1 + v11, v13);
  v14 = *(v10 + 24);
  v15 = *(v7 + 24);
  v16 = sub_1000C0AF8();
  (*(*(v16 - 8) + 16))(&v9[v15], a1 + v14, v16);
  v17 = enum case for DynamicTypeSize.xxLarge(_:);
  v18 = sub_1000C16C8();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_100048784(&qword_1000EE050, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView, &unk_1000C61D8);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000C1EE8();
    sub_1000084C0(v6, &qword_1000EE010, &qword_1000C5D80);
    sub_100048940(v9, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView);
    KeyPath = swift_getKeyPath();
    v21 = sub_100042000();
    result = sub_100004D04(&qword_1000EE040, &qword_1000C5DB0);
    v22 = (a2 + *(result + 36));
    *v22 = KeyPath;
    v22[1] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042000()
{
  v0 = sub_1000C0C58();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C1778();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_1000C2338();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v12);
  v13 = sub_10002E38C();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    return sub_1000C1F98();
  }

  if (sub_1000451A0())
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v8);
    sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000C2A78();
    sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v15 = sub_1000C2608();
    v16 = *(v19 + 8);
    v16(v5, v3);
    v16(v8, v3);
    sub_1000C0EC8();
    sub_1000C0C38();
    (*(v20 + 8))(v2, v21);
    result = sub_1000C1FF8();
    if ((v15 & 1) == 0)
    {
      v17 = sub_1000C1FB8();

      return v17;
    }
  }

  return result;
}

uint64_t sub_1000423D8()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000C1CD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.title(_:), v7, v9);
  v12 = enum case for Font.Design.rounded(_:);
  v13 = sub_1000C1C38();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  sub_1000C1C78();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  sub_1000C1CB8();

  (*(v1 + 8))(v3, v0);
  sub_1000C1C58();
  v15 = sub_1000C1C88();

  return v15;
}

uint64_t sub_1000426B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_100004D04(&qword_1000EDFC0, &qword_1000C5D18);
  __chkstk_darwin(v7);
  v9 = (&v27 - v8);
  v10 = sub_100004D04(&qword_1000EDFC8, &qword_1000C5D20);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  *v9 = sub_1000C20F8();
  v9[1] = v13;
  v14 = v9 + *(sub_100004D04(&qword_1000EDFD0, &qword_1000C5D28) + 44);
  *v14 = sub_1000C1A48();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_100004D04(&qword_1000EDFD8, &qword_1000C5D30);
  sub_100041190(v2, &v14[*(v15 + 44)]);
  v16 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v17 = sub_1000C0938();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, v2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_100008478(&qword_1000EDFE0, &qword_1000EDFC0, &qword_1000C5D18, &protocol conformance descriptor for ZStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v6, &qword_1000ECCE0, &qword_1000C4EF0);
  sub_1000084C0(v9, &qword_1000EDFC0, &qword_1000C5D18);
  v19 = sub_1000C1BD8();
  v20 = &v12[*(v10 + 36)];
  *v20 = v19;
  *(v20 + 8) = xmmword_1000C5A50;
  *(v20 + 24) = xmmword_1000C5A60;
  v20[40] = 0;
  sub_1000C1FA8();
  sub_1000483E0();
  sub_1000C1E28();

  sub_1000084C0(v12, &qword_1000EDFC8, &qword_1000C5D20);
  KeyPath = swift_getKeyPath();
  v22 = (a1 + *(sub_100004D04(&qword_1000EE000, &qword_1000C5D70) + 36));
  v23 = *(sub_100004D04(&qword_1000EE008, &qword_1000C5D78) + 28);
  v24 = enum case for ColorScheme.light(_:);
  v25 = sub_1000C15B8();
  result = (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = KeyPath;
  return result;
}

void sub_100042A3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_100004D04(&qword_1000EE268, &qword_1000C6230);
  __chkstk_darwin(v30);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_1000C0F08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v28 - v13);
  type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0);
  v29 = a1;
  sub_1000C0EE8();
  v15 = *(v9 + 88);
  if (v15(v14, v8) == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v9 + 96))(v14, v8);
    v16 = *v14;
    v17 = sub_1000C2A08();
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v17 = 0;
  }

  v18 = v29;
  sub_1000C0EE8();
  if (v15(v11, v8) == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v9 + 96))(v11, v8);
    v20 = *v11;
    v19 = v11[1];
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v20 = 0;
    v19 = 0;
  }

  KeyPath = swift_getKeyPath();
  *v7 = sub_1000C1A48();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v22 = sub_100004D04(&qword_1000EE270, &qword_1000C6238);
  sub_100042DCC(v18, &v7[*(v22 + 44)]);
  v23 = swift_getKeyPath();
  v24 = v31;
  v25 = &v7[*(v30 + 36)];
  *v25 = v23;
  v25[8] = 1;
  sub_1000082B4(v7, v24, &qword_1000EE268, &qword_1000C6230);
  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  v26 = sub_100004D04(&qword_1000EE278, &qword_1000C6270);
  sub_1000082B4(v24, a2 + *(v26 + 48), &qword_1000EE268, &qword_1000C6230);

  v27 = v17;
  sub_1000084C0(v7, &qword_1000EE268, &qword_1000C6230);
  sub_1000084C0(v24, &qword_1000EE268, &qword_1000C6230);
}

uint64_t sub_100042DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v72 = a2;
  v2 = sub_100004D04(&qword_1000EE280, &qword_1000C6278);
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  __chkstk_darwin(v2);
  v66 = &v53 - v4;
  v68 = sub_100004D04(&qword_1000EE288, &qword_1000C6280) - 8;
  __chkstk_darwin(v68);
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v53 - v7;
  v8 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_100004D04(&qword_1000EE290, &qword_1000C6288);
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v55 = sub_100004D04(&qword_1000EE298, &qword_1000C6290);
  __chkstk_darwin(v55);
  v16 = &v53 - v15;
  v58 = sub_100004D04(&qword_1000EE2A0, &qword_1000C6298) - 8;
  __chkstk_darwin(v58);
  v65 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = &v53 - v19;
  v20 = sub_1000C1988();
  LOBYTE(v88) = 0;
  sub_100043654(v78);
  *&v77[7] = v78[0];
  *&v77[23] = v78[1];
  *&v77[39] = v78[2];
  *&v77[55] = v78[3];
  v21 = v88;
  v22 = sub_1000C1CC8();
  KeyPath = swift_getKeyPath();
  *&v89[17] = *&v77[16];
  *&v89[33] = *&v77[32];
  *&v89[49] = *&v77[48];
  v88 = v20;
  v89[0] = v21;
  *&v89[1] = *v77;
  *&v89[64] = *&v77[63];
  *&v89[72] = KeyPath;
  *&v90 = v22;
  v24 = enum case for Font.Design.rounded(_:);
  v62 = enum case for Font.Design.rounded(_:);
  v25 = sub_1000C1C38();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v61 = v26 + 104;
  v63 = v27;
  v27(v10, v24, v25);
  v60 = *(v26 + 56);
  v60(v10, 0, 1, v25);
  v28 = sub_100004D04(&qword_1000EE2A8, &qword_1000C62D0);
  v29 = sub_10004B48C();
  sub_1000C1E68();
  sub_1000084C0(v10, &qword_1000ECC38, &qword_1000C3720);
  v79[4] = *&v89[48];
  v79[5] = *&v89[64];
  v80 = v90;
  v79[0] = v88;
  v79[1] = *v89;
  v79[2] = *&v89[16];
  v79[3] = *&v89[32];
  sub_1000084C0(v79, &qword_1000EE2A8, &qword_1000C62D0);
  sub_1000C1C58();
  *&v88 = v28;
  *(&v88 + 1) = v29;
  v59 = &opaque type descriptor for <<opaque return type of View.fontDesign(_:)>>;
  swift_getOpaqueTypeConformance2();
  v30 = v56;
  sub_1000C1E78();
  (*(v57 + 8))(v14, v30);
  v31 = swift_getKeyPath();
  v32 = &v16[*(v55 + 36)];
  *v32 = v31;
  *(v32 + 1) = 1;
  v32[16] = 0;
  sub_10004B5D4();
  v33 = v54;
  sub_1000C1EF8();
  sub_1000084C0(v16, &qword_1000EE298, &qword_1000C6290);
  v34 = sub_1000C1FD8();
  v35 = swift_getKeyPath();
  v36 = (v33 + *(v58 + 44));
  *v36 = v35;
  v36[1] = v34;
  v37 = sub_1000C1998();
  LOBYTE(v87[0]) = 0;
  sub_1000437BC(v64, &v88);
  v83 = *&v89[16];
  v84[0] = *&v89[32];
  *(v84 + 9) = *&v89[41];
  v81 = v88;
  v82 = *v89;
  v85[2] = *&v89[16];
  v86[0] = *&v89[32];
  *(v86 + 9) = *&v89[41];
  v85[0] = v88;
  v85[1] = *v89;
  sub_1000082B4(&v81, &v73, &qword_1000EE2D0, &qword_1000C6350);
  sub_1000084C0(v85, &qword_1000EE2D0, &qword_1000C6350);
  *(&v76[1] + 7) = v82;
  *(&v76[2] + 7) = v83;
  *(&v76[3] + 7) = v84[0];
  v76[4] = *(v84 + 9);
  *(v76 + 7) = v81;
  LOBYTE(v16) = v87[0];
  v38 = sub_1000C1CA8();
  v39 = swift_getKeyPath();
  *(&v74[1] + 1) = v76[1];
  *(&v74[2] + 1) = v76[2];
  *(&v74[3] + 1) = v76[3];
  v73 = v37;
  LOBYTE(v74[0]) = v16;
  *(&v74[4] + 1) = v76[4];
  *(v74 + 1) = v76[0];
  *(&v74[5] + 1) = v87[0];
  DWORD1(v74[5]) = *(v87 + 3);
  *(&v74[5] + 1) = v39;
  v75 = v38;
  v63(v10, v62, v25);
  v60(v10, 0, 1, v25);
  v40 = sub_100004D04(&qword_1000EE2D8, &qword_1000C6358);
  v41 = sub_10004B764();
  v42 = v66;
  sub_1000C1E68();
  sub_1000084C0(v10, &qword_1000ECC38, &qword_1000C3720);
  *&v89[48] = v74[3];
  *&v89[64] = v74[4];
  v90 = v74[5];
  v91 = v75;
  v88 = v73;
  *v89 = v74[0];
  *&v89[16] = v74[1];
  *&v89[32] = v74[2];
  sub_1000084C0(&v88, &qword_1000EE2D8, &qword_1000C6358);
  sub_1000C1C58();
  *&v73 = v40;
  *(&v73 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v67;
  v44 = v70;
  sub_1000C1E78();
  (*(v71 + 8))(v42, v44);
  v45 = sub_1000C1FC8();
  v46 = swift_getKeyPath();
  v47 = (v43 + *(v68 + 44));
  *v47 = v46;
  v47[1] = v45;
  v48 = v65;
  sub_1000082B4(v33, v65, &qword_1000EE2A0, &qword_1000C6298);
  v49 = v69;
  sub_1000082B4(v43, v69, &qword_1000EE288, &qword_1000C6280);
  v50 = v72;
  sub_1000082B4(v48, v72, &qword_1000EE2A0, &qword_1000C6298);
  v51 = sub_100004D04(&qword_1000EE2F8, &qword_1000C6368);
  sub_1000082B4(v49, v50 + *(v51 + 48), &qword_1000EE288, &qword_1000C6280);
  sub_1000084C0(v43, &qword_1000EE288, &qword_1000C6280);
  sub_1000084C0(v33, &qword_1000EE2A0, &qword_1000C6298);
  sub_1000084C0(v49, &qword_1000EE288, &qword_1000C6280);
  return sub_1000084C0(v48, &qword_1000EE2A0, &qword_1000C6298);
}

double sub_100043654@<D0>(uint64_t a1@<X8>)
{
  sub_1000C19E8();
  v2 = sub_1000C1DB8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000C2018();
  v9 = sub_1000C1DF8();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_100008420(v2, v4, v6 & 1);

  sub_100008420(v9, v11, v13);

  sub_10000537C(v9, v11, v13);

  sub_10000537C(v2, v4, v6 & 1);

  return result;
}

void sub_1000437BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v3 - 8);
  v57 = &v46 - v4;
  v58 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  __chkstk_darwin(v58);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v46 - v7;
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  __chkstk_darwin(v51);
  v52 = &v46 - v12;
  v13 = sub_1000C19D8();
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C19E8();
  v16 = sub_1000C1DB8();
  v50 = v17;
  v54 = v18;
  v20 = v19;
  sub_1000C19C8();
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v55 = v15;
  sub_1000C19B8(v64);
  sub_1000C0AB8();
  v21 = *(type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0) + 24);
  sub_100048784(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = a1;
  v23 = v8;
  if (sub_1000C25E8())
  {
    v49 = v16;
    v24 = *(v9 + 32);
    v25 = v53;
    v24(v53, v11, v23);
    v47 = v24;
    v26 = v58;
    (*(v9 + 16))(v25 + *(v58 + 48), v22 + v21, v23);
    v27 = v56;
    sub_1000082B4(v25, v56, &qword_1000EE308, &unk_1000C8CC0);
    v46 = *(v26 + 48);
    v28 = v52;
    v24(v52, v27, v23);
    v48 = v20;
    v29 = v59;
    v30 = *(v9 + 8);
    v30(v27 + v46, v23);
    sub_10001DA60(v25, v27, &qword_1000EE308, &unk_1000C8CC0);
    v47(&v28[*(v51 + 36)], v27 + *(v26 + 48), v23);
    v30(v27, v23);
    (*(v9 + 56))(v57, 1, 1, v23);
    v31 = sub_1000C1D68();
    v33 = v32;
    v35 = v34;
    sub_1000C19A8();
    sub_10000537C(v31, v33, v35 & 1);

    v65._countAndFlagsBits = 1852402976;
    v65._object = 0xE400000000000000;
    sub_1000C19B8(v65);
    sub_1000C19F8();
    v36 = sub_1000C1DB8();
    v38 = v37;
    v39 = v54 & 1;
    v63 = v54 & 1;
    v62 = v54 & 1;
    v41 = v40 & 1;
    v61 = v40 & 1;
    v60 = 1;
    v42 = v49;
    v43 = v50;
    *v29 = v49;
    *(v29 + 8) = v43;
    *(v29 + 16) = v39;
    *(v29 + 24) = v48;
    *(v29 + 32) = v36;
    *(v29 + 40) = v37;
    *(v29 + 48) = v40 & 1;
    *(v29 + 56) = v44;
    *(v29 + 64) = 0;
    *(v29 + 72) = 1;
    v45 = v42;
    sub_100008420(v42, v43, v39);

    sub_100008420(v36, v38, v41);

    sub_10000537C(v36, v38, v41);

    sub_10000537C(v45, v43, v63);
  }

  else
  {
    __break(1u);
  }
}

void sub_100043D60(uint64_t a2@<X8>)
{
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100004D04(&qword_1000EE260, &qword_1000C6228);
  sub_100042A3C(v2, a2 + *(v4 + 44));
}

uint64_t sub_100043E84(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v22 = a3;
  v4 = sub_1000C1C98();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000C1CD8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a2, v11, v13);
  v16 = enum case for Font.Design.rounded(_:);
  v17 = sub_1000C1C38();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  sub_1000C1C78();
  sub_1000084C0(v10, &qword_1000ECC38, &qword_1000C3720);
  (*(v12 + 8))(v15, v11);
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v19 = sub_1000C1CB8();

  result = (*(v5 + 8))(v7, v4);
  *v22 = v19;
  return result;
}

uint64_t sub_10004418C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v22 = a3;
  v4 = sub_1000C1C98();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000C1CD8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a2, v11, v13);
  v16 = enum case for Font.Design.rounded(_:);
  v17 = sub_1000C1C38();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  sub_1000C1C78();
  sub_1000084C0(v10, &qword_1000ECC38, &qword_1000C3720);
  (*(v12 + 8))(v15, v11);
  sub_1000C1C58();
  sub_1000C1C88();

  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v19 = sub_1000C1CB8();

  result = (*(v5 + 8))(v7, v4);
  *v22 = v19;
  return result;
}

uint64_t sub_1000444C0(uint64_t a1, unsigned int *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v7 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000C1CD8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *a2, v10, v12);
  v15 = enum case for Font.Design.rounded(_:);
  v16 = sub_1000C1C38();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  sub_1000C1C78();
  sub_1000084C0(v9, &qword_1000ECC38, &qword_1000C3720);
  v18 = (*(v11 + 8))(v14, v10);
  a3(v18);
  v19 = sub_1000C1C88();

  *a4 = v19;
  return result;
}

uint64_t sub_1000446FC()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_1000C1C48();
  v7 = enum case for Font.Design.rounded(_:);
  v8 = sub_1000C1C38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_1000C1C68();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v10 = sub_1000C1CB8();

  result = (*(v1 + 8))(v3, v0);
  qword_1000EDD48 = v10;
  return result;
}

uint64_t sub_10004493C(uint64_t a1)
{
  result = sub_1000C1FC8();
  qword_1000EDD50 = result;
  return result;
}

uint64_t sub_100044980()
{
  if (qword_1000EC910 != -1)
  {
    swift_once();
  }

  sub_1000C1C58();
  v0 = sub_1000C1C88();

  qword_1000EDD58 = v0;
  return result;
}

uint64_t sub_100044A20()
{
  result = sub_1000C1F88();
  qword_1000EDD60 = result;
  return result;
}

uint64_t sub_100044A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004BCC0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100044AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004BC3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100044B34()
{
  sub_1000C0C88();
  result = sub_1000C1FF8();
  qword_1000EDD68 = result;
  return result;
}

uint64_t sub_100044B7C()
{
  v0 = [objc_opt_self() separatorColor];
  result = sub_1000C1FF8();
  qword_1000EDD70 = result;
  return result;
}

uint64_t sub_100044BE0(void *a1)
{
  sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C3590;
  v3 = a1[1];
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (*(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 60)) == 1)
  {

    v14._countAndFlagsBits = 0x696C207472616D53;
    v15._object = 0x80000001000CD4E0;
    v14._object = 0xEA00000000007473;
    v15._countAndFlagsBits = 0xD00000000000003CLL;
    v4 = sub_1000C0D78(v14, v15);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      v11 = v4;
      v12 = v5;
      v13 = sub_100022328((v6 > 1), v7 + 1, 1, v2);
      v5 = v12;
      v2 = v13;
      v4 = v11;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
  }

  else
  {
  }

  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430, &protocol conformance descriptor for [A]);
  v9 = sub_1000C25B8();

  return v9;
}

uint64_t sub_100044D9C(uint64_t a1)
{
  v2 = sub_1000C0E38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 1)
  {
    type metadata accessor for TTRNewWidgetViewModel(0);
    (*(v3 + 104))(v5, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v2);
    v9 = sub_1000C0E48();
    if (!v10)
    {
      v9 = sub_1000C0E08();
    }

    v6 = v9;
    v8 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = sub_1000C0E18();
    v8 = v7;
  }

  v11 = sub_100022328(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100022328((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  v15 = type metadata accessor for TTRNewWidgetViewModel(0);
  v16 = (a1 + v15[13]);
  v17 = v16[1];
  if (!v17)
  {
    v19 = v15[11];
    v20 = *(a1 + v19 + 8);
    if (!v20)
    {
      goto LABEL_21;
    }

    v22 = (a1 + v15[14]);
    v21 = v22[1];
    if (v21)
    {
      v18 = *v22;
    }

    else
    {
      v18 = 0;
      v21 = 0xE000000000000000;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_17;
  }

  v18 = *v16;
  v19 = v15[11];
  v20 = *(a1 + v19 + 8);
  v37 = 0;
  v38 = 0xE000000000000000;
  if (v20)
  {
    v21 = v17;
LABEL_17:
    v25 = *(a1 + v19);

    v39._countAndFlagsBits = v25;
    v39._object = v20;
    sub_1000C26D8(v39);
    v23 = v37;
    v24 = v38;
    goto LABEL_18;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  v21 = v17;
LABEL_18:
  v41._countAndFlagsBits = 0x6567646162204025;
  v41._object = 0xEC0000004025202CLL;
  v40._object = 0x80000001000CD1B0;
  v42._countAndFlagsBits = 0xD00000000000006ELL;
  v42._object = 0x80000001000CD1E0;
  v40._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1000C0D68(v40, v41, v42);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000C44F0;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_10002C68C();
  *(v26 + 32) = v18;
  *(v26 + 40) = v21;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = v23;
  *(v26 + 80) = v24;
  v28 = sub_1000C2648();
  v30 = v29;

  v32 = *(v11 + 2);
  v31 = *(v11 + 3);
  if (v32 >= v31 >> 1)
  {
    v11 = sub_100022328((v31 > 1), v32 + 1, 1, v11);
  }

  *(v11 + 2) = v32 + 1;
  v33 = &v11[16 * v32];
  *(v33 + 4) = v28;
  *(v33 + 5) = v30;
LABEL_21:
  v37 = v11;
  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430, &protocol conformance descriptor for [A]);
  v34 = sub_1000C25B8();

  return v34;
}

uint64_t sub_1000451A0()
{
  v0 = sub_1000C2338();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, (&v12 - v5));
  sub_1000C2328();
  sub_100048784(&qword_1000EE0B0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v7 = sub_1000C2608();
  v8 = *(v1 + 8);
  v8(v3, v0);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    sub_1000C2318();
    v10 = sub_1000C2608();
    v8(v3, v0);
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      sub_1000C2308();
      v9 = sub_1000C2608();
      v8(v3, v0);
    }
  }

  v8(v6, v0);
  return v9 & 1;
}

void sub_1000453C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004D04(&qword_1000EEE60, &qword_1000C6F00);
    v1 = sub_1000C2C68();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_10005C774();
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_10004BC2C(&v26[8], v24);
    sub_10004BC2C(v24, v26);
    sub_1000C2678();
    sub_1000C2D68();
    sub_1000C26C8();
    v15 = sub_1000C2D88();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v13;
    sub_10004BC2C(v26, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100045698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10004BC2C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1000084C0(v13, &qword_1000EE398, &qword_1000C6440);
}

uint64_t sub_100045744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C18A8();
  *a1 = result;
  return result;
}

uint64_t sub_10004579C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C1908();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100045850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_100045920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C1838();
  *a1 = result;
  return result;
}

unint64_t sub_100045998()
{
  result = qword_1000EDDA0;
  if (!qword_1000EDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDDA0);
  }

  return result;
}

char *sub_100045A20(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[5];
    v21 = sub_1000C0EF8();
    v22 = *(*(v21 - 8) + 16);
    v23 = v19;
    v22(&v6[v20], a2 + v20, v21);
    v24 = a3[6];
    v25 = sub_1000C0AF8();
    (*(*(v25 - 8) + 16))(&v6[v24], a2 + v24, v25);
    v26 = a3[7];
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = sub_1000C1778();
      (*(*(v27 - 8) + 16))(&v6[v26], a2 + v26, v27);
    }

    else
    {
      *&v6[v26] = *(a2 + v26);
    }

    swift_storeEnumTagMultiPayload();
    v28 = a3[8];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = sub_1000C2338();
      (*(*(v29 - 8) + 16))(&v6[v28], a2 + v28, v29);
    }

    else
    {
      *&v6[v28] = *(a2 + v28);
    }

    swift_storeEnumTagMultiPayload();
    v30 = a3[9];
    v31 = a3[10];
    v32 = &v6[v30];
    v33 = a2 + v30;
    v34 = *v33;
    LOBYTE(v33) = v33[8];
    *v32 = v34;
    v32[8] = v33;

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = sub_1000C2338();
      (*(*(v35 - 8) + 16))(&v6[v31], a2 + v31, v35);
    }

    else
    {
      *&v6[v31] = *(a2 + v31);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v6;
}

uint64_t sub_100045E6C(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = a2[5];
  v11 = sub_1000C0EF8();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[6];
  v13 = sub_1000C0AF8();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[7];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000C1778();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  else
  {
  }

  v16 = a2[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C2338();
    (*(*(v17 - 8) + 8))(a1 + v16, v17);
  }

  else
  {
  }

  v18 = a2[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1000C2338();
    v20 = *(*(v19 - 8) + 8);

    return v20(a1 + v18, v19);
  }

  else
  {
  }
}

char *sub_100046164(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[5];
  v20 = sub_1000C0EF8();
  v21 = *(*(v20 - 8) + 16);
  v22 = v18;
  v21(&a1[v19], a2 + v19, v20);
  v23 = a3[6];
  v24 = sub_1000C0AF8();
  (*(*(v24 - 8) + 16))(&a1[v23], a2 + v23, v24);
  v25 = a3[7];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000C1778();
    (*(*(v26 - 8) + 16))(&a1[v25], a2 + v25, v26);
  }

  else
  {
    *&a1[v25] = *(a2 + v25);
  }

  swift_storeEnumTagMultiPayload();
  v27 = a3[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_1000C2338();
    (*(*(v28 - 8) + 16))(&a1[v27], a2 + v27, v28);
  }

  else
  {
    *&a1[v27] = *(a2 + v27);
  }

  swift_storeEnumTagMultiPayload();
  v29 = a3[9];
  v30 = a3[10];
  v31 = &a1[v29];
  v32 = (a2 + v29);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  v31[8] = v32;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1000C2338();
    (*(*(v34 - 8) + 16))(&a1[v30], a2 + v30, v34);
  }

  else
  {
    *&a1[v30] = *(a2 + v30);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100046558(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 24))(a1 + v13, a2 + v13, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  v26 = a3[5];
  v27 = sub_1000C0EF8();
  (*(*(v27 - 8) + 24))(a1 + v26, a2 + v26, v27);
  v28 = a3[6];
  v29 = sub_1000C0AF8();
  (*(*(v29 - 8) + 24))(a1 + v28, a2 + v28, v29);
  if (a1 != a2)
  {
    v30 = a3[7];
    sub_1000084C0(a1 + v30, &qword_1000EDDB8, &qword_1000C8030);
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = sub_1000C1778();
      (*(*(v31 - 8) + 16))(a1 + v30, a2 + v30, v31);
    }

    else
    {
      *(a1 + v30) = *(a2 + v30);
    }

    swift_storeEnumTagMultiPayload();
    v32 = a3[8];
    sub_1000084C0(a1 + v32, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_1000C2338();
      (*(*(v33 - 8) + 16))(a1 + v32, a2 + v32, v33);
    }

    else
    {
      *(a1 + v32) = *(a2 + v32);
    }

    swift_storeEnumTagMultiPayload();
  }

  v34 = a3[9];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  if (a1 != a2)
  {
    v38 = a3[10];
    sub_1000084C0(a1 + v38, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = sub_1000C2338();
      (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
    }

    else
    {
      *(a1 + v38) = *(a2 + v38);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100046A38(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[5];
  v15 = sub_1000C0EF8();
  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  v16 = a3[6];
  v17 = sub_1000C0AF8();
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  v18 = a3[7];
  v19 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000C1778();
    (*(*(v20 - 8) + 32))(&a1[v18], &a2[v18], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v18], &a2[v18], *(*(v19 - 8) + 64));
  }

  v21 = a3[8];
  v22 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1000C2338();
    (*(*(v23 - 8) + 32))(&a1[v21], &a2[v21], v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
  }

  v24 = a3[9];
  v25 = a3[10];
  v26 = &a1[v24];
  v27 = &a2[v24];
  *v26 = *v27;
  v26[8] = v27[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_1000C2338();
    (*(*(v28 - 8) + 32))(&a1[v25], &a2[v25], v28);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v25], &a2[v25], *(*(v22 - 8) + 64));
  }

  return a1;
}

char *sub_100046E38(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&a1[v9], 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(&a1[v9], v10);
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v9], &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 40))(&a1[v9], &a2[v9], v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  v18 = v8[8];
  v19 = *&a1[v18];
  *&a1[v18] = *&a2[v18];

  *&a1[v8[9]] = *&a2[v8[9]];
  a1[v8[10]] = a2[v8[10]];
  a1[v8[11]] = a2[v8[11]];
  v20 = a3[5];
  v21 = sub_1000C0EF8();
  (*(*(v21 - 8) + 40))(&a1[v20], &a2[v20], v21);
  v22 = a3[6];
  v23 = sub_1000C0AF8();
  (*(*(v23 - 8) + 40))(&a1[v22], &a2[v22], v23);
  if (a1 != a2)
  {
    v24 = a3[7];
    sub_1000084C0(&a1[v24], &qword_1000EDDB8, &qword_1000C8030);
    v25 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = sub_1000C1778();
      (*(*(v26 - 8) + 32))(&a1[v24], &a2[v24], v26);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v24], &a2[v24], *(*(v25 - 8) + 64));
    }

    v27 = a3[8];
    sub_1000084C0(&a1[v27], &qword_1000EDDC0, &qword_1000C5B60);
    v28 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = sub_1000C2338();
      (*(*(v29 - 8) + 32))(&a1[v27], &a2[v27], v29);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v27], &a2[v27], *(*(v28 - 8) + 64));
    }
  }

  v30 = a3[9];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  *v31 = v33;
  v31[8] = v32;

  if (a1 != a2)
  {
    v34 = a3[10];
    sub_1000084C0(&a1[v34], &qword_1000EDDC0, &qword_1000C5B60);
    v35 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = sub_1000C2338();
      (*(*(v36 - 8) + 32))(&a1[v34], &a2[v34], v36);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v34], &a2[v34], *(*(v35 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100047348(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C0EF8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1000C0AF8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v20 = *(*(IsVibrantText - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, IsVibrantText);
  }
}

uint64_t sub_1000475DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000C0EF8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000C0AF8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v20 = *(*(IsVibrantText - 8) + 56);
    v21 = a1 + a4[10];

    return v20(v21, a2, a2, IsVibrantText);
  }

  return result;
}

void sub_100047860(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    sub_1000C0EF8();
    if (v2 <= 0x3F)
    {
      sub_1000C0AF8();
      if (v3 <= 0x3F)
      {
        sub_10005435C(319, &qword_1000EDE40, &type metadata accessor for RedactionReasons);
        if (v4 <= 0x3F)
        {
          sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
          if (v5 <= 0x3F)
          {
            swift_initStructMetadata();
          }
        }
      }
    }
  }
}

uint64_t *sub_100047A20(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*(sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v6 = *a2;
    *a1 = *a2;
    a1 = (v6 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1000C2338();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100047B30(uint64_t *a1)
{
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1000C2338();
    v3 = *(*(v2 - 8) + 8);

    return v3(a1, v2);
  }

  else
  {
  }
}

uint64_t *sub_100047BDC(uint64_t *a1, uint64_t *a2)
{
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1000C2338();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_100047CA0(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_1000084C0(a1, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_1000C2338();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100047D84(void *a1, const void *a2)
{
  v4 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }
}

void *sub_100047E68(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000084C0(a1, &qword_1000EDDC0, &qword_1000C5B60);
  v4 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_100047F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100048088(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_100048290()
{
  sub_100005334(&qword_1000EDD90, &unk_1000C5B08);
  sub_100005334(&qword_1000EDD88, &qword_1000C5B00);
  sub_100005334(&qword_1000EDD80, &qword_1000C5AF8);
  sub_100008478(&qword_1000EDDA8, &qword_1000EDD80, &qword_1000C5AF8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000483E0()
{
  result = qword_1000EDFE8;
  if (!qword_1000EDFE8)
  {
    sub_100005334(&qword_1000EDFC8, &qword_1000C5D20);
    sub_10004846C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFE8);
  }

  return result;
}

unint64_t sub_10004846C()
{
  result = qword_1000EDFF0;
  if (!qword_1000EDFF0)
  {
    sub_100005334(&qword_1000EDFF8, &qword_1000C5D38);
    sub_100005334(&qword_1000EDFC0, &qword_1000C5D18);
    sub_100008478(&qword_1000EDFE0, &qword_1000EDFC0, &qword_1000C5D18, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFF0);
  }

  return result;
}

unint64_t sub_1000485EC()
{
  result = qword_1000EE048;
  if (!qword_1000EE048)
  {
    sub_100005334(&qword_1000EE040, &qword_1000C5DB0);
    type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(255);
    sub_100005334(&qword_1000EE010, &qword_1000C5D80);
    sub_100048784(&qword_1000EE050, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView, &unk_1000C61D8);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EE060, &qword_1000EE068, &qword_1000C5DB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE048);
  }

  return result;
}

uint64_t sub_100048784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100048828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1000489A0@<X0>(void *a1@<X8>)
{
  sub_100048A0C();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_1000489F4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_100048A00(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100048A0C()
{
  result = qword_1000EE098;
  if (!qword_1000EE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE098);
  }

  return result;
}

unint64_t sub_100048A60()
{
  result = qword_1000EE0A0;
  if (!qword_1000EE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0A0);
  }

  return result;
}

unint64_t sub_100048AB4()
{
  result = qword_1000EE0A8;
  if (!qword_1000EE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0A8);
  }

  return result;
}

unint64_t sub_100048B08()
{
  result = qword_1000EE0B8;
  if (!qword_1000EE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0B8);
  }

  return result;
}

unint64_t sub_100048BB0()
{
  result = qword_1000EE0D0;
  if (!qword_1000EE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0D0);
  }

  return result;
}

char *sub_100048C54(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v41 = v9[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v41, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v41], a2 + v41, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v41], a2 + v41, v10);
      (*(v11 + 56))(&v7[v41], 0, 1, v10);
    }

    v16 = v9[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = v9[8];
    v19 = *(a2 + v18);
    *&v7[v18] = v19;
    *&v7[v9[9]] = *(a2 + v9[9]);
    v7[v9[10]] = *(a2 + v9[10]);
    v7[v9[11]] = *(a2 + v9[11]);
    v20 = a3[6];
    *&v7[a3[5]] = *(a2 + a3[5]);
    v21 = &v7[v20];
    v22 = a2 + v20;
    *v21 = *v22;
    v23 = a3[7];
    v24 = a3[8];
    v25 = *(a2 + v23);
    v21[8] = v22[8];
    v7[v23] = v25;
    v26 = &v7[v24];
    *v26 = *(a2 + v24);
    v26[16] = *(a2 + v24 + 16);
    v27 = a3[9];
    v28 = a3[10];
    v29 = &v7[v27];
    v30 = a2 + v27;
    v31 = *v30;
    LOBYTE(v30) = v30[8];
    *v29 = v31;
    v29[8] = v30;
    v32 = &v7[v28];
    v33 = a2 + v28;
    v34 = *v33;
    LOBYTE(v33) = v33[8];
    *v32 = v34;
    v32[8] = v33;
    v35 = a3[11];
    v36 = &v7[v35];
    v37 = a2 + v35;
    v38 = *v37;
    LOBYTE(v37) = v37[8];
    *v36 = v38;
    v36[8] = v37;
    v39 = v19;
  }

  return v7;
}

uint64_t sub_100048F0C(id *a1, int *a2)
{
  v3 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v4 = v3[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = v3[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
}

char *sub_100049048(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = a2 + v19;
  *v20 = *v21;
  v22 = a3[7];
  v23 = a3[8];
  v24 = *(a2 + v22);
  v20[8] = *(v21 + 8);
  a1[v22] = v24;
  v25 = &a1[v23];
  *v25 = *(a2 + v23);
  v25[16] = *(a2 + v23 + 16);
  v26 = a3[9];
  v27 = a3[10];
  v28 = &a1[v26];
  v29 = (a2 + v26);
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  *v28 = v30;
  v28[8] = v29;
  v31 = &a1[v27];
  v32 = (a2 + v27);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  v31[8] = v32;
  v34 = a3[11];
  v35 = &a1[v34];
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  v35[8] = v36;
  v38 = v18;

  return a1;
}

uint64_t sub_1000492B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *v27 = v29;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  *(v31 + 16) = *(v32 + 16);
  *v31 = v33;
  v34 = a3[9];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  v38 = a3[10];
  v39 = a1 + v38;
  v40 = (a2 + v38);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  *v39 = v41;
  *(v39 + 8) = v40;

  v42 = a3[11];
  v43 = a1 + v42;
  v44 = (a2 + v42);
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  *v43 = v45;
  *(v43 + 8) = v44;

  return a1;
}

char *sub_1000495B4(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  v18[16] = v19[16];
  v20 = a3[9];
  v21 = a3[10];
  v22 = &a1[v20];
  v23 = &a2[v20];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = &a1[v21];
  v25 = &a2[v21];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a3[11];
  v27 = &a1[v26];
  v28 = &a2[v26];
  *v27 = *v28;
  v27[8] = v28[8];
  return a1;
}

uint64_t sub_1000497E8(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = *&a2[a3[5]];
  v21 = a1 + v20;
  v22 = &a2[v20];
  *v21 = *v22;
  *(v21 + 8) = v22[8];
  v23 = a3[8];
  *(a1 + a3[7]) = a2[a3[7]];
  v24 = a1 + v23;
  v25 = &a2[v23];
  *v24 = *v25;
  *(v24 + 16) = v25[16];
  v26 = a3[9];
  v27 = a1 + v26;
  v28 = &a2[v26];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  *v27 = v29;
  *(v27 + 8) = v28;

  v30 = a3[10];
  v31 = a1 + v30;
  v32 = &a2[v30];
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  *v31 = v33;
  *(v31 + 8) = v32;

  v34 = a3[11];
  v35 = a1 + v34;
  v36 = &a2[v34];
  v37 = *v36;
  LOBYTE(v36) = v36[8];
  *v35 = v37;
  *(v35 + 8) = v36;

  return a1;
}

uint64_t sub_100049AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100049BB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100049C68(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1)
{
  sub_100048A00(*(a1 + 16), *(a1 + 24));
}

uint64_t initializeWithCopy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1000489F4(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1000489F4(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_100048A00(v6, v7);
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  return a1;
}

__n128 initializeWithTake for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_100048A00(v6, v7);
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.DottedDividerHorizontal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

char *sub_100049F98(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = *(a3 + 20);
    v21 = sub_1000C0EF8();
    v22 = *(*(v21 - 8) + 16);
    v23 = v19;
    v22(&v6[v20], a2 + v20, v21);
    v24 = *(a3 + 24);
    v25 = sub_1000C0AF8();
    (*(*(v25 - 8) + 16))(&v6[v24], a2 + v24, v25);
  }

  return v6;
}

uint64_t sub_10004A228(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a2 + 20);
  v11 = sub_1000C0EF8();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = *(a2 + 24);
  v13 = sub_1000C0AF8();
  v14 = *(*(v13 - 8) + 8);

  return v14(a1 + v12, v13);
}

char *sub_10004A3B8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = *(a3 + 20);
  v20 = sub_1000C0EF8();
  v21 = *(*(v20 - 8) + 16);
  v22 = v18;
  v21(&a1[v19], a2 + v19, v20);
  v23 = *(a3 + 24);
  v24 = sub_1000C0AF8();
  (*(*(v24 - 8) + 16))(&a1[v23], a2 + v23, v24);
  return a1;
}

uint64_t sub_10004A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  v26 = *(a3 + 20);
  v27 = sub_1000C0EF8();
  (*(*(v27 - 8) + 24))(a1 + v26, a2 + v26, v27);
  v28 = *(a3 + 24);
  v29 = sub_1000C0AF8();
  (*(*(v29 - 8) + 24))(a1 + v28, a2 + v28, v29);
  return a1;
}

char *sub_10004A8A4(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = *(a3 + 20);
  v15 = sub_1000C0EF8();
  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  v16 = *(a3 + 24);
  v17 = sub_1000C0AF8();
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  return a1;
}

uint64_t sub_10004AAC0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = *(a3 + 20);
  v21 = sub_1000C0EF8();
  (*(*(v21 - 8) + 40))(a1 + v20, &a2[v20], v21);
  v22 = *(a3 + 24);
  v23 = sub_1000C0AF8();
  (*(*(v23 - 8) + 40))(a1 + v22, &a2[v22], v23);
  return a1;
}

uint64_t sub_10004AD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C0EF8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000C0AF8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10004AEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000C0EF8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000C0AF8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10004B014(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v2 <= 0x3F)
  {
    result = sub_1000C0EF8();
    if (v3 <= 0x3F)
    {
      result = sub_1000C0AF8();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10004B11C()
{
  result = qword_1000EE230;
  if (!qword_1000EE230)
  {
    sub_100005334(&qword_1000EE000, &qword_1000C5D70);
    sub_100005334(&qword_1000EDFC8, &qword_1000C5D20);
    sub_1000483E0();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EE238, &qword_1000EE008, &qword_1000C5D78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE230);
  }

  return result;
}

unint64_t sub_10004B214()
{
  result = qword_1000EE240;
  if (!qword_1000EE240)
  {
    sub_100005334(&qword_1000EE248, &qword_1000C6010);
    sub_10004B298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE240);
  }

  return result;
}

unint64_t sub_10004B298()
{
  result = qword_1000EE250;
  if (!qword_1000EE250)
  {
    sub_100005334(&qword_1000EE258, qword_1000C6018);
    _s10WidgetViewVMa_0(255);
    sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0, &unk_1000CB76C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE250);
  }

  return result;
}

uint64_t sub_10004B3DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C1858();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004B434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C18A8();
  *a1 = result;
  return result;
}

unint64_t sub_10004B48C()
{
  result = qword_1000EE2B0;
  if (!qword_1000EE2B0)
  {
    sub_100005334(&qword_1000EE2A8, &qword_1000C62D0);
    sub_100008478(&qword_1000EE2B8, &qword_1000EE2C0, &qword_1000C62D8, &protocol conformance descriptor for HStack<A>);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2B0);
  }

  return result;
}

uint64_t sub_10004B570@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C1908();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10004B5D4()
{
  result = qword_1000EE2C8;
  if (!qword_1000EE2C8)
  {
    sub_100005334(&qword_1000EE298, &qword_1000C6290);
    sub_100005334(&qword_1000EE290, &qword_1000C6288);
    sub_100005334(&qword_1000EE2A8, &qword_1000C62D0);
    sub_10004B48C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000ED640, &qword_1000ED648, &qword_1000C5330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2C8);
  }

  return result;
}

uint64_t sub_10004B70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C1838();
  *a1 = result;
  return result;
}

unint64_t sub_10004B764()
{
  result = qword_1000EE2E0;
  if (!qword_1000EE2E0)
  {
    sub_100005334(&qword_1000EE2D8, &qword_1000C6358);
    sub_100008478(&qword_1000EE2E8, &qword_1000EE2F0, &qword_1000C6360, &protocol conformance descriptor for HStack<A>);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2E0);
  }

  return result;
}

uint64_t sub_10004B894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004B8AC()
{
  result = qword_1000EE350;
  if (!qword_1000EE350)
  {
    sub_100005334(&qword_1000EE348, &qword_1000C63B8);
    sub_100005334(&qword_1000EE338, &qword_1000C63A8);
    sub_100005334(&qword_1000EE330, &qword_1000C63A0);
    type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(255);
    sub_10004BA38();
    sub_100048784(&qword_1000EE368, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle, &unk_1000C65E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE350);
  }

  return result;
}

unint64_t sub_10004BA38()
{
  result = qword_1000EE358;
  if (!qword_1000EE358)
  {
    sub_100005334(&qword_1000EE330, &qword_1000C63A0);
    sub_10004BAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE358);
  }

  return result;
}

unint64_t sub_10004BAC4()
{
  result = qword_1000EE360;
  if (!qword_1000EE360)
  {
    sub_100005334(&qword_1000EE328, &qword_1000C6398);
    sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE360);
  }

  return result;
}

unint64_t sub_10004BBD8()
{
  result = qword_1000EE390;
  if (!qword_1000EE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE390);
  }

  return result;
}

_OWORD *sub_10004BC2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10004BC3C()
{
  result = qword_1000EE3A0;
  if (!qword_1000EE3A0)
  {
    sub_100005334(&qword_1000EE3A8, &qword_1000C6448);
    sub_10004BCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3A0);
  }

  return result;
}

unint64_t sub_10004BCC0()
{
  result = qword_1000EE3B0;
  if (!qword_1000EE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3B0);
  }

  return result;
}

uint64_t sub_10004BD14()
{
  sub_100048A00(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t destroy for TTRAnyListWidget.ListBadge(id *a1)
{
}

uint64_t initializeWithCopy for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  LOBYTE(v4) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  return a1;
}

uint64_t assignWithTake for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.ListBadge(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.ListBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_10004BFE4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v46 = v9[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v46, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v46], a2 + v46, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v46], a2 + v46, v10);
      (*(v11 + 56))(&v7[v46], 0, 1, v10);
    }

    v16 = v9[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = v9[8];
    v19 = *(a2 + v18);
    *&v7[v18] = v19;
    *&v7[v9[9]] = *(a2 + v9[9]);
    v7[v9[10]] = *(a2 + v9[10]);
    v7[v9[11]] = *(a2 + v9[11]);
    v20 = a3[6];
    *&v7[a3[5]] = *(a2 + a3[5]);
    v21 = &v7[v20];
    v22 = a2 + v20;
    *v21 = *v22;
    v21[8] = v22[8];
    v23 = a3[8];
    v7[a3[7]] = *(a2 + a3[7]);
    v24 = &v7[v23];
    v25 = a2 + v23;
    *v24 = *v25;
    v24[16] = v25[16];
    v26 = a3[9];
    v27 = a3[10];
    v28 = &v7[v26];
    v29 = a2 + v26;
    v30 = *v29;
    LOBYTE(v29) = v29[8];
    *v28 = v30;
    v28[8] = v29;
    v31 = &v7[v27];
    v32 = a2 + v27;
    v33 = *v32;
    LOBYTE(v32) = v32[8];
    *v31 = v33;
    v31[8] = v32;
    v34 = a3[11];
    v35 = a3[12];
    v36 = &v7[v34];
    v37 = a2 + v34;
    v38 = *v37;
    LOBYTE(v37) = v37[8];
    *v36 = v38;
    v36[8] = v37;
    v39 = &v7[v35];
    v40 = a2 + v35;
    v41 = *v40;
    LOBYTE(v40) = v40[8];
    *v39 = v41;
    v39[8] = v40;
    v42 = a3[13];
    v43 = v19;

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = sub_1000C2338();
      (*(*(v44 - 8) + 16))(&v7[v42], a2 + v42, v44);
    }

    else
    {
      *&v7[v42] = *(a2 + v42);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v7;
}

uint64_t sub_10004C35C(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = a2[13];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000C2338();
    v12 = *(*(v11 - 8) + 8);

    return v12(a1 + v10, v11);
  }

  else
  {
  }
}

char *sub_10004C530(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = a2 + v19;
  *v20 = *v21;
  v20[8] = *(v21 + 8);
  v22 = a3[8];
  a1[a3[7]] = *(a2 + a3[7]);
  v23 = &a1[v22];
  v24 = a2 + v22;
  *v23 = *v24;
  v23[16] = *(v24 + 16);
  v25 = a3[9];
  v26 = a3[10];
  v27 = &a1[v25];
  v28 = (a2 + v25);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  v27[8] = v28;
  v30 = &a1[v26];
  v31 = (a2 + v26);
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  *v30 = v32;
  v30[8] = v31;
  v33 = a3[11];
  v34 = a3[12];
  v35 = &a1[v33];
  v36 = (a2 + v33);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  v35[8] = v36;
  v38 = &a1[v34];
  v39 = (a2 + v34);
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  *v38 = v40;
  v38[8] = v39;
  v41 = a3[13];
  v42 = v18;

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_1000C2338();
    (*(*(v43 - 8) + 16))(&a1[v41], a2 + v41, v43);
  }

  else
  {
    *&a1[v41] = *(a2 + v41);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10004C84C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 24))(a1 + v13, a2 + v13, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *v27 = v29;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  *(v31 + 16) = *(v32 + 16);
  *v31 = v33;
  v34 = a3[9];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  v38 = a3[10];
  v39 = a1 + v38;
  v40 = (a2 + v38);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  *v39 = v41;
  *(v39 + 8) = v40;

  v42 = a3[11];
  v43 = a1 + v42;
  v44 = (a2 + v42);
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  *v43 = v45;
  *(v43 + 8) = v44;

  v46 = a3[12];
  v47 = a1 + v46;
  v48 = (a2 + v46);
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  *v47 = v49;
  *(v47 + 8) = v48;

  if (a1 != a2)
  {
    v50 = a3[13];
    sub_1000084C0(a1 + v50, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = sub_1000C2338();
      (*(*(v51 - 8) + 16))(a1 + v50, a2 + v50, v51);
    }

    else
    {
      *(a1 + v50) = *(a2 + v50);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_10004CC28(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  v18[16] = v19[16];
  v20 = a3[9];
  v21 = a3[10];
  v22 = &a1[v20];
  v23 = &a2[v20];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = &a1[v21];
  v25 = &a2[v21];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a3[11];
  v27 = a3[12];
  v28 = &a1[v26];
  v29 = &a2[v26];
  *v28 = *v29;
  v28[8] = v29[8];
  v30 = &a1[v27];
  v31 = &a2[v27];
  v32 = *v31;
  v30[8] = v31[8];
  *v30 = v32;
  v33 = a3[13];
  v34 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_1000C2338();
    (*(*(v35 - 8) + 32))(&a1[v33], &a2[v33], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v33], &a2[v33], *(*(v34 - 8) + 64));
  }

  return a1;
}

char *sub_10004CF14(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&a1[v9], 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(&a1[v9], v10);
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v9], &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 40))(&a1[v9], &a2[v9], v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  v18 = v8[8];
  v19 = *&a1[v18];
  *&a1[v18] = *&a2[v18];

  *&a1[v8[9]] = *&a2[v8[9]];
  a1[v8[10]] = a2[v8[10]];
  a1[v8[11]] = a2[v8[11]];
  v20 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *v21 = *v22;
  v21[8] = v22[8];
  v23 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v24 = &a1[v23];
  v25 = &a2[v23];
  *v24 = *v25;
  v24[16] = v25[16];
  v26 = a3[9];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  *v27 = v29;
  v27[8] = v28;

  v30 = a3[10];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  *v31 = v33;
  v31[8] = v32;

  v34 = a3[11];
  v35 = &a1[v34];
  v36 = &a2[v34];
  v37 = *v36;
  LOBYTE(v36) = v36[8];
  *v35 = v37;
  v35[8] = v36;

  v38 = a3[12];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v41 = *v40;
  LOBYTE(v40) = v40[8];
  *v39 = v41;
  v39[8] = v40;

  if (a1 != a2)
  {
    v42 = a3[13];
    sub_1000084C0(&a1[v42], &qword_1000EDDC0, &qword_1000C5B60);
    v43 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = sub_1000C2338();
      (*(*(v44 - 8) + 32))(&a1[v42], &a2[v42], v44);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v42], &a2[v42], *(*(v43 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10004D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v12 = *(*(IsVibrantText - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, IsVibrantText);
  }
}

uint64_t sub_10004D424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v12 = *(*(IsVibrantText - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, IsVibrantText);
  }

  return result;
}

void sub_10004D544(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_10004D664(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = (v24 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v6 = &a1[v5];
    v7 = &a2[v5];
    v8 = *&a2[v5 + 8];
    *v6 = *&a2[v5];
    *(v6 + 1) = v8;
    *(v6 + 1) = *&a2[v5 + 16];
    *(v6 + 4) = *&a2[v5 + 32];
    v9 = type metadata accessor for TTRNewWidgetViewModel(0);
    v10 = v9[7];
    v11 = sub_1000C0E58();
    v12 = *(*(v11 - 8) + 16);

    v12(&v6[v10], &v7[v10], v11);
    v13 = v9[8];
    v14 = &v6[v13];
    v15 = &v7[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    v17 = v9[9];
    v18 = &v6[v17];
    v19 = &v7[v17];
    v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v21 = *(v20 - 1);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v77 = v21;
      v26 = *v19;
      v27 = v19[1];
      *v18 = *v19;
      v18[1] = v27;
      v75 = v20[6];
      v28 = sub_1000C0818();
      v72 = *(v28 - 8);
      v73 = *(v72 + 48);
      v29 = v26;
      v30 = v27;
      if (v73(v19 + v75, 1, v28))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v18 + v75, v19 + v75, *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(v18 + v75, v19 + v75, v28);
        (*(v72 + 56))(v18 + v75, 0, 1, v28);
      }

      v32 = v20[7];
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(v18 + v32, v19 + v32, v33);
      v34 = v20[8];
      v35 = *(v19 + v34);
      *(v18 + v34) = v35;
      *(v18 + v20[9]) = *(v19 + v20[9]);
      *(v18 + v20[10]) = *(v19 + v20[10]);
      *(v18 + v20[11]) = *(v19 + v20[11]);
      v36 = *(v77 + 56);
      v37 = v35;
      v36(v18, 0, 1, v20);
    }

    v38 = v9[10];
    v78 = *&v7[v38];
    *&v6[v38] = v78;
    v39 = v9[11];
    v40 = &v6[v39];
    v41 = &v7[v39];
    v42 = *(v41 + 1);
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = v9[12];
    v76 = *&v7[v43];
    *&v6[v43] = v76;
    v44 = v9[13];
    v45 = &v6[v44];
    v46 = &v7[v44];
    v47 = *(v46 + 1);
    *v45 = *v46;
    *(v45 + 1) = v47;
    v48 = v9[14];
    v49 = &v6[v48];
    v50 = &v7[v48];
    v51 = *(v50 + 1);
    *v49 = *v50;
    *(v49 + 1) = v51;
    v6[v9[15]] = v7[v9[15]];
    v52 = v9[16];
    v53 = &v6[v52];
    v54 = &v7[v52];
    v55 = *(v54 + 1);
    *v53 = *v54;
    *(v53 + 1) = v55;
    *&v6[v9[17]] = *&v7[v9[17]];
    v56 = v9[18];
    v57 = sub_1000C0938();
    v74 = *(*(v57 - 8) + 16);
    v58 = v78;

    v59 = v76;

    v74(&v6[v56], &v7[v56], v57);
    *&v6[v9[19]] = *&v7[v9[19]];
    v6[v9[20]] = v7[v9[20]];
    v60 = a3[6];

    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = sub_1000C1778();
      v25 = a1;
      (*(*(v61 - 8) + 16))(&a1[v60], &a2[v60], v61);
    }

    else
    {
      v25 = a1;
      *&a1[v60] = *&a2[v60];
    }

    swift_storeEnumTagMultiPayload();
    v62 = a3[7];
    v63 = &v25[v62];
    v64 = &a2[v62];
    v65 = *v64;
    v66 = v64[8];
    sub_1000489F4(*v64, v66);
    *v63 = v65;
    v63[8] = v66;
    v67 = a3[8];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = sub_1000C2338();
      (*(*(v68 - 8) + 16))(&v25[v67], &a2[v67], v68);
    }

    else
    {
      *&v25[v67] = *&a2[v67];
    }

    swift_storeEnumTagMultiPayload();
    v69 = a3[9];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v70 = sub_1000C2338();
      (*(*(v70 - 8) + 16))(&v25[v69], &a2[v69], v70);
    }

    else
    {
      *&v25[v69] = *&a2[v69];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v25;
}

uint64_t sub_10004DCD0(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  v8 = (v4 + v5[9]);
  v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    v10 = v9[6];
    v11 = sub_1000C0818();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }

    v13 = v9[7];
    v14 = sub_1000C0938();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  v15 = v5[18];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);

  v17 = a2[6];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1000C1778();
    (*(*(v18 - 8) + 8))(a1 + v17, v18);
  }

  else
  {
  }

  sub_100048A00(*(a1 + a2[7]), *(a1 + a2[7] + 8));
  v19 = a2[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000C2338();
    (*(*(v20 - 8) + 8))(a1 + v19, v20);
  }

  else
  {
  }

  v21 = a2[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1000C2338();
    v23 = *(*(v22 - 8) + 8);

    return v23(a1 + v21, v22);
  }

  else
  {
  }
}

_BYTE *sub_10004E0CC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 1) = *&a2[v3 + 16];
  *(v4 + 4) = *&a2[v3 + 32];
  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  v10 = *(*(v9 - 8) + 16);

  v10(&v4[v8], &v5[v8], v9);
  v11 = v7[8];
  v12 = &v4[v11];
  v13 = &v5[v11];
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v7[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);

  if (v20(v17, 1, v18))
  {
    v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v19;
    v22 = *v17;
    v23 = v17[1];
    *v16 = *v17;
    v16[1] = v23;
    v72 = v18[6];
    v24 = sub_1000C0818();
    v69 = *(v24 - 8);
    v70 = *(v69 + 48);
    v25 = v22;
    v26 = v23;
    if (v70(v17 + v72, 1, v24))
    {
      v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v16 + v72, v17 + v72, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v69 + 16))(v16 + v72, v17 + v72, v24);
      (*(v69 + 56))(v16 + v72, 0, 1, v24);
    }

    v28 = v18[7];
    v29 = sub_1000C0938();
    (*(*(v29 - 8) + 16))(v16 + v28, v17 + v28, v29);
    v30 = v18[8];
    v31 = *(v17 + v30);
    *(v16 + v30) = v31;
    *(v16 + v18[9]) = *(v17 + v18[9]);
    *(v16 + v18[10]) = *(v17 + v18[10]);
    *(v16 + v18[11]) = *(v17 + v18[11]);
    v32 = *(v74 + 56);
    v33 = v31;
    v32(v16, 0, 1, v18);
  }

  v34 = v7[10];
  v75 = *&v5[v34];
  *&v4[v34] = v75;
  v35 = v7[11];
  v36 = &v4[v35];
  v37 = &v5[v35];
  v38 = v37[1];
  *v36 = *v37;
  v36[1] = v38;
  v39 = v7[12];
  v73 = *&v5[v39];
  *&v4[v39] = v73;
  v40 = v7[13];
  v41 = &v4[v40];
  v42 = &v5[v40];
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = v7[14];
  v45 = &v4[v44];
  v46 = &v5[v44];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v4[v7[15]] = v5[v7[15]];
  v48 = v7[16];
  v49 = &v4[v48];
  v50 = &v5[v48];
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *&v4[v7[17]] = *&v5[v7[17]];
  v52 = v7[18];
  v53 = sub_1000C0938();
  v71 = *(*(v53 - 8) + 16);
  v54 = v75;

  v55 = v73;

  v71(&v4[v52], &v5[v52], v53);
  *&v4[v7[19]] = *&v5[v7[19]];
  v4[v7[20]] = v5[v7[20]];
  v56 = a3[6];

  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = sub_1000C1778();
    v58 = a1;
    (*(*(v57 - 8) + 16))(&a1[v56], &a2[v56], v57);
  }

  else
  {
    v58 = a1;
    *&a1[v56] = *&a2[v56];
  }

  swift_storeEnumTagMultiPayload();
  v59 = a3[7];
  v60 = &v58[v59];
  v61 = &a2[v59];
  v62 = *v61;
  v63 = v61[8];
  sub_1000489F4(*v61, v63);
  *v60 = v62;
  v60[8] = v63;
  v64 = a3[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = sub_1000C2338();
    (*(*(v65 - 8) + 16))(&v58[v64], &a2[v64], v65);
  }

  else
  {
    *&v58[v64] = *&a2[v64];
  }

  swift_storeEnumTagMultiPayload();
  v66 = a3[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = sub_1000C2338();
    (*(*(v67 - 8) + 16))(&v58[v66], &a2[v66], v67);
  }

  else
  {
    *&v58[v66] = *&a2[v66];
  }

  swift_storeEnumTagMultiPayload();
  return v58;
}

_BYTE *sub_10004E6E0(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  *v4 = *&a2[v3];
  *(v4 + 1) = *&a2[v3 + 8];

  *(v4 + 2) = *(v5 + 2);
  *(v4 + 3) = *(v5 + 3);
  *(v4 + 4) = *(v5 + 4);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 24))(&v4[v7], &v5[v7], v8);
  v9 = v6[8];
  v10 = &v4[v9];
  v11 = &v5[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);

  v12 = v6[9];
  v13 = &v4[v12];
  v14 = &v5[v12];
  v15 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      sub_100048940(v13, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v27 = *v14;
    v28 = *v13;
    *v13 = *v14;
    v29 = v27;

    v30 = *(v13 + 1);
    v31 = *(v14 + 1);
    *(v13 + 1) = v31;
    v32 = v31;

    v33 = v15[6];
    v34 = sub_1000C0818();
    v90 = *(v34 - 8);
    v35 = *(v90 + 48);
    v92 = v35(&v13[v33], 1, v34);
    v36 = v35(&v14[v33], 1, v34);
    if (v92)
    {
      if (!v36)
      {
        (*(v90 + 16))(&v13[v33], &v14[v33], v34);
        (*(v90 + 56))(&v13[v33], 0, 1, v34);
        goto LABEL_18;
      }

      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v13[v33];
      v39 = &v14[v33];
    }

    else
    {
      if (!v36)
      {
        (*(v90 + 24))(&v13[v33], &v14[v33], v34);
        goto LABEL_18;
      }

      (*(v90 + 8))(&v13[v33], v34);
      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v13[v33];
      v39 = &v14[v33];
    }

    memcpy(v38, v39, v37);
LABEL_18:
    v26 = a1;
    v46 = v15[7];
    v47 = sub_1000C0938();
    (*(*(v47 - 8) + 24))(&v13[v46], &v14[v46], v47);
    v48 = v15[8];
    v49 = *&v13[v48];
    v50 = *&v14[v48];
    *&v13[v48] = v50;
    v51 = v50;

    *&v13[v15[9]] = *&v14[v15[9]];
    v13[v15[10]] = v14[v15[10]];
    v13[v15[11]] = v14[v15[11]];
    goto LABEL_19;
  }

  if (v19)
  {
LABEL_7:
    v25 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v13, v14, *(*(v25 - 8) + 64));
    v26 = a1;
    goto LABEL_19;
  }

  v20 = *v14;
  *v13 = *v14;
  v93 = *(v14 + 1);
  *(v13 + 1) = v93;
  v91 = v15[6];
  v21 = sub_1000C0818();
  v88 = *(v21 - 8);
  v89 = *(v88 + 48);
  v22 = v20;
  v23 = v93;
  if (v89(&v14[v91], 1, v21))
  {
    v24 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v13[v91], &v14[v91], *(*(v24 - 8) + 64));
  }

  else
  {
    (*(v88 + 16))(&v13[v91], &v14[v91], v21);
    (*(v88 + 56))(&v13[v91], 0, 1, v21);
  }

  v26 = a1;
  v40 = v15[7];
  v41 = sub_1000C0938();
  (*(*(v41 - 8) + 16))(&v13[v40], &v14[v40], v41);
  v42 = v15[8];
  v43 = *&v14[v42];
  *&v13[v42] = v43;
  *&v13[v15[9]] = *&v14[v15[9]];
  v13[v15[10]] = v14[v15[10]];
  v13[v15[11]] = v14[v15[11]];
  v44 = *(v16 + 56);
  v45 = v43;
  v44(v13, 0, 1, v15);
LABEL_19:
  v52 = v6[10];
  v53 = *&v5[v52];
  v54 = *&v4[v52];
  *&v4[v52] = v53;
  v55 = v53;

  v56 = v6[11];
  v57 = &v4[v56];
  v58 = &v5[v56];
  *v57 = *v58;
  *(v57 + 1) = *(v58 + 1);

  v59 = v6[12];
  v60 = *&v4[v59];
  v61 = *&v5[v59];
  *&v4[v59] = v61;
  v62 = v61;

  v63 = v6[13];
  v64 = &v4[v63];
  v65 = &v5[v63];
  *v64 = *v65;
  *(v64 + 1) = *(v65 + 1);

  v66 = v6[14];
  v67 = &v4[v66];
  v68 = &v5[v66];
  *v67 = *v68;
  *(v67 + 1) = *(v68 + 1);

  v4[v6[15]] = v5[v6[15]];
  v69 = v6[16];
  v70 = &v4[v69];
  v71 = &v5[v69];
  *v70 = *v71;
  *(v70 + 1) = *(v71 + 1);

  *&v4[v6[17]] = *&v5[v6[17]];

  v72 = v6[18];
  v73 = sub_1000C0938();
  (*(*(v73 - 8) + 24))(&v4[v72], &v5[v72], v73);
  *&v4[v6[19]] = *&v5[v6[19]];

  v4[v6[20]] = v5[v6[20]];
  if (v26 != a2)
  {
    v74 = a3[6];
    sub_1000084C0(&v26[v74], &qword_1000EDDB8, &qword_1000C8030);
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = sub_1000C1778();
      (*(*(v75 - 8) + 16))(&v26[v74], &a2[v74], v75);
    }

    else
    {
      *&v26[v74] = *&a2[v74];
    }

    swift_storeEnumTagMultiPayload();
  }

  v76 = a3[7];
  v77 = &v26[v76];
  v78 = &a2[v76];
  v79 = *v78;
  v80 = v78[8];
  sub_1000489F4(*v78, v80);
  v81 = *v77;
  v82 = v77[8];
  *v77 = v79;
  v77[8] = v80;
  sub_100048A00(v81, v82);
  if (v26 != a2)
  {
    v83 = a3[8];
    sub_1000084C0(&v26[v83], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = sub_1000C2338();
      (*(*(v84 - 8) + 16))(&v26[v83], &a2[v83], v84);
    }

    else
    {
      *&v26[v83] = *&a2[v83];
    }

    swift_storeEnumTagMultiPayload();
    v85 = a3[9];
    sub_1000084C0(&v26[v85], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v86 = sub_1000C2338();
      (*(*(v86 - 8) + 16))(&v26[v85], &a2[v85], v86);
    }

    else
    {
      *&v26[v85] = *&a2[v85];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v26;
}

_BYTE *sub_10004F060(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v5 = a1;
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  *v7 = *&a2[v6];
  *(v7 + 2) = *&a2[v6 + 16];
  *(v7 + 24) = *&a2[v6 + 24];
  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  *&v7[v9[8]] = *&v8[v9[8]];
  v12 = v9[9];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v16 = *(v15 - 1);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v39 = v5;
    v40 = v16;
    v41 = v3;
    v18 = v14[1];
    *v13 = *v14;
    v13[1] = v18;
    v19 = v15[6];
    v20 = sub_1000C0818();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14 + v19, 1, v20))
    {
      v22 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v13 + v19, v14 + v19, *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(v13 + v19, v14 + v19, v20);
      (*(v21 + 56))(v13 + v19, 0, 1, v20);
    }

    v23 = v15[7];
    v24 = sub_1000C0938();
    (*(*(v24 - 8) + 32))(v13 + v23, v14 + v23, v24);
    *(v13 + v15[8]) = *(v14 + v15[8]);
    *(v13 + v15[9]) = *(v14 + v15[9]);
    *(v13 + v15[10]) = *(v14 + v15[10]);
    *(v13 + v15[11]) = *(v14 + v15[11]);
    (*(v40 + 56))(v13, 0, 1, v15);
    v3 = v41;
    v5 = v39;
  }

  *&v7[v9[10]] = *&v8[v9[10]];
  *&v7[v9[11]] = *&v8[v9[11]];
  *&v7[v9[12]] = *&v8[v9[12]];
  *&v7[v9[13]] = *&v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  v7[v9[15]] = v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  v25 = v9[18];
  v26 = sub_1000C0938();
  (*(*(v26 - 8) + 32))(&v7[v25], &v8[v25], v26);
  *&v7[v9[19]] = *&v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v27 = v3[6];
  v28 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1000C1778();
    (*(*(v29 - 8) + 32))(&v5[v27], &a2[v27], v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v27], &a2[v27], *(*(v28 - 8) + 64));
  }

  v30 = v3[7];
  v31 = v3[8];
  v32 = &v5[v30];
  v33 = &a2[v30];
  *v32 = *v33;
  v32[8] = v33[8];
  v34 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_1000C2338();
    (*(*(v35 - 8) + 32))(&v5[v31], &a2[v31], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v31], &a2[v31], *(*(v34 - 8) + 64));
  }

  v36 = v3[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_1000C2338();
    (*(*(v37 - 8) + 32))(&v5[v36], &a2[v36], v37);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v36], &a2[v36], *(*(v34 - 8) + 64));
  }

  return v5;
}

_BYTE *sub_10004F5FC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;

  *(v4 + 1) = *(v5 + 1);
  *(v4 + 4) = *(v5 + 4);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 40))(&v4[v8], &v5[v8], v9);
  v10 = v7[8];
  v11 = &v4[v10];
  v12 = &v5[v10];
  v14 = *v12;
  v13 = v12[1];
  *v11 = v14;
  v11[1] = v13;

  v15 = v7[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      sub_100048940(v16, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v29 = *v16;
    *v16 = *v17;

    v30 = *(v16 + 1);
    *(v16 + 1) = *(v17 + 1);

    v31 = v18[6];
    v32 = sub_1000C0818();
    v86 = *(v32 - 8);
    v33 = *(v86 + 48);
    v87 = v33(&v16[v31], 1, v32);
    v34 = v33(&v17[v31], 1, v32);
    if (v87)
    {
      if (!v34)
      {
        (*(v86 + 32))(&v16[v31], &v17[v31], v32);
        (*(v86 + 56))(&v16[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v16[v31];
      v37 = &v17[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v86 + 40))(&v16[v31], &v17[v31], v32);
        goto LABEL_18;
      }

      (*(v86 + 8))(&v16[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v16[v31];
      v37 = &v17[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v40 = v18[7];
    v41 = sub_1000C0938();
    (*(*(v41 - 8) + 40))(&v16[v40], &v17[v40], v41);
    v42 = v18[8];
    v43 = *&v16[v42];
    *&v16[v42] = *&v17[v42];

    *&v16[v18[9]] = *&v17[v18[9]];
    v16[v18[10]] = v17[v18[10]];
    v16[v18[11]] = v17[v18[11]];
    goto LABEL_19;
  }

  if (v22)
  {
LABEL_7:
    v28 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v28 - 8) + 64));
    goto LABEL_19;
  }

  v23 = *(v17 + 1);
  *v16 = *v17;
  *(v16 + 1) = v23;
  v24 = v18[6];
  v25 = sub_1000C0818();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(&v17[v24], 1, v25))
  {
    v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v16[v24], &v17[v24], *(*(v27 - 8) + 64));
  }

  else
  {
    (*(v26 + 32))(&v16[v24], &v17[v24], v25);
    (*(v26 + 56))(&v16[v24], 0, 1, v25);
  }

  v38 = v18[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 32))(&v16[v38], &v17[v38], v39);
  *&v16[v18[8]] = *&v17[v18[8]];
  *&v16[v18[9]] = *&v17[v18[9]];
  v16[v18[10]] = v17[v18[10]];
  v16[v18[11]] = v17[v18[11]];
  (*(v19 + 56))(v16, 0, 1, v18);
LABEL_19:
  v44 = v7[10];
  v45 = *&v4[v44];
  *&v4[v44] = *&v5[v44];

  v46 = v7[11];
  v47 = &v4[v46];
  v48 = &v5[v46];
  v50 = *v48;
  v49 = v48[1];
  *v47 = v50;
  v47[1] = v49;

  v51 = v7[12];
  v52 = *&v4[v51];
  *&v4[v51] = *&v5[v51];

  v53 = v7[13];
  v54 = &v4[v53];
  v55 = &v5[v53];
  v57 = *v55;
  v56 = v55[1];
  *v54 = v57;
  v54[1] = v56;

  v58 = v7[14];
  v59 = &v4[v58];
  v60 = &v5[v58];
  v62 = *v60;
  v61 = v60[1];
  *v59 = v62;
  v59[1] = v61;

  v4[v7[15]] = v5[v7[15]];
  v63 = v7[16];
  v64 = &v4[v63];
  v65 = &v5[v63];
  v67 = *v65;
  v66 = v65[1];
  *v64 = v67;
  v64[1] = v66;

  *&v4[v7[17]] = *&v5[v7[17]];

  v68 = v7[18];
  v69 = sub_1000C0938();
  (*(*(v69 - 8) + 40))(&v4[v68], &v5[v68], v69);
  *&v4[v7[19]] = *&v5[v7[19]];

  v4[v7[20]] = v5[v7[20]];
  if (a1 != a2)
  {
    v70 = a3[6];
    sub_1000084C0(&a1[v70], &qword_1000EDDB8, &qword_1000C8030);
    v71 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = sub_1000C1778();
      (*(*(v72 - 8) + 32))(&a1[v70], &a2[v70], v72);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v70], &a2[v70], *(*(v71 - 8) + 64));
    }
  }

  v73 = a3[7];
  v74 = &a1[v73];
  v75 = &a2[v73];
  v76 = *v75;
  LOBYTE(v75) = v75[8];
  v77 = *v74;
  v78 = v74[8];
  *v74 = v76;
  v74[8] = v75;
  sub_100048A00(v77, v78);
  if (a1 != a2)
  {
    v79 = a3[8];
    sub_1000084C0(&a1[v79], &qword_1000EDDC0, &qword_1000C5B60);
    v80 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = sub_1000C2338();
      (*(*(v81 - 8) + 32))(&a1[v79], &a2[v79], v81);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v79], &a2[v79], *(*(v80 - 8) + 64));
    }

    v82 = a3[9];
    sub_1000084C0(&a1[v82], &qword_1000EDDC0, &qword_1000C5B60);
    v83 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = sub_1000C2338();
      (*(*(v84 - 8) + 32))(&a1[v82], &a2[v82], v84);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v82], &a2[v82], *(*(v83 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10004FEF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 > 1)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v14 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v16 = *(*(IsVibrantText - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, IsVibrantText);
}

uint64_t sub_1000500D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
    return result;
  }

  v14 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v16 = *(*(IsVibrantText - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, IsVibrantText);
}

void sub_1000502C0(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &qword_1000EDE40, &type metadata accessor for RedactionReasons);
    if (v2 <= 0x3F)
    {
      sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

unint64_t sub_100050458()
{
  result = qword_1000EE528;
  if (!qword_1000EE528)
  {
    sub_100005334(&qword_1000EE530, &qword_1000C64E8);
    sub_10004B8AC();
    sub_10001C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE528);
  }

  return result;
}

unint64_t sub_1000504E8()
{
  result = qword_1000EE538;
  if (!qword_1000EE538)
  {
    sub_100005334(&qword_1000EE540, &qword_1000C64F0);
    sub_100050574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE538);
  }

  return result;
}

unint64_t sub_100050574()
{
  result = qword_1000EE548;
  if (!qword_1000EE548)
  {
    sub_100005334(&qword_1000EE550, &qword_1000C64F8);
    sub_100050600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE548);
  }

  return result;
}

unint64_t sub_100050600()
{
  result = qword_1000EE558;
  if (!qword_1000EE558)
  {
    sub_100005334(&qword_1000EE560, &qword_1000C6500);
    sub_100008478(&qword_1000EE568, &qword_1000EE570, qword_1000C6508, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE558);
  }

  return result;
}

unint64_t sub_100050788()
{
  result = qword_1000EE590;
  if (!qword_1000EE590)
  {
    sub_100005334(&qword_1000EE588, &qword_1000C6658);
    sub_100050814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE590);
  }

  return result;
}

unint64_t sub_100050814()
{
  result = qword_1000EE598;
  if (!qword_1000EE598)
  {
    sub_100005334(&qword_1000EE5A0, &qword_1000C6660);
    sub_100008478(&qword_1000EE5A8, &qword_1000EE5B0, &qword_1000C6668, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE598);
  }

  return result;
}

unint64_t sub_1000508DC()
{
  result = qword_1000EE610;
  if (!qword_1000EE610)
  {
    sub_100005334(&qword_1000EE5D8, &qword_1000C6690);
    sub_100008478(&qword_1000EE618, &qword_1000EE5E0, &qword_1000C6698, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE610);
  }

  return result;
}

unint64_t sub_1000509F0()
{
  result = qword_1000EE630;
  if (!qword_1000EE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE630);
  }

  return result;
}

unint64_t sub_100050A44()
{
  result = qword_1000EE660;
  if (!qword_1000EE660)
  {
    sub_100005334(&qword_1000EE638, &qword_1000C6708);
    sub_100050AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE660);
  }

  return result;
}

unint64_t sub_100050AC8()
{
  result = qword_1000EE668;
  if (!qword_1000EE668)
  {
    sub_100005334(&qword_1000EE670, &qword_1000C6730);
    sub_100050B84();
    sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge, &unk_1000C6B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE668);
  }

  return result;
}

unint64_t sub_100050B84()
{
  result = qword_1000EE678;
  if (!qword_1000EE678)
  {
    sub_100005334(&qword_1000EE680, &qword_1000C6738);
    sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall, &unk_1000C6BB8);
    sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium, &unk_1000C6B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE678);
  }

  return result;
}

unint64_t sub_100050CD0()
{
  result = qword_1000EE6A0;
  if (!qword_1000EE6A0)
  {
    sub_100005334(&qword_1000EE658, &qword_1000C6728);
    sub_100008478(&qword_1000EE6A8, &qword_1000EE6B0, &qword_1000C6740, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A0);
  }

  return result;
}

unint64_t sub_100050DDC()
{
  result = qword_1000EE6C0;
  if (!qword_1000EE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6C0);
  }

  return result;
}

void sub_100050E94(void *a1@<X8>)
{
  sub_1000C18F8();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

unint64_t sub_100050F34()
{
  result = qword_1000EE718;
  if (!qword_1000EE718)
  {
    sub_100005334(&qword_1000EE6E0, &qword_1000C6848);
    sub_100050FEC();
    sub_100008478(&qword_1000EE740, &qword_1000EE708, &qword_1000C6870, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE718);
  }

  return result;
}

unint64_t sub_100050FEC()
{
  result = qword_1000EE720;
  if (!qword_1000EE720)
  {
    sub_100005334(&qword_1000EE728, &qword_1000C6878);
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core, &unk_1000C6A90);
    sub_100008478(&qword_1000EE730, &qword_1000EE738, &qword_1000C6880, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE720);
  }

  return result;
}

uint64_t sub_1000510F4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v7 = a2[3];
    v8 = *(a2 + 32);
    j__swift_retain(v7);
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    v9 = a3[9];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 16))(v4 + v9, a2 + v9, v10);
    }

    else
    {
      *(v4 + v9) = *(a2 + v9);
    }

    swift_storeEnumTagMultiPayload();
    v12 = a3[10];
    v13 = a3[11];
    v14 = v4 + v12;
    v15 = a2 + v12;
    v16 = *v15;
    LOBYTE(v15) = v15[8];
    *v14 = v16;
    *(v14 + 8) = v15;

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_1000C2338();
      (*(*(v17 - 8) + 16))(v4 + v13, a2 + v13, v17);
    }

    else
    {
      *(v4 + v13) = *(a2 + v13);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

uint64_t sub_1000512D4(uint64_t a1, int *a2)
{
  j__swift_release(*(a1 + 24));
  v4 = a2[9];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  else
  {
  }

  v6 = a2[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v6, v7);
  }

  else
  {
  }
}

uint64_t sub_100051410(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  j__swift_retain(v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = a3[9];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000C2338();
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  }

  else
  {
    *(a1 + v8) = *(a2 + v8);
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[10];
  v11 = a3[11];
  v12 = a1 + v10;
  v13 = (a2 + v10);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000C2338();
    (*(*(v15 - 8) + 16))(a1 + v11, a2 + v11, v15);
  }

  else
  {
    *(a1 + v11) = *(a2 + v11);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10005159C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  j__swift_retain(v6);
  v8 = *(a1 + 24);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  j__swift_release(v8);
  if (a1 != a2)
  {
    v9 = a3[9];
    sub_1000084C0(a1 + v9, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    }

    else
    {
      *(a1 + v9) = *(a2 + v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  v11 = a3[10];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;

  if (a1 != a2)
  {
    v15 = a3[11];
    sub_1000084C0(a1 + v15, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = sub_1000C2338();
      (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
    }

    else
    {
      *(a1 + v15) = *(a2 + v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1000517AC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[9];
  v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C2338();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  v9 = a3[10];
  v10 = a3[11];
  v11 = a1 + v9;
  v12 = a2 + v9;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000C2338();
    (*(*(v13 - 8) + 32))(a1 + v10, a2 + v10, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(*(v7 - 8) + 64));
  }

  return a1;
}

uint64_t sub_10005194C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 32);
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  j__swift_release(v7);
  if (a1 != a2)
  {
    v8 = a3[9];
    sub_1000084C0(a1 + v8, &qword_1000EDDC0, &qword_1000C5B60);
    v9 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 32))(a1 + v8, a2 + v8, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v8), (a2 + v8), *(*(v9 - 8) + 64));
    }
  }

  v11 = a3[10];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;

  if (a1 != a2)
  {
    v15 = a3[11];
    sub_1000084C0(a1 + v15, &qword_1000EDDC0, &qword_1000C5B60);
    v16 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_1000C2338();
      (*(*(v17 - 8) + 32))(a1 + v15, a2 + v15, v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v15), (a2 + v15), *(*(v16 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100051B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 36)];

      return v13(v14, a2, v12);
    }

    else
    {
      IsVibrantText = type metadata accessor for IsVibrantText(0);
      v16 = *(*(IsVibrantText - 8) + 48);
      v17 = &a1[*(a3 + 44)];

      return v16(v17, a2, IsVibrantText);
    }
  }
}

_BYTE *sub_100051CB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 36)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      IsVibrantText = type metadata accessor for IsVibrantText(0);
      v14 = *(*(IsVibrantText - 8) + 56);
      v15 = &v5[*(a4 + 44)];

      return v14(v15, a2, a2, IsVibrantText);
    }
  }

  return result;
}

void sub_100051DE4(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_100051EE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = a1;
  v8 = *(*(a3 - 8) + 80);
  if ((v8 & 0x20000) != 0)
  {
    v25 = *a2;
    *v7 = *a2;
    v7 = (v25 + ((v8 + 16) & ~v8));
  }

  else
  {
    v9 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v9;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v10 = type metadata accessor for TTRNewWidgetViewModel(0);
    v11 = v10[7];
    v12 = sub_1000C0E58();
    v13 = *(*(v12 - 8) + 16);

    v13(&v7[v11], a2 + v11, v12);
    v14 = v10[8];
    v15 = &v7[v14];
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = v10[9];
    v19 = &v7[v18];
    v20 = (a2 + v18);
    v21 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v22 = *(v21 - 1);
    v23 = *(v22 + 48);

    if (v23(v20, 1, v21))
    {
      v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v19, v20, *(*(v24 - 8) + 64));
    }

    else
    {
      v69 = v22;
      v26 = *v20;
      v27 = v20[1];
      *v19 = *v20;
      v19[1] = v27;
      v67 = v21[6];
      v28 = sub_1000C0818();
      v64 = *(v28 - 8);
      v65 = *(v64 + 48);
      v29 = v26;
      v30 = v27;
      if (v65(v20 + v67, 1, v28))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v19 + v67, v20 + v67, *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v64 + 16))(v19 + v67, v20 + v67, v28);
        (*(v64 + 56))(v19 + v67, 0, 1, v28);
      }

      v32 = v21[7];
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(v19 + v32, v20 + v32, v33);
      v34 = v21[8];
      v35 = *(v20 + v34);
      *(v19 + v34) = v35;
      *(v19 + v21[9]) = *(v20 + v21[9]);
      *(v19 + v21[10]) = *(v20 + v21[10]);
      *(v19 + v21[11]) = *(v20 + v21[11]);
      v36 = *(v69 + 56);
      v37 = v35;
      v36(v19, 0, 1, v21);
    }

    v38 = v10[10];
    v70 = *(a2 + v38);
    *&v7[v38] = v70;
    v39 = v10[11];
    v40 = &v7[v39];
    v41 = (a2 + v39);
    v42 = v41[1];
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = v10[12];
    v68 = *(a2 + v43);
    *&v7[v43] = v68;
    v44 = v10[13];
    v45 = &v7[v44];
    v46 = (a2 + v44);
    v47 = v46[1];
    *v45 = *v46;
    *(v45 + 1) = v47;
    v48 = v10[14];
    v49 = &v7[v48];
    v50 = (a2 + v48);
    v51 = v50[1];
    *v49 = *v50;
    *(v49 + 1) = v51;
    v7[v10[15]] = *(a2 + v10[15]);
    v52 = v10[16];
    v53 = &v7[v52];
    v54 = (a2 + v52);
    v55 = v54[1];
    *v53 = *v54;
    *(v53 + 1) = v55;
    *&v7[v10[17]] = *(a2 + v10[17]);
    v56 = v10[18];
    v57 = sub_1000C0938();
    v66 = *(*(v57 - 8) + 16);
    v58 = v70;

    v59 = v68;

    v66(&v7[v56], a2 + v56, v57);
    *&v7[v10[19]] = *(a2 + v10[19]);
    v7[v10[20]] = *(a2 + v10[20]);
    v60 = *(a3 + 20);

    sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = a6(0);
      (*(*(v61 - 8) + 16))(&v7[v60], a2 + v60, v61);
    }

    else
    {
      *&v7[v60] = *(a2 + v60);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v7;
}

uint64_t sub_100052428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{

  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 8))(a1 + v11, v12);

  v13 = (a1 + v10[9]);
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v26 = a5;

    v15 = v14[6];
    v16 = sub_1000C0818();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }

    v18 = v14[7];
    v19 = sub_1000C0938();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);

    a5 = v26;
  }

  v20 = v10[18];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 8))(a1 + v20, v21);

  v22 = *(a2 + 20);
  sub_100004D04(a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = a5(0);
    v24 = *(*(v23 - 8) + 8);

    return v24(a1 + v22, v23);
  }

  else
  {
  }
}

uint64_t sub_10005277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v8 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  v12 = *(*(v11 - 8) + 16);

  v12(a1 + v10, a2 + v10, v11);
  v13 = v9[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = v9[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);

  if (v22(v19, 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v23 - 8) + 64));
  }

  else
  {
    v67 = v21;
    v24 = *v19;
    v25 = v19[1];
    *v18 = *v19;
    v18[1] = v25;
    v65 = v20[6];
    v26 = sub_1000C0818();
    v62 = *(v26 - 8);
    v63 = *(v62 + 48);
    v27 = v24;
    v28 = v25;
    if (v63(v19 + v65, 1, v26))
    {
      v29 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v18 + v65, v19 + v65, *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v62 + 16))(v18 + v65, v19 + v65, v26);
      (*(v62 + 56))(v18 + v65, 0, 1, v26);
    }

    v30 = v20[7];
    v31 = sub_1000C0938();
    (*(*(v31 - 8) + 16))(v18 + v30, v19 + v30, v31);
    v32 = v20[8];
    v33 = *(v19 + v32);
    *(v18 + v32) = v33;
    *(v18 + v20[9]) = *(v19 + v20[9]);
    *(v18 + v20[10]) = *(v19 + v20[10]);
    *(v18 + v20[11]) = *(v19 + v20[11]);
    v34 = *(v67 + 56);
    v35 = v33;
    v34(v18, 0, 1, v20);
  }

  v36 = v9[10];
  v68 = *(a2 + v36);
  *(a1 + v36) = v68;
  v37 = v9[11];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = v9[12];
  v66 = *(a2 + v41);
  *(a1 + v41) = v66;
  v42 = v9[13];
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v45 = v44[1];
  *v43 = *v44;
  v43[1] = v45;
  v46 = v9[14];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  *(a1 + v9[15]) = *(a2 + v9[15]);
  v50 = v9[16];
  v51 = (a1 + v50);
  v52 = (a2 + v50);
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  *(a1 + v9[17]) = *(a2 + v9[17]);
  v54 = v9[18];
  v55 = sub_1000C0938();
  v64 = *(*(v55 - 8) + 16);
  v56 = v68;

  v57 = v66;

  v64(a1 + v54, a2 + v54, v55);
  *(a1 + v9[19]) = *(a2 + v9[19]);
  *(a1 + v9[20]) = *(a2 + v9[20]);
  v58 = *(a3 + 20);

  sub_100004D04(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = a6(0);
    (*(*(v59 - 8) + 16))(a1 + v58, a2 + v58, v59);
  }

  else
  {
    *(a1 + v58) = *(a2 + v58);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100052C70(char *a1, char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 24))(&a1[v9], &a2[v9], v10);
  v11 = v8[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  v14 = v8[9];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  LODWORD(v9) = v19(v15, 1, v17);
  v20 = v19(v16, 1, v17);
  if (!v9)
  {
    if (v20)
    {
      sub_100048940(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v27 = *v16;
    v28 = *v15;
    *v15 = *v16;
    v29 = v27;

    v30 = *(v15 + 1);
    v31 = *(v16 + 1);
    *(v15 + 1) = v31;
    v32 = v31;

    v33 = v17[6];
    v34 = sub_1000C0818();
    v78 = *(v34 - 8);
    v35 = *(v78 + 48);
    v81 = v35(&v15[v33], 1, v34);
    v36 = v35(&v16[v33], 1, v34);
    if (v81)
    {
      if (!v36)
      {
        (*(v78 + 16))(&v15[v33], &v16[v33], v34);
        (*(v78 + 56))(&v15[v33], 0, 1, v34);
        goto LABEL_18;
      }

      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v15[v33];
      v39 = &v16[v33];
    }

    else
    {
      if (!v36)
      {
        (*(v78 + 24))(&v15[v33], &v16[v33], v34);
        goto LABEL_18;
      }

      (*(v78 + 8))(&v15[v33], v34);
      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v15[v33];
      v39 = &v16[v33];
    }

    memcpy(v38, v39, v37);
LABEL_18:
    v46 = v17[7];
    v47 = sub_1000C0938();
    (*(*(v47 - 8) + 24))(&v15[v46], &v16[v46], v47);
    v48 = v17[8];
    v49 = *&v15[v48];
    v50 = *&v16[v48];
    *&v15[v48] = v50;
    v51 = v50;

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_7:
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  v21 = *v16;
  *v15 = *v16;
  v80 = *(v16 + 1);
  *(v15 + 1) = v80;
  v82 = v17[6];
  v22 = sub_1000C0818();
  v77 = *(v22 - 8);
  v79 = *(v77 + 48);
  v23 = v21;
  v24 = v80;
  if (v79(&v16[v82], 1, v22))
  {
    v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v82], &v16[v82], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v77 + 16))(&v15[v82], &v16[v82], v22);
    (*(v77 + 56))(&v15[v82], 0, 1, v22);
  }

  v40 = v17[7];
  v41 = sub_1000C0938();
  (*(*(v41 - 8) + 16))(&v15[v40], &v16[v40], v41);
  v42 = v17[8];
  v43 = *&v16[v42];
  *&v15[v42] = v43;
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  v44 = *(v18 + 56);
  v45 = v43;
  v44(v15, 0, 1, v17);
LABEL_19:
  v52 = v8[10];
  v53 = *&a2[v52];
  v54 = *&a1[v52];
  *&a1[v52] = v53;
  v55 = v53;

  v56 = v8[11];
  v57 = &a1[v56];
  v58 = &a2[v56];
  *v57 = *v58;
  *(v57 + 1) = *(v58 + 1);

  v59 = v8[12];
  v60 = *&a1[v59];
  v61 = *&a2[v59];
  *&a1[v59] = v61;
  v62 = v61;

  v63 = v8[13];
  v64 = &a1[v63];
  v65 = &a2[v63];
  *v64 = *v65;
  *(v64 + 1) = *(v65 + 1);

  v66 = v8[14];
  v67 = &a1[v66];
  v68 = &a2[v66];
  *v67 = *v68;
  *(v67 + 1) = *(v68 + 1);

  a1[v8[15]] = a2[v8[15]];
  v69 = v8[16];
  v70 = &a1[v69];
  v71 = &a2[v69];
  *v70 = *v71;
  *(v70 + 1) = *(v71 + 1);

  *&a1[v8[17]] = *&a2[v8[17]];

  v72 = v8[18];
  v73 = sub_1000C0938();
  (*(*(v73 - 8) + 24))(&a1[v72], &a2[v72], v73);
  *&a1[v8[19]] = *&a2[v8[19]];

  a1[v8[20]] = a2[v8[20]];
  if (a1 != a2)
  {
    v74 = *(a3 + 20);
    sub_1000084C0(&a1[v74], a4, a5);
    sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = a6(0);
      (*(*(v75 - 8) + 16))(&a1[v74], &a2[v74], v75);
    }

    else
    {
      *&a1[v74] = *&a2[v74];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100053470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  *(a1 + v10[8]) = *(a2 + v10[8]);
  v13 = v10[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v32 = a5;
    v33 = a6;
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    v20 = v16[6];
    v21 = sub_1000C0818();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v20, v15 + v20, *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 32))(v14 + v20, v15 + v20, v21);
      (*(v22 + 56))(v14 + v20, 0, 1, v21);
    }

    v24 = v16[7];
    v25 = sub_1000C0938();
    (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
    *(v14 + v16[8]) = *(v15 + v16[8]);
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    (*(v17 + 56))(v14, 0, 1, v16);
    a5 = v32;
    a6 = v33;
  }

  *(a1 + v10[10]) = *(a2 + v10[10]);
  *(a1 + v10[11]) = *(a2 + v10[11]);
  *(a1 + v10[12]) = *(a2 + v10[12]);
  *(a1 + v10[13]) = *(a2 + v10[13]);
  *(a1 + v10[14]) = *(a2 + v10[14]);
  *(a1 + v10[15]) = *(a2 + v10[15]);
  *(a1 + v10[16]) = *(a2 + v10[16]);
  *(a1 + v10[17]) = *(a2 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
  *(a1 + v10[19]) = *(a2 + v10[19]);
  *(a1 + v10[20]) = *(a2 + v10[20]);
  v28 = *(a3 + 20);
  v29 = sub_100004D04(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = a6(0);
    (*(*(v30 - 8) + 32))(a1 + v28, a2 + v28, v30);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v28), (a2 + v28), *(*(v29 - 8) + 64));
  }

  return a1;
}

uint64_t sub_1000538C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v8 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  v12 = v9[8];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v16 = *v14;
  v15 = v14[1];
  *v13 = v16;
  v13[1] = v15;

  v17 = v9[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  LODWORD(v10) = v22(v18, 1, v20);
  v23 = v22(v19, 1, v20);
  if (v10)
  {
    if (!v23)
    {
      v24 = *(v19 + 1);
      *v18 = *v19;
      *(v18 + 1) = v24;
      v25 = v20[6];
      v26 = sub_1000C0818();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v19[v25], 1, v26))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(&v18[v25], &v19[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v18[v25], &v19[v25], v26);
        (*(v27 + 56))(&v18[v25], 0, 1, v26);
      }

      v39 = v20[7];
      v40 = sub_1000C0938();
      (*(*(v40 - 8) + 32))(&v18[v39], &v19[v39], v40);
      *&v18[v20[8]] = *&v19[v20[8]];
      *&v18[v20[9]] = *&v19[v20[9]];
      v18[v20[10]] = v19[v20[10]];
      v18[v20[11]] = v19[v20[11]];
      (*(v21 + 56))(v18, 0, 1, v20);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v23)
  {
    sub_100048940(v18, type metadata accessor for TTRNewWidgetViewModel.Reminder);
LABEL_7:
    v29 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  v30 = *v18;
  *v18 = *v19;

  v31 = *(v18 + 1);
  *(v18 + 1) = *(v19 + 1);

  v32 = v20[6];
  v33 = sub_1000C0818();
  v75 = *(v33 - 8);
  v34 = *(v75 + 48);
  v76 = v34(&v18[v32], 1, v33);
  v35 = v34(&v19[v32], 1, v33);
  if (v76)
  {
    if (!v35)
    {
      (*(v75 + 32))(&v18[v32], &v19[v32], v33);
      (*(v75 + 56))(&v18[v32], 0, 1, v33);
      goto LABEL_18;
    }

    v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v37 = &v18[v32];
    v38 = &v19[v32];
  }

  else
  {
    if (!v35)
    {
      (*(v75 + 40))(&v18[v32], &v19[v32], v33);
      goto LABEL_18;
    }

    (*(v75 + 8))(&v18[v32], v33);
    v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v37 = &v18[v32];
    v38 = &v19[v32];
  }

  memcpy(v37, v38, v36);
LABEL_18:
  v41 = v20[7];
  v42 = sub_1000C0938();
  (*(*(v42 - 8) + 40))(&v18[v41], &v19[v41], v42);
  v43 = v20[8];
  v44 = *&v18[v43];
  *&v18[v43] = *&v19[v43];

  *&v18[v20[9]] = *&v19[v20[9]];
  v18[v20[10]] = v19[v20[10]];
  v18[v20[11]] = v19[v20[11]];
LABEL_19:
  v45 = v9[10];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = v9[11];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v51 = *v49;
  v50 = v49[1];
  *v48 = v51;
  v48[1] = v50;

  v52 = v9[12];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);

  v54 = v9[13];
  v55 = (a1 + v54);
  v56 = (a2 + v54);
  v58 = *v56;
  v57 = v56[1];
  *v55 = v58;
  v55[1] = v57;

  v59 = v9[14];
  v60 = (a1 + v59);
  v61 = (a2 + v59);
  v63 = *v61;
  v62 = v61[1];
  *v60 = v63;
  v60[1] = v62;

  *(a1 + v9[15]) = *(a2 + v9[15]);
  v64 = v9[16];
  v65 = (a1 + v64);
  v66 = (a2 + v64);
  v68 = *v66;
  v67 = v66[1];
  *v65 = v68;
  v65[1] = v67;

  *(a1 + v9[17]) = *(a2 + v9[17]);

  v69 = v9[18];
  v70 = sub_1000C0938();
  (*(*(v70 - 8) + 40))(a1 + v69, a2 + v69, v70);
  *(a1 + v9[19]) = *(a2 + v9[19]);

  *(a1 + v9[20]) = *(a2 + v9[20]);
  if (a1 != a2)
  {
    v71 = *(a3 + 20);
    sub_1000084C0(a1 + v71, a4, a5);
    v72 = sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v73 = a6(0);
      (*(*(v73 - 8) + 32))(a1 + v71, a2 + v71, v73);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v71), (a2 + v71), *(*(v72 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100054018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_100004D04(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100054148(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_100004D04(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_10005427C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for TTRNewWidgetViewModel(319);
  if (v7 <= 0x3F)
  {
    sub_10005435C(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_10005435C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C15C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1000543B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v73 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v71 = v18[6];
      v25 = sub_1000C0818();
      v68 = *(v25 - 8);
      v69 = *(v68 + 48);
      v26 = v23;
      v27 = v24;
      if (v69(v17 + v71, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v71, v17 + v71, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v68 + 16))(v16 + v71, v17 + v71, v25);
        (*(v68 + 56))(v16 + v71, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v73 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v74 = *(a2 + v35);
    *&v4[v35] = v74;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v72 = *(a2 + v40);
    *&v4[v40] = v72;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v70 = *(*(v54 - 8) + 16);
    v55 = v74;

    v56 = v72;

    v70(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = *(a3 + 20);

    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = sub_1000C16C8();
      (*(*(v58 - 8) + 16))(&v4[v57], a2 + v57, v58);
    }

    else
    {
      *&v4[v57] = *(a2 + v57);
    }

    swift_storeEnumTagMultiPayload();
    v59 = *(a3 + 24);
    v60 = &v4[v59];
    v61 = a2 + v59;
    v62 = *v61;
    v63 = *(v61 + 1);
    v64 = *(v61 + 2);
    v65 = *(v61 + 3);
    v66 = v61[32];
    sub_100054900(*v61, v63, v64, v65, v66);
    *v60 = v62;
    *(v60 + 1) = v63;
    *(v60 + 2) = v64;
    *(v60 + 3) = v65;
    v60[32] = v66;
  }

  return v4;
}

uint64_t sub_100054900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_10005490C(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  v7 = (a1 + v4[9]);
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[7];
    v13 = sub_1000C0938();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  v14 = v4[18];
  v15 = sub_1000C0938();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);

  v16 = *(a2 + 20);
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C16C8();
    (*(*(v17 - 8) + 8))(a1 + v16, v17);
  }

  else
  {
  }

  v18 = a1 + *(a2 + 24);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32);

  return sub_100054C08(v19, v20, v21, v22, v23);
}

uint64_t sub_100054C08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_100054C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = v6[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v71 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v69 = v17[6];
    v23 = sub_1000C0818();
    v66 = *(v23 - 8);
    v67 = *(v66 + 48);
    v24 = v21;
    v25 = v22;
    if (v67(v16 + v69, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v69, v16 + v69, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v66 + 16))(v15 + v69, v16 + v69, v23);
      (*(v66 + 56))(v15 + v69, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v71 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = v6[10];
  v72 = *(a2 + v33);
  *(a1 + v33) = v72;
  v34 = v6[11];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = v6[12];
  v70 = *(a2 + v38);
  *(a1 + v38) = v70;
  v39 = v6[13];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v6[14];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v6[15]) = *(a2 + v6[15]);
  v47 = v6[16];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v51 = v6[18];
  v52 = sub_1000C0938();
  v68 = *(*(v52 - 8) + 16);
  v53 = v72;

  v54 = v70;

  v68(a1 + v51, a2 + v51, v52);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v55 = *(a3 + 20);

  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = sub_1000C16C8();
    (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
  }

  else
  {
    *(a1 + v55) = *(a2 + v55);
  }

  swift_storeEnumTagMultiPayload();
  v57 = *(a3 + 24);
  v58 = a1 + v57;
  v59 = a2 + v57;
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = *(v59 + 16);
  v63 = *(v59 + 24);
  v64 = *(v59 + 32);
  sub_100054900(*v59, v61, v62, v63, v64);
  *v58 = v60;
  *(v58 + 8) = v61;
  *(v58 + 16) = v62;
  *(v58 + 24) = v63;
  *(v58 + 32) = v64;
  return a1;
}

char *sub_100055118(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = v5[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  v11 = v5[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v18 = v16(v13, 1, v14);
  if (!v17)
  {
    if (v18)
    {
      sub_100048940(v12, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v25 = *v13;
    v26 = *v12;
    *v12 = *v13;
    v27 = v25;

    v28 = *(v12 + 1);
    v29 = *(v13 + 1);
    *(v12 + 1) = v29;
    v30 = v29;

    v31 = v14[6];
    v32 = sub_1000C0818();
    v90 = *(v32 - 8);
    v33 = *(v90 + 48);
    v92 = v33(&v12[v31], 1, v32);
    v34 = v33(&v13[v31], 1, v32);
    if (v92)
    {
      if (!v34)
      {
        (*(v90 + 16))(&v12[v31], &v13[v31], v32);
        (*(v90 + 56))(&v12[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v90 + 24))(&v12[v31], &v13[v31], v32);
        goto LABEL_18;
      }

      (*(v90 + 8))(&v12[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v44 = v14[7];
    v45 = sub_1000C0938();
    (*(*(v45 - 8) + 24))(&v12[v44], &v13[v44], v45);
    v46 = v14[8];
    v47 = *&v12[v46];
    v48 = *&v13[v46];
    *&v12[v46] = v48;
    v49 = v48;

    *&v12[v14[9]] = *&v13[v14[9]];
    v12[v14[10]] = v13[v14[10]];
    v12[v14[11]] = v13[v14[11]];
    goto LABEL_19;
  }

  if (v18)
  {
LABEL_7:
    v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  v19 = *v13;
  *v12 = *v13;
  v91 = *(v13 + 1);
  *(v12 + 1) = v91;
  v93 = v14[6];
  v20 = sub_1000C0818();
  v88 = *(v20 - 8);
  v89 = *(v88 + 48);
  v21 = v19;
  v22 = v91;
  if (v89(&v13[v93], 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v12[v93], &v13[v93], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v88 + 16))(&v12[v93], &v13[v93], v20);
    (*(v88 + 56))(&v12[v93], 0, 1, v20);
  }

  v38 = v14[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 16))(&v12[v38], &v13[v38], v39);
  v40 = v14[8];
  v41 = *&v13[v40];
  *&v12[v40] = v41;
  *&v12[v14[9]] = *&v13[v14[9]];
  v12[v14[10]] = v13[v14[10]];
  v12[v14[11]] = v13[v14[11]];
  v42 = *(v15 + 56);
  v43 = v41;
  v42(v12, 0, 1, v14);
LABEL_19:
  v50 = v5[10];
  v51 = *&a2[v50];
  v52 = *&a1[v50];
  *&a1[v50] = v51;
  v53 = v51;

  v54 = v5[11];
  v55 = &a1[v54];
  v56 = &a2[v54];
  *v55 = *v56;
  *(v55 + 1) = *(v56 + 1);

  v57 = v5[12];
  v58 = *&a1[v57];
  v59 = *&a2[v57];
  *&a1[v57] = v59;
  v60 = v59;

  v61 = v5[13];
  v62 = &a1[v61];
  v63 = &a2[v61];
  *v62 = *v63;
  *(v62 + 1) = *(v63 + 1);

  v64 = v5[14];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  a1[v5[15]] = a2[v5[15]];
  v67 = v5[16];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&a1[v5[17]] = *&a2[v5[17]];

  v70 = v5[18];
  v71 = sub_1000C0938();
  (*(*(v71 - 8) + 24))(&a1[v70], &a2[v70], v71);
  *&a1[v5[19]] = *&a2[v5[19]];

  a1[v5[20]] = a2[v5[20]];
  if (a1 != a2)
  {
    v72 = *(a3 + 20);
    sub_1000084C0(&a1[v72], &qword_1000EE6D8, &qword_1000C67B8);
    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v73 = sub_1000C16C8();
      (*(*(v73 - 8) + 16))(&a1[v72], &a2[v72], v73);
    }

    else
    {
      *&a1[v72] = *&a2[v72];
    }

    swift_storeEnumTagMultiPayload();
  }

  v74 = *(a3 + 24);
  v75 = &a1[v74];
  v76 = &a2[v74];
  v77 = *v76;
  v78 = *(v76 + 1);
  v79 = *(v76 + 2);
  v80 = *(v76 + 3);
  v81 = v76[32];
  sub_100054900(*v76, v78, v79, v80, v81);
  v82 = *v75;
  v83 = *(v75 + 1);
  v84 = *(v75 + 2);
  v85 = *(v75 + 3);
  v86 = v75[32];
  *v75 = v77;
  *(v75 + 1) = v78;
  *(v75 + 2) = v79;
  *(v75 + 3) = v80;
  v75[32] = v81;
  sub_100054C08(v82, v83, v84, v85, v86);
  return a1;
}

uint64_t sub_100055940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  v9 = v6[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v32 = a3;
    v15 = v11[1];
    *v10 = *v11;
    v10[1] = v15;
    v16 = v12[6];
    v17 = sub_1000C0818();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v10 + v16, v11 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v10 + v16, v11 + v16, v17);
      (*(v18 + 56))(v10 + v16, 0, 1, v17);
    }

    v20 = v12[7];
    v21 = sub_1000C0938();
    (*(*(v21 - 8) + 32))(v10 + v20, v11 + v20, v21);
    *(v10 + v12[8]) = *(v11 + v12[8]);
    *(v10 + v12[9]) = *(v11 + v12[9]);
    *(v10 + v12[10]) = *(v11 + v12[10]);
    *(v10 + v12[11]) = *(v11 + v12[11]);
    (*(v13 + 56))(v10, 0, 1, v12);
    a3 = v32;
  }

  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v24 = *(a3 + 20);
  v25 = sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000C16C8();
    (*(*(v26 - 8) + 32))(a1 + v24, a2 + v24, v26);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v24), (a2 + v24), *(*(v25 - 8) + 64));
  }

  v27 = *(a3 + 24);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = *(v29 + 16);
  *v28 = *v29;
  *(v28 + 16) = v30;
  *(v28 + 32) = *(v29 + 32);
  return a1;
}

uint64_t sub_100055D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = v6[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      v22 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v22;
      v23 = v17[6];
      v24 = sub_1000C0818();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(&v16[v23], 1, v24))
      {
        v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(&v15[v23], &v16[v23], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 32))(&v15[v23], &v16[v23], v24);
        (*(v25 + 56))(&v15[v23], 0, 1, v24);
      }

      v37 = v17[7];
      v38 = sub_1000C0938();
      (*(*(v38 - 8) + 32))(&v15[v37], &v16[v37], v38);
      *&v15[v17[8]] = *&v16[v17[8]];
      *&v15[v17[9]] = *&v16[v17[9]];
      v15[v17[10]] = v16[v17[10]];
      v15[v17[11]] = v16[v17[11]];
      (*(v18 + 56))(v15, 0, 1, v17);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v21)
  {
    sub_100048940(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v28 = *v15;
  *v15 = *v16;

  v29 = *(v15 + 1);
  *(v15 + 1) = *(v16 + 1);

  v30 = v17[6];
  v31 = sub_1000C0818();
  v83 = *(v31 - 8);
  v32 = *(v83 + 48);
  v84 = v32(&v15[v30], 1, v31);
  v33 = v32(&v16[v30], 1, v31);
  if (v84)
  {
    if (!v33)
    {
      (*(v83 + 32))(&v15[v30], &v16[v30], v31);
      (*(v83 + 56))(&v15[v30], 0, 1, v31);
      goto LABEL_18;
    }

    v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v35 = &v15[v30];
    v36 = &v16[v30];
  }

  else
  {
    if (!v33)
    {
      (*(v83 + 40))(&v15[v30], &v16[v30], v31);
      goto LABEL_18;
    }

    (*(v83 + 8))(&v15[v30], v31);
    v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v35 = &v15[v30];
    v36 = &v16[v30];
  }

  memcpy(v35, v36, v34);
LABEL_18:
  v39 = v17[7];
  v40 = sub_1000C0938();
  (*(*(v40 - 8) + 40))(&v15[v39], &v16[v39], v40);
  v41 = v17[8];
  v42 = *&v15[v41];
  *&v15[v41] = *&v16[v41];

  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
LABEL_19:
  v43 = v6[10];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v6[11];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  v49 = *v47;
  v48 = v47[1];
  *v46 = v49;
  v46[1] = v48;

  v50 = v6[12];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);

  v52 = v6[13];
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v56 = *v54;
  v55 = v54[1];
  *v53 = v56;
  v53[1] = v55;

  v57 = v6[14];
  v58 = (a1 + v57);
  v59 = (a2 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  *(a1 + v6[15]) = *(a2 + v6[15]);
  v62 = v6[16];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + v6[17]) = *(a2 + v6[17]);

  v67 = v6[18];
  v68 = sub_1000C0938();
  (*(*(v68 - 8) + 40))(a1 + v67, a2 + v67, v68);
  *(a1 + v6[19]) = *(a2 + v6[19]);

  *(a1 + v6[20]) = *(a2 + v6[20]);
  if (a1 != a2)
  {
    v69 = *(a3 + 20);
    sub_1000084C0(a1 + v69, &qword_1000EE6D8, &qword_1000C67B8);
    v70 = sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v71 = sub_1000C16C8();
      (*(*(v71 - 8) + 32))(a1 + v69, a2 + v69, v71);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v69), (a2 + v69), *(*(v70 - 8) + 64));
    }
  }

  v72 = *(a3 + 24);
  v73 = a1 + v72;
  v74 = a2 + v72;
  v75 = *(v74 + 32);
  v76 = *v73;
  v77 = *(v73 + 8);
  v78 = *(v73 + 16);
  v79 = *(v73 + 24);
  v80 = *(v73 + 32);
  v81 = *(v74 + 16);
  *v73 = *v74;
  *(v73 + 16) = v81;
  *(v73 + 32) = v75;
  sub_100054C08(v76, v77, v78, v79, v80);
  return a1;
}

uint64_t sub_1000564F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100004D04(&qword_1000EE7F0, &qword_1000C68C8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 32);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100056620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100004D04(&qword_1000EE7F0, &qword_1000C68C8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100056738(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &unk_1000EE860, &type metadata accessor for DynamicTypeSize);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_100056824(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v94 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v92 = v18[6];
      v25 = sub_1000C0818();
      v89 = *(v25 - 8);
      v90 = *(v89 + 48);
      v26 = v23;
      v27 = v24;
      if (v90(v17 + v92, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v92, v17 + v92, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v89 + 16))(v16 + v92, v17 + v92, v25);
        (*(v89 + 56))(v16 + v92, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v94 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v95 = *(a2 + v35);
    *&v4[v35] = v95;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v93 = *(a2 + v40);
    *&v4[v40] = v93;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v91 = *(*(v54 - 8) + 16);
    v55 = v95;

    v56 = v93;

    v91(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = a3[5];
    v58 = &v4[v57];
    v59 = a2 + v57;
    v60 = *v59;
    LOBYTE(v39) = v59[8];

    sub_1000489F4(v60, v39);
    *v58 = v60;
    v58[8] = v39;
    v61 = a3[6];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = sub_1000C2338();
      (*(*(v62 - 8) + 16))(&v4[v61], a2 + v61, v62);
    }

    else
    {
      *&v4[v61] = *(a2 + v61);
    }

    swift_storeEnumTagMultiPayload();
    v63 = a3[7];
    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v64 = sub_1000C16C8();
      (*(*(v64 - 8) + 16))(&v4[v63], a2 + v63, v64);
    }

    else
    {
      *&v4[v63] = *(a2 + v63);
    }

    swift_storeEnumTagMultiPayload();
    v65 = a3[8];
    v66 = a3[9];
    v67 = &v4[v65];
    v68 = a2 + v65;
    v69 = *v68;
    LOBYTE(v68) = v68[8];
    *v67 = v69;
    v67[8] = v68;
    v70 = &v4[v66];
    v71 = *(a2 + v66);
    v72 = *(a2 + v66 + 8);

    sub_1000489F4(v71, v72);
    *v70 = v71;
    v70[8] = v72;
    v73 = a3[10];
    v74 = &v4[v73];
    v75 = a2 + v73;
    v76 = *v75;
    v77 = v75[8];
    sub_1000489F4(*v75, v77);
    *v74 = v76;
    v74[8] = v77;
    v78 = a3[11];
    v79 = &v4[v78];
    v80 = a2 + v78;
    v81 = *v80;
    v82 = *(v80 + 1);
    v83 = *(v80 + 2);
    v84 = *(v80 + 3);
    v85 = v80[32];
    sub_100054900(*v80, v82, v83, v84, v85);
    *v79 = v81;
    *(v79 + 1) = v82;
    *(v79 + 2) = v83;
    *(v79 + 3) = v84;
    v79[32] = v85;
    v86 = a3[12];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v87 = sub_1000C2338();
      (*(*(v87 - 8) + 16))(&v4[v86], a2 + v86, v87);
    }

    else
    {
      *&v4[v86] = *(a2 + v86);
    }

    swift_storeEnumTagMultiPayload();
    *&v4[a3[13]] = *(a2 + a3[13]);
  }

  return v4;
}

uint64_t sub_100056F1C(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  v7 = (a1 + v4[9]);
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[7];
    v13 = sub_1000C0938();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  v14 = v4[18];
  v15 = sub_1000C0938();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);

  sub_100048A00(*(a1 + a2[5]), *(a1 + a2[5] + 8));
  v16 = a2[6];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C2338();
    (*(*(v17 - 8) + 8))(a1 + v16, v17);
  }

  else
  {
  }

  v18 = a2[7];
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1000C16C8();
    (*(*(v19 - 8) + 8))(a1 + v18, v19);
  }

  else
  {
  }

  sub_100048A00(*(a1 + a2[9]), *(a1 + a2[9] + 8));
  sub_100048A00(*(a1 + a2[10]), *(a1 + a2[10] + 8));
  v20 = a1 + a2[11];
  sub_100054C08(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32));
  v21 = a2[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1000C2338();
    v23 = *(*(v22 - 8) + 8);

    return v23(a1 + v21, v22);
  }

  else
  {
  }
}

uint64_t sub_100057350(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = v6[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v92 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v90 = v17[6];
    v23 = sub_1000C0818();
    v87 = *(v23 - 8);
    v88 = *(v87 + 48);
    v24 = v21;
    v25 = v22;
    if (v88(v16 + v90, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v90, v16 + v90, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v87 + 16))(v15 + v90, v16 + v90, v23);
      (*(v87 + 56))(v15 + v90, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v92 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = v6[10];
  v93 = *(a2 + v33);
  *(a1 + v33) = v93;
  v34 = v6[11];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = v6[12];
  v91 = *(a2 + v38);
  *(a1 + v38) = v91;
  v39 = v6[13];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v6[14];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v6[15]) = *(a2 + v6[15]);
  v47 = v6[16];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v51 = v6[18];
  v52 = sub_1000C0938();
  v89 = *(*(v52 - 8) + 16);
  v53 = v93;

  v54 = v91;

  v89(a1 + v51, a2 + v51, v52);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v55 = a3[5];
  v56 = a1 + v55;
  v57 = a2 + v55;
  v58 = *v57;
  LOBYTE(v37) = *(v57 + 8);

  sub_1000489F4(v58, v37);
  *v56 = v58;
  *(v56 + 8) = v37;
  v59 = a3[6];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_1000C2338();
    (*(*(v60 - 8) + 16))(a1 + v59, a2 + v59, v60);
  }

  else
  {
    *(a1 + v59) = *(a2 + v59);
  }

  swift_storeEnumTagMultiPayload();
  v61 = a3[7];
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = sub_1000C16C8();
    (*(*(v62 - 8) + 16))(a1 + v61, a2 + v61, v62);
  }

  else
  {
    *(a1 + v61) = *(a2 + v61);
  }

  swift_storeEnumTagMultiPayload();
  v63 = a3[8];
  v64 = a3[9];
  v65 = a1 + v63;
  v66 = (a2 + v63);
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 8);
  *v65 = v67;
  *(v65 + 8) = v66;
  v68 = a1 + v64;
  v69 = *(a2 + v64);
  v70 = *(a2 + v64 + 8);

  sub_1000489F4(v69, v70);
  *v68 = v69;
  *(v68 + 8) = v70;
  v71 = a3[10];
  v72 = a1 + v71;
  v73 = a2 + v71;
  v74 = *v73;
  v75 = *(v73 + 8);
  sub_1000489F4(*v73, v75);
  *v72 = v74;
  *(v72 + 8) = v75;
  v76 = a3[11];
  v77 = a1 + v76;
  v78 = a2 + v76;
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = *(v78 + 16);
  v82 = *(v78 + 24);
  v83 = *(v78 + 32);
  sub_100054900(*v78, v80, v81, v82, v83);
  *v77 = v79;
  *(v77 + 8) = v80;
  *(v77 + 16) = v81;
  *(v77 + 24) = v82;
  *(v77 + 32) = v83;
  v84 = a3[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = sub_1000C2338();
    (*(*(v85 - 8) + 16))(a1 + v84, a2 + v84, v85);
  }

  else
  {
    *(a1 + v84) = *(a2 + v84);
  }

  swift_storeEnumTagMultiPayload();
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

char *sub_1000579FC(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = v5[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  v11 = v5[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v18 = v16(v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = *v13;
      *v12 = *v13;
      v121 = *(v13 + 1);
      *(v12 + 1) = v121;
      v123 = v14[6];
      v20 = sub_1000C0818();
      v118 = *(v20 - 8);
      v119 = *(v118 + 48);
      v21 = v19;
      v22 = v121;
      if (v119(&v13[v123], 1, v20))
      {
        v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(&v12[v123], &v13[v123], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v118 + 16))(&v12[v123], &v13[v123], v20);
        (*(v118 + 56))(&v12[v123], 0, 1, v20);
      }

      v38 = v14[7];
      v39 = sub_1000C0938();
      (*(*(v39 - 8) + 16))(&v12[v38], &v13[v38], v39);
      v40 = v14[8];
      v41 = *&v13[v40];
      *&v12[v40] = v41;
      *&v12[v14[9]] = *&v13[v14[9]];
      v12[v14[10]] = v13[v14[10]];
      v12[v14[11]] = v13[v14[11]];
      v42 = *(v15 + 56);
      v43 = v41;
      v42(v12, 0, 1, v14);
      goto LABEL_13;
    }

LABEL_7:
    v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v24 - 8) + 64));
LABEL_13:
    v44 = a3;
    goto LABEL_14;
  }

  if (v18)
  {
    sub_100048940(v12, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    goto LABEL_7;
  }

  v25 = *v13;
  v26 = *v12;
  *v12 = *v13;
  v27 = v25;

  v28 = *(v12 + 1);
  v29 = *(v13 + 1);
  *(v12 + 1) = v29;
  v30 = v29;

  v31 = v14[6];
  v32 = sub_1000C0818();
  v120 = *(v32 - 8);
  v33 = *(v120 + 48);
  v122 = v33(&v12[v31], 1, v32);
  v34 = v33(&v13[v31], 1, v32);
  if (v122)
  {
    if (!v34)
    {
      (*(v120 + 16))(&v12[v31], &v13[v31], v32);
      (*(v120 + 56))(&v12[v31], 0, 1, v32);
      goto LABEL_33;
    }

    v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v36 = &v12[v31];
    v37 = &v13[v31];
  }

  else
  {
    if (!v34)
    {
      (*(v120 + 24))(&v12[v31], &v13[v31], v32);
      goto LABEL_33;
    }

    (*(v120 + 8))(&v12[v31], v32);
    v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v36 = &v12[v31];
    v37 = &v13[v31];
  }

  memcpy(v36, v37, v35);
LABEL_33:
  v44 = a3;
  v112 = v14[7];
  v113 = sub_1000C0938();
  (*(*(v113 - 8) + 24))(&v12[v112], &v13[v112], v113);
  v114 = v14[8];
  v115 = *&v12[v114];
  v116 = *&v13[v114];
  *&v12[v114] = v116;
  v117 = v116;

  *&v12[v14[9]] = *&v13[v14[9]];
  v12[v14[10]] = v13[v14[10]];
  v12[v14[11]] = v13[v14[11]];
LABEL_14:
  v45 = v5[10];
  v46 = *&a2[v45];
  v47 = *&a1[v45];
  *&a1[v45] = v46;
  v48 = v46;

  v49 = v5[11];
  v50 = &a1[v49];
  v51 = &a2[v49];
  *v50 = *v51;
  *(v50 + 1) = *(v51 + 1);

  v52 = v5[12];
  v53 = *&a1[v52];
  v54 = *&a2[v52];
  *&a1[v52] = v54;
  v55 = v54;

  v56 = v5[13];
  v57 = &a1[v56];
  v58 = &a2[v56];
  *v57 = *v58;
  *(v57 + 1) = *(v58 + 1);

  v59 = v5[14];
  v60 = &a1[v59];
  v61 = &a2[v59];
  *v60 = *v61;
  *(v60 + 1) = *(v61 + 1);

  a1[v5[15]] = a2[v5[15]];
  v62 = v5[16];
  v63 = &a1[v62];
  v64 = &a2[v62];
  *v63 = *v64;
  *(v63 + 1) = *(v64 + 1);

  *&a1[v5[17]] = *&a2[v5[17]];

  v65 = v5[18];
  v66 = sub_1000C0938();
  (*(*(v66 - 8) + 24))(&a1[v65], &a2[v65], v66);
  *&a1[v5[19]] = *&a2[v5[19]];

  a1[v5[20]] = a2[v5[20]];
  v67 = v44[5];
  v68 = &a1[v67];
  v69 = &a2[v67];
  v70 = *v69;
  v71 = v69[8];
  sub_1000489F4(*v69, v71);
  v72 = *v68;
  v73 = v68[8];
  *v68 = v70;
  v68[8] = v71;
  sub_100048A00(v72, v73);
  if (a1 != a2)
  {
    v74 = v44[6];
    sub_1000084C0(&a1[v74], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = sub_1000C2338();
      (*(*(v75 - 8) + 16))(&a1[v74], &a2[v74], v75);
    }

    else
    {
      *&a1[v74] = *&a2[v74];
    }

    swift_storeEnumTagMultiPayload();
    v76 = v44[7];
    sub_1000084C0(&a1[v76], &qword_1000EE6D8, &qword_1000C67B8);
    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v77 = sub_1000C16C8();
      (*(*(v77 - 8) + 16))(&a1[v76], &a2[v76], v77);
    }

    else
    {
      *&a1[v76] = *&a2[v76];
    }

    swift_storeEnumTagMultiPayload();
  }

  v78 = v44[8];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *v80;
  LOBYTE(v80) = v80[8];
  *v79 = v81;
  v79[8] = v80;

  v82 = v44[9];
  v83 = &a1[v82];
  v84 = &a2[v82];
  v85 = *v84;
  v86 = v84[8];
  sub_1000489F4(*v84, v86);
  v87 = *v83;
  v88 = v83[8];
  *v83 = v85;
  v83[8] = v86;
  sub_100048A00(v87, v88);
  v89 = v44[10];
  v90 = &a1[v89];
  v91 = &a2[v89];
  v92 = *v91;
  v93 = v91[8];
  sub_1000489F4(*v91, v93);
  v94 = *v90;
  v95 = v90[8];
  *v90 = v92;
  v90[8] = v93;
  sub_100048A00(v94, v95);
  v96 = v44[11];
  v97 = &a1[v96];
  v98 = &a2[v96];
  v99 = *v98;
  v100 = *(v98 + 1);
  v101 = *(v98 + 2);
  v102 = *(v98 + 3);
  v103 = v98[32];
  sub_100054900(*v98, v100, v101, v102, v103);
  v104 = *v97;
  v105 = *(v97 + 1);
  v106 = *(v97 + 2);
  v107 = *(v97 + 3);
  v108 = v97[32];
  *v97 = v99;
  *(v97 + 1) = v100;
  *(v97 + 2) = v101;
  *(v97 + 3) = v102;
  v97[32] = v103;
  sub_100054C08(v104, v105, v106, v107, v108);
  if (a1 != a2)
  {
    v109 = v44[12];
    sub_1000084C0(&a1[v109], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v110 = sub_1000C2338();
      (*(*(v110 - 8) + 16))(&a1[v109], &a2[v109], v110);
    }

    else
    {
      *&a1[v109] = *&a2[v109];
    }

    swift_storeEnumTagMultiPayload();
  }

  *&a1[v44[13]] = *&a2[v44[13]];
  return a1;
}