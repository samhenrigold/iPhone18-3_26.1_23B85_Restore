uint64_t sub_100379DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0, &qword_10052F9B8);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100379E78, v7, v6);
}

uint64_t sub_100379E78()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_1004D9DFC();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10037A0A0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10037A270;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10037A0A0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10037A4A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10037A1BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10037A1BC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10037A270;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10037A270()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10037A58C;
  }

  else
  {
    v5 = sub_10037A3AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037A3AC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1004DD05C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_10001074C(v2, &qword_1006428D0, &qword_10052F9B8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A4A8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0, &qword_10052F9B8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A58C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0, &qword_10052F9B8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0, &qword_10052F9B8);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10037A73C, v7, v6);
}

uint64_t sub_10037A73C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10037A7F8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_10037A7F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10037A934;
  }

  else
  {
    v5 = sub_100381838;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037A934()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0, &qword_10052F9B8);

  v6 = v0[1];

  return v6();
}

double sub_10037AA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = sub_1004DDA8C();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_10037F660(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_1004DDA4C();
  v19 = sub_1004DDA3C();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_10037E148(v14, v22 + v20, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v22 + v21, v11, v8);
  sub_100302950(0, 0, v16, v25, v22);

  return result;
}

uint64_t sub_10037ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0, &qword_10052F9B8);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10037AD98, v7, v6);
}

uint64_t sub_10037AD98()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10037AE54;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_10037AE54()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100381834;
  }

  else
  {
    v5 = sub_100381838;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_100381494();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_1004D7F4C();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_10037B0A8()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_10037B10C@<X0>(uint64_t *a1@<X8>)
{
  sub_100004CB8(&qword_100642208, &qword_10052F190);
  __chkstk_darwin();
  v3 = &v8 - v2;
  sub_1004DB8EC();
  sub_1004DA93C();
  v4 = sub_1004DA94C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_1004DB91C();

  sub_10001074C(v3, &qword_100642208, &qword_10052F190);
  v6 = sub_1004DB7FC();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t sub_10037B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v2 = sub_1004DB0CC();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin();
  v129 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DD3EC();
  v128 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v112 - v9;
  v115 = sub_100004CB8(&qword_100642738, &qword_10052F780);
  __chkstk_darwin();
  v12 = &v112 - v11;
  v116 = sub_100004CB8(&qword_100642740, &qword_10052F788);
  __chkstk_darwin();
  v119 = &v112 - v13;
  v14 = sub_100004CB8(&qword_100642748, &qword_10052F790);
  v126 = *(v14 - 8);
  v127 = v14;
  __chkstk_darwin();
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v112 - v16;
  v17 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642750, &qword_10052F798);
  __chkstk_darwin();
  v133 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v112 - v21;
  v23 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v125 = v17;
  swift_storeEnumTagMultiPayload();
  v124 = v23;
  LOBYTE(v23) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v135 + v23), v19);
  sub_10037E0C8(v19, type metadata accessor for Collaboration.Flow);
  v132 = v22;
  v122 = v5;
  v123 = v6;
  v120 = v8;
  v121 = v10;
  if (v23)
  {
    v24 = 1;
    v25 = v127;
  }

  else
  {
    sub_1004DD37C();
    v26 = v128;
    (*(v128 + 16))(v8, v10, v6);
    v27 = v26;
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v28 = qword_1006734A0;
    sub_1004D838C();
    v29 = sub_1004DD4AC();
    v31 = v30;
    (*(v27 + 8))(v10, v6);
    *&v158 = v29;
    *(&v158 + 1) = v31;
    sub_1002E6780();
    v32 = sub_1004DB34C();
    v113 = v33;
    v114 = v34;
    v36 = v35;
    v37 = &v12[*(sub_100004CB8(&qword_100642758, &qword_10052F7A0) + 36)];
    v38 = *(sub_100004CB8(&qword_100642760, &qword_10052F7A8) + 28);
    v39 = enum case for Text.Case.uppercase(_:);
    v40 = sub_1004DB28C();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    v42 = v113;
    *v12 = v32;
    *(v12 + 1) = v42;
    v12[16] = v36 & 1;
    *(v12 + 3) = v114;
    v43 = sub_1004DB10C();
    KeyPath = swift_getKeyPath();
    v45 = &v12[*(sub_100004CB8(&qword_100642768, &qword_10052F810) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = sub_1004DB8AC();
    v47 = swift_getKeyPath();
    v48 = &v12[*(v115 + 36)];
    *v48 = v47;
    v48[1] = v46;
    sub_1004DBD2C();
    sub_1004DA45C();
    v49 = v119;
    sub_100047F38(v12, v119, &qword_100642738, &qword_10052F780);
    v50 = (v49 + *(v116 + 36));
    v51 = v172;
    v50[4] = v171;
    v50[5] = v51;
    v50[6] = v173;
    v52 = v168;
    *v50 = v167;
    v50[1] = v52;
    v53 = v170;
    v50[2] = v169;
    v50[3] = v53;
    LOBYTE(v46) = sub_1004DAF1C();
    sub_1004D9C8C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v117;
    sub_100047F38(v49, v117, &qword_100642740, &qword_10052F788);
    v25 = v127;
    v63 = v62 + *(v127 + 36);
    *v63 = v46;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = v62;
    v65 = v118;
    sub_100047F38(v64, v118, &qword_100642748, &qword_10052F790);
    v22 = v132;
    sub_100047F38(v65, v132, &qword_100642748, &qword_10052F790);
    v24 = 0;
  }

  v67 = v130;
  v66 = v131;
  v68 = v129;
  (*(v126 + 56))(v22, v24, 1, v25);
  v69 = v135;

  sub_10038733C(&v174);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v69 + v124), v19);
  sub_10037E0C8(v19, type metadata accessor for Collaboration.Flow);
  if (v69)
  {
    sub_10037F3B0(&v158);
  }

  else
  {
    v70 = v121;
    sub_1004DD37C();
    v71 = v128;
    v72 = v123;
    (*(v128 + 16))(v120, v70, v123);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v73 = qword_1006734A0;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    *&v158 = v74;
    *(&v158 + 1) = v76;
    sub_1002E6780();
    v135 = sub_1004DB34C();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = swift_getKeyPath();
    LOBYTE(v74) = v80 & 1;
    LOBYTE(v158) = v80 & 1;
    sub_1004DB10C();
    (*(v67 + 104))(v68, enum case for Font.Leading.tight(_:), v66);
    v84 = sub_1004DB0FC();

    (*(v67 + 8))(v68, v66);
    v85 = swift_getKeyPath();
    v86 = sub_1004DB8AC();
    v87 = swift_getKeyPath();
    v88 = sub_1004DAF1C();
    sub_1004D9C8C();
    LOBYTE(v158) = 0;
    *&v149 = v135;
    *(&v149 + 1) = v78;
    LOBYTE(v150) = v74;
    *(&v150 + 1) = v82;
    LOWORD(v151) = 256;
    *(&v151 + 1) = v83;
    LOBYTE(v152) = 1;
    *(&v152 + 1) = v85;
    *&v153 = v84;
    *(&v153 + 1) = v87;
    *&v154 = v86;
    BYTE8(v154) = v88;
    *&v155 = v89;
    *(&v155 + 1) = v90;
    *&v156 = v91;
    *(&v156 + 1) = v92;
    v157 = 0;
    v93.location = &v149;
    CFRange.init(_:)(v93);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v163 = v154;
    v158 = v149;
    v159 = v150;
    v22 = v132;
  }

  v94 = v133;
  sub_1000108DC(v22, v133, &qword_100642750, &qword_10052F798);
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v138 = v160;
  v139 = v161;
  v140 = v162;
  v141 = v163;
  v136 = v158;
  v137 = v159;
  v95 = v134;
  sub_1000108DC(v94, v134, &qword_100642750, &qword_10052F798);
  v96 = sub_100004CB8(&qword_100642770, &qword_10052F848);
  v97 = (v95 + *(v96 + 48));
  v98 = v178;
  v99 = v177;
  v145[3] = v177;
  v145[4] = v178;
  v100 = v175;
  v101 = v174;
  v145[1] = v175;
  v145[2] = v176;
  v145[0] = v174;
  v97[2] = v176;
  v97[3] = v99;
  v97[4] = v98;
  *v97 = v101;
  v97[1] = v100;
  v102 = *(v96 + 64);
  v103 = v143;
  v146[6] = v142;
  v146[7] = v143;
  v105 = v140;
  v104 = v141;
  v146[4] = v140;
  v146[5] = v141;
  v106 = v138;
  v107 = v139;
  v146[2] = v138;
  v146[3] = v139;
  v109 = v136;
  v108 = v137;
  v146[0] = v136;
  v146[1] = v137;
  v110 = v95 + v102;
  *(v110 + 96) = v142;
  *(v110 + 112) = v103;
  v147 = v144;
  *(v110 + 128) = v144;
  *(v110 + 32) = v106;
  *(v110 + 48) = v107;
  *(v110 + 64) = v105;
  *(v110 + 80) = v104;
  *v110 = v109;
  *(v110 + 16) = v108;
  sub_10037F300(v145, &v149);
  sub_1000108DC(v146, &v149, &qword_100642778, &unk_10052F850);
  sub_10001074C(v22, &qword_100642750, &qword_10052F798);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v149 = v136;
  v150 = v137;
  sub_10001074C(&v149, &qword_100642778, &unk_10052F850);
  v148[2] = v176;
  v148[3] = v177;
  v148[4] = v178;
  v148[0] = v174;
  v148[1] = v175;
  sub_10037F35C(v148);
  return sub_10001074C(v94, &qword_100642750, &qword_10052F798);
}

uint64_t sub_10037BEC4@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_1004DA90C();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  sub_100004CB8(a3, a4);
  return a5(v6);
}

uint64_t sub_10037BF30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1004DA74C();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin();
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1004DA43C();
  __chkstk_darwin();
  v74 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_100004CB8(&qword_100642690, &qword_10052F668);
  __chkstk_darwin();
  v75 = &v63 - v6;
  v7 = sub_100004CB8(&qword_100642698, &qword_10052F670) - 8;
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = sub_100004CB8(&qword_1006426A0, &qword_10052F678) - 8;
  __chkstk_darwin();
  v12 = &v63 - v11;
  v67 = sub_100004CB8(&qword_1006426A8, &qword_10052F680);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v68 = sub_100004CB8(&qword_1006426B0, &qword_10052F688);
  __chkstk_darwin();
  v16 = &v63 - v15;
  v17 = sub_100004CB8(&qword_1006426B8, &qword_10052F690);
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin();
  v70 = &v63 - v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  v77 = v1;
  sub_10037EDA8(v1, v87);
  sub_100004CB8(&qword_1006426C0, &qword_10052F698);
  sub_10037EDE0();
  sub_1004DBA3C();
  v90 = *(v1 + 40);
  v87[0] = *(v1 + 40);
  v63 = sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  v22 = v80;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_10037EFD8;
  v25[2] = v24;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v9, v12, &qword_100642698, &qword_10052F670);
  v26 = &v12[*(v10 + 44)];
  v27 = v85;
  *(v26 + 4) = v84;
  *(v26 + 5) = v27;
  *(v26 + 6) = v86;
  v28 = v81;
  *v26 = v80;
  *(v26 + 1) = v28;
  v29 = v83;
  *(v26 + 2) = v82;
  *(v26 + 3) = v29;
  v30 = *(v2 + 16);
  if (v30)
  {
    v31 = sub_1004DB7FC();
  }

  else
  {
    v31 = sub_1004DB87C();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  sub_100047F38(v12, v14, &qword_1006426A0, &qword_10052F678);
  v34 = &v14[*(v67 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v70;
  if (qword_10063DA08 != -1)
  {
    swift_once();
  }

  v36 = *&qword_100642380;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v14, v16, &qword_1006426A8, &qword_10052F680);
  v37 = &v16[*(v68 + 36)];
  v38 = v87[5];
  *(v37 + 4) = v87[4];
  *(v37 + 5) = v38;
  *(v37 + 6) = v87[6];
  v39 = v87[1];
  *v37 = v87[0];
  *(v37 + 1) = v39;
  v40 = v87[3];
  *(v37 + 2) = v87[2];
  *(v37 + 3) = v40;
  sub_10037F0DC(&qword_1006426E0, &qword_1006426B0, &qword_10052F688, sub_10037EFF8);
  sub_1004DB61C();
  sub_10001074C(v16, &qword_1006426B0, &qword_10052F688);
  v41 = v36 * 0.5;
  v42 = *(v69 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_1004DA88C();
  v45 = v74;
  (*(*(v44 - 8) + 104))(v74 + v42, v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v46 = *(v2 + 56);
  v88 = v46;
  v89 = *(v2 + 64);
  if (v89 == 1)
  {
    if (v46)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v47 = sub_1004DDF8C();
    v48 = sub_1004DAECC();
    sub_1004D953C(v47, &_mh_execute_header, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v64;
    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10001074C(&v88, &qword_100642710, &qword_10052F728);
    (*(v65 + 8))(v49, v66);
    if (v79)
    {
      goto LABEL_11;
    }
  }

  v79 = v90;
  sub_1004DB9EC();
  if (v78 != 1)
  {
    v51 = [objc_opt_self() systemFillColor];
    v50 = sub_1004DB8CC();
    goto LABEL_15;
  }

LABEL_11:
  if (v30)
  {
    v50 = sub_1004DB85C();
  }

  else
  {
    v50 = sub_1004DB7FC();
  }

LABEL_15:
  v52 = v50;
  v53 = v75;
  sub_10037E148(v45, v75, &type metadata accessor for RoundedRectangle);
  v54 = v73;
  *(v53 + *(v73 + 52)) = v52;
  *(v53 + *(v54 + 56)) = 256;
  v55 = sub_1004DBD1C();
  v57 = v56;
  v58 = sub_100004CB8(&qword_100642718, &qword_10052F730);
  v59 = v76;
  v60 = v76 + *(v58 + 36);
  sub_100047F38(v53, v60, &qword_100642690, &qword_10052F668);
  v61 = (v60 + *(sub_100004CB8(&qword_100642720, &qword_10052F738) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v71 + 32))(v59, v35, v72);
}

uint64_t sub_10037C83C(uint64_t a1)
{
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9FC();
  return (*(a1 + 24))(a1);
}

uint64_t sub_10037C8A8(uint64_t a1)
{
  sub_100004CB8(&qword_100642728, &qword_10052F740);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = sub_100004CB8(&qword_1006426D8, &unk_10052F6A0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  if (v23 == 1)
  {
    sub_1004D9ECC();
    v7 = sub_1004DB87C();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    sub_1000108DC(v6, v3, &qword_1006426D8, &unk_10052F6A0);
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100641F50, &qword_10052EE90);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50, &qword_10052EE90);
    sub_1004DAADC();
    return sub_10001074C(v6, &qword_1006426D8, &unk_10052F6A0);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    sub_1002E6780();

    v12 = sub_1004DB34C();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_1004DBD1C();
    sub_1004DA45C();
    LOBYTE(v23) = v16 & 1;
    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = v16 & 1;
    *(v3 + 3) = v18;
    v19 = v22[5];
    *(v3 + 6) = v22[4];
    *(v3 + 7) = v19;
    *(v3 + 8) = v22[6];
    v20 = v22[1];
    *(v3 + 2) = v22[0];
    *(v3 + 3) = v20;
    v21 = v22[3];
    *(v3 + 4) = v22[2];
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100641F50, &qword_10052EE90);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50, &qword_10052EE90);
    return sub_1004DAADC();
  }
}

void sub_10037CBCC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_100642380 = *&v2;
}

