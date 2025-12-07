double sub_33A2C()
{
  v1 = sub_5695C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_5793C();
  v7 = sub_56C8C();
  sub_562CC();

  sub_5694C();
  swift_getAtKeyPath();
  sub_1FAB8(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

BOOL sub_33B78()
{
  v0 = sub_5613C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2AFC(&qword_71B18, &qword_59008);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for BalloonView(0);
  sub_5639C();
  v10 = *(v1 + 48);
  v11 = v10(v9, 1, v0);
  sub_2E90(v9, &qword_71B18, &qword_59008);
  if (v11 == 1)
  {
    return 0;
  }

  sub_5639C();
  if (v10(v6, 1, v0))
  {
    sub_2E90(v6, &qword_71B18, &qword_59008);
    v13 = 0.0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_2E90(v6, &qword_71B18, &qword_59008);
    sub_5611C();
    v13 = v14;
    (*(v1 + 8))(v3, v0);
  }

  sub_5612C();
  sub_5611C();
  v16 = v15;
  (*(v1 + 8))(v3, v0);
  return v13 < v16;
}

uint64_t sub_33DE4()
{
  v1 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonView(0);
  v5 = v0 + *(v4 + 48);
  sub_43188(v5, v3, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v3, type metadata accessor for MessagesContext);
  if (Strong)
  {
    v7 = [Strong activeConversation];

    if (v7)
    {
      v8 = [v7 selectedMessage];

      if (v8)
      {
        v9 = [v8 isPending];

        if (v9)
        {
          return 0;
        }
      }
    }
  }

  if (sub_33B78())
  {
    return 1;
  }

  if (!*(v0 + *(v4 + 28)) && ((swift_getKeyPath(), swift_getKeyPath(), sub_5662C(), , , v13 = v15, v15 == 255) || (sub_BCE4(v14, v15), (v13 & 1) != 0)))
  {
    v11 = *(v5 + 32) == 0;
    v12 = 2;
  }

  else
  {
    v11 = *(v5 + 32) == 0;
    v12 = 4;
  }

  if (v11)
  {
    return v12 + 1;
  }

  else
  {
    return v12;
  }
}

void sub_33FD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v140 = sub_5605C();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_561CC();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v133 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v135 = &v119 - v6;
  v152 = sub_5773C();
  v134 = *(v152 - 8);
  __chkstk_darwin(v152);
  v132 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v150 = &v119 - v9;
  v154 = sub_5606C();
  v142 = *(v154 - 8);
  __chkstk_darwin(v154);
  v141 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = &v119 - v12;
  v13 = type metadata accessor for BalloonView(0);
  v129 = *(v13 - 8);
  __chkstk_darwin(v13);
  v155 = v14;
  v156 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2AFC(&qword_71EA0, &qword_59438);
  __chkstk_darwin(v125);
  v122 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v123 = &v119 - v17;
  v18 = sub_5674C();
  v146 = *(v18 - 8);
  __chkstk_darwin(v18);
  v145 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v144 = &v119 - v21;
  v127 = sub_2AFC(&qword_71EA8, &qword_59440);
  __chkstk_darwin(v127);
  v121 = &v119 - v22;
  v23 = sub_561AC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2AFC(&qword_72CD0, &qword_5A688);
  __chkstk_darwin(v27);
  v29 = &v119 - v28;
  v124 = sub_2AFC(&qword_72CD8, &qword_5A690);
  __chkstk_darwin(v124);
  v31 = &v119 - v30;
  v128 = sub_2AFC(&qword_72CE0, &qword_5A698);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v147 = &v119 - v32;
  v131 = sub_2AFC(&qword_72CE8, &qword_5A6A0);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v148 = &v119 - v33;
  v149 = sub_2AFC(&qword_72CF0, &qword_5A6A8);
  __chkstk_darwin(v149);
  v151 = &v119 - v34;
  *v29 = sub_56A2C();
  *(v29 + 1) = 0x4028000000000000;
  v29[16] = 0;
  v35 = sub_2AFC(&qword_72CF8, &qword_5A6B0);
  sub_35414(v1, &v29[*(v35 + 44)]);
  v36 = sub_56CCC();
  sub_5668C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v29[*(sub_2AFC(&qword_72D00, &qword_5A6B8) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_5678C();
  v47 = sub_56CAC();
  v48 = &v29[*(v27 + 36)];
  *v48 = v46;
  v48[8] = v47;
  v159 = 0x65757165526B7341;
  v160 = 0xEB000000003A7473;
  v157 = v13;
  v158 = v2;
  sub_5645C();
  sub_431F0(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v165._countAndFlagsBits = sub_57B7C();
  sub_577DC(v165);

  (*(v24 + 8))(v26, v23);
  sub_41284();
  v120 = v31;
  v49 = v144;
  sub_56ECC();

  v50 = v29;
  v51 = v145;
  sub_2E90(v50, &qword_72CD0, &qword_5A688);
  v52 = v146;
  v53 = *(v146 + 13);
  v53(v49, enum case for DynamicTypeSize.small(_:), v18);
  v53(v51, enum case for DynamicTypeSize.accessibility3(_:), v18);
  sub_431F0(&qword_71EF8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_576BC())
  {
    v54 = *(v52 + 4);
    v55 = v123;
    v56 = v18;
    v54(v123, v49, v18);
    v57 = v125;
    v54((v55 + *(v125 + 48)), v51, v18);
    v58 = v122;
    sub_2E28(v55, v122, &qword_71EA0, &qword_59438);
    v59 = *(v57 + 48);
    v60 = v121;
    v54(v121, v58, v56);
    v61 = *(v52 + 1);
    v61(v58 + v59, v56);
    sub_B0DC(v55, v58, &qword_71EA0, &qword_59438);
    v62 = v127;
    v54((v60 + *(v127 + 36)), (v58 + *(v57 + 48)), v56);
    v61(v58, v56);
    v125 = sub_413C8();
    v63 = sub_3260(&qword_71F30, &qword_71EA8, &qword_59440, &protocol conformance descriptor for ClosedRange<A>);
    v64 = v124;
    v65 = v120;
    sub_56E8C();
    sub_2E90(v60, &qword_71EA8, &qword_59440);
    sub_2E90(v65, &qword_72CD8, &qword_5A690);
    v66 = v158;
    v67 = v158 + v157[17];
    v68 = *v67;
    v69 = *(v67 + 8);
    v163 = v68;
    v164 = v69;
    v70 = sub_2AFC(&qword_71F40, &unk_59520);
    sub_570AC();
    LODWORD(v123) = v161;
    v146 = type metadata accessor for BalloonView;
    v71 = v156;
    sub_43188(v66, v156, type metadata accessor for BalloonView);
    v145 = *(v129 + 80);
    v72 = (v145 + 16) & ~v145;
    v73 = swift_allocObject();
    sub_41488(v71, v73 + v72);
    v129 = sub_2AFC(&qword_72D30, &qword_5A6D0);
    v159 = v64;
    v160 = v62;
    v161 = v125;
    v162 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v118 = sub_4155C();
    v74 = v128;
    v75 = v147;
    sub_56F1C();

    (*(v126 + 8))(v75, v74);
    v76 = v158;
    v77 = v158 + v157[18];
    v78 = *v77;
    v79 = *(v77 + 8);
    v163 = v78;
    v164 = v79;
    v147 = v70;
    sub_570AC();
    v80 = v156;
    sub_43188(v76, v156, v146);
    v144 = v72;
    v81 = swift_allocObject();
    sub_41488(v80, v81 + v72);
    sub_2AFC(&qword_72D48, &qword_5A6D8);
    v159 = v74;
    v160 = v129;
    v161 = OpaqueTypeConformance2;
    v162 = v118;
    swift_getOpaqueTypeConformance2();
    sub_41D74(&qword_72D50, &qword_72D48, &qword_5A6D8, sub_416A4);
    v82 = v151;
    v83 = v131;
    v84 = v148;
    sub_56F1C();

    (*(v130 + 8))(v84, v83);
    v85 = v158;
    v86 = *(v158 + v157[15] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v148 = v86;
    sub_5662C();

    v87 = v159;
    LOBYTE(v76) = v160;
    v88 = v149;
    sub_2AFC(&unk_71C70, "jV");
    sub_5799C();
    sub_BCE4(v87, v76);
    v89 = v156;
    sub_43188(v85, v156, v146);
    v90 = v144;
    v91 = swift_allocObject();
    sub_41488(v89, &v90[v91]);
    v92 = &v82[*(v88 + 56)];
    *v92 = sub_41700;
    v92[1] = v91;
    v93 = v150;
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v94 = sub_5796C();
    if (!v94)
    {
      v94 = [objc_opt_self() mainBundle];
    }

    v95 = v94;
    v96 = v135;
    sub_561BC();
    v97 = v134;
    (*(v134 + 16))(v132, v93, v152);
    v98 = v137;
    v99 = v139;
    (*(v137 + 16))(v133, v96, v139);
    v100 = [v95 bundleURL];
    v101 = v136;
    sub_560AC();

    (*(v138 + 104))(v101, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v140);
    v102 = v153;
    sub_5607C();

    (*(v98 + 8))(v96, v99);
    (*(v97 + 8))(v150, v152);
    v103 = v158 + v157[19];
    v104 = *v103;
    v105 = *(v103 + 8);
    v163 = v104;
    v164 = v105;
    sub_570AC();
    v155 = v159;
    v152 = v160;
    LODWORD(v156) = v161;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v157 = &v119;
    v148 = v159;
    LODWORD(v150) = v160;
    v107 = __chkstk_darwin(v106);
    v159 = v108;
    LOBYTE(v160) = v109;
    v110 = v142;
    (*(v142 + 16))(v141, v102, v154, v107);
    v111 = sub_56DFC();
    v113 = v112;
    LOBYTE(v101) = v114;
    v158 = v115;
    sub_2AFC(&qword_71F48, &unk_5A730);
    sub_2AFC(&qword_71F50, &unk_59530);
    sub_3260(&qword_72D60, &qword_72CF0, &qword_5A6A8, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
    v116 = v151;
    sub_56EFC();
    sub_21FDC(v111, v113, v101 & 1);

    (*(v110 + 8))(v153, v154);
    sub_2E90(v116, &qword_72CF0, &qword_5A6A8);
    sub_BCE4(v148, v150);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_35414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for BalloonView(0);
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2AFC(&qword_72D78, &qword_5A788);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_2AFC(&qword_72D80, &qword_5A790);
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = sub_2AFC(&qword_72D88, &qword_5A798);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  *v20 = sub_5696C();
  *(v20 + 1) = 0x4020000000000000;
  v20[16] = 0;
  v21 = sub_2AFC(&qword_72D90, &qword_5A7A0);
  sub_3593C(a1, &v20[*(v21 + 44)]);
  v22 = sub_56C9C();
  sub_5668C();
  v23 = &v20[*(v16 + 44)];
  v50 = v20;
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_36BC0(v9);
  LOBYTE(v16) = sub_56C9C();
  sub_5668C();
  v28 = &v9[*(v7 + 36)];
  *v28 = v16;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = (a1 + *(v4 + 88));
  v35 = *v33;
  v34 = v33[1];
  v59 = v35;
  v60 = v34;
  sub_2AFC(&qword_72D68, &qword_5A748);
  sub_5708C();
  v36 = v58;
  swift_getKeyPath();
  v59 = v36;
  sub_431F0(&qword_71A58, type metadata accessor for ManageContactsSetting, &unk_5A4C8);
  sub_561FC();

  LOBYTE(v16) = *(v36 + 24);

  LOBYTE(v59) = v16;
  sub_43188(a1, v6, type metadata accessor for BalloonView);
  v37 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v38 = swift_allocObject();
  sub_41488(v6, v38 + v37);
  sub_41898();
  sub_56F3C();

  sub_2E90(v9, &qword_72D78, &qword_5A788);
  v39 = v20;
  v40 = v51;
  sub_2E28(v39, v51, &qword_72D88, &qword_5A798);
  v42 = v54;
  v41 = v55;
  v43 = *(v55 + 16);
  v44 = v56;
  v43(v54, v14, v56);
  v45 = v57;
  sub_2E28(v40, v57, &qword_72D88, &qword_5A798);
  v46 = sub_2AFC(&qword_72E58, &qword_5A800);
  v43((v45 + *(v46 + 48)), v42, v44);
  v47 = *(v41 + 8);
  v47(v14, v44);
  sub_2E90(v50, &qword_72D88, &qword_5A798);
  v47(v42, v44);
  return sub_2E90(v40, &qword_72D88, &qword_5A798);
}

uint64_t sub_3593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2AFC(&qword_72FA0, &qword_5AA20);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_2AFC(&qword_72FA8, &qword_5AA28);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = sub_2AFC(&qword_72FB0, &qword_5AA30);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  sub_35C7C(&v30 - v20);
  *v5 = sub_56A2C();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v22 = sub_2AFC(&qword_72FB8, &qword_5AA38);
  sub_36334(a1, &v5[*(v22 + 44)]);
  sub_571DC();
  sub_567CC();
  sub_B0DC(v5, v12, &qword_72FA0, &qword_5AA20);
  v23 = &v12[*(v7 + 44)];
  v24 = v37;
  *(v23 + 4) = v36;
  *(v23 + 5) = v24;
  *(v23 + 6) = v38;
  v25 = v33;
  *v23 = v32;
  *(v23 + 1) = v25;
  v26 = v35;
  *(v23 + 2) = v34;
  *(v23 + 3) = v26;
  sub_B0DC(v12, v15, &qword_72FA8, &qword_5AA28);
  sub_2E28(v21, v18, &qword_72FB0, &qword_5AA30);
  sub_2E28(v15, v9, &qword_72FA8, &qword_5AA28);
  v27 = v31;
  sub_2E28(v18, v31, &qword_72FB0, &qword_5AA30);
  v28 = sub_2AFC(&qword_72FC0, &qword_5AA40);
  sub_2E28(v9, v27 + *(v28 + 48), &qword_72FA8, &qword_5AA28);
  sub_2E90(v15, &qword_72FA8, &qword_5AA28);
  sub_2E90(v21, &qword_72FB0, &qword_5AA30);
  sub_2E90(v9, &qword_72FA8, &qword_5AA28);
  return sub_2E90(v18, &qword_72FB0, &qword_5AA30);
}

uint64_t sub_35C7C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_572EC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2AFC(&qword_71B00, &unk_593C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_5756C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v34 = &v30 - v11;
  v35 = sub_2AFC(&qword_73000, &unk_5AAE0);
  __chkstk_darwin(v35);
  v36 = &v30 - v12;
  v13 = type metadata accessor for IconView(0);
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v30 - v17);
  v19 = type metadata accessor for BalloonView(0);
  v20 = v1;
  sub_5630C();
  v21 = sub_5636C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
    sub_2E90(v18, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    if ((*(v22 + 88))(v18, v21) == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      (*(v22 + 96))(v18, v21);
      v23 = *v18;
      *&v15[*(v13 + 20)] = sub_39F3C();
      type metadata accessor for IconView.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_2E28(v20 + *(v19 + 36), &v15[*(v13 + 24)], &qword_71B00, &unk_593C0);
      *v15 = swift_getKeyPath();
      v15[8] = 0;
      sub_43188(v15, v36, type metadata accessor for IconView);
      swift_storeEnumTagMultiPayload();
      sub_431F0(&qword_73008, type metadata accessor for IconView, &unk_5AC40);
      sub_56ABC();

      return sub_43238(v15, type metadata accessor for IconView);
    }

    (*(v22 + 8))(v18, v21);
  }

  v25 = v20;
  sub_2E28(v20 + *(v19 + 32), v6, &qword_71B00, &unk_593C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2E90(v6, &qword_71B00, &unk_593C0);
    sub_33A2C();
    v26 = v30;
    sub_572CC();
    v27 = v33;
    sub_5727C();
    (*(v31 + 8))(v26, v32);
    v28 = *(v8 + 32);
  }

  else
  {
    v28 = *(v8 + 32);
    v27 = v33;
    v28(v33, v6, v7);
  }

  v29 = v34;
  v28(v34, v27, v7);
  (*(v8 + 16))(&v15[*(v13 + 20)], v29, v7);
  type metadata accessor for IconView.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2E28(v25 + *(v19 + 36), &v15[*(v13 + 24)], &qword_71B00, &unk_593C0);
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  sub_43188(v15, v36, type metadata accessor for IconView);
  swift_storeEnumTagMultiPayload();
  sub_431F0(&qword_73008, type metadata accessor for IconView, &unk_5AC40);
  sub_56ABC();
  sub_43238(v15, type metadata accessor for IconView);
  return (*(v8 + 8))(v29, v7);
}

uint64_t sub_36334@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = sub_2AFC(&qword_72FC8, &qword_5AA48);
  __chkstk_darwin(v60);
  v5 = &v58 - v4;
  v61 = sub_2AFC(&qword_72FD0, &qword_5AA50);
  __chkstk_darwin(v61);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v58 - v8;
  __chkstk_darwin(v9);
  v67 = &v58 - v10;
  type metadata accessor for BalloonView(0);
  v87 = sub_573AC();
  v88 = v11;
  sub_2B4C();
  v12 = sub_56E0C();
  v64 = v13;
  v65 = v12;
  v15 = v14;
  v66 = v16;
  KeyPath = swift_getKeyPath();
  v63 = swift_getKeyPath();
  v72 = v15 & 1;
  LOBYTE(v87) = v15 & 1;
  LOBYTE(v74) = 1;
  if (qword_715F8 != -1)
  {
    swift_once();
  }

  v17 = qword_75810;
  v70 = swift_getKeyPath();
  v18 = objc_opt_self();
  v71 = v17;

  v59 = v18;
  v19 = [v18 labelColor];
  v69 = sub_56F5C();
  sub_571EC();
  sub_567CC();
  v87 = sub_36A0C(a1);
  v88 = v20;
  v21 = sub_56E0C();
  v23 = v22;
  v25 = v24;
  v58 = v26;
  v27 = swift_getKeyPath();
  v28 = &v5[*(sub_2AFC(&qword_72FD8, &qword_5AA88) + 36)];
  v29 = *(sub_2AFC(&qword_72FE0, &qword_5AA90) + 28);
  v30 = enum case for Text.TruncationMode.tail(_:);
  v31 = sub_56D9C();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v5 = v21;
  *(v5 + 1) = v23;
  v5[16] = v25 & 1;
  *(v5 + 3) = v58;
  *(v5 + 4) = v27;
  *(v5 + 5) = 1;
  v5[48] = 0;
  if (qword_71600 != -1)
  {
    swift_once();
  }

  v32 = qword_75818;
  v33 = swift_getKeyPath();
  v34 = &v5[*(sub_2AFC(&qword_72FE8, &qword_5AAC8) + 36)];
  *v34 = v33;
  v34[1] = v32;

  v35 = [v59 secondaryLabelColor];
  *&v5[*(v60 + 36)] = sub_56F5C();
  sub_571EC();
  sub_567CC();
  v36 = v62;
  sub_B0DC(v5, v62, &qword_72FC8, &qword_5AA48);
  v37 = (v36 + *(v61 + 36));
  v38 = v119[3];
  v39 = v119[5];
  v37[4] = v119[4];
  v37[5] = v39;
  v37[6] = v119[6];
  v40 = v119[1];
  *v37 = v119[0];
  v37[1] = v40;
  v37[2] = v119[2];
  v37[3] = v38;
  v41 = v67;
  sub_B0DC(v36, v67, &qword_72FD0, &qword_5AA50);
  v42 = v68;
  sub_2E28(v41, v68, &qword_72FD0, &qword_5AA50);
  v44 = v64;
  v43 = v65;
  *&v74 = v65;
  *(&v74 + 1) = v64;
  LOBYTE(v75) = v72;
  *(&v75 + 1) = *v118;
  DWORD1(v75) = *&v118[3];
  v45 = v66;
  *(&v75 + 1) = v66;
  v76 = KeyPath;
  LOBYTE(v77) = 1;
  *(&v77 + 1) = *v117;
  DWORD1(v77) = *&v117[3];
  v46 = v63;
  *(&v77 + 1) = v63;
  LOBYTE(v78) = 0;
  DWORD1(v78) = *&v116[3];
  *(&v78 + 1) = *v116;
  *(&v78 + 1) = v70;
  *&v79 = v71;
  *(&v79 + 1) = v69;
  v84 = v113;
  v85 = v114;
  v86 = v115;
  v47 = v109;
  v80 = v109;
  v81 = v110;
  v48 = v112;
  v82 = v111;
  v83 = v112;
  v49 = v79;
  a2[4] = v78;
  a2[5] = v49;
  v50 = v81;
  v51 = v82;
  a2[6] = v47;
  a2[7] = v50;
  v52 = v77;
  a2[2] = v76;
  a2[3] = v52;
  v53 = v75;
  *a2 = v74;
  a2[1] = v53;
  v54 = v86;
  a2[11] = v85;
  a2[12] = v54;
  v55 = v84;
  a2[9] = v48;
  a2[10] = v55;
  a2[8] = v51;
  v56 = a2 + *(sub_2AFC(&qword_72FF0, &qword_5AAD0) + 48);
  sub_2E28(v42, v56, &qword_72FD0, &qword_5AA50);
  sub_2E28(&v74, &v87, &qword_72FF8, &qword_5AAD8);
  sub_2E90(v41, &qword_72FD0, &qword_5AA50);
  sub_2E90(v42, &qword_72FD0, &qword_5AA50);
  v87 = v43;
  v88 = v44;
  v89 = v72;
  *v90 = *v118;
  *&v90[3] = *&v118[3];
  v91 = v45;
  v92 = KeyPath;
  v93 = 0;
  v94 = 1;
  *v95 = *v117;
  *&v95[3] = *&v117[3];
  v96 = v46;
  v97 = 0;
  *&v98[3] = *&v116[3];
  *v98 = *v116;
  v99 = v70;
  v100 = v71;
  v101 = v69;
  v106 = v113;
  v107 = v114;
  v108 = v115;
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v105 = v112;
  return sub_2E90(&v87, &qword_72FF8, &qword_5AAD8);
}

uint64_t sub_36A0C(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView(0);
  v3 = *(a1 + *(v2 + 28));
  if (v3)
  {
    v4 = sub_5722C();
    v6 = v5;
    v7 = a1 + *(v2 + 48);
    v8 = (v7 + *(type metadata accessor for MessagesContext(0) + 32));
    if (v4 == *v8 && v6 == v8[1])
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_57B8C();
    }

    v12 = v3;
    v11 = sub_13744(v10 & 1, 0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    if (v15 != 255)
    {
      if ((v15 & 1) == 0)
      {
        v11 = sub_13744(0, 0);
        sub_BCE4(v14, v15);
        return v11;
      }

      sub_BCE4(v14, v15);
    }

    if (sub_33B78())
    {
      return 0x2074736575716552;
    }

    else
    {
      return sub_573BC();
    }
  }

  return v11;
}

uint64_t sub_36BC0@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v120 = sub_2AFC(&qword_72E60, &qword_5A808);
  __chkstk_darwin(v120);
  v122 = &v97 - v2;
  v132 = sub_2AFC(&qword_72E18, &qword_5A7E0);
  __chkstk_darwin(v132);
  v123 = &v97 - v3;
  v99 = sub_2AFC(&qword_72E68, &qword_5A810);
  __chkstk_darwin(v99);
  v100 = &v97 - v4;
  v106 = type metadata accessor for BalloonView(0);
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v108 = v5;
  v109 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2AFC(&qword_72E40, &qword_5A7F8);
  v111 = *(v119 - 8);
  __chkstk_darwin(v119);
  v110 = &v97 - v6;
  v121 = sub_2AFC(&qword_72E70, &qword_5A818);
  v112 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v97 - v7;
  v104 = sub_2AFC(&qword_72E38, &qword_5A7F0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v98 = &v97 - v8;
  v118 = sub_2AFC(&qword_72E28, &qword_5A7E8);
  __chkstk_darwin(v118);
  v105 = &v97 - v9;
  v115 = sub_2AFC(&qword_72E08, &qword_5A7D8);
  __chkstk_darwin(v115);
  v102 = (&v97 - v10);
  v113 = sub_2AFC(&qword_72E78, &qword_5A820);
  __chkstk_darwin(v113);
  v12 = &v97 - v11;
  v127 = sub_2AFC(&qword_72DF8, &qword_5A7D0);
  __chkstk_darwin(v127);
  v14 = &v97 - v13;
  v129 = sub_2AFC(&qword_72E80, &qword_5A828);
  __chkstk_darwin(v129);
  v131 = &v97 - v15;
  v124 = sub_2AFC(&qword_72E88, &qword_5A830);
  __chkstk_darwin(v124);
  v126 = &v97 - v16;
  v114 = sub_2AFC(&qword_72E90, &qword_5A838);
  __chkstk_darwin(v114);
  v18 = &v97 - v17;
  v125 = sub_2AFC(&qword_72DC8, &qword_5A7B8);
  __chkstk_darwin(v125);
  v116 = &v97 - v19;
  v130 = sub_2AFC(&qword_72DB8, &qword_5A7B0);
  __chkstk_darwin(v130);
  v128 = &v97 - v20;
  v21 = sub_2AFC(&qword_72DE8, &qword_5A7C8);
  v101 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v97 - v22;
  v24 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v24 - 8);
  v26 = (&v97 - v25);
  v27 = sub_2AFC(&qword_72DD8, &qword_5A7C0);
  __chkstk_darwin(v27);
  v29 = &v97 - v28;
  v30 = v1;
  v31 = sub_33DE4();
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v47 = sub_5697C();
      v48 = v102;
      *v102 = v47;
      *(v48 + 8) = 0x4024000000000000;
      *(v48 + 16) = 0;
      v49 = sub_2AFC(&qword_72EA8, &qword_5A848);
      sub_3AFE0(v1, (v48 + *(v49 + 44)));
      v50 = &qword_72E08;
      v51 = &qword_5A7D8;
      sub_2E28(v48, v12, &qword_72E08, &qword_5A7D8);
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8, &protocol conformance descriptor for HStack<A>);
      sub_56ABC();
      sub_2E28(v14, v126, &qword_72DF8, &qword_5A7D0);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v52 = v128;
      sub_56ABC();
      sub_2E90(v14, &qword_72DF8, &qword_5A7D0);
      sub_2E28(v52, v131, &qword_72DB8, &qword_5A7B0);
      swift_storeEnumTagMultiPayload();
      sub_419B0();
      sub_41C30();
      sub_56ABC();
      sub_2E90(v52, &qword_72DB8, &qword_5A7B0);
      v53 = v48;
LABEL_34:
      v78 = v50;
      v79 = v51;
      return sub_2E90(v53, v78, v79);
    }

    if (v31 != 4)
    {
      v54 = v109;
      sub_43188(v1, v109, type metadata accessor for BalloonView);
      v55 = (*(v107 + 80) + 16) & ~*(v107 + 80);
      v56 = swift_allocObject();
      sub_41488(v54, v56 + v55);
      sub_2AFC(&qword_72E98, &qword_5A840);
      sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840, &protocol conformance descriptor for HStack<A>);
      v57 = v110;
      sub_570DC();
      v58 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
      v59 = sub_41EF8();
      v60 = v117;
      v61 = v119;
      sub_56E4C();
      (*(v111 + 8))(v57, v61);
      v62 = v112;
      v63 = v121;
      (*(v112 + 16))(v122, v60, v121);
      swift_storeEnumTagMultiPayload();
      sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
      v134 = v61;
      v135 = &type metadata for BalloonButtonStyle;
      v136 = v58;
      v137 = v59;
      swift_getOpaqueTypeConformance2();
      v64 = v123;
      sub_56ABC();
      sub_2E28(v64, v131, &qword_72E18, &qword_5A7E0);
      swift_storeEnumTagMultiPayload();
      sub_419B0();
      sub_41C30();
      sub_56ABC();
      sub_2E90(v64, &qword_72E18, &qword_5A7E0);
      return (*(v62 + 8))(v60, v63);
    }

    v37 = v1;
    v38 = sub_3C68C(v1);
    v39 = v121;
    v40 = v119;
    v41 = v117;
    if (v38)
    {
      v42 = sub_5721C();
      sub_564CC();

      v43 = sub_564BC();
      if (v43 == sub_564BC())
      {
        v44 = v105;
        (*(v103 + 56))(v105, 1, 1, v104);
LABEL_33:
        v50 = &qword_72E28;
        v51 = &qword_5A7E8;
        sub_2E28(v44, v122, &qword_72E28, &qword_5A7E8);
        swift_storeEnumTagMultiPayload();
        sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
        v94 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
        v95 = sub_41EF8();
        v134 = v40;
        v135 = &type metadata for BalloonButtonStyle;
        v136 = v94;
        v137 = v95;
        swift_getOpaqueTypeConformance2();
        v96 = v123;
        sub_56ABC();
        sub_2E28(v96, v131, &qword_72E18, &qword_5A7E0);
        swift_storeEnumTagMultiPayload();
        sub_419B0();
        sub_41C30();
        sub_56ABC();

        sub_2E90(v96, &qword_72E18, &qword_5A7E0);
        v53 = v44;
        goto LABEL_34;
      }
    }

    v66 = sub_5643C();
    v67 = sub_5640C();
    v69 = v68;

    if (v67 == 0xD00000000000002DLL && 0x800000000005BFB0 == v69)
    {
    }

    else
    {
      v73 = sub_57B8C();

      if ((v73 & 1) == 0)
      {
LABEL_30:
        v81 = v109;
        sub_43188(v37, v109, type metadata accessor for BalloonView);
        v82 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v83 = swift_allocObject();
        sub_41488(v81, v83 + v82);
        sub_2AFC(&qword_72E98, &qword_5A840);
        sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840, &protocol conformance descriptor for HStack<A>);
        v84 = v110;
        sub_570DC();
        v85 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
        v86 = sub_41EF8();
        sub_56E4C();
        (*(v111 + 8))(v84, v40);
        v87 = v112;
        (*(v112 + 16))(v100, v41, v39);
        swift_storeEnumTagMultiPayload();
        v134 = v40;
LABEL_32:
        v135 = &type metadata for BalloonButtonStyle;
        v136 = v85;
        v137 = v86;
        swift_getOpaqueTypeConformance2();
        v93 = v98;
        sub_56ABC();
        (*(v87 + 8))(v41, v39);
        v44 = v105;
        sub_B0DC(v93, v105, &qword_72E38, &qword_5A7F0);
        (*(v103 + 56))(v44, 0, 1, v104);
        goto LABEL_33;
      }
    }

    v74 = sub_5762C();
    if (v75)
    {
      if (v74 == 0xD000000000000013 && v75 == 0x800000000005BFE0)
      {

        goto LABEL_30;
      }

      v80 = sub_57B8C();

      if (v80)
      {
        goto LABEL_30;
      }
    }

    v88 = v109;
    sub_43188(v37, v109, type metadata accessor for BalloonView);
    v89 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v90 = swift_allocObject();
    v91 = sub_41488(v88, v90 + v89);
    v128 = &v97;
    __chkstk_darwin(v91);
    *(&v97 - 2) = v37;
    sub_2AFC(&qword_72E98, &qword_5A840);
    sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840, &protocol conformance descriptor for HStack<A>);
    v92 = v110;
    sub_570DC();
    v85 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
    v86 = sub_41EF8();
    sub_56E4C();
    (*(v111 + 8))(v92, v40);
    v87 = v112;
    (*(v112 + 16))(v100, v41, v39);
    swift_storeEnumTagMultiPayload();
    v134 = v40;
    goto LABEL_32;
  }

  if (v31)
  {
    if (v31 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_41AC8();
      v32 = v116;
      sub_56ABC();
      v33 = &qword_72DC8;
      v34 = &qword_5A7B8;
      sub_2E28(v32, v126, &qword_72DC8, &qword_5A7B8);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v35 = v128;
      sub_56ABC();
      v36 = v32;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8, &protocol conformance descriptor for HStack<A>);
      sub_56ABC();
      v33 = &qword_72DF8;
      v34 = &qword_5A7D0;
      sub_2E28(v14, v126, &qword_72DF8, &qword_5A7D0);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v35 = v128;
      sub_56ABC();
      v36 = v14;
    }

    sub_2E90(v36, v33, v34);
    v50 = &qword_72DB8;
    v51 = &qword_5A7B0;
    sub_2E28(v35, v131, &qword_72DB8, &qword_5A7B0);
    swift_storeEnumTagMultiPayload();
    sub_419B0();
    sub_41C30();
    sub_56ABC();
    v53 = v35;
    goto LABEL_34;
  }

  sub_5630C();
  v45 = sub_5636C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v26, 1, v45) == 1)
  {
    sub_2E90(v26, &qword_71A10, &qword_5A5A0);
LABEL_27:
    v72 = 1;
    goto LABEL_28;
  }

  if ((*(v46 + 88))(v26, v45) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v46 + 8))(v26, v45);
    goto LABEL_27;
  }

  (*(v46 + 96))(v26, v45);
  v70 = *v26;
  *v23 = sub_5697C();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v71 = sub_2AFC(&qword_72EB0, &qword_5A850);
  sub_3A0F0(v30, v70, &v23[*(v71 + 44)]);

  sub_B0DC(v23, v29, &qword_72DE8, &qword_5A7C8);
  v72 = 0;
