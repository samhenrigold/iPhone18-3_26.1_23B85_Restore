uint64_t sub_5B234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a5;
  v36 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a1;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = a2;
  v19 = sub_2CDFE0();
  v20 = sub_2CE660();

  v21 = os_log_type_enabled(v19, v20);
  v37 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v34 = a8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = a7;
    v25 = v24;
    v41 = v18;
    v42 = v24;
    *v23 = 136315138;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    v28 = sub_D7E44(&v41, AssociatedTypeWitness, WitnessTable);
    v30 = sub_3F08(v28, v29, &v42);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v19, v20, "MediaItemDisambiguationStrategy#makePromptForDisambiguation intent: %s", v23, 0xCu);
    sub_306C(v25);
    a7 = v33;

    a8 = v34;
  }

  (*(v14 + 8))(v16, v13);
  sub_35E0((v9 + 72), *(v9 + 96));
  if (sub_2CC4B0())
  {
    return sub_5AA9C(v38, v37, v39, v40, v36, a7, a8);
  }

  else
  {
    return sub_5AE8C(v38, v37, v39, v40, v35, v36, a7, a8);
  }
}

unint64_t sub_5B568()
{
  result = qword_34D430;
  if (!qword_34D430)
  {
    sub_2DB30(qword_34D438, &qword_2D1280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D430);
  }

  return result;
}

uint64_t sub_5B70C(char *a1, char a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  return sub_54724(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_5B81C(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34D4C0, &qword_2D1438) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_55214(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_5B8A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a5;
  v91 = a6;
  v82 = a4;
  v83 = a1;
  v8 = sub_2CD230();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v85 = v9;
  v86 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C9B80();
  __chkstk_darwin(v10 - 8);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2CA630();
  v89 = *(v95 - 8);
  v12 = __chkstk_darwin(v95);
  v84 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v13;
  __chkstk_darwin(v12);
  v94 = &v71 - v14;
  v75 = sub_2CB260();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v76 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v71 - v20;
  v21 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v22 = v21 - 8;
  v77 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v79 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v24;
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v27 = sub_2CA130();
  (*(*(v27 - 8) + 16))(v26, a2, v27);
  v28 = *(v22 + 56);
  v93 = v26;
  *&v26[v28] = a3;
  v29 = qword_34BF58;
  v30 = a3;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v32 = *(v17 + 16);
  v32(v92, v31, v16);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v72 = v31;
    v36 = v35;
    v37 = swift_slowAlloc();
    v96 = v37;
    *v36 = 136446210;
    v38 = sub_2CCCA0();
    v40 = sub_3F08(v38, v39, &v96);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v34, "MediaItemDisambiguationStrategy#clarificationOutput... %{public}s", v36, 0xCu);
    sub_306C(v37);

    v31 = v72;
  }

  v41 = *(v17 + 8);
  v41(v92, v16);
  v42 = sub_2CB460();
  v43 = v76;
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v44 = v42;
  v32(v43, v31, v16);

  v45 = sub_2CDFE0();
  v46 = sub_2CE660();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v72 = v41;
    v49 = v48;
    v96 = v48;
    *v47 = 136315138;
    sub_2CB130();
    v50 = v73;
    sub_2CD3C0();

    v51 = sub_2CB200();
    v71 = v17;
    v53 = v52;
    (*(v74 + 8))(v50, v75);
    v54 = sub_3F08(v51, v53, &v96);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_0, v45, v46, "MediaItemDisambiguationStrategy#clarificationOutput with responseMode = %s", v47, 0xCu);
    sub_306C(v49);

    v72(v43, v16);
  }

  else
  {

    v41(v43, v16);
  }

  v92 = v44;
  v55 = sub_2C9B40();
  __chkstk_darwin(v55);
  *(&v71 - 4) = v82;
  *(&v71 - 3) = v44;
  v56 = v93;
  v57 = v94;
  *(&v71 - 2) = v93;
  sub_2CA560();
  v59 = v86;
  v58 = v87;
  v60 = v88;
  (*(v87 + 16))(v86, v83, v88);
  v61 = v79;
  sub_F3F4(v56, v79, &qword_34C6E8, &unk_2D0FF0);
  v62 = v89;
  v63 = v84;
  (*(v89 + 16))(v84, v57, v95);
  v64 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v65 = (v85 + *(v77 + 80) + v64) & ~*(v77 + 80);
  v66 = (v78 + *(v62 + 80) + v65) & ~*(v62 + 80);
  v67 = swift_allocObject();
  (*(v58 + 32))(v67 + v64, v59, v60);
  sub_14A58(v61, v67 + v65, &qword_34C6E8, &unk_2D0FF0);
  v68 = v63;
  v69 = v95;
  (*(v62 + 32))(v67 + v66, v68, v95);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v62 + 8))(v94, v69);
  return sub_30B8(v93, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_5C1D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_56AB0(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_5C3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_5C3EC(uint64_t a1)
{
  v68 = a1;
  v1 = sub_2CB3E0();
  v57 = *(v1 - 8);
  v58 = v1;
  __chkstk_darwin(v1);
  v55 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20410(&unk_353040, &qword_2D1528);
  v4 = __chkstk_darwin(v3 - 8);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = (&v50 - v6);
  v7 = type metadata accessor for ShimExperience(0);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2CA870();
  v9 = *(v67 - 8);
  __chkstk_darwin(v67);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CA340();
  v64 = *(v12 - 8);
  v65 = v12;
  __chkstk_darwin(v12);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v51 = &v50 - v19;
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v62 = *(v15 + 16);
  v62(v21, v22, v14);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "ShimFlow#on Unable to retrieve ShimExperience, producing generic error dialog", v25, 2u);
  }

  v26 = *(v15 + 8);
  v66 = v15 + 8;
  v26(v21, v14);
  sub_2CA790();
  v27 = v67;
  v28 = (*(v9 + 88))(v11, v67);
  v29 = v28;
  v30 = enum case for Parse.ifClientAction(_:);
  if (v28 == enum case for Parse.ifClientAction(_:))
  {
    LODWORD(v54) = enum case for Parse.ifClientAction(_:);
    LODWORD(v68) = v28;
    (*(v9 + 96))(v11, v27);
    v31 = v63;
    v32 = v64;
    v33 = v65;
    (*(v64 + 32))(v63, v11, v65);
    v34 = v55;
    sub_2CA330();
    v35 = v56;
    static ShimUtilities.getShimExperience(from:)(v34, v56);
    (*(v57 + 8))(v34, v58);
    v37 = v60;
    v36 = v61;
    if ((*(v60 + 48))(v35, 1, v61) == 1)
    {
      (*(v32 + 8))(v31, v33);
      sub_30B8(v35, &unk_353040, &qword_2D1528);
    }

    else
    {
      sub_606EC(v35, v59);
      v42 = v51;
      v62(v51, v22, v14);
      v43 = sub_2CDFE0();
      v44 = sub_2CE680();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "ShimFlow#execute Unable to extract shimExperience from ifClientAction parse", v45, 2u);
      }

      v26(v42, v14);
      (*(v64 + 8))(v63, v65);
      v46 = v52;
      sub_606EC(v59, v52);
      (*(v37 + 56))(v46, 0, 1, v36);
      v47 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
      v48 = v53;
      swift_beginAccess();
      sub_6067C(v46, v48 + v47);
      swift_endAccess();
    }

    v29 = v68;
    v30 = v54;
  }

  else
  {
    (*(v9 + 8))(v11, v27);
    v38 = v54;
    v62(v54, v22, v14);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "ShimFlow#execute Not ifClientAction parse", v41, 2u);
    }

    v26(v38, v14);
  }

  return v29 == v30;
}

uint64_t sub_5CB90(void (*a1)(char *), void (*a2)(char *))
{
  v3 = v2;
  v191 = a1;
  v192 = a2;
  v168 = sub_2C8D90();
  v177 = *(v168 - 8);
  v4 = __chkstk_darwin(v168);
  v164 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v162 = &v158 - v7;
  v163 = v8;
  __chkstk_darwin(v6);
  v180 = &v158 - v9;
  v10 = sub_2C9EC0();
  v185 = *(v10 - 8);
  v186 = v10;
  __chkstk_darwin(v10);
  v184 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShimExperience(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v179 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v187 = &v158 - v16;
  v183 = sub_2CE000();
  v181 = *(v183 - 1);
  v17 = __chkstk_darwin(v183);
  v166 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v165 = &v158 - v20;
  v21 = __chkstk_darwin(v19);
  v167 = &v158 - v22;
  __chkstk_darwin(v21);
  v176 = &v158 - v23;
  v175 = sub_2CB3E0();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = (&v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = sub_2CA870();
  v189 = *(v195 - 1);
  v25 = __chkstk_darwin(v195);
  v178 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v190 = (&v158 - v27);
  v28 = sub_2CA7B0();
  v193 = *(v28 - 8);
  v194 = v28;
  v29 = __chkstk_darwin(v28);
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v182 = &v158 - v31;
  v172 = sub_2CA340();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&unk_353040, &qword_2D1528);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v169 = (&v158 - v38);
  __chkstk_darwin(v37);
  v40 = &v158 - v39;
  v41 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
  swift_beginAccess();
  sub_F3F4(v2 + v41, v40, &unk_353040, &qword_2D1528);
  v42 = *(v13 + 48);
  v43 = v12;
  v44 = v12;
  v45 = v13 + 48;
  LODWORD(v13) = v42(v40, 1, v44);
  sub_30B8(v40, &unk_353040, &qword_2D1528);
  v46 = v13 == 1;
  v47 = v3;
  v48 = v195;
  if (!v46)
  {
LABEL_5:
    sub_F3F4(v47 + v41, v36, &unk_353040, &qword_2D1528);
    if (v42(v36, 1, v43) == 1)
    {
      sub_30B8(v36, &unk_353040, &qword_2D1528);
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v61 = sub_2CE7D0();
      v62 = v188;
      INPlayMediaIntent.toServerConversionParse()(v188);
      sub_1356F8(v62, v61);
      (*(v193 + 8))(v62, v194);
      v63 = v184;
      sub_2C9EA0();
      v191(v63);

      return (*(v185 + 8))(v63, v186);
    }

    v65 = v187;
    sub_606EC(v36, v187);
    v66 = v179;
    sub_60750(v65, v179);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v161 = v47;
    if (EnumCaseMultiPayload != 1)
    {
      v103 = *v66;
      v182 = *(v66 + 8);
      v104 = [objc_allocWithZone(INPlayMediaIntent) init];
      v190 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input;
      v106 = v193;
      v105 = v194;
      v183 = *(v193 + 16);
      v107 = v188;
      v183(v188, v47 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v194);
      v108 = v178;
      sub_2CA790();
      v193 = *(v106 + 8);
      (v193)(v107, v105);
      v109 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v108);
      v111 = v110;
      (*(v189 + 8))(v108, v195);
      v112 = sub_1BA200(v103, v182, v109, v111);

      v183(v107, v190 + v161, v105);
      sub_1356F8(v107, v112);
      (v193)(v107, v105);
      v113 = v184;
      sub_2C9EA0();
      v191(v113);

      (*(v185 + 8))(v113, v186);
LABEL_37:
      v143 = v187;
      return sub_607B4(v143);
    }

    v68 = v177;
    v69 = *(v177 + 32);
    v70 = v168;
    v69(v180, v66, v168);
    v71 = sub_2C8D70();
    if (v72)
    {
      v73 = v72;
      v190 = v69;
      v74 = v71;
      v76 = v193;
      v75 = v194;
      v77 = v188;
      (*(v193 + 16))(v188, v161 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v194);
      v78 = v178;
      sub_2CA790();
      (*(v76 + 8))(v77, v75);
      v194 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v78);
      v80 = v79;
      (*(v189 + 8))(v78, v195);
      v81 = v183;
      if (!v80)
      {
        v127 = v70;
LABEL_36:

        sub_2CBED0();
        sub_2CBEC0();
        v136 = v164;
        v137 = v180;
        (*(v68 + 16))(v164, v180, v127);
        v138 = (*(v68 + 80) + 16) & ~*(v68 + 80);
        v139 = (v163 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
        v140 = swift_allocObject();
        v190(v140 + v138, v136, v127);
        *(v140 + v139) = v161;
        v141 = (v140 + ((v139 + 15) & 0xFFFFFFFFFFFFFFF8));
        v142 = v192;
        *v141 = v191;
        v141[1] = v142;

        sub_2CBE70();

        (*(v68 + 8))(v137, v127);
        goto LABEL_37;
      }

      v193 = sub_60914(v74, v73);
      v83 = v82;

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v84 = sub_3ED0(v81, static Logger.default);
      swift_beginAccess();
      v85 = v181;
      v86 = *(v181 + 16);
      v87 = v167;
      v188 = v181 + 16;
      v189 = v84;
      v186 = v86;
      v86(v167, v84, v81);

      v88 = sub_2CDFE0();
      v89 = sub_2CE670();
      v195 = v80;

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v196 = v92;
        *v90 = 138412546;
        if (v83)
        {
          sub_10C40();
          swift_allocError();
          *v93 = v193;
          v93[1] = v83;

          v94 = _swift_stdlib_bridgeErrorToNSError();
          v95 = v94;
        }

        else
        {
          v94 = 0;
          v95 = 0;
        }

        *(v90 + 4) = v94;
        *v91 = v95;
        *(v90 + 12) = 2080;
        v130 = v194;
        *(v90 + 14) = sub_3F08(v194, v195, &v196);
        _os_log_impl(&dword_0, v88, v89, "ShimFlow#execute Link bundle identifier %@, requested bundle identifier %s", v90, 0x16u);
        sub_30B8(v91, &unk_34FC00, &unk_2D0150);

        sub_306C(v92);

        v128 = *(v181 + 8);
        v128(v167, v183);
        v65 = v187;
        v70 = v168;
        v129 = v161;
        v68 = v177;
      }

      else
      {

        v128 = *(v85 + 8);
        v128(v87, v81);
        v129 = v161;
        v68 = v177;
        v130 = v194;
      }

      v134 = v165;
      v135 = v195;
      if (v83 && (v193 == v130 && v83 == v195 || (sub_2CEEA0() & 1) != 0))
      {
        v127 = v70;

        goto LABEL_36;
      }

      v190 = v128;
      v144 = v183;
      v186(v134, v189, v183);

      v145 = sub_2CDFE0();
      v146 = sub_2CE690();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v196 = v149;
        *v147 = 138412546;
        if (v83)
        {
          sub_10C40();
          swift_allocError();
          *v150 = v193;
          v150[1] = v83;
          v151 = _swift_stdlib_bridgeErrorToNSError();
          v152 = v151;
        }

        else
        {
          v151 = 0;
          v152 = 0;
        }

        *(v147 + 4) = v151;
        *v148 = v152;
        *(v147 + 12) = 2080;
        v153 = sub_3F08(v194, v135, &v196);

        *(v147 + 14) = v153;
        _os_log_impl(&dword_0, v145, v146, "ShimFlow#execute Link bundle identifier %@ does not match requested app bundle identifier %s", v147, 0x16u);
        sub_30B8(v148, &unk_34FC00, &unk_2D0150);

        sub_306C(v149);

        (v190)(v165, v183);
        v70 = v168;
        v129 = v161;
        v68 = v177;
      }

      else
      {

        (v190)(v134, v144);
      }

      sub_2CCFB0();
      v154 = sub_2CCF80();
      v155 = swift_allocObject();
      v156 = v191;
      v157 = v192;
      v155[2] = v129;
      v155[3] = v156;
      v155[4] = v157;

      sub_252E9C(v154, sub_60F00, v155);

      (*(v68 + 8))(v180, v70);
    }

    else
    {
      v114 = v183;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v115 = sub_3ED0(v114, static Logger.default);
      swift_beginAccess();
      v116 = v181;
      v117 = v166;
      (*(v181 + 16))(v166, v115, v114);
      v118 = v162;
      (*(v68 + 16))(v162, v180, v70);
      v119 = sub_2CDFE0();
      v120 = sub_2CE680();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = v118;
        v122 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v196 = v190;
        *v122 = 136315138;
        sub_60810();
        v123 = sub_2CEE70();
        v125 = v124;
        v195 = *(v68 + 8);
        (v195)(v121, v70);
        v126 = sub_3F08(v123, v125, &v196);

        *(v122 + 4) = v126;
        _os_log_impl(&dword_0, v119, v120, "ShimFlow#execute invalid link, no host: %s", v122, 0xCu);
        sub_306C(v190);

        (*(v116 + 8))(v166, v183);
      }

      else
      {

        v195 = *(v68 + 8);
        (v195)(v118, v70);
        (*(v116 + 8))(v117, v114);
      }

      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v131 = sub_2CE7D0();
      v132 = v188;
      INPlayMediaIntent.toServerConversionParse()(v188);
      sub_1356F8(v132, v131);
      (*(v193 + 8))(v132, v194);
      v133 = v184;
      sub_2C9EA0();
      v191(v133);

      (*(v185 + 8))(v133, v186);
      (v195)(v180, v70);
    }

    v143 = v65;
    return sub_607B4(v143);
  }

  v158 = v36;
  v159 = v42;
  v160 = v45;
  v49 = v43;
  v51 = v193;
  v50 = v194;
  v52 = v182;
  (*(v193 + 16))(v182, v47 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v194);
  v53 = v190;
  sub_2CA790();
  (*(v51 + 8))(v52, v50);
  v54 = v189;
  if ((*(v189 + 88))(v53, v48) == enum case for Parse.ifClientAction(_:))
  {
    v55 = v190;
    (*(v54 + 96))(v190, v48);
    v56 = v171;
    v57 = v170;
    v58 = v172;
    (*(v171 + 32))(v170, v55, v172);
    v59 = v173;
    sub_2CA330();
    v60 = v169;
    static ShimUtilities.getShimExperience(from:)(v59, v169);
    (*(v174 + 8))(v59, v175);
    (*(v56 + 8))(v57, v58);
    swift_beginAccess();
    sub_6067C(v60, v47 + v41);
    swift_endAccess();
    v43 = v49;
    v42 = v159;
    v36 = v158;
    goto LABEL_5;
  }

  (*(v54 + 8))(v190, v48);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v96 = v183;
  v97 = sub_3ED0(v183, static Logger.default);
  swift_beginAccess();
  v98 = v181;
  v99 = v176;
  (*(v181 + 16))(v176, v97, v96);
  v100 = sub_2CDFE0();
  v101 = sub_2CE680();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_0, v100, v101, "ShimFlow#execute Not ifClientAction parse", v102, 2u);
  }

  (*(v98 + 8))(v99, v96);
  return sub_5E698(0x6F7272456D696873, 0xE900000000000072, v191, v192);
}

uint64_t sub_5E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_2CA910();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_20410(&qword_34CC88, &unk_2D0DC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2D0E40;
  v16 = sub_2CE270();
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = sub_2CE270();
  *(v15 + 88) = &type metadata for String;
  *(v15 + 64) = v18;
  *(v15 + 72) = v19;
  isa = sub_2CE400().super.isa;

  [v14 setLaunchOptions:isa];

  sub_2C8D50(v21);
  v23 = v22;
  [v14 setPunchOutUri:v22];

  v24 = v14;
  sub_2CBC60();
  sub_35E0(&v36, *(&v37 + 1));
  sub_2CBE60();
  if (v25)
  {
    v26 = sub_2CE260();
  }

  else
  {
    v26 = 0;
  }

  sub_306C(&v36);
  [v24 setRefId:v26];

  v27 = sub_2CA000();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_20410(&unk_351900, &unk_2D0960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0770;
  *(v28 + 32) = v24;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_2C9E20();

  sub_30B8(&v36, &qword_34CC80, &qword_2D1520);
  sub_30B8(v9, &unk_353020, &unk_2D0970);
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher), *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 24));
  *(&v37 + 1) = v10;
  v38 = &protocol witness table for AceOutput;
  v29 = sub_F390(&v36);
  (*(v11 + 16))(v29, v13, v10);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v35;
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = a5;

  sub_2CA010();

  (*(v11 + 8))(v13, v10);

  return sub_306C(&v36);
}

uint64_t sub_5E698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_3F08(a1, a2, &v31);
    _os_log_impl(&dword_0, v14, v15, "ShimFlow#genericErrorDialog Reached logic... %s", v18, 0xCu);
    sub_306C(v19);

    a4 = v17;
    v5 = v29;
  }

  (*(v10 + 8))(v12, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v21;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v22;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2CECB0(50);

  v31 = 0xD000000000000030;
  v32 = 0x80000000002DB120;
  v33._countAndFlagsBits = a1;
  v33._object = a2;
  sub_2CE350(v33);
  v23 = v31;
  v24 = v32;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v23;
  *(inited + 104) = v24;
  v25 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = a1;
  v27 = v30;
  v26[4] = a2;
  v26[5] = v27;
  v26[6] = a4;

  sub_3D150(v25, 0, sub_60648, v26);
}

uint64_t sub_5EA48(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v140 = a5;
  v141 = a6;
  *(&v134 + 1) = a4;
  *&v134 = a3;
  v138 = a2;
  v128 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v121 = &v113 - v7;
  v124 = sub_2CA910();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2C9EC0();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v16 = __chkstk_darwin(v15 - 8);
  v137 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v118 = &v113 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = __chkstk_darwin(v19 - 8);
  v136 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v135 = &v113 - v22;
  v133 = sub_2CCB30();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v129 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2CCAC0();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v26 = __chkstk_darwin(v113);
  v114 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v142 = &v113 - v28;
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v113 - v30);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v120 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v113 - v36;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v39 = *(v33 + 16);
  v117 = v38;
  v116 = v33 + 16;
  v115 = v39;
  v39(v37, v38, v32);
  v40 = sub_2CDFE0();
  v41 = sub_2CE670();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "ShimFlow#handleErrorDialogResult Handling dialog Result...", v42, 2u);
  }

  v45 = *(v33 + 8);
  v43 = (v33 + 8);
  v44 = v45;
  v45(v37, v32);
  sub_F3F4(v128, v31, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v128 = v44;
    v135 = v43;
    v142 = v32;
    v46 = *v31;
    v144 = v134;

    v147._countAndFlagsBits = 95;
    v147._object = 0xE100000000000000;
    sub_2CE350(v147);
    v47 = v144;
    *(&v134 + 1) = v46;
    swift_getErrorValue();
    *&v144 = sub_2CEEF0();
    *(&v144 + 1) = v48;
    v49 = sub_2CE3C0();
    v51 = v50;
    v144 = v47;

    v148._countAndFlagsBits = v49;
    v148._object = v51;
    sub_2CE350(v148);

    v52 = v130;
    v53 = v131;
    (*(v130 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sf(_:), v131);
    v54 = v132;
    v55 = v129;
    v56 = v133;
    (*(v132 + 104))(v129, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v133);
    *&v134 = sub_2CCAE0();

    (*(v54 + 8))(v55, v56);
    (*(v52 + 8))(v25, v53);
    sub_EEAC(v139 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider, &v144);
    sub_35E0(&v144, *(&v145 + 1));
    v57 = enum case for ActivityType.failed(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v136;
    (*(v59 + 104))(v136, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = sub_2CA130();
    (*(*(v61 - 8) + 56))(v137, 1, 1, v61);
    v62 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v63 = sub_2C98F0();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v13, v62, v63);
    (*(v64 + 56))(v13, 0, 1, v63);
    if (v138)
    {
      sub_2CE710();
    }

    v85 = v136;
    v86 = v137;
    sub_2CB4E0();

    sub_30B8(v13, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v86, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v85, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v144);
    v87 = v120;
    v88 = v142;
    v115(v120, v117, v142);
    swift_errorRetain();
    v89 = sub_2CDFE0();
    v90 = sub_2CE680();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v143 = v92;
      *v91 = 136315138;
      swift_getErrorValue();
      *&v144 = sub_2CEEF0();
      *(&v144 + 1) = v93;
      v94 = sub_2CE3C0();
      v96 = sub_3F08(v94, v95, &v143);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_0, v89, v90, "ShimFlow#handleErrorDialogResult Could not properly create dialog %s, silently failing...", v91, 0xCu);
      sub_306C(v92);
    }

    v128(v87, v88);
    v97 = v125;
    sub_2C9EB0();
    v140(v97);

    return (*(v126 + 8))(v97, v127);
  }

  else
  {
    v65 = v31;
    v66 = v142;
    sub_24BE0(v65, v142);
    v67 = v130;
    v68 = v131;
    (*(v130 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sf(_:), v131);
    v69 = v132;
    v70 = v129;
    v71 = v133;
    (*(v132 + 104))(v129, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v133);
    v137 = sub_2CCAE0();
    (*(v69 + 8))(v70, v71);
    (*(v67 + 8))(v25, v68);
    v72 = v139;
    sub_EEAC(v139 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider, &v144);
    sub_35E0(&v144, *(&v145 + 1));
    v73 = enum case for ActivityType.failed(_:);
    v74 = sub_2C9C20();
    v75 = *(v74 - 8);
    v76 = v135;
    (*(v75 + 104))(v135, v73, v74);
    (*(v75 + 56))(v76, 0, 1, v74);
    v77 = v114;
    sub_F3F4(v66, v114, &qword_34C6E8, &unk_2D0FF0);

    v78 = sub_2CA130();
    v79 = *(v78 - 8);
    v80 = v118;
    (*(v79 + 32))(v118, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v81 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v82 = sub_2C98F0();
    v83 = *(v82 - 8);
    v84 = v119;
    (*(v83 + 104))(v119, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    if (v138)
    {
      sub_2CE710();
    }

    v99 = v135;
    sub_2CB4E0();

    sub_30B8(v84, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v80, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v99, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v144);
    v100 = sub_2C9BE0();
    sub_20410(&unk_351900, &unk_2D0960);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_2D0770;
    *(v101 + 32) = v100;
    v102 = sub_2CA000();
    v103 = v121;
    (*(*(v102 - 8) + 56))(v121, 1, 1, v102);
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v104 = v100;
    v105 = v122;
    sub_2C9E20();

    sub_30B8(&v144, &qword_34CC80, &qword_2D1520);
    sub_30B8(v103, &unk_353020, &unk_2D0970);
    sub_35E0((v72 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher), *(v72 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 24));
    v106 = v124;
    *(&v145 + 1) = v124;
    v146 = &protocol witness table for AceOutput;
    v107 = sub_F390(&v144);
    v108 = v123;
    (*(v123 + 16))(v107, v105, v106);
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    v111 = v140;
    v112 = v141;
    v110[2] = v109;
    v110[3] = v111;
    v110[4] = v112;

    sub_2CA010();

    (*(v108 + 8))(v105, v106);
    sub_30B8(v142, &qword_34C6E8, &unk_2D0FF0);

    return sub_306C(&v144);
  }
}

uint64_t sub_5FCE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), const char *a7, const char *a8)
{
  v30 = a7;
  v31 = a5;
  v32 = a4;
  v10 = sub_2C9EC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v18, v25, v14);
    v22 = sub_2CDFE0();
    v26 = sub_2CE680();
    if (!os_log_type_enabled(v22, v26))
    {
      v20 = v18;
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v22, v26, a8, v27, 2u);
    v20 = v18;
    goto LABEL_10;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v20, v21, v14);
  v22 = sub_2CDFE0();
  v23 = a6();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, v30, v24, 2u);
