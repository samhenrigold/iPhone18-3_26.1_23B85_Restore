void sub_224C2D62C(uint64_t a1, uint64_t *a2)
{
  v137 = a2;
  v125 = type metadata accessor for _HostFilterableChange(0);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v3);
  v136 = &v112[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v114 = *(v143 - 8);
  v6 = MEMORY[0x28223BE20](v143, v5);
  v135 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v126 = &v112[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v123 = &v112[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12, v14);
  v129 = &v112[-v16];
  MEMORY[0x28223BE20](v15, v17);
  v146 = &v112[-v18];
  v19 = sub_224DAC378();
  v140 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v128 = &v112[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v112[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v112[-v28];
  v30 = sub_224DAB258();
  v32 = MEMORY[0x28223BE20](v30, v31);
  v131 = &v112[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v112[-v35];
  v38 = v37;
  v39 = *(v37 + 16);
  v121 = qword_281365438;
  v132 = v40;
  v120 = v37 + 16;
  v119 = v39;
  (v39)(&v112[-v35], a1 + qword_281365438);
  v41 = sub_224DAB228();
  v42 = sub_224DAF278();
  v43 = os_log_type_enabled(v41, v42);
  v141 = v19;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_224A2F000, v41, v42, "Orphaned host purge timer fired", v44, 2u);
    v45 = v44;
    v19 = v141;
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  v46 = *(v38 + 8);
  v122 = v38 + 8;
  v118 = v46;
  v46(v36, v132);
  sub_224DAC338();
  v127 = v29;
  sub_224DAC358();
  v47 = v140 + 1;
  v138 = v140[1];
  v138(v26, v19);
  os_unfair_lock_assert_owner(*(*(a1 + qword_28135C9F0) + 16));
  v48 = qword_28135CA28;
  swift_beginAccess();
  v142 = a1;
  v117 = v48;
  v49 = *(a1 + v48);
  v51 = v49 + 64;
  v50 = *(v49 + 64);
  *&v149 = MEMORY[0x277D84F90];
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v139 = v47;
  v147 = v49;
  v148 = (v47 + 5);

  v56 = 0;
  if (v54)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_51:
      v111 = sub_224DAF838();
      v64 = v129;
      v65 = v128;
      v66 = v127;
      v146 = v111;
      if (!v111)
      {
        goto LABEL_52;
      }

LABEL_18:
      if (v146 < 1)
      {
        __break(1u);
        return;
      }

      v67 = 0;
      v116 = (v142 + qword_28135CA30);
      v145 = v48 & 0xC000000000000001;
      v133 = v140 + 4;
      v144 = (v114 + 16);
      v130 = (v114 + 8);
      v115 = v140 + 7;
      *&v63 = 136446210;
      v113 = v63;
      v134 = v48;
      while (1)
      {
        if (v145)
        {
          v68 = MEMORY[0x22AA5DCC0](v67, v48);
        }

        else
        {
          v68 = *(v48 + 8 * v67 + 32);
        }

        v69 = *(*v68 + 216);
        swift_beginAccess();
        v147 = v69;
        sub_224A3796C(v68 + v69, v64, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v148)(v64, 1, v19) != 1)
        {
          break;
        }

        sub_224A3311C(v64, &qword_27D6F3948, &qword_224DB5C10);
LABEL_21:
        if (v146 == ++v67)
        {
          goto LABEL_52;
        }
      }

      (*v133)(v65, v64, v19);
      sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
      if (sub_224DAEDB8())
      {
        v138(v65, v19);

LABEL_49:
        v48 = v134;
        goto LABEL_21;
      }

      v70 = v131;
      v71 = v132;
      v119(v131, v142 + v121, v132);

      v72 = sub_224DAB228();
      v73 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v149 = v140;
        *v74 = v113;
        v75 = v126;
        v76 = v143;
        (*v144)(v126, v68 + qword_281365430, v143);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v77 = sub_224DAFD28();
        v79 = v78;

        (*v130)(v75, v76);
        v80 = sub_224A33F74(v77, v79, &v149);
        v81 = v137;

        *(v74 + 4) = v80;
        _os_log_impl(&dword_224A2F000, v72, v73, "Purging orphaned host: %{public}s", v74, 0xCu);
        v82 = v140;
        __swift_destroy_boxed_opaque_existential_1(v140);
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v74, -1, -1);

        v118(v131, v132);
        if (*v81)
        {
          goto LABEL_33;
        }
      }

      else
      {

        v118(v70, v71);
        v81 = v137;
        if (*v137)
        {
          goto LABEL_33;
        }
      }

      *v81 = MEMORY[0x277D84F90];
LABEL_33:
      v83 = v136;
      v140 = *v144;
      (v140)(v136, v68 + qword_281365430, v143);
      v84 = *(*v68 + 112);
      swift_beginAccess();
      v85 = v125;
      v86 = *(v125 + 24);
      v87 = sub_224DAA428();
      v88 = *(*(v87 - 8) + 16);
      v88(&v83[v86], v68 + v84, v87);
      v89 = v137;
      v88(&v83[*(v85 + 20)], &v83[v86], v87);
      v90 = *v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v89 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = sub_224AD9290(0, v90[2] + 1, 1, v90);
        *v89 = v90;
      }

      v92 = v142;
      v94 = v90[2];
      v93 = v90[3];
      v95 = v143;
      if (v94 >= v93 >> 1)
      {
        v90 = sub_224AD9290((v93 > 1), v94 + 1, 1, v90);
        *v137 = v90;
      }

      v90[2] = v94 + 1;
      sub_224C4E3D4(v136, v90 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v94, type metadata accessor for _HostFilterableChange);
      v96 = v123;
      (*v115)(v123, 1, 1, v141);
      v97 = v147;
      swift_beginAccess();
      sub_224A838C0(v96, v68 + v97, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v98 = qword_281365430;
      v99 = v135;
      (v140)(v135, v68 + qword_281365430, v95);
      v100 = v117;
      swift_beginAccess();

      v101 = sub_224A683FC(v99);
      v147 = v98;
      if (v102)
      {
        v103 = v101;
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v105 = *(v92 + v100);
        v152 = v105;
        *(v92 + v100) = 0x8000000000000000;
        if (!v104)
        {
          sub_224B269F8();
          v105 = v152;
        }

        v106 = *(v114 + 8);
        v95 = v143;
        v106(*(v105 + 48) + *(v114 + 72) * v103, v143);
        sub_224B31518(v103, v105);
        *(v142 + v100) = v105;
      }

      else
      {
        v106 = *v130;
      }

      v106(v135, v95);
      swift_endAccess();
      if (*(v116 + 3))
      {
        sub_224A3317C(v116, &v149);
        v107 = *(&v150 + 1);
        if (*(&v150 + 1))
        {
LABEL_44:
          v108 = v151;
          __swift_project_boxed_opaque_existential_1(&v149, v107);
          v109 = v126;
          (v140)(v126, v68 + v147, v95);

          (*(v108 + 48))(v109, v107, v108);

          v106(v109, v95);
          v65 = v128;
          v19 = v141;
          v138(v128, v141);
          goto LABEL_47;
        }
      }

      else
      {
        v110 = v116[1];
        v149 = *v116;
        v150 = v110;
        v151 = *(v116 + 4);
        v107 = *(&v110 + 1);
        if (*(&v110 + 1))
        {
          goto LABEL_44;
        }
      }

      v65 = v128;
      v19 = v141;
      v138(v128, v141);

      if (!*(&v150 + 1))
      {
LABEL_48:
        v64 = v129;
        v66 = v127;
        goto LABEL_49;
      }

LABEL_47:
      __swift_destroy_boxed_opaque_existential_1(&v149);
      goto LABEL_48;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      while (1)
      {
        v58 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v59 = *(*(v147 + 56) + ((v57 << 9) | (8 * v58)));
        v60 = *(*v59 + 216);
        swift_beginAccess();
        v61 = v59 + v60;
        v62 = v146;
        v48 = &qword_27D6F3948;
        sub_224A3796C(v61, v146, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v148)(v62, 1, v19) == 1)
        {
          sub_224A3311C(v62, &qword_27D6F3948, &qword_224DB5C10);
          v56 = v57;
          if (!v54)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v62, &qword_27D6F3948, &qword_224DB5C10);
          v48 = &v149;
          sub_224DAF9B8();
          sub_224DAF9F8();
          v19 = v141;
          sub_224DAFA08();
          sub_224DAF9C8();
          v56 = v57;
          if (!v54)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v57 = v56;
      }
    }
  }

  v48 = v149;
  if ((v149 & 0x8000000000000000) != 0 || (v149 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v64 = v129;
  v65 = v128;
  v66 = v127;
  v146 = *(v149 + 16);
  if (v146)
  {
    goto LABEL_18;
  }

LABEL_52:

  sub_224C2B638();
  v138(v66, v19);
}

ValueMetadata *sub_224C2E688()
{
  type metadata accessor for Daemon();
  v0 = swift_allocObject();
  result = sub_224C2E72C(v0, v1);
  qword_2813651B0 = result;
  return result;
}

uint64_t sub_224C2E6C4()
{
  sub_224DABBE8();
  result = sub_224B31AF8();
  qword_281352030 = result;
  return result;
}

ValueMetadata *sub_224C2E72C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v1260 - v6;
  v8 = sub_224DAB188();
  v1271 = *(v8 - 8);
  v1272 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v1273 = &v1260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9688();
  v1263 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v1270 = &v1260 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5320, &qword_224DBBAD8);
  v1335 = *(v1336 - 8);
  MEMORY[0x28223BE20](v1336, v14);
  v1334 = &v1260 - v15;
  v1333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5328, &qword_224DBBAE0);
  v1332 = *(v1333 - 8);
  MEMORY[0x28223BE20](v1333, v16);
  v1331 = &v1260 - v17;
  v1330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5330, &qword_224DBBAE8);
  v1329 = *(v1330 - 8);
  MEMORY[0x28223BE20](v1330, v18);
  v1328 = &v1260 - v19;
  v1359 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5338, &qword_224DBBAF0);
  v1385 = *(v1359 - 8);
  MEMORY[0x28223BE20](v1359, v20);
  v1358 = &v1260 - v21;
  v1355 = sub_224DAF3B8();
  v1383 = *(v1355 - 8);
  MEMORY[0x28223BE20](v1355, v22);
  v1324 = &v1260 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v1326 = *(v1327 - 1);
  MEMORY[0x28223BE20](v1327, v24);
  v1325 = &v1260 - v25;
  v1357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5348, &qword_224DBBAF8);
  v1384 = *(v1357 - 8);
  MEMORY[0x28223BE20](v1357, v26);
  v1356 = &v1260 - v27;
  v1394 = sub_224DACE88();
  v1371 = *(v1394 - 8);
  v29 = MEMORY[0x28223BE20](v1394, v28);
  v1341 = &v1260 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v1367 = &v1260 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v1391 = &v1260 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5350, &qword_224DBBB00);
  v1286 = *(v36 - 8);
  v1287 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v1285 = (&v1260 - v38);
  v1373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v1372 = *(v1373 - 1);
  MEMORY[0x28223BE20](v1373, v39);
  v1368 = (&v1260 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v1436 = &v1260 - v43;
  v1457 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &qword_224DBBB08);
  v1431 = *(v1457 - 8);
  MEMORY[0x28223BE20](v1457, v44);
  v1422 = &v1260 - v45;
  v1404 = sub_224DAE688();
  v1402 = *(v1404 - 8);
  v47 = MEMORY[0x28223BE20](v1404, v46);
  v1474 = &v1260 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v1412 = &v1260 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v1364 = &v1260 - v53;
  v1390 = sub_224DAE918();
  v1411 = *(v1390 - 8);
  MEMORY[0x28223BE20](v1390, v54);
  v1374 = &v1260 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1453 = sub_224DAF3C8();
  v1452 = *(v1453 - 1);
  MEMORY[0x28223BE20](v1453, v56);
  v1442 = &v1260 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1440 = sub_224DAF318();
  MEMORY[0x28223BE20](v1440, v58);
  v1441 = &v1260 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_224DAB848();
  MEMORY[0x28223BE20](v60 - 8, v61);
  v1451 = (&v1260 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v63 - 8, v64);
  v1448 = (&v1260 - v65);
  v66 = sub_224DAB258();
  v1437 = *(v66 - 8);
  v68 = MEMORY[0x28223BE20](v66, v67);
  v1432 = &v1260 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v1476 = (&v1260 - v72);
  v74 = MEMORY[0x28223BE20](v71, v73);
  v1420 = &v1260 - v75;
  v77 = MEMORY[0x28223BE20](v74, v76);
  v1467 = (&v1260 - v78);
  MEMORY[0x28223BE20](v77, v79);
  v1472 = (&v1260 - v80);
  v1478 = sub_224DAA5C8();
  v1479 = *(v1478 - 1);
  MEMORY[0x28223BE20](v1478, v81);
  v1477 = (&v1260 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_224DABFF8();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v85);
  v87 = &v1260 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 920) = MEMORY[0x277D84FA0];
  *(v2 + 1008) = 0;
  *(v2 + 928) = 0u;
  BSDispatchQueueAssertMain();
  v1309 = type metadata accessor for PowerMonitor();
  swift_allocObject();
  *(v2 + 1016) = sub_224AC3368();
  sub_224DAA658();
  v1421 = sub_224DAA1A8();
  v1475 = sub_224DAA198();
  *(v2 + 928) = [objc_opt_self() extendAutomaticBootstrapCompletion];
  swift_unknownObjectRelease();
  v1409 = sub_224DA9E78();
  sub_224DA9E68();

  v88 = type metadata accessor for ChronodPreferences();
  swift_allocObject();
  v89 = sub_224CB9730();
  v1454 = v88;
  *(v2 + 984) = v88;
  *(v2 + 992) = &off_283832100;
  *(v2 + 960) = v89;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v91 = result;
    v1261 = v11;
    v1262 = v7;
    v1473 = v66;
    v92 = type metadata accessor for UserManager();
    v93 = swift_allocObject();
    *(v93 + 16) = v91;
    v1466 = v92;
    *(v3 + 84) = v92;
    *(v3 + 85) = &off_283830960;
    *(v3 + 81) = v93;
    *(v3 + 86) = [objc_opt_self() sharedManager];
    v94 = sub_224DADAF8();
    v95 = *MEMORY[0x277CF9948];
    v96 = *(v84 + 104);
    v96(v87, v95, v83);
    v1449 = v94;
    *(v3 + 72) = sub_224DADAE8();
    v97 = sub_224DADCF8();
    v96(v87, v95, v83);
    v1446 = v97;
    *(v3 + 73) = sub_224DADCE8();
    v98 = sub_224DAD878();
    v1320 = v95;
    v1322 = v84 + 104;
    v1323 = v83;
    v1319 = v96;
    v96(v87, v95, v83);
    v1321 = v87;
    v99 = sub_224DAD868();
    *(v3 + 77) = v98;
    *(v3 + 78) = MEMORY[0x277CF9D48];
    *(v3 + 74) = v99;
    sub_224DAA4E8();
    sub_224DAA4D8();
    sub_224A3317C(v1631, (v3 + 312));
    v100 = sub_224DAD2E8();
    sub_224A3317C((v3 + 312), &v1495);
    v1416 = v100;
    v1465 = sub_224DAD2D8();
    if (qword_281352020 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v101 = qword_281352030;
      v102 = sub_224DADB18();
      swift_retain_n();
      v103 = sub_224DADB08();
      v104 = sub_224DAC958();
      v1497 = MEMORY[0x277CF9DC0];
      *(&v1496 + 1) = v102;
      *&v1495 = v103;
      v1308 = v103;

      v1410 = v104;
      v1419 = sub_224DAC948();
      v105 = sub_224DAD1C8();

      v1268 = v105;
      v106 = sub_224DAD1D8();
      v107 = type metadata accessor for RemoteWidgetExtensionService();
      v108 = swift_allocObject();

      v1366 = v106;
      v110 = sub_224C4A6FC(v109, v108);
      *(v3 + 101) = v107;
      v1269 = sub_224C41198(&qword_281353CB0, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9790);
      *(v3 + 102) = v1269;
      *(v3 + 98) = v110;
      v111 = sub_224DAC3C8();
      v112 = objc_opt_self();

      v1318 = "22WidgetRelevanceService";
      v113 = sub_224DAEDE8();
      v1386 = v112;
      v114 = [v112 serialQueueTargetingSharedWorkloop_];

      v1340 = v107;
      *(&v1496 + 1) = v107;
      v1497 = sub_224C41198(&unk_281353CB8, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9730);
      *&v1495 = v110;

      v115 = sub_224DAC398();
      v1497 = MEMORY[0x277CF9A40];
      *(&v1496 + 1) = v111;
      *&v1495 = v115;
      swift_beginAccess();
      v116 = v115;
      v1393 = v110;
      sub_224A838C0(&v1495, v110 + 104, &unk_27D6F5370, &qword_224DB97D0);
      swift_endAccess();
      sub_224DAE608();
      *(&v1496 + 1) = v111;
      v1497 = sub_224C41198(&unk_281350D88, MEMORY[0x277CF9A48], MEMORY[0x277CF9A30]);
      *&v1495 = v116;
      v117 = v116;
      sub_224DAE5F8();
      v118 = sub_224DADF58();
      v119 = MEMORY[0x277CF9A38];
      v1497 = MEMORY[0x277CF9A38];
      *(&v1496 + 1) = v111;
      *&v1495 = v117;
      sub_224A3317C((v3 + 312), &v1555);
      v120 = v117;
      v121 = sub_224DADF48();
      v1471 = v3;
      *(v3 + 2) = v121;
      v122 = v3 + 16;
      v123 = MEMORY[0x277CF9E58];
      v1387 = v118;
      v122[3] = v118;
      v122[4] = v123;
      v124 = sub_224DAD528();
      v1497 = v119;
      v1469 = v111;
      *(&v1496 + 1) = v111;
      *&v1495 = v120;
      v125 = v120;
      v1398 = v124;
      v122[77] = sub_224DAD518();
      sub_224DADB98();
      v126 = sub_224DADB88();
      v1447 = v122;
      v122[78] = v126;
      sub_224DADC78();
      swift_retain_n();
      v127 = sub_224DADC68();
      v1464 = v125;
      v128 = sub_224C4159C(v1464);
      v129 = *MEMORY[0x277CFA0D8];
      v130 = v1479;
      v131 = *(v1479 + 13);
      v132 = v1477;
      v133 = v1478;
      v1463 = v1479 + 104;
      v1462 = v131;
      v131(v1477, v129, v1478);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5380, &qword_224DBBB10);
      v135 = swift_allocObject();
      v1459 = type metadata accessor for UnfairLock();
      v136 = swift_allocObject();
      v137 = swift_slowAlloc();
      *v137 = 0;
      *(v136 + 16) = v137;
      *(v135 + 16) = v136;
      *(v135 + 24) = v101;
      v1414 = v101;
      v138 = *(v130 + 4);
      v1479 = (v130 + 32);
      v1458 = v138;
      (v138)(v135 + qword_281351C60, v132, v133);
      *&v1556[8] = v134;
      *&v1556[16] = sub_224A33088(qword_281351BD8, &unk_27D6F5380, &qword_224DBBB10, &unk_224DBD3E8);
      *&v1555 = v135;
      v139 = type metadata accessor for LocationService(0);
      v1610 = &off_2838352C0;
      v1456 = v139;
      v1609 = v139;
      v1608[0] = v128;
      v1605 = MEMORY[0x277CFA010];
      *(&v1604 + 1) = v1421;
      v140 = v1475;
      *&v1603 = v1475;
      v141 = qword_281351690;
      v1363 = v127;

      v1307 = v135;

      v1460 = v128;

      v1455 = v140;
      if (v141 != -1)
      {
        swift_once();
      }

      v142 = v1473;
      v143 = __swift_project_value_buffer(v1473, qword_2813650F0);
      v144 = (v1437 + 2);
      v145 = v1437[2];
      v146 = v1472;
      v145(v1472, v143, v142);
      v1461 = type metadata accessor for WidgetHostService(0);
      v147 = swift_allocObject();
      v148 = qword_28135A7E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
      swift_allocObject();
      *(v147 + v148) = sub_224DAB358();
      v149 = v147 + qword_28135A7E8;
      *(v149 + 32) = 0;
      *v149 = 0u;
      *(v149 + 16) = 0u;
      v1470 = v145;
      v145(v1467, v146, v142);
      if (*&v1556[8])
      {
        sub_224A3317C(&v1555, &v1495);
      }

      else
      {
        v1495 = v1555;
        v1496 = *v1556;
        v1497 = *&v1556[16];
      }

      sub_224A3796C(v1608, &v1574, &qword_27D6F4200, &unk_224DB5FC0);
      sub_224A3796C(&v1603, v1566, &unk_27D6F53A0, &qword_224DC1A80);
      v150 = qword_28135CA10;
      swift_allocObject();
      *(v147 + v150) = sub_224DAB358();
      v151 = qword_28135CA00;
      swift_allocObject();
      *(v147 + v151) = sub_224DAB358();
      v152 = qword_28135C9F8;
      swift_allocObject();
      *(v147 + v152) = sub_224DAB358();
      v153 = qword_28135CA08;
      swift_allocObject();
      *(v147 + v153) = sub_224DAB358();
      v154 = qword_28135C9F0;
      v155 = swift_allocObject();
      v156 = swift_slowAlloc();
      *v156 = 0;
      *(v147 + v154) = v155;
      *(v147 + qword_28135CA28) = MEMORY[0x277D84F98];
      *(v155 + 16) = v156;
      *(v147 + qword_28135CA40) = 0;
      *(v147 + qword_28135CA20) = 2000000000;
      v1470(v147 + qword_281365438, v1467, v142);
      v157 = v147 + qword_28135CA30;
      v1468 = v144;
      if (*(&v1496 + 1))
      {
        sub_224A3317C(&v1495, v157);
      }

      else
      {
        v158 = v1496;
        *v157 = v1495;
        *(v157 + 16) = v158;
        *(v157 + 32) = v1497;
      }

      sub_224A3796C(&v1574, v147 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
      v159 = sub_224A3796C(v1566, v147 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
      MEMORY[0x28223BE20](v159, v160);
      v1258 = &v1495;
      v1259 = v147;
      v1475 = v147;
      sub_224C2A634(sub_224C4CEAC, &v1256, sub_224C4E43C);
      sub_224A3311C(v1566, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(&v1574, &qword_27D6F4200, &unk_224DB5FC0);
      v161 = v1437[1];
      isEscapingClosureAtFileLocation = v1473;
      v1428 = v1437 + 1;
      v1427 = v161;
      v161(v1467, v1473);
      if (*(&v1496 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v1495);
      }

      v163 = v1475;

      sub_224A68420(0x300u, &v1495);
      v1450 = 0;
      if (v1498)
      {
        if (qword_281356838 != -1)
        {
          goto LABEL_185;
        }

        goto LABEL_15;
      }

      sub_224A3311C(&v1603, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(v1608, &qword_27D6F4200, &unk_224DB5FC0);
      if (*&v1556[8])
      {
        __swift_destroy_boxed_opaque_existential_1(&v1555);
      }

      v1427(v146, isEscapingClosureAtFileLocation);
      sub_224A3311C(&v1495, &qword_27D6F50E0, &qword_224DB41A0);
      while (1)
      {
        v169 = v1477;
        v170 = v1478;
        v1462(v1477, *MEMORY[0x277CFA0E0], v1478);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53B0, &qword_224DBBB18);
        v172 = swift_allocObject();
        v173 = swift_allocObject();
        v174 = v1414;

        v175 = swift_slowAlloc();
        *v175 = 0;
        *(v173 + 16) = v175;
        *(v172 + 16) = v173;
        *(v172 + 24) = v174;
        (v1458)(v172 + qword_281351C60, v169, v170);
        *(&v1496 + 1) = v171;
        v1497 = sub_224A33088(&unk_281351BC8, &unk_27D6F53B0, &qword_224DBBB18, &unk_224DBD3E8);
        *&v1495 = v172;
        *&v1556[16] = &off_2838352C0;
        *&v1556[8] = v1456;
        *&v1555 = v1460;
        v1610 = MEMORY[0x277CFA010];
        v1609 = v1421;
        v176 = v1455;
        v1608[0] = v1455;
        v177 = qword_281351688;

        v1479 = v176;
        v1306 = v172;

        if (v177 != -1)
        {
          swift_once();
        }

        v178 = v1473;
        v179 = __swift_project_value_buffer(v1473, qword_2813650D8);
        v180 = v1467;
        v181 = v1470;
        v1470(v1467, v179, v178);
        v1435 = type metadata accessor for ControlHostService(0);
        v182 = swift_allocObject();
        v181(v1420, v180, v178);
        if (*(&v1496 + 1))
        {
          sub_224A3317C(&v1495, &v1603);
        }

        else
        {
          v1603 = v1495;
          v1604 = v1496;
          v1605 = v1497;
        }

        v183 = v1475;
        sub_224A3796C(&v1555, &v1574, &qword_27D6F4200, &unk_224DB5FC0);
        sub_224A3796C(v1608, v1566, &unk_27D6F53A0, &qword_224DC1A80);
        v184 = qword_28135CA10;
        swift_allocObject();
        *(v182 + v184) = sub_224DAB358();
        v185 = qword_28135CA00;
        swift_allocObject();
        *(v182 + v185) = sub_224DAB358();
        v186 = qword_28135C9F8;
        swift_allocObject();
        *(v182 + v186) = sub_224DAB358();
        v187 = qword_28135CA08;
        swift_allocObject();
        *(v182 + v187) = sub_224DAB358();
        v188 = qword_28135C9F0;
        v189 = swift_allocObject();
        v190 = swift_slowAlloc();
        *v190 = 0;
        *(v189 + 16) = v190;
        *(v182 + v188) = v189;
        *(v182 + qword_28135CA28) = MEMORY[0x277D84F98];
        *(v182 + qword_28135CA40) = 0;
        *(v182 + qword_28135CA20) = 2000000000;
        v1470(v182 + qword_281365438, v1420, v178);
        v191 = v182 + qword_28135CA30;
        if (*(&v1604 + 1))
        {
          sub_224A3317C(&v1603, v191);
        }

        else
        {
          v192 = v1604;
          *v191 = v1603;
          *(v191 + 16) = v192;
          *(v191 + 32) = v1605;
        }

        sub_224A3796C(&v1574, v182 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
        v193 = sub_224A3796C(v1566, v182 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
        MEMORY[0x28223BE20](v193, v194);
        v1258 = &v1603;
        v1259 = v182;
        sub_224C2A634(sub_224C4CEC8, &v1256, sub_224C4E5C0);
        sub_224A3311C(v1566, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(&v1574, &qword_27D6F4200, &unk_224DB5FC0);
        v195 = v1473;
        v196 = v1427;
        v1427(v1420, v1473);
        v196(v1467, v195);
        sub_224A3311C(v1608, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(&v1555, &qword_27D6F4200, &unk_224DB5FC0);
        if (*(&v1496 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1495);
        }

        v197 = MEMORY[0x277D84F98];
        if (*(&v1604 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1603);
        }

        v1443 = sub_224DACE58();
        v1448 = sub_224DACE48();
        v198 = [objc_allocWithZone(MEMORY[0x277D21530]) init];
        v1630[3] = &type metadata for IntentProvider;
        v1630[4] = &off_283830C50;
        v1630[0] = v198;
        v199 = type metadata accessor for NowPlayingObserver(0);
        swift_allocObject();
        v200 = sub_224C6CFA8();
        v1317 = type metadata accessor for KeepAliveAssertionProvider();
        v201 = swift_allocObject();
        *(v201 + 16) = v197;
        *(v201 + 24) = 0;
        type metadata accessor for DefaultCarouselSessionInterface();
        v202 = swift_allocObject();
        v1497 = &off_283830C60;
        *(&v1496 + 1) = v199;
        *&v1495 = v200;
        v1418 = type metadata accessor for ProcessMonitor(0);
        v203 = objc_allocWithZone(v1418);
        v204 = __swift_mutable_project_boxed_opaque_existential_1(&v1495, *(&v1496 + 1));
        MEMORY[0x28223BE20](v204, v204);
        v206 = (&v1260 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v207 + 16))(v206);
        v208 = *v206;
        v209 = v1464;

        v1462 = v182;
        v1381 = v201;
        v210 = sub_224C4983C(v183, v182, v209, v201, v202, v208, v203);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v211 = v209;
        v212 = v1460;

        v213 = v210;
        v1426 = sub_224C42080(v211, v213, v212);
        type metadata accessor for FocusConfigurationMonitor();
        v214 = swift_allocObject();
        v1450 = v211;
        v1425 = sub_224C48F4C(v1450, v214);
        v215 = sub_224C4B868();
        v216 = objc_opt_self();
        swift_retain_n();
        v217 = [v216 sharedScheduler];
        v218 = [objc_opt_self() standardUserDefaults];
        v219 = type metadata accessor for DuetWidgetConfigurationManager();
        v220 = swift_allocObject();
        v221 = sub_224C48244(v217, v183, v218, v220);

        *(v1471 + 114) = v221;
        v1458 = v215;
        v1305 = v200;
        v1463 = v213;
        v1455 = v216;
        if (v215)
        {
          v222 = sub_224DAAD68();
          v215 = MEMORY[0x277D466B0];
        }

        else
        {
          v222 = 0;
        }

        v1497 = &off_2838320A0;
        *(&v1496 + 1) = v219;
        *&v1495 = v221;
        v223 = type metadata accessor for DuetTaskActivitySchedulingProvider();
        v224 = swift_allocObject();
        v225 = __swift_mutable_project_boxed_opaque_existential_1(&v1495, v219);
        MEMORY[0x28223BE20](v225, v225);
        v227 = (&v1260 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v228 + 16))(v227);
        v229 = *v227;
        v224[10] = v219;
        v224[11] = &off_2838320A0;
        v224[2] = v1458;
        v224[3] = 0;
        v224[4] = 0;
        v224[5] = v222;
        v224[6] = v215;
        v224[7] = v229;

        __swift_destroy_boxed_opaque_existential_1(&v1495);

        v230 = v1465;

        sub_224DAD2C8();
        sub_224A3317C((v1471 + 648), &v1555);
        v231 = sub_224DAEDE8();
        v1477 = [v1386 serialQueueTargetingSharedWorkloop_];

        v232 = __swift_mutable_project_boxed_opaque_existential_1(&v1555, *&v1556[8]);
        v1478 = &v1260;
        MEMORY[0x28223BE20](v232, v232);
        v234 = (&v1260 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v235 + 16))(v234);
        v236 = *v234;
        v1610 = &off_28382E1F8;
        v1609 = v223;
        v1608[0] = v224;
        v1605 = &off_283830960;
        v237 = v1466;
        *(&v1604 + 1) = v1466;
        *&v1603 = v236;
        v1578 = MEMORY[0x277CF9C38];
        v1577 = v1443;
        v1574 = v1448;
        sub_224A3317C(v1608, v1566);
        sub_224A3317C(&v1574, &v1490);
        sub_224A3317C(&v1495, &v1486);
        sub_224A3317C(&v1603, &v1480);
        v238 = __swift_mutable_project_boxed_opaque_existential_1(&v1480, v1482);
        v1472 = &v1260;
        MEMORY[0x28223BE20](v238, v238);
        v240 = (&v1260 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v241 + 16))(v240);
        v242 = *v240;
        *(&v1628 + 1) = v1416;
        v1629 = MEMORY[0x277CF9C88];
        *&v1627 = v230;
        v1626 = &off_283830960;
        v1625 = v237;
        *&v1623 = v242;
        v243 = type metadata accessor for TaskActivityScheduler();
        v244 = objc_allocWithZone(v243);
        v245 = __swift_mutable_project_boxed_opaque_existential_1(&v1623, v1625);
        v1464 = &v1260;
        MEMORY[0x28223BE20](v245, v245);
        v247 = (&v1260 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v248 + 16))(v247);
        v249 = *v247;
        v1622 = &off_283830960;
        v1621 = v237;
        *&v1619 = v249;
        v250 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock;
        v251 = swift_allocObject();
        swift_retain_n();

        v252 = swift_slowAlloc();
        *v252 = 0;
        *(v251 + 16) = v252;
        *&v244[v250] = v251;
        *&v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore] = MEMORY[0x277D84F98];
        v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] = 0;
        *&v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration] = MEMORY[0x277D84F90];
        sub_224A3317C(&v1619, &v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager]);
        sub_224A3317C(&v1490, &v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator]);
        sub_224A3317C(&v1627, &v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor]);
        sub_224A3317C(&v1486, &v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider]);
        v253 = v1477;
        *&v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue] = v1477;
        sub_224A3317C(v1566, &v244[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider]);
        v1618.receiver = v244;
        v1618.super_class = v243;
        v254 = v253;
        v255 = objc_msgSendSuper2(&v1618, sel_init);
        sub_224AD2404();
        v1304 = v224;

        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(v1566);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        __swift_destroy_boxed_opaque_existential_1(&v1574);
        __swift_destroy_boxed_opaque_existential_1(&v1603);
        __swift_destroy_boxed_opaque_existential_1(v1608);
        __swift_destroy_boxed_opaque_existential_1(&v1627);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        v256 = type metadata accessor for _DuetBudgetServiceImpl();
        v257 = swift_allocObject();
        result = [objc_opt_self() sharedScheduler];
        if (!result)
        {
          goto LABEL_188;
        }

        *(v257 + 16) = result;
        *(v257 + 24) = [v1455 sharedScheduler];
        *&v1556[16] = &off_283829278;
        *&v1556[8] = v243;
        *&v1555 = v255;
        v1610 = MEMORY[0x277CF9A38];
        v1609 = v1469;
        v258 = v1450;
        v1608[0] = v1450;
        *(&v1496 + 1) = v1418;
        v1497 = &off_28382AA58;
        v1498 = sub_224C41198(&unk_28135B710, type metadata accessor for ProcessMonitor, &unk_224DB5BB4);
        v259 = v1463;
        *&v1495 = v1463;
        v260 = *(v1471 + 72);
        v261 = v1471;
        *(&v1604 + 1) = v1449;
        v262 = MEMORY[0x277CF9D40];
        v1605 = sub_224C41198(&unk_281350CA8, MEMORY[0x277CF9DB8], MEMORY[0x277CF9D40]);
        *&v1603 = v260;
        v263 = *(v261 + 73);
        v1577 = v1446;
        v1578 = sub_224C41198(&unk_281350CA0, MEMORY[0x277CF9DE8], v262);
        v1574 = v263;
        v1568 = &off_283830A00;
        v1315 = v256;
        v1567 = v256;
        v1566[0] = v257;
        v1491 = v1461;
        v1455 = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
        v1492 = v1455;
        *&v1490 = v1475;
        v264 = objc_allocWithZone(type metadata accessor for TaskSessionQueuePool());
        v1477 = v258;

        v1446 = v259;
        v1303 = v255;

        v1397 = v257;

        v1478 = [v264 init];
        v1464 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
        v265 = objc_allocWithZone(v1464);
        v266 = MEMORY[0x277D85000];
        v267 = *((*MEMORY[0x277D85000] & *v265) + 0x88);
        v268 = swift_allocObject();
        v269 = swift_slowAlloc();
        *v269 = 0;
        *(v268 + 16) = v269;
        *(v265 + v267) = v268;
        v270 = MEMORY[0x277D84F98];
        *(v265 + *((*v266 & *v265) + 0x90)) = MEMORY[0x277D84F98];
        *(v265 + *((*v266 & *v265) + 0xA0)) = v270;
        *(v265 + *((*v266 & *v265) + 0xB8)) = v270;
        v1472 = *((*v266 & *v265) + 0xC0);
        v1466 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
        v1463 = "activityScheduler";
        sub_224DAB828();
        *&v1486 = MEMORY[0x277D84F90];
        v1450 = sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
        v1439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
        v1449 = sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
        sub_224DAF788();
        v271 = (v1452 + 13);
        v272 = v1452[13];
        v273 = v1442;
        v1388 = *MEMORY[0x277D85260];
        v272(v1442);
        v1438 = v272;
        *(v1472 + v265) = sub_224DAF418();
        v1472 = *((*MEMORY[0x277D85000] & *v265) + 0xC8);
        v1463 = "tasksession.callout)";
        sub_224DAB7F8();
        LODWORD(v1403) = *MEMORY[0x277D85268];
        v272(v273);
        *&v1486 = MEMORY[0x277D84F90];
        sub_224DAF788();
        *(v1472 + v265) = sub_224DAF418();
        v1472 = *((*MEMORY[0x277D85000] & *v265) + 0xD0);
        v1463 = "tasksession.completion";
        sub_224DAB828();
        v1452 = v271;
        v1438(v273, v1403, v1453);
        *&v1486 = MEMORY[0x277D84F90];
        sub_224DAF788();
        *(v1472 + v265) = sub_224DAF418();
        v274 = MEMORY[0x277D85000];
        *(v265 + *((*MEMORY[0x277D85000] & *v265) + 0xE8)) = 0;
        v275 = *((*v274 & *v265) + 0xF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
        swift_allocObject();
        *(v265 + v275) = sub_224DAB358();
        *(v265 + *((*v274 & *v265) + 0xF8)) = 0;
        sub_224A3317C(v1608, v265 + *((*v274 & *v265) + 0x70));
        sub_224B44674(&v1495, v265 + *((*v274 & *v265) + 0x68));
        sub_224A3317C(&v1603, v265 + *((*v274 & *v265) + 0xD8));
        sub_224A3317C(&v1574, v265 + *((*v274 & *v265) + 0xE0));
        v276 = v1477;
        *(v265 + *((*v274 & *v265) + 0x60)) = v1477;
        sub_224A3317C(&v1490, v265 + *((*v274 & *v265) + 0x80));
        sub_224A3317C(&v1555, v265 + *((*v274 & *v265) + 0xA8));
        v277 = v1478;
        *(v265 + *((*v274 & *v265) + 0xB0)) = v1478;
        sub_224A3317C(v1566, v265 + *((*v274 & *v265) + 0x78));
        type metadata accessor for PendingTaskCollection();
        v278 = swift_allocObject();
        v279 = MEMORY[0x277D84F98];
        v278[2] = MEMORY[0x277D84F98];
        v278[3] = v279;
        v278[4] = v279;
        v278[5] = v279;
        *(v265 + *((*v274 & *v265) + 0x98)) = v278;
        v1617.receiver = v265;
        v1617.super_class = v1464;
        v280 = v277;
        v281 = objc_msgSendSuper2(&v1617, sel_init);
        type metadata accessor for WatchdoggingTaskTracker();
        v282 = swift_allocObject();
        v283 = v281;
        sub_224C411E0(v283, 0, v282);
        v285 = v284;

        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(v1566);
        __swift_destroy_boxed_opaque_existential_1(&v1574);
        __swift_destroy_boxed_opaque_existential_1(&v1603);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        __swift_destroy_boxed_opaque_existential_1(v1608);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        *&v283[*((*v274 & *v283) + 0xE8)] = v285;
        v1478 = v283;

        v1417 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53D8, &qword_224DBBB28);
        v286 = MEMORY[0x277CF9A40];
        v1497 = MEMORY[0x277CF9A40];
        v287 = v1469;
        *(&v1496 + 1) = v1469;
        *&v1495 = v276;
        v288 = sub_224DAC268();
        sub_224DAC1F8();
        sub_224C41198(&unk_281350E30, MEMORY[0x277CF9978], MEMORY[0x277CF9970]);
        v289 = v276;
        v1376 = v288;
        v290 = sub_224DADF98();
        v291 = MEMORY[0x22AA5C2F0](0xD000000000000010, 0x8000000224DC4760, &v1495, v290);
        v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53E8, &qword_224DBBB30);
        v1497 = v286;
        *(&v1496 + 1) = v287;
        *&v1495 = v289;
        sub_224DAC2B8();
        sub_224DAC278();
        sub_224C41198(&unk_281350E00, MEMORY[0x277CF99B8], MEMORY[0x277CF99B0]);
        v293 = v289;
        v294 = sub_224DADF98();
        v1316 = "d.anonymous-control-host";
        v1382 = v292;
        v1413 = MEMORY[0x22AA5C2F0](0xD000000000000010, 0x8000000224DC4760, &v1495, v294);
        v295 = sub_224DADFC8();
        v296 = MEMORY[0x277CF9A38];
        v1497 = MEMORY[0x277CF9A38];
        *(&v1496 + 1) = v287;
        *&v1495 = v293;
        v297 = v293;
        v298 = v1374;
        sub_224DAE908();
        v299 = sub_224DADFB8();
        v1497 = v296;
        *(&v1496 + 1) = v287;
        *&v1495 = v297;
        v1477 = v297;
        v300 = v1364;
        sub_224DAE678();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v301 = (v1402 + 16);
        v302 = *(v1402 + 16);
        v303 = v1412;
        v304 = v1404;
        (v302)(v1412, v300, v1404);
        v305 = sub_224DAC9B8();
        *(&v1496 + 1) = v1417;
        v1399 = sub_224A33088(&qword_281350C88, &unk_27D6F53D8, &qword_224DBBB28, MEMORY[0x277CF9E68]);
        v1497 = v1399;
        *&v1495 = v291;
        *&v1556[16] = MEMORY[0x277CF9E70];
        v1415 = v295;
        *&v1556[8] = v295;
        *&v1555 = v299;
        v1400 = v291;

        v1424 = v299;

        sub_224DAC988();
        v1472 = v305;
        v306 = sub_224DAC978();
        v1408 = v301;
        v1395 = v302;
        (v302)(v1474, v303, v304);
        sub_224DAC998();
        v307 = sub_224DADA78();
        v308 = *(v1411 + 13);
        LODWORD(v1313) = *MEMORY[0x277CE3D68];
        v1411 = (v1411 + 104);
        v1312 = v308;
        v308(v298);

        v309 = sub_224DADA88();
        v1497 = MEMORY[0x277CF9DA0];
        v1314 = v307;
        *(&v1496 + 1) = v307;
        *&v1495 = v309;
        sub_224DAC2C8();
        v1392 = v306;

        sub_224A3317C(v1631, &v1495);
        v310 = v1471;
        sub_224A3317C((v1471 + 960), &v1555);
        v1610 = MEMORY[0x277CFA010];
        v1609 = v1421;
        v1608[0] = v1479;
        sub_224A3317C((v310 + 648), &v1603);
        v311 = __swift_mutable_project_boxed_opaque_existential_1(&v1555, *&v1556[8]);
        v1445 = &v1260;
        MEMORY[0x28223BE20](v311, v311);
        v313 = (&v1260 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v314 + 16))(v313);
        v315 = *v313;
        v1578 = MEMORY[0x277CF9A38];
        v1577 = v1469;
        v1574 = v1477;
        v1568 = &off_28382A480;
        v1567 = v1464;
        v1566[0] = v1478;
        v1492 = v1455;
        v1491 = v1461;
        *&v1490 = v1475;
        v1488 = v1435;
        v1423 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
        v1489 = v1423;
        *&v1486 = v1462;
        v1482 = v1340;
        v1483 = sub_224C41198(&unk_281353CC0, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9760);
        *&v1480 = v1393;
        *(&v1628 + 1) = &type metadata for DescriptorIntentResolver;
        v1629 = &off_28382D598;
        *&v1627 = swift_allocObject();
        sub_224C4CEE4(v1630, v1627 + 16);
        v1626 = &off_283832100;
        v316 = v1454;
        v1625 = v1454;
        *&v1623 = v315;
        v1463 = type metadata accessor for DescriptorService(0);
        v317 = objc_allocWithZone(v1463);
        v318 = __swift_mutable_project_boxed_opaque_existential_1(&v1627, *(&v1628 + 1));
        *&v1444 = &v1260;
        MEMORY[0x28223BE20](v318, v318);
        v320 = &v1260 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v321 + 16))(v320);
        v322 = __swift_mutable_project_boxed_opaque_existential_1(&v1623, v1625);
        v1434 = &v1260;
        MEMORY[0x28223BE20](v322, v322);
        v324 = (&v1260 - ((v323 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v325 + 16))(v324);
        v326 = *v324;
        v1621 = &type metadata for DescriptorIntentResolver;
        v1622 = &off_28382D598;
        v327 = swift_allocObject();
        *&v1619 = v327;
        v328 = *(v320 + 1);
        *(v327 + 16) = *v320;
        *(v327 + 32) = v328;
        *(v327 + 48) = *(v320 + 4);
        v1616 = &off_283832100;
        v1615 = v316;
        *&v1614 = v326;
        v329 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__activityDescriptorPublisher;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F0, &qword_224DC1B60);
        swift_allocObject();
        swift_retain_n();
        v330 = v1477;
        swift_retain_n();
        swift_retain_n();
        v331 = v1478;
        v332 = v330;
        v1375 = v1479;
        v333 = v331;
        *&v317[v329] = sub_224DAB358();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher] = 0;
        v334 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__widgetDescriptorPublisher;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F8, &qword_224DBBB38);
        swift_allocObject();
        *&v317[v334] = sub_224DAB358();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher] = 0;
        v335 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__controlDescriptorPublisher;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5400, &unk_224DC1B50);
        swift_allocObject();
        *&v317[v335] = sub_224DAB358();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher] = 0;
        v336 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__combinedDescriptorPublisher;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5408, &qword_224DBBB40);
        swift_allocObject();
        *&v317[v336] = sub_224DAB358();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher] = 0;
        v337 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__extensionPublisher;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5410, &unk_224DC1B40);
        swift_allocObject();
        *&v317[v337] = sub_224DAB358();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher] = 0;
        v338 = &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorProvider];
        *v338 = 0;
        v338[1] = 0;
        v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries] = 0;
        v339 = &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache];
        *v339 = 0u;
        *(v339 + 1) = 0u;
        *(v339 + 4) = 0;
        v340 = MEMORY[0x277D84FA0];
        v341 = MEMORY[0x277D84F90];
        v342 = MEMORY[0x277D84FA0];
        if (MEMORY[0x277D84F90] >> 62)
        {
          if (sub_224DAF838())
          {
            sub_224D5796C(MEMORY[0x277D84F90]);
          }

          else
          {
            v342 = MEMORY[0x277D84FA0];
          }
        }

        v1454 = v332;
        v1477 = v333;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions] = v342;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken] = 0;
        v343 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue;
        sub_224DAB7E8();
        *&v1599 = v341;
        sub_224DAF788();
        v1438(v1442, v1388, v1453);
        *&v317[v343] = sub_224DAF418();
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched] = MEMORY[0x277D84F98];
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents] = v341;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources] = 0;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged] = v340;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_initialQueryTimerInterval] = 0x4082C00000000000;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval] = 0x40F5180000000000;
        v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting] = 0;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerLeeway] = 0x404E000000000000;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer] = 0;
        *&v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_userInitiatedDiscoveryLeeway] = 0x4014000000000000;
        v344 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
        v345 = sub_224DA9878();
        (*(*(v345 - 8) + 56))(&v317[v344], 1, 1, v345);
        sub_224A3317C(&v1574, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager]);
        sub_224A3317C(v1566, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService]);
        sub_224A3317C(&v1490, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService]);
        sub_224A3317C(&v1486, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService]);
        sub_224A3317C(&v1480, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService]);
        sub_224A3317C(&v1619, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_intentResolver]);
        sub_224A3317C(&v1495, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider]);
        sub_224A3317C(&v1614, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences]);
        sub_224A3796C(v1608, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager], &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3796C(&v1603, &v317[OBJC_IVAR____TtC10ChronoCore17DescriptorService_userManager], &unk_27D6F5418, &unk_224DBBB48);
        v1613.receiver = v317;
        v1613.super_class = v1463;
        v1478 = objc_msgSendSuper2(&v1613, sel_init);
        v346 = v1454;

        v347 = v1477;

        sub_224A3311C(&v1603, &unk_27D6F5418, &unk_224DBBB48);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        sub_224A3311C(v1608, &unk_27D6F53A0, &qword_224DC1A80);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(v1566);
        __swift_destroy_boxed_opaque_existential_1(&v1574);
        __swift_destroy_boxed_opaque_existential_1(&v1614);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(&v1627);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        v348 = v1458;
        if (v1458)
        {
          v349 = sub_224DAAD68();
          v348 = MEMORY[0x277D466B0];
        }

        else
        {
          v349 = 0;
        }

        v350 = v1465;
        v351 = v1458;
        v1608[0] = v1458;
        v1608[1] = 0;
        v1608[2] = 0;
        v1609 = v349;
        v1610 = v348;
        v1611 = 0xD000000000000013;
        v1612 = 0x8000000224DC43A0;
        v1497 = MEMORY[0x277CF9A38];
        *(&v1496 + 1) = v1469;
        *&v1495 = v346;
        sub_224A3317C(v1631, &v1555);
        v352 = sub_224DAE018();
        sub_224A3317C(v1447, &v1603);
        __swift_project_boxed_opaque_existential_1(&v1603, *(&v1604 + 1));
        v353 = v346;

        sub_224DADA68();
        v354 = sub_224DAE008();
        __swift_destroy_boxed_opaque_existential_1(&v1603);
        v1605 = MEMORY[0x277CF9E80];
        v1311 = v352;
        *(&v1604 + 1) = v352;
        *&v1603 = v354;
        v355 = sub_224DADF38();
        sub_224C4CF40(v1608, &v1555);
        v356 = qword_281352058;
        v1479 = v353;

        v357 = v347;
        v1362 = v355;

        v1478 = v1478;
        if (v356 != -1)
        {
          swift_once();
        }

        sub_224A3317C(qword_281352068, &v1574);
        v358 = v1471;
        if (v351)
        {
          v359 = sub_224DAAD68();
          v360 = MEMORY[0x277D466A0];
          v361 = MEMORY[0x277D466B8];
          v362 = MEMORY[0x277D466B0];
          v363 = MEMORY[0x277D466F8];
          v364 = v351;
          v365 = MEMORY[0x277D46700];
        }

        else
        {
          v364 = 0;
          v359 = 0;
          v365 = 0;
          v363 = 0;
          v362 = 0;
          v361 = 0;
          v360 = 0;
          *&v1496 = 0;
          *(&v1495 + 1) = 0;
        }

        v366 = v351;
        v367 = v1448;
        *&v1495 = v364;
        *(&v1496 + 1) = v359;
        v1497 = v365;
        v1498 = v363;
        v1499 = v362;
        v1500 = v361;
        v1501 = v360;
        v368 = qword_2813516D0;

        if (v368 != -1)
        {
          swift_once();
        }

        v369 = v1473;
        v370 = __swift_project_value_buffer(v1473, qword_281365138);
        v371 = v1467;
        v1470(v1467, v370, v369);
        sub_224C4CF40(&v1555, &v1603);
        v372 = v1392;

        v1477 = v357;
        sub_224C42284(v1479, v1362, v372, v350, v371, v367, v357, v1478, v1475, &v1603, &v1574, &v1495);
        v1430 = v373;
        sub_224C4CF9C(&v1555);
        type metadata accessor for APSPushConnectionFactory();
        v374 = swift_allocObject();
        type metadata accessor for PersistentPushSubscriptionStore();
        swift_allocObject();

        v376 = sub_224C6F1DC(v375);

        type metadata accessor for PersistentPublicTokenStore();
        swift_allocObject();

        v378 = sub_224AC2B88(v377);

        type metadata accessor for PersistentPushTokenStore();
        swift_allocObject();

        v380 = sub_224CE4EF0(v379);

        v1298 = type metadata accessor for SimpleWorkScheduler();
        v381 = swift_allocObject();
        v382 = swift_allocObject();
        v383 = swift_slowAlloc();
        *v383 = 0;
        *(v382 + 16) = v383;
        v381[2] = v382;
        v381[3] = MEMORY[0x277D84F98];
        v381[4] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
        swift_allocObject();
        v381[5] = sub_224DAB358();

        v1301 = v376;
        v1302 = v374;
        v1299 = v380;
        v1300 = v378;
        v1353 = v381;
        v384 = sub_224C43E68(v374, v376, v378, v380, v381);
        *(v358 + 110) = v384;
        v1629 = 0;
        v1628 = 0u;
        v1627 = 0u;
        sub_224A3796C(&v1627, &v1495, &qword_27D6F5428, &qword_224DBBB50);
        v385 = v1446;
        v1433 = v384;

        v386 = sub_224C445B8(v385, &v1495);
        v1370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5430, &qword_224DBBB58);
        v387 = swift_allocObject();
        v1354 = xmmword_224DB30F0;
        *(v387 + 16) = xmmword_224DB30F0;
        *(v387 + 56) = &type metadata for RemoteWidgetReloadFilter;
        *(v387 + 64) = &off_283829758;
        *(v387 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5438, &qword_224DBBB60);
        *(v387 + 104) = &off_28382AE78;
        v1446 = v387;
        *(v387 + 72) = v386;
        v1360 = v386;

        v1407 = sub_224C4BEA0(v388);
        v389 = 0;
        if (v366)
        {
          v389 = sub_224DAAD68();
          v390 = MEMORY[0x277D466B0];
        }

        else
        {
          v390 = 0;
        }

        v1603 = v1458;
        *&v1604 = 0;
        *(&v1604 + 1) = v389;
        v1605 = v390;
        v1606 = 0xD000000000000010;
        v1607 = 0x8000000224DC43E0;
        v1497 = v1399;
        *(&v1496 + 1) = v1417;
        *&v1495 = v1400;
        *&v1556[16] = MEMORY[0x277CF9E70];
        *&v1556[8] = v1415;
        *&v1555 = v1424;

        sub_224DAC988();
        v391 = sub_224DAC978();
        (v1395)(v1474, v1412, v1404);
        sub_224DAC998();
        sub_224A3317C(v1447, &v1495);
        v392 = v1479;
        v393 = v1460;

        v394 = v1475;

        v395 = v350;

        v396 = v1448;

        v397 = v1478;
        v1405 = v391;

        v1478 = sub_224C3D880(v1426, v393, v1425);
        v398 = qword_281351410;
        v399 = v385;
        v400 = v1477;

        if (v398 != -1)
        {
          swift_once();
        }

        v401 = v1473;
        v402 = __swift_project_value_buffer(v1473, qword_281364D30);
        v1470(v1476, v402, v401);
        v1571[0] = v395;
        *&v1556[16] = v1455;
        *&v1556[8] = v1461;
        *&v1555 = v394;
        v1577 = v1463;
        v1361 = sub_224C41198(&qword_28135A960, type metadata accessor for DescriptorService, &unk_224DC1920);
        v1578 = v1361;
        v1344 = v397;
        v1574 = v397;
        v1568 = &off_2838352C0;
        v403 = v1456;
        v1567 = v1456;
        v1566[0] = v393;
        v1492 = MEMORY[0x277CF9A38];
        v1491 = v1469;
        v1365 = v392;
        *&v1490 = v392;
        v1477 = MEMORY[0x277CF9B18];
        v1429 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
        v1489 = MEMORY[0x277CF9C38];
        v1488 = v1443;
        *&v1486 = v396;
        v1483 = &off_28382A480;
        v1482 = v1464;
        v1342 = v400;
        *&v1480 = v400;
        v404 = v401;
        v1626 = &off_28382AA58;
        v405 = v1418;
        v1625 = v1418;
        v1310 = v399;
        *&v1623 = v399;
        v1621 = &type metadata for ArchiveVersionProvider;
        v1389 = sub_224C4CFF0();
        v1622 = v1389;
        *&v1619 = swift_allocObject();
        sub_224C4CF40(&v1603, v1619 + 16);
        v1616 = MEMORY[0x277CF9B10];
        v1615 = v1410;
        *&v1614 = v1419;
        v1454 = type metadata accessor for MobileTimelineService(0);
        v406 = swift_allocObject();
        v407 = __swift_mutable_project_boxed_opaque_existential_1(v1566, v1567);
        v1396 = &v1260;
        MEMORY[0x28223BE20](v407, v407);
        v409 = (&v1260 - ((v408 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v410 + 16))(v409);
        v411 = __swift_mutable_project_boxed_opaque_existential_1(&v1623, v1625);
        v1369 = &v1260;
        MEMORY[0x28223BE20](v411, v411);
        v413 = (&v1260 - ((v412 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v414 + 16))(v413);
        v415 = *v409;
        v416 = *v413;
        v417 = v403;
        v1602 = &off_2838352C0;
        v1601 = v403;
        *&v1599 = v415;
        v1598 = &off_28382AA58;
        v1597 = v405;
        *&v1596 = v416;
        *(v406 + 32) = 0u;
        *(v406 + 48) = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5448, &qword_224DBBB68);
        swift_allocObject();
        *(v406 + 64) = sub_224DAB358();
        v418 = swift_allocObject();
        v419 = swift_slowAlloc();
        *v419 = 0;
        *(v418 + 16) = v419;
        *(v406 + 240) = v418;
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions) = MEMORY[0x277D84FA0];
        v420 = MEMORY[0x277D84F98];
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentSubscriptions) = MEMORY[0x277D84F98];
        v421 = MEMORY[0x277D84F90];
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions) = MEMORY[0x277D84F90];
        v422 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext;
        v1345 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5450, &qword_224DBBB70);
        *(v406 + v422) = sub_224DADDF8();
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount) = v420;
        sub_224A3317C(&v1555, v406 + 72);
        sub_224A3317C(&v1574, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider);
        sub_224A3317C(&v1599, v406 + 112);
        sub_224A3317C(&v1490, v406 + 152);
        sub_224A3317C(&v1495, v406 + 192);
        v1470(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v1476, v404);
        v423 = v1405;
        v424 = v1429;
        *(v406 + 16) = v1405;
        *(v406 + 24) = v424;
        sub_224A3317C(&v1596, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor);

        sub_224DAB818();
        *&v1593 = v421;
        sub_224DAF788();
        v1438(v1442, v1403, v1453);
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_proactiveForwardingQueue) = sub_224DAF418();
        *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadFilters) = v1446;
        v1347 = sub_224C41198(&qword_281350D48, v1477, MEMORY[0x277CF99F8]);
        sub_224DAC3E8();
        sub_224A36F98(&v1593, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider);
        v425 = sub_224DADFF8();
        sub_224A3317C(&v1574, &v1593);
        v426 = sub_224DADFE8();
        v427 = MEMORY[0x277CF9E78];
        v428 = (v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver);
        v1350 = v425;
        v428[3] = v425;
        v428[4] = v427;
        *v428 = v426;
        sub_224A3317C(&v1619, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider);
        sub_224A3317C(&v1480, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_taskService);
        sub_224A3317C(&v1614, v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        sub_224A3317C(&v1490, &v1593);
        sub_224A3317C(&v1555, &v1590);
        v429 = v423;
        if (qword_281351638 != -1)
        {
          swift_once();
        }

        v1477 = __swift_project_value_buffer(v1473, qword_281365018);
        v430 = v1467;
        v431 = v1470;
        (v1470)();
        sub_224A3317C(&v1480, &v1587);
        sub_224A3317C(&v1599, &v1584);
        v432 = __swift_mutable_project_boxed_opaque_existential_1(&v1584, v1585);
        v1446 = &v1260;
        MEMORY[0x28223BE20](v432, v432);
        v434 = (&v1260 - ((v433 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v435 + 16))(v434);
        v436 = *v434;
        v1583 = &off_2838352C0;
        v1582 = v417;
        *&v1581 = v436;
        v1406 = type metadata accessor for MobileTimelineReloadStrategy(0);
        v437 = swift_allocObject();
        v438 = __swift_mutable_project_boxed_opaque_existential_1(&v1581, v417);
        MEMORY[0x28223BE20](v438, v438);
        v1348 = v439;
        v440 = (&v1260 - ((v439 + 15) & 0xFFFFFFFFFFFFFFF0));
        v442 = *(v441 + 16);
        v1349 = (v441 + 16);
        v1346 = v442;
        v442(v440);
        v443 = *v440;
        v444 = (v437 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
        v444[3] = v417;
        v444[4] = &off_2838352C0;
        *v444 = v443;
        sub_224A36F98(&v1590, v437 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
        sub_224A36F98(&v1587, v437 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService);
        v437[2] = 0;
        v437[3] = 0;
        sub_224A36F98(&v1593, (v437 + 4));
        v445 = v1429;
        v437[9] = v429;
        v437[10] = v445;
        v446 = v1437 + 4;
        v1401 = v1437[4];
        v447 = v1473;
        v1401(v437 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v430, v1473);
        *(v437 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v1581);
        __swift_destroy_boxed_opaque_existential_1(&v1584);
        sub_224A3317C(&v1596, &v1593);
        v448 = v430;
        v431(v430, v1476, v447);
        v449 = __swift_mutable_project_boxed_opaque_existential_1(&v1593, v1594);
        v1445 = &v1260;
        MEMORY[0x28223BE20](v449, v449);
        v451 = (&v1260 - ((v450 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v452 + 16))(v451);
        v453 = *v451;
        v1592 = MEMORY[0x277CF9B10];
        *(&v1591 + 1) = v1410;
        *&v1590 = v1419;
        v1589 = &off_28382AA58;
        v454 = v1418;
        v1588 = v1418;
        *&v1587 = v453;
        v1446 = type metadata accessor for MobileTimelineReloadConfigurationPolicy(0);
        v455 = swift_allocObject();
        v456 = __swift_mutable_project_boxed_opaque_existential_1(&v1587, v454);
        MEMORY[0x28223BE20](v456, v456);
        v458 = (&v1260 - ((v457 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v459 + 16))(v458);
        v460 = *v458;
        v455[5] = v454;
        v455[6] = &off_28382AA58;
        v455[2] = v460;
        sub_224A36F98(&v1590, (v455 + 7));
        v461 = v448;
        v462 = v448;
        v463 = v1473;
        v1437 = v446;
        v1401(v455 + OBJC_IVAR____TtC10ChronoCore39MobileTimelineReloadConfigurationPolicy_logger, v462, v1473);

        __swift_destroy_boxed_opaque_existential_1(&v1587);
        __swift_destroy_boxed_opaque_existential_1(&v1593);
        sub_224DA9E68();
        sub_224DA9D28();

        v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5460, &qword_224DBBB78);
        *&v1590 = v437;
        *&v1587 = v455;
        v1470(v461, v1477, v463);
        sub_224A3317C(&v1486, &v1593);
        v465 = sub_224C41198(&unk_281353F98, type metadata accessor for MobileTimelineReloadStrategy, &unk_224DB7924);
        v466 = sub_224C41198(&unk_281352450, type metadata accessor for MobileTimelineReloadConfigurationPolicy, &unk_224DBE920);

        v1338 = v455;

        v1258 = v466;
        v1337 = v465;
        v1257 = v465;
        v1256 = v1446;
        v1343 = v464;
        *(v406 + 232) = sub_224DAD268();
        sub_224A3317C(&v1599, &v1593);
        v467 = swift_allocObject();
        sub_224A36F98(&v1593, v467 + 16);

        sub_224DAD298();

        v468 = swift_allocObject();
        swift_weakInit();
        v469 = v437[2];
        v470 = v437[3];
        v437[2] = sub_224C4D04C;
        v437[3] = v468;

        sub_224A3D418(v469, v470);
        v1339 = v437;

        *&v1593 = sub_224DAC0E8();
        *&v1590 = *(v406 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_proactiveForwardingQueue);
        v471 = v1590;
        v472 = sub_224DAF358();
        v473 = *(v472 - 1);
        v474 = *(v473 + 56);
        v475 = v1436;
        v1446 = v472;
        v1445 = v474;
        *&v1444 = v473 + 56;
        (v474)(v1436, 1, 1);
        v476 = v471;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
        v1477 = MEMORY[0x277CBCD90];
        sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
        v477 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
        v478 = v1422;
        v1434 = v477;
        sub_224DAB448();
        sub_224A3311C(v475, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_281351278, &unk_27D6F5360, &qword_224DBBB08, MEMORY[0x277CBCD60]);
        v479 = v1457;
        sub_224DAB488();

        (*(v1431 + 1))(v478, v479);
        v480 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions;
        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        *&v1593 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5470, &qword_224DBD7A0);
        v482 = sub_224A33088(&qword_281351128, &unk_27D6F5470, &qword_224DBD7A0, v1477);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        *&v1593 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        v1352 = v481;
        v1351 = v482;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        sub_224DA9E68();
        v483 = sub_224DA9E28();

        *&v1593 = v483;
        swift_allocObject();
        swift_weakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
        sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, v1477);
        sub_224DAB488();

        swift_beginAccess();
        v1477 = v480;
        sub_224DAB308();
        swift_endAccess();

        v484 = *(v1478 + 2);
        v1479 = v406;
        if (v484)
        {
          break;
        }

LABEL_67:

        v489 = sub_224DAD6D8();

        *&v1593 = v489;
        swift_allocObject();
        swift_weakInit();
        v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
        v491 = MEMORY[0x277CBCD90];
        v492 = sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408, MEMORY[0x277CBCD90]);
        v1378 = v490;
        v1377 = v492;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        *&v1593 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54A0, &qword_224DBBB88);
        v494 = v491;
        v495 = v1479;
        v496 = sub_224A33088(&qword_281351038, &unk_27D6F54A0, &qword_224DBBB88, v494);
        v1380 = v493;
        v1379 = v496;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v1427(v1476, v1473);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        __swift_destroy_boxed_opaque_existential_1(&v1614);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1574);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        __swift_destroy_boxed_opaque_existential_1(&v1596);
        __swift_destroy_boxed_opaque_existential_1(&v1599);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(v1566);
        v497 = v1458;
        if (v1458)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5608, &qword_224DBBC30);
          v498 = swift_allocObject();
          v499 = swift_retain_n();
          v500 = sub_224C4A7F8(v499, v497, v497, v498, &unk_28382FCC8, &unk_224DBBC60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55F8, &qword_224DBBC28);
          v501 = swift_allocObject();
          v502 = swift_retain_n();
          v503 = sub_224C4A7F8(v502, v497, v497, v501, &unk_28382FCA0, &unk_224DBBC40);
          if (v500)
          {
            *(&v1496 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5608, &qword_224DBBC30);
            v1497 = sub_224A33088(&unk_28135B420, &qword_27D6F5608, &qword_224DBBC30, &unk_224DB5224);
            *&v1495 = v500;
            if (!v503)
            {
              goto LABEL_70;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v503 = 0;
        }

        v500 = 0;
        v1497 = 0;
        v1495 = 0u;
        v1496 = 0u;
        if (!v503)
        {
LABEL_70:
          v504 = 0;
          v505 = 0;
          v506 = 0;
          *v1556 = 0;
          *(&v1555 + 1) = 0;
          goto LABEL_74;
        }

LABEL_73:
        v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55F8, &qword_224DBBC28);
        v495 = v1479;
        v506 = sub_224A33088(&unk_28135B410, &unk_27D6F55F8, &qword_224DBBC28, &unk_224DB5224);
        v504 = v503;