LABEL_28:
  (*(v101 + 56))(v29, v72, 1, v21);
  sub_2E28(v29, v18, &qword_72DD8, &qword_5A7C0);
  swift_storeEnumTagMultiPayload();
  sub_41AC8();
  v76 = v116;
  sub_56ABC();
  sub_2E28(v76, v126, &qword_72DC8, &qword_5A7B8);
  swift_storeEnumTagMultiPayload();
  sub_41A3C();
  sub_41B78();
  v77 = v128;
  sub_56ABC();
  sub_2E90(v76, &qword_72DC8, &qword_5A7B8);
  sub_2E28(v77, v131, &qword_72DB8, &qword_5A7B0);
  swift_storeEnumTagMultiPayload();
  sub_419B0();
  sub_41C30();
  sub_56ABC();
  sub_2E90(v77, &qword_72DB8, &qword_5A7B0);
  v53 = v29;
  v78 = &qword_72DD8;
  v79 = &qword_5A7C0;
  return sub_2E90(v53, v78, v79);
}

void sub_38420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BalloonView(0);
  sub_43188(a3 + *(v7 + 48), v6, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v6, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong requestResize];
  }
}

double sub_38504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalloonView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v29 - v9);
  sub_5630C();
  v11 = sub_5636C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2E90(v10, &qword_71A10, &qword_5A5A0);
LABEL_6:
    v20 = sub_575FC();
    v22 = v21;
    sub_43188(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
    v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v24 = swift_allocObject();
    sub_41488(v7, v24 + v23);
    v30 = &_swiftEmptyArrayStorage;
    sub_2AFC(&qword_72D70, &qword_5AF60);
    sub_5707C();
    v30 = v20;
    v31 = v22;
    v32 = v36;
    v33 = sub_417B0;
    v34 = v24;
    v35 = 1;
    sub_415E0();
    sub_56ABC();
    goto LABEL_7;
  }

  if ((*(v12 + 88))(v10, v11) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v12 + 8))(v10, v11);
    goto LABEL_6;
  }

  (*(v12 + 96))(v10, v11);
  v13 = *v10;
  v14 = sub_575FC();
  v16 = v15;
  v17 = sub_574AC();
  sub_43188(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_41488(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v30 = v17;
  sub_2AFC(&qword_72D70, &qword_5AF60);
  sub_5707C();
  v30 = v14;
  v31 = v16;
  v32 = v36;
  v33 = sub_43708;
  v34 = v19;
  v35 = 0;
  sub_415E0();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  sub_56ABC();

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_7:
  result = *&v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  *a2 = v36;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_38944(void *a1)
{
  v2 = type metadata accessor for BalloonView(0);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v5 = sub_562FC();
    sub_B144(v5, qword_75758);
    sub_43188(v27, v4, type metadata accessor for BalloonView);

    v6 = sub_562DC();
    v7 = sub_5794C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v8 = 138412802;
      v9 = &v4[*(v2 + 48)];
      v10 = *(v9 + 1);
      if (v10)
      {
        HIDWORD(v25) = v7;
        v11 = *v9;
        sub_B8D8();
        swift_allocError();
        *v12 = v11;
        v12[1] = v10;
        LOBYTE(v7) = BYTE4(v25);

        v10 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_43238(v4, type metadata accessor for BalloonView);
      *(v8 + 4) = v10;
      v13 = v26;
      *v26 = v10;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_293C0(0xD000000000000025, 0x800000000005CC10, v29);
      *(v8 + 22) = 2080;
      sub_5748C();
      v14 = sub_5785C();
      v16 = sub_293C0(v14, v15, v29);

      *(v8 + 24) = v16;
      _os_log_impl(&dword_0, v6, v7, "%@: %s called. contacts: %s", v8, 0x20u);
      sub_2E90(v13, &qword_71828, &qword_598B0);

      swift_arrayDestroy();
    }

    else
    {

      sub_43238(v4, type metadata accessor for BalloonView);
    }

    sub_3F9E8(a1);
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v17 = sub_562FC();
    sub_B144(v17, qword_75758);
    v18 = sub_562DC();
    v19 = sub_5794C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "BalloonView.updatePayload. User Cancelled. Skipping", v20, 2u);
    }
  }

  v21 = (v27 + *(v2 + 68));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v29[0]) = v22;
  v29[1] = v23;
  v28 = 0;
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

