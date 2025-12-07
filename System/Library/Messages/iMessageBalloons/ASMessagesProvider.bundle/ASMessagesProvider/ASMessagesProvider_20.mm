void *sub_23CA44@<X0>(uint64_t a1@<X8>)
{
  if (byte_94AFA8 != 2)
  {
    return sub_76A6E0();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_23CACC()
{
  if (qword_93C720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23CCBC(0, 1);
  result = swift_endAccess();
  byte_94AFA8 = 2;
  return result;
}

id sub_23CB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_23CBB4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_769210();
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    sub_76A510();
    swift_unknownObjectRelease();
    sub_13310(v8, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_BD88(&unk_93FBD0, &qword_77DFA0);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v6 ^ 1;
  v3(v8, &v9);
  if (BYTE8(v8[0]))
  {
    return v1;
  }

  else
  {
    return *&v8[0];
  }
}

void sub_23CCBC(uint64_t a1, char a2)
{
  v8 = a1;
  v9 = a2 & 1;
  v3 = *(v2 + 32);
  (*(v2 + 40))(&v6, &v8);
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_76A990();
  }

  v5 = sub_769210();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

id sub_23CD6C()
{
  result = [objc_opt_self() standardUserDefaults];
  *&xmmword_94AF70 = 0xD00000000000001ELL;
  *(&xmmword_94AF70 + 1) = 0x80000000007D6260;
  *&xmmword_94AF80 = 0;
  BYTE8(xmmword_94AF80) = 1;
  qword_94AF90 = result;
  unk_94AF98 = sub_23CDF0;
  qword_94AFA0 = 0;
  return result;
}

uint64_t sub_23CDF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*(result + 8) & 1) != 0 || (v2 = *result, *result <= 1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_23CE20()
{
  v0 = sub_7572E0();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77D9F0;
  v38 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  v33 = 28271;
  v34 = 0xE200000000000000;
  sub_76A6E0();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 56) = 28271;
  *(v4 + 64) = 0xE200000000000000;
  *(v4 + 80) = sub_23D8C8;
  *(v4 + 88) = v3;
  v5 = v36;
  *(v4 + 16) = v35;
  *(v4 + 32) = v5;
  *(v4 + 48) = v37;
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  v33 = 6710895;
  v34 = 0xE300000000000000;
  sub_76A6E0();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 56) = 6710895;
  *(v7 + 64) = 0xE300000000000000;
  *(v7 + 80) = sub_23D8C8;
  *(v7 + 88) = v6;
  v8 = v36;
  *(v7 + 16) = v35;
  *(v7 + 32) = v8;
  *(v7 + 48) = v37;
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  v9 = v38;
  type metadata accessor for MenuDebugSetting();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000014;
  *(v10 + 64) = 0x80000000007D6280;
  *(v10 + 72) = v9;
  *(v10 + 80) = sub_23C170;
  *(v10 + 88) = 0;
  sub_7572D0();
  v11 = sub_7572B0();
  v13 = v12;
  v14 = v29;
  v15 = *(v28 + 8);
  v15(v2, v29);
  v33 = v11;
  v34 = v13;
  sub_76A6E0();
  v16 = v36;
  *(v10 + 16) = v35;
  *(v10 + 32) = v16;
  *(v10 + 48) = v37;
  v17 = 28271;
  if (byte_94AF68)
  {
    v17 = 6710895;
  }

  v18 = 0xE200000000000000;
  if (byte_94AF68)
  {
    v18 = 0xE300000000000000;
  }

  v33 = v17;
  v34 = v18;

  sub_76A6E0();
  v19 = *(v10 + 72);
  v32 = &v35;

  sub_615E1C(sub_23F0B4, v31, v19);

  sub_10A2C(&v35, &unk_9443A0, &unk_77E240);
  v20 = v30;
  *(v30 + 32) = v10;
  *&v35 = v20;
  sub_10A6F0(_swiftEmptyArrayStorage);
  v21 = v35;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_7572D0();
  v23 = sub_7572B0();
  v25 = v24;
  v15(v2, v14);
  *(v22 + 16) = v23;
  *(v22 + 24) = v25;
  strcpy((v22 + 32), "Search Landing");
  *(v22 + 47) = -18;
  *(v22 + 48) = v21;
  return v22;
}

void *sub_23D2B0()
{
  v35 = sub_7572E0();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_78D690;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v4 = sub_5BEF20(0x6E6F697469736F50, 0xE800000000000000, sub_23C5C4, 0, sub_23C6DC, 0);
  v33 = v3;
  *(v3 + 32) = v4;
  v41 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  v36 = 0x6465726564726F62;
  v37 = 0xE800000000000000;
  sub_76A6E0();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 56) = 0x6465726564726F62;
  *(v6 + 64) = 0xE800000000000000;
  *(v6 + 80) = sub_23D89C;
  *(v6 + 88) = v5;
  v7 = v39;
  *(v6 + 16) = v38;
  *(v6 + 32) = v7;
  *(v6 + 48) = v40;
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  v36 = 0x64656C6C6966;
  v37 = 0xE600000000000000;
  sub_76A6E0();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  *(v9 + 56) = 0x64656C6C6966;
  *(v9 + 64) = 0xE600000000000000;
  *(v9 + 80) = sub_23D89C;
  *(v9 + 88) = v8;
  v10 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v10;
  *(v9 + 48) = v40;
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  v11 = v41;
  type metadata accessor for MenuDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Display Style");
  *(v12 + 70) = -4864;
  *(v12 + 72) = v11;
  *(v12 + 80) = sub_23CA44;
  *(v12 + 88) = 0;
  sub_7572D0();
  v13 = sub_7572B0();
  v15 = v14;
  v16 = *(v0 + 8);
  v34 = v0 + 8;
  v16(v2, v35);
  *&v38 = v13;
  *(&v38 + 1) = v15;
  v17 = sub_76A6E0();
  if (byte_94AFA8 == 2)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    v18 = 0x6465726564726F62;
    if (byte_94AFA8)
    {
      v18 = 0x64656C6C6966;
    }

    v19 = 0xE800000000000000;
    if (byte_94AFA8)
    {
      v19 = 0xE600000000000000;
    }

    v36 = v18;
    v37 = v19;
    v17 = sub_76A6E0();
  }

  v32 = 0x80000000007D6220;
  __chkstk_darwin(v17);
  *(&v31 - 2) = &v38;

  sub_615E1C(sub_23D8AC, (&v31 - 4), v11);

  sub_10A2C(&v38, &unk_9443A0, &unk_77E240);
  v20 = v33;
  *(v33 + 40) = v12;
  type metadata accessor for ActionDebugSetting();
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000010;
  *(v21 + 64) = 0x80000000007D6240;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_23CACC;
  *(v21 + 112) = 0;
  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v25 = v35;
  v16(v2, v35);
  *&v38 = v22;
  *(&v38 + 1) = v24;
  sub_76A6E0();
  *(v20 + 48) = v21;
  type metadata accessor for DebugSection();
  v26 = swift_allocObject();
  sub_7572D0();
  v27 = sub_7572B0();
  v29 = v28;
  v16(v2, v25);
  v26[2] = v27;
  v26[3] = v29;
  v26[4] = 0xD000000000000019;
  v26[5] = v32;
  v26[6] = v20;
  return v26;
}

