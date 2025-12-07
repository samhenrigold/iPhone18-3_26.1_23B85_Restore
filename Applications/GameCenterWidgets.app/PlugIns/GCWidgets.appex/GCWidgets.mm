uint64_t sub_100001A38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPSmallContentView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100001C40()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CPSmallContentView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100072CEC();
    v7 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100001D98@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10000388C(&qword_1000948C0, &qword_100073948);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_10000388C(&qword_1000948C8, &qword_100073950);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10000388C(&qword_1000948D0, &qword_100073958);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  sub_1000020AC((&v24 - v17));
  *v12 = sub_10007223C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v19 = &v12[*(sub_10000388C(&qword_1000948D8, &qword_100073960) + 44)];
  sub_100003114(v6);
  sub_100004C94(v6, v3, &qword_1000948C0, &qword_100073948);
  *v19 = 0;
  v19[8] = 0;
  v20 = sub_10000388C(&qword_1000948E0, &qword_100073968);
  sub_100004C94(v3, &v19[*(v20 + 48)], &qword_1000948C0, &qword_100073948);
  sub_100004890(v6, &qword_1000948C0, &qword_100073948);
  sub_100004890(v3, &qword_1000948C0, &qword_100073948);
  sub_100004C94(v18, v15, &qword_1000948D0, &qword_100073958);
  sub_100004C94(v12, v9, &qword_1000948C8, &qword_100073950);
  v21 = v25;
  sub_100004C94(v15, v25, &qword_1000948D0, &qword_100073958);
  v22 = sub_10000388C(&qword_1000948E8, &unk_100073970);
  sub_100004C94(v9, v21 + *(v22 + 48), &qword_1000948C8, &qword_100073950);
  sub_100004890(v12, &qword_1000948C8, &qword_100073950);
  sub_100004890(v18, &qword_1000948D0, &qword_100073958);
  sub_100004890(v9, &qword_1000948C8, &qword_100073950);
  return sub_100004890(v15, &qword_1000948D0, &qword_100073958);
}