LABEL_74:
        *&v1555 = v504;
        *&v1556[8] = v505;
        *&v1556[16] = v506;
        if (v497)
        {
          v507 = sub_224DAAD68();
          v508 = MEMORY[0x277D466B0];
          v509 = v497;
        }

        else
        {
          v509 = 0;
          v507 = 0;
          v508 = 0;
          v1576 = 0;
          v1575 = 0;
        }

        v1574 = v509;
        v1577 = v507;
        v1578 = v508;
        sub_224A3317C(v1631, v1566);
        v1491 = v1454;
        v1396 = sub_224C41198(&unk_2813580C0, type metadata accessor for MobileTimelineService, &unk_224DC2E68);
        v1492 = v1396;
        *&v1490 = v495;
        v1488 = &type metadata for DefaultInteractionRunnerProvider;
        v1489 = &off_28382CF40;
        v1431 = type metadata accessor for InteractionService();
        v510 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v1486, &type metadata for DefaultInteractionRunnerProvider);
        v1482 = &type metadata for DefaultInteractionRunnerProvider;
        v1483 = &off_28382CF40;
        v511 = swift_allocObject();

        swift_retain_n();

        v512 = swift_slowAlloc();
        *v512 = 0;
        *(v511 + 16) = v512;
        *(v510 + 16) = v511;
        *(v510 + 24) = 0u;
        *(v510 + 104) = 0u;
        *(v510 + 40) = 0u;
        *(v510 + 56) = 0u;
        *(v510 + 72) = 0u;
        *(v510 + 88) = 0u;
        *(v510 + 120) = 0u;
        *(v510 + 136) = 0;
        *(v510 + 144) = MEMORY[0x277D84F98];
        *(v510 + 232) = 0u;
        *(v510 + 248) = 0u;
        *(v510 + 264) = 0;
        sub_224A3317C(&v1490, v510 + 152);
        swift_beginAccess();
        if (*(v510 + 48))
        {
          if (*(&v1496 + 1))
          {
            __swift_assign_boxed_opaque_existential_1((v510 + 24), &v1495);
            goto LABEL_84;
          }

          __swift_destroy_boxed_opaque_existential_1((v510 + 24));
        }

        else if (*(&v1496 + 1))
        {
          sub_224A3317C(&v1495, v510 + 24);
          goto LABEL_84;
        }

        v513 = v1496;
        *(v510 + 24) = v1495;
        *(v510 + 40) = v513;
        *(v510 + 56) = v1497;
