uint64_t sub_1AC243F00(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AC243F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC30940C();

  v9 = sub_1AC30A91C();

  v7 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v8 = sub_1AC30A91C();

  [a1 setProperty:v9 forKey:{v8, MEMORY[0x1E69E5920](v7).n128_f64[0]}];
  MEMORY[0x1E69E5920](v8);
  return swift_unknownObjectRelease();
}

id sub_1AC2440CC()
{
  sub_1AC2068B8();
  v0 = sub_1AC30940C();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC244168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a1;
  v31 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v33 = 0;
  v47 = &unk_1AC311388;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v46 = &v31 - v32;
  v57 = v10;
  v56 = v11;
  v55 = a3;
  v54 = v12;
  v52 = v13;
  v53 = v14;
  v50 = v15;
  v51 = v16;
  v49 = v17 + 16;
  swift_unknownObjectRetain();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClassUnconditional();
  v36 = [v35 BOOLValue];
  v37 = 1;
  v48 = v36 & 1;
  MEMORY[0x1E69E5920](v35);
  sub_1AC30941C();
  sub_1AC30952C();
  v45 = 0;
  v18 = sub_1AC30ABDC();
  (*(*(v18 - 8) + 56))(v46, v37);
  MEMORY[0x1E69E5928](v38);

  v19 = swift_allocObject();
  v20 = v38;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v20;
  v19[5] = v21;
  v19[6] = v22;
  v19[7] = v23;
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v26;
  sub_1AC244BA8(v27, v27, v28, v29, v19, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1AC244424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v17;
  v8[15] = v16;
  v8[14] = a8;
  v8[13] = a7;
  v8[12] = a6;
  v8[11] = a5;
  v8[10] = a4;
  v8[6] = v8;
  v8[7] = 0;
  v8[8] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0);
  v8[17] = swift_task_alloc();
  v8[7] = a4;
  v8[8] = a5;
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v16;
  v8[9] = v17 + 16;

  return MEMORY[0x1EEE6DFA0](sub_1AC2445A4, 0);
}

uint64_t sub_1AC2445A4()
{
  v5 = MEMORY[0x1E69E85E0];
  v14 = v0[17];
  v12 = v0[16];
  v11 = v0[15];
  v10 = v0[14];
  v9 = v0[13];
  v8 = v0[12];
  v6 = v0[11];
  v7 = v0[10];
  v0[6] = v0;
  sub_1AC3092EC();
  v1 = sub_1AC30ABDC();
  (*(*(v1 - 8) + 56))(v14, 1);

  MEMORY[0x1E69E5928](v7);

  sub_1AC30ABBC();
  v13 = sub_1AC30ABAC();
  v2 = swift_allocObject();
  v2[2] = v13;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = v9;
  v2[8] = v10;
  v2[9] = v11;
  v2[10] = v12;
  sub_1AC244BA8(0, 0, v14, &unk_1AC3113B0, v2, MEMORY[0x1E69E7CA8] + 8);

  v3 = *(v0[6] + 8);

  return v3();
}

uint64_t sub_1AC2447BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v14;
  v8[19] = v13;
  v8[18] = a8;
  v8[17] = a7;
  v8[16] = a6;
  v8[15] = a5;
  v8[14] = a4;
  v8[9] = v8;
  v8[10] = 0;
  v8[11] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[12] = 0;
  v8[10] = a4;
  v8[11] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v8[7] = a8;
  v8[8] = v13;
  v8[12] = v14 + 16;
  sub_1AC30ABBC();
  v8[21] = sub_1AC30ABAC();
  v11 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC2448E0, v11, v9);
}

