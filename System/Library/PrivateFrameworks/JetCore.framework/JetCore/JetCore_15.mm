uint64_t sub_1DB44F654()
{
  v2 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v3 = sub_1DB44F96C;
  }

  else
  {
    sub_1DB467374(*(v2 + 1640), type metadata accessor for JetPackAsset);
    v3 = sub_1DB44F784;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44F784()
{
  v1 = v0[212];
  sub_1DB468D80(v0[207], v0[189], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C(v0[218], &qword_1ECC46F20, qword_1DB5105D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB44F96C()
{
  sub_1DB50BEB0();
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB52F2F0;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1408);
  *(v0 + 1208) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1184));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1DB30C4B8(v0 + 1184, v0 + 1248, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  sub_1DB30C2D8(v0 + 1248, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 768) = 0;
  v8 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 1880);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 736);
  v14 = *(v0 + 752);
  v12[64] = *(v0 + 768);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 1184, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  v16 = *(v0 + 1696);
  sub_1DB468D80(*(v0 + 1656), *(v0 + 1512), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_1DB30623C(v16, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C(*(v0 + 1744), &qword_1ECC46F20, qword_1DB5105D0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB44FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[206] = a5;
  v5[205] = a4;
  v5[204] = a3;
  v5[203] = a2;
  v5[202] = a1;
  v6 = *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v5[207] = v6;
  v5[208] = *(v6 + 64);
  v5[209] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v5[210] = swift_task_alloc();
  v7 = type metadata accessor for JetPackAsset(0);
  v5[211] = v7;
  v5[212] = *(v7 - 8);
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v5[219] = swift_task_alloc();
  v5[220] = swift_task_alloc();
  v5[221] = swift_task_alloc();
  v5[222] = swift_task_alloc();
  v5[223] = swift_task_alloc();
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v5[227] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB44FF8C, 0, 0);
}

uint64_t sub_1DB44FF8C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1624);
  v6 = *(v2 + 56);
  *(v0 + 1824) = v6;
  *(v0 + 1832) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  *(v0 + 1560) = *v4;
  v9 = *(v4 + 2);
  *(v0 + 1840) = v9;
  v10 = *(v4 + 3);
  *(v0 + 1848) = v10;
  *(v0 + 1576) = *v4;
  v15 = *v4;
  sub_1DB46774C(v0 + 1560, v0 + 1512);
  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v9, v10);
  *(v0 + 1856) = *(&v15 + 1);
  v14 = (*(v8 + 16) + **(v8 + 16));
  v11 = swift_task_alloc();
  *(v0 + 1864) = v11;
  *v11 = v0;
  v11[1] = sub_1DB45017C;
  v12 = *(v0 + 1808);

  return v14(v12, v15, *(&v15 + 1), v7, v8);
}

uint64_t sub_1DB45017C()
{
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v2 = sub_1DB451A38;
  }

  else
  {

    v2 = sub_1DB450298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB450298()
{
  v158 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  sub_1DB30C2D8(*(v0 + 1808), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1800);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    v143 = *(v0 + 1872);
  }

  else
  {
    sub_1DB468D80(v6, *(v0 + 1744), type metadata accessor for JetPackAsset);
    if (qword_1EE30E1A8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1872);
    v13 = *(v0 + 1848);
    v14 = *(v0 + 1840);
    v15 = qword_1EE312DD8;
    v155 = *(v0 + 1576);
    sub_1DB46774C(v0 + 1560, v0 + 1528);
    MEMORY[0x1E1285C70](45, 0xE100000000000000);
    MEMORY[0x1E1285C70](v14, v13);
    v16 = *(&v155 + 1);
    *(v0 + 1544) = v155;
    *(v0 + 1552) = v16;
    v17 = *(v15 + 16);
    *(swift_task_alloc() + 16) = v0 + 1544;
    os_unfair_lock_lock((v17 + 24));
    sub_1DB467900((v17 + 16), &v155);
    os_unfair_lock_unlock((v17 + 24));
    if (v12)
    {
      return;
    }

    v60 = v155;

    if (v60)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v148 = *(v0 + 1824);
      v61 = *(v0 + 1816);
      v62 = *(v0 + 1688);
      v63 = *(v0 + 1624);
      sub_1DB50BEB0();
      v64 = *(v0 + 280);
      v65 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1DB50EE90;
      *(v0 + 1152) = MEMORY[0x1E69E6158];
      *(v0 + 1128) = 0xD000000000000054;
      *(v0 + 1136) = 0x80000001DB52F340;
      *(v67 + 48) = 0u;
      *(v67 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1128, v67 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v67 + 64) = 0;
      *(v66 + 32) = v67;
      Logger.error(_:)(v66, v64, v65);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      sub_1DB30623C(v61, &qword_1ECC46F20, qword_1DB5105D0);
      v148(v61, 1, 1, v62);
      v68 = v63[3];
      v69 = v63[4];
      __swift_project_boxed_opaque_existential_1(v63, v68);
      v152 = (*(v69 + 24) + **(v69 + 24));
      v70 = swift_task_alloc();
      *(v0 + 1880) = v70;
      *v70 = v0;
      v70[1] = sub_1DB452FC0;
      v71 = *(v0 + 1744);

      v152(v71, v68, v69);
      return;
    }

    sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
    v143 = 0;
  }

  v7 = *(v0 + 1816);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);
  v10 = *(v8 + 48);
  *(v0 + 1896) = v10;
  *(v0 + 1904) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v151 = v10;
  if (v10(v7, 1, v9))
  {
    v11 = 0;
  }

  else
  {
    v18 = v7 + *(v9 + 20);
    v11 = *(v18 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v142 = v11;
  *(v0 + 649) = v11 & 1;
  v19 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v7, v19, &qword_1ECC46F20, qword_1DB5105D0);
  if (v151(v19, 1, v9) == 1)
  {
    v20 = 4;
  }

  else
  {
    v21 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v21, type metadata accessor for JetPackAsset);
    v22 = *(v0 + 560);
    v23 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v22);
    (*(v23 + 8))(&v155, v21, v22, v23);
    v20 = v155;
    sub_1DB467374(v21, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v20;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v24 = (v0 + 696);
  v25 = *(v0 + 1816);
  v26 = *(v0 + 1784);
  v27 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v145 = *(v0 + 608);
  v147 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v147);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DB50EE90;
  *&v155 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0x7341646568636163;
  v29._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  sub_1DB30C4B8(v25, v26, &qword_1ECC46F20, qword_1DB5105D0);
  v30 = v151(v26, 1, v27);
  v31 = *(v0 + 1784);
  if (v30 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v31, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v24 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v33 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = (v0 + 968);
  *(v33 + 2) = v35 + 1;
  v37 = &v33[40 * v35];
  v38 = *v24;
  v39 = *(v0 + 712);
  v37[64] = *(v0 + 728);
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  *&v155 = v33;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v40._countAndFlagsBits = 0x3D73757461747320;
  v40._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  if (v20 == 4)
  {
    v41 = 0;
    *v36 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v36 = v20;
    v41 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v41;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v42 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 1632);
  *(v42 + 2) = v44 + 1;
  v46 = &v42[40 * v44];
  v47 = *(v0 + 656);
  v48 = *(v0 + 672);
  v46[64] = *(v0 + 688);
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  *&v155 = v42;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v28 + 32) = v155;
  Logger.info(_:)(v28, v147, v145);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v50 = *(v45 + 32);
  LOBYTE(v155) = v50;
  v51 = sub_1DB42E620();
  if (v20 != 4 && (v51 & 1) != 0)
  {
    v52 = *(v0 + 1816);
    v53 = *(v0 + 1776);
    v54 = *(v0 + 1688);
    v55 = swift_allocBox();
    v57 = v56;
    sub_1DB30C4B8(v52, v53, &qword_1ECC46F20, qword_1DB5105D0);
    v58 = v151(v53, 1, v54);
    v59 = *(v0 + 1776);
    if (v58 == 1)
    {
      sub_1DB30623C(v59, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v59, v57, type metadata accessor for JetPackAsset);
      if (v20 < 2 && (v142 & 1) == 0)
      {
        sub_1DB50BEB0();
        v122 = *(v0 + 480);
        v154 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v122);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v124 + 48) = 0u;
        *(v124 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v124 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v124 + 64) = 0;
        *(v123 + 32) = v124;
        Logger.info(_:)(v123, v122, v154);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v20 - 1 < 2)
        {
          LOBYTE(v155) = v50;
          if (sub_1DB42E724())
          {
            v125 = *(v0 + 1680);
            v126 = *(v0 + 1672);
            v127 = *(v0 + 1664);
            v128 = *(v0 + 1656);
            v129 = *(v0 + 1648);
            v150 = *(v0 + 1640);
            v130 = *(v0 + 1632);
            v131 = *(v0 + 1624);
            *(v57 + *(*(v0 + 1688) + 40)) = 1;
            v132 = sub_1DB50ABA0();
            (*(*(v132 - 8) + 56))(v125, 1, 1, v132);
            v133 = *(v130 + 16);
            v155 = *v130;
            v156 = v133;
            v157 = *(v130 + 32);
            sub_1DB468D18(v129, v126, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v131, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v134 = (*(v128 + 80) + 73) & ~*(v128 + 80);
            v135 = (v127 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            *(v136 + 32) = v150;
            v137 = v156;
            *(v136 + 40) = v155;
            *(v136 + 56) = v137;
            *(v136 + 72) = v157;
            sub_1DB468D80(v126, v136 + v134, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v136 + v135) = v55;
            v138 = (v136 + ((v135 + 15) & 0xFFFFFFFFFFFFFFF8));
            v139 = *(v0 + 160);
            v138[3] = *(v0 + 144);
            v138[4] = v139;
            v140 = *(v0 + 128);
            v138[1] = *(v0 + 112);
            v138[2] = v140;
            *v138 = *(v0 + 96);

            sub_1DB467318(v130, v0 + 896);

            sub_1DB4DD85C(0, 0, v125, &unk_1DB51C988, v136);
          }
        }

        v141 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v57, v141, type metadata accessor for JetPackAsset);

        goto LABEL_63;
      }
    }
  }

  LOBYTE(v155) = v50;
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
    goto LABEL_63;
  }

  if (v20 == 3)
  {
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
  }

  v73 = *(v0 + 1632);
  sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v74 = *(v73 + 32);
  v75 = *(v73 + 16);
  *(v0 + 736) = *v73;
  *(v0 + 752) = v75;
  *(v0 + 768) = v74;
  sub_1DB30BE90(v0 + 16, v0 + 176);
  sub_1DB30BE90(v0 + 56, v0 + 216);
  sub_1DB50AC80();
  if (v143)
  {
    v76 = *(v0 + 1896);
    v77 = *(v0 + 1816);
    v78 = *(v0 + 1752);
    v79 = *(v0 + 1688);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_1DB30C4B8(v77, v78, &qword_1ECC46F20, qword_1DB5105D0);
    if (v76(v78, 1, v79) == 1)
    {
      sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
    }

    else
    {
      v89 = *(v0 + 650);
      sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
      if (v89 != 4 && !*(v0 + 650) && *(v0 + 649) == 1)
      {
        sub_1DB50BEB0();
        v90 = *(v0 + 520);
        v91 = *(v0 + 528);
        __swift_project_boxed_opaque_existential_1((v0 + 496), v90);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1DB50EE90;
        *&v155 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v93._countAndFlagsBits = 0xD000000000000025;
        v93._object = 0x80000001DB52F200;
        LogMessage.StringInterpolation.appendLiteral(_:)(v93);
        swift_getErrorValue();
        v94 = *(v0 + 1416);
        v95 = *(v0 + 1424);
        *(v0 + 1120) = v95;
        v96 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
        (*(*(v95 - 8) + 16))(v96, v94, v95);
        sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 816) = 0u;
        *(v0 + 832) = 0u;
        sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 848) = 0;
        v97 = v155;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1DB301BC0(0, *(v97 + 2) + 1, 1, v97);
        }

        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        if (v99 >= v98 >> 1)
        {
          v97 = sub_1DB301BC0((v98 > 1), v99 + 1, 1, v97);
        }

        v100 = *(v0 + 1704);
        v144 = *(v0 + 1768);
        v146 = *(v0 + 1616);
        *(v97 + 2) = v99 + 1;
        v101 = &v97[40 * v99];
        v102 = *(v0 + 816);
        v103 = *(v0 + 832);
        v101[64] = *(v0 + 848);
        *(v101 + 2) = v102;
        *(v101 + 3) = v103;
        v153 = v100;
        *&v155 = v97;
        sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v104);
        *(v92 + 32) = v155;
        Logger.error(_:)(v92, v90, v91);

        __swift_destroy_boxed_opaque_existential_0((v0 + 496));
        sub_1DB50BEB0();
        v106 = *(v0 + 440);
        v105 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v106);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1DB50EE90;
        *(v0 + 1248) = MEMORY[0x1E69E6158];
        *(v0 + 1224) = 0xD000000000000075;
        *(v0 + 1232) = 0x80000001DB52F230;
        *(v108 + 48) = 0u;
        *(v108 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1224, v108 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v108 + 64) = 0;
        *(v107 + 32) = v108;
        Logger.warning(_:)(v107, v106, v105);

        sub_1DB30623C(v144, &qword_1ECC46F20, qword_1DB5105D0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 416));
        sub_1DB468D80(v153, v146, type metadata accessor for JetPackAsset);
        goto LABEL_63;
      }

      sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
    }

    v109 = *(v0 + 1768);
    swift_willThrow();
    sub_1DB30623C(v109, &qword_1ECC46F20, qword_1DB5105D0);
LABEL_63:
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v110 = *(v0 + 8);

    v110();
    return;
  }

  v80 = (v0 + 856);
  v81 = *(v0 + 1768);
  v82 = *(v0 + 1760);
  v83 = *(v0 + 1688);
  sub_1DB50BEB0();
  v84 = *(v0 + 400);
  v149 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v84);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1DB50EE90;
  *&v155 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v86._countAndFlagsBits = 0xD000000000000032;
  v86._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v86);
  sub_1DB30C4B8(v81, v82, &qword_1ECC46F20, qword_1DB5105D0);
  v87 = v151(v82, 1, v83);
  v88 = *(v0 + 1760);
  if (v87 == 1)
  {
    sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v111 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1DB468D80(v88, v111, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v80 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v112 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_1DB301BC0(0, *(v112 + 2) + 1, 1, v112);
  }

  v114 = *(v112 + 2);
  v113 = *(v112 + 3);
  if (v114 >= v113 >> 1)
  {
    v112 = sub_1DB301BC0((v113 > 1), v114 + 1, 1, v112);
  }

  *(v112 + 2) = v114 + 1;
  v115 = &v112[40 * v114];
  v116 = *v80;
  v117 = *(v0 + 872);
  v115[64] = *(v0 + 888);
  *(v115 + 2) = v116;
  *(v115 + 3) = v117;
  *&v155 = v112;
  sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v118);
  *(v85 + 32) = v155;
  Logger.info(_:)(v85, v84, v149);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v119 = swift_task_alloc();
  *(v0 + 1928) = v119;
  *v119 = v0;
  v119[1] = sub_1DB4559DC;
  v120 = *(v0 + 1768);
  v121 = *(v0 + 1720);

  SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v121, v0 + 736, v120);
}

uint64_t sub_1DB451A38()
{
  v120 = v0;
  v1 = (v0 + 776);

  v2 = *(v0 + 1872);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *&v117 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1472);
  *(v0 + 1280) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1256, v0 + 1064, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1064, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v10 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v117 + 16) + 1, 1, v117);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 792);
  v13[64] = *(v0 + 808);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *&v117 = v10;
  sub_1DB30623C(v0 + 1256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1696);
  v19 = *(v0 + 1688);
  v20 = *(v18 + 48);
  *(v0 + 1896) = v20;
  *(v0 + 1904) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v114 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v111 = v21;
  *(v0 + 649) = v21 & 1;
  v23 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v114(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 560);
    v27 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v26);
    (*(v27 + 8))(&v117, v25, v26, v27);
    v24 = v117;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 696);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v32 = *(v0 + 600);
  v112 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v32);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DB50EE90;
  *&v117 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v35 = v114(v30, 1, v31);
  v36 = *(v0 + 1784);
  if (v35 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v38 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 968);
  *(v38 + 2) = v40 + 1;
  v42 = &v38[40 * v40];
  v43 = *v28;
  v44 = *(v0 + 712);
  v42[64] = *(v0 + 728);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *&v117 = v38;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v46;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v47 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1632);
  *(v47 + 2) = v49 + 1;
  v51 = &v47[40 * v49];
  v52 = *(v0 + 656);
  v53 = *(v0 + 672);
  v51[64] = *(v0 + 688);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *&v117 = v47;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v33 + 32) = v117;
  Logger.info(_:)(v33, v32, v112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v55 = *(v50 + 32);
  LOBYTE(v117) = v55;
  v56 = sub_1DB42E620();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1688);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
    v63 = v114(v58, 1, v59);
    v64 = *(v0 + 1776);
    if (v63 == 1)
    {
      sub_1DB30623C(v64, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v64, v62, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v111 & 1) == 0)
      {
        sub_1DB50BEB0();
        v91 = *(v0 + 480);
        v116 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v91);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v93 + 48) = 0u;
        *(v93 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v93 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v93 + 64) = 0;
        *(v92 + 32) = v93;
        Logger.info(_:)(v92, v91, v116);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v24 - 1 < 2)
        {
          LOBYTE(v117) = v55;
          if (sub_1DB42E724())
          {
            v94 = *(v0 + 1680);
            v95 = *(v0 + 1672);
            v96 = *(v0 + 1664);
            v97 = *(v0 + 1656);
            v98 = *(v0 + 1648);
            v115 = *(v0 + 1640);
            v99 = *(v0 + 1632);
            v100 = *(v0 + 1624);
            *(v62 + *(*(v0 + 1688) + 40)) = 1;
            v101 = sub_1DB50ABA0();
            (*(*(v101 - 8) + 56))(v94, 1, 1, v101);
            v102 = *(v99 + 16);
            v117 = *v99;
            v118 = v102;
            v119 = *(v99 + 32);
            sub_1DB468D18(v98, v95, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v100, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v103 = (*(v97 + 80) + 73) & ~*(v97 + 80);
            v104 = (v96 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
            v105 = swift_allocObject();
            *(v105 + 16) = 0;
            *(v105 + 24) = 0;
            *(v105 + 32) = v115;
            v106 = v118;
            *(v105 + 40) = v117;
            *(v105 + 56) = v106;
            *(v105 + 72) = v119;
            sub_1DB468D80(v95, v105 + v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v105 + v104) = v60;
            v107 = (v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
            v108 = *(v0 + 160);
            v107[3] = *(v0 + 144);
            v107[4] = v108;
            v109 = *(v0 + 128);
            v107[1] = *(v0 + 112);
            v107[2] = v109;
            *v107 = *(v0 + 96);

            sub_1DB467318(v99, v0 + 896);

            sub_1DB4DD85C(0, 0, v94, &unk_1DB51C988, v105);
          }
        }

        v110 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v62, v110, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

        v78 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v117) = v55;
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
    }

    v66 = *(v0 + 1632);
    sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v67 = *(v66 + 32);
    v68 = *(v66 + 16);
    *(v0 + 736) = *v66;
    *(v0 + 752) = v68;
    *(v0 + 768) = v67;
    sub_1DB30BE90(v0 + 16, v0 + 176);
    sub_1DB30BE90(v0 + 56, v0 + 216);
    sub_1DB50AC80();
    v69 = (v0 + 856);
    v70 = *(v0 + 1768);
    v71 = *(v0 + 1760);
    v72 = *(v0 + 1688);
    sub_1DB50BEB0();
    v73 = *(v0 + 400);
    v113 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v73);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1DB50EE90;
    *&v117 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v75._countAndFlagsBits = 0xD000000000000032;
    v75._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    sub_1DB30C4B8(v70, v71, &qword_1ECC46F20, qword_1DB5105D0);
    v76 = v114(v71, 1, v72);
    v77 = *(v0 + 1760);
    if (v76 == 1)
    {
      sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1DB468D80(v77, v80, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v69 = 0u;
    *(v0 + 872) = 0u;
    sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 888) = 0;
    v81 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1DB301BC0(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1DB301BC0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[40 * v83];
    v85 = *v69;
    v86 = *(v0 + 872);
    v84[64] = *(v0 + 888);
    *(v84 + 2) = v85;
    *(v84 + 3) = v86;
    *&v117 = v81;
    sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v87);
    *(v74 + 32) = v117;
    Logger.info(_:)(v74, v73, v113);

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v88 = swift_task_alloc();
    *(v0 + 1928) = v88;
    *v88 = v0;
    v88[1] = sub_1DB4559DC;
    v89 = *(v0 + 1768);
    v90 = *(v0 + 1720);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v90, v0 + 736, v89);
  }

  sub_1DB46628C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v78 = *(v0 + 8);