LABEL_84:
        swift_endAccess();
        swift_beginAccess();
        v514 = *(v510 + 88);
        v1293 = v500;
        v1297 = v510 + 232;
        if (v514)
        {
          v515 = (v510 + 64);
          if (*&v1556[8])
          {
            __swift_assign_boxed_opaque_existential_1(v515, &v1555);
            goto LABEL_91;
          }

          __swift_destroy_boxed_opaque_existential_1(v515);
        }

        else if (*&v1556[8])
        {
          sub_224A3317C(&v1555, v510 + 64);
          goto LABEL_91;
        }

        v516 = *v1556;
        *(v510 + 64) = v1555;
        *(v510 + 80) = v516;
        *(v510 + 96) = *&v1556[16];
LABEL_91:
        swift_endAccess();
        swift_beginAccess();
        sub_224C4D398(&v1574, v510 + 104, &qword_27D6F4900, &unk_224DB8640);
        swift_endAccess();
        sub_224A3317C(v1566, v510 + 272);
        sub_224A3317C(&v1480, v510 + 192);
        swift_beginAccess();
        v517 = *(v510 + 48);
        v1292 = v503;
        v1457 = v510;
        if (v517)
        {
          v1626 = &off_28382CD70;
          v1625 = v1431;
          *&v1623 = v510;
          v518 = *(v1457 + 56);
          __swift_mutable_project_boxed_opaque_existential_1(v510 + 24, v517);
          v519 = *(v518 + 24);

          v510 = v1457;
          v519(&v1623, v517, v518);
          v497 = v1458;
        }

        swift_endAccess();
        swift_beginAccess();
        v520 = *(v510 + 88);
        if (v520)
        {
          v1626 = &off_28382CD70;
          v1625 = v1431;
          *&v1623 = v510;
          v521 = *(v510 + 96);
          __swift_mutable_project_boxed_opaque_existential_1(v510 + 64, v520);
          v522 = *(v521 + 24);

          v522(&v1623, v520, v521);
        }

        swift_endAccess();
        v523 = v1479;

        __swift_destroy_boxed_opaque_existential_1(v1566);
        sub_224A3311C(&v1574, &qword_27D6F4900, &unk_224DB8640);
        if (*&v1556[8])
        {
          __swift_destroy_boxed_opaque_existential_1(&v1555);
        }

        if (*(&v1496 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1495);
        }

        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        v1497 = &off_283837008;
        *(&v1496 + 1) = v1454;
        *&v1495 = v523;
        v524 = qword_2813651F0;
        v525 = v1360;
        swift_beginAccess();

        sub_224A838C0(&v1495, v525 + v524, &qword_27D6F54B0, &unk_224DBF2A0);
        swift_endAccess();
        v526 = 0;
        if (v497)
        {
          v526 = sub_224DAAD68();
          v527 = MEMORY[0x277D466B0];
        }

        else
        {
          v527 = 0;
        }

        v1574 = v497;
        v1575 = 0;
        v1576 = 0;
        v1577 = v526;
        v1578 = v527;
        v1579 = 0xD000000000000010;
        v1580 = 0x8000000224DC43C0;
        v1497 = v1399;
        *(&v1496 + 1) = v1417;
        *&v1495 = v1400;
        *&v1556[16] = MEMORY[0x277CF9E70];
        *&v1556[8] = v1415;
        *&v1555 = v1424;

        sub_224DAC988();
        v528 = sub_224DAC978();
        v529 = v1412;
        v530 = v1404;
        (v1395)(v1474, v1412, v1404);
        sub_224DAC998();
        v531 = *(v1402 + 8);
        v1402 += 8;
        v1291 = v531;
        v531(v529, v530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54B8, &qword_224DBBB90);
        v532 = swift_allocObject();
        v533 = swift_allocObject();
        v534 = v1414;

        v535 = swift_slowAlloc();
        *v535 = 0;
        *(v533 + 16) = v535;
        *(v532 + 16) = v533;
        *(v532 + 24) = v534;
        v536 = MEMORY[0x277CFA010];
        v1497 = MEMORY[0x277CFA010];
        v537 = v1421;
        *(&v1496 + 1) = v1421;
        v538 = v1375;
        *&v1495 = v1375;
        v1339 = type metadata accessor for PreviewConfigurationService();
        v539 = swift_allocObject();
        v540 = v538;

        v1290 = v532;
        v542 = sub_224C4C038(v541, &v1495, v539);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54C0, &qword_224DBBB98);
        v543 = swift_allocObject();
        v544 = swift_allocObject();

        v545 = swift_slowAlloc();
        *v545 = 0;
        *(v544 + 16) = v545;
        *(v543 + 16) = v544;
        *(v543 + 24) = v534;
        v1497 = v536;
        *(&v1496 + 1) = v537;
        *&v1495 = v540;
        v1338 = type metadata accessor for PreviewControlConfigurationService();
        v546 = swift_allocObject();
        v1408 = v540;

        v1289 = v543;
        v1369 = sub_224C47C48(v547, &v1495, v546);
        sub_224A3317C(v1447, &v1495);
        v548 = sub_224DAA508();
        v549 = v1365;
        v550 = v1460;

        v551 = v1342;
        v552 = v1344;

        v1422 = v528;

        v1476 = v548;
        v1395 = sub_224DAA4F8();

        v553 = v1448;

        v1474 = sub_224C3D880(v1426, v550, v1425);
        v554 = swift_allocObject();
        *(v554 + 16) = xmmword_224DB3100;
        *(v554 + 56) = &type metadata for RemoteWidgetReloadFilter;
        v1412 = v554;
        *(v554 + 64) = &off_283829758;
        sub_224DA9E68();
        v1478 = sub_224DA9DB8();
        LODWORD(v1477) = v555;

        if (qword_281351420 != -1)
        {
          swift_once();
        }

        v556 = v1473;
        v557 = __swift_project_value_buffer(v1473, qword_281364D48);
        v1470(v1432, v557, v556);
        v558 = v1339;
        *&v1556[8] = v1339;
        v559 = sub_224C41198(&unk_281354668, type metadata accessor for PreviewConfigurationService, &unk_224DB6264);
        v1622 = MEMORY[0x277CFA098];
        *&v1556[16] = v559;
        v1365 = v542;
        *&v1555 = v542;
        v1568 = v1361;
        v1567 = v1463;
        v1344 = v552;
        v1566[0] = v552;
        v1492 = &off_2838352C0;
        v1491 = v1456;
        *&v1490 = v550;
        v1489 = &off_28382A480;
        v1488 = v1464;
        v1342 = v551;
        *&v1486 = v551;
        v1483 = v1455;
        v1482 = v1461;
        *&v1480 = v1475;
        v1626 = MEMORY[0x277CF9A38];
        v1625 = v1469;
        v1295 = v549;
        *&v1623 = v549;
        v1621 = v1476;
        v560 = v1456;
        *&v1619 = v1395;
        v1564[0] = v1465;
        v1616 = MEMORY[0x277CF9C38];
        v1615 = v1443;
        *&v1614 = v553;
        v1601 = &type metadata for ArchiveVersionProvider;
        v1602 = v1389;
        *&v1599 = swift_allocObject();
        sub_224C4CF40(&v1574, v1599 + 16);
        v1370 = type metadata accessor for MobileSnapshotService(0);
        v561 = swift_allocObject();
        v562 = __swift_mutable_project_boxed_opaque_existential_1(&v1555, *&v1556[8]);
        v1395 = &v1260;
        MEMORY[0x28223BE20](v562, v562);
        v564 = (&v1260 - ((v563 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v565 + 16))(v564);
        v566 = __swift_mutable_project_boxed_opaque_existential_1(&v1490, v1491);
        v1294 = &v1260;
        MEMORY[0x28223BE20](v566, v566);
        v568 = (&v1260 - ((v567 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v569 + 16))(v568);
        v570 = *v564;
        v571 = *v568;
        v1267 = v559;
        v1598 = v559;
        v1597 = v558;
        *&v1596 = v570;
        v1595 = &off_2838352C0;
        v1594 = v560;
        *&v1593 = v571;
        *(v561 + 80) = 0;
        *(v561 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D0, &qword_224DBBBA0);
        swift_allocObject();
        *(v561 + 96) = sub_224DAB358();
        *(v561 + 104) = 0;
        v572 = MEMORY[0x277D84F90];
        *(v561 + 272) = MEMORY[0x277D84F90];
        v573 = MEMORY[0x277D84F98];
        *(v561 + 280) = MEMORY[0x277D84F98];
        v574 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext;
        *(v561 + v574) = sub_224DADDF8();
        v575 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock;
        v1296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
        v576 = swift_allocObject();
        *(v561 + v575) = v576;
        *(v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions) = v572;
        *(v576 + 16) = 0;
        v577 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_prefetchQueue;
        sub_224DAB7D8();
        *&v1590 = v572;
        sub_224DAF788();
        v1438(v1442, v1388, v1453);
        v578 = v1473;
        v579 = v1470;
        *(v561 + v577) = sub_224DAF418();
        *(v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_keysToFetch) = v573;
        sub_224A3317C(&v1596, v561 + 152);
        sub_224A3317C(v1566, v561 + 192);
        sub_224A3317C(&v1593, v561 + 232);
        sub_224A3317C(&v1623, v561 + 288);
        sub_224A3317C(&v1495, v561 + 112);
        v579(v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v1432, v578);
        v580 = v1422;
        v581 = v1429;
        *(v561 + 24) = v1422;
        *(v561 + 32) = v581;
        sub_224A3317C(&v1619, v561 + 40);

        sub_224DAC3E8();
        sub_224A36F98(&v1590, v561 + 336);
        *(v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters) = v1412;
        sub_224A3317C(&v1480, v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService);
        sub_224A3317C(v561 + 192, &v1590);
        v582 = v1350;
        v583 = sub_224DADFE8();
        v584 = (v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver);
        v584[3] = v582;
        v584[4] = MEMORY[0x277CF9E78];
        *v584 = v583;
        sub_224A3317C(&v1599, v561 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider);
        v585 = *&v1478;
        if (v1477)
        {
          v585 = 120.0;
        }

        *(v561 + 16) = v585;
        sub_224A3317C(&v1623, &v1590);
        v586 = *(v561 + 176);
        v587 = *(v561 + 184);
        v588 = __swift_project_boxed_opaque_existential_1((v561 + 152), v586);
        v1588 = v586;
        v1589 = *(v587 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v1587);
        (*(*(v586 - 8) + 16))(boxed_opaque_existential_1, v588, v586);
        v590 = qword_281351648;

        if (v590 != -1)
        {
          swift_once();
        }

        v1478 = __swift_project_value_buffer(v578, qword_281365030);
        v579(v1467, v1478, v578);
        sub_224A3317C(&v1486, &v1584);
        sub_224A3317C(&v1593, &v1581);
        v591 = __swift_mutable_project_boxed_opaque_existential_1(&v1581, v1582);
        v1477 = &v1260;
        MEMORY[0x28223BE20](v591, v591);
        v593 = v578;
        v594 = (&v1260 - ((v592 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v595 + 16))(v594);
        v596 = *v594;
        v1573 = &off_2838352C0;
        v597 = v1456;
        v1572 = v1456;
        v1571[0] = v596;
        v598 = swift_allocObject();
        v599 = __swift_mutable_project_boxed_opaque_existential_1(v1571, v597);
        MEMORY[0x28223BE20](v599, v599);
        v601 = (&v1260 - ((v600 + 15) & 0xFFFFFFFFFFFFFFF0));
        v1346(v601);
        v602 = *v601;
        v603 = (v598 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
        v603[3] = v597;
        v603[4] = &off_2838352C0;
        *v603 = v602;
        sub_224A36F98(&v1587, v598 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
        sub_224A36F98(&v1584, v598 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService);
        v598[2] = 0;
        v598[3] = 0;
        sub_224A36F98(&v1590, (v598 + 4));
        v604 = v1429;
        v598[9] = v580;
        v598[10] = v604;
        v605 = v1467;
        v606 = v1401;
        v1401(v598 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v1467, v593);
        *(v598 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) = 1;
        __swift_destroy_boxed_opaque_existential_1(v1571);
        __swift_destroy_boxed_opaque_existential_1(&v1581);
        v607 = *(v561 + 16);
        v1470(v605, v1432, v593);
        v608 = type metadata accessor for MobileSnapshotReloadConfigurationPolicy(0);
        v609 = swift_allocObject();
        *&v609[OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_expirationDuration] = v607;
        v606(&v609[OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_logger], v605, v593);
        sub_224DA9E68();
        LODWORD(v1477) = sub_224DA9D18();

        *&v1587 = v598;
        *&v1584 = v609;
        v1470(v605, v1478, v593);
        sub_224A3317C(&v1614, &v1590);
        sub_224DABE18();
        sub_224DABE88();
        sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v610 = sub_224C41198(&unk_281352548, type metadata accessor for MobileSnapshotReloadConfigurationPolicy, &unk_224DB77E8);

        v1350 = v609;

        v611 = v1337;
        sub_224DAD278();
        v1257 = v611;
        v1258 = v610;
        v1256 = v608;
        *(v561 + 328) = sub_224DAD268();
        sub_224A3317C(&v1619, &v1590);
        sub_224A3317C(&v1593, &v1587);
        v612 = swift_allocObject();
        v613 = v1429;
        v612[2] = v1422;
        v612[3] = v613;
        v612[4] = v561;
        sub_224A36F98(&v1590, (v612 + 5));
        sub_224A36F98(&v1587, (v612 + 10));

        sub_224DAD2A8();

        *&v1590 = sub_224DAC0D8();
        swift_allocObject();
        swift_weakInit();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
        v1472 = MEMORY[0x277CBCD90];
        sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0, MEMORY[0x277CBCD90]);
        sub_224DAB488();

        swift_beginAccess();
        v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
        v615 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
        v1478 = v614;
        sub_224DAB318();
        swift_endAccess();

        v616 = swift_allocObject();
        swift_weakInit();
        v617 = v598[2];
        v618 = v598[3];
        v598[2] = sub_224C4D2C8;
        v598[3] = v616;

        sub_224A3D418(v617, v618);
        v1412 = v598;

        v620 = *(v561 + 176);
        v619 = *(v561 + 184);
        __swift_project_boxed_opaque_existential_1((v561 + 152), v620);
        *&v1590 = (*(*(*(v619 + 8) + 8) + 40))(768, v620);
        swift_allocObject();
        swift_weakInit();
        v621 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
        v622 = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v1472);
        v1376 = v621;
        v1375 = v622;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1((v561 + 288), *(v561 + 312));
        *&v1590 = sub_224DAC698();
        v623 = sub_224DAF3D8();
        *&v1587 = v623;
        v624 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
        sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, v1472);
        v625 = v1368;
        sub_224DAB448();
        sub_224A3311C(v624, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, MEMORY[0x277CBCD60]);
        v626 = v1373;
        sub_224DAB488();

        (*(v1372 + 8))(v625, v626);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        v1477 = v615;
        sub_224DAB318();
        swift_endAccess();

        v1472 = swift_allocObject();
        swift_weakInit();
        v627 = *(v1474 + 2);
        v1476 = v561;
        if (v627)
        {
          v628 = 0;
          v3 = v1474 + 32;
          while (v628 < *(v1474 + 2))
          {
            v629 = v628 + 1;
            *&v1590 = *&v3[8 * v628];
            v630 = swift_allocObject();
            v631 = v1472;
            *(v630 + 16) = sub_224C4D2F0;
            *(v630 + 24) = v631;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
            sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80, MEMORY[0x277CBCD90]);
            v561 = v1476;
            sub_224DAB488();

            swift_beginAccess();
            sub_224DAB318();
            swift_endAccess();

            v628 = v629;
            if (v627 == v629)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_179;
        }

LABEL_112:

        *&v1590 = sub_224DAD6D8();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *(&v1591 + 1) = &type metadata for FeatureFlags.Widgets;
        v632 = sub_224A80FFC();
        v1592 = v632;
        LOBYTE(v1590) = 3;
        v633 = sub_224DA9C98();
        __swift_destroy_boxed_opaque_existential_1(&v1590);
        v1288 = v632;
        if (v633)
        {
          __swift_project_boxed_opaque_existential_1((v561 + 192), *(v561 + 216));
          *&v1590 = sub_224DAD8B8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
          sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60, MEMORY[0x277CBCD90]);
          v634 = v1285;
          sub_224DAB3E8();

          sub_224A33088(&qword_27D6F55F0, &unk_27D6F5350, &qword_224DBBB00, MEMORY[0x277CBCC08]);

          v635 = v1287;
          sub_224DAB488();

          (*(v1286 + 8))(v634, v635);
          swift_beginAccess();
          sub_224DAB318();
          swift_endAccess();
        }

        v636 = v1469;
        v637 = v1460;
        v638 = v1431;
        v639 = v1432;
        v640 = v1316;
        v641 = v1344;

        v1427(v639, v1473);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        __swift_destroy_boxed_opaque_existential_1(&v1599);
        __swift_destroy_boxed_opaque_existential_1(&v1614);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(v1566);
        __swift_destroy_boxed_opaque_existential_1(&v1593);
        __swift_destroy_boxed_opaque_existential_1(&v1596);

        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        v642 = sub_224DAE058();
        v1497 = MEMORY[0x277CF9A40];
        *(&v1496 + 1) = v636;
        *&v1495 = v1295;
        v643 = v1295;
        v644 = sub_224DAC988();
        v645 = MEMORY[0x22AA5C3A0](0xD000000000000010, v640 | 0x8000000000000000, &v1495, v644);
        v1497 = MEMORY[0x277CF9E88];
        *(&v1496 + 1) = v642;
        *&v1495 = v645;
        v646 = sub_224DAD658();

        v647 = sub_224DAD648();
        *&v1556[16] = MEMORY[0x277CF9D10];
        *&v1556[8] = v646;
        *&v1555 = v647;
        v1568 = MEMORY[0x277CF9E70];
        v1567 = v1415;
        v1566[0] = v1424;

        sub_224DAC988();
        sub_224DACE68();
        v1266 = type metadata accessor for RemoteActivitySubscriptionCache();
        swift_allocObject();

        v1368 = sub_224C987AC(v648);

        v649 = v1458;
        v1275 = v645;
        v650 = 0;
        if (v1458)
        {
          v650 = sub_224DAAD68();
          v649 = MEMORY[0x277D466B0];
        }

        v1566[0] = v1458;
        v1566[1] = 0;
        v1566[2] = 0;
        v1567 = v650;
        v1568 = v649;
        v1569 = 0xD000000000000010;
        v1570 = 0x8000000224DC4380;
        sub_224A3317C(v1447, &v1495);
        v1474 = v643;

        v651 = v641;
        v1432 = v651;
        v652 = sub_224C3D880(v1426, v637, v1425);
        *&v1556[8] = &type metadata for ArchiveVersionProvider;
        *&v1556[16] = v1389;
        *&v1555 = swift_allocObject();
        sub_224C4CF40(v1566, v1555 + 16);
        v1492 = &off_28382CD80;
        v1491 = v638;
        *&v1490 = v1457;
        v1389 = type metadata accessor for MobileActivityService(0);
        v653 = swift_allocObject();
        v654 = __swift_mutable_project_boxed_opaque_existential_1(&v1490, v638);
        MEMORY[0x28223BE20](v654, v654);
        v1345 = v655;
        v1412 = ((v655 + 15) & 0xFFFFFFFFFFFFFFF0);
        v656 = (&v1260 - v1412);
        v658 = *(v657 + 16);
        v1346 = (v657 + 16);
        v1344 = v658;
        (v658)(&v1260 - v1412);
        v659 = *v656;
        v660 = v1367;
        v1264 = *(v1371 + 16);
        v1265 = v1371 + 16;
        v1264(v1367, v1391, v1394);
        v661 = v1448;

        v662 = v1342;
        v1373 = v662;

        v1472 = sub_224C46164(v651, v1474, &v1495, v660, v1465, v1407, v652, v661, v663, v662, &v1555, v659, v653);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        v664 = sub_224DA9BD8();
        v665 = sub_224DA9BC8();
        v1497 = MEMORY[0x277CF9848];
        v1337 = v664;
        *(&v1496 + 1) = v664;
        *&v1495 = v665;
        v666 = v1310;
        v667 = *&v1310[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock];
        os_unfair_lock_lock(*(v667 + 16));
        sub_224A3796C(&v1495, &v1555, &unk_27D6F5510, &qword_224DB5C28);
        v668 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter;
        swift_beginAccess();
        sub_224A838C0(&v1555, v666 + v668, &unk_27D6F5510, &qword_224DB5C28);
        swift_endAccess();
        sub_224B4500C();
        os_unfair_lock_unlock(*(v667 + 16));
        sub_224A3311C(&v1495, &unk_27D6F5510, &qword_224DB5C28);
        v669 = sub_224DACEE8();
        v670 = v1382;
        *(&v1496 + 1) = v1382;
        v671 = sub_224A33088(&unk_281350C78, &qword_27D6F53E8, &qword_224DBBB30, MEMORY[0x277CF9E68]);
        v1497 = v671;
        v672 = v1413;
        *&v1495 = v1413;
        *&v1556[16] = MEMORY[0x277CF9E70];
        *&v1556[8] = v1415;
        *&v1555 = v1424;
        v673 = objc_opt_self();

        v674 = [v673 defaultManager];
        v1406 = sub_224DACEC8();
        v1352 = v671;
        v1497 = v671;
        *(&v1496 + 1) = v670;
        *&v1495 = v672;
        v1312(v1374, v1313, v1390);

        v675 = v1314;
        v676 = sub_224DADA88();
        *&v1556[16] = MEMORY[0x277CF9DA0];
        *&v1556[8] = v675;
        *&v1555 = v676;
        v1316 = v673;
        v677 = [v673 defaultManager];
        v1374 = v669;
        v1395 = sub_224DACEC8();
        v1497 = MEMORY[0x277CF9A38];
        *(&v1496 + 1) = v1469;
        v678 = v1474;
        *&v1495 = v1474;
        sub_224A3317C(v1631, &v1555);
        sub_224A3317C(v1447, &v1490);
        __swift_project_boxed_opaque_existential_1(&v1490, v1491);
        v679 = v678;
        v680 = v661;
        sub_224DADA68();
        v681 = v1311;
        v682 = sub_224DAE008();
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        v1492 = MEMORY[0x277CF9E80];
        v1491 = v681;
        *&v1490 = v682;
        v683 = v1387;
        v684 = sub_224DADF38();
        v1277 = type metadata accessor for ControlVisibilityMonitor();
        swift_allocObject();
        v685 = sub_224CC06C4();
        v686 = v666;

        v1276 = v686;
        v1342 = v685;
        v687 = sub_224C44C1C(v686, v685);
        v688 = type metadata accessor for RemoteControlReloadFilter();
        v689 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5520, &qword_224DBBBB8);
        v690 = swift_allocObject();
        *(v690 + 16) = v1354;
        *(v690 + 56) = v688;
        *(v690 + 64) = &off_283829878;
        *(v690 + 32) = v689;
        *(v690 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5528, &qword_224DBBBC0);
        *(v690 + 104) = &off_28382CA28;
        *(v690 + 72) = v687;
        v691 = qword_281351448;
        v1351 = v679;

        v692 = v680;

        v1350 = v1373;
        v1349 = v1432;
        v693 = v1433;

        v694 = v1419;

        v1372 = v684;

        v1274 = v689;

        v1343 = v687;

        if (v691 != -1)
        {
          swift_once();
        }

        v695 = v1473;
        v696 = __swift_project_value_buffer(v1473, qword_281364D90);
        v1470(v1467, v696, v695);
        v1497 = MEMORY[0x277CF9A38];
        *(&v1496 + 1) = v1469;
        *&v1495 = v1351;
        *&v1556[16] = MEMORY[0x277CF9E58];
        *&v1556[8] = v683;
        *&v1555 = v1372;
        v1411 = MEMORY[0x277CF9C50];
        v1390 = sub_224C41198(&unk_281350D00, MEMORY[0x277CF9C50], MEMORY[0x277CF9C48]);
        v1571[0] = v1465;
        v1492 = MEMORY[0x277CF9C38];
        v1491 = v1443;
        *&v1490 = v692;
        v1489 = &off_28382A480;
        v1488 = v1464;
        *&v1486 = v1350;
        v1482 = v1463;
        v1474 = sub_224C41198(&qword_28135A938, type metadata accessor for DescriptorService, &unk_224DC1980);
        v1483 = v1474;
        *&v1480 = v1349;
        v1626 = v1423;
        v1625 = v1435;
        *&v1623 = v1462;
        v1622 = &off_28382CD80;
        v697 = v1431;
        v1621 = v1431;
        *&v1619 = v1457;
        v698 = type metadata accessor for PushService();
        v1616 = &off_283828B40;
        v1615 = v698;
        *&v1614 = v693;
        v1602 = MEMORY[0x277CF9B10];
        v1601 = v1410;
        *&v1599 = v694;
        v1407 = type metadata accessor for LiveControlService(0);
        v699 = swift_allocObject();
        v700 = __swift_mutable_project_boxed_opaque_existential_1(&v1619, v697);
        v1282 = &v1260;
        MEMORY[0x28223BE20](v700, v700);
        v701 = (&v1260 - v1412);
        (v1344)(&v1260 - v1412);
        v702 = __swift_mutable_project_boxed_opaque_existential_1(&v1614, v1615);
        v1281 = &v1260;
        MEMORY[0x28223BE20](v702, v702);
        v704 = (&v1260 - ((v703 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v705 + 16))(v704);
        v706 = *v701;
        v707 = *v704;
        v1598 = &off_28382CD80;
        v1597 = v697;
        *&v1596 = v706;
        v1595 = &off_283828B40;
        v1410 = v698;
        v1594 = v698;
        *&v1593 = v707;
        v1314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5530, &unk_224DBB320);
        swift_allocObject();
        v708 = sub_224DAB358();
        *(v699 + 56) = 0;
        *(v699 + 64) = 0;
        *(v699 + 48) = v708;
        v1312 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5538, &qword_224DBBBC8);
        *(v699 + 368) = sub_224DADDF8();
        v709 = MEMORY[0x277D84F98];
        *(v699 + 376) = MEMORY[0x277D84F98];
        v710 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_pushElevatedHosts;
        v711 = sub_224AE8AF4(&unk_2838282B0);
        sub_224BCA6B4(&unk_2838282D0);
        *(v699 + v710) = v711;
        v712 = MEMORY[0x277D84F90];
        *(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions) = MEMORY[0x277D84F90];
        *(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v712;
        *(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__statefulStoreCalloutQueue_environmentSubscriptions) = v709;
        sub_224DAB818();
        *&v1590 = v712;
        sub_224DAF788();
        v1438(v1442, v1403, v1453);
        v713 = v1470;
        v714 = v1473;
        *(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue) = sub_224DAF418();
        sub_224A3317C(&v1555, v699 + 72);
        v713(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v1467, v714);
        sub_224A3317C(&v1480, v699 + 160);
        sub_224A3317C(&v1623, v699 + 200);
        v715 = v1406;
        v716 = v1390;
        *(v699 + 16) = v1406;
        *(v699 + 24) = v716;
        v717 = v1395;
        *(v699 + 32) = v1395;
        *(v699 + 40) = v716;
        sub_224A3317C(&v1495, v699 + 112);
        sub_224A3317C(&v1596, v699 + 280);
        sub_224A3317C(&v1486, v699 + 384);
        sub_224A3317C(&v1593, v699 + 240);
        v718 = sub_224C41198(&unk_281350D10, v1411, MEMORY[0x277CF99F8]);

        v1311 = v718;
        sub_224DAC3E8();
        sub_224A36F98(&v1590, v699 + 328);
        *(v699 + 320) = v690;
        sub_224A3317C(&v1599, v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
        sub_224A3317C(&v1495, &v1590);
        sub_224A3317C(&v1480, &v1587);
        sub_224A3317C(&v1486, &v1584);
        sub_224A3317C(&v1623, &v1581);
        v719 = v715;
        if (qword_281351650 != -1)
        {
          swift_once();
        }

        v1412 = __swift_project_value_buffer(v714, qword_281365048);
        v720 = v1420;
        v713(v1420, v1412, v714);
        v1348 = type metadata accessor for ControlReloadStrategy(0);
        v721 = v713;
        v722 = swift_allocObject();
        v722[2] = 0;
        v722[3] = 0;
        sub_224A36F98(&v1590, (v722 + 4));
        sub_224A36F98(&v1587, (v722 + 9));
        v723 = v1390;
        v722[14] = v719;
        v722[15] = v723;
        v722[16] = v717;
        v722[17] = v723;
        sub_224A36F98(&v1584, (v722 + 18));
        sub_224A36F98(&v1581, (v722 + 23));
        v724 = v1401;
        v1401(v722 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v720, v714);
        v1347 = v722;
        *(v722 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) = 0;
        v725 = v722 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration;
        *v725 = 0;
        v725[8] = 1;
        sub_224A3317C(&v1599, &v1590);
        v721(v720, v1467, v714);
        v726 = type metadata accessor for ControlReloadConfigurationPolicy(0);
        v727 = swift_allocObject();
        v724(v727 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger, v720, v714);
        v728 = v727 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService;
        v729 = v1591;
        *v728 = v1590;
        *(v728 + 16) = v729;
        *(v728 + 32) = v1592;
        v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5548, &qword_224DBBBD0);
        *&v1587 = v1347;
        *&v1584 = v727;
        v1280 = v727;
        v1470(v720, v1412, v1473);
        sub_224A3317C(&v1490, &v1590);
        v731 = sub_224C41198(&unk_281358950, type metadata accessor for ControlReloadStrategy, &unk_224DC1140);
        v732 = sub_224C41198(&unk_281352F68, type metadata accessor for ControlReloadConfigurationPolicy, &unk_224DB3E30);

        v1285 = v732;
        v1258 = v732;
        v1286 = v731;
        v1257 = v731;
        v1313 = v726;
        v1256 = v726;
        v1310 = v730;
        *(v699 + 152) = sub_224DAD268();
        *&v1590 = sub_224DAC0E8();
        v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5550, &qword_224DBBBD8);
        v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5558, &qword_224DBBBE0);
        v1373 = MEMORY[0x277CBCD90];
        v735 = sub_224A33088(&unk_2813510C0, &qword_27D6F5550, &qword_224DBBBD8, MEMORY[0x277CBCD90]);
        v736 = v1356;
        v1294 = v734;
        v1295 = v733;
        v1287 = v735;
        sub_224DAB3B8();

        swift_allocObject();
        swift_weakInit();
        v737 = sub_224A33088(&unk_2813513C8, &qword_27D6F5348, &qword_224DBBAF8, MEMORY[0x277CBCB10]);

        v738 = v1357;
        v1284 = v737;
        sub_224DAB488();

        v739 = *(v1384 + 8);
        v1384 += 8;
        v1283 = v739;
        v739(v736, v738);
        v740 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v741 = *(v699 + 224);
        v742 = *(v699 + 232);
        __swift_project_boxed_opaque_existential_1((v699 + 200), v741);
        *&v1590 = (*(*(v742 + 8) + 40))(768, v741);
        v743 = v1324;
        sub_224DAF378();
        v1412 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
        *&v1587 = *(v699 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
        v744 = v1587;
        v745 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        v746 = v744;
        v747 = v1325;
        sub_224DAB468();
        sub_224A3311C(v745, &qword_27D6F5090, &qword_224DB5C30);
        v748 = *(v1383 + 1);
        v1383 += 8;
        v1279 = v748;
        v748(v743, v1355);

        swift_allocObject();
        swift_weakInit();
        v1278 = sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60, MEMORY[0x277CBCCF8]);
        v749 = v1327;
        sub_224DAB488();

        v1326 = *(v1326 + 8);
        (v1326)(v747, v749);
        v1411 = v740;
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v750 = *(v699 + 224);
        v751 = *(v699 + 232);
        __swift_project_boxed_opaque_existential_1((v699 + 200), v750);
        *&v1590 = (*(*(v751 + 8) + 48))(768, v750);
        sub_224DAF378();
        *&v1587 = *&v1412[v699];
        v752 = v1587;
        v753 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        v754 = v752;
        sub_224DAB468();
        sub_224A3311C(v753, &qword_27D6F5090, &qword_224DB5C30);
        v1279(v743, v1355);

        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        (v1326)(v747, v749);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAD6D8();
        *&v1587 = *&v1412[v699];
        v755 = v1587;
        v756 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        v757 = v755;
        v758 = v1358;
        sub_224DAB448();
        sub_224A3311C(v756, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        v1383 = MEMORY[0x277CBCD60];
        v759 = sub_224A33088(&qword_281351248, &unk_27D6F5338, &qword_224DBBAF0, MEMORY[0x277CBCD60]);
        v760 = v1359;
        v1355 = v759;
        sub_224DAB488();

        v761 = *(v1385 + 8);
        v1385 += 8;
        v1327 = v761;
        (v761)(v758, v760);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1593, v1594);
        *&v1590 = off_283828B48[0]();
        *&v1587 = *&v1412[v699];
        v762 = v1587;
        v763 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        v764 = v762;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5560, &qword_224DB8D40);
        v765 = v1373;
        sub_224A33088(&unk_281351080, &unk_27D6F5560, &qword_224DB8D40, v1373);
        v766 = v1328;
        sub_224DAB448();
        sub_224A3311C(v763, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_281351250, &qword_27D6F5330, &qword_224DBBAE8, v1383);
        v767 = v1330;
        sub_224DAB488();

        (*(v1329 + 8))(v766, v767);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1593, v1594);
        *&v1590 = off_283828B58();
        *&v1587 = *&v1412[v699];
        v768 = v1587;
        (v1445)(v763, 1, 1, v1446);
        v769 = v768;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4938, &qword_224DB8D48);
        sub_224A33088(&unk_281351110, &qword_27D6F4938, &qword_224DB8D48, v765);
        v770 = v1331;
        sub_224DAB448();
        sub_224A3311C(v763, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_281351298, &qword_27D6F5328, &qword_224DBBAE0, v1383);
        v771 = v1333;
        sub_224DAB488();

        (*(v1332 + 8))(v770, v771);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1593, v1594);
        *&v1590 = off_283828B50();
        *&v1587 = *&v1412[v699];
        v772 = v1587;
        (v1445)(v763, 1, 1, v1446);
        v773 = v772;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5570, &unk_224DB8D50);
        sub_224A33088(&unk_281351170, &qword_27D6F5570, &unk_224DB8D50, v1373);
        v774 = v1334;
        sub_224DAB448();
        sub_224A3311C(v763, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_2813512C0, &qword_27D6F5320, &qword_224DBBAD8, v1383);
        v775 = v1336;
        sub_224DAB488();

        (*(v1335 + 8))(v774, v775);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5578, &qword_224DBBBE8);
        v777 = sub_224A33088(&qword_281351120, &unk_27D6F5578, &qword_224DBBBE8, v1373);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        v1336 = v776;
        v1335 = v777;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1590 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v1427(v1467, v1473);
        __swift_destroy_boxed_opaque_existential_1(&v1599);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        __swift_destroy_boxed_opaque_existential_1(&v1596);
        v778 = swift_allocObject();
        swift_weakInit();

        v779 = v1347;
        v780 = *(v1347 + 16);
        v781 = *(v1347 + 24);
        *(v1347 + 16) = sub_224C4D358;
        *(v779 + 24) = v778;

        sub_224A3D418(v780, v781);

        __swift_destroy_boxed_opaque_existential_1(&v1593);

        __swift_destroy_boxed_opaque_existential_1(&v1614);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        v1497 = &off_283831038;
        v782 = v1407;
        *(&v1496 + 1) = v1407;
        *&v1495 = v699;
        v783 = qword_2813651F0;
        v784 = v1343;
        swift_beginAccess();

        sub_224A838C0(&v1495, v784 + v783, &qword_27D6F54B0, &unk_224DBF2A0);
        swift_endAccess();
        *(&v1496 + 1) = v782;
        v1411 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
        v1497 = v1411;
        *&v1495 = v699;
        sub_224A3317C(&v1495, &v1555);
        v785 = v1297;
        swift_beginAccess();
        v1432 = v699;

        sub_224A838C0(&v1555, v785, &qword_27D6F46C0, &qword_224DB7608);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v1497 = v1352;
        *(&v1496 + 1) = v1382;
        *&v1495 = v1413;
        *&v1556[16] = MEMORY[0x277CF9E70];
        *&v1556[8] = v1415;
        *&v1555 = v1424;

        v786 = [v1316 defaultManager];
        v787 = sub_224DACEC8();
        v788 = qword_281351608;
        v789 = v1351;
        v790 = v1462;

        v791 = v1448;

        v792 = v1350;
        v793 = v1349;
        v794 = v1372;

        v795 = v1369;

        v1412 = v787;

        v796 = v788 == -1;
        v797 = v790;
        v798 = v791;
        v799 = v1467;
        if (!v796)
        {
          swift_once();
        }

        v800 = v1473;
        v801 = __swift_project_value_buffer(v1473, qword_281364FB8);
        v1470(v799, v801, v800);
        v802 = v1338;
        *(&v1496 + 1) = v1338;
        v803 = sub_224C41198(&unk_281352A48, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A64);
        v1497 = v803;
        *&v1495 = v795;
        *&v1556[16] = MEMORY[0x277CF9A38];
        *&v1556[8] = v1469;
        v1373 = v789;
        *&v1555 = v789;
        v1492 = MEMORY[0x277CF9E58];
        v1491 = v1387;
        *&v1490 = v794;
        *&v1587 = v1465;
        v1489 = MEMORY[0x277CF9C38];
        v1488 = v1443;
        *&v1486 = v798;
        v1483 = &off_28382A480;
        v1482 = v1464;
        v1387 = v792;
        *&v1480 = v792;
        v1626 = v1423;
        v1625 = v1435;
        *&v1623 = v797;
        v1622 = v1474;
        v1621 = v1463;
        v1383 = v793;
        *&v1619 = v793;
        v1415 = type metadata accessor for PreviewControlService(0);
        v804 = swift_allocObject();
        v805 = __swift_mutable_project_boxed_opaque_existential_1(&v1495, v802);
        v1351 = &v1260;
        MEMORY[0x28223BE20](v805, v805);
        v807 = (&v1260 - ((v806 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v808 + 16))(v807);
        v809 = *v807;
        v1349 = v803;
        v1616 = v803;
        v1615 = v802;
        *&v1614 = v809;
        swift_allocObject();
        v810 = sub_224DAB358();
        *(v804 + 5) = 0;
        *(v804 + 6) = 0;
        *(v804 + 4) = v810;
        *(v804 + 33) = sub_224DADDF8();
        v811 = MEMORY[0x277D84F90];
        *(v804 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue_persistentSubscriptions) = MEMORY[0x277D84F90];
        v812 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock;
        v813 = swift_allocObject();
        *(v804 + v812) = v813;
        *(v813 + 16) = 0;
        *(v804 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions) = v811;
        *(v804 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__statefulStoreCalloutQueue_environmentSubscriptions) = MEMORY[0x277D84F98];
        sub_224DAB818();
        *&v1599 = v811;
        sub_224DAF788();
        v1438(v1442, v1403, v1453);
        *(v804 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue) = sub_224DAF418();
        sub_224A3317C(&v1490, v804 + 96);
        v814 = v1473;
        v815 = v1470;
        v1470(v804 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v1467, v1473);
        sub_224A3317C(&v1619, v804 + 184);
        v816 = v1412;
        v817 = v1390;
        *(v804 + 2) = v1412;
        *(v804 + 3) = v817;
        sub_224A3317C(&v1614, v804 + 56);
        sub_224A3317C(&v1555, v804 + 136);
        sub_224A3317C(&v1623, v804 + 272);
        sub_224A3317C(&v1480, v804 + 312);

        sub_224DAC3E8();
        v1443 = v804;
        sub_224A36F98(&v1599, v804 + 224);
        sub_224A3317C(&v1555, &v1599);
        sub_224A3317C(&v1619, &v1596);
        sub_224A3317C(&v1480, &v1593);
        sub_224A3317C(&v1623, &v1590);
        if (qword_2813515A0 != -1)
        {
          swift_once();
        }

        v1350 = __swift_project_value_buffer(v814, qword_281364EF8);
        v818 = v1420;
        v815(v1420, v1350, v814);
        v819 = swift_allocObject();
        v819[2] = 0;
        v819[3] = 0;
        sub_224A36F98(&v1599, (v819 + 4));
        sub_224A36F98(&v1596, (v819 + 9));
        v819[14] = v816;
        v819[15] = v817;
        v819[16] = 0;
        v819[17] = 0;
        sub_224A36F98(&v1593, (v819 + 18));
        sub_224A36F98(&v1590, (v819 + 23));
        v820 = v1401;
        v1401(v819 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v818, v814);
        *(v819 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) = 1;
        v821 = v819 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration;
        *v821 = 0;
        v821[8] = 1;
        v815(v818, v1467, v814);
        v822 = v1313;
        v823 = swift_allocObject();
        v820(v823 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger, v818, v814);
        v824 = v823 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService;
        *v824 = 0u;
        *(v824 + 16) = 0u;
        *(v824 + 32) = 0;
        *&v1596 = v819;
        *&v1593 = v823;
        v1403 = v823;
        v815(v818, v1350, v814);
        sub_224A3317C(&v1486, &v1599);

        v1258 = v1285;
        v1256 = v822;
        v1257 = v1286;
        v825 = sub_224DAD268();
        v826 = v1443;
        *(v1443 + 22) = v825;
        v827 = swift_allocObject();
        swift_weakInit();
        v1374 = v819;
        v828 = v819[2];
        v829 = v819[3];
        v819[2] = sub_224C4D360;
        v819[3] = v827;

        sub_224A3D418(v828, v829);

        *&v1599 = sub_224DAC0E8();
        v830 = v1356;
        sub_224DAB3B8();

        swift_allocObject();
        swift_weakInit();
        v831 = v1357;
        sub_224DAB488();

        v1283(v830, v831);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1599 = sub_224DAD6D8();
        *&v1596 = *(v826 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
        v832 = v1596;
        v833 = v1436;
        (v1445)(v1436, 1, 1, v1446);
        v834 = v832;
        v835 = v1358;
        sub_224DAB448();
        sub_224A3311C(v833, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        v836 = v1359;
        sub_224DAB488();

        (v1327)(v835, v836);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v837 = v826[10];
        v838 = v826[11];
        __swift_project_boxed_opaque_existential_1(v826 + 7, v837);
        *&v1599 = (*(*(*(v838 + 8) + 8) + 40))(768, v837);
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1599 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1599 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1599 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v1427(v1467, v1473);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        __swift_destroy_boxed_opaque_existential_1(&v1623);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1486);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        __swift_destroy_boxed_opaque_existential_1(&v1614);

        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v839 = v1458;
        if (v1458)
        {
          v840 = MEMORY[0x277D466B0];
          v841 = MEMORY[0x277D466F8];
          v842 = MEMORY[0x277D466B8];
          v843 = MEMORY[0x277D466A0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F55A0, &qword_224DBBC00);
          v844 = swift_allocObject();
          v845 = swift_retain_n();
          v846 = sub_224C4A7F8(v845, v839, v839, v844, &unk_283830128, &unk_224DBBCE0);
          v847 = objc_allocWithZone(MEMORY[0x277D02938]);

          v848 = v1479;

          v849 = sub_224C4B280(v846, v839, v848, [v847 init], 900.0);
          sub_224DAA648();
          v850 = sub_224DAA4C8();
          v851 = sub_224DAA4B8();
          v1497 = MEMORY[0x277CFA090];
          *(&v1496 + 1) = v850;
          *&v1495 = v851;
          v852 = sub_224DAA488();
          v853 = sub_224DAA478();
          *&v1556[16] = MEMORY[0x277CFA078];
          *&v1556[8] = v852;
          *&v1555 = v853;
          sub_224DA9F58();
          v1446 = sub_224DAA628();
          *(v1471 + 104) = v1446;
          v854 = sub_224DAAD68();
          v1497 = MEMORY[0x277D46700];
          v1498 = v841;
          v1499 = v840;
          v1500 = MEMORY[0x277D466E8];
          v1510 = MEMORY[0x277CF9C78];
          v1511 = MEMORY[0x277CF9C80];
          v1501 = MEMORY[0x277D46690];
          v1502 = v842;
          v1467 = v854;
          *(&v1496 + 1) = v854;
          *&v1495 = v839;
          v1508[0] = v1469;
          v1508[1] = MEMORY[0x277CF9A38];
          v1503 = v843;
          v855 = v1373;
          *&v1506 = v1373;
          v1509 = v1268;
          v1508[2] = v1366;
          v1517 = v1455;
          v1516 = v1461;
          v1515 = v1475;
          v1521 = type metadata accessor for MobilePlaceholderService(0);
          v1518 = v1430;
          *&v1525 = v1370;
          *(&v1525 + 1) = &off_283836988;
          v1522 = &off_283833B20;
          v1523 = v1476;
          *(&v1527 + 1) = v1454;
          v1528 = sub_224C41198(&qword_281358108, type metadata accessor for MobileTimelineService, &unk_224DC2D98);
          v1529 = sub_224C41198(&qword_2813580D0, type metadata accessor for MobileTimelineService, &unk_224DC2D40);
          v1530 = sub_224C41198(&unk_2813580F8, type metadata accessor for MobileTimelineService, &unk_224DC2D70);
          v1531 = sub_224C41198(&qword_2813580E0, type metadata accessor for MobileTimelineService, &unk_224DC2D18);
          v1532 = sub_224C41198(&unk_2813580E8, type metadata accessor for MobileTimelineService, &unk_224DC2CF0);
          *&v1526 = v848;
          v1534 = v1456;
          v1533 = v1460;
          v1537 = v1463;
          v1538 = v1474;
          v1535 = &off_2838352C0;
          v856 = v1383;
          v1536 = v1383;
          v1541 = v1269;
          v1540 = v1340;
          v1539 = v1393;
          v1543 = type metadata accessor for StalenessService(0);
          v1544 = &off_283837478;
          v1545 = sub_224C41198(&unk_28135AD10, type metadata accessor for StalenessService, &unk_224DC3838);
          v1542 = v849;
          v1547 = v1339;
          v1548 = v1267;
          v1546 = v1365;

          v857 = v855;

          v858 = v1392;

          v1478 = v856;
          v859 = v1405;

          v860 = v1422;

          v861 = v1446;

          v1477 = v849;

          sub_224DA9E68();
          v862 = sub_224DA9DB8();
          LOBYTE(v840) = v863;

          sub_224A3317C((v1471 + 312), v1551);
          memset(v1552, 0, sizeof(v1552));
          memset(v1553, 0, sizeof(v1553));
          v1554 = 0;
          *(&v1505 + 1) = v859;
          v1512 = v861;
          v1504 = v858;
          *&v1505 = v860;
          v1513 = MEMORY[0x277CFA108];
          v1514 = MEMORY[0x277CFA110];
          v1549 = v862;
          v1550 = v840 & 1;
          v1551[7] = v1412;
          v1551[8] = v1390;
          v1551[5] = v1406;
          v1551[6] = v1390;
          v1551[9] = v1462;
          *&v1556[8] = v1415;
          *&v1556[16] = sub_224C41198(&unk_281357D50, type metadata accessor for PreviewControlService, &unk_224DBB1A8);
          *&v1555 = v1443;

          sub_224A838C0(&v1555, v1552, &qword_27D6F4770, &qword_224DB7690);
          *&v1556[16] = v1411;
          *&v1556[8] = v1407;
          *&v1555 = v1432;

          sub_224A838C0(&v1555, &v1552[40], &qword_27D6F46C0, &qword_224DB7608);
          *&v1556[16] = v1349;
          *&v1556[8] = v1338;
          *&v1555 = v1369;

          sub_224A838C0(&v1555, v1553, &qword_27D6F55A8, &qword_224DBBC08);
          if (qword_281352040 != -1)
          {
            swift_once();
          }

          v864 = off_281352050;

          sub_224DAB818();
          *&v1555 = MEMORY[0x277D84F90];
          sub_224DAF788();
          v1438(v1442, v1388, v1453);
          v865 = sub_224DAF418();
          sub_224C17B7C(&v1495, v864, v865, &v1623);

          v866 = v1625;
          v867 = v1626;
          v868 = __swift_project_boxed_opaque_existential_1(&v1623, v1625);
          *&v1556[8] = v866;
          *&v1556[16] = *(v867 + 1);
          v869 = __swift_allocate_boxed_opaque_existential_1(&v1555);
          (*(*(v866 - 1) + 16))(v869, v868, v866);
          sub_224DAA188();
          __swift_destroy_boxed_opaque_existential_1(&v1555);
          v870 = v1458;
          v871 = v1471;
          *(v1471 + 112) = v1458;
          sub_224A3317C(&v1623, (v871 + 744));
          v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55B0, &qword_224DBBC10);
          v873 = swift_allocObject();
          v874 = swift_retain_n();
          v875 = sub_224C4A7F8(v874, v870, v870, v873, &unk_28382FD90, &unk_224DBBC80);
          *&v1556[8] = v872;
          *&v1556[16] = sub_224A33088(qword_28135B438, &unk_27D6F55B0, &qword_224DBBC10, &unk_224DB5224);
          *&v1555 = v875;
          v1492 = v1474;
          v1491 = v1463;
          v876 = v1478;
          *&v1490 = v1478;
          v877 = type metadata accessor for DiscoveryService();
          v878 = swift_allocObject();
          sub_224A3317C(&v1555, v878 + 16);
          sub_224A3317C(&v1490, v878 + 56);
          v1489 = &off_28382DAC8;
          v1488 = v877;
          *&v1486 = v878;
          swift_beginAccess();
          v879 = *(v878 + 40);
          v880 = *(v878 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v878 + 16, v879);
          v881 = *(v880 + 24);
          v882 = v876;

          v881(&v1486, v879, v880);
          v883 = v1471;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1490);
          __swift_destroy_boxed_opaque_existential_1(&v1555);
          *(v883 + 25) = v878;
          sub_224DADEF8();
          v884 = sub_224DADEA8();

          v1478 = sub_224DA9BC8();
          v885 = v1264;
          v1264(v1341, v1391, v1394);
          v886 = v864[2];
          v887 = v870;
          v1446 = v884;
          if (v886)
          {
            v888 = sub_224B0B6F0(3);
            v889 = MEMORY[0x277D466A0];
            if (v890)
            {
              v891 = *(v864[7] + 8 * v888) & 1;
            }

            else
            {
              LOBYTE(v891) = 0;
            }

            v894 = v1266;
          }

          else
          {
            LOBYTE(v891) = 0;
            v894 = v1266;
            v889 = MEMORY[0x277D466A0];
          }

          v895 = v1368;

          v885(v1367, v1341, v1394);
          *&v1556[16] = MEMORY[0x277D466F8];
          v1557 = MEMORY[0x277D466B0];
          v1558 = MEMORY[0x277D466E8];
          v1559 = MEMORY[0x277D46690];
          v1560 = MEMORY[0x277D466B8];
          v1561 = v889;
          v896 = v1467;
          *&v1556[8] = v1467;
          *&v1555 = v887;

          v1622 = &off_28382E400;
          v897 = v1389;
          v1621 = v1389;
          *&v1619 = v1472;
          v1616 = MEMORY[0x277CF9848];
          v1615 = v1337;
          *&v1614 = v1478;
          v1492 = &off_283831828;
          v1493 = &off_2838317F0;
          v1494 = &off_283831818;
          v1491 = v894;
          *&v1490 = v895;
          type metadata accessor for ActivityReplicationService();
          v898 = swift_allocObject();
          v899 = __swift_mutable_project_boxed_opaque_existential_1(&v1619, v897);
          v1445 = &v1260;
          MEMORY[0x28223BE20](v899, v899);
          v901 = (&v1260 - ((v900 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v902 + 16))(v901);
          v903 = *v901;
          v1602 = &off_28382E400;
          v1601 = v897;
          *&v1599 = v903;
          *(v898 + 32) = v891;
          v1444 = *&v1556[8];
          v904 = *&v1556[8];
          v905 = __swift_project_boxed_opaque_existential_1(&v1555, *&v1556[8]);
          *(v898 + 72) = v1444;
          v906 = __swift_allocate_boxed_opaque_existential_1((v898 + 48));
          (*(*(v904 - 8) + 16))(v906, v905, v904);
          sub_224BBF304(&v1490, &v1486);
          sub_224A3317C(&v1614, &v1596);
          v1483 = MEMORY[0x277D466B0];
          v1484 = MEMORY[0x277D46690];
          v1485 = MEMORY[0x277D466B8];
          v1482 = v896;
          *&v1480 = v887;
          type metadata accessor for RemoteActivitySubscriptionReplicator();
          v907 = swift_allocObject();
          sub_224AAC8E8(&v1480, v907 + 16);
          sub_224AAC8E8(&v1486, v907 + 72);
          sub_224A36F98(&v1596, v907 + 128);
          *(v898 + 16) = v907;
          sub_224A3317C(&v1599, &v1486);
          v908 = __swift_mutable_project_boxed_opaque_existential_1(&v1486, v1488);
          MEMORY[0x28223BE20](v908, v908);
          v910 = (&v1260 - ((v909 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v911 + 16))(v910);
          v912 = *v910;
          swift_retain_n();
          swift_retain_n();
          v913 = v1446;
          swift_retain_n();

          v914 = sub_224C4AC30(v887, v912, v1367, v895, v913);
          __swift_destroy_boxed_opaque_existential_1(&v1486);
          *(v898 + 24) = v914;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55C0, &qword_224DBBC18);
          v915 = swift_allocObject();
          v916 = swift_retain_n();
          v917 = sub_224C4A7F8(v916, v887, v887, v915, &unk_28382FD68, &unk_224DBBC70);
          v918 = type metadata accessor for RemoteActivityLaunchReplicator();
          v919 = swift_allocObject();
          *(v919 + 16) = v917;
          v1488 = v918;
          v1489 = &off_283836E80;

          *&v1486 = v919;

          (*(v1371 + 8))(v1341, v1394);
          __swift_destroy_boxed_opaque_existential_1(&v1614);
          __swift_destroy_boxed_opaque_existential_1(&v1599);
          swift_beginAccess();
          sub_224A838C0(&v1486, v917 + 152, &qword_27D6F3F88, &unk_224DB53D0);
          swift_endAccess();

          *(v898 + 40) = v919;
          __swift_destroy_boxed_opaque_existential_1(&v1490);
          __swift_destroy_boxed_opaque_existential_1(&v1555);
          __swift_destroy_boxed_opaque_existential_1(&v1619);
          v892 = v1471;
          *(v1471 + 27) = v898;
          if (qword_281359218 != -1)
          {
            swift_once();
          }

          v920 = v1272;
          v921 = __swift_project_value_buffer(v1272, qword_2813652B0);
          v922 = v1273;
          (*(v1271 + 16))(v1273, v921, v920);
          v923 = qword_281352030;
          type metadata accessor for ReplicatorMigrationService(0);
          v924 = swift_allocObject();
          v925 = v1366;

          v926 = v1475;

          v927 = v1365;

          v928 = sub_224C4C988(v922, v925, v926, v927, v887, v923, v924);

          sub_224DAB158();
          *(v892 + 113) = v928;
          sub_224DAAAD8();
          swift_allocObject();

          v929 = sub_224DAAAC8();
          v930 = v1479;

          sub_224DAB7E8();
          *&v1555 = MEMORY[0x277D84F90];
          sub_224DAF788();
          v1438(v1442, v1388, v1453);
          v931 = sub_224DAF418();
          v1467 = v929;
          v932 = sub_224C45284(v929, v1477, v930, v931);

          v893 = v926;

          v933 = type metadata accessor for DeviceService();
          *(v892 + 54) = v932;
          *(v892 + 440) = v1555;
          *(v892 + 57) = v933;
          *(v892 + 58) = &off_2838340E0;
          __swift_destroy_boxed_opaque_existential_1(&v1623);
          sub_224A3311C(&v1495, &unk_27D6F55D0, &qword_224DBBC20);
        }

        else
        {

          v1467 = 0;
          v892 = v1471;
          *(v1471 + 25) = 0;
          *(v892 + 104) = 0;
          *(v892 + 27) = 0;
          *(v892 + 27) = 0u;
          *(v892 + 28) = 0u;
          *(v892 + 58) = 0;
          *(v892 + 744) = 0u;
          *(v892 + 760) = 0u;
          *(v892 + 97) = 0;
          *(v892 + 56) = 0u;
          v893 = v1475;
        }

        v934 = v1462;
        v935 = v1387;
        v936 = v1373;
        type metadata accessor for RemoteWidgetRapportNotifier();
        v937 = swift_allocObject();

        *(v892 + 103) = sub_224C45F68(v938, v937);
        *(&v1496 + 1) = v1469;
        v1497 = sub_224C41198(&unk_281350D80, MEMORY[0x277CF9A48], &protocol conformance descriptor for ExtensionManager);
        *&v1495 = v936;
        v1478 = v936;
        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1461;
        v1497 = sub_224C41198(&unk_28135A7D8, type metadata accessor for WidgetHostService, &unk_224DB5F00);
        *&v1495 = v893;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1435;
        v1497 = sub_224C41198(&unk_28135A020, type metadata accessor for ControlHostService, &unk_224DB5F00);
        *&v1495 = v934;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1464;
        v1497 = sub_224A33088(qword_28135C668, &unk_27D6F53C0, &qword_224DBBB20, &unk_224DB5594);
        *&v1495 = v935;
        v1477 = v935;
        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1456;
        v939 = sub_224C41198(&unk_28135B380, type metadata accessor for LocationService, &unk_224DC0A30);
        v1497 = v939;
        *&v1495 = v1460;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1454;
        v1497 = sub_224C41198(&unk_2813580A8, type metadata accessor for MobileTimelineService, &unk_224DC2C6C);
        *&v1495 = v1479;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1370;
        v1497 = sub_224C41198(&unk_281358310, type metadata accessor for MobileSnapshotService, &unk_224DC1EFC);
        *&v1495 = v1476;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v1451 = type metadata accessor for MobilePlaceholderService(0);
        *(&v1496 + 1) = v1451;
        v1497 = sub_224C41198(&unk_2813560F8, type metadata accessor for MobilePlaceholderService, &unk_224DBF888);
        v940 = v1430;
        *&v1495 = v1430;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1407;
        v1497 = sub_224C41198(&unk_281359B80, type metadata accessor for LiveControlService, &unk_224DBCE10);
        v941 = v1432;
        *&v1495 = v1432;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1415;
        v1497 = sub_224C41198(&unk_281357D58, type metadata accessor for PreviewControlService, &unk_224DBB140);
        v942 = v1443;
        *&v1495 = v1443;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v943 = qword_281352030;
        *(&v1496 + 1) = sub_224DABBE8();
        v1497 = sub_224C41198(&unk_281350EC0, MEMORY[0x277CF9878], &protocol conformance descriptor for ChronoMetadataStore);
        *&v1495 = v943;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        *(&v1496 + 1) = v1389;
        v1497 = sub_224C41198(&unk_281358518, type metadata accessor for MobileActivityService, &unk_224DBA2AC);
        *&v1495 = v1472;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v944 = sub_224DADAC8();
        v1319(v1321, v1320, v1323);
        v1453 = v944;
        v945 = sub_224DADAB8();
        v946 = v1471;
        *(v1471 + 29) = v1400;
        v947 = (v946 + 232);
        v947[61] = v1456;
        v947[62] = &off_2838352C0;
        v947[63] = v939;
        v947[58] = v1460;
        v947[89] = v1426;
        v947[90] = v1425;
        v948 = v1399;
        v947[3] = v1417;
        v947[4] = v948;
        v949 = v1352;
        v947[8] = v1382;
        v947[9] = v949;
        v947[5] = v1413;
        v947[41] = v1465;
        v947[42] = v945;
        v947[18] = v1464;
        v947[19] = &off_28382A480;
        v950 = v1477;
        v947[15] = v1477;
        *(v947 - 11) = v941;
        *(v947 - 10) = v942;
        v951 = v1423;
        v947[38] = v1435;
        v947[39] = v951;
        v947[35] = v1462;
        v952 = v1479;
        *(v947 - 8) = v940;
        *(v947 - 7) = v952;
        v953 = v1457;
        *(v947 - 6) = v1476;
        *(v947 - 5) = v953;
        v1466 = sub_224DADD18();

        v1477 = v950;

        v954 = sub_224DADD08();
        *(&v1496 + 1) = &type metadata for FeatureFlags.Widgets;
        v1497 = v1288;
        LOBYTE(v1495) = 9;
        LOBYTE(v944) = sub_224DA9C98();
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v1449 = v954;
        v1452 = v947;
        if (v944)
        {
          v955 = type metadata accessor for WidgetRelevanceService(0);
          v956 = v1471;
          v957 = *(v1471 + 32);
          v1446 = *(v1471 + 33);
          v958 = __swift_project_boxed_opaque_existential_1(v947, v957);
          sub_224A3317C((v956 + 312), &v1495);
          v959 = v1262;
          v960 = (*(v1263 + 56))(v1262, 1, 1, v1261);
          v1450 = &v1260;
          v961 = v1477;
          *&v1555 = v1477;
          v962 = v1383;
          *&v1490 = v1383;
          v963 = v1478;
          *&v1486 = v1478;
          MEMORY[0x28223BE20](v960, v964);
          v966 = &v1260 - ((v965 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v967 + 16))(v966, v958, v957);
          *&v1480 = v954;
          v968 = v963;
          v969 = v961;
          v970 = v962;

          v971 = v1474;
          v972 = MEMORY[0x277CF9A38];
          v973 = v1463;
          v974 = v1469;
          v975 = sub_224B644A4(&v1555, &v1490, &v1486, v966, &v1495, &v1480, v959, 30, v955, v1464, v1469, v1463, v957, v1466, &off_28382A480, MEMORY[0x277CF9A38], v1474, v1446, MEMORY[0x277CF9DF0]);
          v976 = v1471;
          v977 = &off_28382B338;
          v978 = v1433;
          v979 = v1410;
        }

        else
        {
          v955 = 0;
          v977 = 0;
          v975 = 0;
          v1487 = 0;
          *(&v1486 + 1) = 0;
          v972 = MEMORY[0x277CF9A38];
          v973 = v1463;
          v978 = v1433;
          v971 = v1474;
          v979 = v1410;
          v974 = v1469;
          v976 = v1471;
        }

        v1489 = v977;
        v1488 = v955;
        *&v1486 = v975;
        *(v976 + 26) = v1472;
        v980 = v1455;
        *(v976 + 62) = v1461;
        *(v976 + 63) = v980;
        *(v976 + 59) = v1475;
        sub_224A3796C(&v1486, &v1495, &unk_27D6F4FB0, &unk_224DBADC8);
        *&v1556[16] = v972;
        *&v1556[8] = v974;
        v981 = v1478;
        *&v1555 = v1478;
        v1492 = v1396;
        v1491 = v1454;
        *&v1490 = v1479;
        v1483 = v971;
        v1482 = v973;
        v982 = v1383;
        *&v1480 = v1383;
        v1626 = &off_283828B40;
        v1625 = v979;
        *&v1623 = v978;
        v983 = type metadata accessor for WidgetCenterServer();
        v984 = objc_allocWithZone(v983);
        v985 = __swift_mutable_project_boxed_opaque_existential_1(&v1623, v1625);
        v1466 = &v1260;
        MEMORY[0x28223BE20](v985, v985);
        v987 = (&v1260 - ((v986 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v988 + 16))(v987);
        v989 = *v987;
        v1622 = &off_283828B40;
        v1621 = v979;
        *&v1619 = v989;
        *&v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener] = 0;
        sub_224A3317C(&v1555, &v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__extensionManager]);
        sub_224A3317C(&v1490, &v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__timelineService]);
        sub_224A3317C(&v1480, &v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__descriptorService]);
        sub_224A3317C(&v1619, &v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__pushService]);
        sub_224A3796C(&v1495, &v984[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
        v1565.receiver = v984;
        v1565.super_class = v983;
        v990 = v981;
        v991 = v982;
        swift_retain_n();
        v992 = v1479;
        swift_retain_n();
        v993 = v990;

        v994 = v991;

        v995 = objc_msgSendSuper2(&v1565, sel_init);
        sub_224DAE668();
        v996 = v995;
        sub_224DAE648();
        v997 = objc_allocWithZone(MEMORY[0x277CCAE98]);
        v998 = sub_224DAEDE8();

        v999 = [v997 initWithMachServiceName_];

        v1000 = v994;
        v1478 = v994;

        v1001 = v1433;

        sub_224A3311C(&v1495, &unk_27D6F4FB0, &unk_224DBADC8);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        __swift_destroy_boxed_opaque_existential_1(&v1619);
        v1002 = *&v996[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener];
        *&v996[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener] = v999;

        __swift_destroy_boxed_opaque_existential_1(&v1623);
        *(v1471 + 7) = v996;
        v1497 = v1361;
        *(&v1496 + 1) = v1463;
        *&v1495 = v1000;
        *&v1556[16] = MEMORY[0x277CF9A38];
        *&v1556[8] = v1469;
        *&v1555 = v993;
        v1492 = v1455;
        v1491 = v1461;
        *&v1490 = v1475;
        v1483 = &off_283828B40;
        v1482 = v979;
        *&v1480 = v1001;
        v1626 = &off_28382A480;
        v1625 = v1464;
        v1003 = v1477;
        *&v1623 = v1477;
        v1622 = v1396;
        v1621 = v1454;
        *&v1619 = v992;
        type metadata accessor for WidgetPushManager(0);
        v1004 = swift_allocObject();
        v1005 = __swift_mutable_project_boxed_opaque_existential_1(&v1480, v979);
        v1466 = &v1260;
        MEMORY[0x28223BE20](v1005, v1005);
        v1007 = (&v1260 - ((v1006 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v1008 + 16))(v1007);
        v1009 = *v1007;
        v1616 = &off_283828B40;
        v1615 = v979;
        *&v1614 = v1009;
        *(v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions) = MEMORY[0x277D84FA0];
        v1010 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock;
        v1011 = swift_allocObject();
        v1012 = v993;
        swift_retain_n();
        v1013 = v1003;
        v1014 = v1478;
        swift_retain_n();
        swift_retain_n();
        v1015 = v1012;
        v1478 = v1013;
        v1016 = v1014;
        v1017 = swift_slowAlloc();
        *v1017 = 0;
        *(v1011 + 16) = v1017;
        *(v1004 + v1010) = v1011;
        v1018 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets;
        *(v1004 + v1018) = sub_224DA1190(MEMORY[0x277D84F90]);
        sub_224A3317C(&v1495, v1004 + 16);
        sub_224A3317C(&v1555, v1004 + 56);
        sub_224A3317C(&v1490, v1004 + 96);
        if (qword_2813515E8 != -1)
        {
          swift_once();
        }

        __swift_destroy_boxed_opaque_existential_1(&v1490);
        __swift_destroy_boxed_opaque_existential_1(&v1555);
        __swift_destroy_boxed_opaque_existential_1(&v1495);
        v1019 = v1473;
        v1020 = __swift_project_value_buffer(v1473, qword_281364F70);
        v1470(v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger, v1020, v1019);
        v1477 = v1016;

        v1021 = v1015;
        v1022 = v1475;

        sub_224A36F98(&v1614, v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
        sub_224A36F98(&v1623, v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService);
        sub_224A36F98(&v1619, v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService);
        *(v1004 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_automaticallySubscribeToPush) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        v1023 = v1471;
        *(v1471 + 111) = v1004;
        v1024 = *(v1023 + 27);
        v1025 = v1381;
        v1026 = v1397;
        if (v1024)
        {
          v1027 = *(v1024 + 40);
        }

        else
        {
          v1027 = 0;
        }

        v1028 = v1463;
        v1029 = v1467;
        v1030 = v1471;
        sub_224A3796C((v1471 + 432), &v1555, &unk_27D6F5050, &unk_224DBAE08);
        sub_224A3317C((v1030 + 312), &v1490);
        sub_224A3317C((v1030 + 592), &v1480);
        if (v1029)
        {
          v1031 = sub_224DAAAD8();
          v1032 = MEMORY[0x277D46520];
          v1033 = v1029;
        }

        else
        {
          v1033 = 0;
          v1031 = 0;
          v1032 = 0;
          v1624 = 0;
          *(&v1623 + 1) = 0;
        }

        *&v1623 = v1033;
        v1625 = v1031;
        v1626 = v1032;
        v1034 = *(v1471 + 104);
        if (v1034)
        {
          v1035 = sub_224DAA648();
          v1036 = MEMORY[0x277CFA108];
          v1037 = v1034;
        }

        else
        {
          v1037 = 0;
          v1035 = 0;
          v1036 = 0;
          v1620 = 0;
          *(&v1619 + 1) = 0;
        }

        *&v1619 = v1037;
        v1621 = v1035;
        v1622 = v1036;
        sub_224A3796C(&v1486, &v1614, &unk_27D6F4FB0, &unk_224DBADC8);
        v1470 = v1027;
        v1466 = v1034;
        v1038 = 0;
        if (v1027)
        {
          v1038 = type metadata accessor for RemoteActivityLaunchReplicator();
          v1039 = &off_283836E90;
        }

        else
        {
          v1039 = 0;
          v1600 = 0;
          *(&v1599 + 1) = 0;
        }

        *&v1599 = v1027;
        v1601 = v1038;
        v1602 = v1039;
        v1598 = v1396;
        v1597 = v1454;
        *&v1596 = v1479;
        v1595 = &off_28382A480;
        v1594 = v1464;
        *&v1593 = v1478;
        v1592 = v1474;
        *(&v1591 + 1) = v1028;
        v1040 = v1477;
        *&v1590 = v1477;
        v1589 = MEMORY[0x277CF9A38];
        v1588 = v1469;
        *&v1587 = v1021;
        v1586 = v1455;
        v1585 = v1461;
        *&v1584 = v1022;
        v1583 = &off_283832210;
        v1582 = v1317;
        *&v1581 = v1025;
        v1573 = &off_283830A00;
        v1041 = v1315;
        v1572 = v1315;
        v1571[0] = v1026;
        v1468 = type metadata accessor for ChronoServicesServer();
        v1042 = objc_allocWithZone(v1468);
        v1043 = __swift_mutable_project_boxed_opaque_existential_1(v1571, v1572);
        v1450 = &v1260;
        MEMORY[0x28223BE20](v1043, v1043);
        v1045 = (&v1260 - ((v1044 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v1046 + 16))(v1045);
        v1047 = *v1045;
        v1564[4] = &off_283830A00;
        v1564[3] = v1041;
        v1564[0] = v1047;
        v1048 = &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService];
        *(v1048 + 32) = 0;
        *v1048 = 0u;
        *(v1048 + 16) = 0u;
        v1049 = &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService];
        *(v1049 + 4) = 0;
        *v1049 = 0u;
        *(v1049 + 1) = 0u;
        *&v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener] = 0;
        v1473 = MEMORY[0x277D84F90] >> 62;
        if (MEMORY[0x277D84F90] >> 62)
        {
          v1056 = sub_224DAF838();

          v1057 = v1021;
          v1058 = v1021;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v1059 = v1478;
          v1060 = v1040;
          swift_retain_n();
          v1061 = v1058;
          v1062 = v1059;
          v1063 = v1060;

          v1021 = v1057;
          if (v1056)
          {
            sub_224D5796C(MEMORY[0x277D84F90]);
            goto LABEL_159;
          }
        }

        else
        {

          v1050 = v1021;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v1051 = v1478;
          v1052 = v1040;
          swift_retain_n();
          v1053 = v1050;
          v1054 = v1051;
          v1055 = v1052;
        }

        v1064 = MEMORY[0x277D84FA0];
LABEL_159:
        v1065 = v1468;
        *&v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_subscriptions] = v1064;
        v1066 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue;
        v1067 = sub_224DAEDE8();
        v1068 = [v1386 serialQueueTargetingSharedWorkloop_];

        *&v1042[v1066] = v1068;
        v1069 = MEMORY[0x277D84FA0];
        if (v1473)
        {
          if (sub_224DAF838())
          {
            sub_224D57EF8(MEMORY[0x277D84F90]);
          }

          else
          {
            v1069 = MEMORY[0x277D84FA0];
          }
        }

        *&v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients] = v1069;
        v1070 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock;
        v1071 = swift_allocObject();
        v1072 = swift_slowAlloc();
        *v1072 = 0;
        *(v1071 + 16) = v1072;
        *&v1042[v1070] = v1071;
        *&v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_initialExtensionDiscoveryCompleteSubscription] = 0;
        CHDFaultInProactiveFrameworkIfAvailable();
        sub_224A3317C(&v1596, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService]);
        sub_224A3317C(&v1593, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_taskService]);
        sub_224A3317C(&v1590, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService]);
        swift_beginAccess();
        sub_224C4D398(&v1555, v1048, &unk_27D6F5050, &unk_224DBAE08);
        swift_endAccess();
        sub_224A3317C(&v1587, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_extensionService]);
        sub_224A3317C(&v1584, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetHostService]);
        sub_224A3317C(&v1490, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider]);
        sub_224A3317C(&v1480, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_powerlogSuggestionService]);
        sub_224A3317C(&v1581, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keepAliveAssertionProvider]);
        sub_224A3317C(v1564, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_duetService]);
        sub_224A3796C(&v1623, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_stuckPairedRelationshipRepairer], &unk_27D6F5180, &unk_224DBAEA8);
        sub_224A3796C(&v1619, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_iconStore], &unk_27D6F51E0, &unk_224DBAF10);
        v163 = &unk_27D6F4FB0;
        sub_224A3796C(&v1614, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
        sub_224A3796C(&v1599, &v1042[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_remoteActivityLaunchService], &unk_27D6F5110, &unk_224DBAE50);
        v1563.receiver = v1042;
        v1563.super_class = v1065;
        v1073 = objc_msgSendSuper2(&v1563, sel_init);
        v146 = &v1260;
        v1258 = MEMORY[0x28223BE20](v1073, v1074);
        v1075 = swift_allocObject();
        *(v1075 + 16) = sub_224C4D400;
        *(v1075 + 24) = &v1256;
        v1497 = sub_224A37E94;
        v1498 = v1075;
        *&v1495 = MEMORY[0x277D85DD0];
        *(&v1495 + 1) = 1107296256;
        *&v1496 = sub_224A37E38;
        *(&v1496 + 1) = &block_descriptor_130;
        v1076 = _Block_copy(&v1495);
        v1077 = objc_opt_self();
        v1078 = v1073;

        v1079 = [v1077 listenerWithConfigurator_];
        _Block_release(v1076);

        isEscapingClosureAtFileLocation = v1477;

        sub_224A3311C(&v1614, &unk_27D6F4FB0, &unk_224DBADC8);
        __swift_destroy_boxed_opaque_existential_1(&v1480);
        __swift_destroy_boxed_opaque_existential_1(&v1490);
        sub_224A3311C(&v1555, &unk_27D6F5050, &unk_224DBAE08);
        sub_224A3311C(&v1599, &unk_27D6F5110, &unk_224DBAE50);
        sub_224A3311C(&v1619, &unk_27D6F51E0, &unk_224DBAF10);
        sub_224A3311C(&v1623, &unk_27D6F5180, &unk_224DBAEA8);
        __swift_destroy_boxed_opaque_existential_1(&v1581);
        __swift_destroy_boxed_opaque_existential_1(&v1584);
        __swift_destroy_boxed_opaque_existential_1(&v1587);
        __swift_destroy_boxed_opaque_existential_1(&v1590);
        __swift_destroy_boxed_opaque_existential_1(&v1593);
        __swift_destroy_boxed_opaque_existential_1(&v1596);
        __swift_destroy_boxed_opaque_existential_1(v1564);

        LOBYTE(v1071) = swift_isEscapingClosureAtFileLocation();

        if (v1071)
        {
          __break(1u);
        }

        else
        {
          v1446 = v1077;
          v1080 = *&v1078[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
          *&v1078[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener] = v1079;

          __swift_destroy_boxed_opaque_existential_1(v1571);
          *(v1471 + 8) = v1078;
          v1497 = &off_28382E400;
          v1081 = v1389;
          *(&v1496 + 1) = v1389;
          v1468 = v1021;
          v1082 = v1472;
          *&v1495 = v1472;
          v1083 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
          swift_beginAccess();
          v1084 = v1082;

          v1085 = v1078;
          sub_224A838C0(&v1495, &v1078[v1083], &unk_27D6F4FD0, &qword_224DB75F0);
          swift_endAccess();

          sub_224A3317C(v1447, &v1495);
          *&v1556[16] = &off_28382A480;
          *&v1556[8] = v1464;
          v1086 = v1478;
          *&v1555 = v1478;
          v1492 = v1474;
          v1491 = v1463;
          *&v1490 = isEscapingClosureAtFileLocation;
          v1483 = &off_28382E400;
          v1482 = v1081;
          *&v1480 = v1084;
          v1626 = &off_28382CD80;
          v1625 = v1431;
          *&v1623 = v1457;
          v1622 = &off_2838352C0;
          v1621 = v1456;
          *&v1619 = v1460;
          v1616 = &off_28382AA58;
          v1615 = v1418;
          v1087 = v1276;
          *&v1614 = v1276;
          type metadata accessor for ActivityRendererServices();
          v1088 = swift_allocObject();
          v1089 = __swift_mutable_project_boxed_opaque_existential_1(&v1480, v1081);
          v1450 = &v1260;
          MEMORY[0x28223BE20](v1089, v1089);
          v1091 = (&v1260 - ((v1090 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1092 + 16))(v1091);
          v1093 = __swift_mutable_project_boxed_opaque_existential_1(&v1623, v1625);
          v1445 = &v1260;
          MEMORY[0x28223BE20](v1093, v1093);
          v1095 = (&v1260 - ((v1094 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1096 + 16))(v1095);
          v1097 = __swift_mutable_project_boxed_opaque_existential_1(&v1619, v1621);
          *&v1444 = &v1260;
          MEMORY[0x28223BE20](v1097, v1097);
          v1099 = (&v1260 - ((v1098 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1100 + 16))(v1099);
          v1101 = __swift_mutable_project_boxed_opaque_existential_1(&v1614, v1615);
          v1442 = &v1260;
          MEMORY[0x28223BE20](v1101, v1101);
          v1103 = (&v1260 - ((v1102 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1104 + 16))(v1103);
          v1105 = *v1091;
          v1106 = *v1095;
          v1107 = *v1099;
          v1108 = *v1103;
          v1088[20] = v1081;
          v1088[21] = &off_28382E400;
          v1088[17] = v1105;
          v1088[25] = v1431;
          v1088[26] = &off_28382CD80;
          v1088[22] = v1106;
          v1109 = v1456;
          v1088[30] = v1456;
          v1088[31] = &off_2838352C0;
          v1088[27] = v1107;
          v1110 = v1418;
          v1088[35] = v1418;
          v1088[36] = &off_28382AA58;
          v1088[32] = v1108;
          sub_224A36F98(&v1555, (v1088 + 2));
          sub_224A36F98(&v1495, (v1088 + 7));
          sub_224A36F98(&v1490, (v1088 + 12));
          v1111 = v1460;

          v1112 = v1087;
          v1113 = v1086;
          v1466 = v1113;
          v1114 = v1477;
          v1478 = v1114;
          v1115 = v1457;

          __swift_destroy_boxed_opaque_existential_1(&v1614);
          __swift_destroy_boxed_opaque_existential_1(&v1619);
          __swift_destroy_boxed_opaque_existential_1(&v1623);
          __swift_destroy_boxed_opaque_existential_1(&v1480);
          v1116 = objc_allocWithZone(type metadata accessor for ActivityRendererServer());

          *&v1444 = v1088;
          sub_224D18194(v1117);
          *(v1471 + 28) = v1118;
          sub_224A3317C(v1447, &v1480);
          v1626 = &off_28382A480;
          v1625 = v1464;
          *&v1623 = v1113;
          v1622 = v1474;
          v1621 = v1463;
          *&v1619 = v1114;
          v1616 = v1455;
          v1615 = v1461;
          *&v1614 = v1475;
          *(&v1496 + 1) = v1370;
          v1497 = &off_283836968;
          v1498 = sub_224C41198(&unk_281358320, type metadata accessor for MobileSnapshotService, &unk_224DC1FA4);
          v1499 = sub_224C41198(&unk_281358318, type metadata accessor for MobileSnapshotService, &unk_224DC1F3C);
          *&v1495 = v1476;
          *&v1556[8] = v1451;
          *&v1556[16] = &off_283833B08;
          v1557 = sub_224C41198(&unk_281356100, type metadata accessor for MobilePlaceholderService, &unk_224DBF8E8);
          v1119 = v1115;
          *&v1555 = v1430;
          v1492 = &off_283837078;
          v1493 = v1396;
          v1491 = v1454;
          *&v1490 = v1479;
          v1602 = &off_28382CD80;
          v1120 = v1431;
          v1601 = v1431;
          *&v1599 = v1119;
          v1598 = &off_2838352C0;
          v1597 = v1109;
          *&v1596 = v1111;
          v1595 = &off_28382AA58;
          v1594 = v1110;
          v1121 = v1110;
          *&v1593 = v1112;
          type metadata accessor for WidgetRendererServices();
          v1122 = swift_allocObject();
          v1123 = __swift_mutable_project_boxed_opaque_existential_1(&v1599, v1120);
          v1477 = &v1260;
          MEMORY[0x28223BE20](v1123, v1123);
          v1125 = (&v1260 - ((v1124 + 15) & 0xFFFFFFFFFFFFFFF0));
          (v1344)(v1125);
          v1126 = __swift_mutable_project_boxed_opaque_existential_1(&v1596, v1597);
          v1451 = &v1260;
          MEMORY[0x28223BE20](v1126, v1126);
          v1128 = (&v1260 - ((v1127 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1129 + 16))(v1128);
          v1130 = __swift_mutable_project_boxed_opaque_existential_1(&v1593, v1594);
          v1450 = &v1260;
          MEMORY[0x28223BE20](v1130, v1130);
          v1132 = (&v1260 - ((v1131 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1133 + 16))(v1132);
          v1134 = *v1125;
          v1135 = *v1128;
          v1136 = *v1132;
          *(v1122 + 352) = v1120;
          *(v1122 + 360) = &off_28382CD80;
          *(v1122 + 328) = v1134;
          *(v1122 + 392) = v1109;
          *(v1122 + 400) = &off_2838352C0;
          *(v1122 + 368) = v1135;
          *(v1122 + 432) = v1121;
          *(v1122 + 440) = &off_28382AA58;
          *(v1122 + 408) = v1136;
          sub_224A36F98(&v1623, v1122 + 16);
          sub_224A36F98(&v1480, v1122 + 56);
          sub_224A36F98(&v1619, v1122 + 96);
          sub_224A36F98(&v1614, v1122 + 136);
          sub_224AAC8E8(&v1495, v1122 + 176);
          sub_224AB1DE0(&v1555, (v1122 + 232));
          sub_224AB1DE0(&v1490, (v1122 + 280));
          v1137 = v1460;

          v1441 = v1112;
          v1138 = v1466;
          v1139 = v1478;
          v1478 = v1139;

          __swift_destroy_boxed_opaque_existential_1(&v1593);
          __swift_destroy_boxed_opaque_existential_1(&v1596);
          __swift_destroy_boxed_opaque_existential_1(&v1599);
          v1451 = type metadata accessor for WidgetRendererServer();
          v1140 = objc_allocWithZone(v1451);

          v1442 = v1122;
          sub_224CC432C(v1141);
          v1445 = v1142;
          v1143 = v1471;
          *(v1471 + 10) = v1142;
          v1466 = type metadata accessor for ControlServerServices();
          v1144 = *(v1143 + 37);
          v1450 = *(v1143 + 38);
          __swift_project_boxed_opaque_existential_1(v1452 + 5, v1144);
          v1145 = sub_224A3317C(v1447, &v1495);
          v1477 = &v1260;
          v1146 = *(v1143 + 71);
          *&v1555 = v1432;
          *&v1490 = v1443;
          MEMORY[0x28223BE20](v1145, v1147);
          v1452 = (&v1260 - ((v1148 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1149 + 16))();
          *&v1480 = v1138;
          *&v1623 = v1137;
          v1150 = v1462;
          *&v1619 = v1462;
          *&v1614 = v1433;
          *&v1599 = v1139;
          v1151 = v1468;
          *&v1596 = v1468;
          *&v1593 = v1342;
          *&v1590 = v1146;
          v1447 = sub_224C41198(&unk_281350CB8, MEMORY[0x277CF9DB0], MEMORY[0x277CF9D08]);
          v1152 = sub_224C41198(&unk_281357D50, type metadata accessor for PreviewControlService, &unk_224DBB1A8);
          v1468 = v1151;

          v1153 = v1138;
          v1478 = v1478;

          v1445 = v1445;

          v1440 = v1152;
          v1255 = v1152;
          v1154 = v1463;
          v1155 = v1435;
          v1156 = v1464;
          v1157 = sub_224D0A10C(&v1555, &v1490, v1452, &v1495, &v1480, &v1623, &v1619, &v1614, &v1599, &v1596, &v1593, &v1590, v1466, v1407, v1410, v1144, v1469, v1464, v1453, v1435, v1415, v1463, v1277, v1456, v1411, &off_283828B40, v1450, MEMORY[0x277CF9A38], &off_28382A480, v1447, v1423, v1255, v1474, &off_283832610, &off_2838352C0);
          v1158 = objc_allocWithZone(type metadata accessor for ControlsServer());

          v1456 = v1157;
          sub_224D01144(v1159);
          v1160 = v1471;
          *(v1471 + 16) = v1161;
          v1162 = v1468;

          v1163 = v1433;

          *(v1160 + 17) = sub_224C45450(v1164, v1162, v1150, v1163);
          sub_224A3317C((v1160 + 312), &v1555);
          v1165 = *(v1160 + 10);
          v1491 = v1454;
          v1166 = sub_224C41198(&unk_281358098, type metadata accessor for MobileTimelineService, &unk_224DC2C9C);
          v1492 = v1166;
          *&v1490 = v1479;
          v1483 = &off_28382A480;
          v1482 = v1156;
          v1477 = v1153;
          *&v1480 = v1153;
          v1626 = v1474;
          v1625 = v1154;
          *&v1623 = v1478;
          v1622 = v1455;
          v1621 = v1461;
          *&v1619 = v1475;
          v1616 = v1423;
          v1167 = v1162;
          v1615 = v1155;
          *&v1614 = v1150;
          v1602 = MEMORY[0x277CF9A38];
          v1601 = v1469;
          *&v1599 = v1162;
          v1598 = MEMORY[0x277CFA010];
          v1597 = v1421;
          v1168 = v1408;
          *&v1596 = v1408;
          v1595 = &off_2838328D0;
          v1169 = v1451;
          v1594 = v1451;
          v1468 = v1165;
          *&v1593 = v1165;
          v1464 = type metadata accessor for ToolServicesServer();
          v1170 = objc_allocWithZone(v1464);
          v1171 = __swift_mutable_project_boxed_opaque_existential_1(&v1490, v1491);
          v1453 = &v1260;
          MEMORY[0x28223BE20](v1171, v1171);
          v1173 = (&v1260 - ((v1172 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1174 + 16))(v1173);
          v1175 = __swift_mutable_project_boxed_opaque_existential_1(&v1593, v1594);
          v1452 = &v1260;
          MEMORY[0x28223BE20](v1175, v1175);
          v1177 = (&v1260 - ((v1176 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1178 + 16))(v1177);
          v1179 = *v1173;
          v1180 = *v1177;
          v1592 = v1166;
          *(&v1591 + 1) = v1454;
          *&v1590 = v1179;
          v1589 = &off_2838328D0;
          v1588 = v1169;
          *&v1587 = v1180;
          v1181 = &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService];
          *(v1181 + 4) = 0;
          *v1181 = 0u;
          *(v1181 + 1) = 0u;
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager] = 0;
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager] = 0;
          v1182 = &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlService];
          *(v1182 + 4) = 0;
          *v1182 = 0u;
          *(v1182 + 1) = 0u;
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager] = 0;
          v1466 = v1167;
          if (v1473)
          {
            v1196 = sub_224DAF838();
            v1197 = v1167;
            v1198 = v1168;
            swift_retain_n();
            swift_retain_n();
            v1199 = v1477;
            v1200 = v1478;
            swift_retain_n();
            v1201 = v1468;
            v1202 = v1197;
            v1203 = v1198;
            v1204 = v1199;
            v1191 = v1392;

            v1205 = v1200;

            v1206 = v1201;
            if (v1196)
            {
              sub_224D5796C(MEMORY[0x277D84F90]);
            }

            else
            {
              v1207 = MEMORY[0x277D84FA0];
            }

            *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_subscriptions] = v1207;
            *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = 0;
            if (sub_224DAF838())
            {
              sub_224D58214(MEMORY[0x277D84F90]);
            }

            else
            {
              v1195 = MEMORY[0x277D84FA0];
            }

            v1193 = v1405;
            v163 = v1422;
          }

          else
          {
            *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_subscriptions] = MEMORY[0x277D84FA0];
            *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = 0;
            v1183 = v1167;
            v1184 = v1168;
            swift_retain_n();
            swift_retain_n();
            v1185 = v1477;
            v1186 = v1478;
            swift_retain_n();
            v1187 = v1468;
            v1188 = v1183;
            v1189 = v1184;
            v1190 = v1185;
            v1191 = v1392;

            v1192 = v1186;
            v1193 = v1405;

            v163 = v1422;

            v1194 = v1187;
            v1195 = MEMORY[0x277D84FA0];
          }

          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock_clients] = v1195;
          v1208 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock;
          v1209 = swift_allocObject();
          v1210 = swift_slowAlloc();
          *v1210 = 0;
          *(v1209 + 16) = v1210;
          *&v1170[v1208] = v1209;
          v1211 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue;
          v1212 = sub_224DAEDE8();
          v1213 = [v1386 serialQueueTargetingSharedWorkloop_];

          *&v1170[v1211] = v1213;
          v146 = &OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
          v1214 = &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService];
          *(v1214 + 4) = 0;
          *v1214 = 0u;
          *(v1214 + 1) = 0u;
          sub_224A3317C(&v1590, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService]);
          sub_224A3317C(&v1480, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService]);
          sub_224A3317C(&v1623, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService]);
          sub_224A3317C(&v1619, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService]);
          sub_224A3317C(&v1614, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService]);
          sub_224A3317C(&v1599, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService]);
          sub_224A3317C(&v1596, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService]);
          sub_224A3317C(&v1555, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider]);
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineCacheManager] = v1193;
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_placeholderCacheManager] = v1191;
          *&v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_snapshotCacheManager] = v163;
          sub_224A3317C(&v1587, &v1170[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider]);
          v1562.receiver = v1170;
          v1562.super_class = v1464;

          v1215 = objc_msgSendSuper2(&v1562, sel_init);
          v1258 = MEMORY[0x28223BE20](v1215, v1216);
          v1217 = swift_allocObject();
          *(v1217 + 16) = sub_224C4D408;
          *(v1217 + 24) = &v1256;
          v1497 = sub_224A867F4;
          v1498 = v1217;
          *&v1495 = MEMORY[0x277D85DD0];
          *(&v1495 + 1) = 1107296256;
          *&v1496 = sub_224A37E38;
          *(&v1496 + 1) = &block_descriptor_137_0;
          v1218 = _Block_copy(&v1495);
          v1219 = v1215;

          v1220 = [(objc_class *)v1446 listenerWithConfigurator:v1218];
          _Block_release(v1218);

          __swift_destroy_boxed_opaque_existential_1(&v1555);
          __swift_destroy_boxed_opaque_existential_1(&v1596);
          __swift_destroy_boxed_opaque_existential_1(&v1599);
          __swift_destroy_boxed_opaque_existential_1(&v1614);
          __swift_destroy_boxed_opaque_existential_1(&v1619);
          __swift_destroy_boxed_opaque_existential_1(&v1623);
          __swift_destroy_boxed_opaque_existential_1(&v1480);
          __swift_destroy_boxed_opaque_existential_1(&v1587);
          __swift_destroy_boxed_opaque_existential_1(&v1590);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v1221 = *&v1219[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener];
            *&v1219[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = v1220;

            __swift_destroy_boxed_opaque_existential_1(&v1593);
            __swift_destroy_boxed_opaque_existential_1(&v1490);
            v1222 = v1471;
            *(v1471 + 9) = v1219;
            v1497 = v1411;
            *(&v1496 + 1) = v1407;
            *&v1495 = v1432;
            v1223 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService;
            swift_beginAccess();

            v1224 = v1219;
            sub_224A838C0(&v1495, &v1219[v1223], &qword_27D6F46C0, &qword_224DB7608);
            swift_endAccess();

            *(*(v1222 + 9) + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager) = v1406;

            *(*(v1222 + 9) + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager) = v1395;

            v1225 = *(v1222 + 9);
            v1497 = v1440;
            *(&v1496 + 1) = v1415;
            *&v1495 = v1443;
            v1226 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlService;
            swift_beginAccess();

            v1227 = v1225;
            sub_224A838C0(&v1495, v1225 + v1226, &qword_27D6F4770, &qword_224DB7690);
            swift_endAccess();

            *(*(v1222 + 9) + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager) = v1412;

            v1228 = *(v1222 + 9);
            v1497 = &off_28382E400;
            *(&v1496 + 1) = v1389;
            *&v1495 = v1472;
            v1229 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
            swift_beginAccess();

            v1230 = v1228;
            sub_224A838C0(&v1495, v1228 + v1229, &unk_27D6F4FD0, &qword_224DB75F0);
            swift_endAccess();

            v1231 = v1466;
            *(v1222 + 20) = v1466;
            v1232 = v1474;
            *(v1222 + 52) = v1463;
            *(v1222 + 53) = v1232;
            v1233 = v1478;
            *(v1222 + 49) = v1478;
            v1234 = v1408;
            *(v1222 + 69) = v1408;
            v1235 = type metadata accessor for TaskTracker();
            v1236 = swift_allocObject();
            v1237 = v1231;
            v1474 = v1234;
            v1238 = v1477;
            v1478 = v1233;
            v1477 = v1238;
            v1239 = sub_224C45664(v1238, 1, v1236);
            type metadata accessor for WakingWorkScheduler();
            swift_allocObject();
            v1240 = sub_224CBEBDC();
            type metadata accessor for NonwakingWorkScheduler();
            swift_allocObject();
            v1241 = sub_224C74E04();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5588, &qword_224DBBBF0);
            v1242 = swift_allocObject();
            *(v1242 + 16) = v1354;
            *(v1242 + 56) = v1235;
            *(v1242 + 64) = &off_28382DB98;
            *(v1242 + 32) = v1239;
            *(v1242 + 96) = v1298;
            *(v1242 + 104) = &off_28382F7A0;
            *(v1242 + 72) = v1353;
            type metadata accessor for WakeManager();
            swift_allocObject();

            v1243 = sub_224BDC90C(v1240, &off_283832450, v1241, &off_283830EE0, v1242);

            *(v1222 + 125) = v1243;
            sub_224A3796C(&v1486, (v1222 + 840), &unk_27D6F4FB0, &unk_224DBADC8);
            v1244 = v1309;
            swift_allocObject();
            v1245 = sub_224AC3368();
            v1492 = &off_283828E40;
            v1491 = v1244;
            *&v1490 = v1245;
            *&v1556[16] = &off_28382F820;
            v1557 = MEMORY[0x277CF9A38];
            v1558 = MEMORY[0x277CF9A40];
            *&v1556[8] = v1469;
            *&v1555 = v1237;
            v1246 = v1458;
            if (v1458)
            {
              v1247 = sub_224DAAD68();
              v1248 = MEMORY[0x277D466D0];
              v1249 = v1246;
            }

            else
            {
              v1249 = 0;
              v1247 = 0;
              v1248 = 0;
              v1481 = 0;
              *(&v1480 + 1) = 0;
            }

            *&v1480 = v1249;
            v1482 = v1247;
            v1483 = v1248;
            sub_224A3317C(v1631, v1508);
            v1513 = v1461;
            v1514 = v1455;
            v1517 = v1399;
            v1516 = v1417;
            v1515 = v1400;
            v1250 = *(v1222 + 86);
            v1505 = 0u;
            v1506 = 0u;
            v1510 = v1475;
            v1507 = 0;
            v1524 = 0u;
            v1525 = 0u;
            v1526 = 0u;
            v1527 = 0u;
            sub_224A36F98(&v1490, &v1495);
            sub_224AAC8E8(&v1555, &v1498);
            v1251 = v1237;

            v1252 = v1250;
            sub_224A838C0(&v1480, &v1505, &qword_27D6F5590, &qword_224DBEC00);
            v1509 = v1445;
            v1518 = v1430;
            v1519 = v1479;
            v1520 = v1405;
            v1521 = v1429;
            v1522 = v1476;
            v1523 = v1252;
            *&v1556[16] = v1423;
            *&v1556[8] = v1435;
            *&v1555 = v1462;

            sub_224A838C0(&v1555, &v1524 + 8, &unk_27D6F5598, &unk_224DBBBF8);
            *(&v1527 + 1) = v1443;
            *&v1527 = v1432;
            *&v1524 = v1472;
            sub_224C4D410(&v1495, &v1555);
            v1253 = type metadata accessor for FileReaperService();
            swift_allocObject();
            v1254 = sub_224CCCEAC(&v1555);
            *(v1222 + 14) = v1253;
            *(v1222 + 15) = &off_283832F08;
            *(v1222 + 11) = v1254;
            sub_224C3FFE0();

            sub_224C4CF9C(v1566);
            (*(v1371 + 8))(v1391, v1394);
            sub_224C4CF9C(&v1574);
            sub_224C4CF9C(&v1603);
            sub_224A3311C(&v1627, &qword_27D6F5428, &qword_224DBBB50);
            sub_224C4CF9C(v1608);
            v1291(v1364, v1404);
            __swift_destroy_boxed_opaque_existential_1(v1631);
            sub_224C4D46C(v1630);
            sub_224A3311C(&v1486, &unk_27D6F4FB0, &unk_224DBADC8);
            sub_224C4D4C0(&v1495);
            return v1222;
          }
        }

        __break(1u);