uint64_t sub_38D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BalloonView(0);
  v27 = *(v4 - 1);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v25 - v10);
  v12 = *(a1 + v4[14]);
  v13 = sub_5763C();
  sub_5630C();

  v14 = sub_5636C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_2E90(v11, &qword_71A10, &qword_5A5A0);
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  if ((*(v15 + 88))(v11, v14) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v15 + 8))(v11, v14);
    goto LABEL_6;
  }

  (*(v15 + 96))(v11, v14);
  v26 = *v11;
  sub_43188(a1 + v4[12], v8, type metadata accessor for MessagesContext);
  v16 = (a1 + v4[20]);
  v18 = *v16;
  v17 = v16[1];
  v29 = v18;
  v30 = v17;
  v19 = v12;
  sub_2AFC(&qword_72D68, &qword_5A748);
  sub_5708C();
  v20 = v28;
  swift_getKeyPath();
  v29 = v20;
  sub_431F0(&qword_71A58, type metadata accessor for ManageContactsSetting, &unk_5A4C8);
  sub_561FC();

  v21 = *(v20 + 24);

  sub_43188(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_41488(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  result = sub_9D34(v26, v8, v19, v21, sub_41798, v23);
LABEL_7:
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_39104(uint64_t a1)
{
  type metadata accessor for BalloonView(0);
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

void sub_39174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v8 = type metadata accessor for BalloonView(0);
  v9 = (a2 + *(v8 + 48));
  v11 = *v9;
  v10 = v9[1];
  if (a1)
  {
    v12 = v8;
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v13 = sub_562FC();
    sub_B144(v13, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v7, 1);
    v14 = sub_562DC();
    v15 = sub_5792C();

    sub_BCFC(v7, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      if (v10)
      {
        sub_B8D8();
        swift_allocError();
        *v18 = v11;
        v18[1] = v10;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v29;
      v17[1] = v29;
      _os_log_impl(&dword_0, v14, v15, "%@: Error sending response: %@", v16, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = (a2 + *(v12 + 76));
    v31 = *v30;
    v32 = *(v30 + 1);
    v35[16] = v31;
    v36 = v32;
    v35[15] = 1;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_5709C();
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v21 = sub_562FC();
    sub_B144(v21, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v7, 0);
    v22 = sub_562DC();
    v23 = sub_5794C();

    sub_BCFC(v7, 0);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      if (v10)
      {
        sub_B8D8();
        swift_allocError();
        *v26 = v11;
        v26[1] = v10;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v7;
      *v25 = v28;
      v25[1] = v7;
      v33 = v7;
      _os_log_impl(&dword_0, v22, v23, "%@: Successfully sent response: %@", v24, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_43188(v9, v6, type metadata accessor for MessagesContext);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_43238(v6, type metadata accessor for MessagesContext);
    if (Strong)
    {
      [Strong requestResize];
    }
  }
}

uint64_t sub_395F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = type metadata accessor for BalloonView(0);
  v45 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v46 = v3;
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2AFC(&qword_71F68, &unk_59540);
  __chkstk_darwin(v4 - 8);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v40 - v7;
  v8 = sub_5605C();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_561CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = sub_5773C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v25 = sub_5606C();
  v43 = *(v25 - 8);
  v44 = v25;
  __chkstk_darwin(v25);
  v52 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  v27 = sub_5796C();
  if (!v27)
  {
    v27 = [objc_opt_self() mainBundle];
  }

  v28 = v27;
  sub_561BC();
  (*(v19 + 16))(v21, v24, v18);
  (*(v12 + 16))(v14, v17, v11);
  v29 = [v28 bundleURL];
  v40 = v18;
  v30 = v11;
  v31 = v29;
  sub_560AC();

  (*(v41 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v42);
  sub_5607C();

  (*(v12 + 8))(v17, v30);
  (*(v19 + 8))(v24, v40);
  v32 = v50;
  sub_5666C();
  v33 = sub_5667C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v47;
  sub_43188(v48, v47, type metadata accessor for BalloonView);
  v35 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v36 = swift_allocObject();
  sub_41488(v34, v36 + v35);
  v37 = sub_2E28(v32, v49, &qword_71F68, &unk_59540);
  __chkstk_darwin(v37);
  v38 = v52;
  *(&v40 - 2) = v52;
  sub_570CC();
  sub_2E90(v32, &qword_71F68, &unk_59540);
  return (*(v43 + 8))(v38, v44);
}

uint64_t sub_39C10(uint64_t a1)
{
  type metadata accessor for BalloonView(0);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_5709C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_39CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  __chkstk_darwin(v4 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v6 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v7 = sub_57BDC();
    v9 = v8;
    sub_BCFC(v5, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_569CC();
  v18._object = 0x800000000005C540;
  v18._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v18);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    sub_577DC(v19);

    v11._countAndFlagsBits = 32;
    v12 = 0xE100000000000000;
  }

  else
  {

    v11._countAndFlagsBits = 0;
    v12 = 0xE000000000000000;
  }

  v11._object = v12;
  sub_569AC(v11);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_569BC(v20);
  sub_569FC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

void *sub_39F3C()
{
  v0 = sub_5748C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &_swiftEmptyArrayStorage;
  v4 = sub_574AC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = *(v1 + 16);
    v6 = v1 + 16;
    v7 = v8;
    v9 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v16[2] = v4;
    v10 = v4 + v9;
    v11 = *(v6 + 56);
    do
    {
      v7(v3, v10, v0);
      v12 = sub_311D8();
      (*(v6 - 8))(v3, v0);
      v13 = v12;
      sub_5782C();
      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v16[1] = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
        sub_5786C();
      }

      sub_5787C();

      v10 += v11;
      --v5;
    }

    while (v5);
    v14 = v17;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v14;
}

uint64_t sub_3A0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v42 = a3;
  v3 = sub_56B0C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BalloonView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_2AFC(&qword_72EB8, &qword_5A858);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v41 = sub_2AFC(&qword_72EC0, &qword_5A860);
  __chkstk_darwin(v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  sub_43188(v39, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_41488(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v43 = v40;
  sub_2AFC(&qword_72EC8, &qword_5A868);
  sub_41FBC();
  sub_570DC();
  if (qword_715F8 != -1)
  {
    swift_once();
  }

  v20 = qword_75810;
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v10 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;

  sub_56AFC();
  sub_42150();
  sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  sub_56E4C();
  (*(v4 + 8))(v6, v3);
  sub_2E90(v12, &qword_72EB8, &qword_5A858);
  v23 = &v17[*(sub_2AFC(&qword_72F08, &qword_5A8C0) + 36)];
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_56A0C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  v26 = objc_opt_self();
  v27 = [v26 quaternarySystemFillColor];
  v28 = sub_56F5C();
  v29 = sub_2AFC(&qword_72F10, &qword_5A8C8);
  *&v23[*(v29 + 52)] = v28;
  *&v23[*(v29 + 56)] = 256;
  v30 = sub_571DC();
  v32 = v31;
  v33 = &v23[*(sub_2AFC(&qword_72F18, &qword_5A8D0) + 36)];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v26 systemBlueColor];
  *&v17[*(v41 + 36)] = sub_56F5C();
  sub_2E28(v17, v14, &qword_72EC0, &qword_5A860);
  v35 = v42;
  *v42 = 0;
  *(v35 + 8) = 0;
  v36 = sub_2AFC(&qword_72F20, &qword_5A8D8);
  sub_2E28(v14, v35 + *(v36 + 48), &qword_72EC0, &qword_5A860);
  v37 = v35 + *(v36 + 64);
  *v37 = 0;
  v37[8] = 0;
  sub_2E90(v17, &qword_72EC0, &qword_5A860);
  return sub_2E90(v14, &qword_72EC0, &qword_5A860);
}

uint64_t sub_3A628(uint64_t a1)
{
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v1 = sub_562FC();
  sub_B144(v1, qword_75758);
  v2 = sub_562DC();
  v3 = sub_5794C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Add/Edit Name button tapped", v4, 2u);
  }

  type metadata accessor for BalloonView(0);
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

uint64_t sub_3A758@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_5606C();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v39 - v4;
  v5 = sub_5748C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_574AC();
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  v13 = (v6 + 8);
  while (1)
  {
    v14 = v11;
    if (v12 == v11)
    {
      goto LABEL_7;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
    sub_5745C();
    if (v15)
    {

      (*v13)(v8, v5);
      goto LABEL_9;
    }

    ++v11;
    sub_5743C();
    v17 = v16;
    result = (*v13)(v8, v5);
    if (v17)
    {

LABEL_7:

LABEL_9:
      v18 = v43;
      v19 = v39;
      sub_3AB2C(v12 != v14, v39);
      v21 = v40;
      v20 = v41;
      (*(v40 + 16))(v18, v19, v41);
      v22 = sub_56DFC();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = sub_56CAC();
      sub_5668C();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      (*(v21 + 8))(v19, v20);
      v45 = v26 & 1;
      v44 = 0;
      result = swift_getKeyPath();
      v46 = 1;
      v38 = v42;
      *v42 = v22;
      v38[1] = v24;
      *(v38 + 16) = v26 & 1;
      v38[3] = v28;
      *(v38 + 32) = v29;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v35;
      v38[8] = v37;
      *(v38 + 72) = 0;
      v38[10] = result;
      v38[11] = 0;
      *(v38 + 96) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3AA80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_3AB2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_5605C();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_561CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_5773C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  v33 = v22;
  if (a1)
  {
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v23 = sub_5796C();
    if (!v23)
    {
      v23 = [objc_opt_self() mainBundle];
    }

    v24 = v23;
    sub_561BC();
    (*(v13 + 16))(v18, v21, v12);
    (*(v6 + 16))(v8, v11, v5);
    v25 = v11;
    v26 = v6;
    v27 = [v24 bundleURL];
    v28 = v34;
    sub_560AC();

    (*(v35 + 104))(v28, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v36);
  }

  else
  {
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v29 = sub_5796C();
    if (!v29)
    {
      v29 = [objc_opt_self() mainBundle];
    }

    v24 = v29;
    sub_561BC();
    (*(v13 + 16))(v18, v15, v12);
    (*(v6 + 16))(v8, v11, v5);
    v30 = [v24 bundleURL];
    v25 = v11;
    v26 = v6;
    v31 = v34;
    sub_560AC();

    (*(v35 + 104))(v31, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v36);
    v21 = v15;
  }

  sub_5607C();

  (*(v26 + 8))(v25, v5);
  return (*(v13 + 8))(v21, v33);
}

uint64_t sub_3AFE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for BalloonView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = v5;
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2AFC(&qword_72F30, &qword_5A918);
  __chkstk_darwin(v49);
  v8 = v40 - v7;
  v9 = sub_2AFC(&qword_72F38, &qword_5A920);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = v40 - v12;
  __chkstk_darwin(v13);
  v45 = v40 - v14;
  __chkstk_darwin(v15);
  v50 = v40 - v16;
  v43 = type metadata accessor for BalloonView;
  v41 = v6;
  sub_43188(a1, v6, type metadata accessor for BalloonView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_41488(v6, v18 + v17);
  v40[2] = sub_2AFC(&qword_72F40, &qword_5A928);
  v40[1] = sub_3260(&qword_72F48, &qword_72F40, &qword_5A928, &protocol conformance descriptor for HStack<A>);
  sub_570DC();
  v19 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v20 = v52;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = &v8[*(v49 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_42274;
  v23[2] = v22;
  sub_4227C();
  sub_41EF8();
  sub_56E4C();
  sub_2E90(v8, &qword_72F30, &qword_5A918);
  v24 = v41;
  sub_43188(v19, v41, v43);
  v25 = swift_allocObject();
  sub_41488(v24, v25 + v17);
  sub_570DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v26 = v51;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = &v8[*(v49 + 36)];
  *v29 = v27;
  v29[1] = sub_4370C;
  v29[2] = v28;
  v30 = v45;
  sub_56E4C();
  sub_2E90(v8, &qword_72F30, &qword_5A918);
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v46;
  v34 = v50;
  v32(v46, v50, v9);
  v35 = v47;
  v32(v47, v30, v9);
  v36 = v48;
  v32(v48, v33, v9);
  v37 = sub_2AFC(&qword_72F68, &qword_5A9B8);
  v32(&v36[*(v37 + 48)], v35, v9);
  v38 = *(v31 + 8);
  v38(v30, v9);
  v38(v34, v9);
  v38(v35, v9);
  return (v38)(v33, v9);
}

void sub_3B5EC()
{
  if (qword_715B8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v0 = sub_562FC();
  sub_B144(v0, qword_75758);
  v1 = sub_562DC();
  v2 = sub_5794C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Decline button tapped", v3, 2u);
  }

  type metadata accessor for BalloonView(0);
  v4 = sub_5637C();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_57B1C();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_6:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_57AEC();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            sub_3B858(v13);
            goto LABEL_22;
          }
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        v13 = v8;
        sub_564CC();
        v10 = sub_564BC();
        if (v10 == sub_564BC())
        {
          goto LABEL_16;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  v13 = sub_562DC();
  v11 = sub_5792C();
  if (os_log_type_enabled(v13, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v13, v11, "The question did not contain a decline answer choice!", v12, 2u);
  }

LABEL_22:
}

void sub_3B858(void *a1)
{
  v69 = a1;
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v2 - 8);
  v63 = &v58 - v3;
  v68 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v68);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonView(0);
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = v6;
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v58 - v8;
  v9 = sub_5733C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5734C();
  v59 = *(v1 + *(v5 + 24));
  v13 = sub_5643C();
  (*(v10 + 104))(v12, enum case for ResponseJourney.Checkpoint.userDidInitiateMessagesTranscript(_:), v9);
  sub_431F0(&qword_720E0, &type metadata accessor for ResponseJourney, &protocol conformance descriptor for ResponseJourney);
  sub_575BC();

  (*(v10 + 8))(v12, v9);
  v14 = v1;
  v15 = (v1 + *(v5 + 48));
  v16 = *v15;
  v17 = v15[1];
  v64 = v5;
  v65 = v16;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v18 = sub_562FC();
  sub_B144(v18, qword_75758);
  v19 = v66;
  sub_43188(v1, v66, type metadata accessor for BalloonView);

  v20 = v69;
  v21 = sub_562DC();
  v22 = sub_5794C();
  v69 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412802;
    if (v17)
    {
      sub_B8D8();
      swift_allocError();
      *v25 = v65;
      v25[1] = v17;

      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v23 + 4) = v26;
    *(v23 + 12) = 2112;
    v28 = v69;
    *(v23 + 14) = v69;
    *v24 = v27;
    v24[1] = v28;
    *(v23 + 22) = 2112;
    v29 = v19;
    v30 = *(v19 + *(v64 + 24));
    v31 = v28;
    v32 = v30;
    sub_43238(v29, type metadata accessor for BalloonView);
    *(v23 + 24) = v32;
    v24[2] = v32;
    _os_log_impl(&dword_0, v21, v22, "%@: User selected answer choice. answerChoice: %@, question: %@", v23, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  else
  {

    sub_43238(v19, type metadata accessor for BalloonView);
  }

  v33 = v67;
  sub_43188(v15, v67, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v33, type metadata accessor for MessagesContext);
  if (Strong && (v35 = [Strong activeConversation], Strong, v35))
  {
    v36 = v59;
    v37 = [v35 senderAddress];
    sub_5778C();

    v38 = objc_allocWithZone(sub_5725C());
    v39 = v69;
    v40 = sub_5723C();
    v41 = sub_578CC();
    v42 = v63;
    (*(*(v41 - 8) + 56))(v63, 1, 1, v41);
    v43 = v62;
    sub_43188(v14, v62, type metadata accessor for BalloonView);
    sub_578AC();
    v44 = v40;
    v45 = v35;
    v46 = sub_5789C();
    v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v48 = (v61 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    *(v49 + 24) = &protocol witness table for MainActor;
    sub_41488(v43, v49 + v47);
    *(v49 + v48) = v44;
    *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
    sub_31894(0, 0, v42, &unk_5A9E0, v49);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v50 = v69;
    v44 = sub_562DC();
    v51 = sub_5792C();

    if (os_log_type_enabled(v44, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412546;
      if (v17)
      {
        sub_B8D8();
        swift_allocError();
        *v54 = v65;
        v54[1] = v17;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      *(v52 + 4) = v55;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v50;
      *v53 = v56;
      v53[1] = v50;
      v57 = v50;
      _os_log_impl(&dword_0, v44, v51, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v52, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_3C0A8(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView(0);
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v5 = sub_562FC();
  sub_B144(v5, qword_75758);
  sub_43188(a1, v4, type metadata accessor for BalloonView);
  v6 = sub_562DC();
  v7 = sub_5794C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = &v4[*(v2 + 48)];
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10;
      sub_B8D8();
      swift_allocError();
      *v13 = v12;
      v13[1] = v11;

      v11 = _swift_stdlib_bridgeErrorToNSError();
    }

    sub_43238(v4, type metadata accessor for BalloonView);
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v6, v7, "%@: Review button tapped", v8, 0xCu);
    sub_2E90(v9, &qword_71828, &qword_598B0);
  }

  else
  {

    sub_43238(v4, type metadata accessor for BalloonView);
  }

  v14 = (a1 + *(v2 + 72));
  v15 = *v14;
  v16 = *(v14 + 1);
  v18[16] = v15;
  v19 = v16;
  v18[15] = 1;
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

double sub_3C33C@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_5697C();
  v18 = 1;
  sub_3C4A4(&v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_2E28(&v19, &v10, &qword_72F70, &qword_5A9C0);
  sub_2E90(v25, &qword_72F70, &qword_5A9C0);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[32];
  *(a3 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a3 + 81) = *&v17[64];
  *(a3 + 97) = v6;
  *(a3 + 113) = *&v17[96];
  result = *v17;
  v8 = *&v17[16];
  *(a3 + 17) = *v17;
  *(a3 + 33) = v8;
  v9 = v18;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  *(a3 + 49) = v5;
  return result;
}

uint64_t sub_3C4A4@<X0>(uint64_t a3@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = sub_56DEC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_571DC();
  sub_566EC();
  *&v24 = v5;
  *(&v24 + 1) = v7;
  LOBYTE(v25) = v9 & 1;
  *(&v25 + 1) = v11;
  v12 = v21;
  v13 = v22;
  v26 = v21;
  v27 = v22;
  *&v19[39] = v21;
  v28 = v23;
  *&v19[71] = v23;
  *&v19[55] = v22;
  *&v19[23] = v25;
  *&v19[7] = v24;
  v14 = *v19;
  *(a3 + 25) = *&v19[16];
  *(a3 + 9) = v14;
  v15 = *&v19[48];
  v16 = *&v19[64];
  *(a3 + 88) = *&v19[79];
  *(a3 + 96) = 0;
  *(a3 + 73) = v16;
  v35 = v9 & 1;
  v20 = 1;
  v18[80] = 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 57) = v15;
  *(a3 + 41) = *&v19[32];
  *(a3 + 104) = 1;
  v29[0] = v5;
  v29[1] = v7;
  v30 = v9 & 1;
  v31 = v11;
  v34 = v23;
  v33 = v13;
  v32 = v12;
  sub_2E28(&v24, v18, &qword_72F78, &unk_5A9C8);
  return sub_2E90(v29, &qword_72F78, &unk_5A9C8);
}

void *sub_3C68C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for BalloonView(0) + 28));
  v2 = v1;
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    if (v6 == 255)
    {
LABEL_5:
      v2 = 0;
      goto LABEL_6;
    }

    v2 = v5;
    if (v6)
    {
      sub_BCE4(v5, v6);
      goto LABEL_5;
    }
  }

LABEL_6:
  v3 = v1;
  return v2;
}

void sub_3C74C(uint64_t a1)
{
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v2 = sub_562FC();
  sub_B144(v2, qword_75758);
  v3 = sub_562DC();
  v4 = sub_5794C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Open in X button tapped", v5, 2u);
  }

  v6 = (a1 + *(type metadata accessor for BalloonView(0) + 52));
  v7 = v6[1];
  if (v7)
  {
    sub_3C84C(*v6, v7);
  }
}

void sub_3C84C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = sub_5774C();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_42C30;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_40370;
    v9[3] = &unk_6F568;
    v8 = _Block_copy(v9);

    [v5 openApplicationWithBundleIdentifier:v6 configuration:0 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

double sub_3C980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5697C();
  v22 = 1;
  sub_3CAE0(a1, &v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_2E28(&v23, &v11, &qword_72F80, &unk_5A9E8);
  sub_2E90(v32, &qword_72F80, &unk_5A9E8);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_3CAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  __chkstk_darwin(v4 - 8);
  v5 = (a1 + *(type metadata accessor for BalloonView(0) + 52));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = sub_3CE9C(v6, v7);
  v10 = v9;

  sub_569CC();
  v68._countAndFlagsBits = 0x206E69206E65704FLL;
  v68._object = 0xE800000000000000;
  sub_569BC(v68);
  if (v10)
  {
    v11._countAndFlagsBits = v8;
  }

  else
  {
    v11._countAndFlagsBits = 7368769;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v11._object = v12;
  sub_569AC(v11);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  sub_569BC(v69);
  sub_569FC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = sub_56DEC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_56CAC();
  sub_5668C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v18 &= 1u;
  v65 = v18;
  v62 = 0;
  KeyPath = swift_getKeyPath();
  v66 = 1;
  v38 = 1;
  *&v39 = v14;
  *(&v39 + 1) = v16;
  LOBYTE(v40) = v18;
  *(&v40 + 1) = *v64;
  DWORD1(v40) = *&v64[3];
  *(&v40 + 1) = v20;
  LOBYTE(v41) = v21;
  *(&v41 + 1) = *v63;
  DWORD1(v41) = *&v63[3];
  *(&v41 + 1) = v23;
  *&v42 = v25;
  *(&v42 + 1) = v27;
  *&v43 = v29;
  BYTE8(v43) = 0;
  HIDWORD(v43) = *(v67 + 3);
  *(&v43 + 9) = v67[0];
  v44 = KeyPath;
  v45 = 0;
  v46 = 1;
  v37[103] = 1;
  *&v37[87] = KeyPath;
  *&v37[71] = v43;
  *&v37[55] = v42;
  *&v37[39] = v41;
  *&v37[23] = v40;
  *&v37[7] = v39;
  v36[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v31 = *&v37[48];
  *(a2 + 41) = *&v37[32];
  v32 = *v37;
  *(a2 + 25) = *&v37[16];
  *(a2 + 9) = v32;
  v33 = *&v37[64];
  v34 = *&v37[80];
  *(a2 + 105) = *&v37[96];
  *(a2 + 89) = v34;
  *(a2 + 73) = v33;
  *(a2 + 57) = v31;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v47[0] = v14;
  v47[1] = v16;
  v48 = v18;
  *&v49[3] = *&v64[3];
  *v49 = *v64;
  v50 = v20;
  v51 = v21;
  *&v52[3] = *&v63[3];
  *v52 = *v63;
  v53 = v23;
  v54 = v25;
  v55 = v27;
  v56 = v29;
  v57 = 0;
  *&v58[3] = *(v67 + 3);
  *v58 = v67[0];
  v59 = KeyPath;
  v60 = 0;
  v61 = 1;
  sub_2E28(&v39, v36, &qword_72EC8, &qword_5A868);
  return sub_2E90(v47, &qword_72EC8, &qword_5A868);
}

id sub_3CE9C(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result allApplications];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_D820(0, &qword_72F88, LSApplicationProxy_ptr);
  v6 = sub_5784C();

  v23 = v4;
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_57B1C();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_26:

    return 0;
  }

  v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_5:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_57AEC();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = [v9 bundleIdentifier];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = a2;
    v15 = sub_5778C();
    v17 = v16;

    if (v15 == a1 && v17 == v14)
    {
      break;
    }

    a2 = v14;
    v19 = sub_57B8C();

    if (v19)
    {
      goto LABEL_20;
    }

LABEL_6:

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_26;
    }
  }

LABEL_20:

  v20 = [v10 localizedName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_5778C();

    return v22;
  }

  return 0;
}

uint64_t sub_3D0EC()
{
  v0 = sub_2AFC(&qword_720F8, &unk_59710);
  __chkstk_darwin(v0 - 8);
  v86 = v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v85 = v80 - v3;
  __chkstk_darwin(v4);
  v92 = v80 - v5;
  __chkstk_darwin(v6);
  v8 = v80 - v7;
  v9 = sub_55DFC();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v88 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_55E9C();
  v87 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5748C();
  v15 = *(v14 - 8);
  v95 = v14;
  v96 = v15;
  __chkstk_darwin(v14);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v18 - 8);
  v20 = (v80 - v19);
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v21 = sub_562FC();
  v22 = sub_B144(v21, qword_75758);
  v23 = sub_562DC();
  v24 = sub_5794C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Open in Messages button tapped", v25, 2u);
  }

  type metadata accessor for BalloonView(0);
  sub_5630C();
  v26 = sub_5636C();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v20, 1, v26);
  v91 = v22;
  if (v28 == 1)
  {
    sub_2E90(v20, &qword_71A10, &qword_5A5A0);
LABEL_15:
    v45 = sub_562DC();
    v46 = sub_5792C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "Open in Messages button tapped, but there was no communication metadata", v47, 2u);
    }

    goto LABEL_18;
  }

  if ((*(v27 + 88))(v20, v26) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v27 + 8))(v20, v26);
    goto LABEL_15;
  }

  (*(v27 + 96))(v20, v26);
  v29 = *v20;
  v30 = sub_574AC();
  v31 = *(v30 + 16);
  if (!v31)
  {

LABEL_18:
    v32 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v81 = v29;
  v82 = v8;
  v83 = v13;
  v84 = v11;
  v97 = &_swiftEmptyArrayStorage;
  sub_409E0(0, v31, 0);
  v32 = v97;
  v33 = v96[2];
  v34 = *(v96 + 80);
  v80[1] = v30;
  v35 = v30 + ((v34 + 32) & ~v34);
  v93 = v96[9];
  v94 = v33;
  v96 += 2;
  v36 = (v96 - 1);
  do
  {
    v37 = v95;
    v94(v17, v35, v95);
    v38 = sub_5747C();
    v39 = sub_573FC();
    v41 = v40;

    (*v36)(v17, v37);
    v97 = v32;
    v43 = v32[2];
    v42 = v32[3];
    if (v43 >= v42 >> 1)
    {
      sub_409E0((v42 > 1), v43 + 1, 1);
      v32 = v97;
    }

    v32[2] = v43 + 1;
    v44 = &v32[2 * v43];
    v44[4] = v39;
    v44[5] = v41;
    v35 += v93;
    --v31;
  }

  while (v31);

  v8 = v82;
  v13 = v83;
  v11 = v84;
LABEL_19:
  sub_55E8C();
  sub_55E7C();
  sub_55E6C();
  v97 = v32;
  sub_2AFC(&qword_72F90, &qword_5A9F8);
  sub_3260(&qword_72F98, &qword_72F90, &qword_5A9F8, &protocol conformance descriptor for [A]);
  sub_576AC();

  v48 = v88;
  sub_55DCC();

  v49 = sub_6BE0(0, 1, 1, &_swiftEmptyArrayStorage);
  v51 = v49[2];
  v50 = v49[3];
  if (v51 >= v50 >> 1)
  {
    v49 = sub_6BE0((v50 > 1), v51 + 1, 1, v49);
  }

  v49[2] = v51 + 1;
  (*(v89 + 32))(v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v51, v48, v90);

  sub_55E3C();
  sub_55E5C();
  v52 = v92;
  sub_2E28(v8, v92, &qword_720F8, &unk_59710);
  v53 = sub_562DC();
  v54 = sub_5794C();
  if (os_log_type_enabled(v53, v54))
  {
    v83 = v13;
    v84 = v11;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = v85;
    sub_2E28(v52, v85, &qword_720F8, &unk_59710);
    v58 = sub_560CC();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_2E90(v57, &qword_720F8, &unk_59710);
      sub_2E90(v92, &qword_720F8, &unk_59710);
      v60 = 0;
    }

    else
    {
      v61 = sub_5608C();
      v94 = v62;
      v95 = v61;
      sub_B8D8();
      swift_allocError();
      v96 = v56;
      v63 = v94;
      *v64 = v95;
      v64[1] = v63;
      (*(v59 + 8))(v57, v58);
      v56 = v96;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      sub_2E90(v92, &qword_720F8, &unk_59710);
    }

    v11 = v84;
    *(v55 + 4) = v60;
    *v56 = v60;
    _os_log_impl(&dword_0, v53, v54, "Attempting to open url to launch Messages %@", v55, 0xCu);
    sub_2E90(v56, &qword_71828, &qword_598B0);

    v13 = v83;
  }

  else
  {

    sub_2E90(v52, &qword_720F8, &unk_59710);
  }

  v65 = [objc_opt_self() defaultWorkspace];
  if (!v65)
  {
    __break(1u);
  }

  v66 = v65;

  v67 = v86;
  sub_2E28(v8, v86, &qword_720F8, &unk_59710);
  v68 = sub_560CC();
  v69 = *(v68 - 8);
  v71 = 0;
  if ((*(v69 + 48))(v67, 1, v68) != 1)
  {
    sub_5609C(v70);
    v71 = v72;
    (*(v69 + 8))(v67, v68);
  }

  v97 = 0;
  v73 = [v66 openURL:v71 configuration:0 error:&v97];

  if (v73)
  {
    v74 = v97;
  }

  else
  {
    v75 = v97;
    sub_5603C();

    swift_willThrow();
  }

  v76 = sub_562DC();
  v77 = sub_5794C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109120;
    *(v78 + 4) = v73 != 0;
    _os_log_impl(&dword_0, v76, v77, "Open in Messages button didLaunchApp %{BOOL}d", v78, 8u);
  }

  sub_2E90(v8, &qword_720F8, &unk_59710);
  return (*(v87 + 8))(v13, v11);
}

uint64_t sub_3DD08@<X0>(uint64_t a1@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_56DEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_56CAC();
  sub_5668C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 &= 1u;
  v49 = v7;
  v48 = 0;
  KeyPath = swift_getKeyPath();
  v50 = 1;
  v27 = 1;
  *&v28 = v3;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v7;
  *(&v29 + 1) = v9;
  LOBYTE(v30) = v10;
  *(&v30 + 1) = v12;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  *&v32 = v18;
  BYTE8(v32) = 0;
  v33 = KeyPath;
  v34 = 0;
  v35 = 1;
  *&v26[39] = v30;
  *&v26[23] = v29;
  *&v26[7] = v28;
  v26[103] = 1;
  *&v26[87] = KeyPath;
  *&v26[71] = v32;
  *&v26[55] = v31;
  v25[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v26[48];
  *(a1 + 41) = *&v26[32];
  v21 = *v26;
  *(a1 + 25) = *&v26[16];
  *(a1 + 9) = v21;
  v22 = *&v26[64];
  v23 = *&v26[80];
  *(a1 + 105) = *&v26[96];
  *(a1 + 89) = v23;
  *(a1 + 73) = v22;
  *(a1 + 57) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v36[0] = v3;
  v36[1] = v5;
  v37 = v7;
  v38 = v9;
  v39 = v10;
  v40 = v12;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = 0;
  v45 = KeyPath;
  v46 = 0;
  v47 = 1;
  sub_2E28(&v28, v25, &qword_72EC8, &qword_5A868);
  return sub_2E90(v36, &qword_72EC8, &qword_5A868);
}

uint64_t sub_3DF70(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v9 = sub_562FC();
  sub_B144(v9, qword_75758);
  v10 = sub_562DC();
  v11 = sub_5794C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Manage Contacts button tapped", v12, 2u);
  }

  v13 = sub_578CC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_43188(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  sub_578AC();
  v14 = sub_5789C();
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_41488(v5, v16 + v15);
  sub_31894(0, 0, v8, &unk_5AA10, v16);
}

uint64_t sub_3E1F8()
{
  v0[2] = sub_578AC();
  v0[3] = sub_5789C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_3E2A4;

  return sub_3E440();
}

uint64_t sub_3E2A4()
{

  v1 = sub_5788C();

  return _swift_task_switch(sub_3E3E0, v1, v0);
}

uint64_t sub_3E3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3E440()
{
  v1[22] = v0;
  sub_2AFC(&qword_720F8, &unk_59710);
  v1[23] = swift_task_alloc();
  v2 = sub_560CC();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for BalloonView(0);
  v1[28] = swift_task_alloc();
  sub_578AC();
  v1[29] = sub_5789C();
  v4 = sub_5788C();
  v1[30] = v4;
  v1[31] = v3;

  return _swift_task_switch(sub_3E59C, v4, v3);
}

uint64_t sub_3E59C()
{
  v43 = v0;
  v1 = sub_575DC();
  if (v2)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v3 = v0[28];
    v4 = v0[22];
    v5 = sub_562FC();
    v0[32] = sub_B144(v5, qword_75758);
    sub_43188(v4, v3, type metadata accessor for BalloonView);
    v6 = sub_562DC();
    v7 = sub_5794C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[28];
    if (v8)
    {
      v10 = v0[27];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v9 + *(v10 + 48);
      v14 = *(v13 + 24);
      v15 = v0[28];
      if (v14)
      {
        v16 = *(v13 + 16);
        sub_B8D8();
        swift_allocError();
        *v17 = v16;
        v17[1] = v14;

        v14 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_43238(v15, type metadata accessor for BalloonView);
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_0, v6, v7, "messagesContext.senderHandle %@", v11, 0xCu);
      sub_2E90(v12, &qword_71828, &qword_598B0);
    }

    else
    {

      sub_43238(v9, type metadata accessor for BalloonView);
    }

    v23 = v0[22] + *(v0[27] + 48);
    v0[33] = *(v23 + 16);
    v24 = *(v23 + 24);
    v0[34] = v24;
    if (v24)
    {
      v25 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
      v0[35] = v25;
      v0[2] = v0;
      v0[7] = v0 + 20;
      v0[3] = sub_3EBFC;
      v26 = swift_continuation_init();
      v0[17] = sub_2AFC(&qword_71D20, &unk_591E0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_16E90;
      v0[13] = &unk_6F5B8;
      v0[14] = v26;
      [v25 startRequestWithCompletionHandler:v0 + 10];
      v27 = v0 + 2;

      return _swift_continuation_await(v27);
    }

    v36 = sub_562DC();
    v37 = sub_5792C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v42);
      _os_log_impl(&dword_0, v36, v37, "%s: no sender handle", v38, 0xCu);
      sub_13040(v39);
    }
  }

  else
  {
    v18 = v1;
    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[23];
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_57ACC(81);
    v45._countAndFlagsBits = 0xD00000000000003ALL;
    v45._object = 0x800000000005CCA0;
    sub_577DC(v45);
    v0[21] = v18;
    v46._countAndFlagsBits = sub_57B7C();
    sub_577DC(v46);

    v47._object = 0x800000000005CCE0;
    v47._countAndFlagsBits = 0xD000000000000015;
    sub_577DC(v47);
    sub_560BC();
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      v22 = v0[23];

      sub_2E90(v22, &qword_720F8, &unk_59710);
    }

    else
    {
      (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
      v27 = [objc_opt_self() defaultWorkspace];
      if (!v27)
      {
        __break(1u);
        return _swift_continuation_await(v27);
      }

      v28 = v27;
      v30 = v0[25];
      v29 = v0[26];
      v31 = v0[24];

      sub_5609C(v32);
      v34 = v33;
      sub_B1E0(&_swiftEmptyArrayStorage);
      isa = sub_5766C().super.isa;

      [v28 openSensitiveURL:v34 withOptions:isa];

      (*(v30 + 8))(v29, v31);
    }
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_3EBFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_3F428;
  }

  else
  {
    v5 = sub_3ED2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

id sub_3ED2C()
{
  v59 = v0;
  v53 = v0[20];
  v1 = [v53 members];
  sub_D820(0, &qword_71D28, FAFamilyMember_ptr);
  v2 = sub_5784C();

  if (v2 >> 62)
  {
LABEL_29:
    v3 = sub_57B1C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:

    v32 = sub_562DC();
    v45 = sub_5792C();
    v46 = os_log_type_enabled(v32, v45);
    v47 = v0[34];
    v48 = v0[35];
    if (!v46)
    {

      goto LABEL_34;
    }

    v49 = v0[33];
    v50 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v58);
    *(v50 + 12) = 2080;
    v51 = sub_293C0(v49, v47, v58);

    *(v50 + 14) = v51;
    _os_log_impl(&dword_0, v32, v45, "%s: no member found with sender handle %s", v50, 0x16u);
    swift_arrayDestroy();

LABEL_32:
LABEL_34:

    v52 = v0[1];

    return v52();
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v54 = v3;
  v56 = v2 & 0xFFFFFFFFFFFFFF8;
  v57 = v2 & 0xC000000000000001;
  v55 = v2;
  while (1)
  {
    if (v57)
    {
      v5 = sub_57AEC();
    }

    else
    {
      if (v4 >= *(v56 + 16))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = [v5 appleID];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v0[33];
    v10 = v0[34];
    v11 = v8;
    v12 = sub_5778C();
    v14 = v13;

    if (v12 == v9 && v10 == v14)
    {
      break;
    }

    v16 = sub_57B8C();

    if (v16)
    {
      goto LABEL_20;
    }

LABEL_15:
    v17 = [v6 appleIDAliases];
    if (v17)
    {
      v19 = v0[33];
      v18 = v0[34];
      v20 = v17;
      v21 = sub_5784C();

      v0[18] = v19;
      v0[19] = v18;
      v22 = swift_task_alloc();
      *(v22 + 16) = v0 + 18;
      v23 = sub_3AA80(sub_430B4, v22, v21);

      if (v23)
      {
        goto LABEL_20;
      }
    }

    ++v4;
    v2 = v55;
    if (v7 == v54)
    {
      goto LABEL_30;
    }
  }

LABEL_20:

  v24 = [v6 dsid];
  v25 = v0[35];
  if (!v24)
  {

    v32 = sub_562DC();
    v33 = sub_5792C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v58);
      _os_log_impl(&dword_0, v32, v33, "%s: missing dsid", v34, 0xCu);
      sub_13040(v35);
    }

    goto LABEL_32;
  }

  v26 = v24;
  v27 = [v24 integerValue];

  v28 = v0[24];
  v29 = v0[25];
  v30 = v0[23];
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_57ACC(81);
  v61._countAndFlagsBits = 0xD00000000000003ALL;
  v61._object = 0x800000000005CCA0;
  sub_577DC(v61);
  v0[21] = v27;
  v62._countAndFlagsBits = sub_57B7C();
  sub_577DC(v62);

  v63._countAndFlagsBits = 0xD000000000000015;
  v63._object = 0x800000000005CCE0;
  sub_577DC(v63);
  sub_560BC();
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    v31 = v0[23];

    sub_2E90(v31, &qword_720F8, &unk_59710);
    goto LABEL_34;
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v37 = result;
    v39 = v0[25];
    v38 = v0[26];
    v40 = v0[24];

    sub_5609C(v41);
    v43 = v42;
    sub_B1E0(&_swiftEmptyArrayStorage);
    isa = sub_5766C().super.isa;

    [v37 openSensitiveURL:v43 withOptions:isa];

    (*(v39 + 8))(v38, v40);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_3F428(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();

  v2 = sub_562DC();
  v3 = sub_5792C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  v6 = v1[35];
  if (v4)
  {
    v7 = v1[33];
    v8 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v12);
    *(v8 + 12) = 2080;
    v9 = sub_293C0(v7, v5, v12);

    *(v8 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "%s: no member found with sender handle %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

double sub_3F618@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5697C();
  v22 = 1;
  a1(&v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_2E28(&v23, &v11, &qword_72F80, &unk_5A9E8);
  sub_2E90(v32, &qword_72F80, &unk_5A9E8);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_3F778@<X0>(uint64_t a1@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_56DEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_56CAC();
  sub_5668C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 &= 1u;
  v49 = v7;
  v48 = 0;
  KeyPath = swift_getKeyPath();
  v50 = 1;
  v27 = 1;
  *&v28 = v3;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v7;
  *(&v29 + 1) = v9;
  LOBYTE(v30) = v10;
  *(&v30 + 1) = v12;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  *&v32 = v18;
  BYTE8(v32) = 0;
  v33 = KeyPath;
  v34 = 0;
  v35 = 1;
  *&v26[39] = v30;
  *&v26[23] = v29;
  *&v26[7] = v28;
  v26[103] = 1;
  *&v26[87] = KeyPath;
  *&v26[71] = v32;
  *&v26[55] = v31;
  v25[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v26[48];
  *(a1 + 41) = *&v26[32];
  v21 = *v26;
  *(a1 + 25) = *&v26[16];
  *(a1 + 9) = v21;
  v22 = *&v26[64];
  v23 = *&v26[80];
  *(a1 + 105) = *&v26[96];
  *(a1 + 89) = v23;
  *(a1 + 73) = v22;
  *(a1 + 57) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v36[0] = v3;
  v36[1] = v5;
  v37 = v7;
  v38 = v9;
  v39 = v10;
  v40 = v12;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = 0;
  v45 = KeyPath;
  v46 = 0;
  v47 = 1;
  sub_2E28(&v28, v25, &qword_72EC8, &qword_5A868);
  return sub_2E90(v36, &qword_72EC8, &qword_5A868);
}

void sub_3F9E8(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v36 - v12);
  v14 = type metadata accessor for BalloonView(0);
  v15 = sub_5763C();
  sub_5630C();

  v16 = sub_5636C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_2E90(v13, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v36 = v3;
    v18 = (*(v17 + 88))(v13, v16);
    if (v18 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v19 = v18;
      (*(v17 + 96))(v13, v16);
      v20 = v38;
      v38 = *v13;
      v21 = sub_437A0(v20);
      v22 = sub_5763C();
      *v10 = v21;
      (*(v17 + 104))(v10, v19, v16);
      (*(v17 + 56))(v10, 0, 1, v16);
      v23 = v21;
      sub_5631C();

      v24 = v2 + *(v14 + 48);
      v25 = *(v36 + 28);
      v26 = sub_561AC();
      v27 = *(v26 - 8);
      (*(v27 + 16))(v7, v24 + v25, v26);
      (*(v27 + 56))(v7, 0, 1, v26);
      ATPayload.newMessage(sessionId:)(v7);
      v33 = v32;
      sub_2E90(v7, &qword_71B48, &qword_5A780);
      v34 = v37;
      sub_43188(v24, v37, type metadata accessor for MessagesContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_43238(v34, type metadata accessor for MessagesContext);
      if (Strong)
      {
        sub_49BDC(v33);
      }

      else
      {
      }

      return;
    }

    (*(v17 + 8))(v13, v16);
  }

  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v28 = sub_562FC();
  sub_B144(v28, qword_75758);
  v29 = sub_562DC();
  v30 = sub_5794C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "BalloonView.updatePayload not a communication topic. Skipping", v31, 2u);
  }
}

uint64_t sub_4001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_578AC();
  v6[5] = sub_5789C();
  v8 = sub_5788C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_400B8, v8, v7);
}

uint64_t sub_400B8()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for BalloonView(0) + 48);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1ECB0;
  v5 = v0[3];
  v4 = v0[4];

  return sub_14234(v5, v4, v1 + v2);
}