uint64_t sub_23D8D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_23D908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_23D950(uint64_t a1)
{
  v142 = sub_75CDA0();
  v144 = *(v142 - 1);
  __chkstk_darwin(v142);
  v141 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_BD88(&unk_93F630, &unk_77E230);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v91 - v3;
  v4 = sub_BD88(&qword_94AFD8, &qword_78D6C8);
  __chkstk_darwin(v4 - 8);
  v128 = v91 - v5;
  v6 = sub_768690();
  __chkstk_darwin(v6 - 8);
  v127 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_758B40();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_75F340();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_760280();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v122 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v143 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v119 = v91 - v14;
  v115 = sub_765490();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75EF10();
  __chkstk_darwin(v16 - 8);
  v113 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_7649E0();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_764A60();
  __chkstk_darwin(v107);
  v110 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_75B660();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v108 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_763BE0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_7627B0();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v136 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v23 - 8);
  v145 = v91 - v24;
  v25 = sub_BD88(&unk_957130, &qword_78B140);
  __chkstk_darwin(v25 - 8);
  v135 = v91 - v26;
  v27 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v27 - 8);
  v134 = v91 - v28;
  v29 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v29 - 8);
  v99 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = v91 - v32;
  v33 = sub_759810();
  __chkstk_darwin(v33 - 8);
  v94 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v35 - 8);
  v92 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v93 = v91 - v38;
  v39 = sub_BD88(&qword_94AFF0, &unk_78D6D0);
  __chkstk_darwin(v39 - 8);
  v133 = v91 - v40;
  v41 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v41 - 8);
  v43 = v91 - v42;
  v44 = sub_764930();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_7572E0();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_762840();
  v132 = a1;
  sub_768880();
  v52 = v150;
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_77D9F0;
  sub_7572D0();
  v53 = sub_7572B0();
  v55 = v54;
  (*(v49 + 8))(v51, v48);
  *&v146 = v53;
  *(&v146 + 1) = v55;
  sub_76A6E0();
  v56 = *(v45 + 104);
  v95 = v47;
  v56(v47, enum case for Shelf.ContentType.action(_:), v44);
  v57 = *(v45 + 56);
  v96 = v43;
  v57(v43, 1, 1, v44);
  v58 = sub_7598F0();
  (*(*(v58 - 8) + 56))(v133, 1, 1, v58);
  v105 = v52;
  v59 = sub_762820();
  v60 = *(v59 + 16);
  if (v60)
  {
    v149 = _swiftEmptyArrayStorage;
    sub_143CFC(0, v60, 0);
    v61 = v149;
    v140 = *(v144 + 16);
    v62 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v91[1] = v59;
    v63 = v59 + v62;
    v64 = *(v144 + 72);
    v144 += 16;
    v138 = (v144 - 8);
    v139 = v64;
    do
    {
      v65 = v141;
      v66 = v142;
      v140(v141, v63, v142);
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      sub_75CD90();
      sub_768790();
      v67 = sub_768AB0();
      (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
      v68 = sub_764C80();
      swift_allocObject();
      v69 = sub_764C40();
      (*v138)(v65, v66);
      v149 = v61;
      v71 = *(v61 + 2);
      v70 = *(v61 + 3);
      if (v71 >= v70 >> 1)
      {
        sub_143CFC((v70 > 1), v71 + 1, 1);
        v61 = v149;
      }

      *(&v147 + 1) = v68;
      v148 = sub_23F004(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      *&v146 = v69;
      *(v61 + 2) = v71 + 1;
      sub_10914(&v146, &v61[5 * v71 + 4]);
      v63 += v139;
      --v60;
    }

    while (v60);
  }

  v72 = sub_759760();
  v73 = *(*(v72 - 8) + 56);
  v73(v93, 1, 1, v72);
  v73(v92, 1, 1, v72);
  sub_7597A0();
  sub_7598E0();
  swift_allocObject();
  v144 = sub_7598B0();
  v74 = sub_7570A0();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v77 = (v75 + 56);
  v140 = v74;
  v76(v137, 1, 1, v74);
  v141 = v77;
  v142 = v76;
  v78 = sub_75C220();
  (*(*(v78 - 8) + 56))(v134, 1, 1, v78);
  v79 = sub_7572A0();
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  v80 = sub_768AB0();
  (*(*(v80 - 8) + 56))(v145, 1, 1, v80);
  v76(v99, 1, 1, v74);
  (*(v97 + 104))(v136, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v98);
  (*(v100 + 104))(v106, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v101);
  (*(v103 + 104))(v108, enum case for ShelfBackground.none(_:), v104);
  sub_BD88(&qword_94AFF8, qword_78D6E0);
  swift_allocObject();
  sub_768480();
  *&v146 = _swiftEmptyArrayStorage;
  sub_23F004(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_BD88(&qword_9467F8, &unk_787710);
  sub_23F04C();
  sub_76A5A0();
  (*(v109 + 104))(v112, enum case for Shelf.ContentsMetadata.none(_:), v111);
  sub_75EF00();
  sub_764B30();
  swift_allocObject();
  v81 = v137;
  *(v102 + 32) = sub_764AB0();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  (*(v114 + 104))(v116, enum case for FlowPage.page(_:), v115);
  (v142)(v81, 1, 1, v140);
  v82 = sub_759E30();
  (*(*(v82 - 8) + 56))(v119, 1, 1, v82);
  v146 = 0u;
  v147 = 0u;
  sub_768790();
  (*(v117 + 104))(v122, enum case for FlowPresentationContext.infer(_:), v118);
  (*(v120 + 104))(v123, enum case for FlowAnimationBehavior.infer(_:), v121);
  (*(v124 + 104))(v126, enum case for FlowOrigin.inapp(_:), v125);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v83 = sub_758AD0();
  v150 = 0u;
  v151 = 0u;
  sub_768680();
  v84 = sub_768650();
  (*(*(v84 - 8) + 56))(v128, 1, 1, v84);
  v85 = sub_7594D0();
  swift_allocObject();
  v86 = sub_7594C0();
  *(&v151 + 1) = v85;
  *&v150 = v86;
  sub_758A70();
  sub_10A2C(&v150, &unk_93FBD0, &qword_77DFA0);
  v87 = v129;
  v88 = v131;
  v89 = v132;
  sub_768880();
  sub_32AC14(v83, 1, v89, v87);

  return (*(v130 + 8))(v87, v88);
}

uint64_t sub_23F004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23F04C()
{
  result = qword_946800;
  if (!qword_946800)
  {
    sub_133D8(&qword_9467F8, &unk_787710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946800);
  }

  return result;
}

double sub_23F0CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_23F110(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v44 = a2;
  v6 = sub_768380();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_7683C0();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_764CF0();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94B0B0, qword_78D790);
  v45 = sub_768F90();
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v46 = a1;
  if (v12)
  {
    v41 = v3;
    v42 = v6;
    v60 = _swiftEmptyArrayStorage;
    sub_143CDC(0, v12, 0);
    v13 = v60;
    v14 = *(sub_75F6F0() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = (v9 + 8);
    v52 = *(v14 + 72);
    do
    {
      sub_75F6D0();
      v17 = sub_764CA0();
      v19 = v18;
      (*v16)(v11, v53);
      aBlock = v17;
      v55 = v19;
      v61._countAndFlagsBits = 8250;
      v61._object = 0xE200000000000000;
      sub_769370(v61);
      v20._countAndFlagsBits = sub_75F690();
      if (v20._object)
      {
        object = v20._object;
      }

      else
      {
        v20._countAndFlagsBits = 0x746C7561666564;
        object = 0xE700000000000000;
      }

      v20._object = object;
      sub_769370(v20);

      v22 = aBlock;
      v23 = v55;
      v60 = v13;
      v25 = *(v13 + 2);
      v24 = *(v13 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_143CDC((v24 > 1), v25 + 1, 1);
        v13 = v60;
      }

      *(v13 + 2) = v25 + 1;
      v26 = &v13[2 * v25];
      *(v26 + 4) = v22;
      *(v26 + 5) = v23;
      v15 += v52;
      --v12;
    }

    while (v12);
    v4 = v41;
    v6 = v42;
  }

  aBlock = v13;
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_16194(&qword_94EC70, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
  v27 = sub_7691A0();
  v29 = v28;

  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v30 = sub_768FF0();
  sub_BE38(v30, qword_9A0460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_7685D0();
  sub_768540();
  sub_768540();
  v57 = &type metadata for String;
  aBlock = v27;
  v55 = v29;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768E80();

  v31 = *(v4 + 16);
  v32 = swift_allocObject();
  v33 = v44;
  v34 = v45;
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = v46;
  *(v32 + 40) = v34;
  *(v32 + 48) = v43 & 1;
  *(v32 + 56) = v4;
  v58 = sub_241780;
  v59 = v32;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_23F0CC;
  v57 = &unk_88A060;
  v35 = _Block_copy(&aBlock);
  v36 = v31;

  v37 = v47;
  sub_7683A0();
  v60 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
  v38 = v49;
  sub_76A5A0();
  sub_769980();
  _Block_release(v35);
  (*(v51 + 8))(v38, v6);
  (*(v48 + 8))(v37, v50);

  return v34;
}

void sub_23F808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v60 = a3;
  v9 = sub_763420();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_75F6F0();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v54 = &v49[-v14];
  v15 = sub_764CF0();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_760050();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v68 = &v49[-v22];
  v23 = *(a2 + 16);
  v61 = a1;
  v62 = a4;
  if (v23)
  {
    v52 = v11;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v25 = *(v18 + 16);
    v24 = (v18 + 16);
    v26 = (a2 + ((v24[64] + 32) & ~v24[64]));
    v65 = *(v24 + 7);
    v66 = v25;
    v27 = v68;
    v63 = v15;
    v64 = (v67 + 8);
    v67 = v24;
    v28 = v24 - 8;
    v29 = v53;
    do
    {
      v30 = v66;
      v66(v27, v26, v17);
      v30(v20, v27, v17);
      v31 = objc_allocWithZone(ADAppRepresentation);
      sub_760040();
      sub_764CA0();
      (*v64)(v29, v63);
      v32 = sub_769210();

      sub_760030();
      isa = sub_7690E0().super.isa;

      [v31 initWithAdamID:v32 assetInformation:isa];

      v27 = v68;
      v34 = *v28;
      (*v28)(v20, v17);
      v34(v27, v17);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v26 += v65;
      --v23;
    }

    while (v23);
    a1 = v61;
    a4 = v62;
    v11 = v52;
  }

  sub_BE70(0, &qword_94B0B8, ADAppRepresentation_ptr);
  v35 = sub_769450().super.isa;

  [a1 setOrganics:v35];

  v36 = v60;
  v37 = *(v60 + 16);
  if (v37)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v38 = sub_BE70(0, &unk_94B0C0, ADAppAdvertisement_ptr);
    v39 = v55;
    v67 = *(v56 + 16);
    v68 = v38;
    v40 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v66 = *(v56 + 72);
    v41 = (v56 + 8);
    v42 = v54;
    do
    {
      v43 = v67;
      (v67)(v42, v40, v11);
      v43(v39, v42, v11);
      sub_23FFA4(v39);
      (*v41)(v42, v11);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v40 += v66;
      --v37;
    }

    while (v37);
    a1 = v61;
    a4 = v62;
  }

  sub_BE70(0, &unk_94B0C0, ADAppAdvertisement_ptr);
  v44 = sub_769450().super.isa;

  v45 = [a1 setAdvertisementsWithPolicy:v44];

  if (v45)
  {
    v46 = v57;
    sub_763410();
    sub_768F60();
    (*(v58 + 8))(v46, v59);
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v50 & 1;
    *(v47 + 24) = v51;
    *(v47 + 32) = a4;
    aBlock[4] = sub_2417EC;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_241608;
    aBlock[3] = &unk_88A0B0;
    v48 = _Block_copy(aBlock);

    [a1 orderedAdsWithODMLSuccess:v48];
    _Block_release(v48);
  }
}

id sub_23FFA4(uint64_t a1)
{
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F6D0();
  sub_764CA0();
  (*(v3 + 8))(v5, v2);
  v6 = sub_769210();

  if (sub_75F6E0())
  {
    v7.super.isa = sub_769450().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  sub_75F690();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_75F6C0();
  v11 = objc_allocWithZone(ADDataObject);
  isa = sub_7690E0().super.isa;

  v13 = [v11 initWith:isa andError:0];

  sub_75F680();
  v14 = sub_769210();

  v15 = [v10 initWithAdamID:v6 cppIDs:v7.super.isa serverCppID:v9 adData:v13 instanceID:v14];

  v16 = v15;
  if (sub_75F6B0())
  {
    v17.super.isa = sub_769450().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [v16 setAppBinaryTraits:v17.super.isa];

  v18 = sub_75F6F0();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_240264(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v122 = a5;
  v123 = a4;
  v119 = a2;
  v121 = sub_763420();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_768FF0();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_764CF0();
  v117 = *(v148 - 8);
  __chkstk_darwin(v148);
  v135 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v116 - v11;
  __chkstk_darwin(v12);
  v147 = &v116 - v13;
  v14 = sub_7580D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v134 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v136 = &v116 - v21;
  __chkstk_darwin(v22);
  v144 = &v116 - v23;
  v24 = sub_75F6F0();
  v150 = *(v24 - 8);
  __chkstk_darwin(v24);
  v146 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v138 = &v116 - v28;
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  if (!a1)
  {
    v139 = 0;
    v140 = 0;
    v149 = 0;
    v15 = 0;
    v34 = 0;
    goto LABEL_63;
  }

  v133 = v30;
  v116 = v15;
  if (a1 >> 62)
  {
    v33 = sub_76A860();
  }

  else
  {
    v33 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v34 = _swiftEmptyArrayStorage;
  v151 = v24;
  v145 = v14;
  if (!v33)
  {
LABEL_14:
    v149 = v34;
    v39 = v138;
    if (a3)
    {
      v132 = v19;

      v139 = sub_10EB0C(_swiftEmptyArrayStorage);
      v143 = v34[2];
      if (v143)
      {
        v40 = 0;
        v142 = (v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)));
        v141 = v150 + 16;
        v131 = (v117 + 8);
        v41 = *(v123 + 24);
        v130 = *(v123 + 32);
        v129 = (v116 + 32);
        v128 = (v116 + 8);
        v140 = (v150 + 8);
        v127 = v41;
        v42 = (v117 + 8);
        v43 = v144;
        do
        {
          if (v40 >= v34[2])
          {
            goto LABEL_69;
          }

          (*(v150 + 16))(v39, v142 + *(v150 + 72) * v40, v24);
          if (!v41)
          {
            (*v140)(v39, v24);
            goto LABEL_18;
          }

          swift_getObjectType();
          v44 = v147;
          sub_75F6D0();
          sub_758330();
          v45 = *v42;
          v46 = v148;
          (*v42)(v44, v148);
          swift_getObjectType();
          v47 = v136;
          sub_758220();
          swift_unknownObjectRelease();
          (*v129)(v43, v47, v14);
          v15 = v137;
          sub_75F6D0();
          v39 = sub_764CA0();
          v49 = v48;
          v45(v15, v46);
          v50 = sub_758080();
          v34 = v139;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v34;
          v53 = sub_3DF2F8(v39, v49);
          v54 = v34[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_70;
          }

          v15 = v52;
          if (v34[3] >= v56)
          {
            v34 = v149;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_27;
            }

            sub_45BFA0();
          }

          else
          {
            sub_4561D0(v56, isUniquelyReferenced_nonNull_native);
            v57 = sub_3DF2F8(v39, v49);
            if ((v15 & 1) != (v58 & 1))
            {
              goto LABEL_77;
            }

            v53 = v57;
          }

          v34 = v149;
LABEL_27:
          if (v15)
          {

            v139 = v153;
            *(*(v153 + 7) + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
          }

          else
          {
            v15 = v153;
            *&v153[(v53 >> 6) + 8] |= 1 << v53;
            v59 = (*(v15 + 48) + 16 * v53);
            *v59 = v39;
            v59[1] = v49;
            *(*(v15 + 56) + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
            v60 = *(v15 + 16);
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_72;
            }

            v139 = v15;
            *(v15 + 16) = v62;
          }

          v41 = v127;
LABEL_18:
          ++v40;
        }

        while (v143 != v40);
      }

      v140 = sub_10DD04(_swiftEmptyArrayStorage);
      v64 = v34[2];
      if (v64)
      {
        v65 = *(v123 + 24);
        v137 = *(v123 + 32);
        v142 = *(v150 + 16);
        v39 = v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v136 = (v117 + 8);
        v141 = *(v150 + 72);
        v131 = (v116 + 32);
        v129 = (v116 + 8);
        v143 = (v150 + 16);
        v138 = (v150 + 8);
        v66 = v132;
        v67 = v133;
        v130 = v65;
        v142(v133, v39, v24);
        while (1)
        {
          if (v65)
          {
            v144 = v64;
            swift_getObjectType();
            v69 = v147;
            sub_75F6D0();
            sub_758330();
            v70 = *v136;
            v71 = v148;
            (*v136)(v69, v148);
            swift_getObjectType();
            v72 = v134;
            sub_758220();
            swift_unknownObjectRelease();
            (*v131)(v66, v72, v14);
            v15 = v135;
            sub_75F6D0();
            v73 = sub_764CA0();
            v75 = v74;
            v70(v15, v71);
            v76 = sub_758060();
            v78 = v77;
            v34 = v140;
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v153 = v34;
            v81 = sub_3DF2F8(v73, v75);
            v82 = v34[2];
            v83 = (v80 & 1) == 0;
            v84 = v82 + v83;
            if (__OFADD__(v82, v83))
            {
              goto LABEL_71;
            }

            v15 = v80;
            if (v34[3] >= v84)
            {
              v34 = v149;
              if ((v79 & 1) == 0)
              {
                sub_45B7AC();
                v34 = v149;
              }
            }

            else
            {
              sub_4553C4(v84, v79);
              v85 = sub_3DF2F8(v73, v75);
              if ((v15 & 1) != (v86 & 1))
              {
                goto LABEL_77;
              }

              v81 = v85;
              v34 = v149;
            }

            v66 = v132;
            v87 = v153;
            v140 = v153;
            if (v15)
            {
              v68 = (*(v153 + 7) + 16 * v81);
              *v68 = v76;
              v68[1] = v78;
            }

            else
            {
              *&v153[(v81 >> 6) + 8] |= 1 << v81;
              v88 = (*(v87 + 6) + 16 * v81);
              *v88 = v73;
              v88[1] = v75;
              v89 = (*(v87 + 7) + 16 * v81);
              *v89 = v76;
              v89[1] = v78;
              v90 = *(v87 + 2);
              v61 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v61)
              {
                goto LABEL_73;
              }

              *(v87 + 2) = v91;
            }

            v14 = v145;
            (*v129)(v66, v145);
            v24 = v151;
            v67 = v133;
            v65 = v130;
            v64 = v144;
          }

          (*v138)(v67, v24);
          v39 += v141;
          v64 = (v64 - 1);
          if (!v64)
          {
            break;
          }

          v142(v67, v39, v24);
        }
      }

      v63 = v140;
    }

    else
    {
      v139 = 0;
      v63 = 0;
    }

    v140 = v63;
    v15 = v34[2];
    v39 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v152 = _swiftEmptyArrayStorage;

      v34 = &v152;
      sub_143CDC(0, v15, 0);
      v92 = v149;
      v93 = 0;
      v144 = v149 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v39 = v152;
      v143 = (v150 + 16);
      v141 = v150 + 8;
      v142 = (v117 + 8);
      v145 = v15;
      v94 = v150;
      while (v93 < v92[2])
      {
        v95 = v146;
        v96 = v151;
        (*(v94 + 16))(v146, &v144[*(v94 + 72) * v93], v151);
        v97 = v147;
        sub_75F6D0();
        v98 = sub_764CA0();
        v100 = v99;
        (*v142)(v97, v148);
        v153 = v98;
        v154 = v100;
        v157._countAndFlagsBits = 8250;
        v157._object = 0xE200000000000000;
        sub_769370(v157);
        v101._countAndFlagsBits = sub_75F6A0();
        if (v101._object)
        {
          object = v101._object;
        }

        else
        {
          v101._countAndFlagsBits = 0x746C7561666564;
          object = 0xE700000000000000;
        }

        v34 = &v153;
        v101._object = object;
        sub_769370(v101);

        v103 = v153;
        v104 = v154;
        (*(v94 + 8))(v95, v96);
        v152 = v39;
        v106 = *(v39 + 16);
        v105 = *(v39 + 24);
        if (v106 >= v105 >> 1)
        {
          v34 = &v152;
          sub_143CDC((v105 > 1), v106 + 1, 1);
          v39 = v152;
        }

        ++v93;
        *(v39 + 16) = v106 + 1;
        v107 = v39 + 16 * v106;
        *(v107 + 32) = v103;
        *(v107 + 40) = v104;
        v15 = v145;
        v92 = v149;
        if (v145 == v93)
        {

          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_62:
    v153 = v39;
    sub_BD88(&unk_947FF0, &unk_7801F0);
    sub_16194(&qword_94EC70, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
    v15 = sub_7691A0();
    v34 = v108;

LABEL_63:
    LOBYTE(v39) = v119;
    if (qword_93DF10 == -1)
    {
LABEL_64:
      v109 = v126;
      v110 = sub_BE38(v126, qword_9A0460);
      (*(v125 + 16))(v124, v110, v109);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_780120;
      sub_7685D0();
      sub_768540();
      sub_768540();
      v156 = &type metadata for Bool;
      LOBYTE(v153) = v39 & 1;
      sub_7685C0();
      sub_BDD0(&v153);
      sub_768540();
      if (v34)
      {
        v111 = &type metadata for String;
      }

      else
      {
        v15 = 0;
        v111 = 0;
        v155 = 0;
      }

      v153 = v15;
      v154 = v34;
      v156 = v111;
      sub_7685C0();
      sub_BDD0(&v153);
      v112 = v126;
      v113 = v124;
      sub_768E80();

      (*(v125 + 8))(v113, v112);
      v114 = v118;
      sub_763410();
      sub_768F60();
      return (*(v120 + 8))(v114, v121);
    }

LABEL_74:
    swift_once();
    goto LABEL_64;
  }

  v153 = _swiftEmptyArrayStorage;
  sub_143DC0(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    LODWORD(v149) = a3;
    v35 = 0;
    v34 = v153;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = sub_76A770();
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 32);
      }

      sub_24139C(v36);
      v153 = v34;
      v38 = v34[2];
      v37 = v34[3];
      v15 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_143DC0((v37 > 1), v38 + 1, 1);
        v34 = v153;
      }

      ++v35;
      v34[2] = v15;
      (*(v150 + 32))(v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v38, v32, v151);
    }

    while (v33 != v35);
    v24 = v151;
    v14 = v145;
    LOBYTE(a3) = v149;
    goto LABEL_14;
  }

  __break(1u);
LABEL_77:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

void sub_24139C(void *a1)
{
  v3 = sub_764CF0();
  v4 = [a1 instanceID];
  sub_769240();

  v5 = a1;
  v6 = [v5 adamID];
  sub_769240();

  sub_764CC0();
  v7 = [v5 assetInformation];

  sub_7690F0();
  v8 = [v5 adData];
  v9 = [v8 adData];

  if (v9)
  {
    sub_7690F0();
  }

  else
  {
    sub_10E1F8(_swiftEmptyArrayStorage);
  }

  v10 = [v5 selectedCppID];
  if (v10)
  {
    v11 = v10;
    sub_769240();
  }

  v12 = [v5 appBinaryTraits];
  if (v12)
  {
    v13 = v12;
    sub_769460();
  }

  sub_75F670();
}

double sub_241608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_BE70(0, &unk_94B0C0, ADAppAdvertisement_ptr);
    v4 = sub_769460();
  }

  v5(v4, a3);

  return result;
}

uint64_t sub_241698()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_241728()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_241794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2417AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_241800(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v100 = &v93 - v10;
  v11 = sub_7664A0();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75CF00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_materialBackground;
  *&v4[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_tapGestureRecognizer;
  *&v4[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v4[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_selectionHandler];
  v24 = type metadata accessor for CarouselItemLockupOverlay();
  *v23 = 0;
  *(v23 + 1) = 0;
  v122.receiver = v4;
  v122.super_class = v24;
  v25 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  v99 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v29 setMaximumContentSizeCategory:?];
  v94 = v29;

  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v14, qword_99B898);
  v108 = v15;
  v31 = *(v15 + 16);
  v105 = v14;
  v96 = v15 + 16;
  v95 = v31;
  v31(v19, v30, v14);
  sub_75CDE0();
  v115 = v19;
  if (qword_93DBC0 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v33 = sub_BE38(v32, qword_99FB38);
  v97 = *(v32 - 8);
  v35 = v97 + 16;
  v34 = *(v97 + 16);
  v109 = v32;
  v113 = v34;
  v34(v13, v33, v32);
  v36 = v114;
  v37 = v114 + 104;
  v38 = enum case for FontSource.useCase(_:);
  v107 = *(v114 + 104);
  v107(v13);
  v104 = sub_766CA0();
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v116);
  v111 = *(v36 + 16);
  v110 = v36 + 16;
  v111(v39, v13, v11);
  sub_766CB0();
  v41 = *(v36 + 8);
  v40 = v36 + 8;
  v106 = v41;
  v41(v13, v11);
  sub_75CE00();
  if (qword_93DBC8 != -1)
  {
    swift_once();
  }

  v42 = v109;
  v112 = sub_BE38(v109, qword_99FB50);
  v113(v13, v112, v42);
  v102 = v38;
  (v107)(v13, v38, v11);
  v43 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v44 = sub_B1B4(v116);
  v103 = v37;
  v101 = v35;
  v111(v44, v13, v11);
  sub_766CB0();
  v106(v13, v11);
  v114 = v40;
  sub_75CED0();
  v45 = v113;
  v113(v13, v112, v42);
  v46 = v102;
  v47 = v107;
  (v107)(v13, v102, v11);
  v120 = v43;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v48 = sub_B1B4(v116);
  v49 = v111;
  v111(v48, v13, v11);
  sub_766CB0();
  v50 = v106;
  v106(v13, v11);
  sub_75CEA0();
  v45(v13, v112, v109);
  v47(v13, v46, v11);
  v51 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v52 = sub_B1B4(v116);
  v49(v52, v13, v11);
  sub_766CB0();
  v50(v13, v11);
  sub_75CE90();
  v113(v13, v112, v109);
  v53 = v102;
  v54 = v107;
  (v107)(v13, v102, v11);
  v120 = v51;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v55 = sub_B1B4(v116);
  v111(v55, v13, v11);
  sub_766CB0();
  v56 = v106;
  v106(v13, v11);
  sub_75CEF0();
  v57 = v53;
  v58 = v51;
  if (qword_93DBD8 != -1)
  {
    swift_once();
  }

  v59 = v109;
  v60 = sub_BE38(v109, qword_99FB80);
  v113(v13, v60, v59);
  v54(v13, v57, v11);
  v120 = v58;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v61 = sub_B1B4(v116);
  v111(v61, v13, v11);
  sub_766CB0();
  v56(v13, v11);
  v62 = v115;
  sub_75CE50();
  v114 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView;
  v63 = v94;
  v64 = *&v94[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView];
  v65 = v98;
  v66 = v105;
  v95(v98, v62, v105);
  v67 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  v68 = v108;
  v69 = *(v108 + 24);
  v70 = v64;
  v69(&v64[v67], v65, v66);
  swift_endAccess();
  [v70 setNeedsLayout];

  v71 = *(v68 + 8);
  v108 = v68 + 8;
  v71(v65, v66);
  v72 = v114;
  v73 = *(*&v63[v114] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v74 = v100;
  v113(v100, v112, v59);
  (*(v97 + 56))(v74, 0, 1, v59);
  v75 = v73;
  sub_75BA40();

  v76 = [*(*&v63[v72] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  v77 = kCAFilterPlusL;
  [v76 setCompositingFilter:kCAFilterPlusL];

  v78 = *(*&v63[v72] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v79 = v78;
  v80 = sub_769FF0();
  [v79 setTextColor:v80];

  [*(*&v63[v72] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v81 = [*(*&v63[v72] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) layer];
  [v81 setCompositingFilter:v77];

  [*&v63[v72] setMaximumContentSizeCategory:v99];
  v82 = [*&v63[v72] layer];
  [v82 setAllowsGroupBlending:0];

  v83 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_materialBackground;
  v84 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_materialBackground];
  sub_6EC1FC(26.0);

  v85 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_tapGestureRecognizer;
  [*&v63[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_tapGestureRecognizer] setEnabled:0];
  v86 = *&v63[v85];
  v87 = v63;
  [v86 addTarget:v87 action:"handleSelection:"];
  v88 = *&v63[v85];
  [v88 setDelegate:v87];

  [v87 addGestureRecognizer:*&v63[v85]];
  [v87 addSubview:*&v63[v83]];
  v89 = [*&v63[v83] contentView];
  [v89 addSubview:*&v63[v72]];

  v90 = [*&v63[v83] contentView];
  v91 = [v90 layer];

  [v91 setAllowsGroupBlending:0];
  v71(v115, v105);
  return v87;
}

uint64_t sub_2425E4()
{
  v1 = sub_7672A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CarouselItemLockupOverlay();
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_materialBackground];
  sub_75D650();
  [v6 setFrame:?];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView];
  v14[3] = type metadata accessor for SmallLockupView(0);
  v14[4] = sub_243BD0(&qword_94B118, type metadata accessor for SmallLockupView, &unk_78B65C);
  v14[0] = v7;
  sub_134D8(v14, v12);
  v13[3] = sub_767340();
  v13[4] = &protocol witness table for Margins;
  sub_B1B4(v13);
  v8 = v7;
  sub_767330();
  sub_767280();
  sub_7672B0();
  sub_BEB8(v14);
  sub_75D650();
  v9 = [v0 traitCollection];
  sub_7673E0();

  return (*(v2 + 8))(v4, v1);
}

double sub_242860(double a1, double a2)
{
  v5 = sub_7672A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1FD068(v14);
  sub_134D8(v14, v12);
  v13[3] = sub_767340();
  v13[4] = &protocol witness table for Margins;
  sub_B1B4(v13);
  sub_767330();
  sub_767280();
  sub_7672B0();
  sub_BEB8(v14);
  v9 = sub_243620(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_242B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v19 - 8);
  v21 = &v44 - v20;
  v22 = sub_760440();
  if (v22)
  {
    v24 = v22;
    v45 = v2;
    v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView];
    v26 = sub_BD88(&unk_948740, &unk_784920);
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_758C70();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v28 = sub_75BD30();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    v29 = sub_BD88(&unk_9457F0, qword_783FD0);
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    v30 = sub_765870();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_4A18A4(v24, v25, v21, a2, 0, 0, v18, v15, v9, v12);
    sub_10A2C(v9, &unk_9457D0, &unk_785630);
    v25[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v25 setNeedsLayout];
    sub_10A2C(v12, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v15, &unk_9457E0, &qword_785640);
    sub_10A2C(v18, &unk_94A780, &unk_788DC0);
    sub_10A2C(v21, &unk_948730, &qword_788DD0);
    v31 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
    v32 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v32)
    {
      v33 = qword_93DBC0;
      v34 = v32;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = sub_7666D0();
      v36 = sub_BE38(v35, qword_99FB38);
      v37 = *(v35 - 8);
      (*(v37 + 16))(v6, v36, v35);
      (*(v37 + 56))(v6, 0, 1, v35);
      sub_75BA40();

      v38 = *&v25[v31];
      if (v38)
      {
        v39 = objc_opt_self();
        v40 = v38;
        v41 = [v39 secondaryLabelColor];
        [v40 setTextColor:v41];

        v42 = *&v25[v31];
        if (v42)
        {
          v43 = [v42 layer];
          [v43 setCompositingFilter:kCAFilterPlusL];
        }
      }
    }

    [v45 setNeedsLayout];
  }

  return result;
}

void sub_2430F0()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_765240();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_760440())
  {
    v6 = sub_764F20();

    if (v6)
    {
      sub_765250();
      v7 = sub_765210();
      (*(v3 + 8))(v5, v2);
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v8 = sub_75CF00();
      sub_BE38(v8, qword_99B898);
      sub_75CDD0();
      sub_765330();
      v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView);
      v10 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v11 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v11 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      [*(v9 + v10) setContentMode:v7];
      v12 = *(v9 + v10);
      sub_759210();
      sub_243BD0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v13 = v12;
      sub_75A050();
    }
  }
}