void sub_10037CC84()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_100642388 = v1 == 6;
}

uint64_t sub_10037CCE8()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_100642388)
  {
    v0 = 140.0;
  }

  qword_100642390 = *&v0;
  return result;
}

uint64_t sub_10037CD60()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_100642388)
  {
    v0 = 16.0;
  }

  qword_100642398 = *&v0;
  return result;
}

uint64_t sub_10037CDC8()
{
  v0 = sub_1004DB0CC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10063DA10 != -1)
  {
    swift_once();
  }

  if (byte_100642388 == 1)
  {
    result = sub_1004DAFFC();
    v5 = result;
  }

  else
  {
    sub_1004DB00C();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_1004DB0FC();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_1006423A0 = v5;
  return result;
}

uint64_t sub_10037CF24()
{
  sub_100004CB8(&qword_100641CB0, &qword_10052D350);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (qword_10063DA10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004DB02C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_1004DB07C();
  result = sub_10001074C(v1, &qword_100641CB0, &qword_10052D350);
  qword_1006423A8 = v3;
  return result;
}

uint64_t sub_10037D060()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_100642388)
  {
    v0 = 9.0;
  }

  qword_1006423B0 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  v31 = *(v9 + 56);
  v32 = v8;
  v30[1] = v9 + 56;
  v31(v7, 1, 1);
  v10 = [v2 artworkInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 responseDictionary];

    if (v12)
    {
      v13 = sub_1004DD21C();

      sub_10037262C(v13);
      v15 = v14;

      if (v15)
      {
        sub_1004DCC1C();
        sub_10001074C(v7, &unk_100642930, &unk_1005294A0);
        sub_100047F38(v5, v7, &unk_100642930, &unk_1005294A0);
      }
    }
  }

  v16 = [v2 name];
  v17 = sub_1004DD43C();
  v19 = v18;

  v20 = [v2 handle];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1004DD43C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_1000108DC(v7, v5, &unk_100642930, &unk_1005294A0);
  v25 = [v2 collaborationAllowed];
  sub_10001074C(v7, &unk_100642930, &unk_1005294A0);
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v27 = *(v26 + 24);
  (v31)(a1 + v27, 1, 1, v32);
  v28 = *(v26 + 28);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = v22;
  a1[3] = v24;
  result = sub_1003729EC(v5, a1 + v27);
  *(a1 + v28) = v25;
  return result;
}

uint64_t sub_10037D390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10037D3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA71C();
  *a1 = result;
  return result;
}