uint64_t sub_1AC2448E0()
{
  v12 = v0[19];
  v8 = v0[18];
  v11 = v0[17];
  v7 = v0[16];
  v1 = v0[15];
  v10 = v1;
  v0[9] = v0;
  MEMORY[0x1E69E5928](v1);

  v9 = swift_task_alloc();
  v9[2] = v10;
  v9[3] = v7;
  v9[4] = v11;
  v9[5] = v8;
  v9[6] = v12;
  sub_1AC309CDC();

  MEMORY[0x1E69E5920](v10);

  swift_beginAccess();
  v0[13] = swift_unknownObjectWeakLoadStrong();
  if (v0[13])
  {
    v5 = *(v6 + 104);
    MEMORY[0x1E69E5928](v5);
    sub_1AC206988((v6 + 104));
    swift_endAccess();
    sub_1AC30A9DC("FIND_MY_GROUP_ID", 16, 1);
    v4 = sub_1AC30A91C();

    [v5 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    sub_1AC206988((v6 + 104));
    swift_endAccess();
  }

  v2 = *(*(v6 + 72) + 8);

  return v2();
}

uint64_t sub_1AC244BA8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_1AC311398;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_1AC247594(v54, v57);
  v58 = sub_1AC30ABDC();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_1AC2476BC(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_1AC30ABCC();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_1AC30AB9C();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_1AC30A9AC();

    sub_1AC247764(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_1AC2476BC(v54);

    v18 = v16;
  }

  else
  {

    sub_1AC2476BC(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_1AC245174(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v33 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v17 - v33;
  v49 = sub_1AC30901C();
  v45 = *(v49 - 8);
  v46 = v49 - 8;
  v35 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v36 = &v17 - v35;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](&v17 - v35);
  v38 = &v17 - v37;
  v57 = &v17 - v37;
  v56 = a1;
  v55 = v6 + 16;
  v48 = 1;
  v39 = sub_1AC30A9DC("BT_", 3, 1, v5);
  v41 = v7;
  v8 = sub_1AC2C85A0();
  v40 = v9;
  v42 = MEMORY[0x1AC5B0040](v39, v41, v8);
  v43 = v10;

  v53 = v42;
  v54 = v43;
  v11 = sub_1AC2456D8(v42, v43);
  v44 = v12;
  v51 = v11;
  v52 = v12;
  sub_1AC30900C();
  if ((*(v45 + 48))(v47, v48, v49) == 1)
  {
    sub_1AC247D84(v47);
  }

  else
  {
    (*(v45 + 32))(v38, v47, v49);
    v32 = v34 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v30 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(p_Strong);
      swift_endAccess();
      v31 = *(v30 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v31);
      *&v14 = MEMORY[0x1E69E5920](v30).n128_u64[0];
      [v31 updateFeatureChangeCount_];
      MEMORY[0x1E69E5920](v31);
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }

    v15 = v36;
    v26 = [objc_opt_self() sharedApplication];
    (*(v45 + 16))(v15, v38, v49);
    v25 = sub_1AC308FEC();
    v28 = *(v45 + 8);
    v27 = v45 + 8;
    v28(v36, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320, &qword_1AC3113C0);
    v18 = 0;
    v19 = sub_1AC30B18C();
    v20 = type metadata accessor for OpenExternalURLOptionsKey(v18);
    v22 = sub_1AC247EC4();
    v21 = MEMORY[0x1E69E7CA0] + 8;
    v23 = sub_1AC30A83C();
    v24 = sub_1AC30A81C();

    [v26 openURL:v25 options:v24 completionHandler:0];
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v25);
    v16 = MEMORY[0x1E69E5920](v26);
    (v28)(v38, v49, v16);
  }
}

uint64_t sub_1AC2456D8(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v41 = sub_1AC30A96C();
  v37 = *(v41 - 8);
  v38 = v41 - 8;
  v34 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v39 = v14 - v34;
  v49 = v2;
  v50 = v3;
  sub_1AC30A95C();
  sub_1AC20599C();
  v40 = sub_1AC30A93C();
  v42 = v4;
  (*(v37 + 8))(v39, v41);
  if ((v42 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = sub_1AC242654();
    v28 = *v5;
    v29 = v5[1];

    v30 = v28;
    v31 = v29;
  }

  else
  {
    v32 = v40;
    v33 = v42;
    v25 = v42;
    v24 = v40;
    v47 = v40;
    v48 = v42;
    v14[1] = sub_1AC247F44();
    sub_1AC243F00(v24, v25);
    v23 = sub_1AC245A0C(v24, v25);
    v46 = v23;
    v15 = [v23 fm_sha256Hash];
    v6 = sub_1AC30903C();
    v22 = sub_1AC245A0C(v6, v7);
    *&v8 = MEMORY[0x1E69E5920](v15).n128_u64[0];
    v45 = v22;
    v17 = [v22 fm_hexString];
    sub_1AC30A92C();
    v16 = v9;
    v19 = sub_1AC30A99C();
    v21 = v10;

    MEMORY[0x1E69E5920](v17);
    v43 = v19;
    v44 = v21;
    v11 = sub_1AC242574();
    v18 = *v11;
    v20 = v11[1];

    v26 = MEMORY[0x1AC5B0040](v18, v20, v19, v21);
    v27 = v12;

    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v23);
    sub_1AC242F94(v24, v25);
    v30 = v26;
    v31 = v27;
  }

  return v30;
}

void sub_1AC245A54(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v136 = a2;
  v132 = a3;
  v133 = a4;
  v108 = sub_1AC248104;
  v109 = sub_1AC24810C;
  v110 = sub_1AC248118;
  v111 = sub_1AC215C90;
  v112 = sub_1AC215C90;
  v113 = sub_1AC2482A8;
  v114 = MEMORY[0x1E69E85E0];
  v115 = &unk_1AC3113D0;
  v116 = sub_1AC248080;
  v117 = sub_1AC226634;
  v118 = sub_1AC226640;
  v119 = sub_1AC22664C;
  v120 = sub_1AC215C90;
  v121 = sub_1AC215C90;
  v122 = sub_1AC226658;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v123 = 0;
  v142 = 0;
  v124 = sub_1AC309E6C();
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v124);
  v128 = v55 - v127;
  v129 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55 - v127);
  v130 = v55 - v129;
  v134 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v136);
  v135 = v55 - v134;
  v151 = v5 & 1;
  v150 = v6;
  v149 = v7;
  v148 = v8;
  v9 = v6;
  if (v136)
  {
    v107 = v136;
    v35 = v128;
    v74 = v136;
    v142 = v136;
    v36 = sub_1AC250850();
    (*(v125 + 16))(v35, v36, v124);
    v37 = v74;
    v78 = 7;
    v76 = swift_allocObject();
    *(v76 + 16) = v74;
    sub_1AC20BEE0();

    v87 = sub_1AC309E4C();
    v88 = sub_1AC30AD1C();
    v75 = 17;
    v81 = swift_allocObject();
    *(v81 + 16) = 64;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v77 = 32;
    v38 = swift_allocObject();
    v39 = v76;
    v79 = v38;
    *(v38 + 16) = v108;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v79;
    v80 = v40;
    *(v40 + 16) = v109;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v80;
    v84 = v42;
    *(v42 + 16) = v110;
    *(v42 + 24) = v43;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v83 = sub_1AC30B18C();
    v85 = v44;

    v45 = v81;
    v46 = v85;
    *v85 = v111;
    v46[1] = v45;

    v47 = v82;
    v48 = v85;
    v85[2] = v112;
    v48[3] = v47;

    v49 = v84;
    v50 = v85;
    v85[4] = v113;
    v50[5] = v49;
    sub_1AC206300();

    if (os_log_type_enabled(v87, v88))
    {
      v51 = v123;
      v67 = sub_1AC30AE6C();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v68 = sub_1AC213EE4(1, v66, v66);
      v69 = sub_1AC213EE4(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v70 = &v141;
      v141 = v67;
      v71 = &v140;
      v140 = v68;
      v72 = &v139;
      v139 = v69;
      sub_1AC213F38(2, &v141);
      sub_1AC213F38(1, v70);
      v137 = v111;
      v138 = v81;
      sub_1AC213F4C(&v137, v70, v71, v72);
      v73 = v51;
      if (v51)
      {

        __break(1u);
      }

      else
      {
        v137 = v112;
        v138 = v82;
        sub_1AC213F4C(&v137, &v141, &v140, &v139);
        v65 = 0;
        v137 = v113;
        v138 = v84;
        sub_1AC213F4C(&v137, &v141, &v140, &v139);
        _os_log_impl(&dword_1AC1C3000, v87, v88, "FindMy: fetchFindMyNetworkStatus: supported: false error: %@", v67, 0xCu);
        sub_1AC213F98(v68, 1, v66);
        sub_1AC213F98(v69, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v52 = MEMORY[0x1E69E5920](v87);
    (*(v125 + 8))(v128, v124, v52);
    sub_1AC30944C();
  }

  else
  {
    v89 = 1;
    sub_1AC30941C();
    sub_1AC30944C();
    v90 = 0;
    v10 = sub_1AC30ABDC();
    (*(*(v10 - 8) + 56))(v135, v89);
    MEMORY[0x1E69E5928](v133);
    sub_1AC30ABBC();
    v11 = sub_1AC30ABAC();
    v12 = v130;
    v91 = v11;
    v96 = 7;
    v13 = swift_allocObject();
    v14 = v114;
    v15 = v133;
    v16 = v90;
    v17 = v135;
    v18 = v115;
    v13[2] = v91;
    v13[3] = v14;
    v13[4] = v15;
    sub_1AC244BA8(v16, v16, v17, v18, v13, MEMORY[0x1E69E7CA8] + 8);

    v19 = sub_1AC250850();
    (*(v125 + 16))(v12, v19, v124);
    v92 = 17;
    v93 = swift_allocObject();
    *(v93 + 16) = v131;
    v105 = sub_1AC309E4C();
    v106 = sub_1AC30AD2C();
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = 4;
    v95 = 32;
    v20 = swift_allocObject();
    v21 = v93;
    v94 = v20;
    *(v20 + 16) = v116;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v94;
    v97 = v22;
    *(v22 + 16) = v117;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v97;
    v98 = v24;
    *(v24 + 16) = v118;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v98;
    v102 = v26;
    *(v26 + 16) = v119;
    *(v26 + 24) = v27;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v101 = sub_1AC30B18C();
    v103 = v28;

    v29 = v99;
    v30 = v103;
    *v103 = v120;
    v30[1] = v29;

    v31 = v100;
    v32 = v103;
    v103[2] = v121;
    v32[3] = v31;

    v33 = v102;
    v34 = v103;
    v103[4] = v122;
    v34[5] = v33;
    sub_1AC206300();

    if (os_log_type_enabled(v105, v106))
    {
      v53 = v123;
      v58 = sub_1AC30AE6C();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v57 = 0;
      v59 = sub_1AC213EE4(0, v56, v56);
      v60 = sub_1AC213EE4(v57, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v61 = &v147;
      v147 = v58;
      v62 = &v146;
      v146 = v59;
      v63 = &v145;
      v145 = v60;
      sub_1AC213F38(0, &v147);
      sub_1AC213F38(1, v61);
      v143 = v120;
      v144 = v99;
      sub_1AC213F4C(&v143, v61, v62, v63);
      v64 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v143 = v121;
        v144 = v100;
        sub_1AC213F4C(&v143, &v147, &v146, &v145);
        v55[1] = 0;
        v143 = v122;
        v144 = v102;
        sub_1AC213F4C(&v143, &v147, &v146, &v145);
        _os_log_impl(&dword_1AC1C3000, v105, v106, "FindMy: fetchFindMyNetworkStatus: supported: true status: %{BOOL}d", v58, 8u);
        v55[0] = 0;
        sub_1AC213F98(v59, 0, v56);
        sub_1AC213F98(v60, v55[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v54 = MEMORY[0x1E69E5920](v105);
    (*(v125 + 8))(v130, v124, v54);
  }
}

uint64_t sub_1AC246AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1AC30ABBC();
  v4[5] = sub_1AC30ABAC();
  v7 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC246B7C, v7, v5);
}

uint64_t sub_1AC246B7C()
{
  v3 = *(v0 + 32);
  *(v0 + 16) = v0;
  sub_1AC30A9DC("FIND_MY_GROUP_ID", 16, 1);
  v4 = sub_1AC30A91C();

  [v3 reloadSpecifierID_];
  MEMORY[0x1E69E5920](v4);

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1AC246C78(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = *(a1 + 32);

  v3 = MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7(a2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC246D88()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("FindMY Feature", 14, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

id sub_1AC246E8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AC30902C();
  v7 = [v3 initWithData_];
  MEMORY[0x1E69E5920](v4);
  sub_1AC242F94(a1, a2);
  return v7;
}

uint64_t sub_1AC246EF8(uint64_t a1)
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0FC();
}

uint64_t sub_1AC246F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0CC();
}

uint64_t sub_1AC246F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0DC() & 1;
}

uint64_t sub_1AC246FD0(uint64_t a1, uint64_t a2)
{
  sub_1AC24847C();
  sub_1AC2484FC();
  return sub_1AC30B0EC();
}

uint64_t sub_1AC247138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC247170(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AC247170(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AC30A91C();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1AC2471DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC247210(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC247210(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC30A92C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC247270(uint64_t a1)
{
  sub_1AC247EC4();
  sub_1AC24847C();
  return sub_1AC30B0AC();
}

uint64_t sub_1AC247340(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC244424(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC24746C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_1AC247594(const void *a1, void *a2)
{
  v6 = sub_1AC30ABDC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC2476BC(uint64_t a1)
{
  v3 = sub_1AC30ABDC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC247764@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 3820, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1AC247924(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC247A38;

  return v6(a1);
}

uint64_t sub_1AC247A38()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC247B64(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC247924(a1, v6);
}

uint64_t sub_1AC247C58(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC2447BC(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC247D84(uint64_t a1)
{
  v3 = sub_1AC30901C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for OpenExternalURLOptionsKey(uint64_t a1)
{
  v5 = qword_1EB54C338;
  if (!qword_1EB54C338)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C338);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC247EC4()
{
  v2 = qword_1EB54C328;
  if (!qword_1EB54C328)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC247F44()
{
  v2 = qword_1EB54C330;
  if (!qword_1EB54C330)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C330);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC247FA8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC246AC8(a1, v6, v7, v8);
}

uint64_t sub_1AC24808C(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1AC248124(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v8 = a4(a1, a2, a3);
  v7 = *a1;
  MEMORY[0x1E69E5928](v8);
  sub_1AC30AEAC();
  if (v8)
  {
    MEMORY[0x1E69E5920](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v8);
    *v4 = v8;
    MEMORY[0x1E69E5920](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
  }
}

unint64_t sub_1AC2482CC()
{
  v2 = qword_1EB54C340;
  if (!qword_1EB54C340)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC248364()
{
  v2 = qword_1EB54C348;
  if (!qword_1EB54C348)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2483FC()
{
  v2 = qword_1EB54C350;
  if (!qword_1EB54C350)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC24847C()
{
  v2 = qword_1EB54C358;
  if (!qword_1EB54C358)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2484FC()
{
  v2 = qword_1EB54C360;
  if (!qword_1EB54C360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2485AC()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1AC248604(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2486D8()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC248728(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_1AC2487F0()
{
  swift_beginAccess();
  v2 = *(v0 + 48);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC24884C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_endAccess();
}

uint64_t sub_1AC248918(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v116 = a1;
  v120 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v106 = 0;
  v140 = 0;
  v139 = 0;
  v137 = 0;
  v109 = sub_1AC309E6C();
  v110 = *(v109 - 8);
  v111 = v110;
  v112 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v114 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = &v29[-v114];
  MEMORY[0x1EEE9AC00](&v29[-v114]);
  v115 = &v29[-v114];
  v158 = a1;
  v157 = v3;
  v156 = v4;
  v117 = sub_1AC3091BC();
  v118 = [v117 productID];

  v119 = CBProductIDIsAppleHeadphone(v118);
  v155 = v119;
  v121 = sub_1AC30922C();
  v152 = v120;
  sub_1AC30A85C();
  v122 = v153;
  v123 = v154;
  if (v154)
  {
    v104 = v122;
    v105 = v123;
    v103 = v123;
    v101 = v122;
    v139 = v122;
    v140 = v123;

    v102 = &v138;
    swift_beginAccess();
    v5 = v103;
    v6 = v107;
    *(v107 + 48) = v101;
    *(v6 + 56) = v5;

    swift_endAccess();

    if (v119)
    {
      v98 = &v125;
      swift_beginAccess();
      v99 = *(v107 + 48);
      v100 = *(v107 + 56);

      swift_endAccess();
      v124[0] = v99;
      v124[1] = v100;
      v97 = v100 != 0;
      v95 = v97;
      sub_1AC2063F0(v124);
      v96 = v95;
    }

    else
    {
      v96 = 0;
    }

    v7 = v115;
    v74 = v96;

    v75 = v74;
    v137 = v74;
    v8 = sub_1AC300FD4();
    (*(v111 + 16))(v7, v8, v109);
    v78 = 17;
    v83 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v75;
    v94 = sub_1AC309E4C();
    v76 = v94;
    v93 = sub_1AC30AD2C();
    v77 = v93;
    v87 = swift_allocObject();
    v79 = v87;
    v80 = 32;
    *(v87 + 16) = 32;
    v9 = swift_allocObject();
    v10 = v80;
    v88 = v9;
    v81 = v9;
    *(v9 + 16) = 8;
    v82 = v10;
    v11 = swift_allocObject();
    v12 = v84;
    v85 = v11;
    *(v11 + 16) = sub_1AC212CEC;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v85;
    v91 = v13;
    v86 = v13;
    *(v13 + 16) = sub_1AC215C98;
    *(v13 + 24) = v14;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v89 = sub_1AC30B18C();
    v90 = v15;

    v16 = v87;
    v17 = v90;
    *v90 = sub_1AC215C90;
    v17[1] = v16;

    v18 = v88;
    v19 = v90;
    v90[2] = sub_1AC215C90;
    v19[3] = v18;

    v20 = v90;
    v21 = v91;
    v90[4] = sub_1AC215CA4;
    v20[5] = v21;
    sub_1AC206300();

    if (os_log_type_enabled(v94, v93))
    {
      v22 = v106;
      v67 = sub_1AC30AE6C();
      v64 = v67;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v68 = sub_1AC213EE4(0, v65, v65);
      v66 = v68;
      v70 = 1;
      v69 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v130 = v67;
      v129 = v68;
      v128 = v69;
      v71 = &v130;
      sub_1AC213F38(2, &v130);
      sub_1AC213F38(v70, v71);
      v126 = sub_1AC215C90;
      v127 = v79;
      sub_1AC213F4C(&v126, v71, &v129, &v128);
      v72 = v22;
      v73 = v22;
      if (v22)
      {
        v62 = 0;

        __break(1u);
      }

      else
      {
        v126 = sub_1AC215C90;
        v127 = v81;
        sub_1AC213F4C(&v126, &v130, &v129, &v128);
        v60 = 0;
        v61 = 0;
        v126 = sub_1AC215CA4;
        v127 = v86;
        sub_1AC213F4C(&v126, &v130, &v129, &v128);
        v58 = 0;
        v59 = 0;
        _os_log_impl(&dword_1AC1C3000, v76, v77, "HeadphoneSettings: This device is %s of coverage feature", v64, 0xCu);
        sub_1AC213F98(v66, 0, v65);
        sub_1AC213F98(v69, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v63 = v58;
      }
    }

    else
    {
      v23 = v106;

      v63 = v23;
    }

    v57 = v63;

    (*(v111 + 8))(v115, v109);
    sub_1AC30929C(v131);
    if (v131[3])
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C368, &unk_1AC311520);
      if (!swift_dynamicCast())
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v136 = 0;
      }
    }

    else
    {
      sub_1AC204664(v131);
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
    }

    v53 = v135 != 0;
    sub_1AC204664(&v132);

    v54 = __PAIR64__(v74, v53);
    v55 = v57;
  }

  else
  {
    v24 = v113;

    v25 = sub_1AC250850();
    (*(v111 + 16))(v24, v25, v109);
    v51 = sub_1AC309E4C();
    v48 = v51;
    v50 = sub_1AC30AD1C();
    v49 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v52 = sub_1AC30B18C();
    if (os_log_type_enabled(v51, v50))
    {
      v26 = v106;
      v39 = sub_1AC30AE6C();
      v35 = v39;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v37 = 0;
      v40 = sub_1AC213EE4(0, v36, v36);
      v38 = v40;
      v41 = sub_1AC213EE4(v37, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v144 = v39;
      v143 = v40;
      v142 = v41;
      v42 = 0;
      v43 = &v144;
      sub_1AC213F38(0, &v144);
      sub_1AC213F38(v42, v43);
      v141 = v52;
      v44 = v29;
      MEMORY[0x1EEE9AC00](v29);
      v45 = &v29[-48];
      *&v29[-32] = v27;
      *&v29[-24] = &v143;
      *&v29[-16] = &v142;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v47 = v26;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v48, v49, "HeadphoneSettings: No Serial Number for Device When Loading Coverage Feature", v35, 2u);
        v33 = 0;
        sub_1AC213F98(v38, 0, v36);
        sub_1AC213F98(v41, v33, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v34 = v47;
      }
    }

    else
    {

      v34 = v106;
    }

    v32 = v34;

    (*(v111 + 8))(v113, v109);
    sub_1AC30929C(v146);
    if (v146[3])
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C368, &unk_1AC311520);
      if (!swift_dynamicCast())
      {
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
      }
    }

    else
    {
      sub_1AC204664(v146);
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
    }

    v30 = v150 != 0;
    sub_1AC204664(&v147);
    v54 = v30;
    v55 = v32;
  }

  LOBYTE(v145) = v54 & 1;
  HIBYTE(v145) = BYTE4(v54) & 1;
  return v145;
}

uint64_t sub_1AC249610(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = v2;
  (*(*v2 + 200))();
  swift_beginAccess();
  v5 = *(v4 + 40);

  swift_endAccess();
  v6 = v5;
  if (v5)
  {
    return v6;
  }

  sub_1AC215CB0();
  return sub_1AC30B18C();
}

void sub_1AC249714(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v93 = a2;
  v92 = 0;
  v85 = sub_1AC24D4AC;
  v86 = sub_1AC215C98;
  v87 = sub_1AC215C90;
  v88 = sub_1AC215C90;
  v89 = sub_1AC215CA4;
  v90 = sub_1AC24D518;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v91 = 0;
  v95 = sub_1AC309E6C();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v99 = &v29 - v98;
  v123 = v3;
  v122 = v4;
  v121 = v2;
  v100 = &v120;
  swift_beginAccess();
  v101 = *(v2 + 32);
  MEMORY[0x1E69E5928](v101);
  swift_endAccess();
  v119 = v101;
  v83 = v101 == 0;
  v82 = v83;
  sub_1AC206988(&v119);

  if (v82)
  {
    v79 = &v103;
    swift_beginAccess();
    v80 = v84[6];
    v81 = v84[7];

    swift_endAccess();
    v102[0] = v80;
    v102[1] = v81;
    v78 = v81 != 0;
    v76 = v78;
    sub_1AC2063F0(v102);
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v75 = v77;

  if (v75)
  {
    v5 = v99;
    v6 = sub_1AC250850();
    (*(v96 + 16))(v5, v6, v95);

    v73 = sub_1AC309E4C();
    v74 = sub_1AC30AD2C();
    v63 = 17;
    v65 = 7;
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v64 = 32;
    v7 = swift_allocObject();
    v8 = v84;
    v66 = v7;
    *(v7 + 16) = v85;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v66;
    v70 = v9;
    *(v9 + 16) = v86;
    *(v9 + 24) = v10;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v69 = sub_1AC30B18C();
    v71 = v11;

    v12 = v67;
    v13 = v71;
    *v71 = v87;
    v13[1] = v12;

    v14 = v68;
    v15 = v71;
    v71[2] = v88;
    v15[3] = v14;

    v16 = v70;
    v17 = v71;
    v71[4] = v89;
    v17[5] = v16;
    sub_1AC206300();

    if (os_log_type_enabled(v73, v74))
    {
      v18 = v91;
      v56 = sub_1AC30AE6C();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v57 = sub_1AC213EE4(0, v55, v55);
      v58 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v59 = &v108;
      v108 = v56;
      v60 = &v107;
      v107 = v57;
      v61 = &v106;
      v106 = v58;
      sub_1AC213F38(2, &v108);
      sub_1AC213F38(1, v59);
      v104 = v87;
      v105 = v67;
      sub_1AC213F4C(&v104, v59, v60, v61);
      v62 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v104 = v88;
        v105 = v68;
        sub_1AC213F4C(&v104, &v108, &v107, &v106);
        v54 = 0;
        v104 = v89;
        v105 = v70;
        sub_1AC213F4C(&v104, &v108, &v107, &v106);
        _os_log_impl(&dword_1AC1C3000, v73, v74, "HeadphoneSettings: Loading Coverage Feature Controller With Serial Number: %s", v56, 0xCu);
        sub_1AC213F98(v57, 0, v55);
        sub_1AC213F98(v58, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v19 = MEMORY[0x1E69E5920](v73);
    (*(v96 + 8))(v99, v95, v19);
    v50 = sub_1AC24D4B4();
    v51 = &v116;
    swift_beginAccess();
    v52 = v84[6];
    v53 = v84[7];

    swift_endAccess();
    v114 = v52;
    v115 = v53;
    if (v53)
    {
      v117 = v114;
      v118 = v115;
    }

    else
    {
      v117 = sub_1AC30A9DC("", 0, 1);
      v118 = v20;
      if (v115)
      {
        sub_1AC2063F0(&v114);
      }
    }

    v41 = v117;
    v40 = v118;
    v36 = 24;
    v39 = 7;
    v43 = swift_allocObject();
    v35 = v43 + 16;
    MEMORY[0x1E69E5928](v93);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v93);
    v42 = swift_allocObject();
    v37 = v42 + 16;

    v38 = v84;
    swift_weakInit();

    v46 = 32;
    v21 = swift_allocObject();
    v22 = v40;
    v23 = v90;
    v24 = v43;
    v25 = v21;
    v26 = v41;
    *(v25 + 16) = v42;
    *(v25 + 24) = v24;
    v45 = sub_1AC24C660(v26, v22, v23, v25);

    MEMORY[0x1E69E5928](v45);
    v44 = &v113;
    v47 = 0;
    swift_beginAccess();
    v27 = v84[4];
    v84[4] = v45;
    MEMORY[0x1E69E5920](v27);
    swift_endAccess();
    MEMORY[0x1E69E5920](v45);
    v48 = &v111;
    swift_beginAccess();
    v49 = v84[4];
    MEMORY[0x1E69E5928](v49);
    swift_endAccess();
    v112 = v49;
    if (v49)
    {
      v33 = &v112;
      v34 = v112;
      MEMORY[0x1E69E5928](v112);
      sub_1AC206988(v33);
      *&v28 = MEMORY[0x1E69E5928](v93).n128_u64[0];
      [v34 setParentViewController_];
      MEMORY[0x1E69E5920](v93);
      MEMORY[0x1E69E5920](v34);
    }

    else
    {
      sub_1AC206988(&v112);
    }

    v31 = &v109;
    swift_beginAccess();
    v32 = v84[4];
    MEMORY[0x1E69E5928](v32);
    swift_endAccess();
    v110 = v32;
    if (v32)
    {
      v29 = &v110;
      v30 = v110;
      MEMORY[0x1E69E5928](v110);
      sub_1AC206988(v29);
      [v30 loadSpecifiers];
      MEMORY[0x1E69E5920](v30);
    }

    else
    {
      sub_1AC206988(&v110);
    }
  }
}

uint64_t sub_1AC24A16C(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  swift_endAccess();
  v6 = v4;
  v7 = v5;
  if (v5)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_1AC30A9DC("", 0, 1);
    v9 = v1;
  }

  return v8;
}

uint64_t sub_1AC24A23C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v17 = a2;
  v16 = MEMORY[0x1E69E85E0];
  v20 = &unk_1AC311600;
  v23 = 0;
  v22 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v19 = &v14 - v14;
  v23 = v2 + 16;
  v22 = v3 + 16;
  v18 = 0;
  v4 = sub_1AC30ABDC();
  (*(*(v4 - 8) + 56))(v19, 1);

  sub_1AC30ABBC();
  v15 = sub_1AC30ABAC();
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v5;
  v12 = v21;
  v11[2] = v15;
  v11[3] = v6;
  v11[4] = v12;
  v11[5] = v7;
  sub_1AC244BA8(v8, v8, v9, v10, v11, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1AC24A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 592) = a5;
  *(v5 + 584) = a4;
  *(v5 + 408) = v5;
  *(v5 + 416) = 0;
  *(v5 + 424) = 0;
  *(v5 + 440) = 0;
  *(v5 + 640) = 0;
  v6 = sub_1AC309E6C();
  *(v5 + 600) = v6;
  *(v5 + 608) = *(v6 - 8);
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  *(v5 + 416) = a4 + 16;
  *(v5 + 424) = a5 + 16;
  sub_1AC30ABBC();
  *(v5 + 632) = sub_1AC30ABAC();
  v11 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC24A554, v11, v7);
}

uint64_t sub_1AC24A554()
{
  v88 = v0;
  *(v0 + 408) = v0;
  swift_beginAccess();
  *(v0 + 432) = swift_weakLoadStrong();
  if (*(v0 + 432))
  {
    v76 = *(v78 + 432);

    sub_1AC20BCE0((v78 + 432));
    swift_endAccess();
    swift_beginAccess();
    v77 = *(v76 + 32);
    MEMORY[0x1E69E5928](v77);
    swift_endAccess();
    *(v78 + 576) = v77;
    if (*(v78 + 576))
    {
      v72 = *(v78 + 576);
      MEMORY[0x1E69E5928](v72);
      sub_1AC206988((v78 + 576));

      v73 = [v72 specifiers];
      sub_1AC215CB0();
      v74 = sub_1AC30AB0C();
      MEMORY[0x1E69E5920](v72);
      MEMORY[0x1E69E5920](v73);
      v75 = v74;
      goto LABEL_6;
    }

    sub_1AC206988((v78 + 576));
  }

  else
  {
    sub_1AC20BCE0((v78 + 432));
    swift_endAccess();
  }

  v75 = 0;
LABEL_6:
  if (v75)
  {
    v1 = *(v78 + 624);
    v67 = *(v78 + 600);
    v66 = *(v78 + 608);
    *(v78 + 440) = v75;
    v2 = sub_1AC250850();
    v68 = *(v66 + 16);
    v68(v1, v2, v67);
    oslog = sub_1AC309E4C();
    v69 = sub_1AC30AD2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v71 = sub_1AC30B18C();
    if (os_log_type_enabled(oslog, v69))
    {
      buf = sub_1AC30AE6C();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v63 = sub_1AC213EE4(0, v61, v61);
      v64 = sub_1AC213EE4(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v78 + 544) = buf;
      *(v78 + 552) = v63;
      *(v78 + 560) = v64;
      sub_1AC213F38(0, (v78 + 544));
      sub_1AC213F38(0, (v78 + 544));
      *(v78 + 568) = v71;
      v65 = swift_task_alloc();
      v65[2] = v78 + 544;
      v65[3] = v78 + 552;
      v65[4] = v78 + 560;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();

      _os_log_impl(&dword_1AC1C3000, oslog, v69, "HeadphoneSettings: Coverage Feature Handler Invoked", buf, 2u);
      sub_1AC213F98(v63, 0, v61);
      sub_1AC213F98(v64, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }

    v58 = *(v78 + 624);
    v59 = *(v78 + 600);
    v57 = *(v78 + 608);
    v3 = MEMORY[0x1E69E5920](oslog);
    v60 = *(v57 + 8);
    v60(v58, v59, v3);
    swift_beginAccess();
    *(v78 + 448) = swift_weakLoadStrong();
    if (*(v78 + 448))
    {
      v54 = *(v78 + 448);

      sub_1AC20BCE0((v78 + 448));
      swift_endAccess();
      swift_beginAccess();
      v55 = *(v54 + 40);

      swift_endAccess();

      v56 = v55;
    }

    else
    {
      sub_1AC20BCE0((v78 + 448));
      swift_endAccess();
      v56 = 0;
    }

    *(v78 + 456) = v56;
    if (!*(v78 + 456))
    {
      sub_1AC209190((v78 + 456));

      goto LABEL_27;
    }

    sub_1AC209190((v78 + 456));

    swift_beginAccess();
    *(v78 + 464) = swift_weakLoadStrong();
    if (*(v78 + 464))
    {
      v52 = *(v78 + 464);

      sub_1AC20BCE0((v78 + 464));
      swift_endAccess();
      swift_beginAccess();
      v53 = *(v52 + 40);

      swift_endAccess();
      *(v78 + 536) = v53;
      if (*(v78 + 536))
      {

        sub_1AC209190((v78 + 536));

        sub_1AC215CB0();
        v49 = sub_1AC30AB4C();

        v50 = v49;
        v51 = 0;
        goto LABEL_21;
      }

      sub_1AC209190((v78 + 536));
    }

    else
    {
      sub_1AC20BCE0((v78 + 464));
      swift_endAccess();
    }

    v50 = 0;
    v51 = 1;
LABEL_21:
    sub_1AC215CB0();
    v79 = sub_1AC30AB4C();
    if (v51)
    {
      v48 = 0;
    }

    else
    {
      v86 = v50;
      v87 = v51 & 1;
      v48 = v50 == v79;
    }

    if (v48)
    {
      swift_beginAccess();
      *(v78 + 472) = swift_weakLoadStrong();
      if (*(v78 + 472))
      {
        v44 = *(v78 + 472);

        sub_1AC20BCE0((v78 + 472));
        swift_endAccess();
        swift_beginAccess();
        v45 = *(v44 + 40);

        swift_endAccess();

        v46 = v45;
      }

      else
      {
        sub_1AC20BCE0((v78 + 472));
        swift_endAccess();
        v46 = 0;
      }

      *(v78 + 480) = v46;
      if (*(v78 + 480))
      {
        v80 = *(v78 + 480);
      }

      else
      {
        sub_1AC215CB0();
        v80 = sub_1AC30B18C();
        if (*(v78 + 480))
        {
          sub_1AC209190((v78 + 480));
        }
      }

      *(v78 + 488) = v80;
      *(v78 + 496) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
      sub_1AC24D54C();
      sub_1AC30B20C();
      sub_1AC209190((v78 + 488));
      v4 = *(v78 + 384);
      *(v78 + 392) = *(v78 + 376);
      *(v78 + 400) = v4;
      *(v78 + 642) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C388, &qword_1AC311620);
      sub_1AC24D74C();
      sub_1AC30AA7C();
      sub_1AC24D7D4((v78 + 392));
      v47 = *(v78 + 641);
LABEL_37:

      *(v78 + 640) = v47 & 1;
      if ((v47 & 1) == 0)
      {
LABEL_59:

        goto LABEL_61;
      }

      v5 = *(v78 + 616);
      v28 = *(v78 + 600);
      v30 = *(v78 + 584);
      v6 = sub_1AC250850();
      v68(v5, v6, v28);

      v29 = swift_allocObject();
      *(v29 + 16) = v75;

      v31 = swift_allocObject();
      *(v31 + 16) = sub_1AC24D80C;
      *(v31 + 24) = v29;

      v33 = swift_allocObject();
      *(v33 + 16) = sub_1AC24D904;
      *(v33 + 24) = v30;

      log = sub_1AC309E4C();
      v43 = sub_1AC30AD2C();
      v35 = swift_allocObject();
      *(v35 + 16) = 32;
      v36 = swift_allocObject();
      *(v36 + 16) = 8;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1AC24D814;
      *(v32 + 24) = v31;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1AC215C98;
      *(v37 + 24) = v32;
      v38 = swift_allocObject();
      *(v38 + 16) = 32;
      v39 = swift_allocObject();
      *(v39 + 16) = 8;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1AC24D814;
      *(v34 + 24) = v33;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1AC215C98;
      *(v40 + 24) = v34;
      sub_1AC30B18C();
      v41 = v7;

      *v41 = sub_1AC215C90;
      v41[1] = v35;

      v41[2] = sub_1AC215C90;
      v41[3] = v36;

      v41[4] = sub_1AC215CA4;
      v41[5] = v37;

      v41[6] = sub_1AC215C90;
      v41[7] = v38;

      v41[8] = sub_1AC215C90;
      v41[9] = v39;

      v41[10] = sub_1AC215CA4;
      v41[11] = v40;
      sub_1AC206300();

      if (os_log_type_enabled(log, v43))
      {
        v25 = sub_1AC30AE6C();
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
        v26 = sub_1AC213EE4(0, v24, v24);
        v27 = sub_1AC213EE4(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v81 = v25;
        v82 = v26;
        v83 = v27;
        sub_1AC213F38(2, &v81);
        sub_1AC213F38(2, &v81);
        v84 = sub_1AC215C90;
        v85 = v35;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        v84 = sub_1AC215C90;
        v85 = v36;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        v84 = sub_1AC215CA4;
        v85 = v37;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        v84 = sub_1AC215C90;
        v85 = v38;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        v84 = sub_1AC215C90;
        v85 = v39;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        v84 = sub_1AC215CA4;
        v85 = v40;
        sub_1AC213F4C(&v84, &v81, &v82, &v83);
        _os_log_impl(&dword_1AC1C3000, log, v43, "HeadphoneSettings: Coverage Feature Updating Specifiers with %s compared to %s", v25, 0x16u);
        sub_1AC213F98(v26, 0, v24);
        sub_1AC213F98(v27, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }

      else
      {
      }

      v22 = *(v78 + 616);
      v23 = *(v78 + 600);
      v8 = MEMORY[0x1E69E5920](log);
      v60(v22, v23, v8);
      swift_beginAccess();
      *(v78 + 504) = swift_weakLoadStrong();
      if (*(v78 + 504))
      {
        v9 = *(v78 + 504);

        sub_1AC20BCE0((v78 + 504));
        swift_endAccess();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        (*(*v9 + 208))(Strong);
        MEMORY[0x1E69E5920](Strong);
      }

      else
      {
        sub_1AC20BCE0((v78 + 504));
        swift_endAccess();
      }

      swift_beginAccess();
      *(v78 + 512) = swift_weakLoadStrong();
      if (*(v78 + 512))
      {
        v20 = *(v78 + 512);

        sub_1AC20BCE0((v78 + 512));
        swift_endAccess();

        swift_beginAccess();
        *(v20 + 40) = v75;

        swift_endAccess();
      }

      else
      {
        sub_1AC20BCE0((v78 + 512));
        swift_endAccess();
      }

      swift_beginAccess();
      *(v78 + 520) = swift_unknownObjectWeakLoadStrong();
      if (!*(v78 + 520))
      {
        sub_1AC206988((v78 + 520));
        swift_endAccess();
        goto LABEL_59;
      }

      v19 = *(v78 + 520);
      MEMORY[0x1E69E5928](v19);
      sub_1AC206988((v78 + 520));
      swift_endAccess();
      swift_beginAccess();
      *(v78 + 528) = swift_weakLoadStrong();
      if (*(v78 + 528))
      {
        v17 = *(v78 + 528);

        sub_1AC20BCE0((v78 + 528));
        swift_endAccess();
        swift_beginAccess();
        v18 = *(v17 + 40);

        swift_endAccess();

        if (v18)
        {
          sub_1AC215CB0();
          v15 = sub_1AC30B02C();

          v16 = v15;
LABEL_54:
          if (v16)
          {
            v13 = sub_1AC30AAFC();

            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          sub_1AC30A9DC("AboutFeatureLastID", 18, 1);
          v12 = sub_1AC30A91C();

          [v19 insertContiguousSpecifiers:v14 afterSpecifierID:v12];
          MEMORY[0x1E69E5920](v12);
          MEMORY[0x1E69E5920](v14);
          MEMORY[0x1E69E5920](v19);
          goto LABEL_59;
        }
      }

      else
      {
        sub_1AC20BCE0((v78 + 528));
        swift_endAccess();
      }

      v16 = 0;
      goto LABEL_54;
    }

LABEL_27:
    v47 = 1;
    goto LABEL_37;
  }

LABEL_61:

  v10 = *(*(v78 + 408) + 8);

  return v10();
}

void sub_1AC24C3B4(char *a1, void *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a1;
  MEMORY[0x1E69E5928](*a2);
  MEMORY[0x1E69E5928](v6);
  if (v7)
  {
    v3 = 1;
  }

  else
  {
    MEMORY[0x1E69E5928](v5);
    v2 = [v5 isEqualToSpecifier_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v5);
    v3 = v2 ^ 1;
  }

  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  *a1 = v3 & 1;
}

uint64_t sub_1AC24C4EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

void sub_1AC24C520(uint64_t **a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_1AC20BCE0(&Strong);
    swift_endAccess();
    swift_beginAccess();
    v3 = *(v2 + 40);

    swift_endAccess();

    v4 = v3;
  }

  else
  {
    sub_1AC20BCE0(&Strong);
    swift_endAccess();
    v4 = 0;
  }

  v6 = v4;
  if (v4)
  {
    *a2 = v6;
  }

  else
  {
    sub_1AC215CB0();
    *a2 = sub_1AC30B18C();
    if (v6)
    {
      sub_1AC209190(&v6);
    }
  }
}

void sub_1AC24C6B8(void *a1)
{
  v12 = a1;
  v18[1] = 0;
  v13 = 0;
  v18[2] = a1;
  v14 = &v17;
  swift_beginAccess();
  v15 = *(v1 + 40);

  swift_endAccess();
  v18[0] = v15;
  if (v15)
  {
    v2 = v13;
    v7 = v18[0];

    sub_1AC209190(v18);
    v16 = v7;
    v3 = v12;
    v8 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v9 = v5;
    v5[2] = v4;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC24D54C();
    sub_1AC30AAAC();
    v11 = v2;

    sub_1AC209190(&v16);
    v6 = v11;
  }

  else
  {
    sub_1AC209190(v18);
  }
}

void sub_1AC24C844(uint64_t a1, void *a2)
{
  v52 = a1;
  v51 = a2;
  v60 = sub_1AC24D5FC;
  v64 = sub_1AC215C98;
  v66 = sub_1AC215C90;
  v68 = sub_1AC215C90;
  v71 = sub_1AC215CA4;
  v83 = 0;
  v82 = 0;
  v57 = sub_1AC309E6C();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v53 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v2 = v22 - v53;
  v54 = v22 - v53;
  v58 = *v3;
  v83 = v58;
  v82 = v4;
  v5 = sub_1AC250850();
  (*(v55 + 16))(v2, v5, v57);
  MEMORY[0x1E69E5928](v58);
  v62 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  v75 = sub_1AC309E4C();
  v76 = sub_1AC30AD2C();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v61 = 32;
  v6 = swift_allocObject();
  v7 = v63;
  v65 = v6;
  *(v6 + 16) = v60;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v65;
  v72 = v8;
  *(v8 + 16) = v64;
  *(v8 + 24) = v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v70 = sub_1AC30B18C();
  v73 = v10;

  v11 = v67;
  v12 = v73;
  *v73 = v66;
  v12[1] = v11;

  v13 = v69;
  v14 = v73;
  v73[2] = v68;
  v14[3] = v13;

  v15 = v72;
  v16 = v73;
  v73[4] = v71;
  v16[5] = v15;
  sub_1AC206300();

  if (os_log_type_enabled(v75, v76))
  {
    v43 = sub_1AC30AE6C();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v44 = sub_1AC213EE4(0, v42, v42);
    v45 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = &v81;
    v81 = v43;
    v47 = &v80;
    v80 = v44;
    v48 = &v79;
    v79 = v45;
    sub_1AC213F38(2, &v81);
    sub_1AC213F38(1, v46);
    v17 = v50;
    v77 = v66;
    v78 = v67;
    sub_1AC213F4C(&v77, v46, v47, v48);
    v49 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v77 = v68;
      v78 = v69;
      sub_1AC213F4C(&v77, &v81, &v80, &v79);
      v40 = 0;
      v77 = v71;
      v78 = v72;
      sub_1AC213F4C(&v77, &v81, &v80, &v79);
      v39 = 0;
      _os_log_impl(&dword_1AC1C3000, v75, v76, "HeadphoneSettings: Coverage Feature Removing Identifier with ID: %s", v43, 0xCu);
      sub_1AC213F98(v44, 0, v42);
      sub_1AC213F98(v45, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v41 = v39;
    }
  }

  else
  {

    v41 = v50;
  }

  v38 = v41;
  v18 = MEMORY[0x1E69E5920](v75);
  (*(v55 + 8))(v54, v57, v18);
  *&v19 = MEMORY[0x1E69E5928](v51).n128_u64[0];
  if (v51)
  {
    v37 = v51;
    v35 = v51;
    v20 = [v58 identifier];
    v36 = v20;
    if (v20)
    {
      v34 = v36;
      v29 = v36;
      v30 = sub_1AC30A92C();
      v31 = v21;
      MEMORY[0x1E69E5920](v29);
      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v27 = v33;
    v28 = v32;
    if (v33)
    {
      v25 = v28;
      v26 = v27;
      v22[1] = v27;
      v23 = sub_1AC30A91C();

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    [v35 removeSpecifierID_];
    MEMORY[0x1E69E5920](v22[0]);
    MEMORY[0x1E69E5920](v35);
  }
}

uint64_t sub_1AC24D054(void *a1)
{
  v8 = [a1 identifier];
  if (v8)
  {
    v4 = sub_1AC30A92C();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/AppleCareCoverage.swift", 43, 2, 73, 0);
  __break(1u);
  return v3;
}

uint64_t sub_1AC24D190()
{
  sub_1AC2063F0(v0 + 16);
  sub_1AC206988((v0 + 32));
  sub_1AC209190((v0 + 40));
  sub_1AC2063F0(v0 + 48);
  return v2;
}

void *sub_1AC24D264()
{
  v0 = sub_1AC30A9DC("Coverage Feature", 16, 1);
  result = v3;
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  return result;
}

id sub_1AC24D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AC30A91C();
  v16 = a3;
  v17 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_1AC24D45C;
  v15 = &block_descriptor_1;
  v8 = _Block_copy(&aBlock);
  v10 = [v7 initWithSerialNumber:v9 updateHandler:?];
  _Block_release(v8);

  MEMORY[0x1E69E5920](v9);

  return v10;
}

uint64_t sub_1AC24D45C(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

unint64_t sub_1AC24D4B4()
{
  v2 = qword_1EB54C370;
  if (!qword_1EB54C370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C370);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC24D54C()
{
  v2 = qword_1EB54C380;
  if (!qword_1EB54C380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378, &qword_1AC311CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C380);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC24D668(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC24A3DC(a1, v6, v7, v8, v9);
}

unint64_t sub_1AC24D74C()
{
  v2 = qword_1EB54C390;
  if (!qword_1EB54C390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C388, &qword_1AC311620);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC24D814()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v1 = sub_1AC24D87C();

  return sub_1AC241500(v5, v3, v4, v1);
}

unint64_t sub_1AC24D87C()
{
  v2 = qword_1EB54C398;
  if (!qword_1EB54C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378, &qword_1AC311CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C398);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsMTK(int a1)
{
  switch(a1)
  {
    case 8209:
      v2 = 1;
      break;
    case 8214:
      v2 = 1;
      break;
    case 8215:
      v2 = 1;
      break;
    case 8230:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8229 || a1 == 8218;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW1(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8195:
      v2 = 1;
      break;
    case 8197:
      v2 = 1;
      break;
    case 8198:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8201 || a1 == 8208;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW2(int a1)
{
  switch(a1)
  {
    case 8202:
      v2 = 1;
      break;
    case 8203:
      v2 = 1;
      break;
    case 8204:
      v2 = 1;
      break;
    case 8205:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8210:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8223 || a1 == 8239;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW3(int a1)
{
  switch(a1)
  {
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8232 || a1 == 8231;
      break;
  }

  return v2;
}

uint64_t sub_1AC24DF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v16 = a2;
  v14 = a3;
  v15 = a4;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A0, &unk_1AC311628);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v5 = v12 != 0;
  v6 = sub_1AC3092FC();
  sub_1AC204664(&v9);
  LOBYTE(v7) = v5;
  HIBYTE(v7) = v6 & 1;
  return v7;
}

uint64_t sub_1AC24E098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v58 = a2;
  v62 = a3;
  v63 = a4;
  v32 = sub_1AC24EDE4;
  v41 = sub_1AC24EE74;
  v43 = sub_1AC24F4EC;
  v66 = sub_1AC24F584;
  v68 = sub_1AC24FC10;
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v72 = 0;
  v76 = sub_1AC309AAC();
  v37 = *(v76 - 8);
  v38 = v76 - 8;
  v25 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v25 - v25;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v26 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v25 - v26;
  v89 = v4;
  v88 = v5;
  v86 = v6;
  v87 = v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v85[6] = v62;
  v85[7] = v63;
  v40 = 13;
  v64 = 1;
  sub_1AC30A9DC("Call Controls");
  sub_1AC30A8AC();
  v55 = &unk_1F20F3D88;
  v50 = &off_1F20F3D18;
  v30 = sub_1AC215DE8(v53, &unk_1F20F3D88);
  v31 = v8;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  sub_1AC205220();
  v39 = sub_1AC309D3C();
  v85[4] = v62;
  v85[5] = v63;
  sub_1AC30A9DC("Answer Call", 11, v64 & 1);
  sub_1AC30A8AC();
  v33 = sub_1AC215DE8(v53, v55);
  v34 = v9;
  v52(v53, v54);

  v35 = v85;
  v85[3] = v55;
  v85[0] = v62;
  v85[1] = v63;

  v60 = 7;
  v10 = swift_allocObject();
  v11 = v63;
  *(v10 + 16) = v62;
  *(v10 + 24) = v11;
  v36 = v10;
  sub_1AC20599C();
  sub_1AC309A9C();
  v49 = sub_1AC309D1C();
  v78 = *(v37 + 8);
  v77 = v37 + 8;
  v78(v79, v76);

  v84[4] = v62;
  v84[5] = v63;
  sub_1AC30A9DC("Mute & Unmute", v40, v64 & 1);
  sub_1AC30A8AC();
  v44 = sub_1AC215DE8(v53, v55);
  v45 = v12;
  v52(v53, v54);

  v46 = v84;
  v84[3] = v55;
  v84[0] = v62;
  v84[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8, &qword_1AC311638);
  MEMORY[0x1E69E5928](v61);
  v56 = 24;
  v13 = swift_allocObject();
  *(v13 + 16) = v61;
  v42 = v13;
  v57 = &unk_1F20F3C68;
  v48 = swift_allocObject();
  MEMORY[0x1E69E5928](v58);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5928](v61);

  v59 = 48;
  v14 = swift_allocObject();
  v15 = v48;
  v16 = v62;
  v17 = v63;
  v14[2] = v61;
  v14[3] = v16;
  v14[4] = v17;
  v14[5] = v15;
  v47 = v14;
  sub_1AC20599C();
  v73 = 2;
  sub_1AC309A9C();

  v80 = sub_1AC309D1C();
  v78(v79, v76);

  v83[4] = v62;
  v83[5] = v63;
  sub_1AC30A9DC("End Call", 8, v64 & 1);
  sub_1AC30A8AC();
  v69 = sub_1AC215DE8(v53, v55);
  v70 = v18;
  v52(v53, v54);

  v71 = v83;
  v83[3] = v55;
  v83[0] = v62;
  v83[1] = v63;
  MEMORY[0x1E69E5928](v61);
  v19 = swift_allocObject();
  *(v19 + 16) = v61;
  v67 = v19;
  v75 = swift_allocObject();
  MEMORY[0x1E69E5928](v58);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5928](v61);

  v20 = swift_allocObject();
  v21 = v62;
  v22 = v63;
  v23 = v75;
  v20[2] = v61;
  v20[3] = v21;
  v20[4] = v22;
  v20[5] = v23;
  v74 = v20;
  sub_1AC20599C();
  sub_1AC309A9C();

  v81 = sub_1AC309D1C();
  v78(v79, v76);

  v82 = sub_1AC309D2C();

  return v82;
}

uint64_t sub_1AC24EC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v16 = sub_1AC30A90C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v9 - v12;
  v24 = v4;
  v22 = v5;
  v23 = v6;
  v20 = v5;
  v21 = v6;
  sub_1AC30A9DC("Press Once", 10, 1, v3, v9, v10);
  sub_1AC30A8AC();
  v17 = sub_1AC215DE8(v15, &unk_1F20F3D88);
  v18 = v7;
  (*(v13 + 8))(v15, v16);
  v19 = sub_1AC30A91C();

  return v19;
}

uint64_t sub_1AC24EDF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CallManagementDataSource();
  sub_1AC22C214(a2, 258);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC24EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v44 = a2;
  v45 = a3;
  v23 = a4;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v24 = 0;
  v50 = sub_1AC30A90C();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v22 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v49 = &p_Strong - v22;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B0, &unk_1AC3116D8);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v26 = *(v39 + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v43 = &p_Strong - v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &p_Strong - v27;
  v71 = &p_Strong - v27;
  v70 = v5;
  v68 = v6;
  v69 = v7;
  v55 = v8 + 16;
  v67 = v8 + 16;
  v28 = type metadata accessor for CallManagementDataSource();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18, &qword_1AC310640);
  v34 = sub_1AC30B18C();
  v32 = v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B8, &qword_1AC3116E8);
  v31 = sub_1AC30B18C();
  v29 = v10;
  MEMORY[0x1E69E5928](v35);
  v65 = 2;
  v46 = 1;
  v66 = 1;
  v11 = sub_1AC309C5C();
  v12 = v35;
  *v29 = v11;
  MEMORY[0x1E69E5928](v12);
  v63 = 3;
  v64 = v46 & 1;
  v29[1] = sub_1AC309C5C();
  sub_1AC206300();
  *v32 = v13;
  sub_1AC206300();
  v36 = v14;
  MEMORY[0x1E69E5928](v35);
  v37 = sub_1AC22C2B4(v36, v35);
  v62 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3C0, &qword_1AC3116F0);

  v61 = v37;
  v38 = sub_1AC309C6C();
  v60 = v38;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8, &qword_1AC311638);
  (*(v39 + 16))(v43, v41, v42);
  v54 = sub_1AC309A8C();
  v59 = v54;
  *&v15 = MEMORY[0x1E69E5928](v54).n128_u64[0];
  v57 = v44;
  v58 = v45;
  sub_1AC30A9DC("Mute & Unmute", 13, v46 & 1, v15);
  sub_1AC30A8AC();
  v51 = sub_1AC215DE8(v49, &unk_1F20F3D88);
  v52 = v16;
  (*(v47 + 8))(v49, v50);
  v53 = sub_1AC30A91C();

  [v54 setTitle_];
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v54);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v21 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v17 = MEMORY[0x1E69E5928](v54).n128_u64[0];
    [v21 showController_];
    MEMORY[0x1E69E5920](v54);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v18 = MEMORY[0x1E69E5920](v54);
  (*(v39 + 8))(v41, v42, v18);
}

uint64_t sub_1AC24F500(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CallManagementDataSource();
  sub_1AC22C214(a2, 2);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC24F58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v46 = a2;
  v47 = a3;
  v24 = a4;
  v73 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  v25 = 0;
  v52 = sub_1AC30A90C();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v23 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v20 - v23;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B0, &unk_1AC3116D8);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v27 = *(v41 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v45 = &v20 - v26;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v20 - v28;
  v73 = &v20 - v28;
  v72 = v5;
  v70 = v6;
  v71 = v7;
  v57 = v8 + 16;
  v69 = v8 + 16;
  v30 = type metadata accessor for CallManagementDataSource();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18, &qword_1AC310640);
  v36 = sub_1AC30B18C();
  v34 = v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3B8, &qword_1AC3116E8);
  v33 = sub_1AC30B18C();
  v31 = v10;
  MEMORY[0x1E69E5928](v37);
  v67 = 2;
  v29 = 0;
  v48 = 1;
  v68 = 0;
  v11 = sub_1AC309C5C();
  v12 = v37;
  *v31 = v11;
  MEMORY[0x1E69E5928](v12);
  v65 = 3;
  v66 = v29 & 1 & v48;
  v31[1] = sub_1AC309C5C();
  sub_1AC206300();
  *v34 = v13;
  sub_1AC206300();
  v38 = v14;
  MEMORY[0x1E69E5928](v37);
  v39 = sub_1AC22C2B4(v38, v37);
  v64 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3C0, &qword_1AC3116F0);

  v63 = v39;
  v40 = sub_1AC309C6C();
  v62 = v40;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3A8, &qword_1AC311638);
  (*(v41 + 16))(v45, v43, v44);
  v56 = sub_1AC309A8C();
  v61 = v56;
  *&v15 = MEMORY[0x1E69E5928](v56).n128_u64[0];
  v59 = v46;
  v60 = v47;
  sub_1AC30A9DC("End Call", 8, v48 & 1, v15);
  sub_1AC30A8AC();
  v53 = sub_1AC215DE8(v51, &unk_1F20F3D88);
  v54 = v16;
  (*(v49 + 8))(v51, v52);
  v55 = sub_1AC30A91C();

  [v56 setTitle_];
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v22 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v17 = MEMORY[0x1E69E5928](v56).n128_u64[0];
    [v22 showController_];
    MEMORY[0x1E69E5920](v56);
    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v18 = MEMORY[0x1E69E5920](v56);
  (*(v41 + 8))(v43, v44, v18);
}

uint64_t sub_1AC24FC24()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Call Mngmt Feature", 18, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

BOOL static HeadphoneSettingsUIFeatureType.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1AC24FEF0()
{
  v2 = qword_1EB54C3C8;
  if (!qword_1EB54C3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C3C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC24FFB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a1;
  v16 = v2;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3D0, &qword_1AC3116F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  if (v11)
  {
    sub_1AC2051E4(&v8, __dst);
    v5 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(__dst, v14);
    (*(v4 + 8))(v5);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    result = sub_1AC204664(&v8);
    *a2 = 2;
  }

  return result;
}

unint64_t sub_1AC2501FC()
{
  v2 = qword_1EB54C3D8;
  if (!qword_1EB54C3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C3D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HeadphoneSettingsUIFeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HeadphoneSettingsUIFeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AC25066C()
{
  v7 = sub_1AC30917C();
  v8 = [v7 muteControlCapability];
  MEMORY[0x1E69E5920](v7);
  v9 = sub_1AC20BC98(v8);
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v0 = sub_1AC30927C();
    v6 = sub_1AC20BC98(v0);
  }

  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v1 = sub_1AC30927C();
    v5 = sub_1AC20BC98(v1);
  }

  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v2 = sub_1AC3093EC();
    v4 = sub_1AC20BC98(v2);
  }

  LOWORD(v10) = v9;
  WORD1(v10) = v6;
  WORD2(v10) = v5;
  BYTE6(v10) = v4;
  return v10;
}

uint64_t sub_1AC2507AC()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553CF8);
  __swift_project_value_buffer(v1, qword_1EB553CF8);
  sub_1AC30A9DC("com.apple.settings.headphoneSettingsUI", 38, 1);
  sub_1AC30A9DC("MainUI", 6, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC250850()
{
  if (qword_1EB54EDB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553CF8);
}

uint64_t sub_1AC2508BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC250850();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double sub_1AC250920@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2509C0(void *a1, void *a2)
{
  sub_1AC257900(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x88))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC250A6C()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC250ADC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC250BE0()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC250C48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

unint64_t sub_1AC250D64()
{
  v2 = qword_1EB54C3F0;
  if (!qword_1EB54C3F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C3F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC250DC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC250E10()
{
  v8 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v9 = *v8;
  sub_1AC250F8C(*v8);
  swift_endAccess();
  if (v9 != 1)
  {
    return v9;
  }

  v3 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v5 = sub_1AC250FCC(v3);

  MEMORY[0x1E69E5928](v5);
  v4 = (v7 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;
  sub_1AC251EC4(v1);
  swift_endAccess();
  return v5;
}

double sub_1AC250F8C(uint64_t a1)
{
  if (a1 != 1)
  {
    *&result = MEMORY[0x1E69E5928](a1).n128_u64[0];
  }

  return result;
}

id sub_1AC250FCC(uint64_t a1)
{
  v104 = a1;
  v103 = 0;
  v92 = sub_1AC257A18;
  v93 = sub_1AC215C98;
  v94 = sub_1AC257A24;
  v95 = sub_1AC248118;
  v96 = sub_1AC215C90;
  v97 = sub_1AC215C90;
  v98 = sub_1AC215CA4;
  v99 = sub_1AC215C90;
  v100 = sub_1AC215C90;
  v101 = sub_1AC2482A8;
  v128 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  v118 = 0;
  v102 = 0;
  v105 = sub_1AC309E6C();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104);
  v109 = v37 - v108;
  v110 = v1 + 16;
  v128 = v1 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v3 = Strong;
    v90 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    v4 = swift_endAccess();
    v111 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x80))(v4);
    if (v111)
    {
      v84 = &v111;
      v85 = v111;
      MEMORY[0x1E69E5928](v111);
      sub_1AC206988(v84);
      MEMORY[0x1E69E5920](v90);
      v86 = sub_1AC2C85A0();
      v87 = v5;
      v2 = MEMORY[0x1E69E5920](v85).n128_u64[0];
      v88 = v86;
      v89 = v87;
      goto LABEL_6;
    }

    sub_1AC206988(&v111);
    v2 = MEMORY[0x1E69E5920](v90).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v88 = 0;
  v89 = 0;
LABEL_6:
  v123 = v88;
  v124 = v89;
  if (v89)
  {
    v126 = v123;
    v127 = v124;
  }

  else
  {
    v126 = sub_1AC30A9DC("", 0, 1, *&v2);
    v127 = v6;
    if (v124)
    {
      sub_1AC2063F0(&v123);
    }
  }

  v7 = v109;
  v62 = v126;
  v63 = v127;
  v121 = v126;
  v122 = v127;
  v60 = objc_opt_self();

  v61 = sub_1AC30A91C();

  v64 = [v60 bluetoothDeviceForAddress_];
  MEMORY[0x1E69E5920](v61);
  v120 = v64;
  v8 = sub_1AC250850();
  (*(v106 + 16))(v7, v8, v105);

  v69 = 32;
  v70 = 7;
  v9 = swift_allocObject();
  v10 = v63;
  v11 = v9;
  v12 = v64;
  v65 = v11;
  *(v11 + 16) = v62;
  *(v11 + 24) = v10;
  MEMORY[0x1E69E5928](v12);
  v71 = swift_allocObject();
  *(v71 + 16) = v64;
  v82 = sub_1AC309E4C();
  v83 = sub_1AC30AD2C();
  v67 = 17;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  v68 = 8;
  *(v74 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v65;
  v66 = v13;
  *(v13 + 16) = v92;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v66;
  v75 = v15;
  *(v15 + 16) = v93;
  *(v15 + 24) = v16;
  v76 = swift_allocObject();
  *(v76 + 16) = 64;
  v77 = swift_allocObject();
  *(v77 + 16) = v68;
  v17 = swift_allocObject();
  v18 = v71;
  v72 = v17;
  *(v17 + 16) = v94;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v72;
  v79 = v19;
  *(v19 + 16) = v95;
  *(v19 + 24) = v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v78 = sub_1AC30B18C();
  v80 = v21;

  v22 = v73;
  v23 = v80;
  *v80 = v96;
  v23[1] = v22;

  v24 = v74;
  v25 = v80;
  v80[2] = v97;
  v25[3] = v24;

  v26 = v75;
  v27 = v80;
  v80[4] = v98;
  v27[5] = v26;

  v28 = v76;
  v29 = v80;
  v80[6] = v99;
  v29[7] = v28;

  v30 = v77;
  v31 = v80;
  v80[8] = v100;
  v31[9] = v30;

  v32 = v79;
  v33 = v80;
  v80[10] = v101;
  v33[11] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v82, v83))
  {
    v34 = v102;
    v52 = sub_1AC30AE6C();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v51 = 1;
    v53 = sub_1AC213EE4(1, v50, v50);
    v54 = sub_1AC213EE4(v51, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v56 = &v116;
    v116 = v52;
    v57 = &v115;
    v115 = v53;
    v58 = &v114;
    v114 = v54;
    v55 = 2;
    sub_1AC213F38(2, &v116);
    sub_1AC213F38(v55, v56);
    v112 = v96;
    v113 = v73;
    sub_1AC213F4C(&v112, v56, v57, v58);
    v59 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v112 = v97;
      v113 = v74;
      sub_1AC213F4C(&v112, &v116, &v115, &v114);
      v49 = 0;
      v112 = v98;
      v113 = v75;
      sub_1AC213F4C(&v112, &v116, &v115, &v114);
      v48 = 0;
      v112 = v99;
      v113 = v76;
      sub_1AC213F4C(&v112, &v116, &v115, &v114);
      v47 = 0;
      v112 = v100;
      v113 = v77;
      sub_1AC213F4C(&v112, &v116, &v115, &v114);
      v46 = 0;
      v112 = v101;
      v113 = v79;
      sub_1AC213F4C(&v112, &v116, &v115, &v114);
      _os_log_impl(&dword_1AC1C3000, v82, v83, "hmUIServices: %s %@", v52, 0x16u);
      v45 = 1;
      sub_1AC213F98(v53, 1, v50);
      sub_1AC213F98(v54, v45, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E5920](v82);
  (*(v106 + 8))(v109, v105, v35);
  v40 = 0;
  sub_1AC257A2C();
  MEMORY[0x1E69E5928](v64);
  v119[3] = sub_1AC257A90();
  v119[0] = v64;
  v41 = sub_1AC251F34(v119);
  v118 = v41;
  v42 = v104 + 16;
  v43 = v117;
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (v44)
  {
    v39 = v44;
    v38 = v44;
  }

  else
  {
    v38 = 0;
  }

  v37[1] = v38;
  [v41 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v64);

  return v41;
}

double sub_1AC251EC4(uint64_t result)
{
  if (result != 1)
  {
    *&v1 = MEMORY[0x1E69E5920](result).n128_u64[0];
  }

  return v1;
}

double sub_1AC251F74(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_1AC251EC4(v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1AC252004(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC250E10();
  return sub_1AC252060;
}

void sub_1AC252060(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    MEMORY[0x1E69E5928](*a1);
    sub_1AC251F74(v2);
    sub_1AC206988(a1);
  }

  else
  {
    sub_1AC251F74(*a1);
  }
}

uint64_t sub_1AC252104()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25216C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void *sub_1AC25225C(char a1)
{
  v31 = a1 & 1;
  v30 = v1;
  v2 = MEMORY[0x1E69E5928](v1);
  v27 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  if (v27)
  {
    v10 = v27;
    MEMORY[0x1E69E5928](v27);
    sub_1AC206988(&v27);
    v11 = sub_1AC30956C();
    v12 = v3;
    *&v4 = MEMORY[0x1E69E5920](v10).n128_u64[0];
    v13 = v11;
    v14 = v12;
  }

  else
  {
    sub_1AC206988(&v27);
    v13 = 0;
    v14 = 0;
  }

  v25 = v13;
  v26 = v14;
  if (v14)
  {
    v28 = v25;
    v29 = v26;
  }

  else
  {
    v28 = sub_1AC30A9DC("Headphone Accessory", 19, 1, v4);
    v29 = v5;
  }

  v9 = sub_1AC30A91C();

  [v16 setTitle_];
  MEMORY[0x1E69E5920](v9);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v24.receiver = v16;
  v24.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1 & 1);
  [v16 reloadSpecifiers];
  (MEMORY[0x1E69E5928])();
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C410, &unk_1AC311860);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v19 = 0;
  }

  if (!v18)
  {
    return sub_1AC204664(v17);
  }

  sub_1AC2051E4(v17, __dst);
  v8 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(__dst, v22);
  (*(v7 + 8))(v8);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

double sub_1AC252604()
{
  v3 = v0;
  MEMORY[0x1E69E5928](v0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v0);
  return sub_1AC25604C();
}

double sub_1AC2526C8(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  MEMORY[0x1E69E5928](v1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HeadphoneSettingsController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  MEMORY[0x1E69E5920](v1);
  v4 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics];
  [v4 submitDeviceAnalytics];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

id HeadphoneSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *HeadphoneSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = a1;
  v15 = a2;
  v13 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice = 0;
  v8 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *&v16[v8] = sub_1AC30A80C();
  v9 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics;
  sub_1AC250D64();
  *&v16[v9] = sub_1AC20D658();
  *&v16[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices] = 1;
  v10 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures;
  *&v16[v10] = sub_1AC30B18C();
  *&v16[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v16;
  v12.super_class = type metadata accessor for HeadphoneSettingsController();
  v4 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v16 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v16);
  return v4;
}

id HeadphoneSettingsController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void HeadphoneSettingsController.init(coder:)()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *v0 = sub_1AC30A80C();
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics;
  sub_1AC250D64();
  *v1 = sub_1AC20D658();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController____lazy_storage___hmUIServices = 1;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_currentFeatures;
  *v2 = sub_1AC30B18C();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

double sub_1AC252DD4()
{
  v36 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v37 = *v36;
  MEMORY[0x1E69E5928](*v36);
  swift_endAccess();
  if (v37)
  {
    sub_1AC256498();
    v33 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
    v32 = [v33 contentView];
    [v32 addSubview_];
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5928](v33);
    v34 = [v35 view];
    *&v1 = (MEMORY[0x1E69E5920])().n128_u64[0];
    if (v34)
    {
      v31 = v34;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/HeadphoneSettingsUI.swift", 45, 2, 85, 0);
      __break(1u);
    }

    [v31 bounds];
    MEMORY[0x1E69E5920](v31);
    CGRectMake();
    [v33 setFrame_];
    MEMORY[0x1E69E5920](v33);
    [v37 setTranslatesAutoresizingMaskIntoConstraints_];
    MEMORY[0x1E69E5920](v37);
    v28 = objc_opt_self();
    sub_1AC256554();
    sub_1AC30B18C();
    v27 = v6;
    v13 = [v37 0x1FBB5C529];
    v11 = [v33 0x1FB774AF8];
    v12 = [v11 0x1FBB5C529];
    v14 = [v13 0x1FBB28F65];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    *v27 = v14;
    v17 = [v37 0x1FBBB59CCLL];
    v15 = [v33 0x1FB774AF8];
    v16 = [v15 0x1FBBB59CCLL];
    v18 = [v17 0x1FBB28F65];
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
    v27[1] = v18;
    v21 = [v37 0x1FBBB4950];
    v19 = [v33 0x1FB774AF8];
    v20 = [v19 0x1FBBB4950];
    v22 = [v21 0x1FBB28F65];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
    v27[2] = v22;
    v25 = [v37 0x1FBB20D25];
    v23 = [v33 0x1FB774AF8];
    v24 = [v23 0x1FBB20D25];
    v26 = [v25 0x1FBB28F65];
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v25);
    v27[3] = v26;
    sub_1AC206300();
    v29 = sub_1AC30AAFC();

    [v28 activateConstraints_];
    v30 = [v35 table];
    if (v30)
    {
      v10 = v30;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/HeadphoneSettingsUI.swift", 45, 2, 95, 0);
      __break(1u);
    }

    [v10 setTableHeaderView_];
    MEMORY[0x1E69E5920](v33);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v33);
    *&result = MEMORY[0x1E69E5920](v37).n128_u64[0];
  }

  else
  {
    v9 = [v35 table];
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/HeadphoneSettingsUI.swift", 45, 2, 79, 0);
      __break(1u);
    }

    [v8 setTableHeaderView_];
    *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC253688()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2536F8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_batteryStatusView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  sub_1AC252DD4();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1AC253794(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC253804;
}

void sub_1AC253804(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1AC252DD4();
  }
}

uint64_t sub_1AC253854()
{
  v198 = sub_1AC2573A8;
  v199 = sub_1AC2573B4;
  v200 = sub_1AC2559F4;
  v201 = sub_1AC215C98;
  v202 = sub_1AC255A30;
  v203 = sub_1AC2572B0;
  v204 = sub_1AC24D814;
  v205 = sub_1AC215C98;
  v206 = sub_1AC2573C0;
  v207 = sub_1AC215C98;
  v208 = sub_1AC215C90;
  v209 = sub_1AC215C90;
  v210 = sub_1AC215CA4;
  v211 = sub_1AC215C90;
  v212 = sub_1AC215C90;
  v213 = sub_1AC2572BC;
  v214 = sub_1AC215C90;
  v215 = sub_1AC215C90;
  v216 = sub_1AC215CA4;
  v217 = sub_1AC215C90;
  v218 = sub_1AC215C90;
  v219 = sub_1AC215CA4;
  v220 = sub_1AC2559F4;
  v221 = sub_1AC215C98;
  v222 = sub_1AC255A24;
  v223 = sub_1AC2572B0;
  v224 = sub_1AC215C90;
  v225 = sub_1AC215C90;
  v226 = sub_1AC215CA4;
  v227 = sub_1AC215C90;
  v228 = sub_1AC215C90;
  v229 = sub_1AC2572BC;
  v259 = 0;
  v258 = 0;
  v230 = 0;
  v252 = 0;
  v247 = 0;
  v248 = 0;
  v231 = sub_1AC309E6C();
  v232 = *(v231 - 8);
  v233 = v231 - 8;
  v234 = (*(v232 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v231);
  v235 = v85 - v234;
  v236 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v85 - v234);
  v237 = v85 - v236;
  v259 = v0;
  v238 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  if (v238)
  {
    v196 = v238;
    v162 = v238;
    v252 = v238;
    v3 = sub_1AC2C8720();
    v159 = v4;
    (*((*v197 & *MEMORY[0x1E69E7D40]) + 0xF8))(v3);

    v163 = &v249;
    sub_1AC29E948(&v249);
    v160 = v250;
    v161 = v251;
    __swift_project_boxed_opaque_existential_1(v163, v250);
    v165 = (*(v161 + 16))(v162, v197, v160);
    v166 = v5;
    v247 = v165;
    v248 = v5;
    __swift_destroy_boxed_opaque_existential_1(v163);

    sub_1AC25216C(v165);
    v6 = v237;

    v7 = sub_1AC250850();
    (*(v232 + 16))(v6, v7, v231);

    v175 = 32;
    v176 = 7;
    v8 = swift_allocObject();
    v9 = v166;
    v164 = v8;
    *(v8 + 16) = v165;
    *(v8 + 24) = v9;

    v10 = swift_allocObject();
    v11 = v164;
    v170 = v10;
    *(v10 + 16) = v198;
    *(v10 + 24) = v11;

    v12 = swift_allocObject();
    v13 = v166;
    v167 = v12;
    *(v12 + 16) = v165;
    *(v12 + 24) = v13;

    v14 = swift_allocObject();
    v15 = v167;
    v177 = v14;
    *(v14 + 16) = v199;
    *(v14 + 24) = v15;

    v194 = sub_1AC309E4C();
    v195 = sub_1AC30AD0C();
    v173 = 17;
    v179 = swift_allocObject();
    v172 = 32;
    *(v179 + 16) = 32;
    v180 = swift_allocObject();
    v174 = 8;
    *(v180 + 16) = 8;
    v16 = swift_allocObject();
    v168 = v16;
    *(v16 + 16) = v200;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    v18 = v168;
    v181 = v17;
    *(v17 + 16) = v201;
    *(v17 + 24) = v18;
    v182 = swift_allocObject();
    *(v182 + 16) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v174;
    v19 = swift_allocObject();
    v169 = v19;
    *(v19 + 16) = v202;
    *(v19 + 24) = 0;
    v20 = swift_allocObject();
    v21 = v169;
    v184 = v20;
    *(v20 + 16) = v203;
    *(v20 + 24) = v21;
    v185 = swift_allocObject();
    *(v185 + 16) = v172;
    v186 = swift_allocObject();
    *(v186 + 16) = v174;
    v22 = swift_allocObject();
    v23 = v170;
    v171 = v22;
    *(v22 + 16) = v204;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v171;
    v187 = v24;
    *(v24 + 16) = v205;
    *(v24 + 24) = v25;
    v188 = swift_allocObject();
    *(v188 + 16) = v172;
    v189 = swift_allocObject();
    *(v189 + 16) = v174;
    v26 = swift_allocObject();
    v27 = v177;
    v178 = v26;
    *(v26 + 16) = v206;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v178;
    v191 = v28;
    *(v28 + 16) = v207;
    *(v28 + 24) = v29;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v190 = sub_1AC30B18C();
    v192 = v30;

    v31 = v179;
    v32 = v192;
    *v192 = v208;
    v32[1] = v31;

    v33 = v180;
    v34 = v192;
    v192[2] = v209;
    v34[3] = v33;

    v35 = v181;
    v36 = v192;
    v192[4] = v210;
    v36[5] = v35;

    v37 = v182;
    v38 = v192;
    v192[6] = v211;
    v38[7] = v37;

    v39 = v183;
    v40 = v192;
    v192[8] = v212;
    v40[9] = v39;

    v41 = v184;
    v42 = v192;
    v192[10] = v213;
    v42[11] = v41;

    v43 = v185;
    v44 = v192;
    v192[12] = v214;
    v44[13] = v43;

    v45 = v186;
    v46 = v192;
    v192[14] = v215;
    v46[15] = v45;

    v47 = v187;
    v48 = v192;
    v192[16] = v216;
    v48[17] = v47;

    v49 = v188;
    v50 = v192;
    v192[18] = v217;
    v50[19] = v49;

    v51 = v189;
    v52 = v192;
    v192[20] = v218;
    v52[21] = v51;

    v53 = v191;
    v54 = v192;
    v192[22] = v219;
    v54[23] = v53;
    sub_1AC206300();

    if (os_log_type_enabled(v194, v195))
    {
      v55 = v230;
      v152 = sub_1AC30AE6C();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v153 = sub_1AC213EE4(0, v151, v151);
      v154 = sub_1AC213EE4(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v155 = &v243;
      v243 = v152;
      v156 = &v242;
      v242 = v153;
      v157 = &v241;
      v241 = v154;
      sub_1AC213F38(2, &v243);
      sub_1AC213F38(4, v155);
      v239 = v208;
      v240 = v179;
      sub_1AC213F4C(&v239, v155, v156, v157);
      v158 = v55;
      if (v55)
      {

        __break(1u);
      }

      else
      {
        v239 = v209;
        v240 = v180;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v150 = 0;
        v239 = v210;
        v240 = v181;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v149 = 0;
        v239 = v211;
        v240 = v182;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v148 = 0;
        v239 = v212;
        v240 = v183;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v147 = 0;
        v239 = v213;
        v240 = v184;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v146 = 0;
        v239 = v214;
        v240 = v185;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v145 = 0;
        v239 = v215;
        v240 = v186;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v144 = 0;
        v239 = v216;
        v240 = v187;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v143 = 0;
        v239 = v217;
        v240 = v188;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v142 = 0;
        v239 = v218;
        v240 = v189;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        v141 = 0;
        v239 = v219;
        v240 = v191;
        sub_1AC213F4C(&v239, &v243, &v242, &v241);
        _os_log_impl(&dword_1AC1C3000, v194, v195, "%s: %ld Updating PSListController _specifiers %s %s", v152, 0x2Au);
        sub_1AC213F98(v153, 0, v151);
        sub_1AC213F98(v154, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v56 = MEMORY[0x1E69E5920](v194);
    (*(v232 + 8))(v237, v231, v56);
    sub_1AC256A48();

    v136 = sub_1AC215CB0();
    v139 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v137 = v57;
    v138 = sub_1AC30A91C();

    [v197 setValue:v139 forKey:v138];
    MEMORY[0x1E69E5920](v138);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v197);
    v246[0] = sub_1AC30956C();
    v246[1] = v58;
    v140 = [v197 title];
    if (v140)
    {
      v135 = v140;
      v130 = v140;
      v131 = sub_1AC30A92C();
      v132 = v59;
      MEMORY[0x1E69E5920](v130);
      v133 = v131;
      v134 = v132;
    }

    else
    {
      v133 = 0;
      v134 = 0;
    }

    v127 = &v244;
    v244 = v133;
    v245 = v134;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C448, &qword_1AC311878);
    sub_1AC2574B0();
    sub_1AC309D8C();
    v128 = v244;
    v129 = v245;
    if (v245)
    {
      v124 = v128;
      v125 = v129;
      v121 = v129;
      v122 = sub_1AC30A91C();

      v123 = v122;
    }

    else
    {
      v123 = 0;
    }

    v118 = v123;
    [v197 setTitle_];
    MEMORY[0x1E69E5920](v118);
    MEMORY[0x1E69E5920](v197);
    sub_1AC2063F0(v246);

    v119 = sub_1AC30B02C();

    MEMORY[0x1E69E5920](v162);
    return v119;
  }

  else
  {
    v60 = v235;
    v95 = 0;
    v96 = sub_1AC215CB0();
    v97 = sub_1AC30B18C();

    v258 = v97;
    v100 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v98 = v61;
    v99 = sub_1AC30A91C();

    [v197 setValue:v100 forKey:v99];
    MEMORY[0x1E69E5920](v99);
    swift_unknownObjectRelease();
    v62 = sub_1AC250850();
    (*(v232 + 16))(v60, v62, v231);
    v116 = sub_1AC309E4C();
    v117 = sub_1AC30AD1C();
    v102 = 17;
    v105 = 7;
    v107 = swift_allocObject();
    *(v107 + 16) = 32;
    v108 = swift_allocObject();
    v103 = 8;
    *(v108 + 16) = 8;
    v104 = 32;
    v63 = swift_allocObject();
    v101 = v63;
    *(v63 + 16) = v220;
    *(v63 + 24) = 0;
    v64 = swift_allocObject();
    v65 = v101;
    v109 = v64;
    *(v64 + 16) = v221;
    *(v64 + 24) = v65;
    v110 = swift_allocObject();
    *(v110 + 16) = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v103;
    v66 = swift_allocObject();
    v106 = v66;
    *(v66 + 16) = v222;
    *(v66 + 24) = 0;
    v67 = swift_allocObject();
    v68 = v106;
    v113 = v67;
    *(v67 + 16) = v223;
    *(v67 + 24) = v68;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v112 = sub_1AC30B18C();
    v114 = v69;

    v70 = v107;
    v71 = v114;
    *v114 = v224;
    v71[1] = v70;

    v72 = v108;
    v73 = v114;
    v114[2] = v225;
    v73[3] = v72;

    v74 = v109;
    v75 = v114;
    v114[4] = v226;
    v75[5] = v74;

    v76 = v110;
    v77 = v114;
    v114[6] = v227;
    v77[7] = v76;

    v78 = v111;
    v79 = v114;
    v114[8] = v228;
    v79[9] = v78;

    v80 = v113;
    v81 = v114;
    v114[10] = v229;
    v81[11] = v80;
    sub_1AC206300();

    if (os_log_type_enabled(v116, v117))
    {
      v82 = v230;
      v87 = sub_1AC30AE6C();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v88 = sub_1AC213EE4(0, v86, v86);
      v89 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v91 = &v257;
      v257 = v87;
      v92 = &v256;
      v256 = v88;
      v93 = &v255;
      v255 = v89;
      v90 = 2;
      sub_1AC213F38(2, &v257);
      sub_1AC213F38(v90, v91);
      v253 = v224;
      v254 = v107;
      sub_1AC213F4C(&v253, v91, v92, v93);
      v94 = v82;
      if (v82)
      {

        __break(1u);
      }

      else
      {
        v253 = v225;
        v254 = v108;
        sub_1AC213F4C(&v253, &v257, &v256, &v255);
        v85[3] = 0;
        v253 = v226;
        v254 = v109;
        sub_1AC213F4C(&v253, &v257, &v256, &v255);
        v85[2] = 0;
        v253 = v227;
        v254 = v110;
        sub_1AC213F4C(&v253, &v257, &v256, &v255);
        v85[1] = 0;
        v253 = v228;
        v254 = v111;
        sub_1AC213F4C(&v253, &v257, &v256, &v255);
        v85[0] = 0;
        v253 = v229;
        v254 = v113;
        sub_1AC213F4C(&v253, &v257, &v256, &v255);
        _os_log_impl(&dword_1AC1C3000, v116, v117, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty controller!", v87, 0x16u);
        sub_1AC213F98(v88, 0, v86);
        sub_1AC213F98(v89, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v83 = MEMORY[0x1E69E5920](v116);
    (*(v232 + 8))(v235, v231, v83);
    sub_1AC209190(&v258);
    return 0;
  }
}

uint64_t sub_1AC255A3C@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a2;
}

uint64_t sub_1AC255A84@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{

  *a3 = a1;
}

uint64_t sub_1AC255B90(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v23 = sub_1AC257544;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C458, &qword_1AC311880);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v10 - v29;
  v37 = v3;
  v38 = v4;
  v36 = v2;
  v32 = sub_1AC250BE0();
  v31 = sub_1AC309EAC();
  sub_1AC223158();
  v33 = sub_1AC30AC0C();

  result = v33;
  if (!v33)
  {
    sub_1AC30962C();
    v11 = sub_1AC30960C();
    sub_1AC3095FC();
    MEMORY[0x1E69E5920](v11);
    v12 = sub_1AC309F2C();
    (*(v27 + 8))(v30, v26);
    v18 = &v35;
    v35 = v12;
    v14 = 7;
    v15 = swift_allocObject();
    v13 = v15 + 16;
    MEMORY[0x1E69E5928](v22);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v22);

    v6 = swift_allocObject();
    v7 = v24;
    v8 = v6;
    v9 = v15;
    v17 = v8;
    v8[2] = v25;
    v8[3] = v7;
    v8[4] = v9;

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C460, &qword_1AC311888);
    sub_1AC257554();
    v21 = sub_1AC309FBC();

    sub_1AC20BCE0(v18);
    v19 = v34;
    v20 = sub_1AC250CCC(v34);
    sub_1AC309E9C();
    v20();
  }

  return result;
}

double sub_1AC255E7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v17 = *a1;
  v15 = a2;
  v16 = a3;
  v14 = a4 + 16;

  v12[0] = a2;
  v12[1] = a3;
  sub_1AC3095DC();
  sub_1AC30A85C();
  sub_1AC2063F0(v12);
  v11 = v13;
  v7 = v13 == 0;
  sub_1AC206988(&v11);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(&Strong);
      swift_endAccess();
      v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v6);
      [v6 updateFeatureChangeCount_];
      *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }
  }

  return result;
}

double sub_1AC25604C()
{
  v17 = sub_1AC2576EC;
  v37 = 0;
  v36 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD90, &qword_1AC311890);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v3 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C470, &qword_1AC311898);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v3 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C478, qword_1AC3118A0);
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v3 - v31;
  v37 = v0;
  v33 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))(v1);
  if (v33)
  {
    v15 = v33;
    v14 = v33;
    v36 = v33;
    sub_1AC3091CC();
    v4 = sub_1AC309F2C();
    (*(v19 + 8))(v22, v18);
    v6 = &v35;
    v35 = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C480, &qword_1AC313060);
    sub_1AC2575DC();
    sub_1AC309FAC();
    sub_1AC20BCE0(v6);
    v7 = sub_1AC257664();
    sub_1AC2565B8();
    sub_1AC309F9C();
    (*(v24 + 8))(v27, v23);
    v10 = swift_allocObject();
    v8 = v10 + 16;
    MEMORY[0x1E69E5928](v16);
    v9 = v16;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v9);

    sub_1AC2576F4();
    v13 = sub_1AC309FBC();

    (*(v29 + 8))(v32, v28);
    v11 = v34;
    v12 = sub_1AC250CCC(v34);
    sub_1AC309E9C();
    v12();

    *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
  }

  return result;
}

unint64_t sub_1AC256498()
{
  v2 = qword_1EB54C420;
  if (!qword_1EB54C420)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C420);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC256554()
{
  v2 = qword_1EB54C428;
  if (!qword_1EB54C428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C428);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2565D0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v18 = a2;
  v17 = MEMORY[0x1E69E85E0];
  v21 = &unk_1AC311930;
  v24 = 0;
  v23 = 0;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318, &qword_1AC3115F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v13 - v15;
  v3 = *v2;
  v16 = 1;
  v24 = v3 & 1;
  v23 = v4 + 16;
  v19 = 0;
  v5 = sub_1AC30ABDC();
  (*(*(v5 - 8) + 56))(v20, v16);

  sub_1AC30ABBC();
  v22 = sub_1AC30ABAC();
  v6 = swift_allocObject();
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v6[2] = v22;
  v6[3] = v7;
  v6[4] = v8;
  sub_1AC244BA8(v9, v9, v10, v11, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1AC256770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[8] = v4;
  v4[9] = 0;
  v4[9] = a4 + 16;
  sub_1AC30ABBC();
  v4[13] = sub_1AC30ABAC();
  v7 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC256824, v7, v5);
}

uint64_t sub_1AC256824()
{
  *(v0 + 64) = v0;
  swift_beginAccess();
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();
  if (*(v0 + 80))
  {
    v4 = v5[10];
    MEMORY[0x1E69E5928](v4);
    sub_1AC206988(v5 + 10);
    swift_endAccess();
    [v4 reloadSpecifiers];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(v5 + 10);
    swift_endAccess();
  }

  swift_beginAccess();
  v5[11] = swift_unknownObjectWeakLoadStrong();
  if (v5[11])
  {
    v3 = v5[11];
    MEMORY[0x1E69E5928](v3);
    sub_1AC206988(v5 + 11);
    swift_endAccess();
    sub_1AC256A48();
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1AC206988(v5 + 11);
    swift_endAccess();
  }

  v1 = *(v5[8] + 8);

  return v1();
}

double sub_1AC256A48()
{
  v10 = 0;
  v11 = v0;
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))();
  if (v7)
  {
    v10 = v7;
    if (sub_1AC3091AC())
    {
      v8 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE0))();
      MEMORY[0x1E69E5928](v7);
      (MEMORY[0x1E69E5928])();
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v2 = sub_1AC217F0C();
        v4 = sub_1AC217C9C(v7, v6, v2, v3);

        v9 = v4;
      }

      MEMORY[0x1E69E5920](v7);
      (MEMORY[0x1E69E5920])();
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v5);
    *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  }

  return result;
}

id HeadphoneSettingsController.__deallocating_deinit()
{
  v33 = 0;
  v42 = 0;
  v22 = 0;
  v30 = sub_1AC309E6C();
  v24 = v30;
  v25 = *(v30 - 8);
  v29 = v25;
  v26 = v25;
  v27 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v0 = &v7 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v42 = v1;
  v2 = sub_1AC250850();
  (*(v29 + 16))(v0, v2, v30);
  v35 = sub_1AC309E4C();
  v31 = v35;
  v34 = sub_1AC30AD1C();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v36 = sub_1AC30B18C();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v22;
    v13 = sub_1AC30AE6C();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v11 = 0;
    v14 = sub_1AC213EE4(0, v10, v10);
    v12 = v14;
    v15 = sub_1AC213EE4(v11, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v40 = v13;
    v39 = v14;
    v38 = v15;
    v16 = 0;
    v17 = &v40;
    sub_1AC213F38(0, &v40);
    sub_1AC213F38(v16, v17);
    v37 = v36;
    v18 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v19 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v31, v32, "HeadphoneSettingsUI: deinit!", v9, 2u);
      v7 = 0;
      sub_1AC213F98(v12, 0, v10);
      sub_1AC213F98(v15, v7, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v28, v24);
  v5 = type metadata accessor for HeadphoneSettingsController();
  v41.receiver = v23;
  v41.super_class = v5;
  return objc_msgSendSuper2(&v41, sel_dealloc);
}

id sub_1AC257108(void *a1)
{
  v12 = a1;
  v11 = a1[3];
  v1 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v10 = &v4 - v5;
  (*(v8 + 16))(v2);
  v7 = sub_1AC30B19C();
  v13 = [v6 initWithDevice_];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v13;
}

uint64_t sub_1AC257274@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC2572BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC257330();
  v5 = MEMORY[0x1E69E6530];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC257330()
{
  v2 = qword_1EB54C430;
  if (!qword_1EB54C430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2573C0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C438, &qword_1AC311870);
  v1 = sub_1AC257428();

  return sub_1AC241500(v5, v3, v4, v1);
}

unint64_t sub_1AC257428()
{
  v2 = qword_1EB54C440;
  if (!qword_1EB54C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438, &qword_1AC311870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2574B0()
{
  v2 = qword_1EB54C450;
  if (!qword_1EB54C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C448, &qword_1AC311878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC257554()
{
  v2 = qword_1EB54C468;
  if (!qword_1EB54C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C460, &qword_1AC311888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2575DC()
{
  v2 = qword_1EB54C488;
  if (!qword_1EB54C488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C480, &qword_1AC313060);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC257664()
{
  v2 = qword_1EB54C490;
  if (!qword_1EB54C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C470, &qword_1AC311898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2576F4()
{
  v2 = qword_1EB54C498;
  if (!qword_1EB54C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C478, qword_1AC3118A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C498);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC25777C(void *a1)
{
  if (*a1 != 1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

void *sub_1AC257900(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1AC257940(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC24746C;

  return sub_1AC256770(a1, v6, v7, v8);
}

unint64_t sub_1AC257A2C()
{
  v2 = qword_1EB54C4A0;
  if (!qword_1EB54C4A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC257A90()
{
  v2 = qword_1EB54C4A8;
  if (!qword_1EB54C4A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC257B24()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC257B64(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static BatteryChargingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v55 = sub_1AC248080;
  v56 = sub_1AC226634;
  v57 = sub_1AC226640;
  v58 = sub_1AC22664C;
  v59 = sub_1AC215C90;
  v60 = sub_1AC215C90;
  v61 = sub_1AC226658;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v82 = 0;
  v62 = 0;
  v69 = 0;
  v64 = sub_1AC309E6C();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v68 = v25 - v67;
  v91 = a1;
  v90 = v3;
  v74 = sub_1AC30915C();
  v89 = v74;
  v4 = sub_1AC309A5C();
  v72 = &v88;
  v88 = v4;
  v70 = &v87;
  v87 = 2;
  v71 = type metadata accessor for AAFeatureCapability(v69);
  v73 = sub_1AC212BF0();
  v75 = sub_1AC30B1BC();

  if (v75)
  {
    v54 = 1;
  }

  else
  {
    v86 = sub_1AC309A0C();
    v85 = 2;
    v54 = sub_1AC30B1BC();
  }

  v53 = v54;

  if (v53)
  {
    v52 = 1;
  }

  else
  {
    v84 = sub_1AC3099DC();
    v83 = 2;
    v52 = sub_1AC30B1BC();
  }

  v5 = v68;
  v36 = v52;

  v35 = 1;
  v82 = v36 & 1;
  v6 = sub_1AC250850();
  (*(v65 + 16))(v5, v6, v64);
  v37 = 17;
  v41 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v36 & v35;
  v50 = sub_1AC309E4C();
  v51 = sub_1AC30AD2C();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 4;
  v40 = 32;
  v7 = swift_allocObject();
  v8 = v38;
  v39 = v7;
  *(v7 + 16) = v55;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v39;
  v42 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v42;
  v43 = v11;
  *(v11 + 16) = v57;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v43;
  v47 = v13;
  *(v13 + 16) = v58;
  *(v13 + 24) = v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v46 = sub_1AC30B18C();
  v48 = v15;

  v16 = v44;
  v17 = v48;
  *v48 = v59;
  v17[1] = v16;

  v18 = v45;
  v19 = v48;
  v48[2] = v60;
  v19[3] = v18;

  v20 = v47;
  v21 = v48;
  v48[4] = v61;
  v21[5] = v20;
  sub_1AC206300();

  if (os_log_type_enabled(v50, v51))
  {
    v22 = v62;
    v28 = sub_1AC30AE6C();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v27 = 0;
    v29 = sub_1AC213EE4(0, v26, v26);
    v30 = sub_1AC213EE4(v27, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v31 = &v80;
    v80 = v28;
    v32 = &v79;
    v79 = v29;
    v33 = &v78;
    v78 = v30;
    sub_1AC213F38(0, &v80);
    sub_1AC213F38(1, v31);
    v76 = v59;
    v77 = v44;
    sub_1AC213F4C(&v76, v31, v32, v33);
    v34 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v76 = v60;
      v77 = v45;
      sub_1AC213F4C(&v76, &v80, &v79, &v78);
      v25[1] = 0;
      v76 = v61;
      v77 = v47;
      sub_1AC213F4C(&v76, &v80, &v79, &v78);
      _os_log_impl(&dword_1AC1C3000, v50, v51, "BatteryChargingFeature: capability: %{BOOL}d", v28, 8u);
      v25[0] = 0;
      sub_1AC213F98(v29, 0, v26);
      sub_1AC213F98(v30, v25[0], MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v23 = MEMORY[0x1E69E5920](v50);
  (*(v65 + 8))(v68, v64, v23);

  LOBYTE(v81) = 1;
  HIBYTE(v81) = v36 & 1;
  return v81;
}

uint64_t static BatteryChargingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v21 = a2;
  v26 = sub_1AC259948;
  v42 = 0;
  v41 = 0;
  v30 = 0;
  v19 = sub_1AC30A90C();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v10 - v11;
  v35 = sub_1AC309AAC();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v12 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v36 = &v10 - v12;
  v42 = v2;
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v13 = MEMORY[0x1E69A2B08];
  v14 = sub_1AC205220();
  v15 = v4;
  sub_1AC205220();
  v37 = sub_1AC309D3C();
  v22 = 7;
  v24 = 1;
  sub_1AC30A9DC("Battery");
  sub_1AC30A8AC();
  v20 = &type metadata for BatteryChargingFeature;
  v27 = sub_1AC215DE8(v18, &type metadata for BatteryChargingFeature);
  v28 = v5;
  (*(v16 + 8))(v18, v19);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4B0, &qword_1AC311958);
  v29 = v40;
  v40[3] = v6;
  v40[0] = v20;
  v25 = sub_1AC2598E4();
  v32 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5928](v23);

  v7 = swift_allocObject();
  v8 = v32;
  *(v7 + 16) = v23;
  *(v7 + 24) = v8;
  v31 = v7;
  sub_1AC20599C();
  sub_1AC309A9C();

  v38 = sub_1AC309D1C();
  (*(v33 + 8))(v36, v35);

  v39 = sub_1AC309D2C();

  return v39;
}

__n128 sub_1AC2589D4@<Q0>(__n128 *a1@<X8>)
{
  v4.n128_u64[0] = sub_1AC30A9DC("Battery Charging", 16, 1);
  v4.n128_u64[1] = v1;
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1AC258A2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1AC258AA0(uint64_t a1, uint64_t a2)
{
  __dst[7] = a1;
  __dst[6] = a2 + 16;
  type metadata accessor for BatteryChargingViewController();
  v5 = sub_1AC20D658();
  __dst[5] = v5;
  v2 = MEMORY[0x1E69E5928](a1);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x80))(a1, v2);
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4C0, &qword_1AC311978);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    sub_1AC2051E4(&v9, __dst);
  }

  else
  {
    sub_1AC258DAC(v15);
    __dst[3] = &unk_1F20F47D0;
    __dst[4] = &off_1F20F46B8;
    __dst[0] = swift_allocObject();
    memcpy((__dst[0] + 16), v15, 0x30uLL);
    if (v12)
    {
      sub_1AC204664(&v9);
    }
  }

  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x98))(__dst);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    [v4 showController_];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC258DAC@<X0>(uint64_t *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v5 = sub_1AC30A9DC("AirPods");
  v6 = v1;

  __b[0] = v5;
  __b[1] = v6;
  v7 = sub_1AC30A9DC("AirPod", 6, 1);
  v8 = v2;

  __b[2] = v7;
  __b[3] = v8;
  v11 = sub_1AC30A9DC("AirPods", 7, 1);
  v9 = v3;

  __b[4] = v11;
  __b[5] = v9;
  sub_1AC241B38(__b);
  result = v11;
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v11;
  a1[5] = v9;
  return result;
}

void BatteryChargingFeature.baseFeature.getter(uint64_t a1@<X8>)
{
  v7 = 0;
  v8 = 0;
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v5 = &type metadata for BatteryChargingFeature;
  v6 = &off_1F20F4658;
  sub_1AC2589D4(&v4);
  sub_1AC29F3A0(&v4, a1);
}

uint64_t BatteryChargingFeature.handleDeepLink(_:headphoneDevice:host:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v71 = a2;
  v70 = a1;
  v67 = a4;
  v68 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v69 = 0;
  v79 = 0;
  v73 = sub_1AC309E6C();
  v74 = *(v73 - 8);
  v75 = v74;
  v76 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v77 = v28 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v5;
  v99 = v6;
  v98 = v7;
  v8 = v4[1];
  v96 = *v4;
  v97 = v8;
  v95 = static BatteryChargingFeature.supported(_:host:)(v6, v7);
  v93 = HIBYTE(v95);
  v94 = v95;
  v92 = 1;
  v91 = 1;
  if (sub_1AC30B1AC())
  {
    sub_1AC30929C(v80);
    if (v80[3])
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4C0, &qword_1AC311978);
      if (!swift_dynamicCast())
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
      }
    }

    else
    {
      sub_1AC204664(v80);
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
    }

    if (v84)
    {
      v57 = __dst;
      sub_1AC2051E4(&v81, __dst);
      v58 = 0;
      type metadata accessor for BatteryChargingViewController();
      v9 = sub_1AC20D658();
      v56 = v9;
      v79 = v9;
      v10 = v71;
      v11 = *v9;
      v51 = MEMORY[0x1E69E7D40];
      (*((v11 & *MEMORY[0x1E69E7D40]) + 0x80))(v71);
      v12 = v56;
      v52 = v78;
      sub_1AC241BFC(v57, v78);
      (*((*v12 & *v51) + 0x98))(v52);
      v54 = sub_1AC2598E4();
      v55 = sub_1AC30B18C();
      v53 = v13;
      v14 = v72;
      v15 = v56;
      *v53 = v72;
      v16 = v15;
      v53[1] = v56;
      sub_1AC206300();
      v59 = v17;

      __swift_destroy_boxed_opaque_existential_1(v57);
      v60 = v59;
      v61 = v58;
      v62 = v58;
      v63 = v58;
      v64 = v58;
      v65 = v69;
      goto LABEL_15;
    }

    sub_1AC204664(&v81);
  }

  v18 = v77;
  v19 = sub_1AC250850();
  (*(v75 + 16))(v18, v19, v73);
  v49 = sub_1AC309E4C();
  v46 = v49;
  v48 = sub_1AC30AD2C();
  v47 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v50 = sub_1AC30B18C();
  if (os_log_type_enabled(v49, v48))
  {
    v20 = v69;
    v37 = sub_1AC30AE6C();
    v33 = v37;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v35 = 0;
    v38 = sub_1AC213EE4(0, v34, v34);
    v36 = v38;
    v39 = sub_1AC213EE4(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v90 = v37;
    v89 = v38;
    v88 = v39;
    v40 = 0;
    v41 = &v90;
    sub_1AC213F38(0, &v90);
    sub_1AC213F38(v40, v41);
    v87 = v50;
    v42 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v43 = &v28[-6];
    v28[-4] = v21;
    v28[-3] = &v89;
    v28[-2] = &v88;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v45 = v20;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v46, v47, "BatteryCharingFeature: deep link not supported", v33, 2u);
      v31 = 0;
      sub_1AC213F98(v36, 0, v34);
      sub_1AC213F98(v39, v31, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v32 = v45;
    }
  }

  else
  {

    v32 = v69;
  }

  v30 = v32;

  (*(v75 + 8))(v77, v73);
  v29 = 0;
  v28[1] = sub_1AC2598E4();
  v60 = sub_1AC30B18C();
  v61 = v29;
  v62 = v29;
  v63 = v29;
  v64 = v29;
  v65 = v30;
LABEL_15:
  v22 = v67;
  v23 = v61;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  result = v65;
  *v67 = v60;
  v22[1] = v23;
  v22[2] = v24;
  v22[3] = v25;
  v22[4] = v26;
  return result;
}

uint64_t sub_1AC25974C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1AC2597B8(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

unint64_t sub_1AC2598E4()
{
  v2 = qword_1EB54C4B8;
  if (!qword_1EB54C4B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C4B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2599AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI16HeartRateFeature_name);

  return v2;
}

uint64_t sub_1AC2599F8()
{
  result = sub_1AC30A9DC("HEART_RATE_FEATURE_IDENTIFIER", 29, 1);
  qword_1EB54EE48 = result;
  qword_1EB54EE50 = v1;
  return result;
}

uint64_t *sub_1AC259A3C()
{
  if (qword_1EB54EE40 != -1)
  {
    swift_once();
  }

  return &qword_1EB54EE48;
}

uint64_t static HeartRateFeature.identifier.getter()
{
  v1 = *sub_1AC259A3C();

  return v1;
}

uint64_t sub_1AC259AE0(uint64_t a1, uint64_t a2)
{
  sub_1AC30915C();
  sub_1AC3099EC();

  type metadata accessor for AAFeatureCapability(0);
  sub_1AC212BF0();
  LOBYTE(v3) = sub_1AC30B1BC() & 1;
  HIBYTE(v3) = 1;
  return v3;
}

uint64_t sub_1AC259BAC(void *a1, void *a2)
{
  v58 = a2;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v52 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v53 = sub_1AC309AAC();
  v54 = *(v53 - 8);
  v55 = v54;
  MEMORY[0x1EEE9AC00](0);
  v56 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1AC30A90C();
  v60 = *(v59 - 8);
  v61 = v60;
  v4 = MEMORY[0x1EEE9AC00](v57);
  v62 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v6;
  v75 = v7;
  v74 = v2;
  v73 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x58))(v4);
  v71 = HIBYTE(v73);
  v72 = v73;
  v70 = 1;
  v69 = 1;
  if (sub_1AC30B1AC())
  {
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v68 = v50;
    v35 = 7;
    v29 = 1;
    sub_1AC30A9DC("Privacy");
    sub_1AC30A8AC();
    v40 = 0;
    v30 = type metadata accessor for HeartRateFeature();
    v31 = &off_1F20F48B0;
    v28[4] = sub_1AC215DE8(v62, v30);
    v28[5] = v8;
    v33 = *(v61 + 8);
    v32 = v61 + 8;
    v33(v62, v59);
    sub_1AC205220();
    v28[7] = sub_1AC309D3C();
    v9 = v50;
    v28[6] = v28;
    v44 = 24;
    MEMORY[0x1EEE9AC00](v28);
    v43 = sub_1AC309CDC();

    v67 = v50;
    sub_1AC30A9DC("Heart Rate", 10, v29);
    sub_1AC30A8AC();
    v38 = sub_1AC215DE8(v62, v30);
    v39 = v10;
    v33(v62, v59);
    v63 = v40;
    v64 = v40;
    v65 = v40;
    v66 = v40;
    v11 = v57;
    v37 = swift_allocObject();
    *(v37 + 16) = v57;
    v42 = swift_allocObject();
    v34 = v42 + 16;
    v12 = v58;
    swift_unknownObjectWeakInit();

    v13 = v57;
    v14 = swift_allocObject();
    v15 = v57;
    v36 = v14;
    *(v14 + 16) = v42;
    *(v14 + 24) = v15;
    v16 = sub_1AC20599C();
    v41 = &v19;
    v27 = v40;
    v26 = v40;
    v25 = v36;
    v24 = sub_1AC25A7D4;
    v23 = v37;
    v22 = sub_1AC25A560;
    v21 = v40;
    LOBYTE(v20) = v16 & 1;
    v19 = v40;
    sub_1AC309A9C();

    v46 = sub_1AC309D1C();
    (*(v55 + 8))(v56, v53);

    v45 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v27 = v17;
    v47 = sub_1AC309D0C();

    v48 = sub_1AC309D2C();

    return v48;
  }

  else
  {
    v28[1] = 0;
    v28[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC25A260(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v23 = a2;
  v33 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v26 = 0;
  v27 = 0;
  v10 = 0;
  v20 = sub_1AC30A90C();
  v11 = *(v20 - 8);
  v12 = v20 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v8 - v9;
  v33 = v3;
  v32 = v4;
  v31 = v4;
  v13 = 1;
  sub_1AC30A9DC("About Heart Rate", 16, 1, v2);
  sub_1AC30A8AC();
  v14 = type metadata accessor for HeartRateFeature();
  v15 = &off_1F20F48B0;
  v21 = sub_1AC215DE8(v19, v14);
  v25 = v5;
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v19, v20);
  v29 = v21;
  v30 = v25;
  v28 = v23;
  sub_1AC30A9DC("Allow apps to use heart rate sensors to calculate calories burned.", 66, v13 & 1);
  sub_1AC30A8AC();
  v22 = sub_1AC215DE8(v19, v14);
  v24 = v6;
  v18(v19, v20);
  v26 = v22;
  v27 = v24;
  MEMORY[0x1E69E5928](v23);
  sub_1AC30ACDC();
  swift_unknownObjectRelease();
}

id sub_1AC25A49C(uint64_t a1, uint64_t a2)
{
  sub_1AC2068B8();
  sub_1AC30915C();
  v4 = sub_1AC30999C();

  type metadata accessor for AAMultiState(HIDWORD(v4));
  sub_1AC21B624();
  v2 = sub_1AC30B1BC();
  return sub_1AC244124(v2 & 1);
}

uint64_t sub_1AC25A568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[6] = a2;
  v9[5] = a3 + 16;
  v9[4] = a4;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v6);
    [v6 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  sub_1AC30915C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/HeartRateFeature.swift", 42, 2, 42, 0);
    __break(1u);
  }

  swift_unknownObjectRelease();
  sub_1AC3099AC();
}

double sub_1AC25A7E0(void *a1)
{
  sub_1AC259A3C();

  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC25A868()
{
  v26 = 0;
  v25 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v22 = v8 - v14;
  v24 = sub_1AC30901C();
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v16 = v8 - v15;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v8 - v15);
  v18 = v8 - v17;
  v26 = v8 - v17;
  v25 = v0;
  v23 = 1;
  sub_1AC30A9DC("https://support.apple.com/guide/airpods/dev1b40fb47d", 52, 1, v3);
  v19 = v4;
  sub_1AC30900C();

  if ((*(v20 + 48))(v22, v23, v24) == 1)
  {
    return sub_1AC247D84(v22);
  }

  v5 = v16;
  (*(v20 + 32))(v18, v22, v24);
  v11 = [objc_opt_self() sharedApplication];
  (*(v20 + 16))(v5, v18, v24);
  v10 = sub_1AC308FEC();
  v13 = *(v20 + 8);
  v12 = v20 + 8;
  v13(v16, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320, &qword_1AC3113C0);
  v8[0] = 0;
  v8[1] = sub_1AC30B18C();
  v8[2] = type metadata accessor for OpenExternalURLOptionsKey(v8[0]);
  v8[4] = sub_1AC247EC4();
  v8[3] = MEMORY[0x1E69E7CA0] + 8;
  v8[5] = sub_1AC30A83C();
  v9 = sub_1AC30A81C();

  [v11 openURL:v10 options:v9 completionHandler:0];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v6 = MEMORY[0x1E69E5920](v11);
  return (v13)(v18, v24, v6);
}

id HeartRateFeature.init()()
{
  v5 = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI16HeartRateFeature_name;
  *v2 = sub_1AC30A9DC("Heart Rate Feature", 18, 1);
  v2[1] = v0;
  v4.receiver = v5;
  v4.super_class = type metadata accessor for HeartRateFeature();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v5 = v3;
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id HeartRateFeature.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateFeature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC25AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v20 = a2;
  v18 = a3;
  v19 = a4;
  sub_1AC30915C();
  v5 = sub_1AC30986C();

  v17 = v5;
  v16 = 2;
  type metadata accessor for AAFeatureCapability(0);
  sub_1AC212BF0();
  v6 = sub_1AC30B1BC();
  v15 = v6 & 1;
  sub_1AC30929C(v9);
  if (v9[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4D0, &qword_1AC312900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v8 = v13 != 0;
  sub_1AC204664(&v10);
  LOBYTE(v7) = v8;
  HIBYTE(v7) = v6 & 1;
  return v7;
}

uint64_t sub_1AC25B110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __dst[8] = a1;
  __dst[7] = a2;
  __dst[5] = a3;
  __dst[6] = a4;
  sub_1AC30929C(v12);
  if (v12[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4D0, &qword_1AC312900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  if (v16)
  {
    sub_1AC2051E4(&v13, __dst);
    v9 = type metadata accessor for BobbleSettingsViewController();
    v4 = MEMORY[0x1E69E5928](a1);
    v10 = (*(v9 + 344))(a1, v4);
    swift_unknownObjectRelease();
    if (v10)
    {
      v7 = sub_1AC28A2BC(a1);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v7;
    }

    else
    {
      sub_1AC215CB0();
      v6 = sub_1AC30B18C();
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v6;
    }
  }

  else
  {
    sub_1AC204664(&v13);
    sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC25B2F0()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Bobble Feature", 14, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

void sub_1AC25B3C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[5] = a1;
  v5[6] = a2;
  v5[3] = &unk_1F20F4968;
  v5[4] = &off_1F20F48B8;
  v5[0] = sub_1AC25B2F0();
  v5[1] = v3;
  sub_1AC29F3A0(v5, a3);
}

void sub_1AC25B460(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_1AC2598E4();
  sub_1AC30B18C();
  v5 = v2;
  MEMORY[0x1E69E5928](a1);
  *v5 = a1;
  type metadata accessor for BobbleSettingsViewController();
  v5[1] = sub_1AC20D658();
  sub_1AC206300();
  *a2 = v3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
}

uint64_t sub_1AC25B5D0(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  [v3 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  v4 = sub_1AC30B1BC();
  if (sub_1AC3092FC())
  {
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  LOBYTE(v5) = 1;
  HIBYTE(v5) = v2 & 1;
  return v5;
}

uint64_t sub_1AC25B6F0(void *a1, void *a2, uint64_t a3)
{
  v59 = a3;
  v61 = a2;
  v60 = a1;
  v54 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v55 = sub_1AC30A90C();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x1EEE9AC00](0);
  v58 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AC309AAC();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v60);
  v65 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v5;
  v78 = v6;
  v77 = v7;
  v76 = sub_1AC25B5D0(v5);
  v74 = HIBYTE(v76);
  v75 = v76;
  v73 = 1;
  v72 = 1;
  if (sub_1AC30B1AC())
  {
    v45 = 1;
    sub_1AC30A9DC("Personalized Volume", 19);
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v58, &unk_1F20F4A10);
    v37 = v8;
    (*(v57 + 8))(v58, v55);
    v44 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v9 = v60;
    v40 = 24;
    v33 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    v39 = swift_allocObject();
    v32 = v39 + 16;
    v10 = v61;
    swift_unknownObjectWeakInit();

    v11 = v60;
    v12 = swift_allocObject();
    v13 = v60;
    v34 = v12;
    *(v12 + 16) = v39;
    *(v12 + 24) = v13;
    v14 = sub_1AC20599C();
    v38 = &v20;
    v28 = v44;
    v27 = v44;
    v26 = v34;
    v25 = sub_1AC25BFA4;
    v24 = v35;
    v23 = sub_1AC25BD5C;
    v22 = v44;
    LOBYTE(v21) = v14 & 1;
    v20 = v44;
    sub_1AC309A9C();

    v42 = sub_1AC309D1C();
    (*(v64 + 8))(v65, v62);
    v15 = v60;
    v41 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v28 = v16;
    v43 = sub_1AC309D0C();

    v46 = sub_1AC215CB0();
    v47 = v46;
    v48 = sub_1AC30B18C();
    v49 = v17;
    v51 = sub_1AC309D2C();
    v67 = v51;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v53 = v66;
    v52 = v66;

    if (v53)
    {
      v31 = v52;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/PersonalizedVolumeFeature.swift", 51, 2, 42, 0);
      __break(1u);
    }

    *v49 = v31;
    sub_1AC206300();
    return v18;
  }

  else
  {
    v29[0] = 0;
    v29[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

id sub_1AC25BD04()
{
  sub_1AC2068B8();
  v0 = sub_1AC30925C();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC25BD64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[6] = a2;
  v9[5] = a3 + 16;
  v9[4] = a4;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v6);
    [v6 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/PersonalizedVolumeFeature.swift", 51, 2, 31, 0);
    __break(1u);
  }

  sub_1AC30926C();
  swift_unknownObjectRelease();
  return sub_1AC30942C();
}

uint64_t sub_1AC25BFB0(void *a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v20 = sub_1AC30A90C();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v8 - v23;
  v31 = v3;
  v30 = a2;
  v29 = sub_1AC30925C() & 1;
  if (v29)
  {
    sub_1AC30A9DC("On", 2, 1);
    sub_1AC30A8AC();
    v14 = sub_1AC215DE8(v24, &unk_1F20F4A10);
    v15 = v4;
    (*(v21 + 8))(v24, v20);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    sub_1AC30A9DC("Off", 3, 1);
    sub_1AC30A8AC();
    v12 = sub_1AC215DE8(v24, &unk_1F20F4A10);
    v13 = v5;
    (*(v21 + 8))(v24, v20);
    v16 = v12;
    v17 = v13;
  }

  v11 = v17;
  v9 = v16;
  v27 = v16;
  v28 = v17;
  sub_1AC30A9DC("Adjusts the volume of media in response to your environment.", 60, 1);
  sub_1AC30A8AC();
  v8 = sub_1AC215DE8(v24, &unk_1F20F4A10);
  v10 = v6;
  (*(v21 + 8))(v24, v20);
  v25 = v8;
  v26 = v10;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v19, v18, v8, v10, v9, v11, 0);
}

unint64_t sub_1AC25C2AC()
{
  v2 = qword_1EB54C4D8;
  if (!qword_1EB54C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378, &qword_1AC311CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C4D8);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC25C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *sub_1AC25C41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice = 0;
  v3 = &v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection] = 0;

  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for BatteryChargingViewController();
  v5 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v14 = v5;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v14);
  return v5;
}

void sub_1AC25C5F4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t sub_1AC25C6D8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC25C748(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC25C84C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent);
  swift_beginAccess();
  sub_1AC25C8B0(v3, a1);
  return swift_endAccess();
}

void *sub_1AC25C8B0(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void *sub_1AC25C944(void *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_1AC25C8B0(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent);
  swift_beginAccess();
  sub_1AC25C9C8(v5, v3);
  swift_endAccess();
  return sub_1AC204664(a1);
}

void *sub_1AC25C9C8(const void *a1, void *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void sub_1AC25CAF8()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController_featureContent = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

uint64_t sub_1AC25CC3C()
{
  v90 = sub_1AC20A6B4;
  v91 = sub_1AC2559F4;
  v92 = sub_1AC215C98;
  v93 = sub_1AC25DAF0;
  v94 = sub_1AC2572B0;
  v95 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v97 = sub_1AC215CA4;
  v98 = sub_1AC215C90;
  v99 = sub_1AC215C90;
  v100 = sub_1AC2572BC;
  v118 = 0;
  v117 = 0;
  v101 = 0;
  v111 = 0;
  v102 = sub_1AC309E6C();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v102);
  v106 = v39 - v105;
  v118 = v0;
  v107 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))(v1);
  if (!v107)
  {
LABEL_8:
    v15 = v106;
    v49 = 0;
    v50 = sub_1AC215CB0();
    v51 = sub_1AC30B18C();

    v117 = v51;
    v54 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v52 = v16;
    v53 = sub_1AC30A91C();

    [v89 setValue:v54 forKey:v53];
    MEMORY[0x1E69E5920](v53);
    swift_unknownObjectRelease();
    v17 = sub_1AC274D88();
    (*(v103 + 16))(v15, v17, v102);
    v70 = sub_1AC309E4C();
    v71 = sub_1AC30AD1C();
    v56 = 17;
    v59 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    v57 = 8;
    *(v62 + 16) = 8;
    v58 = 32;
    v18 = swift_allocObject();
    v55 = v18;
    *(v18 + 16) = v91;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v55;
    v63 = v19;
    *(v19 + 16) = v92;
    *(v19 + 24) = v20;
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v57;
    v21 = swift_allocObject();
    v60 = v21;
    *(v21 + 16) = v93;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v60;
    v67 = v22;
    *(v22 + 16) = v94;
    *(v22 + 24) = v23;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v66 = sub_1AC30B18C();
    v68 = v24;

    v25 = v61;
    v26 = v68;
    *v68 = v95;
    v26[1] = v25;

    v27 = v62;
    v28 = v68;
    v68[2] = v96;
    v28[3] = v27;

    v29 = v63;
    v30 = v68;
    v68[4] = v97;
    v30[5] = v29;

    v31 = v64;
    v32 = v68;
    v68[6] = v98;
    v32[7] = v31;

    v33 = v65;
    v34 = v68;
    v68[8] = v99;
    v34[9] = v33;

    v35 = v67;
    v36 = v68;
    v68[10] = v100;
    v36[11] = v35;
    sub_1AC206300();

    if (os_log_type_enabled(v70, v71))
    {
      v37 = v101;
      v41 = sub_1AC30AE6C();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v42 = sub_1AC213EE4(0, v40, v40);
      v43 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v45 = &v116;
      v116 = v41;
      v46 = &v115;
      v115 = v42;
      v47 = &v114;
      v114 = v43;
      v44 = 2;
      sub_1AC213F38(2, &v116);
      sub_1AC213F38(v44, v45);
      v112 = v95;
      v113 = v61;
      sub_1AC213F4C(&v112, v45, v46, v47);
      v48 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v112 = v96;
        v113 = v62;
        sub_1AC213F4C(&v112, &v116, &v115, &v114);
        v39[3] = 0;
        v112 = v97;
        v113 = v63;
        sub_1AC213F4C(&v112, &v116, &v115, &v114);
        v39[2] = 0;
        v112 = v98;
        v113 = v64;
        sub_1AC213F4C(&v112, &v116, &v115, &v114);
        v39[1] = 0;
        v112 = v99;
        v113 = v65;
        sub_1AC213F4C(&v112, &v116, &v115, &v114);
        v39[0] = 0;
        v112 = v100;
        v113 = v67;
        sub_1AC213F4C(&v112, &v116, &v115, &v114);
        _os_log_impl(&dword_1AC1C3000, v70, v71, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty controller!", v41, 0x16u);
        sub_1AC213F98(v42, 0, v40);
        sub_1AC213F98(v43, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v38 = MEMORY[0x1E69E5920](v70);
    (*(v103 + 8))(v106, v102, v38);
    sub_1AC209190(&v117);
    return 0;
  }

  v88 = v107;
  v87 = v107;
  v111 = v107;
  (*((*v89 & *MEMORY[0x1E69E7D40]) + 0x90))(v109);
  if (!v109[3])
  {
    sub_1AC204664(v109);
    MEMORY[0x1E69E5920](v87);
    goto LABEL_8;
  }

  v2 = v101;
  v3 = v89;
  sub_1AC2051E4(v109, &__dst);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v82 = sub_1AC30B18C();
  v81 = v4;
  v5 = *v3;
  v80 = MEMORY[0x1E69E7D40];
  v6 = (*((v5 & *MEMORY[0x1E69E7D40]) + 0xA8))();
  v7 = v89;
  v8 = v80;
  *v81 = v6;
  v9 = (*((*v7 & *v8) + 0xC0))();
  v10 = v89;
  v11 = v80;
  v81[1] = v9;
  v81[2] = (*((*v10 & *v11) + 0xD8))();
  sub_1AC206300();
  v108 = v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v85 = sub_1AC263B38();
  sub_1AC24D54C();
  result = sub_1AC30AA8C();
  v86 = result;
  if (!v2)
  {
    v76 = v86;
    sub_1AC209190(&v108);

    v77 = &v117;
    v117 = v76;
    v75 = sub_1AC215CB0();
    v74 = sub_1AC30AAFC();
    sub_1AC30A9DC("_specifiers", 11, 1);
    v72 = v14;
    v73 = sub_1AC30A91C();

    [v89 setValue:v74 forKey:v73];
    MEMORY[0x1E69E5920](v73);
    swift_unknownObjectRelease();
    v78 = sub_1AC30B02C();

    __swift_destroy_boxed_opaque_existential_1(&__dst);
    MEMORY[0x1E69E5920](v87);
    sub_1AC209190(v77);
    return v78;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC25DBC0()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC25DCB4(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25DCB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  sub_1AC309AAC();
  sub_1AC205220();
  sub_1AC205220();
  sub_1AC309D3C();
  MEMORY[0x1E69E5928](a1);
  sub_1AC309CDC();
  MEMORY[0x1E69E5920](a1);

  v3 = sub_1AC309D2C();

  return v3;
}

uint64_t sub_1AC25DDC0(void *a1, void *a2)
{
  v50 = a2;
  v39 = a1;
  v48 = 0;
  v59 = 0;
  v58 = 0;
  v53 = 0;
  v52 = 0;
  v35 = sub_1AC30A90C();
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1AC30A8EC();
  v41 = *(v40 - 8);
  v42 = v41;
  v44 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v18 - v46;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v18 - v46;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v18 - v46;
  v59 = v5;
  v58 = v6;
  v57 = v6;
  v49 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC("", v48, v49);
  v51 = v7;
  sub_1AC30A8CC();
  v8 = v50;

  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x90))(&v54, v9);
  if (!v55)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 48, 0);
    __break(1u);
  }

  v22 = v55;
  v19 = v56;
  v26 = &v54;
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  v18 = *(v22 - 8);
  v20 = v18;
  v25 = &v18;
  v10 = MEMORY[0x1EEE9AC00](&v18);
  v21 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v21, v10);
  v23 = (*(*(v19 + 8) + 24))(v22);
  v24 = v12;
  (*(v20 + 8))(v21, v22);
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1AC30A9DC(" batteries, like all rechargeable batteries, have a limited lifespan and may eventually need to be serviced or recycled.", 120, 1, v18);
  v27 = v13;
  sub_1AC30A8CC();

  (*(v42 + 16))(v45, v47, v40);
  (*(v42 + 32))(v43, v45, v40);
  (*(v42 + 8))(v47, v40);
  sub_1AC30A8FC();
  v28 = type metadata accessor for BatteryChargingViewController();
  v29 = sub_1AC215DE8(v38, v28);
  v34 = v14;
  (*(v37 + 8))(v38, v35);
  v52 = v29;
  v53 = v34;

  v33 = sub_1AC30A91C();

  v31 = *MEMORY[0x1E69C5900];
  v15 = v31;
  sub_1AC30A92C();
  v30 = v16;
  v32 = sub_1AC30A91C();

  [v39 setProperty:v33 forKey:v32];
  swift_unknownObjectRelease();
}

uint64_t sub_1AC25E394(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___topFooterSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC25E414(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC25DBC0();
  return sub_1AC25E470;
}

void sub_1AC25E470(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC25E394(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC25E394(*a1);
  }
}

uint64_t sub_1AC25E4DC()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC25E5D0(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC25E5D0(void *a1)
{
  v37 = a1;
  v38 = 0;
  v55 = 0;
  v54 = 0;
  v39 = sub_1AC30A90C();
  v40 = *(v39 - 8);
  v41 = v40;
  MEMORY[0x1EEE9AC00](0);
  v42 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1AC309AAC();
  v44 = *(v43 - 8);
  v45 = v44;
  v3 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v47 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x78))(v3);
  if (v47)
  {
    v36 = v47;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 54, 0);
    __break(1u);
  }

  v28 = v36;
  v29 = sub_1AC30915C();
  v54 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v30 = MEMORY[0x1E69A2B08];
  v31 = sub_1AC205220();
  v32 = v5;
  sub_1AC205220();
  v35 = sub_1AC309D3C();
  v6 = v37;
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v34 = sub_1AC309CDC();

  if (sub_1AC263548())
  {
    v48 = v37;
    sub_1AC30A9DC("Optimized Charge Limit", 22, 1);
    sub_1AC30A8AC();
    v23 = type metadata accessor for BatteryChargingViewController();
    v24 = sub_1AC215DE8(v42, v23);
    v25 = v7;
    (*(v41 + 8))(v42, v39);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v53 = v37;
    sub_1AC30A9DC("Optimized Battery Charging", 26, 1);
    sub_1AC30A8AC();
    v20 = type metadata accessor for BatteryChargingViewController();
    v21 = sub_1AC215DE8(v42, v20);
    v22 = v8;
    (*(v41 + 8))(v42, v39);
    v26 = v21;
    v27 = v22;
  }

  v16[7] = v27;
  v16[6] = v26;
  v16[8] = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v9 = v37;

  v16[2] = 32;
  v16[3] = 7;
  v10 = swift_allocObject();
  v11 = v29;
  v16[5] = v10;
  *(v10 + 16) = v37;
  *(v10 + 24) = v11;
  v17 = swift_allocObject();
  v16[1] = v17 + 16;
  v12 = v37;
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  v14 = v29;
  v16[4] = v13;
  *(v13 + 16) = v17;
  *(v13 + 24) = v14;
  sub_1AC20599C();
  sub_1AC309A9C();

  v18 = sub_1AC309D1C();
  (*(v45 + 8))(v46, v43);

  v19 = sub_1AC309D2C();

  return v19;
}

void sub_1AC25EC4C(void *a1, void *a2)
{
  v99 = a2;
  v105 = a1;
  v100 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v128 = 0;
  v127 = 0;
  v101 = sub_1AC30A90C();
  v102 = *(v101 - 8);
  v103 = v102;
  MEMORY[0x1EEE9AC00](0);
  v104 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1AC30A8EC();
  v107 = *(v106 - 8);
  v108 = v107;
  v111 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v35 - v113;
  MEMORY[0x1EEE9AC00](v4);
  v110 = v35 - v113;
  MEMORY[0x1EEE9AC00](v5);
  v112 = v35 - v113;
  MEMORY[0x1EEE9AC00](v6);
  v114 = v35 - v113;
  v135 = v7;
  v134 = a2;
  if (sub_1AC263548())
  {
    v118 = v99;
    v97 = 1;
    sub_1AC30A8DC();
    sub_1AC30A9DC("", 0, v97);
    v98 = v8;
    sub_1AC30A8CC();
    v9 = v99;

    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x90))(&v115, v10);
    if (!v116)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 60, 0);
      __break(1u);
    }

    v84 = v116;
    v81 = v117;
    v88 = &v115;
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v80 = *(v84 - 8);
    v82 = v80;
    v87 = v35;
    v11 = MEMORY[0x1EEE9AC00](v35);
    v83 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v83, v11);
    v85 = (*(*(v81 + 8) + 24))(v84);
    v86 = v13;
    (*(v82 + 8))(v83, v84);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v88);
    sub_1AC30A9DC(" can learn from your daily usage and determine when to charge to an optimized limit and when to allow for full charge. This limit adapts to your daily usage and preserves your battery lifespan over time.", 203, 1);
    v89 = v14;
    sub_1AC30A8CC();

    (*(v108 + 16))(v112, v114, v106);
    (*(v108 + 32))(v110, v112, v106);
    (*(v108 + 8))(v114, v106);
    sub_1AC30A8FC();
    v90 = type metadata accessor for BatteryChargingViewController();
    v92 = sub_1AC215DE8(v104, v90);
    v93 = v15;
    v91 = v92;
    v94 = v15;
    (*(v103 + 8))(v104, v101);

    v132 = v92;
    v133 = v93;
    v95 = v91;
    v96 = v94;
  }

  else
  {
    v77 = [objc_opt_self() currentDevice];
    v78 = [v77 userInterfaceIdiom];

    v131 = v78;
    v130 = 1;
    v79 = type metadata accessor for UIUserInterfaceIdiom(0);
    sub_1AC2052F0();
    if (sub_1AC30B1BC())
    {
      v119 = v99;
      sub_1AC30A9DC("iPad", 4, 1);
      sub_1AC30A8AC();
      v72 = type metadata accessor for BatteryChargingViewController();
      v73 = sub_1AC215DE8(v104, v72);
      v74 = v16;
      (*(v103 + 8))(v104, v101);
      v75 = v73;
      v76 = v74;
    }

    else
    {
      v129 = v99;
      sub_1AC30A9DC("iPhone", 6, 1);
      sub_1AC30A8AC();
      v69 = type metadata accessor for BatteryChargingViewController();
      v70 = sub_1AC215DE8(v104, v69);
      v71 = v17;
      (*(v103 + 8))(v104, v101);
      v75 = v70;
      v76 = v71;
    }

    v66 = v76;
    v65 = v75;
    v127 = v75;
    v128 = v76;
    v126 = v99;
    sub_1AC30A8DC();
    v67 = 1;
    sub_1AC30A9DC("To reduce battery aging, ", 25);
    v64 = v18;
    sub_1AC30A8CC();

    sub_1AC30A8BC();
    sub_1AC30A9DC(" and ", 5, v67);
    v68 = v19;
    sub_1AC30A8CC();
    v20 = v99;

    (*((*v20 & *MEMORY[0x1E69E7D40]) + 0x90))(&v123, v21);
    if (!v124)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 63, 0);
      __break(1u);
    }

    v58 = v124;
    v55 = v125;
    v62 = &v123;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    v54 = *(v58 - 8);
    v56 = v54;
    v61 = v35;
    v22 = MEMORY[0x1EEE9AC00](v35);
    v57 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v57, v22);
    v59 = (*(*(v55 + 8) + 24))(v58);
    v60 = v24;
    (*(v56 + 8))(v57, v58);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1AC30A9DC(" learn from your daily charging routine so ", 43, 1);
    v63 = v25;
    sub_1AC30A8CC();
    v26 = v99;

    (*((*v26 & *MEMORY[0x1E69E7D40]) + 0x90))(&v120, v27);
    if (!v121)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 63, 0);
      __break(1u);
    }

    v43 = v121;
    v40 = v122;
    v47 = &v120;
    __swift_project_boxed_opaque_existential_1(&v120, v121);
    v39 = *(v43 - 8);
    v41 = v39;
    v46 = v35;
    v28 = MEMORY[0x1EEE9AC00](v35);
    v42 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v42, v28);
    v44 = (*(*(v40 + 8) + 24))(v43);
    v45 = v30;
    (*(v41 + 8))(v42, v43);
    sub_1AC30A8BC();

    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_1AC30A9DC(" can wait to finish charging past 80% until you need to use them.", LODWORD(v35[0]));
    v48 = v31;
    sub_1AC30A8CC();

    (*(v108 + 16))(v112, v109, v106);
    (*(v108 + 32))(v110, v112, v106);
    (*(v108 + 8))(v109, v106);
    sub_1AC30A8FC();
    v49 = type metadata accessor for BatteryChargingViewController();
    v50 = sub_1AC215DE8(v104, v49);
    v51 = v32;
    v52 = v50;
    v53 = v32;
    (*(v103 + 8))(v104, v101);

    v132 = v50;
    v133 = v51;

    v95 = v52;
    v96 = v53;
  }

  v35[0] = v96;
  v38 = sub_1AC30A91C();

  v36 = *MEMORY[0x1E69C5900];
  v33 = v36;
  sub_1AC30A92C();
  v35[1] = v34;
  v37 = sub_1AC30A91C();

  [v105 setProperty:v38 forKey:v37];
  swift_unknownObjectRelease();
  sub_1AC2063F0(&v132);
}