id sub_2433E0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarouselItemLockupOverlay();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2434A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_F704(a1, a2);
}

void sub_243560()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_243BD0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_75A0C0();
}

double sub_243620(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_7672E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_7672A0();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_B1B4(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_28613C(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == &dword_0 + 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_134D8(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_7672F0();
    v46 = &protocol witness table for Resize;
    sub_B1B4(v44);
    sub_767300();
  }

  else
  {
    sub_766DC0();
    v28 = v27;
    v30 = v29;
    sub_134D8(v47, v43);
    sub_766DC0();
    v32 = v31;
    v34 = v33;
    v45 = sub_7673C0();
    v46 = &protocol witness table for Constrain;
    sub_B1B4(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_7673D0();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_766DE0();
  }

  sub_B170(v44, v45);
  v37 = [a2 traitCollection];
  sub_7673F0();
  v39 = v38;

  sub_BEB8(v44);
  sub_BEB8(v47);
  return v39;
}

void sub_243A2C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_243B08(void *a1)
{
  v2 = [a1 touchesForView:*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton)];
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

uint64_t sub_243BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243C2C()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v0 = [objc_opt_self() whiteColor];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v2.super.isa = v0;
  qword_94B128 = sub_76A0C0(v2, v1).super.isa;
}

id sub_243CEC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_243D30(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = sub_7652D0();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_757AA0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
  v16 = sub_759210();
  *&v3[v15] = sub_759040();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_metrics;
  v18 = sub_757CA0();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  sub_757C80();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (sub_757C40())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_244454(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  sub_7591B0();

  v41 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_plusView];
  [v43 setHidden:(sub_757C70() & 1) == 0];

  v44 = qword_93C520;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_765080();
  v47 = sub_BE38(v46, qword_99B4C0);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_7591C0();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}

void sub_244454(uint64_t a1)
{
  v3 = sub_757AA0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for InAppPurchaseTheme.infer(_:) || v8 == enum case for InAppPurchaseTheme.light(_:) || v8 == enum case for InAppPurchaseTheme.dark(_:))
  {
    if (qword_93C728 != -1)
    {
      swift_once();
    }

    v11 = qword_94B120;
    goto LABEL_16;
  }

  if (v8 == enum case for InAppPurchaseTheme.spotlight(_:))
  {
    if (qword_93C730 != -1)
    {
      swift_once();
    }

    v11 = qword_94B128;
LABEL_16:
    v12 = v11;
    goto LABEL_20;
  }

  if (qword_93C728 != -1)
  {
    swift_once();
  }

  v13 = *(v4 + 8);
  v12 = qword_94B120;
  v13(v7, v3);
LABEL_20:
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_iconType] != 2)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_backgroundView] setBackgroundColor:v12];
  }

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_plusView];
  if (qword_93C738 != -1)
  {
    swift_once();
  }

  v15 = qword_94B130;
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_plusColor];
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_plusColor] = qword_94B130;
  v17 = v15;

  [v14 setNeedsDisplay];
  [v1 setNeedsDisplay];
}

uint64_t sub_244740()
{
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v2 = sub_7593D0();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7652D0();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v47 = &v44 - v9;
  v10 = sub_7664F0();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_757CA0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v15;
  v16 = sub_757CC0();
  v58 = *(v16 - 8);
  v59 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78.receiver = v0;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "layoutSubviews", v17);
  (*(v13 + 16))(v15, &v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_metrics], v12);
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView];
  v21 = sub_759210();
  v76 = v21;
  v77 = &protocol witness table for UIView;
  v75 = v20;
  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkContainingView];
  v73 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v74 = &protocol witness table for UIView;
  v71 = &protocol witness table for UIView;
  v72 = v22;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_backgroundView];
  v70 = v73;
  v69 = v23;
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_plusView];
  v67 = type metadata accessor for PlusView();
  v68 = &protocol witness table for UIView;
  v65 = &protocol witness table for UIView;
  v66 = v24;
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView];
  v64 = v21;
  v63 = v25;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  sub_757CB0();
  sub_75D650();
  v31 = v54;
  v53 = v0;
  v57 = v19;
  sub_757BF0();
  (v55)[1](v31, v56);
  if (([v30 isHidden] & 1) == 0)
  {
    sub_759160();
    v32 = v45;
    sub_7591A0();
    v55 = v27;
    v56 = v29;
    v34 = v48;
    v33 = v49;
    v35 = v46;
    (*(v48 + 104))(v46, enum case for Artwork.Style.roundedRect(_:), v49);
    v36 = v28;
    v37 = v47;
    sub_765290();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);
    sub_7652A0();
    v38(v37, v33);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for CornerStyle.arc(_:), v52);
    sub_759200();
    v42 = v40;
    v29 = v56;
    (*(v39 + 8))(v42, v41);
    sub_244D14(v30, v36);
    sub_244D14(v30, v55);
  }

  [v29 setNeedsDisplay];
  return (*(v58 + 8))(v57, v59);
}

void sub_244D14(void *a1, id a2)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRect:{v6, v8, v10, v12}];
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a2 frame];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectIntersection(v53, v57);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  sub_757C90();
  v32 = -v31;
  sub_757C90();
  v34 = -v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v32, v34);
  [v2 convertRect:a2 toCoordinateSpace:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_75CD30();
  v44 = v43;
  sub_75CD30();
  v46 = [v13 bezierPathWithRoundedRect:2 byRoundingCorners:v36 cornerRadii:{v38, v40, v42, v44, v45}];
  v47 = [v46 bezierPathByReversingPath];

  [v14 appendPath:v47];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [v14 CGPath];
  [v48 setPath:v49];

  v50 = [a2 layer];
  [v50 setMasksToBounds:1];

  v51 = [a2 layer];
  [v51 setMask:v48];
}

void sub_24506C(char *a1)
{
  v2 = v1;
  v4 = sub_757AA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_759180();
  sub_759190();
  sub_759180();
  sub_759190();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_244454(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

uint64_t type metadata accessor for InAppPurchaseView(uint64_t a1)
{
  result = qword_94B190;
  if (!qword_94B190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245408(uint64_t a1)
{
  result = sub_757AA0();
  if (v2 <= 0x3F)
  {
    result = sub_757CA0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_245500(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_topLayer;
  *&v4[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_bottomLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_blurView;
  *&v4[v14] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_shadowView] = 0;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_topLayer;
  v17 = *&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_topLayer];
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v17;
  v21 = [v18 whiteColor];
  v22 = [v21 colorWithAlphaComponent:0.5];

  v23 = [v22 CGColor];
  [v20 setBackgroundColor:v23];

  v46 = v16;
  v47 = v15;
  [*&v15[v16] setCompositingFilter:kCAFilterScreenBlendMode];
  v24 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_bottomLayer;
  v25 = *&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_bottomLayer];
  v26 = [v18 whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.8];

  v28 = [v27 CGColor];
  [v25 setBackgroundColor:v28];

  [*&v19[v24] setCompositingFilter:kCAFilterOverlayBlendMode];
  v29 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_blurView;
  v30 = *&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_blurView];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_77B6C0;
  v32 = objc_opt_self();
  v33 = v30;
  result = [v32 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v31 + 32) = result;
    *(v31 + 40) = [objc_opt_self() colorEffectSaturate:1.4];
    sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
    isa = sub_769450().super.isa;

    [v33 setBackgroundEffects:isa];

    v36 = v19;
    v37 = [v36 layer];
    [v37 addSublayer:*&v19[v24]];

    v38 = [v36 layer];
    [v38 addSublayer:*&v47[v46]];

    [v36 addSubview:*&v19[v29]];
    v39 = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_93C5C8 != -1)
    {
      swift_once();
    }

    v40 = sub_765080();
    v41 = sub_BE38(v40, qword_99B6B8);
    v42 = *(v40 - 8);
    v43 = v48;
    (*(v42 + 16))(v48, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    sub_758E60();
    [v36 insertSubview:v39 belowSubview:*&v19[v29]];
    v44 = *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_shadowView];
    *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_shadowView] = v39;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_245A8C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_topLayer];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_bottomLayer];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_blurView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }
}

unint64_t sub_245C8C()
{
  result = qword_94B1E8;
  if (!qword_94B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B1E8);
  }

  return result;
}

void sub_245CE0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_smallCornerRadius) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkContainingView;
  *(v1 + v2) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
  sub_759210();
  *(v1 + v3) = sub_759040();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = sub_757AA0();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  sub_76A840();
  __break(1u);
}

void sub_245DF8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_topLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_bottomLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_blurView;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_022B64CE79A71C516FE97B929617E74E26InAppBlendedBackgroundView_shadowView) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_245EC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel;
  if (qword_93D980 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v10, qword_99F478);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_4ECF40(v13, 0, 0, 0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel;
  if (qword_93D988 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v10, qword_99F490);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_4ECF40(v13, 0, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel];
  sub_396E8();
  v29 = v28;
  v30 = sub_769FF0();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel];
  v33 = sub_769FF0();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_246210()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_2463A0(v14, v13, v17);
  sub_BEB8(v13);
  sub_BEB8(v14);
  sub_B170(v17, v17[3]);
  sub_75D650();
  sub_7672C0();
  (*(v4 + 8))(v7, v3);
  return sub_BEB8(v17);
}