void sub_40174(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v6 = sub_562FC();
    sub_B144(v6, qword_75758);
    swift_errorRetain();

    v7 = sub_562DC();
    v8 = sub_5792C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_293C0(a3, a4, &v13);
      *(v9 + 12) = 2112;
      v12 = sub_5602C();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_0, v7, v8, "Failed to open app. bundleIdentifier: %s, error: %@", v9, 0x16u);
      sub_2E90(v10, &qword_71828, &qword_598B0);

      sub_13040(v11);
    }

    else
    {
    }
  }
}

void sub_40370(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_403EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_56B0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_56C5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2AFC(&qword_73010, &qword_5AB40);
  v13 = __chkstk_darwin(v12);
  v15 = &v30 - v14;
  (*(v9 + 16))(v11, a1, v8, v13);
  sub_570EC();
  if (qword_71608 != -1)
  {
    swift_once();
  }

  v16 = qword_75820;
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v12 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;

  sub_56AFC();
  sub_433EC();
  sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  sub_56E4C();
  (*(v5 + 8))(v7, v4);
  sub_2E90(v15, &qword_73010, &qword_5AB40);
  v19 = a2 + *(sub_2AFC(&qword_73030, &qword_5AB50) + 36);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_56A0C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = sub_2AFC(&qword_73038, &qword_5AB58);
  *(v19 + *(v22 + 52)) = 3;
  *(v19 + *(v22 + 56)) = 256;
  v23 = sub_571DC();
  v25 = v24;
  v26 = (v19 + *(sub_2AFC(&qword_73040, &qword_5AB60) + 36));
  *v26 = v23;
  v26[1] = v25;
  v27 = [objc_opt_self() systemBlueColor];
  v28 = sub_56F5C();
  result = sub_2AFC(&qword_73048, &qword_5AB68);
  *(a2 + *(result + 36)) = v28;
  return result;
}

uint64_t type metadata accessor for BalloonView(uint64_t a1)
{
  result = qword_72C50;
  if (!qword_72C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_407E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5606C();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_56DFC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_408C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_568DC();
  *a1 = result;
  return result;
}

uint64_t sub_40918(uint64_t a1)
{
  v2 = sub_56D9C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_5684C();
}

char *sub_409E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_40A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_40A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_71838, &qword_5AA00);
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