id sub_1AC25FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v70 = a1;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v68 = 0;
  v71 = sub_1AC309E6C();
  v72 = *(v71 - 8);
  v73 = v72;
  v74 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = &v18 - v76;
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v18 - v76;
  v92 = v5;
  v91 = a2;
  v90 = v6;
  if (sub_1AC263548())
  {
    v7 = v77;
    v8 = sub_1AC250850();
    (*(v73 + 16))(v7, v8, v71);
    v66 = sub_1AC309E4C();
    v63 = v66;
    v65 = sub_1AC30AD2C();
    v64 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v67 = sub_1AC30B18C();
    if (os_log_type_enabled(v66, v65))
    {
      v9 = v68;
      v54 = sub_1AC30AE6C();
      v50 = v54;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v52 = 0;
      v55 = sub_1AC213EE4(0, v51, v51);
      v53 = v55;
      v56 = sub_1AC213EE4(v52, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v81 = v54;
      v80 = v55;
      v79 = v56;
      v57 = 0;
      v58 = &v81;
      sub_1AC213F38(0, &v81);
      sub_1AC213F38(v57, v58);
      v78 = v67;
      v59 = &v18;
      MEMORY[0x1EEE9AC00](&v18);
      v60 = &v18 - 6;
      *(&v18 - 4) = v10;
      *(&v18 - 3) = &v80;
      *(&v18 - 2) = &v79;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v62 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v63, v64, "BatteryCharingFeature: reading dynamicEndOfChargeState", v50, 2u);
        v48 = 0;
        sub_1AC213F98(v53, 0, v51);
        sub_1AC213F98(v56, v48, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v49 = v62;
      }
    }

    else
    {

      v49 = v68;
    }

    v45 = v49;

    (*(v73 + 8))(v77, v71);
    v43 = 0;
    v42 = sub_1AC2068B8();
    v83 = sub_1AC30992C();
    v82 = 1;
    v44 = type metadata accessor for AAChargingFeatureEnablementState(v43);
    sub_1AC263E78();
    v11 = sub_1AC30B1BC();
    v46 = sub_1AC244124(v11 & 1);
    v47 = v45;
  }

  else
  {
    v12 = v75;
    v13 = sub_1AC250850();
    (*(v73 + 16))(v12, v13, v71);
    v40 = sub_1AC309E4C();
    v37 = v40;
    v39 = sub_1AC30AD2C();
    v38 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v41 = sub_1AC30B18C();
    if (os_log_type_enabled(v40, v39))
    {
      v14 = v68;
      v28 = sub_1AC30AE6C();
      v24 = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v26 = 0;
      v29 = sub_1AC213EE4(0, v25, v25);
      v27 = v29;
      v30 = sub_1AC213EE4(v26, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v87 = v28;
      v86 = v29;
      v85 = v30;
      v31 = 0;
      v32 = &v87;
      sub_1AC213F38(0, &v87);
      sub_1AC213F38(v31, v32);
      v84 = v41;
      v33 = &v18;
      MEMORY[0x1EEE9AC00](&v18);
      v34 = &v18 - 6;
      *(&v18 - 4) = v15;
      *(&v18 - 3) = &v86;
      *(&v18 - 2) = &v85;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v36 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v37, v38, "BatteryCharingFeature: reading optimizedBatteryChargingState", v24, 2u);
        v22 = 0;
        sub_1AC213F98(v27, 0, v25);
        sub_1AC213F98(v30, v22, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v23 = v36;
      }
    }

    else
    {

      v23 = v68;
    }

    v21 = v23;

    (*(v73 + 8))(v75, v71);
    v19 = 0;
    v18 = sub_1AC2068B8();
    v89 = sub_1AC309A3C();
    v88 = 1;
    v20 = type metadata accessor for AAChargingFeatureEnablementState(v19);
    sub_1AC263E78();
    v16 = sub_1AC30B1BC();
    v46 = sub_1AC244124(v16 & 1);
    v47 = v21;
  }

  return v46;
}