double sub_2463A0@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a2;
  v94 = a3;
  v90 = sub_75E800();
  v5 = *(v90 - 8);
  __chkstk_darwin(v90);
  v103 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_7664A0();
  v114 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75E820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75E840();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9417D8, &unk_780EB0);
  v16 = *(sub_75E850() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v92 = *(v16 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77DC20;
  v93 = v18;
  v107 = v18 + v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = sub_B170(a1, v20);
  v123 = v20;
  v22 = *(v19 + 8);
  v23 = v13;
  v24 = v15;
  v124 = v22;
  v25 = sub_B1B4(&v122);
  (*(*(v20 - 8) + 16))(v25, v21, v20);
  v26 = *(v23 + 104);
  v110 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v112 = v12;
  v109 = v23 + 104;
  v108 = v26;
  v26(v15);
  v113 = v9;
  v27 = v9 + 104;
  v28 = *(v9 + 104);
  v29 = v11;
  v106 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v89 = v8;
  v105 = v27;
  v104 = v28;
  v28(v11);
  if (qword_93D980 != -1)
  {
    swift_once();
  }

  v30 = sub_7666D0();
  v31 = sub_BE38(v30, qword_99F478);
  v32 = *(v30 - 8);
  v33 = v102;
  v87 = *(v32 + 16);
  v86 = v32 + 16;
  v87(v102, v31, v30);
  v34 = v114;
  v35 = *(v114 + 104);
  v85 = enum case for FontSource.useCase(_:);
  v36 = v111;
  v84 = v114 + 104;
  v83 = v35;
  v35(v33);
  v82 = sub_766CA0();
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(&v119);
  *(&v117 + 1) = v36;
  v118 = &protocol witness table for FontSource;
  v37 = sub_B1B4(&v116);
  v38 = *(v34 + 16);
  v81 = v34 + 16;
  v80 = v38;
  v38(v37, v33, v36);
  sub_766CB0();
  v39 = *(v34 + 8);
  v114 = v34 + 8;
  v79 = v39;
  v39(v33, v36);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v40 = sub_BD88(&qword_9417E0, &unk_786F20);
  v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v42 = v41 + *(v5 + 72);
  v76 = *(v5 + 80);
  v77 = v40;
  v75 = v42;
  v43 = swift_allocObject();
  v74 = xmmword_77B6D0;
  *(v43 + 16) = xmmword_77B6D0;
  v78 = v41;
  sub_75E7E0();
  v115 = v43;
  v44 = sub_2472C4(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v45 = sub_BD88(&qword_9417F0, &unk_780EC0);
  v46 = sub_7DCC8();
  v47 = v103;
  v99 = v45;
  v97 = v46;
  v48 = v90;
  v101 = v44;
  sub_76A5A0();
  sub_75E830();
  v49 = *(v5 + 8);
  v95 = v5 + 8;
  v100 = v49;
  v49(v47, v48);
  sub_34630(&v116);
  v50 = v113 + 8;
  v51 = v89;
  v98 = *(v113 + 8);
  v98(v29, v89);
  v52 = *(v23 + 8);
  v53 = v23 + 8;
  v54 = v112;
  v96 = v52;
  v88 = v53;
  v52(v24, v112);
  sub_BEB8(&v119);
  sub_BEB8(&v122);
  v55 = v48;
  v56 = v24;
  v57 = v91[3];
  v58 = v91[4];
  v59 = sub_B170(v91, v57);
  v123 = v57;
  v124 = *(v58 + 8);
  v60 = sub_B1B4(&v122);
  (*(*(v57 - 8) + 16))(v60, v59, v57);
  v108(v56, v110, v54);
  v104(v29, v106, v51);
  v61 = v29;
  if (qword_93D988 != -1)
  {
    swift_once();
  }

  v62 = sub_BE38(v30, qword_99F490);
  v63 = v102;
  v87(v102, v62, v30);
  v64 = v111;
  v83(v63, v85, v111);
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_B1B4(&v119);
  *(&v117 + 1) = v64;
  v118 = &protocol witness table for FontSource;
  v65 = sub_B1B4(&v116);
  v80(v65, v63, v64);
  sub_766CB0();
  v79(v63, v64);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v66 = swift_allocObject();
  *(v66 + 16) = v74;
  sub_75E7E0();
  v115 = v66;
  v67 = v103;
  sub_76A5A0();
  sub_75E830();
  v100(v67, v55);
  sub_34630(&v116);
  v98(v61, v51);
  v68 = v112;
  v113 = v50;
  v96(v56, v112);
  sub_BEB8(&v119);
  sub_BEB8(&v122);
  v69 = sub_7670D0();
  swift_allocObject();
  v70 = sub_7670B0();
  v123 = v69;
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v122 = v70;
  v104(v61, v106, v51);
  v120 = &type metadata for CGFloat;
  v121 = &protocol witness table for CGFloat;
  v118 = 0;
  v119 = 0x4032000000000000;
  v116 = 0u;
  v117 = 0u;
  v115 = _swiftEmptyArrayStorage;
  sub_76A5A0();
  v108(v56, v110, v68);
  sub_75E830();
  v96(v56, v68);
  v100(v67, v55);
  sub_34630(&v116);
  v98(v61, v51);
  sub_BEB8(&v119);
  sub_BEB8(&v122);
  v71 = sub_75E870();
  v72 = v94;
  v94[3] = v71;
  v72[4] = sub_2472C4(&qword_9464F0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v72[5] = sub_2472C4(&qword_94B228, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  sub_B1B4(v72);
  sub_75E810();
  return result;
}

double sub_2470BC(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel);
  v13 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v14 = &protocol witness table for UILabel;
  v11[4] = &protocol witness table for UILabel;
  v12[0] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel);
  v11[3] = v13;
  v11[0] = v5;
  v6 = v4;
  v7 = v5;
  sub_2463A0(v12, v11, v15);
  sub_BEB8(v11);
  sub_BEB8(v12);
  sub_B170(v15, v15[3]);
  sub_7665A0();
  v9 = v8;
  sub_BEB8(v15);
  return v9;
}

uint64_t sub_2472C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24730C()
{
  v1 = sub_7666D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_primaryLabel;
  if (qword_93D980 != -1)
  {
    swift_once();
  }

  v6 = sub_BE38(v1, qword_99F478);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_4ECF40(v4, 0, 0, 0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24SearchResultsMessageView_secondaryLabel;
  if (qword_93D988 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v1, qword_99F490);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_4ECF40(v4, 0, 0, 0);
  sub_76A840();
  __break(1u);
}

uint64_t sub_247518()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760500();
  sub_161DC(v4, qword_99BB18);
  sub_BE38(v4, qword_99BB18);
  if (qword_93D7F0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99EFC8);
  (*(v1 + 16))(v3, v5, v0);
  sub_7604F0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_247698(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_760500();
  sub_161DC(v9, a2);
  sub_BE38(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  sub_7604F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2477D4()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760500();
  sub_161DC(v4, qword_99BB60);
  sub_BE38(v4, qword_99BB60);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x80000000007D6660;
  *(v3 + 2) = sub_247934;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  sub_7604F0();
  return (*(v1 + 8))(v3, v0);
}

void sub_247938(uint64_t a1)
{
  v1 = UIContentSizeCategoryExtraSmall;
  v2 = UIContentSizeCategoryLarge;
  if ((sub_769B60() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_769B60())
  {
    v3 = sub_769B40();

    if (v3)
    {
      return;
    }
  }

  else
  {
  }

  v4 = v2;
  v5 = UIContentSizeCategoryAccessibilityMedium;
  if ((sub_769B60() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_769B60())
  {
    sub_769B40();
  }
}

id sub_247A48(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
  v11 = sub_7656C0();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView(0);
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_247BF0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_99A2C0) = v1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded];
    sub_6A048();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*(&stru_68.reloff + (swift_isaMask & *v4)))(v1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_247CC8(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_DE0EC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_5FC64(v1 + v6, v5);
    (*(&stru_B8.reserved2 + (swift_isaMask & *v8)))(v5);
  }

  return sub_5FCD4(a1);
}

void sub_247DF0(void *a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_5FC64(v1 + v12, v5);
      v13 = *(&stru_108.reserved2 + (swift_isaMask & *v16));
      v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_5FCD4(v5);
    }
  }
}

double sub_247FD4(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for RevealingVideoView(0);
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "willMoveToWindow:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
    v10 = Strong;
    swift_beginAccess();
    sub_5FC64(v10 + v9, v5);
    v11 = v10;
    sub_248B88(v10, v5);

    sub_5FCD4(v5);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_2481B8()
{
  v1 = sub_763B00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] || (v16 = &v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize], (v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v47 = v2;
  v48 = Strong;
  v18 = *v16;
  v17 = v16[1];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_5FC64(&v0[v19], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_5FCD4(v10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v20 = v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory];
  if (v20 == 7)
  {
    v21 = *(v12 + 8);

    v21(v14, v11);
LABEL_13:

    return;
  }

  [v0 bounds];
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = 0.0;
  v51.size.height = 0.0;
  if (CGRectEqualToRect(v50, v51))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_13;
  }

  v46 = v0;
  v22.n128_f64[0] = sub_2A6324(v20);
  v23 = v47;
  v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v20 != 6)
  {
    v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v20 != 4)
  {
    v24 = v25;
  }

  (*(v47 + 104))(v4, *v24, v1, v22);
  (*(v23 + 32))(v7, v4, v1);
  v26 = sub_769470();

  (*(v23 + 8))(v7, v1);
  v27 = v46;
  v28 = v46[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded];
  v29 = v48;
  [v27 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v27 traitCollection];
  v39 = sub_317C38(v38, v31, v33, v35, v37, v18, v17, v26, v28);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v29 setFrame:{v39, v41, v43, v45}];

  (*(v12 + 8))(v14, v11);
}

void sub_248690()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_99A1B8];
    v10 = *&v14[qword_99A1B8];
    v11 = *&v14[qword_99A1B8 + 8];
    v12 = v14[qword_99A1B8 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_539CC();
    }
  }
}

void sub_2487B4(void *a1)
{
  v2 = v1;
  v4 = sub_75DC30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_249528(&qword_947B40, type metadata accessor for TodayCardVideoView, &unk_77FEB0);
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_2630C();
      v13 = v2;
      v14 = sub_76A1C0();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v10 removeFromSuperview];
    [v2 addSubview:v10];
LABEL_13:
    v10[qword_99A2C0] = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded);
    sub_6A048();
    v19 = qword_99A200;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v10[v19], v4);
    v20 = v10;
    sub_75DBD0();
    sub_52AF0(v7);

    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_249528(&qword_947B40, type metadata accessor for TodayCardVideoView, &unk_77FEB0);
    v15 = [a1 superview];
    if (v15)
    {
      v16 = v15;
      sub_2630C();
      v17 = v1;
      v18 = sub_76A1C0();

      if (v18)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_248A9C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_248AF0;
}

void sub_248AF0(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_2487B4(Strong);

    Strong = v4;
  }

  else
  {
    sub_2487B4(Strong);
  }
}

void sub_248B88(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v45 = a2;
          v46 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory;
          v47 = v11;
          v12 = *v10;
          v44 = *(v10 + 1);
          v50 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v51 = v14;
          v48 = Strong;
          swift_unknownObjectWeakAssign();
          v49 = a1;

          sub_2487B4(v15);

          v16 = &v3[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
          v17 = v12;
          *v16 = v12;
          v18 = v44;
          *(v16 + 1) = v44;
          v16[16] = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            (*(&stru_B8.offset + (swift_isaMask & *v19)))(v17, v18, 0);
          }

          *&v3[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *&stru_B8.segname[(swift_isaMask & *v21) + 8];
            swift_bridgeObjectRetain_n();
            v23(v9);
          }

          else
          {
          }

          v24 = v45;
          sub_5FC64(v45, v8);
          sub_247CC8(v8);
          v25 = v47;
          v3[v46] = v47;
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            (*&stru_108.segname[swift_isaMask & *v26])(v25);
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v30 = swift_unknownObjectWeakLoadStrong();
            (*(&stru_108.reserved2 + (swift_isaMask & *v29)))(v30, *v16, *(v16 + 1), v16[16], v9, v24, v25);
          }

          [v3 setNeedsLayout];

          v31 = swift_unknownObjectWeakLoadStrong();
          if (v31)
          {
            v32 = v31;
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = [v33 isHidden];
            }

            else
            {
              v35 = 0;
            }

            [v32 setHidden:v35];
          }

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = swift_unknownObjectWeakLoadStrong();
            v39 = v38;
            if (v38)
            {
              v37[qword_99A2B8] = *(v38 + qword_99A2B8);
              sub_69D6C();
              v40 = qword_99A2C0;
              v41 = v39[qword_99A2C0];
            }

            else
            {
              v37[qword_99A2B8] = 7;
              sub_69D6C();
              v41 = 0;
              v40 = qword_99A2C0;
            }

            v37[v40] = v41;
            sub_6A048();
          }

          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v43 = v49;
          sub_2487B4(v42);
        }
      }
    }
  }
}

id sub_248FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView(uint64_t a1)
{
  result = qword_94B278;
  if (!qword_94B278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2490DC(uint64_t a1)
{
  sub_2491AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2491AC(uint64_t a1)
{
  if (!qword_942ED0[0])
  {
    sub_7656C0();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, qword_942ED0);
    }
  }
}

void sub_249214(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);
}

uint64_t (*sub_249284(uint64_t **a1))()
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
  v2[4] = sub_248A9C(v2);
  return sub_246E0;
}

uint64_t sub_2492F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_249348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_2493B4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_21028;
}

uint64_t sub_249528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_249570()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_pageGrid;
  v3 = sub_7656C0();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699B0();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_24988C(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_7699B0();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void sub_24988C(__n128 a1, double a2)
{
  v2 = a1.n128_f64[0];
  if (a2 >= a1.n128_f64[0])
  {
    if (a1.n128_f64[0] != 744.0)
    {
      JUScreenClassGetPortraitWidth();
      if (v4 < v2)
      {
        JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1.n128_f64[0] != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < v2)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_7699B0();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

unint64_t sub_249AB0()
{
  result = qword_941478;
  if (!qword_941478)
  {
    type metadata accessor for PosterLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941478);
  }

  return result;
}

double sub_249B08()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75DAB0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75D870();
  sub_75DA20();
  sub_765640();
  (*(v1 + 8))(v3, v0);
  sub_766660();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v13;
}

double sub_249D40()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D870();
  sub_75DA20();
  sub_765640();
  (*(v1 + 8))(v3, v0);
  sub_766660();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  return v9;
}

void (*sub_249EDC(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_249F40;
}

void sub_249F40(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_24B970(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_2630C();
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_55A7A8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_24B970(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_2630C();
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_55A7A8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_24A1E4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_24A49C(uint64_t a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v3 = [v1 contentView];
  sub_2630C();
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView];
  sub_12EE70();
  sub_769D20();
  [v12 setFrame:?];
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  CGRectGetMinX(v35);
  [v12 frame];
  CGRectGetMaxY(v36);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v13 = sub_766CA0();
  sub_BE38(v13, qword_99FDE8);
  v14 = [v2 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77D9F0;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = sub_7671E0();
  sub_7666E0();

  v19 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
  v18 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8];
  v20 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v23 = sub_769240();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [*&v12[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_769240();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [v2 traitCollection];
  sub_24AE8C(v19, v18, v23, v25, v28, v30, v31, v9, v11);

  v32 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots];
  [v2 bounds];
  sub_769D20();
  return [v32 setFrame:?];
}

id sub_24A8EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_24A9C0(void *a1)
{
  sub_24AD28(a1);
}

uint64_t (*sub_24A9F8(uint64_t **a1))()
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
  v2[4] = sub_249EDC(v2);
  return sub_21028;
}

uint64_t sub_24AA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_24AABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_24AB28(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_24ABC4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_2630C();
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

id sub_24AD28(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24B970(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_2630C();
    v7 = v2;
    v8 = sub_76A1C0();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_55A7A8();

  return [v2 setNeedsLayout];
}

double sub_24AE8C(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v81 = a5;
  v82 = a6;
  v76 = a3;
  v77 = a4;
  v70 = a1;
  v11 = sub_760840();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v86 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_762D10();
  v79 = *(v13 - 8);
  v80 = v13;
  __chkstk_darwin(v13);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75D850();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = sub_760820();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v84 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v22, qword_99B150);
  v29 = *(v23 + 16);
  v93 = v22;
  v73 = v29;
  v74 = v23 + 16;
  v29(v27, v28, v22);
  v30 = sub_769A00();
  v85 = v23;
  if (v30)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v31 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v31 = qword_946938;
  }

  v32 = sub_BE38(v15, v31);
  v33 = v16;
  (*(v16 + 16))(v18, v32, v15);
  (*(v16 + 32))(v21, v18, v15);
  v34 = [a7 preferredContentSizeCategory];
  sub_769B20();
  v83 = v15;

  sub_75D800();
  sub_75D830();
  v92 = v27;
  sub_760810();
  sub_760800();
  v35 = sub_7670D0();
  v75 = a7;
  v36 = v35;
  swift_allocObject();
  v91 = sub_7670B0();
  v37 = objc_opt_self();

  v67 = v37;
  v38 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v39 = sub_7653B0();
  v78 = v21;
  v40 = v39;
  v130[3] = v39;
  *&v90 = sub_24B970(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v130[4] = v90;
  v41 = sub_B1B4(v130);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v42 = *(v40 - 8);
  v43 = *(v42 + 104);
  v72 = v33;
  v89 = v42 + 104;
  v43(v41);
  v68 = v43;
  sub_765C30();
  sub_BEB8(v130);
  v44 = v71;
  sub_762D00();
  sub_762CE0();
  v45 = v80;
  v79 = *(v79 + 8);
  (v79)(v44, v80);
  v70 = UIFontTextStyleFootnote;

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v129[3] = v40;
  v129[4] = v90;
  v47 = sub_B1B4(v129);
  v48 = v69;
  (v43)(v47, v69, v40);
  sub_765C30();
  sub_BEB8(v129);
  sub_762D00();
  sub_762CE0();
  v49 = v79;
  (v79)(v44, v45);

  v50 = [v67 preferredFontForTextStyle:v70];
  v128[3] = v40;
  v128[4] = v90;
  v51 = sub_B1B4(v128);
  v68(v51, v48, v40);
  sub_765C30();
  sub_BEB8(v128);
  sub_762D00();
  sub_762CE0();
  v49(v44, v45);
  sub_246DC();
  swift_allocObject();
  v52 = sub_7670B0();

  sub_246DC();
  swift_allocObject();
  v53 = sub_7670B0();
  v73(v84, v92, v93);
  v127 = &protocol witness table for LayoutViewPlaceholder;
  v126 = v36;
  v125 = v91;
  v124 = 0;
  *&v122[40] = 0u;
  v123 = 0u;
  sub_134D8(v130, v122);
  sub_134D8(v129, &v121);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;

  v54 = sub_7670C0();
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v113 = v36;
  v112 = v54;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0;
  v101 = 0u;
  *&v100[40] = 0u;
  sub_134D8(v128, v100);
  v98 = v36;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  v96 = &protocol witness table for LayoutViewPlaceholder;
  v97 = v52;
  v95 = v36;
  v94 = v53;
  v55 = v86;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v56 = swift_allocObject();
  v90 = xmmword_77D9F0;
  *(v56 + 16) = xmmword_77D9F0;
  v57 = v75;
  *(v56 + 32) = v75;
  v58 = v57;
  v59 = sub_7671E0();
  sub_24B970(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v60 = v88;
  sub_7665A0();

  (*(v87 + 8))(v55, v60);
  sub_BEB8(v128);
  sub_BEB8(v129);
  sub_BEB8(v130);
  (*(v72 + 8))(v78, v83);
  (*(v85 + 8))(v92, v93);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v61 = sub_766CA0();
  sub_BE38(v61, qword_99FDE8);
  v62 = swift_allocObject();
  *(v62 + 16) = v90;
  *(v62 + 32) = v58;
  v63 = v58;
  v64 = sub_7671E0();
  sub_7666E0();

  return a8;
}

uint64_t sub_24B970(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_24B9B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_badgeView] = [objc_allocWithZone(type metadata accessor for BadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_verticalSeparatorView] = v12;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_topSeparatorView] = v13;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_bottomSeparatorView] = v14;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_verticalSeparatorView;
  v17 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_verticalSeparatorView];
  sub_396E8();
  v18 = v15;
  v19 = v17;
  v20 = sub_769FB0();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_topSeparatorView;
  v22 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_topSeparatorView];
  v23 = sub_769FB0();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_bottomSeparatorView;
  v25 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_bottomSeparatorView];
  v26 = sub_769FB0();
  [v25 setBackgroundColor:v26];

  v27 = [v18 contentView];
  [v27 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_badgeView]];

  v28 = [v18 contentView];
  [v28 addSubview:*&v15[v16]];

  v29 = [v18 contentView];
  [v29 addSubview:*&v18[v21]];

  v30 = [v18 contentView];
  [v30 addSubview:*&v18[v24]];

  return v18;
}

id sub_24BD88()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_badgeView];
  v3 = [v1 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = [v1 contentView];
  [v12 frame];

  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v13 = sub_75F070();
  sub_BE38(v13, qword_99DED8);
  v14 = [v1 traitCollection];
  sub_75EFB0();
  v16 = v15;

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = 1.0 / v19;
  v21 = [v1 traitCollection];
  LOBYTE(v14) = sub_7699F0();

  v22 = 0.0;
  if ((v14 & 1) == 0)
  {
    v23 = [v1 contentView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v22 = CGRectGetMaxX(v53) - v20;
  }

  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_verticalSeparatorView];
  v33 = [v1 contentView];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v54.size.height = v41;
  [v32 setFrame:{v22, floor((CGRectGetHeight(v54) - (v16 + -54.0)) * 0.5), v20, v16 + -54.0}];
  v42 = [v1 traitCollection];
  [v42 displayScale];
  v44 = v43;

  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_topSeparatorView];
  v46 = 1.0 / v44;
  [v1 bounds];
  MinX = CGRectGetMinX(v55);
  [v1 bounds];
  [v45 setFrame:{MinX, 0.0, CGRectGetWidth(v56), v46}];
  v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_bottomSeparatorView];
  [v1 bounds];
  v49 = CGRectGetMinX(v57);
  [v1 bounds];
  v50 = CGRectGetMaxY(v58) - v46;
  [v1 bounds];
  return [v48 setFrame:{v49, v50, CGRectGetWidth(v59), v46}];
}