uint64_t sub_40B20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2AFC(&qword_71B00, &unk_593C0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for MessagesContext(0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[12];
      goto LABEL_3;
    }

    v15 = sub_573CC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_40D04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_2AFC(&qword_71B00, &unk_593C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for MessagesContext(0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_3;
  }

  v15 = sub_573CC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

void sub_40ED4(uint64_t a1)
{
  sub_1F7BC(319, &qword_71E00, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_4119C(319, &qword_71E08, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_5647C();
      if (v3 <= 0x3F)
      {
        sub_4119C(319, &qword_71E10, &type metadata accessor for ATResponse, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_4119C(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_41200(319);
            if (v6 <= 0x3F)
            {
              sub_1F7BC(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                type metadata accessor for MessagesContext(319);
                if (v8 <= 0x3F)
                {
                  sub_5765C();
                  if (v9 <= 0x3F)
                  {
                    sub_1F694(319);
                    if (v10 <= 0x3F)
                    {
                      sub_573CC();
                      if (v11 <= 0x3F)
                      {
                        sub_1F7BC(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
                        if (v12 <= 0x3F)
                        {
                          sub_4119C(319, &unk_72C60, type metadata accessor for ManageContactsSetting, &type metadata accessor for State);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_4119C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_41200(uint64_t a1)
{
  if (!qword_721C8)
  {
    sub_D820(255, &qword_721D0, CNContact_ptr);
    v1 = sub_579AC();
    if (!v2)
    {
      atomic_store(v1, &qword_721C8);
    }
  }
}

unint64_t sub_41284()
{
  result = qword_72D08;
  if (!qword_72D08)
  {
    sub_2C70(&qword_72CD0, &qword_5A688);
    sub_41310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D08);
  }

  return result;
}

unint64_t sub_41310()
{
  result = qword_72D10;
  if (!qword_72D10)
  {
    sub_2C70(&qword_72D00, &qword_5A6B8);
    sub_3260(&qword_72D18, &qword_72D20, &unk_5A6C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D10);
  }

  return result;
}

unint64_t sub_413C8()
{
  result = qword_72D28;
  if (!qword_72D28)
  {
    sub_2C70(&qword_72CD8, &qword_5A690);
    sub_41284();
    sub_431F0(&qword_71F28, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D28);
  }

  return result;
}

uint64_t sub_41488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_414EC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_38504(v4, a1);
}

unint64_t sub_4155C()
{
  result = qword_72D38;
  if (!qword_72D38)
  {
    sub_2C70(&qword_72D30, &qword_5A6D0);
    sub_415E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D38);
  }

  return result;
}

unint64_t sub_415E0()
{
  result = qword_72D40;
  if (!qword_72D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D40);
  }

  return result;
}

uint64_t sub_41634@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_38D4C(v4, a1);
}

unint64_t sub_416A4()
{
  result = qword_72D58;
  if (!qword_72D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D58);
  }

  return result;
}

void sub_41700(uint64_t a1)
{
  v3 = *(type metadata accessor for BalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_39174(a1, v4);
}

void sub_41818(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BalloonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_38420(a1, a2, v6);
}

unint64_t sub_41898()
{
  result = qword_72D98;
  if (!qword_72D98)
  {
    sub_2C70(&qword_72D78, &qword_5A788);
    sub_41924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D98);
  }

  return result;
}

unint64_t sub_41924()
{
  result = qword_72DA0;
  if (!qword_72DA0)
  {
    sub_2C70(&qword_72DA8, &qword_5A7A8);
    sub_419B0();
    sub_41C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DA0);
  }

  return result;
}

unint64_t sub_419B0()
{
  result = qword_72DB0;
  if (!qword_72DB0)
  {
    sub_2C70(&qword_72DB8, &qword_5A7B0);
    sub_41A3C();
    sub_41B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DB0);
  }

  return result;
}

unint64_t sub_41A3C()
{
  result = qword_72DC0;
  if (!qword_72DC0)
  {
    sub_2C70(&qword_72DC8, &qword_5A7B8);
    sub_41AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DC0);
  }

  return result;
}

unint64_t sub_41AC8()
{
  result = qword_72DD0;
  if (!qword_72DD0)
  {
    sub_2C70(&qword_72DD8, &qword_5A7C0);
    sub_3260(&qword_72DE0, &qword_72DE8, &qword_5A7C8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DD0);
  }

  return result;
}

unint64_t sub_41B78()
{
  result = qword_72DF0;
  if (!qword_72DF0)
  {
    sub_2C70(&qword_72DF8, &qword_5A7D0);
    sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DF0);
  }

  return result;
}

unint64_t sub_41C30()
{
  result = qword_72E10;
  if (!qword_72E10)
  {
    sub_2C70(&qword_72E18, &qword_5A7E0);
    sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
    sub_2C70(&qword_72E40, &qword_5A7F8);
    sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
    sub_41EF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E10);
  }

  return result;
}

uint64_t sub_41D74(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_41DF0()
{
  result = qword_72E30;
  if (!qword_72E30)
  {
    sub_2C70(&qword_72E38, &qword_5A7F0);
    sub_2C70(&qword_72E40, &qword_5A7F8);
    sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8, &protocol conformance descriptor for Button<A>);
    sub_41EF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E30);
  }

  return result;
}

unint64_t sub_41EF8()
{
  result = qword_72E50;
  if (!qword_72E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E50);
  }

  return result;
}

unint64_t sub_41FBC()
{
  result = qword_72ED0;
  if (!qword_72ED0)
  {
    sub_2C70(&qword_72EC8, &qword_5A868);
    sub_42074();
    sub_3260(&qword_716C0, &qword_716C8, &qword_58A58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72ED0);
  }

  return result;
}

unint64_t sub_42074()
{
  result = qword_72ED8;
  if (!qword_72ED8)
  {
    sub_2C70(&qword_72EE0, &unk_5A870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72ED8);
  }

  return result;
}

uint64_t sub_420F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_568DC();
  *a1 = result;
  return result;
}

unint64_t sub_42150()
{
  result = qword_72EE8;
  if (!qword_72EE8)
  {
    sub_2C70(&qword_72EB8, &qword_5A858);
    sub_3260(&qword_72EF0, &qword_72EF8, &unk_5A8B0, &protocol conformance descriptor for Button<A>);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72EE8);
  }

  return result;
}

unint64_t sub_4227C()
{
  result = qword_72F50;
  if (!qword_72F50)
  {
    sub_2C70(&qword_72F30, &qword_5A918);
    sub_3260(&qword_72F58, &qword_72F60, &qword_5A9A8, &protocol conformance descriptor for Button<A>);
    sub_3260(&qword_720B8, &qword_720C0, &qword_5A9B0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72F50);
  }

  return result;
}

uint64_t sub_42360()
{
  v1 = type metadata accessor for BalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = v4 + v1[12];

  v13 = *(type metadata accessor for MessagesContext(0) + 28);
  v14 = sub_561AC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  swift_unknownObjectWeakDestroy();

  v15 = v1[16];
  v16 = sub_573CC();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_426CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BalloonView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_42740()
{
  v1 = type metadata accessor for BalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  v14 = v4 + v1[12];

  v15 = *(type metadata accessor for MessagesContext(0) + 28);
  v16 = sub_561AC();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);

  swift_unknownObjectWeakDestroy();

  v17 = v1[16];
  v18 = sub_573CC();
  (*(*(v18 - 8) + 8))(v4 + v17, v18);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_42AC0(uint64_t a1)
{
  v4 = *(type metadata accessor for BalloonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22334;

  return sub_4001C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_42BF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_42C50()
{
  v1 = type metadata accessor for BalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = v4 + v1[12];

  v13 = *(type metadata accessor for MessagesContext(0) + 28);
  v14 = sub_561AC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  swift_unknownObjectWeakDestroy();

  v15 = v1[16];
  v16 = sub_573CC();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_42FAC()
{
  type metadata accessor for BalloonView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_BBC4;

  return sub_3E1F8();
}

uint64_t sub_430B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_57B8C() & 1;
  }
}

uint64_t sub_4310C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_568BC();
  *a1 = result;
  return result;
}

uint64_t sub_43188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_431F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_43238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_432A8()
{
  sub_2C70(&qword_72CF0, &qword_5A6A8);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_72D60, &qword_72CF0, &qword_5A6A8, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_433EC()
{
  result = qword_73018;
  if (!qword_73018)
  {
    sub_2C70(&qword_73010, &qword_5AB40);
    sub_3260(&qword_73020, &qword_73028, &qword_5AB48, &protocol conformance descriptor for Button<A>);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73018);
  }

  return result;
}

unint64_t sub_434D4()
{
  result = qword_73050;
  if (!qword_73050)
  {
    sub_2C70(&qword_73048, &qword_5AB68);
    sub_4358C();
    sub_3260(&qword_73068, &qword_73070, &qword_5AB70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73050);
  }

  return result;
}

unint64_t sub_4358C()
{
  result = qword_73058;
  if (!qword_73058)
  {
    sub_2C70(&qword_73030, &qword_5AB50);
    sub_2C70(&qword_73010, &qword_5AB40);
    sub_56B0C();
    sub_433EC();
    sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_3260(&qword_73060, &qword_73040, &qword_5AB60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73058);
  }

  return result;
}

unint64_t sub_43724()
{
  result = qword_73078;
  if (!qword_73078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73078);
  }

  return result;
}

uint64_t sub_437A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2AFC(&qword_73080, &qword_5AC20);
  __chkstk_darwin(v4 - 8);
  v75 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v55 - v7;
  v9 = sub_5748C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v70 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v55 - v13;
  __chkstk_darwin(v15);
  v73 = v55 - v16;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  __chkstk_darwin(v20);
  v78 = v55 - v21;
  v22 = sub_574AC();
  v69 = *(v22 + 16);
  if (v69)
  {
    v62 = v14;
    v56 = ObjectType;
    v57 = v1;
    v24 = 0;
    v27 = *(v10 + 16);
    v26 = v10 + 16;
    v25 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v55[1] = v22;
    v61 = v28;
    v63 = a1 + v28;
    v67 = *(a1 + 16);
    v68 = v22 + v28;
    v29 = (v26 - 8);
    v72 = (v26 + 16);
    v79 = *(v26 + 56);
    v66 = (v26 + 40);
    v74 = &_swiftEmptyArrayStorage;
    v65 = (v26 + 32);
    *&v23 = 138412290;
    v58 = v23;
    v30 = v75;
    v71 = v8;
    v77 = v26;
    v27(v78, v22 + v28, v9);
    while (1)
    {
      v76 = v24;
      if (v67)
      {
        v33 = v63;
        v34 = v67;
        while (1)
        {
          v25(v19, v33, v9);
          sub_43EB8();
          v35 = sub_5747C();
          v36 = sub_5747C();
          v37 = sub_5798C();

          if (v37)
          {
            break;
          }

          (*v29)(v19, v9);
          v33 += v79;
          if (!--v34)
          {
            v38 = 1;
            v30 = v75;
            v8 = v71;
            goto LABEL_13;
          }
        }

        v8 = v71;
        (*v72)(v71, v19, v9);
        v38 = 0;
        v30 = v75;
LABEL_13:
        v24 = v76;
      }

      else
      {
        v38 = 1;
      }

      (*v66)(v8, v38, 1, v9);
      sub_43F04(v8, v30);
      if ((*v65)(v30, 1, v9) == 1)
      {
        sub_2E90(v8, &qword_73080, &qword_5AC20);
        v31 = v78;
        sub_2E90(v30, &qword_73080, &qword_5AC20);
        v32 = *v29;
      }

      else
      {
        v39 = v73;
        v64 = *v72;
        v64(v73, v30, v9);
        if (qword_715E0 != -1)
        {
          swift_once();
        }

        v40 = sub_562FC();
        sub_B144(v40, qword_757D0);
        v41 = v62;
        v25(v62, v39, v9);
        v42 = sub_562DC();
        v43 = sub_5792C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v60 = v29 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v45 = v44;
          v59 = swift_slowAlloc();
          *v45 = v58;
          v46 = sub_5747C();
          v32 = *v29;
          (*v29)(v41, v9);
          *(v45 + 4) = v46;
          v47 = v59;
          *v59 = v46;
          _os_log_impl(&dword_0, v42, v43, "ATCommunicationMetadata.updated(with:) - Found and updating contact with handle %@", v45, 0xCu);
          sub_2E90(v47, &qword_71828, &qword_598B0);
        }

        else
        {

          v32 = *v29;
          (*v29)(v41, v9);
        }

        v48 = v74;
        v25(v70, v73, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v8 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_6BB8(0, v48[2] + 1, 1, v48);
        }

        v51 = v48[2];
        v50 = v48[3];
        v74 = v48;
        if (v51 >= v50 >> 1)
        {
          v74 = sub_6BB8((v50 > 1), v51 + 1, 1, v74);
        }

        v32(v73, v9);
        sub_2E90(v8, &qword_73080, &qword_5AC20);
        v52 = v74;
        v74[2] = v51 + 1;
        v64(&v52[v61 + v51 * v79], v70, v9);
        v31 = v78;
        v24 = v76;
      }

      ++v24;
      v32(v31, v9);
      v30 = v75;
      if (v24 == v69)
      {
        break;
      }

      v25(v31, v68 + v79 * v24, v9);
    }

    ObjectType = v56;
  }

  else
  {
  }

  sub_574DC();
  v53 = objc_allocWithZone(ObjectType);
  return sub_5749C();
}

unint64_t sub_43EB8()
{
  result = qword_720F0;
  if (!qword_720F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_720F0);
  }

  return result;
}

uint64_t sub_43F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_73080, &qword_5AC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_43F94(uint64_t a1)
{
  sub_44008();
  if (v1 <= 0x3F)
  {
    sub_5756C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_44008()
{
  if (!qword_73108)
  {
    sub_44438(0, &unk_73110, sub_22730, &type metadata accessor for Array);
    if (!v1)
    {
      atomic_store(v0, &qword_73108);
    }
  }
}

uint64_t sub_44094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IconView.Kind(0);
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
      v13 = sub_2AFC(&qword_71B00, &unk_593C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_441D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = type metadata accessor for IconView.Kind(0);
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
      v13 = sub_2AFC(&qword_71B00, &unk_593C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_4431C(uint64_t a1)
{
  sub_443E8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IconView.Kind(319);
    if (v2 <= 0x3F)
    {
      sub_44438(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_443E8()
{
  if (!qword_71E00)
  {
    v0 = sub_5669C();
    if (!v1)
    {
      atomic_store(v0, &qword_71E00);
    }
  }
}

void sub_44438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_444B8()
{
  sub_56F8C();
  v0 = sub_56FBC();

  qword_75828 = v0;
  return result;
}

uint64_t sub_444F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v76 = sub_2AFC(&qword_731E8, &qword_5ACA0);
  __chkstk_darwin(v76);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v76 - v5;
  v6 = sub_2AFC(&qword_731F0, &qword_5ACA8);
  __chkstk_darwin(v6 - 8);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = (&v76 - v9);
  v10 = sub_2AFC(&qword_731F8, &qword_5ACB0);
  v90 = *(v10 - 8);
  v91 = v10;
  __chkstk_darwin(v10);
  v94 = &v76 - v11;
  v12 = sub_2AFC(&qword_71B00, &unk_593C0);
  __chkstk_darwin(v12 - 8);
  v86 = &v76 - v13;
  v14 = sub_2AFC(&qword_73200, &qword_5ACB8);
  __chkstk_darwin(v14 - 8);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v85 = sub_2AFC(&qword_73208, &qword_5ACC0);
  __chkstk_darwin(v85);
  v19 = &v76 - v18;
  v20 = sub_5756C();
  v84 = *(v20 - 8);
  __chkstk_darwin(v20);
  v81 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v76 - v23;
  v25 = sub_2AFC(&qword_73210, &qword_5ACC8);
  __chkstk_darwin(v25);
  v27 = &v76 - v26;
  v83 = sub_2AFC(&qword_73218, &qword_5ACD0);
  __chkstk_darwin(v83);
  v29 = &v76 - v28;
  v30 = type metadata accessor for IconView.Kind(0);
  __chkstk_darwin(v30);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2AFC(&qword_73220, &qword_5ACD8);
  __chkstk_darwin(v33 - 8);
  v88 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v76 - v36;
  v82 = type metadata accessor for IconView(0);
  v38 = *(v82 + 20);
  v87 = a1;
  sub_45190(a1 + v38, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v20;
    v40 = v84;
    (*(v84 + 32))(v24, v32, v39);
    (*(v40 + 16))(v19, v24, v39);
    sub_571DC();
    sub_566EC();
    v41 = v85;
    v42 = &v19[*(v85 + 36)];
    v43 = v96;
    *v42 = v95;
    *(v42 + 1) = v43;
    *(v42 + 2) = v97;
    sub_2E28(v19, v27, &qword_73208, &qword_5ACC0);
    swift_storeEnumTagMultiPayload();
    sub_451F4();
    sub_45368();
    sub_56ABC();
    sub_2E90(v19, &qword_73208, &qword_5ACC0);
    (*(v40 + 8))(v24, v39);
    v44 = v37;
    v45 = v41;
  }

  else
  {
    sub_55D8C();
    KeyPath = swift_getKeyPath();
    v47 = [objc_opt_self() tertiarySystemFillColor];
    *&v98 = sub_56F5C();
    v48 = sub_566FC();
    v49 = &v29[*(sub_2AFC(&qword_73238, &qword_5ACE0) + 36)];
    *v49 = KeyPath;
    v49[1] = v48;
    sub_571DC();
    sub_566EC();
    v50 = &v29[*(v83 + 36)];
    v51 = v96;
    *v50 = v95;
    *(v50 + 1) = v51;
    *(v50 + 2) = v97;
    sub_2E28(v29, v27, &qword_73218, &qword_5ACD0);
    swift_storeEnumTagMultiPayload();
    sub_451F4();
    sub_45368();
    v52 = v85;
    sub_56ABC();
    sub_2E90(v29, &qword_73218, &qword_5ACD0);
    v39 = v20;
    v40 = v84;
    v44 = v37;
    v45 = v52;
  }

  v53 = v86;
  sub_2E28(v87 + *(v82 + 24), v86, &qword_71B00, &unk_593C0);
  v54 = (*(v40 + 48))(v53, 1, v39);
  v55 = v89;
  v56 = v94;
  if (v54 == 1)
  {
    sub_2E90(v53, &qword_71B00, &unk_593C0);
LABEL_8:
    (*(v90 + 56))(v55, 1, 1, v91);
    goto LABEL_12;
  }

  v57 = v81;
  (*(v40 + 32))(v81, v53, v39);
  if (sub_5755C())
  {
    (*(v40 + 8))(v57, v39);
    goto LABEL_8;
  }

  v87 = v44;
  *v56 = sub_56A1C();
  *(v56 + 8) = 0;
  *(v56 + 16) = 1;
  v58 = v56 + *(sub_2AFC(&qword_73268, &qword_5ACF8) + 44);
  v59 = sub_5697C();
  v60 = v78;
  *v78 = v59;
  *(v60 + 8) = 0;
  *(v60 + 16) = 1;
  v61 = v60 + *(sub_2AFC(&qword_73270, &qword_5AD00) + 44);
  v62 = v77;
  (*(v40 + 16))(v77, v57, v39);
  sub_571DC();
  sub_566EC();
  v63 = (v62 + *(v45 + 36));
  v64 = v99;
  *v63 = v98;
  v63[1] = v64;
  v63[2] = v100;
  v86 = v39;
  v65 = v40;
  if (qword_71610 != -1)
  {
    swift_once();
  }

  v66 = (v62 + *(v76 + 36));
  *v66 = qword_75828;
  v66[1] = 0x4018000000000000;
  v66[2] = 0;
  v66[3] = 0;
  v67 = v79;
  sub_2E28(v62, v79, &qword_731E8, &qword_5ACA0);
  *v61 = 0;
  *(v61 + 8) = 1;
  v68 = sub_2AFC(&qword_73278, &qword_5AD08);
  sub_2E28(v67, v61 + *(v68 + 48), &qword_731E8, &qword_5ACA0);

  sub_2E90(v62, &qword_731E8, &qword_5ACA0);
  sub_2E90(v67, &qword_731E8, &qword_5ACA0);
  v69 = v80;
  sub_2E28(v60, v80, &qword_731F0, &qword_5ACA8);
  *v58 = 0;
  *(v58 + 8) = 1;
  v70 = sub_2AFC(&qword_73280, &qword_5AD10);
  sub_2E28(v69, v58 + *(v70 + 48), &qword_731F0, &qword_5ACA8);
  sub_2E90(v60, &qword_731F0, &qword_5ACA8);
  sub_2E90(v69, &qword_731F0, &qword_5ACA8);
  sub_454C4(v94, v55);
  (*(v90 + 56))(v55, 0, 1, v91);
  (*(v65 + 8))(v81, v86);
  v44 = v87;
LABEL_12:
  v71 = v88;
  sub_2E28(v44, v88, &qword_73220, &qword_5ACD8);
  v72 = v92;
  sub_2E28(v55, v92, &qword_73200, &qword_5ACB8);
  v73 = v93;
  sub_2E28(v71, v93, &qword_73220, &qword_5ACD8);
  v74 = sub_2AFC(&qword_73260, &qword_5ACF0);
  sub_2E28(v72, v73 + *(v74 + 48), &qword_73200, &qword_5ACB8);
  sub_2E90(v55, &qword_73200, &qword_5ACB8);
  sub_2E90(v44, &qword_73220, &qword_5ACD8);
  sub_2E90(v72, &qword_73200, &qword_5ACB8);
  return sub_2E90(v71, &qword_73220, &qword_5ACD8);
}

double sub_450EC@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_571CC();
  a2[1] = v4;
  v5 = sub_2AFC(&qword_731D8, &qword_5AC90);
  sub_444F8(v2, a2 + *(v5 + 44));
  sub_571DC();
  sub_566EC();
  v6 = (a2 + *(sub_2AFC(&qword_731E0, &qword_5AC98) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_45190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_451F4()
{
  result = qword_73228;
  if (!qword_73228)
  {
    sub_2C70(&qword_73218, &qword_5ACD0);
    sub_45280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73228);
  }

  return result;
}

unint64_t sub_45280()
{
  result = qword_73230;
  if (!qword_73230)
  {
    sub_2C70(&qword_73238, &qword_5ACE0);
    sub_45424(&qword_72A30, &type metadata accessor for AvatarView, &protocol conformance descriptor for AvatarView);
    sub_3260(&qword_73240, &qword_73248, &qword_5ACE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73230);
  }

  return result;
}

unint64_t sub_45368()
{
  result = qword_73250;
  if (!qword_73250)
  {
    sub_2C70(&qword_73208, &qword_5ACC0);
    sub_45424(&qword_73258, type metadata accessor for SingleIconView, &unk_5AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73250);
  }

  return result;
}

uint64_t sub_45424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4548C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_454C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_731F8, &qword_5ACB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_567DC();
  *a1 = result;
  return result;
}

uint64_t sub_455A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5756C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_45620(uint64_t a1, uint64_t a2)
{
  v4 = sub_5756C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_45690(uint64_t a1)
{
  result = sub_5756C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_45700()
{
  result = qword_73318;
  if (!qword_73318)
  {
    sub_2C70(&qword_731E0, &qword_5AC98);
    sub_3260(&qword_73320, &qword_73328, &qword_5AD58, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73318);
  }

  return result;
}

void sub_457D4(uint64_t a1@<X8>)
{
  v2 = sub_5703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5753C();
  sub_5754C();
  v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6 scale:0 orientation:v7];

  v9 = v8;
  sub_5701C();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v10 = sub_5705C();

  (*(v3 + 8))(v5, v2);
  v11 = sub_56F9C();
  LOBYTE(v5) = sub_56CAC();

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
}

unint64_t sub_45968()
{
  result = qword_73330;
  if (!qword_73330)
  {
    sub_2C70(&qword_73338, &qword_5ADB0);
    sub_3260(&qword_71748, &qword_71750, &qword_58A88, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73330);
  }

  return result;
}

void sub_45A20(void *a1)
{
  v2 = [a1 selectedMessage];
  if (v2 && (v3 = v2, v4 = [v2 isPending], v3, v4))
  {
    if (qword_71618 != -1)
    {
      swift_once();
    }

    v5 = [a1 selectedMessage];
    v6 = [v5 session];

    v8 = sub_45B3C(v6);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  sub_465A8(a1, v7);
}

uint64_t sub_45B3C(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  __chkstk_darwin(v3 - 8);
  v5 = &v64[-v4];
  v71 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  v6 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v70 = &v64[-v9];
  v10 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v10 - 8);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v64[-v14];
  v16 = sub_561AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v21);
  if (!a1)
  {
    (*(v17 + 56))(v15, 1, 1, v16, v24);
LABEL_7:
    sub_2E90(v15, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v29 = sub_562FC();
    sub_B144(v29, qword_75728);
    v30 = sub_562DC();
    v31 = sub_5792C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v73);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, v73);
      _os_log_impl(&dword_0, v30, v31, "%s: %s invalid session identifier", v32, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v25 = &v64[-v22];
  v68 = v23;
  v26 = [a1 identifier];
  if (v26)
  {
    v27 = v26;
    sub_5618C();

    (*(v17 + 56))(v12, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v12, 1, 1, v16);
  }

  v28 = v25;
  sub_B0DC(v12, v15, &qword_71B48, &qword_5A780);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v25, v15, v16);
  v34 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  swift_beginAccess();
  sub_2E28(v1 + v34, v5, &qword_73450, &qword_5AE20);
  if ((*(v6 + 48))(v5, 1, v71) == 1)
  {
    v35 = &qword_73450;
    v36 = &qword_5AE20;
    v37 = v5;
LABEL_21:
    sub_2E90(v37, v35, v36);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v51 = sub_562FC();
    sub_B144(v51, qword_75728);
    (*(v17 + 16))(v19, v28, v16);
    v52 = sub_562DC();
    v53 = sub_5794C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v67 = v28;
      v55 = v54;
      v72 = swift_slowAlloc();
      *v55 = 136315650;
      *(v55 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, &v72);
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, &v72);
      *(v55 + 22) = 2080;
      sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = sub_57B7C();
      v58 = v57;
      v59 = *(v17 + 8);
      v59(v19, v16);
      v60 = sub_293C0(v56, v58, &v72);

      *(v55 + 24) = v60;
      _os_log_impl(&dword_0, v52, v53, "%s: %s no staged message found for %s", v55, 0x20u);
      swift_arrayDestroy();

      v59(v67, v16);
    }

    else
    {

      v61 = *(v17 + 8);
      v61(v19, v16);
      v61(v28, v16);
    }

    return 0;
  }

  v38 = v70;
  sub_B0DC(v5, v70, &unk_733D0, &qword_5ADF8);
  if ((sub_5617C() & 1) == 0)
  {
    v35 = &unk_733D0;
    v36 = &qword_5ADF8;
    v37 = v38;
    goto LABEL_21;
  }

  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v39 = sub_562FC();
  sub_B144(v39, qword_75728);
  v40 = v68;
  (*(v17 + 16))(v68, v28, v16);
  v41 = sub_562DC();
  v42 = sub_5794C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v67 = v28;
    v44 = v43;
    v66 = swift_slowAlloc();
    v72 = v66;
    *v44 = 136315650;
    *(v44 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, &v72);
    v65 = v42;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, &v72);
    *(v44 + 22) = 2080;
    sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = sub_57B7C();
    v47 = v46;
    v48 = *(v17 + 8);
    v48(v40, v16);
    v49 = sub_293C0(v45, v47, &v72);
    v38 = v70;

    *(v44 + 24) = v49;
    _os_log_impl(&dword_0, v41, v65, "%s: %s found staged message for %s", v44, 0x20u);
    swift_arrayDestroy();

    v50 = v67;
  }

  else
  {

    v48 = *(v17 + 8);
    v48(v40, v16);
    v50 = v28;
  }

  v48(v50, v16);
  v62 = v69;
  sub_B0DC(v38, v69, &unk_733D0, &qword_5ADF8);
  v63 = *&v62[*(v71 + 48)];
  v48(v62, v16);
  return v63;
}

void sub_465A8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2AFC(&qword_725F0, &qword_59B18);
  __chkstk_darwin(v6 - 8);
  v237 = &v210 - v7;
  v8 = type metadata accessor for ContentModel(0);
  v234 = *(v8 - 8);
  v235 = v8;
  __chkstk_darwin(v8);
  v10 = (&v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for PayloadViewModel(0);
  __chkstk_darwin(v222);
  v223 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_5732C();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_2AFC(&qword_73468, &unk_5AE30);
  __chkstk_darwin(v225);
  v226 = &v210 - v13;
  v224 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v224);
  v227 = &v210 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v15 - 8);
  v17 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v210 - v19;
  v21 = sub_561AC();
  v22 = *(v21 - 8);
  v229 = v21;
  v230 = v22;
  __chkstk_darwin(v21);
  v218 = &v210 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v217 = &v210 - v25;
  __chkstk_darwin(v26);
  v228 = &v210 - v27;
  v28 = sub_560CC();
  v231 = *(v28 - 8);
  v232 = v28;
  __chkstk_darwin(v28);
  v30 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = (&v210 - v32);
  v33 = *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation];
  *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = a1;
  v238 = a1;

  v34 = *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v36 = Strong, sub_43EB8(), v37 = v36, LOBYTE(v36) = sub_5798C(), v37, v37, (v36 & 1) == 0))
  {
    sub_4CCB4(v3, v34);
  }

  v236 = v34;
  v38 = [v238 selectedMessage];
  if (!v38)
  {
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v48 = sub_562FC();
    sub_B144(v48, qword_75728);
    v49 = v3;
    v50 = sub_562DC();
    v51 = sub_5792C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = 0xE90000000000003ELL;
      v53 = 0x6E776F6E6B6E753CLL;
      v54 = swift_slowAlloc();
      v239[0] = swift_slowAlloc();
      *v54 = 136315394;
      v55 = [v49 activeConversation];
      if (v55)
      {
        v56 = v55;
        v57 = [v55 selectedMessage];

        if (v57)
        {
          v58 = [v57 guid];

          if (v58)
          {
            v53 = sub_5778C();
            v52 = v59;
          }
        }
      }

      v60 = sub_293C0(v53, v52, v239);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v239);
      _os_log_impl(&dword_0, v50, v51, "%s: %s called with conversation that had no selected message", v54, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v61 = swift_allocError();
    *v62 = 0;
    v63 = [v49 presentationStyle];
    *v10 = v61;
    v64 = v235;
    swift_storeEnumTagMultiPayload();
    v65 = v237;
    sub_4CF18(v10, v237, type metadata accessor for ContentModel);
    (*(v234 + 56))(v65, 0, 1, v64);
    v66 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v67 = v236;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v65, v67 + v66, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v68 = sub_D94C(v10, v63);
    sub_26354(v68);

    sub_4CF80(v10, type metadata accessor for ContentModel);
    goto LABEL_51;
  }

  v39 = v38;
  v40 = a2;
  if (!a2)
  {
    v40 = v38;
  }

  v41 = a2;
  v42 = [v40 URL];

  if (!v42)
  {
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v69 = sub_562FC();
    sub_B144(v69, qword_75728);
    v70 = v3;
    v71 = sub_562DC();
    v72 = sub_5792C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = 0xE90000000000003ELL;
      v74 = 0x6E776F6E6B6E753CLL;
      v75 = swift_slowAlloc();
      v239[0] = swift_slowAlloc();
      *v75 = 136315394;
      v76 = [v70 activeConversation];
      if (v76)
      {
        v77 = v76;
        v78 = [v76 selectedMessage];

        if (v78 && (v79 = [v78 guid], v78, v79))
        {
          v74 = sub_5778C();
          v73 = v80;
        }

        else
        {
          v74 = 0x6E776F6E6B6E753CLL;
        }
      }

      v145 = sub_293C0(v74, v73, v239);

      *(v75 + 4) = v145;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v239);
      _os_log_impl(&dword_0, v71, v72, "%s: %s called with message that had no URL", v75, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v146 = swift_allocError();
    *v147 = 0;
    v148 = [v70 presentationStyle];
    *v10 = v146;
    v149 = v235;
    swift_storeEnumTagMultiPayload();
    v150 = v237;
    sub_4CF18(v10, v237, type metadata accessor for ContentModel);
    (*(v234 + 56))(v150, 0, 1, v149);
    v151 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v152 = v236;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v150, v152 + v151, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v153 = sub_D94C(v10, v148);
    sub_26354(v153);

    sub_4CF80(v10, type metadata accessor for ContentModel);

    return;
  }

  sub_560AC();

  (*(v231 + 32))(v233, v30, v232);
  v43 = [v39 session];
  if (!v43)
  {
    (*(v230 + 56))(v20, 1, 1, v229);
LABEL_30:
    sub_2E90(v20, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v82 = sub_562FC();
    sub_B144(v82, qword_75728);
    v83 = v3;
    v84 = sub_562DC();
    v85 = sub_5792C();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = 0xE90000000000003ELL;
      v87 = 0x6E776F6E6B6E753CLL;
      v88 = swift_slowAlloc();
      v239[0] = swift_slowAlloc();
      *v88 = 136315394;
      v89 = [v83 activeConversation];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 selectedMessage];

        if (v91 && (v92 = [v91 guid], v91, v92))
        {
          v87 = sub_5778C();
          v86 = v93;
        }

        else
        {
          v87 = 0x6E776F6E6B6E753CLL;
        }
      }

      v108 = sub_293C0(v87, v86, v239);

      *(v88 + 4) = v108;
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v239);
      _os_log_impl(&dword_0, v84, v85, "%s: %s called with nil message.session", v88, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v109 = swift_allocError();
    *v110 = 0;
    v111 = [v83 presentationStyle];
    *v10 = v109;
    v112 = v235;
    swift_storeEnumTagMultiPayload();
    v113 = v237;
    sub_4CF18(v10, v237, type metadata accessor for ContentModel);
    (*(v234 + 56))(v113, 0, 1, v112);
    v114 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v115 = v236;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v113, v115 + v114, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v116 = sub_D94C(v10, v111);
    sub_26354(v116);

    sub_4CF80(v10, type metadata accessor for ContentModel);

    (*(v231 + 8))(v233, v232);
LABEL_51:

    return;
  }

  v44 = v43;
  v45 = [v43 identifier];

  v46 = v230;
  if (v45)
  {
    sub_5618C();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v81 = v229;
  (*(v46 + 56))(v17, v47, 1, v229);
  sub_B0DC(v17, v20, &qword_71B48, &qword_5A780);
  if ((*(v46 + 48))(v20, 1, v81) == 1)
  {
    goto LABEL_30;
  }

  (*(v46 + 32))(v228, v20, v81);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v215 = 0xE90000000000003ELL;
  v214 = 0x6E776F6E6B6E753CLL;
  v94 = sub_562FC();
  v95 = sub_B144(v94, qword_75728);
  v96 = v39;
  v97 = v3;
  v98 = sub_562DC();
  v99 = sub_5794C();

  if (os_log_type_enabled(v98, v99))
  {
    v212 = v95;
    v100 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v239[0] = v211;
    *v100 = 136315650;
    v101 = [v97 activeConversation];
    v213 = v94;
    if (v101 && (v102 = v101, v103 = [v101 selectedMessage], v102, v103) && (v104 = objc_msgSend(v103, "guid"), v103, v104))
    {
      v105 = sub_5778C();
      v107 = v106;
    }

    else
    {
      v105 = 0x6E776F6E6B6E753CLL;
      v107 = 0xE90000000000003ELL;
    }

    v117 = sub_293C0(v105, v107, v239);

    *(v100 + 4) = v117;
    *(v100 + 12) = 2080;
    *(v100 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v239);
    *(v100 + 22) = 2112;
    *(v100 + 24) = v96;
    v118 = v210;
    *v210 = v39;
    v119 = v96;
    _os_log_impl(&dword_0, v98, v99, "%s: %s called with message %@", v100, 0x20u);
    sub_2E90(v118, &qword_71828, &qword_598B0);

    swift_arrayDestroy();

    v94 = v213;
  }

  else
  {
  }

  v120 = *&v97[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser];
  v121 = sub_EB20(v233);
  v216 = v96;
  v212 = v120;
  v122 = qword_715B0;
  v123 = v121;
  v124 = v123;
  if (v122 != -1)
  {
    swift_once();
  }

  sub_B144(v94, qword_75740);
  v125 = v97;
  v126 = sub_562DC();
  v127 = sub_5794C();

  v128 = os_log_type_enabled(v126, v127);
  v213 = v124;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v239[0] = v131;
    *v129 = 136315394;
    v132 = [v125 activeConversation];
    if (v132)
    {
      v133 = v132;
      v134 = [v132 selectedMessage];

      if (v134)
      {
        v135 = [v134 guid];

        if (v135)
        {
          v214 = sub_5778C();
          v215 = v136;
        }
      }
    }

    v137 = sub_293C0(v214, v215, v239);

    *(v129 + 4) = v137;
    *(v129 + 12) = 2112;
    v138 = v213;
    *(v129 + 14) = v213;
    *v130 = v138;
    v139 = v138;
    _os_log_impl(&dword_0, v126, v127, "%s: Parsed payload from MSMessage: %@", v129, 0x16u);
    sub_2E90(v130, &qword_71828, &qword_598B0);

    sub_13040(v131);
  }

  if ([v96 isFromMe])
  {
    goto LABEL_73;
  }

  v140 = [v96 senderAddress];
  if (v140)
  {
    v141 = v140;
    v142 = sub_5778C();
    v144 = v143;
  }

  else
  {
    v142 = 0;
    v144 = 0;
  }

  v154 = [v238 senderAddress];
  v155 = sub_5778C();
  v157 = v156;

  if (v144)
  {
    if (v142 == v155 && v144 == v157)
    {

LABEL_73:
      LODWORD(v215) = 1;
      goto LABEL_75;
    }

    v158 = sub_57B8C();

    if (v158)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v159 = [v96 senderParticipantIdentifier];
  v160 = v217;
  sub_5618C();

  v161 = [v238 localParticipantIdentifier];
  v162 = v218;
  sub_5618C();

  LODWORD(v215) = sub_5617C();
  v163 = *(v230 + 8);
  v164 = v162;
  v165 = v229;
  v163(v164, v229);
  v163(v160, v165);
LABEL_75:
  v166 = [v96 guid];
  if (v166)
  {
    v167 = v166;
    v168 = sub_5778C();
    v170 = v169;
  }

  else
  {
    v168 = 0;
    v170 = 0;
  }

  v171 = [v96 senderAddress];
  v218 = v125;
  if (v171)
  {
    v172 = v171;
    v173 = sub_5778C();
    v175 = v174;
  }

  else
  {
    v173 = 0;
    v175 = 0;
  }

  v176 = v224;
  v177 = v227;
  (*(v230 + 16))(v227 + *(v224 + 28), v228, v229);
  v178 = [v238 senderAddress];
  v179 = sub_5778C();
  v181 = v180;

  *v177 = v168;
  *(v177 + 8) = v170;
  *(v177 + 16) = v173;
  *(v177 + 24) = v175;
  *(v177 + 32) = v215 & 1;
  v182 = (v177 + *(v176 + 32));
  *v182 = v179;
  v182[1] = v181;
  *(v177 + *(v176 + 36) + 8) = &off_6F6A0;
  v183 = v218;
  swift_unknownObjectWeakInit();
  v184 = *(v225 + 48);
  sub_104E4(v226, (v226 + v184), v233, v213);
  v238 = [v183 presentationStyle];
  if (!v175)
  {
    v193 = 0;
LABEL_98:
    v188 = 0;
LABEL_99:
    v196 = v222;
    v197 = v223;
    v198 = v226;
    sub_2E28(v226, &v223[*(v222 + 28)], &qword_71B00, &unk_593C0);
    sub_2E28(v198 + v184, v197 + v196[8], &qword_71B00, &unk_593C0);
    sub_4CF18(v227, v197 + v196[9], type metadata accessor for MessagesContext);
    v199 = v213;
    v200 = sub_575DC();
    v202 = v201;
    type metadata accessor for ManageContactsSetting(0);
    swift_allocObject();
    v203 = sub_320E4(v200, v202 & 1);
    *v197 = v188;
    v197[1] = v193;
    v197[2] = v175;
    v197[3] = v199;
    *(v197 + v196[10]) = v203;
    sub_4CF18(v197, v10, type metadata accessor for PayloadViewModel);
    v204 = v235;
    swift_storeEnumTagMultiPayload();
    v205 = v237;
    sub_4CF18(v10, v237, type metadata accessor for ContentModel);
    (*(v234 + 56))(v205, 0, 1, v204);
    v206 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v207 = v236;
    swift_beginAccess();
    v208 = v199;
    sub_4CEB0(v205, v207 + v206, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v209 = sub_D94C(v10, v238);
    sub_26354(v209);

    sub_4CF80(v10, type metadata accessor for ContentModel);
    sub_4CF80(v197, type metadata accessor for PayloadViewModel);
    [v218 requestResize];

    sub_2E90(v198, &qword_73468, &unk_5AE30);
    (*(v230 + 8))(v228, v229);
    (*(v231 + 8))(v233, v232);
    sub_4CF80(v227, type metadata accessor for MessagesContext);
    return;
  }

  v185 = v219;
  sub_572FC();
  v240._countAndFlagsBits = v173;
  v240._object = v175;
  v186 = sub_5730C(v240);
  (*(v220 + 8))(v185, v221);
  if (!v186)
  {
LABEL_97:
    v193 = 0;
    v175 = 0;
    goto LABEL_98;
  }

  if (v186 >> 62)
  {
    if (sub_57B1C())
    {
      goto LABEL_85;
    }

    goto LABEL_96;
  }

  if (!*(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_96:

    goto LABEL_97;
  }

LABEL_85:
  if ((v186 & 0xC000000000000001) != 0)
  {
    v187 = sub_57AEC();
    goto LABEL_88;
  }

  if (*(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8)))
  {
    v187 = *(v186 + 32);
LABEL_88:
    v188 = v187;

    v189 = qword_715F0;
    v190 = v188;
    if (v189 != -1)
    {
      swift_once();
    }

    v191 = sub_5738C();
    sub_B144(v191, qword_72500);
    v192.super.isa = v190;
    v241._countAndFlagsBits = 0;
    v241._object = 0xE000000000000000;
    v193 = sub_5735C(v192, 1, v241);
    v175 = v194;

    v195 = HIBYTE(v175) & 0xF;
    if ((v175 & 0x2000000000000000) == 0)
    {
      v195 = v193 & 0xFFFFFFFFFFFFLL;
    }

    if (!v195)
    {

      v193 = 0;
      v175 = 0;
    }

    goto LABEL_99;
  }

  __break(1u);
}

void sub_48414(void *a1)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_75728);
  v4 = v1;
  v5 = sub_562DC();
  v6 = sub_5791C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x6E776F6E6B6E753CLL;
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v4 activeConversation];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectedMessage];

      if (v12)
      {
        v13 = [v12 guid];

        if (v13)
        {
          v8 = sub_5778C();
          v7 = v14;
        }
      }
    }

    v15 = sub_293C0(v8, v7, &v16);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_293C0(0xD000000000000017, 0x800000000005D060, &v16);
    _os_log_impl(&dword_0, v5, v6, "%s: %s called", v9, 0x16u);
    swift_arrayDestroy();
  }

  [v4 setNeedsSizeMatchBeforeSnapshotSwap];
  sub_45A20(a1);
}