double sub_1AC2605A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a1;
  v100 = a2;
  v97 = a3;
  v98 = a4;
  v99 = 0;
  v92 = sub_1AC263BFC;
  v93 = sub_1AC263C38;
  v94 = sub_1AC263C04;
  v95 = sub_1AC263C18;
  v96 = sub_1AC263C2C;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v123 = 0;
  v120 = 0;
  v119 = 0;
  v116 = 0;
  v114 = 0;
  v102 = sub_1AC30A90C();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101);
  v106 = &v49 - v105;
  v128 = v4;
  v127 = v5;
  v107 = v6 + 16;
  v126 = v6 + 16;
  v125 = v7;
  v108 = v124;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v91 = Strong;
    v90 = Strong;
    v123 = Strong;
    v9 = sub_1AC263548();
    if (v9)
    {

      v121 = v93;
    }

    else
    {

      v121 = v92;
    }

    v122 = v98;
    swift_unknownObjectRetain();
    objc_opt_self();
    v89 = swift_dynamicCastObjCClassUnconditional();
    v120 = v89;
    v119 = [v89 BOOLValue] & 1;
    if (v119)
    {
      v87 = v121;
      v88 = v122;

      v87(1u);
    }

    else
    {
      v86 = sub_1AC21E88C();
      if (sub_1AC263548())
      {
        v110 = v90;
        sub_1AC30A9DC("Optimized Charge Limit", 22, 1);
        sub_1AC30A8AC();
        v10 = type metadata accessor for BatteryChargingViewController();
        v82 = sub_1AC215DE8(v106, v10);
        v83 = v11;
        (*(v103 + 8))(v106, v102);
        v84 = v82;
        v85 = v83;
      }

      else
      {
        v118 = v90;
        sub_1AC30A9DC("Optimized Battery Charging", 26, 1);
        sub_1AC30A8AC();
        v12 = type metadata accessor for BatteryChargingViewController();
        v80 = sub_1AC215DE8(v106, v12);
        v81 = v13;
        (*(v103 + 8))(v106, v102);
        v84 = v80;
        v85 = v81;
      }

      v78 = v85;
      v79 = v84;
      if (sub_1AC263548())
      {
        v111 = v90;
        sub_1AC30A9DC("Optimized Charge Limit helps reduce battery aging.", 50, 1);
        sub_1AC30A8AC();
        v14 = type metadata accessor for BatteryChargingViewController();
        v74 = sub_1AC215DE8(v106, v14);
        v75 = v15;
        (*(v103 + 8))(v106, v102);
        v76 = v74;
        v77 = v75;
      }

      else
      {
        v117 = v90;
        sub_1AC30A9DC("Optimized Battery Charging helps reduce battery aging.", 54, 1);
        sub_1AC30A8AC();
        v16 = type metadata accessor for BatteryChargingViewController();
        v72 = sub_1AC215DE8(v106, v16);
        v73 = v17;
        (*(v103 + 8))(v106, v102);
        v76 = v72;
        v77 = v73;
      }

      v71 = sub_1AC21CFE0(v79, v78, v76, v77, 1);
      v116 = v71;
      v65 = 0;
      v60 = sub_1AC21E8F0();
      v115 = v90;
      v69 = 1;
      sub_1AC30A9DC("Turn Off Until Tomorrow", 23, 1);
      sub_1AC30A8AC();
      v58 = type metadata accessor for BatteryChargingViewController();
      v59 = &off_1F20F4B60;
      v51 = sub_1AC215DE8(v106, v58);
      v50 = v18;
      v62 = *(v103 + 8);
      v61 = v103 + 8;
      v62(v106, v102);
      v53 = v121;
      v54 = v122;

      MEMORY[0x1E69E5928](v90);
      MEMORY[0x1E69E5928](v100);
      v52 = 48;
      v63 = 7;
      v19 = swift_allocObject();
      v20 = v50;
      v21 = v94;
      v22 = v54;
      v23 = v100;
      v24 = v65;
      v25 = v90;
      v26 = v19;
      v27 = v51;
      v26[2] = v53;
      v26[3] = v22;
      v26[4] = v25;
      v26[5] = v23;
      v70 = sub_1AC21E3FC(v27, v20, v24, v21, v26);
      v114 = v70;
      v67 = 0x1FAE81000uLL;
      [v71 0x1FAE81FF8];
      v113 = v90;
      sub_1AC30A9DC("Turn Off", 8, v69 & 1);
      sub_1AC30A8AC();
      v56 = sub_1AC215DE8(v106, v58);
      v55 = v28;
      v62(v106, v102);
      MEMORY[0x1E69E5928](v90);
      MEMORY[0x1E69E5928](v100);
      v29 = swift_allocObject();
      v30 = v54;
      v31 = v55;
      v32 = v95;
      v33 = v100;
      v34 = v65;
      v35 = v90;
      v36 = v29;
      v37 = v56;
      v36[2] = v53;
      v36[3] = v30;
      v36[4] = v35;
      v36[5] = v33;
      v57 = sub_1AC21E3FC(v37, v31, v34, v32, v36);
      [v71 (v67 + 4088)];
      *&v38 = MEMORY[0x1E69E5920](v57).n128_u64[0];
      v112 = v90;
      sub_1AC30A9DC("Cancel", 6, v69 & 1, v38);
      sub_1AC30A8AC();
      v66 = sub_1AC215DE8(v106, v58);
      v64 = v39;
      v62(v106, v102);
      MEMORY[0x1E69E5928](v90);
      MEMORY[0x1E69E5928](v100);
      v40 = swift_allocObject();
      v41 = v100;
      v42 = v64;
      v43 = v65;
      v44 = v96;
      v45 = v40;
      v46 = v66;
      *(v45 + 16) = v90;
      *(v45 + 24) = v41;
      v68 = sub_1AC21E3FC(v46, v42, v43, v44, v45);
      [v71 (v67 + 4088)];
      MEMORY[0x1E69E5920](v68);
      *&v47 = MEMORY[0x1E69E5928](v70).n128_u64[0];
      [v71 setPreferredAction_];
      *&v48 = MEMORY[0x1E69E5920](v70).n128_u64[0];
      [v90 presentViewController:v71 animated:v69 & 1 completion:{0, v48}];
      MEMORY[0x1E69E5920](v70);
      MEMORY[0x1E69E5920](v71);
    }

    MEMORY[0x1E69E5920](v89);

    *&result = MEMORY[0x1E69E5920](v90).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC261184(unsigned int a1, uint64_t a2)
{
  v39 = a1;
  v33 = a2;
  v41 = sub_1AC263C40;
  v45 = sub_1AC263C84;
  v47 = sub_1AC215C90;
  v49 = sub_1AC215C90;
  v52 = sub_1AC263C90;
  v64 = 0;
  v63 = 0;
  v32 = 0;
  v38 = sub_1AC309E6C();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v2 = &v20 - v34;
  v35 = &v20 - v34;
  v64 = v3;
  v63 = v4;
  v5 = sub_1AC250850();
  (*(v36 + 16))(v2, v5, v38);
  v40 = 17;
  v43 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v56 = sub_1AC309E4C();
  v57 = sub_1AC30AD2C();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 1;
  v42 = 32;
  v6 = swift_allocObject();
  v7 = v44;
  v46 = v6;
  *(v6 + 16) = v41;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v46;
  v53 = v8;
  *(v8 + 16) = v45;
  *(v8 + 24) = v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v51 = sub_1AC30B18C();
  v54 = v10;

  v11 = v48;
  v12 = v54;
  *v54 = v47;
  v12[1] = v11;

  v13 = v50;
  v14 = v54;
  v54[2] = v49;
  v14[3] = v13;

  v15 = v53;
  v16 = v54;
  v54[4] = v52;
  v16[5] = v15;
  sub_1AC206300();

  if (os_log_type_enabled(v56, v57))
  {
    v17 = v32;
    v25 = sub_1AC30AE6C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v24 = 0;
    v26 = sub_1AC213EE4(0, v23, v23);
    v27 = sub_1AC213EE4(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    sub_1AC213F38(0, &v62);
    sub_1AC213F38(1, v28);
    v58 = v47;
    v59 = v48;
    sub_1AC213F4C(&v58, v28, v29, v30);
    v31 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_1AC213F4C(&v58, &v62, &v61, &v60);
      v22 = 0;
      v58 = v52;
      v59 = v53;
      sub_1AC213F4C(&v58, &v62, &v61, &v60);
      _os_log_impl(&dword_1AC1C3000, v56, v57, "BatteryCharingFeature: updating dynamicEndOfChargeState %hhd", v25, 5u);
      v21 = 0;
      sub_1AC213F98(v26, 0, v23);
      sub_1AC213F98(v27, v21, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v18 = MEMORY[0x1E69E5920](v56);
  (*(v36 + 8))(v35, v38, v18);
  return sub_1AC30993C();
}

uint64_t sub_1AC261794(unsigned int a1, uint64_t a2)
{
  v39 = a1;
  v33 = a2;
  v41 = sub_1AC263C40;
  v45 = sub_1AC263C84;
  v47 = sub_1AC215C90;
  v49 = sub_1AC215C90;
  v52 = sub_1AC263C90;
  v64 = 0;
  v63 = 0;
  v32 = 0;
  v38 = sub_1AC309E6C();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v2 = &v20 - v34;
  v35 = &v20 - v34;
  v64 = v3;
  v63 = v4;
  v5 = sub_1AC250850();
  (*(v36 + 16))(v2, v5, v38);
  v40 = 17;
  v43 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v56 = sub_1AC309E4C();
  v57 = sub_1AC30AD2C();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 1;
  v42 = 32;
  v6 = swift_allocObject();
  v7 = v44;
  v46 = v6;
  *(v6 + 16) = v41;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v46;
  v53 = v8;
  *(v8 + 16) = v45;
  *(v8 + 24) = v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v51 = sub_1AC30B18C();
  v54 = v10;

  v11 = v48;
  v12 = v54;
  *v54 = v47;
  v12[1] = v11;

  v13 = v50;
  v14 = v54;
  v54[2] = v49;
  v14[3] = v13;

  v15 = v53;
  v16 = v54;
  v54[4] = v52;
  v16[5] = v15;
  sub_1AC206300();

  if (os_log_type_enabled(v56, v57))
  {
    v17 = v32;
    v25 = sub_1AC30AE6C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v24 = 0;
    v26 = sub_1AC213EE4(0, v23, v23);
    v27 = sub_1AC213EE4(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    sub_1AC213F38(0, &v62);
    sub_1AC213F38(1, v28);
    v58 = v47;
    v59 = v48;
    sub_1AC213F4C(&v58, v28, v29, v30);
    v31 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_1AC213F4C(&v58, &v62, &v61, &v60);
      v22 = 0;
      v58 = v52;
      v59 = v53;
      sub_1AC213F4C(&v58, &v62, &v61, &v60);
      _os_log_impl(&dword_1AC1C3000, v56, v57, "BatteryCharingFeature: updating optimizedBatteryChargingState %hhd", v25, 5u);
      v21 = 0;
      sub_1AC213F98(v26, 0, v23);
      sub_1AC213F98(v27, v21, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v18 = MEMORY[0x1E69E5920](v56);
  (*(v36 + 8))(v35, v38, v18);
  return sub_1AC309A4C();
}

uint64_t sub_1AC261D8C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{

  a2(3);

  [a4 reloadSpecifier_];
}

uint64_t sub_1AC261E38(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{

  a2(2);

  [a4 reloadSpecifier_];
}

uint64_t sub_1AC261F30(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___batterySwitchSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC261FB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC25E4DC();
  return sub_1AC26200C;
}

void sub_1AC26200C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC261F30(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC261F30(*a1);
  }
}

uint64_t sub_1AC262078()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC26216C(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC26216C(void *a1)
{
  v75 = a1;
  v81 = 0;
  v103 = 0;
  v102 = 0;
  v76 = 0;
  v77 = sub_1AC309E6C();
  v78 = *(v77 - 8);
  v79 = v78;
  MEMORY[0x1EEE9AC00](0);
  v80 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AC30A90C();
  v83 = *(v82 - 8);
  v84 = v83;
  MEMORY[0x1EEE9AC00](v81);
  v85 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1AC309AAC();
  v87 = *(v86 - 8);
  v88 = v87;
  v4 = MEMORY[0x1EEE9AC00](v86 - 8);
  v89 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v90 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x78))(v4);
  if (v90)
  {
    v74 = v90;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 133, 0);
    __break(1u);
  }

  v71 = v74;
  v72 = sub_1AC30915C();
  v102 = v72;

  v101 = sub_1AC3099DC();
  v100 = 2;
  v73 = type metadata accessor for AAFeatureCapability(0);
  sub_1AC212BF0();
  if (sub_1AC30B1BC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v51 = MEMORY[0x1E69A2B08];
    v52 = sub_1AC205220();
    v53 = v6;
    sub_1AC205220();
    v55 = sub_1AC309D3C();
    v7 = v75;
    v54 = v27;
    v57 = 24;
    MEMORY[0x1EEE9AC00](v27);
    v26 = v8;
    v66 = sub_1AC309CDC();

    v95 = v75;
    sub_1AC30A9DC("Charging Notifications", 22, 1);
    sub_1AC30A8AC();
    v63 = 0;
    v56 = type metadata accessor for BatteryChargingViewController();
    v61 = sub_1AC215DE8(v85, v56);
    v62 = v9;
    (*(v84 + 8))(v85, v82);
    v91 = v63;
    v92 = v63;
    v93 = v63;
    v94 = v63;

    v59 = 7;
    v65 = swift_allocObject();
    v58 = v65 + 16;
    v10 = v75;
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    v12 = v72;
    v60 = v11;
    *(v11 + 16) = v65;
    *(v11 + 24) = v12;
    v13 = sub_1AC20599C();
    v64 = &v19;
    v26 = v63;
    v25 = v63;
    v24 = v60;
    v23[1] = sub_1AC263BD0;
    v23[0] = v72;
    v22 = sub_1AC263BC8;
    v21 = v63;
    LOBYTE(v20) = v13 & 1;
    v19 = v63;
    sub_1AC309A9C();

    v67 = sub_1AC309D1C();
    (*(v88 + 8))(v89, v86);

    v68 = sub_1AC309D2C();

    v69 = v68;
    v70 = v76;
  }

  else
  {
    v14 = v80;
    v15 = sub_1AC250850();
    (*(v79 + 16))(v14, v15, v77);
    v49 = sub_1AC309E4C();
    v46 = v49;
    v48 = sub_1AC30AD2C();
    v47 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v50 = sub_1AC30B18C();
    if (os_log_type_enabled(v49, v48))
    {
      v16 = v76;
      v37 = sub_1AC30AE6C();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v35 = 0;
      v38 = sub_1AC213EE4(0, v34, v34);
      v36 = v38;
      v39 = sub_1AC213EE4(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v99 = v37;
      v98 = v38;
      v97 = v39;
      v40 = 0;
      v41 = &v99;
      sub_1AC213F38(0, &v99);
      sub_1AC213F38(v40, v41);
      v96 = v50;
      v42 = v27;
      MEMORY[0x1EEE9AC00](v27);
      v43 = v23;
      v24 = v17;
      v25 = &v98;
      v26 = &v97;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v45 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v46, v47, "BatteryChargingFeature: Charging Reminder is not supported return empty", v33, 2u);
        v31 = 0;
        sub_1AC213F98(v36, 0, v34);
        sub_1AC213F98(v39, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v32 = v45;
      }
    }

    else
    {

      v32 = v76;
    }

    v30 = v32;

    (*(v79 + 8))(v80, v77);
    v27[1] = 0;
    v27[2] = sub_1AC215CB0();
    v28 = sub_1AC30B18C();
    v29 = v28;

    v69 = v29;
    v70 = v30;
  }

  return v69;
}

uint64_t sub_1AC262C28(void *a1, void *a2)
{
  v50 = a2;
  v40 = a1;
  v35 = 0;
  v59 = 0;
  v58 = 0;
  v53 = 0;
  v52 = 0;
  v36 = sub_1AC30A90C();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1AC30A8EC();
  v42 = *(v41 - 8);
  v43 = v42;
  v45 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v18 - v47;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v18 - v47;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v18 - v47;
  v59 = v5;
  v58 = v6;
  v57 = v6;
  v49 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC("Receive notifications reminding you to charge your AirPods when the battery is low and when your ", 97, v49);
  v51 = v7;
  sub_1AC30A8CC();
  v8 = v50;

  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x90))(&v54, v9);
  if (!v55)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 140, 0);
    __break(1u);
  }

  v22 = v55;
  v19 = v56;
  v26 = &v54;
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  v18 = *(v22 - 8);
  v20 = v18;
  v25 = &v18;
  v10 = MEMORY[0x1EEE9AC00](&v18);
  v21 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v21, v10);
  v23 = (*(*(v19 + 8) + 24))(v22);
  v24 = v12;
  (*(v20 + 8))(v21, v22);
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1AC30A9DC(" have fully charged.", 20, 1, v18);
  v27 = v13;
  sub_1AC30A8CC();

  (*(v43 + 16))(v46, v48, v41);
  (*(v43 + 32))(v44, v46, v41);
  (*(v43 + 8))(v48, v41);
  sub_1AC30A8FC();
  v28 = type metadata accessor for BatteryChargingViewController();
  v29 = sub_1AC215DE8(v39, v28);
  v34 = v14;
  (*(v38 + 8))(v39, v36);
  v52 = v29;
  v53 = v34;

  v33 = sub_1AC30A91C();

  v31 = *MEMORY[0x1E69C5900];
  v15 = v31;
  sub_1AC30A92C();
  v30 = v16;
  v32 = sub_1AC30A91C();

  [v40 setProperty:v33 forKey:v32];
  swift_unknownObjectRelease();
}