LABEL_43:

  return v78();
}

uint64_t sub_1DB452FC0()
{
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v2 = sub_1DB454440;
  }

  else
  {
    v2 = sub_1DB4530D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4530D4()
{
  v133 = v0;
  sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v120 = *(v0 + 1888);
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v2 + 48);
  *(v0 + 1896) = v4;
  *(v0 + 1904) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v127 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v119 = v5;
  *(v0 + 649) = v5 & 1;
  v7 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  if (v127(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 560);
    v11 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v10);
    (*(v11 + 8))(&v130, v9, v10, v11);
    v8 = v130;
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = (v0 + 696);
  v13 = *(v0 + 1816);
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v122 = *(v0 + 608);
  v124 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v124);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50EE90;
  *&v130 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0x7341646568636163;
  v17._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  sub_1DB30C4B8(v13, v14, &qword_1ECC46F20, qword_1DB5105D0);
  v18 = v127(v14, 1, v15);
  v19 = *(v0 + 1784);
  if (v18 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v19, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v12 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v21 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = (v0 + 968);
  *(v21 + 2) = v23 + 1;
  v25 = &v21[40 * v23];
  v26 = *v12;
  v27 = *(v0 + 712);
  v25[64] = *(v0 + 728);
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  *&v130 = v21;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v28._countAndFlagsBits = 0x3D73757461747320;
  v28._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  if (v8 == 4)
  {
    v29 = 0;
    *v24 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v24 = v8;
    v29 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v29;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v30 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v0 + 1632);
  *(v30 + 2) = v32 + 1;
  v34 = &v30[40 * v32];
  v35 = *(v0 + 656);
  v36 = *(v0 + 672);
  v34[64] = *(v0 + 688);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  *&v130 = v30;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v16 + 32) = v130;
  Logger.info(_:)(v16, v124, v122);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v38 = *(v33 + 32);
  LOBYTE(v130) = v38;
  v39 = sub_1DB42E620();
  if (v8 != 4 && (v39 & 1) != 0)
  {
    v40 = *(v0 + 1816);
    v41 = *(v0 + 1776);
    v42 = *(v0 + 1688);
    v43 = swift_allocBox();
    v45 = v44;
    sub_1DB30C4B8(v40, v41, &qword_1ECC46F20, qword_1DB5105D0);
    v46 = v127(v41, 1, v42);
    v47 = *(v0 + 1776);
    if (v46 == 1)
    {
      sub_1DB30623C(v47, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v47, v45, type metadata accessor for JetPackAsset);
      if (v8 < 2 && (v119 & 1) == 0)
      {
        sub_1DB50BEB0();
        v99 = *(v0 + 480);
        v129 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v99);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v101 + 48) = 0u;
        *(v101 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v101 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v101 + 64) = 0;
        *(v100 + 32) = v101;
        Logger.info(_:)(v100, v99, v129);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v8 - 1 < 2)
        {
          LOBYTE(v130) = v38;
          if (sub_1DB42E724())
          {
            v102 = *(v0 + 1680);
            v103 = *(v0 + 1672);
            v104 = *(v0 + 1664);
            v105 = *(v0 + 1656);
            v106 = *(v0 + 1648);
            v126 = *(v0 + 1640);
            v107 = *(v0 + 1632);
            v108 = *(v0 + 1624);
            *(v45 + *(*(v0 + 1688) + 40)) = 1;
            v109 = sub_1DB50ABA0();
            (*(*(v109 - 8) + 56))(v102, 1, 1, v109);
            v110 = *(v107 + 16);
            v130 = *v107;
            v131 = v110;
            v132 = *(v107 + 32);
            sub_1DB468D18(v106, v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v108, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v111 = (*(v105 + 80) + 73) & ~*(v105 + 80);
            v112 = (v104 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
            v113 = swift_allocObject();
            *(v113 + 16) = 0;
            *(v113 + 24) = 0;
            *(v113 + 32) = v126;
            v114 = v131;
            *(v113 + 40) = v130;
            *(v113 + 56) = v114;
            *(v113 + 72) = v132;
            sub_1DB468D80(v103, v113 + v111, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v113 + v112) = v43;
            v115 = (v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8));
            v116 = *(v0 + 160);
            v115[3] = *(v0 + 144);
            v115[4] = v116;
            v117 = *(v0 + 128);
            v115[1] = *(v0 + 112);
            v115[2] = v117;
            *v115 = *(v0 + 96);

            sub_1DB467318(v107, v0 + 896);

            sub_1DB4DD85C(0, 0, v102, &unk_1DB51C988, v113);
          }
        }

        v118 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v45, v118, type metadata accessor for JetPackAsset);

        goto LABEL_50;
      }
    }
  }

  LOBYTE(v130) = v38;
  if ((sub_1DB42E724() & 1) == 0)
  {
    sub_1DB46628C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    goto LABEL_50;
  }

  if (v8 == 3)
  {
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
  }

  v49 = *(v0 + 1632);
  sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v50 = *(v49 + 32);
  v51 = *(v49 + 16);
  *(v0 + 736) = *v49;
  *(v0 + 752) = v51;
  *(v0 + 768) = v50;
  sub_1DB30BE90(v0 + 16, v0 + 176);
  sub_1DB30BE90(v0 + 56, v0 + 216);
  sub_1DB50AC80();
  if (v120)
  {
    v52 = *(v0 + 1896);
    v53 = *(v0 + 1816);
    v54 = *(v0 + 1752);
    v55 = *(v0 + 1688);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_1DB30C4B8(v53, v54, &qword_1ECC46F20, qword_1DB5105D0);
    if (v52(v54, 1, v55) == 1)
    {
      sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
    }

    else
    {
      v65 = *(v0 + 650);
      sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
      if (v65 != 4 && !*(v0 + 650) && *(v0 + 649) == 1)
      {
        sub_1DB50BEB0();
        v66 = *(v0 + 520);
        v67 = *(v0 + 528);
        __swift_project_boxed_opaque_existential_1((v0 + 496), v66);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1DB50EE90;
        *&v130 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v69._countAndFlagsBits = 0xD000000000000025;
        v69._object = 0x80000001DB52F200;
        LogMessage.StringInterpolation.appendLiteral(_:)(v69);
        swift_getErrorValue();
        v70 = *(v0 + 1416);
        v71 = *(v0 + 1424);
        *(v0 + 1120) = v71;
        v72 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
        (*(*(v71 - 8) + 16))(v72, v70, v71);
        sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 816) = 0u;
        *(v0 + 832) = 0u;
        sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 848) = 0;
        v73 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1DB301BC0(0, *(v73 + 2) + 1, 1, v73);
        }

        v75 = *(v73 + 2);
        v74 = *(v73 + 3);
        if (v75 >= v74 >> 1)
        {
          v73 = sub_1DB301BC0((v74 > 1), v75 + 1, 1, v73);
        }

        v76 = *(v0 + 1704);
        v121 = *(v0 + 1768);
        v123 = *(v0 + 1616);
        *(v73 + 2) = v75 + 1;
        v77 = &v73[40 * v75];
        v78 = *(v0 + 816);
        v79 = *(v0 + 832);
        v77[64] = *(v0 + 848);
        *(v77 + 2) = v78;
        *(v77 + 3) = v79;
        v128 = v76;
        *&v130 = v73;
        sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v80);
        *(v68 + 32) = v130;
        Logger.error(_:)(v68, v66, v67);

        __swift_destroy_boxed_opaque_existential_0((v0 + 496));
        sub_1DB50BEB0();
        v82 = *(v0 + 440);
        v81 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v82);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1DB50EE90;
        *(v0 + 1248) = MEMORY[0x1E69E6158];
        *(v0 + 1224) = 0xD000000000000075;
        *(v0 + 1232) = 0x80000001DB52F230;
        *(v84 + 48) = 0u;
        *(v84 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1224, v84 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v84 + 64) = 0;
        *(v83 + 32) = v84;
        Logger.warning(_:)(v83, v82, v81);

        sub_1DB30623C(v121, &qword_1ECC46F20, qword_1DB5105D0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 416));
        sub_1DB468D80(v128, v123, type metadata accessor for JetPackAsset);
        goto LABEL_50;
      }

      sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
    }

    v85 = *(v0 + 1768);
    swift_willThrow();
    sub_1DB30623C(v85, &qword_1ECC46F20, qword_1DB5105D0);
LABEL_50:
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v86 = *(v0 + 8);

    return v86();
  }

  v56 = (v0 + 856);
  v57 = *(v0 + 1768);
  v58 = *(v0 + 1760);
  v59 = *(v0 + 1688);
  sub_1DB50BEB0();
  v60 = *(v0 + 400);
  v125 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v60);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1DB50EE90;
  *&v130 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v62._countAndFlagsBits = 0xD000000000000032;
  v62._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v62);
  sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
  v63 = v127(v58, 1, v59);
  v64 = *(v0 + 1760);
  if (v63 == 1)
  {
    sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v88 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1DB468D80(v64, v88, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v56 = 0u;
  *(v0 + 872) = 0u;
  sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 888) = 0;
  v89 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v89 = sub_1DB301BC0(0, *(v89 + 2) + 1, 1, v89);
  }

  v91 = *(v89 + 2);
  v90 = *(v89 + 3);
  if (v91 >= v90 >> 1)
  {
    v89 = sub_1DB301BC0((v90 > 1), v91 + 1, 1, v89);
  }

  *(v89 + 2) = v91 + 1;
  v92 = &v89[40 * v91];
  v93 = *v56;
  v94 = *(v0 + 872);
  v92[64] = *(v0 + 888);
  *(v92 + 2) = v93;
  *(v92 + 3) = v94;
  *&v130 = v89;
  sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v95);
  *(v61 + 32) = v130;
  Logger.info(_:)(v61, v60, v125);

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  v96 = swift_task_alloc();
  *(v0 + 1928) = v96;
  *v96 = v0;
  v96[1] = sub_1DB4559DC;
  v97 = *(v0 + 1768);
  v98 = *(v0 + 1720);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v98, v0 + 736, v97);
}