uint64_t sub_487A4(void *a1, uint64_t a2, uint64_t a3)
{
  v115 = a2;
  v116 = a3;
  v4 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v4 - 8);
  v104 = (&v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v97 - v7);
  v9 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v9 - 8);
  v106 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  __chkstk_darwin(v14);
  v110 = &v97 - v15;
  v16 = sub_5759C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v113 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2AFC(&qword_720F8, &unk_59710);
  __chkstk_darwin(v19 - 8);
  v111 = &v97 - v20;
  v21 = sub_560CC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v112 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v24 = sub_562FC();
  v25 = sub_B144(v24, qword_75728);

  v26 = sub_562DC();
  v27 = sub_5794C();

  v28 = os_log_type_enabled(v26, v27);
  v108 = v13;
  v107 = v8;
  v114 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v109 = v16;
    v30 = v29;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = sub_5768C();
    v34 = v22;
    v35 = sub_293C0(v32, v33, aBlock);

    *(v30 + 4) = v35;
    v22 = v34;
    _os_log_impl(&dword_0, v26, v27, "Received text input payload: %s", v30, 0xCu);
    sub_13040(v31);

    v16 = v109;
  }

  v37 = v115;
  v36 = v116;
  if ((v115 != 0xD00000000000002CLL || 0x800000000005CFC0 != v116) && (sub_57B8C() & 1) == 0)
  {

    v42 = sub_562DC();
    v48 = sub_5792C();

    if (os_log_type_enabled(v42, v48))
    {
      v49 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_293C0(v37, v36, aBlock);
      _os_log_impl(&dword_0, v42, v48, "%s Invalid payload ID: %s", v49, 0x16u);
      goto LABEL_18;
    }

LABEL_19:

    return 0;
  }

  aBlock[7] = 0x4C52556F746B7361;
  aBlock[8] = 0xE800000000000000;
  sub_57A5C();
  v38 = v114;
  if (!v114[2] || (v39 = sub_6EF0(aBlock), (v40 & 1) == 0))
  {
    sub_B7FC(aBlock);
LABEL_14:

    v42 = sub_562DC();
    v43 = sub_5792C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v44 + 12) = 2080;
      v45 = sub_5768C();
      v47 = sub_293C0(v45, v46, aBlock);

      *(v44 + 14) = v47;
      _os_log_impl(&dword_0, v42, v43, "%s No url in payload %s", v44, 0x16u);
LABEL_18:
      swift_arrayDestroy();

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  sub_17458(v38[7] + 32 * v39, v118);
  sub_B7FC(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v41 = v111;
  sub_560BC();

  if ((*(v22 + 48))(v41, 1, v21) == 1)
  {
    sub_2E90(v41, &qword_720F8, &unk_59710);
    goto LABEL_14;
  }

  v116 = v25;
  (*(v22 + 32))(v112, v41, v21);
  sub_5758C();
  v51 = sub_5765C();
  sub_4D9C0(&qword_71B20, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_4D9C0(&qword_71B28, &type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_5757C();
  v102 = v51;
  v52 = aBlock[0];
  v53 = sub_561AC();
  v54 = (*(v53 - 8) + 56);
  v55 = v110;
  v103 = *v54;
  v103(v110, 1, 1, v53);
  v56 = v52;
  ATPayload.newMessage(sessionId:)(v55);
  v114 = v56;
  v115 = 0;
  v111 = v57;
  v58 = v57;
  v101 = v54;
  v97 = v53;
  v99 = v21;
  v109 = v16;

  sub_2E90(v55, &qword_71B48, &qword_5A780);
  v110 = v58;
  v59 = sub_5763C();
  v60 = v107;
  v61 = v59;
  sub_5630C();
  v62 = sub_5636C();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 48))(v60, 1, v62);
  v100 = v17;
  v98 = v22;
  if (v64 == 1)
  {
    sub_2E90(v60, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v65 = (*(v63 + 88))(v60, v62);
    if (v65 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v66 = v65;
      (*(v63 + 96))(v60, v62);
      v67 = *v60;
      v68 = sub_574BC();
      v69 = v104;
      *v104 = v68;
      (*(v63 + 104))(v69, v66, v62);
      (*(v63 + 56))(v69, 0, 1, v62);
      v70 = v68;
      sub_5631C();
    }

    else
    {
      (*(v63 + 8))(v60, v62);
    }
  }

  v104 = sub_575DC();
  sub_5762C();
  sub_5761C();
  sub_575FC();
  sub_5760C();
  v107 = v61;
  v71 = sub_575CC();
  v72 = v110;
  v73 = [v110 session];

  if (v73)
  {
    v74 = [v73 identifier];

    v75 = v109;
    v76 = v100;
    v77 = v99;
    v78 = v98;
    v79 = v108;
    v80 = v97;
    if (v74)
    {
      v81 = v106;
      sub_5618C();

      v82 = 0;
    }

    else
    {
      v82 = 1;
      v81 = v106;
    }

    v103(v81, v82, 1, v80);
    sub_B0DC(v81, v79, &qword_71B48, &qword_5A780);
  }

  else
  {
    v79 = v108;
    v103(v108, 1, 1, v97);
    v75 = v109;
    v76 = v100;
    v77 = v99;
    v78 = v98;
  }

  v83 = v115;
  ATPayload.newMessage(sessionId:)(v79);
  if (v83)
  {
    sub_2E90(v79, &qword_71B48, &qword_5A780);

    swift_errorRetain();
    v85 = sub_562DC();
    v86 = sub_5792C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = v78;
      v90 = swift_slowAlloc();
      aBlock[0] = v90;
      *v87 = 136315394;
      *(v87 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v87 + 12) = 2112;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 14) = v91;
      *v88 = v91;
      _os_log_impl(&dword_0, v85, v86, "%s Error creating message from ATPayload: %@", v87, 0x16u);
      sub_2E90(v88, &qword_71828, &qword_598B0);

      sub_13040(v90);

      (*(v76 + 8))(v113, v75);
      (*(v89 + 8))(v112, v77);
    }

    else
    {

      (*(v76 + 8))(v113, v75);
      (*(v78 + 8))(v112, v77);
    }

    if (!v115)
    {
    }

    return 0;
  }

  v92 = v84;
  sub_2E90(v79, &qword_71B48, &qword_5A780);

  v93 = [v105 activeConversation];
  if (v93)
  {
    v94 = v93;
    aBlock[4] = sub_49924;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_49AD4;
    aBlock[3] = &unk_6F788;
    v95 = _Block_copy(aBlock);
    [v94 insertMessage:v92 completionHandler:v95];
    _Block_release(v95);
  }

  v96 = v110;
  sub_49BDC(v110);

  (*(v76 + 8))(v113, v75);
  (*(v78 + 8))(v112, v77);

  return 1;
}

void sub_49924(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v1 = sub_562FC();
    sub_B144(v1, qword_75728);
    swift_errorRetain();
    oslog = sub_562DC();
    v2 = sub_5792C();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_0, oslog, v2, "Error staging payload: %@", v3, 0xCu);
      sub_2E90(v4, &qword_71828, &qword_598B0);
    }

    else
    {
    }
  }
}