id sub_1AC263200(uint64_t a1, uint64_t a2)
{
  sub_1AC2068B8();
  sub_1AC30990C();
  type metadata accessor for AAMultiState(0);
  sub_1AC21B624();
  v2 = sub_1AC30B1BC();
  return sub_1AC244124(v2 & 1);
}

double sub_1AC2632A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    [v5 BOOLValue];
    MEMORY[0x1E69E5920](v5);
    sub_1AC30991C();
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC263400(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI29BatteryChargingViewController____lazy_storage___chargingReminderSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC263480(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC262078();
  return sub_1AC2634DC;
}

void sub_1AC2634DC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC263400(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC263400(*a1);
  }
}

uint64_t sub_1AC263548()
{
  v4 = v0;
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v3)
  {
    v2 = v3;
    MEMORY[0x1E69E5928](v3);
    sub_1AC206988(&v3);
    sub_1AC30915C();
    MEMORY[0x1E69E5920](v2);
    sub_1AC309A0C();
  }

  else
  {
    sub_1AC206988(&v3);
  }

  type metadata accessor for AAFeatureCapability(0);
  sub_1AC212BF0();
  return sub_1AC30B1BC() & 1;
}

uint64_t sub_1AC2636EC()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x78))();
  if (v4)
  {
    v3 = v4;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BatteryChargingViewController.swift", 55, 2, 165, 0);
    __break(1u);
  }

  sub_1AC30915C();
  MEMORY[0x1E69E5920](v3);
  if (sub_1AC263548())
  {
    v2 = sub_1AC30992C();
  }

  else
  {
    v2 = sub_1AC309A3C();
  }

  return v2;
}