uint64_t sub_1000020AC@<X0>(uint64_t *a1@<X8>)
{
  v129 = sub_1000728BC();
  v3 = *(v129 - 8);
  __chkstk_darwin(v129);
  v143 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for CPTitleGradientView(0);
  __chkstk_darwin(v131);
  v133 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v126 = (&v106 - v7);
  v134 = sub_10000388C(&unk_100094918, &unk_100073A60);
  __chkstk_darwin(v134);
  v132 = (&v106 - v8);
  v9 = sub_10000388C(&unk_100094920, &unk_100073A68);
  v138 = *(v9 - 8);
  v139 = v9;
  __chkstk_darwin(v9);
  v137 = &v106 - v10;
  v136 = sub_10000388C(&qword_100094928, &unk_100073A70);
  __chkstk_darwin(v136);
  v142 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v135 = &v106 - v13;
  __chkstk_darwin(v14);
  v140 = &v106 - v15;
  v116 = sub_10007221C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10007277C();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10000388C(&qword_100094930, &qword_100076430);
  __chkstk_darwin(v122);
  v111 = (&v106 - v18);
  v121 = sub_10000388C(&qword_100094938, &qword_100073A80);
  __chkstk_darwin(v121);
  v112 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v113 = &v106 - v21;
  v118 = sub_1000729DC();
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10000388C(&unk_100094940, &unk_100073A88);
  __chkstk_darwin(v119);
  v120 = &v106 - v24;
  v25 = sub_10000388C(&unk_100094948, &unk_100073A90);
  __chkstk_darwin(v25 - 8);
  v130 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v106 - v28;
  v30 = sub_10007297C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v36 = &v106 - v35;
  v37 = sub_100001C40();
  v144 = v3;
  v127 = v30;
  v145 = v29;
  v125 = a1;
  if ((v37 & 1) == 0)
  {
    v128 = 0;
    goto LABEL_8;
  }

  v38 = v36;
  v39 = v31;
  v40 = v33;
  a1 = v1;
  sub_1000129F8(v38);
  sub_10007296C();
  sub_100004DB8(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v41 = sub_100072B1C();
  v33 = v39;
  v42 = *(v39 + 1);
  v3 = v40;
  v42(v40, v30);
  v31 = v38;
  v42(v38, v30);
  if ((v41 & 1) == 0)
  {
    if (qword_1000946E0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v128 = 0;
  while (1)
  {
    v1 = a1;
    v29 = v145;
    v43 = v33;
    v33 = v3;
    v36 = v31;
    v31 = v43;
LABEL_8:
    v123 = type metadata accessor for CPSmallContentView(0);
    v44 = v1 + *(v123 + 32);
    v45 = type metadata accessor for CPTimelineEntry(0);
    v46 = *(v44 + *(v45 + 32)) == 1;
    v141 = v1;
    v124 = v44;
    if (v46 && (sub_100001C40() & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_100004CFC();
      sub_10007230C();
      v76 = 0;
      goto LABEL_21;
    }

    v47 = *(v44 + *(v45 + 20));
    if (v47 >> 62)
    {
      if (!sub_100072EDC())
      {
        goto LABEL_20;
      }
    }

    else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v47 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v48 = *(v47 + 32);

      goto LABEL_16;
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_6:
    v128 = qword_100099978;
    swift_retain_n();
  }

  v48 = sub_100072E6C();
LABEL_16:
  sub_100001A38(v23);
  v49 = sub_10001D980(v23, 0);
  (*(v117 + 8))(v23, v118);
  if (v49)
  {
    v118 = v49;
    sub_10007275C();
    v50 = v109;
    v51 = *(v109 + 104);
    v52 = v108;
    v107 = v48;
    v53 = v110;
    v51(v108, enum case for Image.ResizingMode.stretch(_:), v110);
    sub_1000727DC();

    (*(v50 + 8))(v52, v53);
    v54 = sub_1000728AC();
    v55 = v111;
    *v111 = v54;
    *(v55 + 8) = v56;
    v57 = sub_10000388C(&qword_100094978, &qword_100074E80);
    sub_10005544C((v55 + *(v57 + 44)), 0.3);

    v58 = v55 + *(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36);
    *v58 = 0;
    *(v58 + 8) = 1;
    v59 = (v55 + *(v122 + 36));
    v60 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v61 = enum case for ColorScheme.light(_:);
    v62 = sub_100071EAC();
    (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
    *v59 = swift_getKeyPath();
    v63 = *(v107 + 48);
    v146 = *(v107 + 40);
    v147 = v63;
    sub_100004A78();

    v64 = sub_10007259C();
    v66 = v65;
    v67 = v33;
    v68 = v31;
    v69 = v36;
    v71 = v70;
    sub_100004ACC();
    v72 = v112;
    sub_10007260C();
    v73 = v71 & 1;
    v36 = v69;
    v31 = v68;
    v33 = v67;
    v29 = v145;
    sub_100004C84(v64, v66, v73);

    sub_100004890(v55, &qword_100094930, &qword_100076430);
    v74 = v114;
    sub_10007220C();
    v75 = v113;
    sub_100071FAC();
    (*(v115 + 8))(v74, v116);
    sub_100004890(v72, &qword_100094938, &qword_100073A80);
    sub_100004C94(v75, v120, &qword_100094938, &qword_100073A80);
    swift_storeEnumTagMultiPayload();
    sub_100004CFC();
    sub_10007230C();

    sub_100004890(v75, &qword_100094938, &qword_100073A80);
    v76 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v76 = 1;
LABEL_21:
  v77 = sub_10000388C(&unk_100094950, &unk_100073A98);
  (*(*(v77 - 8) + 56))(v29, v76, 1, v77);
  v78 = sub_10007223C();
  v79 = v132;
  *v132 = v78;
  *(v79 + 8) = 0;
  *(v79 + 16) = 1;
  v80 = v79 + *(sub_10000388C(&unk_100094958, &unk_100073AA0) + 44);
  v81 = v29;
  sub_100071F3C();
  v83 = v82;
  sub_100071F3C();
  v85 = v84 * 0.5;
  v86 = v131;
  v87 = v126;
  sub_1000047CC(v124, v126 + *(v131 + 24), type metadata accessor for CPTimelineEntry);
  *v87 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v88 = (v87 + *(v86 + 20));
  *v88 = v83;
  v88[1] = v85;
  v89 = v133;
  sub_1000047CC(v87, v133, type metadata accessor for CPTitleGradientView);
  *v80 = 0;
  *(v80 + 8) = 0;
  v90 = sub_10000388C(&unk_100094960, &unk_100073AA8);
  sub_1000047CC(v89, v80 + *(v90 + 48), type metadata accessor for CPTitleGradientView);
  sub_100004834(v87);
  sub_100004834(v89);
  sub_100004C3C(&unk_100094968, &unk_100094918, &unk_100073A60, &protocol conformance descriptor for VStack<A>);
  v91 = v137;
  sub_1000725AC();
  sub_100004890(v79, &unk_100094918, &unk_100073A60);
  sub_1000129F8(v36);
  sub_10007296C();
  v92 = sub_10007295C();
  v93 = *(v31 + 1);
  v94 = v127;
  v93(v33, v127);
  v93(v36, v94);
  v95 = &enum case for BlendMode.destinationOut(_:);
  if ((v92 & 1) == 0)
  {
    v95 = &enum case for BlendMode.normal(_:);
  }

  v97 = v143;
  v96 = v144;
  v98 = v129;
  v144[13](v143, *v95, v129);
  v99 = v135;
  v96[4](&v135[*(v136 + 36)], v97, v98);
  (*(v138 + 32))(v99, v91, v139);
  v100 = v140;
  sub_1000048F0(v99, v140);
  v101 = v130;
  sub_100004C94(v81, v130, &unk_100094948, &unk_100073A90);
  v102 = v142;
  sub_100004C94(v100, v142, &qword_100094928, &unk_100073A70);
  v103 = v125;
  *v125 = v128;
  v104 = sub_10000388C(&unk_100094970, &unk_100073AB0);
  sub_100004C94(v101, v103 + *(v104 + 48), &unk_100094948, &unk_100073A90);
  sub_100004C94(v102, v103 + *(v104 + 64), &qword_100094928, &unk_100073A70);
  sub_100004890(v100, &qword_100094928, &unk_100073A70);
  sub_100004890(v145, &unk_100094948, &unk_100073A90);
  sub_100004890(v102, &qword_100094928, &unk_100073A70);
  sub_100004890(v101, &unk_100094948, &unk_100073A90);
}

uint64_t sub_100003114@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CPTitleView(0);
  v25 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CPSmallContentView(0);
  v7 = v1 + v6[8];
  v8 = *(v7 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (v8 >> 62)
  {
    result = sub_100072EDC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = *(v25 + 56);

    return v22(a1, 1, 1, v3);
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_6:
    v11 = v6[7];
    v12 = v3[8];
    v13 = sub_100071F5C();
    (*(*(v13 - 8) + 16))(v5 + v12, v1 + v11, v13);
    sub_1000047CC(v7, v5 + v3[9], type metadata accessor for CPTimelineEntry);
    v14 = (v1 + v6[9]);
    v15 = *(v14 + 4);
    v16 = v14[1];
    v30 = *v14;
    v31 = v16;
    v32 = v15;
    sub_10000388C(&qword_1000948F0, qword_100077520);
    sub_10007280C();
    v17 = v26;
    v18 = v27;
    v23 = v29;
    v24 = v28;
    *(v5 + v3[6]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *(v5 + v3[7]) = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    *v5 = swift_getKeyPath();
    sub_10000388C(&qword_100094908, &qword_100073A20);
    swift_storeEnumTagMultiPayload();
    v19 = v3[5];
    *(v5 + v19) = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    *(v5 + v3[10]) = v10;
    v20 = v5 + v3[11];
    *v20 = v17;
    *(v20 + 1) = v18;
    v21 = v23;
    *(v20 + 1) = v24;
    *(v20 + 2) = v21;
    sub_100004768(v5, a1);
    return (*(v25 + 56))(a1, 0, 1, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000347C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000726DC();
  *a1 = result;
  return result;
}

uint64_t sub_1000034C8()
{
  v0 = sub_10007236C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948A8, &qword_100073938);
  __chkstk_darwin(v4);
  v6 = (&v10 - v5);
  *v6 = sub_1000728AC();
  v6[1] = v7;
  v8 = sub_10000388C(&qword_1000948B0, &qword_100073940);
  sub_100001D98(v6 + *(v8 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_1000948B8, &qword_1000948A8, &qword_100073938, &protocol conformance descriptor for ZStack<A>);
  sub_10007265C();
  (*(v1 + 8))(v3, v0);
  return sub_100004890(v6, &qword_1000948A8, &qword_100073938);
}

uint64_t sub_1000036C4(uint64_t a1)
{
  sub_10000388C(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_100004C3C(&qword_100094760, &qword_100094758, &unk_100073820, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722FC();
}

uint64_t sub_10000388C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000038D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000391C(uint64_t a1)
{
  sub_10000388C(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_100004C3C(&qword_100094798, &qword_100094790, &unk_100073850, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722FC();
}

uint64_t sub_100003AF8()
{
  sub_10000388C(&qword_1000947A0, &unk_100074260);
  sub_1000038D4(&qword_1000947A8, &unk_100073860);
  sub_1000038D4(&qword_1000947B0, &unk_100074250);
  sub_1000038D4(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_100004C3C(&qword_100094760, &qword_100094758, &unk_100073820, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722AC();
}

uint64_t sub_100003D54(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1000716A4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003DDC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (sub_1000716A4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v2;
}

uint64_t sub_100003E44()
{
  sub_10000388C(&qword_1000947B8, &unk_100073870);
  sub_1000038D4(&qword_1000947C0, &unk_100074350);
  sub_1000038D4(&qword_1000947C8, &qword_100073880);
  sub_1000038D4(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_100004C3C(&qword_100094798, &qword_100094790, &unk_100073850, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1000722AC();
}

__n128 sub_1000040C8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000040D4(uint64_t a1, int a2)
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

uint64_t sub_1000040F4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000415C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100004334(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPSmallContentView(uint64_t a1)
{
  result = qword_100094840;
  if (!qword_100094840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004534(uint64_t a1)
{
  sub_1000046CC(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000046CC(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100004EB0(319, &qword_100094860, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100071F5C();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry(319);
          if (v5 <= 0x3F)
          {
            sub_1000046CC(319, &unk_100094868, type metadata accessor for CGRect, &type metadata accessor for State);
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

void sub_1000046CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100004768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTitleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004834(uint64_t a1)
{
  v2 = type metadata accessor for CPTitleGradientView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000388C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094928, &unk_100073A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000049B0(uint64_t a1)
{
  v2 = sub_100071EAC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10007203C();
}

unint64_t sub_100004A78()
{
  result = qword_100094990;
  if (!qword_100094990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094990);
  }

  return result;
}

unint64_t sub_100004ACC()
{
  result = qword_100094998;
  if (!qword_100094998)
  {
    sub_1000038D4(&qword_100094930, &qword_100076430);
    sub_100004B84();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094998);
  }

  return result;
}

unint64_t sub_100004B84()
{
  result = qword_1000949A0;
  if (!qword_1000949A0)
  {
    sub_1000038D4(&qword_100094980, &unk_100073AC0);
    sub_100004C3C(&qword_1000949A8, &qword_1000949B0, &qword_100073B00, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949A0);
  }

  return result;
}

uint64_t sub_100004C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004C84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000388C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100004CFC()
{
  result = qword_1000949C0;
  if (!qword_1000949C0)
  {
    sub_1000038D4(&qword_100094938, &qword_100073A80);
    sub_100004ACC();
    sub_100004DB8(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949C0);
  }

  return result;
}

uint64_t sub_100004DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004E00(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

__n128 sub_100004E0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004E18(uint64_t a1, int a2)
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

uint64_t sub_100004E38(uint64_t result, int a2, int a3)
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

void sub_100004EB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100004F00()
{
  sub_1000038D4(&qword_1000948A8, &qword_100073938);
  sub_100004C3C(&qword_1000948B8, &qword_1000948A8, &qword_100073938, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
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

uint64_t sub_1000050A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
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

uint64_t type metadata accessor for CPTimelineEntry(uint64_t a1)
{
  result = qword_100094A40;
  if (!qword_100094A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000051A4(uint64_t a1)
{
  sub_100071D4C();
  if (v1 <= 0x3F)
  {
    sub_10000523C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000523C(uint64_t a1)
{
  if (!qword_100094A50)
  {
    type metadata accessor for AppDisplayData(255);
    v1 = sub_100072C9C();
    if (!v2)
    {
      atomic_store(v1, &qword_100094A50);
    }
  }
}

int *sub_100005294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100071DAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CPTimelineEntry(0);
  if (*(v2 + result[6]) == 1 && (*(v2 + result[7]) & 1) == 0 && (*(v2 + result[8]) & 1) == 0 && *(v2 + result[9]) == 1)
  {
    v10 = *(v2 + result[5]);
    if (v10 >> 62)
    {
      if (sub_100072EDC() >= 1)
      {
        result = sub_100072EDC();
        if (!result)
        {
          v16 = sub_100071C9C();
          v12 = *(*(v16 - 8) + 56);
          v13 = v16;
          v14 = a2;
          v15 = 1;
LABEL_11:

          return v12(v14, v15, 1, v13);
        }

LABEL_7:
        if ((v10 & 0xC000000000000001) != 0)
        {
          sub_100072E6C();
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        sub_10004CE40(0xD000000000000015, 0x80000001000776C0, a1, a2);

        v11 = sub_100071C9C();
        v12 = *(*(v11 - 8) + 56);
        v13 = v11;
        v14 = a2;
        v15 = 0;
        goto LABEL_11;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  (*(v6 + 104))(v8, enum case for GKFeatureFlags.GameOverlayUI(_:), v5);
  v17 = sub_100071D9C();
  (*(v6 + 8))(v8, v5);
  if ((v17 & 1) != 0 && (v18 = [objc_opt_self() currentDevice], v19 = objc_msgSend(v18, "userInterfaceIdiom"), v18, !v19))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_100005588()
{
  sub_100072E4C(91);
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x80000001000776E0;
  sub_100072B7C(v11);
  v1 = type metadata accessor for CPTimelineEntry(0);
  if (*(v0 + v1[6]))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[6]))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100072B7C(v2);

  v12._object = 0x8000000100077700;
  v12._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v12);
  if (*(v0 + v1[7]))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[7]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_100072B7C(v4);

  v13._object = 0x8000000100077720;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v13);
  if (*(v0 + v1[8]))
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[8]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_100072B7C(v6);

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100077740;
  sub_100072B7C(v14);
  if (*(v0 + v1[9]))
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v1[9]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_100072B7C(v8);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_100072B7C(v15);
  return 0;
}

uint64_t sub_10000574C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100071D4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000057B8(uint64_t a1, void (*a2)(char *), uint64_t a3, double a4)
{
  v37 = a2;
  v38 = a3;
  v35 = a1;
  v5 = type metadata accessor for CPTimelineEntry(0);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000729DC();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_10000739C();
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v15 = sub_100071E7C();
  sub_100007DE8(v15, qword_100099980);
  v16 = sub_100071E5C();
  v17 = sub_100072CFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "Live preview rate is %f, rolled a %f", v18, 0x16u);
  }

  v19 = sub_100071E5C();
  v20 = sub_100072CFC();
  v21 = os_log_type_enabled(v19, v20);
  if (v14 <= a4)
  {
    if (v21)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Showing live preview...", v24, 2u);
    }

    v34 = type metadata accessor for GameCenterStore();
    sub_100072A9C();
    v25 = swift_allocObject();
    v26 = v38;
    *(v25 + 16) = v37;
    *(v25 + 24) = v26;
    v27 = v8;
    v28 = *(v8 + 16);
    v29 = v36;
    v28(v10, v13, v36);
    v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v34;
    (*(v27 + 32))(v31 + v30, v10, v29);
    v32 = (v31 + ((v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_100008184;
    v32[1] = v25;

    sub_100035E08(sub_1000082EC);

    return (*(v27 + 8))(v13, v29);
  }

  else
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Showing placeholder preview...", v22, 2u);
    }

    sub_100071D3C();
    if (qword_100094728 != -1)
    {
      swift_once();
    }

    *&v7[v5[5]] = qword_1000999E8;
    v7[v5[6]] = 1;
    v7[v5[7]] = 0;
    v7[v5[8]] = 1;
    v7[v5[9]] = 1;

    v37(v7);
    return sub_100007E88(v7, type metadata accessor for CPTimelineEntry);
  }
}

uint64_t sub_100005C58(uint64_t a1, int a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v36 = a2;
  v5 = type metadata accessor for CPTimelineEntry(0);
  __chkstk_darwin(v5);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v35[-v9];
  v11 = sub_100071D4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v35[-v16];
  sub_100071D3C();
  v18 = *(v12 + 16);
  v39 = v11;
  v18(v14, v17, v11);
  v19 = sub_10006CEA0();
  v20 = v19;
  if (v19)
  {
  }

  v21 = sub_10006CEA0();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v23 = 0;
  }

  (*(v12 + 32))(v10, v14, v39);
  *&v10[v5[5]] = a1;
  v10[v5[6]] = v20 != 0;
  v10[v5[7]] = v36 & 1;
  v10[v5[8]] = 0;
  v10[v5[9]] = v23;
  v24 = qword_1000946F0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_100071E7C();
  sub_100007DE8(v25, qword_100099980);
  sub_100007E20(v10, v7, type metadata accessor for CPTimelineEntry);
  v26 = sub_100071E5C();
  v27 = sub_100072CFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315138;
    v30 = sub_100005588();
    v32 = v31;
    sub_100007E88(v7, type metadata accessor for CPTimelineEntry);
    v33 = sub_100034D20(v30, v32, &v40);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Snapshot entry created: %s", v28, 0xCu);
    sub_100007F50(v29);
  }

  else
  {

    sub_100007E88(v7, type metadata accessor for CPTimelineEntry);
  }

  v38(v10);
  sub_100007E88(v10, type metadata accessor for CPTimelineEntry);
  return (*(v12 + 8))(v17, v39);
}

uint64_t sub_10000602C(uint64_t a1, int a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v125 = a6;
  v126 = a5;
  v129 = a4;
  v135 = a3;
  v133 = a2;
  v131 = a1;
  v6 = sub_100072A8C();
  __chkstk_darwin(v6 - 8);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10000388C(&qword_100094A98, &qword_100073C20);
  v124 = *(v137 - 8);
  __chkstk_darwin(v137);
  v113 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v112 - v10;
  __chkstk_darwin(v11);
  v130 = &v112 - v12;
  v13 = type metadata accessor for WidgetCreationAttempt(0);
  v127 = *(v13 - 1);
  __chkstk_darwin(v13);
  v120 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v138 = &v112 - v16;
  v132 = sub_1000729DC();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  __chkstk_darwin(v19 - 8);
  v112 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v112 - v22;
  __chkstk_darwin(v23);
  v136 = &v112 - v24;
  v134 = type metadata accessor for CPTimelineEntry(0);
  v25 = *(v134 - 8);
  __chkstk_darwin(v134);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v112 - v29;
  __chkstk_darwin(v31);
  v33 = &v112 - v32;
  v34 = sub_100071D4C();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v119 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v118 = &v112 - v38;
  __chkstk_darwin(v39);
  v41 = &v112 - v40;
  __chkstk_darwin(v42);
  v44 = &v112 - v43;
  sub_100071D3C();
  v139 = v35;
  v45 = *(v35 + 16);
  v121 = v44;
  v140 = v34;
  v45(v41, v44, v34);
  v46 = sub_10006CEA0();
  v47 = v46;
  if (v46)
  {
  }

  v48 = sub_10006CEA0();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v50 = 0;
  }

  v51 = *(v139 + 32);
  v117 = v139 + 32;
  v116 = v51;
  v51(v33, v41, v140);
  v52 = v134;
  *&v33[*(v134 + 20)] = v131;
  v33[v52[6]] = v47 != 0;
  v53 = v52[7];
  v115 = v133 & 1;
  v33[v53] = v133 & 1;
  v33[v52[8]] = 0;
  v33[v52[9]] = v50;
  sub_100007E20(v33, v30, type metadata accessor for CPTimelineEntry);
  v54 = v135;
  swift_beginAccess();
  v55 = v54[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[2] = v55;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = sub_10000CC1C(0, v55[2] + 1, 1, v55);
    v54[2] = v55;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    v55 = sub_10000CC1C((v57 > 1), v58 + 1, 1, v55);
  }

  v55[2] = v58 + 1;
  sub_100007D84(v30, v55 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v58);
  v54[2] = v55;
  swift_endAccess();
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v59 = sub_100071E7C();
  v60 = sub_100007DE8(v59, qword_100099980);
  sub_100007E20(v33, v27, type metadata accessor for CPTimelineEntry);
  v131 = v60;
  v61 = sub_100071E5C();
  v62 = sub_100072CFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v142[0] = v64;
    *v63 = 136315138;
    v65 = sub_100005588();
    v67 = v66;
    sub_100007E88(v27, type metadata accessor for CPTimelineEntry);
    v68 = sub_100034D20(v65, v67, v142);

    *(v63 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v61, v62, "Timeline entry created: %s", v63, 0xCu);
    sub_100007F50(v64);
  }

  else
  {

    sub_100007E88(v27, type metadata accessor for CPTimelineEntry);
  }

  v69 = v136;
  v70 = v128;
  type metadata accessor for GameCenterStore();
  sub_100072A9C();
  sub_10002A0E4(0x65756E69746E6F43, 0xEF676E6979616C50, v18, v69);
  v71 = *(v70 + 1);
  v71(v18, v132);
  v72 = *(v127 + 48);
  if (v72(v69, 1, v13) != 1)
  {
    v128 = v33;
    v74 = v114;
    sub_100007F9C(v69, v114);
    result = v72(v74, 1, v13);
    if (result != 1)
    {
      v76 = v74;
      v77 = *(v74 + v13[5]);
      sub_100007E88(v76, type metadata accessor for WidgetCreationAttempt);
      if (v77 != 1)
      {
        v73 = 120;
        v33 = v128;
        goto LABEL_23;
      }

      v78 = v112;
      sub_100007F9C(v69, v112);
      result = v72(v78, 1, v13);
      if (result == 1)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      v79 = *(v78 + v13[6]);
      result = sub_100007E88(v78, type metadata accessor for WidgetCreationAttempt);
      v33 = v128;
      if (v79 + 0x4000000000000000 >= 0)
      {
        v73 = 2 * v79;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

  v73 = 120;
LABEL_23:
  if (v73 >= 7200)
  {
    v80 = 7200;
  }

  else
  {
    v80 = v73;
  }

  v81 = v118;
  sub_100071D3C();
  if (v133)
  {
    v82 = v80;
  }

  else
  {
    v82 = 3600;
  }

  sub_100072A9C();
  v83 = sub_1000729CC();
  v71(v18, v132);
  v84 = v138;
  v116(v138, v81, v140);
  *(v84 + v13[5]) = v115;
  *(v84 + v13[6]) = v82;
  v85 = (v84 + v13[7]);
  *v85 = 0x65756E69746E6F43;
  v85[1] = 0xEF676E6979616C50;
  *(v84 + v13[8]) = v83;
  v86 = v120;
  sub_100007E20(v84, v120, type metadata accessor for WidgetCreationAttempt);
  v87 = sub_100071E5C();
  v88 = sub_100072CFC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v142[0] = v90;
    *v89 = 136315138;
    v91 = sub_10002BF9C();
    v93 = v92;
    sub_100007E88(v86, type metadata accessor for WidgetCreationAttempt);
    v94 = sub_100034D20(v91, v93, v142);

    *(v89 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Logging widget creation attempt: %s", v89, 0xCu);
    sub_100007F50(v90);
  }

  else
  {

    sub_100007E88(v86, type metadata accessor for WidgetCreationAttempt);
  }

  v95 = v137;
  v96 = v124;
  v97 = v119;
  sub_10002AE5C();
  swift_beginAccess();

  sub_100071D0C();
  sub_100072A7C();
  v98 = *(v139 + 8);
  v139 += 8;
  v98(v97, v140);
  sub_100007344();
  v99 = v130;
  sub_100072ABC();
  v100 = *(v96 + 16);
  v101 = v123;
  v100(v123, v99, v95);
  v102 = sub_100071E5C();
  v103 = sub_100072CFC();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v141 = v135;
    *v104 = 136315138;
    v100(v113, v101, v137);
    v105 = sub_100072B4C();
    v107 = v106;
    v108 = v101;
    v109 = *(v96 + 8);
    v109(v108, v137);
    v110 = sub_100034D20(v105, v107, &v141);

    *(v104 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v102, v103, "Timeline created: %s", v104, 0xCu);
    sub_100007F50(v135);
    v99 = v130;

    v95 = v137;
  }

  else
  {

    v111 = v101;
    v109 = *(v96 + 8);
    v109(v111, v95);
  }

  v126(v99);
  v109(v99, v95);
  sub_100007E88(v138, type metadata accessor for WidgetCreationAttempt);
  sub_100007E88(v33, type metadata accessor for CPTimelineEntry);
  v98(v121, v140);
  return sub_100007EE8(v136);
}

uint64_t sub_100006EAC@<X0>(uint64_t a2@<X8>)
{
  sub_100071D3C();
  if (qword_100094728 != -1)
  {
    swift_once();
  }

  v3 = qword_1000999E8;
  v4 = type metadata accessor for CPTimelineEntry(0);
  *(a2 + v4[5]) = v3;
  *(a2 + v4[6]) = 1;
  *(a2 + v4[7]) = 0;
  *(a2 + v4[8]) = 1;
  *(a2 + v4[9]) = 1;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;

  sub_10003638C(0xD00000000000002FLL, 0x8000000100077760, sub_1000080AC, v11);
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007188;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100007188()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000082E8;

  return TimelineProvider.relevance()(a1, a2, a3);
}

unint64_t sub_100007344()
{
  result = qword_100094A90;
  if (!qword_100094A90)
  {
    type metadata accessor for CPTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A90);
  }

  return result;
}

double sub_10000739C()
{
  v1 = sub_100071D4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100071D8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100071C0C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D070(0.0, 1.0);
  v14 = v13;
  v15 = sub_10006CEA0();
  if (!v15)
  {
    return v14;
  }

  v37 = v10;
  v38 = v9;
  v16 = v15;
  v17 = [v15 teamPlayerID];
  v41 = v12;
  v18 = v17;

  sub_100072B3C();
  v39 = v1;

  v40 = sub_100072BDC();

  sub_100071D6C();
  sub_10000388C(&qword_100094AA8, &qword_100073E70);
  v19 = sub_100071D7C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100073B50;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.hour(_:), v19);
  sub_10000E238(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  v23 = v41;
  swift_deallocClassInstance();
  sub_100071D3C();
  sub_100071D5C();

  (*(v2 + 8))(v4, v39);
  (*(v6 + 8))(v8, v5);
  v24 = sub_100071BFC();
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (__OFADD__(v40, v26))
  {
    __break(1u);
    goto LABEL_15;
  }

  srand48(v40 + v26);
  v27 = drand48() * 1.84467441e19;
  if (COERCE_UNSIGNED_INT64(fabs(v27 + 0.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v27 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = ((v27 + 0.0) % 0x64);
  v0 = 99.0;
  if (qword_1000946F0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = v14 / v0;
  v28 = sub_100071E7C();
  sub_100007DE8(v28, qword_100099980);
  v29 = sub_100071E5C();
  v30 = sub_100072CFC();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v37;
  v32 = v38;
  if (v31)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v29, v30, "Generated rand based on player id = %f", v34, 0xCu);
  }

  (*(v33 + 8))(v23, v32);
  return v14;
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_100072AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = sub_1000729DC();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v13 = type metadata accessor for GameCenterStore();
  v25 = v11;
  v26 = v13;
  sub_100072A9C();
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v5 + 32))(v15 + v14, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v16 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v30;
  *v16 = v29;
  v16[1] = v17;
  v18 = v27;
  v19 = v11;
  v20 = v28;
  (*(v7 + 16))(v27, v19, v28);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  (*(v7 + 32))(v22 + v21, v18, v20);
  v23 = (v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_100007CCC;
  v23[1] = v15;

  sub_100035E08(sub_100007D80);

  (*(v7 + 8))(v25, v20);
}

uint64_t sub_100007BB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007BF0()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007CCC(uint64_t a1, int a2)
{
  v5 = *(sub_100072AAC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10000602C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_100007D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100007EE8(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007F50(void *a1)
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

uint64_t sub_100007F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094AA0, &qword_100073C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000800C()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000080AC(double a1)
{
  v3 = *(sub_100072AAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000057B8(v1 + v4, v6, v7, a1);
}

uint64_t sub_10000814C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008190()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100008230(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000729DC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_10002CEA8(a1, a2, v7, v2 + v6, v9, v10);
}

void sub_1000082F0()
{
  v1 = *(v0 + 16);
  v2 = v1 + drand48() * (*(v0 + 24) - v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1000083BC()
{
  result = sub_10007273C();
  qword_100099960 = result;
  return result;
}

uint64_t sub_1000083F8()
{
  result = sub_10007273C();
  qword_100099968 = result;
  return result;
}

uint64_t sub_100008434()
{
  result = sub_10007273C();
  qword_100099970 = result;
  return result;
}

uint64_t sub_100008470()
{
  result = sub_10007273C();
  qword_100099978 = result;
  return result;
}

double sub_1000084E0()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for WidgetFamily.systemExtraLarge(_:), v0, v2);
  sub_100008760(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v8[1] != v8[0])
  {
    (v5)(v4, enum case for WidgetFamily.systemLarge(_:), v0);
    sub_100072C1C();
    sub_100072C1C();
    v6(v4, v0);
  }

  sub_100071F3C();
  return 16.0;
}

uint64_t sub_1000086B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000870C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000087A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{

  sub_100008800(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100008800(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v151 = a7;
  v140 = a5;
  v141 = a6;
  v139[3] = a4;
  v152 = a1;
  v7 = sub_100071C9C();
  v154 = *(v7 - 8);
  __chkstk_darwin(v7);
  v148 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v147 = v139 - v10;
  __chkstk_darwin(v11);
  v146 = v139 - v12;
  __chkstk_darwin(v13);
  v143 = v139 - v14;
  __chkstk_darwin(v15);
  v142 = v139 - v16;
  __chkstk_darwin(v17);
  v19 = v139 - v18;
  __chkstk_darwin(v20);
  v22 = v139 - v21;
  __chkstk_darwin(v23);
  v25 = v139 - v24;
  __chkstk_darwin(v26);
  v28 = v139 - v27;
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  v31 = [v30 URLsForDirectory:13 inDomains:1];

  v32 = sub_100072C4C();
  if (*(v32 + 16))
  {
    v33 = *(v154 + 16);
    v34 = v32 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v153 = v7;
    v149 = v33;
    v150 = v154 + 16;
    v33(v28, v34, v7);

    v145 = v28;
    sub_100071C4C();
    v144 = v25;
    sub_100071C4C();
    sub_100071C4C();
    v35 = [v29 defaultManager];
    sub_100071C7C();
    v36 = sub_100072B2C();

    v37 = [v35 fileExistsAtPath:v36];

    v38 = &SeededRandomNumberGenerator;
    v39 = v22;
    v40 = v19;
    v41 = v29;
    if (v37)
    {
      v42 = v154;
      v44 = sub_100071CAC();
      v46 = v45;
      v47 = objc_allocWithZone(UIImage);
      sub_10000870C(v44, v46);
      isa = sub_100071CBC().super.isa;
      v147 = [v47 initWithData:isa];

      v152 = v44;
      v148 = v46;
      sub_1000086B8(v44, v46);
      if (qword_1000946F8 != -1)
      {
        swift_once();
      }

      v49 = sub_100071E7C();
      sub_100007DE8(v49, qword_100099998);
      v50 = v142;
      v51 = v153;
      v149(v142, v19, v153);
      v52 = sub_100071E5C();
      v53 = sub_100072CFC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v156[0] = v55;
        *v54 = 136315138;
        v56 = sub_100071C2C();
        v57 = v50;
        v59 = v58;
        v60 = *(v154 + 8);
        v60(v57, v51);
        v61 = sub_100034D20(v56, v59, v156);

        *(v54 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v52, v53, "Fetching cached image from %s", v54, 0xCu);
        sub_100007F50(v55);

        v40 = v19;
      }

      else
      {

        v60 = *(v42 + 8);
        v60(v50, v51);
      }

      v130 = v147;
      v131 = v145;
      if (v147)
      {
        swift_beginAccess();
        v132 = v130;
        v133 = v141;

        sub_10004CB20(v130, v140, v133);
        swift_endAccess();
      }

      dispatch_group_leave(v151);

      sub_1000086B8(v152, v148);
      v60(v40, v51);
      v60(v22, v51);
      v60(v144, v51);
      v117 = v131;
      v118 = v51;
LABEL_39:
      v60(v117, v118);
      return;
    }

    v142 = v19;
    v143 = 0;
    v62 = [v29 defaultManager];
    sub_100071C7C();
    v63 = sub_100072B2C();

    v64 = [v62 fileExistsAtPath:v63];

    v65 = v153;
    if (v64)
    {
LABEL_20:
      v146 = v39;
      v85 = v147;
      if (v38[24].weak_ivar_lyt != -1)
      {
        swift_once();
      }

      v86 = sub_100071E7C();
      sub_100007DE8(v86, qword_100099998);
      v149(v85, v152, v65);
      v87 = sub_100071E5C();
      v88 = sub_100072CFC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = v85;
        v91 = swift_slowAlloc();
        v156[0] = v91;
        *v89 = 136315138;
        v92 = sub_100071C2C();
        v94 = v93;
        v60 = *(v154 + 8);
        v60(v90, v153);
        v95 = sub_100034D20(v92, v94, v156);

        *(v89 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v87, v88, "attempting download of image from %s", v89, 0xCu);
        sub_100007F50(v91);

        v65 = v153;
      }

      else
      {

        v60 = *(v154 + 8);
        v60(v85, v65);
      }

      v96 = v148;
      v97 = v143;
      v98 = sub_100071CAC();
      if (v97)
      {
        v149(v96, v152, v65);
        swift_errorRetain();
        v102 = sub_100071E5C();
        v103 = sub_100072CFC();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v156[0] = swift_slowAlloc();
          *v104 = 136315394;
          v105 = sub_100071C2C();
          v106 = v96;
          v108 = v107;
          v60(v106, v153);
          v109 = sub_100034D20(v105, v108, v156);

          *(v104 + 4) = v109;
          *(v104 + 12) = 2080;
          v155 = v97;
          swift_errorRetain();
          sub_10000388C(&qword_100094BF8, qword_100073CB0);
          v110 = sub_100072B4C();
          v112 = sub_100034D20(v110, v111, v156);

          *(v104 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v102, v103, "unable to download of image from %s, error: %s", v104, 0x16u);
          swift_arrayDestroy();
          v65 = v153;
        }

        else
        {

          v60(v96, v65);
        }

        v113 = v146;
        v114 = v142;
        dispatch_group_leave(v151);

        v116 = v144;
        v115 = v145;
      }

      else
      {
        v100 = v98;
        v101 = v99;
        sub_100071CDC();
        v134 = objc_allocWithZone(UIImage);
        sub_10000870C(v100, v101);
        v135 = sub_100071CBC().super.isa;
        v136 = [v134 initWithData:v135];

        sub_1000086B8(v100, v101);
        if (v136)
        {
          swift_beginAccess();
          v137 = v141;

          v138 = v136;
          sub_10004CB20(v136, v140, v137);
          swift_endAccess();
        }

        dispatch_group_leave(v151);

        sub_1000086B8(v100, v101);
        v116 = v144;
        v115 = v145;
        v113 = v146;
        v114 = v142;
      }

      v60(v114, v65);
      v60(v113, v65);
      v60(v116, v65);
      v117 = v115;
      v118 = v65;
      goto LABEL_39;
    }

    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v66 = sub_100071E7C();
    sub_100007DE8(v66, qword_100099998);
    v67 = v146;
    v149(v146, v22, v65);
    v68 = sub_100071E5C();
    v69 = sub_100072CFC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v156[0] = v71;
      *v70 = 136315138;
      sub_100008760(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v72 = sub_100072FEC();
      v73 = v67;
      v75 = v74;
      v76 = *(v154 + 8);
      v76(v73, v153);
      v77 = sub_100034D20(v72, v75, v156);

      *(v70 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Creating directory for cached images at %s", v70, 0xCu);
      sub_100007F50(v71);
      v65 = v153;

      v38 = &SeededRandomNumberGenerator;

      v78 = v76;
    }

    else
    {

      v78 = *(v154 + 8);
      v78(v67, v65);
    }

    v79 = [v41 defaultManager];
    sub_100071C3C(v80);
    v82 = v81;
    v156[0] = 0;
    v83 = [v79 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:v156];

    if (v83)
    {
      v84 = v156[0];
      goto LABEL_20;
    }

    v119 = v156[0];
    v120 = sub_100071C1C();

    swift_willThrow();
    swift_errorRetain();
    v121 = sub_100071E5C();
    v122 = sub_100072CFC();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = v39;
      v125 = swift_slowAlloc();
      v156[0] = v125;
      *v123 = 136315138;
      v155 = v120;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v126 = sub_100072B4C();
      v128 = sub_100034D20(v126, v127, v156);
      v65 = v153;

      *(v123 + 4) = v128;
      _os_log_impl(&_mh_execute_header, v121, v122, "Unable to create remoteImageDirectory directory %s.", v123, 0xCu);
      sub_100007F50(v125);
      v39 = v124;
    }

    v129 = v142;
    dispatch_group_leave(v151);

    v78(v129, v65);
    v78(v39, v65);
    v78(v144, v65);
    v78(v145, v65);
  }

  else
  {

    v43 = v151;

    dispatch_group_leave(v43);
  }
}

void sub_10000997C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{

  sub_1000087A8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000099E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100009AB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AFTimelineEntry(uint64_t a1)
{
  result = qword_100094C60;
  if (!qword_100094C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009BBC(uint64_t a1)
{
  sub_100071D4C();
  if (v1 <= 0x3F)
  {
    sub_100009C54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009C54()
{
  if (!qword_100094C70)
  {
    v0 = sub_100072C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100094C70);
    }
  }
}

__n128 sub_100009CA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100009CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100009D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009D50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100072D2C();
  v4 = v3;

  sub_10000388C(&qword_100094CB0, &qword_100073D90);
  sub_100009F94();
  sub_100004A78();
  v5 = sub_100072C0C();
  v7 = v6;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_100072B7C(v9);

  *a1 = v2;
  a1[1] = v4;
  return result;
}

int *sub_100009E34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100071D4C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071D3C();
  v6 = sub_10006CEA0();
  v7 = v6;
  if (v6)
  {
  }

  v8 = sub_10006CEA0();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v10 = 0;
  }

  (*(v3 + 32))(a1, v5, v2);
  result = type metadata accessor for AFTimelineEntry(0);
  *(a1 + result[5]) = v7 != 0;
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 1;
  *(a1 + result[8]) = v10;
  *(a1 + result[9]) = &_swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100009F94()
{
  result = qword_100094CB8;
  if (!qword_100094CB8)
  {
    sub_1000038D4(&qword_100094CB0, &qword_100073D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094CB8);
  }

  return result;
}

uint64_t sub_10000A050(void **a1, uint64_t a2, char **a3)
{
  v3 = *a1;
  v60 = &_swiftEmptySetSingleton;
  v4 = [v3 relationships];
  v5 = [v4 players];

  v57 = v3;
  if (!v5)
  {
    goto LABEL_30;
  }

  sub_10000F74C(0, &qword_100094D00, GKPlayerActivityRelationshipPlayer_ptr);
  v6 = sub_100072C4C();

  if (v6 >> 62)
  {
LABEL_22:
    v7 = sub_100072EDC();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v10 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = sub_100072E6C();
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v13 = [v11 identifier];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v8 == v7)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        v53 = sub_100072B3C();
        v16 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000CD60(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_10000CD60((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v19 = &v9[16 * v18];
        *(v19 + 4) = v53;
        *(v19 + 5) = v16;
      }

      while (v8 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_24:

  v20 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v21 = *(v9 + 2);
  if (v21)
  {
    v22 = 0;
    v23 = (v9 + 40);
    do
    {
      if (v22 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_50;
      }

      ++v22;
      v24 = *(v23 - 1);
      v25 = *v23;

      v6 = &v59;
      sub_10000D114(&v58, v24, v25);

      v23 += 2;
    }

    while (v21 != v22);
    v20 = v59;
  }

  sub_10000A5C8(v20);
  v3 = v57;
LABEL_30:
  v26 = [v3 relationships];
  v27 = [v26 games];

  if (!v27)
  {
    goto LABEL_60;
  }

  sub_10000F74C(0, &qword_100094CF8, GKPlayerActivityRelationshipGame_ptr);
  v6 = sub_100072C4C();

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v29 = 0;
    v30 = &_swiftEmptyArrayStorage;
LABEL_34:
    v31 = v29;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v32 = sub_100072E6C();
      }

      else
      {
        if (v31 >= *(v21 + 16))
        {
          goto LABEL_51;
        }

        v32 = *(v6 + 8 * v31 + 32);
      }

      v33 = v32;
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v34 = [v32 identifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_100072B3C();
        v52 = v37;
        v54 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10000CD60(0, *(v30 + 2) + 1, 1, v30);
        }

        v39 = *(v30 + 2);
        v38 = *(v30 + 3);
        if (v39 >= v38 >> 1)
        {
          v30 = sub_10000CD60((v38 > 1), v39 + 1, 1, v30);
        }

        *(v30 + 2) = v39 + 1;
        v40 = &v30[16 * v39];
        *(v40 + 4) = v54;
        *(v40 + 5) = v52;
        if (v29 != i)
        {
          goto LABEL_34;
        }

        goto LABEL_54;
      }

      ++v31;
      if (v29 == i)
      {
        goto LABEL_54;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v30 = &_swiftEmptyArrayStorage;
LABEL_54:

  v41 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v42 = *(v30 + 2);
  if (!v42)
  {
LABEL_59:

    sub_10000A5C8(v41);
    v3 = v57;
LABEL_60:
    v43 = sub_10000D264(a2, &v60);
    v44 = *a3;
    v42 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v44;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  v43 = 0;
  v44 = v30 + 40;
  while (v43 < *(v30 + 2))
  {
    v43 = (v43 + 1);
    v45 = *(v44 - 1);
    v46 = *v44;

    sub_10000D114(&v58, v45, v46);

    v44 += 16;
    if (v42 == v43)
    {
      v41 = v59;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_65:
  v44 = sub_10000CC44(0, *(v44 + 2) + 1, 1, v44);
  *a3 = v44;
LABEL_61:
  v49 = *(v44 + 2);
  v48 = *(v44 + 3);
  if (v49 >= v48 >> 1)
  {
    v44 = sub_10000CC44((v48 > 1), v49 + 1, 1, v44);
    *a3 = v44;
  }

  *(v44 + 2) = v49 + 1;
  v50 = &v44[24 * v49];
  *(v50 + 4) = v42;
  *(v50 + 5) = v43;
  v50[48] = 0;
}

uint64_t sub_10000A5C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10000D114(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10000A6CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v24 = type metadata accessor for GameCenterStore();
  v13 = *(v7 + 16);
  v13(v12, a1, v6);
  v13(v9, v12, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, v12, v6);

  v16 = sub_10006CEA0();
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() proxyForPlayer:v16];
    v19 = [v18 utilityServicePrivate];

    v20 = swift_allocObject();
    v20[2] = v24;
    v20[3] = sub_10000EBC4;
    v20[4] = v15;
    aBlock[4] = sub_10000F5D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CE08;
    aBlock[3] = &unk_1000923B8;
    v21 = _Block_copy(aBlock);

    [v19 getWidgetStoreBagValueWithHandler:v21];

    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000F144(a2, a3, v9, 1.0);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000A9A8(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v94 = a5;
  v95 = a4;
  v90 = a2;
  v7 = sub_100071D4C();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v86 - v11;
  __chkstk_darwin(v13);
  v91 = &v86 - v14;
  v15 = type metadata accessor for AFTimelineEntry(0);
  __chkstk_darwin(v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v86 - v19;
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v24 = sub_1000729DC();
  __chkstk_darwin(v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v86 - v28;
  if (a3 || !a1)
  {
    sub_100071D3C();
    v37 = sub_10006CEA0();
    v38 = v37;
    if (v37)
    {
    }

    v39 = sub_10006CEA0();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 hasAcknowledgedLatestGDPR];
    }

    else
    {
      v41 = 0;
    }

    (*(v92 + 32))(v17, v9, v93);
    v17[v15[5]] = v38 != 0;
    v42 = v15[6];
    v17[v42] = 0;
    v17[v15[7]] = 1;
    v17[v15[8]] = v41;
    *&v17[v15[9]] = &_swiftEmptyArrayStorage;
    if (!a3)
    {
      goto LABEL_26;
    }

    v97 = a3;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    sub_10000F74C(0, &qword_100094D20, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v43 = v96;
    v44 = [v96 domain];
    v45 = sub_100072B3C();
    v47 = v46;

    if (v45 == 0xD000000000000026 && 0x80000001000778A0 == v47)
    {
    }

    else
    {
      v48 = sub_100072FFC();

      if ((v48 & 1) == 0)
      {

LABEL_25:
        v17[v42] = 1;
LABEL_26:
        v95(v17);
        v50 = v17;
        return sub_10000EB64(v50);
      }
    }

    v49 = [v43 code];

    if (v49 == 404)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v32 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_5;
    }

LABEL_75:
    if (qword_100094708 == -1)
    {
LABEL_76:
      v77 = sub_100071E7C();
      sub_100007DE8(v77, qword_1000999C8);
      v78 = sub_100071E5C();
      v79 = sub_100072CFC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "getTimeline, showing empty state", v80, 2u);
      }

      sub_100071D3C();
      v81 = sub_10006CEA0();
      v82 = v81;
      if (v81)
      {
      }

      v83 = sub_10006CEA0();
      if (v83)
      {
        v84 = v83;
        v85 = [v83 hasAcknowledgedLatestGDPR];
      }

      else
      {
        v85 = 0;
      }

      (*(v92 + 32))(v20, v12, v93);
      *(v20 + v15[5]) = v82 != 0;
      *(v20 + v15[6]) = 0;
      *(v20 + v15[7]) = 0;
      *(v20 + v15[8]) = v85;
      *(v20 + v15[9]) = &_swiftEmptyArrayStorage;
      v95(v20);
      v50 = v20;
      return sub_10000EB64(v50);
    }

LABEL_86:
    swift_once();
    goto LABEL_76;
  }

  v74 = v29;
  v75 = v30;
  v87 = &v86 - v28;
  v76 = sub_100072EDC();
  v31 = v87;
  v30 = v75;
  v29 = v74;
  if (v76 < 1)
  {
    goto LABEL_75;
  }

LABEL_5:
  v33 = v29;
  v34 = v30;
  v12 = v31;
  sub_100072A9C();
  v35 = *(v34 + 16);
  v87 = v12;
  v35(v26, v12, v33);
  v88 = v34;
  v89 = v33;
  v36 = (*(v34 + 88))(v26, v33);
  if (v36 == enum case for WidgetFamily.systemSmall(_:))
  {
    v20 = 1;
    goto LABEL_29;
  }

  if (v36 == enum case for WidgetFamily.systemMedium(_:))
  {
    v20 = 2;
    goto LABEL_29;
  }

  if (v36 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_23;
  }

  if (v36 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v20 = 8;
  }

  else
  {
    v20 = 1;
    if (v36 != enum case for WidgetFamily.accessoryCircular(_:) && v36 != enum case for WidgetFamily.accessoryRectangular(_:) && v36 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v88 + 8))(v26, v89);
LABEL_23:
      v20 = 4;
    }
  }

LABEL_29:
  if (v32)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v53 = a1;
    }

    else
    {
      v53 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v54 = sub_100072EDC();
    if (sub_100072EDC() < 0)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v54 >= v20)
    {
      v55 = v20;
    }

    else
    {
      v55 = v54;
    }

    if (v54 >= 0)
    {
      v52 = v55;
    }

    else
    {
      v52 = v20;
    }

    v51 = sub_100072EDC();
  }

  else
  {
    v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 >= v20)
    {
      v52 = v20;
    }

    else
    {
      v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v51 < v52)
  {
    __break(1u);
    goto LABEL_86;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (v52)
    {
      sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);

      v56 = 0;
      do
      {
        v57 = v56 + 1;
        sub_100072E5C(v56);
        v56 = v57;
      }

      while (v52 != v57);
      if (v32)
      {
LABEL_55:

        a1 = sub_100072EEC();
        v53 = v59;
        v54 = v60;
        v32 = v91;
        if ((v60 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
  }

  v53 = 0;
  a1 &= 0xFFFFFFFFFFFFFF8uLL;
  v58 = a1 + 32;
  v54 = (2 * v52) | 1;
  v32 = v91;
  if ((v54 & 1) == 0)
  {
LABEL_56:
    sub_10000E060(a1, v58, v53, v54);
    v62 = v61;
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

LABEL_57:
  v12 = v58;
  sub_10007300C();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = &_swiftEmptyArrayStorage;
  }

  v64 = v63[2];

  if (__OFSUB__(v54 >> 1, v53))
  {
    goto LABEL_88;
  }

  if (v64 != (v54 >> 1) - v53)
  {
LABEL_89:
    swift_unknownObjectRelease();
    v58 = v12;
    goto LABEL_56;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v62)
  {
    v62 = &_swiftEmptyArrayStorage;
    goto LABEL_63;
  }

LABEL_64:
  sub_100071D3C();
  v65 = sub_10006CEA0();
  v66 = v65;
  if (v65)
  {
  }

  v67 = sub_10006CEA0();
  if (v67)
  {
    v68 = v67;
    v69 = [v67 hasAcknowledgedLatestGDPR];
  }

  else
  {
    v69 = 0;
  }

  v70 = v66 != 0;
  v71 = v87;
  v72 = sub_10000E658(v62, v90, v87);

  (*(v92 + 32))(v23, v32, v93);
  v23[v15[5]] = v70;
  v23[v15[6]] = 0;
  v23[v15[7]] = 0;
  v23[v15[8]] = v69;
  *&v23[v15[9]] = v72;
  v95(v23);
  sub_10000EB64(v23);
  return (*(v88 + 8))(v71, v89);
}

uint64_t sub_10000B31C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v142 = a7;
  v138 = a5;
  v139 = a4;
  v152 = a2;
  v9 = sub_100072A8C();
  __chkstk_darwin(v9 - 8);
  v137 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100094CC8, &qword_100073E30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v150 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = &v129 - v15;
  v158 = sub_100071D4C();
  v140 = *(v158 - 8);
  __chkstk_darwin(v158);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v129 - v19;
  __chkstk_darwin(v21);
  v23 = &v129 - v22;
  __chkstk_darwin(v24);
  v153 = &v129 - v25;
  v157 = type metadata accessor for AFTimelineEntry(0);
  v154 = *(v157 - 8);
  __chkstk_darwin(v157);
  v151 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v160 = &v129 - v28;
  __chkstk_darwin(v29);
  v155 = &v129 - v30;
  __chkstk_darwin(v31);
  v146 = &v129 - v32;
  v33 = sub_1000729DC();
  v135 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v129 - v37;
  __chkstk_darwin(v39);
  v156 = &v129 - v41;
  if (a3 || !a1)
  {
    sub_10000388C(&qword_100094CD0, &qword_100073E38);
    v50 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100073B50;
    sub_100009E34(v51 + v50);
    sub_100071D0C();
    sub_100072A7C();
    (*(v140 + 8))(v20, v158);
    sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry, &unk_100073D24);
    v52 = v136;
LABEL_154:
    sub_100072ABC();
    v139(v52);
    return (*(v12 + 8))(v52, v11);
  }

  v159 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42 >= 1)
    {
      goto LABEL_5;
    }

LABEL_145:
    if (qword_100094708 == -1)
    {
LABEL_146:
      v111 = sub_100071E7C();
      sub_100007DE8(v111, qword_1000999C8);
      v112 = sub_100071E5C();
      v113 = sub_100072CFC();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "getTimeline, showing empty state", v114, 2u);
      }

      sub_10000388C(&qword_100094CD0, &qword_100073E38);
      v115 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_100073B50;
      v117 = v116 + v115;
      sub_100071D3C();
      v118 = sub_10006CEA0();
      v119 = v118;
      if (v118)
      {
      }

      v120 = sub_10006CEA0();
      v121 = v20;
      if (v120)
      {
        v122 = v11;
        v123 = v120;
        v124 = [v120 hasAcknowledgedLatestGDPR];

        v11 = v122;
      }

      else
      {
        v124 = 0;
      }

      v125 = v140;
      v126 = v17;
      v127 = v158;
      (*(v140 + 32))(v117, v126, v158);
      v128 = v157;
      *(v117 + *(v157 + 20)) = v119 != 0;
      *(v117 + v128[6]) = 0;
      *(v117 + v128[7]) = 0;
      *(v117 + v128[8]) = v124;
      *(v117 + v128[9]) = &_swiftEmptyArrayStorage;
      sub_100071D0C();
      sub_100072A7C();
      (*(v125 + 8))(v121, v127);
      sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry, &unk_100073D24);
      v52 = v150;
      goto LABEL_154;
    }

LABEL_163:
    swift_once();
    goto LABEL_146;
  }

LABEL_144:
  v110 = v40;
  v42 = sub_100072EDC();
  v40 = v110;
  if (v42 < 1)
  {
    goto LABEL_145;
  }

LABEL_5:
  v150 = v42;
  v147 = v23;
  v132 = v20;
  v133 = v12;
  v43 = v156;
  v44 = v40;
  sub_100072A9C();
  v45 = v135;
  v17 = *(v135 + 16);
  (v17)(v38, v43, v44);
  v46 = *(v45 + 88);
  v20 = v45 + 88;
  v23 = v46;
  v134 = v44;
  v47 = (v46)(v38, v44);
  v12 = enum case for WidgetFamily.systemSmall(_:);
  if (v47 == enum case for WidgetFamily.systemSmall(_:))
  {
    v48 = 1;
    v49 = v150;
    goto LABEL_14;
  }

  v49 = v150;
  if (v47 == enum case for WidgetFamily.systemMedium(_:))
  {
    v48 = 2;
    goto LABEL_14;
  }

  if (v47 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_11;
  }

  if (v47 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v48 = 8;
  }

  else
  {
    v48 = 1;
    if (v47 != enum case for WidgetFamily.accessoryCircular(_:) && v47 != enum case for WidgetFamily.accessoryRectangular(_:) && v47 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v135 + 8))(v38, v134);
      v49 = v150;
LABEL_11:
      v48 = 4;
    }
  }

LABEL_14:
  v53 = ceilf(v49 / v48);
  if ((LODWORD(v53) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_156;
  }

  if (v53 <= -9.2234e18)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v53 >= 9.2234e18)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    swift_once();
LABEL_113:
    v103 = sub_100071E7C();
    sub_100007DE8(v103, qword_1000999C8);
    v17 = v142;

    v104 = sub_100071E5C();
    v105 = sub_100072CFC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      swift_beginAccess();
      *(v106 + 4) = *(*(v17 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v104, v105, "getTimeline, constructed %ld timelineEntries", v106, 0xCu);
    }

    else
    {
    }

    if (__OFADD__(v38, 1))
    {
      __break(1u);
    }

    else if (((v38 + 1) * v149) >> 64 == ((v38 + 1) * v149) >> 63)
    {
      v107 = v132;
      sub_100071D0C();
      swift_beginAccess();

      sub_100072A7C();
      sub_10000F794(&qword_100094CC0, type metadata accessor for AFTimelineEntry, &unk_100073D24);
      v108 = v136;
      sub_100072ABC();
      v44(v108);
      (*(v20 + 8))(v108, v131);
      (*(v140 + 8))(v107, v158);
      return (*(v135 + 8))(v156, v134);
    }

    __break(1u);
    goto LABEL_161;
  }

  v148 = v48;
  v131 = v11;
  v38 = v53;
  v54 = v134;
  (v17)(v35, v156, v134);
  v55 = (v23)(v35, v54);
  v44 = v139;
  v11 = v138;
  v20 = v133;
  if (v55 == v12)
  {
    goto LABEL_18;
  }

  if (v55 == enum case for WidgetFamily.systemMedium(_:))
  {
    v149 = 1200;
    if (!v38)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v55 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v55 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v149 = 4800;
        if (!v38)
        {
          goto LABEL_99;
        }

        goto LABEL_19;
      }

      if (v55 == enum case for WidgetFamily.accessoryCircular(_:) || v55 == enum case for WidgetFamily.accessoryRectangular(_:) || v55 == enum case for WidgetFamily.accessoryInline(_:))
      {
LABEL_18:
        v149 = 600;
        if (v38)
        {
          goto LABEL_19;
        }

LABEL_99:
        sub_100071D3C();
        v90 = sub_10006CEA0();
        v91 = v90;
        if (v90)
        {
        }

        v92 = sub_10006CEA0();
        if (v92)
        {
          v93 = v92;
          v94 = [v92 hasAcknowledgedLatestGDPR];
        }

        else
        {
          v94 = 0;
        }

        v95 = sub_10000E658(a1, v152, v156);
        v96 = v146;
        (*(v140 + 32))(v146, v153, v158);
        v97 = v157;
        *(v96 + *(v157 + 20)) = v91 != 0;
        *(v96 + v97[6]) = 0;
        *(v96 + v97[7]) = 0;
        *(v96 + v97[8]) = v94;
        *(v96 + v97[9]) = v95;
        sub_10000EA9C(v96, v155);
        v98 = v142;
        swift_beginAccess();
        v99 = *(v98 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v98 + 16) = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v99 = sub_10000CE94(0, v99[2] + 1, 1, v99, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
          *(v142 + 16) = v99;
        }

        v102 = v99[2];
        v101 = v99[3];
        if (v102 >= v101 >> 1)
        {
          v99 = sub_10000CE94((v101 > 1), v102 + 1, 1, v99, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
        }

        v99[2] = v102 + 1;
        sub_10000EB00(v155, v99 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v102);
        *(v142 + 16) = v99;
        swift_endAccess();
        sub_10000EB64(v96);
LABEL_112:
        if (qword_100094708 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_158;
      }

      (*(v135 + 8))(v35, v134);
    }

    v149 = 2400;
    if (!v38)
    {
      goto LABEL_99;
    }
  }

LABEL_19:
  if (__OFSUB__(v38, 1))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v130 = v38;
  v11 = v142;
  if (v38 - 1 < 0)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v40 = sub_100071E3C();
  v144 = v40;
  v20 = 0;
  v146 = (a1 & 0xC000000000000001);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v56 = a1;
  }

  else
  {
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v155 = v56;
  v153 = (a1 & 0xFFFFFFFFFFFFFF8);
  v141 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v143 = (v140 + 32);
  v57 = v148;
  v12 = v148;
  v145 = v38 - 1;
  while (1)
  {
    if (v150 >= v12)
    {
      v38 = v12;
    }

    else
    {
      v38 = v150;
    }

    v58 = v20 * v57;
    if ((v20 * v57) >> 64 != (v20 * v57) >> 63)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v59 = (v58 + v57);
    if (__OFADD__(v58, v57))
    {
      goto LABEL_131;
    }

    if (v150 < v59)
    {
      v59 = v150;
    }

    v60 = __OFSUB__(v59, 1);
    v61 = v59 - 1;
    if (v60)
    {
      goto LABEL_132;
    }

    if (v61 < v58)
    {
      goto LABEL_133;
    }

    v17 = (v61 + 1);
    if (__OFADD__(v61, 1))
    {
      goto LABEL_134;
    }

    if (v159)
    {
      v40 = sub_100072EDC();
      if (v40 < v58)
      {
        goto LABEL_135;
      }

      v40 = sub_100072EDC();
    }

    else
    {
      v40 = *(v153 + 2);
      if (v40 < v58)
      {
        goto LABEL_135;
      }
    }

    if (v40 < v17)
    {
      goto LABEL_136;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_137;
    }

    if (!v146)
    {

LABEL_51:
      v64 = (2 * v17) | 1;
      v23 = v153;
      v38 = v141;
LABEL_62:
      v17 = sub_10007300C();
      swift_unknownObjectRetain_n();
      v71 = swift_dynamicCastClass();
      if (!v71)
      {
        swift_unknownObjectRelease();
        v71 = &_swiftEmptyArrayStorage;
      }

      v11 = v71[2];

      v65 = v64 >> 1;
      v60 = __OFSUB__(v64 >> 1, v58);
      v35 = (v64 >> 1) - v58;
      if (v60)
      {
        goto LABEL_142;
      }

      if (v11 == v35)
      {
        v17 = swift_dynamicCastClass();
        v40 = swift_unknownObjectRelease_n();
        v11 = v142;
        if (v17)
        {
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      swift_unknownObjectRelease();
      v11 = v142;
      if (!v35)
      {
        goto LABEL_72;
      }

      goto LABEL_57;
    }

    if (v17 < v58)
    {
      goto LABEL_140;
    }

    if (v58 == v17)
    {
    }

    else
    {
      if (v58 >= v17)
      {
        goto LABEL_143;
      }

      sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);

      v62 = v58;
      do
      {
        v63 = v62 + 1;
        sub_100072E5C(v62);
        v62 = v63;
      }

      while (v38 != v63);
    }

    if (!v159)
    {
      goto LABEL_51;
    }

    v23 = sub_100072EEC();
    v38 = v70;
    v58 = v68;
    v64 = v69;
    if (v69)
    {
      goto LABEL_62;
    }

    v65 = v69 >> 1;
    v35 = (v69 >> 1) - v68;
    v17 = __OFSUB__(v69 >> 1, v68);
    v40 = swift_unknownObjectRetain();
    if (v17)
    {
      goto LABEL_141;
    }

    if (!v35)
    {
LABEL_72:
      swift_unknownObjectRelease();
LABEL_73:
      v17 = &_swiftEmptyArrayStorage;
      goto LABEL_74;
    }

LABEL_57:
    if (v35 < 1)
    {
      v17 = &_swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v17 = swift_allocObject();
      v66 = j__malloc_size(v17);
      v67 = v66 - 32;
      if (v66 < 32)
      {
        v67 = v66 - 25;
      }

      *(v17 + 16) = v35;
      *(v17 + 24) = (2 * (v67 >> 3)) | 1;
    }

    swift_unknownObjectRelease();
    if (v58 == v65)
    {
      break;
    }

    sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);
    swift_arrayInitWithCopy();
LABEL_74:
    v40 = swift_unknownObjectRelease();
LABEL_75:
    if ((v20 * v149) >> 64 != (v20 * v149) >> 63)
    {
      goto LABEL_138;
    }

    v72 = v147;
    sub_100071D0C();
    v23 = v144;
    v73 = sub_100071E1C();
    v74 = sub_100071E2C();

    if ((v74 & 1) == 0)
    {
      v75 = [objc_opt_self() authenticatedLocalPlayers];
      v76 = sub_100072C4C();

      if (*(v76 + 16))
      {
        sub_10000EA40(v76 + 32, v162);

        sub_10000F74C(0, &qword_100094CE0, GKLocalPlayer_ptr);
        if (swift_dynamicCast())
        {

          v38 = 1;
          goto LABEL_82;
        }
      }

      else
      {
      }
    }

    v38 = 0;
LABEL_82:
    v77 = sub_100071E1C();
    v78 = sub_100071E2C();

    if (v78)
    {
      goto LABEL_87;
    }

    v79 = [objc_opt_self() authenticatedLocalPlayers];
    v23 = &type metadata for Any;
    v80 = sub_100072C4C();

    if (!*(v80 + 16))
    {

LABEL_87:
      v82 = 0;
      goto LABEL_88;
    }

    sub_10000EA40(v80 + 32, v162);

    sub_10000F74C(0, &qword_100094CE0, GKLocalPlayer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_87;
    }

    v81 = v161;
    v82 = [v161 hasAcknowledgedLatestGDPR];

LABEL_88:
    v83 = sub_10000E658(v17, v152, v156);

    v84 = v160;
    (*v143)(v160, v72, v158);
    v85 = v157;
    *(v84 + *(v157 + 20)) = v38;
    *(v84 + v85[6]) = 0;
    *(v84 + v85[7]) = 0;
    *(v84 + v85[8]) = v82;
    *(v84 + v85[9]) = v83;
    v86 = v151;
    sub_10000EA9C(v84, v151);
    swift_beginAccess();
    v87 = *(v11 + 16);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 16) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_10000CE94(0, v87[2] + 1, 1, v87, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
      *(v11 + 16) = v87;
    }

    v17 = v87[2];
    v89 = v87[3];
    v35 = v17 + 1;
    if (v17 >= v89 >> 1)
    {
      v87 = sub_10000CE94((v89 > 1), v17 + 1, 1, v87, &qword_100094CD0, &qword_100073E38, type metadata accessor for AFTimelineEntry);
    }

    v87[2] = v35;
    sub_10000EB00(v86, v87 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v17);
    *(v11 + 16) = v87;
    swift_endAccess();
    v40 = sub_10000EB64(v160);
    if (v20 == v145)
    {
      v44 = v139;
      v11 = v138;
      v20 = v133;
      v38 = v130;
      goto LABEL_112;
    }

    v57 = v148;
    v12 += v148;
    v60 = __OFADD__(v20++, 1);
    if (v60)
    {
      goto LABEL_139;
    }
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10000C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  type metadata accessor for GameCenterStore();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  sub_10002BCA4(sub_10000CB64, v11);
}

uint64_t sub_10000CA54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CA8C()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CB64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100072AAC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B31C(a1, a2, a3, v9, v10, v3 + v8, v11);
}

char *sub_10000CC44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094CF0, &qword_100073E48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000CD60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000388C(&qword_100094D10, &qword_100073E58);
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

void *sub_10000CE94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000388C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10000D070(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_10000D070(a1, a2);
  }
}

uint64_t sub_10000D114(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10007303C();
  sub_100072B6C();
  v8 = sub_10007305C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100072FFC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000DB4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t *sub_10000D264(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10000D3D0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10000D624(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_10000D3D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = 0;
  v4 = a3;
  v28 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_14:
    v14 = v11 | (v5 << 6);
    v15 = (*(v4 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *a4;
    if (!*(*a4 + 16))
    {

      goto LABEL_6;
    }

    v34 = v9;
    v18 = *v15;
    v30 = v14;
    v19 = *(*(v4 + 56) + 8 * v14);
    sub_10007303C();

    v33 = v19;

    sub_100072B6C();
    v20 = sub_10007305C();
    v21 = -1 << *(v17 + 32);
    v22 = v20 & ~v21;
    if ((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(v17 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v16;
        if (v25 || (sub_100072FFC() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v4 = a3;
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v26 = __OFADD__(v31++, 1);
      v9 = v34;
      if (v26)
      {
        __break(1u);
        return sub_10000D6AC(v28, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v4 = a3;
      v9 = v34;
LABEL_6:
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_10000D6AC(v28, a2, v31, v4);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10000D624(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10000D3D0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10000D6AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000388C(&qword_100094D18, &unk_100073E60);
  result = sub_100072F1C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_10007303C();

    v33 = v21;
    sub_100072B6C();
    result = sub_10007305C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10000D8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000388C(&qword_100094D08, &qword_100073E50);
  result = sub_100072E1C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000DB4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000D8EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000DCCC();
      goto LABEL_16;
    }

    sub_10000DE28(v8 + 1);
  }

  v10 = *v4;
  sub_10007303C();
  sub_100072B6C();
  result = sub_10007305C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100072FFC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10007301C();
  __break(1u);
  return result;
}

void *sub_10000DCCC()
{
  v1 = v0;
  sub_10000388C(&qword_100094D08, &qword_100073E50);
  v2 = *v0;
  v3 = sub_100072E0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000DE28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000388C(&qword_100094D08, &qword_100073E50);
  result = sub_100072E1C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10007303C();

      sub_100072B6C();
      result = sub_10007305C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_10000E060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000E154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AppDisplayData(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000388C(&qword_100094CE8, &qword_100073E40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_10000E238(uint64_t a1)
{
  v2 = sub_100071D7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000388C(&qword_100094D28, &qword_100073E78);
    v9 = sub_100072E2C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10000F794(&qword_100094D30, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_100072B0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10000F794(&qword_100094D38, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_100072B1C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10000E558(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100072E6C();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10000A050(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

char *sub_10000E658(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v34 = &_swiftEmptyArrayStorage;

  sub_10000E558(a1, a2, &v34);

  v13 = v34;
  v14 = *(v34 + 2);
  v15 = *(v7 + 16);
  v33 = a3;
  v15(v12, a3, v6);
  v32 = v7;
  v16 = *(v7 + 88);
  v17 = v16(v12, v6);
  v18 = enum case for WidgetFamily.systemSmall(_:);
  if (v17 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v17 == enum case for WidgetFamily.systemMedium(_:))
  {
    if (v14 > 1)
    {
      return v13;
    }
  }

  else
  {
    if (v17 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        if (v14 < 8)
        {
          goto LABEL_12;
        }

        return v13;
      }

      if (v17 == enum case for WidgetFamily.accessoryCircular(_:) || v17 == enum case for WidgetFamily.accessoryRectangular(_:) || v17 == enum case for WidgetFamily.accessoryInline(_:))
      {
LABEL_2:
        if (!v14)
        {
          goto LABEL_12;
        }

        return v13;
      }

      (*(v32 + 8))(v12, v6);
    }

    if (v14 >= 4)
    {
      return v13;
    }
  }

LABEL_12:
  v19 = *(v13 + 2);
  v15(v9, v33, v6);
  result = v16(v9, v6);
  if (result != v18)
  {
    if (result == enum case for WidgetFamily.systemMedium(_:))
    {
      v21 = 2;
      v22 = v19 == 2;
      if (v19 > 2)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }

    if (result == enum case for WidgetFamily.systemLarge(_:))
    {
      goto LABEL_19;
    }

    if (result != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      goto LABEL_41;
    }

    v21 = 8;
    v22 = v19 == 8;
    if (v19 <= 8)
    {
      goto LABEL_20;
    }

LABEL_40:
    while (1)
    {
      __break(1u);
LABEL_41:
      v30 = result == enum case for WidgetFamily.accessoryCircular(_:) || result == enum case for WidgetFamily.accessoryRectangular(_:);
      if (v30 || result == enum case for WidgetFamily.accessoryInline(_:))
      {
        break;
      }

      result = (*(v32 + 8))(v9, v6);
LABEL_19:
      v21 = 4;
      v22 = v19 == 4;
      if (v19 <= 4)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = 1;
  v22 = v19 == 1;
  if (v19 > 1)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (v22)
  {
    return v13;
  }

  v23 = v21 - v19;
  if (v21 > v19)
  {
    do
    {
      v24 = [objc_allocWithZone(GKPlayerActivityItemInternal) init];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10000CC44(0, *(v13 + 2) + 1, 1, v13);
      }

      v26 = *(v13 + 2);
      v25 = *(v13 + 3);
      if (v26 >= v25 >> 1)
      {
        v13 = sub_10000CC44((v25 > 1), v26 + 1, 1, v13);
      }

      *(v13 + 2) = v26 + 1;
      v27 = &v13[24 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = &_swiftEmptyDictionarySingleton;
      v27[48] = 1;
      --v23;
    }

    while (v23);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000EA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EB64(uint64_t a1)
{
  v2 = type metadata accessor for AFTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EBC4(double a1)
{
  v3 = *(sub_100072AAC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000F144(v4, v5, v6, a1);
}

double sub_10000EC38()
{
  v1 = sub_100071D4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100071D8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100071C0C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D070(0.0, 1.0);
  v14 = v13;
  v15 = sub_10006CEA0();
  if (!v15)
  {
    return v14;
  }

  v37 = v10;
  v38 = v9;
  v16 = v15;
  v17 = [v15 teamPlayerID];
  v41 = v12;
  v18 = v17;

  sub_100072B3C();
  v39 = v1;

  v40 = sub_100072BDC();

  sub_100071D6C();
  sub_10000388C(&qword_100094AA8, &qword_100073E70);
  v19 = sub_100071D7C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100073B50;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.hour(_:), v19);
  sub_10000E238(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  v23 = v41;
  swift_deallocClassInstance();
  sub_100071D3C();
  sub_100071D5C();

  (*(v2 + 8))(v4, v39);
  (*(v6 + 8))(v8, v5);
  v24 = sub_100071BFC();
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (__OFADD__(v40, v26))
  {
    __break(1u);
    goto LABEL_15;
  }

  srand48(v40 + v26);
  v27 = drand48() * 1.84467441e19;
  if (COERCE_UNSIGNED_INT64(fabs(v27 + 0.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v27 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = ((v27 + 0.0) % 0x64);
  v0 = 99.0;
  if (qword_100094708 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = v14 / v0;
  v28 = sub_100071E7C();
  sub_100007DE8(v28, qword_1000999C8);
  v29 = sub_100071E5C();
  v30 = sub_100072CFC();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v37;
  v32 = v38;
  if (v31)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v29, v30, "Generated rand based on player id = %f", v34, 0xCu);
  }

  (*(v33 + 8))(v23, v32);
  return v14;
}

uint64_t sub_10000F144(void (*a1)(char *), uint64_t a2, uint64_t a3, double a4)
{
  v36 = a3;
  v37 = a1;
  v38 = a2;
  v5 = sub_100071D4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AFTimelineEntry(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100072AAC();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000EC38();
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v15 = sub_100071E7C();
  sub_100007DE8(v15, qword_1000999C8);
  v16 = sub_100071E5C();
  v17 = sub_100072CFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v8;
    *v18 = 134218240;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "AFTimelineProvider.getSnapshot: Live preview rate is %f, rolled a %f", v18, 0x16u);
    v8 = v33;
  }

  if (v14 <= a4)
  {
    type metadata accessor for GameCenterStore();
    v28 = v34;
    v27 = v35;
    (*(v12 + 16))(v34, v36, v35);
    v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = swift_allocObject();
    v31 = v38;
    *(v30 + 16) = v37;
    *(v30 + 24) = v31;
    (*(v12 + 32))(v30 + v29, v28, v27);

    sub_10002BCA4(sub_10000F6C0, v30);
  }

  else
  {
    v19 = sub_100071E5C();
    v20 = sub_100072CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "AFTimelineProvider.getSnapshot: Showing placeholder preview...", v21, 2u);
    }

    sub_100071D3C();
    v22 = sub_10006CEA0();
    v23 = v22;
    if (v22)
    {
    }

    v24 = sub_10006CEA0();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 hasAcknowledgedLatestGDPR];
    }

    else
    {
      v26 = 0;
    }

    (*(v6 + 32))(v11, v8, v5);
    v11[v9[5]] = v23 != 0;
    v11[v9[6]] = 0;
    v11[v9[7]] = 1;
    v11[v9[8]] = v26;
    *&v11[v9[9]] = &_swiftEmptyArrayStorage;
    v37(v11);
    return sub_10000EB64(v11);
  }
}

uint64_t sub_10000F59C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F5FC()
{
  v1 = sub_100072AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F6C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100072AAC();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_10000A9A8(a1, a2, a3, v7, v8);
}

uint64_t sub_10000F74C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000F794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AFTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000F904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AFTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for AFEntryView(uint64_t a1)
{
  result = qword_100094DA8;
  if (!qword_100094DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FA58(uint64_t a1)
{
  sub_10000FADC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AFTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000FADC(uint64_t a1)
{
  if (!qword_100094858)
  {
    sub_1000729DC();
    v1 = sub_100071EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100094858);
    }
  }
}

uint64_t sub_10000FBA4()
{
  v0 = sub_100071DAC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for GKFeatureFlags.GameOverlayUI(_:), v0, v2);
  v5 = sub_100071D9C();
  (*(v1 + 8))(v4, v0);
  if ((v5 & 1) != 0 && (v6 = [objc_opt_self() currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, !v7))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_10000FD04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100071F5C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_100071E3C();
  v9 = sub_100071E1C();
  v10 = sub_100071E2C();

  v11 = 0x5F4E495F4E474953;
  if (v10)
  {
    v11 = 0xD000000000000015;
  }

  v23 = v11;
  if (v10)
  {
    v12 = 0x8000000100077950;
  }

  else
  {
    v12 = 0xEF4547415353454DLL;
  }

  v13 = sub_100071E1C();
  v14 = sub_100071E2C();

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xD000000000000016;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x8000000100077930;
  }

  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for MessageView(0);
  *&a2[v18[5]] = KeyPath;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&a2[v18[6]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  result = (*(v5 + 32))(&a2[v18[7]], v8, v4);
  v20 = &a2[v18[8]];
  *v20 = v23;
  *(v20 + 1) = v12;
  v21 = &a2[v18[9]];
  *v21 = v15;
  *(v21 + 1) = v16;
  a2[v18[10]] = 0;
  return result;
}

uint64_t sub_10000FF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v76 = a1;
  v77 = a2;
  v78 = a3;
  v70 = type metadata accessor for AFExtraLargeContentView(0);
  __chkstk_darwin(v70);
  v69 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for AFLargeContentView(0);
  __chkstk_darwin(v72);
  v71 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for AFMediumContentView(0);
  __chkstk_darwin(v74);
  v73 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AFSmallContentView(0);
  __chkstk_darwin(v6);
  v8 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for AFTimelineEntry(0);
  __chkstk_darwin(v75);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v20 = sub_1000729DC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v23);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for WidgetFamily.systemSmall(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v25 = sub_100071E7C();
    sub_100007DE8(v25, qword_1000999C8);
    v26 = v77;
    sub_100012CF4(v77, v19, type metadata accessor for AFTimelineEntry);
    v27 = sub_100071E5C();
    v28 = sub_100072CCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = *(*&v19[*(v75 + 36)] + 16);
      sub_100012C94(v19, type metadata accessor for AFTimelineEntry);
      *(v29 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v27, v28, "AFSmallContentView: Showing %ld items", v29, 0xCu);
    }

    else
    {
      sub_100012C94(v19, type metadata accessor for AFTimelineEntry);
    }

    v37 = *(v6 + 20);
    v38 = sub_100071F5C();
    (*(*(v38 - 8) + 16))(v8 + v37, v76, v38);
    sub_100012CF4(v26, v8 + *(v6 + 24), type metadata accessor for AFTimelineEntry);
    *v8 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    sub_100012E08(&qword_100094E98, type metadata accessor for AFSmallContentView, &unk_1000766A4);
    goto LABEL_34;
  }

  if (v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v31 = sub_100071E7C();
    sub_100007DE8(v31, qword_1000999C8);
    v32 = v77;
    sub_100012CF4(v77, v16, type metadata accessor for AFTimelineEntry);
    v33 = sub_100071E5C();
    v34 = sub_100072CCC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = *(*&v16[*(v75 + 36)] + 16);
      sub_100012C94(v16, type metadata accessor for AFTimelineEntry);
      *(v35 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, v34, "AFMediumContentView: Showing %ld items", v35, 0xCu);
    }

    else
    {
      sub_100012C94(v16, type metadata accessor for AFTimelineEntry);
    }

    v45 = v74;
    v46 = *(v74 + 20);
    v47 = sub_100071F5C();
    v48 = v73;
    (*(*(v47 - 8) + 16))(v73 + v46, v76, v47);
    sub_100012CF4(v32, v48 + *(v45 + 24), type metadata accessor for AFTimelineEntry);
    *v48 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v49 = &unk_100094E90;
    v50 = type metadata accessor for AFMediumContentView;
    v51 = &unk_1000743D4;
LABEL_33:
    sub_100012E08(v49, v50, v51);
LABEL_34:
    result = sub_10007281C();
    *v78 = result;
    return result;
  }

  if (v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v39 = sub_100071E7C();
    sub_100007DE8(v39, qword_1000999C8);
    v40 = v77;
    sub_100012CF4(v77, v13, type metadata accessor for AFTimelineEntry);
    v41 = sub_100071E5C();
    v42 = sub_100072CCC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      v44 = *(*&v13[*(v75 + 36)] + 16);
      sub_100012C94(v13, type metadata accessor for AFTimelineEntry);
      *(v43 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v41, v42, "AFLargeContentView: Showing %ld items", v43, 0xCu);
    }

    else
    {
      sub_100012C94(v13, type metadata accessor for AFTimelineEntry);
    }

    v58 = v72;
    v59 = *(v72 + 20);
    v60 = sub_100071F5C();
    v61 = v71;
    (*(*(v60 - 8) + 16))(v71 + v59, v76, v60);
    sub_100012CF4(v40, v61 + *(v58 + 24), type metadata accessor for AFTimelineEntry);
    *v61 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v49 = &unk_100094E88;
    v50 = type metadata accessor for AFLargeContentView;
    v51 = &unk_100074074;
    goto LABEL_33;
  }

  if (v24 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    if (qword_100094708 != -1)
    {
      swift_once();
    }

    v52 = sub_100071E7C();
    sub_100007DE8(v52, qword_1000999C8);
    v53 = v77;
    sub_100012CF4(v77, v10, type metadata accessor for AFTimelineEntry);
    v54 = sub_100071E5C();
    v55 = sub_100072CCC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      v57 = *(*&v10[*(v75 + 36)] + 16);
      sub_100012C94(v10, type metadata accessor for AFTimelineEntry);
      *(v56 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v54, v55, "AFExtraLargeContentView: Showing %ld items", v56, 0xCu);
    }

    else
    {
      sub_100012C94(v10, type metadata accessor for AFTimelineEntry);
    }

    v65 = v70;
    v66 = *(v70 + 20);
    v67 = sub_100071F5C();
    v68 = v69;
    (*(*(v67 - 8) + 16))(v69 + v66, v76, v67);
    sub_100012CF4(v53, v68 + *(v65 + 24), type metadata accessor for AFTimelineEntry);
    *v68 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v49 = &unk_100094E80;
    v50 = type metadata accessor for AFExtraLargeContentView;
    v51 = &unk_100074878;
    goto LABEL_33;
  }

  v62 = enum case for WidgetFamily.accessoryCircular(_:);
  v63 = v24;
  result = sub_10007281C();
  *v78 = result;
  if (v63 != v62 && v63 != enum case for WidgetFamily.accessoryRectangular(_:) && v63 != enum case for WidgetFamily.accessoryInline(_:))
  {
    return (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_100010B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a1;
  v77 = a2;
  v65 = sub_10000388C(&qword_100094E30, &qword_100073F90);
  __chkstk_darwin(v65);
  v64 = &v56 - v3;
  v62 = type metadata accessor for AFEmptyStateView(0);
  __chkstk_darwin(v62);
  v57 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_10000388C(&qword_100094E38, &qword_100073F98);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v56 - v5;
  v60 = sub_10000388C(&qword_100094E40, &qword_100073FA0);
  __chkstk_darwin(v60);
  v58 = &v56 - v6;
  v7 = sub_1000729DC();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageView(0);
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10000388C(&qword_100094E48, &qword_100073FA8);
  __chkstk_darwin(v74);
  v12 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_100071FCC();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AFTimelineEntry(0);
  __chkstk_darwin(v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000388C(&qword_100094E58, &qword_100073FB0);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v22 = &v56 - v21;
  v67 = sub_10000388C(&qword_100094E60, &qword_100073FB8);
  __chkstk_darwin(v67);
  v66 = &v56 - v23;
  v24 = *(type metadata accessor for AFEntryView(0) + 20);
  v76 = v2;
  v25 = v2 + v24;
  if (*(v2 + v24 + v18[5]) != 1)
  {
    sub_10000FD04(v75, v11);
    sub_100071C8C();
    v30 = sub_100012E08(&qword_100094E68, type metadata accessor for MessageView, &unk_100076B60);
    sub_1000725BC();
    sub_100012BA4(v14);
    sub_100012C94(v11, type metadata accessor for MessageView);
    v79 = v9;
LABEL_5:
    v80 = v30;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v26 = v75;
  v56 = v14;
  if (*(v25 + v18[6]) == 1)
  {
    sub_100071D3C();
    v20[v18[5]] = 1;
    v20[v18[6]] = 0;
    v20[v18[7]] = 1;
    v20[v18[8]] = 0;
    *&v20[v18[9]] = &_swiftEmptyArrayStorage;
    sub_10000FF80(v26, v20, &v79);
    sub_100012C94(v20, type metadata accessor for AFTimelineEntry);
    v78 = v79;
    sub_100071FBC();
    sub_10007268C();
    (*(v69 + 8))(v17, v15);

    v27 = v56;
    sub_10000FBA4();
    v79 = &type metadata for AnyView;
    v80 = &protocol witness table for AnyView;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v70;
    sub_1000725BC();
    sub_100012BA4(v27);
    (*(v68 + 8))(v22, v29);
    v79 = v29;
    v80 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  if ((*(v25 + v18[8]) & 1) == 0)
  {
    v36 = v9;
    v37 = v9[7];
    v38 = sub_100071F5C();
    v39 = v11;
    (*(*(v38 - 8) + 16))(&v11[v37], v26, v38);
    *&v11[v9[5]] = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *&v11[v9[6]] = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    *v11 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v40 = &v11[v9[8]];
    *v40 = 0xD000000000000019;
    *(v40 + 1) = 0x80000001000778F0;
    v41 = &v11[v9[9]];
    *v41 = 0;
    *(v41 + 1) = 0;
    v11[v9[10]] = 0;
    v42 = v71;
    sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v71);
    sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v43 = v73;
    sub_100072FEC();
    (*(v72 + 8))(v42, v43);
    v44 = v56;
    sub_100071DFC();

    v30 = sub_100012E08(&qword_100094E68, type metadata accessor for MessageView, &unk_100076B60);
    sub_1000725BC();
    sub_100012BA4(v44);
    sub_100012C94(v39, type metadata accessor for MessageView);
    v79 = v36;
    goto LABEL_5;
  }

  v32 = v56;
  if (*(*(v25 + v18[9]) + 16) || (*(v25 + v18[7]) & 1) != 0)
  {
    sub_10000FF80(v75, v25, &v79);
    v33 = v71;
    sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v71);
    sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v34 = v73;
    sub_100072FEC();
    (*(v72 + 8))(v33, v34);
    sub_100071DFC();

    sub_1000725BC();
    sub_100012BA4(v32);
    v79 = &type metadata for AnyView;
    v80 = &protocol witness table for AnyView;
    swift_getOpaqueTypeConformance2();
    v35 = sub_10007281C();

    result = v35;
    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  v46 = v57;
  *v57 = KeyPath;
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  v47 = v62;
  v48 = *(v62 + 20);
  *(v46 + v48) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  v49 = v47[6];
  *(v46 + v49) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v50 = v71;
  sub_1000127F8(&qword_1000948F8, &qword_1000739B0, &type metadata accessor for WidgetFamily, v71);
  sub_100012E08(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v51 = v73;
  sub_100072FEC();
  (*(v72 + 8))(v50, v51);
  sub_100071DFC();

  v52 = sub_100012E08(&qword_100094E78, type metadata accessor for AFEmptyStateView, &unk_100074634);
  v53 = v59;
  sub_1000725BC();
  sub_100012BA4(v32);
  sub_100012C94(v46, type metadata accessor for AFEmptyStateView);
  v79 = v47;
  v80 = v52;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v63;
  sub_1000725FC();
  (*(v61 + 8))(v53, v55);
  v79 = v55;
  v80 = v54;
  swift_getOpaqueTypeConformance2();
LABEL_6:
  result = sub_10007281C();
LABEL_7:
  *v77 = result;
  return result;
}

uint64_t sub_100011988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_10000388C(&qword_100094DE0, &qword_100073EF8);
  __chkstk_darwin(v25);
  v6 = &v23 - v5;
  v24 = sub_100071FCC();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000388C(&qword_100094DE8, &qword_100073F00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000388C(&qword_100094DF0, &qword_100073F08);
  __chkstk_darwin(v14);
  v16 = (&v23 - v15);
  *v16 = sub_1000728AC();
  v16[1] = v17;
  v18 = sub_10000388C(&qword_100094DF8, &qword_100073F10);
  sub_100011D7C(a2, a1, v16 + *(v18 + 44));
  v19 = a2 + *(type metadata accessor for AFEntryView(0) + 20);
  if (*(v19 + *(type metadata accessor for AFTimelineEntry(0) + 28)) == 1)
  {
    sub_100071FBC();
    v20 = sub_100004C3C(&qword_100094E00, &qword_100094DF0, &qword_100073F08, &protocol conformance descriptor for ZStack<A>);
    sub_10007268C();
    (*(v7 + 8))(v9, v24);
    (*(v11 + 16))(v6, v13, v10);
    swift_storeEnumTagMultiPayload();
    v27 = v14;
    v28 = v20;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_100004C94(v16, v6, &qword_100094DF0, &qword_100073F08);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100004C3C(&qword_100094E00, &qword_100094DF0, &qword_100073F08, &protocol conformance descriptor for ZStack<A>);
    v27 = v14;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
  }

  return sub_100004890(v16, &qword_100094DF0, &qword_100073F08);
}

uint64_t sub_100011D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v37 = a3;
  v34 = sub_10000388C(&qword_100094E08, &qword_100073F18);
  __chkstk_darwin(v34);
  v5 = &v32 - v4;
  v6 = sub_100071FCC();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AFBackgroundView(0);
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000388C(&qword_100094E10, &qword_100073F20);
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_10000388C(&qword_100094E18, &qword_100073F28);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  v21 = *(type metadata accessor for AFEntryView(0) + 20);
  v36 = a1;
  v22 = a1 + v21;
  v23 = type metadata accessor for AFTimelineEntry(0);
  if (*(v22 + *(v23 + 20)) == 1 && *(v22 + *(v23 + 24)) == 1)
  {
    *v11 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v24 = v11 + *(v9 + 20);
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    sub_100071FBC();
    v25 = sub_100012E08(&qword_100094E20, type metadata accessor for AFBackgroundView, &unk_100076764);
    sub_10007268C();
    (*(v32 + 8))(v8, v6);
    sub_100012C94(v11, type metadata accessor for AFBackgroundView);
    v26 = v33;
    (*(v33 + 16))(v5, v14, v12);
    swift_storeEnumTagMultiPayload();
    v38 = v9;
    v39 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v26 + 8))(v14, v12);
  }

  else
  {
    *v11 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v27 = v11 + *(v9 + 20);
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    sub_100012CF4(v11, v5, type metadata accessor for AFBackgroundView);
    swift_storeEnumTagMultiPayload();
    v28 = sub_100012E08(&qword_100094E20, type metadata accessor for AFBackgroundView, &unk_100076764);
    v38 = v9;
    v39 = v28;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    sub_100012C94(v11, type metadata accessor for AFBackgroundView);
  }

  sub_100010B68(v35, &v38);
  v29 = v38;
  sub_100004C94(v20, v17, &qword_100094E18, &qword_100073F28);
  v30 = v37;
  sub_100004C94(v17, v37, &qword_100094E18, &qword_100073F28);
  *(v30 + *(sub_10000388C(&qword_100094E28, &qword_100073F88) + 48)) = v29;

  sub_100004890(v20, &qword_100094E18, &qword_100073F28);

  return sub_100004890(v17, &qword_100094E18, &qword_100073F28);
}

uint64_t sub_100012328@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100012CF4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100012590(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000125F4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100012428()
{
  v1 = type metadata accessor for AFEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000729DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  v7 = sub_100071D4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for AFTimelineEntry(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100011988(a1, v6, a2);
}

uint64_t sub_1000126E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1000127F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10007218C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000388C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100004C94(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_100072CEC();
    v19 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100012A94()
{
  sub_10007212C();
  sub_100012E08(&qword_100094EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10007219C();
  return v1;
}

void *sub_100012B10@<X0>(_BYTE *a1@<X8>)
{
  sub_10007212C();
  sub_100012E08(&qword_100094EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10007219C();
  *a1 = v3;
  return result;
}

uint64_t sub_100012BA4(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100012CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012D5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100012DA8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100012DB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100012DD8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100012E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001300C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFLargeContentView(uint64_t a1)
{
  result = qword_100094F10;
  if (!qword_100094F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000131B0(uint64_t a1)
{
  sub_10000FADC(319);
  if (v1 <= 0x3F)
  {
    sub_100071F5C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AFTimelineEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100013268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000155F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100013450@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_10000388C(&qword_100094F50, &qword_1000740C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_10000388C(&qword_100094F58, &qword_1000740D0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AFLargeContentView(0);
  sub_100013268(v11);
  v13 = sub_1000084E0();
  (*(v9 + 8))(v11, v8);
  sub_100071F3C();
  v15 = v1 + *(v12 + 24);
  v16 = (v14 + -28.0 - (v13 + v13)) / *(*(v15 + *(type metadata accessor for AFTimelineEntry(0) + 36)) + 16);
  *v4 = sub_10007224C();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v17 = sub_10000388C(&qword_100094F60, &qword_1000740D8);
  sub_100013844(v1, &v4[*(v17 + 44)], v13, v16);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v12) = sub_1000723DC();
  *(inited + 32) = v12;
  v19 = sub_1000723FC();
  *(inited + 33) = v19;
  v20 = sub_1000723CC();
  *(inited + 34) = v20;
  v21 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v12)
  {
    v21 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v19)
  {
    v21 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v20)
  {
    v21 = sub_1000723EC();
  }

  sub_100071E8C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_100014DEC(v4, v7, &qword_100094F50, &qword_1000740C8);
  v30 = &v7[*(v5 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1000723BC();
  v32 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v31)
  {
    v32 = sub_1000723EC();
  }

  sub_100071E8C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v44;
  sub_100014DEC(v7, v44, &qword_100094F58, &qword_1000740D0);
  result = sub_10000388C(&qword_100094F70, &qword_1000740E8);
  v43 = v41 + *(result + 36);
  *v43 = v32;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_100013844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v89 = a2;
  v94 = sub_10000388C(&qword_100094F78, &qword_1000740F0);
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v76 = &v76 - v7;
  v95 = sub_1000729DC();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v76 - v10;
  __chkstk_darwin(v11);
  v92 = &v76 - v12;
  __chkstk_darwin(v13);
  v91 = &v76 - v14;
  v15 = sub_10000388C(&qword_100094F80, &qword_1000740F8);
  __chkstk_darwin(v15 - 8);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v76 - v18;
  v19 = type metadata accessor for AFLargeContentView(0);
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v23 = sub_10000388C(&qword_100094F88, &qword_100074100);
  v82 = *(v23 - 8);
  v83 = v23;
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v90 = sub_10000388C(&qword_100094F90, &qword_100074108);
  v26 = *(v90 - 8);
  __chkstk_darwin(v90);
  v28 = &v76 - v27;
  v29 = sub_10000388C(&qword_100094F98, &qword_100074110);
  __chkstk_darwin(v29 - 8);
  v85 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  v34 = a1 + *(v20 + 32);
  v35 = *(v34 + *(type metadata accessor for AFTimelineEntry(0) + 36));
  v36 = *(v35 + 16);
  v96 = a1;
  v84 = v33;
  v80 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v21;
  v78 = v22;
  if (v36)
  {
    v99 = v35;
    sub_100014E54(a1, &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v38 = (v22 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100014EBC(&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v37);
    *(v39 + v38) = a3;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

    sub_10000388C(&qword_100094FD8, &qword_100074160);
    sub_10000388C(&qword_100094FE0, &qword_100074168);
    sub_100004C3C(&qword_100094FE8, &qword_100094FD8, &qword_100074160, &protocol conformance descriptor for [A]);
    sub_100015328();
    sub_10001551C();
    sub_10007284C();
    sub_100015570();
    v40 = v83;
    sub_1000725FC();
    (*(v82 + 8))(v25, v40);
    v41 = v90;
    (*(v26 + 32))(v33, v28, v90);
    (*(v26 + 56))(v33, 0, 1, v41);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v90);
  }

  v42 = *(v35 + 16);
  v43 = v91;
  sub_100013268(v91);
  v45 = v92;
  v44 = v93;
  v46 = *(v93 + 32);
  v47 = v95;
  v46(v92, v43, v95);
  v48 = *(v44 + 88);
  v49 = v48(v45, v47);
  v50 = enum case for WidgetFamily.systemSmall(_:);
  if (v49 == enum case for WidgetFamily.systemSmall(_:))
  {
    v51 = 1;
    goto LABEL_12;
  }

  if (v49 == enum case for WidgetFamily.systemMedium(_:))
  {
    v51 = 2;
    goto LABEL_12;
  }

  if (v49 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_9;
  }

  if (v49 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v51 = 8;
  }

  else
  {
    v51 = 1;
    if (v49 != enum case for WidgetFamily.accessoryCircular(_:) && v49 != enum case for WidgetFamily.accessoryRectangular(_:) && v49 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v93 + 8))(v45, v95);
LABEL_9:
      v51 = 4;
    }
  }

LABEL_12:
  if (v42 >= v51)
  {
    v62 = 1;
    v63 = v88;
    v64 = v86;
LABEL_28:
    (*(v63 + 56))(v64, v62, 1, v94);
    v72 = v84;
    v71 = v85;
    sub_100004C94(v84, v85, &qword_100094F98, &qword_100074110);
    v73 = v87;
    sub_100004C94(v64, v87, &qword_100094F80, &qword_1000740F8);
    v74 = v89;
    sub_100004C94(v71, v89, &qword_100094F98, &qword_100074110);
    v75 = sub_10000388C(&qword_100094FA0, &unk_100074118);
    sub_100004C94(v73, v74 + *(v75 + 48), &qword_100094F80, &qword_1000740F8);
    sub_100004890(v64, &qword_100094F80, &qword_1000740F8);
    sub_100004890(v72, &qword_100094F98, &qword_100074110);
    sub_100004890(v73, &qword_100094F80, &qword_1000740F8);
    return sub_100004890(v71, &qword_100094F98, &qword_100074110);
  }

  v52 = *(v35 + 16);
  v53 = v77;
  sub_100013268(v77);
  v54 = v81;
  v55 = v95;
  v46(v81, v53, v95);
  result = v48(v54, v55);
  if (result == v50)
  {
    v57 = 1;
    v58 = v96;
    v59 = v80;
    v60 = v79;
    v61 = v78;
    goto LABEL_26;
  }

  v58 = v96;
  v59 = v80;
  v60 = v79;
  v61 = v78;
  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v57 = 2;
    goto LABEL_26;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_19;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v57 = 8;
  }

  else
  {
    v57 = 1;
    if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
    {
      result = (*(v93 + 8))(v54, v95);
LABEL_19:
      v57 = 4;
    }
  }

LABEL_26:
  if (v57 >= v52)
  {
    v99 = v52;
    v100 = v57;
    swift_getKeyPath();
    sub_100014E54(v58, v59);
    v65 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v66 = (v61 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    sub_100014EBC(v59, v67 + v65);
    *(v67 + v66) = a3;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100094FB0, &qword_100074150);
    sub_100014FD8();
    v68 = sub_1000038D4(&qword_100094FC8, &qword_100074158);
    v69 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v97 = v68;
    v98 = v69;
    swift_getOpaqueTypeConformance2();
    v70 = v76;
    sub_10007283C();
    v63 = v88;
    v64 = v86;
    (*(v88 + 32))(v86, v70, v94);
    v62 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v51 = a3;
  v41 = sub_100071FCC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  __chkstk_darwin(v49);
  v9 = &v39 - v8;
  v50 = sub_10000388C(&qword_100094FB0, &qword_100074150);
  v43 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v39 - v10;
  v46 = sub_10000388C(&qword_100095018, &qword_100074178);
  __chkstk_darwin(v46);
  v48 = &v39 - v11;
  v12 = sub_1000729DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v45 = sub_10000388C(&qword_100094FF8, &qword_100074170);
  __chkstk_darwin(v45);
  v20 = &v39 - v19;
  v47 = sub_10000388C(&qword_100095020, &qword_100074188);
  v21 = *(v47 - 8);
  __chkstk_darwin(v47);
  v23 = &v39 - v22;
  if (a1[2])
  {
    sub_100013268(v15);
    sub_100071DDC();
    (*(v13 + 8))(v15, v12);
    type metadata accessor for AFLargeContentView(0);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v24 = v49;
    v25 = &v9[*(v49 + 36)];
    v26 = v55;
    *v25 = v54;
    *(v25 + 1) = v26;
    *(v25 + 2) = v56;
    sub_100071FBC();
    v27 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v28 = v42;
    sub_10007268C();
    (*(v40 + 8))(v7, v41);
    sub_100004890(v9, &qword_100094FC8, &qword_100074158);
    v29 = v43;
    v30 = v50;
    (*(v43 + 16))(v48, v28, v50);
    swift_storeEnumTagMultiPayload();
    v31 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)>>);
    v52 = v45;
    v53 = v31;
    swift_getOpaqueTypeConformance2();
    v52 = v24;
    v53 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v29 + 8))(v28, v30);
  }

  else
  {
    sub_100013268(v15);
    sub_100071DCC();
    (*(v13 + 8))(v15, v12);
    sub_100012BA4(v18);
    type metadata accessor for AFLargeContentView(0);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v33 = v45;
    v34 = &v20[*(v45 + 36)];
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    *(v34 + 2) = v56;
    v36 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)>>);
    sub_1000725FC();
    sub_100004890(v20, &qword_100094FF8, &qword_100074170);
    v37 = v47;
    (*(v21 + 16))(v48, v23, v47);
    swift_storeEnumTagMultiPayload();
    v52 = v33;
    v53 = v36;
    swift_getOpaqueTypeConformance2();
    v38 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v52 = v49;
    v53 = v38;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v21 + 8))(v23, v37);
  }
}

uint64_t sub_100014B40@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v3 = sub_100071FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  sub_100013268(v10);
  sub_100071DDC();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for AFLargeContentView(0);
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v14 = &v13[*(v11 + 36)];
  v15 = v19;
  *v14 = v18;
  *(v14 + 1) = v15;
  *(v14 + 2) = v20;
  sub_100071FBC();
  sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
  sub_10007268C();
  (*(v4 + 8))(v6, v3);
  return sub_100004890(v13, &qword_100094FC8, &qword_100074158);
}

uint64_t sub_100014DEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000388C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFLargeContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFLargeContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014F20@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AFLargeContentView(0);

  return sub_100014B40(a1);
}

unint64_t sub_100014FD8()
{
  result = qword_100094FB8;
  if (!qword_100094FB8)
  {
    sub_1000038D4(&qword_100094FA8, &qword_100074148);
    sub_100015064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FB8);
  }

  return result;
}

unint64_t sub_100015064()
{
  result = qword_100094FC0;
  if (!qword_100094FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FC0);
  }

  return result;
}

uint64_t sub_1000150B8()
{
  v1 = type metadata accessor for AFLargeContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000729DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v5 + *(v1 + 24);
  v11 = sub_100071D4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for AFTimelineEntry(0);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_100015270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFLargeContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100014368(a1, v6, a2);
}

unint64_t sub_100015328()
{
  result = qword_100094FF0;
  if (!qword_100094FF0)
  {
    sub_1000038D4(&qword_100094FE0, &qword_100074168);
    sub_1000038D4(&qword_100094FF8, &qword_100074170);
    sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)>>);
    swift_getOpaqueTypeConformance2();
    sub_1000038D4(&qword_100094FC8, &qword_100074158);
    sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094FF0);
  }

  return result;
}

uint64_t sub_100015494(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001551C()
{
  result = qword_100095008;
  if (!qword_100095008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095008);
  }

  return result;
}

unint64_t sub_100015570()
{
  result = qword_100095010;
  if (!qword_100095010)
  {
    sub_1000038D4(&qword_100094F88, &qword_100074100);
    sub_100015328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095010);
  }

  return result;
}

uint64_t sub_1000155F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015668()
{
  result = qword_100095028;
  if (!qword_100095028)
  {
    sub_1000038D4(&qword_100094F70, &qword_1000740E8);
    sub_1000156F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095028);
  }

  return result;
}

unint64_t sub_1000156F4()
{
  result = qword_100095030;
  if (!qword_100095030)
  {
    sub_1000038D4(&qword_100094F58, &qword_1000740D0);
    sub_100004C3C(&qword_100095038, &qword_100094F50, &qword_1000740C8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095030);
  }

  return result;
}

uint64_t sub_1000157B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000157F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100015860@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v62 = a1;
  v77 = a3;
  v3 = sub_10000388C(&qword_100094758, &unk_100073820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - v5;
  v7 = sub_10000388C(&qword_100094750, &unk_100074230);
  v63 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v64 = sub_10000388C(&qword_100094748, &unk_100073810);
  *&v78 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v55 - v10;
  v12 = sub_10000388C(&qword_100094740, &unk_100074240);
  v13 = *(v12 - 8);
  v67 = v12;
  v68 = v13;
  __chkstk_darwin(v12);
  v79 = &v55 - v14;
  v15 = sub_10000388C(&qword_100094738, &unk_100073800);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  __chkstk_darwin(v15);
  v65 = &v55 - v17;
  v80 = sub_10000388C(&qword_1000947B0, &unk_100074250);
  v71 = *(v80 - 8);
  __chkstk_darwin(v80);
  v66 = &v55 - v18;
  v19 = sub_10000388C(&qword_1000947A8, &unk_100073860);
  v20 = *(v19 - 8);
  v73 = v19;
  v74 = v20;
  __chkstk_darwin(v19);
  v81 = &v55 - v21;
  v22 = sub_10000388C(&qword_1000947A0, &unk_100074260);
  v23 = *(v22 - 8);
  v75 = v22;
  v76 = v23;
  __chkstk_darwin(v22);
  v72 = &v55 - v24;
  type metadata accessor for CPEntryView(0);
  sub_100016434(v25);
  sub_10001648C();

  sub_100072A6C();
  v26 = sub_1000164E0();
  sub_10007229C();
  (*(v4 + 8))(v6, v3);
  sub_1000721DC();
  v82 = v3;
  v83 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000722CC();

  (*(v63 + 8))(v9, v7);
  sub_1000721DC();
  v82 = v7;
  v83 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v64;
  sub_10007225C();

  v30 = v29;
  (*(v78 + 8))(v11, v29);
  v63 = sub_10000388C(&qword_100095050, &unk_100074360);
  v31 = sub_1000729DC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = *(v32 + 80);
  v62 = ((v34 + 32) & ~v34) + 4 * v33;
  v61 = (v34 + 32) & ~v34;
  v35 = swift_allocObject();
  v78 = xmmword_100074190;
  *(v35 + 16) = xmmword_100074190;
  v36 = v35 + ((v34 + 32) & ~v34);
  v60 = enum case for WidgetFamily.systemSmall(_:);
  v37 = *(v32 + 104);
  v37(v36);
  v59 = enum case for WidgetFamily.systemMedium(_:);
  v37(v36 + v33);
  v55 = 2 * v33;
  v58 = enum case for WidgetFamily.systemLarge(_:);
  v37(v36 + 2 * v33);
  v57 = 3 * v33;
  v56 = enum case for WidgetFamily.systemExtraLarge(_:);
  v37(v36 + 3 * v33);
  v82 = v30;
  v83 = v28;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v65;
  v40 = v67;
  v41 = v79;
  sub_10007227C();

  (*(v68 + 8))(v41, v40);
  v82 = v40;
  v83 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v66;
  v44 = v69;
  sub_1000722FC();
  (*(v70 + 8))(v39, v44);
  v82 = v44;
  v83 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v80;
  sub_1000722BC();
  (*(v71 + 8))(v43, v46);
  sub_10000388C(&qword_100095058, &qword_100074270);
  sub_100072A2C();
  *(swift_allocObject() + 16) = v78;
  sub_100072A1C();
  sub_1000729EC();
  sub_1000729FC();
  sub_100072A0C();
  v47 = swift_allocObject();
  *(v47 + 16) = v78;
  v48 = v47 + v61;
  (v37)(v47 + v61, v60, v31);
  (v37)(v48 + v33, v59, v31);
  (v37)(v48 + v55, v58, v31);
  (v37)(v48 + v57, v56, v31);
  v82 = v80;
  v83 = v45;
  v49 = swift_getOpaqueTypeConformance2();
  v51 = v72;
  v50 = v73;
  v52 = v81;
  sub_10007228C();

  (*(v74 + 8))(v52, v50);
  v82 = v50;
  v83 = v49;
  swift_getOpaqueTypeConformance2();
  v53 = v75;
  sub_1000722AC();
  return (*(v76 + 8))(v51, v53);
}

uint64_t sub_100016390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CPEntryView(0);
  sub_100016544(a1, a2 + *(v5 + 20));
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100016434(__n128 a1)
{
  result = qword_100095040;
  if (!qword_100095040)
  {
    type metadata accessor for CPEntryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095040);
  }

  return result;
}

unint64_t sub_10001648C()
{
  result = qword_100095048;
  if (!qword_100095048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095048);
  }

  return result;
}

unint64_t sub_1000164E0()
{
  result = qword_100094760;
  if (!qword_100094760)
  {
    sub_1000038D4(&qword_100094758, &unk_100073820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094760);
  }

  return result;
}

uint64_t sub_100016544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000165AC()
{
  sub_1000038D4(&qword_1000947A0, &unk_100074260);
  sub_1000038D4(&qword_1000947A8, &unk_100073860);
  sub_1000038D4(&qword_1000947B0, &unk_100074250);
  sub_1000038D4(&qword_100094738, &unk_100073800);
  sub_1000038D4(&qword_100094740, &unk_100074240);
  sub_1000038D4(&qword_100094748, &unk_100073810);
  sub_1000038D4(&qword_100094750, &unk_100074230);
  sub_1000038D4(&qword_100094758, &unk_100073820);
  sub_1000164E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000167F8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = sub_10007298C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100094790, &unk_100073850);
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  *&v76 = sub_10000388C(&qword_100094788, &unk_100074320);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v9 = &v70 - v8;
  v78 = sub_10000388C(&qword_100094780, &unk_100073840);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73 = &v70 - v10;
  v80 = sub_10000388C(&qword_100094778, &unk_100074330);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v70 - v11;
  v12 = sub_10000388C(&qword_100094770, &unk_100073830);
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  __chkstk_darwin(v12);
  v95 = &v70 - v14;
  v15 = sub_10000388C(&qword_100094768, &unk_100074340);
  v16 = *(v15 - 8);
  v86 = v15;
  v87 = v16;
  __chkstk_darwin(v15);
  v82 = &v70 - v17;
  v96 = sub_10000388C(&qword_1000947C8, &qword_100073880);
  v88 = *(v96 - 8);
  __chkstk_darwin(v96);
  v83 = &v70 - v18;
  v19 = sub_10000388C(&qword_1000947C0, &unk_100074350);
  v20 = *(v19 - 8);
  v90 = v19;
  v91 = v20;
  __chkstk_darwin(v19);
  v97 = &v70 - v21;
  v22 = sub_10000388C(&qword_1000947B8, &unk_100073870);
  v23 = *(v22 - 8);
  v92 = v22;
  v93 = v23;
  __chkstk_darwin(v22);
  v89 = &v70 - v24;
  type metadata accessor for AFEntryView(0);
  sub_1000175FC();
  sub_100017654();
  sub_100072A6C();
  (*(v2 + 104))(v4, enum case for WidgetBackgroundStyle.blur(_:), v1);
  v25 = sub_1000176A8();
  sub_1000722EC();
  (*(v2 + 8))(v4, v1);
  (*(v74 + 8))(v7, v5);
  v98 = v5;
  v99 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v73;
  v28 = v76;
  sub_10007229C();
  v29 = v28;
  (*(v77 + 8))(v9, v28);
  sub_1000721DC();
  v30 = sub_10007258C();
  v32 = v31;
  v34 = v33;
  v98 = v29;
  v99 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v75;
  v37 = v78;
  sub_1000722DC();
  sub_100004C84(v30, v32, v34 & 1);

  (*(v79 + 8))(v27, v37);
  sub_1000721DC();
  v38 = sub_10007258C();
  v40 = v39;
  v42 = v41;
  v98 = v37;
  v99 = v35;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v80;
  sub_10007226C();
  sub_100004C84(v38, v40, v42 & 1);

  v45 = v44;
  (*(v81 + 8))(v36, v44);
  v81 = sub_10000388C(&qword_100095050, &unk_100074360);
  v46 = sub_1000729DC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v79 = *(v47 + 80);
  v78 = ((v79 + 32) & ~v79) + 4 * v48;
  v49 = (v79 + 32) & ~v79;
  v77 = v49;
  v50 = swift_allocObject();
  v76 = xmmword_100074190;
  *(v50 + 16) = xmmword_100074190;
  v51 = v50 + v49;
  LODWORD(v75) = enum case for WidgetFamily.systemSmall(_:);
  v52 = *(v47 + 104);
  v52(v51);
  LODWORD(v74) = enum case for WidgetFamily.systemMedium(_:);
  v52(v51 + v48);
  v70 = 2 * v48;
  LODWORD(v73) = enum case for WidgetFamily.systemLarge(_:);
  v52(v51 + 2 * v48);
  v72 = 3 * v48;
  v71 = enum case for WidgetFamily.systemExtraLarge(_:);
  v52(v51 + 3 * v48);
  v98 = v45;
  v99 = v43;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v82;
  v55 = v84;
  v56 = v95;
  sub_10007227C();

  (*(v85 + 8))(v56, v55);
  v98 = v55;
  v99 = v53;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v83;
  v59 = v86;
  sub_1000722FC();
  (*(v87 + 8))(v54, v59);
  v98 = v59;
  v99 = v57;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v96;
  sub_1000722BC();
  (*(v88 + 8))(v58, v61);
  sub_10000388C(&qword_100095058, &qword_100074270);
  sub_100072A2C();
  *(swift_allocObject() + 16) = xmmword_100074030;
  sub_1000729EC();
  sub_1000729FC();
  sub_100072A0C();
  v62 = swift_allocObject();
  *(v62 + 16) = v76;
  v63 = v62 + v77;
  (v52)(v62 + v77, v75, v46);
  (v52)(v63 + v48, v74, v46);
  (v52)(v63 + v70, v73, v46);
  (v52)(v63 + v72, v71, v46);
  v98 = v96;
  v99 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v66 = v89;
  v65 = v90;
  v67 = v97;
  sub_10007228C();

  (*(v91 + 8))(v67, v65);
  v98 = v65;
  v99 = v64;
  swift_getOpaqueTypeConformance2();
  v68 = v92;
  sub_1000722AC();
  return (*(v93 + 8))(v66, v68);
}

uint64_t sub_100017578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AFEntryView(0);
  sub_10000EA9C(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000175FC()
{
  result = qword_100095060;
  if (!qword_100095060)
  {
    type metadata accessor for AFEntryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095060);
  }

  return result;
}

unint64_t sub_100017654()
{
  result = qword_100095068;
  if (!qword_100095068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095068);
  }

  return result;
}

unint64_t sub_1000176A8()
{
  result = qword_100094798;
  if (!qword_100094798)
  {
    sub_1000038D4(&qword_100094790, &unk_100073850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094798);
  }

  return result;
}

uint64_t sub_100017710()
{
  sub_1000038D4(&qword_1000947B8, &unk_100073870);
  sub_1000038D4(&qword_1000947C0, &unk_100074350);
  sub_1000038D4(&qword_1000947C8, &qword_100073880);
  sub_1000038D4(&qword_100094768, &unk_100074340);
  sub_1000038D4(&qword_100094770, &unk_100073830);
  sub_1000038D4(&qword_100094778, &unk_100074330);
  sub_1000038D4(&qword_100094780, &unk_100073840);
  sub_1000038D4(&qword_100094788, &unk_100074320);
  sub_1000038D4(&qword_100094790, &unk_100073850);
  sub_1000176A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100017AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFMediumContentView(uint64_t a1)
{
  result = qword_1000950C8;
  if (!qword_1000950C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000155F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100017E90@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_10000388C(&qword_100094F50, &qword_1000740C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_10000388C(&qword_100094F58, &qword_1000740D0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AFMediumContentView(0);
  sub_100017CA8(v11);
  v13 = sub_1000084E0();
  (*(v9 + 8))(v11, v8);
  sub_100071F3C();
  v15 = v1 + *(v12 + 24);
  v16 = (v14 + -28.0 - (v13 + v13)) / *(*(v15 + *(type metadata accessor for AFTimelineEntry(0) + 36)) + 16);
  *v4 = sub_10007224C();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v17 = sub_10000388C(&qword_100094F60, &qword_1000740D8);
  sub_100018284(v1, &v4[*(v17 + 44)], v13, v16);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v12) = sub_1000723DC();
  *(inited + 32) = v12;
  v19 = sub_1000723FC();
  *(inited + 33) = v19;
  v20 = sub_1000723CC();
  *(inited + 34) = v20;
  v21 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v12)
  {
    v21 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v19)
  {
    v21 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v20)
  {
    v21 = sub_1000723EC();
  }

  sub_100071E8C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_100014DEC(v4, v7, &qword_100094F50, &qword_1000740C8);
  v30 = &v7[*(v5 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1000723BC();
  v32 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v31)
  {
    v32 = sub_1000723EC();
  }

  sub_100071E8C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v44;
  sub_100014DEC(v7, v44, &qword_100094F58, &qword_1000740D0);
  result = sub_10000388C(&qword_100094F70, &qword_1000740E8);
  v43 = v41 + *(result + 36);
  *v43 = v32;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_100018284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v89 = a2;
  v94 = sub_10000388C(&qword_100094F78, &qword_1000740F0);
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v76 = &v76 - v7;
  v95 = sub_1000729DC();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v76 - v10;
  __chkstk_darwin(v11);
  v92 = &v76 - v12;
  __chkstk_darwin(v13);
  v91 = &v76 - v14;
  v15 = sub_10000388C(&qword_100094F80, &qword_1000740F8);
  __chkstk_darwin(v15 - 8);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v76 - v18;
  v19 = type metadata accessor for AFMediumContentView(0);
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v23 = sub_10000388C(&qword_100094F88, &qword_100074100);
  v82 = *(v23 - 8);
  v83 = v23;
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v90 = sub_10000388C(&qword_100094F90, &qword_100074108);
  v26 = *(v90 - 8);
  __chkstk_darwin(v90);
  v28 = &v76 - v27;
  v29 = sub_10000388C(&qword_100094F98, &qword_100074110);
  __chkstk_darwin(v29 - 8);
  v85 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  v34 = a1 + *(v20 + 32);
  v35 = *(v34 + *(type metadata accessor for AFTimelineEntry(0) + 36));
  v36 = *(v35 + 16);
  v96 = a1;
  v84 = v33;
  v80 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v21;
  v78 = v22;
  if (v36)
  {
    v99 = v35;
    sub_10001982C(a1, &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v38 = (v22 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100019894(&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v37);
    *(v39 + v38) = a3;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

    sub_10000388C(&qword_100094FD8, &qword_100074160);
    sub_10000388C(&qword_100094FE0, &qword_100074168);
    sub_100004C3C(&qword_100094FE8, &qword_100094FD8, &qword_100074160, &protocol conformance descriptor for [A]);
    sub_100015328();
    sub_10001551C();
    sub_10007284C();
    sub_100015570();
    v40 = v83;
    sub_1000725FC();
    (*(v82 + 8))(v25, v40);
    v41 = v90;
    (*(v26 + 32))(v33, v28, v90);
    (*(v26 + 56))(v33, 0, 1, v41);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v90);
  }

  v42 = *(v35 + 16);
  v43 = v91;
  sub_100017CA8(v91);
  v45 = v92;
  v44 = v93;
  v46 = *(v93 + 32);
  v47 = v95;
  v46(v92, v43, v95);
  v48 = *(v44 + 88);
  v49 = v48(v45, v47);
  v50 = enum case for WidgetFamily.systemSmall(_:);
  if (v49 == enum case for WidgetFamily.systemSmall(_:))
  {
    v51 = 1;
    goto LABEL_12;
  }

  if (v49 == enum case for WidgetFamily.systemMedium(_:))
  {
    v51 = 2;
    goto LABEL_12;
  }

  if (v49 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_9;
  }

  if (v49 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v51 = 8;
  }

  else
  {
    v51 = 1;
    if (v49 != enum case for WidgetFamily.accessoryCircular(_:) && v49 != enum case for WidgetFamily.accessoryRectangular(_:) && v49 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v93 + 8))(v45, v95);
LABEL_9:
      v51 = 4;
    }
  }

LABEL_12:
  if (v42 >= v51)
  {
    v62 = 1;
    v63 = v88;
    v64 = v86;
LABEL_28:
    (*(v63 + 56))(v64, v62, 1, v94);
    v72 = v84;
    v71 = v85;
    sub_100004C94(v84, v85, &qword_100094F98, &qword_100074110);
    v73 = v87;
    sub_100004C94(v64, v87, &qword_100094F80, &qword_1000740F8);
    v74 = v89;
    sub_100004C94(v71, v89, &qword_100094F98, &qword_100074110);
    v75 = sub_10000388C(&qword_100094FA0, &unk_100074118);
    sub_100004C94(v73, v74 + *(v75 + 48), &qword_100094F80, &qword_1000740F8);
    sub_100004890(v64, &qword_100094F80, &qword_1000740F8);
    sub_100004890(v72, &qword_100094F98, &qword_100074110);
    sub_100004890(v73, &qword_100094F80, &qword_1000740F8);
    return sub_100004890(v71, &qword_100094F98, &qword_100074110);
  }

  v52 = *(v35 + 16);
  v53 = v77;
  sub_100017CA8(v77);
  v54 = v81;
  v55 = v95;
  v46(v81, v53, v95);
  result = v48(v54, v55);
  if (result == v50)
  {
    v57 = 1;
    v58 = v96;
    v59 = v80;
    v60 = v79;
    v61 = v78;
    goto LABEL_26;
  }

  v58 = v96;
  v59 = v80;
  v60 = v79;
  v61 = v78;
  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v57 = 2;
    goto LABEL_26;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_19;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v57 = 8;
  }

  else
  {
    v57 = 1;
    if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
    {
      result = (*(v93 + 8))(v54, v95);
LABEL_19:
      v57 = 4;
    }
  }

LABEL_26:
  if (v57 >= v52)
  {
    v99 = v52;
    v100 = v57;
    swift_getKeyPath();
    sub_10001982C(v58, v59);
    v65 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v66 = (v61 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    sub_100019894(v59, v67 + v65);
    *(v67 + v66) = a3;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100094FB0, &qword_100074150);
    sub_100014FD8();
    v68 = sub_1000038D4(&qword_100094FC8, &qword_100074158);
    v69 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v97 = v68;
    v98 = v69;
    swift_getOpaqueTypeConformance2();
    v70 = v76;
    sub_10007283C();
    v63 = v88;
    v64 = v86;
    (*(v88 + 32))(v86, v70, v94);
    v62 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v51 = a3;
  v41 = sub_100071FCC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  __chkstk_darwin(v49);
  v9 = &v39 - v8;
  v50 = sub_10000388C(&qword_100094FB0, &qword_100074150);
  v43 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v39 - v10;
  v46 = sub_10000388C(&qword_100095018, &qword_100074178);
  __chkstk_darwin(v46);
  v48 = &v39 - v11;
  v12 = sub_1000729DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v45 = sub_10000388C(&qword_100094FF8, &qword_100074170);
  __chkstk_darwin(v45);
  v20 = &v39 - v19;
  v47 = sub_10000388C(&qword_100095020, &qword_100074188);
  v21 = *(v47 - 8);
  __chkstk_darwin(v47);
  v23 = &v39 - v22;
  if (a1[2])
  {
    sub_100017CA8(v15);
    sub_100071DDC();
    (*(v13 + 8))(v15, v12);
    type metadata accessor for AFMediumContentView(0);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v24 = v49;
    v25 = &v9[*(v49 + 36)];
    v26 = v55;
    *v25 = v54;
    *(v25 + 1) = v26;
    *(v25 + 2) = v56;
    sub_100071FBC();
    v27 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v28 = v42;
    sub_10007268C();
    (*(v40 + 8))(v7, v41);
    sub_100004890(v9, &qword_100094FC8, &qword_100074158);
    v29 = v43;
    v30 = v50;
    (*(v43 + 16))(v48, v28, v50);
    swift_storeEnumTagMultiPayload();
    v31 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)>>);
    v52 = v45;
    v53 = v31;
    swift_getOpaqueTypeConformance2();
    v52 = v24;
    v53 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v29 + 8))(v28, v30);
  }

  else
  {
    sub_100017CA8(v15);
    sub_100071DCC();
    (*(v13 + 8))(v15, v12);
    sub_100012BA4(v18);
    type metadata accessor for AFMediumContentView(0);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v33 = v45;
    v34 = &v20[*(v45 + 36)];
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    *(v34 + 2) = v56;
    v36 = sub_100015494(&qword_100095000, &qword_100094FF8, &qword_100074170, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)>>);
    sub_1000725FC();
    sub_100004890(v20, &qword_100094FF8, &qword_100074170);
    v37 = v47;
    (*(v21 + 16))(v48, v23, v47);
    swift_storeEnumTagMultiPayload();
    v52 = v33;
    v53 = v36;
    swift_getOpaqueTypeConformance2();
    v38 = sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
    v52 = v49;
    v53 = v38;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v21 + 8))(v23, v37);
  }
}

uint64_t sub_100019580@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v3 = sub_100071FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100094FC8, &qword_100074158);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  sub_100017CA8(v10);
  sub_100071DDC();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for AFMediumContentView(0);
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v14 = &v13[*(v11 + 36)];
  v15 = v19;
  *v14 = v18;
  *(v14 + 1) = v15;
  *(v14 + 2) = v20;
  sub_100071FBC();
  sub_100015494(&qword_100094FD0, &qword_100094FC8, &qword_100074158, &opaque type descriptor for <<opaque return type of static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)>>);
  sub_10007268C();
  (*(v4 + 8))(v6, v3);
  return sub_100004890(v13, &qword_100094FC8, &qword_100074158);
}

uint64_t sub_10001982C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMediumContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMediumContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000198F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AFMediumContentView(0);

  return sub_100019580(a1);
}

uint64_t sub_1000199B0()
{
  v1 = type metadata accessor for AFMediumContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000729DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v5 + *(v1 + 24);
  v11 = sub_100071D4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for AFTimelineEntry(0);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_100019B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFMediumContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100018DA8(a1, v6, a2);
}

uint64_t sub_100019C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100019D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPTitleGradientView(uint64_t a1)
{
  result = qword_100095160;
  if (!qword_100095160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019EA0(uint64_t a1)
{
  sub_100019F3C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CPTimelineEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019F3C(uint64_t a1)
{
  if (!qword_100094850)
  {
    sub_10007297C();
    v1 = sub_100071EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100094850);
    }
  }
}

uint64_t sub_100019FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000388C(&qword_1000951A0, &qword_100074538);
  __chkstk_darwin(v3 - 8);
  v5 = (&v38 - v4);
  v6 = sub_10000388C(&qword_1000951A8, &qword_100074540);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v41 = sub_10000388C(&qword_1000951B0, &qword_100074548);
  __chkstk_darwin(v41);
  v43 = &v38 - v9;
  v10 = sub_10000388C(&qword_1000951B8, &qword_100074550);
  __chkstk_darwin(v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = &v38 - v13;
  v14 = sub_10000388C(&qword_1000951C0, &qword_100074558);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = v1 + *(type metadata accessor for CPTitleGradientView(0) + 24);
  if (*(v17 + *(type metadata accessor for CPTimelineEntry(0) + 32)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    return sub_10007230C();
  }

  else
  {
    v38 = v14;
    v39 = v10;
    v40 = a1;
    *v5 = sub_1000728AC();
    v5[1] = v19;
    v20 = sub_10000388C(&qword_1000951C8, &qword_100074560);
    sub_10001A5D8(v1, v5 + *(v20 + 44));
    sub_1000728AC();
    sub_100071FFC();
    sub_100014DEC(v5, v8, &qword_1000951A0, &qword_100074538);
    v21 = &v8[*(v6 + 36)];
    v22 = v57;
    *(v21 + 4) = v56;
    *(v21 + 5) = v22;
    *(v21 + 6) = v58;
    v23 = v53;
    *v21 = v52;
    *(v21 + 1) = v23;
    v24 = v55;
    *(v21 + 2) = v54;
    *(v21 + 3) = v24;
    sub_1000728AC();
    sub_100071FFC();
    v25 = v8;
    v26 = v43;
    sub_100014DEC(v25, v43, &qword_1000951A8, &qword_100074540);
    v27 = (v26 + *(v41 + 36));
    v28 = v50;
    v27[4] = v49;
    v27[5] = v28;
    v27[6] = v51;
    v29 = v46;
    *v27 = v45;
    v27[1] = v29;
    v30 = v48;
    v27[2] = v47;
    v27[3] = v30;
    KeyPath = swift_getKeyPath();
    v32 = v42;
    v33 = &v42[*(v39 + 36)];
    v34 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v35 = enum case for ColorScheme.light(_:);
    v36 = sub_100071EAC();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = KeyPath;
    sub_100014DEC(v26, v32, &qword_1000951B0, &qword_100074548);
    v37 = v44;
    sub_100014DEC(v32, v44, &qword_1000951B8, &qword_100074550);
    sub_100004C94(v37, v16, &qword_1000951B8, &qword_100074550);
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    sub_10007230C();
    return sub_100004890(v37, &qword_1000951B8, &qword_100074550);
  }
}

uint64_t sub_10001A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_10000388C(&qword_100095200, &qword_1000745A8);
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v96 = &v89 - v4;
  v94 = sub_10000388C(&qword_100095208, &qword_1000745B0);
  __chkstk_darwin(v94);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v89 - v7;
  v8 = sub_10007297C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v89 - v13;
  v15 = sub_10000388C(&qword_100095210, &qword_1000745B8);
  __chkstk_darwin(v15 - 8);
  v100 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v89 - v18;
  v19 = sub_10000388C(&qword_100095218, &unk_1000745C0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v98 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  sub_10007287C();
  v25 = sub_1000723AC();
  v24[*(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)] = v25;
  sub_1000726CC();
  v26 = sub_1000726FC();

  v27 = sub_1000723AC();
  v28 = &v24[*(sub_10000388C(&qword_100095228, &qword_1000745D0) + 36)];
  *v28 = v26;
  v28[8] = v27;
  sub_10000388C(&qword_100095230, &qword_1000745D8);
  v29 = swift_allocObject();
  v93 = xmmword_100074490;
  *(v29 + 16) = xmmword_100074490;
  *(v29 + 32) = sub_1000726CC();
  *(v29 + 40) = sub_1000726DC();
  sub_10007286C();
  sub_1000728FC();
  sub_1000728EC();
  sub_100071F8C();
  sub_1000728CC();
  v31 = v30;
  v33 = v32;
  sub_10007291C();
  v34 = &v24[*(v20 + 44)];
  v35 = v126;
  *v34 = v125;
  *(v34 + 1) = v35;
  *(v34 + 4) = v127;
  *(v34 + 5) = 0x3FD1DF46A2529D39;
  *(v34 + 6) = v31;
  *(v34 + 7) = v33;
  v97 = xmmword_1000744A0;
  *(v34 + 4) = xmmword_1000744A0;
  *(v34 + 10) = v36;
  *(v34 + 11) = v37;
  sub_1000129F8(v14);
  sub_10007296C();
  sub_10001B20C();
  LOBYTE(v20) = sub_100072B1C();
  v38 = *(v9 + 8);
  v38(v11, v8);
  v38(v14, v8);
  if (v20)
  {
    goto LABEL_16;
  }

  v39 = a1 + *(type metadata accessor for CPTitleGradientView(0) + 24);
  v40 = *(v39 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (!(v40 >> 62))
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    v84 = v99;
    (*(v101 + 56))(v99, 1, 1, v102);
LABEL_17:
    v85 = v98;
    sub_100004C94(v24, v98, &qword_100095218, &unk_1000745C0);
    v86 = v100;
    sub_100004C94(v84, v100, &qword_100095210, &qword_1000745B8);
    v87 = v103;
    sub_100004C94(v85, v103, &qword_100095218, &unk_1000745C0);
    v88 = sub_10000388C(&qword_100095248, &qword_1000745F0);
    sub_100004C94(v86, v87 + *(v88 + 48), &qword_100095210, &qword_1000745B8);
    sub_100004890(v84, &qword_100095210, &qword_1000745B8);
    sub_100004890(v24, &qword_100095218, &unk_1000745C0);
    sub_100004890(v86, &qword_100095210, &qword_1000745B8);
    return sub_100004890(v85, &qword_100095218, &unk_1000745C0);
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v42 = sub_100072E6C();
LABEL_7:
    v43 = *(v42 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v43 || (v43 = *(v42 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor)) != 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }

    v45 = v44;

    v46 = v45;
    v47 = sub_1000726AC();
    v91 = v46;
    [v46 _luminance];
    if (v48 <= 0.8)
    {
      v49 = -0.2;
    }

    else
    {
      v49 = (v48 + -0.8) / -0.2 * 0.2 + -0.2;
    }

    v90 = v49;
    v50 = v94;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100074190;
    *(v51 + 32) = v47;
    *(v51 + 40) = v47;
    swift_retain_n();
    *(v51 + 48) = sub_1000726FC();
    *(v51 + 56) = sub_1000726DC();
    sub_10007286C();
    sub_1000728FC();
    sub_1000728EC();
    sub_100071F8C();
    sub_1000728CC();
    v53 = v52;
    v55 = v54;
    sub_10007291C();
    v57 = v56;
    v59 = v58;
    v60 = swift_allocObject();
    *(v60 + 16) = v93;
    *(v60 + 32) = v47;

    *(v60 + 40) = sub_1000726DC();
    sub_10007286C();
    sub_1000728FC();
    sub_1000728EC();
    sub_100071F8C();
    sub_1000728CC();
    v62 = v61;
    v64 = v63;
    sub_10007291C();
    v66 = v65;
    v68 = v67;
    v69 = *(v50 + 36);
    v70 = enum case for BlendMode.color(_:);
    v71 = sub_1000728BC();
    v72 = v92;
    (*(*(v71 - 8) + 104))(&v92[v69], v70, v71);
    v73 = v108;
    *v72 = v107;
    *(v72 + 16) = v73;
    *(v72 + 32) = v109;
    *(v72 + 40) = 0x3FD1DF46A2529D39;
    *(v72 + 48) = v62;
    *(v72 + 56) = v64;
    *(v72 + 64) = v97;
    *(v72 + 80) = v66;
    *(v72 + 88) = v68;
    v74 = v95;
    sub_100004C94(v72, v95, &qword_100095208, &qword_1000745B0);
    v76 = v104;
    v75 = v105;
    v110[0] = v104;
    v110[1] = v105;
    *&v111 = v106;
    *(&v111 + 1) = 0x3FD1DF46A2529D39;
    *&v112 = v53;
    *(&v112 + 1) = v55;
    v113 = v97;
    *&v114 = v57;
    *(&v114 + 1) = v59;
    v77 = v90;
    v115 = v90;
    v78 = v97;
    v79 = v114;
    v80 = v96;
    *(v96 + 12) = v90;
    v80[4] = v78;
    v80[5] = v79;
    v81 = v112;
    v80[2] = v111;
    v80[3] = v81;
    *v80 = v76;
    v80[1] = v75;
    v82 = sub_10000388C(&qword_100095238, &qword_1000745E0);
    sub_100004C94(v74, v80 + *(v82 + 48), &qword_100095208, &qword_1000745B0);
    sub_100004C94(v110, v116, &qword_100095240, &qword_1000745E8);

    sub_100004890(v72, &qword_100095208, &qword_1000745B0);
    sub_100004890(v74, &qword_100095208, &qword_1000745B0);
    v116[0] = v104;
    v116[1] = v105;
    v117 = v106;
    v118 = 0x3FD1DF46A2529D39;
    v119 = v53;
    v120 = v55;
    v121 = v97;
    v122 = v57;
    v123 = v59;
    v124 = v77;
    sub_100004890(v116, &qword_100095240, &qword_1000745E8);
    v83 = v80;
    v84 = v99;
    sub_100014DEC(v83, v99, &qword_100095200, &qword_1000745A8);
    (*(v101 + 56))(v84, 0, 1, v102);
    goto LABEL_17;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v40 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001AFE4()
{
  result = qword_1000951D0;
  if (!qword_1000951D0)
  {
    sub_1000038D4(&qword_1000951B8, &qword_100074550);
    sub_10001B09C();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951D0);
  }

  return result;
}

unint64_t sub_10001B09C()
{
  result = qword_1000951D8;
  if (!qword_1000951D8)
  {
    sub_1000038D4(&qword_1000951B0, &qword_100074548);
    sub_10001B154();
    sub_100004C3C(&qword_1000951F0, &qword_1000951F8, &qword_1000745A0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951D8);
  }

  return result;
}

unint64_t sub_10001B154()
{
  result = qword_1000951E0;
  if (!qword_1000951E0)
  {
    sub_1000038D4(&qword_1000951A8, &qword_100074540);
    sub_100004C3C(&qword_1000951E8, &qword_1000951A0, &qword_100074538, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000951E0);
  }

  return result;
}

unint64_t sub_10001B20C()
{
  result = qword_1000949D0;
  if (!qword_1000949D0)
  {
    sub_10007297C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000949D0);
  }

  return result;
}

unint64_t sub_10001B268()
{
  result = qword_100095250;
  if (!qword_100095250)
  {
    sub_1000038D4(&qword_100095258, &qword_1000745F8);
    sub_10001AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095250);
  }

  return result;
}

uint64_t sub_10001B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_100095260, qword_100074600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001B480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_100095260, qword_100074600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFEmptyStateView(uint64_t a1)
{
  result = qword_1000952C0;
  if (!qword_1000952C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B63C(uint64_t a1)
{
  sub_10001B72C(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10001B72C(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10001B72C(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001B72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001B79C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  type metadata accessor for AFEmptyStateView(0);
  v26 = v1;
  sub_1000129F8(v15);
  sub_10007296C();
  sub_10001D764(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v16 = sub_100072B1C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = enum case for BlendMode.normal(_:);
    v19 = sub_1000728BC();
    return (*(*(v19 - 8) + 104))(v27, v18, v19);
  }

  else
  {
    v21 = v27;
    sub_100012A20(v8);
    (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
    v22 = sub_100071E9C();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v23(v8, v2);
    v24 = sub_1000728BC();
    if (v22)
    {
      v25 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v25 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v24 - 8) + 104))(v21, *v25, v24);
  }
}

void sub_10001BABC()
{
  v0 = sub_100072B2C();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
    v3 = [objc_opt_self() configurationWithFont:v2];

    [v1 imageWithConfiguration:v3];
  }

  else
  {
    __break(1u);
  }
}