LABEL_10:
  }

LABEL_12:

  (*(v15 + 8))(v20, v14);
  sub_2C9EB0();
  v32(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_60074()
{
  v1 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input;
  v2 = sub_2CA7B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience, &unk_353040, &qword_2D1528);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShimFlow(uint64_t a1)
{
  result = qword_34D528;
  if (!qword_34D528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_601D4(uint64_t a1)
{
  sub_2CA7B0();
  if (v1 <= 0x3F)
  {
    sub_602BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_602BC(uint64_t a1)
{
  if (!qword_34D538)
  {
    type metadata accessor for ShimExperience(255);
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34D538);
    }
  }
}

uint64_t sub_6033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_603EC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_603EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_6050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_E664;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_605C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShimFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_6067C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353040, &qword_2D1528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_606EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimExperience(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_60750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimExperience(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_607B4(uint64_t a1)
{
  v2 = type metadata accessor for ShimExperience(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_60810()
{
  result = qword_34D648;
  if (!qword_34D648)
  {
    sub_2C8D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D648);
  }

  return result;
}

uint64_t sub_60868(uint64_t a1)
{
  v3 = *(sub_2C8D90() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_5E260(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_60914(uint64_t a1, uint64_t a2)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = _SWCServiceTypeAppLinks;
  v10 = objc_allocWithZone(_SWCServiceSpecifier);
  v11 = v9;
  v12 = sub_2CE260();
  v13 = [v10 initWithServiceType:v11 applicationIdentifier:0 domain:v12];

  v14 = objc_opt_self();
  v47[0] = 0;
  v15 = [v14 serviceDetailsWithServiceSpecifier:v13 error:v47];
  v16 = v47[0];
  if (!v15)
  {
    v30 = v47[0];
    sub_2C8D30();

    swift_willThrow();
    if (qword_34BF58 == -1)
    {
LABEL_7:
      v31 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      (*(v3 + 16))(v6, v31, v2);
      swift_errorRetain();
      v32 = sub_2CDFE0();
      v33 = sub_2CE680();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&dword_0, v32, v33, "ShimFlow#execute Universal link could not be resolved %@", v34, 0xCu);
        sub_30B8(v35, &unk_34FC00, &unk_2D0150);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }

LABEL_25:
    swift_once();
    goto LABEL_7;
  }

  v17 = v15;
  sub_334A0(0, &qword_34D650, _SWCServiceDetails_ptr);
  v18 = sub_2CE410();
  v19 = v16;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v8, v20, v2);

  v6 = sub_2CDFE0();
  v21 = sub_2CE670();

  if (os_log_type_enabled(v6, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v13;
    v24 = v2;
    v2 = v23;
    v46 = v23;
    *v22 = 136315138;
    v25 = sub_2CE420();
    v27 = sub_3F08(v25, v26, &v46);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v6, v21, "ShimFlow#execute ServiceDetails %s", v22, 0xCu);
    sub_306C(v2);

    v28 = *(v3 + 8);
    v3 += 8;
    v29 = v24;
    v13 = v45;
    v28(v8, v29);
  }

  else
  {

    v37 = *(v3 + 8);
    v3 += 8;
    v37(v8, v2);
  }

  if (!(v18 >> 62))
  {
    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_21:

    return 0;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v38 = sub_2CECD0();
    goto LABEL_15;
  }

  if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = *(v18 + 32);
LABEL_15:
  v39 = v38;

  v40 = [v39 serviceSpecifier];

  v41 = [v40 bundleIdentifier];
  if (v41)
  {
    v42 = sub_2CE270();

    return v42;
  }

  return 0;
}

id sub_60F90(void *a1, void *a2)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - v12;
  sub_2CD700();
  v55 = a1;
  sub_2CDA40();
  (*(v6 + 56))(v13, 0, 1, v5);
  v14 = sub_2CD600();
  if (v14)
  {
    v15 = v14;
    v16 = sub_62CF4(v14, 0, 0);
    objc_opt_self();
    swift_dynamicCastObjCClass();
    v17 = [v3 backingStore];
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    v30 = v55;
    if (v29)
    {
      v31 = v29;
      v32 = v3;
      v33 = INIntentSlotValueTransformToMediaSearch();
      [v31 setMediaSearch:v33];
    }

    else
    {
      v32 = v3;
      v33 = v16;
      v16 = v17;
    }

    sub_2CDBC0();
    sub_2CDBB0();
    v34 = sub_2CDBA0();

    v35 = sub_232644(v30);
    v36 = [v32 backingStore];
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      v39 = INIntentSlotValueTransformToPrivateAddMediaIntentData();
      [v38 setPrivateAddMediaIntentData:v39];
    }

    else
    {
      v39 = v35;
      v35 = v36;
    }

    v40 = sub_2CDB80();
    v42 = v41;
    v43 = sub_2CDB60();
    v45 = sub_230B38(v40, v42, v43, v44);

    objc_opt_self();
    swift_dynamicCastObjCClass();
    v46 = [v32 backingStore];
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
    }

    [v47 setIntentMetadata:v45];

    v48 = sub_232B38(v15, v34);
    v49 = [v32 backingStore];
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (!v50)
    {
    }

    [v50 setMediaDestination:v48];

    v51 = v32;
  }

  else
  {
    v54 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = v7;
    v19 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v10, v19, v7);
    v20 = v55;
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v55 = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      v56 = v25;
      *v24 = 136315138;
      sub_2CDA40();
      v26 = sub_2CE2A0();
      v28 = sub_3F08(v26, v27, &v56);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v21, v22, "INAddMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v24, 0xCu);
      sub_306C(v25);

      (*(v8 + 8))(v10, v55);
    }

    else
    {

      (*(v8 + 8))(v10, v18);
    }

    v32 = v54;
    v52 = v54;
  }

  return v32;
}

uint64_t sub_615D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v48 = a5;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  if (a4 && !a7)
  {
    v45 = a12;
    v46 = a13;
    v47 = a10;

    if (sub_2CBD70() == a3 && v31 == a4)
    {
    }

    else
    {
      v32 = sub_2CEEA0();

      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((sub_2CB650() & 1) != 0 && a6)
    {
      v44 = a8;
      sub_35E0(a11, a11[3]);

      if (sub_2CC410())
      {

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v33 = sub_3ED0(v18, static Logger.default);
        swift_beginAccess();
        (*(v19 + 16))(v24, v33, v18);

        v34 = sub_2CDFE0();
        v35 = sub_2CE690();

        if (!os_log_type_enabled(v34, v35))
        {

          (*(v19 + 8))(v24, v18);
          a4 = a6;
          a8 = v44;
          v39 = v48;
          goto LABEL_23;
        }

        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v49[0] = v37;
        *v36 = 136315138;
        v38 = v48;
        *(v36 + 4) = sub_3F08(v48, a6, v49);
        _os_log_impl(&dword_0, v34, v35, "INAddMediaIntent#applyNowPlayingForAirPlay bundleId is AirPlay, replacing bundleId with representedBundleId %s and may attempt to execute on the device of the requesting user", v36, 0xCu);
        sub_306C(v37);

        (*(v19 + 8))(v24, v18);
        v39 = v38;
        a4 = a6;
      }

      else
      {

        v39 = a3;
      }

      a8 = v44;
LABEL_23:
      sub_35E0(v45, v45[3]);
      sub_EEAC(v46, v49);
      v40 = swift_allocObject();
      v40[2] = a8;
      v40[3] = a9;
      sub_F338(v49, (v40 + 4));
      v41 = v47;
      v40[9] = v47;
      v40[10] = v39;
      v40[11] = a4;

      v42 = v41;
      sub_2CC300();
    }

LABEL_19:
    v39 = a3;
    goto LABEL_23;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v22, v25, v18);
  v26 = sub_2CDFE0();
  v27 = sub_2CE680();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "INAddMediaIntent#applyNowPlayingForAirPlay failed to get bundleId for now playing app", v28, 2u);
  }

  v29 = (*(v19 + 8))(v22, v18);
  return a8(v29);
}

uint64_t sub_61ABC(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v47 = a4;
  v54 = a3;
  v55 = a2;
  v8 = sub_2CE000();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34D6D0, qword_2D34A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_2CBAF0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  sub_F3F4(a1, v15, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v15, &qword_34FF00, &qword_2D3EB0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = v50;
    v24 = sub_3ED0(v50, static Logger.default);
    swift_beginAccess();
    v25 = v48;
    v26 = v49;
    (*(v49 + 2))(v48, v24, v23);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "INAddMediaIntent#applyNowPlayingForAirPlay failed to get now playing info", v29, 2u);
    }

    v30 = (*(v26 + 1))(v25, v23);
    return (v55)(v30);
  }

  (*(v17 + 32))(v22, v15, v16);
  v49 = v22;
  v50 = v17;
  (*(v17 + 16))(v20, v22, v16);
  type metadata accessor for NowPlayingIntent(0);
  swift_allocObject();
  v32 = sub_D4274(v20);
  sub_35E0(v47, v47[3]);
  sub_2CD8D0();
  v33 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  swift_beginAccess();
  sub_6FC1C(v12, &v32[v33]);
  swift_endAccess();

  v35 = sub_691B0(v34, 0, 0);

  objc_opt_self();
  v36 = v51;
  v37 = swift_dynamicCastObjCClass();
  v38 = [v36 backingStore];
  if (v37)
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (!v39)
    {
      v41 = v35;
      v35 = v38;
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (!v39)
    {
      v41 = v35;
      v35 = v38;
      goto LABEL_14;
    }
  }

  v40 = v39;
  v41 = INIntentSlotValueTransformToMediaSearch();
  [v40 setMediaSearch:v41];

LABEL_14:
  v42 = sub_230B38(v52, v53, 0, 0);
  v43 = [v36 backingStore];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v46 = v49;
  v45 = v50;
  if (!v44)
  {
  }

  [v44 setIntentMetadata:{v42, v47}];

  v55();

  return (*(v45 + 8))(v46, v16);
}

uint64_t INAddMediaIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v80 = sub_2CA870();
  v78 = *(v80 - 8);
  v1 = __chkstk_darwin(v80);
  v77 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v76 = &v68 - v3;
  v81 = sub_2CE000();
  v87 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v86 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v68 - v6;
  v73 = sub_2C9900();
  v72 = *(v73 - 1);
  __chkstk_darwin(v73);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34D658, &qword_2D1530);
  __chkstk_darwin(v8 - 8);
  v70 = &v68 - v9;
  v10 = sub_20410(&qword_34D660, &qword_2D1538);
  __chkstk_darwin(v10 - 8);
  v69 = &v68 - v11;
  v12 = sub_20410(&qword_34D668, &qword_2D1540);
  __chkstk_darwin(v12 - 8);
  v14 = &v68 - v13;
  v15 = sub_2CAFE0();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = __chkstk_darwin(v15);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  sub_20410(&qword_34D670, &qword_2D1548);
  v20 = swift_allocObject();
  v88 = xmmword_2D0090;
  *(v20 + 16) = xmmword_2D0090;
  v21 = swift_allocObject();
  *(v21 + 16) = v88;
  v22 = swift_allocObject();
  *(v22 + 16) = v88;
  v23 = swift_allocObject();
  *(v23 + 16) = v88;
  v24 = swift_allocObject();
  *(v24 + 16) = v88;
  sub_2CABB0();
  v25 = enum case for TerminalElement.Value.semantic(_:);
  v26 = sub_2CABD0();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v14, v25, v26);
  (*(v27 + 56))(v14, 0, 1, v26);
  *(v24 + 56) = sub_2CAC70();
  *(v24 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v24 + 32));
  sub_2CAC50();
  v28 = sub_2CACD0();
  *(v23 + 56) = v28;
  *(v23 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v23 + 32));
  sub_2CACC0();
  *(v22 + 56) = v28;
  *(v22 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v22 + 32));
  sub_2CACC0();
  *(v21 + 56) = v28;
  *(v21 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v21 + 32));
  sub_2CACC0();
  *(v20 + 56) = v28;
  *(v20 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v20 + 32));
  sub_2CACC0();
  v91 = v28;
  v92 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v90);
  sub_2CACC0();
  v29 = sub_2CAFB0();
  (*(*(v29 - 8) + 56))(v69, 1, 1, v29);
  v30 = sub_2CACE0();
  (*(*(v30 - 8) + 56))(v70, 1, 1, v30);
  sub_2CAFD0();
  (*(v72 + 13))(v71, enum case for SiriKitConfirmationState.unset(_:), v73);
  v91 = sub_2CCFE0();
  v92 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v90);
  sub_2CCFD0();
  sub_2CA860();
  swift_allocObject();
  v72 = v74;
  *&v88 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = v81;
  v32 = sub_3ED0(v81, static Logger.default);
  swift_beginAccess();
  v33 = v87;
  v71 = *(v87 + 16);
  (v71)(v83, v32, v31);
  v35 = v84;
  v34 = v85;
  v36 = *(v84 + 16);
  v74 = (v84 + 16);
  v73 = v36;
  v36(v82, v19, v85);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v75 = v19;
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315138;
    sub_6FB80(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v45 = v82;
    v46 = sub_2CEE70();
    v47 = v41;
    v49 = v48;
    v50 = *(v42 + 8);
    v50(v45, v47);
    v51 = sub_3F08(v46, v49, &v89);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_0, v37, v38, "INAddMediaIntent#toServerConversionParse nlIntent:%s", v43, 0xCu);
    sub_306C(v44);
    v31 = v81;

    v52 = v87;
  }

  else
  {

    v50 = *(v35 + 8);
    v50(v82, v41);
    v52 = v40;
  }

  v53 = *(v52 + 8);
  v53(v83, v31);
  (v71)(v86, v32, v31);
  v54 = v72;
  v55 = sub_2CDFE0();
  v56 = sub_2CE670();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v31;
    v59 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v59 = v54;
    v60 = v54;
    _os_log_impl(&dword_0, v55, v56, "INAddMediaIntent#toServerConversionParse sirikitIntent:%@", v57, 0xCu);
    sub_30B8(v59, &unk_34FC00, &unk_2D0150);
    v31 = v58;
  }

  v53(v86, v31);
  v61 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v62 = v76;
  v63 = v75;
  v64 = v85;
  v73(v76, v75, v85);
  *&v62[v61] = v88;
  v65 = v78;
  v66 = v80;
  (*(v78 + 104))(v62, enum case for Parse.NLv3IntentPlusServerConversion(_:), v80);
  (*(v65 + 16))(v77, v62, v66);
  sub_2CA7A0();
  (*(v65 + 8))(v62, v66);
  return (v50)(v63, v64);
}