double sub_1AC263850()
{
  v18 = 0;
  v6 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v10 = &v4 - v5;
  v18 = v0;
  MEMORY[0x1E69E5928](v0);
  v7 = type metadata accessor for BatteryChargingViewController();
  v17.receiver = v0;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v15);
  *&v1 = MEMORY[0x1E69E5928](v15).n128_u64[0];
  v16 = v15;
  sub_1AC30A9DC("Battery", 7, 1, v1);
  sub_1AC30A8AC();
  v12 = sub_1AC215DE8(v10, v7);
  v13 = v2;
  (*(v8 + 8))(v10, v11);
  v14 = sub_1AC30A91C();

  [v15 setTitle_];
  MEMORY[0x1E69E5920](v14);
  *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  return result;
}

id sub_1AC263A64()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryChargingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AC263B38()
{
  v2 = qword_1EB54C510;
  if (!qword_1EB54C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C508, &unk_1AC3133F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC263C48@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC263C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC263D04();
  v5 = MEMORY[0x1E69E7230];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC263D04()
{
  v2 = qword_1EB54C518;
  if (!qword_1EB54C518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C518);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for AAChargingFeatureEnablementState(uint64_t a1)
{
  v5 = qword_1EB54C528;
  if (!qword_1EB54C528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C528);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC263E78()
{
  v2 = qword_1EB54C520;
  if (!qword_1EB54C520)
  {
    type metadata accessor for AAChargingFeatureEnablementState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC263F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v31 = a1;
  v30 = a2;
  v28 = a3;
  v29 = a4;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v8);
  v27 = v9;
  v26 = 6;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  v10 = sub_1AC30B1BC();
  v25 = v10 & 1;
  v11 = sub_1AC3091BC();
  v12 = [v11 flags];
  MEMORY[0x1E69E5920](v11);
  v24 = v12;
  v23 = 8;
  type metadata accessor for CBProductFlags(HIDWORD(v12));
  sub_1AC2642A8();
  v14 = sub_1AC30B27C();
  MEMORY[0x1E69E5928](a1);
  if (v14)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AC3092FC();
  }

  MEMORY[0x1E69E5920](a1);
  if (v7)
  {
    v6 = v10 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v22 = v6 & 1;
  sub_1AC30929C(v16);
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C538, &qword_1AC311E88);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {
    sub_1AC204664(v16);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  v5 = v20 != 0;
  sub_1AC204664(&v17);
  LOBYTE(v15) = v5;
  HIBYTE(v15) = v6 & 1;
  return v15;
}

unint64_t type metadata accessor for CBProductFlags(uint64_t a1)
{
  v5 = qword_1EB54C558;
  if (!qword_1EB54C558)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C558);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC2642A8()
{
  v2 = qword_1EB54C530;
  if (!qword_1EB54C530)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C530);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC264328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v58 = a3;
  v60 = a2;
  v53 = a1;
  v67 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v90 = 0;
  v89 = 0;
  v54 = sub_1AC30A90C();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](0);
  v57 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1AC309AAC();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  v97 = v7;
  v95 = v8;
  v96 = v9;
  v73 = sub_1AC2C85A0();
  v74 = v10;
  v65 = v73;
  v66 = v10;
  v93 = v73;
  v94 = v10;
  v71 = [objc_opt_self() sharedInstance];
  v69 = [v71 pairedAirPods];
  v68 = v69;
  v70 = sub_1AC257A90();
  v72 = sub_1AC30AB0C();

  v91 = v72;

  v76 = v73;
  v77 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C540, &unk_1AC311E90);
  sub_1AC264B88();
  sub_1AC30AA6C();

  sub_1AC209190(&v91);

  v52 = v92;
  v51 = v92;
  v90 = v92;
  v11 = v92;
  if (v52)
  {
    v50 = v51;
    v49 = v51;
    v89 = v51;
    sub_1AC30929C(v82);
    if (v82[3])
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C538, &qword_1AC311E88);
      if (!swift_dynamicCast())
      {
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
      }
    }

    else
    {
      sub_1AC204664(v82);
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
    }

    if (v86)
    {
      v45 = __dst;
      sub_1AC2051E4(&v83, __dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
      v33 = MEMORY[0x1E69A2B08];
      v34 = sub_1AC205220();
      v35 = v12;
      sub_1AC205220();
      v41 = sub_1AC309D3C();
      v80 = v58;
      v81 = v59;
      sub_1AC30A9DC("Accessibility", 13, 1);
      sub_1AC30A8AC();
      v37 = sub_1AC215DE8(v57, &unk_1F20F4EE8);
      v38 = v13;
      (*(v56 + 8))(v57, v54);
      v14 = v60;
      v39 = 0;
      v79 = type metadata accessor for HeadphoneSettingsController();
      v78 = v60;
      v36 = sub_1AC264C10();
      v15 = sub_1AC20599C();
      v40 = &v19;
      v27 = v39;
      v26 = v39;
      v25 = v39;
      v24 = v39;
      v23 = v39;
      v22 = v39;
      v21 = v36;
      LOBYTE(v20) = v15 & 1;
      v19 = v39;
      sub_1AC309A9C();
      v43 = sub_1AC309D1C();
      (*(v63 + 8))(v64, v61);

      v16 = v49;
      v42 = v28;
      MEMORY[0x1EEE9AC00](v28);
      v25 = v65;
      v26 = v66;
      v27 = v17;
      v44 = sub_1AC309D0C();

      v46 = sub_1AC309D2C();

      __swift_destroy_boxed_opaque_existential_1(v45);

      return v46;
    }

    else
    {
      sub_1AC204664(&v83);
      v30 = 0;
      v31 = sub_1AC215CB0();
      v32 = sub_1AC30B18C();

      return v32;
    }
  }

  else
  {
    v28[1] = 0;
    v28[2] = sub_1AC215CB0();
    v29 = sub_1AC30B18C();

    return v29;
  }
}