LABEL_185:
        swift_once();
LABEL_15:
        v164 = type metadata accessor for HostDescriptorPredicate(0);
        v165 = __swift_project_value_buffer(v164, qword_281365218);
        v166 = v1448;
        sub_224C4E30C(v165, v1448, type metadata accessor for HostDescriptorPredicate);
        (*(*(v164 - 8) + 56))(v166, 0, 1, v164);
        v167 = sub_224A6BAF8(v166);
        sub_224A3311C(v166, &qword_27D6F46D0, &unk_224DBD6D0);
        sub_224A699F0(&v1495);
        if (v167)
        {
          v168 = v163 + qword_28135A7E8;
          swift_beginAccess();
          if (*(v168 + 24))
          {
            sub_224A3317C(v168, &v1495);
            swift_endAccess();
            __swift_project_boxed_opaque_existential_1(&v1495, *(&v1496 + 1));
            sub_224DADE18();

            sub_224A3311C(&v1603, &unk_27D6F53A0, &qword_224DC1A80);
            sub_224A3311C(v1608, &qword_27D6F4200, &unk_224DB5FC0);
            if (*&v1556[8])
            {
              __swift_destroy_boxed_opaque_existential_1(&v1555);
            }

            v1427(v146, v1473);
            __swift_destroy_boxed_opaque_existential_1(&v1495);
          }

          else
          {
            sub_224A3311C(&v1603, &unk_27D6F53A0, &qword_224DC1A80);
            sub_224A3311C(v1608, &qword_27D6F4200, &unk_224DB5FC0);
            if (*&v1556[8])
            {
              __swift_destroy_boxed_opaque_existential_1(&v1555);
            }

            v1427(v146, isEscapingClosureAtFileLocation);
            swift_endAccess();
          }
        }

        else
        {

          sub_224A3311C(&v1603, &unk_27D6F53A0, &qword_224DC1A80);
          sub_224A3311C(v1608, &qword_27D6F4200, &unk_224DB5FC0);
          if (*&v1556[8])
          {
            __swift_destroy_boxed_opaque_existential_1(&v1555);
          }

          v1427(v146, isEscapingClosureAtFileLocation);
        }
      }

      v485 = 0;
      v3 = v1478 + 32;
      while (v485 < *(v1478 + 2))
      {
        v486 = v485 + 1;
        *&v1593 = *&v3[8 * v485];
        v487 = swift_allocObject();
        swift_weakInit();
        v488 = swift_allocObject();
        *(v488 + 16) = sub_224C4D074;
        *(v488 + 24) = v487;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
        sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80, MEMORY[0x277CBCD90]);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v485 = v486;
        if (v484 == v486)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_179:
      __break(1u);
    }
  }

  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}