uint64_t type metadata accessor for BadgeCollectionViewCell(uint64_t a1)
{
  result = qword_94B328;
  if (!qword_94B328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24C2A0(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for CappedSizeDynamicTypeLabel(uint64_t a1)
{
  result = qword_94B340;
  if (!qword_94B340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24C3DC(void *a1)
{
  v3 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_94B338];
  *&v1[qword_94B338] = a1;
  v22 = v11;
  if (!a1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = a1;
    goto LABEL_14;
  }

  v12 = sub_769240();
  v14 = v13;
  if (v12 != sub_769240() || v14 != v15)
  {
    v17 = sub_76A950();
    v18 = a1;

    if (v17)
    {

      v19 = v22;

      return result;
    }

LABEL_14:
    sub_75BA30();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_11A38(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_75BA20();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v10, v6);
    }

    return result;
  }

  return result;
}

id sub_24C690()
{
  v1 = *(v0 + qword_94B338);
  if (v1)
  {
    sub_75BB20();
    v2 = sub_75BB30();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_769B30();
    if (v4)
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_77B6C0;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_86ACC();
      isa = sub_769450().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_75BB20();
  v11 = sub_75BB30();

  return v11();
}

id sub_24C878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_24CB00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_24CB6C(uint64_t a1)
{
  v3 = sub_763400();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_75B660();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_77B6C0;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v21;
    v22 = v16;

    sub_4AC204();

    v23 = sub_75EDA0();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView);
    sub_7633F0();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    sub_7633F0();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v25;

    sub_4AC204();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = sub_75EDA0();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_77B6C0;
    sub_396E8();
    *(v46 + 32) = sub_76A000();
    *(v46 + 40) = sub_76A000();
    *&v43[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v46;

    sub_4AC204();
    return (*(v11 + 8))(v14, v10);
  }
}

void sub_24D1C4(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_396E8();
  a1 = a1;
  v4 = v7;
  v5 = sub_76A1C0();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_24D50C();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

double sub_24D2A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_backgroundGradientColors) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_11724C(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_24D614();
  }

  return result;
}

void sub_24D33C(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_24D1C4(v7);

    sub_24D2A4(v9);
  }
}

void sub_24D4B4(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_24D50C();
  sub_24D614();
}

void sub_24D50C()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

double *sub_24D614()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_backgroundGradientColors];
  v2 = &OBJC_METACLASS____TtC18ASMessagesProvider23SearchAdsAdvertPipeline;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = sub_76A860();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_143958(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = sub_76A770();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = *(v27 + 2);
        v32 = *(v27 + 3);
        if (v33 >= v32 >> 1)
        {
          sub_143958((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        *(v27 + 2) = v33 + 1;
        sub_13310(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      v2 = &OBJC_METACLASS____TtC18ASMessagesProvider23SearchAdsAdvertPipeline;
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = sub_769450().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *&v0[v2[24].vtable];
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_24D9D8(void *a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24DA8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_24DB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for Shelf.ContentType.action(_:))
  {
    if (v12 == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v18 = ASKDeviceTypeGetCurrent();
      v19 = sub_769240();
      v21 = v20;
      if (v19 == sub_769240() && v21 == v22)
      {
      }

      else
      {
        v28 = sub_76A950();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = type metadata accessor for SearchUnifiedMessageCollectionViewCell(0);
      v25 = type metadata accessor for SearchUnifiedMessageCollectionViewCell;
      sub_24E05C(&qword_94B4C0, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_795E28);
      sub_24E05C(&qword_94B4C8, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_78C698);
      v26 = &unk_94B4D0;
      v27 = &unk_78C650;
      goto LABEL_13;
    }

LABEL_17:
    v24 = sub_76798(a1, a2);
    goto LABEL_18;
  }

  v13 = ASKDeviceTypeGetCurrent();
  v14 = sub_769240();
  v16 = v15;
  if (v14 != sub_769240() || v16 != v17)
  {
    v23 = sub_76A950();

    if (v23)
    {
      goto LABEL_10;
    }

    v13 = ASKDeviceTypeGetCurrent();
    v29 = sub_769240();
    v31 = v30;
    if (v29 != sub_769240() || v31 != v32)
    {
      v33 = sub_76A950();

      if (v33)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

LABEL_10:
  v24 = type metadata accessor for SearchActionCollectionViewCell(0);
  v25 = type metadata accessor for SearchActionCollectionViewCell;
  sub_24E05C(&qword_94B4D8, type metadata accessor for SearchActionCollectionViewCell, &unk_795C60);
  sub_24E05C(&qword_94B4E0, type metadata accessor for SearchActionCollectionViewCell, &unk_7AD300);
  v26 = &unk_94B4E8;
  v27 = &unk_795C90;
LABEL_13:
  sub_24E05C(v26, v25, v27);
LABEL_18:
  (*(v5 + 8))(v7, v4);
  return v24;
}

uint64_t sub_24E05C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24E0F0()
{
  v0 = sub_BD88(&qword_94B4F0, &qword_78DEB8);
  v54 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = sub_7656C0();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763C40();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_763C60();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_766D70();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_767030();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  sub_759D00();
  sub_24E874(&qword_9513B0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_75C750();
  v16 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v0;
  sub_26F08();
  if (qword_93D9F8 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  sub_BE38(v17, qword_99F5E0);
  swift_getKeyPath();
  sub_75C7B0();

  v18 = v56[0];
  v19 = sub_769E10();

  v37[1] = v16;
  sub_759CE0();
  v40 = v19;
  v20 = sub_758EC0();

  sub_767020();
  sub_766FF0();
  v21 = v44;
  v38 = *(v10 + 8);
  v38(v12, v44);
  v22 = *(v10 + 16);
  v39 = v15;
  v22(v12, v15, v21);
  v37[0] = v20;
  sub_766D50();
  v23 = v55;
  sub_766DB0();
  if (qword_93CEE0 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v5, qword_99D7C8);
  (*(v43 + 16))(v45, v24, v5);
  v25 = v51;
  v56[3] = v51;
  v56[4] = &protocol witness table for LabelPlaceholder;
  v26 = sub_B1B4(v56);
  v27 = v49;
  (*(v49 + 16))(v26, v23, v25);
  v28 = v50;
  sub_763C50();
  swift_getKeyPath();
  v29 = v46;
  sub_75C7B0();

  sub_765630();
  (*(v47 + 8))(v29, v48);
  swift_getKeyPath();
  sub_75C7B0();

  v30 = v56[0];
  sub_24E874(&qword_94B4F8, &type metadata accessor for LinkableTextCollectionViewCellLayout, &protocol conformance descriptor for LinkableTextCollectionViewCellLayout);
  v31 = v41;
  v32 = v53;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_7673F0();
  v35 = v34;

  (*(v54 + 8))(v31, v33);
  (*(v52 + 8))(v28, v32);
  (*(v27 + 8))(v55, v25);
  v38(v39, v21);
  return v35;
}

uint64_t sub_24E874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24E908()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7596B0();
  sub_24EB2C(&unk_94B500, &type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  sub_75C750();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = sub_7596A0();
  v4 = sub_759690();
  v5 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v8 = v7;
  v6(v3, v0);
  sub_3325FC(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_24EB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB78()
{
  v0 = sub_759B00();
  sub_161DC(v0, qword_99BBB0);
  v1 = sub_BE38(v0, qword_99BBB0);
  return sub_24EBC4(v1);
}

uint64_t sub_24EBC4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v42 = sub_7664A0();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v37 - v3;
  v4 = sub_BD88(&unk_94B5A0, &qword_78E0B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_BD88(&qword_944E50, qword_78AFE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v58 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v55 = _Q0;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for CGSize(0);
  sub_7592E0();
  v58 = xmmword_78DFA0;
  v55 = xmmword_78DFB0;
  sub_7592E0();
  v22 = *(v8 + 16);
  v43 = v10;
  v39 = v16;
  v22(v10, v16, v7);
  v41 = v13;
  v22(v6, v13, v7);
  v45 = v8;
  v46 = v6;
  v23 = *(v8 + 56);
  v47 = v7;
  v23(v6, 0, 1, v7);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v58.i64[0] = 0x4034000000000000;
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v54[14] = &protocol witness table for Double;
  *&v55 = 0x4048000000000000;
  v54[13] = &type metadata for Double;
  v54[10] = 0x4028000000000000;
  if (qword_93D4B8 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v38 = sub_BE38(v24, qword_99E638);
  v25 = *(*(v24 - 8) + 16);
  v26 = v49;
  v25(v49, v38, v24);
  v27 = enum case for FontSource.useCase(_:);
  v28 = v40;
  v29 = v26;
  v30 = *(v40 + 104);
  v31 = v42;
  v30(v29, enum case for FontSource.useCase(_:), v42);
  v54[8] = &type metadata for Double;
  v54[9] = &protocol witness table for Double;
  v54[5] = 0x4022000000000000;
  v32 = v44;
  v25(v44, v38, v24);
  v30(v32, v27, v31);
  v54[3] = sub_766CA0();
  v54[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v54);
  v52 = v31;
  v53 = &protocol witness table for FontSource;
  v33 = sub_B1B4(v51);
  (*(v28 + 16))(v33, v32, v31);
  sub_766CB0();
  (*(v28 + 8))(v32, v31);
  v53 = &protocol witness table for Double;
  v52 = &type metadata for Double;
  v51[0] = 0x4020000000000000;
  v50[3] = sub_766970();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v50);
  sub_766960();
  sub_759AB0();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v41, v47);
  return (v34)(v39, v35);
}

uint64_t sub_24F114()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_94B510);
  sub_BE38(v0, qword_94B510);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_24F1B0(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_24F274()
{
  v1 = v0;
  v2 = sub_BD88(&qword_944E50, qword_78AFE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  }

  else
  {
    swift_beginAccess();
    sub_759AC0();
    swift_endAccess();
    v9 = [v0 traitCollection];
    sub_7592A0();

    (*(v3 + 8))(v5, v2);
    v10 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v17[1], v17[2]}];
    v11 = [objc_opt_self() clearColor];
    sub_759070();
    [v10 setHidden:1];
    v12 = *&v1[v6];
    v13 = v10;
    if (v12)
    {
      [v12 removeFromSuperview];
      v12 = *&v1[v6];
    }

    *&v1[v6] = v10;
    v8 = v10;

    v14 = [v1 contentView];
    [v14 addSubview:v8];

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

void sub_24F4AC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }
}

char *sub_24F554(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_layoutMetrics;
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v21 = sub_759B00();
  v22 = sub_BE38(v21, qword_99BBB0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_itemLayoutContext;
  v25 = sub_75C840();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView] = 0;
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryAction];
  *v26 = 0;
  v26[1] = 0;
  if (qword_93D4B8 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  v28 = sub_BE38(v27, qword_99E638);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v30 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel] = sub_75BB10();
  v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView] = v31;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 layer];
  [v33 setAllowsGroupOpacity:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v37 = [v32 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v39 = sub_76A0A0();
  [v38 setBackgroundColor:v39];

  [v38 setOpaque:0];
  [v38 setUserInteractionEnabled:0];
  [v32 setSelectedBackgroundView:v38];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView;
  v41 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView];
  v42 = sub_769FB0();
  [v41 setBackgroundColor:v42];

  [*&v32[v40] setHidden:0];
  v43 = [v32 contentView];
  [v43 addSubview:*&v32[v40]];

  v44 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel;
  [*&v32[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel] setLineBreakMode:0];
  v45 = *&v32[v44];
  sub_75BAD0();

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v44]];

  sub_24FC28();
  sub_BD88(&qword_9477F0, qword_780200);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_77B6D0;
  *(v47 + 32) = sub_7676F0();
  *(v47 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v32;
}

void sub_24FC28()
{
  v1 = v0;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F274();
  swift_beginAccess();
  sub_759AF0();
  swift_endAccess();
  v7.super.isa = [v0 traitCollection];
  isa = v7.super.isa;
  v9 = sub_766490(v7).super.isa;

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() configurationWithFont:v9 scale:1];

  sub_759120();
  v11 = sub_24F274();
  LOBYTE(v6) = sub_7590E0();

  if (v6)
  {
    v12 = sub_24F274();
    v13 = sub_759110();

    if (v13)
    {
      v14 = sub_24F274();
      v15 = sub_759180();

      if (v15)
      {
        v16 = [v15 imageWithConfiguration:v13];

        [v16 size];
        v18 = v17;
        v20 = v19;

        v21 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize];
        *v21 = v18;
        *(v21 + 1) = v20;
        v21[16] = 0;
        [v1 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_24FEB0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_7664F0();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_759B20();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_944E50, qword_78AFE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = sub_759B00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v13);
  v16 = [v1 contentView];
  v17 = sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 traitCollection];
  sub_767500();
  v28 = v27;

  v29 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_layoutMetrics;
  swift_beginAccess();
  v74 = v10;
  v30 = *(v10 + 16);
  v80 = v15;
  v30(v15, &v1[v29], v9);
  v31 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  v78 = v9;
  if (v32)
  {
    v33 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (v35 = *v33, v34 = v33[1], *v33 == 0.0) && v34 == 0.0)
    {
      v70 = v6;
      v36 = qword_93C768;
      v37 = v32;
      if (v36 != -1)
      {
        swift_once();
      }

      sub_BE38(v9, qword_99BBB0);
      sub_759AC0();
      v38 = [v1 traitCollection];
      sub_7592A0();

      v9 = v78;
      (*(v70 + 8))(v8, v5);
      v35 = v83;
      v34 = v84;
    }

    else
    {
      v37 = v32;
    }

    v39 = sub_759150();
    *(v40 + 16) = v35;
    *(v40 + 24) = v34;
    v39(&v83, 0);
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] == 1)
  {
    v41 = *&v1[v31];
    if (v41)
    {
      v42 = sub_759210();
      v43 = v41;
      v44 = &protocol witness table for UIView;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = 0;
  v44 = 0;
LABEL_15:
  v83 = *&v41;
  v84 = 0.0;
  v85 = 0;
  v86 = v42;
  v87 = v44;
  v30(v79, v80, v9);
  sub_1ED18(&v83, v82, &unk_943B10, &qword_77E080);
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  v46 = sub_75BB20();
  v81[14] = &protocol witness table for UILabel;
  v81[13] = v46;
  v81[10] = v45;
  v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView];
  if (v47)
  {
    v48 = &protocol witness table for UIView;
    v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView];
  }

  else
  {
    v49 = 0;
    v17 = 0;
    v48 = 0;
    v81[7] = 0;
    v81[6] = 0;
  }

  v81[5] = v49;
  v81[8] = v17;
  v81[9] = v48;
  v50 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v50)
  {
    v51 = type metadata accessor for SearchAdTransparencyButton(0);
    v52 = &protocol witness table for UIView;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v81[2] = 0;
    v81[1] = 0;
  }

  v53 = v21 + v28;
  v54 = v25 - v28;
  v81[0] = v50;
  v81[3] = v51;
  v81[4] = v52;
  v55 = *&v1[v31];
  v56 = v55;
  v57 = v50;
  v58 = v45;
  v59 = v47;

  if (v55)
  {
    sub_759130();
  }

  swift_unknownObjectRetain();
  v60 = v75;
  sub_759B10();
  v61 = v71;
  sub_759A90();
  (*(v72 + 8))(v61, v73);
  v62 = [v1 traitCollection];
  LOBYTE(v61) = sub_7699F0();

  if (v61)
  {
    v63 = v19;
    v64 = v53;
    v65 = v23;
    v66 = v25 - v28;
  }

  else
  {
    [v58 frame];
  }

  MinX = CGRectGetMinX(*&v63);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = v19;
  v90.origin.y = v53;
  v90.size.width = v23;
  v90.size.height = v54;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView] setFrame:{MinX, MaxY - v28, CGRectGetWidth(v90), v28}];
  (*(v76 + 8))(v60, v77);
  sub_10A2C(&v83, &unk_943B10, &qword_77E080);
  return (*(v74 + 8))(v80, v78);
}

double sub_2506DC()
{
  v1 = sub_BD88(&qword_944E50, qword_78AFE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize];
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (result = *v5, *v5 == 0.0) && v5[1] == 0.0)
  {
    if (qword_93C768 != -1)
    {
      swift_once();
    }

    v7 = sub_759B00();
    sub_BE38(v7, qword_99BBB0);
    sub_759AC0();
    v8 = [v0 traitCollection];
    sub_7592A0();

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

void sub_2508A0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", a1, v7);
  v10 = [v2 traitCollection];
  v11 = [v10 layoutDirection];

  if (!a1 || v11 != [a1 layoutDirection])
  {
    if (qword_93C770 != -1)
    {
      swift_once();
    }

    v12 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v12, qword_94B510);
    v13 = [v2 traitCollection];
    sub_7592A0();

    sub_76A150();
  }

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_24FC28();
    v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
    swift_beginAccess();
    sub_759AF0();
    swift_endAccess();
    v23.super.isa = [v2 traitCollection];
    isa = v23.super.isa;
    v25 = sub_766490(v23).super.isa;

    (*(v6 + 8))(v9, v5);
    [v22 setFont:v25];

    [v2 setNeedsLayout];
    return;
  }

  v16 = [a1 preferredContentSizeCategory];
  v17 = sub_769240();
  v19 = v18;
  if (v17 == sub_769240() && v19 == v20)
  {

    return;
  }

  v21 = sub_76A950();

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_250C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_944E50, qword_78AFE0);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_759B00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_765240();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a2;
    v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] = 1;

    sub_765250();
    v32 = sub_765210();
    (*(v16 + 8))(v18, v15);
    v19 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_layoutMetrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v19], v11);
    v20 = sub_252524(a1, v14, v3);
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = &v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize];
    *v23 = v20;
    v23[1] = v22;
    *(v23 + 16) = 0;
    if (v20 == 0.0 && v22 == 0.0)
    {
      if (qword_93C768 != -1)
      {
        swift_once();
      }

      sub_BE38(v11, qword_99BBB0);
      sub_759AC0();
      v24 = [v3 traitCollection];
      v25 = v35;
      sub_7592A0();

      (*(v34 + 8))(v10, v25);
    }

    sub_765320();
    v26 = sub_24F274();
    sub_7652E0();
    sub_7591B0();
    [v26 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    v27 = sub_24F274();
    [v27 setContentMode:v32];

    v38 = v3;
    sub_2527C4(&qword_94B5B0, type metadata accessor for ActionCollectionViewCell, &protocol conformance descriptor for NSObject);
    v28 = v3;
    sub_76A6E0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(&v39, &unk_9443A0, &unk_77E240);
  }

  else
  {
    v29 = sub_24F274();
    v40.value.super.isa = 0;
    v40.is_nil = 0;
    sub_7591D0(v40, v30);

    v3[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  }
}