uint64_t sub_1DB454440()
{
  v120 = v0;
  v1 = (v0 + 776);
  sub_1DB467374(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1888);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *&v117 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1472);
  *(v0 + 1280) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 1256, v0 + 1064, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1DB30C2D8(v0 + 1064, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 808) = 0;
  v10 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v117 + 16) + 1, 1, v117);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 792);
  v13[64] = *(v0 + 808);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *&v117 = v10;
  sub_1DB30623C(v0 + 1256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1696);
  v19 = *(v0 + 1688);
  v20 = *(v18 + 48);
  *(v0 + 1896) = v20;
  *(v0 + 1904) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v114 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v111 = v21;
  *(v0 + 649) = v21 & 1;
  v23 = *(v0 + 1792);
  sub_1DB30BE90(*(v0 + 1624) + 40, v0 + 536);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v114(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1736);
    sub_1DB468D80(*(v0 + 1792), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 560);
    v27 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v26);
    (*(v27 + 8))(&v117, v25, v26, v27);
    v24 = v117;
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 696);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EE30C918;
  sub_1DB50BEB0();
  v32 = *(v0 + 600);
  v112 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v32);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DB50EE90;
  *&v117 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1DB30C4B8(v29, v30, &qword_1ECC46F20, qword_1DB5105D0);
  v35 = v114(v30, 1, v31);
  v36 = *(v0 + 1784);
  if (v35 == 1)
  {
    sub_1DB30623C(*(v0 + 1784), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1DB468D80(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 1032, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v28 = 0u;
  *(v0 + 712) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 728) = 0;
  v38 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 968);
  *(v38 + 2) = v40 + 1;
  v42 = &v38[40 * v40];
  v43 = *v28;
  v44 = *(v0 + 712);
  v42[64] = *(v0 + 728);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *&v117 = v38;
  sub_1DB30623C(v0 + 1032, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v46;
  sub_1DB30C4B8(v0 + 968, v0 + 1000, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1DB30C2D8(v0 + 1000, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 688) = 0;
  v47 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1DB301BC0(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1DB301BC0((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1632);
  *(v47 + 2) = v49 + 1;
  v51 = &v47[40 * v49];
  v52 = *(v0 + 656);
  v53 = *(v0 + 672);
  v51[64] = *(v0 + 688);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *&v117 = v47;
  sub_1DB30623C(v0 + 968, &qword_1ECC426B0, &qword_1DB50EEB0);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v33 + 32) = v117;
  Logger.info(_:)(v33, v32, v112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v55 = *(v50 + 32);
  LOBYTE(v117) = v55;
  v56 = sub_1DB42E620();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1688);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1DB30C4B8(v57, v58, &qword_1ECC46F20, qword_1DB5105D0);
    v63 = v114(v58, 1, v59);
    v64 = *(v0 + 1776);
    if (v63 == 1)
    {
      sub_1DB30623C(v64, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v64, v62, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v111 & 1) == 0)
      {
        sub_1DB50BEB0();
        v91 = *(v0 + 480);
        v116 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), v91);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1DB50EE90;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001DB52F320;
        *(v93 + 48) = 0u;
        *(v93 + 32) = 0u;
        sub_1DB30C2D8(v0 + 1192, v93 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v93 + 64) = 0;
        *(v92 + 32) = v93;
        Logger.info(_:)(v92, v91, v116);

        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        if (v24 - 1 < 2)
        {
          LOBYTE(v117) = v55;
          if (sub_1DB42E724())
          {
            v94 = *(v0 + 1680);
            v95 = *(v0 + 1672);
            v96 = *(v0 + 1664);
            v97 = *(v0 + 1656);
            v98 = *(v0 + 1648);
            v115 = *(v0 + 1640);
            v99 = *(v0 + 1632);
            v100 = *(v0 + 1624);
            *(v62 + *(*(v0 + 1688) + 40)) = 1;
            v101 = sub_1DB50ABA0();
            (*(*(v101 - 8) + 56))(v94, 1, 1, v101);
            v102 = *(v99 + 16);
            v117 = *v99;
            v118 = v102;
            v119 = *(v99 + 32);
            sub_1DB468D18(v98, v95, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1DB30C4B8(v100, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v103 = (*(v97 + 80) + 73) & ~*(v97 + 80);
            v104 = (v96 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
            v105 = swift_allocObject();
            *(v105 + 16) = 0;
            *(v105 + 24) = 0;
            *(v105 + 32) = v115;
            v106 = v118;
            *(v105 + 40) = v117;
            *(v105 + 56) = v106;
            *(v105 + 72) = v119;
            sub_1DB468D80(v95, v105 + v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v105 + v104) = v60;
            v107 = (v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
            v108 = *(v0 + 160);
            v107[3] = *(v0 + 144);
            v107[4] = v108;
            v109 = *(v0 + 128);
            v107[1] = *(v0 + 112);
            v107[2] = v109;
            *v107 = *(v0 + 96);

            sub_1DB467318(v99, v0 + 896);

            sub_1DB4DD85C(0, 0, v94, &unk_1DB51C988, v105);
          }
        }

        v110 = *(v0 + 1616);
        swift_beginAccess();
        sub_1DB468D18(v62, v110, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

        v78 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v117) = v55;
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1816), *(v0 + 1768), &qword_1ECC46F20, qword_1DB5105D0);
    }

    v66 = *(v0 + 1632);
    sub_1DB30C4B8(*(v0 + 1624), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v67 = *(v66 + 32);
    v68 = *(v66 + 16);
    *(v0 + 736) = *v66;
    *(v0 + 752) = v68;
    *(v0 + 768) = v67;
    sub_1DB30BE90(v0 + 16, v0 + 176);
    sub_1DB30BE90(v0 + 56, v0 + 216);
    sub_1DB50AC80();
    v69 = (v0 + 856);
    v70 = *(v0 + 1768);
    v71 = *(v0 + 1760);
    v72 = *(v0 + 1688);
    sub_1DB50BEB0();
    v73 = *(v0 + 400);
    v113 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v73);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1DB50EE90;
    *&v117 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v75._countAndFlagsBits = 0xD000000000000032;
    v75._object = 0x80000001DB52F2B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    sub_1DB30C4B8(v70, v71, &qword_1ECC46F20, qword_1DB5105D0);
    v76 = v114(v71, 1, v72);
    v77 = *(v0 + 1760);
    if (v76 == 1)
    {
      sub_1DB30623C(*(v0 + 1760), &qword_1ECC46F20, qword_1DB5105D0);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1DB468D80(v77, v80, type metadata accessor for JetPackAsset);
    }

    sub_1DB30C4B8(v0 + 1288, v0 + 1320, &qword_1ECC426B0, &qword_1DB50EEB0);
    *v69 = 0u;
    *(v0 + 872) = 0u;
    sub_1DB30C2D8(v0 + 1320, v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 888) = 0;
    v81 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1DB301BC0(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1DB301BC0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[40 * v83];
    v85 = *v69;
    v86 = *(v0 + 872);
    v84[64] = *(v0 + 888);
    *(v84 + 2) = v85;
    *(v84 + 3) = v86;
    *&v117 = v81;
    sub_1DB30623C(v0 + 1288, &qword_1ECC426B0, &qword_1DB50EEB0);
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v87);
    *(v74 + 32) = v117;
    Logger.info(_:)(v74, v73, v113);

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v88 = swift_task_alloc();
    *(v0 + 1928) = v88;
    *v88 = v0;
    v88[1] = sub_1DB4559DC;
    v89 = *(v0 + 1768);
    v90 = *(v0 + 1720);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v90, v0 + 736, v89);
  }

  sub_1DB46628C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v78 = *(v0 + 8);
LABEL_43:

  return v78();
}

uint64_t sub_1DB4559DC()
{
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v2 = sub_1DB455E2C;
  }

  else
  {
    v2 = sub_1DB455AF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB455AF0()
{
  v1 = v0[216];
  v2 = v0[211];
  sub_1DB468D80(v0[215], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[25];
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[243] = v10;
    *v10 = v0;
    v10[1] = sub_1DB4564F0;
    v11 = v0[216];
    v12 = v0[214];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[221];
    sub_1DB468D80(v0[216], v0[202], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C(v0[227], &qword_1ECC46F20, qword_1DB5105D0);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DB455E2C()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1896);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1688);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30C4B8(v3, v4, &qword_1ECC46F20, qword_1DB5105D0);
  v31 = v1;
  if (v2(v4, 1, v5) == 1)
  {
    sub_1DB30623C(*(v0 + 1752), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_12:
    v27 = *(v0 + 1768);
    swift_willThrow();
    sub_1DB30623C(v27, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

    v26 = *(v0 + 8);
    goto LABEL_13;
  }

  v6 = *(v0 + 650);
  sub_1DB468D80(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
  if (v6 == 4 || *(v0 + 650) || *(v0 + 649) != 1)
  {
    sub_1DB467374(*(v0 + 1704), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  sub_1DB50BEB0();
  v7 = *(v0 + 520);
  v8 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50EE90;
  v32 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB52F200;
  v10._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 1416);
  v12 = *(v0 + 1424);
  *(v0 + 1120) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_1DB30C4B8(v0 + 1096, v0 + 1160, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1DB30C2D8(v0 + 1160, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 848) = 0;
  v14 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1768);
  v29 = *(v0 + 1616);
  v30 = *(v0 + 1704);
  *(v14 + 2) = v16 + 1;
  v18 = &v14[40 * v16];
  v19 = *(v0 + 816);
  v20 = *(v0 + 832);
  v18[64] = *(v0 + 848);
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  sub_1DB30623C(v0 + 1096, &qword_1ECC426B0, &qword_1DB50EEB0);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v9 + 32) = v14;
  Logger.error(_:)(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  sub_1DB50BEB0();
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DB50EE90;
  *(v0 + 1248) = MEMORY[0x1E69E6158];
  *(v0 + 1224) = 0xD000000000000075;
  *(v0 + 1232) = 0x80000001DB52F230;
  *(v25 + 48) = 0u;
  *(v25 + 32) = 0u;
  sub_1DB30C2D8(v0 + 1224, v25 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v25 + 64) = 0;
  *(v24 + 32) = v25;
  Logger.warning(_:)(v24, v22, v23);

  sub_1DB30623C(v17, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  sub_1DB468D80(v30, v29, type metadata accessor for JetPackAsset);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v26 = *(v0 + 8);
LABEL_13:

  return v26();
}

uint64_t sub_1DB4564F0()
{
  v2 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v3 = sub_1DB4567F8;
  }

  else
  {
    sub_1DB467374(*(v2 + 1712), type metadata accessor for JetPackAsset);
    v3 = sub_1DB456620;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB456620()
{
  v1 = v0[221];
  sub_1DB468D80(v0[216], v0[202], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C(v0[227], &qword_1ECC46F20, qword_1DB5105D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4567F8()
{
  sub_1DB50BEB0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB52F2F0;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1448);
  *(v0 + 1376) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1352));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1DB30C4B8(v0 + 1352, v0 + 1384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  sub_1DB30C2D8(v0 + 1384, v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 648) = 0;
  v8 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 1952);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 616);
  v14 = *(v0 + 632);
  v12[64] = *(v0 + 648);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 1352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v16 = *(v0 + 1768);
  sub_1DB468D80(*(v0 + 1728), *(v0 + 1616), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30623C(v16, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C(*(v0 + 1816), &qword_1ECC46F20, qword_1DB5105D0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB456BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[140] = a7;
  v7[139] = a6;
  v7[138] = a5;
  v7[137] = a4;
  v7[136] = a3;
  v7[135] = a2;
  v7[134] = a1;
  v8 = *(a6 - 8);
  v7[141] = v8;
  v7[142] = *(v8 + 64);
  v7[143] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[144] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[145] = v10;
  v7[146] = *(v10 + 64);
  v7[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v7[148] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset(0);
  v7[149] = v11;
  v7[150] = *(v11 - 8);
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB456E60, 0, 0);
}

uint64_t sub_1DB456E60()
{
  v1 = v0[161];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[144];
  v5 = v0[135];
  v6 = *(v2 + 56);
  v0[162] = v6;
  v0[163] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[164] = AssociatedConformanceWitness;
  v10 = *(AssociatedConformanceWitness + 16);
  v0[165] = v10;
  v0[166] = (AssociatedConformanceWitness + 16) & 0xFFFFFFFFFFFFLL | 0x4839000000000000;
  v11 = v10(v4, AssociatedConformanceWitness);
  v13 = v12;
  v0[167] = v12;
  v17 = (*(v8 + 16) + **(v8 + 16));
  v14 = swift_task_alloc();
  v0[168] = v14;
  *v14 = v0;
  v14[1] = sub_1DB45704C;
  v15 = v0[160];

  return v17(v15, v11, v13, v7, v8);
}

uint64_t sub_1DB45704C()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_1DB459334;
  }

  else
  {

    v2 = sub_1DB457168;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DB457168()
{
  v116 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  sub_1DB30C2D8(*(v0 + 1280), v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1272);
  if (v5 == 1)
  {
    sub_1DB30623C(v6, &qword_1ECC46F20, qword_1DB5105D0);
    goto LABEL_3;
  }

  sub_1DB468D80(v6, *(v0 + 1224), type metadata accessor for JetPackAsset);
  if (qword_1EE30E1A8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1352);
  v13 = qword_1EE312DD8;
  *(v0 + 1040) = (*(v0 + 1320))(*(v0 + 1152), *(v0 + 1312));
  *(v0 + 1048) = v14;
  v15 = *(v13 + 16);
  *(swift_task_alloc() + 16) = v0 + 1040;
  os_unfair_lock_lock((v15 + 24));
  sub_1DB469568((v15 + 16), v115);
  os_unfair_lock_unlock((v15 + 24));
  if (!v12)
  {
    v58 = v115[0];

    if ((v58 & 1) == 0)
    {
      sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
LABEL_3:
      v7 = *(v0 + 1288);
      v8 = *(v0 + 1200);
      v9 = *(v0 + 1192);
      v10 = *(v8 + 48);
      *(v0 + 1376) = v10;
      *(v0 + 1384) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v109 = v10;
      if (v10(v7, 1, v9))
      {
        v11 = 0;
      }

      else
      {
        v16 = v7 + *(v9 + 20);
        v11 = *(v16 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
      }

      v102 = v11;
      *(v0 + 489) = v11 & 1;
      v17 = *(v0 + 1264);
      sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
      sub_1DB30C4B8(v7, v17, &qword_1ECC46F20, qword_1DB5105D0);
      if (v109(v17, 1, v9) == 1)
      {
        v18 = 4;
      }

      else
      {
        v19 = *(v0 + 1216);
        sub_1DB468D80(*(v0 + 1264), v19, type metadata accessor for JetPackAsset);
        v20 = *(v0 + 320);
        v21 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v20);
        (*(v21 + 8))(v115, v19, v20, v21);
        v18 = LOBYTE(v115[0]);
        sub_1DB467374(v19, type metadata accessor for JetPackAsset);
      }

      *(v0 + 490) = v18;
      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 1288);
      v23 = *(v0 + 1256);
      v24 = *(v0 + 1192);
      *(v0 + 1392) = qword_1EE30C918;
      sub_1DB50BEB0();
      v105 = *(v0 + 368);
      v107 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 336), v107);
      *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB50EE90;
      v115[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0x7341646568636163;
      v26._object = 0xEC0000003D746573;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      sub_1DB30C4B8(v22, v23, &qword_1ECC46F20, qword_1DB5105D0);
      v27 = v109(v23, 1, v24);
      v28 = *(v0 + 1256);
      if (v27 == 1)
      {
        sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
        *(v0 + 840) = 0u;
        *(v0 + 856) = 0u;
      }

      else
      {
        *(v0 + 864) = *(v0 + 1192);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
        sub_1DB468D80(v28, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
      }

      sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 528) = 0;
      v30 = v115[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      v33 = (v0 + 712);
      *(v30 + 2) = v32 + 1;
      v34 = &v30[40 * v32];
      v35 = *(v0 + 496);
      v36 = *(v0 + 512);
      v34[64] = *(v0 + 528);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v115[0] = v30;
      sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
      v37._countAndFlagsBits = 0x3D73757461747320;
      v37._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      if (v18 == 4)
      {
        v38 = 0;
        *v33 = 0;
        *(v0 + 720) = 0;
        *(v0 + 728) = 0;
      }

      else
      {
        *v33 = v18;
        v38 = &type metadata for JetPackAssetCacheStatus;
      }

      *(v0 + 736) = v38;
      sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 608) = 0;
      v39 = v115[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      v42 = *(v0 + 1312);
      v43 = *(v0 + 1152);
      *(v39 + 2) = v41 + 1;
      v44 = &v39[40 * v41];
      v45 = *(v0 + 576);
      v46 = *(v0 + 592);
      v44[64] = *(v0 + 608);
      *(v44 + 2) = v45;
      *(v44 + 3) = v46;
      v115[0] = v39;
      sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v25 + 32) = v115[0];
      Logger.info(_:)(v25, v107, v105);

      __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      v48 = *(v42 + 24);
      v48(v115, v43, v42);
      v49 = sub_1DB42E620();
      if (v18 != 4 && (v49 & 1) != 0)
      {
        v50 = *(v0 + 1288);
        v51 = *(v0 + 1248);
        v52 = *(v0 + 1192);
        v53 = swift_allocBox();
        v55 = v54;
        sub_1DB30C4B8(v50, v51, &qword_1ECC46F20, qword_1DB5105D0);
        v56 = v109(v51, 1, v52);
        v57 = *(v0 + 1248);
        if (v56 == 1)
        {
          sub_1DB30623C(v57, &qword_1ECC46F20, qword_1DB5105D0);
          swift_deallocBox();
        }

        else
        {
          sub_1DB468D80(v57, v55, type metadata accessor for JetPackAsset);
          v70 = v18 - 1;
          if (v18 <= 1 && (v102 & 1) == 0)
          {
            sub_1DB50BEB0();
            v80 = *(v0 + 400);
            v113 = *(v0 + 408);
            __swift_project_boxed_opaque_existential_1((v0 + 376), v80);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_1DB50EE90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1DB50EE90;
            *(v0 + 896) = MEMORY[0x1E69E6158];
            *(v0 + 872) = 0xD000000000000012;
            *(v0 + 880) = 0x80000001DB52F320;
            *(v82 + 48) = 0u;
            *(v82 + 32) = 0u;
            sub_1DB30C2D8(v0 + 872, v82 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
            *(v82 + 64) = 0;
            *(v81 + 32) = v82;
            Logger.info(_:)(v81, v80, v113);

            __swift_destroy_boxed_opaque_existential_0((v0 + 376));
            if (v70 <= 1)
            {
              v48(v115, *(v0 + 1152), *(v0 + 1312));
              if (sub_1DB42E724())
              {
                v83 = *(v0 + 1184);
                v84 = *(v0 + 1176);
                v85 = *(v0 + 1160);
                v86 = *(v0 + 1152);
                v87 = *(v0 + 1144);
                v101 = v87;
                v103 = *(v0 + 1136);
                v104 = *(v0 + 1168);
                v111 = *(v0 + 1128);
                v106 = *(v0 + 1096);
                v108 = v83;
                v100 = *(v0 + 1088);
                v98 = *(v0 + 1104);
                v99 = *(v0 + 1080);
                v88 = *(*(v0 + 1192) + 40);
                v89 = sub_1DB50ABA0();
                v114 = *(v0 + 1112);
                *(v55 + v88) = 1;
                (*(*(v89 - 8) + 56))(v83, 1, 1, v89);
                (*(v85 + 16))(v84, v100, v86);
                (*(v111 + 16))(v87, v98);
                sub_1DB30C4B8(v99, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
                v90 = (*(v85 + 80) + 56) & ~*(v85 + 80);
                v91 = (v104 + *(v111 + 80) + v90) & ~*(v111 + 80);
                v92 = (v103 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
                v93 = swift_allocObject();
                *(v93 + 16) = 0;
                *(v93 + 24) = 0;
                *(v93 + 32) = v114;
                *(v93 + 48) = v106;
                (*(v85 + 32))(v93 + v90, v84, v86);
                (*(v111 + 32))(v93 + v91, v101, v114);
                *(v93 + v92) = v53;
                v94 = (v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8));
                v95 = *(v0 + 160);
                v94[3] = *(v0 + 144);
                v94[4] = v95;
                v96 = *(v0 + 128);
                v94[1] = *(v0 + 112);
                v94[2] = v96;
                *v94 = *(v0 + 96);

                sub_1DB4DD85C(0, 0, v108, &unk_1DB51CC48, v93);
              }
            }

            v97 = *(v0 + 1072);
            swift_beginAccess();
            sub_1DB468D18(v55, v97, type metadata accessor for JetPackAsset);

            sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

            v72 = *(v0 + 8);
LABEL_46:

            v72();
            return;
          }
        }
      }

      v48(v115, *(v0 + 1152), *(v0 + 1312));
      if (sub_1DB42E724())
      {
        if (v18 == 3)
        {
          (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
        }

        else
        {
          sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
        }

        sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
        v73 = swift_task_alloc();
        *(v0 + 1408) = v73;
        *v73 = v0;
        v73[1] = sub_1DB4590AC;
        v74 = *(v0 + 1240);
        v75 = *(v0 + 1120);
        v76 = *(v0 + 1112);
        v77 = *(v0 + 1104);
        v78 = *(v0 + 1088);
        v79 = *(v0 + 1072);

        sub_1DB45DF88(v79, v78, v77, v74, v0 + 16, v0 + 56, v76, v75);
        return;
      }

      sub_1DB46628C();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

      v72 = *(v0 + 8);
      goto LABEL_46;
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v110 = *(v0 + 1296);
    v59 = *(v0 + 1288);
    v60 = *(v0 + 1192);
    v61 = *(v0 + 1080);
    sub_1DB50BEB0();
    v62 = *(v0 + 280);
    v63 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1DB50EE90;
    *(v0 + 640) = MEMORY[0x1E69E6158];
    *(v0 + 616) = 0xD000000000000054;
    *(v0 + 624) = 0x80000001DB52F340;
    *(v65 + 48) = 0u;
    *(v65 + 32) = 0u;
    sub_1DB30C2D8(v0 + 616, v65 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v65 + 64) = 0;
    *(v64 + 32) = v65;
    Logger.error(_:)(v64, v62, v63);

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_1DB30623C(v59, &qword_1ECC46F20, qword_1DB5105D0);
    v110(v59, 1, 1, v60);
    v66 = v61[3];
    v67 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v66);
    v112 = (*(v67 + 24) + **(v67 + 24));
    v68 = swift_task_alloc();
    *(v0 + 1360) = v68;
    *v68 = v0;
    v68[1] = sub_1DB458294;
    v69 = *(v0 + 1224);

    v112(v69, v66, v67);
  }
}

uint64_t sub_1DB458294()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_1DB45A278;
  }

  else
  {
    v2 = sub_1DB4583A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4583A8()
{
  v93 = v0;
  sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v2 + 48);
  *(v0 + 1376) = v4;
  *(v0 + 1384) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v88 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v81 = v5;
  *(v0 + 489) = v5 & 1;
  v7 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v1, v7, &qword_1ECC46F20, qword_1DB5105D0);
  if (v88(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v10);
    (*(v11 + 8))(v92, v9, v10, v11);
    v8 = LOBYTE(v92[0]);
    sub_1DB467374(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1288);
  v13 = *(v0 + 1256);
  v14 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v84 = *(v0 + 368);
  v86 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v86);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB50EE90;
  v92[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0x7341646568636163;
  v16._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  sub_1DB30C4B8(v12, v13, &qword_1ECC46F20, qword_1DB5105D0);
  v17 = v88(v13, 1, v14);
  v18 = *(v0 + 1256);
  if (v17 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v18, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v20 = v92[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
  }

  v23 = (v0 + 712);
  *(v20 + 2) = v22 + 1;
  v24 = &v20[40 * v22];
  v25 = *(v0 + 496);
  v26 = *(v0 + 512);
  v24[64] = *(v0 + 528);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v92[0] = v20;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v27._countAndFlagsBits = 0x3D73757461747320;
  v27._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  if (v8 == 4)
  {
    v28 = 0;
    *v23 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v23 = v8;
    v28 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v28;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v29 = v92[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
  }

  v32 = *(v0 + 1312);
  v33 = *(v0 + 1152);
  *(v29 + 2) = v31 + 1;
  v34 = &v29[40 * v31];
  v35 = *(v0 + 576);
  v36 = *(v0 + 592);
  v34[64] = *(v0 + 608);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v92[0] = v29;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v15 + 32) = v92[0];
  Logger.info(_:)(v15, v86, v84);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v38 = *(v32 + 24);
  v38(v92, v33, v32);
  v39 = sub_1DB42E620();
  if (v8 != 4 && (v39 & 1) != 0)
  {
    v40 = *(v0 + 1288);
    v41 = *(v0 + 1248);
    v42 = *(v0 + 1192);
    v43 = swift_allocBox();
    v45 = v44;
    sub_1DB30C4B8(v40, v41, &qword_1ECC46F20, qword_1DB5105D0);
    v46 = v88(v41, 1, v42);
    v47 = *(v0 + 1248);
    if (v46 == 1)
    {
      sub_1DB30623C(v47, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v47, v45, type metadata accessor for JetPackAsset);
      v48 = v8 - 1;
      if (v8 <= 1 && (v81 & 1) == 0)
      {
        sub_1DB50BEB0();
        v59 = *(v0 + 400);
        v90 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v59);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v61 + 48) = 0u;
        *(v61 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v61 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v61 + 64) = 0;
        *(v60 + 32) = v61;
        Logger.info(_:)(v60, v59, v90);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v48 <= 1)
        {
          v38(v92, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v62 = *(v0 + 1184);
            v63 = *(v0 + 1176);
            v64 = *(v0 + 1160);
            v65 = *(v0 + 1152);
            v66 = *(v0 + 1144);
            v80 = v66;
            v82 = *(v0 + 1136);
            v83 = *(v0 + 1168);
            v87 = v62;
            v89 = *(v0 + 1128);
            v85 = *(v0 + 1096);
            v79 = *(v0 + 1088);
            v77 = *(v0 + 1104);
            v78 = *(v0 + 1080);
            v67 = *(*(v0 + 1192) + 40);
            v68 = sub_1DB50ABA0();
            v91 = *(v0 + 1112);
            *(v45 + v67) = 1;
            (*(*(v68 - 8) + 56))(v62, 1, 1, v68);
            (*(v64 + 16))(v63, v79, v65);
            (*(v89 + 16))(v66, v77);
            sub_1DB30C4B8(v78, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v69 = (*(v64 + 80) + 56) & ~*(v64 + 80);
            v70 = (v83 + *(v89 + 80) + v69) & ~*(v89 + 80);
            v71 = (v82 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
            v72 = swift_allocObject();
            *(v72 + 16) = 0;
            *(v72 + 24) = 0;
            *(v72 + 32) = v91;
            *(v72 + 48) = v85;
            (*(v64 + 32))(v72 + v69, v63, v65);
            (*(v89 + 32))(v72 + v70, v80, v91);
            *(v72 + v71) = v43;
            v73 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
            v74 = *(v0 + 160);
            v73[3] = *(v0 + 144);
            v73[4] = v74;
            v75 = *(v0 + 128);
            v73[1] = *(v0 + 112);
            v73[2] = v75;
            *v73 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v87, &unk_1DB51CC48, v72);
          }
        }

        v76 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v45, v76, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v50 = *(v0 + 8);
        goto LABEL_34;
      }
    }
  }

  v38(v92, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v8 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v52 = swift_task_alloc();
    *(v0 + 1408) = v52;
    *v52 = v0;
    v52[1] = sub_1DB4590AC;
    v53 = *(v0 + 1240);
    v54 = *(v0 + 1120);
    v55 = *(v0 + 1112);
    v56 = *(v0 + 1104);
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1072);

    return sub_1DB45DF88(v58, v57, v56, v53, v0 + 16, v0 + 56, v55, v54);
  }

  sub_1DB46628C();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v50 = *(v0 + 8);
LABEL_34:

  return v50();
}

uint64_t sub_1DB4590AC()
{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v3 = sub_1DB45B1D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_1DB4591D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4591D0()
{
  sub_1DB30623C(v0[155], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C(v0[161], &qword_1ECC46F20, qword_1DB5105D0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB459334()
{
  v109 = v0;
  v1 = (v0 + 456);

  v2 = *(v0 + 1352);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v108[0] = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1024);
  *(v0 + 928) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 904, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 488) = 0;
  v10 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v108[0] + 2) + 1, 1, v108[0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 472);
  v13[64] = *(v0 + 488);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v108[0] = v10;
  sub_1DB30623C(v0 + 904, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v18 + 48);
  *(v0 + 1376) = v20;
  *(v0 + 1384) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v105 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v96 = v21;
  *(v0 + 489) = v21 & 1;
  v23 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v105(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
    (*(v27 + 8))(v108, v25, v26, v27);
    v24 = LOBYTE(v108[0]);
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v99 = *(v0 + 368);
  v101 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v101);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DB50EE90;
  v108[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1DB30C4B8(v28, v29, &qword_1ECC46F20, qword_1DB5105D0);
  v33 = v105(v29, 1, v30);
  v34 = *(v0 + 1256);
  if (v33 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v36 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 712);
  *(v36 + 2) = v38 + 1;
  v40 = &v36[40 * v38];
  v41 = *(v0 + 496);
  v42 = *(v0 + 512);
  v40[64] = *(v0 + 528);
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  v108[0] = v36;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43._countAndFlagsBits = 0x3D73757461747320;
  v43._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  if (v24 == 4)
  {
    v44 = 0;
    *v39 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v39 = v24;
    v44 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v44;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v45 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1DB301BC0(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 1312);
  v49 = *(v0 + 1152);
  *(v45 + 2) = v47 + 1;
  v50 = &v45[40 * v47];
  v51 = *(v0 + 576);
  v52 = *(v0 + 592);
  v50[64] = *(v0 + 608);
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  v108[0] = v45;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  *(v31 + 32) = v108[0];
  Logger.info(_:)(v31, v101, v99);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v54 = *(v48 + 24);
  v54(v108, v49, v48);
  v55 = sub_1DB42E620();
  if (v24 != 4 && (v55 & 1) != 0)
  {
    v56 = *(v0 + 1288);
    v57 = *(v0 + 1248);
    v58 = *(v0 + 1192);
    v59 = swift_allocBox();
    v61 = v60;
    sub_1DB30C4B8(v56, v57, &qword_1ECC46F20, qword_1DB5105D0);
    v62 = v105(v57, 1, v58);
    v63 = *(v0 + 1248);
    if (v62 == 1)
    {
      sub_1DB30623C(v63, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v63, v61, type metadata accessor for JetPackAsset);
      v64 = v24 - 1;
      if (v24 <= 1 && (v96 & 1) == 0)
      {
        sub_1DB50BEB0();
        v75 = *(v0 + 400);
        v106 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v75);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v77 + 48) = 0u;
        *(v77 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v77 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v77 + 64) = 0;
        *(v76 + 32) = v77;
        Logger.info(_:)(v76, v75, v106);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v64 <= 1)
        {
          v54(v108, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v78 = *(v0 + 1184);
            v79 = *(v0 + 1176);
            v100 = *(v0 + 1168);
            v102 = v78;
            v80 = *(v0 + 1160);
            v81 = *(v0 + 1152);
            v82 = *(v0 + 1144);
            v97 = v82;
            v98 = *(v0 + 1136);
            v103 = *(v0 + 1096);
            v104 = *(v0 + 1128);
            v95 = *(v0 + 1088);
            v93 = *(v0 + 1104);
            v94 = *(v0 + 1080);
            v83 = *(*(v0 + 1192) + 40);
            v84 = sub_1DB50ABA0();
            v107 = *(v0 + 1112);
            *(v61 + v83) = 1;
            (*(*(v84 - 8) + 56))(v78, 1, 1, v84);
            (*(v80 + 16))(v79, v95, v81);
            (*(v104 + 16))(v82, v93);
            sub_1DB30C4B8(v94, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v85 = (*(v80 + 80) + 56) & ~*(v80 + 80);
            v86 = (v100 + *(v104 + 80) + v85) & ~*(v104 + 80);
            v87 = (v98 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
            v88 = swift_allocObject();
            *(v88 + 16) = 0;
            *(v88 + 24) = 0;
            *(v88 + 32) = v107;
            *(v88 + 48) = v103;
            (*(v80 + 32))(v88 + v85, v79, v81);
            (*(v104 + 32))(v88 + v86, v97, v107);
            *(v88 + v87) = v59;
            v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
            v90 = *(v0 + 160);
            v89[3] = *(v0 + 144);
            v89[4] = v90;
            v91 = *(v0 + 128);
            v89[1] = *(v0 + 112);
            v89[2] = v91;
            *v89 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v102, &unk_1DB51CC48, v88);
          }
        }

        v92 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v61, v92, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v66 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v54(v108, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v68 = swift_task_alloc();
    *(v0 + 1408) = v68;
    *v68 = v0;
    v68[1] = sub_1DB4590AC;
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1112);
    v72 = *(v0 + 1104);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1072);

    return sub_1DB45DF88(v74, v73, v72, v69, v0 + 16, v0 + 56, v71, v70);
  }

  sub_1DB46628C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v66 = *(v0 + 8);
LABEL_40:

  return v66();
}

uint64_t sub_1DB45A278()
{
  v109 = v0;
  v1 = (v0 + 456);
  sub_1DB467374(*(v0 + 1224), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1368);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v108[0] = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001DB52F1D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1024);
  *(v0 + 928) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 904));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1DB30C4B8(v0 + 904, v0 + 936, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v1 = 0u;
  *(v0 + 472) = 0u;
  sub_1DB30C2D8(v0 + 936, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 488) = 0;
  v10 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v108[0] + 2) + 1, 1, v108[0]);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 472);
  v13[64] = *(v0 + 488);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v108[0] = v10;
  sub_1DB30623C(v0 + 904, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v18 + 48);
  *(v0 + 1376) = v20;
  *(v0 + 1384) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v105 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v96 = v21;
  *(v0 + 489) = v21 & 1;
  v23 = *(v0 + 1264);
  sub_1DB30BE90(*(v0 + 1080) + 40, v0 + 296);
  sub_1DB30C4B8(v17, v23, &qword_1ECC46F20, qword_1DB5105D0);
  if (v105(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1216);
    sub_1DB468D80(*(v0 + 1264), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v26);
    (*(v27 + 8))(v108, v25, v26, v27);
    v24 = LOBYTE(v108[0]);
    sub_1DB467374(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 490) = v24;
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1192);
  *(v0 + 1392) = qword_1EE30C918;
  sub_1DB50BEB0();
  v99 = *(v0 + 368);
  v101 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v101);
  *(v0 + 1400) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DB50EE90;
  v108[0] = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1DB30C4B8(v28, v29, &qword_1ECC46F20, qword_1DB5105D0);
  v33 = v105(v29, 1, v30);
  v34 = *(v0 + 1256);
  if (v33 == 1)
  {
    sub_1DB30623C(*(v0 + 1256), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 840) = 0u;
    *(v0 + 856) = 0u;
  }

  else
  {
    *(v0 + 864) = *(v0 + 1192);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    sub_1DB468D80(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 776, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v36 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 712);
  *(v36 + 2) = v38 + 1;
  v40 = &v36[40 * v38];
  v41 = *(v0 + 496);
  v42 = *(v0 + 512);
  v40[64] = *(v0 + 528);
  *(v40 + 2) = v41;
  *(v40 + 3) = v42;
  v108[0] = v36;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43._countAndFlagsBits = 0x3D73757461747320;
  v43._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  if (v24 == 4)
  {
    v44 = 0;
    *v39 = 0;
    *(v0 + 720) = 0;
    *(v0 + 728) = 0;
  }

  else
  {
    *v39 = v24;
    v44 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 736) = v44;
  sub_1DB30C4B8(v0 + 712, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  sub_1DB30C2D8(v0 + 648, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 608) = 0;
  v45 = v108[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1DB301BC0(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 1312);
  v49 = *(v0 + 1152);
  *(v45 + 2) = v47 + 1;
  v50 = &v45[40 * v47];
  v51 = *(v0 + 576);
  v52 = *(v0 + 592);
  v50[64] = *(v0 + 608);
  *(v50 + 2) = v51;
  *(v50 + 3) = v52;
  v108[0] = v45;
  sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  *(v31 + 32) = v108[0];
  Logger.info(_:)(v31, v101, v99);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v54 = *(v48 + 24);
  v54(v108, v49, v48);
  v55 = sub_1DB42E620();
  if (v24 != 4 && (v55 & 1) != 0)
  {
    v56 = *(v0 + 1288);
    v57 = *(v0 + 1248);
    v58 = *(v0 + 1192);
    v59 = swift_allocBox();
    v61 = v60;
    sub_1DB30C4B8(v56, v57, &qword_1ECC46F20, qword_1DB5105D0);
    v62 = v105(v57, 1, v58);
    v63 = *(v0 + 1248);
    if (v62 == 1)
    {
      sub_1DB30623C(v63, &qword_1ECC46F20, qword_1DB5105D0);
      swift_deallocBox();
    }

    else
    {
      sub_1DB468D80(v63, v61, type metadata accessor for JetPackAsset);
      v64 = v24 - 1;
      if (v24 <= 1 && (v96 & 1) == 0)
      {
        sub_1DB50BEB0();
        v75 = *(v0 + 400);
        v106 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v75);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1DB50EE90;
        *(v0 + 896) = MEMORY[0x1E69E6158];
        *(v0 + 872) = 0xD000000000000012;
        *(v0 + 880) = 0x80000001DB52F320;
        *(v77 + 48) = 0u;
        *(v77 + 32) = 0u;
        sub_1DB30C2D8(v0 + 872, v77 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v77 + 64) = 0;
        *(v76 + 32) = v77;
        Logger.info(_:)(v76, v75, v106);

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        if (v64 <= 1)
        {
          v54(v108, *(v0 + 1152), *(v0 + 1312));
          if (sub_1DB42E724())
          {
            v78 = *(v0 + 1184);
            v79 = *(v0 + 1176);
            v100 = *(v0 + 1168);
            v102 = v78;
            v80 = *(v0 + 1160);
            v81 = *(v0 + 1152);
            v82 = *(v0 + 1144);
            v97 = v82;
            v98 = *(v0 + 1136);
            v103 = *(v0 + 1096);
            v104 = *(v0 + 1128);
            v95 = *(v0 + 1088);
            v93 = *(v0 + 1104);
            v94 = *(v0 + 1080);
            v83 = *(*(v0 + 1192) + 40);
            v84 = sub_1DB50ABA0();
            v107 = *(v0 + 1112);
            *(v61 + v83) = 1;
            (*(*(v84 - 8) + 56))(v78, 1, 1, v84);
            (*(v80 + 16))(v79, v95, v81);
            (*(v104 + 16))(v82, v93);
            sub_1DB30C4B8(v94, v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
            v85 = (*(v80 + 80) + 56) & ~*(v80 + 80);
            v86 = (v100 + *(v104 + 80) + v85) & ~*(v104 + 80);
            v87 = (v98 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
            v88 = swift_allocObject();
            *(v88 + 16) = 0;
            *(v88 + 24) = 0;
            *(v88 + 32) = v107;
            *(v88 + 48) = v103;
            (*(v80 + 32))(v88 + v85, v79, v81);
            (*(v104 + 32))(v88 + v86, v97, v107);
            *(v88 + v87) = v59;
            v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
            v90 = *(v0 + 160);
            v89[3] = *(v0 + 144);
            v89[4] = v90;
            v91 = *(v0 + 128);
            v89[1] = *(v0 + 112);
            v89[2] = v91;
            *v89 = *(v0 + 96);

            sub_1DB4DD85C(0, 0, v102, &unk_1DB51CC48, v88);
          }
        }

        v92 = *(v0 + 1072);
        swift_beginAccess();
        sub_1DB468D18(v61, v92, type metadata accessor for JetPackAsset);

        sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

        v66 = *(v0 + 8);
        goto LABEL_40;
      }
    }
  }

  v54(v108, *(v0 + 1152), *(v0 + 1312));
  if (sub_1DB42E724())
  {
    if (v24 == 3)
    {
      (*(v0 + 1296))(*(v0 + 1240), 1, 1, *(v0 + 1192));
    }

    else
    {
      sub_1DB30C4B8(*(v0 + 1288), *(v0 + 1240), &qword_1ECC46F20, qword_1DB5105D0);
    }

    sub_1DB30C4B8(*(v0 + 1080), v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
    v68 = swift_task_alloc();
    *(v0 + 1408) = v68;
    *v68 = v0;
    v68[1] = sub_1DB4590AC;
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1112);
    v72 = *(v0 + 1104);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1072);

    return sub_1DB45DF88(v74, v73, v72, v69, v0 + 16, v0 + 56, v71, v70);
  }

  sub_1DB46628C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v66 = *(v0 + 8);
LABEL_40:

  return v66();
}

uint64_t sub_1DB45B1D0()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1288);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1DB30C4B8(v2, v3, &qword_1ECC46F20, qword_1DB5105D0);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1DB30623C(*(v0 + 1232), &qword_1ECC46F20, qword_1DB5105D0);
LABEL_11:
    v25 = *(v0 + 1240);
    swift_willThrow();
    sub_1DB30623C(v25, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

    v24 = *(v0 + 8);
    goto LABEL_12;
  }

  v5 = *(v0 + 490);
  sub_1DB468D80(*(v0 + 1232), *(v0 + 1208), type metadata accessor for JetPackAsset);
  if (v5 || *(v0 + 489) != 1)
  {
    sub_1DB467374(*(v0 + 1208), type metadata accessor for JetPackAsset);
    goto LABEL_11;
  }

  sub_1DB50BEB0();
  v6 = *(v0 + 240);
  v30 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v31 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v8._object = 0x80000001DB52F200;
  v8._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 968);
  v10 = *(v0 + 976);
  *(v0 + 704) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_1DB30C4B8(v0 + 680, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  sub_1DB30C2D8(v0 + 744, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 568) = 0;
  v12 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
  }

  v15 = *(v0 + 1416);
  v29 = *(v0 + 1208);
  v27 = *(v0 + 1240);
  v28 = *(v0 + 1072);
  *(v12 + 2) = v14 + 1;
  v16 = &v12[40 * v14];
  v17 = *(v0 + 536);
  v18 = *(v0 + 552);
  v16[64] = *(v0 + 568);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v7 + 32) = v12;
  Logger.error(_:)(v7, v6, v30);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  sub_1DB50BEB0();
  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v21);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DB50EE90;
  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = 0xD000000000000075;
  *(v0 + 816) = 0x80000001DB52F230;
  *(v23 + 48) = 0u;
  *(v23 + 32) = 0u;
  sub_1DB30C2D8(v0 + 808, v23 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v23 + 64) = 0;
  *(v22 + 32) = v23;
  Logger.warning(_:)(v22, v21, v20);

  sub_1DB30623C(v27, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  sub_1DB468D80(v29, v28, type metadata accessor for JetPackAsset);
  sub_1DB30623C(*(v0 + 1288), &qword_1ECC46F20, qword_1DB5105D0);

  v24 = *(v0 + 8);
LABEL_12:

  return v24();
}

uint64_t sub_1DB45B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v8[83] = *(v9 - 8);
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45B95C, 0, 0);
}

uint64_t sub_1DB45B95C()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 664);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  *(v0 + 720) = qword_1EE30C918;
  sub_1DB50BEB0();
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001DB52F3A0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB30C2D8(v0 + 416, v7 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  swift_beginAccess();
  sub_1DB468D18(v1, v2, type metadata accessor for JetPackAsset);
  (*(v3 + 56))(v2, 0, 1, v31);
  sub_1DB30C4B8(v32, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB30BE90(v0 + 16, v0 + 96);
  sub_1DB30BE90(v0 + 56, v0 + 136);
  sub_1DB50AC80();
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  sub_1DB50BEB0();
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v12);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  v33 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1DB30C4B8(v8, v9, &qword_1ECC46F20, qword_1DB5105D0);
  v16 = (*(v10 + 48))(v9, 1, v11);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1DB30623C(*(v0 + 696), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1DB468D80(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 448, v0 + 480, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB30C2D8(v0 + 480, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 368) = 0;
  v19 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 448, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v12, v13);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 280) = &type metadata for SystemDateProvider;
  *(v0 + 288) = &protocol witness table for SystemDateProvider;
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1DB45BF14;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);
  v29 = *(v0 + 632);

  return sub_1DB41BE7C(v28, v29, v27, v0 + 256);
}