void sub_49AD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_49BDC(void *a1)
{
  v3 = sub_561AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2AFC(&qword_73458, &qword_5AE28);
  __chkstk_darwin(v61);
  v7 = &v55 - v6;
  v8 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v8 - 8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  if (qword_71618 != -1)
  {
    swift_once();
  }

  sub_4A3E8(a1);
  v22 = *&v1[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation];
  if (v22)
  {
    v56 = v1;
    v60 = a1;
    v58 = v22;
    v23 = [v58 selectedMessage];
    if (v23 && (v24 = v23, v25 = [v23 session], v24, v25))
    {
      v26 = [v25 identifier];

      if (v26)
      {
        sub_5618C();

        v27 = *(v4 + 56);
        v27(v18, 0, 1, v3);
      }

      else
      {
        v27 = *(v4 + 56);
        v27(v18, 1, 1, v3);
      }

      sub_B0DC(v18, v21, &qword_71B48, &qword_5A780);
    }

    else
    {
      v27 = *(v4 + 56);
      v27(v21, 1, 1, v3);
    }

    v28 = [v60 session];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 identifier];

      if (v30)
      {
        sub_5618C();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v27(v12, v31, 1, v3);
      sub_B0DC(v12, v15, &qword_71B48, &qword_5A780);
    }

    else
    {
      v27(v15, 1, 1, v3);
    }

    v32 = *(v61 + 48);
    sub_2E28(v21, v7, &qword_71B48, &qword_5A780);
    sub_2E28(v15, &v7[v32], &qword_71B48, &qword_5A780);
    v33 = *(v4 + 48);
    if (v33(v7, 1, v3) == 1)
    {
      sub_2E90(v15, &qword_71B48, &qword_5A780);
      sub_2E90(v21, &qword_71B48, &qword_5A780);
      if (v33(&v7[v32], 1, v3) == 1)
      {
        sub_2E90(v7, &qword_71B48, &qword_5A780);
        v34 = v58;
LABEL_24:
        if (qword_715A8 != -1)
        {
          swift_once();
        }

        v41 = sub_562FC();
        sub_B144(v41, qword_75728);
        v42 = v56;
        v43 = sub_562DC();
        v44 = sub_5794C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = 0xE90000000000003ELL;
          v46 = 0x6E776F6E6B6E753CLL;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v62 = v48;
          *v47 = 136315138;
          v49 = [v42 activeConversation];
          if (v49)
          {
            v50 = v49;
            v51 = [v49 selectedMessage];

            if (v51)
            {
              v52 = [v51 guid];

              if (v52)
              {
                v46 = sub_5778C();
                v45 = v53;
              }
            }
          }

          v54 = sub_293C0(v46, v45, &v62);

          *(v47 + 4) = v54;
          _os_log_impl(&dword_0, v43, v44, "%s: updateStaged called", v47, 0xCu);
          sub_13040(v48);
        }

        [v42 _didUpdateMessage:v60 conversation:v34];
        goto LABEL_33;
      }
    }

    else
    {
      v35 = v59;
      sub_2E28(v7, v59, &qword_71B48, &qword_5A780);
      if (v33(&v7[v32], 1, v3) != 1)
      {
        v36 = &v7[v32];
        v37 = v57;
        (*(v4 + 32))(v57, v36, v3);
        sub_4D9C0(&qword_73460, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = v35;
        v39 = sub_576CC();
        v40 = *(v4 + 8);
        v40(v37, v3);
        sub_2E90(v15, &qword_71B48, &qword_5A780);
        sub_2E90(v21, &qword_71B48, &qword_5A780);
        v40(v38, v3);
        sub_2E90(v7, &qword_71B48, &qword_5A780);
        v34 = v58;
        if (v39)
        {
          goto LABEL_24;
        }

LABEL_33:

        return;
      }

      sub_2E90(v15, &qword_71B48, &qword_5A780);
      sub_2E90(v21, &qword_71B48, &qword_5A780);
      (*(v4 + 8))(v35, v3);
    }

    sub_2E90(v7, &qword_73458, &qword_5AE28);
    v34 = v58;
    goto LABEL_33;
  }
}

void sub_4A3E8(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  __chkstk_darwin(v3 - 8);
  v5 = &v30[-1] - v4;
  v6 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30[-1] - v10;
  v12 = sub_561AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v30[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 session];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 identifier];

    if (v19)
    {
      sub_5618C();

      (*(v13 + 56))(v8, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v8, 1, 1, v12);
    }

    sub_B0DC(v8, v11, &qword_71B48, &qword_5A780);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v24 = *(v13 + 32);
      v24(v16, v11, v12);
      v25 = sub_2AFC(&unk_733D0, &qword_5ADF8);
      v26 = *(v25 + 48);
      v24(v5, v16, v12);
      *&v5[v26] = a1;
      (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
      v27 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
      swift_beginAccess();
      v28 = a1;
      sub_4CEB0(v5, v1 + v27, &qword_73450, &qword_5AE20);
      swift_endAccess();
      return;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_2E90(v11, &qword_71B48, &qword_5A780);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v20 = sub_562FC();
  sub_B144(v20, qword_75728);
  v21 = sub_562DC();
  v22 = sub_5792C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v30);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_293C0(0x617373654D646461, 0xEE00293A5F286567, v30);
    _os_log_impl(&dword_0, v21, v22, "%s: %s invalid session identifier", v23, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_4A890(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  __chkstk_darwin(v3 - 8);
  v105 = &v91 - v4;
  v107 = sub_2AFC(&qword_73458, &qword_5AE28);
  __chkstk_darwin(v107);
  v6 = &v91 - v5;
  v7 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v91 - v11;
  __chkstk_darwin(v13);
  v108 = &v91 - v14;
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  v21 = sub_561AC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v106 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v104 = &v91 - v25;
  __chkstk_darwin(v26);
  v103 = &v91 - v27;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v91 - v30;
  v32 = [a1 session];
  if (!v32)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_7:
    sub_2E90(v20, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v37 = sub_562FC();
    sub_B144(v37, qword_75728);
    v38 = sub_562DC();
    v39 = sub_5792C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v111);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v111);
      _os_log_impl(&dword_0, v38, v39, "%s: %s invalid session identifier", v40, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v109 = v31;
  v33 = v32;
  v34 = [v32 identifier];

  if (v34)
  {
    sub_5618C();

    v35 = *(v22 + 56);
    v35(v17, 0, 1, v21);
  }

  else
  {
    v35 = *(v22 + 56);
    v35(v17, 1, 1, v21);
  }

  sub_B0DC(v17, v20, &qword_71B48, &qword_5A780);
  v36 = *(v22 + 48);
  if (v36(v20, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  v98 = v6;
  v101 = v9;
  v41 = *(v22 + 32);
  v93 = v22 + 32;
  v92 = v41;
  v41(v109, v20, v21);
  v42 = v1;
  v43 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  swift_beginAccess();
  v44 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  v94 = *(v44 - 8);
  v45 = *(v94 + 48);
  v95 = v44;
  v46 = v45(v42 + v43, 1);
  v96 = v43;
  v97 = v42;
  v102 = v22;
  if (v46)
  {
    v47 = v108;
    v35(v108, 1, 1, v21);
    v49 = v22 + 16;
    v48 = *(v22 + 16);
    v50 = v49 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v51 = v22 + 16;
    v48 = *(v22 + 16);
    v50 = v51 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52 = v42 + v43;
    v47 = v108;
    v48(v108, v52, v21);
    v35(v47, 0, 1, v21);
  }

  v99 = v50;
  v48(v12, v109, v21);
  v35(v12, 0, 1, v21);
  v53 = *(v107 + 48);
  v54 = v98;
  sub_2E28(v47, v98, &qword_71B48, &qword_5A780);
  sub_2E28(v12, v54 + v53, &qword_71B48, &qword_5A780);
  v55 = v36(v54, 1, v21);
  v56 = v47;
  v57 = v101;
  v100 = v48;
  if (v55 == 1)
  {
    sub_2E90(v12, &qword_71B48, &qword_5A780);
    sub_2E90(v56, &qword_71B48, &qword_5A780);
    v58 = v36((v54 + v53), 1, v21);
    v59 = v109;
    if (v58 == 1)
    {
      sub_2E90(v54, &qword_71B48, &qword_5A780);
      v60 = v100;
LABEL_27:
      if (qword_715A8 != -1)
      {
        swift_once();
      }

      v76 = sub_562FC();
      sub_B144(v76, qword_75728);
      v77 = v104;
      v60(v104, v59, v21);
      v78 = sub_562DC();
      v79 = sub_5794C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v110[0] = swift_slowAlloc();
        *v80 = 136315650;
        *(v80 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v110);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v110);
        *(v80 + 22) = 2080;
        sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v81 = sub_57B7C();
        v83 = v82;
        v84 = v77;
        v85 = *(v102 + 8);
        v85(v84, v21);
        v86 = sub_293C0(v81, v83, v110);

        *(v80 + 24) = v86;
        _os_log_impl(&dword_0, v78, v79, "%s: %s removed staged message %s", v80, 0x20u);
        swift_arrayDestroy();

        v85(v59, v21);
      }

      else
      {

        v87 = *(v102 + 8);
        v87(v77, v21);
        v87(v59, v21);
      }

      v89 = v96;
      v88 = v97;
      v90 = v105;
      (*(v94 + 56))(v105, 1, 1, v95);
      swift_beginAccess();
      sub_4CEB0(v90, v88 + v89, &qword_73450, &qword_5AE20);
      swift_endAccess();
      return;
    }

    goto LABEL_20;
  }

  sub_2E28(v54, v101, &qword_71B48, &qword_5A780);
  if (v36((v54 + v53), 1, v21) == 1)
  {
    sub_2E90(v12, &qword_71B48, &qword_5A780);
    sub_2E90(v108, &qword_71B48, &qword_5A780);
    (*(v102 + 8))(v57, v21);
    v59 = v109;
LABEL_20:
    sub_2E90(v54, &qword_73458, &qword_5AE28);
    v60 = v100;
    goto LABEL_21;
  }

  v73 = v103;
  v92(v103, v54 + v53, v21);
  sub_4D9C0(&qword_73460, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v74 = sub_576CC();
  v75 = *(v102 + 8);
  v75(v73, v21);
  sub_2E90(v12, &qword_71B48, &qword_5A780);
  sub_2E90(v108, &qword_71B48, &qword_5A780);
  v75(v57, v21);
  sub_2E90(v54, &qword_71B48, &qword_5A780);
  v59 = v109;
  v60 = v100;
  if (v74)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v61 = sub_562FC();
  sub_B144(v61, qword_75728);
  v62 = v106;
  v60(v106, v59, v21);
  v63 = sub_562DC();
  v64 = sub_5794C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v110[0] = swift_slowAlloc();
    *v65 = 136315650;
    *(v65 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v110);
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v110);
    *(v65 + 22) = 2080;
    sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v66 = sub_57B7C();
    v67 = v62;
    v69 = v68;
    v70 = *(v102 + 8);
    v70(v67, v21);
    v71 = sub_293C0(v66, v69, v110);

    *(v65 + 24) = v71;
    _os_log_impl(&dword_0, v63, v64, "%s: %s no staged message for %s", v65, 0x20u);
    swift_arrayDestroy();

    v70(v59, v21);
  }

  else
  {

    v72 = *(v102 + 8);
    v72(v62, v21);
    v72(v59, v21);
  }
}

uint64_t sub_4B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_578AC();
  v5[7] = sub_5789C();
  v7 = sub_5788C();

  return _swift_task_switch(sub_4B8AC, v7, v6);
}

uint64_t sub_4B8AC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v2);
  if (v1)
  {
    sub_5778C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_4B9A4;
  v10 = *(v0 + 16);

  return sub_4D700(v10);
}

uint64_t sub_4B9A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (a3)
  {

    v11 = sub_5774C();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v6 + 64);
  (v12)[2](v12, a1 & 1, v11);

  _Block_release(v12);

  v13 = *(v10 + 8);

  return v13();
}

double sub_4BBC8(double a1, double a2)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v5 = 0xE90000000000003ELL;
  v6 = 0x6E776F6E6B6E753CLL;
  v7 = sub_562FC();
  sub_B144(v7, qword_75728);
  v8 = v2;
  v9 = sub_562DC();
  v10 = sub_5794C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v8 activeConversation];
    if (v12 && (v13 = v12, v14 = [v12 selectedMessage], v13, v14) && (v15 = objc_msgSend(v14, "guid"), v14, v15))
    {
      v16 = sub_5778C();
      v18 = v17;

      v19 = v16;
      v6 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v19 = 0x6E776F6E6B6E753CLL;
      v18 = 0xE90000000000003ELL;
    }

    v20 = sub_293C0(v19, v18, &v37);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_293C0(0xD000000000000017, 0x800000000005CF80, &v37);
    _os_log_impl(&dword_0, v9, v10, "%s: %s called", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_26CC0(a1, a2);
  v22 = v21;
  v24 = v23;
  v25 = v8;
  v26 = sub_562DC();
  v27 = sub_5794C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136316162;
    v30 = [v25 activeConversation];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 selectedMessage];

      if (v32 && (v33 = [v32 guid], v32, v33))
      {
        v6 = sub_5778C();
        v5 = v34;
      }

      else
      {
        v6 = 0x6E776F6E6B6E753CLL;
      }
    }

    v35 = sub_293C0(v6, v5, &v37);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v22;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v24;
    *(v28 + 32) = 2048;
    *(v28 + 34) = a1;
    *(v28 + 42) = 2048;
    *(v28 + 44) = a2;
    _os_log_impl(&dword_0, v26, v27, "%s: contentSizeThatFits returning %f x %f in fitting size %f x %f", v28, 0x34u);
    sub_13040(v29);
  }

  return v22;
}

id sub_4C024(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser;
  type metadata accessor for MessageParser();
  *&v3[v6] = swift_allocObject();
  *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = 0;
  v7 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer;
  v18[3] = &type metadata for ContentControllerProvider;
  v18[4] = &off_6E880;
  type metadata accessor for ContentContainer(0);
  v8 = swift_allocObject();
  sub_4CFE0(v18, &type metadata for ContentControllerProvider);
  v16 = &type metadata for ContentControllerProvider;
  v17 = &off_6E880;
  *(v8 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 72) = 0;
  v9 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v10 = type metadata accessor for ContentModel(0);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_2A3C8(&v15, v8 + 16);
  sub_13040(v18);
  *&v3[v7] = v8;
  if (a2)
  {
    v11 = sub_5774C();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for MessagesViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_4C204(void *a1)
{
  v3 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser;
  type metadata accessor for MessageParser();
  *&v1[v3] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = 0;
  v4 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer;
  v14[3] = &type metadata for ContentControllerProvider;
  v14[4] = &off_6E880;
  type metadata accessor for ContentContainer(0);
  v5 = swift_allocObject();
  sub_4CFE0(v14, &type metadata for ContentControllerProvider);
  v12 = &type metadata for ContentControllerProvider;
  v13 = &off_6E880;
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  v6 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v7 = type metadata accessor for ContentModel(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_2A3C8(&v11, v5 + 16);
  sub_13040(v14);
  *&v1[v4] = v5;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MessagesViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_4C40C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_4C4C0()
{
  type metadata accessor for StagedMessageStore(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  v2 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_73340 = v0;
  return result;
}

uint64_t sub_4C550()
{
  sub_2E90(v0 + OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached, &qword_73450, &qword_5AE20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StagedMessageStore(uint64_t a1)
{
  result = qword_733B8;
  if (!qword_733B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4C618(uint64_t a1)
{
  sub_4C6A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_4C6A8(uint64_t a1)
{
  if (!qword_733C8)
  {
    sub_2C70(&unk_733D0, &qword_5ADF8);
    v1 = sub_579AC();
    if (!v2)
    {
      atomic_store(v1, &qword_733C8);
    }
  }
}

uint64_t sub_4C70C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22334;

  return v6();
}

uint64_t sub_4C7F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_BBC4;

  return v7();
}

uint64_t sub_4C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_2E28(a3, v23 - v10, &qword_71820, &qword_59550);
  v12 = sub_578CC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2E90(v11, &qword_71820, &qword_59550);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_578BC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_5788C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_577BC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2E90(a3, &qword_71820, &qword_59550);

    return v21;
  }

LABEL_8:
  sub_2E90(a3, &qword_71820, &qword_59550);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_4CBD8()
{
  v7[3] = &type metadata for ContentControllerProvider;
  v7[4] = &off_6E880;
  type metadata accessor for ContentContainer(0);
  v0 = swift_allocObject();
  sub_4CFE0(v7, &type metadata for ContentControllerProvider);
  v5 = &type metadata for ContentControllerProvider;
  v6 = &off_6E880;
  *(v0 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  v1 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v2 = type metadata accessor for ContentModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_2A3C8(&v4, v0 + 16);
  sub_13040(v7);
  return v0;
}

void sub_4CCB4(uint64_t a1, uint64_t a2)
{
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_757A0);

  v4 = sub_562DC();
  v5 = sub_5794C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_26278();
    v9 = sub_293C0(v7, v8, &v12);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_293C0(0xD00000000000001ELL, 0x800000000005CF40, &v12);
    _os_log_impl(&dword_0, v4, v5, "%s: %s called", v6, 0x16u);
    swift_arrayDestroy();
  }

  *(a2 + 64) = &off_6F6A0;
  swift_unknownObjectWeakAssign();
  v10 = *(a2 + 72);
  if (v10)
  {
    v11 = v10;
    sub_26354(v11);
  }
}

uint64_t sub_4CEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_4CF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4CF80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4CFE0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_4D030()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4D088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_BBC4;

  return sub_4B80C(v2, v3, v4, v5, v6);
}

uint64_t sub_4D154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22334;

  return sub_4C70C(v2, v3, v4);
}

uint64_t sub_4D214()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4D254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22334;

  return sub_4C7F4(a1, v4, v5, v6);
}

uint64_t sub_4D320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4D358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22334;

  return sub_32BC4(a1, v4);
}

uint64_t sub_4D410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_BBC4;

  return sub_32BC4(a1, v4);
}

void sub_4D4C8(void *a1)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_75728);
  v4 = v1;
  v5 = sub_562DC();
  v6 = sub_5791C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x6E776F6E6B6E753CLL;
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v4 activeConversation];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectedMessage];

      if (v12)
      {
        v13 = [v12 guid];

        if (v13)
        {
          v8 = sub_5778C();
          v7 = v14;
        }
      }
    }

    v15 = sub_293C0(v8, v7, &v16);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_293C0(0xD00000000000001BLL, 0x800000000005D040, &v16);
    _os_log_impl(&dword_0, v5, v6, "%s: %s called", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_45A20(a1);
}

uint64_t sub_4D700(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_560CC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_578AC();
  v1[6] = sub_5789C();
  v4 = sub_5788C();

  return _swift_task_switch(sub_4D7F4, v4, v3);
}

uint64_t sub_4D7F4()
{
  v1 = *(v0 + 16);

  v2 = [v1 session];
  if (v2)
  {
    if (qword_71618 != -1)
    {
      v16 = v2;
      swift_once();
      v2 = v16;
    }

    v3 = v2;
    v4 = v2;
    v5 = sub_45B3C(v3);

    if (v5)
    {
      v6 = [v5 URL];
      if (v6)
      {
        v8 = *(v0 + 32);
        v7 = *(v0 + 40);
        v9 = *(v0 + 24);
        v10 = v6;
        sub_560AC();

        sub_5609C(v11);
        v13 = v12;
        (*(v8 + 8))(v7, v9);
      }

      else
      {
        v13 = 0;
      }

      [*(v0 + 16) setURL:v13];
    }
  }

  if (qword_71618 != -1)
  {
    swift_once();
  }

  sub_4A890(*(v0 + 16));

  v14 = *(v0 + 8);

  return v14(1, 0, 0);
}

uint64_t sub_4D9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4DA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_4DA28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_4DA3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4DA84(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_4DAFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_2AFC(qword_71950, qword_58E10);
  __chkstk_darwin(v3 - 8);
  v69 = &v53 - v4;
  v79 = sub_5605C();
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_561CC();
  v6 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v53 - v9;
  v80 = sub_5773C();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v53 - v13;
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v65 = sub_5606C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v74 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2AFC(&qword_73478, &qword_5AF48);
  __chkstk_darwin(v68);
  v67 = &v53 - v18;
  v70 = a1;
  v62 = sub_4E43C(a1);
  sub_576DC();
  v61 = sub_B038();
  v19 = sub_5796C();
  if (!v19)
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v20 = v19;
  v21 = v76;
  sub_561BC();
  v22 = *(v10 + 16);
  v60 = v10 + 16;
  v59 = v22;
  v22(v72, v16, v80);
  v23 = *(v6 + 16);
  v63 = v16;
  v24 = v78;
  v58 = v23;
  v23(v75, v21, v78);
  v25 = [v20 bundleURL];
  v26 = v77;
  sub_560AC();

  v27 = v81[13];
  v57 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v81 += 13;
  v56 = v27;
  v27(v26);
  sub_5607C();

  v28 = *(v6 + 8);
  v66 = v6 + 8;
  v55 = v28;
  v28(v21, v24);
  v29 = *(v10 + 8);
  v30 = v63;
  v63 = (v10 + 8);
  v54 = v29;
  v29(v30, v80);
  sub_576DC();
  v31 = sub_5796C();
  if (!v31)
  {
    v31 = [objc_opt_self() mainBundle];
  }

  v32 = v31;
  v33 = v76;
  sub_561BC();
  v34 = v73;
  v35 = v80;
  v59(v72, v73, v80);
  v36 = v78;
  v58(v75, v33, v78);
  v37 = [v32 bundleURL];
  v38 = v77;
  sub_560AC();

  v56(v38, v57, v79);
  v39 = v69;
  sub_5607C();

  v55(v33, v36);
  v54(v34, v35);
  v40 = v64;
  v41 = v65;
  (*(v64 + 56))(v39, 0, 1, v65);
  v42 = v70;
  v85 = *v70;
  v43 = *(v70 + 2);
  v83 = *(v70 + 3);
  v84 = v43;
  v44 = swift_allocObject();
  v45 = v42[1];
  *(v44 + 1) = *v42;
  *(v44 + 2) = v45;
  *(v44 + 3) = v42[2];
  v46 = v67;
  (*(v40 + 32))(v67, v74, v41);
  v47 = v68;
  v48 = sub_B0DC(v39, v46 + *(v68 + 36), qword_71950, qword_58E10);
  v81 = &v53;
  *(v46 + v47[10]) = 0;
  *(v46 + v47[11]) = v62;
  v49 = (v46 + v47[12]);
  *v49 = sub_4F568;
  v49[1] = v44;
  __chkstk_darwin(v48);
  *(&v53 - 2) = v42;
  sub_2E28(&v85, v82, &qword_72A08, &qword_5A398);
  sub_2E28(&v84, v82, &qword_72D70, &qword_5AF60);
  sub_2E28(&v83, v82, &qword_734A0, &qword_5AF68);

  sub_2AFC(&qword_73480, &qword_5AF50);
  sub_3260(&qword_73488, &qword_73478, &qword_5AF48, &unk_58EA0);
  v50 = sub_2C70(&qword_73490, &qword_5AF58);
  v51 = sub_3260(&qword_73498, &qword_73490, &qword_5AF58, &protocol conformance descriptor for ToolbarItem<A, B>);
  v82[0] = v50;
  v82[1] = v51;
  swift_getOpaqueTypeConformance2();
  sub_56F2C();
  return sub_2E90(v46, &qword_73478, &qword_5AF48);
}