void sub_2511C0(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24F274();

    v15.is_nil = (a2 & 1) == 0;
    v15.value.super.isa = a1;
    sub_759140(v15, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_24FC28();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];
  }
}

void sub_2512A8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_BD88(&qword_947FE8, &unk_789580);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessory;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v28 = a1;
  sub_1ED18(a1, v15, &qword_93FF90, qword_77ECE0);
  sub_1ED18(v2 + v16, &v15[v17], &qword_93FF90, qword_77ECE0);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_10A2C(v15, &qword_93FF90, qword_77ECE0);
      return;
    }
  }

  else
  {
    sub_1ED18(v15, v11, &qword_93FF90, qword_77ECE0);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      v23 = v25;
      sub_30920(&v15[v17], v25);
      v24 = sub_4E32FC(v11, v23);
      sub_30984(v23);
      sub_30984(v11);
      sub_10A2C(v15, &qword_93FF90, qword_77ECE0);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_30984(v11);
  }

  sub_10A2C(v15, &qword_947FE8, &unk_789580);
LABEL_7:
  swift_beginAccess();
  v19 = v28;
  sub_25284C(v28, v2 + v16);
  swift_endAccess();
  v20 = v27;
  sub_1ED18(v19, v27, &qword_93FF90, qword_77ECE0);
  if (v18(v20, 1, v4) == 1)
  {
    sub_10A2C(v20, &qword_93FF90, qword_77ECE0);
    sub_24F1B0(0);
  }

  else
  {
    sub_4E0248(v26);
    v22 = v21;
    sub_30984(v20);
    sub_24F1B0(v22);
  }
}

uint64_t type metadata accessor for ActionCollectionViewCell(uint64_t a1)
{
  result = qword_94B580;
  if (!qword_94B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2518C4(uint64_t a1)
{
  sub_251A48(319, &qword_947E10, type metadata accessor for Accessory);
  if (v1 <= 0x3F)
  {
    sub_759B00();
    if (v2 <= 0x3F)
    {
      sub_251A48(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_251A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F274();
  sub_759050();

  v3 = sub_24F274();
  sub_759210();
  sub_2527C4(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
}

uint64_t sub_251B6C(uint64_t a1)
{
  result = sub_2527C4(&qword_94B590, type metadata accessor for ActionCollectionViewCell, &unk_78E060);
  *(a1 + 8) = result;
  return result;
}

double sub_251BC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v62 = a7;
  v57 = a6;
  v61 = a4;
  v60 = a3;
  v71 = a2;
  v69 = a1;
  v64 = sub_759B00();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v65 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_759B20();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_762D10();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_7664A0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v22);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_BD88(&qword_944E50, qword_78AFE0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v56[-v27];
  v70 = 0;
  if (a5)
  {
    sub_759AC0();
    v74 = *&v71;
    sub_7592B0();
    (*(v26 + 8))(v28, v25);
    sub_7670D0();
    swift_allocObject();
    v70 = sub_7670B0();
  }

  if (v57)
  {
    swift_storeEnumTagMultiPayload();
    v29 = v71;
    v30 = [v71 traitCollection];
    sub_4E1514(v30);

    sub_7670D0();
    swift_allocObject();
    v31 = sub_7670B0();
    sub_30984(v24);
  }

  else
  {
    v31 = 0;
    v29 = v71;
  }

  v32 = v69;
  sub_759AF0();
  v33.super.isa = [v29 traitCollection];
  isa = v33.super.isa;
  v35 = sub_766490(v33).super.isa;

  (*(v19 + 8))(v21, v18);
  v36 = sub_7653B0();
  v79[3] = v36;
  v79[4] = sub_2527C4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v37 = sub_B1B4(v79);
  (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);

  v38 = v35;
  sub_765C30();
  sub_BEB8(v79);
  sub_762D00();
  sub_762CE0();
  (*(v58 + 8))(v17, v59);
  v39 = 0;
  if (v62)
  {
    v40 = [v29 traitCollection];
    sub_5C886C(v40, 0, 0);

    sub_7670D0();
    swift_allocObject();
    v39 = sub_7670B0();
  }

  (*(v63 + 16))(v65, v32, v64);
  v41 = v70;
  if (v70)
  {
    v42 = sub_7670D0();
    v43 = &protocol witness table for LayoutViewPlaceholder;
    v44 = *&v41;
  }

  else
  {
    v44 = 0.0;
    v42 = 0;
    v43 = 0;
    v75 = 0;
    v76 = 0;
  }

  v74 = v44;
  v77 = v42;
  v78 = v43;
  sub_134D8(v79, v73);
  if (v31)
  {
    v45 = sub_7670D0();
    v46 = &protocol witness table for LayoutViewPlaceholder;
    v47 = v31;
  }

  else
  {
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v72[7] = 0;
    v72[6] = 0;
  }

  v72[5] = v47;
  v72[8] = v45;
  v72[9] = v46;
  v48 = 0;
  if (v39)
  {
    v48 = sub_7670D0();
    v49 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v49 = 0;
    v72[2] = 0;
    v72[1] = 0;
  }

  v72[0] = v39;
  v72[3] = v48;
  v72[4] = v49;
  swift_unknownObjectRetain();
  v50 = v66;
  sub_759B10();
  sub_769DA0();
  sub_2527C4(&qword_94B598, &type metadata accessor for ActionLayout, &protocol conformance descriptor for ActionLayout);
  v51 = v68;
  sub_7665A0();
  v74 = v52;
  v75 = v53;
  sub_769DB0();
  v54 = [v29 traitCollection];
  sub_767500();

  (*(v67 + 8))(v50, v51);
  sub_BEB8(v79);
  return v74;
}

double sub_2524B8(uint64_t a1, void *a2, double a3, double a4)
{
  sub_759AA0();
  v6 = v5;
  v7 = [a2 traitCollection];
  sub_767500();

  return v6;
}

double sub_252524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_944E50, qword_78AFE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_BD88(&unk_94B5A0, &qword_78E0B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_766690();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765260();
  sub_7666A0();
  sub_759AE0();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10A2C(v10, &unk_94B5A0, &qword_78E0B0);
    sub_759AC0();
    v19 = a3;
    sub_7592B0();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = a3;
    sub_7592B0();
    (*(v5 + 8))(v10, v4);
  }

  sub_766610();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_2527C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25280C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25284C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF90, qword_77ECE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2528BC()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryView) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessory;
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_searchAdTransparencyButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchTrendingAction) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_layoutMetrics;
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v4 = sub_759B00();
  v5 = sub_BE38(v4, qword_99BBB0);
  (*(*(v4 - 8) + 16))(v0 + v3, v5, v4);
  v6 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_artworkSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_252AAC()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FF0();
  qword_99BC08 = result;
  return result;
}

void sub_252AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = sub_75F740();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  v32 = a4;
  v33 = v5;
  do
  {
    v12 = a1 + 40 + 16 * v11;
    v13 = v11;
    while (1)
    {
      if (v13 >= v10)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      v14 = sub_769210();
      v15 = [objc_opt_self() _systemImageNamed:v14];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v11 == v10)
      {
        a4 = v32;
        v5 = v33;
        goto LABEL_18;
      }
    }

    if (qword_93C778 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:{qword_99BC08, v32, v33, v34, v35}];

    if (!v16)
    {
      goto LABEL_5;
    }

    sub_769440();
    if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v39 = v40;
    a4 = v32;
    v5 = v33;
  }

  while (v11 != v10);
LABEL_18:
  sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);

  v17 = [v5 traitCollection];
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  v19 = NSFontAttributeName;
  v20 = [v5 font];
  *(inited + 64) = sub_BD88(&qword_94B5B8, qword_78E0B8);
  *(inited + 40) = v20;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_252F70(inited + 32);
  v21 = sub_769A70();
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = sub_769210();
  v24 = [v22 initWithString:v23];

  v25 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v29 = (*(v26 + 88))(v27, v28);
  v30 = v21;
  v31 = v24;
  if (v29 == enum case for TertiaryIconPlacement.leading(_:) || (v30 = v24, v31 = v21, v29 == enum case for TertiaryIconPlacement.trailing(_:)))
  {

    [v25 appendAttributedString:v30];
    [v25 appendAttributedString:v31];
    [v5 setAttributedText:v25];
    [v5 setNeedsLayout];
  }

  else
  {
LABEL_23:
    sub_76A940();
    __break(1u);
  }
}

uint64_t sub_252F70(uint64_t a1)
{
  v2 = sub_BD88(qword_940F50, &qword_785170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252FDC()
{
  result = qword_94B5C0;
  if (!qword_94B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5C0);
  }

  return result;
}

unint64_t sub_253034()
{
  result = qword_94B5C8;
  if (!qword_94B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5C8);
  }

  return result;
}

uint64_t sub_2530AC()
{
  v0 = sub_BD88(&qword_94B680, &qword_78E540);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_756FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_756C50();
  sub_161DC(v5, qword_99BC10);
  sub_BE38(v5, qword_99BC10);
  sub_756F80();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_756C40();
}

uint64_t sub_253210()
{
  v0 = sub_BD88(&qword_94B648, &qword_78E510);
  sub_161DC(v0, qword_99BC28);
  sub_BE38(v0, qword_99BC28);
  sub_BD88(&qword_94B670, &qword_78E530);
  return sub_766320();
}

uint64_t sub_2532A0()
{
  v0 = sub_BD88(&qword_94B678, &qword_78E538);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_BD88(&qword_94B680, &qword_78E540);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_756FA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_769200();
  __chkstk_darwin(v8 - 8);
  sub_7691F0();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_7691E0(v12);
  sub_756B10();
  sub_7691D0(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_7691E0(v13);
  sub_756F90();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_756B50();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_756B60();
}

uint64_t sub_253510(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254BEC;

  return sub_2549B0(a1);
}

uint64_t sub_2535B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_254BD8;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_25366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25372C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_25372C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_253830()
{
  result = qword_94B5D0;
  if (!qword_94B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5D0);
  }

  return result;
}

unint64_t sub_253884()
{
  result = qword_94B5D8;
  if (!qword_94B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5D8);
  }

  return result;
}

unint64_t sub_2538DC()
{
  result = qword_94B5E0;
  if (!qword_94B5E0)
  {
    sub_133D8(&qword_94B5E8, qword_78E138);
    sub_253884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5E0);
  }

  return result;
}

uint64_t sub_253960(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_253BD8();
  *v5 = v2;
  v5[1] = sub_14FCC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_253A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_254BD8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_253AD0()
{
  result = qword_94B5F0;
  if (!qword_94B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5F0);
  }

  return result;
}

unint64_t sub_253B28()
{
  result = qword_94B5F8;
  if (!qword_94B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B5F8);
  }

  return result;
}

unint64_t sub_253B80()
{
  result = qword_94B600;
  if (!qword_94B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B600);
  }

  return result;
}

unint64_t sub_253BD8()
{
  result = qword_94B608;
  if (!qword_94B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B608);
  }

  return result;
}

unint64_t sub_253C40()
{
  result = qword_94B610;
  if (!qword_94B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B610);
  }

  return result;
}

uint64_t sub_253C94(uint64_t a1)
{
  v1 = sub_BD88(&qword_94B690, &qword_78E548);
  __chkstk_darwin(v1);
  sub_1C5EC4();
  sub_756BC0();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_756BB0(v3);
  swift_getKeyPath();
  sub_BD88(&qword_94B698, &qword_78E578);
  sub_756BA0();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_756BB0(v4);
  return sub_756BD0();
}

unint64_t sub_253DB4()
{
  result = qword_94B618;
  if (!qword_94B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B618);
  }

  return result;
}

unint64_t sub_253E0C()
{
  result = qword_94B620;
  if (!qword_94B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B620);
  }

  return result;
}

unint64_t sub_253E68()
{
  result = qword_94B628;
  if (!qword_94B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B628);
  }

  return result;
}

uint64_t sub_253EBC(uint64_t a1)
{
  sub_254930();
  v2 = sub_756B90();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_253F2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_93C780 != -1)
  {
    swift_once();
  }

  v3 = sub_756C50();
  v4 = sub_BE38(v3, qword_99BC10);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_254018(uint64_t a1)
{
  v2 = sub_1C5EC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_254068()
{
  result = qword_94B640;
  if (!qword_94B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B640);
  }

  return result;
}

uint64_t sub_2540C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_14FCC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_254184(uint64_t a1)
{
  v2 = sub_253E68();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_2541D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_254218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_254284(char a1, uint64_t a2, void *a3, __n128 a4)
{
  if (a1)
  {
    sub_76A730(38);

    v7 = 0xD000000000000024;
  }

  else
  {
    sub_76A730(31);

    v7 = 0xD00000000000001DLL;
  }

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  sub_769370(v8);
  return v7;
}

void sub_254340(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v47 = a3;
  v9 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_BD88(&qword_94B648, &qword_78E510);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_BD88(&qword_94B650, &qword_78E518);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_756FA0();
  __chkstk_darwin(v19 - 8);
  sub_BD88(&qword_94B658, &qword_78E520);
  sub_756F80();
  v46 = sub_756B40();

  sub_756F80();
  v20 = sub_756B40();
  v21 = qword_93C788;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_BE38(v12, qword_99BC28);
  sub_16194(&qword_94B660, &qword_94B648, &qword_78E510, &protocol conformance descriptor for Regex<A>);
  sub_766310();
  v45 = a1;
  sub_769400();
  sub_766330();
  (*(v13 + 8))(v15, v12);

  v22 = sub_BD88(&qword_94B668, &qword_78E528);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10A2C(v18, &qword_94B650, &qword_78E518);

    v24 = 0;
    v25 = a2;
    v26 = v45;
    v27 = v45;
  }

  else
  {
    sub_766340();

    (*(v23 + 8))(v18, v22);
    v27 = sub_769310();
    v25 = v40;

    v24 = 1;
    v26 = v45;
  }

  v28 = v43;
  if (!v44)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v44)
  {
    v29 = v44;
  }

  v48 = v28;
  v49 = v29;

  sub_756B20();
  v30 = v11;
  sub_50690(v47, v11);
  v31 = sub_7570A0();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10A2C(v11, &unk_93FD30, qword_77F240);
    v34 = sub_254284(v24, v27, v25, v33);
    v36 = v35;
  }

  else
  {
    v34 = sub_757020();
    v36 = v37;
    (*(v32 + 8))(v30, v31);
  }

  v48 = v34;
  v49 = v36;
  v38 = v42;
  sub_756B20();
  sub_10A2C(v47, &unk_93FD30, qword_77F240);

  v39 = v46;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v39;
  a6[5] = v38;
}

unint64_t sub_254930()
{
  result = qword_94B688;
  if (!qword_94B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B688);
  }

  return result;
}

uint64_t sub_254984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_756B30();
  *a1 = result;
  return result;
}

uint64_t sub_2549B0(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_BD88(&unk_93FD30, qword_77F240);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_254A4C, 0, 0);
}

uint64_t sub_254A4C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_143E04(0, v2, 0);
    v3 = sub_7570A0();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_254340(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (*&v10 >= *&v9 >> 1)
      {
        sub_143E04((*&v9 > 1uLL), *&v10 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * *&v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      *(v11 + 3) = *(v0 + 32);
      *(v11 + 4) = v13;
      *(v11 + 2) = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

unint64_t sub_254BF4()
{
  result = qword_9424C8;
  if (!qword_9424C8)
  {
    type metadata accessor for UberHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9424C8);
  }

  return result;
}

id sub_254C4C()
{
  if (!*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    result = *(v1 + qword_940590);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }
  }

  return [result image];
}

void sub_254CF8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v4 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = *(*(v2 + v3) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v6)
    {
      [v6 setAlpha:1.0];
      v7 = *(*(v2 + v3) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v7)
      {
        type metadata accessor for VideoView(0);
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + qword_940590);
        }

        else
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            goto LABEL_9;
          }

          v9 = v10;
        }

        v11 = v7;
        [v9 setImage:a1];
      }
    }
  }

LABEL_9:
}