uint64_t sub_224C3D880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5830, &qword_224DBBD60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5838, &qword_224DBBD68);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_224DBB860;
  v31 = *(a1 + 152);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  v27 = sub_224A33088(&qword_281350F08, &unk_27D6F5840, &qword_224DBBD70, MEMORY[0x277CBCE20]);
  v31 = sub_224DAB3A8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5850, &qword_224DBBD78);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58);
  sub_224A33088(&unk_281351018, &qword_27D6F5850, &qword_224DBBD78, MEMORY[0x277CBCD90]);
  sub_224DAB3E8();

  v11 = sub_224A33088(&unk_281351390, &qword_27D6F5830, &qword_224DBBD60, MEMORY[0x277CBCC08]);
  v30 = v4;
  v21[1] = v11;
  v12 = sub_224DAB3A8();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v22 = v9;
  *(v9 + 32) = v12;
  v31 = sub_224D250FC();
  v24 = v10;
  sub_224DAB3E8();

  v13 = v30;
  v14 = sub_224DAB3A8();
  v15 = v23;
  v23(v8, v13);
  *(v9 + 40) = v14;
  v31 = sub_224D25110();
  sub_224DAB3E8();

  v16 = v30;
  v17 = sub_224DAB3A8();
  v15(v8, v16);
  v18 = v22;
  *(v22 + 48) = v17;
  v31 = *(v29 + 56);
  v31 = sub_224DAB3A8();
  sub_224DAB3E8();

  v19 = sub_224DAB3A8();
  v15(v8, v16);
  *(v18 + 56) = v19;
  return v18;
}

double sub_224C3DCC0@<D0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58) + 48);
  *a3 = v5;
  v7 = *a2;
  v8 = sub_224DACB98();
  (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);

  return result;
}