uint64_t sub_1DB45BF14()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_1DB45C290;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 256));
    v3 = sub_1DB45C030;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45C030()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1DB468D80(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v7 = v0[15];
    v8 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
    v12 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[94] = v9;
    *v9 = v0;
    v9[1] = sub_1DB45C380;
    v10 = v0[86];
    v11 = v0[84];

    return v12(v11, v10, v7, v8);
  }

  else
  {
    sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DB45C290()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB45C380()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1DB45C5B4;
  }

  else
  {
    sub_1DB467374(*(v2 + 672), type metadata accessor for JetPackAsset);
    v3 = sub_1DB45C4B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45C4B0()
{
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB45C5B4()
{
  sub_1DB50BEB0();
  v1 = *(v0 + 320);
  v18 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001DB52F2F0;
  v3._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 600);
  v5 = *(v0 + 608);
  *(v0 + 536) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1DB30C4B8(v0 + 512, v0 + 544, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 544, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 704);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 376);
  v14 = *(v0 + 392);
  v12[64] = *(v0 + 408);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 512, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v2 + 32) = v7;
  Logger.error(_:)(v2, v1, v18);

  sub_1DB30623C(v11, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  sub_1DB467374(*(v0 + 688), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DB45C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = a8;
  v8[80] = a6;
  v8[79] = a5;
  v9 = type metadata accessor for JetPackAsset(0);
  v8[82] = v9;
  v8[83] = *(v9 - 8);
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45CA00, 0, 0);
}