uint64_t sub_1AC2649F8(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a1;
  v19 = a2;
  v20 = a3;
  v14 = [v21 address];
  if (v14)
  {
    v8 = sub_1AC30A92C();
    v9 = v4;
    v3 = MEMORY[0x1E69E5920](v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = sub_1AC30A9DC("", 0, 1, v3.n128_f64[0]);
    v18 = v5;
  }

  v7 = MEMORY[0x1AC5B0060](a2, a3, v17, v3);

  return v7 & 1;
}

unint64_t sub_1AC264B88()
{
  v2 = qword_1EB54C548;
  if (!qword_1EB54C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C540, &unk_1AC311E90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC264C10()
{
  v2 = qword_1EB54C550;
  if (!qword_1EB54C550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C550);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1AC264C74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/AXFeature.swift", 35, 2, 51, 0);
    __break(1u);
  }

  v9 = sub_1AC30A91C();

  v10 = [v11 deviceFromAddressString_];
  MEMORY[0x1E69E5920](v9);
  *&result = MEMORY[0x1E69E5920](v11).n128_u64[0];
  if (v10)
  {
    sub_1AC257A90();
    sub_1AC30B18C();
    v6 = v5;
    MEMORY[0x1E69E5928](a4);
    *v6 = a4;
    sub_1AC206300();
    v8 = sub_1AC30AAFC();

    sub_1AC30A9DC("AirPods", 7, 1);
    v7 = sub_1AC30A91C();

    [a1 setProperty:v8 forKey:v7];
    MEMORY[0x1E69E5920](v7);
    swift_unknownObjectRelease();
    *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC264F00()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("AX Feature", 10, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

uint64_t sub_1AC26501C(uint64_t a1)
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC265220(uint64_t a1, uint64_t a2)
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC265264(uint64_t a1, uint64_t a2)
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2652A8(uint64_t a1, uint64_t a2)
{
  sub_1AC2642A8();
  sub_1AC2656B4();
  return sub_1AC30B2CC();
}

unint64_t sub_1AC26546C()
{
  v2 = qword_1EB54C560;
  if (!qword_1EB54C560)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC265504()
{
  v2 = qword_1EB54C568;
  if (!qword_1EB54C568)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC26559C()
{
  v2 = qword_1EB54C570;
  if (!qword_1EB54C570)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC265634()
{
  v2 = qword_1EB54C578;
  if (!qword_1EB54C578)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2656B4()
{
  v2 = qword_1EB54C580;
  if (!qword_1EB54C580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC26572C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1AC2657C8(char a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_1AC265878()
{
  v2 = qword_1EB54C588;
  if (!qword_1EB54C588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2659C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC26572C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC2659F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC2657C8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC265AAC(int a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v116 = a3;
  v117 = a4;
  v118 = a5;
  v119 = a6;
  v120 = a1;
  v121 = a2;
  v107 = "Fatal error";
  v108 = "Unexpectedly found nil while unwrapping an Optional value";
  v109 = "HeadphoneSettingsUI/BobbleVideoLoopPlayer.swift";
  v155 = 0;
  v154 = 0;
  v152 = 0u;
  v153 = 0u;
  v151 = 0;
  v150 = 0;
  v146 = 0;
  v147 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v110 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v54 - v110;
  v112 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v54 - v110);
  v113 = &v54 - v112;
  v114 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v54 - v112);
  v115 = &v54 - v114;
  v122 = 0;
  v123 = sub_1AC30901C();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v127 = *(v124 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v54 - v126;
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v130 = &v54 - v129;
  v155 = &v54 - v129;
  *&v152 = v11;
  *(&v152 + 1) = v12;
  *&v153 = v13;
  *(&v153 + 1) = v14;
  v151 = v15;
  v150 = v16;
  v154 = v6;
  v133 = &v149;
  v149 = v16;
  v131 = &v148;
  v148 = 1;
  v132 = type metadata accessor for UIUserInterfaceStyle(v17);
  sub_1AC218134();
  if (sub_1AC30B1BC())
  {
    v105 = sub_1AC30A9DC("LM", 2, 1);
  }

  else
  {
    v105 = sub_1AC30A9DC("DM", 2, 1);
  }

  v106 = v18;
  v103 = v18;
  v104 = v105;
  v146 = v105;
  v147 = v18;
  if (v120)
  {
    if (v120 == 1)
    {
      v75 = 0;
      sub_1AC20BE24();
      swift_getObjectType();
      v85 = sub_1AC20BE88();
      v73 = 11;
      v29 = sub_1AC30B17C();
      v77 = &v140;
      v140 = v29;
      v141 = v30;
      v81 = 1;
      v31 = sub_1AC30A9DC("Bobble_Nod_", v73, 1);
      v74 = v32;
      MEMORY[0x1AC5B07E0](v31);

      v138 = v104;
      v139 = v103;
      sub_1AC30B15C();
      v33 = sub_1AC30A9DC("", v75, v81 & 1);
      v76 = v34;
      MEMORY[0x1AC5B07E0](v33);

      v79 = v140;
      v78 = v141;

      sub_1AC2063F0(v77);
      sub_1AC30A9BC();
      v80 = v35;
      v84 = sub_1AC30A91C();

      sub_1AC30A9DC("mov", 3, v81 & 1);
      v82 = v36;
      v83 = sub_1AC30A91C();

      v86 = [v85 URLForResource:v84 withExtension:v83];
      MEMORY[0x1E69E5920](v83);
      MEMORY[0x1E69E5920](v84);
      v37 = MEMORY[0x1E69E5920](v85);
      if (v86)
      {
        v72 = v86;
        v71 = v86;
        sub_1AC308FFC();
        (*(v124 + 32))(v113, v128, v123);
        (*(v124 + 56))(v113, 0, 1, v123);
        v38 = MEMORY[0x1E69E5920](v71);
      }

      else
      {
        (*(v124 + 56))(v113, 1, 1, v123, v37);
      }

      if ((*(v124 + 48))(v113, 1, v123, v38) == 1)
      {
        sub_1AC30B05C(v107, 11, 2, v108, 57, 2, v109, 47, 2, 25, 0);
        __break(1u);
      }

      (*(v124 + 32))(v130, v113, v123);
    }

    else
    {
      v59 = 0;
      sub_1AC20BE24();
      swift_getObjectType();
      v69 = sub_1AC20BE88();
      v57 = 13;
      v39 = sub_1AC30B17C();
      v61 = &v144;
      v144 = v39;
      v145 = v40;
      v65 = 1;
      v41 = sub_1AC30A9DC("Bobble_Shake_", v57, 1);
      v58 = v42;
      MEMORY[0x1AC5B07E0](v41);

      v142 = v104;
      v143 = v103;
      sub_1AC30B15C();
      v43 = sub_1AC30A9DC("", v59, v65 & 1);
      v60 = v44;
      MEMORY[0x1AC5B07E0](v43);

      v63 = v144;
      v62 = v145;

      sub_1AC2063F0(v61);
      sub_1AC30A9BC();
      v64 = v45;
      v68 = sub_1AC30A91C();

      sub_1AC30A9DC("mov", 3, v65 & 1);
      v66 = v46;
      v67 = sub_1AC30A91C();

      v70 = [v69 URLForResource:v68 withExtension:v67];
      MEMORY[0x1E69E5920](v67);
      MEMORY[0x1E69E5920](v68);
      v47 = MEMORY[0x1E69E5920](v69);
      if (v70)
      {
        v56 = v70;
        v55 = v70;
        sub_1AC308FFC();
        (*(v124 + 32))(v111, v128, v123);
        (*(v124 + 56))(v111, 0, 1, v123);
        v48 = MEMORY[0x1E69E5920](v55);
      }

      else
      {
        (*(v124 + 56))(v111, 1, 1, v123, v47);
      }

      if ((*(v124 + 48))(v111, 1, v123, v48) == 1)
      {
        sub_1AC30B05C(v107, 11, 2, v108, 57, 2, v109, 47, 2, 26, 0);
        __break(1u);
      }

      (*(v124 + 32))(v130, v111, v123);
    }
  }

  else
  {
    v91 = 0;
    sub_1AC20BE24();
    swift_getObjectType();
    v101 = sub_1AC20BE88();
    v89 = 16;
    v19 = sub_1AC30B17C();
    v93 = &v136;
    v136 = v19;
    v137 = v20;
    v97 = 1;
    v21 = sub_1AC30A9DC("Bobble_Gestures_", v89, 1);
    v90 = v22;
    MEMORY[0x1AC5B07E0](v21);

    v134 = v104;
    v135 = v103;
    sub_1AC30B15C();
    v23 = sub_1AC30A9DC("", v91, v97 & 1);
    v92 = v24;
    MEMORY[0x1AC5B07E0](v23);

    v95 = v136;
    v94 = v137;

    sub_1AC2063F0(v93);
    sub_1AC30A9BC();
    v96 = v25;
    v100 = sub_1AC30A91C();

    sub_1AC30A9DC("mov", 3, v97 & 1);
    v98 = v26;
    v99 = sub_1AC30A91C();

    v102 = [v101 URLForResource:v100 withExtension:v99];
    MEMORY[0x1E69E5920](v99);
    MEMORY[0x1E69E5920](v100);
    v27 = MEMORY[0x1E69E5920](v101);
    if (v102)
    {
      v88 = v102;
      v87 = v102;
      sub_1AC308FFC();
      (*(v124 + 32))(v115, v128, v123);
      (*(v124 + 56))(v115, 0, 1, v123);
      v28 = MEMORY[0x1E69E5920](v87);
    }

    else
    {
      (*(v124 + 56))(v115, 1, 1, v123, v27);
    }

    if ((*(v124 + 48))(v115, 1, v123, v28) == 1)
    {
      sub_1AC30B05C(v107, 11, 2, v108, 57, 2, v109, 47, 2, 24, 0);
      __break(1u);
    }

    (*(v124 + 32))(v130, v115, v123);
  }

  v49 = v123;
  v50 = v130;
  v51 = v124;
  v52 = v128;
  *(v154 + qword_1EB54C590) = v120;
  (*(v51 + 16))(v52, v50, v49);
  v54 = sub_1AC309BEC();
  MEMORY[0x1E69E5928](v54);
  v154 = v54;

  (*(v124 + 8))(v130, v123);
  MEMORY[0x1E69E5920](v154);
  return v54;
}