double sub_224C3DD60@<D0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58) + 48);
  *a2 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000019;
  *(v5 + 24) = 0x8000000224DCB3B0;
  *&a2[v4] = v5;
  v6 = *MEMORY[0x277CF9B70];
  v7 = sub_224DACB98();
  (*(*(v7 - 8) + 104))(&a2[v4], v6, v7);

  return result;
}

double sub_224C3DE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  BSDispatchQueueAssertMain();
  sub_224DAC3A8();
  v7 = sub_224BDE4D4();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  swift_retain_n();
  sub_224A364AC(a1, a2);
  sub_224BDE670(sub_224C4CDBC, v8, v7, v3);

  return result;
}

void sub_224C3DF2C()
{
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364DD8);
  oslog = sub_224DAB228();
  v1 = sub_224DAF2A8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_224A2F000, oslog, v1, "Migration reap completed.", v2, 2u);
    MEMORY[0x22AA5EED0](v2, -1, -1);
  }
}

void sub_224C3E014(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v105 = a3;
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v106 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v108 = &v102 - v9;
  *&v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v10);
  v109 = &v102 - v11;
  v12 = sub_224DAB7B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB848();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  __swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
  sub_224CCD760();
  if (a1[104])
  {
    sub_224DAA638();
  }

  sub_224A3796C((a1 + 93), v122, &qword_27D6F52F8, &qword_224DBBAC8);
  v111 = a1;
  if (v123)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v122, v123);
    v23 = *v22;
    v104 = *(*v22 + 112);
    v120 = sub_224C4CEA4;
    v121 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_224A39F40;
    v119 = &block_descriptor_59;
    v103 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v113[0] = MEMORY[0x277D84F90];
    sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v102 = v17;
    a1 = v111;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    v24 = v103;
    MEMORY[0x22AA5D760](0, v21, v16, v103);
    _Block_release(v24);
    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v102);

    __swift_destroy_boxed_opaque_existential_1(v122);
  }

  else
  {
    sub_224A3311C(v122, &qword_27D6F52F8, &qword_224DBBAC8);
  }

  sub_224CB9BE0();
  sub_224C7505C();
  __swift_project_boxed_opaque_existential_1(a1 + 49, a1[52]);
  v25 = sub_224DAD428();
  if (qword_281352020 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAD418();
  v119 = v25;
  v120 = MEMORY[0x277CF9CB8];
  aBlock = v26;
  sub_224DACAD8();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v27 = a1[18];
  v28 = *(v27 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_224C4CDC8;
  *(v29 + 24) = v27;
  v120 = sub_224A8A838;
  v121 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v117 = 1107296256;
  v118 = sub_224A9B6F8;
  v119 = &block_descriptor_31_0;
  v30 = _Block_copy(&aBlock);
  v31 = v28;

  dispatch_sync(v31, v30);

  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_39;
  }

  v32 = a1[19];
  v33 = *(v32 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_224C4CDD0;
  *(v34 + 24) = v32;
  v120 = sub_224BC4B74;
  v121 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v117 = 1107296256;
  v118 = sub_224A9B6F8;
  v119 = &block_descriptor_38_0;
  v35 = _Block_copy(&aBlock);
  v36 = v33;

  dispatch_sync(v36, v35);

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_224D79880();
  v37 = a1[21];
  v38 = *(v37 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_224C4CDD8;
  *(v39 + 24) = v37;
  v120 = sub_224BC4B74;
  v121 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v117 = 1107296256;
  v118 = sub_224A9B6F8;
  v119 = &block_descriptor_45_0;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  dispatch_sync(v41, v40);

  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_17;
  }

  sub_224BD2DC8();
  if (a1[27])
  {
    sub_224C545D0();
  }

  sub_224A3796C((a1 + 105), &aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v119)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v119);
    sub_224B5A874();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_224A3311C(&aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  }

  if (qword_281352C80 != -1)
  {
    goto LABEL_41;
  }

LABEL_17:
  sub_224B57DD4();
  __swift_project_boxed_opaque_existential_1(a1 + 39, a1[42]);
  aBlock = sub_224DAA168();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v42 = sub_224DAF3D8();
  v122[0] = v42;
  v43 = sub_224DAF358();
  v44 = v108;
  (*(*(v43 - 8) + 56))(v108, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v45 = v109;
  v46 = v111;
  sub_224DAB448();
  sub_224A3311C(v44, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600, MEMORY[0x277CBCD60]);

  v47 = v112;
  v48 = sub_224DAB488();

  (*(v110 + 8))(v45, v47);
  v46[117] = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3768, &unk_224DB3D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DBB860;
  v50 = v46[9];
  *(inited + 56) = type metadata accessor for ToolServicesServer();
  *(inited + 64) = &off_28382C038;
  *(inited + 32) = v50;
  v51 = v46[8];
  *(inited + 96) = type metadata accessor for ChronoServicesServer();
  *(inited + 104) = &off_28382E920;
  *(inited + 72) = v51;
  v52 = v46[7];
  *(inited + 136) = type metadata accessor for WidgetCenterServer();
  *(inited + 144) = &off_2838305E8;
  *(inited + 112) = v52;
  v53 = v46[10];
  *(inited + 176) = type metadata accessor for WidgetRendererServer();
  *(inited + 184) = &off_2838328E0;
  *(inited + 152) = v53;
  v115 = inited;
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_224DB3100;
  v55 = v46[28];
  *(v54 + 56) = type metadata accessor for ActivityRendererServer();
  *(v54 + 64) = &off_283834BC0;
  *(v54 + 32) = v55;
  v56 = v50;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v55;
  sub_224B42B78(v54);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_224DB30F0;
  v62 = v46[16];
  *(v61 + 56) = type metadata accessor for ControlsServer();
  *(v61 + 64) = &off_283834400;
  *(v61 + 32) = v62;
  v63 = v46[17];
  *(v61 + 96) = type metadata accessor for ControlCenterServer();
  *(v61 + 104) = &off_2838350D0;
  *(v61 + 72) = v63;
  v64 = v62;
  v65 = v63;
  sub_224B42B78(v61);
  v67 = *(v115 + 16);
  if (v67)
  {
    v110 = v115;
    v68 = v115 + 32;
    v69 = &unk_281351000;
    *&v66 = 136446210;
    v112 = v66;
    do
    {
      sub_224A3317C(v68, &aBlock);
      if (v69[144] != -1)
      {
        swift_once();
      }

      v72 = sub_224DAB258();
      __swift_project_value_buffer(v72, qword_281364DF0);
      sub_224A3317C(&aBlock, v122);
      v73 = sub_224DAB228();
      v74 = sub_224DAF2A8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = v69;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v114[0] = v77;
        *v76 = v112;
        sub_224A3317C(v122, v113);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5310, &unk_224DB56B0);
        v78 = sub_224DAEE28();
        v80 = v79;
        __swift_destroy_boxed_opaque_existential_1(v122);
        v81 = sub_224A33F74(v78, v80, v114);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_224A2F000, v73, v74, "Starting service: %{public}s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x22AA5EED0](v77, -1, -1);
        v82 = v76;
        v69 = v75;
        MEMORY[0x22AA5EED0](v82, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v122);
      }

      v70 = v119;
      v71 = v120;
      __swift_project_boxed_opaque_existential_1(&aBlock, v119);
      v71[1](v70, v71);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v68 += 40;
      --v67;
    }

    while (v67);

    v46 = v111;
  }

  else
  {
  }

  v83 = objc_opt_self();
  v84 = sub_224DAEDE8();
  v85 = [v83 activateManualDomain_];
  swift_unknownObjectRelease();

  v86 = sub_224DAEDE8();
  v87 = [v83 activateManualDomain_];
  swift_unknownObjectRelease();

  sub_224A3796C((v46 + 54), &aBlock, &unk_27D6F5050, &unk_224DBAE08);
  if (v119)
  {
    v88 = *__swift_project_boxed_opaque_existential_1(&aBlock, v119);
    v89 = sub_224DAF128();
    v90 = v106;
    (*(*(v89 - 8) + 56))(v106, 1, 1, v89);
    v91 = swift_allocObject();
    v91[2] = 0;
    v91[3] = 0;
    v91[4] = v88;

    sub_224D8E744(0, 0, v90, &unk_224DBBAD0, v91);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_224A3311C(&aBlock, &unk_27D6F5050, &unk_224DBAE08);
  }

  v92 = v46[110];
  v93 = *(v92 + 40);
  v94 = swift_allocObject();
  v94[2] = sub_224C4CDE8;
  v94[3] = v92;
  v120 = sub_224BC4B74;
  v121 = v94;
  aBlock = MEMORY[0x277D85DD0];
  v117 = 1107296256;
  v118 = sub_224A9B6F8;
  v119 = &block_descriptor_52_1;
  v95 = _Block_copy(&aBlock);

  dispatch_sync(v93, v95);
  _Block_release(v95);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    os_unfair_lock_unlock(*(isEscapingClosureAtFileLocation + 16));
    __break(1u);
  }

  else
  {
    v97 = v46[111];
    LOBYTE(aBlock) = 0;
    v98 = *(v97 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock);
    os_unfair_lock_lock(*(v98 + 16));
    sub_224B9556C(v97, &aBlock);
    os_unfair_lock_unlock(*(v98 + 16));
    if ((aBlock & 1) == 0)
    {
      sub_224B99110(1);
    }

    v99 = sub_224C3FA70();
    v100 = v46[116];
    if (v100)
    {
      [v100 invalidate];
    }

    v46[116] = 0;
    v101 = swift_unknownObjectRelease();
    if (v107)
    {
      v107(v101);
    }
  }
}

double sub_224C3F178(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_224B32E48();
    if (*(a2 + 936))
    {

      sub_224DAB328();
    }

    *(a2 + 936) = 0;
  }

  return result;
}

double sub_224C3F1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v48 = 0;
  v4 = sub_224DAB7B8();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_224DAB848();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB7C8();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileReaperScenario(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  v46 = a1;
  sub_224DAB7F8();
  *v19 = ~(a1 >> 6) & 2;
  v19[1] = ~(a1 >> 1) & 2;
  v21 = v47;
  v19[2] = ~(a1 >> 2) & 2;
  v19[3] = ~a1 & 2;
  v19[4] = ~(a1 >> 3) & 2;
  *(v19 + 5) = ~(a1 >> 5) & 2;
  dispatch_group_enter(v20);
  __swift_project_boxed_opaque_existential_1((v21 + 88), *(v21 + 112));
  v53 = v19;
  v22 = v45;
  sub_224C4E30C(v19, v45, type metadata accessor for FileReaperProtectionConfiguration);
  (*(v16 + 56))(v22, 0, 4, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = v20;
  sub_224CCD218(v22, 0, sub_224B32E40, v23);

  sub_224C4E374(v22, type metadata accessor for FileReaperScenario);
  if ((v46 & 0x20) != 0)
  {
    dispatch_group_enter(v24);
    if (qword_281352020 != -1)
    {
      swift_once();
    }

    v25 = v48;
    sub_224DABBC8();
    if (v25)
    {

      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281364DF0);
      v27 = v25;
      v28 = sub_224DAB228();
      v29 = sub_224DAF288();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        v32 = v25;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&dword_224A2F000, v28, v29, "Error removing all database entries: %{public}@", v30, 0xCu);
        sub_224A3311C(v31, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v31, -1, -1);
        MEMORY[0x22AA5EED0](v30, -1, -1);
      }

      else
      {
      }

      v25 = 0;
    }

    else
    {
    }

    dispatch_group_leave(v24);
  }

  else
  {
    v25 = v48;
  }

  sub_224A3796C(v21 + 744, aBlock, &qword_27D6F52F8, &qword_224DBBAC8);
  if (v63)
  {
    v34 = __swift_project_boxed_opaque_existential_1(aBlock, v63);
    __swift_project_boxed_opaque_existential_1((*v34 + 40), *(*v34 + 64));
    sub_224DAAAE8();
    if (v25)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F52F8, &qword_224DBBAC8);
  }

  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v36 = v49;
  v35 = v50;
  v37 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277D851B8], v51);
  v38 = sub_224DAF428();
  (*(v35 + 8))(v36, v37);
  v64 = v52;
  v65 = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v63 = &block_descriptor_22_0;
  v39 = _Block_copy(aBlock);

  v40 = v55;
  sub_224DAB7E8();
  v61 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v41 = v57;
  v42 = v60;
  sub_224DAF788();
  sub_224DAF308();
  _Block_release(v39);

  (*(v59 + 8))(v41, v42);
  (*(v56 + 8))(v40, v58);
  sub_224C4E374(v53, type metadata accessor for FileReaperProtectionConfiguration);

  return result;
}

double sub_224C3FA2C()
{
  sub_224DABB58();
  sub_224DAB928();

  return result;
}

double sub_224C3FA70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52E0, &qword_224DBBAB0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v26 - v3;
  v5 = sub_224DAF6E8();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52E8, &qword_224DBBAB8);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52F0, &qword_224DBBAC0);
  v15 = *(v14 - 8);
  v29 = v14;
  v30 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v26 - v17;
  v20 = v0[62];
  v19 = v0[63];
  __swift_project_boxed_opaque_existential_1(v0 + 59, v20);
  v33 = (*(*(v19 + 8) + 40))(768, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224DAB3E8();

  sub_224DAF6D8();
  v21 = [objc_opt_self() mainRunLoop];
  v33 = v21;
  v22 = sub_224DAF6C8();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_224A3B79C(0, &unk_281350808, 0x277CBEB88);
  sub_224A33088(&unk_2813513A0, &qword_27D6F52E8, &qword_224DBBAB8, MEMORY[0x277CBCC08]);
  sub_224A3B758(&qword_281350818, &unk_281350808, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v23 = v27;
  sub_224DAB468();
  sub_224A3311C(v4, &qword_27D6F52E0, &qword_224DBBAB0);

  (*(v31 + 8))(v8, v32);
  (*(v28 + 8))(v13, v23);
  sub_224A33088(&qword_281351330, &qword_27D6F52F0, &qword_224DBBAC0, MEMORY[0x277CBCCF8]);
  v24 = v29;
  sub_224DAB488();
  (*(v30 + 8))(v18, v24);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

void sub_224C3FF48()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_224DAEDE8();
  [v0 postNotificationName:v1 object:0];
}

void sub_224C3FFE0()
{
  v1 = v0;
  v23 = sub_224DAB7B8();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB7C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB278();
  signal(15, v16);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v17 = sub_224DAF428();
  (*(v12 + 8))(v15, v11);
  sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
  v18 = v17;
  v19 = sub_224DAF458();

  *(v1 + 1008) = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28;
  v21 = _Block_copy(aBlock);
  sub_224AD5C90(ObjectType);
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v21);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v5, v23);
  (*(v7 + 8))(v10, v6);
  if (*(v1 + 1008))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_224DAF498();
    swift_unknownObjectRelease();
  }
}

void *sub_224C4036C()
{
  result = sub_224C4038C();
  off_281352050 = result;
  return result;
}

uint64_t sub_224C4038C()
{
  v0 = sub_224DA9CC8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v70 - v7;
  v72 = sub_224DA0DD8(MEMORY[0x277D84F90]);
  if (qword_281352058 != -1)
  {
    swift_once();
  }

  v9 = qword_281352080;
  v10 = __swift_project_boxed_opaque_existential_1(qword_281352068, qword_281352080);
  v71 = &v70;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v10, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  sub_224DAA068();
  (*(v11 + 8))(v13, v9);
  v14 = *(v1 + 104);
  v14(v5, *MEMORY[0x277CF9F00], v0);
  sub_224C41198(&qword_2813519F0, MEMORY[0x277CF9F10], MEMORY[0x277CF9F18]);
  LOBYTE(v13) = sub_224DAEDD8();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v15(v8, v0);
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = qword_281352080;
    v70 = unk_281352088;
    v20 = __swift_project_boxed_opaque_existential_1(qword_281352068, qword_281352080);
    v71 = &v70;
    v21 = *(v19 - 8);
    MEMORY[0x28223BE20](v20, v20);
    v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v23);
    sub_224DAA068();
    (*(v21 + 8))(v23, v19);
    v14(v5, *MEMORY[0x277CF9F08], v0);
    LOBYTE(v23) = sub_224DA9CB8();
    v15(v5, v0);
    v15(v8, v0);
    if (v23)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v73[3] = &type metadata for FeatureFlags.Widgets;
    v73[4] = sub_224A80FFC();
    LOBYTE(v73[0]) = 12;
    v24 = sub_224DA9C98();
    __swift_destroy_boxed_opaque_existential_1(v73);
    v17 = 3;
    if (v24)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }
  }

  v25 = v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v25;
  sub_224B20DF0(v16, 1, isUniquelyReferenced_nonNull_native);
  v27 = v73[0];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v27;
  sub_224B20DF0(v17, 0, v28);
  v29 = v73[0];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v29;
  sub_224B20DF0(v18, 3, v30);
  v31 = v73[0];
  sub_224DA0DD8(MEMORY[0x277D84F90]);

  if (!*(v31 + 16))
  {
    v35 = 0;
    goto LABEL_57;
  }

  v32 = byte_283828280;
  v33 = sub_224B0B6F0(byte_283828280);
  if ((v34 & 1) == 0)
  {
    v35 = 0;
LABEL_20:
    if (!*(v31 + 16))
    {
      goto LABEL_57;
    }

    goto LABEL_24;
  }

  v35 = *(*(v31 + 56) + 8 * v33);
  if (!v35)
  {
    goto LABEL_20;
  }

  v36 = *(&off_27853F1E8 + v32);
  v37 = *(v36 + 16);
  v38 = (v36 + 32);
  while (v37)
  {
    v39 = *v38++;
    --v37;
    if (v39 == 128)
    {
      goto LABEL_23;
    }
  }

  v35 = 0;
LABEL_23:

  if (*(v31 + 16))
  {
LABEL_24:
    v40 = byte_283828281;
    v41 = sub_224B0B6F0(byte_283828281);
    if ((v42 & 1) != 0 && (v43 = *(*(v31 + 56) + 8 * v41)) != 0)
    {
      v44 = *(&off_27853F1E8 + v40);
      v45 = *(v44 + 16);
      v46 = (v44 + 32);
      while (v45)
      {
        v47 = *v46++;
        --v45;
        if (v47 == 128)
        {

          if ((v43 & ~v35) != 0)
          {
            v48 = v43;
          }

          else
          {
            v48 = 0;
          }

          v35 |= v48;
          goto LABEL_33;
        }
      }

      if (*(v31 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_33:
      if (*(v31 + 16))
      {
LABEL_34:
        v49 = byte_283828282;
        v50 = sub_224B0B6F0(byte_283828282);
        if (v51)
        {
          v52 = *(*(v31 + 56) + 8 * v50);
          if (v52)
          {
            v53 = *(&off_27853F1E8 + v49);
            v54 = *(v53 + 16);
            v55 = (v53 + 32);
            do
            {
              if (!v54)
              {

                goto LABEL_46;
              }

              v56 = *v55++;
              --v54;
            }

            while (v56 != 128);

            if ((v52 & ~v35) != 0)
            {
              v57 = v52;
            }

            else
            {
              v57 = 0;
            }

            v35 |= v57;
          }
        }

LABEL_46:
        if (*(v31 + 16))
        {
          v58 = byte_283828283;
          v59 = sub_224B0B6F0(byte_283828283);
          if (v60)
          {
            v61 = *(*(v31 + 56) + 8 * v59);
            if (v61)
            {
              v62 = *(&off_27853F1E8 + v58);
              v63 = *(v62 + 16);
              v64 = (v62 + 32);
              do
              {
                if (!v63)
                {

                  goto LABEL_57;
                }

                v65 = *v64++;
                --v63;
              }

              while (v65 != 128);

              if ((v61 & ~v35) != 0)
              {
                v66 = v61;
              }

              else
              {
                v66 = 0;
              }

              v35 |= v66;
            }
          }
        }
      }
    }
  }

LABEL_57:
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v31;
  sub_224B20DF0(v35, 2, v67);
  v68 = v73[0];
  sub_224DA0DD8(MEMORY[0x277D84F90]);

  return v68;
}

uint64_t sub_224C40A18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  sub_224A3311C(v0 + 432, &unk_27D6F5050, &unk_224DBAE08);
  __swift_destroy_boxed_opaque_existential_1((v0 + 472));
  __swift_destroy_boxed_opaque_existential_1((v0 + 512));

  __swift_destroy_boxed_opaque_existential_1((v0 + 592));

  __swift_destroy_boxed_opaque_existential_1((v0 + 648));

  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
  sub_224A3311C(v0 + 744, &qword_27D6F52F8, &qword_224DBBAC8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));

  sub_224A3311C(v0 + 840, &unk_27D6F4FB0, &unk_224DBADC8);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 960));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_224C40C28()
{
  sub_224C40A18();

  return swift_deallocClassInstance();
}

void sub_224C40C80(void *a1)
{
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365120);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_224A2F000, v4, v5, "Database corruption detected: %{public}@", v6, 0xCu);
    sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_224DA95F8();
  v25[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v25];

  if (v12)
  {
    v13 = v25[0];
  }

  else
  {
    v14 = v25[0];
    v15 = sub_224DA9528();

    swift_willThrow();
    v16 = v15;
    v17 = sub_224DAB228();
    v18 = sub_224DAF288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_224A2F000, v17, v18, "Failed to delete corrupt database: %{public}@", v19, 0xCu);
      sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    else
    {
    }
  }

  v25[0] = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
  v24 = sub_224DAEE28();
  v25[0] = 0xD00000000000001ELL;
  v25[1] = 0x8000000224DCB5B0;
  MEMORY[0x22AA5D210](v24);

  sub_224DAFB58();
  __break(1u);
}

uint64_t sub_224C40FD0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_224DAF838();
LABEL_9:
    result = sub_224DAF968();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void sub_224C4106C(uint64_t a1)
{
  v3 = *(a1 + qword_2813548D0);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v5 = *v4;
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v4 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v7 = *(v5 + v6);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224B458F8(v5, v3, &off_283833500);
  if (v1)
  {

    os_unfair_lock_unlock(*(v7 + 16));
    __break(1u);

    os_unfair_lock_unlock(*(a1 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v7 + 16));
    v8 = *(a1 + qword_2813548C8);
    if (v8)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
      v10 = *v9;
      v11 = *(*v9 + 24);
      v12 = *(v11 + 16);

      os_unfair_lock_lock(v12);
      sub_224CBFEB8(v10, v8, &off_2838334E8);
      os_unfair_lock_unlock(*(v11 + 16));
    }
  }
}

uint64_t sub_224C41198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224C411E0(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v24[4] = &off_28382A4A8;
  v24[5] = &off_28382A498;
  v24[3] = v6;
  v24[0] = a1;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  *(a3 + 16) = v7;
  v9 = MEMORY[0x277D84F90];
  *(a3 + 64) = 0;
  *(a3 + 72) = v9;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v10 = __swift_project_boxed_opaque_existential_1(v24, v6);
  *(a3 + 48) = v6;
  *(a3 + 56) = &off_28382A4A8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 24));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v10, v6);
  v12 = MEMORY[0x277D85000];
  v13 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x88));
  os_unfair_lock_lock(*(v13 + 16));
  v14 = *(*(a1 + *((*v12 & *a1) + 0xB0)) + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize);
  os_unfair_lock_unlock(*(v13 + 16));
  *(a3 + 88) = v14;
  if (a2)
  {
    *(a3 + 120) = 500000000;
    *(a3 + 96) = 1;
LABEL_9:
    v20 = *(a3 + 48);
    v21 = *(a3 + 56);
    __swift_project_boxed_opaque_existential_1((a3 + 24), v20);
    v22 = *(v21 + 32);

    v22(v23, &off_283836F70, 257, v20, v21);

    __swift_destroy_boxed_opaque_existential_1(v24);
    return;
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v15 = sub_224DA9E38();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (qword_2813516B8 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365108);
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_224A2F000, v17, v18, "Started task queue observer with timeout %{public}llus", v19, 0xCu);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  if (is_mul_ok(v15, 0x3B9ACA00uLL))
  {
    *(a3 + 120) = 1000000000 * v15;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_224C414D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = type metadata accessor for MobileActivityService(0);
  v11 = &off_28382E400;
  *&v9 = a2;
  *(a3 + 64) = [objc_allocWithZone(sub_224DA9B08()) init];
  *(a3 + 72) = xmmword_224DBB870;
  *(a3 + 88) = 0x40AC200000000000;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *(a3 + 96) = v6;
  *(a3 + 16) = a1;
  sub_224A36F98(&v9, a3 + 24);
  return a3;
}

void *sub_224C4159C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v68 = v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v69 = v63 - v7;
  v67 = sub_224DAF318();
  MEMORY[0x28223BE20](v67, v8);
  v66 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAF3C8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v11);
  v64 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v63[2] = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB798();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_224A3B79C(0, &qword_281350AC8, 0x277CBFBF8);
  type metadata accessor for _LocationGraceRegistrySharedMemoryStoreImpl();
  v21 = swift_allocObject();
  v22 = type metadata accessor for LocationGraceRegistry();
  v23 = objc_allocWithZone(MEMORY[0x277CF0CE0]);
  v24 = sub_224DAEDE8();
  v63[1] = v22;
  v25 = [v23 initWithIdentifier:v24 dataClass:swift_getObjCClassFromMetadata()];

  *(v21 + 16) = v25;
  v26 = sub_224A3B79C(0, &qword_281350A90, 0x277CBFC10);
  *v20 = 1;
  (*(v17 + 104))(v20, *MEMORY[0x277D85188], v16);
  type metadata accessor for LocationService(0);
  v27 = swift_allocObject();
  v77[3] = sub_224DAC3C8();
  v77[4] = MEMORY[0x277CF9A38];
  v77[0] = a1;
  v27[7] = 0;
  v28 = OBJC_IVAR____TtC10ChronoCore15LocationService_lock;
  type metadata accessor for UnfairLock();
  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *v30 = 0;
  *(v29 + 16) = v30;
  *(v27 + v28) = v29;
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) = 0;
  v31 = MEMORY[0x277D84F98];
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier) = MEMORY[0x277D84F98];
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending) = 0;
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer) = 0;
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier) = v31;
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor) = 0;
  v32 = OBJC_IVAR____TtC10ChronoCore15LocationService__authPermissionsChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5958, &qword_224DBBE10);
  swift_allocObject();
  *(v27 + v32) = sub_224DAB358();
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher) = 0;
  v33 = OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  swift_allocObject();
  *(v27 + v33) = sub_224DAB358();
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___significantLocationChangedPublisher) = 0;
  v34 = OBJC_IVAR____TtC10ChronoCore15LocationService__visibilityReloadPublisher;
  swift_allocObject();
  *(v27 + v34) = sub_224DAB358();
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___visibilityReloadPublisher) = 0;
  sub_224A3317C(v77, (v27 + 2));
  v27[8] = v21;
  v27[9] = &off_28382F3A8;
  v27[10] = v74;
  v27[11] = &off_2838321F8;
  v27[12] = v26;
  v27[13] = &off_283837920;
  v27[14] = v26;
  v27[15] = &off_28382D648;
  v73 = v17;
  v74 = v16;
  v35 = *(v17 + 16);
  v70 = v20;
  v35(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval, v20, v16);
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_inUseNanosecondsOfGrace) = 900000000000;
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);

  sub_224DAB828();
  (*(v10 + 104))(v64, *MEMORY[0x277D85268], v65);
  v76 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue) = sub_224DAF418();
  v36 = [*(v21 + 16) data];

  v37 = v36;
  if (!v36)
  {
    v38 = sub_224DA0BF0(MEMORY[0x277D84F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = v38;
  }

  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState) = v37;
  v67 = OBJC_IVAR____TtC10ChronoCore15LocationService_lock;
  os_unfair_lock_lock(*(*(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  __swift_project_boxed_opaque_existential_1(v27 + 2, v27[5]);
  v39 = sub_224DAC6B8();
  v40 = OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue;
  v75 = *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  v41 = v75;
  v76 = v39;
  v42 = sub_224DAF358();
  v43 = v68;
  (*(*(v42 - 8) + 56))(v68, 1, 1, v42);
  v44 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v45 = v69;
  sub_224DAB448();
  sub_224A3311C(v43, &qword_27D6F5090, &qword_224DB5C30);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_224C4E508;
  *(v47 + 24) = v46;
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030, MEMORY[0x277CBCD60]);

  v48 = v72;
  v49 = sub_224DAB488();

  (*(v71 + 8))(v45, v48);
  v27[7] = v49;

  sub_224D278CC();
  v50 = v27[14];
  v51 = v27[15];
  v52 = *(v27 + v40);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = v52;

  v55 = objc_allocWithZone(type metadata accessor for _LocationSignificantChangeMonitorImpl());
  v56 = sub_224BA41D4(v50, v51, v54, sub_224C4E510, v53);
  v57 = *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor);
  *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor) = v56;

  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v58 = sub_224DAB258();
  __swift_project_value_buffer(v58, qword_281364D60);
  v59 = sub_224DAB228();
  v60 = sub_224DAF2A8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_224A2F000, v59, v60, "[service] bootstrapped", v61, 2u);
    MEMORY[0x22AA5EED0](v61, -1, -1);
  }

  os_unfair_lock_unlock(*(*(v27 + v67) + 16));
  (*(v73 + 8))(v70, v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return v27;
}