uint64_t sub_1DB45CA00()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v31 = *(v0 + 704);
  v32 = *(v0 + 656);
  v34 = *(v0 + 648);
  v3 = *(v0 + 632);
  *(v0 + 720) = qword_1EE30C918;
  sub_1DB50BEB0();
  v4 = *(v0 + 200);
  v30 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *(v0 + 440) = MEMORY[0x1E69E6158];
  *(v0 + 416) = 0xD000000000000020;
  *(v0 + 424) = 0x80000001DB52F3A0;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1DB30C2D8(v0 + 416, v6 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  Logger.info(_:)(v5, v4, v30);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  swift_beginAccess();
  sub_1DB468D18(v1, v31, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v31, 0, 1, v32);
  sub_1DB30C4B8(v34, v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  *(v0 + 296) = *v3;
  *(v0 + 312) = v8;
  *(v0 + 328) = v7;
  sub_1DB30BE90(v0 + 16, v0 + 96);
  sub_1DB30BE90(v0 + 56, v0 + 136);
  sub_1DB50AC80();
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  sub_1DB50BEB0();
  v13 = *(v0 + 240);
  v33 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  v35 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0xD000000000000032;
  v15._object = 0x80000001DB52F2B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  sub_1DB30C4B8(v9, v10, &qword_1ECC46F20, qword_1DB5105D0);
  v16 = (*(v11 + 48))(v10, 1, v12);
  v17 = *(v0 + 696);
  if (v16 == 1)
  {
    sub_1DB30623C(*(v0 + 696), &qword_1ECC46F20, qword_1DB5105D0);
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
  }

  else
  {
    *(v0 + 472) = *(v0 + 656);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
    sub_1DB468D80(v17, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v0 + 448, v0 + 480, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB30C2D8(v0 + 480, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 368) = 0;
  v19 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v22[64] = *(v0 + 368);
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  sub_1DB30623C(v0 + 448, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 32) = v19;
  Logger.info(_:)(v14, v13, v33);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  *v26 = v0;
  v26[1] = sub_1DB45CFD0;
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v28, v0 + 296, v27);
}

uint64_t sub_1DB45CFD0()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_1DB45D348;
  }

  else
  {
    v2 = sub_1DB45D0E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB45D0E4()
{
  v1 = v0[86];
  v2 = v0[82];
  sub_1DB468D80(v0[85], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[15];
    v9 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[94] = v10;
    *v10 = v0;
    v10[1] = sub_1DB45D430;
    v11 = v0[86];
    v12 = v0[84];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[88];
    sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
    sub_1DB30623C(v5, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DB45D348()
{
  sub_1DB30623C(v0[88], &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB45D430()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1DB45D668;
  }

  else
  {
    sub_1DB467374(*(v2 + 672), type metadata accessor for JetPackAsset);
    v3 = sub_1DB45D560;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45D560()
{
  v1 = v0[88];
  sub_1DB467374(v0[86], type metadata accessor for JetPackAsset);
  sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
  sub_1DB30623C((v0 + 12), &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB45D668()
{
  sub_1DB50BEB0();
  v1 = *(v0 + 280);
  v19 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001DB52F2F0;
  v3._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 600);
  v5 = *(v0 + 608);
  *(v0 + 536) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 512));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1DB30C4B8(v0 + 512, v0 + 544, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 544, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v7 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 704);
  v12 = *(v0 + 688);
  *(v7 + 2) = v9 + 1;
  v13 = &v7[40 * v9];
  v14 = *(v0 + 376);
  v15 = *(v0 + 392);
  v13[64] = *(v0 + 408);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 512, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v2 + 32) = v7;
  Logger.error(_:)(v2, v1, v19);

  sub_1DB467374(v12, type metadata accessor for JetPackAsset);
  sub_1DB30623C(v11, &qword_1ECC46F20, qword_1DB5105D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  sub_1DB30623C(v0 + 96, &qword_1ECC45910, &qword_1DB51C4A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DB45D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v12;
  v8[29] = v13;
  v8[26] = a6;
  v8[27] = a8;
  v8[24] = a4;
  v8[25] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v8[30] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DB45DA9C, 0, 0);
}

uint64_t sub_1DB45DA9C()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v17 = v0[31];
  v18 = v0[27];
  sub_1DB50BEB0();
  v4 = v0[15];
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1DB50EE90;
  v0[20] = v8;
  v0[17] = 0xD000000000000020;
  v0[18] = 0x80000001DB52F3A0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB30C2D8((v0 + 17), v7 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_beginAccess();
  sub_1DB468D18(v1, v3, type metadata accessor for JetPackAsset);
  (*(v2 + 56))(v3, 0, 1, v17);
  sub_1DB30C4B8(v18, (v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1DB45DD20;
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[26];

  return sub_1DB45DF88(v10, v14, v15, v11, (v0 + 2), (v0 + 7), v13, v12);
}

uint64_t sub_1DB45DD20()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  *(*v1 + 288) = v0;

  sub_1DB30623C(v3, &qword_1ECC46F20, qword_1DB5105D0);
  if (v0)
  {
    v4 = sub_1DB45DF04;
  }

  else
  {
    sub_1DB467374(v2[33], type metadata accessor for JetPackAsset);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = sub_1DB45DE94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45DE94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB45DF04()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB45DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[56] = a7;
  v8[57] = a8;
  v8[54] = a3;
  v8[55] = a4;
  v8[52] = a1;
  v8[53] = a2;
  v11 = type metadata accessor for JetPackAsset(0);
  v8[58] = v11;
  v8[59] = *(v11 - 8);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v8[63] = swift_task_alloc();
  sub_1DB30BE90(a5, (v8 + 2));
  sub_1DB30BE90(a6, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1DB45E0C8, 0, 0);
}

uint64_t sub_1DB45E0C8(uint64_t a1)
{
  sub_1DB50AC80();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 504);
  v3 = *(v1 + 464);
  v4 = *(v1 + 472);
  v5 = *(v1 + 440);
  *(v1 + 512) = qword_1EE30C918;
  sub_1DB50BEB0();
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v6);
  *(v1 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50EE90;
  v29 = sub_1DB301BC0(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v9._object = 0x80000001DB52F2B0;
  v9._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  sub_1DB30C4B8(v5, v2, &qword_1ECC46F20, qword_1DB5105D0);
  v10 = (*(v4 + 48))(v2, 1, v3);
  v11 = *(v1 + 504);
  if (v10 == 1)
  {
    sub_1DB30623C(*(v1 + 504), &qword_1ECC46F20, qword_1DB5105D0);
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
  }

  else
  {
    *(v1 + 280) = *(v1 + 464);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 256));
    sub_1DB468D80(v11, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1DB30C4B8(v1 + 256, v1 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  sub_1DB30C2D8(v1 + 288, v1 + 176, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v1 + 208) = 0;
  v13 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  v28 = *(v1 + 456);
  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = *(v1 + 176);
  v18 = *(v1 + 192);
  v16[64] = *(v1 + 208);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1DB30623C(v1 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v8 + 32) = v13;
  Logger.info(_:)(v8, v6, v7);

  __swift_destroy_boxed_opaque_existential_0((v1 + 96));
  v27 = (*(v28 + 24) + **(v28 + 24));
  v20 = swift_task_alloc();
  *(v1 + 528) = v20;
  *v20 = v1;
  v20[1] = sub_1DB45E514;
  v21 = *(v1 + 488);
  v22 = *(v1 + 448);
  v23 = *(v1 + 456);
  v24 = *(v1 + 440);
  v25 = *(v1 + 424);

  return v27(v21, v25, v24, v22, v23);
}

uint64_t sub_1DB45E514()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1DB45EA40;
  }

  else
  {
    v2 = sub_1DB45E628;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB45E628()
{
  v1 = v0[62];
  v2 = v0[58];
  sub_1DB468D80(v0[61], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v12 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[68] = v9;
    *v9 = v0;
    v9[1] = sub_1DB45E84C;
    v10 = v0[62];
    v11 = v0[60];

    return v12(v11, v10, v7, v8);
  }

  else
  {
    sub_1DB468D80(v0[62], v0[52], type metadata accessor for JetPackAsset);
    sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DB45E84C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1DB45EAEC;
  }

  else
  {
    sub_1DB467374(*(v2 + 480), type metadata accessor for JetPackAsset);
    v3 = sub_1DB45E97C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB45E97C()
{
  sub_1DB468D80(v0[62], v0[52], type metadata accessor for JetPackAsset);
  sub_1DB30623C((v0 + 2), &qword_1ECC45910, &qword_1DB51C4A0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB45EA40()
{
  sub_1DB30623C(v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB45EAEC()
{
  sub_1DB50BEB0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v18 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001DB52F2F0;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  *(v0 + 344) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 320));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1DB30C4B8(v0 + 320, v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 352, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v8 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 552);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v12[64] = *(v0 + 248);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 320, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  sub_1DB468D80(*(v0 + 496), *(v0 + 416), type metadata accessor for JetPackAsset);
  sub_1DB30623C(v0 + 16, &qword_1ECC45910, &qword_1DB51C4A0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DB45EDE8()
{
  sub_1DB466224(*(v0 + 328) + 24, v0 + 96);
  if (!*(v0 + 120))
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1DB46625C(v0 + 96);
    goto LABEL_10;
  }

  v1 = *(v0 + 160);
  *(v0 + 64) = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = *(v0 + 128);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v2;
  *(v0 + 16) = *(v0 + 96);
  if (!*(v0 + 40))
  {
LABEL_10:
    sub_1DB30623C(v0 + 16, &qword_1ECC45918, &qword_1DB51C4F0);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    goto LABEL_11;
  }

  sub_1DB2FEA0C((v0 + 16), v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (*(v0 + 240))
  {
    sub_1DB2FEA0C((v0 + 216), v0 + 176);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    *(v0 + 320) = MEMORY[0x1E69E6158];
    *(v0 + 296) = 0xD000000000000015;
    *(v0 + 304) = 0x80000001DB52F000;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1DB30C2D8(v0 + 296, v6 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    Logger.info(_:)(v5, v4, v3);

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v7);
    v12 = (*(v8 + 32) + **(v8 + 32));
    v9 = swift_task_alloc();
    *(v0 + 336) = v9;
    *v9 = v0;
    v9[1] = sub_1DB45F144;

    return v12(v7, v8);
  }

LABEL_11:
  sub_1DB30623C(v0 + 216, &qword_1ECC45928, &qword_1DB51C508);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB45F144()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1DB45F2BC;
  }

  else
  {
    v2 = sub_1DB45F258;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB45F258()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB45F2BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t JetPackAssetSession.performMaintenance()()
{
  v1[126] = v0;
  v2 = type metadata accessor for JetPackAsset(0);
  v1[127] = v2;
  v1[128] = *(v2 - 8);
  v1[129] = swift_task_alloc();
  v3 = sub_1DB50A230();
  v1[130] = v3;
  v1[131] = *(v3 - 8);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB45F448, 0, 0);
}

uint64_t sub_1DB45F448()
{
  sub_1DB466224(*(v0 + 1008) + 24, v0 + 96);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 160);
    *(v0 + 64) = *(v0 + 144);
    *(v0 + 80) = v1;
    v2 = *(v0 + 128);
    *(v0 + 32) = *(v0 + 112);
    *(v0 + 48) = v2;
    *(v0 + 16) = *(v0 + 96);
    if (*(v0 + 40))
    {
      v3 = *(v0 + 64);
      *(v0 + 208) = *(v0 + 48);
      *(v0 + 224) = v3;
      *(v0 + 240) = *(v0 + 80);
      v4 = *(v0 + 32);
      *(v0 + 176) = *(v0 + 16);
      *(v0 + 192) = v4;
      if (qword_1EE30E170 != -1)
      {
        swift_once();
      }

      v5 = sub_1DB50A270();
      __swift_project_value_buffer(v5, qword_1EE30E178);
      sub_1DB50A250();
      sub_1DB50A200();
      v6 = sub_1DB50A250();
      v7 = sub_1DB50B070();
      if (sub_1DB50B0E0())
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v6, v7, v9, "Perform Maintenance", "", v8, 2u);
        MEMORY[0x1E1288220](v8, -1, -1);
      }

      v10 = *(v0 + 1064);
      v11 = *(v0 + 1056);
      v12 = *(v0 + 1048);
      v13 = *(v0 + 1040);

      (*(v12 + 16))(v11, v10, v13);
      sub_1DB50A2C0();
      swift_allocObject();
      *(v0 + 1072) = sub_1DB50A2B0();
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
      v19 = (*(v15 + 40) + **(v15 + 40));
      v16 = swift_task_alloc();
      *(v0 + 1080) = v16;
      *v16 = v0;
      v16[1] = sub_1DB45F778;

      return v19(v14, v15);
    }
  }

  else
  {
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    sub_1DB46625C(v0 + 96);
  }

  sub_1DB30623C(v0 + 16, &qword_1ECC45918, &qword_1DB51C4F0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DB45F778(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v4 = sub_1DB460884;
  }

  else
  {
    v4 = sub_1DB45F890;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB45F890()
{
  v56 = v0;
  v1 = *(*(v0 + 1088) + 16);
  *(v0 + 1104) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 456);
    v4 = (v0 + 536);
    v5 = (v0 + 1000);
    v6 = *(v0 + 1024);
    *(v0 + 372) = *(v6 + 80);
    *(v0 + 1112) = *(v6 + 72);
    while (1)
    {
      *(v0 + 1120) = v2;
      v7 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v2, v7, type metadata accessor for JetPackAsset);
      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v8);
      (*(v9 + 8))(&v55, v7, v8, v9);
      v10 = v55;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v52 = *(v0 + 288);
      v53 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v53);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB52F020;
      v12._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v10;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v3 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v13 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      v16 = *(v0 + 1032);
      v17 = *(v0 + 1016);
      *(v13 + 2) = v15 + 1;
      v18 = &v13[40 * v15];
      v19 = *v3;
      v20 = *(v0 + 472);
      v18[64] = *(v0 + 488);
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      *(v0 + 1000) = v13;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v21._countAndFlagsBits = 0x654B656863616320;
      v21._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v22 = (v16 + *(v17 + 28));
      v23 = *v22;
      *(v0 + 1144) = *v22;
      v24 = v22[1];
      *(v0 + 1152) = v24;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v23;
      *(v0 + 680) = v24;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v4 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v25 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
        *v5 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = *(v0 + 1032);
      v29 = *(v0 + 1016);
      *(v25 + 2) = v27 + 1;
      v30 = &v25[40 * v27];
      v31 = *v4;
      v32 = *(v0 + 552);
      v30[64] = *(v0 + 568);
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      *(v0 + 1000) = v25;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33._countAndFlagsBits = 0x4449656863616320;
      v33._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v34 = v28 + *(v29 + 24);
      v35 = *v34;
      *(v0 + 412) = *v34;
      LOBYTE(v34) = *(v34 + 4);
      *(v0 + 369) = v34;
      if (v34)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v35;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v36 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = *(v0 + 336);
      v41 = *(v0 + 352);
      v39[64] = *(v0 + 368);
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      *v5 = v36;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v11 + 32) = *v5;
      Logger.info(_:)(v11, v53, v52);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v10 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v2 = *(v0 + 1120) + 1;
      if (v2 == *(v0 + 1104))
      {
        goto LABEL_26;
      }
    }

    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v43);
    v54 = (*(v44 + 24) + **(v44 + 24));
    v45 = swift_task_alloc();
    *(v0 + 1160) = v45;
    *v45 = v0;
    v45[1] = sub_1DB45FFFC;
    v46 = *(v0 + 1032);

    return v54(v46, v43, v44);
  }

  else
  {
LABEL_26:

    v48 = *(v0 + 1064);
    v49 = *(v0 + 1048);
    v50 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v49 + 8))(v48, v50);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_1DB45FFFC()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_1DB460968;
  }

  else
  {
    v2 = sub_1DB460110;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB460110()
{
  v54 = v0;
  sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
  v1 = *(v0 + 1120) + 1;
  if (v1 == *(v0 + 1104))
  {
LABEL_2:

    v2 = *(v0 + 1064);
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v3 + 8))(v2, v4);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = (v0 + 456);
    v8 = (v0 + 536);
    v9 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v1;
      v10 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v1, v10, type metadata accessor for JetPackAsset);
      v11 = *(v0 + 240);
      v12 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v11);
      (*(v12 + 8))(&v53, v10, v11, v12);
      v13 = v53;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v50 = *(v0 + 288);
      v51 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v51);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v15._object = 0x80000001DB52F020;
      v15._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      *(v0 + 832) = v13;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v7 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v16 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
      }

      v19 = *(v0 + 1032);
      v20 = *(v0 + 1016);
      *(v16 + 2) = v18 + 1;
      v21 = &v16[40 * v18];
      v22 = *v7;
      v23 = *(v0 + 472);
      v21[64] = *(v0 + 488);
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      *(v0 + 1000) = v16;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v24._countAndFlagsBits = 0x654B656863616320;
      v24._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v25 = (v19 + *(v20 + 28));
      v26 = *v25;
      *(v0 + 1144) = *v25;
      v27 = v25[1];
      *(v0 + 1152) = v27;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v26;
      *(v0 + 680) = v27;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v8 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v28 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        *v9 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      v31 = *(v0 + 1032);
      v32 = *(v0 + 1016);
      *(v28 + 2) = v30 + 1;
      v33 = &v28[40 * v30];
      v34 = *v8;
      v35 = *(v0 + 552);
      v33[64] = *(v0 + 568);
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      *(v0 + 1000) = v28;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v36._countAndFlagsBits = 0x4449656863616320;
      v36._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      v37 = v31 + *(v32 + 24);
      v38 = *v37;
      *(v0 + 412) = *v37;
      LOBYTE(v37) = *(v37 + 4);
      *(v0 + 369) = v37;
      if (v37)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v38;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v39 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = *(v0 + 336);
      v44 = *(v0 + 352);
      v42[64] = *(v0 + 368);
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      *v9 = v39;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v14 + 32) = *v9;
      Logger.info(_:)(v14, v51, v50);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v13 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v1 = *(v0 + 1120) + 1;
      if (v1 == *(v0 + 1104))
      {
        goto LABEL_2;
      }
    }

    v46 = *(v0 + 200);
    v47 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v46);
    v52 = (*(v47 + 24) + **(v47 + 24));
    v48 = swift_task_alloc();
    *(v0 + 1160) = v48;
    *v48 = v0;
    v48[1] = sub_1DB45FFFC;
    v49 = *(v0 + 1032);

    return v52(v49, v46, v47);
  }
}