void sub_254E30(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  if (!*(*(v4 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    goto LABEL_7;
  }

  type metadata accessor for VideoView(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_940590);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 image];
  if (!v9 || (v9, (a2 & 1) != 0))
  {
LABEL_7:
    v10 = *(*(v4 + v5) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v10)
    {
      type metadata accessor for VideoView(0);
      if (swift_dynamicCastClass())
      {
        v19 = v10;
        sub_6A2FD4(a1, a1 == 0);
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v10;
          [v12 setAlpha:0.0];
          [v12 setImage:a1];
          sub_25519C();
          v14 = sub_769B70();
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          aBlock[4] = sub_255220;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_88A2D0;
          v16 = _Block_copy(aBlock);
          v17 = v13;

          [v14 addAnimations:v16];
          _Block_release(v16);
          [v14 startAnimation];
        }
      }
    }

    return;
  }

  v18 = a1;

  sub_254CF8(a1);
}

void (*sub_2550E8(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_254C4C();
  return sub_255130;
}

void sub_255130(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_254CF8(v2);
  }

  else
  {
    sub_254CF8(*a1);
  }
}

unint64_t sub_25519C()
{
  result = qword_94B6A0;
  if (!qword_94B6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_94B6A0);
  }

  return result;
}

uint64_t sub_2551E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_255234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_255298(void *a1)
{
  v3 = sub_75F7E0();
  v107 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75F7C0();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = v88 - v9;
  __chkstk_darwin(v10);
  v110 = v88 - v11;
  v103 = sub_762D10();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_7656C0();
  v99 = *(v100 - 1);
  __chkstk_darwin(v100);
  v98 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75EE80();
  v97 = *(v14 - 8);
  __chkstk_darwin(v14);
  v96 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v109 = (v88 - v17);
  v18 = sub_BD88(&qword_94B6B8, &qword_78E620);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v88 - v20;
  sub_75B710();
  sub_25634C(&qword_94B6C0, &type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  sub_75C750();
  v22 = aBlock;
  if (!aBlock)
  {
    return 0.0;
  }

  v92 = v5;
  v93 = v6;
  v94 = v3;
  sub_256230();
  sub_75C780();
  sub_769030();
  (*(v19 + 8))(v21, v18);
  LODWORD(v90) = aBlock;
  v23 = sub_75B6F0();
  swift_getKeyPath();
  v91 = a1;
  sub_75C7B0();

  v24 = v115[0];
  v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];
  v26 = [v23 length];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *(v27 + 40) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_119AC;
  *(v28 + 24) = v27;
  v122 = sub_2636C;
  v123 = v28;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_10C1C;
  v121 = &unk_88A348;
  v29 = _Block_copy(&aBlock);
  v30 = v24;
  v108 = v25;

  [v23 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_75B700();
    v32 = v97;
    v33 = v96;
    (v97[13])(v96, enum case for TitledParagraphStyle.detail(_:), v14);
    sub_25634C(&unk_94B6D0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
    sub_769430();
    sub_769430();
    v34 = v22;
    if (aBlock == v115[0] && v119 == v115[1])
    {
      v89 = 1;
    }

    else
    {
      v89 = sub_76A950();
    }

    v36 = v100;
    v37 = v90;
    v38 = v32[1];
    v38(v33, v14);
    v38(v109, v14);

    if (v37)
    {
      if (qword_93CAD0 != -1)
      {
        swift_once();
      }

      v39 = sub_BD88(&unk_94B6E0, &qword_78E688);
      sub_BE38(v39, qword_99CB90);
      v115[0] = sub_527DE4();
      sub_7592B0();
      swift_unknownObjectRelease();
      v96 = aBlock;
    }

    else
    {
      v96 = 0;
    }

    sub_75B6D0();
    v97 = v34;
    v90 = sub_75B6E0();
    v88[1] = v40;
    v91 = v108;
    v41 = sub_527DE4();
    swift_getKeyPath();
    v42 = v98;
    sub_75C7B0();

    sub_765630();
    v1 = v43;
    (*(v99 + 8))(v42, v36);
    v109 = v41;
    isEscapingClosureAtFileLocation = [v41 traitCollection];
    sub_26F08();
    if (qword_93D610 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v44 = sub_7666D0();
  sub_BE38(v44, qword_99EA28);
  v100 = isEscapingClosureAtFileLocation;
  v45 = sub_769E10();
  v46 = sub_7653B0();
  v121 = v46;
  v47 = sub_25634C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v122 = v47;
  v48 = sub_B1B4(&aBlock);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 1) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  v51 = v45;
  sub_765C30();
  sub_BEB8(&aBlock);
  v52 = v101;
  sub_762D00();
  sub_762CE0();
  v53 = v102[1];
  v54 = v103;
  v53(v52, v103);
  v116 = v46;
  v117 = v47;
  v55 = sub_B1B4(v115);
  v50(v55, v49, v46);
  v56 = v51;
  sub_765C30();
  sub_BEB8(v115);
  v102 = v56;
  sub_762D00();
  sub_762CE0();
  v53(v52, v54);
  v57 = 0;
  v58 = v89;
  if ((v89 & 1) == 0)
  {
    v57 = sub_75F770();
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v57 & 1;
  v60 = v109;
  *(v59 + 24) = v104;
  *(v59 + 32) = v60;
  v61 = v96;
  *(v59 + 40) = v108;
  *(v59 + 48) = v61;
  v62 = sub_7670D0();
  swift_allocObject();
  v63 = v91;
  swift_unknownObjectRetain();
  v64 = sub_767090();
  v114[3] = v62;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  v114[0] = v64;
  v65 = v107;
  v66 = v93;
  v67 = v92;
  v68 = v110;
  v108 = v63;
  if (v57)
  {
    v69 = v106;
    if (qword_93CAE0 != -1)
    {
      swift_once();
    }

    v70 = sub_BE38(v66, qword_99CBC0);
    v71 = *(v69 + 16);
    v71(v68, v70, v66);
    sub_33E778(v60, v1);
    sub_75F790();
    [v60 pageMarginInsets];
    sub_75F7A0();
  }

  else
  {
    v69 = v106;
    if (v58)
    {
      if (qword_93CAE8 != -1)
      {
        swift_once();
      }

      v72 = qword_99CBD8;
    }

    else
    {
      if (qword_93CAD8 != -1)
      {
        swift_once();
      }

      v72 = qword_99CBA8;
    }

    v73 = sub_BE38(v66, v72);
    v71 = *(v69 + 16);
    v74 = v95;
    v71(v95, v73, v66);
    (*(v69 + 32))(v68, v74, v66);
  }

  v71(v105, v68, v66);
  v75 = v69;
  v76 = v121;
  v77 = v122;
  v78 = sub_B170(&aBlock, v121);
  v113[3] = v76;
  v113[4] = *(v77 + 1);
  v79 = sub_B1B4(v113);
  (*(*(v76 - 1) + 16))(v79, v78, v76);
  v80 = v116;
  v81 = v117;
  v82 = sub_B170(v115, v116);
  v112[3] = v80;
  v112[4] = *(v81 + 8);
  v83 = sub_B1B4(v112);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_134D8(v114, v111);
  sub_75F7D0();
  sub_25634C(&qword_954B50, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v84 = v94;
  sub_7665A0();
  v35 = v85;

  v86 = v108;
  swift_unknownObjectRelease();

  (*(v65 + 8))(v67, v84);
  (*(v75 + 8))(v110, v66);
  sub_BEB8(v114);
  sub_BEB8(v115);
  sub_BEB8(&aBlock);
  return v35;
}

unint64_t sub_256230()
{
  result = qword_94B6C8;
  if (!qword_94B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B6C8);
  }

  return result;
}

uint64_t sub_256288()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_2562E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2562FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_25634C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2564DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_2565DC(void *a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_256698(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_25674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v148 = a3;
  v11 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v11 - 8);
  v135 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v134 = &v125 - v14;
  v15 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v15 - 8);
  v133 = &v125 - v16;
  v17 = sub_75A6B0();
  __chkstk_darwin(v17 - 8);
  v132 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v131 = &v125 - v20;
  v21 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v21 - 8);
  v130 = &v125 - v22;
  v128 = sub_75A6E0();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v129 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_75DC30();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v147 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75FA00();
  v145 = *(v25 - 8);
  v146 = v25;
  __chkstk_darwin(v25);
  v144 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_763560();
  v140 = *(v27 - 8);
  v141 = v27;
  __chkstk_darwin(v27);
  v139 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_763590();
  v142 = *(v29 - 8);
  v143 = v29;
  __chkstk_darwin(v29);
  v31 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v32 - 8);
  v34 = &v125 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v125 - v39);
  v41 = sub_BD88(&unk_95CF90, &unk_784980);
  v150 = *(v41 - 8);
  v151 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v149 = &v125 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v152 = a1;
  sub_75C8A0();
  v45 = sub_75B260();

  v138 = a4;
  if (v45)
  {
    if (qword_93CA58 != -1)
    {
      swift_once();
    }

    v46 = sub_BE38(v35, qword_99CA30);
    sub_FCD60(v46, v40, v47);
    v48 = *v40;
    v49 = v45;

    *v40 = v45;
    sub_FCD60(v40, v37, v50);
    sub_BD88(&qword_93FBE0, &unk_77EA70);
    v51 = v149;
    sub_7592F0();

    sub_FCDC4(v40, v52);
  }

  else
  {
    if (qword_93CA58 != -1)
    {
      swift_once();
    }

    v53 = sub_BE38(v35, qword_99CA30);
    sub_FCD60(v53, v40, v54);
    sub_BD88(&qword_93FBE0, &unk_77EA70);
    v51 = v149;
    sub_7592F0();
  }

  v55 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView];
  v56 = sub_75C8A0();
  v57 = v150;
  v58 = v151;
  (*(v150 + 16))(v34, v51, v151);
  v59.n128_f64[0] = (*(v57 + 56))(v34, 0, 1, v58);
  v126 = v55;
  sub_5F8FA0(v59, v56, v34, v148);

  sub_10A2C(v34, &qword_944EA0, &unk_78A060);
  sub_75C870();
  v60 = v139;
  sub_763570();
  v61 = v143;
  v62 = *(v142 + 8);
  v62(v31, v143);
  v63 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v64 = v140;
  v65 = &v7[v63];
  v66 = v141;
  (*(v140 + 24))(v65, v60, v141);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v64 + 8))(v60, v66);
  v67 = v144;
  sub_75F9A0();
  sub_2588C0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v68 = v146;
  v69 = sub_76A520();
  (*(v145 + 8))(v67, v68);
  sub_75C870();
  v70 = sub_763580();
  v62(v31, v61);
  v71 = v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v69 | v70) & 1) == 0;
  v72 = &off_94C000;
  if (((v69 | v70) & 1) == v71)
  {
    if ((v69 | v70))
    {
      v73 = [v7 contentView];
      [v73 insertSubview:*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v74 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v75 = v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect];
  v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect] = v69 & 1;
  if ((v69 & 1) != v75)
  {
    v76 = 0.0;
    if (v69)
    {
      *&v76 = 1.0;
    }

    [*&v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient] setOpacity:v76];
    [v74 setNeedsDisplay];
  }

  v77 = v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect];
  v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect] = v70 & 1;
  if ((v70 & 1) != v77)
  {
    v78 = 0.0;
    if (v70)
    {
      v78 = 1.0;
    }

    [*&v74[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView] setAlpha:v78];
    [v74 setNeedsDisplay];
  }

  v79 = sub_75C8B0();
  v81 = v80;
  if (v80)
  {
    v82 = HIBYTE(v80) & 0xF;
    if ((v80 & 0x2000000000000000) == 0)
    {
      v82 = v79 & 0xFFFFFFFFFFFFLL;
    }

    v83 = v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v84 = v82 == 0;
    v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v84;
    if (v84 == v83)
    {
      goto LABEL_26;
    }

    if (v82)
    {
      v85 = [v7 contentView];
      [v85 insertSubview:*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v126];

LABEL_26:
      v86 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v88 = sub_769210();

      goto LABEL_31;
    }
  }

  else
  {
    v87 = v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v87 == 1)
    {
      v88 = 0;
      v86 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v86 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v81)
  {
    goto LABEL_30;
  }

  v88 = 0;