uint64_t sub_4E43C(__int128 *a1)
{
  v47 = a1;
  v1 = sub_561AC();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_5605C();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_561CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_5773C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_5606C();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_58B30;
  sub_576DC();
  sub_B038();
  v22 = sub_5796C();
  if (!v22)
  {
    v22 = [objc_opt_self() mainBundle];
  }

  v23 = v22;
  sub_561BC();
  (*(v14 + 16))(v16, v19, v13);
  (*(v7 + 16))(v9, v12, v6);
  v24 = [v23 bundleURL];
  v46 = v13;
  v25 = v6;
  v26 = v24;
  sub_560AC();

  (*(v48 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v49);
  v27 = v51;
  sub_5607C();

  (*(v7 + 8))(v12, v25);
  (*(v14 + 8))(v19, v46);
  v28 = v47;
  v61 = *v47;
  v29 = *(v47 + 2);
  v59 = *(v47 + 3);
  v60 = v29;
  v30 = swift_allocObject();
  v31 = v28[1];
  *(v30 + 1) = *v28;
  *(v30 + 2) = v31;
  *(v30 + 3) = v28[2];
  sub_2E28(&v61, v58, &qword_72A08, &qword_5A398);
  sub_2E28(&v60, v58, &qword_72D70, &qword_5AF60);
  sub_2E28(&v59, v58, &qword_734A0, &qword_5AF68);

  v32 = v54;
  sub_5619C();
  v33 = sub_5615C();
  v35 = v34;
  (*(v55 + 8))(v32, v56);
  v36 = type metadata accessor for Choice(0);
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
  *v38 = nullsub_1;
  v38[1] = 0;
  v39 = &v37[OBJC_IVAR____TtC13AskToMessages6Choice_id];
  *v39 = v33;
  v39[1] = v35;
  v41 = v52;
  v40 = v53;
  (*(v52 + 16))(&v37[OBJC_IVAR____TtC13AskToMessages6Choice_title], v27, v53);
  v37[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 0;
  *&v37[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
  v42 = &v37[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v37[OBJC_IVAR____TtC13AskToMessages6Choice_action];
  *v43 = sub_52DE0;
  v43[1] = v30;
  v57.receiver = v37;
  v57.super_class = v36;
  v44 = objc_msgSendSuper2(&v57, "init");
  (*(v41 + 8))(v27, v40);
  result = v50;
  *(v50 + 32) = v44;
  return result;
}

uint64_t sub_4EA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_2AFC(&qword_734C8, &qword_5AF80);
  sub_5708C();
  v2();
}

__n128 sub_4EAEC@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v13 = v3;
  sub_2E28(&v14, &v11, &qword_72A08, &qword_5A398);
  sub_2AFC(&qword_734C8, &qword_5AF80);
  sub_570AC();
  v4 = v11;
  v10 = v12;
  *a2 = swift_getKeyPath();
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for PersonInformationEditContentView(0);
  v6 = a2 + v5[7];
  LOBYTE(v13) = 0;
  sub_5707C();
  v7 = v12.n128_u64[0];
  *v6 = v11;
  *(v6 + 1) = v7;
  *(a2 + v5[5]) = v14;
  v8 = a2 + v5[6];
  *v8 = v4;
  result = v10;
  *(v8 + 8) = v10;
  return result;
}

uint64_t sub_4EC00(uint64_t a1)
{
  v2 = sub_56AEC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_2AFC(&qword_73490, &qword_5AF58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_56ADC();
  v9 = a1;
  sub_2AFC(&qword_734A8, &qword_5AF70);
  sub_3260(&qword_734B0, &qword_734A8, &qword_5AF70, &protocol conformance descriptor for Button<A>);
  sub_566CC();
  sub_3260(&qword_73498, &qword_73490, &qword_5AF58, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_56B4C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_4EDEC(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = v2;
  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = a1[2];
  sub_2E28(&v9, v6, &qword_72A08, &qword_5A398);
  sub_2E28(&v8, v6, &qword_72D70, &qword_5AF60);
  sub_2E28(&v7, v6, &qword_734A0, &qword_5AF68);

  sub_2AFC(&qword_734B8, &qword_5AF78);
  sub_3260(&qword_734C0, &qword_734B8, &qword_5AF78, &protocol conformance descriptor for Label<A, B>);
  return sub_570DC();
}

uint64_t sub_4EF48@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_5605C();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_561CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_5773C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = sub_5606C();
  v31 = *(v18 - 8);
  v32 = v18;
  __chkstk_darwin(v18);
  v30 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_B038();
  v20 = sub_5796C();
  if (!v20)
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v21 = v20;
  sub_561BC();
  (*(v12 + 16))(v14, v17, v11);
  (*(v5 + 16))(v7, v10, v4);
  v22 = [v21 bundleURL];
  v29 = v11;
  v23 = v4;
  v24 = v22;
  sub_560AC();

  (*(v33 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v34);
  v25 = v30;
  sub_5607C();

  (*(v5 + 8))(v10, v23);
  v26 = (*(v12 + 8))(v17, v29);
  __chkstk_darwin(v26);
  *(&v29 - 2) = v25;
  __chkstk_darwin(v27);
  *(&v29 - 2) = 0x6B72616D78;
  *(&v29 - 1) = 0xE500000000000000;
  sub_5706C();
  return (*(v31 + 8))(v25, v32);
}

uint64_t sub_4F3CC()
{
  sub_2AFC(&qword_73470, &qword_5AF40);
  sub_2C70(&qword_73478, &qword_5AF48);
  sub_2C70(&qword_73480, &qword_5AF50);
  sub_3260(&qword_73488, &qword_73478, &qword_5AF48, &unk_58EA0);
  sub_2C70(&qword_73490, &qword_5AF58);
  sub_3260(&qword_73498, &qword_73490, &qword_5AF58, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_5677C();
}

void *sub_4F5AC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for PersonInformationEditContentView(0) + 24);
  v17[1] = *v10;
  v18 = *(v10 + 8);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v17[0] + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  (*(v7 + 16))(v9, v17[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

  v12 = sub_5745C();
  v14 = v13;
  result = (*(v7 + 8))(v9, v6);
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *a3 = v15;
  a3[1] = v16;
  return result;
}

uint64_t sub_4F738(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for PersonInformationEditContentView(0);

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v6 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_53A28(v8);
  v6 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a5)
  {
    sub_5748C();

    sub_5746C();
    sub_5711C();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_4F8C0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for PersonInformationEditContentView(0) + 24);
  v15[1] = *v10;
  v16 = *(v10 + 8);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v15[0] + 16) > a2)
  {
    (*(v7 + 16))(v9, v15[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

    v12 = sub_5743C();
    v14 = v13;
    result = (*(v7 + 8))(v9, v6);
    *a3 = v12;
    a3[1] = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_4FA3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for PersonInformationEditContentView(0);

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v6 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_53A28(v8);
  v6 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a5)
  {
    sub_5748C();
    sub_5744C();
    sub_5711C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_4FBC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v26 = sub_56B6C();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_73598, &qword_5B078);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v29 = sub_2AFC(&qword_735A0, &qword_5B080);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v24 - v9;
  v10 = sub_2AFC(&qword_735A8, &qword_5B088);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v28 = sub_2AFC(&qword_735B0, &qword_5B090);
  __chkstk_darwin(v28);
  v15 = &v24 - v14;
  v34 = v2;
  sub_2AFC(&qword_735B8, &qword_5B098);
  sub_53300();
  sub_56D7C();
  sub_56C9C();
  sub_56B5C();
  v16 = sub_3260(&qword_735D8, &qword_73598, &qword_5B078, &protocol conformance descriptor for List<A, B>);
  sub_56E7C();
  v17 = *(v3 + 8);
  v18 = v26;
  v17(v5, v26);
  (*(v27 + 8))(v8, v6);
  sub_56CCC();
  sub_56B5C();
  v35 = v6;
  v36 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v29;
  v21 = v25;
  sub_56E7C();
  v17(v5, v18);
  (*(v32 + 8))(v21, v20);
  v35 = v20;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v30;
  sub_56EDC();
  (*(v31 + 8))(v13, v22);
  *&v15[*(v28 + 36)] = 256;
  sub_533B0();
  sub_56EBC();
  return sub_2E90(v15, &qword_735B0, &qword_5B090);
}

uint64_t sub_50070(uint64_t a1)
{
  v2 = type metadata accessor for PersonInformationEditContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (a1 + *(v5 + 32));
  v12 = *v6;
  v13 = *(v6 + 1);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v7 = *(v11 + 16);

  v12 = 0;
  *&v13 = v7;
  swift_getKeyPath();
  sub_53520(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_536E0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2AFC(&qword_729E8, &unk_5A380);
  sub_2AFC(&qword_735D0, &qword_5B0A0);
  sub_30B78();
  sub_3260(&qword_735C8, &qword_735D0, &qword_5B0A0, &unk_59D38);
  return sub_5718C();
}

void *sub_50264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_50524(a1, a2, &v27);
  *&v26 = 0x4046000000000000;
  BYTE8(v26) = 0;
  v10 = type metadata accessor for PersonInformationEditContentView(0);
  v11 = (a1 + *(v10 + 20));
  v13 = *v11;
  v12 = v11[1];
  v14 = a1 + *(v10 + 24);
  *v38 = *v14;
  *&v38[8] = *(v14 + 8);

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*&v36[0] + 16) > a2)
  {
    (*(v7 + 16))(v9, *&v36[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

    v16 = sub_5747C();
    (*(v7 + 8))(v9, v6);
    v17 = v33;
    v36[6] = v32;
    v36[7] = v33;
    v36[8] = v34;
    v18 = v28;
    v19 = v29;
    v36[2] = v28;
    v36[3] = v29;
    v20 = v30;
    v21 = v31;
    v36[4] = v30;
    v36[5] = v31;
    v22 = v26;
    v23 = v27;
    v36[0] = v26;
    v36[1] = v27;
    *(a3 + 96) = v32;
    *(a3 + 112) = v17;
    *(a3 + 128) = v34;
    *(a3 + 32) = v18;
    *(a3 + 48) = v19;
    *(a3 + 64) = v20;
    *(a3 + 80) = v21;
    v24 = v35;
    v37 = v35;
    v25[0] = 0;
    *a3 = v22;
    *(a3 + 16) = v23;
    *(a3 + 144) = v24;
    *(a3 + 152) = 0x4046000000000000;
    *(a3 + 160) = 0;
    *(a3 + 168) = v13;
    *(a3 + 176) = v12;
    *(a3 + 184) = v16;
    sub_2E28(v36, v38, &qword_735F0, &qword_5B0D8);
    v43 = v32;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    *v38 = v26;
    *&v38[16] = v27;
    return sub_2E90(v38, &qword_735F0, &qword_5B0D8);
  }

  __break(1u);
  return result;
}

__n128 sub_50524@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for PersonInformationEditContentView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_53520(a1, v8);
  sub_578AC();
  v9 = sub_5789C();
  v10 = *(v6 + 80);
  v11 = (v10 + 32) & ~v10;
  v36 = v7 + 7;
  v12 = (v7 + 7 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v13 + v11);
  *(v13 + v12) = a2;
  sub_53520(a1, v8);
  v14 = sub_5789C();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v15 + v11);
  v16 = a2;
  *(v15 + v12) = a2;
  sub_5714C();
  v34 = *(&v37 + 1);
  v35 = v37;
  v32 = v38.n128_i64[1];
  v33 = v38.n128_u64[0];
  sub_53520(a1, v8);
  v17 = sub_5789C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v18 + v11);
  *(v18 + v12) = v16;
  sub_53520(a1, v8);
  v19 = sub_5789C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v20 + v11);
  *(v20 + v12) = v16;
  sub_2AFC(&qword_72A08, &qword_5A398);
  sub_5714C();
  v21 = v37;
  v22 = v38;
  sub_53520(a1, v8);
  v23 = (v10 + 16) & ~v10;
  v24 = (v36 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_536E0(v8, v25 + v23);
  *(v25 + v24) = v16;
  sub_53AE4(v35, v34, v33, v32, v21, *(&v21 + 1), v22.n128_i64[0], v22.n128_i64[1], &v37, sub_5398C, v25);
  v26 = v44;
  v27 = v31;
  *(v31 + 96) = v43;
  *(v27 + 112) = v26;
  *(v27 + 128) = v45;
  v28 = v40;
  *(v27 + 32) = v39;
  *(v27 + 48) = v28;
  v29 = v42;
  *(v27 + 64) = v41;
  *(v27 + 80) = v29;
  result = v38;
  *v27 = v37;
  *(v27 + 16) = result;
  return result;
}

uint64_t sub_508A4(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v5 = sub_5600C();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonInformationEditContentView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_53520(a2, v10);
  v32[1] = sub_578AC();
  v11 = sub_5789C();
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_536E0(v10, v14 + v12);
  v34 = a3;
  *(v14 + v13) = a3;
  sub_53520(a2, v10);
  v15 = sub_5789C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_536E0(v10, v16 + v12);
  *(v16 + v13) = a3;
  sub_2AFC(&qword_72A08, &qword_5A398);
  sub_5714C();
  v17 = [v38 identifier];
  v18 = sub_5778C();
  v20 = v19;

  v39 = v18;
  v40 = v20;
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  sub_5711C();

  v21 = v33;
  sub_53520(v33, v10);
  v22 = sub_5789C();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_536E0(v10, v23 + v12);
  v24 = v34;
  *(v23 + v13) = v34;
  sub_53520(v21, v10);
  v25 = sub_5789C();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_536E0(v10, v26 + v12);
  *(v26 + v13) = v24;
  sub_5714C();
  v27 = v35;
  sub_25D9C();
  v28 = sub_55FEC();
  v30 = v29;
  (*(v36 + 8))(v27, v37);
  v39 = v28;
  v40 = v30;
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5711C();
}

uint64_t sub_50CD8()
{
  v1 = sub_2AFC(&qword_73610, &qword_5B270);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  *v3 = sub_5697C();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = sub_2AFC(&qword_73618, &unk_5B278);
  sub_50EDC(v0, &v3[*(v4 + 44)]);
  v13 = *(v0 + 64);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_570AC();
  v5 = swift_allocObject();
  v6 = *(v0 + 112);
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(v0 + 128);
  v7 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v7;
  v8 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v8;
  v9 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v9;
  sub_541E0(v0, &v12);
  sub_3260(&qword_73620, &qword_73610, &qword_5B270, &protocol conformance descriptor for HStack<A>);
  sub_54218();
  sub_56F1C();

  return sub_2E90(v3, &qword_73610, &qword_5B270);
}

uint64_t sub_50EDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v93 = a2;
  v85 = sub_5605C();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_561CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v78 - v8;
  v10 = sub_5773C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v17 = sub_5606C();
  __chkstk_darwin(v17 - 8);
  v82 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2AFC(&qword_73630, &qword_5B288);
  v87 = *(v19 - 8);
  v88 = v19;
  __chkstk_darwin(v19);
  v86 = &v78 - v20;
  v84 = sub_2AFC(&qword_73638, &qword_5B290);
  __chkstk_darwin(v84);
  *&v91 = &v78 - v21;
  *&v90 = sub_2AFC(&qword_73640, &qword_5B298);
  __chkstk_darwin(v90);
  v92 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v89 = &v78 - v24;
  __chkstk_darwin(v25);
  v94 = &v78 - v26;
  v27 = v16;
  sub_576DC();
  sub_B038();
  v28 = sub_5796C();
  if (!v28)
  {
    v28 = [objc_opt_self() mainBundle];
  }

  v29 = v28;
  sub_561BC();
  (*(v11 + 16))(v13, v27, v10);
  (*(v4 + 16))(v6, v9, v3);
  v30 = [v29 bundleURL];
  v78 = v3;
  v79 = v10;
  v31 = v30;
  v32 = v80;
  sub_560AC();

  (*(v83 + 104))(v32, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v85);
  sub_5607C();

  (*(v4 + 8))(v9, v78);
  (*(v11 + 8))(v27, v79);
  v33 = v81;
  v34 = v81[1];
  v107 = *v81;
  v108 = v34;
  v35 = v81[1];
  v95 = *v81;
  v96 = v35;
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5713C();
  v36 = v86;
  sub_5720C();
  v37 = *(v33 + 48);
  v105 = *(v33 + 32);
  v106 = v37;
  v38 = *(v33 + 48);
  v95 = *(v33 + 32);
  v96 = v38;
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  sub_5710C();
  if (v101)
  {

    v39 = sub_56B8C();
  }

  else
  {
    v39 = sub_56B7C();
  }

  v40 = v39;
  v41 = v91;
  (*(v87 + 32))(v91, v36, v88);
  *(v41 + *(v84 + 36)) = v40;
  v95 = v105;
  v96 = v106;
  sub_5710C();
  v42 = v101;
  if (v101)
  {
  }

  v43 = v42 != 0;
  KeyPath = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  v46 = v89;
  sub_B0DC(v41, v89, &qword_73638, &qword_5B290);
  v47 = (v46 + *(v90 + 36));
  *v47 = KeyPath;
  v47[1] = sub_42274;
  v47[2] = v45;
  sub_B0DC(v46, v94, &qword_73640, &qword_5B298);
  v95 = v107;
  v96 = v108;
  sub_5710C();
  v49 = v100;
  v48 = v101;

  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
    v95 = v105;
    v96 = v106;
    sub_5710C();
    if (!v101)
    {
      v68 = swift_allocObject();
      v69 = *(v33 + 112);
      *(v68 + 112) = *(v33 + 96);
      *(v68 + 128) = v69;
      *(v68 + 144) = *(v33 + 128);
      v70 = *(v33 + 48);
      *(v68 + 48) = *(v33 + 32);
      *(v68 + 64) = v70;
      v71 = *(v33 + 80);
      *(v68 + 80) = *(v33 + 64);
      *(v68 + 96) = v71;
      v72 = *(v33 + 16);
      *(v68 + 16) = *v33;
      *(v68 + 32) = v72;
      v73 = swift_allocObject();
      v74 = *(v33 + 112);
      *(v73 + 112) = *(v33 + 96);
      *(v73 + 128) = v74;
      *(v73 + 144) = *(v33 + 128);
      v75 = *(v33 + 48);
      *(v73 + 48) = *(v33 + 32);
      *(v73 + 64) = v75;
      v76 = *(v33 + 80);
      *(v73 + 80) = *(v33 + 64);
      *(v73 + 96) = v76;
      v77 = *(v33 + 16);
      *(v73 + 16) = *v33;
      *(v73 + 32) = v77;
      v100 = sub_544A8;
      v101 = v68;
      *&v102 = sub_518E8;
      *(&v102 + 1) = 0;
      *&v103 = sub_54578;
      *(&v103 + 1) = v73;
      v104 = 1;
      sub_541E0(v33, &v95);
      goto LABEL_14;
    }
  }

  v51 = swift_allocObject();
  v52 = *(v33 + 112);
  *(v51 + 112) = *(v33 + 96);
  *(v51 + 128) = v52;
  *(v51 + 144) = *(v33 + 128);
  v53 = *(v33 + 48);
  *(v51 + 48) = *(v33 + 32);
  *(v51 + 64) = v53;
  v54 = *(v33 + 80);
  *(v51 + 80) = *(v33 + 64);
  *(v51 + 96) = v54;
  v55 = *(v33 + 16);
  *(v51 + 16) = *v33;
  *(v51 + 32) = v55;
  v100 = sub_5428C;
  v101 = v51;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
LABEL_14:
  sub_541E0(v33, &v95);
  sub_2AFC(&qword_73648, &qword_5B2D0);
  sub_54294();
  sub_542E8();
  sub_56ABC();
  v90 = v95;
  v91 = v96;
  v56 = v97;
  v57 = v98;
  v58 = v99;
  v59 = v94;
  v60 = v92;
  sub_2E28(v94, v92, &qword_73640, &qword_5B298);
  v61 = v93;
  sub_2E28(v60, v93, &qword_73640, &qword_5B298);
  v62 = v61 + *(sub_2AFC(&qword_73678, &qword_5B2E0) + 48);
  v64 = v90;
  v63 = v91;
  *v62 = v90;
  *(v62 + 16) = v63;
  *(v62 + 32) = v56;
  *(v62 + 40) = v57;
  *(v62 + 48) = v58;
  v65 = v64;
  v66 = v63;
  sub_543F4(v64, *(&v64 + 1), v63, *(&v63 + 1), v56, v57, v58);
  sub_2E90(v59, &qword_73640, &qword_5B298);
  sub_54440(v65, *(&v65 + 1), v66, *(&v66 + 1), v56, v57, v58);
  return sub_2E90(v60, &qword_73640, &qword_5B298);
}

uint64_t sub_5185C(__int128 *a1)
{
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5711C();
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  return sub_5711C();
}

uint64_t sub_518E8@<X0>(double *a1@<X8>)
{
  v2 = sub_56B1C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_56B9C();
  sub_5671C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_51A54(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 80);
    v3 = a1;
    v2();
  }
}

uint64_t sub_51AFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_5702C();
  v3 = sub_56FDC();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_51B60()
{
  v1 = sub_567AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_736A8, &qword_5B3E8);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v9 = *v0;
  v8 = v0[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  sub_2AFC(&qword_736B0, &unk_5B3F0);
  sub_547CC();
  sub_570DC();
  LOBYTE(v8) = sub_56CBC();
  sub_5668C();
  v11 = &v7[*(v5 + 36)];
  *v11 = v8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  sub_5679C();
  sub_54884();
  sub_5493C();
  sub_56E4C();
  (*(v2 + 8))(v4, v1);
  return sub_2E90(v7, &qword_736A8, &qword_5B3E8);
}