uint64_t sub_1DB460884()
{
  v1 = v0[133];
  v2 = v0[131];
  v3 = v0[130];
  sub_1DB4662E0(v0[134], "Perform Maintenance");

  (*(v2 + 8))(v1, v3);
  sub_1DB30623C((v0 + 22), &qword_1ECC45910, &qword_1DB51C4A0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB460968()
{
  v90 = v0;
  sub_1DB50BEB0();
  v84 = *(v0 + 328);
  v86 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v86);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB50EE90;
  *(v0 + 984) = sub_1DB301BC0(0, 56, 0, MEMORY[0x1E69E7CC0]);
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x80000001DB52F040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 960);
  v4 = *(v0 + 968);
  *(v0 + 728) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 704));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1DB30C4B8(v0 + 704, v0 + 768, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  sub_1DB30C2D8(v0 + 768, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 528) = 0;
  v6 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 1152);
  v10 = *(v0 + 1144);
  *(v6 + 2) = v8 + 1;
  v11 = &v6[40 * v8];
  v12 = *(v0 + 496);
  v13 = *(v0 + 512);
  v11[64] = *(v0 + 528);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  *(v0 + 984) = v6;
  sub_1DB30623C(v0 + 704, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x654B656863616320;
  v14._object = 0xEA00000000003D79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 824) = MEMORY[0x1E69E6158];
  *(v0 + 800) = v10;
  *(v0 + 808) = v9;
  sub_1DB30C4B8(v0 + 800, v0 + 864, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;

  sub_1DB30C2D8(v0 + 864, v0 + 416, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 448) = 0;
  v15 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
    *(v0 + 984) = v15;
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = (v0 + 376);
  v19 = *(v0 + 369);
  *(v15 + 2) = v17 + 1;
  v20 = &v15[40 * v17];
  v21 = *(v0 + 416);
  v22 = *(v0 + 432);
  v20[64] = *(v0 + 448);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v0 + 984) = v15;
  sub_1DB30623C(v0 + 800, &qword_1ECC426B0, &qword_1DB50EEB0);
  v23._countAndFlagsBits = 0x4449656863616320;
  v23._object = 0xE90000000000003DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  if (v19)
  {
    *(v0 + 896) = 0u;
    *(v0 + 912) = 0u;
  }

  else
  {
    v24 = *(v0 + 412);
    *(v0 + 920) = MEMORY[0x1E69E72F0];
    *(v0 + 896) = v24;
  }

  sub_1DB30C4B8(v0 + 896, v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v18 = 0u;
  *(v0 + 392) = 0u;
  sub_1DB30C2D8(v0 + 928, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 408) = 0;
  v25 = *(v0 + 984);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
  }

  v28 = *(v0 + 1168);
  v29 = *(v0 + 1032);
  *(v25 + 2) = v27 + 1;
  v30 = &v25[40 * v27];
  v31 = *v18;
  v32 = *(v0 + 392);
  v30[64] = *(v0 + 408);
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  *(v0 + 984) = v25;
  sub_1DB30623C(v0 + 896, &qword_1ECC426B0, &qword_1DB50EEB0);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  *(v1 + 32) = *(v0 + 984);
  Logger.error(_:)(v1, v86, v84);

  sub_1DB467374(v29, type metadata accessor for JetPackAsset);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v34 = *(v0 + 1120) + 1;
  if (v34 == *(v0 + 1104))
  {
LABEL_17:

    v35 = *(v0 + 1064);
    v36 = *(v0 + 1048);
    v37 = *(v0 + 1040);
    sub_1DB4662E0(*(v0 + 1072), "Perform Maintenance");

    (*(v36 + 8))(v35, v37);
    sub_1DB30623C(v0 + 176, &qword_1ECC45910, &qword_1DB51C4A0);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v40 = (v0 + 456);
    v41 = (v0 + 536);
    v42 = (v0 + 1000);
    while (1)
    {
      *(v0 + 1120) = v34;
      v43 = *(v0 + 1032);
      sub_1DB468D18(*(v0 + 1088) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 1112) * v34, v43, type metadata accessor for JetPackAsset);
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v44);
      (*(v45 + 8))(&v89, v43, v44, v45);
      v46 = v89;
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      *(v0 + 1128) = qword_1EE30C918;
      sub_1DB50BEB0();
      v83 = *(v0 + 288);
      v85 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v85);
      *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1DB50EE90;
      *(v0 + 1000) = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v48._object = 0x80000001DB52F020;
      v48._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v0 + 856) = &type metadata for JetPackAssetCacheStatus;
      v87 = v46;
      *(v0 + 832) = v46;
      sub_1DB30C4B8(v0 + 832, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v40 = 0u;
      *(v0 + 472) = 0u;
      sub_1DB30C2D8(v0 + 736, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 488) = 0;
      v49 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1DB301BC0(0, *(v49 + 2) + 1, 1, v49);
      }

      v51 = *(v49 + 2);
      v50 = *(v49 + 3);
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1DB301BC0((v50 > 1), v51 + 1, 1, v49);
      }

      v52 = *(v0 + 1032);
      v53 = *(v0 + 1016);
      *(v49 + 2) = v51 + 1;
      v54 = &v49[40 * v51];
      v55 = *v40;
      v56 = *(v0 + 472);
      v54[64] = *(v0 + 488);
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      *(v0 + 1000) = v49;
      sub_1DB30623C(v0 + 832, &qword_1ECC426B0, &qword_1DB50EEB0);
      v57._countAndFlagsBits = 0x654B656863616320;
      v57._object = 0xEA00000000003D79;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      v58 = (v52 + *(v53 + 28));
      v59 = *v58;
      *(v0 + 1144) = *v58;
      v60 = v58[1];
      *(v0 + 1152) = v60;
      *(v0 + 696) = MEMORY[0x1E69E6158];
      *(v0 + 672) = v59;
      *(v0 + 680) = v60;
      sub_1DB30C4B8(v0 + 672, v0 + 640, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v41 = 0u;
      *(v0 + 552) = 0u;

      sub_1DB30C2D8(v0 + 640, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 568) = 0;
      v61 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1DB301BC0(0, *(v61 + 2) + 1, 1, v61);
        *v42 = v61;
      }

      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_1DB301BC0((v62 > 1), v63 + 1, 1, v61);
      }

      v64 = *(v0 + 1032);
      v65 = *(v0 + 1016);
      *(v61 + 2) = v63 + 1;
      v66 = &v61[40 * v63];
      v67 = *v41;
      v68 = *(v0 + 552);
      v66[64] = *(v0 + 568);
      *(v66 + 2) = v67;
      *(v66 + 3) = v68;
      *(v0 + 1000) = v61;
      sub_1DB30623C(v0 + 672, &qword_1ECC426B0, &qword_1DB50EEB0);
      v69._countAndFlagsBits = 0x4449656863616320;
      v69._object = 0xE90000000000003DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v69);
      v70 = v64 + *(v65 + 24);
      v71 = *v70;
      *(v0 + 412) = *v70;
      LOBYTE(v70) = *(v70 + 4);
      *(v0 + 369) = v70;
      if (v70)
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      else
      {
        *(v0 + 632) = MEMORY[0x1E69E72F0];
        *(v0 + 608) = v71;
      }

      sub_1DB30C4B8(v0 + 608, v0 + 576, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      sub_1DB30C2D8(v0 + 576, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 368) = 0;
      v72 = *(v0 + 1000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1DB301BC0(0, *(v72 + 2) + 1, 1, v72);
      }

      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1DB301BC0((v73 > 1), v74 + 1, 1, v72);
      }

      *(v72 + 2) = v74 + 1;
      v75 = &v72[40 * v74];
      v76 = *(v0 + 336);
      v77 = *(v0 + 352);
      v75[64] = *(v0 + 368);
      *(v75 + 2) = v76;
      *(v75 + 3) = v77;
      *v42 = v72;
      sub_1DB30623C(v0 + 608, &qword_1ECC426B0, &qword_1DB50EEB0);
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v78);
      *(v47 + 32) = *v42;
      Logger.info(_:)(v47, v85, v83);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      if (v87 == 3)
      {
        break;
      }

      sub_1DB467374(*(v0 + 1032), type metadata accessor for JetPackAsset);
      v34 = *(v0 + 1120) + 1;
      if (v34 == *(v0 + 1104))
      {
        goto LABEL_17;
      }
    }

    v79 = *(v0 + 200);
    v80 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v79);
    v88 = (*(v80 + 24) + **(v80 + 24));
    v81 = swift_task_alloc();
    *(v0 + 1160) = v81;
    *v81 = v0;
    v81[1] = sub_1DB45FFFC;
    v82 = *(v0 + 1032);

    return v88(v82, v79, v80);
  }
}