void *sub_224C42080(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v22 = type metadata accessor for ProcessMonitor(0);
  v23 = &off_28382AA58;
  v21[0] = a2;
  v19 = v6;
  v20 = &off_2838352C0;
  v18[0] = a3;
  type metadata accessor for AppAuthorizationMonitor();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v8, v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_224C49218(a1, *v10, *v14, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

void sub_224C42284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v168 = a6;
  v152 = a5;
  v164 = a3;
  v154 = a12;
  v155 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5338, &qword_224DBBAF0);
  v149 = *(v17 - 8);
  v150 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v148 = v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5898, &qword_224DBBDA0);
  v146 = *(v20 - 8);
  v147 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v145 = v132 - v22;
  v23 = sub_224DAF3B8();
  v140 = *(v23 - 8);
  v141 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v139 = v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v143 = *(v26 - 8);
  v144 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v142 = v132 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v161 = v132 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58A0, &qword_224DBBDA8);
  v134 = *(v32 - 8);
  v135 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v133 = v132 - v34;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58A8, &qword_224DBBDB0);
  v137 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v35);
  v136 = v132 - v36;
  v153 = sub_224DAB258();
  v162 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v37);
  v167 = v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_224DAF3C8();
  v163 = *(v165 - 1);
  MEMORY[0x28223BE20](v165, v39);
  v160 = v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_224DAF318();
  MEMORY[0x28223BE20](v159, v41);
  v42 = sub_224DAB848();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v185[3] = sub_224DAC3C8();
  v185[4] = MEMORY[0x277CF9A38];
  v185[0] = a1;
  v184[3] = sub_224DADF58();
  v184[4] = MEMORY[0x277CF9E58];
  v184[0] = a2;
  v166 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
  v132[1] = a4;
  v183[5] = a4;
  v183[3] = sub_224DACE58();
  v183[4] = MEMORY[0x277CF9C38];
  v183[0] = v168;
  v182[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v182[4] = &off_28382A480;
  v182[0] = a7;
  v180 = type metadata accessor for DescriptorService(0);
  v181 = sub_224C41198(&qword_28135A938, type metadata accessor for DescriptorService, &unk_224DC1980);
  v179[0] = a8;
  v178[3] = type metadata accessor for WidgetHostService(0);
  v178[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  v178[0] = a9;
  v177[3] = &type metadata for ArchiveVersionProvider;
  v177[4] = sub_224C4CFF0();
  v44 = swift_allocObject();
  v177[0] = v44;
  v45 = *(a10 + 16);
  *(v44 + 16) = *a10;
  *(v44 + 32) = v45;
  *(v44 + 48) = *(a10 + 32);
  *(v44 + 64) = *(a10 + 48);
  type metadata accessor for MobilePlaceholderService(0);
  v46 = swift_allocObject();
  *(v46 + 4) = 0;
  *(v46 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58B0, &qword_224DBBDB8);
  swift_allocObject();
  *(v46 + 6) = sub_224DAB358();
  v47 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager;
  type metadata accessor for PlaceholderPrecacheManager();
  swift_allocObject();
  *&v46[v47] = sub_224BA94A4();
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__deviceUpdateTask] = 0;
  v48 = MEMORY[0x277D84F90];
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions] = MEMORY[0x277D84F90];
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_environmentSubscriptions] = MEMORY[0x277D84F98];
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors] = 0;
  v49 = MEMORY[0x277D84FA0];
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache] = MEMORY[0x277D84FA0];
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_queuedPrecacheEvents] = v49;
  v50 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  *&v169 = v48;
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v51 = v153;
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v163 + 104))(v160, *MEMORY[0x277D85268], v165);
  v52 = v152;
  v168 = v50;
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue] = sub_224DAF418();
  sub_224A3317C(v184, (v46 + 96));
  v53 = v162 + 16;
  v165 = *(v162 + 16);
  v165(&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v52, v51);
  sub_224A3317C(v179, (v46 + 184));
  sub_224A3317C(v178, (v46 + 224));
  v54 = v164;
  v55 = v166;
  *(v46 + 2) = v164;
  *(v46 + 3) = v55;
  sub_224A3317C(v185, (v46 + 136));
  v56 = sub_224DADFF8();
  v57 = v180;
  v58 = v181;
  v59 = __swift_project_boxed_opaque_existential_1(v179, v180);
  v60 = *(v58 + 40);
  v171 = v57;
  v172 = v60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v169);
  v62 = *(*(v57 - 8) + 16);
  v63 = v57;
  v64 = v54;
  v62(boxed_opaque_existential_1, v59, v63);

  v65 = sub_224DADFE8();
  v66 = MEMORY[0x277CF9E78];
  v67 = &v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver];
  v67[3] = v56;
  v67[4] = v66;
  *v67 = v65;
  sub_224A3317C(v155, (v46 + 56));
  sub_224A3317C(v177, &v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider]);
  sub_224A3796C(v154, &v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_replicator], &qword_27D6F58B8, &qword_224DBBDC0);
  sub_224A3317C(v185, &v169);
  if (qword_2813515F8 != -1)
  {
    swift_once();
  }

  v163 = __swift_project_value_buffer(v51, qword_281364FA0);
  v68 = v167;
  v69 = v165;
  (v165)();
  v70 = v69;
  sub_224A3317C(v182, v176);
  sub_224A3317C(v179, v175);
  sub_224A3317C(v178, v174);
  type metadata accessor for MobilePlaceholderReloadStrategy(0);
  v71 = swift_allocObject();
  sub_224A36F98(v176, v71 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService);
  sub_224A36F98(v175, v71 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService);
  sub_224A36F98(v174, v71 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService);
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  sub_224A36F98(&v169, v71 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager);
  v160 = v71;
  v72 = (v71 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  v73 = v166;
  *v72 = v64;
  v72[1] = v73;
  v74 = *(v162 + 32);
  v74(v71 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v68, v51);
  v159 = v53;
  v70(v68, v52, v51);
  type metadata accessor for MobilePlaceholderReloadConfigurationPolicy(0);
  v75 = swift_allocObject();
  v76 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v75 + v76) = v77;
  v78 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  v79 = MEMORY[0x277D84F90];
  *(v75 + v78) = sub_224DA0EB8(MEMORY[0x277D84F90]);
  v80 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
  *(v75 + v80) = sub_224DA0BF0(v79);
  v81 = v167;
  v74(v75 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy_logger, v167, v51);
  *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy] = v75;
  sub_224DA9E78();

  sub_224DA9E68();
  LODWORD(v166) = sub_224DA9D38();

  sub_224DAD778();
  *&v176[0] = v160;
  *&v175[0] = v75;
  v165(v81, v163, v51);
  sub_224A3317C(v183, &v169);
  sub_224C41198(&qword_2813535D0, type metadata accessor for MobilePlaceholderReloadStrategy, &unk_224DB9444);
  sub_224C41198(&qword_281352328, type metadata accessor for MobilePlaceholderReloadConfigurationPolicy, &unk_224DC002C);
  v138 = v75;

  sub_224DAD758();
  sub_224DAD768();
  *(v46 + 22) = sub_224DAD748();
  v82 = sub_224D57C00(&unk_283828288);
  v83 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache;
  swift_beginAccess();
  *&v46[v83] = v82;

  __swift_project_boxed_opaque_existential_1(v46 + 23, *(v46 + 26));
  *&v169 = sub_224DAD8B8();
  v163 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue;
  *&v175[0] = *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue];
  v84 = *&v175[0];
  v85 = sub_224DAF358();
  v86 = *(v85 - 8);
  v166 = *(v86 + 56);
  v164 = v86 + 56;
  v87 = v161;
  v158 = v85;
  v166();
  v88 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
  v159 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60, MEMORY[0x277CBCD90]);
  v157 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v89 = v133;
  sub_224DAB448();
  v90 = v87;
  sub_224A3311C(v87, &qword_27D6F5090, &qword_224DB5C30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  v151 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_281351270, &qword_27D6F58A0, &qword_224DBBDA8, MEMORY[0x277CBCD60]);
  v91 = v135;
  v92 = v136;
  sub_224DAB3E8();
  (*(v134 + 8))(v89, v91);
  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351368, &qword_27D6F58A8, &qword_224DBBDB0, MEMORY[0x277CBCC08]);

  v93 = v156;
  sub_224DAB488();

  (*(v137 + 8))(v92, v93);
  v156 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions;
  swift_beginAccess();
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v167 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
  sub_224DAB318();
  swift_endAccess();

  v94 = *(v46 + 31);
  v95 = *(v46 + 32);
  __swift_project_boxed_opaque_existential_1(v46 + 28, v94);
  *&v169 = (*(v95 + 16))(768, v94, v95);
  v96 = v139;
  sub_224DAF378();
  *&v175[0] = *&v46[v163];
  v97 = *&v175[0];
  v98 = v90;
  (v166)(v90, 1, 1, v85);
  v99 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v159);
  v100 = v142;
  sub_224DAB468();
  sub_224A3311C(v98, &qword_27D6F5090, &qword_224DB5C30);
  (*(v140 + 8))(v96, v141);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60, MEMORY[0x277CBCCF8]);
  v101 = v144;
  sub_224DAB488();

  (*(v143 + 8))(v100, v101);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v102 = swift_allocObject();
  swift_weakInit();
  v103 = v160;
  v104 = *(v160 + 2);
  v105 = *(v160 + 3);
  *(v160 + 2) = sub_224C4E164;
  *(v103 + 3) = v102;

  sub_224A3D418(v104, v105);

  *&v169 = sub_224DAC048();
  v106 = v163;
  *&v175[0] = *&v46[v163];
  v107 = *&v175[0];
  v108 = v161;
  (v166)(v161, 1, 1, v158);
  v109 = v107;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58C0, &qword_224DBBDC8);
  v144 = sub_224A33088(&qword_281350FF8, &unk_27D6F58C0, &qword_224DBBDC8, v159);
  v110 = v145;
  sub_224DAB448();
  sub_224A3311C(v108, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  v142 = sub_224A33088(&qword_281351200, &qword_27D6F5898, &qword_224DBBDA0, v151);
  v111 = v147;
  sub_224DAB488();

  v146 = *(v146 + 8);
  (v146)(v110, v111);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  *&v169 = sub_224DAC078();
  *&v175[0] = *&v46[v106];
  v112 = *&v175[0];
  v113 = v161;
  (v166)(v161, 1, 1, v158);
  v114 = v112;
  sub_224DAB448();
  sub_224A3311C(v113, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  (v146)(v110, v111);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  sub_224DAD2E8();
  *&v169 = sub_224DAD6D8();
  *&v175[0] = *&v46[v163];
  v115 = *&v175[0];
  (v166)(v113, 1, 1, v158);
  v116 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
  sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408, v159);
  v117 = v148;
  sub_224DAB448();
  sub_224A3311C(v113, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351248, &unk_27D6F5338, &qword_224DBBAF0, v151);
  v118 = v150;
  sub_224DAB488();

  (*(v149 + 8))(v117, v118);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v119 = *(v46 + 31);
  v120 = *(v46 + 32);
  __swift_project_boxed_opaque_existential_1(v46 + 28, v119);
  (*(v120 + 32))(&v169, 768, v119, v120);
  if (!v173)
  {

    sub_224A3311C(v154, &qword_27D6F58B8, &qword_224DBBDC0);
    __swift_destroy_boxed_opaque_existential_1(v155);
    (*(v162 + 8))(v152, v153);
    __swift_destroy_boxed_opaque_existential_1(v177);
    __swift_destroy_boxed_opaque_existential_1(v178);
    __swift_destroy_boxed_opaque_existential_1(v182);
    __swift_destroy_boxed_opaque_existential_1(v183);
    __swift_destroy_boxed_opaque_existential_1(v184);
    __swift_destroy_boxed_opaque_existential_1(v185);
    sub_224A3311C(&v169, &qword_27D6F50E0, &qword_224DB41A0);
    v121 = 0;
LABEL_9:
    v127 = 0;
    goto LABEL_10;
  }

  v121 = *(v173 + 16);
  sub_224A699F0(&v169);
  if (!v121)
  {

    sub_224A3311C(v154, &qword_27D6F58B8, &qword_224DBBDC0);
    __swift_destroy_boxed_opaque_existential_1(v155);
    (*(v162 + 8))(v152, v153);
    __swift_destroy_boxed_opaque_existential_1(v177);
    __swift_destroy_boxed_opaque_existential_1(v178);
    __swift_destroy_boxed_opaque_existential_1(v182);
    __swift_destroy_boxed_opaque_existential_1(v183);
    __swift_destroy_boxed_opaque_existential_1(v184);
    __swift_destroy_boxed_opaque_existential_1(v185);
    goto LABEL_9;
  }

  v122 = *&v46[v163];
  v123 = swift_allocObject();
  v121 = sub_224C4E18C;
  *(v123 + 16) = sub_224C4E18C;
  *(v123 + 24) = v46;
  v172 = sub_224BC4B74;
  v173 = v123;
  *&v169 = MEMORY[0x277D85DD0];
  *(&v169 + 1) = 1107296256;
  v170 = sub_224A9B6F8;
  v171 = &block_descriptor_299;
  v124 = _Block_copy(&v169);

  v125 = v122;

  dispatch_sync(v125, v124);

  _Block_release(v124);

  sub_224A3311C(v154, &qword_27D6F58B8, &qword_224DBBDC0);
  __swift_destroy_boxed_opaque_existential_1(v155);
  (*(v162 + 8))(v152, v153);
  __swift_destroy_boxed_opaque_existential_1(v177);
  __swift_destroy_boxed_opaque_existential_1(v178);
  __swift_destroy_boxed_opaque_existential_1(v182);
  __swift_destroy_boxed_opaque_existential_1(v183);
  __swift_destroy_boxed_opaque_existential_1(v184);
  __swift_destroy_boxed_opaque_existential_1(v185);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v127 = v46;
LABEL_10:
    v128 = *&v46[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager];
    v129 = swift_allocObject();
    swift_weakInit();

    v130 = *(v128 + 48);
    v131 = *(v128 + 56);
    *(v128 + 48) = sub_224C4E184;
    *(v128 + 56) = v129;
    swift_retain_n();
    sub_224A3D418(v130, v131);

    __swift_destroy_boxed_opaque_existential_1(v179);

    sub_224A3D418(v121, v127);
    return;
  }

  __break(1u);
}

uint64_t sub_224C43E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = sub_224DAF3C8();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v10);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_224DAF318();
  MEMORY[0x28223BE20](v47, v12);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = type metadata accessor for APSPushConnectionFactory();
  v64[3] = v16;
  v64[4] = &off_283832808;
  v64[0] = a1;
  v62 = type metadata accessor for PersistentPushSubscriptionStore();
  v63 = &off_283830CC8;
  *&v61 = a2;
  v59 = type metadata accessor for PersistentPublicTokenStore();
  v60 = &off_283828DF8;
  *&v58 = a3;
  v56 = type metadata accessor for PersistentPushTokenStore();
  v57 = &off_283833730;
  *&v55 = a4;
  v17 = type metadata accessor for SimpleWorkScheduler();
  v54 = &off_28382F7C0;
  v53 = v17;
  v52[0] = a5;
  type metadata accessor for PushService();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v64, v16);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (&v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v21;
  v28 = *v25;
  *(v18 + 96) = v16;
  *(v18 + 104) = &off_283832808;
  *(v18 + 72) = v27;
  *(v18 + 256) = v17;
  *(v18 + 264) = &off_28382F7C0;
  *(v18 + 232) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5880, &qword_224DB3208);
  swift_allocObject();
  *(v18 + 16) = sub_224DAB358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A0, &qword_224DB3210);
  swift_allocObject();
  *(v18 + 24) = sub_224DAB358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5890, &qword_224DB3200);
  swift_allocObject();
  *(v18 + 32) = sub_224DAB358();
  v44 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v43 = "focusConfigurationChanged";
  sub_224DAB7E8();
  v51 = MEMORY[0x277D84F90];
  v46 = sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v42 = sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  v41 = v29;
  sub_224DAF788();
  v30 = *MEMORY[0x277D85260];
  v31 = v50 + 104;
  v39 = *(v50 + 104);
  v40 = v30;
  v32 = v49;
  v39(v48, v30, v49);
  v50 = v31;
  *(v18 + 40) = sub_224DAF418();
  v43 = "core.PushNotifications.internal";
  sub_224DAB7E8();
  v51 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v33 = v48;
  v34 = v32;
  v35 = v39;
  v39(v48, v30, v34);
  *(v18 + 48) = sub_224DAF418();
  sub_224DAB7E8();
  v51 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v35(v33, v40, v49);
  *(v18 + 56) = sub_224DAF418();
  *(v18 + 64) = sub_224DA0110(MEMORY[0x277D84F90]);
  *(v18 + 272) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  v36 = MEMORY[0x277D84FA0];
  *(v18 + 320) = 0;
  *(v18 + 328) = v36;
  sub_224A36F98(&v61, v18 + 112);
  sub_224A36F98(&v58, v18 + 152);
  sub_224A36F98(&v55, v18 + 192);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v18;
}

uint64_t sub_224C445B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v37 - v11;
  v45[3] = type metadata accessor for ProcessMonitor(0);
  v45[4] = &off_28382AA58;
  v45[0] = a1;
  sub_224A3317C(v45, v44);
  v37[0] = a2;
  sub_224A3796C(a2, v43, &qword_27D6F5428, &qword_224DBBB50);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  if (qword_2813514C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2813514D0);
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5438, &qword_224DBBB60);
  v15 = swift_allocObject();
  v16 = v15 + qword_2813651F0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v17 = qword_2813548C0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *(v15 + v17) = v18;
  v20 = MEMORY[0x277D84F98];
  *(v15 + qword_2813549E8) = MEMORY[0x277D84F98];
  *(v15 + qword_2813549E0) = 0;
  *v19 = 0;
  *(v15 + 16) = xmmword_224DBB880;
  v14((v15 + qword_2813548B8), v12, v4);
  sub_224A3796C(v43, &v38, &qword_27D6F5428, &qword_224DBBB50);
  if (v39)
  {
    sub_224A36F98(&v38, v40);
    sub_224A36F98(v40, &v38);
    v14(v9, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5878, &qword_224DBBD98);
    v21 = swift_allocObject();
    *(v21 + 56) = v20;
    sub_224A36F98(&v38, v21 + 16);
    *(v21 + qword_27D6F6238) = 0x4072C00000000000;
    (*(v5 + 32))(v21 + qword_27D6F6230, v9, v4);
    *(v15 + qword_2813549F0) = v21;
  }

  else
  {
    sub_224A3311C(&v38, &qword_27D6F5428, &qword_224DBBB50);
    *(v15 + qword_2813549F0) = 0;
  }

  sub_224A3317C(v44, v15 + qword_281354958);
  sub_224A3317C(v44, v40);
  v22 = *(v15 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5868, &qword_224DBBD88);
  v23 = swift_allocObject();
  v23[8] = 0;
  v23[9] = 0;
  v23[2] = v22;
  sub_224A36F98(v40, (v23 + 3));
  *(v15 + qword_2813548D0) = v23;
  sub_224A3796C(v41, &v38, &qword_27D6F5770, &qword_224DBBCF8);
  if (v39)
  {
    sub_224A36F98(&v38, v40);
    sub_224A36F98(v40, &v38);
    v14(v9, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5870, &qword_224DBBD90);
    v24 = swift_allocObject();
    v25 = (v24 + qword_27D6F71D8);
    *v25 = 0;
    v25[1] = 0;
    sub_224A36F98(&v38, v24 + 16);
    *(v24 + 56) = v23;
    (*(v5 + 32))(v24 + qword_27D6F6228, v9, v4);
    *(v15 + qword_2813548C8) = v24;
  }

  else
  {

    sub_224A3311C(&v38, &qword_27D6F5770, &qword_224DBBCF8);
    *(v15 + qword_2813548C8) = 0;
  }

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v15 + qword_2813548D0);
  v28 = *(v27 + 64);
  v29 = *(v27 + 72);
  *(v27 + 64) = sub_224AA30A8;
  *(v27 + 72) = v26;

  sub_224A3D418(v28, v29);

  v30 = *(v15 + qword_2813548C8);
  if (v30)
  {
    v31 = (v30 + qword_27D6F71D8);
    v32 = *(v30 + qword_27D6F71D8);
    v33 = *(v30 + qword_27D6F71D8 + 8);
    *v31 = sub_224AA30A8;
    v31[1] = v26;

    sub_224A3D418(v32, v33);
  }

  v34 = *(v15 + qword_2813548C0);
  v35 = *(v34 + 16);

  os_unfair_lock_lock(v35);
  sub_224C4106C(v15);
  os_unfair_lock_unlock(*(v34 + 16));

  sub_224A3311C(v37[0], &qword_27D6F5428, &qword_224DBBB50);
  (*(v5 + 8))(v12, v4);
  sub_224A3311C(v41, &qword_27D6F5770, &qword_224DBBCF8);
  sub_224A3311C(v43, &qword_27D6F5428, &qword_224DBBB50);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v15;
}

uint64_t sub_224C44C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  v52[3] = type metadata accessor for ProcessMonitor(0);
  v52[4] = &off_28382AA58;
  v52[0] = a1;
  v51[3] = type metadata accessor for ControlVisibilityMonitor();
  v51[4] = &off_283832620;
  v51[0] = a2;
  sub_224A3317C(v52, v50);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_224A3317C(v51, v47);
  if (qword_2813514E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_2813514F0);
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5528, &qword_224DBBBC0);
  v14 = swift_allocObject();
  v15 = v14 + qword_2813651F0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = qword_2813548C0;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *(v14 + v16) = v17;
  v19 = MEMORY[0x277D84F98];
  *(v14 + qword_2813549E8) = MEMORY[0x277D84F98];
  *(v14 + qword_2813549E0) = 0;
  *v18 = 0;
  *(v14 + 16) = xmmword_224DBB890;
  v13((v14 + qword_2813548B8), v11, v4);
  sub_224A3796C(v48, &v44, &qword_27D6F5428, &qword_224DBBB50);
  v42 = v11;
  if (v45)
  {
    v20 = v11;
    sub_224A36F98(&v44, v46);
    sub_224A36F98(v46, &v44);
    v21 = v43;
    v13(v43, v20, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5780, &qword_224DBBD08);
    v22 = swift_allocObject();
    *(v22 + 56) = v19;
    sub_224A36F98(&v44, v22 + 16);
    *(v22 + qword_27D6F6238) = 0;
    (*(v5 + 32))(v22 + qword_27D6F6230, v21, v4);
    *(v14 + qword_2813549F0) = v22;
  }

  else
  {
    sub_224A3311C(&v44, &qword_27D6F5428, &qword_224DBBB50);
    *(v14 + qword_2813549F0) = 0;
  }

  sub_224A3317C(v50, v14 + qword_281354958);
  sub_224A3317C(v50, v46);
  v23 = *(v14 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5768, &qword_224DBBCF0);
  v24 = swift_allocObject();
  v24[8] = 0;
  v24[9] = 0;
  v24[2] = v23;
  sub_224A36F98(v46, (v24 + 3));
  v25 = &unk_281354000;
  *(v14 + qword_2813548D0) = v24;
  sub_224A3796C(v47, &v44, &qword_27D6F5770, &qword_224DBBCF8);
  if (v45)
  {
    sub_224A36F98(&v44, v46);
    sub_224A36F98(v46, &v44);
    v27 = v42;
    v26 = v43;
    v13(v43, v42, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5778, &qword_224DBBD00);
    v28 = swift_allocObject();
    v29 = (v28 + qword_27D6F71D8);
    *v29 = 0;
    v29[1] = 0;
    sub_224A36F98(&v44, v28 + 16);
    *(v28 + 56) = v24;
    v30 = v26;
    v25 = &unk_281354000;
    (*(v5 + 32))(v28 + qword_27D6F6228, v30, v4);
    *(v14 + qword_2813548C8) = v28;
  }

  else
  {

    sub_224A3311C(&v44, &qword_27D6F5770, &qword_224DBBCF8);
    *(v14 + qword_2813548C8) = 0;
    v27 = v42;
  }

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = *(v14 + v25[282]);
  v33 = *(v32 + 64);
  v34 = *(v32 + 72);
  *(v32 + 64) = sub_224AA2B38;
  *(v32 + 72) = v31;

  sub_224A3D418(v33, v34);

  v35 = *(v14 + qword_2813548C8);
  if (v35)
  {
    v36 = (v35 + qword_27D6F71D8);
    v37 = *(v35 + qword_27D6F71D8);
    v38 = *(v35 + qword_27D6F71D8 + 8);
    *v36 = sub_224AA2B38;
    v36[1] = v31;

    sub_224A3D418(v37, v38);
  }

  v39 = *(v14 + qword_2813548C0);
  v40 = *(v39 + 16);

  os_unfair_lock_lock(v40);
  sub_224C4106C(v14);
  os_unfair_lock_unlock(*(v39 + 16));

  (*(v5 + 8))(v27, v4);
  sub_224A3311C(v47, &qword_27D6F5770, &qword_224DBBCF8);
  sub_224A3311C(v48, &qword_27D6F5428, &qword_224DBBB50);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v14;
}

void *sub_224C45284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = sub_224DAAAD8();
  v23 = MEMORY[0x277D46520];
  *&v21 = a1;
  v8 = type metadata accessor for StalenessService(0);
  v20[3] = v8;
  v20[4] = &off_283837478;
  v20[0] = a2;
  v18 = type metadata accessor for MobileTimelineService(0);
  v19 = sub_224C41198(&unk_2813580C0, type metadata accessor for MobileTimelineService, &unk_224DC2E68);
  *&v17 = a3;
  type metadata accessor for DeviceService();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
  MEMORY[0x28223BE20](v10, v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v9[10] = v8;
  v9[11] = &off_283837478;
  v9[7] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  v9[18] = sub_224DAB358();
  v9[19] = 0;
  sub_224A36F98(&v21, (v9 + 2));
  sub_224A36F98(&v17, (v9 + 12));
  v9[17] = a4;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v9;
}

uint64_t sub_224C45450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = type metadata accessor for LiveControlService(0);
  v25 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
  v23[0] = a1;
  v21 = type metadata accessor for PushService();
  v22 = &off_283828B40;
  v20[0] = a4;
  v8 = objc_allocWithZone(type metadata accessor for ControlCenterServer());
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v9, v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_224C45854(*v11, a2, a3, *v15, v8);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_224C45664(void *a1, __int16 a2, uint64_t a3)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v17[4] = &off_28382A4A8;
  v17[0] = a1;
  *(a3 + 24) = 0;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *(a3 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  *(a3 + 80) = sub_224DAB358();
  *(a3 + 16) = a2 & 1;
  *(a3 + 17) = HIBYTE(a2) & 1;
  sub_224A3317C(v17, a3 + 40);
  v8 = *(a3 + 64);
  v9 = *(a3 + 72);
  __swift_project_boxed_opaque_existential_1((a3 + 40), v8);
  v10 = *(v9 + 32);

  v10(v11, &off_28382DBB8, a2 & 0x101, v8, v9);

  v12 = *((*MEMORY[0x277D85000] & *a1) + 0x88);
  os_unfair_lock_assert_not_owner(*(*(a1 + v12) + 16));
  v13 = *(a1 + v12);
  os_unfair_lock_lock(*(v13 + 16));
  v14 = sub_224C270E4(a1);
  os_unfair_lock_unlock(*(v13 + 16));
  v15 = sub_224AE93E8(v14);

  swift_beginAccess();
  *(a3 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(v17);
  return a3;
}

void sub_224C45854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v45[3] = type metadata accessor for LiveControlService(0);
  v45[4] = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
  v45[0] = a1;
  v44[3] = type metadata accessor for PushService();
  v44[4] = &off_283828B40;
  v44[0] = a4;
  v10 = OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener;
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener] = 0;
  v11 = MEMORY[0x277D84FA0];
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__subscriptions] = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  *&a5[v12] = v13;
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock_clients] = v11;
  sub_224A3317C(v45, aBlock);
  sub_224A3317C(v44, v43);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v39);
  MEMORY[0x28223BE20](v15, v15);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v43, v43[3]);
  MEMORY[0x28223BE20](v19, v19);
  v21 = &v36[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21);
  v23 = sub_224C45CC8(*v17, a2, a3, *v21);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__services] = v23;
  v24 = objc_opt_self();
  v25 = sub_224DAEDE8();
  v26 = [v24 serialQueueTargetingSharedWorkloop:v25 withQoS:33];

  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue] = v26;
  v27 = *&a5[v10];
  *&a5[v10] = 0;

  v28 = type metadata accessor for ControlCenterServer();
  v42.receiver = a5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, sel_init);
  v37 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_224C4E074;
  *(v30 + 24) = v36;
  v40 = sub_224A867F4;
  v41 = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  v39 = &block_descriptor_249;
  v31 = _Block_copy(aBlock);
  v32 = objc_opt_self();
  v33 = v29;

  v34 = [v32 listenerWithConfigurator_];
  _Block_release(v31);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    v35 = *&v33[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener];
    *&v33[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener] = v34;
  }
}

void *sub_224C45CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_224DAC3C8();
  v32 = MEMORY[0x277CF9A38];
  *&v30 = a2;
  v28 = type metadata accessor for ControlHostService(0);
  v29 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
  *&v27 = a3;
  v8 = type metadata accessor for LiveControlService(0);
  v26[3] = v8;
  v9 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
  v26[4] = v9;
  v26[0] = a1;
  v10 = type metadata accessor for PushService();
  v24 = v10;
  v25 = &off_283828B40;
  v23[0] = a4;
  type metadata accessor for _ControlCenterServices();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  v21 = *v18;
  v11[5] = v8;
  v11[6] = v9;
  v11[2] = v20;
  v11[20] = v10;
  v11[21] = &off_283828B40;
  v11[17] = v21;
  sub_224A36F98(&v30, (v11 + 7));
  sub_224A36F98(&v27, (v11 + 12));
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v11;
}

void *sub_224C45F68(uint64_t a1, void *a2)
{
  v7[3] = type metadata accessor for WidgetHostService(0);
  v7[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  v7[0] = a1;
  a2[7] = MEMORY[0x277D84FA0];
  a2[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5760, &qword_224DBBCE8);
  swift_allocObject();
  a2[9] = sub_224DAB388();
  sub_224A3317C(v7, (a2 + 2));
  v4 = a2[5];
  v5 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v4);
  (*(*(v5 + 8) + 40))(256, v4);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v7);
  return a2;
}

char *sub_224C46164(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *, uint64_t, uint64_t), char *a13)
{
  v145 = a8;
  v138 = a7;
  v133 = a6;
  v131 = a5;
  v126 = a2;
  v127 = a4;
  v150 = a11;
  v151 = a12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5790, &qword_224DBBD10);
  v143 = *(v15 - 8);
  v144 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v142 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5798, &qword_224DBBD18);
  v140 = *(v18 - 8);
  v141 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v139 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v149 = &v123 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v135 = *(v24 - 8);
  v136 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v134 = &v123 - v26;
  v152 = sub_224DAF3C8();
  v148 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v27);
  v137 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_224DAF318();
  MEMORY[0x28223BE20](v129, v29);
  v130 = (&v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_224DAB848();
  MEMORY[0x28223BE20](v31 - 8, v32);
  v128 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DAB258();
  v35 = *(v34 - 8);
  v146 = v34;
  v147 = v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v132 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v123 - v40;
  v124 = sub_224DAB218();
  v42 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v43);
  v45 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170[3] = type metadata accessor for DescriptorService(0);
  v170[4] = sub_224C41198(&qword_28135A950, type metadata accessor for DescriptorService, &unk_224DC18B0);
  v170[0] = a1;
  v169[3] = sub_224DAC3C8();
  v169[4] = MEMORY[0x277CF9A38];
  v169[0] = v126;
  v46 = sub_224DACE88();
  v168[3] = v46;
  v168[4] = MEMORY[0x277CF9C40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v168);
  (*(*(v46 - 8) + 32))(boxed_opaque_existential_1, v127, v46);
  v167[3] = sub_224DAD2E8();
  v167[4] = MEMORY[0x277CF9C88];
  v167[0] = v131;
  v48 = sub_224DACE58();
  v166[4] = MEMORY[0x277CF9C38];
  v166[3] = v48;
  v166[0] = v145;
  v49 = type metadata accessor for RemoteActivitySubscriptionCache();
  v165[4] = &off_283831828;
  v165[5] = &off_2838317F0;
  v165[6] = &off_283831818;
  v165[3] = v49;
  v165[0] = a9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v164[4] = &off_28382A480;
  v164[3] = v50;
  v164[0] = a10;
  v51 = type metadata accessor for InteractionService();
  v163[4] = &off_28382CD80;
  v163[3] = v51;
  v163[0] = v151;
  *(a13 + 12) = 0;
  *(a13 + 13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C48, &unk_224DBA3B0);
  swift_allocObject();
  *(a13 + 14) = sub_224DAB358();
  *(a13 + 15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A0, &qword_224DBA428);
  swift_allocObject();
  v52 = sub_224DAB358();
  *(a13 + 18) = 0;
  v53 = MEMORY[0x277D84F90];
  *(a13 + 16) = v52;
  *(a13 + 17) = 0;
  v54 = MEMORY[0x277D84F98];
  *(a13 + 34) = v53;
  *(a13 + 35) = v54;
  *(a13 + 36) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A8, &qword_224DBBD20);
  v55 = swift_allocObject();
  *(v55 + 32) = 0;
  *(v55 + 16) = 0;
  *(v55 + 24) = v54;
  *(a13 + 43) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5450, &qword_224DBBB70);
  *(a13 + 45) = sub_224DADDF8();
  *&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_reloadSubscriptions] = v54;
  v56 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *&a13[v56] = v57;
  *&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock_remoteEntries] = v54;
  sub_224A3317C(v170, (a13 + 232));
  sub_224A3317C(v169, (a13 + 296));
  v145 = a3;
  sub_224A3317C(a3, (a13 + 192));
  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v58 = v146;
  v127 = __swift_project_value_buffer(v146, qword_281364DA8);
  v59 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v61 = v147 + 16;
  v60 = *(v147 + 16);
  v151 = v60;
  v60(&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger], v127, v58);
  v125 = v41;
  v60(v41, &a13[v59], v58);
  sub_224DAB208();
  (*(v42 + 32))(&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_signposter], v45, v124);
  sub_224A3317C(v168, (a13 + 16));
  sub_224A3317C(v167, &a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor]);
  v62 = sub_224DA9BD8();
  v63 = sub_224DA9BC8();
  v64 = MEMORY[0x277CF9848];
  v131 = v62;
  *(a13 + 22) = v62;
  *(a13 + 23) = v64;
  *(a13 + 19) = v63;
  sub_224BBF304(v165, &a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore]);
  v65 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v126 = "controlCenterXPCServer";
  sub_224DAB7E8();
  *&v160 = v53;
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  v66 = v151;
  sub_224DAF788();
  (*(v148 + 104))(v137, *MEMORY[0x277D85260], v152);
  v148 = v65;
  *&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue] = sub_224DAF418();
  v67 = v150;
  sub_224A3796C(v150, &a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider], &unk_27D6F57B0, qword_224DB7B48);
  sub_224A3317C(v163, (a13 + 56));
  sub_224DAC8C8();
  v68 = v125;
  v69 = v146;
  v66(v125, v127, v146);
  sub_224A3317C((a13 + 152), &v160);
  v70 = v68;
  v71 = sub_224DAC898();
  *(a13 + 44) = v71;
  v72 = objc_allocWithZone(sub_224DA9B88());

  v73 = [v72 init];
  *&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteSubscriptionPreferencesListener] = v73;
  sub_224A3317C(v169, &v160);
  sub_224A3317C(v168, v159);
  sub_224A3796C(v67, v158, &unk_27D6F57B0, qword_224DB7B48);
  v74 = qword_281351670;
  v152 = v71;

  v137 = v73;
  v75 = v70;
  if (v74 != -1)
  {
    swift_once();
  }

  v129 = __swift_project_value_buffer(v69, qword_281365090);
  v66(v70, v129, v69);
  sub_224A3317C(v164, v157);
  v130 = type metadata accessor for MobileActivityReloadStrategy(0);
  v76 = swift_allocObject();
  sub_224A3317C(v157, v76 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService);
  sub_224A3317C(&v160, v156);
  sub_224A3317C(v159, v155);
  sub_224A3796C(v158, v153, &unk_27D6F57B0, qword_224DB7B48);
  v77 = v66;
  v78 = v132;
  v77(v132, v75, v69);
  *(v76 + 16) = 0u;
  *(v76 + 32) = 0u;
  v79 = [objc_opt_self() megabytes];
  v123 = v61;
  sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
  sub_224DA9348();
  __swift_destroy_boxed_opaque_existential_1(v157);
  v80 = v147;
  (*(v147 + 8))(v75, v69);
  sub_224A3311C(v158, &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v159);
  __swift_destroy_boxed_opaque_existential_1(&v160);
  sub_224A36F98(v156, v76 + 88);
  sub_224A36F98(v155, v76 + 128);
  *(v76 + 168) = v152;
  v81 = v153[1];
  *(v76 + 48) = v153[0];
  *(v76 + 64) = v81;
  *(v76 + 80) = v154;
  v82 = *(v80 + 32);
  v82(v76 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v78, v69);
  v83 = v129;
  v151(v75, v129, v69);
  type metadata accessor for MobileActivityReloadConfigurationPolicy(0);
  v84 = swift_allocObject();
  v82(v84 + OBJC_IVAR____TtC10ChronoCore39MobileActivityReloadConfigurationPolicy_logger, v75, v69);
  *(a13 + 46) = v84;
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9D98();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57C0, &qword_224DBBD28);
  v159[0] = v76;
  v158[0] = *(a13 + 46);
  v151(v75, v83, v69);
  sub_224A3317C(v166, &v160);
  sub_224C41198(&qword_281354138, type metadata accessor for MobileActivityReloadStrategy, &unk_224DB816C);
  sub_224C41198(&qword_281352650, type metadata accessor for MobileActivityReloadConfigurationPolicy, &unk_224DB7BD8);

  *(a13 + 42) = sub_224DAD268();
  v85 = type metadata accessor for ActivityController();
  v86 = swift_allocObject();

  *(v86 + 16) = sub_224DA9BC8();
  v161 = v85;
  v162 = &off_28382C8E8;
  *&v160 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57C8, &qword_224DBBD30);
  v88 = swift_allocObject();
  sub_224A36F98(&v160, v88 + 16);
  v161 = v87;
  v162 = sub_224A33088(qword_281352D40, &unk_27D6F57C8, &qword_224DBBD30, &unk_224DB7A88);
  *&v160 = v88;
  sub_224DAC098();

  sub_224DAD298();

  v89 = *(v76 + 32);
  v90 = *(v76 + 40);
  *(v76 + 32) = sub_224C4E0A4;
  *(v76 + 40) = a13;

  sub_224A3D418(v89, v90);
  v91 = *(v76 + 16);
  v92 = *(v76 + 24);
  *(v76 + 16) = sub_224C4E0AC;
  *(v76 + 24) = a13;
  v128 = v76;

  sub_224A3D418(v91, v92);

  __swift_project_boxed_opaque_existential_1(a13 + 37, *(a13 + 40));
  *&v160 = sub_224DAC698();
  v133 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue;
  v159[0] = *&a13[OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue];
  v93 = v159[0];
  v131 = sub_224DAF358();
  v94 = *(v131 - 8);
  v130 = *(v94 + 56);
  v132 = (v94 + 56);
  v95 = v149;
  v130();
  v96 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v97 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  v129 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v98 = v134;
  sub_224DAB448();
  sub_224A3311C(v95, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  v127 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, MEMORY[0x277CBCD60]);

  v99 = v136;
  sub_224DAB488();

  (*(v135 + 8))(v98, v99);
  swift_beginAccess();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v101 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
  v102 = v100;
  sub_224DAB318();
  swift_endAccess();

  v103 = sub_224DAC048();

  *&v160 = v103;
  swift_allocObject();
  swift_weakInit();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57D8, &qword_224DBBD38);
  v126 = v97;
  v146 = sub_224A33088(&unk_281351130, &unk_27D6F57D8, &qword_224DBBD38, v97);
  v147 = v104;
  sub_224DAB488();

  swift_beginAccess();
  v151 = v102;
  sub_224DAB318();
  swift_endAccess();

  v105 = sub_224DAC078();

  *&v160 = v105;
  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  *&v160 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57E8, &qword_224DBBD40);
  sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80, v97);
  sub_224A33088(&unk_281350BD0, &qword_27D6F57E8, &qword_224DBBD40, MEMORY[0x277D83970]);
  v106 = v139;
  sub_224DAB298();
  v107 = swift_allocObject();
  swift_weakInit();
  v108 = swift_allocObject();
  *(v108 + 16) = sub_224C4E0CC;
  *(v108 + 24) = v107;
  sub_224A33088(&qword_281351308, &qword_27D6F5798, &qword_224DBBD18, MEMORY[0x277CBCD48]);
  v109 = v141;
  sub_224DAB488();

  (*(v140 + 8))(v106, v109);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v110 = sub_224DAC048();

  *&v160 = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = v152;
  *(v111 + 24) = a13;

  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v112 = sub_224DAC0D8();

  *&v160 = v112;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57F0, &qword_224DBBD48);
  v113 = v126;
  sub_224A33088(&qword_281351108, &unk_27D6F57F0, &qword_224DBBD48, v126);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v114 = sub_224DAC078();

  *&v160 = v114;
  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  swift_beginAccess();
  v136 = v101;
  sub_224DAB318();
  swift_endAccess();

  v115 = sub_224DAC0E8();

  *&v160 = v115;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
  sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470, v113);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v116 = v137;
  *&v160 = sub_224DA9B78();
  v159[0] = *&a13[v133];
  v117 = v159[0];
  v118 = v149;
  (v130)(v149, 1, 1, v131);
  v119 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5810, &qword_224DBBD50);
  sub_224A33088(&qword_27D6F5818, &qword_27D6F5810, &qword_224DBBD50, v113);
  v120 = v142;
  sub_224DAB448();
  sub_224A3311C(v118, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();

  sub_224A33088(&qword_27D6F5820, &qword_27D6F5790, &qword_224DBBD10, v127);
  v121 = v144;
  sub_224DAB488();

  (*(v143 + 8))(v120, v121);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  sub_224A3311C(v150, &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v164);
  __swift_destroy_boxed_opaque_existential_1(v165);
  __swift_destroy_boxed_opaque_existential_1(v166);
  __swift_destroy_boxed_opaque_existential_1(v167);
  __swift_destroy_boxed_opaque_existential_1(v168);
  __swift_destroy_boxed_opaque_existential_1(v169);
  __swift_destroy_boxed_opaque_existential_1(v170);
  __swift_destroy_boxed_opaque_existential_1(v163);
  return a13;
}