uint64_t sub_10037D454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = sub_1004DCDAC();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004CB8(&qword_1006423D0, &qword_10052F3C8);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = sub_100004CB8(&qword_100642790, &qword_10052F870);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = sub_1004D809C();
  v65 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  sub_100004CB8(&qword_100642798, &qword_10052F878);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  sub_10037F660(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  sub_10037F660(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    sub_10037F660(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = sub_100004CB8(&qword_1006423C8, &qword_10052F3C0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      sub_10001074C(v17, &qword_1006423D0, &qword_10052F3C8);
LABEL_10:
      sub_10001074C(v20, &qword_100642798, &qword_10052F878);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    LODWORD(v62) = v37;
    v39 = v22[v36];
    v40 = *(v65 + 32);
    v40(v67, &v17[v35], v33);
    v40(v66, &v22[v35], v33);
    v41 = *(v32 + 48);
    v42 = v63;
    sub_100047F38(v17, v63, &qword_1006423D0, &qword_10052F3C8);
    sub_100047F38(v22, v42 + v41, &qword_1006423D0, &qword_10052F3C8);
    v43 = v60;
    v44 = *(v59 + 48);
    if (v44(v42, 1, v60) == 1)
    {
      v45 = v44(v42 + v41, 1, v43);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v45 == 1)
      {
        sub_10001074C(v42, &qword_1006423D0, &qword_10052F3C8);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      sub_1000108DC(v42, v58, &qword_1006423D0, &qword_10052F3C8);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        sub_10037E148(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v49, v51);
        sub_10037E0C8(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10037E0C8(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10001074C(v42, &qword_1006423D0, &qword_10052F3C8);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = sub_1004D801C();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            sub_10037E0C8(v20, type metadata accessor for Collaboration.Flow);
            v30 = v55 ^ 1;
            return v30 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v50 = *(v46 + 8);
        v50(v47, v33);
        v50(v48, v33);
LABEL_23:
        sub_10037E0C8(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_10037E0C8(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    sub_10001074C(v42, &qword_100642790, &qword_10052F870);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10037E0C8(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_10037F660(v20, v15, v25, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v15, v63);
    goto LABEL_10;
  }

  v27 = v61;
  v26 = v62;
  v28 = v22;
  v29 = v63;
  (*(v62 + 32))(v61, v28, v63);
  v30 = sub_1004DCD2C();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  sub_10037E0C8(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_100004CB8(&qword_100641D98, &qword_10052FA30);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (sub_1004DF08C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v25 + 24);
  v16 = *(v10 + 48);
  sub_1000108DC(a1 + v15, v12, &unk_100642930, &unk_1005294A0);
  sub_1000108DC(a2 + v15, &v12[v16], &unk_100642930, &unk_1005294A0);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_10001074C(v12, &unk_100642930, &unk_1005294A0);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  sub_1000108DC(v12, v9, &unk_100642930, &unk_1005294A0);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    sub_10001074C(v12, &qword_100641D98, &qword_10052FA30);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_1003814E0(&qword_100641DA0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = sub_1004DD35C();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  sub_10001074C(v12, &unk_100642930, &unk_1005294A0);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_10037E074()
{
  result = qword_1006423C0;
  if (!qword_1006423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006423C0);
  }

  return result;
}

uint64_t sub_10037E0C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10037E148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10037E1CC(uint64_t a1)
{
  sub_10037E240(319);
  if (v1 <= 0x3F)
  {
    sub_1004DCDAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10037E240(uint64_t a1)
{
  if (!qword_100642468)
  {
    sub_100008DE4(&qword_1006423D0, &qword_10052F3C8);
    sub_1004D809C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100642468);
    }
  }
}

uint64_t sub_10037E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&unk_100642930, &unk_1005294A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10037E3A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&unk_100642930, &unk_1005294A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10037E458(uint64_t a1)
{
  sub_10037E8C0(319, &unk_100642500, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10037E510(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10037E510(uint64_t a1)
{
  if (!qword_1006416C0)
  {
    sub_1004DCC9C();
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1006416C0);
    }
  }
}

uint64_t sub_10037E57C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1004DD05C();
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

uint64_t sub_10037E698(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1004DD05C();
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

void sub_10037E79C(uint64_t a1)
{
  sub_10037E8C0(319, &unk_10063FED8, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      sub_1004DD05C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v4 <= 0x3F)
        {
          sub_1003473D0(319);
          if (v5 <= 0x3F)
          {
            sub_100338374();
            if (v6 <= 0x3F)
            {
              sub_10037E910(319);
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

void sub_10037E8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10037E910(uint64_t a1)
{
  if (!qword_1006425A0)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = sub_1004D9E0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1006425A0);
    }
  }
}

__n128 sub_10037E9F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10037EA18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10037EA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037EAD8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10037EB98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10037EC5C(uint64_t a1)
{
  result = type metadata accessor for InlineProfileEditingView.Context(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10037ED44()
{

  sub_10036E0E0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10037EDE0()
{
  result = qword_1006426C8;
  if (!qword_1006426C8)
  {
    sub_100008DE4(&qword_1006426C0, &qword_10052F698);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50, &qword_10052EE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426C8);
  }

  return result;
}

unint64_t sub_10037EE8C()
{
  result = qword_1006426D0;
  if (!qword_1006426D0)
  {
    sub_100008DE4(&qword_1006426D8, &unk_10052F6A0);
    sub_100042B08(&qword_100641B10, &qword_100641B18, &qword_10052E928, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100042B08(&unk_100642D10, &unk_100641A20, &unk_10052E7D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426D0);
  }

  return result;
}

uint64_t sub_10037EF70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10037EFF8()
{
  result = qword_1006426E8;
  if (!qword_1006426E8)
  {
    sub_100008DE4(&qword_1006426A8, &qword_10052F680);
    sub_10037F0DC(&qword_1006426F0, &qword_1006426A0, &qword_10052F678, sub_10037F160);
    sub_100042B08(&unk_100642D10, &unk_100641A20, &unk_10052E7D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426E8);
  }

  return result;
}

uint64_t sub_10037F0DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10037F160()
{
  result = qword_1006426F8;
  if (!qword_1006426F8)
  {
    sub_100008DE4(&qword_100642698, &qword_10052F670);
    sub_100042B08(&qword_100642700, &qword_100642708, &qword_10052F718, &protocol conformance descriptor for Button<A>);
    sub_100042B08(&qword_1006420B8, &qword_1006420C0, &qword_10052F720, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426F8);
  }

  return result;
}

uint64_t sub_10037F244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA71C();
  *a1 = result;
  return result;
}

uint64_t sub_10037F2AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

double sub_10037F3B0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_10037F3CC()
{
  result = qword_100642828;
  if (!qword_100642828)
  {
    sub_100008DE4(&qword_100642820, &unk_10052F908);
    sub_10037F484();
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642828);
  }

  return result;
}

unint64_t sub_10037F484()
{
  result = qword_100642830;
  if (!qword_100642830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642830);
  }

  return result;
}

unint64_t sub_10037F4D8()
{
  result = qword_100642848;
  if (!qword_100642848)
  {
    sub_100008DE4(&qword_100642840, &qword_10052F920);
    sub_10037F5B0(&qword_100642850, &qword_100642858, &qword_10052F928);
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642848);
  }

  return result;
}

uint64_t sub_10037F5B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10037F620()
{

  return swift_deallocObject();
}

uint64_t sub_10037F660(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10037F724()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004DCDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100004CB8(&qword_1006423C8, &qword_10052F3C0) + 48);
    v16 = sub_1004D809C();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10037F6CC(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_10037FAB4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_10037AA10(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_10037FBAC()
{
  result = qword_100642870;
  if (!qword_100642870)
  {
    sub_100008DE4(&qword_1006427C0, &qword_10052F8A8);
    sub_100042B08(&qword_100642878, &qword_1006427C8, &qword_10052F8B0, &protocol conformance descriptor for TupleView<A>);
    sub_10037FC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642870);
  }

  return result;
}

unint64_t sub_10037FC64()
{
  result = qword_100642880;
  if (!qword_100642880)
  {
    sub_100008DE4(&qword_100642888, &qword_10052F978);
    sub_10037FD1C();
    sub_100042B08(&qword_1006420B8, &qword_1006420C0, &qword_10052F720, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642880);
  }

  return result;
}

unint64_t sub_10037FD1C()
{
  result = qword_100642890;
  if (!qword_100642890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642890);
  }

  return result;
}

uint64_t sub_10037FD70()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004DCDAC();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100004CB8(&qword_1006423C8, &qword_10052F3C0);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10037F6CC(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_100380104(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100377C98(a1, v4);
}

uint64_t sub_10038017C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_1004DCDAC();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004DCC9C();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100004CB8(&qword_1006423C8, &qword_10052F3C0) + 48);
    v10 = sub_1004D809C();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1004DD05C();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_10037F6CC(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100380468(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1003804DC()
{
  result = qword_1006428D8;
  if (!qword_1006428D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006428D8);
  }

  return result;
}

uint64_t sub_100380530()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035B28;

  return sub_100379BF0();
}

double sub_100380620(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10038064C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_1004DCDAC();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_1004DCC9C();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100004CB8(&qword_1006423C8, &qword_10052F3C0) + 48);
    v11 = sub_1004D809C();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1004DD05C();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_10037F6CC(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100380910()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100377E78();
}

uint64_t sub_100380A00()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004DCDAC();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100004CB8(&qword_1006423C8, &qword_10052F3C0);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10037F6CC(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_100380D50(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004D809C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_100379DA4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100380EA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004DCDAC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_10037ACC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100380FF4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004DCDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100004CB8(&qword_1006423C8, &qword_10052F3C0) + 48);
    v16 = sub_1004D809C();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10037F6CC(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_100381344(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004DCDAC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_10037A668(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100381494()
{
  result = qword_1006428E0;
  if (!qword_1006428E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006428E0);
  }

  return result;
}

uint64_t sub_1003814E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100381598()
{
  result = qword_1006428F8;
  if (!qword_1006428F8)
  {
    sub_100008DE4(&qword_100642718, &qword_10052F730);
    sub_100008DE4(&qword_1006426B0, &qword_10052F688);
    sub_10037F0DC(&qword_1006426E0, &qword_1006426B0, &qword_10052F688, sub_10037EFF8);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_100642900, &qword_100642720, &qword_10052F738, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006428F8);
  }

  return result;
}

unint64_t sub_100381708()
{
  result = qword_100642918;
  if (!qword_100642918)
  {
    sub_100008DE4(&qword_100642920, qword_10052FA58);
    sub_100042B08(&unk_100642D10, &unk_100641A20, &unk_10052E7D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642918);
  }

  return result;
}

unint64_t sub_1003817C4()
{
  result = qword_100642928;
  if (!qword_100642928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642928);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_10038733C(v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000108DC(a1, &v7 - v4, &unk_100642930, &unk_1005294A0);
  sub_1000108DC(v5, v3, &unk_100642930, &unk_1005294A0);
  sub_1004D9B2C();
  sub_10001074C(a1, &unk_100642930, &unk_1005294A0);
  return sub_10001074C(v5, &unk_100642930, &unk_1005294A0);
}

uint64_t sub_1003819D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_100381A9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_100381B10(void *a1)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  sub_1004D9B7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = sub_1004DCC9C();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000108DC(v6, v4, &unk_100642930, &unk_1005294A0);

    sub_1004D9B7C();

    sub_10001074C(v6, &unk_100642930, &unk_1005294A0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  v75 = *(v0 - 8);
  v76 = v0;
  __chkstk_darwin();
  v74 = &v68 - v1;
  v73 = sub_100004CB8(&qword_100642948, &qword_10052FAD8);
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v4 = sub_100004CB8(&qword_100642950, &qword_10052FAE0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v68 - v6;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v68 - v9;
  __chkstk_darwin();
  v11 = &v68 - v10;
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = sub_1004DCC9C();
  v77 = *(v15 - 8);
  v78 = v15;
  (*(v77 + 56))(v13, 1, 1);
  sub_1000108DC(v13, v11, &unk_100642930, &unk_1005294A0);
  v68 = v11;
  sub_1004D9B2C();
  v16 = v13;
  sub_10001074C(v13, &unk_100642930, &unk_1005294A0);
  v17 = v72;
  (*(v5 + 32))(v72 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1004D9B2C();
  (*(v71 + 32))(v17 + v18, v3, v73);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v80 = 0;
  sub_100004CB8(&qword_10063E4C0, &qword_100529168);
  v20 = v74;
  sub_1004D9B2C();
  (*(v75 + 32))(v17 + v19, v20, v76);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = sub_1004DD43C();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v26;
    v81 = v28;

    sub_1004D9B7C();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = sub_1004DD21C();

        sub_10037262C(v32);
        v34 = v33;

        if (v34)
        {
          sub_1004DCC1C();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000108DC(v16, v68, &unk_100642930, &unk_1005294A0);

          sub_1004D9B7C();
          sub_10001074C(v16, &unk_100642930, &unk_1005294A0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v36 = v80;
  v35 = v81;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v77;
  v38 = v78;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v70;
    sub_1004D9B6C();

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {

LABEL_25:
      sub_10001074C(v40, &unk_100642930, &unk_1005294A0);
      return v17;
    }

    sub_10001074C(v40, &unk_100642930, &unk_1005294A0);
  }

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100511AB0;
  *(v41 + 32) = CNContactThumbnailImageDataKey;
  v79 = v41;
  v42 = objc_opt_self();
  v43 = CNContactThumbnailImageDataKey;
  v44 = [v42 descriptorForRequiredKeysForStyle:0];
  sub_1004DD84C();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  v45 = [objc_allocWithZone(CNContactStore) init];
  sub_100004CB8(&qword_100642978, &qword_10052FB88);
  isa = sub_1004DD85C().super.isa;

  v80 = 0;
  v47 = [v45 _ios_meContactWithKeysToFetch:isa error:&v80];

  v48 = v80;
  if (!v47)
  {
    v66 = v80;
    sub_1004D7F4C();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  sub_1004D9B6C();

  v51 = v80;
  v50 = v81;

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    v53 = [v42 stringFromContact:v47 style:0];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1004DD43C();
      v57 = v56;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v55;
      v81 = v57;

      sub_1004D9B7C();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v69;
  sub_1004D9B6C();

  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {

    goto LABEL_25;
  }

  sub_10001074C(v40, &unk_100642930, &unk_1005294A0);
  v58 = [v47 thumbnailImageData];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1004D810C();
    v62 = v61;

    v63 = objc_allocWithZone(UIImage);
    sub_100010530(v60, v62);
    v64 = sub_1004D80FC().super.isa;
    v65 = [v63 initWithData:v64];

    sub_100010598(v60, v62);
    sub_100381B10(v65);

    sub_100010598(v60, v62);
  }

  else
  {
  }

  return v17;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100382A24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v4 = sub_1004DCC9C();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_10001074C(v2, &unk_100642930, &unk_1005294A0);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100004CB8(&qword_100642950, &qword_10052FAE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100004CB8(&qword_100642948, &qword_10052FAD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100004CB8(&qword_100642950, &qword_10052FAE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100004CB8(&qword_100642948, &qword_10052FAD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100382E70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context(uint64_t a1)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_1003874DC();

  return sub_1004DA13C();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DD3EC();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = sub_100004CB8(&qword_100642988, &qword_10052FBD8) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_100004CB8(&qword_100642990, &qword_10052FBE0) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = sub_100004CB8(&qword_100642998, &qword_10052FBE8) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = sub_100004CB8(&qword_1006429A0, &qword_10052FBF0);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = sub_100004CB8(&qword_1006429A8, &qword_10052FBF8);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = sub_100004CB8(&qword_1006429B0, &qword_10052FC00);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = sub_1004DA7CC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = sub_100004CB8(&qword_1006429B8, &qword_10052FC08);
  sub_100383894(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = sub_1004DB8CC();
  v24 = sub_1004DAF2C();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v9, v12, &qword_100642988, &qword_10052FBD8);
  v26 = &v12[*(v10 + 44)];
  v27 = v91;
  *(v26 + 4) = v90;
  *(v26 + 5) = v27;
  *(v26 + 6) = v92;
  v28 = v87;
  *v26 = v86;
  *(v26 + 1) = v28;
  v29 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v29;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v12, v15, &qword_100642990, &qword_10052FBE0);
  v30 = &v15[*(v13 + 44)];
  v31 = v98;
  *(v30 + 4) = v97;
  *(v30 + 5) = v31;
  *(v30 + 6) = v99;
  v32 = v94;
  *v30 = v93;
  *(v30 + 1) = v32;
  v33 = v96;
  *(v30 + 2) = v95;
  *(v30 + 3) = v33;
  v34 = *(v16 + 36);
  v35 = v79;
  v36 = &v79[v34];
  v37 = *(sub_1004DA43C() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_1004DA88C();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(sub_100004CB8(&unk_1006429C0, &qword_10052F9A0) + 36)] = 256;
  sub_100047F38(v15, v35, &qword_100642998, &qword_10052FBE8);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DBA0C();
  v66[1] = v66;
  v82 = v45;
  sub_100004CB8(&qword_1006429D0, &qword_10052FC10);
  sub_10038753C();
  v46 = sub_1002E6780();
  sub_100042B08(&qword_100642A08, &qword_1006429D0, &qword_10052FC10, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  sub_1004DB57C();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  sub_10001074C(v48, &qword_1006429A0, &qword_10052FBF0);
  v53 = sub_1004DBD1C();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  sub_100386178(v50, v57);
  v58 = (v57 + *(sub_100004CB8(&qword_100642A10, &qword_10052FC28) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  sub_1004DD37C();
  (*(v52 + 16))(v51, v49, v59);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v60 = qword_1006734A0;
  sub_1004D838C();
  v61 = sub_1004DD4AC();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  sub_1004DBA0C();
  v79 = v66;
  __chkstk_darwin();
  sub_100004CB8(&qword_100642A18, &qword_10052FC30);
  sub_1003877C0();
  sub_100042B08(&qword_100642A30, &qword_100642A18, &qword_10052FC30, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  sub_1004DB65C();

  return sub_10001074C(v64, &qword_1006429B0, &qword_10052FC00);
}

uint64_t sub_100383894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = sub_100004CB8(&qword_100642C38, &qword_10052FE08);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  sub_100004CB8(&unk_100642C40, &unk_10052FE10);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  sub_1004D83FC();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1004DD3EC();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = sub_100004CB8(&qword_100641A00, &qword_10052E7C0);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = sub_100004CB8(&qword_100642C50, &qword_10052FE20);
  __chkstk_darwin();
  v224 = (v188 - v11);
  sub_100004CB8(&qword_100642C58, &qword_10052FE28);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = sub_1004DB8FC();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_100004CB8(&unk_100642C60, &qword_10052FE30);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = sub_1004DCC0C();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004D934C();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin();
  v213 = v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = v188 - v20;
  __chkstk_darwin();
  v205 = v188 - v21;
  __chkstk_darwin();
  v215 = v188 - v22;
  v216 = sub_1004D92BC();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = v188 - v28;
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = sub_100004CB8(&qword_100642C78, &unk_10052FE38);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = sub_100004CB8(&unk_100642C80, &qword_10052F930);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = sub_100004CB8(&qword_1006427A8, &qword_10052F888);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = sub_100004CB8(&qword_100642C90, &qword_10052F890);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  sub_100004CB8(&qword_100642C98, &qword_10052FE48);
  __chkstk_darwin();
  v223 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = v188 - v45;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v229 = a1;
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    sub_1004DB8DC();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = sub_1004DB94C();

    (*(v47 + 8))(v48, v49);
    sub_1004DBD1C();
    sub_1004D9F5C();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = sub_1004DAF2C();
    sub_1004D9C8C();
    v244 = 0;
    v245._countAndFlagsBits = v237;
    v245._object = v50;
    LOBYTE(v246._countAndFlagsBits) = v51;
    v246._object = v52;
    LOBYTE(v247._countAndFlagsBits) = v53;
    v247._object = v55;
    v248._countAndFlagsBits = v54;
    LOWORD(v248._object) = 256;
    *(&v248._object + 2) = v251;
    HIWORD(v248._object) = WORD2(v251);
    LOBYTE(v249._countAndFlagsBits) = v47;
    HIDWORD(v249._countAndFlagsBits) = *(v243 + 3);
    *(&v249._countAndFlagsBits + 1) = v243[0];
    v249._object = v56;
    *&v250[0] = v57;
    *(&v250[0] + 1) = v58;
    *&v250[1] = v59;
    BYTE8(v250[1]) = 0;
    v60 = v248;
    v61 = v250[0];
    v62 = v220;
    v220[4] = v249;
    v62[5] = v61;
    *(v62 + 89) = *(v250 + 9);
    v63 = v246;
    v64 = v247;
    *v62 = v245;
    v62[1] = v63;
    v62[2] = v64;
    v62[3] = v60;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v245, v243, &qword_100642CA8, &qword_10052FE50);
    sub_100004CB8(&qword_100642CA8, &qword_10052FE50);
    sub_100387DD4();
    sub_100387FC0();
    v65 = v221;
    sub_1004DAADC();

    sub_10001074C(&v245, &qword_100642CA8, &qword_10052FE50);
    v66 = v239;
    goto LABEL_18;
  }

  v190 = v37;
  v191 = v41;
  v192 = v34;
  v209 = v36;
  v210 = v39;
  v211 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v193;
  sub_1004D9B6C();

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = sub_1004DCC9C();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    sub_10001074C(v68, &qword_100641A60, &qword_10052C450);
    sub_10001074C(v67, &unk_100642930, &unk_1005294A0);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(v68, v73 + *(v72 + 20), &qword_100641A60, &qword_10052C450);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  sub_1000108DC(v73, v195, &qword_100642C70, &qword_100527540);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_10001074C(v76, &qword_100642C70, &qword_100527540);
    v78 = 1;
    v79 = v196;
    v80 = v197;
    v81 = v189;
  }

  else
  {
    v79 = v196;
    v81 = v189;
    (*(v70 + 16))(v196, v76, v189);
    sub_10038824C(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  sub_1000108DC(v79, v80, &unk_100642930, &unk_1005294A0);
  sub_1004D933C();
  sub_10001074C(v79, &unk_100642930, &unk_1005294A0);
  sub_1004D92EC();
  v82 = v198;
  sub_1000108DC(v237, v198, &qword_100642C70, &qword_100527540);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    sub_10001074C(v82, &qword_100642C70, &qword_100527540);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = sub_100035430(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      sub_10001074C(v93, &qword_100641A60, &qword_10052C450);
    }

    goto LABEL_17;
  }

  v85 = v199;
  sub_1000108DC(v82 + *(v72 + 20), v199, &qword_100641A60, &qword_10052C450);
  sub_10038824C(v82, type metadata accessor for ArtworkImage.ViewModel);
  v87 = v217;
  v88 = v236;
  v89 = (*(v217 + 48))(v85, 1, v236);
  v66 = v239;
  v86 = v206;
  if (v89 == 1)
  {
    goto LABEL_12;
  }

  v96 = v85;
  v94 = v204;
  (*(v87 + 32))(v204, v96, v88);
  v95 = v87;
LABEL_17:
  v97 = v203;
  v98 = v213;
  sub_1004D92CC();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  sub_1004D92FC();
  v99(v97, v84);
  sub_1003386E4();
  v101 = v200;
  sub_1004D92DC();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  sub_10001074C(v237, &qword_100642C70, &qword_100527540);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  sub_100047F38(v102, v210, &unk_100642C80, &qword_10052F930);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = sub_1004DAF2C();
  sub_1004D9C8C();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  sub_100047F38(v105, v191, &qword_1006427A8, &qword_10052F888);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  sub_100047F38(v114, v211, &qword_100642C90, &qword_10052F890);
  sub_1000108DC(v116, v220, &qword_100642C90, &qword_10052F890);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100642CA8, &qword_10052FE50);
  sub_100387DD4();
  sub_100387FC0();
  v65 = v221;
  sub_1004DAADC();
  sub_10001074C(v116, &qword_100642C90, &qword_10052F890);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &static AccessibilityIdentifier.artistFavorite;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v120 = String.trim()();

    v245 = v120;
    sub_1002E6780();
    v121 = sub_1004DB34C();
    v123 = v122;
    v125 = v124;
    v126 = sub_1004DB29C();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    sub_100051E10(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &static AccessibilityIdentifier.artistFavorite;
    swift_storeEnumTagMultiPayload();
    sub_10036D6E0();
    sub_1004DAADC();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    sub_1004DD37C();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v139 = qword_1006734A0;
    sub_1004D838C();
    v140 = sub_1004DD4AC();
    v142 = v141;
    (*(v138 + 8))(v240, v136);
    v251 = v140;
    v252 = v142;
    v143 = swift_allocObject();
    v144 = v229;
    v145 = *(v229 + 48);
    v143[3] = *(v229 + 32);
    v143[4] = v145;
    v143[5] = v144[4];
    v146 = v144[1];
    v143[1] = *v144;
    v143[2] = v146;
    sub_10037F300(v144, &v245);
    sub_1002E6780();
    v147 = v208;
    sub_1004DBA6C();
    v148 = sub_1004DB8AC();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    sub_1000108DC(v147, v150, &qword_100641A00, &qword_10052E7C0);
    swift_storeEnumTagMultiPayload();
    sub_10036D6E0();
    sub_1004DAADC();
    sub_10001074C(v147, &qword_100641A00, &qword_10052E7C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    sub_1004DD37C();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v156 = v119[148];
    sub_1004D838C();
    v157 = sub_1004DD4AC();
    v159 = v158;
    (*(v155 + 8))(v240, v136);
    v251 = v157;
    v252 = v159;
    v160 = swift_allocObject();
    v161 = v229;
    v162 = *(v229 + 48);
    v160[3] = *(v229 + 32);
    v160[4] = v162;
    v160[5] = v161[4];
    v163 = v161[1];
    v160[1] = *v161;
    v160[2] = v163;
    sub_10037F300(v161, &v245);
    sub_1002E6780();
    v164 = v212;
    sub_1004DBA6C();
    LOBYTE(v160) = sub_1004DAF7C();
    sub_1004D9C8C();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(sub_100004CB8(&qword_100642D20, &qword_10052FE68) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(sub_100004CB8(&qword_100642D28, &qword_10052FEA0) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    sub_100047F38(v164, v176, &qword_100642C38, &qword_10052FE08);
    v178 = 0;
  }

  else
  {
    v178 = 1;
    v177 = v232;
    v176 = v233;
  }

  (*(v231 + 56))(v176, v178, 1, v177);
  v179 = v223;
  v180 = v65;
  sub_1000108DC(v65, v223, &qword_100642C98, &qword_10052FE48);
  v181 = v241;
  v182 = v230;
  sub_1000108DC(v241, v230, &qword_100642C58, &qword_10052FE28);
  v183 = v234;
  sub_1000108DC(v176, v234, &unk_100642C40, &unk_10052FE10);
  v184 = v235;
  sub_1000108DC(v179, v235, &qword_100642C98, &qword_10052FE48);
  v185 = sub_100004CB8(&unk_100642D30, &qword_10052FEA8);
  sub_1000108DC(v182, v184 + v185[12], &qword_100642C58, &qword_10052FE28);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  sub_1000108DC(v183, v184 + v185[20], &unk_100642C40, &unk_10052FE10);
  sub_10001074C(v176, &unk_100642C40, &unk_10052FE10);
  sub_10001074C(v181, &qword_100642C58, &qword_10052FE28);
  sub_10001074C(v180, &qword_100642C98, &qword_10052FE48);
  sub_10001074C(v183, &unk_100642C40, &unk_10052FE10);
  sub_10001074C(v182, &qword_100642C58, &qword_10052FE28);
  return sub_10001074C(v179, &qword_100642C98, &qword_10052FE48);
}

uint64_t sub_1003854E8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  sub_100004CB8(&qword_100642C28, &qword_10052FDF8);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  sub_1004D83FC();
  __chkstk_darwin();
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = sub_100004CB8(&unk_100641A10, &qword_10052E7C8);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v72 - v12;
  __chkstk_darwin();
  v85 = &v72 - v13;
  __chkstk_darwin();
  v80 = &v72 - v14;
  __chkstk_darwin();
  v88 = &v72 - v15;
  __chkstk_darwin();
  v91 = &v72 - v16;
  sub_1004DD37C();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v17 = qword_1006734A0;
  v18 = qword_1006734A0;
  sub_1004D838C();
  v83 = v18;
  v19 = sub_1004DD4AC();
  v84 = v8;
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v90;
  v22(v10, v90);
  v94 = v19;
  v95 = v21;
  v24 = swift_allocObject();
  v25 = v6 + 8;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  v24[5] = a1[4];
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  sub_10037F300(a1, v93);
  v28 = sub_1002E6780();
  sub_1004DBA6C();
  sub_1004DD37C();
  v89(v84, v10, v23);
  sub_1004D838C();
  v79 = v17;
  v29 = v22;
  v30 = sub_1004DD4AC();
  v32 = v31;
  v78 = v25;
  v22(v10, v23);
  v94 = v30;
  v95 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  sub_10037F300(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  sub_1004DBA6C();
  v38 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v39 = v83;
    v73 = v29;
    v40 = v89;
    v41 = v90;
    v42 = [objc_opt_self() currentTraitCollection];
    v43 = [v42 userInterfaceIdiom];

    if (v43 == 6)
    {
      v38 = 1;
      v36 = v88;
      v29 = v73;
    }

    else
    {
      sub_1004DD37C();
      v40(v37, v10, v41);
      v44 = v39;
      sub_1004D838C();
      v45 = sub_1004DD4AC();
      v47 = v46;
      v29 = v73;
      v73(v10, v41);
      v94 = v45;
      v95 = v47;
      v48 = swift_allocObject();
      v49 = a1[3];
      v48[3] = a1[2];
      v48[4] = v49;
      v48[5] = a1[4];
      v50 = a1[1];
      v48[1] = *a1;
      v48[2] = v50;
      sub_10037F300(a1, v93);
      v51 = v80;
      sub_1004DBA6C();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  sub_1004DD37C();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  sub_1004D838C();
  v56 = sub_1004DD4AC();
  v58 = v57;
  v29(v10, v54);
  v94 = v56;
  v95 = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v59[5] = a1[4];
  v61 = a1[1];
  v59[1] = *a1;
  v59[2] = v61;
  sub_10037F300(a1, v93);
  v62 = v80;
  sub_1004DBA6C();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  sub_1000108DC(v92, v76, &qword_100642C28, &qword_10052FDF8);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = sub_100004CB8(&qword_100642C30, &qword_10052FE00);
  v63(&v68[v69[12]], v65, v53);
  sub_1000108DC(v66, &v68[v69[16]], &qword_100642C28, &qword_10052FDF8);
  v63(&v68[v69[20]], v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  sub_10001074C(v92, &qword_100642C28, &qword_10052FDF8);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  sub_10001074C(v66, &qword_100642C28, &qword_10052FDF8);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t sub_100385F64(uint64_t a1, char a2)
{
  sub_100004CB8(&unk_100642C10, &qword_10052FDB0);
  sub_1004DB9FC();
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  return sub_1004DB9FC();
}

uint64_t sub_100385FF0(uint64_t a1)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(a1 + 8);
  sub_100381B10(0);
  v7 = sub_1004DCC9C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(v5, v3, &unk_100642930, &unk_1005294A0);

  sub_1004D9B7C();
  sub_10001074C(v5, &unk_100642930, &unk_1005294A0);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v6 + v8) = 1;
  return result;
}

uint64_t sub_100386178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_1003874DC();
  sub_1004DA14C();
  swift_getKeyPath();
  sub_1004DA15C();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  sub_100004CB8(&unk_100642C10, &qword_10052FDB0);
  sub_1004DBA0C();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DBA0C();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0, &qword_100530610);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_1004DBD1C();
  sub_1004D9F5C();
  v19 = v25;
  sub_100387CEC(v5, v25);
  v20 = (v19 + *(sub_100004CB8(&qword_100642C20, &qword_10052FDF0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_10038824C(v5, type metadata accessor for ImagePicker);
}

void sub_100386418(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_100386498@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  sub_100004CB8(&unk_100642BE0, &qword_10052E7E0);
  __chkstk_darwin();
  v80 = &v68 - v3;
  v4 = sub_100004CB8(&unk_100641A10, &qword_10052E7C8);
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin();
  v82 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v68 - v6;
  __chkstk_darwin();
  v77 = &v68 - v7;
  v76 = sub_100004CB8(&qword_100642BF0, &qword_10052FD60);
  __chkstk_darwin();
  v90 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v68 - v9;
  __chkstk_darwin();
  v89 = &v68 - v10;
  sub_1004D83FC();
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DD3EC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  v79 = sub_100004CB8(&qword_100642BF8, &qword_10052FD68);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v88 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v68 - v20;
  v81 = a1;
  v21 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v21;
  sub_1004D9B6C();

  v74 = v95;
  v73 = v96;
  sub_1004DD37C();
  v22 = *(v14 + 16);
  v87 = v14 + 16;
  v86 = v22;
  v22(v16, v18, v13);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v23 = qword_1006734A0;
  v24 = qword_1006734A0;
  v68 = v12;
  sub_1004D838C();
  v25 = v24;
  v69 = v16;
  v71 = v23;
  v26 = sub_1004DD4AC();
  v28 = v27;
  v85 = *(v14 + 8);
  v85(v18, v13);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_1003874DC();
  sub_1004DA14C();
  swift_getKeyPath();
  sub_1004DA15C();

  v97 = v26;
  v98 = v28;
  v72 = sub_1002E6780();
  sub_1004DBDEC();
  sub_1004DD37C();
  v29 = v69;
  v70 = v13;
  v86(v69, v18, v13);
  sub_1004D838C();
  v30 = sub_1004DD4AC();
  v32 = v31;
  v85(v18, v13);
  v95 = v30;
  v96 = v32;
  v33 = v77;
  sub_1004DBA6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v34 = String.trim()();

  v35 = (v34._object >> 56) & 0xF;
  if ((v34._object & 0x2000000000000000) == 0)
  {
    v35 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v36 = v35 == 0;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v92;
  v40 = v75;
  (*(v92 + 32))(v75, v33, v93);
  v41 = (v40 + *(v76 + 36));
  *v41 = KeyPath;
  v41[1] = sub_100370B8C;
  v41[2] = v38;
  v42 = v89;
  sub_100047F38(v40, v89, &qword_100642BF0, &qword_10052FD60);
  sub_1004DD37C();
  v43 = v70;
  v86(v29, v18, v70);
  sub_1004D838C();
  v44 = sub_1004DD4AC();
  v46 = v45;
  v85(v18, v43);
  v97 = v44;
  v98 = v46;
  v47 = v80;
  sub_1004D9C6C();
  v48 = sub_1004D9C7C();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = swift_allocObject();
  v50 = v81;
  v51 = *(v81 + 3);
  *(v49 + 48) = *(v81 + 2);
  *(v49 + 64) = v51;
  *(v49 + 80) = v50[4];
  v52 = v50[1];
  *(v49 + 16) = *v50;
  *(v49 + 32) = v52;
  v53 = v73;
  *(v49 + 96) = v74;
  *(v49 + 104) = v53;
  sub_10037F300(v50, &v95);
  v54 = v91;
  sub_1004DBA5C();
  v55 = v78;
  v56 = *(v78 + 16);
  v57 = v88;
  v58 = v79;
  v56(v88, v94, v79);
  sub_1000108DC(v42, v90, &qword_100642BF0, &qword_10052FD60);
  v59 = *(v39 + 16);
  v60 = v82;
  v61 = v93;
  v59(v82, v54, v93);
  v62 = v83;
  v56(v83, v57, v58);
  v63 = sub_100004CB8(&qword_100642C00, &qword_10052FDA0);
  v64 = v90;
  sub_1000108DC(v90, &v62[*(v63 + 48)], &qword_100642BF0, &qword_10052FD60);
  v59(&v62[*(v63 + 64)], v60, v61);
  v65 = *(v92 + 8);
  v65(v91, v61);
  sub_10001074C(v89, &qword_100642BF0, &qword_10052FD60);
  v66 = *(v55 + 8);
  v66(v94, v58);
  v65(v60, v61);
  sub_10001074C(v64, &qword_100642BF0, &qword_10052FD60);
  return (v66)(v88, v58);
}

void sub_100386FA4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_100387024(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_1003870A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_1000108DC(&v7, v6, &qword_100642C08, &qword_10052FDA8);

  return sub_1004D9B7C();
}

double sub_100387190(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

uint64_t sub_10038720C(uint64_t a1, uint64_t *a2)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000108DC(a1, &v8 - v5, &unk_100642930, &unk_1005294A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(v6, v4, &unk_100642930, &unk_1005294A0);

  sub_1004D9B7C();
  return sub_10001074C(v6, &unk_100642930, &unk_1005294A0);
}

uint64_t sub_10038733C@<X0>(uint64_t a2@<X8>)
{
  sub_1004DB9DC();
  sub_1004DB9DC();
  sub_1004DB9DC();
  sub_1004DB9DC();
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_1003874DC();
  result = sub_1004DA13C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

void sub_100387460(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100381B10(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context(uint64_t a1)
{
  result = qword_100642A60;
  if (!qword_100642A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003874DC()
{
  result = qword_100642980;
  if (!qword_100642980)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642980);
  }

  return result;
}

unint64_t sub_10038753C()
{
  result = qword_1006429D8;
  if (!qword_1006429D8)
  {
    sub_100008DE4(&qword_1006429A0, &qword_10052FBF0);
    sub_100387650(&qword_1006429E0, &qword_100642998, &qword_10052FBE8, sub_100387620);
    sub_100042B08(&qword_10063F5A8, &unk_1006429C0, &qword_10052F9A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006429D8);
  }

  return result;
}

uint64_t sub_100387650(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003876D4()
{
  result = qword_1006429F0;
  if (!qword_1006429F0)
  {
    sub_100008DE4(&qword_100642988, &qword_10052FBD8);
    sub_100042B08(&qword_1006429F8, &qword_100642A00, &qword_10052FC18, &protocol conformance descriptor for HStack<A>);
    sub_100042B08(&qword_1006421E8, &qword_1006421F0, &qword_10052FC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006429F0);
  }

  return result;
}

unint64_t sub_1003877C0()
{
  result = qword_100642A20;
  if (!qword_100642A20)
  {
    sub_100008DE4(&qword_1006429B0, &qword_10052FC00);
    sub_100008DE4(&qword_1006429A0, &qword_10052FBF0);
    sub_100008DE4(&qword_1006429D0, &qword_10052FC10);
    sub_10038753C();
    sub_1002E6780();
    sub_100042B08(&qword_100642A08, &qword_1006429D0, &qword_10052FC10, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_100642A28, &qword_100642A10, &qword_10052FC28, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642A20);
  }

  return result;
}

uint64_t sub_10038794C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100387994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100387A00(uint64_t a1)
{
  sub_100236040(319, &qword_100642A70, &unk_100642930, &unk_1005294A0);
  if (v1 <= 0x3F)
  {
    sub_100387B3C();
    if (v2 <= 0x3F)
    {
      sub_100236040(319, &unk_100642A80, &qword_10063E4C0, &qword_100529168);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100387B3C()
{
  if (!qword_100642A78)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100642A78);
    }
  }
}

uint64_t sub_100387B8C()
{
  sub_100008DE4(&qword_1006429B0, &qword_10052FC00);
  sub_100008DE4(&qword_100642A18, &qword_10052FC30);
  sub_1003877C0();
  sub_1002E6780();
  sub_100042B08(&qword_100642A30, &qword_100642A18, &qword_10052FC30, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100387C7C()
{

  return swift_deallocObject();
}

uint64_t sub_100387CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100387D9C()
{

  return swift_deallocObject();
}

unint64_t sub_100387DD4()
{
  result = qword_100642CB0;
  if (!qword_100642CB0)
  {
    sub_100008DE4(&qword_100642CA8, &qword_10052FE50);
    sub_100387E8C(&qword_100642CB8, &qword_100642CC0, &qword_10052FE58, sub_100387F3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CB0);
  }

  return result;
}

uint64_t sub_100387E8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    a4();
    sub_100042B08(&unk_100642340, &qword_100642CE0, &qword_10052F370, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100387F3C()
{
  result = qword_100642CC8;
  if (!qword_100642CC8)
  {
    sub_100008DE4(&unk_100642CD0, &qword_10052FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CC8);
  }

  return result;
}

unint64_t sub_100387FC0()
{
  result = qword_100642CE8;
  if (!qword_100642CE8)
  {
    sub_100008DE4(&qword_100642C90, &qword_10052F890);
    sub_100387E8C(&qword_100642CF0, &qword_1006427A8, &qword_10052F888, sub_100388078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CE8);
  }

  return result;
}

unint64_t sub_100388078()
{
  result = qword_100642CF8;
  if (!qword_100642CF8)
  {
    sub_100008DE4(&unk_100642C80, &qword_10052F930);
    sub_1003386E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CF8);
  }

  return result;
}

uint64_t sub_100388190()
{

  return swift_deallocObject();
}

uint64_t sub_10038824C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  a3();
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a8;
  v18[3] = a9;
  v15 = type metadata accessor for HeightLimitedButtonTextView(0, v18);
  result = a4();
  v17 = (a7 + *(v15 + 56));
  *v17 = a1;
  v17[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
  v31 = a1 + 5;
  v3 = a1[2];
  sub_1004DA32C();
  sub_1004DA32C();
  v29 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _CompositingGroupEffect;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v40 = sub_1004DBA7C();
  v41 = sub_1004DA3FC();
  v42 = swift_getWitnessTable();
  v43 = sub_100388920();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  v24[3] = swift_getWitnessTable();
  v24[0] = sub_1004D9F4C();
  v27 = *(v24[0] - 8);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = sub_1004DA32C();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v24[1] = swift_getWitnessTable();
  v24[2] = sub_1004DA46C();
  v9 = sub_1004DA32C();
  v25 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = a1[4];
  v15 = v30;
  sub_1004DB68C();
  sub_1004DAEFC();
  *&v16 = v14;
  *(&v16 + 1) = *v31;
  *&v17 = v3;
  *(&v17 + 1) = v29;
  v33 = v17;
  v34 = v16;
  v35 = v15;
  sub_1004D9F3C();
  sub_1004DBD1C();
  v18 = sub_1003896F4();
  v38 = v14;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24[0];
  sub_1004DB6CC();
  (*(v27 + 8))(v5, v20);
  (*(v26 + 8))(v8, v6);
  v21 = swift_getWitnessTable();
  v36 = v19;
  v37 = v21;
  swift_getWitnessTable();
  sub_100339DC8();
  v22 = *(v25 + 8);
  v22(v11, v9);
  sub_100339DC8();
  return (v22)(v13, v9);
}

unint64_t sub_100388920()
{
  result = qword_100642D48;
  if (!qword_100642D48)
  {
    sub_1004DA3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642D48);
  }

  return result;
}

uint64_t sub_100388978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a3;
  v50 = a1;
  v72 = a6;
  v8 = sub_1004DA3FC();
  v60 = v8;
  v71 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  v10 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _CompositingGroupEffect;
  v54 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v66 = v10;
  v65 = swift_getWitnessTable();
  v11 = sub_1004DBA7C();
  v61 = v11;
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v48 - v12;
  v13 = swift_getWitnessTable();
  v59 = v13;
  v58 = sub_100388920();
  v82 = v11;
  v83 = v8;
  v84 = v13;
  v85 = v58;
  v62 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v15;
  sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
  v49 = a2;
  v16 = sub_1004DA32C();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - v18;
  v20 = sub_1004DA32C();
  v73 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v48 - v23;
  sub_1004DB75C();
  v25 = sub_100389F10();
  v81[4] = a4;
  v81[5] = v25;
  v26 = a4;
  v27 = swift_getWitnessTable();
  sub_1004DB74C();
  (*(v17 + 8))(v19, v16);
  v81[2] = v27;
  v81[3] = &protocol witness table for _FixedSizeLayout;
  v52 = swift_getWitnessTable();
  v28 = v24;
  v51 = v22;
  sub_100339DC8();
  v53 = *(v73 + 8);
  v54 = (v73 + 8);
  v53(v22, v20);
  v29 = v49;
  v30 = v68;
  v82 = v49;
  v83 = v68;
  v31 = v69;
  v84 = v26;
  v85 = v69;
  type metadata accessor for HeightLimitedButtonTextView(0, &v82);
  v74 = v29;
  v75 = v30;
  v76 = v26;
  v77 = v31;
  v78 = v50;

  v32 = v56;
  sub_1004DBA3C();
  v33 = v70;
  sub_1004DA3EC();
  v34 = v55;
  v35 = v61;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  sub_1004DB3DC();
  (*(v71 + 8))(v33, v36);
  (*(v67 + 8))(v32, v35);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = OpaqueTypeMetadata2;
  sub_100339DC8();
  v42 = v63;
  v43 = *(v63 + 8);
  v44 = v34;
  v43(v34, v41);
  v45 = v51;
  (*(v73 + 16))(v51, v28, v20);
  v82 = v45;
  (*(v42 + 16))(v44, v40, v41);
  v83 = v44;
  v81[0] = v20;
  v81[1] = v41;
  v79 = v52;
  v80 = OpaqueTypeConformance2;
  sub_10039B8E8(&v82, 2uLL, v81);
  v43(v40, v41);
  v46 = v53;
  v53(v28, v20);
  v43(v44, v41);
  return v46(v45, v20);
}

uint64_t sub_1003891A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v24 = a6;
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v6 = sub_1004DBB4C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = sub_1004DA32C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_1004DA92C();
  sub_1004DA79C();
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  sub_1004DBB3C();
  WitnessTable = swift_getWitnessTable();
  sub_1004DB4EC();
  (*(v7 + 8))(v9, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_100339DC8();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_100339DC8();
  return (v17)(v15, v10);
}

uint64_t sub_10038947C@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a6;
  v9 = *(a3 - 1);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  v26 = v20;
  sub_100339DC8();
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v21 = v27;
  v35 = v27;
  type metadata accessor for HeightLimitedButtonTextView(0, &v32);
  sub_100339DC8();
  (*(v15 + 16))(v17, v19, a2);
  v32 = v17;
  (*(v9 + 16))(v11, v13, a3);
  v33 = v11;
  v31[0] = a2;
  v31[1] = a3;
  v29 = v26;
  v30 = v21;
  sub_10039B8E8(&v32, 2uLL, v31);
  v22 = *(v9 + 8);
  v22(v13, a3);
  v23 = *(v15 + 8);
  v23(v19, a2);
  v22(v11, a3);
  return (v23)(v17, a2);
}

unint64_t sub_1003896F4()
{
  result = qword_100642D50[0];
  if (!qword_100642D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100642D50);
  }

  return result;
}

unint64_t sub_100389798(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_100338374();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10038983C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_100389A0C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_100389C70(void *a1)
{
  sub_1004DA32C();
  sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DBA7C();
  sub_1004DA3FC();
  swift_getWitnessTable();
  sub_100388920();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004D9F4C();
  swift_getWitnessTable();
  sub_1004DA46C();
  sub_1004DA32C();
  sub_1003896F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100389F10()
{
  result = qword_100642DD8;
  if (!qword_100642DD8)
  {
    sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642DD8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DC50, &unk_10052D340);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel(uint64_t a1)
{
  result = qword_100642E98;
  if (!qword_100642E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_1004DB31C();
  v81 = *(v1 - 8);
  v82 = v1;
  __chkstk_darwin();
  v80 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DA74C();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin();
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100642758, &qword_10052F7A0);
  v77 = v5;
  __chkstk_darwin();
  v7 = &v72 - v6;
  v8 = sub_100004CB8(&qword_100642DE0, &qword_10052FFE0);
  __chkstk_darwin();
  v78 = &v72 - v9;
  Int.seconds.getter(44);
  sub_1004DA84C();
  v10 = sub_1004DB32C();
  v12 = v11;
  v75 = v13;
  v76 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100004CB8(&qword_100642760, &qword_10052F7A8) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_1004DB28C();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v78;
  v22 = v79;
  v7[16] = v75 & 1;
  *(v7 + 3) = v76;
  sub_1004DB06C();
  sub_10038AC60();
  sub_1004DB3AC();
  sub_10001074C(v7, &qword_100642758, &qword_10052F7A0);
  v24 = sub_1004DB10C();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100004CB8(&qword_100642DF8, &qword_100530048) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel(0) + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v100 = v31 & 1;
  }

  else
  {

    sub_10038ADC8(v31, 0);
    v32 = sub_1004DDF8C();
    v33 = sub_1004DAECC();
    sub_1004D953C(v32, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v34 = v72;
    sub_1004DA73C();
    swift_getAtKeyPath();
    v35 = sub_10036E0E0(v31, 0);
    (*(v73 + 8))(v34, v74, v35);
  }

  v36 = v80;
  sub_1004DB30C();
  sub_10038ADD4();
  v37 = v83;
  sub_1004DB78C();
  (*(v81 + 8))(v36, v82);
  sub_10038AF80(v23);
  v38 = sub_1004DAF5C();
  sub_1004D9C8C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37 + *(sub_100004CB8(&qword_100642E10, &qword_100530080) + 36);
  *v47 = v38;
  *(v47 + 8) = v40;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v48 = sub_1004DAF3C();
  sub_1004D9C8C();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v37 + *(sub_100004CB8(&qword_100642E18, &qword_100530088) + 36);
  *v57 = v48;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = sub_1004DA7CC();
  v92 = 0;
  sub_10038A79C(&v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  v99[2] = v87;
  v99[3] = v88;
  v99[4] = v89;
  v99[5] = v90;
  v99[0] = v85;
  v99[1] = v86;
  sub_1000108DC(&v93, &v84, &qword_100642E20, &qword_100530090);
  sub_10001074C(v99, &qword_100642E20, &qword_100530090);
  *&v91[39] = v95;
  *&v91[55] = v96;
  *&v91[71] = v97;
  *&v91[87] = v98;
  *&v91[7] = v93;
  *&v91[23] = v94;
  v59 = v92;
  v60 = v37 + *(sub_100004CB8(&qword_100642E28, &qword_100530098) + 36);
  v61 = *(sub_100004CB8(&qword_100642E30, &qword_1005300A0) + 36);
  v62 = enum case for BlendMode.destinationOut(_:);
  v63 = sub_1004DBDAC();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  v64 = *&v91[32];
  *(v60 + 65) = *&v91[48];
  v65 = *&v91[80];
  *(v60 + 81) = *&v91[64];
  *(v60 + 97) = v65;
  v66 = *&v91[16];
  *(v60 + 17) = *v91;
  *(v60 + 33) = v66;
  *v60 = v58;
  *(v60 + 8) = 0;
  *(v60 + 16) = v59;
  *(v60 + 112) = *&v91[95];
  *(v60 + 49) = v64;
  v67 = sub_1004DBD1C();
  v69 = v68;
  result = sub_100004CB8(&qword_100642E38, &qword_1005300A8);
  v71 = (v60 + *(result + 36));
  *v71 = v67;
  v71[1] = v69;
  return result;
}

uint64_t sub_10038A79C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA30C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v20 - v7;
  type metadata accessor for MoreLabel(0);
  sub_10032A4CC(v8);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v9 = sub_1004DA2FC();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  sub_100004CB8(&qword_10063F1F0, &unk_10052AA60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1005126C0;
  if (v9)
  {
    *(v11 + 32) = sub_1004DB84C();
    v12 = sub_1004DB85C();
  }

  else
  {
    *(v11 + 32) = sub_1004DB85C();
    v12 = sub_1004DB84C();
  }

  *(v11 + 40) = v12;
  sub_1004DBCBC();
  sub_1004DBE8C();
  sub_1004DBE9C();
  sub_1004DA12C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v13 = sub_1004DB84C();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_1000108DC(v20, v22, &qword_10063F6B0, &qword_10052B748);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_10001074C(v22, &qword_10063F6B0, &qword_10052B748);
}

uint64_t sub_10038AA58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA66C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10038AA88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA66C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10038AABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA67C();
  *a1 = result;
  return result;
}

uint64_t sub_10038AB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA57C();
  *a1 = result;
  return result;
}

uint64_t sub_10038ABB4(uint64_t a1)
{
  sub_100004CB8(&qword_100642EF8, &qword_100530120);
  __chkstk_darwin();
  sub_1000108DC(a1, &v4 - v2, &qword_100642EF8, &qword_100530120);
  return sub_1004DA6CC();
}

unint64_t sub_10038AC60()
{
  result = qword_100642DE8;
  if (!qword_100642DE8)
  {
    sub_100008DE4(&qword_100642758, &qword_10052F7A0);
    sub_100042B08(&qword_100642DF0, &qword_100642760, &qword_10052F7A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642DE8);
  }

  return result;
}

uint64_t sub_10038AD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA67C();
  *a1 = result;
  return result;
}

uint64_t sub_10038AD70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA57C();
  *a1 = result;
  return result;
}

double sub_10038ADC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10038ADD4()
{
  result = qword_100642E00;
  if (!qword_100642E00)
  {
    sub_100008DE4(&qword_100642DE0, &qword_10052FFE0);
    sub_10038AE8C();
    sub_100042B08(&unk_100642D10, &unk_100641A20, &unk_10052E7D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642E00);
  }

  return result;
}

unint64_t sub_10038AE8C()
{
  result = qword_100642E08;
  if (!qword_100642E08)
  {
    sub_100008DE4(&qword_100642DF8, &qword_100530048);
    sub_100008DE4(&qword_100642758, &qword_10052F7A0);
    sub_10038AC60();
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642E08);
  }

  return result;
}

uint64_t sub_10038AF80(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100642DE0, &qword_10052FFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038B018(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_10063FF30, &qword_10052C148);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10038B0E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_10063FF30, &qword_10052C148);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10038B198(uint64_t a1)
{
  sub_10038B22C(319);
  if (v1 <= 0x3F)
  {
    sub_10038B284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10038B22C(uint64_t a1)
{
  if (!qword_10063FFB0)
  {
    sub_1004DA30C();
    v1 = sub_1004D9DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063FFB0);
    }
  }
}

void sub_10038B284()
{
  if (!qword_100641940)
  {
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100641940);
    }
  }
}

unint64_t sub_10038B2D8()
{
  result = qword_100642ED8;
  if (!qword_100642ED8)
  {
    sub_100008DE4(&qword_100642E28, &qword_100530098);
    sub_10038B390();
    sub_100042B08(&qword_100642EF0, &qword_100642E38, &qword_1005300A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642ED8);
  }

  return result;
}

unint64_t sub_10038B390()
{
  result = qword_100642EE0;
  if (!qword_100642EE0)
  {
    sub_100008DE4(&qword_100642E18, &qword_100530088);
    sub_10038B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642EE0);
  }

  return result;
}

unint64_t sub_10038B41C()
{
  result = qword_100642EE8;
  if (!qword_100642EE8)
  {
    sub_100008DE4(&qword_100642E10, &qword_100530080);
    sub_100008DE4(&qword_100642DE0, &qword_10052FFE0);
    sub_10038ADD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642EE8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_10038B570(&v14, &v13);
  sub_10038B5A8(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_10038B5D8(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_100313320(v4);
    sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
    v5.super.isa = sub_1004DD85C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_100006F10(0, &qword_100641C88, CAMediaTimingFunction_ptr);
    isa = sub_1004DD85C().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_1004DED5C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_1004DD85C().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_1003E10F0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004DEB2C();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003E10F0((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_100006F5C(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

__int128 *Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10038B570(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(a1);
  return v9;
}

_OWORD *Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_10038B570(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v10);

  sub_10038B5A8(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_10038B570(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_10038B570(v19, v18);
  sub_10038B570(a1, v18);
  sub_10038B5A8(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_10038B570(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_10038B5A8(v18);
  if (v10)
  {
    sub_10038B5A8(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_10038B570(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_10038B5D8(v14);
    sub_10038B5A8(v19);
    sub_10038B5A8(a1);

    a1 = v17;
  }

  return sub_10038B5A8(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10038B570(v4, (v4 + 16));
  return sub_10038BDF4;
}

void sub_10038BDF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_10038B570((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_10038B5A8((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

_OWORD *sub_10038BF1C(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_10038B570(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(v15);
  return v9;
}

uint64_t sub_10038C018@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_10038B570(v9, v8);
}

uint64_t sub_10038C084(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_10038C0B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10038B570(v4, (v4 + 16));
  return sub_10038BDF4;
}

uint64_t sub_10038C174@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_10038CB6C();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_10038B570(v10, v9);
}

uint64_t sub_10038C218(void *a1)
{
  sub_100035868(a1, v7);
  sub_100004CB8(&qword_10063E480, &unk_100529140);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return sub_100008D24(a1);
}

void (*sub_10038C2AC(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_10038CB6C();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_10038B570(v4, v4 + 192);
  return sub_10038C398;
}

void sub_10038C398(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100035868(v2 + 256, v2 + 296);
    sub_100035868(v2 + 296, v2 + 336);
    sub_100004CB8(&qword_10063E480, &unk_100529140);
    swift_dynamicCast();
    v3 = *(v2 + 208);
    *(v2 + 64) = *(v2 + 192);
    *(v2 + 80) = v3;
    v4 = *(v2 + 240);
    *(v2 + 96) = *(v2 + 224);
    *(v2 + 112) = v4;
    Gradient.View.typedConfiguration.setter((v2 + 64));
    sub_100008D24((v2 + 296));
  }

  else
  {
    sub_100035868(v2 + 256, v2 + 296);
    sub_100004CB8(&qword_10063E480, &unk_100529140);
    swift_dynamicCast();
    v5 = *(v2 + 208);
    *(v2 + 128) = *(v2 + 192);
    *(v2 + 144) = v5;
    v6 = *(v2 + 240);
    *(v2 + 160) = *(v2 + 224);
    *(v2 + 176) = v6;
    Gradient.View.typedConfiguration.setter((v2 + 128));
  }

  sub_100008D24((v2 + 256));

  free(v2);
}

id sub_10038C4A4()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10038B570(&v15, v14);
  sub_10038B570(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(&v15);
  sub_10038CAA8(&qword_100642F58, &protocol conformance descriptor for Gradient.View);
  return v9;
}

uint64_t sub_10038C5D0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_10038B570(v7, &v6);
}

BOOL sub_10038C610(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100527270;
  v13 = xmmword_100527130;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_100527280;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_10038B570(&v10, &v9);
  sub_10038B5A8(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100527280;
  v13 = xmmword_100527290;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_100527280;
  v16 = xmmword_100527290;

  v5 = kCAGradientLayerAxial;

  sub_10038B570(&v10, &v9);
  sub_10038B5A8(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_10038B570(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v4 = sub_1004DD43C();
  v6 = v5;
  if (v4 == sub_1004DD43C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004DF08C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 1);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_10034BADC(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 2);
  if (v13)
  {
    if (!v14 || (sub_10034BAF0(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 3);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_10034BB4C(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == a2[4] && *(a1 + 40) == a2[5] && *(a1 + 48) == a2[6] && *(a1 + 56) == a2[7];
}

unint64_t sub_10038C9B8()
{
  result = qword_100642F10;
  if (!qword_100642F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F10);
  }

  return result;
}

uint64_t sub_10038CA0C(uint64_t a1)
{
  result = sub_10038CAA8(&qword_100642F58, &protocol conformance descriptor for Gradient.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10038CAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038CAE8(uint64_t a1)
{
  *(a1 + 8) = sub_10038CB18();
  result = sub_10038CB6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10038CB18()
{
  result = qword_100642F90;
  if (!qword_100642F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F90);
  }

  return result;
}

unint64_t sub_10038CB6C()
{
  result = qword_100642F98;
  if (!qword_100642F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F98);
  }

  return result;
}

uint64_t sub_10038CBD0()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10034B1DC(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10038CC88(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_10034B1DC(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v9 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_100047F38(a3, a5 + *(v9 + 20), &qword_100642C70, &qword_100527540);
  return sub_10038FF04(a4, a5 + *(v9 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

void static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a3;
  v78 = a4;
  v72 = a2;
  v70 = a1;
  v76 = a8;
  v64 = *a7;
  v10 = *(a7 + 8);
  v11 = a7[2];
  v62 = a5;
  v63 = v11;
  v59 = *(a7 + 24);
  v60 = v10;
  v79 = a7[4];
  v58 = *(a7 + 40);
  v61 = *(a7 + 41);
  v67 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v12 = *(v67 + 64);
  __chkstk_darwin();
  v13 = sub_1004D92BC();
  v65 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004CB8(&unk_100641D80, &qword_10052ED18);
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin();
  v66 = &v57 - v18;
  v19 = sub_100004CB8(&qword_100642FC8, &qword_100530258) - 8;
  __chkstk_darwin();
  v21 = &v57 - v20;
  v71 = sub_100004CB8(&qword_100642FD0, &qword_100530260);
  __chkstk_darwin();
  v75 = &v57 - v22;
  v74 = sub_100004CB8(&qword_100642FD8, &qword_100530268);
  v23 = __chkstk_darwin();
  v73 = &v57 - v24;
  (*(v14 + 104))(v16, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v13, v23);
  v25 = a6;
  v26 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038FE9C(v25, v26, type metadata accessor for ArtworkImage.Placeholder);
  v27 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_10038FF04(v26, v29 + v27, type metadata accessor for ArtworkImage.Placeholder);
  v30 = (v29 + v28);
  v31 = *(a7 + 1);
  *v30 = *a7;
  v30[1] = v31;
  *(v30 + 26) = *(a7 + 26);
  v32 = v66;
  sub_10032B920(v70, sub_10036DB7C, v29, a7, v16, v66);

  (*(v14 + 8))(v16, v65);
  v33 = v72;
  if (v72)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  (*(v68 + 32))(v21, v32, v69);
  *&v21[*(v19 + 44)] = v34;
  v35 = sub_1004DBD1C();
  v37 = v33;
  if (v33)
  {
    LOBYTE(v87[0]) = v60 & 1;
    LOBYTE(v81) = v59 & 1;
    v80[0] = v58 & 1;
    v38 = v60 & 1;
    v39 = v59 & 1;
    v40 = v58 & 1 | (v61 << 8);
    v41 = v63;
    v33 = v62 & 1;
    v42 = v77;
    v43 = v78;
    v44 = v64;
    v45 = v79;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v45 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  v79 = v45;
  LODWORD(v68) = v40;
  *&v81 = v37;
  *(&v81 + 1) = v42;
  *&v82 = v43;
  *(&v82 + 1) = v33;
  *&v83 = v44;
  *(&v83 + 1) = v38;
  *&v84 = v41;
  *(&v84 + 1) = v39;
  *&v85 = v45;
  WORD4(v85) = v40;
  *&v86 = v35;
  *(&v86 + 1) = v36;
  v69 = v36;
  v70 = v35;
  v46 = v21;
  v47 = v75;
  v48 = v44;
  sub_100047F38(v46, v75, &qword_100642FC8, &qword_100530258);
  v49 = (v47 + *(v71 + 36));
  v50 = v84;
  v49[2] = v83;
  v49[3] = v50;
  v51 = v86;
  v49[4] = v85;
  v49[5] = v51;
  v52 = v82;
  *v49 = v81;
  v49[1] = v52;
  v87[0] = v37;
  v87[1] = v42;
  v87[2] = v43;
  v87[3] = v33;
  v87[4] = v48;
  v87[5] = v38;
  v87[6] = v41;
  v87[7] = v39;
  v87[8] = v79;
  v88 = v68;
  v89 = v70;
  v90 = v69;

  sub_1000108DC(&v81, v80, &qword_100642FE0, &qword_100530270);
  sub_10001074C(v87, &qword_100642FE0, &qword_100530270);
  v53 = sub_1004DBD6C();
  v54 = v73;
  sub_100047F38(v47, v73, &qword_100642FD0, &qword_100530260);
  v55 = (v54 + *(v74 + 36));
  *v55 = v53;
  v55[1] = v37;
  v56 = v78;
  v55[2] = v77;
  v55[3] = v56;
  sub_100047F38(v54, v76, &qword_100642FD8, &qword_100530268);
}

void sub_10038D3AC(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10038D4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_1004DABAC();
  __chkstk_darwin();
  v5 = sub_1004DBCCC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004DBCDC();
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100004CB8(&qword_1006430D8, &qword_100530460);
  v11 = *(v31 - 8);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = *a1;
  if (*(a1 + 8))
  {
    v14 = 0.0;
  }

  *v8 = v14;
  (*(v6 + 104))(v8, enum case for GridItem.Size.fixed(_:), v5);
  v36 = *(a2 + 24);
  if (v36)
  {
    v15 = 14;
  }

  else
  {
    v15 = 4;
  }

  Int.seconds.getter(v15);
  sub_1004DBCEC();
  sub_10038D8B0(v10, *(a2 + 16), v16);
  Int.seconds.getter(v15);
  v33 = a2;
  v34 = a1;
  sub_1004DA90C();
  v35 = 0;
  sub_10038FD04(&unk_100640D10, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_1004DF33C();
  sub_100004CB8(&qword_1006430E0, &qword_100530468);
  sub_10038FD4C();
  sub_1004DBDBC();
  v17 = sub_1004DAF2C();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v17, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1004DAF2C();
  v28 = v32;
  (*(v11 + 32))(v32, v13, v31);
  result = sub_100004CB8(&qword_1006430F8, &qword_100530470);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_10038D8B0(char *result, uint64_t a2, __n128 a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_1004DBCDC();
      v6 = sub_1004DD8EC();
      *(v6 + 2) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(&v6[v8], v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = &v6[v11 + v8];
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v13 = sub_1004DBCDC();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}

void *sub_10038DA0C(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_10038FE20(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_10038FE20(result, v14);
      sub_10038DD44(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_10038FE20(v6, v14);
      sub_100004CB8(&qword_100643100, &qword_100530478);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_100042B08(&qword_100643108, &qword_100643100, &qword_100530478, &protocol conformance descriptor for [A]);
      sub_10038FD04(&qword_1006430F0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_1005304DC);
      sub_10038FD04(&qword_100643110, type metadata accessor for ArtworkImage.GridPreview.Item, &protocol conformance descriptor for ArtworkImage.GridPreview.Item);
      return sub_1004DBC2C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10038DC00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038FE9C(a1, v9, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v10 = 0x4014000000000000;
  }

  else
  {
    v10 = 0x4000000000000000;
  }

  sub_10038FF04(v9, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v11 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v12 = (a4 + v11[5]);
  v13 = a2[1];
  *v12 = *a2;
  v12[1] = v13;
  *(v12 + 26) = *(a2 + 26);
  v14 = a4 + v11[6];
  *v14 = v10;
  *(v14 + 8) = -1;
  *(v14 + 16) = 0;
  v15 = v11[7];
  *(a4 + v15) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  return swift_storeEnumTagMultiPayload();
}

void sub_10038DD44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v25 - v7;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_24:

      return;
    }

    v10 = 0;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25[1] = a2;
    v12 = a2 + v11;
    v13 = *(v6 + 72);
    v14 = v9 - 1;
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v27 = v5;
    v28 = v11;
    v29 = v25 - v7;
    v26 = a1;
    while (1)
    {
      sub_10038FE9C(v12, v8, type metadata accessor for ArtworkImage.GridPreview.Item);
      v20 = v16[2];
      if (v20 < a1)
      {
        break;
      }

      if (v10 >= v20)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_10038FE9C(v16 + v11 + v13 * v10, v5, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E1170(0, v15[2] + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_1003E1170((v23 > 1), v24 + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v15[2] = v24 + 1;
      v11 = v28;
      sub_10038FF04(v5, v15 + v28 + v24 * v13, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10038F268(v16);
      }

      v8 = v29;
      if (v10 >= v16[2])
      {
        goto LABEL_27;
      }

      sub_10038FF6C(v29, v16 + v11 + v13 * v10++);
      a1 = v26;
      if (v10 < v26)
      {
        goto LABEL_8;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      v10 = 0;
LABEL_9:
      --v14;
      v12 += v13;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v16;
    if ((v21 & 1) == 0)
    {
      sub_1003E1170(0, v20 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      sub_1003E1170((v17 > 1), v18 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v16[2] = v18 + 1;
    v11 = v28;
    v19 = v16 + v28 + v18 * v13;
    v8 = v29;
    sub_10038FF04(v29, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_10038E084@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1004DA8BC();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin();
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin();
  v49 = &v47 - v6;
  v7 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D92BC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v15 = *(v14 + 20);
  v16 = *(v14 + 24);
  v48 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v17 = (v2 + *(v48 + 20));
  v18 = *(v17 + 26);
  v19 = v17[1];
  v55 = *v17;
  v56[0] = v19;
  *(v56 + 10) = v18;
  (*(v11 + 104))(v13, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v10);
  sub_10038FE9C(v2 + v16, v9, type metadata accessor for ArtworkImage.Placeholder);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_10038FF04(v9, v22 + v20, type metadata accessor for ArtworkImage.Placeholder);
  v23 = (v22 + v21);
  v24 = v56[0];
  *v23 = v55;
  v23[1] = v24;
  *(v23 + 26) = *(v56 + 10);
  v25 = v2 + v15;
  v26 = v50;
  sub_10032B920(v25, sub_1003722DC, v22, &v55, v13, v50);

  (*(v11 + 8))(v13, v10);
  v27 = v48;
  v28 = v2;
  sub_10032A8D4(v5);
  v29 = v49;
  sub_10032F6D0(v49);
  (*(v51 + 8))(v5, v52);
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = (v26 + *(sub_100004CB8(&qword_100641D48, &qword_10052ED00) + 36));
  v32 = v26;
  v33 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v31 + v33) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8, &qword_100527500);
  swift_storeEnumTagMultiPayload();
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_100047F38(v29, v35 + v34, &qword_100640150, &unk_10052C4D0);
  *v31 = sub_100337008;
  v31[1] = v35;
  v36 = (v28 + *(v27 + 24));
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  v40 = v32 + *(sub_100004CB8(&qword_1006431E8, &qword_100530558) + 36);
  *v40 = v37;
  *(v40 + 8) = v38;
  *(v40 + 16) = v39;
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v41 = static Border.artwork;
  v42 = qword_100673898;
  v43 = byte_1006738A0;
  v44 = v32 + *(sub_100004CB8(&qword_1006431F0, &qword_100530560) + 36);
  *v44 = v41;
  *(v44 + 8) = v42;
  *(v44 + 16) = v43;
  *(v44 + 24) = v37;
  *(v44 + 32) = v38;
  *(v44 + 40) = v39;

  sub_1004D9F9C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004DBE7C();
  sub_1004D9F8C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004DBE7C();
  sub_1004D9F8C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004D9F7C();

  v45 = sub_1004D9FAC();

  result = sub_100004CB8(&qword_1006431F8, &qword_100530568);
  *(v32 + *(result + 36)) = v45;
  return result;
}

double sub_10038E73C@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_10038D3AC(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_1004DB8CC();
  v7 = sub_1004DBD0C();
  v9 = v8;
  v10 = a1 + *(sub_100004CB8(&qword_1006430C0, &qword_100530448) + 36);
  sub_10038D4EC(v15, v17, v10);
  v11 = &v10[*(sub_100004CB8(&qword_1006430C8, &qword_100530450) + 36)];
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_1004DBD1C();
  sub_1004D9F5C();
  v12 = (a1 + *(sub_100004CB8(&qword_1006430D0, &qword_100530458) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

void *sub_10038E87C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_10063DF68, &qword_100528BE8);
  v10 = *(sub_100004CB8(&qword_10063DF60, &qword_100528BE0) - 8);
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
  v15 = *(sub_100004CB8(&qword_10063DF60, &qword_100528BE0) - 8);
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

char *sub_10038EA6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F4F0, &unk_100532080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10038EB7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1F8, &unk_10052B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10038EC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643130, &qword_1005304C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10038ED84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1E8, &qword_10052AA58);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10038EE90(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100643118, &qword_100530480);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
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
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
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

char *sub_10038F068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643128, &qword_1005304C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10038F15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643120, &qword_1005304B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100004CB8(&unk_100641C70, &qword_10052EBF0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*a1 != *a2 && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = v7;
  v21 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v13 = *(v21 + 20);
  v14 = *(v10 + 48);
  sub_1000108DC(a1 + v13, v12, &qword_100642C70, &qword_100527540);
  sub_1000108DC(a2 + v13, &v12[v14], &qword_100642C70, &qword_100527540);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_10001074C(v12, &qword_100642C70, &qword_100527540);
LABEL_11:
      v16 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v21 + 24), a2 + *(v21 + 24));
      return v16 & 1;
    }

    goto LABEL_8;
  }

  sub_1000108DC(v12, v9, &qword_100642C70, &qword_100527540);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    sub_10038FFD4(v9);
LABEL_8:
    sub_10001074C(v12, &unk_100641C70, &qword_10052EBF0);
    goto LABEL_9;
  }

  v17 = v20;
  sub_10038FF04(&v12[v14], v20, type metadata accessor for ArtworkImage.ViewModel);
  v18 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v17);
  sub_10038FFD4(v17);
  sub_10038FFD4(v9);
  sub_10001074C(v12, &qword_100642C70, &qword_100527540);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_10038F5AC()
{
  result = qword_100642FE8;
  if (!qword_100642FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642FE8);
  }

  return result;
}

unint64_t sub_10038F604()
{
  result = qword_100642FF0;
  if (!qword_100642FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642FF0);
  }

  return result;
}

uint64_t sub_10038F68C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100642C70, &qword_100527540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10038F7D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_100642C70, &qword_100527540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10038F900(uint64_t a1)
{
  sub_10039038C(319, &qword_1006403F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10038F9D8()
{
  result = qword_100643090;
  if (!qword_100643090)
  {
    sub_100008DE4(&qword_100642FD8, &qword_100530268);
    sub_10038FA90();
    sub_100042B08(&qword_1006430B0, &qword_1006430B8, &qword_1005303C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643090);
  }

  return result;
}

unint64_t sub_10038FA90()
{
  result = qword_100643098;
  if (!qword_100643098)
  {
    sub_100008DE4(&qword_100642FD0, &qword_100530260);
    sub_10038FB48();
    sub_100042B08(&qword_1006430A8, &qword_100642FE0, &qword_100530270, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643098);
  }

  return result;
}

unint64_t sub_10038FB48()
{
  result = qword_1006430A0;
  if (!qword_1006430A0)
  {
    sub_100008DE4(&qword_100642FC8, &qword_100530258);
    sub_100008DE4(&qword_1006406E8, &qword_10052C880);
    sub_100338428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006430A0);
  }

  return result;
}

__n128 sub_10038FC10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10038FC34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_10038FC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038FD04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10038FD4C()
{
  result = qword_1006430E8;
  if (!qword_1006430E8)
  {
    sub_100008DE4(&qword_1006430E0, &qword_100530468);
    sub_10038FD04(&qword_1006430F0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_1005304DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006430E8);
  }

  return result;
}

uint64_t sub_10038FE58()
{

  return swift_deallocObject();
}

uint64_t sub_10038FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038FF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038FF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038FFD4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100390044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100390190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1003902C0(uint64_t a1)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v1 <= 0x3F)
  {
    sub_10039038C(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10039038C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100390434(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003904B8()
{
  result = qword_1006431D8;
  if (!qword_1006431D8)
  {
    sub_100008DE4(&qword_1006430C0, &qword_100530448);
    sub_100042B08(&qword_1006431E0, &qword_1006430C8, &qword_100530450, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006431D8);
  }

  return result;
}

uint64_t sub_100390594()
{
  v1 = *(sub_100004CB8(&qword_100640150, &unk_10052C4D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_100008D24((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_100008D24(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004DBDAC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_10039073C()
{
  result = qword_100643200;
  if (!qword_100643200)
  {
    sub_100008DE4(&qword_1006431F8, &qword_100530568);
    sub_1003907F4();
    sub_100042B08(&qword_100643218, &qword_100643220, &unk_100530570, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643200);
  }

  return result;
}

unint64_t sub_1003907F4()
{
  result = qword_100643208;
  if (!qword_100643208)
  {
    sub_100008DE4(&qword_1006431F0, &qword_100530560);
    sub_100390880();
    sub_100312488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643208);
  }

  return result;
}

unint64_t sub_100390880()
{
  result = qword_100643210;
  if (!qword_100643210)
  {
    sub_100008DE4(&qword_1006431E8, &qword_100530558);
    sub_10036F388();
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643210);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return sub_10001087C(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_10039162C();
      v11 = sub_1004DD87C();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = sub_1004DED5C();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_1004DEB2C();
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_10039162C()
{
  result = qword_100644F50;
  if (!qword_100644F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100644F50);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0, &qword_100530610);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t sub_100391958@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_100397AD4(v1 + v3, v5);
  if (v6 != 1)
  {
    return sub_10006A8BC(v5, a1);
  }

  sub_10001074C(v5, &qword_1006435F8, &qword_1005308C8);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_100512780;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  sub_1000699E8(a1, v5);
  swift_beginAccess();
  sub_100397B44(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_100006F10(0, &qword_1006432A0, UIViewController_ptr);
  v11 = v7;
  v12 = v9;
  v13 = sub_1004DE5FC();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB5C();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_100391D34(v3, a2, a1);
    a1[v17] = 1;
    sub_100391958(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_100395A90, v19);

    sub_10007DC74(v22);
  }
}

id sub_100391D34(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a2;
  sub_1004D8B8C();
  __chkstk_darwin();
  v5 = sub_1004DD0FC();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100643638, &qword_100530910);
  __chkstk_darwin();
  v9 = &v49 - v8;
  v10 = sub_1004DD12C();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v49 - v13;
  v55 = sub_1004D951C();
  v15 = *(v55 - 8);
  __chkstk_darwin();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImagePicker(0);
  v19 = *(v18 + 24);
  v54 = a1;
  v20 = a1 + v19;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v20) = *(v20 + 16);
  v58 = v21;
  v59 = v22;
  v60 = v20;
  sub_100004CB8(&qword_1006432B8, &qword_100530618);
  sub_1004DBB5C();
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v23 = [objc_allocWithZone(UIImagePickerController) init];
      [v23 setSourceType:1];
      sub_100004CB8(&qword_100643640, &qword_100530918);
      sub_1004DAEBC();
      v24 = v58;
      [v23 setDelegate:v58];

      [v23 setAllowsEditing:1];
      sub_100004CB8(&qword_1006432D0, &qword_100530620);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100511DA0;
      sub_1004D950C();
      v26 = sub_1004D94EC();
      v28 = v27;
      (*(v15 + 8))(v17, v55);
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      isa = sub_1004DD85C().super.isa;

      [v23 setMediaTypes:isa];

      v30._rawValue = *(v54 + *(v18 + 36));
      if (v30._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v30);
      }

      return v23;
    }

    result = [a3 view];
    if (result)
    {
      v37 = result;
      v38 = [objc_opt_self() clearColor];
      [v37 setBackgroundColor:v38];

      v39 = [objc_opt_self() sharedPhotoLibrary];
      sub_1004DD0EC();
      sub_1004DD09C();
      v40 = sub_1004DD0AC();
      (*(*(v40 - 8) + 56))(v9, 0, 1, v40);
      sub_1004DD11C();
      (*(v50 + 104))(v7, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v51);
      sub_1004DD10C();
      sub_100006F10(0, &qword_100643650, PHPickerViewController_ptr);
      v42 = v52;
      v41 = v53;
      (*(v52 + 16))(v12, v14, v53);
      v43 = sub_1004DE31C();
      sub_100004CB8(&qword_100643640, &qword_100530918);
      sub_1004DAEBC();
      sub_100396D84(&qword_100643658, type metadata accessor for ImagePicker.Coordinator, &protocol conformance descriptor for ImagePicker.Coordinator);
      sub_1004DE32C();
      v23 = v43;
      v44 = [v23 presentationController];
      if (v44)
      {
        v45 = v44;
        sub_1004DAEBC();
        v46 = v58;
        [v45 setDelegate:v58];
      }

      (*(v42 + 8))(v14, v41);
      return v23;
    }

    goto LABEL_16;
  }

  if (v57 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v32 = result;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    sub_100004CB8(&qword_100643648, &qword_100530920);
    *(swift_allocObject() + 16) = xmmword_100511DA0;
    sub_1004D950C();
    v34 = objc_allocWithZone(UIDocumentPickerViewController);
    v35 = sub_1004DD85C().super.isa;

    v23 = [v34 initForOpeningContentTypes:v35 asCopy:1];

    sub_100004CB8(&qword_100643640, &qword_100530918);
    sub_1004DAEBC();
    v36 = v58;
    [v23 setDelegate:v58];

    [v23 _setAutomaticallyDismissesAfterCompletion:0];
    return v23;
  }

  result = [a3 view];
  if (result)
  {
    v47 = result;
    v48 = [objc_opt_self() clearColor];
    [v47 setBackgroundColor:v48];

    sub_1004D8B6C();
    v23 = sub_1004D8B5C();
    sub_100004CB8(&qword_100643640, &qword_100530918);
    sub_1004DAEBC();
    sub_1004D8B4C();
    sub_1004D8B7C();
    sub_1004D8B3C();
    return v23;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004DD21C();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_1004DEA4C();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_100006F5C(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_100028F3C(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_1004DF16C();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_1003969B4();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_100010678(v37, v6[6] + 40 * v20);
        sub_100006F5C(v34, (v6[7] + 32 * v28));
        sub_1000105EC(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_10039617C(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_100028F3C(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        sub_100008D24(v12);
        sub_100006F5C(v34, v12);
        sub_1000105EC(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_1004DD1FC().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v53 - v9;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v11 = sub_100056E30(UIImagePickerControllerEditedImage);
  if (v12)
  {
    sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v11, &v58);
    sub_100006F5C(&v58, &v60);
    goto LABEL_9;
  }

  v13 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v58 = 0u;
  v59 = 0u;
  if (v13 && (v14 = sub_100056E30(UIImagePickerControllerOriginalImage), (v15 & 1) != 0))
  {
    sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v14, &v60);
    if (*(&v59 + 1))
    {
      sub_10001074C(&v58, &qword_100644FB0, &unk_1005293E0);
    }
  }

  else
  {
LABEL_8:
    v60 = 0u;
    v61 = 0u;
  }

LABEL_9:
  if (!*(&v61 + 1))
  {
    sub_10001074C(&v60, &qword_100644FB0, &unk_1005293E0);
LABEL_16:
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1004DEAAC(61);
    v63._countAndFlagsBits = 0xD00000000000002ALL;
    v63._object = 0x80000001004F7310;
    sub_1004DD5FC(v63);
    type metadata accessor for InfoKey(0);
    sub_100396D84(&qword_10063DEF0, type metadata accessor for InfoKey, &unk_100528B50);
    v64._countAndFlagsBits = sub_1004DD22C();
    sub_1004DD5FC(v64);

    v65._object = 0x80000001004F7340;
    v65._countAndFlagsBits = 0xD000000000000011;
    sub_1004DD5FC(v65);
    v28 = *(&v60 + 1);
    v29 = v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler;
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v60;
      v32 = *(v29 + 8);
      sub_100396B58();
      v33 = swift_allocError();
      *v34 = v31;
      v34[1] = v28;

      v30(v33, 1);
      sub_10000DE74(v30, v32);
    }

    else
    {
    }

    return;
  }

  sub_100006F10(0, &qword_1006432B0, UIImage_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v58;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v35 = v58;
LABEL_20:
    v26 = 0uLL;
    v25 = 1;
    v27 = 0uLL;
    goto LABEL_21;
  }

  v17 = v58;
  v18 = sub_100056E30(UIImagePickerControllerCropRect);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v18, &v60);
  sub_100006F10(0, &qword_1006432C0, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v58;
  [v58 CGRectValue];
  v54 = v21;
  v55 = v22;
  v53 = v23;
  v56 = v24;

  *&v27 = v53;
  *&v26 = v54;
  v25 = 0;
  *(&v26 + 1) = v55;
  *(&v27 + 1) = v56;
LABEL_21:
  v60 = v26;
  v61 = v27;
  v62 = v25;
  v36 = UIImage.centerCropIfNeeded(imageRect:)(&v60);

  v37 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v37)
  {
    v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);

    v37(v36, 0);
    sub_10000DE74(v37, v38);
  }

  v39 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100387CEC(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v10);
  v40 = &v10[*(v6 + 24)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  *&v58 = v41;
  *(&v58 + 1) = v42;
  LOBYTE(v59) = v40;
  sub_100004CB8(&qword_1006432B8, &qword_100530618);
  sub_1004DBB5C();
  v43 = v57;
  sub_100396BAC(v10);
  if ((v43 - 1) > 2)
  {
    sub_100387CEC(v3 + v39, v8);
    v50 = &v8[*(v6 + 32)];
    v51 = *v50;
    v52 = *(v50 + 1);
    LOBYTE(v50) = v50[16];
    *&v58 = v51;
    *(&v58 + 1) = v52;
    LOBYTE(v59) = v50;
    v57 = 0;
    sub_100004CB8(&qword_100643290, &qword_10052B360);
    sub_1004DBB6C();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v44 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 presentingViewController];

    if (v46)
    {
      sub_100387CEC(v3 + v39, v8);
      v47 = &v8[*(v6 + 32)];
      v48 = *v47;
      v49 = *(v47 + 1);
      LOBYTE(v47) = v47[16];
      *&v58 = v48;
      *(&v58 + 1) = v49;
      LOBYTE(v59) = v47;
      v57 = 0;
      sub_100004CB8(&qword_100643290, &qword_10052B360);
      sub_1004DBB6C();
      [v46 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_100396BAC(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_1004D868C() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        sub_100004CB8(&qword_1006432D0, &qword_100530620);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100511DA0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_1004DD85C().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  sub_100004CB8(&qword_1006432B8, &qword_100530618);
  sub_1004DBB5C();
  v21 = HIBYTE(v25);
  sub_100396BAC(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100387CEC(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    sub_100004CB8(&qword_100643290, &qword_10052B360);
    sub_1004DBB6C();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DD0DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_1004D951C();
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v15 = *(v9 + 80);
    v16 = v2;
    isa = _.super.super.super.isa;
    v29 = v12;
    v17 = (v15 + 32) & ~v15;
    v30 = v11;
    v18 = sub_1004DD0BC();
    sub_1004D950C();
    (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v17, v8);
    v19 = swift_allocObject();
    v20 = isa;
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    (*(v9 + 32))(v19 + v17, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v21 = v16;
    v22 = v20;
    v23 = sub_1004DDFBC();

    (*(v29 + 8))(v14, v30);
  }

  else
  {
    sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v24 = &v7[*(v5 + 32)];
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    v32 = v25;
    v33 = v26;
    v34 = v24;
    v31 = 0;
    sub_100004CB8(&qword_100643290, &qword_10052B360);
    sub_1004DBB6C();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v7);
  }
}

double sub_100393558(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, __n128 a7)
{
  v30 = a5;
  v12 = sub_1004DD0DC();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v16 = &v27 - v15;
  v17 = sub_1004DDA8C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  sub_1004DDA4C();
  v18 = a1;
  v19 = a2;
  sub_100027F64(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = sub_1004DDA3C();
  v24 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v13 + 32))(&v25[v24], v29, v28);
  sub_100302950(0, 0, v16, &unk_1005308F8, v25);

  return result;
}

uint64_t sub_1003937AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_1004DDA4C();
  v8[9] = sub_1004DDA3C();
  v10 = sub_1004DD9BC();

  return _swift_task_switch(sub_100393854, v10, v9);
}

uint64_t sub_100393854()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_100010530(v3, v2);
    sub_100010530(v3, v2);
    isa = sub_1004D80FC().super.isa;
    v6 = [v4 initWithData:isa];

    sub_100010584(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_1004DD0CC();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004D810C();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = sub_1004D80FC().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          sub_100010584(v30, v29);
        }

        else
        {
          sub_100010584(*(v0 + 24), *(v0 + 32));
        }

        sub_100010598(v13, v15);
      }

      else
      {
        sub_100010584(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_100010584(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_1004DEAAC(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  sub_100004CB8(&qword_100643628, &qword_100530900);
  v49._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v49);

  v33 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v33)
  {
    v34 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_100396B58();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002FLL;
    v36[1] = 0x80000001004F7640;

    v33(v35, 1);
    sub_10000DE74(v33, v34);
  }

  else
  {
  }

  v37 = *(v0 + 56);
  v38 = sub_100394AE8();
  [v37 presentViewController:v38 animated:1 completion:0];

  v39 = sub_1004DD0CC();
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = *(v0 + 56);
    sub_100004CB8(&qword_1006432D0, &qword_100530620);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100511DA0;
    *(v44 + 32) = v41;
    *(v44 + 40) = v42;
    v45 = sub_1004DD85C().super.isa;

    [v43 deselectAssetsWithIdentifiers:v45];
  }

LABEL_17:
  v46 = *(v0 + 8);

  return v46();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_1004D803C();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_1004DD3FC();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_1004D810C();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = sub_1004D80FC().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          sub_100010598(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_100010598(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1004DEAAC(59);
  v50._countAndFlagsBits = 0xD000000000000025;
  v50._object = 0x80000001004F7360;
  sub_1004DD5FC(v50);
  v51._countAndFlagsBits = sub_1004DD88C();
  sub_1004DD5FC(v51);

  v52._object = 0x80000001004F7390;
  v52._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v52);
  v35 = v48;
  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {
    v37 = v47;
    v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_100396B58();
    v39 = swift_allocError();
    *v40 = v37;
    v40[1] = v35;

    v36(v39, 1);
    sub_10000DE74(v36, v38);
  }

  else
  {
  }

  sub_100387CEC(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v41 = &v8[*(v6 + 32)];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v41) = v41[16];
  v47 = v42;
  v48 = v43;
  v49 = v41;
  v46 = 0;
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB6C();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_100396BAC(v8);
}