uint64_t sub_1DB461524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-v9];
  v11 = type metadata accessor for URLJetPackAssetRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DB468D18(a2, v13, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468C90(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
  sub_1DB50B2B0();
  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_1DB30EDA8(v40), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    sub_1DB314BE8(v40);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v18 = v41;
    v19 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1DB50EE90;
    v43 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001DB52F1B0;
    v21._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v39[3] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    sub_1DB468D18(a2, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB30C4B8(v39, v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = 0u;
    v37 = 0u;
    sub_1DB30C2D8(v35, &v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v38 = 0;
    v23 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[40 * v25];
    v27 = v36;
    v28 = v37;
    v26[64] = v38;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    v43 = v23;
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v20 + 32) = v43;
    Logger.info(_:)(v20, v18, v19);

    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    sub_1DB314BE8(v40);
    v30 = sub_1DB50ABA0();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a3;
    v31[5] = a4;

    v17 = sub_1DB4DD5A4(0, 0, v10, &unk_1DB51CC68, v31);
    sub_1DB468D18(a2, v13, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB50B2B0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36 = *a1;
    sub_1DB31E0C8(v17, v40, isUniquelyReferenced_nonNull_native);
    sub_1DB314BE8(v40);
    *a1 = v36;
  }

  return v17;
}

uint64_t sub_1DB4619CC(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-v9 - 8];
  v11 = a2[1];
  v38 = *a2;
  v39 = v11;
  v40 = *(a2 + 32);
  sub_1DB467318(a2, v37);
  sub_1DB415E08();
  sub_1DB50B2B0();
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1DB30EDA8(v41), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    sub_1DB314BE8(v41);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v16 = v42;
    v17 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v44 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52F1B0;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v36[3] = &type metadata for SilverBulletJetPackAssetRequest;
    v20 = swift_allocObject();
    v36[0] = v20;
    v21 = a2[1];
    *(v20 + 16) = *a2;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a2 + 32);
    sub_1DB30C4B8(v36, v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v38 = 0u;
    v39 = 0u;
    sub_1DB467318(a2, v37);
    sub_1DB30C2D8(v35, &v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
      v44 = v22;
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v38;
    v27 = v39;
    v25[64] = v40;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1DB30623C(v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v18 + 32) = v44;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_1DB314BE8(v41);
    v29 = sub_1DB50ABA0();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a3;
    v30[5] = a4;

    v15 = sub_1DB4DD5A4(0, 0, v10, &unk_1DB51C950, v30);
    v31 = a2[1];
    v38 = *a2;
    v39 = v31;
    v40 = *(a2 + 32);
    sub_1DB467318(a2, v41);
    sub_1DB50B2B0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = *a1;
    sub_1DB31E0C8(v15, v41, isUniquelyReferenced_nonNull_native);
    sub_1DB314BE8(v41);
    *a1 = v38;
  }

  return v15;
}

uint64_t sub_1DB461E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36[-v14];
  sub_1DB50B670();
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_1DB30EDA8(v41), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    sub_1DB314BE8(v41);
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v20 = v42;
    v35 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DB50EE90;
    v44 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v22._object = 0x80000001DB52F1B0;
    v22._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v40[3] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
    sub_1DB30C4B8(v40, v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v37 = 0u;
    v38 = 0u;
    sub_1DB30C2D8(v36, &v37, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39 = 0;
    v24 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    v28 = v37;
    v29 = v38;
    v27[64] = v39;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v44 = v24;
    sub_1DB30623C(v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v21 + 32) = v44;
    Logger.info(_:)(v21, v20, v35);

    result = __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_1DB314BE8(v41);
    v32 = sub_1DB50ABA0();
    (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a3;
    v33[5] = a4;

    v19 = sub_1DB4DD5A4(0, 0, v15, &unk_1DB51C960, v33);
    sub_1DB50B670();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = *a1;
    sub_1DB31E0C8(v19, v41, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314BE8(v41);
    *a1 = v37;
  }

  *a7 = v19;
  return result;
}

uint64_t sub_1DB462214(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DB306AF4;

  return v8(a1);
}

void sub_1DB46230C(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB467540();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB462384()
{
  v0[55] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[56] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[57] = qword_1EE30EAD0;
  v0[52] = v1;
  v2 = swift_task_alloc();
  v0[58] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45928, &qword_1DB51C508);
  *v2 = v0;
  v2[1] = sub_1DB4624DC;

  return MEMORY[0x1EEE6DE98](v0 + 37, v0 + 52, &unk_1DB51CB20, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4624DC()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1DB4627C4;
  }

  else
  {

    v2 = sub_1DB4625F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4625F8()
{
  if (*(v0 + 320))
  {
    sub_1DB2FEA0C((v0 + 296), v0 + 256);
LABEL_3:
    v1 = static BaseObjectGraph.current.getter();
    *(v0 + 480) = v1;
    *(v0 + 424) = v1;
    v2 = swift_task_alloc();
    *(v0 + 488) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A58, &qword_1DB51CB38);
    *v2 = v0;
    v2[1] = sub_1DB462828;

    return MEMORY[0x1EEE6DE98](v0 + 96, v0 + 424, &unk_1DB51CB30, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
  }

  v3 = *(v0 + 472);
  v4 = type metadata accessor for JetPackAssetDiskCache(0);
  v5 = JetPackAssetDiskCache.__allocating_init()();
  if (!v3)
  {
    *(v0 + 280) = v4;
    *(v0 + 288) = &protocol witness table for JetPackAssetDiskCache;
    *(v0 + 256) = v5;
    if (*(v0 + 320))
    {
      sub_1DB30623C(v0 + 296, &qword_1ECC45928, &qword_1DB51C508);
    }

    goto LABEL_3;
  }

  if (*(v0 + 320))
  {
    sub_1DB30623C(v0 + 296, &qword_1ECC45928, &qword_1DB51C508);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB4627C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB462828()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1DB462A64;
  }

  else
  {

    v2 = sub_1DB462944;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB462944()
{
  if (*(v0 + 120) == 1)
  {
    sub_1DB30BE90(v0 + 256, v0 + 336);
    *(v0 + 400) = &type metadata for JetPackAssetStandardCachePolicy;
    *(v0 + 408) = &protocol witness table for JetPackAssetStandardCachePolicy;
    sub_1DB2FEA0C((v0 + 336), v0 + 16);
    sub_1DB2FEA0C((v0 + 376), v0 + 56);
    if (*(v0 + 120) != 1)
    {
      sub_1DB30623C(v0 + 96, &qword_1ECC45A58, &qword_1DB51CB38);
    }
  }

  else
  {
    v1 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 160);
    v2 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v2;
  }

  v3 = *(v0 + 432);
  sub_1DB400AF8(v0 + 16, v0 + 176);
  type metadata accessor for JetPackAssetSession();
  v4 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(v0 + 176);
  sub_1DB30C018(v0 + 16);
  *v3 = v4;
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB462A64()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB462AD0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for SilverBulletJetPackAssetFetcher(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB462B64, 0, 0);
}

uint64_t sub_1DB462B64()
{
  v0[7] = type metadata accessor for BaseObjectGraph();
  v0[8] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DB462C20;

  return sub_1DB43E948();
}

uint64_t sub_1DB462C20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1DB462E48;
  }

  else
  {
    v4 = sub_1DB462D34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB462D34()
{
  if (v0[10])
  {

    v0[12] = static BaseObjectGraph.current.getter();
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1DB462EB4;

    return sub_1DB43FDB8((v0 + 2));
  }

  else
  {
    sub_1DB43F02C();
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB462E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB462EB4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1DB463540;
  }

  else
  {

    v2 = sub_1DB462FD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB462FD0()
{
  v0[15] = v0[2];
  v0[16] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1DB463088;

  return sub_1DB43E7E8();
}

uint64_t sub_1DB463088(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1DB4635B8;
  }

  else
  {

    v4 = sub_1DB4631A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4631A4()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v2 = [objc_opt_self() ams:0 configurationWithProcessInfo:v0[15] bag:?];
  }

  v0[20] = v2;
  v3 = v0[15];
  v4 = v0[6];
  v5 = v4 + *(v0[5] + 20);
  v6 = type metadata accessor for URLJetPackAssetFetcher(0);
  v7 = *(v6 + 24);
  v8 = sub_1DB509CA0();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = v3;
  *(v9 + 32) = 1;
  *&v5[*(v6 + 28)] = v9;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = v2;
  *v4 = v3;
  v11 = v1;
  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1DB463394;
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];

  return sub_1DB447B9C(v14, v15, v13);
}

uint64_t sub_1DB463394()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1DB463638;
  }

  else
  {
    v2 = sub_1DB4634A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4634A8()
{
  v1 = *(v0 + 48);

  sub_1DB467374(v1, type metadata accessor for SilverBulletJetPackAssetFetcher);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB463540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4635B8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB463638()
{
  v1 = *(v0 + 48);

  sub_1DB467374(v1, type metadata accessor for SilverBulletJetPackAssetFetcher);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB46370C(uint64_t a1)
{
  v1[103] = a1;
  type metadata accessor for DiskJetPackResourceBundle(0);
  v1[104] = swift_task_alloc();
  v1[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v1[106] = swift_task_alloc();
  v2 = sub_1DB509CA0();
  v1[107] = v2;
  v3 = *(v2 - 8);
  v1[108] = v3;
  v1[109] = *(v3 + 64);
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v1[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB463874, 0, 0);
}

uint64_t sub_1DB463874()
{
  v0[113] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[114] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[115] = qword_1EE30EAD0;
  v0[101] = v1;
  v2 = swift_task_alloc();
  v0[116] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A0, &qword_1DB51C848);
  *v2 = v0;
  v2[1] = sub_1DB4639CC;

  return MEMORY[0x1EEE6DE98](v0 + 47, v0 + 101, &unk_1DB51C840, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4639CC()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_1DB463BEC;
  }

  else
  {

    v2 = sub_1DB463AE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB463AE8()
{
  if (*(v0 + 416) == 1)
  {
    *(v0 + 360) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 368) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 320) = xmmword_1DB517E90;
  }

  else
  {
    v2 = *(v0 + 392);
    *(v0 + 320) = *(v0 + 376);
    *(v0 + 336) = v2;
    *(v0 + 352) = *(v0 + 408);
    *(v0 + 368) = *(v0 + 424);
  }

  *(v0 + 944) = static BaseObjectGraph.current.getter();
  v3 = swift_task_alloc();
  *(v0 + 952) = v3;
  *v3 = v0;
  v3[1] = sub_1DB463C98;
  v4 = *(v0 + 896);

  return sub_1DB440104(v4);
}

uint64_t sub_1DB463BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB463C98()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_1DB4646FC;
  }

  else
  {
    v2 = sub_1DB463DCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB463DCC()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v21 = *(v0 + 872);
  v22 = *(v0 + 848);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_1DB509C20();
  *(v0 + 512) = &type metadata for SyncTaskScheduler;
  *(v0 + 520) = &protocol witness table for SyncTaskScheduler;
  *(v0 + 816) = static BaseObjectGraph.current.getter();

  swift_task_localValuePush();
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 8))(v8, v9);
  sub_1DB30BE90(v1, v0 + 528);
  (*(v4 + 16))(v3, v2, v5);
  sub_1DB3C17BC(v0 + 320, v0 + 432);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1DB2FEA0C((v0 + 528), v11 + 16);
  (*(v4 + 32))(v11 + v10, v3, v5);
  *(v11 + v10 + v21) = 1;
  v12 = v11 + ((v10 + v21) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 56) = *(v0 + 480);
  v13 = *(v0 + 448);
  *(v12 + 40) = *(v0 + 464);
  v14 = *(v0 + 432);
  *(v12 + 24) = v13;
  *(v12 + 8) = v14;
  *v22 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v15 = swift_allocObject();
  *(v0 + 968) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v15[2] = v16;
  sub_1DB30C06C(v22, v15 + *(*v15 + 96), &unk_1ECC42BD0, &unk_1DB518FB0);
  v17 = swift_allocObject();
  *(v0 + 80) = sub_1DB3C187C;
  v17[2] = sub_1DB3C1C00;
  v17[3] = v11;
  v17[4] = v15;
  *(v0 + 88) = v17;
  *(v0 + 96) = sub_1DB3C1888;
  *(v0 + 104) = v15;
  sub_1DB30BE90(v0 + 488, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1DB30828C(v0 + 80);

  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(v1, v0 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C((v0 + 648), v0 + 568);
    sub_1DB30BE90(v0 + 568, v0 + 688);
    v18 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 688), v18 + 16);
    sub_1DB30BE90(v0 + 568, v0 + 728);
    v19 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 728), v19 + 16);
    *(v0 + 240) = sub_1DB467074;
    *(v0 + 792) = &type metadata for SyncTaskScheduler;
    *(v0 + 800) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 248) = v18;
    *(v0 + 256) = sub_1DB3C18F8;
    *(v0 + 264) = v19;
    sub_1DB30BE90(v0 + 768, v0 + 272);
    *(v0 + 312) = 0;

    sub_1DB309368(v0 + 240);

    sub_1DB30623C(v0 + 240, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0((v0 + 568));
    __swift_destroy_boxed_opaque_existential_0((v0 + 768));
  }

  else
  {
    *(v0 + 680) = 0;
    *(v0 + 648) = 0u;
    *(v0 + 664) = 0u;
    sub_1DB30623C(v0 + 648, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0((v0 + 488));

  return MEMORY[0x1EEE6DFA0](sub_1DB464304, 0, 0);
}

uint64_t sub_1DB464304()
{
  v1 = v0 + 2;
  v2 = v0[104];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB4643D0;
  v0[20] = swift_continuation_init();
  v3 = (v0 + 20);
  *(v3 + 72) = 1;
  sub_1DB309368(v3);
  sub_1DB30623C(v3, &unk_1ECC453A0, &unk_1DB50F710);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4643D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 976) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB464604;
  }

  else
  {
    v5 = *(v2 + 832);
    v6 = *(v2 + 824);

    sub_1DB468D80(v5, v6, type metadata accessor for DiskJetPackResourceBundle);
    v4 = sub_1DB46451C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB46451C()
{
  v1 = v0[112];
  (*(v0[108] + 8))(v0[111], v0[107]);
  sub_1DB467374(v1, type metadata accessor for JetPackAsset);
  sub_1DB30BFC4((v0 + 40));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB464604()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];

  (*(v3 + 8))(v2, v4);
  sub_1DB467374(v1, type metadata accessor for JetPackAsset);
  sub_1DB30BFC4((v0 + 40));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB4646FC()
{
  sub_1DB30BFC4(v0 + 320);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4647E4(__int128 *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 32);
  v17 = *a1;
  v18 = v9;
  v19 = v10;
  LOBYTE(v20) = v11;
  sub_1DB466570(&v17);
  *&v17 = a2(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = a5;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v20 = v12;
  *(&v17 + 1) = v13;
  v15 = sub_1DB40D33C(&v17);

  sub_1DB30BF1C(&v17);
  return v15;
}

uint64_t sub_1DB4648D8(uint64_t a1)
{
  *(v1 + 136) = a1;
  type metadata accessor for JetPackAsset(0);
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB464968, 0, 0);
}

uint64_t sub_1DB464968()
{
  v0[19] = type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  v0[20] = v1;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45948, &qword_1DB51C718);
  *v2 = v0;
  v2[1] = sub_1DB464AC8;

  return MEMORY[0x1EEE6DE98](v0 + 9, v0 + 16, &unk_1DB51C710, v1, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB464AC8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1DB464CE8;
  }

  else
  {

    v2 = sub_1DB464BE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB464BE4()
{
  if (*(v0 + 112) == 1)
  {
    *(v0 + 56) = &type metadata for JetPackManagedKeyProvider;
    *(v0 + 64) = &protocol witness table for JetPackManagedKeyProvider;
    *(v0 + 16) = xmmword_1DB517E90;
  }

  else
  {
    v2 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
  }

  *(v0 + 184) = static BaseObjectGraph.current.getter();
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1DB464D54;
  v4 = *(v0 + 144);

  return sub_1DB440104(v4);
}

uint64_t sub_1DB464CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB464D54()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB465094, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_1DB464EF4;
    v4 = v2[17];
    v5 = v2[18];

    return InMemoryJetPackLoader.bundle(from:)(v4, v5);
  }
}

uint64_t sub_1DB464EF4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1DB465100;
  }

  else
  {
    v2 = sub_1DB465008;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB465008()
{
  sub_1DB467374(*(v0 + 144), type metadata accessor for JetPackAsset);
  sub_1DB30BF70(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB465094()
{
  sub_1DB30BF70(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB465100()
{
  sub_1DB467374(*(v0 + 144), type metadata accessor for JetPackAsset);
  sub_1DB30BF70(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void *JetPackAssetSession.deinit()
{

  sub_1DB30C018(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  return v0;
}

uint64_t JetPackAssetSession.__deallocating_deinit()
{

  sub_1DB30C018(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1DB465210(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URLJetPackAssetRequest(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DB468D18(a2, &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for URLJetPackAssetRequest);
  sub_1DB468C90(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
  sub_1DB50B2B0();
  return sub_1DB30D974(0, v7);
}

uint64_t sub_1DB465318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465338, 0, 0);
}

uint64_t sub_1DB465338()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB4653E4;

  return sub_1DB430D78(v1);
}

uint64_t sub_1DB4653E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB4695C4, 0, 0);
  }
}

uint64_t sub_1DB465530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB4695BC;

  return sub_1DB43B0A4(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB465624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1DB465660, 0, 0);
}

uint64_t sub_1DB465660(uint64_t a1)
{
  sub_1DB50AC80();
  v2 = *(v1 + 64);
  v3 = v2[3];
  v4 = v2[4];
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1 + 16;
  *(v5 + 32) = v10;
  v11 = (*(v4 + 64) + **(v4 + 64));
  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  v7 = type metadata accessor for JetPackAsset(0);
  *v6 = v1;
  v6[1] = sub_1DB465838;
  v8 = *(v1 + 56);

  return v11(v8, &unk_1DB51C970, v5, v7, v3, v4);
}

uint64_t sub_1DB465838()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB465974, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB465974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4659D8(uint64_t a1, uint64_t a2)
{
  sub_1DB415E08();

  sub_1DB50B2B0();
  return sub_1DB30D974(0, v3);
}

uint64_t sub_1DB465A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(a3 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1DB32D394;

  return sub_1DB44FD50(a1, a2, v5 + 16, a4, a5);
}

uint64_t sub_1DB465B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a5 + 32);
  v17 = swift_task_alloc();
  *(v8 + 56) = v17;
  *v17 = v8;
  v17[1] = sub_1DB469560;

  return sub_1DB45C8CC(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1DB465C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465C44, 0, 0);
}

uint64_t sub_1DB465C44()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB4653E4;

  return sub_1DB432670(v1);
}

uint64_t sub_1DB465CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB4695BC;

  return sub_1DB43B84C(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB465DE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB465E04, 0, 0);
}

uint64_t sub_1DB465E04()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DB465EB0;

  return sub_1DB43351C(v1);
}

uint64_t sub_1DB465EB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB465FFC, 0, 0);
  }
}

uint64_t sub_1DB466020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DB466114;

  return sub_1DB43BF70(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB466114(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1DB46628C()
{
  result = qword_1ECC45920;
  if (!qword_1ECC45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45920);
  }

  return result;
}

uint64_t sub_1DB4662E0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1DB50A280();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE30E170 != -1)
  {
    swift_once();
  }

  v10 = sub_1DB50A270();
  __swift_project_value_buffer(v10, qword_1EE30E178);
  v11 = sub_1DB50A250();
  sub_1DB50A2A0();
  v12 = sub_1DB50B060();
  if (sub_1DB50B0E0())
  {

    sub_1DB50A2D0();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E1288220](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DB466570(uint64_t a1)
{
  v2 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v2;
  v21 = *(a1 + 32);
  v19[0] = type metadata accessor for JetPackAssetSession();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D0, &qword_1DB51C8E0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = &unk_1DB51C8D8;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v19[4] = v3;
  v19[1] = v4;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v18[0] = type metadata accessor for JetPackAsset(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45968, &qword_1DB51C778);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = &unk_1DB51C8F0;
  *(v9 + 32) = v6;
  *(v9 + 40) = 0;
  v18[4] = v8;
  v18[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  sub_1DB30C420(v19, inited + 32);
  sub_1DB467318(v20, v17);
  v12 = sub_1DB30BC94();
  v17[0] = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v12);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  v13 = v17[0];
  type metadata accessor for BaseObjectGraph();
  v14 = swift_initStackObject();
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  v14[2] = v13;

  v15 = sub_1DB40D33C(v18);

  swift_setDeallocating();

  sub_1DB30BF1C(v18);
  sub_1DB30BF1C(v19);
  return v15;
}

uint64_t get_enum_tag_for_layout_string_7JetCore0A16PackAssetSessionC13ConfigurationV4ModeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB466824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB466880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB466908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB466958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB4669B8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DB466A04()
{
  result = qword_1ECC45940;
  if (!qword_1ECC45940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45940);
  }

  return result;
}

uint64_t sub_1DB466A58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FCE4(a1, v1);
}

uint64_t sub_1DB466AF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FB3C(a1, v1);
}

uint64_t sub_1DB466B90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB43A180(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB466C9C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43C53C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB466DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB43ABCC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB466EE4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43CCB8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB466FD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FC10(a1, v1);
}

uint64_t sub_1DB46707C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB306AF4;

  return sub_1DB43A6F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB467188(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43C6E8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB46727C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB462AD0(a1, v1 + 16);
}

uint64_t sub_1DB467374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB4673D4(uint64_t a1)
{
  v4 = *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = *(v1 + 136);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB306AF4;

  return sub_1DB465624(a1, v1 + 16, v1 + 96, v6, v1 + v5);
}

uint64_t sub_1DB4674D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 16);
  v10[0] = *v6;
  v10[1] = v8;
  v11 = *(v6 + 32);
  result = sub_1DB4619CC(a1, v10, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB46759C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB462214(a1, v4, v5, v6);
}

uint64_t sub_1DB467680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB465A64(a1, v4, v5, v7, v6);
}

uint64_t sub_1DB4677A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SilverBulletJetPackAssetFetcher(0) - 8);
  v6 = (*(v5 + 80) + 73) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DB30C7A0;

  return sub_1DB465B30(a1, v9, v10, v11, (v1 + 5), v1 + v6, v12, v1 + v8);
}

uint64_t sub_1DB467918(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465C24(a1, v1);
}

unint64_t sub_1DB4679C8()
{
  result = qword_1EE30C7D8;
  if (!qword_1EE30C7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30C7D8);
  }

  return result;
}

uint64_t sub_1DB467A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB4392E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB467B20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB465CF0);
}

uint64_t sub_1DB467C1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43FA68(a1, v1);
}

uint64_t sub_1DB467CB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB4397C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB467DC4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43B9E4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB467EB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465DE4(a1, v1);
}

uint64_t sub_1DB467F68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB439CA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB468074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB466020);
}

uint64_t sub_1DB468170(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43F994(a1, v1);
}

uint64_t sub_1DB46820C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB43F8C0(a1, v1);
}

uint64_t sub_1DB4682A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB43892C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB4683B4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43B39C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB4684A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB438E04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB4685B4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB43B6A0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB4686A8(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v11 = *(v1 + v9);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB4488B0(a1, v1 + 32, v1 + v8, v11, v1 + v10, v6, v5);
}

uint64_t sub_1DB468828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB456BD0(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1DB4688FC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v15 = v1[2];
  v11 = v1[6];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DB30C7A0;

  return sub_1DB45D984(a1, v15, v10, v11, v1 + v6, v1 + v7, v12, v1 + v9);
}