id sub_62CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v756 = a3;
  v755 = a2;
  v673 = sub_2CD4E0();
  v672 = *(v673 - 8);
  __chkstk_darwin(v673);
  v671 = v648 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v684 = sub_2CD560();
  v705 = *(v684 - 8);
  v5 = __chkstk_darwin(v684);
  v670 = v648 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v666 = v648 - v7;
  v669 = sub_20410(&qword_34D680, &qword_2D1580);
  __chkstk_darwin(v669);
  v676 = v648 - v8;
  v656 = sub_20410(&qword_34D688, &qword_2D1588);
  __chkstk_darwin(v656);
  v657 = v648 - v9;
  v737 = sub_2CD4C0();
  v744 = *(v737 - 8);
  __chkstk_darwin(v737);
  v690 = v648 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v722 = sub_2CD4A0();
  v711 = *(v722 - 8);
  __chkstk_darwin(v722);
  v675 = v648 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v704 = sub_20410(&qword_34D690, &qword_2D1590);
  __chkstk_darwin(v704);
  v721 = v648 - v12;
  v13 = sub_20410(&qword_34D698, &qword_2D1598);
  v14 = __chkstk_darwin(v13 - 8);
  v685 = v648 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v719 = v648 - v17;
  __chkstk_darwin(v16);
  v720 = v648 - v18;
  v742 = sub_2CE000();
  v726 = *(v742 - 8);
  __chkstk_darwin(v742);
  v741 = v648 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&unk_353080, &qword_2D1460);
  __chkstk_darwin(v20 - 8);
  v700 = v648 - v21;
  v699 = sub_2CD5D0();
  v698 = *(v699 - 8);
  __chkstk_darwin(v699);
  v697 = v648 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v24 = __chkstk_darwin(v23 - 8);
  v681 = v648 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v667 = v648 - v27;
  v28 = __chkstk_darwin(v26);
  v680 = v648 - v29;
  __chkstk_darwin(v28);
  v752 = v648 - v30;
  v31 = sub_2CD540();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v738 = v648 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v766 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v34 = __chkstk_darwin(v766);
  v746 = v648 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v694 = v648 - v37;
  v38 = __chkstk_darwin(v36);
  v693 = v648 - v39;
  v40 = __chkstk_darwin(v38);
  v709 = v648 - v41;
  v42 = __chkstk_darwin(v40);
  v713 = v648 - v43;
  v44 = __chkstk_darwin(v42);
  v708 = v648 - v45;
  v46 = __chkstk_darwin(v44);
  v758 = v648 - v47;
  __chkstk_darwin(v46);
  v767 = v648 - v48;
  v754 = sub_2CD500();
  v762 = *(v754 - 8);
  __chkstk_darwin(v754);
  v751 = v648 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v736 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v50 = __chkstk_darwin(v736);
  v718 = v648 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v691 = v648 - v53;
  v54 = __chkstk_darwin(v52);
  v664 = v648 - v55;
  v56 = __chkstk_darwin(v54);
  v706 = v648 - v57;
  __chkstk_darwin(v56);
  v748 = v648 - v58;
  v59 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v60 = __chkstk_darwin(v59 - 8);
  v677 = v648 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v714 = (v648 - v63);
  v64 = __chkstk_darwin(v62);
  v745 = v648 - v65;
  v66 = __chkstk_darwin(v64);
  v682 = v648 - v67;
  v68 = __chkstk_darwin(v66);
  v678 = v648 - v69;
  v70 = __chkstk_darwin(v68);
  v668 = v648 - v71;
  v72 = __chkstk_darwin(v70);
  v743 = (v648 - v73);
  v74 = __chkstk_darwin(v72);
  v729 = v648 - v75;
  v76 = __chkstk_darwin(v74);
  v658 = v648 - v77;
  v78 = __chkstk_darwin(v76);
  v662 = v648 - v79;
  v80 = __chkstk_darwin(v78);
  v663 = v648 - v81;
  v82 = __chkstk_darwin(v80);
  v696 = v648 - v83;
  v84 = __chkstk_darwin(v82);
  v730 = v648 - v85;
  v86 = __chkstk_darwin(v84);
  v757 = v648 - v87;
  __chkstk_darwin(v86);
  v759 = v648 - v88;
  v727 = sub_2CD570();
  v728 = *(v727 - 8);
  v89 = __chkstk_darwin(v727);
  v652 = v648 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v750 = v648 - v91;
  v92 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v93 = __chkstk_darwin(v92 - 8);
  v653 = v648 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __chkstk_darwin(v93);
  v659 = v648 - v96;
  v97 = __chkstk_darwin(v95);
  v660 = v648 - v98;
  __chkstk_darwin(v97);
  v100 = v648 - v99;
  v101 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  __chkstk_darwin(v101 - 8);
  v103 = v648 - v102;
  v104 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v105 = __chkstk_darwin(v104 - 8);
  v688 = v648 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __chkstk_darwin(v105);
  v665 = v648 - v108;
  v109 = __chkstk_darwin(v107);
  v661 = v648 - v110;
  v111 = __chkstk_darwin(v109);
  v689 = v648 - v112;
  v113 = __chkstk_darwin(v111);
  v674 = v648 - v114;
  v115 = __chkstk_darwin(v113);
  v703 = v648 - v116;
  v117 = __chkstk_darwin(v115);
  v715 = v648 - v118;
  v119 = __chkstk_darwin(v117);
  v716 = v648 - v120;
  v121 = __chkstk_darwin(v119);
  v686 = v648 - v122;
  v123 = __chkstk_darwin(v121);
  v692 = v648 - v124;
  v125 = __chkstk_darwin(v123);
  v679 = v648 - v126;
  v127 = __chkstk_darwin(v125);
  v731 = v648 - v128;
  v129 = __chkstk_darwin(v127);
  v707 = v648 - v130;
  v131 = __chkstk_darwin(v129);
  v712 = v648 - v132;
  v133 = __chkstk_darwin(v131);
  v734 = v648 - v134;
  v135 = __chkstk_darwin(v133);
  v702 = v648 - v136;
  v137 = __chkstk_darwin(v135);
  v739 = v648 - v138;
  v139 = __chkstk_darwin(v137);
  v740 = v648 - v140;
  v141 = __chkstk_darwin(v139);
  v735 = v648 - v142;
  v143 = __chkstk_darwin(v141);
  v710 = v648 - v144;
  v145 = __chkstk_darwin(v143);
  v701 = v648 - v146;
  v147 = __chkstk_darwin(v145);
  v761 = v648 - v148;
  v149 = __chkstk_darwin(v147);
  v733 = v648 - v150;
  v151 = __chkstk_darwin(v149);
  v687 = v648 - v152;
  v153 = __chkstk_darwin(v151);
  v760 = (v648 - v154);
  v155 = __chkstk_darwin(v153);
  v732 = v648 - v156;
  v157 = __chkstk_darwin(v155);
  v159 = v648 - v158;
  __chkstk_darwin(v157);
  v161 = v648 - v160;
  v774 = a1;
  v162 = sub_2CD700();
  v747 = a1;

  v753 = sub_2CD770();
  v765 = v163;
  sub_2CD780();
  v164 = *(v32 + 48);
  v165 = v164(v161, 1, v31);
  v763 = v32 + 48;
  v764 = v32;
  v768 = v164;
  *&v769 = v31;
  v770 = v162;
  if (v165 == 1)
  {
    sub_30B8(v161, &qword_34D6D0, qword_2D34A0);
    sub_2CD8D0();
    if (v164(v159, 1, v31) == 1)
    {
      sub_30B8(v159, &qword_34D6D0, qword_2D34A0);
      v166 = 0;
    }

    else
    {
      v166 = sub_2AA0F4();
      (*(v32 + 8))(v159, v31);
    }
  }

  else
  {
    v166 = sub_2AA0F4();
    (*(v32 + 8))(v161, v31);
  }

  sub_2CD830();
  v167 = sub_2CD4B0();
  v168 = *(v167 - 8);
  if ((*(v168 + 48))(v103, 1, v167) == 1)
  {
    sub_30B8(v103, &qword_34D6C8, &unk_2D15C0);
    v683 = 0;
  }

  else
  {
    v683 = sub_2AA118();
    (*(v168 + 8))(v103, v167);
  }

  v169 = sub_2CD880();
  v170 = sub_18732C(v169);

  v171 = sub_2CD850();
  v172 = sub_2CD710();
  v772 = v171;
  sub_80D34(v172);
  v173 = sub_18732C(v772);

  if (v173[2] != 1)
  {
    v755 = 0;
    v756 = 0;
    v176 = v728;
    goto LABEL_20;
  }

  v174 = sub_2CBD90();
  v176 = v728;
  if (v756)
  {
    if (v174 == v755 && v175 == v756)
    {
    }

    else
    {
      v177 = sub_2CEEA0();

      if ((v177 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v173[2])
    {
      v178 = v173[5];
      v755 = v173[4];
      v756 = v178;

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_19:
  v755 = 0;
  v756 = 0;
LABEL_20:
  v179 = sub_6F404(v747);
  sub_2CD900();
  v180 = *(v176 + 48);
  v181 = v727;
  v655 = v176 + 48;
  v654 = v180;
  v182 = v180(v100, 1, v727);
  v725 = v170;
  v724 = v173;
  v723 = v179;
  if (v182 == 1)
  {
    sub_30B8(v100, &qword_34D6C0, &qword_2D15B8);
    v695 = 0;
  }

  else
  {
    v183 = v750;
    (*(v176 + 16))(v750, v100, v181);
    v184 = (*(v176 + 88))(v183, v181);
    if (v184 == enum case for CommonAudio.Reference.definite(_:))
    {
      v185 = 1;
    }

    else
    {
      if (v184 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v176 + 8))(v750, v181);
      }

      v185 = 0;
    }

    v695 = v185;
    (*(v176 + 8))(v100, v181);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v186 = v762;
  v187 = *(v762 + 72);
  v188 = (*(v762 + 80) + 32) & ~*(v762 + 80);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_2D0E40;
  v190 = v189 + v188;
  v191 = (v186 + 104);
  v192 = *(v186 + 104);
  v717 = enum case for CommonAudio.Attribute.affinity(_:);
  v193 = v754;
  v192(v190);
  v750 = v191;
  v749 = v192;
  (v192)(v190 + v187, enum case for CommonAudio.Attribute.recommended(_:), v193);
  sub_186A50(v189);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v189) = sub_2CD950();

  v194 = v759;
  if (v189)
  {
    v718 = 8;
    v195 = v767;
    goto LABEL_51;
  }

  v651 = v166;
  sub_2CD840();
  v196 = v194;
  v197 = v744;
  v198 = v757;
  v199 = v737;
  v650 = *(v744 + 104);
  v648[1] = v744 + 104;
  v650(v757, enum case for CommonAudio.Verb.start(_:), v737);
  v649 = *(v197 + 56);
  v648[0] = v197 + 56;
  v649(v198, 0, 1, v199);
  v200 = *(v736 + 48);
  v201 = v748;
  sub_F3F4(v196, v748, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v198, v201 + v200, &qword_34D6B8, &qword_2D15B0);
  v202 = *(v197 + 48);
  v203 = v202(v201, 1, v199);
  v195 = v767;
  if (v203 == 1)
  {
    sub_30B8(v198, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v196, &qword_34D6B8, &qword_2D15B0);
    if (v202(v201 + v200, 1, v199) == 1)
    {
      sub_30B8(v201, &qword_34D6B8, &qword_2D15B0);
      v718 = 8;
LABEL_44:
      v166 = v651;
      goto LABEL_51;
    }

    goto LABEL_35;
  }

  v204 = v682;
  sub_F3F4(v201, v682, &qword_34D6B8, &qword_2D15B0);
  if (v202(v201 + v200, 1, v199) == 1)
  {
    sub_30B8(v757, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v759, &qword_34D6B8, &qword_2D15B0);
    (*(v744 + 8))(v204, v199);
LABEL_35:
    sub_30B8(v201, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_36;
  }

  v212 = v744;
  v213 = v201 + v200;
  v214 = v690;
  (*(v744 + 32))(v690, v213, v199);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v215 = sub_2CE250();
  v216 = *(v212 + 8);
  v216(v214, v199);
  sub_30B8(v757, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v759, &qword_34D6B8, &qword_2D15B0);
  v216(v204, v199);
  sub_30B8(v201, &qword_34D6B8, &qword_2D15B0);
  if (v215)
  {
    v718 = 8;
    v195 = v767;
    goto LABEL_44;
  }

LABEL_36:
  v205 = v745;
  sub_2CD840();
  v206 = v714;
  v207 = v737;
  v650(v714, enum case for CommonAudio.Verb.play(_:), v737);
  v649(v206, 0, 1, v207);
  v208 = *(v736 + 48);
  v209 = v718;
  sub_F3F4(v205, v718, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v206, v209 + v208, &qword_34D6B8, &qword_2D15B0);
  if (v202(v209, 1, v207) == 1)
  {
    sub_30B8(v206, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v205, &qword_34D6B8, &qword_2D15B0);
    v210 = v202(v209 + v208, 1, v207);
    v166 = v651;
    if (v210 == 1)
    {
      sub_30B8(v209, &qword_34D6B8, &qword_2D15B0);
      v195 = v767;
      goto LABEL_46;
    }

LABEL_41:
    sub_30B8(v209, &qword_34D6B0, &unk_2D4FC0);
    v195 = v767;
    goto LABEL_48;
  }

  v211 = v677;
  sub_F3F4(v209, v677, &qword_34D6B8, &qword_2D15B0);
  if (v202(v209 + v208, 1, v207) == 1)
  {
    sub_30B8(v206, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v205, &qword_34D6B8, &qword_2D15B0);
    (*(v744 + 8))(v211, v207);
    v166 = v651;
    goto LABEL_41;
  }

  v217 = v744;
  v218 = v690;
  (*(v744 + 32))(v690, v209 + v208, v207);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v219 = sub_2CE250();
  v220 = v206;
  v221 = *(v217 + 8);
  v221(v218, v207);
  sub_30B8(v220, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v745, &qword_34D6B8, &qword_2D15B0);
  v221(v211, v207);
  sub_30B8(v209, &qword_34D6B8, &qword_2D15B0);
  v195 = v767;
  v166 = v651;
  if ((v219 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  v222 = sub_2CD8E0();
  v223 = v672;
  v224 = v671;
  v225 = v673;
  (*(v672 + 104))(v671, enum case for CommonAudio.Modifier.moreOf(_:), v673);
  v226 = sub_17F540(v224, v222);

  (*(v223 + 8))(v224, v225);
  if ((v226 & 1) == 0)
  {
LABEL_48:
    v228 = v751;
    v229 = v754;
    (v749)(v751, enum case for CommonAudio.Attribute.discovery(_:), v754);
    v230 = sub_2CD910();
    (*(v762 + 8))(v228, v229);
    v227 = v683;
    if (v230)
    {
      v227 = 1;
    }

    goto LABEL_50;
  }

  v227 = 8;
LABEL_50:
  v718 = v227;
LABEL_51:
  v231 = v751;
  v232 = v754;
  (v749)(v751, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v754);
  v233 = sub_2CD910();
  v234 = *(v762 + 8);
  v762 += 8;
  v714 = v234;
  (v234)(v231, v232);
  if (v233)
  {
    v235 = 0;
  }

  else
  {
    v235 = v166;
  }

  v745 = v235;
  v236 = sub_2CD740();
  if (!v236[2])
  {
    goto LABEL_58;
  }

  v238 = v236[4];
  v237 = v236[5];
  v240 = v236[6];
  v239 = v236[7];

  v241 = sub_BF40C(v238, v237);
  if (!v242)
  {

LABEL_58:

    v244 = v768;
    v246 = sub_2CD8B0();
    v245 = v760;
    if (v246[2])
    {
      v243 = v246[5];
      v748 = v246[4];
    }

    else
    {

      v748 = 0;
      v243 = 0;
    }

    goto LABEL_61;
  }

  v243 = v242;
  v748 = v241;

  v753 = v240;
  v765 = v239;
  v244 = v768;
  v245 = v760;
LABEL_61:
  v247 = sub_2CD730();
  if (v247[2])
  {
    v248 = v247[5];
    v755 = v247[4];

    v249 = 1;
    v756 = v248;
  }

  else
  {

    v249 = 0;
  }

  v250 = v764;
  v757 = v249;
  v767 = v243;
  if (!v243)
  {
    v254 = v733;
    goto LABEL_75;
  }

  v251 = v732;
  sub_2CD8D0();
  v252 = v769;
  (*(v250 + 104))(v245, enum case for CommonAudio.MediaType.news(_:), v769);
  (*(v250 + 56))(v245, 0, 1, v252);
  v253 = *(v766 + 48);
  sub_F3F4(v251, v195, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v245, v195 + v253, &qword_34D6D0, qword_2D34A0);
  if (v244(v195, 1, v252) != 1)
  {
    v255 = v687;
    sub_F3F4(v195, v687, &qword_34D6D0, qword_2D34A0);
    if (v244(v195 + v253, 1, v769) != 1)
    {
      v256 = v764;
      v257 = v195 + v253;
      v258 = v195;
      v259 = v738;
      v260 = v255;
      v261 = v769;
      (*(v764 + 32))(v738, v257, v769);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v262 = sub_2CE250();
      v263 = *(v256 + 8);
      v263(v259, v261);
      sub_30B8(v760, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v732, &qword_34D6D0, qword_2D34A0);
      v263(v260, v261);
      v243 = v767;
      sub_30B8(v258, &qword_34D6D0, qword_2D34A0);
      v254 = v733;
      if (v262)
      {
        goto LABEL_74;
      }

LABEL_72:

      goto LABEL_75;
    }

    sub_30B8(v760, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v732, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v255, v769);
LABEL_71:
    sub_30B8(v195, &qword_34D6A8, &unk_2D15A0);
    v254 = v733;
    goto LABEL_72;
  }

  sub_30B8(v245, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v251, &qword_34D6D0, qword_2D34A0);
  if (v244(v195 + v253, 1, v769) != 1)
  {
    goto LABEL_71;
  }

  sub_30B8(v195, &qword_34D6D0, qword_2D34A0);
  v254 = v733;
LABEL_74:

  v755 = v748;
  v756 = v243;
LABEL_75:
  v264 = sub_2CD760();
  v265 = v761;
  if (v264[2])
  {
    v266 = v264[4];
    v267 = v264[5];

    v732 = sub_BF40C(v266, v267);
    v269 = v268;

    v270 = v758;
    if (v269)
    {
      goto LABEL_85;
    }
  }

  else
  {

    v732 = 0;
    v270 = v758;
  }

  v271 = sub_2CD790();
  if (v271[2])
  {
    v273 = v271[4];
    v272 = v271[5];
    v275 = v271[6];
    v274 = v271[7];

    v276 = sub_BF40C(v273, v272);
    v269 = v277;
    if (v277)
    {
      v278 = v276;

      v753 = v275;
      v765 = v274;
      v732 = v278;
    }

    else
    {
    }

    v265 = v761;
  }

  else
  {

    v269 = 0;
  }

LABEL_85:
  sub_2CD8D0();
  v279 = v764;
  v280 = v769;
  v760 = *(v764 + 104);
  v761 = v764 + 104;
  (v760)(v265, enum case for CommonAudio.MediaType.playlist(_:), v769);
  v758 = *(v279 + 56);
  v759 = v279 + 56;
  (v758)(v265, 0, 1, v280);
  v281 = *(v766 + 48);
  sub_F3F4(v254, v270, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v265, v270 + v281, &qword_34D6D0, qword_2D34A0);
  v282 = v768;
  if ((v768)(v270, 1, v280) == 1)
  {
    sub_30B8(v265, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v254, &qword_34D6D0, qword_2D34A0);
    v283 = v282(v270 + v281, 1, v769);
    v284 = v767;
    v285 = v735;
    if (v283 == 1)
    {
      v286 = v743;
      v287 = v732;
LABEL_94:
      sub_30B8(v270, &qword_34D6D0, qword_2D34A0);
      goto LABEL_100;
    }

    goto LABEL_90;
  }

  v288 = v701;
  sub_F3F4(v270, v701, &qword_34D6D0, qword_2D34A0);
  if (v282(v270 + v281, 1, v769) == 1)
  {
    sub_30B8(v265, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v254, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v288, v769);
    v285 = v735;
LABEL_90:
    sub_30B8(v270, &qword_34D6A8, &unk_2D15A0);
    v287 = v732;
    goto LABEL_91;
  }

  v298 = v764;
  v299 = v738;
  v300 = v288;
  v301 = v769;
  (*(v764 + 32))(v738, v270 + v281, v769);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v302 = sub_2CE250();
  v303 = v269;
  v304 = *(v298 + 8);
  v304(v299, v301);
  sub_30B8(v265, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v733, &qword_34D6D0, qword_2D34A0);
  v304(v300, v301);
  v269 = v303;
  v284 = v767;
  sub_30B8(v270, &qword_34D6D0, qword_2D34A0);
  v286 = v743;
  v285 = v735;
  v287 = v732;
  if ((v302 & 1) == 0)
  {
LABEL_91:
    v289 = v710;
    sub_2CD8D0();
    v290 = v285;
    v291 = v769;
    (v760)(v285, enum case for CommonAudio.MediaType.musicPlaylist(_:), v769);
    (v758)(v285, 0, 1, v291);
    v292 = *(v766 + 48);
    v293 = v708;
    sub_F3F4(v289, v708, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v285, v293 + v292, &qword_34D6D0, qword_2D34A0);
    v294 = v768;
    if ((v768)(v293, 1, v291) == 1)
    {
      sub_30B8(v290, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v289, &qword_34D6D0, qword_2D34A0);
      if (v294(v293 + v292, 1, v769) == 1)
      {
        v270 = v293;
        v286 = v743;
        v284 = v767;
        goto LABEL_94;
      }
    }

    else
    {
      v295 = v688;
      sub_F3F4(v293, v688, &qword_34D6D0, qword_2D34A0);
      if (v294(v293 + v292, 1, v769) != 1)
      {
        v305 = v764;
        v306 = v293 + v292;
        v307 = v738;
        v308 = v293;
        v309 = v295;
        v310 = v769;
        (*(v764 + 32))(v738, v306, v769);
        sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
        v311 = sub_2CE250();
        v312 = v269;
        v313 = *(v305 + 8);
        v313(v307, v310);
        sub_30B8(v735, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v710, &qword_34D6D0, qword_2D34A0);
        v313(v309, v310);
        v269 = v312;
        sub_30B8(v308, &qword_34D6D0, qword_2D34A0);
        v314 = (v312 != 0) | v311 ^ 1;
        if (!((v312 != 0) | (v311 ^ 1) & 1))
        {
          v287 = 0;
        }

        v284 = v767;
        if (v767)
        {
          v286 = v743;
          v296 = v730;
          v297 = v756;
          if (v314)
          {
            goto LABEL_111;
          }

          goto LABEL_109;
        }

LABEL_98:
        v286 = v743;
        v296 = v730;
        v297 = v756;
        goto LABEL_111;
      }

      sub_30B8(v735, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v289, &qword_34D6D0, qword_2D34A0);
      (*(v764 + 8))(v295, v769);
    }

    sub_30B8(v293, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_98;
  }

LABEL_100:
  if (!v269)
  {
    v287 = 0;
  }

  v297 = v756;
  if (!v284)
  {
    v296 = v730;
    goto LABEL_111;
  }

  v296 = v730;
  if (!v269)
  {
LABEL_109:
    v287 = sub_BF40C(v748, v284);
    v269 = v315;
  }

LABEL_111:
  v316 = sub_2CD930();
  v317 = v316;
  v735 = v269;
  if (!v269)
  {
LABEL_114:
    v318 = v729;
    goto LABEL_125;
  }

  if (v316)
  {

    v757 = 5;
    v755 = v287;
    v297 = v269;
    goto LABEL_114;
  }

  v756 = v297;

  sub_2CD840();
  v319 = v744;
  v320 = v696;
  v321 = v737;
  (*(v744 + 104))(v696, enum case for CommonAudio.Verb.update(_:), v737);
  (*(v319 + 56))(v320, 0, 1, v321);
  v322 = *(v736 + 48);
  v323 = v296;
  v324 = v296;
  v325 = v706;
  sub_F3F4(v323, v706, &qword_34D6B8, &qword_2D15B0);
  v326 = v325;
  sub_F3F4(v320, v325 + v322, &qword_34D6B8, &qword_2D15B0);
  v327 = *(v319 + 48);
  if (v327(v326, 1, v321) == 1)
  {
    sub_30B8(v320, &qword_34D6B8, &qword_2D15B0);
    v328 = v706;
    sub_30B8(v324, &qword_34D6B8, &qword_2D15B0);
    v329 = v327(v328 + v322, 1, v321);
    v318 = v729;
    if (v329 == 1)
    {
      sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
      v297 = v756;
LABEL_123:

      goto LABEL_124;
    }

    goto LABEL_120;
  }

  v330 = v678;
  sub_F3F4(v326, v678, &qword_34D6B8, &qword_2D15B0);
  if (v327(v326 + v322, 1, v321) == 1)
  {
    sub_30B8(v696, &qword_34D6B8, &qword_2D15B0);
    v328 = v706;
    sub_30B8(v730, &qword_34D6B8, &qword_2D15B0);
    (*(v744 + 8))(v330, v321);
    v318 = v729;
LABEL_120:
    sub_30B8(v328, &qword_34D6B0, &unk_2D4FC0);
    v331 = v735;
    goto LABEL_121;
  }

  v332 = v744;
  v333 = v690;
  (*(v744 + 32))(v690, v326 + v322, v321);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v334 = sub_2CE250();
  v335 = *(v332 + 8);
  v335(v333, v321);
  sub_30B8(v696, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v730, &qword_34D6B8, &qword_2D15B0);
  v335(v330, v321);
  sub_30B8(v326, &qword_34D6B8, &qword_2D15B0);
  v331 = v735;
  v318 = v729;
  v297 = v756;
  if (v334)
  {
    goto LABEL_123;
  }

LABEL_121:

  v757 = 5;
  v755 = v287;
  v297 = v331;
LABEL_124:
  v286 = v743;
LABEL_125:
  v336 = sub_2CD800();
  if (v336[2])
  {
    v337 = v336[4];
    v338 = v336[5];

    v339 = sub_BF40C(v337, v338);
    v341 = v340;

    if (!v341)
    {
      goto LABEL_137;
    }

    if (!v317)
    {
      v756 = v339;
      sub_2CD840();
      v342 = v318;
      v343 = v744;
      v344 = v737;
      (*(v744 + 104))(v286, enum case for CommonAudio.Verb.update(_:), v737);
      (*(v343 + 56))(v286, 0, 1, v344);
      v345 = *(v736 + 48);
      v346 = v691;
      sub_F3F4(v342, v691, &qword_34D6B8, &qword_2D15B0);
      v347 = v346;
      sub_F3F4(v286, v346 + v345, &qword_34D6B8, &qword_2D15B0);
      v348 = *(v343 + 48);
      if (v348(v347, 1, v344) == 1)
      {
        sub_30B8(v286, &qword_34D6B8, &qword_2D15B0);
        v349 = v691;
        sub_30B8(v342, &qword_34D6B8, &qword_2D15B0);
        if (v348(v349 + v345, 1, v344) == 1)
        {
          sub_30B8(v349, &qword_34D6B8, &qword_2D15B0);
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v350 = v668;
      sub_F3F4(v347, v668, &qword_34D6B8, &qword_2D15B0);
      if (v348(v347 + v345, 1, v344) == 1)
      {
        sub_30B8(v743, &qword_34D6B8, &qword_2D15B0);
        v349 = v691;
        sub_30B8(v729, &qword_34D6B8, &qword_2D15B0);
        (*(v744 + 8))(v350, v344);
LABEL_133:
        sub_30B8(v349, &qword_34D6B0, &unk_2D4FC0);
        v339 = v756;
        goto LABEL_134;
      }

      v352 = v744;
      v353 = v690;
      (*(v744 + 32))(v690, v347 + v345, v344);
      sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      LODWORD(v733) = sub_2CE250();
      v354 = *(v352 + 8);
      v354(v353, v344);
      sub_30B8(v743, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v729, &qword_34D6B8, &qword_2D15B0);
      v354(v350, v344);
      sub_30B8(v347, &qword_34D6B8, &qword_2D15B0);
      v339 = v756;
      if (v733)
      {
        goto LABEL_136;
      }
    }

LABEL_134:

    sub_2CD8F0();
    v755 = v339;
    v351 = v768;
LABEL_139:
    v355 = v740;
    goto LABEL_160;
  }

LABEL_136:

LABEL_137:
  sub_2CD8F0();
  v351 = v768;
  if (v297)
  {
    v341 = v297;
    goto LABEL_139;
  }

  v356 = *(v705 + 48);
  v357 = v684;
  if (v356(v752, 1, v684) == 1)
  {
    sub_2CD8C0();
    if (v358)
    {
      v359 = *(sub_2CD7A0() + 16);

      if (!v359)
      {
        v600 = v665;
        sub_2CD8D0();
        v351 = v768;
        if ((v768)(v600, 1, v769) == 1)
        {
          sub_30B8(v600, &qword_34D6D0, qword_2D34A0);
LABEL_342:
          v341 = 0;
          goto LABEL_139;
        }

        v601 = sub_2CD530();
        v602 = v764 + 8;
        v603 = *(v764 + 8);
        v603(v600, v769);
        if (!v601)
        {
          goto LABEL_342;
        }

        v756 = v602;
        v743 = v603;
        if (v767 && (v604 = sub_BF40C(v748, v767), v605))
        {
          v341 = v605;
          v755 = v604;
          v355 = v740;
          v606 = v663;
          v607 = v662;
        }

        else
        {
          v608 = sub_2CD890();
          v609 = sub_7EF68(v608);
          v341 = v610;

          v606 = v663;
          v607 = v662;
          if (v341)
          {
            v755 = v609;
            v355 = v740;
          }

          else
          {
            v611 = sub_2CD860();
            v612 = sub_7EF68(v611);
            v341 = v613;

            v355 = v740;
            if (!v341)
            {
              v614 = sub_2CD730();
              v612 = sub_7EF68(v614);
              v341 = v615;

              if (!v341)
              {
                goto LABEL_160;
              }
            }

            v755 = v612;
          }
        }

        sub_2CD840();
        v616 = v744;
        v617 = v737;
        (*(v744 + 104))(v607, enum case for CommonAudio.Verb.start(_:), v737);
        (*(v616 + 56))(v607, 0, 1, v617);
        v618 = *(v736 + 48);
        v619 = v606;
        v620 = v606;
        v621 = v664;
        sub_F3F4(v620, v664, &qword_34D6B8, &qword_2D15B0);
        v622 = v621;
        sub_F3F4(v607, v621 + v618, &qword_34D6B8, &qword_2D15B0);
        v623 = *(v616 + 48);
        if (v623(v622, 1, v617) == 1)
        {
          sub_30B8(v607, &qword_34D6B8, &qword_2D15B0);
          v624 = v664;
          sub_30B8(v619, &qword_34D6B8, &qword_2D15B0);
          v625 = v623(v624 + v618, 1, v617);
          v351 = v768;
          if (v625 == 1)
          {
            sub_30B8(v624, &qword_34D6B8, &qword_2D15B0);
            goto LABEL_356;
          }
        }

        else
        {
          v626 = v658;
          sub_F3F4(v622, v658, &qword_34D6B8, &qword_2D15B0);
          if (v623(v622 + v618, 1, v617) != 1)
          {
            v628 = v744;
            v629 = v690;
            (*(v744 + 32))(v690, v622 + v618, v617);
            sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v630 = v622;
            v631 = sub_2CE250();
            v632 = *(v628 + 8);
            v632(v629, v617);
            sub_30B8(v662, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v663, &qword_34D6B8, &qword_2D15B0);
            v632(v626, v617);
            sub_30B8(v630, &qword_34D6B8, &qword_2D15B0);
            v351 = v768;
            if (v631)
            {
LABEL_356:
              v633 = v660;
              sub_2CD900();
              v634 = v728;
              v635 = v659;
              v636 = v727;
              (*(v728 + 104))(v659, enum case for CommonAudio.Reference.definite(_:), v727);
              (*(v634 + 56))(v635, 0, 1, v636);
              v637 = *(v656 + 48);
              v638 = v657;
              sub_F3F4(v633, v657, &qword_34D6C0, &qword_2D15B8);
              v757 = v637;
              sub_F3F4(v635, v638 + v637, &qword_34D6C0, &qword_2D15B8);
              v639 = v654;
              if (v654(v638, 1, v636) == 1)
              {
                sub_30B8(v635, &qword_34D6C0, &qword_2D15B8);
                sub_30B8(v633, &qword_34D6C0, &qword_2D15B8);
                if (v639(v638 + v757, 1, v636) == 1)
                {
                  sub_30B8(v638, &qword_34D6C0, &qword_2D15B8);
                  v627 = v661;
                  v351 = v768;
LABEL_363:

                  v755 = 0;
                  v341 = 0xE000000000000000;
LABEL_364:
                  sub_2CD8D0();
                  if (v351(v627, 1, v769) == 1)
                  {
                    sub_30B8(v627, &qword_34D6D0, qword_2D34A0);
                    v757 = 0;
                  }

                  else
                  {
                    v757 = sub_2AA4C4();
                    v743(v627, v769);
                  }

                  goto LABEL_160;
                }
              }

              else
              {
                v640 = v653;
                sub_F3F4(v638, v653, &qword_34D6C0, &qword_2D15B8);
                v641 = v757;
                if (v639(v638 + v757, 1, v636) != 1)
                {
                  v642 = v728;
                  v643 = v638 + v641;
                  v644 = v652;
                  (*(v728 + 32))(v652, v643, v636);
                  sub_6FB80(&qword_34D700, &type metadata accessor for CommonAudio.Reference, &protocol conformance descriptor for CommonAudio.Reference);
                  v645 = sub_2CE250();
                  v646 = v638;
                  v647 = *(v642 + 8);
                  v647(v644, v636);
                  sub_30B8(v659, &qword_34D6C0, &qword_2D15B8);
                  sub_30B8(v660, &qword_34D6C0, &qword_2D15B8);
                  v647(v640, v636);
                  sub_30B8(v646, &qword_34D6C0, &qword_2D15B8);
                  v627 = v661;
                  v351 = v768;
                  if ((v645 & 1) == 0)
                  {
                    goto LABEL_364;
                  }

                  goto LABEL_363;
                }

                sub_30B8(v659, &qword_34D6C0, &qword_2D15B8);
                sub_30B8(v660, &qword_34D6C0, &qword_2D15B8);
                (*(v728 + 8))(v640, v636);
              }

              sub_30B8(v638, &qword_34D688, &qword_2D1588);
              v627 = v661;
              v351 = v768;
              goto LABEL_364;
            }

LABEL_354:
            v627 = v661;
            goto LABEL_364;
          }

          sub_30B8(v662, &qword_34D6B8, &qword_2D15B0);
          v624 = v664;
          sub_30B8(v663, &qword_34D6B8, &qword_2D15B0);
          (*(v744 + 8))(v626, v617);
          v351 = v768;
        }

        sub_30B8(v624, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_354;
      }
    }
  }

  v360 = v752;
  v772 = 0;
  v773 = 0xE000000000000000;
  v361 = sub_2CD7A0();
  if (v361[2])
  {
    v362 = v361[4];
    v363 = v361[5];

    v775._countAndFlagsBits = v362;
    v775._object = v363;
    sub_2CE350(v775);
  }

  v364 = v680;
  v365 = sub_2CD8C0();
  if (v366)
  {
    goto LABEL_156;
  }

  v367 = v365;
  v368 = v705;
  (*(v705 + 104))(v364, enum case for CommonAudio.RadioType.am(_:), v357);
  (*(v368 + 56))(v364, 0, 1, v357);
  v369 = v357;
  v370 = *(v669 + 48);
  v371 = v676;
  sub_F3F4(v360, v676, &qword_34D6A0, &unk_2D3490);
  v372 = v371;
  sub_F3F4(v364, v371 + v370, &qword_34D6A0, &unk_2D3490);
  if (v356(v371, 1, v369) == 1)
  {
    sub_30B8(v364, &qword_34D6A0, &unk_2D3490);
    v373 = v356((v371 + v370), 1, v369);
    v357 = v369;
    if (v373 == 1)
    {
      sub_30B8(v371, &qword_34D6A0, &unk_2D3490);
LABEL_154:
      sub_20410(&qword_34CEA8, &unk_2D0EB0);
      v381 = swift_allocObject();
      *(v381 + 16) = xmmword_2D0090;
      *(v381 + 56) = &type metadata for Double;
      *(v381 + 64) = &protocol witness table for Double;
      *(v381 + 32) = v367;
      v375._countAndFlagsBits = sub_2CE280();
      goto LABEL_155;
    }

    goto LABEL_151;
  }

  v374 = v667;
  sub_F3F4(v371, v667, &qword_34D6A0, &unk_2D3490);
  if (v356((v371 + v370), 1, v369) == 1)
  {
    sub_30B8(v364, &qword_34D6A0, &unk_2D3490);
    (*(v705 + 8))(v374, v369);
    v357 = v369;
LABEL_151:
    sub_30B8(v371, &qword_34D680, &qword_2D1580);
    goto LABEL_152;
  }

  v376 = v705;
  v377 = v372 + v370;
  v378 = v374;
  v379 = v666;
  (*(v705 + 32))(v666, v377, v369);
  sub_6FB80(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType, &protocol conformance descriptor for CommonAudio.RadioType);
  LODWORD(v756) = sub_2CE250();
  v380 = *(v376 + 8);
  v380(v379, v369);
  sub_30B8(v364, &qword_34D6A0, &unk_2D3490);
  v380(v378, v369);
  v360 = v752;
  sub_30B8(v676, &qword_34D6A0, &unk_2D3490);
  v357 = v369;
  if (v756)
  {
    goto LABEL_154;
  }

LABEL_152:
  v375._countAndFlagsBits = sub_2CE510();
LABEL_155:
  sub_BF464(v375);

LABEL_156:
  v382 = v681;
  sub_F3F4(v360, v681, &qword_34D6A0, &unk_2D3490);
  if (v356(v382, 1, v357) == 1)
  {
    sub_30B8(v382, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v383 = v705;
    v384 = v670;
    (*(v705 + 32))(v670, v382, v357);
    v776._countAndFlagsBits = sub_2CD550();
    sub_BF464(v776);

    (*(v383 + 8))(v384, v357);
  }

  v355 = v740;
  v351 = v768;
  v341 = v773;
  v755 = v772;
  v745 = 16;
LABEL_160:
  v385 = sub_2CD750();
  if (v385[2])
  {
    v386 = v385[4];
    v387 = v385[5];

    v744 = sub_BF40C(v386, v387);
    v756 = v388;
  }

  else
  {

    v744 = 0;
    v756 = 0;
  }

  v389 = v734;
  sub_2CD8D0();
  v390 = v739;
  LODWORD(v743) = enum case for CommonAudio.MediaType.podcast(_:);
  v391 = v769;
  (v760)(v739);
  (v758)(v390, 0, 1, v391);
  v392 = *(v766 + 48);
  v393 = v713;
  sub_F3F4(v355, v713, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v390, v393 + v392, &qword_34D6D0, qword_2D34A0);
  if (v351(v393, 1, v391) == 1)
  {
    sub_30B8(v390, &qword_34D6D0, qword_2D34A0);
    v351 = v768;
    sub_30B8(v355, &qword_34D6D0, qword_2D34A0);
    v394 = v351(v393 + v392, 1, v769);
    v395 = v731;
    if (v394 == 1)
    {
      goto LABEL_171;
    }

    goto LABEL_168;
  }

  v396 = v702;
  sub_F3F4(v393, v702, &qword_34D6D0, qword_2D34A0);
  if (v351(v393 + v392, 1, v769) == 1)
  {
    sub_30B8(v739, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v740, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v396, v769);
    v395 = v731;
LABEL_168:
    sub_30B8(v393, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_169;
  }

  v402 = v769;
  v403 = v764;
  v404 = v738;
  (*(v764 + 32))(v738, v393 + v392, v769);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v405 = sub_2CE250();
  v406 = *(v403 + 8);
  v406(v404, v402);
  sub_30B8(v739, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v740, &qword_34D6D0, qword_2D34A0);
  v406(v396, v402);
  v351 = v768;
  sub_30B8(v393, &qword_34D6D0, qword_2D34A0);
  v395 = v731;
  if (v405)
  {
    goto LABEL_180;
  }

LABEL_169:
  sub_2CD8D0();
  v397 = v769;
  v398 = v712;
  (v760)(v712, enum case for CommonAudio.MediaType.episode(_:), v769);
  (v758)(v398, 0, 1, v397);
  v399 = *(v766 + 48);
  v393 = v709;
  sub_F3F4(v389, v709, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v398, v393 + v399, &qword_34D6D0, qword_2D34A0);
  if (v351(v393, 1, v397) != 1)
  {
    v400 = v689;
    sub_F3F4(v393, v689, &qword_34D6D0, qword_2D34A0);
    if (v351(v393 + v399, 1, v397) != 1)
    {
      v407 = v769;
      v408 = v764;
      v409 = v738;
      (*(v764 + 32))(v738, v393 + v399, v769);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v410 = sub_2CE250();
      v411 = v341;
      v412 = *(v408 + 8);
      v412(v409, v407);
      sub_30B8(v712, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v734, &qword_34D6D0, qword_2D34A0);
      v412(v400, v407);
      v341 = v411;
      v395 = v731;
      sub_30B8(v393, &qword_34D6D0, qword_2D34A0);
      if (v410)
      {
        goto LABEL_180;
      }

LABEL_175:
      v401 = v756;
      if (!v756)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }

    sub_30B8(v712, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v734, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v400, v769);
LABEL_174:
    sub_30B8(v393, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_175;
  }

  sub_30B8(v398, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v389, &qword_34D6D0, qword_2D34A0);
  if (v351(v393 + v399, 1, v397) != 1)
  {
    goto LABEL_174;
  }

LABEL_171:
  sub_30B8(v393, &qword_34D6D0, qword_2D34A0);
LABEL_180:
  v401 = v756;
  if (v756 || (v413 = , v744 = v748, (v401 = v413) != 0))
  {
LABEL_182:

    v757 = 6;
    v755 = v744;
    v341 = v401;
  }

LABEL_183:
  v414 = sub_2CD7D0();
  v415 = sub_7EF68(v414);
  v417 = v416;

  if (!v417 || (v418 = sub_BF40C(v415, v417), v420 = v419, , (v756 = v420) == 0))
  {
    v756 = v341;
    goto LABEL_204;
  }

  v755 = v418;

  v421 = v707;
  sub_2CD8D0();
  v422 = v769;
  (v760)(v395, v743, v769);
  (v758)(v395, 0, 1, v422);
  v423 = *(v766 + 48);
  v424 = v693;
  sub_F3F4(v421, v693, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v395, v424 + v423, &qword_34D6D0, qword_2D34A0);
  v425 = v768;
  if ((v768)(v424, 1, v422) == 1)
  {
    sub_30B8(v395, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v421, &qword_34D6D0, qword_2D34A0);
    v426 = v425(v424 + v423, 1, v769);
    v427 = v694;
    if (v426 == 1)
    {
      sub_30B8(v424, &qword_34D6D0, qword_2D34A0);
LABEL_199:
      v757 = 6;
      goto LABEL_204;
    }

    goto LABEL_191;
  }

  v428 = v679;
  sub_F3F4(v424, v679, &qword_34D6D0, qword_2D34A0);
  if (v425(v424 + v423, 1, v769) == 1)
  {
    sub_30B8(v395, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v707, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v428, v769);
    v427 = v694;
LABEL_191:
    sub_30B8(v424, &qword_34D6A8, &unk_2D15A0);
    v429 = v686;
    goto LABEL_192;
  }

  v436 = v424;
  v437 = v764;
  v438 = v436 + v423;
  v439 = v738;
  v440 = v769;
  (*(v764 + 32))(v738, v438, v769);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v441 = sub_2CE250();
  v442 = *(v437 + 8);
  v442(v439, v440);
  sub_30B8(v395, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v707, &qword_34D6D0, qword_2D34A0);
  v442(v428, v440);
  v443 = v436;
  v429 = v686;
  sub_30B8(v443, &qword_34D6D0, qword_2D34A0);
  v427 = v694;
  if (v441)
  {
    goto LABEL_199;
  }

LABEL_192:
  v430 = v692;
  sub_2CD8D0();
  v431 = v769;
  (v760)(v429, enum case for CommonAudio.MediaType.episode(_:), v769);
  (v758)(v429, 0, 1, v431);
  v432 = *(v766 + 48);
  sub_F3F4(v430, v427, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v429, v427 + v432, &qword_34D6D0, qword_2D34A0);
  v433 = v429;
  v434 = v768;
  if ((v768)(v427, 1, v431) == 1)
  {
    sub_30B8(v433, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v430, &qword_34D6D0, qword_2D34A0);
    if (v434(v427 + v432, 1, v769) == 1)
    {
      sub_30B8(v427, &qword_34D6D0, qword_2D34A0);
      goto LABEL_199;
    }

LABEL_197:
    sub_30B8(v427, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_204;
  }

  v435 = v674;
  sub_F3F4(v427, v674, &qword_34D6D0, qword_2D34A0);
  if (v434(v427 + v432, 1, v769) == 1)
  {
    sub_30B8(v433, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v692, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v435, v769);
    goto LABEL_197;
  }

  v444 = v764;
  v445 = v427 + v432;
  v446 = v738;
  v447 = v769;
  (*(v764 + 32))(v738, v445, v769);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  LODWORD(v763) = sub_2CE250();
  v448 = *(v444 + 8);
  v448(v446, v447);
  sub_30B8(v433, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v692, &qword_34D6D0, qword_2D34A0);
  v448(v435, v447);
  sub_30B8(v427, &qword_34D6D0, qword_2D34A0);
  v449 = v757;
  if (v763)
  {
    v449 = 6;
  }

  v757 = v449;
LABEL_204:
  v450 = v716;
  v451 = v715;
  v452 = sub_2CD7C0();
  v453 = sub_7EFAC(v452);
  v455 = v454;
  v743 = v456;
  v458 = v457;

  v740 = v453;
  if (v455)
  {

    v744 = sub_BF40C(v453, v455);
    v763 = v459;
  }

  else
  {
    v744 = 0;
    v763 = 0;
  }

  sub_2CD8D0();
  v460 = v769;
  (v760)(v451, enum case for CommonAudio.MediaType.audioBook(_:), v769);
  (v758)(v451, 0, 1, v460);
  v461 = *(v766 + 48);
  v462 = v746;
  sub_F3F4(v450, v746, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v451, v462 + v461, &qword_34D6D0, qword_2D34A0);
  v463 = v768;
  if ((v768)(v462, 1, v460) == 1)
  {
    sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
    v464 = v746;
    sub_30B8(v450, &qword_34D6D0, qword_2D34A0);
    if (v463(v464 + v461, 1, v769) == 1)
    {
      sub_30B8(v464, &qword_34D6D0, qword_2D34A0);
      v465 = v765;
      v466 = v720;
      v467 = v719;
      v468 = v763;
      goto LABEL_217;
    }

    goto LABEL_212;
  }

  v469 = v703;
  sub_F3F4(v462, v703, &qword_34D6D0, qword_2D34A0);
  if (v463(v462 + v461, 1, v769) == 1)
  {
    sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
    v464 = v746;
    sub_30B8(v450, &qword_34D6D0, qword_2D34A0);
    (*(v764 + 8))(v469, v769);
LABEL_212:
    sub_30B8(v464, &qword_34D6A8, &unk_2D15A0);
    v465 = v765;
    v466 = v720;
    v467 = v719;
    v468 = v763;
LABEL_213:
    if (v468)
    {
      goto LABEL_218;
    }

    sub_6FB3C(v740, v455, v743, v458);
LABEL_215:
    v470 = v722;
    v471 = v721;
    goto LABEL_225;
  }

  v472 = v769;
  v473 = v764;
  v474 = v738;
  (*(v764 + 32))(v738, v462 + v461, v769);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  LODWORD(v768) = sub_2CE250();
  v475 = *(v473 + 8);
  v475(v474, v472);
  sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v450, &qword_34D6D0, qword_2D34A0);
  v475(v469, v472);
  sub_30B8(v746, &qword_34D6D0, qword_2D34A0);
  v465 = v765;
  v466 = v720;
  v467 = v719;
  v468 = v763;
  if ((v768 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_217:
  if (!v468)
  {
    sub_6FB3C(v740, v455, v743, v458);

    if (v477)
    {
      v468 = v477;
      v744 = v748;
      v458 = v465;
      v476 = v753;
      goto LABEL_223;
    }

    v468 = 0;
    goto LABEL_215;
  }

LABEL_218:

  if (!v455)
  {
    v458 = 0;
    v476 = 0;
LABEL_223:
    v470 = v722;
    v471 = v721;
    goto LABEL_224;
  }

  v470 = v722;
  v471 = v721;
  v476 = v743;
LABEL_224:

  v757 = 10;
  v753 = v476;
  v465 = v458;
  v755 = v744;
  v756 = v468;
LABEL_225:
  v478 = sub_2CD7B0();
  v765 = v465;
  v763 = v468;
  if (!v478)
  {
    goto LABEL_252;
  }

  if (!sub_2CD960() && !sub_2CD990())
  {

LABEL_252:
    sub_2CD820();
    v524 = v711;
    (*(v711 + 104))(v467, enum case for CommonAudio.Noun.library(_:), v470);
    (*(v524 + 56))(v467, 0, 1, v470);
    v525 = *(v704 + 48);
    sub_F3F4(v466, v471, &qword_34D698, &qword_2D1598);
    sub_F3F4(v467, v471 + v525, &qword_34D698, &qword_2D1598);
    v526 = *(v524 + 48);
    if (v526(v471, 1, v470) == 1)
    {
      sub_30B8(v467, &qword_34D698, &qword_2D1598);
      sub_30B8(v466, &qword_34D698, &qword_2D1598);
      if (v526(v471 + v525, 1, v470) == 1)
      {
        sub_30B8(v471, &qword_34D698, &qword_2D1598);
        v766 = 0;
        v768 = 0;
        *&v769 = 0;
        v517 = 2;
LABEL_260:
        v501 = v756;
        goto LABEL_261;
      }
    }

    else
    {
      v527 = v685;
      sub_F3F4(v471, v685, &qword_34D698, &qword_2D1598);
      if (v526(v471 + v525, 1, v470) != 1)
      {
        v528 = v711;
        v529 = v471 + v525;
        v530 = v675;
        (*(v711 + 32))(v675, v529, v470);
        sub_6FB80(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun, &protocol conformance descriptor for CommonAudio.Noun);
        v531 = sub_2CE250();
        v532 = *(v528 + 8);
        v532(v530, v470);
        sub_30B8(v467, &qword_34D698, &qword_2D1598);
        sub_30B8(v466, &qword_34D698, &qword_2D1598);
        v532(v527, v470);
        sub_30B8(v471, &qword_34D698, &qword_2D1598);
        v766 = 0;
        v768 = 0;
        *&v769 = 0;
        v517 = v695;
        if (v531)
        {
          v517 = 2;
        }

        goto LABEL_260;
      }

      sub_30B8(v467, &qword_34D698, &qword_2D1598);
      sub_30B8(v466, &qword_34D698, &qword_2D1598);
      (*(v711 + 8))(v527, v470);
    }

    sub_30B8(v471, &qword_34D690, &qword_2D1590);
    v766 = 0;
    v768 = 0;
    *&v769 = 0;
    v517 = v695;
    goto LABEL_260;
  }

  v479 = v698;
  v480 = v697;
  v481 = v699;
  (*(v698 + 104))(v697, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v699);
  sub_2CD630();
  v766 = sub_2CAD90();

  (*(v479 + 8))(v480, v481);
  v761 = sub_20410(&qword_34D6F0, &unk_2D15D8);
  v482 = sub_2CD620();
  v483 = *(v482 - 8);
  v484 = (*(v483 + 80) + 32) & ~*(v483 + 80);
  v485 = swift_allocObject();
  v769 = xmmword_2D0090;
  *(v485 + 16) = xmmword_2D0090;
  v486 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
  v487 = *(v483 + 104);
  v487(v485 + v484, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v482);
  v768 = sub_2CADA0();

  v488 = swift_allocObject();
  *(v488 + 16) = v769;
  v487(v488 + v484, v486, v482);
  v764 = sub_2CADA0();

  v489 = swift_allocObject();
  *(v489 + 16) = v769;
  v487(v489 + v484, v486, v482);
  v490 = sub_2CADA0();

  v491 = v700;
  sub_7F014(v766, v700);

  v492 = sub_2CAB40();
  v493 = *(v492 - 8);
  if ((*(v493 + 48))(v491, 1, v492) == 1)
  {
    sub_30B8(v491, &unk_353080, &qword_2D1460);
    v494 = v765;
  }

  else
  {
    v495 = sub_2CAB20();
    v497 = v496;
    (*(v493 + 8))(v491, v492);
    v498 = sub_BF40C(v495, v497);
    v500 = v499;

    v494 = v765;
    if (v500)
    {

      v753 = v498;
      v494 = v500;
    }
  }

  v501 = v756;
  v502 = v764;
  if (v768 && (, v503 = sub_2CADC0(), v505 = v504, , v505))
  {
    v506 = sub_BF40C(v503, v505);
    v508 = v507;

    if (v508)
    {
      v509 = v506;
    }

    else
    {
      v509 = 0;
    }

    v768 = v509;
    if (!v502)
    {
      goto LABEL_246;
    }
  }

  else
  {
    v768 = 0;
    if (!v502)
    {
      goto LABEL_246;
    }
  }

  v510 = sub_2CADC0();
  v512 = v511;

  if (v512)
  {
    v513 = sub_BF40C(v510, v512);
    v515 = v514;

    *&v769 = v515;
    if (v515)
    {
      v516 = v513;
    }

    else
    {
      v516 = 0;
    }

    v766 = v516;
    v765 = v494;
    if (v490)
    {
      goto LABEL_247;
    }

LABEL_245:

    v517 = 1;
    goto LABEL_261;
  }

LABEL_246:
  v766 = 0;
  *&v769 = 0;
  v765 = v494;
  if (!v490)
  {
    goto LABEL_245;
  }

LABEL_247:

  v518 = sub_2CADC0();
  v520 = v519;

  if (v520 && (v521 = sub_BF40C(v518, v520), v523 = v522, , v523))
  {

    v517 = 1;
    v755 = v521;
    v501 = v523;
  }

  else
  {
    v517 = 1;
  }

LABEL_261:
  v533 = sub_2CD720();
  v534 = v751;
  v535 = v754;
  (v749)(v751, v717, v754);
  v536 = sub_17F758(v534, v533);

  v714(v534, v535);
  v537 = 2;
  if ((v536 & 1) == 0)
  {
    v537 = v517;
  }

  v759 = v537;
  v538 = sub_2CD860();
  v539 = sub_7EF68(v538);
  v541 = v540;

  if (!v541)
  {
    goto LABEL_278;
  }

  v542 = sub_BF40C(v539, v541);
  v544 = v543;

  if (v767)
  {
    v545 = v745;
    if (v544)
    {
      if (v745)
      {
        if (v745 == 2)
        {
          v546 = v767;

          v745 = 0;
          v757 = 0;
          *&v769 = v501;
          v755 = v748;
          v501 = v546;
LABEL_277:

          v766 = v542;
          *&v769 = v544;
          goto LABEL_278;
        }

        goto LABEL_271;
      }

      goto LABEL_273;
    }
  }

  else
  {
    v545 = v745;
    if (v544)
    {
      if (v745)
      {
LABEL_271:
        v547 = v545 == 2;
        if (v501)
        {
          goto LABEL_277;
        }

LABEL_274:
        if (v547)
        {
          v757 = 2;
          goto LABEL_279;
        }

        v501 = 0;
        goto LABEL_277;
      }

LABEL_273:
      v547 = 1;
      if (v501)
      {
        goto LABEL_277;
      }

      goto LABEL_274;
    }
  }

LABEL_278:
  v542 = v755;
  v544 = v501;
LABEL_279:
  v758 = v542;
  v548 = sub_2CD890();
  v549 = sub_7EF68(v548);
  v551 = v550;

  if (v551)
  {
    v552 = sub_BF40C(v549, v551);
    v554 = v553;
  }

  else
  {
    v552 = 0;
    v554 = 0;
  }

  v555 = sub_2CD7F0();
  v556 = sub_7EFAC(v555);
  v558 = v557;
  v560 = v559;
  v562 = v561;

  if (v558)
  {
    v563 = v558;
  }

  else
  {
    v564 = sub_2CD7E0();
    v556 = sub_7EFAC(v564);
    v566 = v565;
    v560 = v567;
    v562 = v568;

    if (!v566)
    {
      v761 = v562;
      v762 = v560;
      v760 = v556;
      v764 = 0;
      goto LABEL_289;
    }

    v563 = v566;
  }

  v761 = v562;
  v762 = v560;
  v760 = v556;
  v764 = v563;
  v569 = sub_BF40C(v556, v563);
  if (v570)
  {
    v571 = v569;
    v572 = v570;

    v552 = v571;
    v554 = v572;
  }

LABEL_289:
  v573 = v745;
  if (!v767)
  {
    if (v554)
    {
      if (!v745)
      {
        v578 = 0;
        v579 = 0;
        if (v544)
        {
          goto LABEL_297;
        }

        goto LABEL_300;
      }

      goto LABEL_296;
    }

LABEL_298:
    v552 = v758;
    v554 = v544;
    v575 = v742;
    v576 = v726;
LABEL_305:
    v580 = v757;
    goto LABEL_306;
  }

  if (!v554)
  {
    goto LABEL_298;
  }

  if (!v745)
  {
    v579 = 0;
    v578 = 1;
    if (v544)
    {
      goto LABEL_297;
    }

    goto LABEL_300;
  }

  if (v745 == 3)
  {
    v574 = v767;

    v768 = v552;
    v575 = v742;
    v576 = v726;
    v577 = v723;
LABEL_318:

    v767 = v574;
    goto LABEL_320;
  }

LABEL_296:
  v578 = 0;
  v579 = v745 != 3;
  if (v544)
  {
LABEL_297:
    v768 = v552;
    v554 = v544;
LABEL_302:
    v575 = v742;
    v576 = v726;
LABEL_303:
    v552 = v758;
LABEL_304:

    goto LABEL_305;
  }

LABEL_300:
  if (v579)
  {
    v768 = v552;
    v554 = 0;
    goto LABEL_302;
  }

  v575 = v742;
  v576 = v726;
  if (v578)
  {
    v768 = v552;
    v554 = 0;
    goto LABEL_303;
  }

  if (v764)
  {

    v599 = v761;

    v757 = 3;
    v753 = v762;
    v765 = v599;
    goto LABEL_304;
  }

  v580 = 3;
LABEL_306:
  v577 = v723;
  if (!v580 || v573)
  {
    if (v573 == 18)
    {
      if (v580 == 5)
      {
        v573 = 5;
      }

      else
      {
        v573 = 18;
      }
    }
  }

  else
  {
    v573 = v580;
  }

  if (!v767)
  {
    goto LABEL_316;
  }

  if (!v573)
  {
    v574 = v767;
    goto LABEL_318;
  }

  if (v554)
  {
LABEL_316:
    v748 = v552;
    goto LABEL_320;
  }

LABEL_320:
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v770 = v577;

  v581 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v582 = sub_3ED0(v575, static Logger.default);
  swift_beginAccess();
  v583 = v741;
  (*(v576 + 16))(v741, v582, v575);
  v584 = v581;
  v585 = sub_2CDFE0();
  v586 = sub_2CE690();

  if (os_log_type_enabled(v585, v586))
  {
    v587 = swift_slowAlloc();
    v588 = swift_slowAlloc();
    v771 = v588;
    *v587 = 136315138;
    v589 = v584;
    *&v769 = v584;
    v590 = v576;
    v591 = v589;
    v592 = [v589 description];
    v593 = sub_2CE270();
    v595 = v594;

    v596 = sub_3F08(v593, v595, &v771);

    *(v587 + 4) = v596;
    _os_log_impl(&dword_0, v585, v586, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v587, 0xCu);
    sub_306C(v588);

    (*(v590 + 8))(v741, v742);
    v584 = v769;
  }

  else
  {

    (*(v576 + 8))(v583, v575);
  }

  v597 = v752;
  sub_6FB3C(v760, v764, v762, v761);
  sub_30B8(v597, &qword_34D6A0, &unk_2D3490);
  return v584;
}

id sub_691B0(uint64_t a1, _BYTE *a2, void *a3)
{
  v687 = a3;
  v680 = a2;
  v644 = sub_2CD4E0();
  v608 = *(v644 - 1);
  __chkstk_darwin(v644);
  v607 = &v584[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v637 = sub_2CD560();
  v636 = *(v637 - 8);
  v5 = __chkstk_darwin(v637);
  v606 = &v584[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v602 = &v584[-v7];
  v605 = sub_20410(&qword_34D680, &qword_2D1580);
  __chkstk_darwin(v605);
  v615 = &v584[-v8];
  v594 = sub_20410(&qword_34D688, &qword_2D1588);
  __chkstk_darwin(v594);
  v595 = &v584[-v9];
  v674 = sub_2CD4C0();
  v667 = *(v674 - 1);
  __chkstk_darwin(v674);
  v621 = &v584[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v650 = sub_2CD4A0();
  v640 = *(v650 - 8);
  __chkstk_darwin(v650);
  v610 = &v584[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v634 = sub_20410(&qword_34D690, &qword_2D1590);
  __chkstk_darwin(v634);
  v635 = &v584[-v12];
  v13 = sub_20410(&qword_34D698, &qword_2D1598);
  v14 = __chkstk_darwin(v13 - 8);
  v616 = &v584[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v649 = &v584[-v16];
  v666 = sub_2CE000();
  v665 = *(v666 - 8);
  __chkstk_darwin(v666);
  v664 = &v584[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_20410(&unk_353080, &qword_2D1460);
  __chkstk_darwin(v18 - 8);
  v631 = &v584[-v19];
  v630 = sub_2CD5D0();
  v629 = *(v630 - 8);
  __chkstk_darwin(v630);
  v628 = &v584[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v22 = __chkstk_darwin(v21 - 8);
  v614 = &v584[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v603 = &v584[-v25];
  v26 = __chkstk_darwin(v24);
  v626 = &v584[-v27];
  __chkstk_darwin(v26);
  v671 = &v584[-v28];
  v29 = sub_2CD540();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v661 = &v584[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v691 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v32 = __chkstk_darwin(v691);
  v647 = &v584[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __chkstk_darwin(v32);
  v624 = &v584[-v35];
  v36 = __chkstk_darwin(v34);
  v623 = &v584[-v37];
  v38 = __chkstk_darwin(v36);
  v639 = &v584[-v39];
  v40 = __chkstk_darwin(v38);
  v657 = &v584[-v41];
  v42 = __chkstk_darwin(v40);
  v638 = &v584[-v43];
  v44 = __chkstk_darwin(v42);
  v642 = &v584[-v45];
  __chkstk_darwin(v44);
  v683 = &v584[-v46];
  v677 = sub_2CD500();
  v688 = *(v677 - 8);
  __chkstk_darwin(v677);
  v673 = &v584[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v660 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v48 = __chkstk_darwin(v660);
  v681 = &v584[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __chkstk_darwin(v48);
  v612 = &v584[-v51];
  v52 = __chkstk_darwin(v50);
  v599 = &v584[-v53];
  v54 = __chkstk_darwin(v52);
  v619 = &v584[-v55];
  __chkstk_darwin(v54);
  v678 = &v584[-v56];
  v57 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v58 = __chkstk_darwin(v57 - 8);
  v648 = &v584[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __chkstk_darwin(v58);
  v676 = &v584[-v61];
  v62 = __chkstk_darwin(v60);
  v670 = &v584[-v63];
  v64 = __chkstk_darwin(v62);
  v611 = &v584[-v65];
  v66 = __chkstk_darwin(v64);
  v604 = &v584[-v67];
  v68 = __chkstk_darwin(v66);
  v658 = &v584[-v69];
  v70 = __chkstk_darwin(v68);
  v596 = &v584[-v71];
  v72 = __chkstk_darwin(v70);
  v600 = &v584[-v73];
  v74 = __chkstk_darwin(v72);
  v627 = &v584[-v75];
  __chkstk_darwin(v74);
  v682 = &v584[-v76];
  v654 = sub_2CD570();
  v655 = *(v654 - 8);
  v77 = __chkstk_darwin(v654);
  v589 = &v584[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v77);
  v679 = &v584[-v79];
  v80 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v81 = __chkstk_darwin(v80 - 8);
  v590 = &v584[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __chkstk_darwin(v81);
  v597 = &v584[-v84];
  __chkstk_darwin(v83);
  v690 = &v584[-v85];
  v86 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  __chkstk_darwin(v86 - 8);
  v88 = &v584[-v87];
  v89 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v90 = __chkstk_darwin(v89 - 8);
  v618 = &v584[-((v91 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = __chkstk_darwin(v90);
  v598 = &v584[-v93];
  v94 = __chkstk_darwin(v92);
  v620 = &v584[-v95];
  v96 = __chkstk_darwin(v94);
  v609 = &v584[-v97];
  v98 = __chkstk_darwin(v96);
  v633 = &v584[-v99];
  v100 = __chkstk_darwin(v98);
  v645 = &v584[-v101];
  v102 = __chkstk_darwin(v100);
  v622 = &v584[-v103];
  v104 = __chkstk_darwin(v102);
  v613 = &v584[-v105];
  v106 = __chkstk_darwin(v104);
  v643 = &v584[-v107];
  v108 = __chkstk_darwin(v106);
  v641 = &v584[-v109];
  v110 = __chkstk_darwin(v108);
  v656 = &v584[-v111];
  v112 = __chkstk_darwin(v110);
  v662 = &v584[-v113];
  v114 = __chkstk_darwin(v112);
  v601 = &v584[-v115];
  v116 = __chkstk_darwin(v114);
  v659 = &v584[-v117];
  v118 = __chkstk_darwin(v116);
  v632 = &v584[-v119];
  v120 = __chkstk_darwin(v118);
  v693 = &v584[-v121];
  v122 = __chkstk_darwin(v120);
  v617 = &v584[-v123];
  v124 = __chkstk_darwin(v122);
  v685 = &v584[-v125];
  v126 = __chkstk_darwin(v124);
  v128 = &v584[-v127];
  __chkstk_darwin(v126);
  v130 = &v584[-v129];
  v701 = a1;
  v131 = *(a1 + 40);
  v675 = *(a1 + 32);
  sub_F3F4(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType, &v584[-v129], &qword_34D6D0, qword_2D34A0);
  v132 = v30;
  v134 = v30 + 48;
  v133 = *(v30 + 48);
  v135 = (v133)(v130, 1, v29);
  v686 = v131;

  v695 = a1;
  v689 = v132;
  v692 = v134;
  if (v135 == 1)
  {
    sub_30B8(v130, &qword_34D6D0, qword_2D34A0);
    v136 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    sub_F3F4(a1 + v136, v128, &qword_34D6D0, qword_2D34A0);
    v137 = v133;
    if ((v133)(v128, 1, v29) == 1)
    {
      sub_30B8(v128, &qword_34D6D0, qword_2D34A0);
      v684 = 0;
    }

    else
    {
      v684 = sub_2AA0F4();
      (*(v689 + 8))(v128, v29);
    }
  }

  else
  {
    v684 = sub_2AA0F4();
    (*(v132 + 8))(v130, v29);
    v137 = v133;
  }

  v138 = v655;
  v139 = v690;
  sub_F3F4(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort, v88, &qword_34D6C8, &unk_2D15C0);
  v140 = sub_2CD4B0();
  v141 = *(v140 - 8);
  v142 = (*(v141 + 48))(v88, 1, v140);
  *&v694 = v29;
  if (v142 == 1)
  {
    sub_30B8(v88, &qword_34D6C8, &unk_2D15C0);
    v669 = 0;
  }

  else
  {
    v669 = sub_2AA118();
    (*(v141 + 8))(v88, v140);
  }

  v143 = v695;

  v145 = sub_18732C(v144);

  v699 = *(v143 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_moods);

  sub_80D34(v146);
  v147 = sub_18732C(v699);

  if (v147[2] != 1)
  {
    goto LABEL_18;
  }

  v148 = sub_2CBD90();
  if (v687)
  {
    if (v148 == v680 && v149 == v687)
    {
    }

    else
    {
      v150 = sub_2CEEA0();

      if ((v150 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v147[2])
    {
      v151 = v147[5];
      v668 = v147[4];
      v680 = v151;

      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_18:
  v668 = 0;
  v680 = 0;
LABEL_19:
  v152 = v695;
  v651 = sub_6F708(v695);
  v153 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  swift_beginAccess();
  v591 = v153;
  sub_F3F4(v152 + v153, v139, &qword_34D6C0, &qword_2D15B8);
  v154 = *(v138 + 48);
  v155 = v654;
  v593 = v138 + 48;
  v592 = v154;
  v156 = v154(v139, 1, v654);
  v690 = v137;
  v653 = v145;
  v652 = v147;
  if (v156 == 1)
  {
    sub_30B8(v139, &qword_34D6C0, &qword_2D15B8);
    v625 = 0;
  }

  else
  {
    v157 = v679;
    (*(v138 + 16))(v679, v139, v155);
    v158 = (*(v138 + 88))(v157, v155);
    if (v158 == enum case for CommonAudio.Reference.definite(_:))
    {
      v159 = 1;
    }

    else
    {
      if (v158 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v138 + 8))(v157, v155);
      }

      v159 = 0;
    }

    v625 = v159;
    (*(v138 + 8))(v139, v155);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v160 = v688;
  v161 = *(v688 + 72);
  v162 = (*(v688 + 80) + 32) & ~*(v688 + 80);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_2D0E40;
  v164 = v163 + v162;
  v166 = v160 + 104;
  v165 = *(v160 + 104);
  v167 = v163 + v162;
  v646 = enum case for CommonAudio.Attribute.affinity(_:);
  v168 = v677;
  v165(v167);
  v672 = v165;
  (v165)(v164 + v161, enum case for CommonAudio.Attribute.recommended(_:), v168);
  sub_186A50(v163);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v169 = type metadata accessor for NowPlayingIntent(0);
  v687 = sub_6FB80(&qword_34D728, type metadata accessor for NowPlayingIntent, &unk_2D3330);
  LOBYTE(v163) = sub_2CD950();

  v679 = v169;
  v663 = v166;
  if (v163)
  {
    v648 = &dword_8;
    v170 = v695;
LABEL_43:
    v187 = v690;
    v188 = v693;
    goto LABEL_50;
  }

  v171 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
  v172 = v667;
  v173 = v682;
  v174 = v674;
  v587 = *(v667 + 104);
  v587(v682, enum case for CommonAudio.Verb.start(_:), v674);
  v586 = *(v172 + 56);
  v586(v173, 0, 1, v174);
  v175 = *(v660 + 48);
  v588 = v171;
  v176 = v695 + v171;
  v177 = v678;
  sub_F3F4(v176, v678, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v173, &v177[v175], &qword_34D6B8, &qword_2D15B0);
  v178 = *(v172 + 48);
  if (v178(v177, 1, v174) == 1)
  {
    sub_30B8(v173, &qword_34D6B8, &qword_2D15B0);
    v179 = v178(&v177[v175], 1, v174);
    v180 = v681;
    if (v179 == 1)
    {
      sub_30B8(v177, &qword_34D6B8, &qword_2D15B0);
      v648 = &dword_8;
      v170 = v695;
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v181 = v670;
  sub_F3F4(v177, v670, &qword_34D6B8, &qword_2D15B0);
  if (v178(&v177[v175], 1, v174) == 1)
  {
    sub_30B8(v173, &qword_34D6B8, &qword_2D15B0);
    (*(v667 + 8))(v181, v174);
    v180 = v681;
LABEL_34:
    sub_30B8(v177, &qword_34D6B0, &unk_2D4FC0);
    v170 = v695;
    goto LABEL_35;
  }

  v190 = v667;
  v191 = v621;
  (*(v667 + 32))(v621, &v177[v175], v174);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v585 = sub_2CE250();
  v192 = *(v190 + 8);
  v192(v191, v174);
  sub_30B8(v682, &qword_34D6B8, &qword_2D15B0);
  v192(v670, v174);
  sub_30B8(v177, &qword_34D6B8, &qword_2D15B0);
  v170 = v695;
  v180 = v681;
  if (v585)
  {
    v648 = &dword_8;
    goto LABEL_43;
  }

LABEL_35:
  v182 = v676;
  v183 = v674;
  v587(v676, enum case for CommonAudio.Verb.play(_:), v674);
  v184 = v182;
  v586(v182, 0, 1, v183);
  v185 = *(v660 + 48);
  sub_F3F4(v170 + v588, v180, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v182, &v180[v185], &qword_34D6B8, &qword_2D15B0);
  if (v178(v180, 1, v183) == 1)
  {
    sub_30B8(v182, &qword_34D6B8, &qword_2D15B0);
    v186 = v178(&v180[v185], 1, v183);
    v187 = v690;
    v188 = v693;
    if (v186 == 1)
    {
      sub_30B8(v180, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_45;
    }

LABEL_40:
    sub_30B8(v180, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_47;
  }

  v189 = v648;
  sub_F3F4(v180, v648, &qword_34D6B8, &qword_2D15B0);
  if (v178(&v180[v185], 1, v183) == 1)
  {
    sub_30B8(v184, &qword_34D6B8, &qword_2D15B0);
    (*(v667 + 8))(v189, v183);
    v187 = v690;
    v188 = v693;
    goto LABEL_40;
  }

  v193 = v180;
  v194 = v667;
  v195 = v621;
  (*(v667 + 32))(v621, &v193[v185], v183);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v196 = v189;
  v197 = sub_2CE250();
  v198 = v170;
  v199 = *(v194 + 8);
  v199(v195, v183);
  sub_30B8(v676, &qword_34D6B8, &qword_2D15B0);
  v199(v196, v183);
  v170 = v198;
  sub_30B8(v681, &qword_34D6B8, &qword_2D15B0);
  v187 = v690;
  v188 = v693;
  if ((v197 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v200 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_modifiers);
  v201 = v608;
  v202 = v607;
  v203 = v644;
  (*(v608 + 104))(v607, enum case for CommonAudio.Modifier.moreOf(_:), v644);

  v204 = sub_17F540(v202, v200);

  v205 = v202;
  v188 = v693;
  (*(v201 + 8))(v205, v203);
  if ((v204 & 1) == 0)
  {
LABEL_47:
    v207 = v673;
    v208 = v677;
    (v672)(v673, enum case for CommonAudio.Attribute.discovery(_:), v677);
    v209 = sub_2CD910();
    (*(v688 + 8))(v207, v208);
    v206 = v669;
    if (v209)
    {
      v206 = (&dword_0 + 1);
    }

    goto LABEL_49;
  }

  v206 = &dword_8;
LABEL_49:
  v648 = v206;
LABEL_50:
  v210 = v685;
  v211 = v673;
  v212 = v677;
  (v672)(v673, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v677);
  v213 = sub_2CD910();
  v214 = *(v688 + 8);
  v688 += 8;
  v644 = v214;
  (v214)(v211, v212);
  v215 = v684;
  if (v213)
  {
    v215 = 0;
  }

  v669 = v215;
  v216 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appShowTitles);
  if (v216[2] && (v217 = v216[6], v218 = v216[7], v219 = sub_BF40C(v216[4], v216[5]), v220))
  {
    v221 = v220;
    v670 = v219;

    v675 = v217;
    v686 = v218;
    v222 = v674;
  }

  else
  {
    v223 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_entities);
    v222 = v674;
    if (v223[2])
    {
      v221 = v223[5];
      v670 = v223[4];
    }

    else
    {

      v670 = 0;
      v221 = 0;
    }
  }

  v224 = *(v170 + 48);
  if (v224[2])
  {
    v225 = v224[5];
    v668 = v224[4];

    v226 = (&dword_0 + 1);
    v680 = v225;
  }

  else
  {
    v226 = 0;
  }

  v678 = v226;
  v693 = v221;
  if (v221)
  {
    v227 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    v228 = v689;
    v229 = v694;
    (*(v689 + 104))(v210, enum case for CommonAudio.MediaType.news(_:), v694);
    (*(v228 + 56))(v210, 0, 1, v229);
    v230 = *(v691 + 48);
    v231 = v170 + v227;
    v232 = v683;
    sub_F3F4(v231, v683, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v210, &v232[v230], &qword_34D6D0, qword_2D34A0);
    if ((v187)(v232, 1, v229) == 1)
    {
      v233 = v693;

      sub_30B8(v210, &qword_34D6D0, qword_2D34A0);
      if ((v187)(&v232[v230], 1, v694) == 1)
      {
        sub_30B8(v232, &qword_34D6D0, qword_2D34A0);

        v668 = v670;
        v680 = v233;
        goto LABEL_71;
      }

      goto LABEL_67;
    }

    v234 = v617;
    sub_F3F4(v232, v617, &qword_34D6D0, qword_2D34A0);
    if ((v187)(&v232[v230], 1, v694) == 1)
    {

      sub_30B8(v210, &qword_34D6D0, qword_2D34A0);
      (*(v689 + 8))(v234, v694);
LABEL_67:
      sub_30B8(v232, &qword_34D6A8, &unk_2D15A0);

      goto LABEL_71;
    }

    v235 = v232;
    v236 = v689;
    v237 = v661;
    v238 = v234;
    v239 = v694;
    (*(v689 + 32))(v661, v235 + v230, v694);
    sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
    v240 = v693;

    v241 = sub_2CE250();
    v242 = *(v236 + 8);
    v242(v237, v239);
    sub_30B8(v685, &qword_34D6D0, qword_2D34A0);
    v242(v238, v239);
    sub_30B8(v235, &qword_34D6D0, qword_2D34A0);

    if (v241)
    {
      v668 = v670;
      v680 = v240;
    }

    v170 = v695;
    v222 = v674;
  }

LABEL_71:
  v243 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_playlistTitles);
  if (v243[2])
  {
    v676 = sub_BF40C(v243[4], v243[5]);
    if (v244)
    {
      v245 = v244;
      goto LABEL_80;
    }
  }

  else
  {
    v676 = 0;
  }

  v246 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appPlaylistTitles);
  if (v246[2])
  {
    v247 = v246[6];
    v248 = v246[7];
    v249 = sub_BF40C(v246[4], v246[5]);
    v245 = v250;
    if (v250)
    {
      v251 = v249;

      v675 = v247;
      v686 = v248;
      v676 = v251;
    }

    v170 = v695;
  }

  else
  {
    v245 = 0;
  }

LABEL_80:
  v252 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  swift_beginAccess();
  v253 = v689;
  v254 = *(v689 + 104);
  v255 = v694;
  v684 = v689 + 104;
  v683 = v254;
  (v254)(v188, enum case for CommonAudio.MediaType.playlist(_:), v694);
  v256 = *(v253 + 56);
  v682 = (v253 + 56);
  v681 = v256;
  (v256)(v188, 0, 1, v255);
  v257 = *(v691 + 48);
  v685 = v252;
  v258 = &v252[v170];
  v259 = v642;
  sub_F3F4(v258, v642, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v188, v259 + v257, &qword_34D6D0, qword_2D34A0);
  v260 = v690;
  if ((v690)(v259, 1, v255) == 1)
  {
    sub_30B8(v188, &qword_34D6D0, qword_2D34A0);
    v261 = (v260)(v259 + v257, 1, v694);
    v262 = v659;
    if (v261 == 1)
    {
      goto LABEL_89;
    }

    goto LABEL_85;
  }

  v263 = v632;
  sub_F3F4(v259, v632, &qword_34D6D0, qword_2D34A0);
  if ((v260)(v259 + v257, 1, v694) == 1)
  {
    sub_30B8(v188, &qword_34D6D0, qword_2D34A0);
    (*(v689 + 8))(v263, v694);
    v262 = v659;
LABEL_85:
    sub_30B8(v259, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_86;
  }

  v270 = v689;
  v271 = v694;
  v272 = v188;
  v273 = v263;
  v274 = v661;
  (*(v689 + 32))(v661, v259 + v257, v694);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v275 = sub_2CE250();
  v276 = *(v270 + 8);
  v276(v274, v271);
  v277 = v272;
  v222 = v674;
  sub_30B8(v277, &qword_34D6D0, qword_2D34A0);
  v276(v273, v271);
  v170 = v695;
  sub_30B8(v259, &qword_34D6D0, qword_2D34A0);
  v262 = v659;
  if ((v275 & 1) == 0)
  {
LABEL_86:
    v264 = v694;
    (v683)(v262, enum case for CommonAudio.MediaType.musicPlaylist(_:), v694);
    (v681)(v262, 0, 1, v264);
    v265 = *(v691 + 48);
    v266 = v638;
    sub_F3F4(&v685[v170], v638, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v262, &v266[v265], &qword_34D6D0, qword_2D34A0);
    v267 = v690;
    if ((v690)(v266, 1, v264) == 1)
    {
      sub_30B8(v262, &qword_34D6D0, qword_2D34A0);
      if ((v267)(&v266[v265], 1, v694) == 1)
      {
        v259 = v266;
LABEL_89:
        sub_30B8(v259, &qword_34D6D0, qword_2D34A0);
        goto LABEL_94;
      }
    }

    else
    {
      v268 = v618;
      sub_F3F4(v266, v618, &qword_34D6D0, qword_2D34A0);
      if ((v267)(&v266[v265], 1, v694) != 1)
      {
        v279 = v689;
        v280 = &v266[v265];
        v281 = v266;
        v282 = v661;
        v283 = v694;
        (*(v689 + 32))(v661, v280, v694);
        sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
        v284 = sub_2CE250();
        v285 = *(v279 + 8);
        v285(v282, v283);
        sub_30B8(v659, &qword_34D6D0, qword_2D34A0);
        v285(v268, v283);
        sub_30B8(v281, &qword_34D6D0, qword_2D34A0);
        v286 = v676;
        if (((v245 == 0) & v284) != 0)
        {
          v286 = 0;
        }

        v676 = v286;
        v269 = v693;
        if (!v693)
        {
          v170 = v695;
          goto LABEL_104;
        }

        v170 = v695;
        if (((v245 == 0) & v284) == 0)
        {
          goto LABEL_104;
        }

LABEL_103:
        v676 = sub_BF40C(v670, v269);
        v245 = v287;
        goto LABEL_104;
      }

      sub_30B8(v659, &qword_34D6D0, qword_2D34A0);
      (*(v689 + 8))(v268, v694);
    }

    sub_30B8(v266, &qword_34D6A8, &unk_2D15A0);
    v269 = v693;
    goto LABEL_104;
  }

LABEL_94:
  v278 = v676;
  if (!v245)
  {
    v278 = 0;
  }

  v676 = v278;
  v269 = v693;
  if (v693 && !v245)
  {
    goto LABEL_103;
  }

LABEL_104:
  v288 = sub_2CD930();
  v289 = v288;
  v659 = v245;
  if (v245)
  {
    if (!v288)
    {
      v303 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
      v304 = v667;
      v305 = v627;
      (*(v667 + 104))(v627, enum case for CommonAudio.Verb.update(_:), v222);
      (*(v304 + 56))(v305, 0, 1, v222);
      v306 = *(v660 + 48);
      v307 = v170 + v303;
      v308 = v619;
      sub_F3F4(v307, v619, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v305, &v308[v306], &qword_34D6B8, &qword_2D15B0);
      v309 = v304;
      v310 = v308;
      v311 = *(v309 + 48);
      if (v311(v310, 1, v222) == 1)
      {

        sub_30B8(v305, &qword_34D6B8, &qword_2D15B0);
        v312 = v311(v310 + v306, 1, v222);
        v170 = v695;
        v290 = v658;
        if (v312 == 1)
        {
          sub_30B8(v310, &qword_34D6B8, &qword_2D15B0);

          v676 = v668;
          goto LABEL_109;
        }
      }

      else
      {
        v313 = v611;
        sub_F3F4(v310, v611, &qword_34D6B8, &qword_2D15B0);
        if (v311(v310 + v306, 1, v222) != 1)
        {
          v316 = v667;
          v317 = v621;
          (*(v667 + 32))(v621, v310 + v306, v222);
          sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);

          v318 = sub_2CE250();
          v319 = *(v316 + 8);
          v319(v317, v222);
          sub_30B8(v627, &qword_34D6B8, &qword_2D15B0);
          v319(v313, v222);
          sub_30B8(v310, &qword_34D6B8, &qword_2D15B0);

          if (v318)
          {
            v676 = v668;
          }

          else
          {
            v678 = (&dword_4 + 1);
            v680 = v245;
          }

          v170 = v695;
          goto LABEL_108;
        }

        sub_30B8(v627, &qword_34D6B8, &qword_2D15B0);
        (*(v667 + 8))(v313, v222);
        v170 = v695;
        v290 = v658;
      }

      sub_30B8(v310, &qword_34D6B0, &unk_2D4FC0);

      v678 = (&dword_4 + 1);
      v680 = v245;
      goto LABEL_109;
    }

    v678 = (&dword_4 + 1);
    v680 = v245;
  }

  else
  {
    v676 = v668;
  }

LABEL_108:
  v290 = v658;
LABEL_109:
  v291 = *(v170 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePlaylistTitles);
  if (v291[2])
  {
    v292 = sub_BF40C(v291[4], v291[5]);
    v668 = v293;
    if (v293)
    {
      v294 = v292;
      v295 = v657;
      if (!v289)
      {
        v296 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
        v297 = v667;
        (*(v667 + 104))(v290, enum case for CommonAudio.Verb.update(_:), v222);
        (*(v297 + 56))(v290, 0, 1, v222);
        v298 = *(v660 + 48);
        v299 = v290;
        v300 = v695 + v296;
        v301 = v612;
        sub_F3F4(v300, v612, &qword_34D6B8, &qword_2D15B0);
        sub_F3F4(v290, &v301[v298], &qword_34D6B8, &qword_2D15B0);
        v302 = *(v297 + 48);
        if (v302(v301, 1, v222) == 1)
        {
          sub_30B8(v299, &qword_34D6B8, &qword_2D15B0);
          if (v302(&v301[v298], 1, v222) == 1)
          {
            sub_30B8(v301, &qword_34D6B8, &qword_2D15B0);
LABEL_128:

            v269 = v693;
            goto LABEL_129;
          }

          goto LABEL_123;
        }

        v314 = v604;
        sub_F3F4(v301, v604, &qword_34D6B8, &qword_2D15B0);
        if (v302(&v301[v298], 1, v222) == 1)
        {
          sub_30B8(v658, &qword_34D6B8, &qword_2D15B0);
          (*(v667 + 8))(v314, v222);
LABEL_123:
          sub_30B8(v301, &qword_34D6B0, &unk_2D4FC0);
          goto LABEL_124;
        }

        v320 = v301;
        v321 = v667;
        v322 = v314;
        v323 = v621;
        (*(v667 + 32))(v621, v320 + v298, v222);
        sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        LODWORD(v642) = sub_2CE250();
        v324 = *(v321 + 8);
        v324(v323, v674);
        sub_30B8(v658, &qword_34D6B8, &qword_2D15B0);
        v324(v322, v674);
        v222 = v674;
        sub_30B8(v320, &qword_34D6B8, &qword_2D15B0);
        if (v642)
        {
          goto LABEL_128;
        }
      }

LABEL_124:

      v315 = v695;
      sub_F3F4(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, v671, &qword_34D6A0, &unk_2D3490);
      v676 = v294;
LABEL_132:
      v326 = v641;
      v327 = v656;
      goto LABEL_159;
    }
  }

LABEL_129:
  v315 = v695;
  v325 = v671;
  sub_F3F4(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, v671, &qword_34D6A0, &unk_2D3490);
  if (v680)
  {
    v668 = v680;
LABEL_131:
    v295 = v657;
    goto LABEL_132;
  }

  v328 = *(v636 + 48);
  if (v328(v325, 1, v637) == 1)
  {
    v329 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames;
    v330 = v626;
    if ((*(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency + 8) & 1) != 0 && !*(*(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames) + 16))
    {
      v315 = v695;
      v331 = v601;
      sub_F3F4(&v685[v695], v601, &qword_34D6D0, qword_2D34A0);
      if ((v690)(v331, 1, v694) == 1)
      {
        sub_30B8(v331, &qword_34D6D0, qword_2D34A0);
        v668 = 0;
        goto LABEL_131;
      }

      v539 = sub_2CD530();
      v540 = (v689 + 8);
      v541 = *(v689 + 8);
      (v541)(v331, v694);
      v295 = v657;
      v327 = v656;
      if (!v539)
      {
        v545 = &v696;
        goto LABEL_359;
      }

      v680 = v540;
      v658 = v541;
      if (v269 && (v542 = sub_BF40C(v670, v269), (v668 = v543) != 0))
      {
        v676 = v542;
        v544 = v599;
      }

      else
      {
        v546 = v695;
        v547 = sub_7EF68(*(v695 + 24));
        v544 = v599;
        v668 = v548;
        if (!v548)
        {
          v547 = sub_7EF68(*(v546 + 16));
          v668 = v549;
          if (!v549)
          {
            v547 = sub_7EF68(*(v546 + 48));
            v545 = &v696;
            v668 = v550;
            if (!v550)
            {
              goto LABEL_359;
            }
          }
        }

        v676 = v547;
      }

      v551 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
      v552 = v667;
      v553 = v600;
      (*(v667 + 104))(v600, enum case for CommonAudio.Verb.start(_:), v222);
      (*(v552 + 56))(v553, 0, 1, v222);
      v554 = *(v660 + 48);
      sub_F3F4(v695 + v551, v544, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v553, v544 + v554, &qword_34D6B8, &qword_2D15B0);
      v555 = *(v552 + 48);
      if (v555(v544, 1, v222) == 1)
      {
        sub_30B8(v553, &qword_34D6B8, &qword_2D15B0);
        v556 = v555(v544 + v554, 1, v222);
        v557 = v690;
        if (v556 == 1)
        {
          sub_30B8(v544, &qword_34D6B8, &qword_2D15B0);
          v558 = v598;
LABEL_350:
          v566 = v655;
          v567 = v597;
          v568 = v654;
          (*(v655 + 104))(v597, enum case for CommonAudio.Reference.definite(_:), v654);
          (*(v566 + 56))(v567, 0, 1, v568);
          v569 = *(v594 + 48);
          v570 = v595;
          sub_F3F4(v695 + v591, v595, &qword_34D6C0, &qword_2D15B8);
          v571 = v570;
          sub_F3F4(v567, &v570[v569], &qword_34D6C0, &qword_2D15B8);
          v572 = v570;
          v573 = v592;
          if (v592(v572, 1, v568) == 1)
          {
            sub_30B8(v567, &qword_34D6C0, &qword_2D15B8);
            v574 = v573(v571 + v569, 1, v568);
            v560 = v658;
            if (v574 == 1)
            {
              sub_30B8(v571, &qword_34D6C0, &qword_2D15B8);

              v676 = 0;
              v668 = 0xE000000000000000;
LABEL_356:
              v327 = v656;
              goto LABEL_357;
            }

LABEL_355:
            sub_30B8(v571, &qword_34D688, &qword_2D1588);
            goto LABEL_356;
          }

          v575 = v590;
          sub_F3F4(v571, v590, &qword_34D6C0, &qword_2D15B8);
          if (v573(v571 + v569, 1, v568) == 1)
          {
            sub_30B8(v597, &qword_34D6C0, &qword_2D15B8);
            (*(v655 + 8))(v575, v568);
            v560 = v658;
            goto LABEL_355;
          }

          v576 = v655;
          v577 = v571 + v569;
          v578 = v589;
          (*(v655 + 32))(v589, v577, v568);
          sub_6FB80(&qword_34D700, &type metadata accessor for CommonAudio.Reference, &protocol conformance descriptor for CommonAudio.Reference);
          v579 = v571;
          v580 = v575;
          v581 = v568;
          v582 = sub_2CE250();
          v583 = *(v576 + 8);
          v583(v578, v581);
          sub_30B8(v597, &qword_34D6C0, &qword_2D15B8);
          v583(v580, v581);
          sub_30B8(v579, &qword_34D6C0, &qword_2D15B8);
          if (v582)
          {

            v676 = 0;
            v668 = 0xE000000000000000;
          }

          v557 = v690;
          v327 = v656;
LABEL_348:
          v560 = v658;
LABEL_357:
          sub_F3F4(&v685[v695], v558, &qword_34D6D0, qword_2D34A0);
          if ((v557)(v558, 1, v694) != 1)
          {
            v678 = sub_2AA4C4();
            (v560)(v558, v694);
            goto LABEL_361;
          }

          sub_30B8(v558, &qword_34D6D0, qword_2D34A0);
          v545 = &v700;
LABEL_359:
          *(v545 - 32) = 0;
LABEL_361:
          v315 = v695;
          v326 = v641;
          goto LABEL_159;
        }
      }

      else
      {
        v559 = v596;
        sub_F3F4(v544, v596, &qword_34D6B8, &qword_2D15B0);
        if (v555(v544 + v554, 1, v222) != 1)
        {
          v561 = v667;
          v562 = v544 + v554;
          v563 = v621;
          (*(v667 + 32))(v621, v562, v222);
          sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
          v564 = sub_2CE250();
          v565 = *(v561 + 8);
          v565(v563, v222);
          sub_30B8(v600, &qword_34D6B8, &qword_2D15B0);
          v565(v559, v222);
          sub_30B8(v544, &qword_34D6B8, &qword_2D15B0);
          v557 = v690;
          v558 = v598;
          if ((v564 & 1) == 0)
          {
            v327 = v656;
            goto LABEL_348;
          }

          goto LABEL_350;
        }

        sub_30B8(v600, &qword_34D6B8, &qword_2D15B0);
        (*(v667 + 8))(v559, v222);
        v557 = v690;
      }

      sub_30B8(v544, &qword_34D6B0, &unk_2D4FC0);
      v327 = v656;
      v558 = v598;
      goto LABEL_348;
    }
  }

  else
  {
    v329 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames;
    v330 = v626;
  }

  v697 = 0;
  v698 = 0xE000000000000000;
  v332 = *(v695 + v329);
  if (v332[2])
  {
    v333 = v332[4];
    v334 = v332[5];

    v702._countAndFlagsBits = v333;
    v702._object = v334;
    sub_2CE350(v702);

    v330 = v626;
  }

  v335 = v637;
  v336 = v615;
  if ((*(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency + 8) & 1) == 0)
  {
    v337 = *(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency);
    v338 = v636;
    (*(v636 + 104))(v330, enum case for CommonAudio.RadioType.am(_:), v637);
    (*(v338 + 56))(v330, 0, 1, v335);
    v339 = *(v605 + 48);
    sub_F3F4(v325, v336, &qword_34D6A0, &unk_2D3490);
    sub_F3F4(v330, v336 + v339, &qword_34D6A0, &unk_2D3490);
    if (v328(v336, 1, v335) == 1)
    {
      sub_30B8(v330, &qword_34D6A0, &unk_2D3490);
      if (v328((v336 + v339), 1, v335) == 1)
      {
        sub_30B8(v336, &qword_34D6A0, &unk_2D3490);
LABEL_153:
        sub_20410(&qword_34CEA8, &unk_2D0EB0);
        v347 = swift_allocObject();
        *(v347 + 16) = xmmword_2D0090;
        *(v347 + 56) = &type metadata for Double;
        *(v347 + 64) = &protocol witness table for Double;
        *(v347 + 32) = v337;
        v341._countAndFlagsBits = sub_2CE280();
        goto LABEL_154;
      }
    }

    else
    {
      v340 = v603;
      sub_F3F4(v336, v603, &qword_34D6A0, &unk_2D3490);
      if (v328((v336 + v339), 1, v335) != 1)
      {
        v342 = v636;
        v343 = v336 + v339;
        v344 = v602;
        (*(v636 + 32))(v602, v343, v335);
        sub_6FB80(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType, &protocol conformance descriptor for CommonAudio.RadioType);
        v345 = sub_2CE250();
        v346 = *(v342 + 8);
        v346(v344, v637);
        sub_30B8(v626, &qword_34D6A0, &unk_2D3490);
        v346(v340, v637);
        v335 = v637;
        v325 = v671;
        sub_30B8(v336, &qword_34D6A0, &unk_2D3490);
        if (v345)
        {
          goto LABEL_153;
        }

LABEL_148:
        v341._countAndFlagsBits = sub_2CE510();
LABEL_154:
        sub_BF464(v341);

        goto LABEL_155;
      }

      sub_30B8(v626, &qword_34D6A0, &unk_2D3490);
      (*(v636 + 8))(v340, v335);
    }

    sub_30B8(v336, &qword_34D680, &qword_2D1580);
    goto LABEL_148;
  }

LABEL_155:
  v348 = v614;
  sub_F3F4(v325, v614, &qword_34D6A0, &unk_2D3490);
  if (v328(v348, 1, v335) == 1)
  {
    sub_30B8(v348, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v349 = v636;
    v350 = v606;
    (*(v636 + 32))(v606, v348, v335);
    v703._countAndFlagsBits = sub_2CD550();
    sub_BF464(v703);

    (*(v349 + 8))(v350, v335);
  }

  v315 = v695;
  v295 = v657;
  v326 = v641;
  v327 = v656;
  v676 = v697;
  v668 = v698;
  v669 = 16;
LABEL_159:
  v351 = v689;
  v352 = *(v315 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_podcastTitles);
  if (v352[2])
  {
    v680 = sub_BF40C(v352[4], v352[5]);
    v354 = v353;
  }

  else
  {
    v680 = 0;
    v354 = 0;
  }

  v355 = v662;
  LODWORD(v674) = enum case for CommonAudio.MediaType.podcast(_:);
  v356 = v694;
  (v683)(v662);
  (v681)(v355, 0, 1, v356);
  v357 = *(v691 + 48);
  sub_F3F4(&v685[v695], v295, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v355, &v295[v357], &qword_34D6D0, qword_2D34A0);
  v358 = v690;
  if ((v690)(v295, 1, v356) != 1)
  {
    sub_F3F4(v295, v327, &qword_34D6D0, qword_2D34A0);
    if ((v358)(&v295[v357], 1, v694) != 1)
    {
      v365 = v661;
      v366 = v694;
      (*(v351 + 32))(v661, &v295[v357], v694);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v367 = sub_2CE250();
      v368 = *(v351 + 8);
      v368(v365, v366);
      sub_30B8(v662, &qword_34D6D0, qword_2D34A0);
      v368(v327, v366);
      v360 = v693;
      v358 = v690;
      v359 = v689;
      sub_30B8(v295, &qword_34D6D0, qword_2D34A0);
      v361 = v668;
      if (v367)
      {
        goto LABEL_177;
      }

LABEL_168:
      v362 = v694;
      (v683)(v326, enum case for CommonAudio.MediaType.episode(_:), v694);
      (v681)(v326, 0, 1, v362);
      v363 = *(v691 + 48);
      v295 = v639;
      sub_F3F4(&v685[v695], v639, &qword_34D6D0, qword_2D34A0);
      v358 = v690;
      sub_F3F4(v326, &v295[v363], &qword_34D6D0, qword_2D34A0);
      if ((v358)(v295, 1, v362) == 1)
      {
        sub_30B8(v326, &qword_34D6D0, qword_2D34A0);
        if ((v358)(&v295[v363], 1, v694) == 1)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v364 = v620;
        sub_F3F4(v295, v620, &qword_34D6D0, qword_2D34A0);
        if ((v358)(&v295[v363], 1, v694) != 1)
        {
          v369 = v661;
          v370 = v694;
          (*(v359 + 32))(v661, &v295[v363], v694);
          sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
          v371 = sub_2CE250();
          v372 = *(v359 + 8);
          v372(v369, v370);
          sub_30B8(v326, &qword_34D6D0, qword_2D34A0);
          v372(v364, v370);
          v359 = v689;
          v360 = v693;
          v358 = v690;
          sub_30B8(v295, &qword_34D6D0, qword_2D34A0);
          v361 = v668;
          if ((v371 & 1) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_177;
        }

        sub_30B8(v326, &qword_34D6D0, qword_2D34A0);
        (*(v359 + 8))(v364, v694);
        v361 = v668;
      }

      sub_30B8(v295, &qword_34D6A8, &unk_2D15A0);
      goto LABEL_179;
    }

    sub_30B8(v662, &qword_34D6D0, qword_2D34A0);
    v359 = v351;
    (*(v351 + 8))(v327, v694);
LABEL_167:
    sub_30B8(v295, &qword_34D6A8, &unk_2D15A0);
    v360 = v693;
    v361 = v668;
    goto LABEL_168;
  }

  sub_30B8(v355, &qword_34D6D0, qword_2D34A0);
  v359 = v351;
  if ((v358)(&v295[v357], 1, v694) != 1)
  {
    goto LABEL_167;
  }

  v360 = v693;
  v361 = v668;
LABEL_170:
  sub_30B8(v295, &qword_34D6D0, qword_2D34A0);
LABEL_177:
  if (v354)
  {
    goto LABEL_180;
  }

  v680 = v670;
  v354 = v360;
LABEL_179:
  if (!v354)
  {
    v374 = v643;
    v373 = v676;
    goto LABEL_182;
  }

LABEL_180:

  v678 = (&dword_4 + 2);
  v373 = v680;
  v361 = v354;
  v374 = v643;
LABEL_182:
  v375 = v695;
  v376 = sub_7EF68(*(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePodcastTitles));
  if (!v377 || (v378 = sub_BF40C(v376, v377), v380 = v379, , (v676 = v380) == 0))
  {
    v680 = v373;
    v386 = v645;
    goto LABEL_204;
  }

  v680 = v378;

  v381 = v694;
  (v683)(v374, v674, v694);
  (v681)(v374, 0, 1, v381);
  v382 = *(v691 + 48);
  v383 = v623;
  sub_F3F4(&v685[v375], v623, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v374, &v383[v382], &qword_34D6D0, qword_2D34A0);
  if ((v358)(v383, 1, v381) == 1)
  {
    sub_30B8(v374, &qword_34D6D0, qword_2D34A0);
    v384 = (v358)(&v383[v382], 1, v694);
    v385 = v624;
    if (v384 == 1)
    {
      sub_30B8(v383, &qword_34D6D0, qword_2D34A0);
LABEL_198:
      v678 = (&dword_4 + 2);
LABEL_202:
      v386 = v645;
      goto LABEL_203;
    }

    goto LABEL_190;
  }

  v387 = v613;
  sub_F3F4(v383, v613, &qword_34D6D0, qword_2D34A0);
  v388 = (v358)(&v383[v382], 1, v694);
  v385 = v624;
  if (v388 == 1)
  {
    sub_30B8(v374, &qword_34D6D0, qword_2D34A0);
    (*(v359 + 8))(v387, v694);
LABEL_190:
    sub_30B8(v383, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_191;
  }

  v395 = v661;
  v396 = v694;
  (*(v359 + 32))(v661, &v383[v382], v694);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v397 = sub_2CE250();
  v398 = *(v359 + 8);
  v398(v395, v396);
  sub_30B8(v374, &qword_34D6D0, qword_2D34A0);
  v398(v387, v396);
  v375 = v695;
  sub_30B8(v383, &qword_34D6D0, qword_2D34A0);
  if (v397)
  {
    goto LABEL_198;
  }

LABEL_191:
  v389 = v622;
  v390 = v694;
  (v683)(v622, enum case for CommonAudio.MediaType.episode(_:), v694);
  (v681)(v389, 0, 1, v390);
  v391 = *(v691 + 48);
  sub_F3F4(&v685[v375], v385, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v389, v385 + v391, &qword_34D6D0, qword_2D34A0);
  v392 = v690;
  if ((v690)(v385, 1, v390) != 1)
  {
    v394 = v609;
    sub_F3F4(v385, v609, &qword_34D6D0, qword_2D34A0);
    if ((v392)(v385 + v391, 1, v694) != 1)
    {
      v399 = v661;
      v400 = v694;
      (*(v359 + 32))(v661, v385 + v391, v694);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v401 = sub_2CE250();
      v402 = *(v359 + 8);
      v402(v399, v400);
      sub_30B8(v622, &qword_34D6D0, qword_2D34A0);
      v402(v394, v400);
      v375 = v695;
      sub_30B8(v385, &qword_34D6D0, qword_2D34A0);
      v403 = v678;
      if (v401)
      {
        v403 = (&dword_4 + 2);
      }

      v678 = v403;
      goto LABEL_202;
    }

    sub_30B8(v622, &qword_34D6D0, qword_2D34A0);
    (*(v359 + 8))(v394, v694);
    v386 = v645;
    goto LABEL_196;
  }

  sub_30B8(v389, &qword_34D6D0, qword_2D34A0);
  v393 = (v392)(v385 + v391, 1, v694);
  v386 = v645;
  if (v393 != 1)
  {
LABEL_196:
    sub_30B8(v385, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_203;
  }

  sub_30B8(v385, &qword_34D6D0, qword_2D34A0);
  v678 = (&dword_4 + 2);
LABEL_203:
  v358 = v690;
  v361 = v676;
LABEL_204:
  v404 = sub_7EFAC(*(v375 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookTitles));
  v406 = v405;
  v676 = v407;
  v690 = v408;
  v668 = v404;
  if (v405)
  {
    v409 = v404;
    v410 = v361;

    v674 = sub_BF40C(v409, v406);
    v412 = v411;
  }

  else
  {
    v410 = v361;
    v674 = 0;
    v412 = 0;
  }

  v413 = v694;
  (v683)(v386, enum case for CommonAudio.MediaType.audioBook(_:), v694);
  (v681)(v386, 0, 1, v413);
  v414 = *(v691 + 48);
  v415 = v647;
  sub_F3F4(&v685[v695], v647, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v386, &v415[v414], &qword_34D6D0, qword_2D34A0);
  if ((v358)(v415, 1, v413) == 1)
  {
    sub_30B8(v386, &qword_34D6D0, qword_2D34A0);
    if ((v358)(&v415[v414], 1, v694) == 1)
    {
      sub_30B8(v415, &qword_34D6D0, qword_2D34A0);
      v416 = v649;
      v417 = v410;
      v418 = v676;
      goto LABEL_217;
    }

    goto LABEL_212;
  }

  v419 = v633;
  sub_F3F4(v415, v633, &qword_34D6D0, qword_2D34A0);
  if ((v358)(&v415[v414], 1, v694) == 1)
  {
    sub_30B8(v386, &qword_34D6D0, qword_2D34A0);
    (*(v689 + 8))(v419, v694);
LABEL_212:
    sub_30B8(v415, &qword_34D6A8, &unk_2D15A0);
    v416 = v649;
    v417 = v410;
    v418 = v676;
LABEL_213:
    if (v412)
    {
      goto LABEL_218;
    }

    sub_6FB3C(v668, v406, v418, v690);
LABEL_215:
    v420 = v669;
    goto LABEL_224;
  }

  v421 = v694;
  v692 = v412;
  v422 = v689;
  v423 = v661;
  (*(v689 + 32))(v661, &v415[v414], v694);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v424 = v415;
  v425 = sub_2CE250();
  v426 = *(v422 + 8);
  v426(v423, v421);
  sub_30B8(v386, &qword_34D6D0, qword_2D34A0);
  v426(v419, v421);
  v412 = v692;
  sub_30B8(v424, &qword_34D6D0, qword_2D34A0);
  v416 = v649;
  v417 = v410;
  v418 = v676;
  if ((v425 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_217:
  if (v412)
  {
LABEL_218:

    v427 = v690;
    if (v406)
    {
    }

    else
    {
      v427 = 0;
      v418 = 0;
    }

    goto LABEL_223;
  }

  sub_6FB3C(v668, v406, v418, v690);

  if (!v428)
  {
    v412 = 0;
    goto LABEL_215;
  }

  v412 = v428;
  v674 = v670;
  v427 = v686;
  v418 = v675;
LABEL_223:
  v420 = v669;

  v678 = (&dword_8 + 2);
  v675 = v418;
  v686 = v427;
  v680 = v674;
  v417 = v412;
LABEL_224:
  v429 = *(v695 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_resolvedReference);
  v430 = v650;
  v692 = v412;
  if (!v429)
  {
    goto LABEL_252;
  }

  if (!sub_2CD960() && !sub_2CD990())
  {

LABEL_252:
    v474 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun;
    v475 = v640;
    (*(v640 + 104))(v416, enum case for CommonAudio.Noun.library(_:), v430);
    (*(v475 + 56))(v416, 0, 1, v430);
    v476 = *(v634 + 48);
    v477 = v695 + v474;
    v478 = v635;
    sub_F3F4(v477, v635, &qword_34D698, &qword_2D1598);
    sub_F3F4(v416, &v478[v476], &qword_34D698, &qword_2D1598);
    v479 = *(v475 + 48);
    if (v479(v478, 1, v430) == 1)
    {
      sub_30B8(v416, &qword_34D698, &qword_2D1598);
      if (v479(&v478[v476], 1, v430) == 1)
      {
        sub_30B8(v478, &qword_34D698, &qword_2D1598);
        v691 = 0;
        *&v694 = 0;
        v472 = 2;
        goto LABEL_260;
      }
    }

    else
    {
      v480 = v616;
      sub_F3F4(v478, v616, &qword_34D698, &qword_2D1598);
      if (v479(&v478[v476], 1, v430) != 1)
      {
        v481 = v416;
        v482 = v640;
        v483 = &v478[v476];
        v484 = v610;
        (*(v640 + 32))(v610, v483, v430);
        sub_6FB80(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun, &protocol conformance descriptor for CommonAudio.Noun);
        v485 = sub_2CE250();
        v486 = *(v482 + 8);
        v486(v484, v430);
        v487 = v481;
        v420 = v669;
        sub_30B8(v487, &qword_34D698, &qword_2D1598);
        v486(v480, v430);
        sub_30B8(v478, &qword_34D698, &qword_2D1598);
        v691 = 0;
        *&v694 = 0;
        v472 = v625;
        if (v485)
        {
          v472 = 2;
        }

        goto LABEL_260;
      }

      sub_30B8(v416, &qword_34D698, &qword_2D1598);
      (*(v640 + 8))(v480, v430);
    }

    sub_30B8(v478, &qword_34D690, &qword_2D1590);
    v691 = 0;
    *&v694 = 0;
    v473 = v695;
    v472 = v625;
    goto LABEL_261;
  }

  v676 = v417;
  v431 = v629;
  v432 = v628;
  v433 = v630;
  (*(v629 + 104))(v628, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v630);
  sub_2CD700();
  sub_2CD630();
  v689 = sub_2CAD90();

  (*(v431 + 8))(v432, v433);
  sub_20410(&qword_34D6F0, &unk_2D15D8);
  v434 = sub_2CD620();
  v435 = *(v434 - 8);
  v436 = (*(v435 + 80) + 32) & ~*(v435 + 80);
  v437 = swift_allocObject();
  v694 = xmmword_2D0090;
  *(v437 + 16) = xmmword_2D0090;
  v438 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
  v439 = *(v435 + 104);
  v439(v437 + v436, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v434);
  v691 = sub_2CADA0();

  v440 = swift_allocObject();
  *(v440 + 16) = v694;
  v439(v440 + v436, v438, v434);
  v690 = sub_2CADA0();

  v441 = swift_allocObject();
  *(v441 + 16) = v694;
  v439(v441 + v436, v438, v434);
  v442 = sub_2CADA0();

  v443 = v631;
  sub_7F014(v689, v631);

  v444 = sub_2CAB40();
  v445 = *(v444 - 8);
  if ((*(v445 + 48))(v443, 1, v444) == 1)
  {
    sub_30B8(v443, &unk_353080, &qword_2D1460);
  }

  else
  {
    v446 = sub_2CAB20();
    v448 = v447;
    (*(v445 + 8))(v443, v444);
    v449 = sub_BF40C(v446, v448);
    v451 = v450;

    if (v451)
    {

      v675 = v449;
      v686 = v451;
    }
  }

  v452 = v690;
  if (v691 && (, v453 = sub_2CADC0(), v455 = v454, , v455))
  {
    v456 = sub_BF40C(v453, v455);
    v458 = v457;

    if (v458)
    {
      v459 = v456;
    }

    else
    {
      v459 = 0;
    }

    *&v694 = v459;
    if (!v452)
    {
LABEL_245:
      v691 = 0;
      if (v442)
      {
        goto LABEL_246;
      }

LABEL_244:

LABEL_249:
      v472 = 1;
      v473 = v695;
      v420 = v669;
LABEL_250:
      v417 = v676;
      goto LABEL_261;
    }
  }

  else
  {
    *&v694 = 0;
    if (!v452)
    {
      goto LABEL_245;
    }
  }

  v460 = sub_2CADC0();
  v462 = v461;

  if (!v462)
  {
    goto LABEL_245;
  }

  v463 = sub_BF40C(v460, v462);
  v465 = v464;

  if (v465)
  {
    v466 = v463;
  }

  else
  {
    v466 = 0;
  }

  v691 = v466;
  if (!v442)
  {
    goto LABEL_244;
  }

LABEL_246:

  v467 = sub_2CADC0();
  v469 = v468;

  if (!v469)
  {
    goto LABEL_249;
  }

  v470 = sub_BF40C(v467, v469);
  v417 = v471;

  v420 = v669;
  if (!v417)
  {
    v472 = 1;
    v473 = v695;
    goto LABEL_250;
  }

  v472 = 1;
  v680 = v470;
LABEL_260:
  v473 = v695;
LABEL_261:
  v488 = *(v473 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_attributes);
  v489 = v673;
  v490 = v677;
  (v672)(v673, v646, v677);

  v491 = sub_17F758(v489, v488);

  (v644)(v489, v490);
  v492 = 2;
  if ((v491 & 1) == 0)
  {
    v492 = v472;
  }

  v684 = v492;
  v493 = sub_7EF68(*(v473 + 16));
  if (!v494)
  {
    goto LABEL_279;
  }

  v495 = sub_BF40C(v493, v494);
  v497 = v496;

  if (v693)
  {
    if (v497)
    {
      if (v420)
      {
        if (v420 == 2)
        {
          v498 = v693;

          v420 = 0;
          v678 = 0;
          v680 = v670;
          v417 = v498;
LABEL_278:

          v691 = v495;
          goto LABEL_279;
        }

        goto LABEL_271;
      }

      goto LABEL_273;
    }
  }

  else if (v497)
  {
    if (v420)
    {
LABEL_271:
      v499 = v420 == 2;
      if (v417)
      {
        goto LABEL_278;
      }

LABEL_274:
      if (v499)
      {
        v678 = (&dword_0 + 2);
        goto LABEL_280;
      }

      v417 = 0;
      goto LABEL_278;
    }

LABEL_273:
    v499 = 1;
    if (v417)
    {
      goto LABEL_278;
    }

    goto LABEL_274;
  }

LABEL_279:
  v495 = v680;
  v497 = v417;
LABEL_280:
  v500 = v473;
  v501 = sub_7EF68(*(v473 + 24));
  if (v502)
  {
    v503 = sub_BF40C(v501, v502);
    v505 = v504;
  }

  else
  {
    v503 = 0;
    v505 = 0;
  }

  v506 = sub_7EFAC(*(v500 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appMusicArtistNames));
  if (v507)
  {
    v510 = v506;
    v688 = v509;
    v689 = v508;
  }

  else
  {
    v510 = sub_7EFAC(*(v500 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookAuthors));
    v689 = v511;
    v688 = v512;
    if (!v507)
    {
      v690 = 0;
      goto LABEL_288;
    }
  }

  v690 = v507;
  v513 = sub_BF40C(v510, v507);
  if (v514)
  {
    v515 = v513;
    v516 = v514;

    v503 = v515;
    v505 = v516;
  }

LABEL_288:
  v685 = v510;
  if (!v693)
  {
    if (v505)
    {
      if (!v420)
      {
        v518 = 0;
        v519 = 0;
        if (v497)
        {
          goto LABEL_296;
        }

        goto LABEL_300;
      }

      goto LABEL_295;
    }

LABEL_297:
    v503 = v495;
    v505 = v497;
LABEL_304:
    v520 = v678;
    goto LABEL_305;
  }

  if (!v505)
  {
    goto LABEL_297;
  }

  if (!v420)
  {
    v519 = 0;
    v518 = 1;
    if (v497)
    {
      goto LABEL_296;
    }

    goto LABEL_300;
  }

  if (v420 == 3)
  {
    v517 = v693;

    *&v694 = v503;
LABEL_317:

    v693 = v517;
    goto LABEL_319;
  }

LABEL_295:
  v518 = 0;
  v519 = v420 != 3;
  if (v497)
  {
LABEL_296:
    *&v694 = v503;
    v505 = v497;
LABEL_303:

    v503 = v495;
    goto LABEL_304;
  }

LABEL_300:
  if (v519 || (v518 & 1) != 0)
  {
    *&v694 = v503;
    v505 = 0;
    goto LABEL_303;
  }

  if (v690)
  {

    v538 = v688;

    v678 = (&dword_0 + 3);
    v675 = v689;
    v686 = v538;
    v495 = v503;
    goto LABEL_303;
  }

  v520 = (&dword_0 + 3);
LABEL_305:
  if (!v520 || v420)
  {
    if (v420 == 18)
    {
      if (v520 == &dword_4 + 1)
      {
        v420 = 5;
      }

      else
      {
        v420 = 18;
      }
    }
  }

  else
  {
    v420 = v520;
  }

  if (!v693)
  {
    goto LABEL_315;
  }

  if (!v420)
  {
    v517 = v693;
    goto LABEL_317;
  }

  if (v505)
  {
LABEL_315:
    v670 = v503;
    goto LABEL_319;
  }

LABEL_319:
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v687 = v651;

  v521 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v522 = v666;
  v523 = sub_3ED0(v666, static Logger.default);
  swift_beginAccess();
  v524 = v665;
  v525 = v664;
  (*(v665 + 16))(v664, v523, v522);
  v526 = v521;
  v527 = sub_2CDFE0();
  v528 = sub_2CE690();

  if (os_log_type_enabled(v527, v528))
  {
    v529 = swift_slowAlloc();
    v530 = swift_slowAlloc();
    v696 = v530;
    *v529 = 136315138;
    v531 = v526;
    v532 = [v531 description];
    v533 = sub_2CE270();
    v535 = v534;

    v536 = sub_3F08(v533, v535, &v696);

    *(v529 + 4) = v536;
    _os_log_impl(&dword_0, v527, v528, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v529, 0xCu);
    sub_306C(v530);

    (*(v665 + 8))(v664, v666);
  }

  else
  {

    (*(v524 + 8))(v525, v522);
  }

  sub_6FB3C(v685, v690, v689, v688);
  sub_30B8(v671, &qword_34D6A0, &unk_2D3490);
  return v526;
}

id sub_6F404(uint64_t a1)
{
  v2 = sub_20410(&qword_34D710, &qword_2D15E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_20410(&qword_34D718, &unk_2D15F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v17[1] = a1;
  sub_2CD700();

  sub_2CD870();
  v9 = sub_2CD4D0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_30B8(v8, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v11 = sub_2AA550();
    (*(v10 + 8))(v8, v9);
    if (v11)
    {

      return v11;
    }
  }

  v12 = sub_2CD8A0();

  if (!v12)
  {
    return 0;
  }

  sub_2CB0C0();
  sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);
  sub_2CB1E0();
  v13 = sub_2CB1F0();
  (*(v3 + 8))(v5, v2);
  v17[0] = sub_2CAD30();
  v13(&v16, v17);

  return v16;
}

id sub_6F708(uint64_t a1)
{
  v2 = sub_20410(&qword_34D710, &qword_2D15E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-v4];
  v6 = sub_20410(&qword_34D718, &unk_2D15F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  sub_F3F4(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade, &v14[-v7], &qword_34D718, &unk_2D15F0);
  v9 = sub_2CD4D0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_30B8(v8, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v11 = sub_2AA550();
    (*(v10 + 8))(v8, v9);
    result = v11;
    if (v11)
    {
      return result;
    }
  }

  if (!*(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_dateTime))
  {
    return 0;
  }

  sub_2CB0C0();
  sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);

  sub_2CB1E0();
  v13 = sub_2CB1F0();
  (*(v3 + 8))(v5, v2);
  v16 = sub_2CAD30();
  v13(&v15, &v16);

  return v15;
}

uint64_t sub_6F9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22[3] = a7;
  v22[4] = a8;
  v15 = sub_F390(v22);
  (*(*(a7 - 8) + 16))(v15, a1, a7);
  sub_35E0(a2, a2[3]);
  sub_EEAC(a3, v21);
  sub_EEAC(a2, v20);
  sub_EEAC(v22, v19);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  sub_F338(v21, (v16 + 5));
  sub_F338(v20, (v16 + 10));
  sub_F338(v19, (v16 + 15));

  v17 = a6;
  sub_2CC2F0();

  return sub_306C(v22);
}

void sub_6FB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_6FB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6FC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6D0, qword_2D34A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FC90()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_286F0(v21, &v14);
  if (v15)
  {

    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_28760(&v14);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

void *sub_700E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v26 = v8;
  v27 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v25 = a2;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v24[3] = v9;
  v24[4] = &off_337EB0;
  v24[0] = a4;
  _s18NeedsValueStrategyCMa();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v24, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000011;
  v16[3] = 0x80000000002DA8D0;
  v16[5] = 0xD000000000000019;
  v16[6] = 0x80000000002DB1F0;
  v16[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v23[3] = sub_2CC2B0();
  v23[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v23);
  sub_2CC2A0();
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);
  sub_2CC350();
  v17 = sub_2CB490();
  v21[3] = v8;
  v21[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v21[0] = v17;
  type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v18 = swift_allocObject();
  v18[15] = v16;
  sub_EEAC(v23, (v18 + 16));
  sub_EEAC(v21, (v18 + 21));
  sub_EEAC(v22, (v18 + 3));
  sub_EEAC(v21, (v18 + 8));
  sub_306C(a3);
  sub_306C(v21);
  sub_306C(v22);
  sub_306C(v23);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v25, (v10 + 3));
  sub_306C(v24);
  return v10;
}

void *sub_70384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v26 = v8;
  v27 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v25 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v24[3] = v9;
  v24[4] = &off_337EB0;
  v24[0] = a4;
  type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v24, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000011;
  v16[3] = 0x80000000002DA8D0;
  v16[5] = 0xD000000000000019;
  v16[6] = 0x80000000002DB1F0;
  v16[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v23[3] = sub_2CC2B0();
  v23[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v23);
  sub_2CC2A0();
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);
  sub_2CC350();
  v17 = sub_2CB490();
  v21[3] = v8;
  v21[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v21[0] = v17;
  type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v18 = swift_allocObject();
  v18[15] = v16;
  sub_EEAC(v23, (v18 + 16));
  sub_EEAC(v21, (v18 + 21));
  sub_EEAC(v22, (v18 + 3));
  sub_EEAC(v21, (v18 + 8));
  sub_306C(a2);
  sub_306C(v21);
  sub_306C(v22);
  sub_306C(v23);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v25, (v10 + 3));
  sub_306C(v24);
  return v10;
}

uint64_t sub_70620(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2CB4A0();
  v26[3] = v7;
  v26[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v26[0] = a3;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[5] = 0xD000000000000019;
  v8[6] = 0x80000000002DB1F0;
  v8[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v9 = sub_2CC2B0();
  v24 = v9;
  v25 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v23);
  sub_2CC2A0();
  v10 = sub_2CC360();
  v21 = v10;
  v22 = &protocol witness table for StringsFileResolver;
  sub_F390(&v20);
  sub_2CC350();
  v18 = v7;
  v19 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v17 = sub_2CB490();
  type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v11 = swift_allocObject();
  v11[15] = v8;
  sub_EEAC(&v23, (v11 + 16));
  sub_EEAC(&v17, (v11 + 21));
  sub_EEAC(&v20, v16);
  sub_F338(&v17, v15);
  sub_306C(&v20);
  sub_306C(&v23);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v16, (v11 + 3));
  sub_F338(v15, (v11 + 8));
  type metadata accessor for UpdateMediaAffinityViewProvider(0);
  v12 = swift_allocObject();
  sub_10FEB0();
  *(v12 + 16) = v11;
  sub_F338(&v23, v12 + 24);
  sub_EEAC(v26, &v23);
  v21 = v9;
  v22 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v20);

  sub_2CC2A0();
  v18 = v10;
  v19 = &protocol witness table for StringsFileResolver;
  sub_F390(&v17);
  sub_2CC350();
  *(a4 + 112) = &off_32F5D0;

  sub_306C(a2);
  sub_306C(v26);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  sub_F338(&v23, a4 + 32);
  sub_F338(&v20, a4 + 72);
  sub_F338(&v17, a4 + 120);
  return a4;
}

uint64_t sub_708D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000019;
  v9[6] = 0x80000000002DB1F0;
  v9[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_70B6C()
{
  v0 = sub_2CC2B0();
  v90 = *(v0 - 8);
  __chkstk_darwin(v0);
  v89 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2CC360();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_34D7C8, &qword_2D1618);
  v88 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v87 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v76 - v6);
  sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v86 = sub_334A0(0, &qword_34D7D0, INUpdateMediaAffinityIntentResponse_ptr);
  sub_2C9780();
  v8 = sub_6FC90();
  sub_2C9A00();
  v9 = sub_2CB4A0();
  v10 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa_1(0);
  v11 = swift_allocObject();
  v12 = sub_70620(v8, &v124, v10, v11);

  *&v124 = v12;
  sub_72020(&qword_34D7D8, _s27NeedsDisambiguationStrategyCMa_1, &protocol conformance descriptor for MediaItemDisambiguationStrategy<A>);
  sub_2C96A0();

  sub_2C9760();
  v13 = sub_6FC90();
  v14 = sub_2CB490();

  sub_2C9A00();
  v122 = v0;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);
  sub_2CC2A0();
  v15 = type metadata accessor for SiriAudioOutputProvider();
  v16 = swift_allocObject();
  sub_F338(&v121, v16 + 16);
  v17 = sub_700E8(v13, v14, &v124, v16);

  *&v124 = v17;
  _s18NeedsValueStrategyCMa();
  sub_72020(&qword_34D7E0, _s18NeedsValueStrategyCMa, &unk_2D1180);
  sub_2C9630();

  sub_2C96F0();
  v18 = sub_6FC90();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa(0);
  swift_allocObject();
  v19 = sub_DE190(v18, &v124);

  *&v124 = v19;
  sub_72020(&qword_34D7E8, _s25NeedsConfirmationStrategyCMa, &unk_2D8300);
  sub_2C9690();

  v93 = v3;
  sub_2C9750();
  v20 = sub_6FC90();
  sub_2C9A00();
  v21 = sub_2CB490();
  _s21ConfirmIntentStrategyCMa_1(0);
  v22 = swift_allocObject();
  v23 = sub_708D4(v20, &v124, v21, v22);

  *&v124 = v23;
  sub_72020(&qword_34D7F0, _s21ConfirmIntentStrategyCMa_1, &unk_2D89E0);
  sub_2C96C0();

  sub_2C9720();
  v24 = sub_6FC90();
  sub_2CC350();
  sub_2C9A00();
  v25 = sub_2CB490();
  v122 = v9;
  v123 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v121 = v25;
  v119 = v0;
  v120 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v118);
  sub_2CC2A0();
  v26 = swift_allocObject();
  sub_F338(&v118, v26 + 16);
  v27 = sub_2CBC40();
  swift_allocObject();
  v28 = sub_2CBC30();
  v119 = v27;
  v120 = &protocol witness table for AppIntentInvoker;
  *&v118 = v28;
  v116 = v15;
  v117 = &off_337EB0;
  *&v115 = v26;
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();
  v29 = swift_allocObject();
  v30 = sub_F9A0(&v115, v15);
  __chkstk_darwin(v30);
  v32 = (&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v113 = v15;
  v114 = &off_337EB0;
  v35 = v0;
  v85 = v15;
  *&v112 = v34;
  v80 = type metadata accessor for UpdateMediaAffinityCatDialogService();
  v36 = swift_allocObject();
  v79 = 0x80000000002DB1F0;
  v36[2] = 0xD000000000000011;
  v36[3] = 0x80000000002DA8D0;
  v36[5] = 0xD000000000000019;
  v36[6] = 0x80000000002DB1F0;
  v36[4] = v24;
  *(v29 + 16) = v36;
  sub_FA14(_swiftEmptyArrayStorage);

  v110 = v0;
  v111 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v109);
  sub_2CC2A0();
  v37 = v91;
  v108[3] = v91;
  v108[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v108);
  sub_2CC350();
  v38 = sub_2CB490();
  *(&v106 + 1) = v9;
  v107 = &protocol witness table for SiriKitTaskLoggingProvider;
  v92 = v9;
  *&v105 = v38;
  v78 = type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v39 = swift_allocObject();
  v39[15] = v36;
  sub_EEAC(&v109, (v39 + 16));
  sub_EEAC(&v105, (v39 + 21));
  sub_EEAC(v108, &v102);
  sub_EEAC(&v105, &v99);
  sub_306C(&v124);
  v84[1](v83, v37);
  sub_306C(&v105);
  sub_306C(v108);
  sub_306C(&v109);
  v39[13] = 0xD000000000000011;
  v39[14] = 0x80000000002DA8D0;
  v83 = 0x80000000002DA8D0;
  v39[2] = v24;
  sub_F338(&v102, (v39 + 3));
  sub_F338(&v99, (v39 + 8));
  *(v29 + 104) = v39;
  sub_F338(&v121, v29 + 24);
  sub_F338(&v112, v29 + 64);
  sub_F338(&v118, v29 + 112);
  sub_306C(&v115);
  *&v124 = v29;
  sub_72020(&qword_34D7F8, type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy, &protocol conformance descriptor for UpdateMediaAffinity.HandleIntentStrategy);
  sub_2C9640();

  v84 = v7;
  sub_2C9700();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v40 = CATDefaultMode;
  v41 = sub_2CBC00();
  v42 = sub_2CBBF0();
  sub_2C9A00();
  v43 = v89;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v44 = swift_allocObject();
  v122 = &type metadata for StringsBackedAppNameResolver;
  updated = sub_2869C();
  v123 = updated;
  *&v121 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v121 + 16);
  v119 = v41;
  v120 = &protocol witness table for MorphunProvider;
  *&v118 = v42;
  v116 = v0;
  v117 = &protocol witness table for FeatureFlagProvider;
  v45 = sub_F390(&v115);
  (*(v90 + 16))(v45, v43, v0);
  *(v44 + 296) = v40;
  sub_EEAC(&v115, v44 + 256);
  sub_EEAC(&v121, &v112);
  sub_EEAC(&v118, &v109);
  sub_EEAC(&v124, v108);
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v46 = sub_2CCA30();

  v47 = sub_2CCA20();
  v103 = v46;
  v104 = &protocol witness table for MultiUserConnectionProvider;
  *&v102 = v47;
  v48 = sub_2CB9E0();
  v100 = v48;
  v101 = &protocol witness table for DeviceProvider;
  sub_F390(&v99);
  sub_2CB9C0();
  sub_EEAC(&v112, v44 + 16);
  sub_EEAC(&v109, v44 + 216);
  sub_EEAC(v108, v44 + 56);
  sub_EEAC(&v102, v44 + 96);
  sub_EEAC(&v99, v44 + 176);
  sub_286F0(&v105, &v94);
  if (v95)
  {

    sub_28760(&v105);
    sub_306C(v108);
    sub_306C(&v109);
    sub_306C(&v112);
    (*(v90 + 8))(v89, v35);
    sub_306C(&v124);
    sub_306C(&v115);
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v99);
    sub_306C(&v102);
    sub_F338(&v94, &v96);
  }

  else
  {
    sub_EEAC(v108, &v96);
    v49 = sub_2C9E60();
    swift_allocObject();
    v50 = sub_2C9E50();
    v97 = v49;
    v98 = &protocol witness table for ContactsManager;

    *&v96 = v50;
    sub_28760(&v105);
    sub_306C(v108);
    sub_306C(&v109);
    sub_306C(&v112);
    (*(v90 + 8))(v89, v35);
    sub_306C(&v124);
    sub_306C(&v115);
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v99);
    sub_306C(&v102);
    if (v95)
    {
      sub_28760(&v94);
    }
  }

  sub_F338(&v96, v44 + 136);
  v51 = swift_allocObject();
  v52 = v79;
  v53 = v83;
  v51[2] = 0xD000000000000011;
  v51[3] = v53;
  v51[5] = 0xD000000000000019;
  v51[6] = v52;
  v51[4] = v44;
  sub_FA14(_swiftEmptyArrayStorage);
  v81 = v44;
  swift_retain_n();

  sub_2C9A00();
  v122 = v35;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);
  sub_2CC2A0();
  v119 = v91;
  v120 = &protocol witness table for StringsFileResolver;
  sub_F390(&v118);
  sub_2CC350();
  v54 = v92;
  v55 = sub_2CB490();
  v116 = v54;
  v117 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v115 = v55;
  v56 = swift_allocObject();
  v56[15] = v51;
  sub_EEAC(&v121, (v56 + 16));
  sub_EEAC(&v115, (v56 + 21));
  sub_EEAC(&v118, &v112);
  sub_EEAC(&v115, &v109);
  sub_306C(&v124);
  sub_306C(&v115);
  sub_306C(&v118);
  sub_306C(&v121);
  v56[13] = 0xD000000000000011;
  v56[14] = v53;
  v56[2] = v44;
  sub_F338(&v112, (v56 + 3));
  sub_F338(&v109, (v56 + 8));
  type metadata accessor for UpdateMediaAffinityViewProvider(0);
  v57 = swift_allocObject();
  v58 = v56;
  swift_retain_n();
  sub_10FEB0();
  v59 = updated;
  v125 = &type metadata for StringsBackedAppNameResolver;
  v126 = updated;
  *&v124 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
  v122 = v48;
  v123 = &protocol witness table for DeviceProvider;
  sub_F390(&v121);
  sub_2CB9C0();
  v119 = v35;
  v120 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v118);
  sub_2CC2A0();
  v116 = sub_2CC810();
  v117 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v115);
  sub_2CC800();
  v113 = sub_2CC590();
  v114 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v112);
  sub_2CC580();
  sub_20410(&qword_34D800, &qword_2D1628);
  v60 = swift_allocObject();
  v61 = class metadata base offset for CommonAppResolver;
  v62 = v60 + *(*v60 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v62, "resolutionType");
  v62[15] = -18;
  sub_EEAC(&v124, v60 + *(*v60 + v61 + 16));
  sub_EEAC(&v121, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v118, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v115, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v112, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 48));
  v63 = sub_2CCF50();
  sub_306C(&v112);
  sub_306C(&v115);
  sub_306C(&v118);
  sub_306C(&v121);
  sub_306C(&v124);
  sub_2C9A00();
  v122 = &type metadata for StringsBackedAppNameResolver;
  v123 = v59;
  *&v121 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v121 + 16);
  v77 = v35;
  v119 = v35;
  v120 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v118);
  sub_2CC2A0();
  v116 = v35;
  v117 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v115);
  sub_2CC2A0();
  v64 = v85;
  v65 = swift_allocObject();
  sub_F338(&v115, v65 + 16);
  v116 = v64;
  v117 = &off_337EB0;
  *&v115 = v65;
  swift_setDeallocating();
  sub_306C((v57 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_34D808, &qword_2D1630);
  v66 = swift_allocObject();
  v66[26] = 0;
  v66[2] = v63;
  v66[3] = v58;
  v66[4] = sub_107D74;
  v66[5] = 0;
  sub_F338(&v124, (v66 + 6));
  sub_F338(&v121, (v66 + 11));
  sub_F338(&v118, (v66 + 16));
  sub_F338(&v115, (v66 + 21));
  *&v124 = v66;
  sub_72068(&qword_34D810, &qword_34D808, &qword_2D1630, &unk_2D7C94);
  sub_2C9660();

  v67 = v93;
  v68 = v84;
  sub_2C9710();
  *&v124 = sub_10D76C(v58);
  sub_20410(&qword_34D818, &qword_2D1638);
  sub_72068(&qword_34D820, &qword_34D818, &qword_2D1638, &unk_2D2FD8);
  sub_2C96B0();

  sub_2C9770();
  v69 = sub_6FC90();
  sub_2C9A00();
  v70 = sub_2CB490();
  v122 = v77;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);

  sub_2CC2A0();
  v71 = swift_allocObject();
  sub_F338(&v121, v71 + 16);
  v72 = sub_70384(v69, &v124, v70, v71);

  *&v124 = v72;
  type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
  sub_72020(&qword_34D828, type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy, &protocol conformance descriptor for UpdateMediaAffinity.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  sub_20410(&qword_34D830, &qword_2D1640);
  *&v124 = swift_allocObject();
  sub_72068(&qword_34D838, &qword_34D830, &qword_2D1640, &unk_2D3D00);
  sub_2C9670();

  sub_2C9730();
  v73 = v88;
  (*(v88 + 16))(v87, v68, v67);
  sub_20410(&qword_34D840, qword_2D1648);
  swift_allocObject();
  v74 = sub_2C96E0();

  (*(v73 + 8))(v68, v67);
  return v74;
}

uint64_t sub_72020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_72068(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_720B4(char a1)
{
  result = 0x747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6D656D20646E6162;
      break;
    case 2:
      result = 0x656D757274736E69;
      break;
    case 3:
      result = 0x6F746375646E6F63;
      break;
    case 4:
      result = 0x736C61636F76;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7265736F706D6F63;
      break;
    case 10:
      result = 0x726574697277;
      break;
    case 11:
      result = 0x6E6520646E756F73;
      break;
    case 12:
      result = 0x72656375646F7270;
      break;
    case 13:
      result = 0x726567616E616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_72240(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_720B4(*a1);
  v5 = v4;
  if (v3 == sub_720B4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_722C8()
{
  v1 = *v0;
  sub_2CEF50();
  sub_720B4(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_7232C(uint64_t a1)
{
  sub_720B4(*v1);
  sub_2CE310();
}

Swift::Int sub_72380(uint64_t a1)
{
  v2 = *v1;
  sub_2CEF50();
  sub_720B4(v2);
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_723E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_727A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_72410@<X0>(unint64_t *a1@<X8>)
{
  result = sub_720B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlayerPersonRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerPersonRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_725B0()
{
  result = qword_34D848;
  if (!qword_34D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D848);
  }

  return result;
}

uint64_t sub_72614(uint64_t a1, uint64_t a2)
{
  v4 = sub_727EC();
  v5 = sub_72840();
  v6 = sub_72894();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_7268C()
{
  result = qword_34D850;
  if (!qword_34D850)
  {
    sub_2DB30(&qword_34D858, &qword_2D16B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D850);
  }

  return result;
}

unint64_t sub_726F4()
{
  result = qword_34D860;
  if (!qword_34D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D860);
  }

  return result;
}

unint64_t sub_7274C()
{
  result = qword_34D868;
  if (!qword_34D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D868);
  }

  return result;
}

unint64_t sub_727A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32F600;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_727EC()
{
  result = qword_34D870;
  if (!qword_34D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D870);
  }

  return result;
}

unint64_t sub_72840()
{
  result = qword_34D878;
  if (!qword_34D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D878);
  }

  return result;
}

unint64_t sub_72894()
{
  result = qword_34D880;
  if (!qword_34D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D880);
  }

  return result;
}

void *sub_728E8()
{

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_deviceQuantifier, &qword_34DA28, qword_2D1908);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_deviceType, &qword_34DA20, &qword_2D1900);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_placeHint, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_reference, &qword_34DA10, &qword_2D18F0);
  return v0;
}

uint64_t sub_729CC()
{
  sub_728E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeHomeAutomationEntityProvider(uint64_t a1)
{
  result = qword_34D8B0;
  if (!qword_34D8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_72A78(uint64_t a1)
{
  sub_72C4C(319, &qword_34D8C0, &type metadata accessor for DeviceQuantifier);
  if (v1 <= 0x3F)
  {
    sub_72C4C(319, &qword_34D8C8, &type metadata accessor for DeviceType);
    if (v2 <= 0x3F)
    {
      sub_72C4C(319, &qword_34D8D0, &type metadata accessor for PlaceHint);
      if (v3 <= 0x3F)
      {
        sub_72C4C(319, &unk_34D8D8, &type metadata accessor for Reference);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_72C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_72CAC()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_72D58()
{
  v1 = *(*v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin32FakeHomeAutomationEntityProvider_destinationDeviceId);

  return v1;
}

void sub_72E4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34CC98, &unk_2D3120);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v15 = [v2 backingStore];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    sub_73000(a1, v6);
    v9 = sub_2CE0A0();
    v10 = *(v9 - 8);
    isa = 0;
    if ((*(v10 + 48))(v6, 1, v9) != 1)
    {
      isa = sub_2CE080().super.isa;
      (*(v10 + 8))(v6, v9);
    }

    v12 = INIntentSlotValueTransformToMediaDestination();

    [v8 setMediaDestination:v12];
  }

  else
  {
    v13 = v15;
  }
}

uint64_t sub_73000(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CC98, &unk_2D3120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_73070(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v6 = [v1 backingStore];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = INIntentSlotValueTransformToMediaSearch();
      [v3 setMediaSearch:v4];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

id sub_73218()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result mediaSearch];
  }

  return result;
}

void sub_732B0(uint64_t a1, char a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = [v2 backingStore];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      sub_736BC();
      isa = sub_2CE400().super.isa;
      v8 = INIntentSlotValueTransformToMediaItemValues();

      [v6 setMediaItems:v8];
      v4 = v8;
    }

    if (a2)
    {
      v29 = [v2 backingStore];
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = [v9 privatePlayMediaIntentData];
LABEL_13:
        v17 = v10;

        if (!v17)
        {
          return;
        }

        [v17 setAudioSearchResults:0];
        v18 = v17;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v29 = [v2 backingStore];
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = v19;
          sub_736BC();
          v21 = sub_2CE400().super.isa;
          v22 = INIntentSlotValueTransformToMediaItemValues();

          [v20 setMediaItems:v22];
          v18 = v22;
LABEL_26:

          return;
        }
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          return;
        }

        v23 = [v2 backingStore];
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          sub_736BC();
          v26 = sub_2CE400().super.isa;
          v27 = INIntentSlotValueTransformToMediaItemValues();

          [v25 setMediaItems:v27];
          v23 = v27;
        }

        if ((a2 & 1) == 0)
        {
          return;
        }

        v29 = [v2 backingStore];
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v10 = [v28 privateSearchForMediaIntentData];
          goto LABEL_13;
        }
      }

LABEL_25:
      v18 = v29;
      goto LABEL_26;
    }

    v11 = [v2 backingStore];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      sub_736BC();
      v14 = sub_2CE400().super.isa;
      v15 = INIntentSlotValueTransformToMediaItemValues();

      [v13 setMediaItems:v15];
      v11 = v15;
    }

    if (a2)
    {
      v29 = [v2 backingStore];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v10 = [v16 privateAddMediaIntentData];
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }
}

unint64_t sub_736BC()
{
  result = qword_356F50;
  if (!qword_356F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_356F50);
  }

  return result;
}

uint64_t type metadata accessor for SearchForMediaViewProvider(uint64_t a1)
{
  result = qword_34DA58;
  if (!qword_34DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7378C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = a1;
  v77 = sub_2CD490();
  v72 = *(v77 - 1);
  __chkstk_darwin(v77);
  v64 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20410(&qword_34CFB0, &unk_2D1000);
  __chkstk_darwin(v69);
  v76 = &v64 - v3;
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = &v64 - v8;
  __chkstk_darwin(v7);
  v71 = &v64 - v9;
  v10 = sub_2CA870();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v67 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v68 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v65 = &v64 - v23;
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v27 = *(v17 + 16);
  v74 = v26;
  v73 = v27;
  v27(v25, v26, v16);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "PlayMediaNeedsValueStrategy#actionForInput...", v30, 2u);
  }

  v31 = *(v17 + 8);
  v32 = v16;
  v31(v25, v16);
  sub_2CA790();
  v33 = (*(v11 + 88))(v15, v10);
  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v11 + 96))(v15, v10);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v34 = sub_2CAFE0();
    (*(*(v34 - 8) + 8))(v15, v34);
    v35 = v77;
  }

  else
  {
    v36 = v33;
    v37 = enum case for Parse.pommesResponse(_:);
    (*(v11 + 8))(v15, v10);
    v35 = v77;
    if (v36 != v37)
    {
      v48 = v67;
      v73(v67, v74, v32);
      v49 = sub_2CDFE0();
      v50 = sub_2CE690();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "PlayMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v31(v48, v32);
      return sub_2C9CF0();
    }
  }

  v38 = v75;
  sub_2CA790();
  v39 = sub_D2F98(v38, &v80);
  (*(v11 + 8))(v38, v10, v39);
  if (!v81)
  {
    sub_30B8(&v80, &qword_34CF98, &unk_2D1A40);
    v48 = v68;
    v73(v68, v74, v32);
    v49 = sub_2CDFE0();
    v50 = sub_2CE690();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "PlayMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v49, v50, v52, v51, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v77 = v31;
  v79 = v17 + 8;
  sub_420A4(&v80, &v82);
  sub_35E0(&v82, v83);
  v40 = v71;
  sub_2CD480();
  v41 = v72;
  v42 = v70;
  (*(v72 + 104))(v70, enum case for CommonAudio.Confirmation.cancel(_:), v35);
  (*(v41 + 56))(v42, 0, 1, v35);
  v43 = *(v69 + 48);
  v44 = v76;
  sub_F3F4(v40, v76, &qword_34CCE8, &unk_2D0E20);
  v45 = v44;
  sub_F3F4(v42, v44 + v43, &qword_34CCE8, &unk_2D0E20);
  v46 = *(v41 + 48);
  if (v46(v44, 1, v35) == 1)
  {
    sub_30B8(v42, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v40, &qword_34CCE8, &unk_2D0E20);
    if (v46(v47 + v43, 1, v35) == 1)
    {
      sub_30B8(v47, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v60 = v65;
      v73(v65, v74, v32);
      v61 = sub_2CDFE0();
      v62 = sub_2CE690();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v61, v62, "PlayMediaNeedsValueStrategy#actionForInput User asked to cancel", v63, 2u);
      }

      (v77)(v60, v32);
      sub_2C9CD0();
      return sub_306C(&v82);
    }

    goto LABEL_20;
  }

  v54 = v66;
  sub_F3F4(v44, v66, &qword_34CCE8, &unk_2D0E20);
  if (v46(v44 + v43, 1, v35) == 1)
  {
    sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
    (*(v72 + 8))(v54, v35);
LABEL_20:
    sub_30B8(v47, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v55 = v72;
  v56 = v64;
  (*(v72 + 32))(v64, v45 + v43, v35);
  sub_76D1C(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
  v57 = v45;
  v58 = sub_2CE250();
  v59 = *(v55 + 8);
  v59(v56, v35);
  sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
  v59(v54, v35);
  sub_30B8(v57, &qword_34CCE8, &unk_2D0E20);
  if (v58)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(&v82);
}

id sub_74260(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v56 = a6;
  v57 = a5;
  v53 = a2;
  v60 = a1;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);

  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  v21 = a4;

  v22 = os_log_type_enabled(v19, v20);
  v61 = a3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v52 = v13;
    v24 = v23;
    v25 = swift_slowAlloc();
    v62[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_3F08(v61, v21, v62);
    _os_log_impl(&dword_0, v19, v20, "PlayMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v24, 0xCu);
    sub_306C(v25);
    a3 = v61;

    v26 = v52;

    (*(v15 + 8))(v17, v14);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v26 = v13;
  }

  v27 = v53;
  v28 = v21;
  v29 = v57;
  sub_1C9250(v53, a3, v21, v26);
  v30 = v58;
  v52 = *(v58 + 16);
  v31 = v54;
  sub_F3F4(v26, v54, &unk_353020, &unk_2D0970);
  v32 = (*(v55 + 80) + 80) & ~*(v55 + 80);
  v33 = swift_allocObject();
  v33[2] = a3;
  v33[3] = v28;
  v33[4] = v29;
  v33[5] = v30;
  v34 = v60;
  v33[6] = v60;
  v33[7] = v27;
  v35 = v59;
  v33[8] = v56;
  v33[9] = v35;
  sub_14A58(v31, v33 + v32, &unk_353020, &unk_2D0970);
  v62[0] = v27;
  v36 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);

  v37 = v29;

  v38 = v27;
  v39 = v36;
  v40 = v38;

  v41 = v26;
  if (!sub_2CBFA0())
  {
    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = INMediaItemTypeGetName();
  if (result)
  {
    v43 = result;
    v44 = sub_2CE270();
    v46 = v45;

LABEL_10:
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x6574656D61726170;
    v48 = v61;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = v48;
    *(inited + 56) = v28;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x707954616964656DLL;
    *(inited + 120) = &type metadata for String;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = v44;
    *(inited + 104) = v46;

    v49 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v62[3] = v39;
    v62[4] = &off_3381B8;
    v62[0] = v40;
    v50 = v40;
    sub_101AC(v49, v34, v62, sub_13DB8, v33);

    sub_30B8(v41, &unk_353020, &unk_2D0970);
    return sub_30B8(v62, &qword_34C6C0, &qword_2D0710);
  }

  __break(1u);
  return result;
}

uint64_t sub_748C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_7495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_749F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa_0();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_74A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_0();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_74B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa_0();
  *v14 = v7;
  v14[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_74BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = _s18NeedsValueStrategyCMa_0();
  *v16 = v8;
  v16[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

void sub_74D28(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v207 = a6;
  v208 = a5;
  v217 = a4;
  v210 = a2;
  v211 = a1;
  v206 = sub_20410(&qword_34DBF0, &qword_2D1A38);
  __chkstk_darwin(v206);
  v209 = (&v193 - v7);
  v8 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v8 - 8);
  v204 = &v193 - v9;
  v218 = sub_2CA870();
  v10 = *(v218 - 8);
  v11 = __chkstk_darwin(v218);
  v13 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v193 - v15;
  __chkstk_darwin(v14);
  v219 = (&v193 - v17);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v197 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v205 = &v193 - v23;
  v24 = __chkstk_darwin(v22);
  v194 = &v193 - v25;
  v26 = __chkstk_darwin(v24);
  v202 = &v193 - v27;
  v28 = __chkstk_darwin(v26);
  v199 = &v193 - v29;
  v30 = __chkstk_darwin(v28);
  v196 = &v193 - v31;
  v32 = __chkstk_darwin(v30);
  v195 = &v193 - v33;
  v34 = __chkstk_darwin(v32);
  v201 = &v193 - v35;
  v36 = __chkstk_darwin(v34);
  v200 = &v193 - v37;
  v38 = __chkstk_darwin(v36);
  v198 = &v193 - v39;
  __chkstk_darwin(v38);
  v41 = &v193 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v43 = *(v19 + 16);
  v212 = v42;
  v214 = v19 + 16;
  v213 = v43;
  v43(v41, v42, v18);

  v44 = v18;
  v45 = sub_2CDFE0();
  v46 = sub_2CE690();

  v47 = os_log_type_enabled(v45, v46);
  v220 = v19;
  v203 = a3;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v225 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_3F08(v210, a3, &v225);
    _os_log_impl(&dword_0, v45, v46, "PlayMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v48, 0xCu);
    sub_306C(v49);

    v215 = *(v220 + 8);
    v215(v41, v44);
  }

  else
  {

    v215 = *(v19 + 8);
    v215(v41, v18);
  }

  v216 = v44;
  [v211 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v50 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v51 = swift_dynamicCast();
  v52 = v219;
  if ((v51 & 1) == 0)
  {
    v229 = 0;
  }

  sub_2CA790();
  v53 = *(v10 + 88);
  v54 = v218;
  v55 = v53(v52, v218);
  v56 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v55 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v78 = enum case for Parse.pommesResponse(_:);
    if (v55 == enum case for Parse.pommesResponse(_:))
    {
      v202 = v50;
      v79 = v219;
      (*(v10 + 96))(v219, v54);
      v80 = *v79;
      v81 = sub_1B7F14();
      if (!v81)
      {
        v136 = v196;
        v137 = v216;
        v213(v196, v212, v216);
        v138 = sub_2CDFE0();
        v139 = sub_2CE680();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          *v140 = 0;
          _os_log_impl(&dword_0, v138, v139, "PlayMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v140, 2u);
        }

        v215(v136, v137);
        v141 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v142 = swift_allocError();
        (*(*(v141 - 8) + 104))(v143, enum case for PlaybackCode.ceGE69(_:), v141);
        v144 = v209;
        *v209 = v142;
        swift_storeEnumTagMultiPayload();
        v208(v144);

        goto LABEL_64;
      }

      v82 = v81;
      sub_2CA790();
      v83 = sub_D2F98(v16, &v223);
      (*(v10 + 8))(v16, v54, v83);
      v84 = v216;
      if (!v224)
      {
        sub_30B8(&v223, &qword_34CF98, &unk_2D1A40);
        v145 = v195;
        v213(v195, v212, v84);
        v146 = sub_2CDFE0();
        v147 = sub_2CE690();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_0, v146, v147, "PlayMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v148, 2u);
        }

        v215(v145, v84);
        v149 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v150 = swift_allocError();
        (*(*(v149 - 8) + 104))(v151, enum case for PlaybackCode.ceGE70(_:), v149);
        v144 = v209;
        *v209 = v150;
        swift_storeEnumTagMultiPayload();
        v208(v144);

        goto LABEL_64;
      }

      sub_420A4(&v223, &v225);
      v85 = v227;
      v86 = v228;
      v87 = sub_35E0(&v225, v227);
      v88 = sub_17FF0C(v87, 0, 0, v85, v86);
      sub_2CDBC0();
      sub_2CDBB0();
      v219 = v80;
      sub_2CDAE0();
      sub_2CDBA0();

      v89 = sub_2CDBD0();
      v90 = sub_2303EC(v82, v89, 2u);

      v213(v200, v212, v84);
      v91 = v90;
      v92 = sub_2CDFE0();
      v93 = sub_2CE670();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        *(v94 + 4) = v91;
        *v95 = v91;
        v96 = v91;
        _os_log_impl(&dword_0, v92, v93, "PlayMediaNeedsValueStrategy#parseResponseValue Updating privatePlayMediaIntentData with: %@", v94, 0xCu);
        sub_30B8(v95, &unk_34FC00, &unk_2D0150);
      }

      v215(v200, v216);
      if (v229)
      {
        v97 = v229;
        v98 = [v97 backingStore];
        objc_opt_self();
        v99 = swift_dynamicCastObjCClass();
        if (v99)
        {
          v100 = v99;
          v101 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
          [v100 setPrivatePlayMediaIntentData:v101];
        }

        else
        {
          v101 = v97;
          v97 = v98;
        }
      }

      v213(v201, v212, v216);
      v152 = v88;
      v153 = sub_2CDFE0();
      v154 = sub_2CE670();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v155 = 138412290;
        *(v155 + 4) = v152;
        *v156 = v152;
        v157 = v152;
        _os_log_impl(&dword_0, v153, v154, "PlayMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v155, 0xCu);
        sub_30B8(v156, &unk_34FC00, &unk_2D0150);
      }

      v215(v201, v216);
      v158 = v229;
      if (v229)
      {
        v159 = v152;
        v160 = v158;
        v161 = [v160 backingStore];
        objc_opt_self();
        v162 = swift_dynamicCastObjCClass();
        v65 = v203;
        if (v162)
        {
          v163 = v162;
          v164 = INIntentSlotValueTransformToMediaSearch();
          [v163 setMediaSearch:v164];
        }

        else
        {
        }

        v63 = v216;
      }

      else
      {

        v63 = v216;
        v65 = v203;
      }

      sub_306C(&v225);
      v64 = v205;
      v66 = v229;
      if (v229)
      {
LABEL_11:
        if (v210 == 0xD000000000000012 && 0x80000000002DA150 == v65 || (sub_2CEEA0() & 1) != 0)
        {
          v67 = [v66 playbackRepeatMode];
          type metadata accessor for INPlaybackRepeatMode(0);
LABEL_15:
          v227 = v68;
          *&v225 = v67;
LABEL_16:
          sub_1DC344(v211);
          v213(v64, v212, v63);
          sub_F3F4(&v225, &v223, &qword_34CEA0, &qword_2D0FC0);
          v69 = sub_2CDFE0();
          v70 = sub_2CE690();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v222 = v72;
            *v71 = 136446210;
            sub_F3F4(&v223, v221, &qword_34CEA0, &qword_2D0FC0);
            sub_20410(&qword_34CEA0, &qword_2D0FC0);
            v73 = sub_2CE2A0();
            v75 = v74;
            sub_30B8(&v223, &qword_34CEA0, &qword_2D0FC0);
            v76 = sub_3F08(v73, v75, &v222);

            *(v71 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "PlayMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v71, 0xCu);
            sub_306C(v72);

            v77 = v205;
          }

          else
          {

            sub_30B8(&v223, &qword_34CEA0, &qword_2D0FC0);
            v77 = v64;
          }

          v215(v77, v63);
          sub_F3F4(&v225, &v223, &qword_34CEA0, &qword_2D0FC0);
          v118 = v66;
          v119 = v209;
          sub_2CA220();
          v120 = sub_20410(&qword_34DBF8, qword_2D1A50);
          (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
          swift_storeEnumTagMultiPayload();
          v208(v119);

          sub_30B8(v119, &qword_34DBF0, &qword_2D1A38);
          v121 = &v225;
          v122 = &qword_34CEA0;
          v123 = &qword_2D0FC0;
          goto LABEL_65;
        }

        if (v210 == 0xD000000000000015 && 0x80000000002DA180 == v65 || (sub_2CEEA0() & 1) != 0)
        {
          v67 = [v66 playbackQueueLocation];
          type metadata accessor for INPlaybackQueueLocation(0);
          goto LABEL_15;
        }

        if (v210 == 0x6675685379616C70 && v65 == 0xEC00000064656C66 || (sub_2CEEA0() & 1) != 0)
        {
          v172 = v66;
          v173 = sub_2CE900();
        }

        else
        {
          if ((v210 != 0x6C50656D75736572 || v65 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
          {
            if (v210 == 0x657449616964656DLL && v65 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
            {
              v176 = [v66 mediaItems];
              if (v176)
              {
                v177 = v176;
                sub_334A0(0, &qword_356F50, INMediaItem_ptr);
                v178 = sub_2CE410();

                v176 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
              }

              else
              {
                v178 = 0;
              }

              v225 = v178;
              v226 = 0;
              v227 = v176;
              goto LABEL_16;
            }

            if ((v210 != 0x6B63616279616C70 || v65 != 0xED00006465657053) && (sub_2CEEA0() & 1) == 0)
            {
              v183 = v194;
              v213(v194, v212, v63);

              v184 = v66;
              v185 = sub_2CDFE0();
              v186 = sub_2CE680();

              if (os_log_type_enabled(v185, v186))
              {
                v187 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                *&v223 = v188;
                *v187 = 136315138;
                *(v187 + 4) = sub_3F08(v210, v65, &v223);
                _os_log_impl(&dword_0, v185, v186, "PlayMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v187, 0xCu);
                sub_306C(v188);
              }

              v215(v183, v63);
              v189 = sub_2CB850();
              sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
              v190 = swift_allocError();
              (*(*(v189 - 8) + 104))(v191, enum case for PlaybackCode.ceGE73(_:), v189);
              v192 = v209;
              *v209 = v190;
              swift_storeEnumTagMultiPayload();
              v208(v192);

              v122 = &qword_34DBF0;
              v123 = &qword_2D1A38;
              v121 = v192;
              goto LABEL_65;
            }

            v179 = v66;
            v180 = sub_2CE910();
            v174 = &type metadata for Double;
            if (v181)
            {
              v182 = 0;
            }

            else
            {
              v182 = v180;
            }

            v225 = v182;
            if (v181)
            {
              v174 = 0;
            }

            v226 = 0;
            goto LABEL_72;
          }

          v175 = v66;
          v173 = sub_2CE920();
        }

        LOBYTE(v225) = v173 & 1;
        v174 = &type metadata for Bool;
LABEL_72:
        v227 = v174;
        goto LABEL_16;
      }

LABEL_61:
      v165 = v197;
      v213(v197, v212, v63);
      v166 = sub_2CDFE0();
      v167 = sub_2CE690();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&dword_0, v166, v167, "PlayMediaNeedsValueStrategy#parseResponseValue updatedIntent nil", v168, 2u);
      }

      v215(v165, v63);
      v169 = sub_2CB850();
      sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v170 = swift_allocError();
      (*(*(v169 - 8) + 104))(v171, enum case for PlaybackCode.ceGE72(_:), v169);
      v144 = v209;
      *v209 = v170;
      swift_storeEnumTagMultiPayload();
      v208(v144);
LABEL_64:
      v122 = &qword_34DBF0;
      v123 = &qword_2D1A38;
      v121 = v144;
LABEL_65:
      sub_30B8(v121, v122, v123);
      goto LABEL_66;
    }

    sub_2CA790();
    v102 = v218;
    v103 = v53(v13, v218);
    if (v103 == v56)
    {
      (*(v10 + 96))(v13, v102);
      sub_20410(&qword_353070, &unk_2D0FB0);

      v104 = sub_2CAFE0();
      (*(*(v104 - 8) + 8))(v13, v104);
      v105 = v216;
      v106 = v219;
      v107 = v202;
    }

    else
    {
      v124 = v103;
      (*(v10 + 8))(v13, v102);
      v105 = v216;
      v106 = v219;
      v107 = v202;
      if (v124 != v78)
      {
LABEL_37:
        v213(v107, v212, v105);
        v129 = sub_2CDFE0();
        v130 = sub_2CE690();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_0, v129, v130, "PlayMediaNeedsValueStrategy#parseResponseValue intent not of right type", v131, 2u);
        }

        v215(v107, v105);
        sub_2CC230();
        sub_2CC1E0();
        v132 = sub_2CB850();
        sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v133 = swift_allocError();
        (*(*(v132 - 8) + 104))(v134, enum case for PlaybackCode.ceGE71(_:), v132);
        v135 = v209;
        *v209 = v133;
        swift_storeEnumTagMultiPayload();
        v208(v135);
        sub_30B8(v135, &qword_34DBF0, &qword_2D1A38);
        (*(v10 + 8))(v106, v218);
        goto LABEL_66;
      }
    }

    v125 = v199;
    v213(v199, v212, v105);
    v126 = sub_2CDFE0();
    v127 = sub_2CE680();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_0, v126, v127, "PlayMediaNeedsValueStrategy#parseResponseValue and PlayMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v128, 2u);
    }

    v215(v125, v105);
    goto LABEL_37;
  }

  (*(v10 + 96))(v52, v54);
  sub_20410(&qword_353070, &unk_2D0FB0);
  sub_2CA790();
  v57 = v204;
  sub_2B6170(v16, v204);
  v58 = sub_2CA830();
  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    v60 = v59;
    v202 = v50;
    sub_30B8(v57, &qword_34D360, &qword_2D11E0);

    v61 = v229;
    v229 = v60;

    v62 = sub_2CAFE0();
    (*(*(v62 - 8) + 8))(v52, v62);
    v63 = v216;
    v64 = v205;
    v65 = v203;
    v66 = v229;
    if (v229)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

  v108 = v198;
  v109 = v216;
  v213(v198, v212, v216);
  v110 = sub_2CDFE0();
  v111 = sub_2CE670();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_0, v110, v111, "PlayMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v112, 2u);
  }

  v215(v108, v109);
  v113 = sub_2CB850();
  sub_76D1C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v114 = swift_allocError();
  (*(*(v113 - 8) + 104))(v115, enum case for PlaybackCode.ceGE68(_:), v113);
  v116 = v209;
  *v209 = v114;
  swift_storeEnumTagMultiPayload();
  v208(v116);

  sub_30B8(v116, &qword_34DBF0, &qword_2D1A38);
  sub_30B8(v57, &qword_34D360, &qword_2D11E0);
  v117 = sub_2CAFE0();
  (*(*(v117 - 8) + 8))(v52, v117);
LABEL_66:
}

uint64_t sub_76D1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_76D74(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  v81 = a4;
  v99 = a3;
  v97 = a2;
  v5 = sub_2CE150();
  v95 = *(v5 - 8);
  v96 = v5;
  __chkstk_darwin(v5);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2CE180();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2CC2B0();
  v79 = *(v98 - 1);
  __chkstk_darwin(v98);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CC780();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v15 = __chkstk_darwin(v14 - 8);
  v90 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v86 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v83 = &v79 - v23;
  __chkstk_darwin(v22);
  v25 = __chkstk_darwin(&v79 - v24);
  v26 = __chkstk_darwin(v25);
  v28 = &v79 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v79 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v79 - v33;
  v87 = v35;
  v84 = v37;
  v85 = v36;
  v82 = v32;
  v80 = v38;
  if (a1)
  {
    sub_2CC0B0();
  }

  else
  {
    v39 = sub_2CBF80();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
  }

  (*(v11 + 104))(v13, enum case for CoreAnalyticsResponses.FabricatedPlayCodes.mediaItemsUnsupportedResponse(_:), v10);
  v40 = sub_2CC770();
  (*(v11 + 8))(v13, v10);
  sub_20410(&qword_34DD38, &unk_2D3B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1AB0;
  *(inited + 32) = 0x6449707061;
  v89 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_2CE260();
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  v88 = v40;
  *(inited + 72) = sub_2CE560();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  v42 = v34;
  sub_F3F4(v34, v31, &qword_34DD30, &unk_2D1BC0);
  v43 = sub_2CBF80();
  v44 = *(v43 - 8);
  v97 = *(v44 + 48);
  v45 = v97(v31, 1, v43);
  v99 = v44;
  if (v45 == 1)
  {
    sub_30B8(v31, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBEF0();
    (*(v44 + 8))(v31, v43);
  }

  *(inited + 96) = sub_2CE500();
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  sub_2CC2A0();
  sub_2CC280();
  (*(v79 + 8))(v9, v98);
  *(inited + 120) = sub_2CE560();
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  v46 = [v81 mediaItems];
  v98 = v42;
  if (v46)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v47 = sub_2CE410();

    if (v47 >> 62)
    {
      sub_2CEDA0();
    }

    v48 = v97;
    v49 = v28;
  }

  else
  {
    v49 = v28;
    v48 = v97;
  }

  *(inited + 144) = sub_2CE560();
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:sub_2CE730() & 1];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  v50 = v98;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:{v48(v98, 1, v43) != 1}];
  *(inited + 200) = 0x646573557361;
  *(inited + 208) = 0xE600000000000000;
  sub_F3F4(v50, v49, &qword_34DD30, &unk_2D1BC0);
  if (v48(v49, 1, v43) == 1)
  {
    sub_30B8(v49, &qword_34DD30, &unk_2D1BC0);
    v51 = 0;
  }

  else
  {
    v51 = sub_2CBEE0();
    (*(v99 + 8))(v49, v43);
  }

  *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:v51 & 1];
  strcpy((inited + 224), "asExperimentId");
  *(inited + 239) = -18;
  v52 = v98;
  v53 = v80;
  sub_F3F4(v98, v80, &qword_34DD30, &unk_2D1BC0);
  if (v48(v53, 1, v43) == 1)
  {
    sub_30B8(v53, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF10();
    (*(v99 + 8))(v53, v43);
  }

  v54 = v82;
  v55 = sub_2CE260();

  *(inited + 240) = v55;
  strcpy((inited + 248), "asTreatmentId");
  *(inited + 262) = -4864;
  sub_F3F4(v52, v54, &qword_34DD30, &unk_2D1BC0);
  if (v48(v54, 1, v43) == 1)
  {
    sub_30B8(v54, &qword_34DD30, &unk_2D1BC0);
    v56 = v99;
  }

  else
  {
    sub_2CBF00();
    v56 = v99;
    (*(v99 + 8))(v54, v43);
  }

  v57 = v83;
  v58 = sub_2CE260();

  *(inited + 264) = v58;
  *(inited + 272) = 0x756F6C6C6F527361;
  *(inited + 280) = 0xEB00000000644974;
  sub_F3F4(v52, v57, &qword_34DD30, &unk_2D1BC0);
  if (v48(v57, 1, v43) == 1)
  {
    sub_30B8(v57, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF70();
    (*(v56 + 8))(v57, v43);
  }

  v59 = sub_2CE260();

  *(inited + 288) = v59;
  *(inited + 296) = 0x6469666E6F437361;
  *(inited + 304) = 0xEF73624165636E65;
  v60 = v84;
  sub_F3F4(v52, v84, &qword_34DD30, &unk_2D1BC0);
  if (v48(v60, 1, v43) == 1)
  {
    sub_30B8(v60, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF20();
    (*(v56 + 8))(v60, v43);
  }

  v61 = v85;
  *(inited + 312) = sub_2CE500();
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x80000000002DB4E0;
  sub_F3F4(v52, v61, &qword_34DD30, &unk_2D1BC0);
  if (v48(v61, 1, v43) == 1)
  {
    sub_30B8(v61, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF40();
    (*(v56 + 8))(v61, v43);
  }

  v62 = v86;
  *(inited + 336) = sub_2CE500();
  *(inited + 344) = 0x64497070417361;
  *(inited + 352) = 0xE700000000000000;
  sub_F3F4(v52, v62, &qword_34DD30, &unk_2D1BC0);
  if (v48(v62, 1, v43) == 1)
  {
    sub_30B8(v62, &qword_34DD30, &unk_2D1BC0);
  }

  else
  {
    sub_2CBF30();
    v48 = v97;
    (*(v56 + 8))(v62, v43);
  }

  v63 = sub_2CE260();

  *(inited + 360) = v63;
  *(inited + 368) = 0x7265735577656ELL;
  *(inited + 376) = 0xE700000000000000;
  v64 = v87;
  sub_F3F4(v52, v87, &qword_34DD30, &unk_2D1BC0);
  if (v48(v64, 1, v43) == 1)
  {
    sub_30B8(v64, &qword_34DD30, &unk_2D1BC0);
    v65 = 0;
  }

  else
  {
    v65 = sub_2CBF60();
    (*(v56 + 8))(v64, v43);
  }

  *(inited + 384) = [objc_allocWithZone(NSNumber) initWithBool:v65 & 1];
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  *(inited + 408) = sub_2CEB10(0);
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000000002DB500;
  v66 = v48(v52, 1, v43) != 1;
  *(inited + 432) = sub_2CEB10(v66);
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  v67 = v90;
  sub_F3F4(v52, v90, &qword_34DD30, &unk_2D1BC0);
  if (v48(v67, 1, v43) == 1)
  {
    sub_30B8(v67, &qword_34DD30, &unk_2D1BC0);
LABEL_40:
    v69 = 0;
    goto LABEL_41;
  }

  v68 = sub_2CBEE0();
  (*(v56 + 8))(v67, v43);
  if ((v68 & 1) == 0)
  {
    goto LABEL_40;
  }

  v69 = 1;
LABEL_41:
  *(inited + 456) = sub_2CEB10(v69);
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v101[0] = v88;
  sub_2CEE70();
  v70 = sub_2CE260();

  *(inited + 480) = v70;
  v71 = sub_90728(inited);
  swift_setDeallocating();
  sub_20410(&qword_34DD40, &unk_2D1BD0);
  swift_arrayDestroy();
  v72 = sub_2CBA10();
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  v101[4] = sub_7DD80;
  v101[5] = v73;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 1107296256;
  v101[2] = sub_A4294;
  v101[3] = &unk_3327F8;
  v74 = _Block_copy(v101);
  v75 = v91;
  sub_2CE160();
  v100 = _swiftEmptyArrayStorage;
  sub_7DDA0(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v76 = v93;
  v77 = v96;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v74);

  (*(v95 + 8))(v76, v77);
  (*(v92 + 8))(v75, v94);
  sub_30B8(v52, &qword_34DD30, &unk_2D1BC0);
}