uint64_t sub_224C47C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = sub_224DAB258();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v38 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54C0, &qword_224DBBB98);
  v59 = sub_224A33088(qword_281355608, &unk_27D6F54C0, &qword_224DBBB98, &unk_224DC2A04);
  *&v57 = a1;
  if (qword_2813515B0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_281364F10);
  v41 = v6;
  v15 = *(v6 + 16);
  v15(v13, v14, v5);
  v16 = v58;
  v17 = v59;
  v18 = __swift_project_boxed_opaque_existential_1(&v57, v58);
  v55 = v16;
  v56 = *(v17 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v42 = a2;
  sub_224A3796C(a2, v50, &unk_27D6F53A0, &qword_224DC1A80);
  v39 = type metadata accessor for ControlHostService(0);
  v20 = swift_allocObject();
  v44 = v5;
  v15(v10, v13, v5);
  v21 = v10;
  if (v55)
  {
    sub_224A3317C(&v53, &v47);
  }

  else
  {
    v47 = v53;
    v48 = v54;
    v49 = v56;
  }

  sub_224A3796C(v51, v46, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3796C(v50, v45, &unk_27D6F53A0, &qword_224DC1A80);
  v22 = qword_28135CA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  swift_allocObject();
  *(v20 + v22) = sub_224DAB358();
  v23 = qword_28135CA00;
  swift_allocObject();
  *(v20 + v23) = sub_224DAB358();
  v24 = qword_28135C9F8;
  swift_allocObject();
  *(v20 + v24) = sub_224DAB358();
  v25 = qword_28135CA08;
  swift_allocObject();
  *(v20 + v25) = sub_224DAB358();
  v26 = qword_28135C9F0;
  type metadata accessor for UnfairLock();
  v27 = swift_allocObject();
  v28 = swift_slowAlloc();
  *v28 = 0;
  *(v27 + 16) = v28;
  *(v20 + v26) = v27;
  *(v20 + qword_28135CA28) = MEMORY[0x277D84F98];
  *(v20 + qword_28135CA40) = 0;
  *(v20 + qword_28135CA20) = 2000000000;
  v15((v20 + qword_281365438), v21, v44);
  v29 = v20 + qword_28135CA30;
  v40 = v13;
  if (*(&v48 + 1))
  {
    sub_224A3317C(&v47, v29);
  }

  else
  {
    v30 = v48;
    *v29 = v47;
    *(v29 + 16) = v30;
    *(v29 + 32) = v49;
  }

  sub_224A3796C(v46, v20 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v31 = sub_224A3796C(v45, v20 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  MEMORY[0x28223BE20](v31, v32);
  *(&v38 - 2) = &v47;
  *(&v38 - 1) = v20;
  sub_224C2A634(sub_224C4E540, (&v38 - 4), sub_224C4E5C0);
  sub_224A3311C(v45, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v46, &qword_27D6F4200, &unk_224DB5FC0);
  v33 = *(v41 + 8);
  v34 = v21;
  v35 = v44;
  v33(v34, v44);
  sub_224A3311C(v50, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v51, &qword_27D6F4200, &unk_224DB5FC0);
  v33(v40, v35);
  if (v55)
  {
    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  if (*(&v48 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v55 = v39;
  v56 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
  *&v53 = v20;
  sub_224A3311C(v42, &unk_27D6F53A0, &qword_224DC1A80);
  v36 = v43;
  sub_224A36F98(&v53, v43 + 16);
  sub_224A36F98(&v57, v36 + 56);
  return v36;
}

uint64_t sub_224C48244(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v62 = a2;
  v70 = a1;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v83 = v6;
  v84 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v82 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = &v61 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v13);
  v69 = &v61 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v15);
  v71 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v18 = *(v17 - 8);
  v78 = v17;
  v79 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v76 = &v61 - v20;
  v21 = sub_224DAF3C8();
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v64 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DAF318();
  MEMORY[0x28223BE20](v24, v25);
  v63 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB848();
  v80 = *(v27 - 8);
  v81 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v85 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[3] = type metadata accessor for WidgetHostService(0);
  v88[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  v88[0] = a2;
  *(a4 + 24) = xmmword_224DBB8A0;
  *(a4 + 48) = xmmword_224DBB8B0;
  v30 = [objc_allocWithZone(MEMORY[0x277D06A38]) init];
  v31 = MEMORY[0x277D84FA0];
  *(a4 + 72) = v30;
  *(a4 + 80) = v31;
  *(a4 + 88) = v31;
  *(a4 + 136) = v31;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DBB860;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000224DCB490;
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v34 = sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  *(inited + 48) = v33;
  *(inited + 72) = v34;
  *(inited + 80) = 0xD000000000000031;
  *(inited + 88) = 0x8000000224DCB4C0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 120) = v34;
  *(inited + 128) = 0xD000000000000028;
  *(inited + 136) = 0x8000000224DCB500;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 168) = v34;
  *(inited + 176) = 0xD00000000000002ALL;
  *(inited + 184) = 0x8000000224DCB530;
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 216) = v34;
  *(inited + 192) = v35;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v36 = sub_224DAECC8();

  v37 = v68;
  [v68 registerDefaults_];

  *(a4 + 16) = v37;
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v68 = v37;
  sub_224DAB828();
  v86[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v67 = MEMORY[0x277D83970];
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v65 + 104))(v64, *MEMORY[0x277D85268], v66);
  *(a4 + 40) = sub_224DAF418();
  v38 = v70;
  *(a4 + 64) = v70;
  sub_224A3317C(v88, a4 + 96);
  v39 = v62;
  v86[0] = *(v62 + qword_28135CA00);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = 768;
  v70 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000, MEMORY[0x277CBCE20]);
  v41 = v69;
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0, MEMORY[0x277CBCC90]);
  v42 = v71;
  v43 = v73;
  sub_224DAB3E8();
  (*(v75 + 8))(v41, v43);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8, MEMORY[0x277CBCC08]);
  v44 = v72;
  v45 = sub_224DAB3A8();
  (*(v74 + 8))(v42, v44);
  v86[0] = v45;
  v87 = *(a4 + 40);
  v46 = v87;
  v47 = sub_224DAF358();
  v48 = v77;
  (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
  v49 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v50 = v76;
  sub_224DAB448();
  sub_224A3311C(v48, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);

  v51 = v78;
  v52 = sub_224DAB488();

  (*(v79 + 8))(v50, v51);
  *(a4 + 32) = v52;

  v53 = *(a4 + 40);
  v61 = a4;
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v53;

  v86[4] = sub_224C4E1A8;
  v86[5] = v54;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 1107296256;
  v86[2] = sub_224A39F40;
  v86[3] = &block_descriptor_309_0;
  v56 = _Block_copy(v86);

  v57 = v85;
  sub_224DAB7E8();
  v87 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, v67);
  v59 = v82;
  v58 = v83;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v57, v59, v56);
  _Block_release(v56);

  (*(v84 + 8))(v59, v58);
  (*(v80 + 8))(v57, v81);

  __swift_destroy_boxed_opaque_existential_1(v88);
  return v61;
}

uint64_t sub_224C48F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAF3C8();
  v14 = *(v4 - 8);
  v15 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAF318();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_224DAB848();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v18 = sub_224DAC3C8();
  v19 = MEMORY[0x277CF9A38];
  *&v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  swift_allocObject();
  *(a2 + 56) = sub_224DAB358();
  v13[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7F8();
  v16 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v14 + 104))(v7, *MEMORY[0x277D85268], v15);
  *(a2 + 64) = sub_224DAF418();
  sub_224A36F98(&v17, a2 + 16);
  return a2;
}

void *sub_224C49218(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = sub_224DAF3C8();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAF318();
  MEMORY[0x28223BE20](v10, v11);
  v12 = sub_224DAB848();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v33[3] = sub_224DAC3C8();
  v33[4] = MEMORY[0x277CF9A38];
  v33[0] = a1;
  v32[3] = type metadata accessor for ProcessMonitor(0);
  v32[4] = &off_28382AA58;
  v32[0] = a2;
  v31[3] = type metadata accessor for LocationService(0);
  v31[4] = &off_2838352C0;
  v31[0] = a3;
  a4[18] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  swift_allocObject();
  v29 = a1;
  a4[19] = sub_224DAB358();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7F8();
  v30[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v27 + 104))(v26, *MEMORY[0x277D85268], v28);
  a4[20] = sub_224DAF418();
  sub_224A3317C(v31, (a4 + 8));
  sub_224A3317C(v33, (a4 + 3));
  sub_224A3317C(v32, (a4 + 13));
  v14 = type metadata accessor for _CTNetworkService();
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  v15[2] = sub_224DAB358();
  v15[3] = 0;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  v17->_os_unfair_lock_opaque = 0;
  *(v16 + 16) = v17;
  v15[4] = v16;

  os_unfair_lock_lock(v17);
  sub_224AED9F0();
  os_unfair_lock_unlock(*(v16 + 16));

  v30[3] = v14;
  v30[4] = &off_283829890;
  v30[0] = v15;
  type metadata accessor for NetworkAuthorizationMonitor();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_224C4970C(v29, *v21, v18);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  a4[2] = v23;
  return a4;
}

uint64_t sub_224C4970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_224DAC3C8();
  v15 = MEMORY[0x277CF9A38];
  *&v13 = a1;
  v11 = type metadata accessor for _CTNetworkService();
  v12 = &off_283829890;
  *&v10 = a2;
  *(a3 + 64) = MEMORY[0x277D84FA0];
  *(a3 + 112) = MEMORY[0x277D84F98];
  *(a3 + 120) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58F0, &qword_224DBDC20);
  swift_allocObject();
  *(a3 + 128) = sub_224DAB358();
  v6 = sub_224DAEDE8();
  v7 = [objc_opt_self() serial];
  v8 = BSDispatchQueueCreate();

  *(a3 + 16) = v8;
  sub_224A36F98(&v10, a3 + 72);
  sub_224A36F98(&v13, a3 + 24);
  return a3;
}

char *sub_224C4983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v91 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v14 = *(v13 - 8);
  v84 = v13;
  v85 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v83 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v81 = v77 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v20);
  v82 = v77 - v21;
  v22 = sub_224DAF3C8();
  v88 = *(v22 - 8);
  v89 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v87 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAF318();
  MEMORY[0x28223BE20](v25, v26);
  v86 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAB848();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v103[3] = type metadata accessor for WidgetHostService(0);
  v103[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  v103[0] = a1;
  v102[3] = type metadata accessor for ControlHostService(0);
  v102[4] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
  v102[0] = a2;
  v101[3] = sub_224DAC3C8();
  v101[4] = MEMORY[0x277CF9A38];
  v101[0] = a3;
  v100[3] = type metadata accessor for KeepAliveAssertionProvider();
  v100[4] = &off_283832210;
  v100[0] = a4;
  v99[3] = type metadata accessor for NowPlayingObserver(0);
  v99[4] = &off_283830C60;
  v99[0] = a6;
  v30 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue;
  v31 = objc_opt_self();
  v32 = sub_224DAEDE8();
  v33 = [v31 serialQueueTargetingSharedWorkloop_];

  *&a7[v30] = v33;
  v80 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue;
  v34 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  v95[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v88 + 104))(v87, *MEMORY[0x277D85268], v89);
  v35 = v34;
  *&a7[v80] = sub_224DAF418();
  v36 = MEMORY[0x277D84FA0];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__subscriptions] = MEMORY[0x277D84FA0];
  v37 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  type metadata accessor for UnfairLock();
  v38 = swift_allocObject();
  v39 = swift_slowAlloc();
  *v39 = 0;
  *(v38 + 16) = v39;
  *&a7[v37] = v38;
  v40 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_nowPlayingApp;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v41 - 8) + 56))(&a7[v40], 1, 1, v41);
  v42 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownExtensionBundleIdentifiers] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownApplicationBundleIdentifiers] = v36;
  v43 = MEMORY[0x277D84F98];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs] = MEMORY[0x277D84F98];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers] = MEMORY[0x277D84F90];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer] = 0;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription] = 0;
  v44 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter];
  *(v44 + 4) = 0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  sub_224A3317C(v103, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService]);
  sub_224A3317C(v102, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService]);
  sub_224A3317C(v101, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager]);
  sub_224A3317C(v100, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__keepAliveAssertionProvider]);
  v45 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__carouselSessionService];
  *v45 = v91;
  *(v45 + 1) = &off_28382D640;
  sub_224A3317C(v99, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver]);
  v46 = type metadata accessor for ProcessMonitor(0);
  v98.receiver = a7;
  v98.super_class = v46;

  v47 = objc_msgSendSuper2(&v98, sel_init);
  sub_224A3317C(v47 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService, v95);
  v48 = v96;
  v49 = v97;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v50 = *(v49 + 8);
  v51 = *(v50 + 40);
  v52 = v47;
  v94 = v51(768, v48, v50);
  v78 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue;
  v93 = *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue];
  v53 = v93;
  v88 = sub_224DAF358();
  v54 = *(v88 - 8);
  v87 = *(v54 + 56);
  v89 = v54 + 56;
  v55 = v81;
  (v87)(v81, 1, 1, v88);
  v56 = v53;
  v77[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v80 = MEMORY[0x277CBCD90];
  v77[3] = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  v86 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v57 = v82;
  v77[2] = v35;
  sub_224DAB448();
  v58 = v55;
  sub_224A3311C(v55, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v95);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = MEMORY[0x277CBCD60];
  v77[1] = sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);
  v59 = v90;
  sub_224DAB488();

  v60 = *(v92 + 8);
  v92 += 8;
  v77[0] = v60;
  v60(v57, v59);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService], v95);
  v61 = v96;
  v62 = v97;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v94 = (*(*(v62 + 8) + 40))(768, v61);
  v63 = v78;
  v93 = *&v52[v78];
  v64 = v93;
  (v87)(v58, 1, 1, v88);
  v65 = v64;
  sub_224DAB448();
  sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v95);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v90;
  sub_224DAB488();

  (v77[0])(v57, v66);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager], v95);
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v94 = sub_224DAC6B8();
  v93 = *&v52[v63];
  v67 = v93;
  (v87)(v58, 1, 1, v88);
  v68 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, v80);
  v69 = v83;
  sub_224DAB448();
  sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v95);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_224C4E2B8;
  *(v71 + 24) = v70;
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030, v79);
  v72 = v84;
  sub_224DAB488();

  (*(v85 + 8))(v69, v72);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver], *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver + 24]);
  v95[0] = sub_224C6C610();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v74 = swift_allocObject();
  *(v74 + 16) = sub_224C4E2C0;
  *(v74 + 24) = v73;
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v75 = *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock];
  os_unfair_lock_lock(*(v75 + 16));
  sub_224B47470(v52);

  os_unfair_lock_unlock(*(v75 + 16));
  sub_224A6AF54();

  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v99);
  return v52;
}

uint64_t sub_224C4A6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAD1C8();
  v9 = MEMORY[0x277CF9C78];
  v10 = MEMORY[0x277CF9C80];
  v8 = v4;
  *&v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5960, &unk_224DB97B0);
  swift_allocObject();
  *(a2 + 16) = sub_224DAB358();
  *(a2 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AB8, &unk_224DB97C0);
  swift_allocObject();
  *(a2 + 32) = sub_224DAB358();
  *(a2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5970, qword_224DBBE18);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x277D84F98];
  *(a2 + 96) = v5;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  sub_224AB1DE0(&v7, (a2 + 48));
  return a2;
}

uint64_t sub_224C4A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v30 = v27 - v12;
  v13 = sub_224DAF3C8();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAF318();
  MEMORY[0x28223BE20](v17, v18);
  v19 = sub_224DAB848();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v21 = sub_224DAAD68();
  v38[4] = MEMORY[0x277D466C0];
  v38[3] = v21;
  v38[0] = a1;
  v37[4] = MEMORY[0x277D466C8];
  v37[5] = MEMORY[0x277D466D0];
  v37[3] = v21;
  v37[0] = a2;
  v36[3] = v21;
  v36[4] = MEMORY[0x277D46698];
  v36[0] = a3;
  v22 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v27[0] = "ReplicationService";
  v27[1] = v22;
  sub_224DAB7E8();
  *&v33[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v28 + 104))(v16, *MEMORY[0x277D85260], v29);
  *(a4 + 16) = sub_224DAF418();
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0;
  sub_224A3317C(v38, a4 + 24);
  sub_224B44674(v37, a4 + 64);
  sub_224A3317C(v36, a4 + 112);
  v23 = sub_224DAF128();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  sub_224A3317C(v38, v35);
  sub_224A3317C(v36, v34);
  sub_224B44674(v37, v33);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_224A36F98(v35, v25 + 32);
  sub_224A36F98(v34, v25 + 72);
  sub_224AB1DE0(v33, (v25 + 112));
  *(v25 + 160) = a4;

  sub_224D8E744(0, 0, v24, v32, v25);

  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return a4;
}

void *sub_224C4AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v47 = sub_224DAF3C8();
  v42 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v9);
  v41 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  MEMORY[0x28223BE20](v11, v12);
  v40[2] = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_224DACE88();
  v55[3] = v16;
  v55[4] = MEMORY[0x277CF9C40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, a3, v16);
  v18 = sub_224DAAD68();
  v54[4] = MEMORY[0x277D466B0];
  v54[5] = MEMORY[0x277D46690];
  v54[6] = MEMORY[0x277D466B8];
  v54[3] = v18;
  v54[0] = a1;
  v19 = type metadata accessor for MobileActivityService(0);
  v53[3] = v19;
  v53[4] = &off_28382E400;
  v53[0] = a2;
  v20 = type metadata accessor for RemoteActivitySubscriptionCache();
  v52[4] = &off_283831828;
  v52[5] = &off_283831818;
  v52[3] = v20;
  v52[0] = a4;
  type metadata accessor for RemoteActivityArchiveReplicator();
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v53, v19);
  v45 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v22, v22);
  v46 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v40 - v46);
  v26 = *(v25 + 16);
  v43 = v25 + 16;
  v44 = v26;
  v26(v40 - v46);
  v27 = *v24;
  v51[3] = v19;
  v51[4] = &off_28382E400;
  v51[0] = v27;
  v40[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v50[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v42 + 104))(v41, *MEMORY[0x277D85260], v47);
  v21[3] = sub_224DAF418();
  v21[16] = MEMORY[0x277D84FA0];
  v21[33] = MEMORY[0x277D84F98];
  sub_224DAA968();
  swift_allocObject();
  v21[34] = sub_224DAA958();
  sub_224BBF304(v54, (v21 + 4));
  sub_224A3317C(v51, (v21 + 11));
  sub_224A3317C(v55, (v21 + 28));
  sub_224B44674(v52, (v21 + 17));
  v21[26] = sub_224DADEF8();
  v21[27] = sub_224C41198(&unk_281350C90, MEMORY[0x277CF9E50], MEMORY[0x277CF9E48]);
  v21[23] = v48;
  sub_224A3317C(v51, v50);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  MEMORY[0x28223BE20](v28, v28);
  v30 = (v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v49[3] = v19;
  v49[4] = &off_28382E400;
  v49[0] = v32;
  type metadata accessor for RemoteActivityArchiveBudgetScheduler();
  v33 = swift_allocObject();
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v49, v19);
  MEMORY[0x28223BE20](v34, v34);
  v35 = (v40 - v46);
  v44(v40 - v46);
  v36 = *v35;

  v38 = sub_224C414D4(v37, v36, v33);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v21[2] = v38;
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v21;
}

uint64_t sub_224C4B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v33 = sub_224DAD7D8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v10);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAF3C8();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAF318();
  MEMORY[0x28223BE20](v14, v15);
  v27 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB848();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v38[3] = sub_224A3B79C(0, &qword_281350AE8, 0x277D02938);
  v38[4] = &off_2838373A0;
  v38[0] = a4;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F55A0, &qword_224DBBC00);
  v37[4] = sub_224A33088(&qword_28135B430, &qword_27D6F55A0, &qword_224DBBC00, &unk_224DB5224);
  v37[0] = a1;
  v36[3] = sub_224DAAD68();
  v36[4] = MEMORY[0x277D466D0];
  v36[0] = a2;
  v35[3] = type metadata accessor for MobileTimelineService(0);
  v35[4] = sub_224C41198(&unk_2813580E8, type metadata accessor for MobileTimelineService, &unk_224DC2CF0);
  v35[0] = a3;
  v19 = type metadata accessor for StalenessService(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5758, &qword_224DC38E0);
  swift_allocObject();
  v21 = sub_224DAB358();
  v22 = MEMORY[0x277D84F98];
  *(v20 + 24) = v21;
  *(v20 + 32) = v22;
  *(v20 + 40) = v22;
  sub_224DAA968();
  swift_allocObject();
  *(v20 + 48) = sub_224DAA958();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  v34[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v29 + 104))(v28, *MEMORY[0x277D85268], v30);
  *(v20 + 56) = sub_224DAF418();
  *(v20 + 152) = MEMORY[0x277D84FA0];
  (*(v32 + 104))(v31, *MEMORY[0x277CF9D38], v33);
  sub_224DAD838();
  *(v20 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery) = 0;
  *(v20 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue) = 0;
  sub_224A3317C(v37, v20 + 64);
  sub_224A3317C(v36, v20 + 104);
  *(v20 + 144) = a5;
  sub_224A3317C(v35, v20 + 200);
  sub_224A3317C(v38, v20 + 160);
  v34[4] = &off_283837468;
  v34[3] = v19;
  v34[0] = v20;
  swift_beginAccess();
  v23 = *(v20 + 88);
  v24 = *(v20 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v20 + 64, v23);
  v25 = *(v24 + 24);

  v25(v34, v23, v24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v20;
}

uint64_t sub_224C4B868()
{
  v0 = sub_224DA9688();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v5 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v39 = v38 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v38 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v38 - v18;
  if (qword_281352040 != -1)
  {
    swift_once();
  }

  v20 = off_281352050;

  v21 = sub_224D42244(1, v20);

  if ((v21 & 1) == 0)
  {
    v22 = off_281352050;

    v23 = sub_224D42244(2, v22);

    if ((v23 & 1) == 0)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v34 = sub_224DAB258();
      __swift_project_value_buffer(v34, qword_281365120);
      v26 = sub_224DAB228();
      v27 = sub_224DAF2A8();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_16;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Replicator is not enabled on this device";
      goto LABEL_15;
    }
  }

  sub_224AEFFB4(v19);
  v24 = (*(v1 + 48))(v19, 1, v0);
  sub_224A3311C(v19, &unk_27D6F4680, &unk_224DB4610);
  if (v24 != 1)
  {
    sub_224DA9CA8();
    sub_224DA9608();
    v38[1] = "liveControlReplicator";
    v30 = *(v1 + 16);
    v30(v39, v12, v0);
    v30(v5, v12, v0);
    v31 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v32 = swift_allocObject();
    (*(v1 + 32))(v32 + v31, v5, v0);
    sub_224DAAD68();
    swift_allocObject();
    v33 = sub_224DAAD58();
    v35 = *(v1 + 8);
    v36 = v33;
    v35(v12, v0);
    v35(v15, v0);
    return v36;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281365120);
  v26 = sub_224DAB228();
  v27 = sub_224DAF288();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Replicator temporary URL is not available";
LABEL_15:
    _os_log_impl(&dword_224A2F000, v26, v27, v29, v28, 2u);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

LABEL_16:

  return 0;
}

uint64_t sub_224C4BEA0(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5858, &qword_224DBBD80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_224DB8BC0;
  if (qword_281354BC8 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_224AD3BE4();
  if (qword_281352C80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE20]);
  *(v1 + 40) = sub_224DAB3A8();
  if (qword_281352988 != -1)
  {
    swift_once();
  }

  *(v1 + 48) = sub_224DAB3A8();
  return v1;
}

uint64_t sub_224C4C038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v48 = &v48 - v7;
  v8 = sub_224DAB258();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v48 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54B8, &qword_224DBBB90);
  v71 = sub_224A33088(&qword_281355600, &qword_27D6F54B8, &qword_224DBBB90, &unk_224DC2A04);
  *&v69 = a1;
  if (qword_281351590 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_281364EE0);
  v49 = v9;
  v18 = *(v9 + 16);
  v18(v16, v17, v8);
  v19 = v70;
  v20 = v71;
  v21 = __swift_project_boxed_opaque_existential_1(&v69, v70);
  v67 = v19;
  v68 = *(v20 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v52 = a2;
  sub_224A3796C(a2, v62, &unk_27D6F53A0, &qword_224DC1A80);
  v50 = type metadata accessor for WidgetHostService(0);
  v23 = swift_allocObject();
  v55 = v16;
  v24 = qword_28135A7E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  swift_allocObject();
  *(v23 + v24) = sub_224DAB358();
  v25 = v23 + qword_28135A7E8;
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v18(v13, v55, v8);
  v54 = v13;
  if (v67)
  {
    sub_224A3317C(&v65, &v56);
  }

  else
  {
    v56 = v65;
    v57 = v66;
    v58 = v68;
  }

  sub_224A3796C(v63, v61, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3796C(v62, v60, &unk_27D6F53A0, &qword_224DC1A80);
  v26 = qword_28135CA10;
  swift_allocObject();
  *(v23 + v26) = sub_224DAB358();
  v27 = qword_28135CA00;
  swift_allocObject();
  *(v23 + v27) = sub_224DAB358();
  v28 = qword_28135C9F8;
  swift_allocObject();
  *(v23 + v28) = sub_224DAB358();
  v29 = qword_28135CA08;
  swift_allocObject();
  *(v23 + v29) = sub_224DAB358();
  v30 = qword_28135C9F0;
  type metadata accessor for UnfairLock();
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *v32 = 0;
  *(v31 + 16) = v32;
  *(v23 + v30) = v31;
  *(v23 + qword_28135CA28) = MEMORY[0x277D84F98];
  *(v23 + qword_28135CA40) = 0;
  *(v23 + qword_28135CA20) = 2000000000;
  v18((v23 + qword_281365438), v54, v8);
  v33 = v23 + qword_28135CA30;
  v51 = v8;
  v34 = v49;
  if (*(&v57 + 1))
  {
    sub_224A3317C(&v56, v33);
  }

  else
  {
    v35 = v57;
    *v33 = v56;
    *(v33 + 16) = v35;
    *(v33 + 32) = v58;
  }

  sub_224A3796C(v61, v23 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v36 = sub_224A3796C(v60, v23 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  MEMORY[0x28223BE20](v36, v37);
  *(&v48 - 2) = &v56;
  *(&v48 - 1) = v23;
  sub_224C2A634(sub_224C4E558, (&v48 - 4), sub_224C4E43C);
  sub_224A3311C(v60, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v61, &qword_27D6F4200, &unk_224DB5FC0);
  v38 = *(v34 + 8);
  v39 = v51;
  v38(v54, v51);
  if (*(&v57 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  sub_224A68420(0x300u, &v56);
  v40 = v52;
  if (v59)
  {
    if (qword_281356838 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for HostDescriptorPredicate(0);
    v42 = __swift_project_value_buffer(v41, qword_281365218);
    v43 = v48;
    sub_224C4E30C(v42, v48, type metadata accessor for HostDescriptorPredicate);
    (*(*(v41 - 8) + 56))(v43, 0, 1, v41);
    v44 = sub_224A6BAF8(v43);
    sub_224A3311C(v43, &qword_27D6F46D0, &unk_224DBD6D0);
    sub_224A699F0(&v56);
    if (v44)
    {
      v45 = v23 + qword_28135A7E8;
      swift_beginAccess();
      if (*(v45 + 24))
      {
        sub_224A3317C(v45, &v56);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        sub_224DADE18();

        sub_224A3311C(v62, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(v63, &qword_27D6F4200, &unk_224DB5FC0);
        if (v67)
        {
          __swift_destroy_boxed_opaque_existential_1(&v65);
        }

        v38(v55, v39);
        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        sub_224A3311C(v62, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(v63, &qword_27D6F4200, &unk_224DB5FC0);
        if (v67)
        {
          __swift_destroy_boxed_opaque_existential_1(&v65);
        }

        v38(v55, v39);
        swift_endAccess();
      }
    }

    else
    {

      sub_224A3311C(v62, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(v63, &qword_27D6F4200, &unk_224DB5FC0);
      if (v67)
      {
        __swift_destroy_boxed_opaque_existential_1(&v65);
      }

      v38(v55, v39);
    }
  }

  else
  {

    sub_224A3311C(v62, &unk_27D6F53A0, &qword_224DC1A80);
    sub_224A3311C(v63, &qword_27D6F4200, &unk_224DB5FC0);
    if (v67)
    {
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    v38(v55, v39);
    sub_224A3311C(&v56, &qword_27D6F50E0, &qword_224DB41A0);
  }

  *(&v57 + 1) = v50;
  v58 = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  *&v56 = v23;
  sub_224A3311C(v40, &unk_27D6F53A0, &qword_224DC1A80);
  v46 = v53;
  sub_224A36F98(&v56, v53 + 16);
  sub_224A36F98(&v69, v46 + 56);
  return v46;
}

char *sub_224C4C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v35 = *a7;
  v14 = sub_224DAB188();
  v15 = *(v14 - 8);
  v34 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v33 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = sub_224DAD1C8();
  v43[4] = MEMORY[0x277CF9C78];
  v43[0] = a2;
  v42[3] = type metadata accessor for WidgetHostService(0);
  v42[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService, &unk_224DC2580);
  v42[0] = a3;
  v41[3] = type metadata accessor for PreviewConfigurationService();
  v41[4] = sub_224C41198(&qword_281354658, type metadata accessor for PreviewConfigurationService, &unk_224DB6248);
  v41[0] = a4;
  v18 = sub_224DAAD68();
  v40[4] = MEMORY[0x277D466E0];
  v40[5] = MEMORY[0x277D466A8];
  v40[3] = v18;
  v40[0] = a5;
  v32 = *(v15 + 16);
  v32(&a7[OBJC_IVAR____TtC10ChronoCore26ReplicatorMigrationService_clientDescriptor], a1, v14);
  v19 = [objc_allocWithZone(sub_224DAB168()) init];
  *(a7 + 2) = v19;
  v20 = v19;

  sub_224DAB138();

  sub_224A3317C(v43, v39);
  sub_224A3317C(v42, v38);
  sub_224A3317C(v41, v37);
  sub_224B44674(v40, v36);
  v21 = swift_allocObject();
  sub_224A36F98(v39, v21 + 16);
  sub_224A36F98(v38, v21 + 56);
  sub_224A36F98(v37, v21 + 96);
  sub_224AB1DE0(v36, (v21 + 136));
  v22 = v35;
  *(v21 + 184) = a6;
  *(v21 + 192) = v22;

  sub_224DAB128();
  v23 = *(a7 + 2);

  v24 = v23;
  sub_224DAB118();

  v25 = v33;
  v32(v33, a1, v14);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = swift_allocObject();
  (*(v15 + 32))(v27 + v26, v25, v14);
  sub_224DAB148();
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a6;
  *(v28 + 24) = v29;

  sub_224DAB108();
  (*(v15 + 8))(a1, v14);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return a7;
}

uint64_t sub_224C4CDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224CFA67C(a1, v4, v5, v6);
}

unint64_t sub_224C4CFF0()
{
  result = qword_2813574B0;
  if (!qword_2813574B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813574B0);
  }

  return result;
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}