uint64_t objectdestroy_121Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1DB468B08()
{
  result = qword_1ECC45AB8;
  if (!qword_1ECC45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45AB8);
  }

  return result;
}

uint64_t sub_1DB468B5C(uint64_t a1)
{
  v4 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB446D7C(a1, v6, v1 + v5);
}

uint64_t sub_1DB468C40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DB461524(a1, v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB468C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_144Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB468D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB468D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB468DE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB44851C(a1, v1 + 16, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1DB468F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB448C54(a1, v4, v5, v7, v6);
}

uint64_t sub_1DB469004(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DB30C7A0;

  return sub_1DB45B828(a1, v12, v13, v14, v1 + v6, v1 + v9, v15, v1 + v11);
}

uint64_t sub_1DB4691A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB33114C(**(v2 + 16), *(*(v2 + 16) + 8), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB4691EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB465318(a1, v1);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DB4692FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB438448(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1DB469408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DB30C7A0;

  JUMPOUT(0x1DB465530);
}

uint64_t sub_1DB469504(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  a1(v6, v7, v8);
}

uint64_t dispatch thunk of JetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB32FDFC;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1DB469780()
{
  v35 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_1DB509BC0();
  v32[0] = 0;
  v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v32];

  v4 = v32[0];
  if (v3 && (v5 = v32[0], v6 = [v0 defaultManager], v7 = sub_1DB509BC0(), v32[0] = 0, v8 = objc_msgSend(v6, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v7, 1, 0, v32), v6, v7, v4 = v32[0], v8))
  {
    v9 = v32[0];
  }

  else
  {
    v10 = v4;
    v11 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v12 = v33;
    v13 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50EE90;
    v26 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001DB52F5A0;
    v15._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    swift_getErrorValue();
    v31[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_0);
    sub_1DB301CDC(v31, v27);
    v28 = 0u;
    v29 = 0u;
    sub_1DB301D4C(v27, &v28);
    v30 = 0;
    v17 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v28;
    v22 = v29;
    v20[64] = v30;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    sub_1DB30623C(v31, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v14 + 32) = v17;
    Logger.error(_:)(v14, v12, v13);

    __swift_destroy_boxed_opaque_existential_0(v32);
    sub_1DB46AFBC();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContainerLocationProtocol.prepare()()
{
  v3 = v1;
  v4 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = *(v3 + 16);
  v39 = v2;
  v38 = v4;
  v11(v4, v3);
  v12 = sub_1DB509BC0();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v48[0] = 0;
  LODWORD(v4) = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v48];

  v14 = v48[0];
  if (v4 && (v15 = v48[0], v16 = [v9 defaultManager], (*(v3 + 24))(v38, v3), v17 = sub_1DB509BC0(), v13(v8, v5), v48[0] = 0, v18 = objc_msgSend(v16, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v17, 1, 0, v48), v16, v17, v14 = v48[0], (v18 & 1) != 0))
  {
    v19 = v48[0];
  }

  else
  {
    v20 = v14;
    v21 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v22 = v49;
    v23 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    v42 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
    v25._object = 0x80000001DB52F5A0;
    v25._countAndFlagsBits = 0xD000000000000030;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    swift_getErrorValue();
    v26 = v40;
    v27 = v41;
    v47[3] = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v26, v27);
    sub_1DB301CDC(v47, v43);
    v44 = 0u;
    v45 = 0u;
    sub_1DB301D4C(v43, &v44);
    v46 = 0;
    v29 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
      v42 = v29;
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v44;
    v34 = v45;
    v32[64] = v46;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v42 = v29;
    sub_1DB30623C(v47, &qword_1ECC426B0, &qword_1DB50EEB0);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v24 + 32) = v42;
    Logger.error(_:)(v24, v22, v23);

    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_1DB46AFBC();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
    swift_willThrow();
  }
}

unint64_t ContainerLocation.ContainerError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1DB50B320();

    v7 = 0xD000000000000022;
    v3 = v2;
    v4 = v1;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1DB50B320();

    v7 = 0xD00000000000001CLL;
    MEMORY[0x1E1285C70](v2, v1);
    v3 = 41;
    v4 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1E1285C70](v3, v4);
    return v7;
  }

  if (v2 <= 1)
  {
    if (v2 | v1)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v6 = 0xD000000000000023;
    if (!(v2 ^ 3 | v1))
    {
      v6 = 0xD000000000000025;
    }

    if (v2 ^ 2 | v1)
    {
      return v6;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }
}

uint64_t ContainerLocation.ContainerError.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1DB51D018[*v0];
}

unint64_t ContainerLocation.ContainerError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v1;
  v2 = ContainerLocation.ContainerError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v4 = 0x206E776F6E6B6E55;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xED0000726F727265;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  return v6;
}

uint64_t sub_1DB46A33C()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1DB51D018[*v0];
}

uint64_t sub_1DB46A374(uint64_t a1)
{
  v2 = sub_1DB46B878();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB46A3B0(uint64_t a1)
{
  v2 = sub_1DB46B878();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t ContainerLocation.ContainerType.description.getter()
{
  if (!*(v0 + 16))
  {
    v1 = 0x286E6F6D656164;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 0x2861746144707061;
LABEL_5:
    v3 = v1;
    MEMORY[0x1E1285C70](*v0, *(v0 + 8));
    MEMORY[0x1E1285C70](41, 0xE100000000000000);
    return v3;
  }

  return 0x774F6E6F6D656164;
}

uint64_t sub_1DB46A4B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ContainerLocation.__allocating_init(type:consumeSandboxToken:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContainerLocation.init(type:consumeSandboxToken:)(a1, a2);
  return v4;
}

void (**ContainerLocation.init(type:consumeSandboxToken:)(uint64_t a1, uint64_t a2))(uint64_t, char *, uint64_t)
{
  v4 = v2;
  v5 = a2;
  v57 = *v2;
  v58 = v3;
  v7 = sub_1DB509B70();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_1DB509CA0();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v41 - v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v22 = v58;
  sub_1DB46B358(&v59, v5);
  v58 = v22;
  if (v22)
  {
    sub_1DB46B61C(v19, v20, v21);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v23;
    sub_1DB46B61C(v19, v20, v21);
    v24 = v62;
    (*(v62 + 56))(v12, 1, 1, v13);
    sub_1DB50A6F0();

    v25 = v54;
    sub_1DB509C10();
    sub_1DB30623C(v12, &unk_1ECC42B20, &unk_1DB50F6A0);

    v26 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
    v45 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
    v27 = *(v24 + 32);
    v51 = v24 + 32;
    v57 = v27;
    v27(&v4[OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL], v25, v13);
    v28 = v24;
    v29 = *(v24 + 16);
    v43 = v24 + 16;
    v44 = v29;
    v30 = &v4[v26];
    v31 = v52;
    v29(v52, v30, v13);
    v59 = 0x7972617262694CLL;
    v60 = 0xE700000000000000;
    v50 = *MEMORY[0x1E6968F70];
    v33 = v55;
    v32 = v56;
    v34 = *(v55 + 104);
    v47 = v55 + 104;
    v49 = v34;
    v34(v9);
    v48 = sub_1DB301E30();
    v35 = v53;
    sub_1DB509C90();
    v55 = *(v33 + 8);
    (v55)(v9, v32);
    v36 = v28;
    v37 = v13;
    v38 = v9;
    v39 = *(v36 + 8);
    v62 = v36 + 8;
    v39(v31, v37);
    v42 = v39;
    v59 = 0x736568636143;
    v60 = 0xE600000000000000;
    v49(v38, v50, v32);
    sub_1DB509C90();
    (v55)(v38, v32);
    v39(v35, v37);
    v57(&v4[OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl], v25, v37);
    v44(v35, &v4[v45], v37);
    v59 = 7368052;
    v60 = 0xE300000000000000;
    v49(v38, v50, v32);
    sub_1DB509C90();
    (v55)(v38, v32);
    v42(v35, v37);
    v57(&v4[OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl], v25, v37);
    *&v4[OBJC_IVAR____TtC7JetCore17ContainerLocation_sandboxTokenHandle] = v46;
  }

  return v4;
}

uint64_t ContainerLocation.deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl, v2);
  return v0;
}

Swift::Void __swiftcall ContainerLocation.release()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_sandboxTokenHandle);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v2 = v20;
    v3 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    v18 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v5._object = 0x80000001DB52F700;
    v5._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v17[3] = MEMORY[0x1E69E7360];
    v17[0] = v1;
    sub_1DB301CDC(v17, v13);
    v14 = 0u;
    v15 = 0u;
    sub_1DB301D4C(v13, &v14);
    v16 = 0;
    v6 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[40 * v8];
    v10 = v14;
    v11 = v15;
    v9[64] = v16;
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    v18 = v6;
    sub_1DB30623C(v17, &qword_1ECC426B0, &qword_1DB50EEB0);
    v12._countAndFlagsBits = 0x657361656C657220;
    v12._object = 0xE900000000000064;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v4 + 32) = v18;
    Logger.info(_:)(v4, v2, v3);

    __swift_destroy_boxed_opaque_existential_0(v19);
    sandbox_extension_release();
  }
}

uint64_t ContainerLocation.__deallocating_deinit()
{
  ContainerLocation.release()();
  v1 = OBJC_IVAR____TtC7JetCore17ContainerLocation_containerDirectoryURL;
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_cacheDirectoryUrl, v2);
  v3(v0 + OBJC_IVAR____TtC7JetCore17ContainerLocation_tmpDirectoryUrl, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1DB46AF20@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1DB509CA0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

unint64_t sub_1DB46AFBC()
{
  result = qword_1ECC45AF0;
  if (!qword_1ECC45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45AF0);
  }

  return result;
}

void *sub_1DB46B010()
{
  v0 = container_copy_sandbox_token();
  if (v0)
  {
    v1 = v0;
    v2 = sandbox_extension_consume();
    if (v2 == -1)
    {
      if (qword_1ECC42220 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v9 = v18;
      v3 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v16 = MEMORY[0x1E69E6158];
      v14 = 0xD000000000000025;
      v15 = 0x80000001DB52F7E0;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      sub_1DB301D4C(&v14, v11 + 32);
      *(v11 + 64) = 0;
      *(v10 + 32) = v11;
      Logger.error(_:)(v10, v9, v3);

      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_1DB46AFBC();
      swift_allocError();
      *v12 = xmmword_1DB51CD60;
      *(v12 + 16) = 2;
      swift_willThrow();
      MEMORY[0x1E1288220](v1, -1, -1);
    }

    else
    {
      v3 = v2;
      MEMORY[0x1E1288220](v1, -1, -1);
    }
  }

  else
  {
    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v4 = v18;
    v5 = v19;
    v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v16 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001DB52F7C0;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_1DB301D4C(&v14, v7 + 32);
    *(v7 + 64) = 0;
    *(v6 + 32) = v7;
    Logger.error(_:)(v6, v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_1DB46AFBC();
    swift_allocError();
    *v8 = xmmword_1DB51CD70;
    *(v8 + 16) = 2;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DB46B358(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (container_query_create())
  {
    sub_1DB50A790();
    sub_1DB50A6F0();

    container_query_set_persona_unique_string();

    container_query_set_class();
    container_query_operation_set_flags();
    if (v5 <= 1)
    {
      v6 = sub_1DB50A6F0();
      xpc_string_create((v6 + 32));

      container_query_set_identifiers();
      swift_unknownObjectRelease();
    }

    if (container_query_get_single_result())
    {
      path = container_get_path();
      if (path)
      {
        v4 = path;
        if (strlen(path) >= 1)
        {
          if ((a2 & 1) == 0 || (sub_1DB46B010(), !v2))
          {
            v4 = sub_1DB50A790();
            container_query_free();
            return v4;
          }

          goto LABEL_24;
        }

        sub_1DB46AFBC();
        swift_allocError();
        *v18 = xmmword_1DB51CD80;
        v19 = 2;
      }

      else
      {
        if (container_query_get_last_error() && (v13 = container_error_copy_unlocalized_description()) != 0)
        {
          v14 = v13;
          v15 = sub_1DB50A790();
          v4 = v16;
          MEMORY[0x1E1288220](v14, -1, -1);
        }

        else
        {
          v15 = 0;
          v4 = 0xE000000000000000;
        }

        sub_1DB46AFBC();
        swift_allocError();
        *v18 = v15;
        *(v18 + 8) = v4;
        v19 = 1;
      }

      *(v18 + 16) = v19;
    }

    else
    {
      if (container_query_get_last_error() && (v9 = container_error_copy_unlocalized_description()) != 0)
      {
        v10 = v9;
        v11 = sub_1DB50A790();
        v4 = v12;
        MEMORY[0x1E1288220](v10, -1, -1);
      }

      else
      {
        v11 = 0;
        v4 = 0xE000000000000000;
      }

      sub_1DB46AFBC();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v4;
      *(v17 + 16) = 0;
    }

    swift_willThrow();
LABEL_24:
    container_query_free();
    return v4;
  }

  sub_1DB46AFBC();
  swift_allocError();
  *v8 = xmmword_1DB51C480;
  *(v8 + 16) = 2;
  swift_willThrow();
  return v4;
}

uint64_t sub_1DB46B61C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ContainerLocation(uint64_t a1)
{
  result = qword_1EE30D388;
  if (!qword_1EE30D388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB46B6EC(uint64_t a1)
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB46B7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB46B824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DB46B878()
{
  result = qword_1ECC45AF8[0];
  if (!qword_1ECC45AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45AF8);
  }

  return result;
}

uint64_t MetricsEventRecorder._recordAsync(_:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44070, qword_1DB51D040);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  (*(a5 + 8))(&v14, a2, a3, a4, a5);
  sub_1DB3FB8C4();
  return v10;
}

uint64_t AsyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncEvent.init()();
  return v0;
}

uint64_t AsyncEvent.post(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB50A400();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50A440();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 80);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  v20[1] = v1[2];
  (*(v11 + 16))(v20 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v1;
  (*(v11 + 32))(v17 + v16, v15, v10);
  aBlock[4] = sub_1DB46D0D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_15;
  v18 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v9, v6, v18);
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t static AsyncEvent.defaultScheduler.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DB357BD4();
  result = sub_1DB50AFB0();
  a1[3] = v2;
  a1[4] = &protocol witness table for OS_dispatch_queue;
  *a1 = result;
  return result;
}

uint64_t *AsyncEvent.init()()
{
  v13 = *v0;
  v12 = sub_1DB50AFA0();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DB357BD4();
  v11[1] = "up performance event";
  v11[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E8, &unk_1DB518F40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  sub_1DB50AF70();
  v14 = v7;
  sub_1DB46D124(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v12);
  v0[2] = sub_1DB50AFD0();
  type metadata accessor for EventSubscription(0, *(v13 + 80), v8, v9);
  v0[3] = sub_1DB50A9D0();
  return v0;
}

uint64_t AsyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v26 = a3;
  v31 = a4;
  v28 = *v5;
  v8 = sub_1DB50A440();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DB50A400();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a2, v15);
  EventSubscription.init<A>(_:)(v17, a2, aBlock);
  v19 = aBlock[0];
  v28 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v20;
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  v21 = v27;
  sub_1DB50B240();
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = a2;
  v22[3] = v23;
  v22[4] = v5;
  v22[5] = v19;
  aBlock[4] = sub_1DB46D1F8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_6_0;
  v24 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v10, v13, v24);
  _Block_release(v24);
  (*(v29 + 8))(v10, v30);
  (*(v11 + 8))(v13, v21);

  *v31 = v19;
  return result;
}

uint64_t sub_1DB46C504(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for EventSubscription(255, *(v2 + 80), v3, v4);
  sub_1DB50AA60();

  sub_1DB50AA10();
  return swift_endAccess();
}

uint64_t AsyncEvent.removeObserver(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB50A440();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50A400();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50EE90;
  sub_1DB50A3F0();
  aBlock[0] = v12;
  sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1DB46D204;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1E12864B0](0, v6, v10, v14);
  _Block_release(v14);
  (*(v17 + 8))(v6, v18);
  (*(v8 + 8))(v10, v7);
}

void *sub_1DB46C8BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for EventSubscription(255, *(v2 + 80), v3, v4);
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1DB50AE80();
  if (v6 != 1)
  {
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB46C9DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DB50A440();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A400();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a1;
  type metadata accessor for EventSubscription(255, *(v4 + 80), v13, v14);
  sub_1DB50AA60();
  swift_getWitnessTable();
  result = sub_1DB50AE70();
  if ((result & 1) == 0)
  {
    v22 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DB50EE90;
    sub_1DB50A3F0();
    aBlock[0] = v16;
    sub_1DB46D124(qword_1EE30E380, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v20 = v5;
    v21 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB50B240();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v2;
    aBlock[4] = sub_1DB46D298;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB3330B0;
    aBlock[3] = &block_descriptor_18;
    v18 = _Block_copy(aBlock);

    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    MEMORY[0x1E12864B0](0, v8, v12, v18);
    _Block_release(v18);
    (*(v6 + 8))(v8, v20);
    (*(v21 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1DB46CD5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventSubscription(0, *(*a2 + 80), a3, a4);
  result = sub_1DB50AA00();
  if (result)
  {
    swift_beginAccess();
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if (v7)
      {

        v8 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1DB50B380();
        v8 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      sub_1DB50AA60();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1DB50AE80();
      if (v9 != 1)
      {
        swift_beginAccess();
        sub_1DB50AA20();
        swift_endAccess();
      }

      result = sub_1DB50AA00();
      ++v5;
    }

    while (v8 != result);
  }

  return result;
}

uint64_t sub_1DB46CF34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventSubscription(0, *(*a1 + 80), a3, a4);
  v9 = sub_1DB50A480();
  swift_beginAccess();

  if (sub_1DB50AA00())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if (v6)
      {

        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1DB50B380();
        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      if (EventSubscription.isValid.getter() & 1) != 0 && (EventSubscription.notify(_:)(), (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        sub_1DB50AA60();
        sub_1DB50AA10();
      }

      ++v4;
    }

    while (v7 != sub_1DB50AA00());
  }

  sub_1DB46C9DC(v9);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB46D124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AsyncEvent.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DB46D2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1DB46D300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1DB51D0C0;
    }
  }

  return result;
}

void *sub_1DB46D354(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}