LABEL_31:
  [v86 setText:v88];

  sub_28FA90();
  if (sub_75C880())
  {
    (*(v127 + 104))(v129, enum case for VideoFillMode.scaleAspectFill(_:), v128);
    sub_764BC0();
    sub_765260();
    v89 = v130;
    sub_7666A0();

    v90 = sub_766690();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    v91 = v153[0];
    sub_764B40();
    v92 = v133;
    sub_764BD0();
    v93 = sub_7570A0();
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    v146 = v7;
    v94 = v134;
    sub_764B90();
    v95 = v135;
    sub_764B80();
    v96 = type metadata accessor for VideoView(0);
    sub_2588C0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v145 = v96;
    v148 = v91;
    v97 = sub_75C340();
    sub_10A2C(v95, &unk_948710, &qword_77FF90);
    v7 = v146;
    sub_10A2C(v94, &unk_948710, &qword_77FF90);
    v98 = v92;
    v72 = &off_94C000;
    sub_10A2C(v98, &unk_93FD30, qword_77F240);
    sub_10A2C(v153, &unk_9443A0, &unk_77E240);
    v99 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v100 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
    v101 = *(v99 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    if (v97)
    {
      v102 = v97;
      v103 = [v102 superview];
      if (v103)
      {
        v104 = v103;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v105 = v101;
        v106 = sub_76A1C0();

        v72 = &off_94C000;
        if (v106)
        {
          [v102 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v111 = *&v101[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v101[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v97;
    v112 = v97;
    sub_1F92A8(v111);

    v113 = *(*(v99 + v100) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v113 && (v114 = swift_dynamicCastClass()) != 0)
    {
      v115 = v114;
      v116 = v113;
      [v115 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v136 + 8))(v147, v137);
  }

  else if (sub_75C890())
  {

    v107 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView];
    v108 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v109 = *(v108 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    *(v108 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v107;
    v110 = v107;
    sub_1F92A8(v109);

    sub_1F7F5C();
  }

  v117 = sub_75C860();
  v118 = v149;
  if (!v117)
  {
    v117 = [objc_opt_self() clearColor];
  }

  v119 = v117;
  v120 = *(v72[359] + v7);
  v121 = type metadata accessor for MediaView();
  v154.receiver = v120;
  v154.super_class = v121;
  objc_msgSendSuper2(&v154, "setBackgroundColor:", v119);
  [*(*&v120[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v119];
  v122 = *&v120[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v122)
  {
    v123 = v122;
    [v123 setBackgroundColor:v119];
  }

  [v7 setNeedsLayout];
  return (*(v150 + 8))(v118, v151);
}

uint64_t sub_257868()
{
  result = sub_75C850();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_2578A4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_763560();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7604B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v7, v13);
  sub_28F39C(v10, a6, v15);
  (*(v8 + 8))(v10, v7);
  sub_7604D0();
  sub_2588C0(&unk_94B7F0, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  sub_766ED0();
  (*(v12 + 8))(v15, v11);
  v16 = [objc_opt_self() fractionalWidthDimension:1.0];
  v17 = sub_75F970();

  return v17;
}

double sub_257B84(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = sub_763560();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_763590();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7604B0();
  __chkstk_darwin(v12 - 8);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7604D0();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_762D10();
  v15 = *(v34 - 8);
  *&v16 = __chkstk_darwin(v34).n128_u64[0];
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a6;
  v19 = [a6 traitCollection];
  v20 = sub_7670D0();
  swift_allocObject();
  v21 = sub_7670B0();
  v37 = a1;
  sub_75C8B0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAD0 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  sub_BE38(v22, qword_99F868);
  sub_769E10();
  v23 = sub_7653B0();
  v33 = v19;
  v24 = v23;
  v52[3] = v23;
  v52[4] = sub_2588C0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_B1B4(v52);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  sub_765C30();
  sub_BEB8(v52);
  sub_762D00();
  sub_762CE0();
  (*(v15 + 8))(v18, v34);
  sub_75C870();
  sub_763570();
  (*(v35 + 8))(v11, v36);
  sub_28F39C(v9, v44, v38);
  (*(v39 + 8))(v9, v41);
  swift_allocObject();
  v26 = sub_7670B0();
  v50 = v20;
  v51 = &protocol witness table for LayoutViewPlaceholder;
  v49 = v26;
  sub_134D8(v52, v48);
  v46 = v20;
  v47 = &protocol witness table for LayoutViewPlaceholder;
  v45 = v21;

  v27 = v40;
  sub_7604C0();
  sub_2588C0(&unk_951390, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v28 = v43;
  sub_7665A0();
  v30 = v29;

  (*(v42 + 8))(v27, v28);
  sub_BEB8(v52);
  return v30;
}

void sub_258198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = sub_75DC30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766690();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v36);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75C8C0();
  if (swift_dynamicCast())
  {
    v33 = a2;
    v17 = v35;
    v18 = sub_75C880();
    if (v18)
    {
      v32 = v3;
      v19 = *(*(*&v3[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v19 && (v31[4] = v18, v20 = type metadata accessor for VideoView(0), (v21 = swift_dynamicCastClass()) != 0))
      {
        v31[2] = v20;
        v31[3] = v17;
        v22 = qword_99A200;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v11 + 16);
        v31[1] = v23;
        v24(v13, v23 + v22, v10);
        v25 = v19;
        sub_75DB80();
        (*(v11 + 8))(v13, v10);
        v26 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v26 + 32))(v16, v9, v14);
          [v32 bounds];
          sub_766600();
          sub_764BC0();
          sub_765330();

          sub_2588C0(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
          sub_75A050();

          (*(v26 + 8))(v16, v14);
          return;
        }

        sub_10A2C(v9, &unk_948720, &unk_784970);
      }

      else
      {
      }

      v3 = v32;
    }

    if (sub_75C890())
    {
      [v3 bounds];
      sub_765330();
      v27 = OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView;
      v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView];
      sub_7652E0();
      sub_7591B0();
      [v28 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      v29 = *&v3[v27];
      sub_759210();
      sub_2588C0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v30 = v29;
      sub_75A050();
    }
  }
}

void sub_258748(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_artworkView);
  sub_759210();
  sub_2588C0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v4 = v3;
  sub_75A0C0();

  v5 = *(*(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_2588C0(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
      v6 = v5;
      sub_75A0C0();
    }
  }
}

uint64_t sub_2588C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_258908()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99BC40);
  sub_BE38(v0, qword_99BC40);
  sub_7666A0();
  return result;
}

uint64_t sub_25895C()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_76A070();
  qword_99BC58 = result;
  return result;
}

uint64_t sub_2589A0()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_76A030();
  qword_99BC60 = result;
  return result;
}

uint64_t sub_258A68()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BCB0);
  sub_BE38(v4, qword_99BCB0);
  if (qword_93C7A8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99BC68);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_258C3C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BCC8);
  sub_BE38(v4, qword_99BCC8);
  if (qword_93C7B0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99BC80);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_258E10()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BCE0);
  sub_BE38(v4, qword_99BCE0);
  if (qword_93C7B8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99BC98);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_258FE4(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

id sub_2590C8()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if (qword_93C7A8 != -1)
    {
      swift_once();
    }

    v9 = sub_7666D0();
    sub_BE38(v9, qword_99BC68);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = sub_769E10();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = sub_759930();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_2592F0(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_259344;
}

void sub_259344(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_25F468(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_25F468(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_259600(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_93C7A8 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99BC68);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_75BB20();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialTypeLabel] = sub_75BB10();
  if (qword_93C7B0 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v17, qword_99BC80);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_titleLabel] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel] = sub_75BB00();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_93C7B8;
  v34 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v17, qword_99BC98);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  sub_75BA40();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_2590C8();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v41 = v40;
  v42 = sub_769FF0();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_259C5C()
{
  v1 = v0;
  v152 = sub_76A920();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(sub_766CA0());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_93FB80, &unk_786F10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_BD88(&qword_93FB88, qword_77F050);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_93C7C0;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v3, qword_99BCB0);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_93C7C8;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v3, qword_99BCC8);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_93C7D0;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v3, qword_99BCE0);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_373F0(v40, v17);
    sub_373F0(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10A2C(v17, &qword_93FB80, &unk_786F10);
    }

    else
    {
      sub_37460(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_143B7C(0, *(v38 + 2) + 1, 1);
        v38 = v162[0];
      }

      v47 = *(v38 + 2);
      v46 = *(v38 + 3);
      if (v47 >= v46 >> 1)
      {
        sub_143B7C((v46 > 1), v47 + 1, 1);
        v38 = v162[0];
      }

      *(v38 + 2) = v47 + 1;
      sub_37460(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = *(v38 + 2);
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_BE70(0, &qword_94AB00, NSObject_ptr);
    v143 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_373F0(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      sub_75D650();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      sub_75D650();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      sub_766470();
      sub_766C70();
      v71 = v70;

      (*v146)(v69, v152);
      sub_75D650();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((sub_76A1C0() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_2590C8();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        sub_75D650();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        sub_75D650();
        sub_769D20();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        sub_75D650();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      sub_75D650();
      sub_769D20();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > *(v38 + 2))
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_373F0(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  sub_75D650();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  sub_BE38(v54, qword_99FDE8);
  v95 = [v50 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_77D9F0;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = sub_7671E0();
  sub_7666E0();
  v100 = v99;

  v101 = v94 + v100;
  sub_75D650();
  v102 = CGRectGetMinX(v170);
  sub_75D650();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_93C790 != -1)
  {
    swift_once();
  }

  v104 = sub_766690();
  sub_BE38(v104, qword_99BC40);
  sub_766650();
  v106 = v105;
  sub_75D650();
  Width = CGRectGetWidth(v172);
  sub_766660();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    sub_75D650();
    sub_769D20();
    sub_759170();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    sub_75D650();
    sub_769D20();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    sub_75D650();
    sub_769D20();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_44CB80();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      sub_7591E0();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      sub_75D650();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      sub_769D20();
      sub_759170();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_26DAA8(v162);
    sub_270D88(v50, v162, v106, v103);
    sub_37538(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    sub_75D650();
    sub_769D20();
    [v138 setFrame:?];
  }
}

id sub_25AA8C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_25F468(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v9 = v1;
    v10 = sub_76A1C0();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_25EF14(0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

double sub_25AC9C(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v12 = sub_2590C8();
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if (qword_93C7A8 != -1)
    {
      swift_once();
    }

    v13 = sub_7666D0();
    sub_BE38(v13, qword_99BC68);
    v14 = [v1 traitCollection];
    v15 = sub_769E10();

    v16 = [objc_opt_self() configurationWithFont:v15];
    [v12 setPreferredSymbolConfiguration:v16];

    return result;
  }

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {

    return result;
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_25AF64(uint64_t a1, uint64_t a2)
{
  v3 = sub_75CA40();
  v182 = *(v3 - 8);
  __chkstk_darwin(v3);
  v181 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v180 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_765240();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v8 - 8);
  v193 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v192 = v174 - v11;
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v191 = v174 - v13;
  v14 = sub_75A6B0();
  __chkstk_darwin(v14 - 8);
  v190 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v189 = v174 - v17;
  v18 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v18 - 8);
  v188 = v174 - v19;
  v187 = sub_75A6E0();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75DC30();
  v194 = *(v21 - 8);
  __chkstk_darwin(v21);
  v199 = v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_764CF0();
  v208 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&qword_94B8B0, &qword_78E920);
  __chkstk_darwin(v24 - 8);
  v197 = v174 - v25;
  v201 = sub_75B1E0();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v183 = v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = v174 - v28;
  v29 = sub_761380();
  v210 = *(v29 - 8);
  v211 = v29;
  __chkstk_darwin(v29);
  v207 = v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v203 = v174 - v32;
  __chkstk_darwin(v33);
  v35 = v174 - v34;
  v206 = sub_766690();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v37 = v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_766EB0();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = (v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_75F330();
  sub_25F468(&qword_956680, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!*&v215[0])
  {
    return;
  }

  v176 = v21;
  v202 = *&v215[0];
  v175 = v3;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v204 = *&v215[0];
  sub_75D310();
  v195 = a2;
  sub_7688F0();
  v42 = *&v215[0];
  v43 = v209;
  if (*&v215[0])
  {
    *&v214 = v209;
    type metadata accessor for EditorialSearchResultContentView();
    sub_25F468(&qword_94B8A8, v44, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v45 = v43;
    sub_76A6E0();
    sub_75D300();

    sub_1EB60(v215);
  }

  v198 = v42;
  v174[1] = type metadata accessor for EditorialSearchResultContentView();
  sub_75D650();
  swift_getKeyPath();
  sub_75C7B0();

  v46 = *&v215[0];
  if (qword_93C790 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v47 = v206;
    v48 = sub_BE38(v206, qword_99BC40);
    (*(v205 + 16))(v37, v48, v47);
    sub_766EC0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_77D9F0;
    *(v49 + 32) = v46;
    v50 = v46;
    v51 = sub_7671E0();
    sub_7665A0();
    v53 = v52;
    v55 = v54;

    (*(v39 + 8))(v41, v38);
    v38 = v202;
    sub_75F2F0();
    v56 = (*(v210 + 88))(v35, v211);
    v57 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon;
    v184 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v56 == enum case for EditorialSearchResultType.category(_:) || v56 == enum case for EditorialSearchResultType.collection(_:) || v56 == enum case for EditorialSearchResultType.story(_:) || v56 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v43[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v59 = sub_2590C8();
      [v59 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
    }

    else
    {
      v43[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v58 = sub_2590C8();
      [v58 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
      (*(v210 + 8))(v35, v211);
    }

    v60 = sub_75F2A0();
    sub_258FE4(v60, v61);
    sub_75F300();
    v63 = v62;
    v64 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_titleLabel];
    v65 = v62 ? sub_769210() : 0;
    [v64 setText:v65];

    [v64 setHidden:v63 == 0];
    [v43 setNeedsLayout];
    sub_75F310();
    v67 = v66;
    v68 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_subtitleLabel];
    v69 = v66 ? sub_769210() : 0;
    [v68 setText:v69];

    [v68 setHidden:v67 == 0];
    [v43 setNeedsLayout];
    v70 = sub_75F2C0();
    if (!v70)
    {
      break;
    }

    v71 = v70;
    v72 = v197;
    sub_75F290();
    v73 = v200;
    v46 = v201;
    if ((*(v200 + 48))(v72, 1, v201) == 1)
    {

      sub_10A2C(v72, &qword_94B8B0, &qword_78E920);
      break;
    }

    v93 = v196;
    (*(v73 + 32))(v196, v72, v46);
    v94 = v183;
    (*(v73 + 16))(v183, v93, v46);
    v95 = (*(v73 + 88))(v94, v46);
    if (v95 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v95 == enum case for ArtworkGridType.large(_:))
    {
      v96 = 1;
    }

    else if (v95 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v96 = 2;
    }

    else
    {
      if (v95 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v73 + 8))(v94, v46);
LABEL_32:
        v96 = 0;
        goto LABEL_50;
      }

      v96 = 3;
    }

LABEL_50:
    v109 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v110 = sub_44CF14(v96, 0.0, 0.0, 0.0, 0.0);
    sub_432010();
    v111 = v110[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
    v112.f64[0] = v53;
    v113 = sub_44C77C(v111, v112, v55);
    v35 = *(v71 + 16);
    if (v113 < v35)
    {
      v114.f64[0] = v53;
      v115 = sub_44C77C(v111, v114, v55);
      if ((v115 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v115)
      {
        if (v35 == v115)
        {
LABEL_67:
          v41 = v71;
        }

        else
        {
          v199 = v110;
          sub_4A61D4(v71, v71 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), 0, (2 * v115) | 1);
          v41 = v116;
LABEL_55:

          v43 = v209;
          v110 = v199;
        }

        *&v110[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v41[2];
        sub_44CD50();
        if (v198)
        {
          v121 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v122 = swift_allocObject();
          v122[2] = v110;
          v122[3] = v121;
          v123 = v204;
          v122[4] = v204;
          v124 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v125 = swift_allocObject();
          v125[2] = v110;
          v125[3] = v124;
          v125[4] = v123;
          *&v215[0] = v43;
          sub_25F468(&qword_94B8A8, v126, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
          v127 = v43;
          v128 = v110;
          swift_retain_n();

          v129 = v127;
          v130 = v128;
          sub_76A6E0();
          sub_75D2E0();

          sub_10A2C(&v214, &unk_9443A0, &unk_77E240);
        }

        else
        {

          v216 = 0;
          memset(v215, 0, sizeof(v215));
        }

        v101 = v203;
        sub_10A2C(v215, &unk_9443A0, &unk_77E240);
        v131 = v110;
        sub_25F0DC(v110);

        (*(v200 + 8))(v196, v201);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v113 <= v35)
    {
      goto LABEL_67;
    }

    v206 = v113 - v35;
    if (v113 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v199 = v110;

      v41 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_7B800(0, (v35 + 1), 1, v71);
LABEL_60:
    v117 = 0;
    v39 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v205 = v71 + v39;
    v43 = (v208 + 16);
    v37 = (v208 + 32);
    while (1)
    {
      v118 = v117 % v35;
      if (v117 % v35 < 0)
      {
        break;
      }

      if (v118 >= *(v71 + 16))
      {
        goto LABEL_103;
      }

      v46 = v71;
      v119 = *(v208 + 72);
      (*(v208 + 16))(v212, v205 + v119 * v118, v213);
      v38 = *(v41 + 2);
      v120 = *(v41 + 3);
      if (v38 >= v120 >> 1)
      {
        v41 = sub_7B800((v120 > 1), v38 + 1, 1, v41);
      }

      ++v117;
      *(v41 + 2) = v38 + 1;
      (*v37)(v41 + v39 + v38 * v119, v212, v213);
      v71 = v46;
      if (v206 == v117)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (sub_75F280())
  {
    (*(v186 + 104))(v185, enum case for VideoFillMode.scaleAspectFill(_:), v187);
    sub_764BC0();
    sub_765260();
    v74 = v188;
    sub_7666A0();

    (*(v205 + 56))(v74, 0, 1, v206);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v75 = v191;
    sub_764BD0();
    v76 = sub_7570A0();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = v192;
    sub_764B90();
    v78 = v193;
    sub_764B80();
    v79 = type metadata accessor for VideoView(0);
    sub_25F468(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v213 = v79;
    v80 = sub_75C340();
    sub_10A2C(v78, &unk_948710, &qword_77FF90);
    sub_10A2C(v77, &unk_948710, &qword_77FF90);
    sub_10A2C(v75, &unk_93FD30, qword_77F240);
    sub_10A2C(v215, &unk_9443A0, &unk_77E240);
    v81 = v209;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = Strong;
      v84 = [Strong superview];
      if (!v84)
      {
        goto LABEL_26;
      }

      v85 = v84;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v86 = v81;
      v87 = sub_76A1C0();

      if (v87)
      {
        v88 = swift_unknownObjectWeakLoadStrong();
        if (v88)
        {
          v83 = v88;
          [v88 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v89 = swift_unknownObjectWeakLoadStrong();
    if (v89)
    {
      v90 = v89;
      [v81 addSubview:v89];
    }

    [v81 setNeedsLayout];

    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91)
    {
      v92 = v91;
      sub_764BC0();
      sub_765330();

      sub_25F468(&unk_93F530, 255, type metadata accessor for VideoView, &unk_7AD180);
      sub_75A050();

      (*(v194 + 8))(v199, v176);
    }

    else
    {
      (*(v194 + 8))(v199, v176);
    }

    v101 = v203;
  }

  else if (sub_75F2B0())
  {
    sub_759210();
    v97 = sub_759010();
    [v97 setContentMode:2];
    sub_765320();
    sub_25F468(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
    v98 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView;
    v99 = v209;
    v100 = *&v209[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView];
    v101 = v203;
    v102 = v97;
    if (v100)
    {
      [v100 removeFromSuperview];
      v103 = *&v99[v98];
    }

    else
    {
      v103 = 0;
    }

    *&v99[v98] = v97;
    v108 = v97;

    [v99 addSubview:v108];
    [v99 setNeedsLayout];
  }

  else
  {
    v104 = sub_75F270();
    v101 = v203;
    if (v104)
    {
      v105 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_765260();
      sub_7666A0();
      sub_766610();
      (*(v205 + 8))(v37, v206);
      v106 = v177;
      sub_765250();
      sub_765210();
      (*(v178 + 8))(v106, v179);
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v105 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      sub_25F468(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
      v107 = v105;
      sub_25EF14(v105);
    }
  }

LABEL_72:
  sub_75F2F0();
  (*(v210 + 104))(v207, v184, v211);
  sub_25F468(&qword_94B8B8, 255, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  sub_769430();
  sub_769430();
  if (v215[0] == v214)
  {
    v132 = v211;
    v133 = *(v210 + 8);
    v133(v207, v211);
    v133(v101, v132);

LABEL_75:
    v138 = sub_75F2E0();
    if (v138 >> 62)
    {
      v139 = sub_76A860();
    }

    else
    {
      v139 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
    }

    v137 = v209;
    if (v139)
    {
      v140 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v141 = *&v209[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v141)
      {
        goto LABEL_79;
      }

      v151 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v152 = *&v137[v140];
      if (v152)
      {
        [v152 removeFromSuperview];
        v153 = *&v137[v140];
      }

      else
      {
        v153 = 0;
      }

      *&v137[v140] = v151;
      v164 = v151;

      if (v164)
      {
        v165 = v164[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
        v164[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 6;
        sub_26B40C(v165);
        [v137 addSubview:v164];
      }

      [v137 setNeedsLayout];

      v166 = *&v137[v140];
      if (v166)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v167 = v166;
        sub_7688F0();
        v168 = *&v215[0];
        v169 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v170 = *&v167[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v171 = v170;
        sub_26CAC0(v168);
        v172 = *&v167[v169];
        *&v167[v169] = v168;
        v173 = v168;

        sub_26CC24(v170);
        v141 = *&v137[v140];
        if (v141)
        {
LABEL_79:
          v142 = v141;
          [v137 bringSubviewToFront:v142];
          v143 = sub_75F2E0();
          sub_268FDC(v143);
        }
      }
    }

    v144 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v145 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v145)
    {
      v146 = v145;
      v147 = sub_75F320();
      v148 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v149 = *&v146[v148];
      if (v149)
      {
        v150 = v149;
        [v150 setBackgroundColor:v147];
      }

      else
      {

        v146 = v147;
      }

      v154 = *&v137[v144];
      if (v154)
      {
        v155 = v154;
        v156 = v181;
        sub_75F2D0();
        v157 = sub_75CA20();
        (*(v182 + 8))(v156, v175);
        [v155 setOverrideUserInterfaceStyle:v157];
      }
    }

    v158 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView;
    v159 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView];
    if (v159)
    {
      v160 = v159;
      sub_75CD10();

      v161 = *&v137[v158];
      if (v161)
      {
        v162 = v161;
        if (!sub_75F320())
        {
          v163 = [objc_opt_self() clearColor];
        }

        sub_75CD00();
      }
    }
  }

  else
  {
    v134 = sub_76A950();
    v135 = v211;
    v136 = *(v210 + 8);
    v136(v207, v211);
    v136(v101, v135);

    v137 = v209;
    if (v134)
    {
      goto LABEL_75;
    }
  }

  [v137 setNeedsLayout];
}