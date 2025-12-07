uint64_t sub_1CF27F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    v5 = a1;
    v6 = *(a3 + 136);
    MEMORY[0x1EEE9AC00](a1);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v6 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v6 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    a1 = v5;
  }

  return a4(a1);
}

uint64_t sub_1CF27FAA0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, int a7, _OWORD *a8, uint64_t (*a9)(uint64_t, __n128))
{
  v65 = a7;
  v64 = a6;
  v15 = a9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v67);
  v63 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v61 - v20;
  v66 = a3;
  if (a2)
  {
    v68 = a5;
    v69 = a1;
    v21 = a3[17];
    MEMORY[0x1EEE9AC00](v18);
    *(&v61 - 4) = v21;
    *(&v61 - 6) = 1;
    *(&v61 - 2) = v22;
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v15 = a9;
    a5 = v68;
    a1 = v69;
  }

  if ((a4 & 0x40) == 0)
  {
    return v15(a1, v19);
  }

  v24 = a5 + *(type metadata accessor for VFSItem(0) + 28);
  v25 = type metadata accessor for ItemMetadata(0);
  if (*(v24 + *(v25 + 96)) != 1 || *(v24 + *(v25 + 100)) != 1)
  {
    return v15(a1, v19);
  }

  v76 = v64;
  v77 = v65;
  swift_beginAccess();
  v26 = a8[4];
  v27 = a8[2];
  v79 = a8[3];
  v80 = v26;
  v28 = a8[4];
  v29 = a8[6];
  v81 = a8[5];
  v82 = v29;
  v30 = a8[2];
  v78[0] = a8[1];
  v78[1] = v30;
  v72[2] = v79;
  v73 = v28;
  v31 = a8[6];
  v74 = v81;
  v75 = v31;
  v72[0] = v78[0];
  v72[1] = v27;
  sub_1CEFCCBDC(v78, v70, &unk_1EC4BE330, &unk_1CF9FF010);
  v32 = v66;
  sub_1CEFDAA48(&v76, v72, v70, v33, v34, v35, v36, v37, v38);
  v83[2] = v72[2];
  v83[3] = v73;
  v83[4] = v74;
  v83[5] = v75;
  v83[0] = v72[0];
  v83[1] = v72[1];
  sub_1CEFCCC44(v83, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v39 = v71;
  v72[0] = v70[0];
  v72[1] = v70[1];
  *&v72[2] = v71;
  v40 = objc_sync_enter(v32);
  if (v40)
  {
    MEMORY[0x1EEE9AC00](v40);
    *(&v61 - 2) = v32;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v61 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v69 = a1;
  v41 = v32[20];

  v42 = objc_sync_exit(v32);
  if (v42)
  {
    MEMORY[0x1EEE9AC00](v42);
    *(&v61 - 2) = v32;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v61 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v43 = *(v41 + 16);

  v44 = sub_1CEFDADE0(v72, v43, 0x200000);
  v39, v45, v46, v47, v48, v49, v50, v51;
  v55 = fpfs_funset_resuming_sync_with_drop_local_changes();
  if (v55 < 0)
  {
    v58 = MEMORY[0x1D38683F0]();
    v59 = 11;
  }

  else
  {
    v56 = v62;
    sub_1CEFCCBDC(v69, v62, &unk_1EC4C5000, &qword_1CFA181A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1CEFCCC44(v56, &unk_1EC4C5000, &qword_1CFA181A0);
    if (EnumCaseMultiPayload == 1 || (fpfs_funset_pause_sync_bundleID() & 0x80000000) == 0)
    {
      if ((v44 & 0x80000000) == 0)
      {
        close(v44);
      }

      a1 = v69;
      return v15(a1, v19);
    }

    v58 = MEMORY[0x1D38683F0]();
    v59 = 12;
  }

  *&v72[0] = v59;
  *(v72 + 8) = 0u;
  *(&v72[1] + 8) = 0u;
  BYTE8(v72[2]) = 19;
  v60 = sub_1CF19BBE4(v58, v72);
  sub_1CF1969CC(v72);
  swift_willThrow();
  if ((v44 & 0x80000000) == 0)
  {
    close(v44);
  }

  v52 = v63;
  *v63 = v60;
  swift_storeEnumTagMultiPayload();
  v53 = v60;
  (v15)(v52);

  return sub_1CEFCCC44(v52, &unk_1EC4C5000, &qword_1CFA181A0);
}

BOOL sub_1CF27FFD8(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];

  v7 = sub_1CEFE7394(v3, v4);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7 == 12565487 && v8 == 0xA300000000000000)
  {
    v8, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v16 = v8;
    v17 = sub_1CF9E8048();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if ((v17 & 1) == 0)
    {
LABEL_7:

      v25 = v3;
      v26 = v4;
      goto LABEL_10;
    }
  }

  v27 = sub_1CF9E69E8();
  v28 = sub_1CF025150(v27, v3, v4);
  v30 = v29;
  v25 = MEMORY[0x1D3868C10](v28);
  v26 = v31;
  v30, v31, v32, v33, v34, v35, v36, v37;
LABEL_10:
  v38 = sub_1CEFE7394(v6, v5);
  if (v39)
  {
    if (v38 == 12565487 && v39 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v40, v41, v42, v43, v44, v45;
      goto LABEL_15;
    }

    v46 = v39;
    v47 = sub_1CF9E8048();
    v46, v48, v49, v50, v51, v52, v53, v54;
    if (v47)
    {
LABEL_15:
      v55 = sub_1CF9E69E8();
      v56 = sub_1CF025150(v55, v6, v5);
      v58 = v57;
      v59 = MEMORY[0x1D3868C10](v56);
      v61 = v60;
      v58, v60, v62, v63, v64, v65, v66, v67;
      if (v25 != v59)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v61 = v5;
  if (v25 != v6)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v26 == v61)
  {
    v61, v68, v69, v70, v71, v72, v73, v74;
    v26, v75, v76, v77, v78, v79, v80, v81;
    v5, v82, v83, v84, v85, v86, v87, v88;
    return 0;
  }

LABEL_20:
  v90 = sub_1CF9E8048();
  v61, v91, v92, v93, v94, v95, v96, v97;
  v26, v98, v99, v100, v101, v102, v103, v104;
  v5, v105, v106, v107, v108, v109, v110, v111;
  result = 0;
  if ((v90 & 1) == 0)
  {
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v113 = v112;
    v114 = sub_1CF9E6978();
    v113, v115, v116, v117, v118, v119, v120, v121;
    LODWORD(v113) = faccessat(a3, (v114 + 32), 0, 32);

    return v113 != 0;
  }

  return result;
}

uint64_t sub_1CF280274(_OWORD *a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 a9, uint64_t *a10, uint64_t a11, void *a12, unsigned __int8 a13, _OWORD *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, char a22, uint64_t a23, _OWORD *a24, char *a25)
{
  v615 = a8;
  v613 = a7;
  v618 = a6;
  v610 = a4;
  v621 = a2;
  v604 = a1;
  v620 = a10;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v606);
  v587 = &v558 - v26;
  v27 = sub_1CF9E6388();
  v583 = *(v27 - 8);
  v584 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v582 = (&v558 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v580 = &v558 - v30;
  v581 = sub_1CF9E6498();
  v579 = *(v581 - 8);
  MEMORY[0x1EEE9AC00](v581);
  v578 = &v558 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v574 = &v558 - v33;
  v34 = sub_1CF9E63D8();
  v571 = *(v34 - 8);
  v572 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v573 = &v558 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E6448();
  v576 = *(v36 - 8);
  v577 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v575 = &v558 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E73D8();
  v569 = *(v38 - 8);
  v570 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v568 = &v558 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v586 = &v558 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v567 = &v558 - v43;
  v44 = sub_1CF9E53C8();
  v45 = *(v44 - 8);
  v592 = v44;
  v593 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v565 = &v558 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v588 = &v558 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v591 = &v558 - v50;
  v612 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v612);
  v566 = &v558 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v600 = &v558 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v594 = &v558 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v599 = &v558 - v57;
  v607 = sub_1CF9E64A8();
  v602 = *(v607 - 8);
  MEMORY[0x1EEE9AC00](v607);
  v601 = (&v558 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1CF9E5248();
  v596 = *(v59 - 8);
  v597 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v595 = &v558 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v598 = &v558 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v605 = (&v558 - v64);
  v65 = type metadata accessor for VFSItem(0);
  v66 = *(v65 - 1);
  v608 = v65;
  v609 = v66;
  MEMORY[0x1EEE9AC00](v65);
  v585 = &v558 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v590 = &v558 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v589 = &v558 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v603 = (&v558 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v614 = &v558 - v75;
  v76 = sub_1CF9E5A58();
  v616 = *(v76 - 8);
  v617 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v558 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v558 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v558 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v558 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = (&v558 - v89);
  v619 = a3;
  v91 = (a3 + 16);
  v92 = swift_projectBox();
  v93 = swift_projectBox();
  if (v621)
  {
    v94 = v621;
    swift_beginAccess();
    v95 = *(v619 + 16);
    *v90 = v94;
    swift_storeEnumTagMultiPayload();
    v96 = v94;

    v95(v90);

    return sub_1CEFCCC44(v90, &unk_1EC4C5000, &qword_1CFA181A0);
  }

  v562 = v78;
  v563 = v81;
  v620 = v90;
  v621 = v91;
  v564 = v88;
  v611 = v87;
  v98 = v93;
  v99 = v610;
  swift_beginAccess();
  v100 = *(v99 + 2);
  if (v100)
  {
    v101 = [v100 URL];
    sub_1CF9E59D8();

    (*(v616 + 32))(v611, v84, v617);
  }

  else
  {
    swift_beginAccess();
    (*(v616 + 16))(v611, v92, v617);
  }

  v102 = v613;
  v561 = a14;
  v103 = a14 + 1;
  LODWORD(v610) = a9;
  if ((~v618 & 0x100000000010000) != 0 && (v618 != 16 || (v613 & 0x200) != 0))
  {
    v104 = v563;
    sub_1CF9E5988();
    v105 = *(v616 + 8);
    v106 = v104;
    v107 = v562;
    v105(v106, v617);
    if (v610)
    {
      swift_beginAccess();
      v108 = v617;
      (*(v616 + 16))(v107, v98, v617);
      v109 = v563;
      sub_1CF9E5988();
      v105(v107, v108);
      v105(v109, v108);
    }
  }

  if ((v102 & 0x40) != 0)
  {
    swift_beginAccess();
    v110 = *(a11 + 16);
    if ((v110 & 0x1000) == 0)
    {
      *(a11 + 16) = v110 | 0x1000;
    }
  }

  v657 = a12;
  v658 = a13;
  swift_beginAccess();
  v111 = a14[4];
  v112 = a14[2];
  v660 = a14[3];
  v661 = v111;
  v113 = a14[4];
  v114 = a14[6];
  v662 = a14[5];
  v663 = v114;
  v115 = a14[2];
  v659[0] = *v103;
  v659[1] = v115;
  v653 = v660;
  v654 = v113;
  v116 = a14[6];
  v655 = v662;
  v656 = v116;
  v651 = v659[0];
  v652 = v112;
  v650 = v618;
  swift_beginAccess();
  v117 = *(a11 + 16);
  sub_1CEFCCBDC(v659, &v664, &unk_1EC4BE330, &unk_1CF9FF010);
  v118 = v614;
  v119 = 0;
  sub_1CF278908(&v657, &v651, &v650, v117, v614);
  v558 = a11;
  v560 = a13;
  v562 = a21;
  v649[2] = v653;
  v649[3] = v654;
  v649[4] = v655;
  v649[5] = v656;
  v649[0] = v651;
  v649[1] = v652;
  sub_1CEFCCC44(v649, &unk_1EC4BE330, &unk_1CF9FF010);
  v124 = v605;
  sub_1CEFCCBDC(a15, v605, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v125 = *(v609 + 48);
  v609 += 48;
  v126 = v125(v124, 1, v608);
  v559 = a12;
  if (v126 == 1)
  {
    v127 = sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v128 = v607;
LABEL_21:
    v131 = v611;
    if ((v610 & 1) == 0 && (a16 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_25:
    v134 = *(v118 + 16);
    if (*(v118 + 24))
    {
      if (*(v118 + 24) == 1)
      {
        if (a18 != 1 || v134 != a17)
        {
          goto LABEL_43;
        }
      }

      else if (v134)
      {
        if (a18 != 2 || a17 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (a18 != 2 || a17)
      {
        goto LABEL_43;
      }
    }

    else if (a18 || v134 != a17)
    {
      goto LABEL_43;
    }

    v135 = v118;
    v136 = *(v118 + 32);
    v137 = *(v135 + 40);
    swift_beginAccess();
    v139 = *(a19 + 16);
    v138 = *(a19 + 24);
    *&v664 = v136;
    *(&v664 + 1) = v137;

    v140 = sub_1CF662E90();
    v142 = v141;
    *&v642 = v139;
    *(&v642 + 1) = v138;
    v144 = sub_1CF662E90();
    v150 = v143;
    if (v140 == v144 && v142 == v143)
    {
      v143, v143, v144, v145, v146, v147, v148, v149;
      v142, v151, v152, v153, v154, v155, v156, v157;
      v138, v158, v159, v160, v161, v162, v163, v164;
      v131 = v611;
      v118 = v614;
    }

    else
    {
      v165 = sub_1CF9E8048();
      v150, v166, v167, v168, v169, v170, v171, v172;
      v142, v173, v174, v175, v176, v177, v178, v179;
      v138, v180, v181, v182, v183, v184, v185, v186;
      v131 = v611;
      v118 = v614;
      if ((v165 & 1) == 0)
      {
LABEL_43:
        v187 = (a20 + 16);
        v188 = v563;
        if (v604)
        {
          swift_beginAccess();
          v127 = *v187;
          if (!*v187)
          {
LABEL_219:
            __break(1u);
            goto LABEL_220;
          }

          v189 = [v127 URL];
          sub_1CF9E59D8();

          v190 = sub_1CF9E5928();
          (*(v616 + 8))(v188, v617);
          v191 = sub_1CF9E5928();
          [v604 itemAtURL:v190 willMoveToURL:v191];

          v118 = v614;
        }

        MEMORY[0x1EEE9AC00](v127);
        v556 = (a20 + 16);
        v557 = v131;
        v127 = sub_1CEFE1894(sub_1CF2B0E64);
        v192 = v604;
        if (v604)
        {
          swift_beginAccess();
          v127 = *v187;
          if (!*v187)
          {
LABEL_220:
            __break(1u);
LABEL_221:
            MEMORY[0x1EEE9AC00](v127);
            v556 = v562;
            fp_preconditionFailure(_:file:line:)(sub_1CF2B0E8C, &v554, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 2363);
          }

          v193 = [v127 URL];
          sub_1CF9E59D8();

          v194 = sub_1CF9E5928();
          (*(v616 + 8))(v188, v617);
          v195 = sub_1CF9E5928();
          [v192 itemAtURL:v194 didMoveToURL:v195];
        }
      }
    }

    v132 = v615;
    v133 = v606;
    if ((v613 & 8) != 0)
    {
      v199 = &v562[v612[14] + *(v606 + 40)];
      v200 = *(v199 + 1);
      if (!v200)
      {
        goto LABEL_221;
      }

      v201 = *v199;
      v202 = sub_1CF9E5928();
      v610 = [v202 fileSystemRepresentation];
      v203 = v202;
      *&v664 = v201;
      *(&v664 + 1) = v200;
      *&v642 = 47;
      *(&v642 + 1) = 0xE100000000000000;
      *&v636 = 58;
      *(&v636 + 1) = 0xE100000000000000;
      v204 = sub_1CEFE4E68();
      v205 = MEMORY[0x1E69E6158];
      v609 = sub_1CF9E7668();
      v207 = v206;
      *&v664 = v201;
      *(&v664 + 1) = v200;
      *&v642 = 47;
      *(&v642 + 1) = 0xE100000000000000;
      *&v636 = 58;
      *(&v636 + 1) = 0xE100000000000000;
      v556 = v204;
      v557 = v204;
      v554 = v205;
      v555 = v204;
      sub_1CF9E7668();
      v209 = v208;
      v210 = sub_1CF9E6978();
      v209, v211, v212, v213, v214, v215, v216, v217;
      v218 = strlen((v210 + 32));

      v219 = __OFADD__(v218, 1);
      v220 = v218 + 1;
      if (v219)
      {
        goto LABEL_218;
      }

      v221 = sub_1CF9E6978();
      v207, v222, v223, v224, v225, v226, v227, v228;
      setxattr(v610, "com.apple.fileprovider.before-bounce#PX", (v221 + 32), v220, 0, 3);

      v131 = v611;
      v118 = v614;
      v132 = v615;
      v133 = v606;
    }

    else
    {
      v196 = sub_1CF9E5928();
      v197 = [v196 fileSystemRepresentation];
      v198 = v196;
      removexattr(v197, "com.apple.fileprovider.before-bounce#PX", 1);
    }

    v128 = v607;
    sub_1CF4D463C();
    goto LABEL_55;
  }

  v129 = v603;
  sub_1CEFE4C60(v124, v603, type metadata accessor for VFSItem);
  sub_1CF9E5CF8();
  sub_1CF2A9448(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v130 = sub_1CF9E6868();
  v127 = sub_1CEFE5888(v129, type metadata accessor for VFSItem);
  v128 = v607;
  if (v130)
  {
    goto LABEL_21;
  }

  v131 = v611;
  if (a16)
  {
    goto LABEL_25;
  }

LABEL_23:
  v132 = v615;
  v133 = v606;
LABEL_55:
  v648 = v618;
  v229 = swift_allocObject();
  *(v229 + 16) = 0;
  v230 = (v229 + 16);
  v231 = &v562[*(v133 + 40)];
  v609 = v612[21];
  v610 = v229;
  if (sub_1CF3842EC(*(v231 + v609), &unk_1F4BED4F0))
  {
    v232 = v612;
    v233 = v618;
    v234 = v608;
    goto LABEL_72;
  }

  v607 = 0;
  v235 = v231;
  v236 = v230;
  v237 = v132[27];
  v238 = v601;
  v239 = v602;
  *v601 = v237;
  (*(v239 + 13))(v238, *MEMORY[0x1E69E8020], v128);
  v240 = v237;
  LOBYTE(v237) = sub_1CF9E64D8();
  v127 = (*(v239 + 1))(v238, v128);
  if ((v237 & 1) == 0)
  {
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v241 = v132 + qword_1EDEAFAF8;
  os_unfair_lock_lock((v132 + qword_1EDEAFAF8));
  v242 = *(*(v241 + 1) + 16);
  os_unfair_lock_unlock(v241);
  v232 = v612;
  v234 = v608;
  if (!v242 && *(v118 + v608[7] + v612[16]) != 1)
  {
    v233 = v618;
    v131 = v611;
    v230 = v236;
    v231 = v235;
    v119 = v607;
    goto LABEL_72;
  }

  v233 = v618;
  v230 = v236;
  v231 = v235;
  if ((v618 & 0x10) != 0)
  {
    v131 = v611;
    v119 = v607;
    if (*(v235 + v612[20]) != 1 || (v618 & 0x10000) != 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    if (v618 & 8) == 0 || (*(v118 + v608[7] + v612[20]))
    {
      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v131 = v611;
  v119 = v607;
  if ((v618 & 0x10000) == 0)
  {
    goto LABEL_65;
  }

LABEL_67:
  if ((*v230 & 0x10000) == 0)
  {
    *v230 |= 0x10000uLL;
  }

  if ((v233 & 0x10000) != 0)
  {
    v233 &= ~0x10000uLL;
    v648 = v233;
  }

LABEL_72:
  v243 = (v118 + v234[7]);
  v244 = &v243[v232[37]];
  if ((v244[4] & 1) == 0 && *v244 >= 2u && (v233 & 0x10000) != 0)
  {
    if (!*(v231 + v609))
    {
      goto LABEL_78;
    }

    v233 &= ~0x10000uLL;
    v648 = v233;
  }

  if (!v233)
  {
    swift_beginAccess();
    v256 = *(v619 + 16);
    v257 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
    v258 = v614;
    v259 = v620;
    sub_1CEFD90AC(v614, v620, type metadata accessor for VFSItem);
    v260 = *(v610 + 2);
    v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
    *(v259 + v261[9]) = v260;
    *(v259 + v261[10]) = 0;
    v262 = v259 + v261[11];
    *v262 = 0;
    *(v262 + 1) = 0;
    *(v262 + 2) = 0;
    *(v262 + 3) = 0xB000000000000000;
    *(v262 + 2) = 0u;
    *(v262 + 3) = 0u;
    (*(*(v261 - 1) + 56))(v259, 0, 1, v261);
    *(v259 + v257) = 0;
    swift_storeEnumTagMultiPayload();

    v256(v259);

    sub_1CEFCCC44(v259, &unk_1EC4C5000, &qword_1CFA181A0);

    v263 = v258;
LABEL_136:
    sub_1CEFE5888(v263, type metadata accessor for VFSItem);
    return (*(v616 + 8))(v131, v617);
  }

LABEL_78:
  if ((v233 & 0x10) != 0)
  {
    v607 = a23;
    v618 = v230;
    v264 = swift_allocObject();
    *(v264 + 16) = 0;
    v603 = (v264 + 16);
    *(v264 + 24) = 0;
    *(v264 + 32) = 0;
    *(v264 + 40) = 0xB000000000000000;
    *(v264 + 48) = 0u;
    *(v264 + 64) = 0u;
    v606 = v264;
    v632 = v559;
    v633 = v560;
    swift_beginAccess();
    v265 = a14[4];
    v266 = a14[2];
    v638 = a14[3];
    v639 = v265;
    v267 = a14[4];
    v268 = a14[6];
    v640 = a14[5];
    v641 = v268;
    v269 = a14[2];
    v636 = *v103;
    v637 = v269;
    v666 = v638;
    v667 = v267;
    v270 = a14[6];
    v668 = v640;
    v669 = v270;
    v664 = v636;
    v665 = v266;
    sub_1CEFCCBDC(&v636, &v626, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFDAA48(&v632, &v664, &v626, v271, v272, v273, v274, v275, v276);
    v644 = v666;
    v645 = v667;
    v646 = v668;
    v647 = v669;
    v642 = v664;
    v643 = v665;
    sub_1CEFCCC44(&v642, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v284 = v628;
    v285 = v612[28];
    if (v243[v285] != (a22 & 1))
    {
      v628, v277, v278, v279, v280, v281, v282, v283;
      if (!v607)
      {
        swift_beginAccess();
        v362 = *(v619 + 16);
        LODWORD(v626) = 22;

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v364 = v591;
        v363 = v592;
        sub_1CF9E57D8();
        v365 = sub_1CF9E53A8();
        (*(v593 + 8))(v364, v363);
        v366 = v620;
        *v620 = v365;
        swift_storeEnumTagMultiPayload();
        v362(v366);

        sub_1CEFCCC44(v366, &unk_1EC4C5000, &qword_1CFA181A0);

LABEL_115:

        v263 = v614;
        goto LABEL_136;
      }

      v286 = v648;
      sub_1CEFD90AC(v243, v599, type metadata accessor for ItemMetadata);
      *&v664 = v286;

      sub_1CF677700(&v664, v231);
      v287 = fpfs_supports_parent_mtime_iopolicy();
      v288 = v612;
      if ((v287 & 1) == 0)
      {
        v289 = v612[8];
        v290 = sub_1CF9E5CF8();
        v287 = (*(*(v290 - 8) + 24))(v599 + v289, v231 + v289, v290);
      }

      if (*(v618 + 2))
      {
        v291 = 0;
      }

      else
      {
        v291 = *(v231 + v609);
        if (v291)
        {
          v292 = v231;
          v255 = v616;
          if (v286 & 8) != 0 && (v293 = v288[20], v243[v293] == 1) && (*(v292 + v293))
          {
            v291 = 0;
          }

          else if ((v286 & 0x10010) == 0)
          {
            v291 = v243[v288[21]];
          }

          goto LABEL_128;
        }
      }

      v255 = v616;
LABEL_128:
      v377 = v288[21];
      v378 = v599;
      *(v599 + v377) = v291;
      MEMORY[0x1EEE9AC00](v287);
      v379 = v607;
      *(&v558 - 12) = v380;
      *(&v558 - 11) = v379;
      *(&v558 - 10) = v131;
      *(&v558 - 9) = v378;
      *(&v558 - 8) = v103;
      *(&v558 - 7) = a24;
      v381 = v614;
      *(&v558 - 6) = v562;
      *(&v558 - 5) = v381;
      v554 = &v648;
      v555 = v382;
      v556 = v621;
      v557 = v618;
      sub_1CF2EF290(v379, 0x200000, sub_1CF2B0D9C, (&v558 - 14), &v558);
      if (!v119)
      {

        sub_1CEFE5888(v378, type metadata accessor for ItemMetadata);

        sub_1CEFE5888(v381, type metadata accessor for VFSItem);
        return (*(v255 + 8))(v131, v617);
      }

      v333 = v119;

      sub_1CEFE5888(v378, type metadata accessor for ItemMetadata);

      v383 = v381;
      goto LABEL_216;
    }

    v342 = &a25[v608[7]];
    v343 = 0x100000;
    if (*v342 != 1)
    {
      if (v342[v285])
      {
        v343 = 0x100000;
      }

      else
      {
        v343 = 2097153;
      }
    }

    v602 = &a25[v608[7]];
    v664 = v626;
    v665 = v627;
    *&v666 = v628;
    v344 = v615;
    v345 = objc_sync_enter(v615);
    if (v345)
    {
      MEMORY[0x1EEE9AC00](v345);
      v556 = v344;
      goto LABEL_225;
    }

    v604 = a24;
    v346 = *(v344 + 20);

    v347 = objc_sync_exit(v344);
    if (!v347)
    {
      v348 = *(v346 + 16);

      v349 = sub_1CEFDADE0(&v664, v348, v343);
      v333 = v119;
      if (v119)
      {

        v341 = v284;
        goto LABEL_112;
      }

      v367 = v349;
      v284, v350, v351, v352, v353, v354, v355, v356;
      v368 = v648;
      v369 = v594;
      sub_1CEFD90AC(v243, v594, type metadata accessor for ItemMetadata);
      *&v664 = v368;
      sub_1CF677700(&v664, v231);
      v131 = v611;
      if (*v243 == 1)
      {
        v370 = *(v231 + 8);
        *(v369 + 1) = v231[1];
        v369[8] = v370;
      }

      v371 = fpfs_supports_parent_mtime_iopolicy();
      if ((v371 & 1) == 0)
      {
        v372 = v612[8];
        v373 = sub_1CF9E5CF8();
        v371 = (*(*(v373 - 8) + 24))(&v369[v372], v231 + v372, v373);
      }

      v605 = 0;
      if (*(v618 + 2))
      {
        v374 = 0;
        v375 = v588;
      }

      else
      {
        v374 = *(v231 + v609);
        v375 = v588;
        if (v374)
        {
          if (v368 & 8) != 0 && (v376 = v612[20], v243[v376] == 1) && (*(v231 + v376))
          {
            v374 = 0;
          }

          else if ((v368 & 0x10010) == 0)
          {
            v374 = v243[v612[21]];
          }
        }
      }

      v407 = v612;
      v369[v612[21]] = v374;
      v408 = *(v231 + v407[20]);
      LODWORD(v601) = v367;
      if (v408)
      {
        if (*v369 == 1)
        {
          v409 = 0;
        }

        else
        {
          v409 = 5;
        }

        if (*v369 - 1 >= 2)
        {
          v410 = 0x1E9F38F07;
        }

        else
        {
          v410 = 0;
        }

        if ((v613 & 0x80) != 0)
        {
          v411 = 4;
        }

        else
        {
          v411 = v409;
        }

        if ((v613 & 0x100) != 0)
        {
          v412 = v614;
          v413 = sub_1CF252F6C();
          if (!v413)
          {
            v618 = v410;
            v479 = v615[17];
            v480 = v412 + v608[9];
            v481 = *v480;
            v482 = v412 + v608[14];
            if (*(v482 + 4))
            {
              v483 = 0;
            }

            else
            {
              v483 = *v482;
            }

            v484 = *(v480 + 8);
            0, v414, v415, v416, v417, v418, v419, v420;
            v626 = v481;
            v627 = __PAIR64__(v484, v483);
            *&v628 = 0;
            v485 = v605;
            (*(*v479 + 440))(v622, &v626, v243, 0, 0, 1, 0, 1, 0);
            if (v485)
            {
              0, v486, v487, v488, v489, v490, v491, v492;
              *&v664 = v559;
              BYTE8(v664) = v560;
              *&v665 = v485;
              sub_1CF2B0E58(&v664);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v493 = swift_allocError();
              *v494 = v664;
              v495 = v668;
              v496 = v666;
              v497 = v665;
              *(v494 + 48) = v667;
              *(v494 + 64) = v495;
              *(v494 + 16) = v497;
              *(v494 + 32) = v496;
              v498 = v671;
              v499 = v670;
              v500 = v669;
              *(v494 + 128) = v672;
              *(v494 + 96) = v499;
              *(v494 + 112) = v498;
              *(v494 + 80) = v500;
              v438 = v493;
              swift_willThrow();
              v436 = v615;
              v434 = v594;
              v375 = v588;
LABEL_160:
              v439 = v614;
              v441 = v592;
              v440 = v593;
              if (*v602 - 1 >= 2 && v602[v612[20]] == 1)
              {
                v442 = v438;
LABEL_204:

                goto LABEL_205;
              }

              v634 = v438;
              v452 = v438;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              if (swift_dynamicCast())
              {

                v453 = *(v440 + 32);
                v454 = v565;
                v455 = v453(v565, v375, v441);
                v456 = v603[1];
                v664 = *v603;
                v665 = v456;
                v457 = v603[3];
                v666 = v603[2];
                v667 = v457;
                if (*(&v665 + 1) >> 60 != 11 && v664)
                {
                  v458 = v436[17];
                  MEMORY[0x1EEE9AC00](v455);
                  v554 = v458;
                  LODWORD(v555) = 3;
                  v556 = v459;
                  sub_1CEFCCBDC(&v664, &v626, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFE1894(sub_1CF2B9F78);
                  v458[OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy] = 0;
                  if (*&v458[OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource])
                  {
                    ObjectType = swift_getObjectType();
                    swift_unknownObjectRetain();
                    MEMORY[0x1D3869790](1, ObjectType);
                    swift_unknownObjectRelease();
                  }

                  sub_1CEFCCC44(&v664, &unk_1EC4BF260, &unk_1CFA01B60);
                  v434 = v594;
                  v441 = v592;
                  v454 = v565;
                }

                v333 = sub_1CF9E53A8();
                swift_willThrow();
                (*(v593 + 8))(v454, v441);
              }

              else
              {

                v333 = v438;
              }

LABEL_202:
              v526 = v333;
              LODWORD(v664) = sub_1CF9E5398();
              sub_1CF196978();
              v527 = sub_1CF9E5658();

              if ((v527 & 1) == 0)
              {
                sub_1CEFE5888(v434, type metadata accessor for ItemMetadata);
                v255 = v616;
                if ((v601 & 0x80000000) == 0)
                {
                  close(v601);
                }

                v383 = v439;
LABEL_216:
                sub_1CEFE5888(v383, type metadata accessor for VFSItem);
                goto LABEL_15;
              }

              v442 = v333;
              goto LABEL_204;
            }

            v605 = 0;
            0, v486, v487, v488, v489, v490, v491, v492;
            v520 = v603;
            v521 = v603[1];
            v664 = *v603;
            v665 = v521;
            v522 = v603[3];
            v666 = v603[2];
            v667 = v522;
            v523 = v622[1];
            *v603 = v622[0];
            v520[1] = v523;
            v524 = v622[3];
            v520[2] = v622[2];
            v520[3] = v524;
            sub_1CEFCCC44(&v664, &unk_1EC4BF260, &unk_1CFA01B60);
            v421 = 0;
            v375 = v588;
            v367 = v601;
            v410 = v618;
            goto LABEL_158;
          }

          v413, v414, v415, v416, v417, v418, v419, v420;
        }

        v421 = v411 == 5;
LABEL_158:
        swift_beginAccess();
        v422 = *(v561 + 6);
        LOBYTE(v626) = v411;
        v423 = v616;
        v424 = v617;
        v425 = v567;
        (*(v616 + 16))(v567, v131, v617);
        (*(v423 + 56))(v425, 0, 1, v424);
        v426 = v604[13];
        v676 = v604[12];
        v677 = v426;
        v678 = v604[14];
        v679 = *(v604 + 30);
        v427 = v604[9];
        v672 = v604[8];
        v673 = v427;
        v428 = v604[11];
        v674 = v604[10];
        v675 = v428;
        v429 = v604[5];
        v668 = v604[4];
        v669 = v429;
        v430 = v604[7];
        v670 = v604[6];
        v671 = v430;
        v431 = v604[1];
        v664 = *v604;
        v665 = v431;
        v432 = v604[3];
        v666 = v604[2];
        v667 = v432;
        v433 = v367;
        v434 = v594;
        v435 = v422;
        v436 = v615;
        v437 = v605;
        sub_1CF298D34(v433, v594, v435, v410, &v626, v421, v425, &v664);
        if (v437)
        {
          v438 = v437;
          sub_1CEFCCC44(v425, &unk_1EC4BE310, qword_1CF9FCBE0);
          goto LABEL_160;
        }

        sub_1CEFCCC44(v425, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_205:
        v470 = v559;
        goto LABEL_206;
      }

      v443 = v613 & 0x200;
      v444 = v607;
      if (v607)
      {
        MEMORY[0x1EEE9AC00](v371);
        *(&v558 - 20) = v367;
        v436 = v445;
        v446 = v562;
        *(&v558 - 9) = v444;
        *(&v558 - 8) = v446;
        v439 = v614;
        v447 = v559;
        *(&v558 - 7) = v614;
        *(&v558 - 6) = v447;
        *(&v558 - 40) = v448;
        v554 = v594;
        v555 = v604;
        LOBYTE(v556) = v443 >> 9;
        v557 = v445;

        v450 = v605;
        sub_1CF2EF290(v449, 0x200000, sub_1CF2B0E08, (&v558 - 12), v451);
        if (v450)
        {
          v333 = v450;

          v434 = v594;
          goto LABEL_202;
        }

        goto LABEL_205;
      }

      v467 = v615;
      v468 = objc_sync_enter(v615);
      if (v468)
      {
        MEMORY[0x1EEE9AC00](v468);
        v556 = v467;
        goto LABEL_225;
      }

      v469 = *(v467 + 20);

      v347 = objc_sync_exit(v467);
      v470 = v559;
      if (!v347)
      {
        os_unfair_lock_lock((v469 + 56));
        v471 = *(v469 + 64);
        v472 = *(v469 + 72);
        v473 = *(v469 + 88);
        v474 = *(v469 + 89);
        v475 = *(v469 + 90);

        v476 = *(v469 + 80);
        os_unfair_lock_unlock((v469 + 56));

        MEMORY[0x1EEE9AC00](v477);
        *(&v558 - 20) = v601;
        *(&v558 - 9) = 0x1E9F18F07;
        *(&v558 - 16) = -1;
        *(&v558 - 7) = -1;
        *(&v558 - 6) = -1;
        *(&v558 - 40) = 0;
        *(&v558 - 39) = v443 >> 9;
        v554 = v471;
        v555 = v472;
        v556 = v476;
        LOBYTE(v557) = v473;
        BYTE1(v557) = v474;
        BYTE2(v557) = v475;
        v478 = v605;
        sub_1CF9B9F4C(v604, sub_1CF2B0DDC, &v558 - 96, &v664);
        if (!v478)
        {

          v436 = v615;
LABEL_206:
          v528 = v558;
          swift_beginAccess();
          v621 = *(v528 + 16);
          v529 = swift_allocObject();
          *(v529 + 16) = v619;
          *(v529 + 24) = v470;
          *(v529 + 32) = v560;
          v530 = v610;
          *(v529 + 40) = v528;
          *(v529 + 48) = v530;
          *(v529 + 56) = v606;
          sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
          v531 = v436[27];
          *&v626 = MEMORY[0x1E69E7CC0];
          sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

          v532 = v531;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
          sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
          v533 = v568;
          v534 = v570;
          sub_1CF9E77B8();
          v535 = sub_1CF9E73E8();

          (*(v569 + 8))(v533, v534);
          qos_class_self();
          v536 = v574;
          sub_1CF9E63B8();
          v538 = v571;
          v537 = v572;
          v539 = *(v571 + 48);
          if (v539(v536, 1, v572) == 1)
          {
            (*(v538 + 104))(v573, *MEMORY[0x1E69E7FA0], v537);
            v540 = v539(v536, 1, v537);
            v542 = v583;
            v541 = v584;
            v543 = v577;
            v544 = v578;
            if (v540 != 1)
            {
              sub_1CEFCCC44(v536, &unk_1EC4BE380, &qword_1CFA01BA0);
            }
          }

          else
          {
            (*(v538 + 32))(v573, v536, v537);
            v542 = v583;
            v541 = v584;
            v543 = v577;
            v544 = v578;
          }

          v545 = swift_getObjectType();
          v546 = v575;
          sub_1CF9E6428();
          v547 = swift_allocObject();
          v548 = v559;
          *(v547 + 16) = v615;
          *(v547 + 24) = v548;
          *(v547 + 32) = v560;
          *(v547 + 40) = 0u;
          *(v547 + 56) = 0u;
          *(v547 + 72) = 0u;
          *(v547 + 88) = 0u;
          *(v547 + 104) = 0u;
          *(v547 + 120) = 0u;
          v549 = v621;
          *(v547 + 136) = 0;
          *(v547 + 144) = v549;
          *(v547 + 152) = v535;
          *(v547 + 160) = sub_1CF2B0DF4;
          *(v547 + 168) = v529;

          swift_unknownObjectRetain();

          sub_1CEFD5828(0, v546, sub_1CF2B9F4C, v547, v545);

          (*(v576 + 8))(v546, v543);
          sub_1CF9E6478();
          v550 = v544;
          v551 = v580;
          sub_1CEFD5B64(v580);
          v552 = v582;
          sub_1CEFD5BD8(v582);
          MEMORY[0x1D3869770](v550, v551, v552, v545);
          v553 = *(v542 + 8);
          v553(v552, v541);
          v553(v551, v541);
          (*(v579 + 8))(v550, v581);
          sub_1CF9E7448();

          swift_unknownObjectRelease();
          sub_1CEFE5888(v594, type metadata accessor for ItemMetadata);
          if ((v601 & 0x80000000) == 0)
          {
            close(v601);
          }

          sub_1CEFE5888(v614, type metadata accessor for VFSItem);
          return (*(v616 + 8))(v611, v617);
        }

        v333 = v478;

        v131 = v611;
        v439 = v614;
        v436 = v615;
        v434 = v594;
        goto LABEL_202;
      }
    }

    MEMORY[0x1EEE9AC00](v347);
    v556 = v615;
    goto LABEL_227;
  }

  *&v664 = v648;
  v245 = sub_1CF2ADA38(&v664, v562, v243);
  if (v245)
  {
    if (a23)
    {
      v246 = v615[17];
      MEMORY[0x1EEE9AC00](v245);
      v247 = v562;
      *(&v558 - 12) = a23;
      *(&v558 - 11) = v247;
      v248 = v614;
      v249 = v559;
      *(&v558 - 10) = v614;
      *(&v558 - 9) = v249;
      *(&v558 - 64) = v560;
      *(&v558 - 7) = &v648;
      *(&v558 - 6) = v250;
      *(&v558 - 5) = v251;
      v554 = v131;
      v555 = a14 + 1;
      v556 = a25;
      v557 = v613;

      v253 = v590;
      sub_1CF2F005C(v252, 0x200000, sub_1CF2B0D4C, (&v558 - 14), v590);
      if (v119)
      {
        v254 = v119;

        sub_1CEFE5888(v248, type metadata accessor for VFSItem);
        v255 = v616;
LABEL_194:
        v120 = v619;
        v121 = v620;
        v333 = v254;
        goto LABEL_16;
      }

      v607 = a23;
      *(v246 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v246 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v393 = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, v393);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v394 = *(v619 + 16);
      v395 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      v396 = v620;
      sub_1CEFD90AC(v253, v620, type metadata accessor for VFSItem);
      v397 = v253;
      v398 = *(v610 + 2);
      v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v396 + v399[9]) = v398;
      *(v396 + v399[10]) = 0;
      v400 = v396 + v399[11];
      *v400 = 0;
      *(v400 + 1) = 0;
      *(v400 + 2) = 0;
      *(v400 + 3) = 0xB000000000000000;
      *(v400 + 2) = 0u;
      *(v400 + 3) = 0u;
      (*(*(v399 - 1) + 56))(v396, 0, 1, v399);
      *(v396 + v395) = 0;
      swift_storeEnumTagMultiPayload();

      v394(v396);

      sub_1CEFCCC44(v396, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v397, type metadata accessor for VFSItem);

      v263 = v614;
      goto LABEL_136;
    }

    swift_beginAccess();
    v357 = *(v619 + 16);
    LODWORD(v642) = 22;

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v359 = v591;
    v358 = v592;
    sub_1CF9E57D8();
    v360 = sub_1CF9E53A8();
    (*(v593 + 8))(v359, v358);
    v361 = v620;
    *v620 = v360;
    swift_storeEnumTagMultiPayload();
    v357(v361);

    sub_1CEFCCC44(v361, &unk_1EC4C5000, &qword_1CFA181A0);
    goto LABEL_115;
  }

  v618 = v230;
  v294 = v648;
  v295 = v600;
  sub_1CEFD90AC(v243, v600, type metadata accessor for ItemMetadata);
  *&v664 = v294;
  sub_1CF677700(&v664, v231);
  v296 = v612[20];
  LODWORD(v609) = v243[v296];
  if ((v609 & 1) != 0 && v295[v296] == 1)
  {
    v295[v612[22]] = v243[v612[22]];
  }

  v297 = sub_1CF67A7E4(v295, v243);
  v298 = v615;
  if (!v297 || (v294 & 0x10000) != 0 || (v299 = a24[13], v676 = a24[12], v677 = v299, v678 = a24[14], v679 = *(a24 + 30), v300 = a24[9], v672 = a24[8], v673 = v300, v301 = a24[11], v674 = a24[10], v675 = v301, v302 = a24[5], v668 = a24[4], v669 = v302, v303 = a24[7], v670 = a24[6], v671 = v303, v304 = a24[1], v664 = *a24, v665 = v304, v305 = a24[3], v666 = a24[2], v667 = v305, get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v664) != 1))
  {
    v607 = v648;
    v608 = v231;
    *&v626 = v648;
    v306 = sub_1CF2ACEBC(&v626);
    v634 = v559;
    v635 = v560;
    swift_beginAccess();
    v307 = a14[4];
    v308 = a14[2];
    v638 = a14[3];
    v639 = v307;
    v309 = a14[4];
    v310 = a14[6];
    v640 = a14[5];
    v641 = v310;
    v311 = a14[2];
    v636 = *v103;
    v637 = v311;
    v628 = v638;
    v629 = v309;
    v312 = a14[6];
    v630 = v640;
    v631 = v312;
    v626 = v636;
    v627 = v308;
    sub_1CEFCCBDC(&v636, &v623, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFDAA48(&v634, &v626, &v623, v313, v314, v315, v316, v317, v318);
    v644 = v628;
    v645 = v629;
    v646 = v630;
    v647 = v631;
    v642 = v626;
    v643 = v627;
    sub_1CEFCCC44(&v642, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v319 = DWORD1(v624);
    v320 = v625;
    v626 = v623;
    v627 = v624;
    *&v628 = v625;
    v321 = objc_sync_enter(v298);
    if (!v321)
    {
      v604 = a24;
      v322 = v298[20];

      v323 = objc_sync_exit(v298);
      if (!v323)
      {
        v324 = *(v322 + 16);

        v325 = sub_1CEFDADE0(&v626, v324, 2129920);
        v333 = v119;
        if (v119)
        {
          sub_1CEFE5888(v600, type metadata accessor for ItemMetadata);

          v341 = v320;
LABEL_112:
          v341, v334, v335, v336, v337, v338, v339, v340;
          sub_1CEFE5888(v614, type metadata accessor for VFSItem);
          v255 = v616;
          v131 = v611;
LABEL_15:
          v120 = v619;
          v121 = v620;
LABEL_16:
          swift_beginAccess();
          v122 = *(v120 + 16);
          *v121 = v333;
          swift_storeEnumTagMultiPayload();

          v123 = v333;
          v122(v121);

          sub_1CEFCCC44(v121, &unk_1EC4C5000, &qword_1CFA181A0);
          return (*(v255 + 8))(v131, v617);
        }

        v384 = v325;
        if ((v609 & 1) != 0 && v600[v612[20]] == 1)
        {
          v320, v326, v327, v328, v329, v330, v331, v332;
          v605 = &v558;
          v385 = *(v298[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
          v387 = MEMORY[0x1EEE9AC00](v386).n128_u64[0];
          *(&v558 - 12) = v384;
          *(&v558 - 5) = v306;
          v554 = v388;
          v555 = v385;
          v556 = v387;
          LOBYTE(v557) = v389;
          BYTE1(v557) = v390;
          BYTE2(v557) = v391;
          BYTE3(v557) = 1;

          v392 = v600;
          v501 = sub_1CF9B8B08(v604, sub_1CF2B0CF8, &v558 - 64);
        }

        else
        {
          v605 = &v558;
          v401 = *(v298[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
          v402 = MEMORY[0x1EEE9AC00](v325).n128_u64[0];
          *(&v558 - 12) = v384;
          *(&v558 - 11) = v319;
          *(&v558 - 5) = v306;
          v554 = v403;
          v555 = v401;
          v556 = v402;
          LOBYTE(v557) = v404;
          BYTE1(v557) = v405;
          BYTE2(v557) = v406;
          BYTE3(v557) = 1;

          v392 = v600;
          v501 = sub_1CF9B8B08(v604, sub_1CF2B9EBC, &v558 - 64);

          v320, v460, v461, v462, v463, v464, v465, v466;
        }

        type metadata accessor for VFSFileTree(0);
        sub_1CF27B338(v501, &v626);
        v502 = v626 & 0xFFFFFFFFFFFFFFFELL;
        v503 = v612;
        v504 = v566;
        if ((v626 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          if ((v502 & v607) != 0)
          {
            v648 = v607 & ~v502;
          }

          if ((v502 & ~*v618) != 0)
          {
            *v618 |= v502;
          }

          v505 = v648;
          sub_1CEFD90AC(v243, v504, type metadata accessor for ItemMetadata);
          *&v626 = v505;
          sub_1CF677700(&v626, v608);
          sub_1CEFE5888(v392, type metadata accessor for ItemMetadata);
          sub_1CEFE4C60(v504, v392, type metadata accessor for ItemMetadata);
          if (v609 && *(v392 + v503[20]) == 1)
          {
            *(v392 + v503[22]) = v243[v503[22]];
          }
        }

        if ((v384 & 0x80000000) == 0)
        {
          close(v384);
        }

        goto LABEL_192;
      }

      MEMORY[0x1EEE9AC00](v323);
      v556 = v298;
LABEL_227:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v554, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v321);
    v556 = v298;
LABEL_225:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v554, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

LABEL_192:
  v131 = v611;
  v506 = v587;
  v507 = *v562;
  v508 = v562[8];
  v510 = *(v562 + 2);
  v509 = *(v562 + 3);
  sub_1CEFD90AC(v600, &v587[*(v606 + 40)], type metadata accessor for ItemMetadata);
  *v506 = v507;
  *(v506 + 8) = v508;
  *(v506 + 16) = v510;
  *(v506 + 24) = v509;
  v643 = 0u;
  v642 = 0u;
  *&v644 = 1;
  v255 = v616;
  v511 = v617;
  v512 = v586;
  (*(v616 + 16))(v586, v131, v617);
  (*(v255 + 56))(v512, 0, 1, v511);
  *&v626 = v648;

  v513 = v589;
  sub_1CF27A500(v614, v506, &v642, v512, &v626, v613, v589);
  if (v119)
  {
    v254 = v119;
    sub_1CEFCCC44(v512, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFCCC44(v506, &unk_1EC4BFD90, &unk_1CFA134F0);
    sub_1CEFE5888(v600, type metadata accessor for ItemMetadata);

    sub_1CEFE5888(v614, type metadata accessor for VFSItem);
    goto LABEL_194;
  }

  sub_1CEFCCC44(v512, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCC44(v506, &unk_1EC4BFD90, &unk_1CFA134F0);
  swift_beginAccess();
  v514 = *(v619 + 16);
  v515 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
  v516 = v620;
  sub_1CEFD90AC(v513, v620, type metadata accessor for VFSItem);
  v517 = *(v610 + 2);
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
  *(v516 + v518[9]) = v517;
  *(v516 + v518[10]) = 0;
  v519 = v516 + v518[11];
  *v519 = 0;
  *(v519 + 1) = 0;
  *(v519 + 2) = 0;
  *(v519 + 3) = 0xB000000000000000;
  *(v519 + 2) = 0u;
  *(v519 + 3) = 0u;
  (*(*(v518 - 1) + 56))(v516, 0, 1, v518);
  *(v516 + v515) = 0;
  swift_storeEnumTagMultiPayload();

  v514(v516);

  sub_1CEFCCC44(v516, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFE5888(v589, type metadata accessor for VFSItem);
  sub_1CEFE5888(v600, type metadata accessor for ItemMetadata);

  sub_1CEFE5888(v614, type metadata accessor for VFSItem);
  return (*(v255 + 8))(v131, v511);
}

void *sub_1CF283F94@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = *a1;
  if (*a1)
  {
    v9 = [result URL];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    sub_1CF9E5A18();
    v13 = v12;
    v14 = sub_1CF9E6978();
    v11, v15, v16, v17, v18, v19, v20, v21;
    v22 = sub_1CF9E6978();
    v13, v23, v24, v25, v26, v27, v28, v29;
    LODWORD(v13) = MEMORY[0x1D386BA20](4294967294, v14 + 32, 4294967294, v22 + 32, 4);

    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF284134()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF2A86DC();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0xD000000000000030;
}

uint64_t sub_1CF2841B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t *a13, uint64_t a14, void (**a15)(uint64_t), uint64_t *a16)
{
  v100 = a8;
  v120 = a7;
  v97 = a6;
  v99 = a2;
  LODWORD(v96) = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v92 = &v85 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v85 - v23;
  v24 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v85 - v27;
  v89 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v89);
  v95 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  v32 = sub_1CF9E53C8();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v86 = v18;
    v87 = v20;
    v36 = a5[17];
    sub_1CEFD90AC(v100, v31, type metadata accessor for ItemMetadata);
    swift_beginAccess();
    v37 = *a9;
    v38 = *(a9 + 2);
    v39 = a9[2];
    v40 = *(a9 + 24);
    v41 = objc_sync_enter(a5);
    if (v41)
    {
      MEMORY[0x1EEE9AC00](v41);
      v84 = a5;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v83, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v42 = a5[20];

    v88 = a5;
    v43 = objc_sync_exit(a5);
    if (v43)
    {
      MEMORY[0x1EEE9AC00](v43);
      v84 = v88;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v83, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v117 = *(a10 + 240);
    v44 = *(a10 + 208);
    v114 = *(a10 + 192);
    v115 = v44;
    v116 = *(a10 + 224);
    v45 = *(a10 + 144);
    v110 = *(a10 + 128);
    v111 = v45;
    v46 = *(a10 + 176);
    v112 = *(a10 + 160);
    v113 = v46;
    v47 = *(a10 + 80);
    v106 = *(a10 + 64);
    v107 = v47;
    v48 = *(a10 + 112);
    v108 = *(a10 + 96);
    v109 = v48;
    v49 = *(a10 + 16);
    v102 = *a10;
    v103 = v49;
    v50 = *(a10 + 48);
    v104 = *(a10 + 32);
    v105 = v50;
    v51 = *(*v36 + 512);
    LOWORD(v83) = v40;
    v52 = v98;
    v53 = v99;
    v51(v118, v97, v96, v99, v120, v31, v37, v38, v39, v83, v42, &v102);
    sub_1CEFE5888(v31, type metadata accessor for ItemMetadata);

    if (!v52)
    {
      v98 = a14;
      v97 = a13;
      v85 = v118[1];
      v96 = v118[0];
      v55 = v119;
      v56 = v100;
      v57 = v95;
      sub_1CEFD90AC(v100, v95, type metadata accessor for ItemMetadata);
      v58 = v89;
      v59 = *(v89 + 112);
      if ((*(v56 + v59) & 1) != 0 || (v60 = *(v53 + 40), v60 == 3))
      {
        *(v57 + v59) = 1;
        v61 = v90;
      }

      else
      {
        v61 = v90;
        if (*(a11 + *(v90 + 40)))
        {
          *(v57 + v59) = 0;
          goto LABEL_9;
        }

        *(v57 + v59) = v60 == 2;
        if (v60 != 2)
        {
          goto LABEL_9;
        }
      }

      *(v57 + *(v58 + 104)) = *(v53 + 56);
      *(v57 + *(v58 + 108)) = *(v53 + 168);
LABEL_9:
      sub_1CEFD90AC(a12, v94, type metadata accessor for VFSItem);
      v62 = *a11;
      v63 = *(a11 + 8);
      v64 = v57;
      v65 = a11[2];
      v66 = a11[3];
      v67 = *(v61 + 40);
      v68 = v91;
      sub_1CEFD90AC(v64, &v91[v67], type metadata accessor for ItemMetadata);
      *v68 = v62;
      *(v68 + 8) = v63;
      *(v68 + 16) = v65;
      *(v68 + 24) = v66;
      v102 = v96;
      v103 = v85;
      *&v104 = v55;
      v69 = sub_1CF9E5A58();
      v70 = *(v69 - 8);
      v71 = v92;
      (*(v70 + 16))(v92, v120, v69);
      (*(v70 + 56))(v71, 0, 1, v69);
      v101 = *v97;

      v73 = v93;
      v72 = v94;
      sub_1CF27A500(v94, v68, &v102, v71, &v101, v98, v93);
      sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CF1E6520(v102, *(&v102 + 1), v103, *(&v103 + 1), v104, v74, v75, v76);
      sub_1CEFCCC44(v68, &unk_1EC4BFD90, &unk_1CFA134F0);
      sub_1CEFE5888(v72, type metadata accessor for VFSItem);
      swift_beginAccess();
      v77 = *a15;
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      v79 = v87;
      sub_1CEFD90AC(v73, v87, type metadata accessor for VFSItem);
      v80 = *a16;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v79 + v81[9]) = v80;
      *(v79 + v81[10]) = 0;
      v82 = v79 + v81[11];
      *v82 = 0;
      *(v82 + 8) = 0;
      *(v82 + 16) = 0;
      *(v82 + 24) = 0xB000000000000000;
      *(v82 + 32) = 0u;
      *(v82 + 48) = 0u;
      (*(*(v81 - 1) + 56))(v79, 0, 1, v81);
      *(v79 + v78) = 0;
      swift_storeEnumTagMultiPayload();

      v77(v79);

      sub_1CEFCCC44(v79, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v73, type metadata accessor for VFSItem);
      return sub_1CEFE5888(v95, type metadata accessor for ItemMetadata);
    }
  }

  else
  {
    LODWORD(v102) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v33 + 8))(v35, v32);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF284AB8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  v81 = a8;
  v80 = a7;
  v84 = a5;
  LODWORD(v82) = a1;
  v104 = *MEMORY[0x1E69E9840];
  v16 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E53C8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v25;
  if (!a4)
  {
    v82 = v20;
    v45 = v80;
    v46 = v26;
    v83 = v18;
    v47 = v81;
    LOBYTE(v85) = 0;
    if ((fpfs_is_dataless_fault() & 0x80000000) != 0)
    {
      v53 = MEMORY[0x1D38683F0]();
      *v97 = 18;
      memset(&v97[8], 0, 32);
      v97[40] = 19;
      sub_1CF19BBE4(v53, v97);
      sub_1CF1969CC(v97);
    }

    else
    {
      if (v85)
      {
        v84 = a10;
        v82 = a9;
        v79 = *(a6 + 16);
        v48 = *(a6 + 36);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        sub_1CEFD90AC(v45 + *(v49 + 40), v46, type metadata accessor for ItemMetadata);
        v50 = v46;
        v51 = *v46;
        if (v51 == 1)
        {
          v80 = 0;
          v77 = 0;
          v78 = 1;
          v52 = v83;
        }

        else
        {
          v54 = v51 != 2 && v46[v23[20]] == 0;
          v52 = v83;
          if (v54)
          {
            v55 = *(v50 + v23[28]);
            v77 = v48;
            if ((v55 & 1) == 0)
            {
              v78 = 0;
              v80 = *(v50 + v23[26]);
              goto LABEL_26;
            }

            v80 = 0;
          }

          else
          {
            v80 = 0;
            v77 = 0;
          }

          v78 = 1;
        }

LABEL_26:
        sub_1CEFE5888(v50, type metadata accessor for ItemMetadata);
        sub_1CEFD90AC(v47, v52, type metadata accessor for VFSItem);
        v56 = v52 + *(v16 + 36);
        v57 = *v56;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        v60 = *(v56 + 24);
        v61 = *(v52 + 16);
        v62 = *(v52 + 24);
        v63 = v52;
        v65 = *(v52 + 32);
        v64 = *(v52 + 40);

        sub_1CEFE5888(v63, type metadata accessor for VFSItem);
        v97[0] = v60;
        v85 = v57;
        v86 = v58;
        v87 = v59;
        v88 = v60;
        v89 = 0;
        v90 = v61;
        v91 = v62;
        v92 = v65;
        v93 = v64;
        v95 = 0;
        v96 = 0;
        v94 = 0;

        sub_1CEFCCC44(&v85, &unk_1EC4BE330, &unk_1CF9FF010);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
        swift_allocError();
        v67 = v66;
        sub_1CF1B8150();
        v68 = swift_allocError();
        *v69 = 0xB000000000000010;
        *v97 = v82;
        v97[8] = v84;
        *&v97[16] = v79;
        *&v97[24] = v77;
        *&v97[32] = v80;
        v97[40] = v78;
        *&v98 = 0;
        *(&v98 + 1) = v61;
        LOBYTE(v99) = v62;
        *(&v99 + 1) = v65;
        v100 = v64;
        v101 = 0uLL;
        v102 = v68;
        sub_1CF2A8DE0(v97);
        *v67 = *v97;
        v70 = *&v97[16];
        v71 = *&v97[32];
        v72 = v99;
        *(v67 + 48) = v98;
        *(v67 + 64) = v72;
        *(v67 + 16) = v70;
        *(v67 + 32) = v71;
        v73 = v100;
        v74 = v101;
        v75 = v102;
        *(v67 + 128) = v103;
        *(v67 + 96) = v74;
        *(v67 + 112) = v75;
        *(v67 + 80) = v73;
        return swift_willThrow();
      }

      *v97 = 37;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v82 + 8))(v22, v19);
    }

    return swift_willThrow();
  }

  v28 = *(a6 + 88);
  v29 = *(a6 + 72);
  v30 = *(a6 + 80);
  if (*(a6 + 80))
  {
    v31 = -1;
  }

  else
  {
    v31 = *(a6 + 64);
  }

  if (v30)
  {
    v32 = -1;
  }

  else
  {
    v32 = v29;
  }

  sub_1CEFD90AC(a11, &v76 - v25, type metadata accessor for ItemMetadata);
  v33 = objc_sync_enter(a14);
  if (v33)
  {
    MEMORY[0x1EEE9AC00](v33);
    *(&v76 - 2) = a14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v76 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v80 = v32;
  v81 = v31;
  v34 = a14[20];

  v35 = objc_sync_exit(a14);
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    *(&v76 - 2) = a14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v76 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v79 = a12;
  os_unfair_lock_lock((v34 + 56));
  v37 = *(v34 + 64);
  v36 = *(v34 + 72);
  v38 = *(v34 + 88);
  v39 = *(v34 + 89);
  v40 = *(v34 + 90);

  v41 = *(v34 + 80);
  os_unfair_lock_unlock((v34 + 56));

  MEMORY[0x1EEE9AC00](v42);
  *(&v76 - 20) = v84;
  *(&v76 - 9) = 0x1E9F18F07;
  *(&v76 - 16) = v82;
  v43 = v80;
  *(&v76 - 7) = v81;
  *(&v76 - 6) = v43;
  *(&v76 - 40) = v28 & 1;
  *(&v76 - 39) = a13 & 1;
  *(&v76 - 4) = v37;
  *(&v76 - 3) = v36;
  *(&v76 - 2) = v41;
  *(&v76 - 8) = v38;
  *(&v76 - 7) = v39;
  *(&v76 - 6) = v40;
  sub_1CF9B9F4C(v79, sub_1CF2B9EEC, &v76 - 96, v97);
  sub_1CEFE5888(v27, type metadata accessor for ItemMetadata);
}

uint64_t sub_1CF285330(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v55 = a4;
  v54 = a3;
  v57 = a1;
  v56 = type metadata accessor for VFSItem(0);
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v50 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v50 - v19);
  swift_beginAccess();
  v59 = *(a2 + 16);
  sub_1CEFCCBDC(v57, v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v20 = *v17;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = v17;
    v22 = v58;
    sub_1CEFE55D0(v21, v58, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v22, v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v8 + 48))(v12, 1, v56) == 1)
    {

      sub_1CEFCCC44(v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v23 = swift_allocObject();
      v24 = swift_allocObject();
      v25 = v51;
      swift_beginAccess();
      *(v24 + 16) = *(v25 + 16);
      *(v23 + 16) = v24;
      v26 = v23 | 0xA000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v27 = swift_allocError();
      v29 = v28;
      sub_1CF1B8150();
      v30 = swift_allocError();
      *v31 = v26;
      *&v61 = v54;
      BYTE8(v61) = v55;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = v30;
      sub_1CF2A8DE0(&v61);
      *v29 = v61;
      v32 = v62;
      v33 = v63;
      v34 = v65;
      *(v29 + 48) = v64;
      *(v29 + 64) = v34;
      *(v29 + 16) = v32;
      *(v29 + 32) = v33;
      v35 = v66;
      v36 = v67;
      v37 = v68;
      *(v29 + 128) = v69;
      *(v29 + 96) = v36;
      *(v29 + 112) = v37;
      *(v29 + 80) = v35;
      sub_1CEFCCC44(v58, &unk_1EC4BEC00, &unk_1CF9FCB60);
      *v20 = v27;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_1CEFCCC44(v58, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v38 = v50;
      sub_1CEFE4C60(v12, v50, type metadata accessor for VFSItem);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      sub_1CEFE4C60(v38, v20, type metadata accessor for VFSItem);
      v40 = v52;
      swift_beginAccess();
      v41 = *(v40 + 16);
      v42 = v53;
      swift_beginAccess();
      v43 = v42[2];
      v61 = v42[1];
      v62 = v43;
      v44 = v42[4];
      v63 = v42[3];
      v64 = v44;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v20 + v45[9]) = v41;
      *(v20 + v45[10]) = 0;
      v46 = (v20 + v45[11]);
      v47 = v42[2];
      *v46 = v42[1];
      v46[1] = v47;
      v48 = v42[4];
      v46[2] = v42[3];
      v46[3] = v48;
      (*(*(v45 - 1) + 56))(v20, 0, 1, v45);
      *(v20 + v39) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1CEFCCBDC(&v61, &v60, &unk_1EC4BF260, &unk_1CFA01B60);
    }
  }

  v59(v20);

  return sub_1CEFCCC44(v20, &unk_1EC4C5000, &qword_1CFA181A0);
}

uint64_t sub_1CF285904@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  v184 = a3;
  v181 = a7;
  v187 = a5;
  v188 = a6;
  v222 = a2;
  v179 = a1;
  v177 = a8;
  v180 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v176 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v167 - v20;
  v21 = sub_1CF9E53C8();
  v172 = *(v21 - 8);
  v173 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v167 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v167 - v29;
  v186 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v186);
  v182 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v167 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v167 - v39;
  if (v184)
  {
    v184 = a4;
    v168 = v23;
    v41 = *(v23 + 28);
    v42 = v188;
    sub_1CEFD90AC(v188 + v41, v34, type metadata accessor for ItemMetadata);
    v183 = a10;
    v43 = *a10;
    v169 = v19;
    v44 = v187 + *(v19 + 40);
    sub_1CEFD90AC(v34, v37, type metadata accessor for ItemMetadata);
    *&v205 = v43;
    sub_1CF677700(&v205, v44);
    sub_1CEFE5888(v34, type metadata accessor for ItemMetadata);
    sub_1CEFD90AC(v42, v27, type metadata accessor for VFSItem);
    if (*(a12 + 2))
    {
      v47 = 0;
      v45 = v186;
      v48 = v44;
    }

    else
    {
      v45 = v186;
      v46 = v186[21];
      v47 = *(v44 + v46);
      v48 = v44;
      if (*(v44 + v46))
      {
        if (*v183 & 8) != 0 && (v49 = v186[20], v27[v168[7] + v49] == 1) && (*(v44 + v49))
        {
          v47 = 0;
        }

        else if ((*v183 & 0x10010) == 0)
        {
          v47 = v27[v168[7] + v46];
        }
      }
    }

    sub_1CEFE5888(v27, type metadata accessor for VFSItem);
    v37[v45[21]] = v47;
    v80 = v45[20];
    v81 = v184;
    if ((v37[v80] & 1) == 0 && v47)
    {
      v82 = v45[23];
      if (v37[v82] == 6)
      {
        v37[v82] = v48[v82];
      }

      else
      {
        LOBYTE(v205) = v48[v82];
        ResidencyReason.convert(to:)(&v205);
      }
    }

    v174 = a13;
    if ((*(v183 + 5) & 1) != 0 && *v48 == 2)
    {
      v37[v80] = 0;
    }

    v167 = v48;
    v83 = a11[17];
    v84 = *(v222 + 8);
    v85 = v83 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    swift_beginAccess();
    v86 = *(v85 + 32);
    v170 = a11;
    if (v84 == v86)
    {
      v87 = v37;
      sub_1CEFD90AC(v37, v182, type metadata accessor for ItemMetadata);
      swift_beginAccess();
      v88 = *a14;
      v173 = *(a14 + 2);
      v89 = a14[2];
      v90 = *(a14 + 24);
      v91 = objc_sync_enter(a11);
      if (!v91)
      {
        v92 = a11[20];

        v93 = objc_sync_exit(a11);
        if (v93)
        {
          goto LABEL_64;
        }

        sub_1CEFE528C(&v205);
        v201 = v217;
        v202 = v218;
        v203 = v219;
        v204 = v220;
        v197 = v213;
        v198 = v214;
        v199 = v215;
        v200 = v216;
        v193 = v209;
        v194 = v210;
        v195 = v211;
        v196 = v212;
        v189 = v205;
        v190 = v206;
        v191 = v207;
        v192 = v208;
        v94 = *(*v83 + 512);
        LOWORD(v165) = v90;
        v95 = v185;
        v96 = v182;
        v94(v221, v184, v179, v222, v174, v182, v88, v173, v89, v165, v92, &v189);
        v97 = v95;
        if (!v95)
        {

          sub_1CEFE5888(v96, type metadata accessor for ItemMetadata);
          v221[4], v129, v130, v131, v132, v133, v134, v135;
          v81 = v184;
          v37 = v87;
          v45 = v186;
          goto LABEL_44;
        }

        sub_1CEFE5888(v96, type metadata accessor for ItemMetadata);

        v98 = v95;
        LODWORD(v189) = sub_1CF9E5338();
        sub_1CF196978();
        v99 = sub_1CF9E5658();

        v37 = v87;
        if (v99)
        {

          v107 = (a15 + v168[9]);
          v108 = *v107;
          v109 = (a15 + v168[14]);
          if (*(v109 + 4))
          {
            v110 = 0;
          }

          else
          {
            v110 = *v109;
          }

          v111 = *(v107 + 2);
          0, v100, v101, v102, v103, v104, v105, v106;
          v189 = v108;
          v190 = __PAIR64__(v111, v110);
          *&v191 = 0;
          v112 = v170;
          v113 = objc_sync_enter(v170);
          if (!v113)
          {
            v114 = v112[20];

            v93 = objc_sync_exit(v112);
            v81 = v184;
            v45 = v186;
            if (!v93)
            {
              v115 = *(v114 + 16);

              v97 = 0;
              v157 = sub_1CEFDADE0(&v189, v115, 2097153);
              v191, v158, v159, v160, v161, v162, v163, v164;
              *&v189 = v181;
              BYTE8(v189) = v180;
              sub_1CF262BC8(&v189, v157);
              if ((v157 & 0x80000000) == 0)
              {
                close(v157);
              }

LABEL_44:
              v184 = a16;
              v185 = v97;
              v136 = v45[28];
              if ((v37[v136] & 1) != 0 || (v137 = *(v222 + 40), v137 == 3))
              {
                v37[v136] = 1;
                v138 = v175;
                v139 = v169;
              }

              else
              {
                v138 = v175;
                v139 = v169;
                if (*v167)
                {
                  v37[v136] = 0;
                  goto LABEL_48;
                }

                v37[v136] = v137 == 2;
                if (v137 != 2)
                {
                  goto LABEL_48;
                }
              }

              v140 = v222;
              v141 = v186;
              *&v37[v186[26]] = *(v222 + 56);
              *&v37[v141[27]] = *(v140 + 168);
LABEL_48:
              sub_1CEFD90AC(v188, v138, type metadata accessor for VFSItem);
              v142 = *v187;
              v143 = *(v187 + 8);
              v144 = v37;
              v146 = v187[2];
              v145 = v187[3];
              v147 = *(v139 + 40);
              v148 = v178;
              v222 = v144;
              sub_1CEFD90AC(v144, &v178[v147], type metadata accessor for ItemMetadata);
              *v148 = v142;
              *(v148 + 8) = v143;
              *(v148 + 16) = v146;
              *(v148 + 24) = v145;
              v149 = *(v81 + 48);
              v150 = *(v81 + 32);
              v205 = *(v81 + 16);
              v206 = v150;
              *&v207 = v149;
              v151 = sub_1CF9E5A58();
              v152 = *(v151 - 8);
              v153 = v176;
              (*(v152 + 16))(v176, v174, v151);
              (*(v152 + 56))(v153, 0, 1, v151);
              *&v189 = *v183;

              sub_1CF27A500(v138, v148, &v205, v153, &v189, v184, v177);
              sub_1CEFCCC44(v153, &unk_1EC4BE310, qword_1CF9FCBE0);
              sub_1CF1E6520(v205, *(&v205 + 1), v206, *(&v206 + 1), v207, v154, v155, v156);
              sub_1CEFCCC44(v148, &unk_1EC4BFD90, &unk_1CFA134F0);
              sub_1CEFE5888(v138, type metadata accessor for VFSItem);
              v128 = v222;
              return sub_1CEFE5888(v128, type metadata accessor for ItemMetadata);
            }

LABEL_64:
            MEMORY[0x1EEE9AC00](v93);
            v166 = v170;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v165, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          MEMORY[0x1EEE9AC00](v113);
          v166 = v112;
LABEL_63:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v165, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

LABEL_42:
        v128 = v37;
        return sub_1CEFE5888(v128, type metadata accessor for ItemMetadata);
      }
    }

    else
    {
      v91 = objc_sync_enter(a11);
      if (!v91)
      {
        v116 = a11[20];

        v93 = objc_sync_exit(a11);
        if (v93)
        {
          goto LABEL_64;
        }

        v117 = *(v116 + 32);

        v118 = sub_1CF9C46A4(v222, v117);
        v117, v119, v120, v121, v122, v123, v124, v125;
        v97 = v185;
        if (v118)
        {
          goto LABEL_44;
        }

        LODWORD(v205) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v126 = v171;
        v127 = v173;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v172 + 8))(v126, v127);
        swift_willThrow();
        goto LABEL_42;
      }
    }

    MEMORY[0x1EEE9AC00](v91);
    v166 = a11;
    goto LABEL_63;
  }

  v50 = v23;
  v51 = v188;
  v222 = *(a4 + 16);
  v52 = *(a4 + 36);
  sub_1CEFD90AC(v187 + *(v19 + 40), &v167 - v39, type metadata accessor for ItemMetadata);
  v53 = *v40;
  if (v53 == 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 1;
    v57 = v51;
    v58 = v50;
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v57 = v51;
    v58 = v50;
    if (v53 == 2)
    {
      v56 = 1;
    }

    else
    {
      v56 = 1;
      if (!v40[v186[20]])
      {
        if (v40[v186[28]])
        {
          v54 = 0;
        }

        else
        {
          v56 = 0;
          v54 = *&v40[v186[26]];
        }

        v55 = v52;
      }
    }
  }

  LODWORD(v186) = v55;
  v187 = v54;
  LODWORD(v188) = v56;
  sub_1CEFE5888(v40, type metadata accessor for ItemMetadata);
  sub_1CEFD90AC(v57, v30, type metadata accessor for VFSItem);
  v59 = &v30[*(v58 + 36)];
  v60 = *v59;
  v61 = *(v59 + 2);
  v62 = *(v59 + 2);
  v63 = v59[24];
  v64 = *(v30 + 2);
  v65 = v30[24];
  v66 = *(v30 + 5);
  v185 = *(v30 + 4);

  sub_1CEFE5888(v30, type metadata accessor for VFSItem);
  LOBYTE(v205) = v63;
  *&v189 = v60;
  DWORD2(v189) = v61;
  *&v190 = v62;
  BYTE8(v190) = v63;
  *&v191 = 0;
  *(&v191 + 1) = v64;
  LOBYTE(v192) = v65;
  v67 = v65;
  v68 = v185;
  *(&v192 + 1) = v185;
  v193 = v66;
  v194 = 0uLL;

  sub_1CEFCCC44(&v189, &unk_1EC4BE330, &unk_1CF9FF010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  swift_allocError();
  v70 = v69;
  sub_1CF1B8150();
  v71 = swift_allocError();
  *v72 = 0xB000000000000010;
  *&v205 = v181;
  BYTE8(v205) = v180;
  *&v206 = v222;
  DWORD2(v206) = v186;
  *&v207 = v187;
  BYTE8(v207) = v188;
  *&v208 = 0;
  *(&v208 + 1) = v64;
  LOBYTE(v209) = v67;
  *(&v209 + 1) = v68;
  v210 = v66;
  v211 = 0uLL;
  v212 = v71;
  sub_1CF2A8DE0(&v205);
  *v70 = v205;
  v73 = v206;
  v74 = v207;
  v75 = v209;
  *(v70 + 48) = v208;
  *(v70 + 64) = v75;
  *(v70 + 16) = v73;
  *(v70 + 32) = v74;
  v76 = v210;
  v77 = v211;
  v78 = v212;
  *(v70 + 128) = v213;
  *(v70 + 96) = v77;
  *(v70 + 112) = v78;
  *(v70 + 80) = v76;
  return swift_willThrow();
}

uint64_t sub_1CF286890(uint64_t *a1, __int128 *a2, unint64_t a3, uint64_t *a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t *a8, void (*a9)(void, void), uint64_t a10)
{
  v130 = a4;
  v132 = a3;
  v137 = a10;
  v131 = a9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v124 = *(v121 - 1);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v126 = &v114 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v114 - v17;
  v129 = sub_1CF9E63D8();
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v123 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v114 - v23;
  v24 = sub_1CF9E6448();
  v133 = *(v24 - 8);
  v134 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v127 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v114 - v33;
  v34 = *a1;
  v35 = *(a1 + 8);
  v36 = a2[1];
  v151 = *a2;
  v152 = v36;
  v37 = a2[3];
  v153 = a2[2];
  v154 = v37;
  v38 = *v130;
  v39 = a5[3];
  v147 = a5[2];
  v148 = v39;
  v40 = a5[5];
  v149 = a5[4];
  v150 = v40;
  v41 = a5[1];
  v145 = *a5;
  v146 = v41;
  v42 = a7[13];
  v167 = a7[12];
  v168 = v42;
  v169 = a7[14];
  v170 = *(a7 + 30);
  v43 = a7[9];
  v163 = a7[8];
  v164 = v43;
  v44 = a7[11];
  v165 = a7[10];
  v166 = v44;
  v45 = a7[5];
  v159 = a7[4];
  v160 = v45;
  v46 = a7[7];
  v161 = a7[6];
  v162 = v46;
  v47 = a7[1];
  v155 = *a7;
  v156 = v47;
  v48 = a7[2];
  v49 = a7[3];
  v50 = v38 & 0x18;
  v130 = a8;
  v157 = v48;
  v158 = v49;
  if (v50 | a8 & 0x100)
  {
    v117 = v35;
    v118 = v34;
    v119 = v38;
    v51 = v135[27];
    v120 = v135[28];
    v52 = *(v132 + v121[10]);
    v121 = v51;
    if (!v50 || v52 == 1)
    {
      sub_1CF9E6408();
    }

    else
    {
      sub_1CF9E6418();
    }

    v55 = v129;
    v56 = v136;
    qos_class_self();
    sub_1CF9E63B8();
    v57 = *(v56 + 48);
    if (v57(v18, 1, v55) == 1)
    {
      (*(v56 + 104))(v122, *MEMORY[0x1E69E7FA0], v55);
      v58 = v18;
      v136 = v18;
      v59 = v55;
      if (v57(v58, 1, v55) != 1)
      {
        sub_1CEFCCC44(v136, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      v60 = v18;
      v59 = v55;
      (*(v56 + 32))(v122, v60, v55);
    }

    sub_1CF9E6428();
    v61 = v128;
    v62 = v26;
    sub_1CF9E6438();
    v63 = sub_1CF9E63C8();
    v64 = *(v56 + 8);
    v136 = (v56 + 8);
    v64(v61, v59);
    v65 = v123;
    sub_1CF9E6438();
    v66 = sub_1CF9E63C8();
    v122 = v64;
    v64(v65, v59);
    v67 = v133;
    v68 = *(v133 + 8);
    if (v63 >= v66)
    {
      v69 = v62;
    }

    else
    {
      v69 = v29;
    }

    if (v63 >= v66)
    {
      v70 = v29;
    }

    else
    {
      v70 = v62;
    }

    v71 = v134;
    v115 = *(v133 + 8);
    v116 = v133 + 8;
    v68(v69, v134);
    v72 = v138;
    (*(v67 + 32))(v138, v70, v71);
    (*(v67 + 56))(v72, 0, 1, v71);
    v73 = swift_allocObject();
    v74 = v131;
    v75 = v137;
    *(v73 + 16) = v131;
    *(v73 + 24) = v75;
    v76 = v126;
    sub_1CEFCCBDC(v132, v126, &unk_1EC4BFD90, &unk_1CFA134F0);
    v77 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v78 = (v125 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 31) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v80 + 103) & 0xFFFFFFFFFFFFFFF8;
    v123 = ((v79 + 15) & 0xFFFFFFFFFFFFFFF8);
    v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
    v132 = (v124 + 71) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    *(v81 + 16) = v74;
    *(v81 + 24) = v137;
    sub_1CEFE55D0(v76, v81 + v77, &unk_1EC4BFD90, &unk_1CFA134F0);
    *(v81 + v78) = v135;
    *(v81 + v79) = v130;
    v82 = v134;
    v83 = &v123[v81];
    *v83 = v118;
    v83[8] = v117;
    v84 = (v81 + v80);
    v85 = v146;
    *v84 = v145;
    v84[1] = v85;
    v86 = v150;
    v84[4] = v149;
    v84[5] = v86;
    v87 = v148;
    v84[2] = v147;
    v84[3] = v87;
    *(v81 + v125) = v119;
    v88 = (v81 + v124);
    v89 = v152;
    *v88 = v151;
    v88[1] = v89;
    v90 = v154;
    v88[2] = v153;
    v88[3] = v90;
    v91 = v81;
    v92 = v81 + v132;
    v93 = v156;
    *v92 = v155;
    *(v92 + 16) = v93;
    v94 = v158;
    *(v92 + 32) = v157;
    *(v92 + 48) = v94;
    v95 = v160;
    *(v92 + 64) = v159;
    *(v92 + 80) = v95;
    v96 = v162;
    *(v92 + 96) = v161;
    *(v92 + 112) = v96;
    v97 = v164;
    *(v92 + 128) = v163;
    *(v92 + 144) = v97;
    v98 = v166;
    *(v92 + 160) = v165;
    *(v92 + 176) = v98;
    v99 = v168;
    *(v92 + 192) = v167;
    *(v92 + 208) = v99;
    *(v92 + 224) = v169;
    *(v92 + 240) = v170;
    v100 = swift_allocObject();
    v100[2] = sub_1CEFF9D90;
    v100[3] = v73;
    v101 = v120;
    v100[4] = v120;
    swift_retain_n();

    sub_1CEFCCBDC(&v145, &v139, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFCCBDC(&v151, &v139, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCBDC(&v155, &v139, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v137 = v73;

    v102 = fpfs_current_log();
    v135 = *(v101 + 16);
    v103 = *(v133 + 48);
    v104 = v138;
    if (v103(v138, 1, v82) == 1)
    {
      v105 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
    }

    else
    {
      v105 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
    }

    v106 = v127;
    sub_1CEFCCBDC(v104, v127, &unk_1EC4BE370, qword_1CFA01B30);
    if (v103(v106, 1, v82) == 1)
    {
      sub_1CEFCCC44(v106, &unk_1EC4BE370, qword_1CFA01B30);
      v107 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v108 = v128;
      sub_1CF9E6438();
      v115(v106, v82);
      v107 = sub_1CF9E63C8();
      (v122)(v108, v129);
    }

    v109 = swift_allocObject();
    v109[2] = v102;
    v109[3] = sub_1CF2B0698;
    v109[4] = v91;
    v143 = sub_1CF2BA17C;
    v144 = v109;
    v139 = MEMORY[0x1E69E9820];
    v140 = 1107296256;
    v141 = sub_1CEFCA444;
    v142 = &block_descriptor_524;
    v110 = _Block_copy(&v139);
    v111 = v102;

    v143 = sub_1CF2B0788;
    v144 = v100;
    v139 = MEMORY[0x1E69E9820];
    v140 = 1107296256;
    v141 = sub_1CEFCA444;
    v142 = &block_descriptor_527;
    v112 = _Block_copy(&v139);

    v113 = v121;
    fp_task_tracker_async_and_qos(v135, v121, v105, v107, v110, v112);
    _Block_release(v112);
    _Block_release(v110);

    return sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
  }

  else
  {
    type metadata accessor for StagedContext();
    v53 = swift_allocObject();
    v131(v53, 0);
  }
}

uint64_t sub_1CF2873A4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, __int128 *a8, uint64_t a9, __int128 *a10, uint64_t a11)
{
  LODWORD(v104) = a7;
  v103 = a6;
  v105 = a2;
  v106 = a1;
  v139 = *MEMORY[0x1E69E9840];
  v15 = a8[3];
  v135 = a8[2];
  v136 = v15;
  v16 = a8[5];
  v137 = a8[4];
  v138 = v16;
  v17 = a8[1];
  v133 = *a8;
  v134 = v17;
  v18 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v94 - v21;
  v22 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v99 = a5;
  v100 = a3;
  v26 = a3 + v25;
  v102 = *(a3 + v25 + *(v18 + 112));
  *&v126 = v103;
  BYTE8(v126) = v104;
  v27 = a8[3];
  v112 = a8[2];
  v113 = v27;
  v28 = a8[5];
  v114 = a8[4];
  v115 = v28;
  v29 = a8[1];
  v110 = *a8;
  v111 = v29;
  v104 = a9;
  v108 = a9 & 0xFFFFFFFFFFFFFFEFLL;
  sub_1CF278908(&v126, &v110, &v108, (a5 << 6) & 0x1000, v24);
  v96 = a4;
  v97 = v18;
  v94 = a8;
  v95 = a5 << 6;
  v103 = v26;
  v31 = &v24[*(v22 + 28)];
  v32 = v104;
  if ((v104 & 8) != 0)
  {
    v33 = v103;
    v34 = v97;
    v35 = v101;
    v36 = v102;
    if (*v103 != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v42 = 0;
    if ((v104 & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_10:
    v43 = v106;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      type metadata accessor for StagedContext();
      v44 = swift_allocObject();
    }

    v43(v44, 0);

    v56 = v24;
LABEL_50:
    sub_1CEFE5888(v56, type metadata accessor for VFSItem);
  }

  v33 = v103;
  v34 = v97;
  if ((v104 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v35 = v101;
  v36 = v102;
  if (v102 == *(v31 + v97[28]) && (*v103 == 1 || (*(v103 + v97[20]) & 1) != 0))
  {
    goto LABEL_9;
  }

LABEL_6:
  v37 = v31;
  v101 = v24;
  sub_1CEFD90AC(v33, v35, type metadata accessor for ItemMetadata);
  LOBYTE(v107[0]) = v36;
  if (v36)
  {
    v38 = 1;
    v39 = v96;
    v40 = v99;
    v41 = v100;
  }

  else
  {
    v41 = v100;
    if (*v33 == 1)
    {
      v45 = *(v100 + 24);
      *&v110 = *(v100 + 16);
      *(&v110 + 1) = v45;
      *&v126 = 47;
      *(&v126 + 1) = 0xE100000000000000;
      v108 = 58;
      v109 = 0xE100000000000000;
      sub_1CEFE4E68();
      sub_1CF9E7668();
      v47 = v46;
      sub_1CF9E6978();
      v48 = v47;
      v33 = v103;
      v48, v49, v50, v51, v52, v53, v54, v55;
      fpfs_pkg_system_lookup();

      v41 = v100;
      v38 = v107[0];
    }

    else
    {
      v38 = 0;
    }

    v39 = v96;
    v40 = v99;
  }

  *(v35 + v34[29]) = v38;
  v57 = v34[20];
  if (*(v31 + v57) == 1 && v33[v57] == 1)
  {
    *(v35 + v34[22]) = *(v31 + v34[22]);
  }

  v58 = *(v39 + 136);
  v59 = a10[1];
  v126 = *a10;
  v127 = v59;
  v60 = a10[3];
  v128 = a10[2];
  v129 = v60;
  v61 = *(a11 + 208);
  v122 = *(a11 + 192);
  v123 = v61;
  v124 = *(a11 + 224);
  v125 = *(a11 + 240);
  v62 = *(a11 + 144);
  v118 = *(a11 + 128);
  v119 = v62;
  v63 = *(a11 + 176);
  v120 = *(a11 + 160);
  v121 = v63;
  v64 = *(a11 + 80);
  v114 = *(a11 + 64);
  v115 = v64;
  v65 = *(a11 + 112);
  v116 = *(a11 + 96);
  v117 = v65;
  v66 = *(a11 + 16);
  v110 = *a11;
  v111 = v66;
  v67 = *(a11 + 48);
  v112 = *(a11 + 32);
  v113 = v67;
  v68 = *(v41 + 24);
  v108 = *(v41 + 16);
  v109 = v68;
  v69 = (v40 >> 8) & 1;
  v70 = *(*v58 + 448);

  v42 = v70(&v126, v35, &v110, &v108, 0, v69);
  v109, v71, v72, v73, v74, v75, v76, v77;
  sub_1CEFE5888(v35, type metadata accessor for ItemMetadata);
  v30 = swift_beginAccess();
  v132 = v42;
  v102 = *(v42 + 56);
  v24 = v101;
  v33 = v103;
  v32 = v104;
  v34 = v97;
  v31 = v37;
  if ((v104 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  v78 = v34[20];
  v79 = v34;
  v80 = *(v31 + v78);
  v81 = v33[v78];
  if (v80 != v81)
  {
    v101 = v24;
    sub_1CEFD90AC(v31, v98, type metadata accessor for ItemMetadata);
    *&v110 = v32;
    sub_1CF677700(&v110, v33);
    if (v102 == *(v31 + v79[28]))
    {
      v83 = v95;
      if (v81)
      {
        if (v80)
        {
          v112 = v135;
          v113 = v136;
          v114 = v137;
          v115 = v138;
          v110 = v133;
          v111 = v134;
          v107[0] = v32;
          sub_1CEFCCBDC(v94, &v126, &unk_1EC4BE330, &unk_1CF9FF010);
          sub_1CF2ABFCC(&v110, v101, v107, v83 & 0x1000);
          v128 = v112;
          v129 = v113;
          v130 = v114;
          v131 = v115;
          v126 = v110;
          v127 = v111;
          sub_1CEFCCC44(&v126, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        v84 = v98;
        if ((*(v98 + 8) & 1) == 0)
        {
          v85 = *(v103 + 8);
          *(v98 + 4) = *(v103 + 4);
          *(v84 + 8) = v85;
        }
      }

      else
      {
        if ((v80 & 1) == 0)
        {
          v112 = v135;
          v113 = v136;
          v114 = v137;
          v115 = v138;
          v110 = v133;
          v111 = v134;
          v107[0] = v32;
          sub_1CEFCCBDC(v94, &v126, &unk_1EC4BE330, &unk_1CF9FF010);
          sub_1CF2ABFCC(&v110, v101, v107, v83 & 0x1000);
          v128 = v112;
          v129 = v113;
          v130 = v114;
          v131 = v115;
          v126 = v110;
          v127 = v111;
          sub_1CEFCCC44(&v126, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        v84 = v98;
      }

      sub_1CEFE5888(v84, type metadata accessor for ItemMetadata);
      v87 = v106;
      v88 = v101;
      if (v42)
      {
        v89 = v42;
      }

      else
      {
        type metadata accessor for StagedContext();
        v89 = swift_allocObject();
      }

      v87(v89, 0);
    }

    else
    {
      v112 = v135;
      v113 = v136;
      v114 = v137;
      v115 = v138;
      v110 = v133;
      v111 = v134;
      v107[0] = v32;
      sub_1CEFCCBDC(v94, &v126, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CF2ABFCC(&v110, v101, v107, v95 & 0x1000);
      v128 = v112;
      v129 = v113;
      v130 = v114;
      v131 = v115;
      v126 = v110;
      v127 = v111;
      sub_1CEFCCC44(&v126, &unk_1EC4BECD0, &unk_1CF9FEF80);
      if (v42)
      {
        v91 = v42;
      }

      else
      {
        type metadata accessor for StagedContext();
        v91 = swift_allocObject();
      }

      v92 = v106;
      v88 = v101;

      v92(v91, 0);

      sub_1CEFE5888(v98, type metadata accessor for ItemMetadata);
    }

    v56 = v88;
    goto LABEL_50;
  }

  if (v42)
  {
    v82 = *(v96 + 136);
    MEMORY[0x1EEE9AC00](v30);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v82 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v82 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v106(v42, 0);
  }

  else
  {
    type metadata accessor for StagedContext();
    v86 = swift_allocObject();
    v106(v86, 0);
  }

  sub_1CEFE5888(v24, type metadata accessor for VFSItem);
}

uint64_t sub_1CF28836C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  type metadata accessor for VFSStagedContext();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return a2();
  }

  v18 = v17;
  v34 = v10;
  v35 = v8;
  v36 = v7;
  v19 = *(v3 + 216);
  v40 = *(v3 + 224);
  v20 = sub_1CF9E6448();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 1, 1, v20);
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = v18;
  v39 = a2;
  v22[4] = a2;
  v22[5] = a3;
  v23 = v22;
  v42 = a1;
  swift_retain_n();
  v38 = v19;

  v41 = a3;

  v24 = fpfs_current_log();
  v37 = *(v40 + 2);
  v40 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v25 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v27 = v34;
    sub_1CF9E6438();
    (*(v21 + 8))(v13, v20);
    v25 = sub_1CF9E63C8();
    (*(v35 + 8))(v27, v36);
  }

  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = sub_1CF2B068C;
  v28[4] = v23;
  v47 = sub_1CF2BA17C;
  v48 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CEFCA444;
  v46 = &block_descriptor_504;
  v29 = _Block_copy(&aBlock);
  v30 = v24;

  v47 = v39;
  v48 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CEFCA444;
  v46 = &block_descriptor_507;
  v31 = _Block_copy(&aBlock);

  v32 = v38;
  fp_task_tracker_async_and_qos(v37, v38, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v25, v29, v31);
  _Block_release(v31);
  _Block_release(v29);

  return sub_1CEFCCC44(v40, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2887E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(a1 + 136);

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  return a3(v6);
}

uint64_t sub_1CF2888D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v51 = a1;
  v6 = sub_1CF9E63D8();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v52 = &v42 - v14;
  v16 = *(v3 + 216);
  v17 = *(v3 + 224);
  v46 = v3;
  v47 = v17;
  v50 = v16;
  v18 = sub_1CF9E6448();
  v48 = *(v18 - 8);
  (*(v48 + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = v8;
  (*(v9 + 16))(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v46;
  v24 = v23 + v21;
  v25 = v18;
  (*(v9 + 32))(v24, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v26 = v23;
  v27 = (v23 + v22);
  *v27 = v45;
  v27[1] = a3;
  v28 = swift_allocObject();
  v28[2] = sub_1CF2BA174;
  v28[3] = v19;
  v29 = v47;
  v28[4] = v47;
  swift_retain_n();
  v50 = v50;

  v51 = v19;

  v30 = fpfs_current_log();
  v31 = *(v29 + 16);
  v33 = v48;
  v32 = v49;
  sub_1CEFCCBDC(v52, v49, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v33 + 48))(v32, 1, v25) == 1)
  {
    sub_1CEFCCC44(v32, &unk_1EC4BE370, qword_1CFA01B30);
    v34 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v35 = v42;
    sub_1CF9E6438();
    (*(v33 + 8))(v32, v25);
    v34 = sub_1CF9E63C8();
    (*(v43 + 8))(v35, v44);
  }

  v36 = swift_allocObject();
  v36[2] = v30;
  v36[3] = sub_1CF2B1BA0;
  v36[4] = v26;
  v57 = sub_1CF2BA17C;
  v58 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1CEFCA444;
  v56 = &block_descriptor_1273;
  v37 = _Block_copy(&aBlock);
  v38 = v30;

  v57 = sub_1CF2BA180;
  v58 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1CEFCA444;
  v56 = &block_descriptor_1276;
  v39 = _Block_copy(&aBlock);

  v40 = v50;
  fp_task_tracker_async_and_qos(v31, v50, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v34, v37, v39);
  _Block_release(v39);
  _Block_release(v37);

  return sub_1CEFCCC44(v52, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF288E58(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1[17];
  v7 = objc_sync_enter(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v12 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = a1[20];

  v9 = objc_sync_exit(a1);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(*v6 + 592))(a2, v8);

  return a3(0);
}

uint64_t sub_1CF289008(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a7;
  v58 = a8;
  v63 = a4;
  v71 = a3;
  v72 = a1;
  v11 = sub_1CF9E6388();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v53 - v14;
  v15 = sub_1CF9E6498();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v56 = &v53 - v18;
  v19 = sub_1CF9E63D8();
  v54 = *(v19 - 8);
  v55 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v61 = *(v21 - 8);
  v62 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E73D8();
  v53 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E5A58();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  (*(v27 + 16))(&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v26, v29);
  v30 = (*(v27 + 80) + 41) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v63;
  *(v31 + 24) = a5;
  v63 = a2;
  *(v31 + 32) = a2;
  *(v31 + 40) = v71;
  (*(v27 + 32))(v31 + v30, &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v32 = (v31 + ((v28 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v58;
  *v32 = v57;
  v32[1] = v33;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v34 = *(v72 + 216);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v36 = v54;
  v37 = sub_1CF9E73E8();

  v38 = v25;
  v40 = v55;
  v39 = v56;
  (*(v53 + 8))(v38, v23);
  qos_class_self();
  sub_1CF9E63B8();
  v41 = *(v36 + 48);
  if (v41(v39, 1, v40) == 1)
  {
    (*(v36 + 104))(v59, *MEMORY[0x1E69E7FA0], v40);
    if (v41(v39, 1, v40) != 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v59, v39, v40);
  }

  ObjectType = swift_getObjectType();
  v43 = v60;
  sub_1CF9E6428();
  v44 = swift_allocObject();
  v45 = v63;
  *(v44 + 16) = v72;
  *(v44 + 24) = v45;
  *(v44 + 32) = v71;
  *(v44 + 40) = 0u;
  *(v44 + 56) = 0u;
  *(v44 + 72) = 0u;
  *(v44 + 88) = 0u;
  *(v44 + 104) = 0u;
  *(v44 + 120) = 0u;
  *(v44 + 136) = 0u;
  *(v44 + 152) = v37;
  *(v44 + 160) = sub_1CF2B9910;
  *(v44 + 168) = v31;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v43, sub_1CF2B9F4C, v44, ObjectType);

  (*(v61 + 8))(v43, v62);
  v46 = v64;
  sub_1CF9E6478();
  v47 = v67;
  sub_1CEFD5B64(v67);
  v48 = v68;
  sub_1CEFD5BD8(v68);
  MEMORY[0x1D3869770](v46, v47, v48, ObjectType);
  v49 = *(v69 + 8);
  v50 = v48;
  v51 = v70;
  v49(v50, v70);
  v49(v47, v51);
  (*(v65 + 8))(v46, v66);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28979C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v65 = a7;
  v69 = a6;
  v71 = a5;
  v70 = a4;
  v72 = a3;
  v73 = a2;
  v82 = *MEMORY[0x1E69E9840];
  v68 = sub_1CF9E53C8();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v64 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v13, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v13;
    *v75 = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
LABEL_3:
    v22 = v21;
    v73(v21);

    return;
  }

  sub_1CEFE55D0(v13, v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v24 = swift_allocError();
    v26 = v25;
    sub_1CF1B8150();
    v27 = swift_allocError();
    *v28 = v23;
    *v75 = v70;
    v75[8] = v71;
    memset(&v75[16], 0, 32);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = v27;
    sub_1CF2A8DE0(v75);
    *v26 = *v75;
    v29 = *&v75[16];
    v30 = *&v75[32];
    v31 = v77;
    *(v26 + 48) = v76;
    *(v26 + 64) = v31;
    *(v26 + 16) = v29;
    *(v26 + 32) = v30;
    v32 = v78;
    v33 = v79;
    v34 = v80;
    *(v26 + 128) = v81;
    *(v26 + 96) = v33;
    *(v26 + 112) = v34;
    *(v26 + 80) = v32;
    v73(v24);

    return;
  }

  sub_1CEFE4C60(v16, v20, type metadata accessor for VFSItem);
  if (v20[*(v17 + 28)] != 1)
  {
    sub_1CF9E5A18();
    v38 = v37;
    fpfs_openflags(0x200000u);
    sub_1CF9E6978();
    v39 = openat_s();

    if (v39 < 0)
    {
      v50 = MEMORY[0x1D38683F0](v40);
      memset(v75, 0, 40);
      v75[40] = 19;
      v21 = sub_1CF19BBE4(v50, v75);
      sub_1CF1969CC(v75);
      swift_willThrow();
      sub_1CEFE5888(v20, type metadata accessor for VFSItem);
      v38, v51, v52, v53, v54, v55, v56, v57;
      goto LABEL_3;
    }

    v38, v41, v42, v43, v44, v45, v46, v47;
    v74 = 0;
    if ((fpfs_get_is_sync_paused() & 0x80000000) != 0)
    {
      v58 = MEMORY[0x1D38683F0]();
      *v75 = 9;
      memset(&v75[8], 0, 32);
      v75[40] = 19;
    }

    else
    {
      if (v74 == 1)
      {
        v48 = sub_1CF9E5928();
        v49 = FPFileIsAlreadyPausedError();

        v73(v49);
        sub_1CEFE5888(v20, type metadata accessor for VFSItem);
        close(v39);
        return;
      }

      v59 = v65;
      v60 = v66;
      sub_1CF9E6978();
      v61 = fpfs_fset_pause_sync_bundleID();

      if ((v61 & 0x80000000) == 0)
      {
        close(v39);
        v73(0);
        goto LABEL_8;
      }

      v63 = MEMORY[0x1D38683F0](v62);
      *v75 = v59;
      *&v75[8] = v60;
      v75[40] = 5;

      v58 = v63;
    }

    v21 = sub_1CF19BBE4(v58, v75);
    sub_1CF1969CC(v75);
    swift_willThrow();
    sub_1CEFE5888(v20, type metadata accessor for VFSItem);
    close(v39);
    goto LABEL_3;
  }

  *v75 = 21;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v35 = v68;
  sub_1CF9E57D8();
  v36 = sub_1CF9E53A8();
  (*(v67 + 8))(v10, v35);
  v73(v36);

LABEL_8:
  sub_1CEFE5888(v20, type metadata accessor for VFSItem);
}

uint64_t sub_1CF289F34(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v55 = a4;
  v56 = a2;
  v8 = sub_1CF9E63D8();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v57 = &v45 - v17;
  v19 = *a1;
  v49 = *(a1 + 8);
  v20 = *(v4 + 216);
  v21 = *(v4 + 224);
  v50 = v19;
  v51 = v21;
  v53 = v20;
  v22 = sub_1CF9E6448();
  v52 = *(v22 - 8);
  (*(v52 + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v25 = v55;
  v24 = v56;
  *(v23 + 16) = a3;
  *(v23 + 24) = v25;
  (*(v11 + 16))(v13, v24, v10);
  v26 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v27 = swift_allocObject();
  v28 = v50;
  *(v27 + 16) = v5;
  *(v27 + 24) = v28;
  *(v27 + 32) = v49;
  *(v27 + 40) = a3;
  *(v27 + 48) = v25;
  v29 = v27 + v26;
  v30 = v22;
  (*(v11 + 32))(v29, v13, v10);
  v31 = swift_allocObject();
  v31[2] = sub_1CF2BA174;
  v31[3] = v23;
  v32 = v51;
  v31[4] = v51;
  swift_retain_n();
  v55 = v53;

  v56 = v23;
  v33 = v52;

  v34 = fpfs_current_log();
  v35 = *(v32 + 16);
  v36 = v54;
  sub_1CEFCCBDC(v57, v54, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v33 + 48))(v36, 1, v30) == 1)
  {
    sub_1CEFCCC44(v36, &unk_1EC4BE370, qword_1CFA01B30);
    v37 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v38 = v46;
    sub_1CF9E6438();
    (*(v33 + 8))(v36, v30);
    v37 = sub_1CF9E63C8();
    (*(v47 + 8))(v38, v48);
  }

  v39 = swift_allocObject();
  v39[2] = v34;
  v39[3] = sub_1CF2B1A08;
  v39[4] = v27;
  v62 = sub_1CF2BA17C;
  v63 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CEFCA444;
  v61 = &block_descriptor_1224;
  v40 = _Block_copy(&aBlock);
  v41 = v34;

  v62 = sub_1CF2BA180;
  v63 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1CEFCA444;
  v61 = &block_descriptor_1227;
  v42 = _Block_copy(&aBlock);

  v43 = v55;
  fp_task_tracker_async_and_qos(v35, v55, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v37, v40, v42);
  _Block_release(v42);
  _Block_release(v40);

  return sub_1CEFCCC44(v57, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF28A4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a4;
  v66 = a3;
  v65 = a2;
  v9 = sub_1CF9E6388();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v49 - v12;
  v13 = sub_1CF9E6498();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v49 - v16;
  v17 = sub_1CF9E63D8();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6448();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E73D8();
  v49 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E5A58();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  (*(v25 + 16))(&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v24, v27);
  v28 = (*(v25 + 80) + 41) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v57;
  *(v29 + 24) = a5;
  *(v29 + 32) = v65;
  *(v29 + 40) = v66;
  (*(v25 + 32))(v29 + v28, &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  *(v29 + ((v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v30 = *(a1 + 216);
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v57 = a1;

  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v32 = v50;
  v33 = sub_1CF9E73E8();

  v34 = v23;
  v36 = v51;
  v35 = v52;
  (*(v49 + 8))(v34, v21);
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v32 + 48);
  if (v37(v35, 1, v36) == 1)
  {
    (*(v32 + 104))(v53, *MEMORY[0x1E69E7FA0], v36);
    if (v37(v35, 1, v36) != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v32 + 32))(v53, v35, v36);
  }

  ObjectType = swift_getObjectType();
  v39 = v54;
  sub_1CF9E6428();
  v40 = swift_allocObject();
  v41 = v65;
  *(v40 + 16) = v57;
  *(v40 + 24) = v41;
  *(v40 + 32) = v66;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0u;
  *(v40 + 152) = v33;
  *(v40 + 160) = sub_1CF2B1A74;
  *(v40 + 168) = v29;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v39, sub_1CF2B9F4C, v40, ObjectType);

  (*(v55 + 8))(v39, v56);
  v42 = v58;
  sub_1CF9E6478();
  v43 = v61;
  sub_1CEFD5B64(v61);
  v44 = v62;
  sub_1CEFD5BD8(v62);
  MEMORY[0x1D3869770](v42, v43, v44, ObjectType);
  v45 = *(v63 + 8);
  v46 = v44;
  v47 = v64;
  v45(v46, v64);
  v45(v43, v47);
  (*(v59 + 8))(v42, v60);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28AC30(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v78 = a6;
  LODWORD(v81) = a5;
  v80 = a4;
  v83 = a2;
  v84 = a3;
  v77 = sub_1CF9E53C8();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1CF9E5A58();
  v71 = *(v72 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v69 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - v16;
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v69 - v22;
  sub_1CEFCCBDC(a1, v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v85 = *v14;
    v23 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    v24 = v23;
    v83(v23);

    return;
  }

  v25 = v83;
  sub_1CEFE55D0(v14, v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v27 = swift_allocError();
    v29 = v28;
    sub_1CF1B8150();
    v30 = swift_allocError();
    *v31 = v26;
    *&v85 = v80;
    BYTE8(v85) = v81;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = v30;
    sub_1CF2A8DE0(&v85);
    *v29 = v85;
    v32 = v86;
    v33 = v87;
    v34 = v89;
    *(v29 + 48) = v88;
    *(v29 + 64) = v34;
    *(v29 + 16) = v32;
    *(v29 + 32) = v33;
    v35 = v90;
    v36 = v91;
    v37 = v92;
    *(v29 + 128) = v93;
    *(v29 + 96) = v36;
    *(v29 + 112) = v37;
    *(v29 + 80) = v35;
    v25(v27);

    return;
  }

  v38 = v82;
  sub_1CEFE4C60(v17, v82, type metadata accessor for VFSItem);
  v39 = (v38 + *(v18 + 28));
  if (*v39 == 1)
  {
    LODWORD(v85) = 21;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v40 = v74;
    v41 = v77;
    sub_1CF9E57D8();
    v42 = sub_1CF9E53A8();
    (*(v75 + 8))(v40, v41);
    v25(v42);
  }

  else
  {
    if (v39[*(type metadata accessor for ItemMetadata(0) + 96)] == 1)
    {
      v43 = v71;
      v77 = v19;
      v44 = *(v71 + 16);
      v45 = v79;
      v46 = v78;
      v47 = v72;
      v44(v79, v78, v72);
      (*(v43 + 56))(v45, 0, 1, v47);
      v81 = *v38;
      LODWORD(v80) = *(v38 + 8);
      v44(v76, v46, v47);
      v48 = v70;
      sub_1CEFD90AC(v38, v70, type metadata accessor for VFSItem);
      v49 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v50 = (v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (*(v77 + 80) + v50 + 8) & ~*(v77 + 80);
      v52 = swift_allocObject();
      v53 = v84;
      *(v52 + 16) = v25;
      *(v52 + 24) = v53;
      (*(v43 + 32))(v52 + v49, v76, v47);
      v54 = v73;
      *(v52 + v50) = v73;
      sub_1CEFE4C60(v48, v52 + v51, type metadata accessor for VFSItem);

      v55 = sub_1CF2ADAF4(v79);
      v56 = v55;
      *&v85 = v81;
      BYTE8(v85) = v80;
      if (v55 >> 62)
      {
        v57 = sub_1CF9E7818();
      }

      else
      {
        v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v57 == 0;

      sub_1CF2AAEA4(&v85, v56, v58, v54, sub_1CF2B1A8C, v52);

      v56, v59, v60, v61, v62, v63, v64, v65;
      sub_1CEFCCC44(v79, &unk_1EC4BE310, qword_1CF9FCBE0);
      v66 = v82;
      goto LABEL_13;
    }

    v67 = sub_1CF9E5928();
    v68 = FPFileNotPausedError();

    v25(v68);
  }

  v66 = v38;
LABEL_13:
  sub_1CEFE5888(v66, type metadata accessor for VFSItem);
}

void sub_1CF28B4EC(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v108 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  if (a1)
  {
    a2(a1, v12);
    return;
  }

  sub_1CF9E5A18();
  v16 = v15;
  fpfs_openflags(0x200000u);
  sub_1CF9E6978();
  v17 = openat_s();

  v79 = v17;
  if ((v17 & 0x80000000) != 0)
  {
    v57 = MEMORY[0x1D38683F0](v18);
    *&v92 = 0;
    v90 = 0u;
    v91 = 0u;
    BYTE8(v92) = 19;
    v55 = sub_1CF19BBE4(v57, &v90);
    sub_1CF1969CC(&v90);
    swift_willThrow();
    v16, v58, v59, v60, v61, v62, v63, v64;
    goto LABEL_15;
  }

  v16, v19, v20, v21, v22, v23, v24, v25;
  v26 = objc_sync_enter(a5);
  if (v26)
  {
    goto LABEL_19;
  }

  v27 = a5[20];

  v28 = objc_sync_exit(a5);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v69 = &v70 - 4;
    *(&v70 - 2) = a5;
    goto LABEL_21;
  }

  v29 = *(v27 + 24);

  v26 = objc_sync_enter(a5);
  if (v26)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v26);
    *(&v70 - 2) = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v70 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v73 = v14;
  v77 = a2;
  v78 = v29;
  v71 = a6;
  v76 = a3;
  v30 = a5[20];

  v72 = a5;
  v31 = objc_sync_exit(a5);
  if (v31)
  {
    MEMORY[0x1EEE9AC00](v31);
    v69 = &v70 - 4;
    *(&v70 - 2) = v72;
LABEL_21:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v69, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  os_unfair_lock_lock((v30 + 56));
  v33 = *(v30 + 64);
  v32 = *(v30 + 72);
  v34 = *(v30 + 88);
  v35 = *(v30 + 89);
  v36 = *(v30 + 90);

  v37 = *(v30 + 80);
  os_unfair_lock_unlock((v30 + 56));

  v75 = &v70;
  MEMORY[0x1EEE9AC00](v38);
  *(&v70 - 16) = 4;
  *(&v70 - 3) = v79;
  *&v92 = v33;
  *(&v92 + 1) = v32;
  *&v90 = MEMORY[0x1E69E9820];
  *(&v90 + 1) = 1107296256;
  *&v91 = sub_1CEFDB088;
  *(&v91 + 1) = &block_descriptor_1245;
  v39 = _Block_copy(&v90);
  v74 = v32;
  v40 = v39;

  v83 = v40;
  v84 = v37;
  v85 = v34;
  v86 = v35;
  v87 = v36;
  sub_1CEFDB034();
  v41 = swift_allocError();
  *v42 = 6;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 19;
  v106 = v41;
  v107 = 1;
  v43 = swift_allocObject();
  v43[2] = &v106;
  v43[3] = sub_1CF2B1B74;
  v43[4] = &v70 - 4;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1CF2B1B94;
  *(v44 + 24) = v43;
  *&v92 = sub_1CF1DBD5C;
  *(&v92 + 1) = v44;
  *&v90 = MEMORY[0x1E69E9820];
  *(&v90 + 1) = 1107296256;
  *&v91 = sub_1CEFDB270;
  *(&v91 + 1) = &block_descriptor_1255;
  v45 = _Block_copy(&v90);

  v46 = fpfs_fgetfileattrs_detailed();
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  v47 = v73;
  if (v46)
  {
    swift_getErrorValue();
    v48 = v80;
    v49 = swift_allocError();
    *v50 = 6;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 19;
    v51 = v46;
    v52 = sub_1CF199074(v49, v48);

    v53 = v106;
    v54 = v107;
    v106 = v52;
    v107 = 1;
    sub_1CF0BA6EC(v53, v54);
  }

  if ((v107 & 1) == 0)
  {

    sub_1CF0BA6EC(v106, v107);

    _Block_release(v40);

    v65 = *(type metadata accessor for VFSItem(0) + 28);
    v82 = 4;
    v66 = sub_1CF9E5A58();
    (*(*(v66 - 8) + 56))(v47, 1, 1, v66);
    sub_1CEFE528C(&v90);
    v88[12] = v102;
    v88[13] = v103;
    v88[14] = v104;
    v89 = v105;
    v88[8] = v98;
    v88[9] = v99;
    v88[10] = v100;
    v88[11] = v101;
    v88[4] = v94;
    v88[5] = v95;
    v88[6] = v96;
    v88[7] = v97;
    v88[0] = v90;
    v88[1] = v91;
    v88[2] = v92;
    v88[3] = v93;
    v67 = v79;
    sub_1CF298D34(v79, (v71 + v65), 0, 0, &v82, 0, v47, v88);
    sub_1CEFCCC44(v47, &unk_1EC4BE310, qword_1CF9FCBE0);
    close(v67);
    (v77)(0);
    return;
  }

  v55 = v106;
  v81 = v106;
  v56 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CF0BA6EC(v106, v107);

  _Block_release(v40);

  close(v79);
  a2 = v77;
LABEL_15:
  v68 = v55;
  (a2)(v55);
}

uint64_t sub_1CF28BD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a7;
  v59 = a4;
  v67 = a3;
  v68 = a1;
  v10 = sub_1CF9E6388();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v13;
  v14 = sub_1CF9E6498();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v49 - v17;
  v18 = sub_1CF9E63D8();
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6448();
  v57 = *(v20 - 8);
  v58 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E73D8();
  v50 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5A58();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  (*(v26 + 16))(&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v25, v28);
  v29 = (*(v26 + 80) + 41) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v59;
  *(v30 + 24) = a5;
  v59 = a2;
  *(v30 + 32) = a2;
  *(v30 + 40) = v67;
  (*(v26 + 32))(v30 + v29, &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  *(v30 + ((v27 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v31 = *(v68 + 216);
  v69 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v33 = v51;
  v34 = v53;
  v35 = sub_1CF9E73E8();

  v36 = v52;
  (*(v50 + 8))(v24, v22);
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v33 + 48);
  if (v37(v34, 1, v36) == 1)
  {
    (*(v33 + 104))(v55, *MEMORY[0x1E69E7FA0], v36);
    if (v37(v34, 1, v36) != 1)
    {
      sub_1CEFCCC44(v34, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v33 + 32))(v55, v34, v36);
  }

  ObjectType = swift_getObjectType();
  v39 = v56;
  sub_1CF9E6428();
  v40 = swift_allocObject();
  v41 = v59;
  *(v40 + 16) = v68;
  *(v40 + 24) = v41;
  *(v40 + 32) = v67;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0u;
  *(v40 + 152) = v35;
  *(v40 + 160) = sub_1CF2B983C;
  *(v40 + 168) = v30;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v39, sub_1CF2B9F4C, v40, ObjectType);

  (*(v57 + 8))(v39, v58);
  v42 = v60;
  sub_1CF9E6478();
  v43 = v63;
  sub_1CEFD5B64(v63);
  v44 = v64;
  sub_1CEFD5BD8(v64);
  MEMORY[0x1D3869770](v42, v43, v44, ObjectType);
  v45 = *(v65 + 8);
  v46 = v44;
  v47 = v66;
  v45(v46, v66);
  v45(v43, v47);
  (*(v61 + 8))(v42, v62);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28C490(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v62 = a6;
  v66 = a5;
  v65 = a4;
  v67 = a3;
  v68 = a2;
  v64 = sub_1CF9E53C8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v60 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v12, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v12;
    *v69 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
LABEL_3:
    v21 = v20;
    v68(v20);

    return;
  }

  sub_1CEFE55D0(v12, v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v23 = swift_allocError();
    v25 = v24;
    sub_1CF1B8150();
    v26 = swift_allocError();
    *v27 = v22;
    *v69 = v65;
    v69[8] = v66;
    memset(&v69[16], 0, 32);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = v26;
    sub_1CF2A8DE0(v69);
    *v25 = *v69;
    v28 = *&v69[16];
    v29 = *&v69[32];
    v30 = v71;
    *(v25 + 48) = v70;
    *(v25 + 64) = v30;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    v31 = v72;
    v32 = v73;
    v33 = v74;
    *(v25 + 128) = v75;
    *(v25 + 96) = v32;
    *(v25 + 112) = v33;
    *(v25 + 80) = v31;
    v68(v23);

    return;
  }

  sub_1CEFE4C60(v15, v19, type metadata accessor for VFSItem);
  v34 = &v19[*(v16 + 28)];
  if (*v34 != 1)
  {
    if (v34[*(type metadata accessor for ItemMetadata(0) + 96)] != 1)
    {
      v50 = sub_1CF9E5928();
      v51 = FPFileNotPausedError();

      v68(v51);
      goto LABEL_17;
    }

    sub_1CF9E5A18();
    v38 = v37;
    fpfs_openflags(0x200000u);
    sub_1CF9E6978();
    v39 = openat_s();

    if (v39 < 0)
    {
      v52 = MEMORY[0x1D38683F0](v40);
      memset(v69, 0, 40);
      v69[40] = 19;
      v20 = sub_1CF19BBE4(v52, v69);
      sub_1CF1969CC(v69);
      swift_willThrow();
      sub_1CEFE5888(v19, type metadata accessor for VFSItem);
      v38, v53, v54, v55, v56, v57, v58, v59;
      goto LABEL_3;
    }

    v38, v41, v42, v43, v44, v45, v46, v47;
    if (v61 == 1)
    {
      if ((fpfs_fset_resuming_sync_with_drop_local_changes() & 0x80000000) != 0)
      {
        v48 = MEMORY[0x1D38683F0]();
        v49 = 10;
LABEL_20:
        *v69 = v49;
        memset(&v69[8], 0, 32);
        v69[40] = 19;
        v20 = sub_1CF19BBE4(v48, v69);
        sub_1CF1969CC(v69);
        swift_willThrow();
        sub_1CEFE5888(v19, type metadata accessor for VFSItem);
        close(v39);
        goto LABEL_3;
      }
    }

    else if ((fpfs_funset_pause_sync_bundleID() & 0x80000000) != 0)
    {
      v48 = MEMORY[0x1D38683F0]();
      v49 = 12;
      goto LABEL_20;
    }

    close(v39);
    v68(0);
    goto LABEL_17;
  }

  *v69 = 21;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v35 = v64;
  sub_1CF9E57D8();
  v36 = sub_1CF9E53A8();
  (*(v63 + 8))(v9, v35);
  v68(v36);

LABEL_17:
  sub_1CEFE5888(v19, type metadata accessor for VFSItem);
}

void sub_1CF28CB50(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v216 = a5;
  v218 = a4;
  v215 = a7;
  v260 = *MEMORY[0x1E69E9840];
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v231);
  v226 = (v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v222 = (v204 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v232 = (v204 - v15);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v228);
  v229 = v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v235 = v204 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v213 = v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v214 = v204 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v217 = v204 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v230 = v204 - v26;
  v27 = type metadata accessor for VFSItem(0);
  v227 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v204 - v32;
  v225 = *a2;
  v224 = *(a2 + 8);
  v233 = *a3;
  v31.n128_u64[0] = a3[1];
  v220 = v31;
  v221 = a3[2];
  v34 = *(a3 + 41);
  v254 = *(a3 + 25);
  v255[0] = v34;
  v35 = a3[7];
  v223 = a3[8];
  *(v255 + 15) = v35;
  v219 = *(a3 + 24);
  v252 = *(a3 + 9);
  v253 = a3[11];
  v36 = *a6;
  v37 = a6[1];
  v38 = a6[3];
  v258 = a6[2];
  v259 = v38;
  v256 = v36;
  v257 = v37;
  v234 = a1;
  v39 = sub_1CF9E58E8();
  v41 = v40;
  *&v245 = v39;
  *(&v245 + 1) = v40;
  v250 = 58;
  v251 = 0xE100000000000000;
  v240 = 47;
  v241 = 0xE100000000000000;
  v202 = sub_1CEFE4E68();
  v203 = v202;
  v200 = MEMORY[0x1E69E6158];
  v201 = v202;
  v42 = sub_1CF9E7668();
  v44 = v43;
  v41, v43, v45, v46, v47, v48, v49, v50;
  *&v245 = v42;
  *(&v245 + 1) = v44;
  v51 = v237;
  sub_1CEFE52D8(0x6574656C6564, 0xE600000000000000, &v245);
  if (v51)
  {
    *(&v245 + 1), v52, v53, v54, v55, v56, v57, v58;
    return;
  }

  v204[0] = v29;
  v211 = v27;
  *(&v245 + 1), v52, v53, v54, v55, v56, v57, v58;
  sub_1CF9E5A18();
  v60 = v59;
  v61 = qword_1EDEBBE70;
  v62 = v236;
  swift_beginAccess();
  v63 = *(v62 + v61);
  v64 = __CFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(v62 + v61) = v65;
  v66 = objc_sync_enter(v62);
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v66);
    v202 = v62;
    goto LABEL_62;
  }

  v237 = v33;
  v67 = v62[20];

  v68 = objc_sync_exit(v62);
  if (v68)
  {
    MEMORY[0x1EEE9AC00](v68);
    v202 = v62;
    goto LABEL_64;
  }

  v69 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v71 = v62[36];
  fpfs_openflags(0x208000u);
  sub_1CF9E6978();
  v72 = openat_s();

  if (v72 < 0)
  {
    v110 = MEMORY[0x1D38683F0](v73);
    v245 = 0u;
    memset(v246, 0, 24);
    BYTE8(v246[1]) = 19;
    v103 = sub_1CF19BBE4(v110, &v245);
    sub_1CF1969CC(&v245);
    swift_willThrow();
    v60, v111, v112, v113, v114, v115, v116, v117;
    v210 = 0;
    v106 = v237;
    v109 = v229;
    v108 = v230;
    goto LABEL_18;
  }

  v210 = 0;
  v60, v74, v75, v76, v77, v78, v79, v80;
  v209 = *(v67 + 24);
  os_unfair_lock_lock((v67 + 56));
  v81 = *(v67 + 64);
  v82 = *(v67 + 72);
  v83 = *(v67 + 88);
  v206 = *(v67 + 89);
  LODWORD(v207) = v83;
  v212 = v72;
  v205 = *(v67 + 90);

  v84 = *(v67 + 80);
  os_unfair_lock_unlock((v67 + 56));
  v204[1] = v204;
  MEMORY[0x1EEE9AC00](v85);
  v208 = &v204[-12];
  v204[-10] = v69;
  LODWORD(v204[-9]) = v72;
  v204[-8] = v67;
  v204[-7] = Strong;
  v204[3] = Strong;
  v204[-6] = v71;
  LOBYTE(v204[-5]) = 2;
  v200 = 0;
  v201 = 0;
  LOBYTE(v202) = -1;
  v203 = 0;
  *&v246[1] = v81;
  *(&v246[1] + 1) = v82;
  *&v245 = MEMORY[0x1E69E9820];
  *(&v245 + 1) = 1107296256;
  *&v246[0] = sub_1CEFDB088;
  *(&v246[0] + 1) = &block_descriptor_1192;
  v86 = _Block_copy(&v245);
  v204[2] = v82;

  v240 = v86;
  v241 = v84;
  v242 = v207;
  v243 = v206;
  v244 = v205;
  v207 = sub_1CEFDB034();
  v87 = swift_allocError();
  *v88 = 6;
  *(v88 + 8) = 0u;
  *(v88 + 24) = 0u;
  *(v88 + 40) = 19;
  v89 = v232;
  *v232 = v87;
  swift_storeEnumTagMultiPayload();
  v90 = swift_allocObject();
  v90[2] = v89;
  v90[3] = sub_1CF2B9F90;
  v90[4] = v208;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1CF1DBD3C;
  *(v91 + 24) = v90;
  *&v246[1] = sub_1CF1DBD5C;
  *(&v246[1] + 1) = v91;
  *&v245 = MEMORY[0x1E69E9820];
  *(&v245 + 1) = 1107296256;
  *&v246[0] = sub_1CEFDB270;
  *(&v246[0] + 1) = &block_descriptor_1203;
  v92 = _Block_copy(&v245);

  v93 = fpfs_fgetfileattrs_detailed();
  _Block_release(v92);
  LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

  if (v92)
  {
LABEL_60:
    __break(1u);
  }

  if (v93)
  {
    swift_getErrorValue();
    v94 = v239;
    v209 = v238;
    v95 = swift_allocError();
    *v96 = 6;
    *(v96 + 8) = 0u;
    *(v96 + 24) = 0u;
    *(v96 + 40) = 19;
    v97 = v86;
    v98 = v93;
    v99 = sub_1CF199074(v95, v94);

    v86 = v97;
    v100 = v95;
    v89 = v232;

    v101 = v222;
    *v222 = v99;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v101, v89, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v102 = v226;
  sub_1CEFCCBDC(v89, v226, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1CEFE55D0(v102, v235, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v89, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v86);

    v106 = v237;
    v109 = v229;
    v108 = v230;
    goto LABEL_16;
  }

  *&v245 = *v102;
  v103 = v245;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v89, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v86);

  v104 = v103;
  LODWORD(v245) = sub_1CF9E52A8();
  sub_1CF196978();
  v105 = sub_1CF9E5658();

  v106 = v237;
  if (v105)
  {

    v107 = v235;
    *v235 = xmmword_1CF9FD940;
    *(v107 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v109 = v229;
    v108 = v230;
LABEL_16:
    close(v212);

    swift_unknownObjectRelease();
    v118 = v211;
    v119 = v227;
    v120 = v235;
LABEL_20:
    sub_1CEFE55D0(v120, v109, &unk_1EC4BE2F0, qword_1CFA04220);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v125 = (v119 + 56);
    v126 = v233;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CEFCCC44(v109, &unk_1EC4BE2F0, qword_1CFA04220);
      v127 = 1;
    }

    else
    {
      sub_1CEFE4C60(v109, v108, type metadata accessor for VFSItem);
      v127 = 0;
    }

    v128 = *(v119 + 56);
    v128(v108, v127, 1, v118);
    v131 = *(v119 + 48);
    v129 = v119 + 48;
    v130 = v131;
    if (v131(v108, 1, v118) == 1)
    {
      sub_1CEFCCC44(v108, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v132 = swift_allocObject();
      *(v132 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      swift_allocError();
      v134 = v133;
      sub_1CF1B8150();
      v135 = swift_allocError();
      *v136 = v132;
      *&v245 = v225;
      BYTE8(v245) = v224;
      memset(v246, 0, sizeof(v246));
      v247 = 0u;
      v248 = v135;
      sub_1CF2A8DE0(&v245);
      *v134 = v245;
      v137 = v246[0];
      v138 = v246[1];
      v139 = v246[3];
      *(v134 + 48) = v246[2];
      *(v134 + 64) = v139;
      *(v134 + 16) = v137;
      *(v134 + 32) = v138;
      v140 = v246[4];
      v141 = v247;
      v142 = v248;
      *(v134 + 128) = v249;
      *(v134 + 96) = v141;
      *(v134 + 112) = v142;
      *(v134 + 80) = v140;
      swift_willThrow();
      return;
    }

    v232 = v125;
    sub_1CEFE4C60(v108, v106, type metadata accessor for VFSItem);
    v143 = (v106 + *(v118 + 28));
    v144 = type metadata accessor for ItemMetadata(0);
    if ((v143[*(v144 + 80)] & 1) == 0)
    {
      *(v246 + 9) = v254;
      *&v245 = v126;
      *(&v245 + 1) = v220.n128_u64[0];
      *&v246[0] = v221;
      BYTE8(v246[0]) = v219;
      *(&v246[1] + 9) = v255[0];
      *(&v246[2] + 1) = *(v255 + 15);
      *&v246[3] = v223;
      *(&v246[3] + 8) = v252;
      *(&v246[4] + 1) = v253;
      v240 = 8;
      v145 = v210;
      sub_1CF2ABFCC(&v245, v106, &v240, 0);
      v210 = v145;
      if (v145)
      {
        goto LABEL_27;
      }
    }

    if (*v143 == 1 && v143[*(v144 + 72)] == 1)
    {
      *&v245 = v225;
      BYTE8(v245) = v224;
      sub_1CF2B19FC(&v245);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      swift_allocError();
      *v146 = v245;
      v147 = v246[3];
      v149 = v246[0];
      v148 = v246[1];
      *(v146 + 48) = v246[2];
      *(v146 + 64) = v147;
      *(v146 + 16) = v149;
      *(v146 + 32) = v148;
      v151 = v247;
      v150 = v248;
      v152 = v246[4];
      *(v146 + 128) = v249;
      *(v146 + 96) = v151;
      *(v146 + 112) = v150;
      *(v146 + 80) = v152;
      swift_willThrow();
      goto LABEL_27;
    }

    v235 = v144;
    v153 = v217;
    sub_1CEFCCBDC(v218, v217, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v130(v153, 1, v118) == 1)
    {
      sub_1CEFCCC44(v153, &unk_1EC4BEC00, &unk_1CF9FCB60);
    }

    else
    {
      v154 = v153;
      v155 = v204[0];
      sub_1CEFE4C60(v154, v204[0], type metadata accessor for VFSItem);
      sub_1CF9E5CF8();
      sub_1CF2A9448(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v126 = v233;
      v156 = sub_1CF9E6868();
      sub_1CEFE5888(v155, type metadata accessor for VFSItem);
      if ((v156 & 1) == 0)
      {
        v184 = v215;
        sub_1CEFE4C60(v237, v215, type metadata accessor for VFSItem);
        v185 = 0;
        goto LABEL_50;
      }
    }

    v157 = v236[17];
    v158 = sub_1CF9E5A18();
    v227 = v129;
    v234 = v159;
    v231 = v158;
    if (v223)
    {
      v230 = v220.n128_u32[0];
      v160 = v219 & 1;
    }

    else
    {
      v126 = 0;
      v230 = 0;
      v221 = 0;
      v160 = 0;
    }

    v161 = v235;
    v162 = v236;
    v233 = v126;
    v163 = objc_sync_enter(v236);
    if (!v163)
    {
      v164 = v162[20];

      v165 = objc_sync_exit(v162);
      if (!v165)
      {
        v166 = v143[*(v161 + 112)] | v216;
        v245 = v256;
        v246[0] = v257;
        v246[1] = v258;
        v246[2] = v259;
        v167 = *(*v157 + 536);
        HIDWORD(v202) = 1;
        LOBYTE(v202) = 1;
        v168 = v234;
        v169 = v210;
        v167(v231, v234, v233, v230, v221, v160 | ((v223 == 0) << 8), v164, v166 & 1, v202, &v245);
        if (v169)
        {
          v168, v170, v171, v172, v173, v174, v175, v176;

          v177 = v169;
          LODWORD(v245) = sub_1CF9E53B8();
          sub_1CF196978();
          v178 = sub_1CF9E5658();
          v106 = v237;
          if ((v178 & 1) == 0)
          {
            sub_1CEFE5888(v237, type metadata accessor for VFSItem);

            return;
          }

          v179 = v169;
          sub_1CF19947C(v169, &v245);
          if (BYTE8(v246[1]) == 18)
          {
            v186 = v214;
            sub_1CF263ADC(v245, 0, 0, v214);
            v180 = v169;
            v198 = v213;
            sub_1CEFE55D0(v186, v213, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v199 = v130(v198, 1, v211);
            if (v199 == 1)
            {
              sub_1CEFCCC44(v198, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v188 = 0;
              v189 = -1;
            }

            else
            {
              v188 = *v198;
              v189 = *(v198 + 8);
              sub_1CEFE5888(v198, type metadata accessor for VFSItem);
            }

            v190 = v169;
            v187 = v224;
          }

          else
          {
            v180 = v169;
            if (BYTE8(v246[1]) == 255)
            {
              sub_1CEFCCC44(&v245, &qword_1EC4BD918, &unk_1CF9FA550);
            }

            else
            {
              sub_1CF1969CC(&v245);
            }

            v187 = v224;
            v188 = 0;
            v189 = -1;
            v190 = v169;
          }

          *&v245 = v225;
          BYTE8(v245) = v187;
          *&v246[0] = v188;
          BYTE8(v246[0]) = v189;
          *&v246[1] = v190;
          sub_1CF2B19F0(&v245);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
          swift_allocError();
          *v191 = v245;
          v192 = v246[3];
          v194 = v246[0];
          v193 = v246[1];
          *(v191 + 48) = v246[2];
          *(v191 + 64) = v192;
          *(v191 + 16) = v194;
          *(v191 + 32) = v193;
          v196 = v247;
          v195 = v248;
          v197 = v246[4];
          *(v191 + 128) = v249;
          *(v191 + 96) = v196;
          *(v191 + 112) = v195;
          *(v191 + 80) = v197;
          swift_willThrow();

LABEL_27:
          sub_1CEFE5888(v106, type metadata accessor for VFSItem);
          return;
        }

        v168, v170, v171, v172, v173, v174, v175, v176;

        sub_1CF4D463C();
        v181 = &v143[*(v235 + 148)];
        if ((v181[4] & 1) == 0 && *v181 >= 2u)
        {
          v182 = *&v237[*(v211 + 36)];
          v183 = v237;
          swift_bridgeObjectRelease_n();
          sub_1CF263ADC(v182, 0, 0, v215);
          sub_1CEFE5888(v183, type metadata accessor for VFSItem);
          return;
        }

        sub_1CEFE5888(v237, type metadata accessor for VFSItem);
        v185 = 1;
        v184 = v215;
LABEL_50:
        v128(v184, v185, 1, v211);
        return;
      }

      MEMORY[0x1EEE9AC00](v165);
      v202 = v236;
LABEL_64:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v200, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v163);
    v202 = v162;
LABEL_62:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v200, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  close(v212);
  v109 = v229;
  v108 = v230;
LABEL_18:
  v121 = v103;
  LODWORD(v245) = sub_1CF9E5328();
  sub_1CF196978();
  v122 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if (v122)
  {

    v123 = v235;
    *v235 = xmmword_1CF9FD930;
    *(v123 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v120 = v123;
    v118 = v211;
    v119 = v227;
    goto LABEL_20;
  }
}

uint64_t sub_1CF28E100(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, int a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, int a8, __int128 *a9)
{
  v118 = a8;
  v135 = a6;
  v134 = a5;
  v137 = a4;
  v136 = a1;
  v11 = a7[1];
  *&v120 = *a7;
  *(&v120 + 1) = v11;
  v12 = a7[3];
  v121 = a7[2];
  v123 = v12;
  v130 = a3;
  v13 = a3;
  v14 = a7[5];
  v122 = a7[4];
  v124 = v14;
  v15 = a7[7];
  *&v125 = a7[6];
  *(&v125 + 1) = v15;
  v16 = a7[9];
  *&v126 = a7[8];
  *(&v126 + 1) = v16;
  v17 = a7[11];
  *&v127 = a7[10];
  *(&v127 + 1) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v115 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v117 = &v112[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v112[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v119 = &v112[-v24];
  v25 = sub_1CF9E5A58();
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v112[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for VFSItem(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v112[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v112[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v112[-v33];
  if (v13 == 2 && a2 == 1)
  {
    v128 = v29;
    a2 = v137;
    v35 = objc_sync_enter(v137);
    if (v35)
    {
LABEL_21:
      MEMORY[0x1EEE9AC00](v35);
      v110 = &v112[-32];
      *&v112[-16] = a2;
      goto LABEL_24;
    }

    v36 = *(a2 + 160);

    v37 = objc_sync_exit(a2);
    if (v37)
    {
      MEMORY[0x1EEE9AC00](v37);
      v111 = &v112[-32];
      *&v112[-16] = v137;
      goto LABEL_26;
    }

    *(v36 + 49) = 1;

    a2 = 1;
    v29 = v128;
  }

  sub_1CEFCCBDC(v136, v34, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v34;
    v39 = v132;
    *v132 = *v34;
    swift_storeEnumTagMultiPayload();
    v40 = v38;
    v134(v39);

    return sub_1CEFCCC44(v39, &unk_1EC4BEC10, &unk_1CFA00660);
  }

  if ((*(v29 + 48))(v34, 1, v28) == 1)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v42 = swift_allocError();
    v44 = v43;
    sub_1CF1B8150();
    v45 = swift_allocError();
    *v46 = v41;
    *&v141 = a2;
    BYTE8(v141) = v130;
    *(&v141 + 9) = v140[0];
    HIDWORD(v141) = *(v140 + 3);
    v142 = v120;
    *&v143 = v121;
    *(&v143 + 1) = v123;
    *&v144 = v122;
    *(&v144 + 1) = v124;
    v145 = v125;
    v146 = v126;
    v147 = v127;
    v148 = v45;
    sub_1CF2A8DE0(&v141);
    *v44 = v141;
    v47 = v142;
    v48 = v143;
    v49 = v145;
    *(v44 + 48) = v144;
    *(v44 + 64) = v49;
    *(v44 + 16) = v47;
    *(v44 + 32) = v48;
    v50 = v146;
    v51 = v147;
    v52 = v148;
    *(v44 + 128) = v149;
    *(v44 + 96) = v51;
    *(v44 + 112) = v52;
    *(v44 + 80) = v50;
    v39 = v132;
    *v132 = v42;
    swift_storeEnumTagMultiPayload();
    sub_1CEFCCBDC(a7, &v138, &unk_1EC4BE330, &unk_1CF9FF010);
    v134(v39);
    return sub_1CEFCCC44(v39, &unk_1EC4BEC10, &unk_1CFA00660);
  }

  v54 = v28;
  v55 = v133;
  sub_1CEFE4C60(v34, v133, type metadata accessor for VFSItem);
  v136 = v54;
  v56 = &v55[*(v54 + 28)];
  v57 = type metadata accessor for ItemMetadata(0);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  if ((v56[*(v57 + 96)] & 1) == 0)
  {
    sub_1CEFCCBDC(a7, &v141, &unk_1EC4BE330, &unk_1CF9FF010);
    v59 = *(&v120 + 1);
    v58 = v120;
    v60 = v121;
    v61 = v123;
    v62 = v122;
    v63 = v124;
    v65 = *(&v125 + 1);
    v64 = v125;
    v67 = *(&v126 + 1);
    v66 = v126;
    v69 = *(&v127 + 1);
    v68 = v127;
  }

  v121 = v69;
  v122 = v68;
  v123 = v67;
  v124 = v66;
  *&v125 = v65;
  *(&v125 + 1) = v64;
  *&v126 = v63;
  *(&v126 + 1) = v62;
  *&v127 = v61;
  *(&v127 + 1) = v60;
  v131 = v59;
  v70 = v137;
  v71 = objc_sync_enter(v137);
  v72 = v129;
  if (v71)
  {
    MEMORY[0x1EEE9AC00](v71);
    v110 = &v112[-32];
    *&v112[-16] = v70;
LABEL_24:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v110, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v73 = objc_sync_exit(v70);
  if (v73)
  {
    MEMORY[0x1EEE9AC00](v73);
    v111 = &v112[-32];
    *&v112[-16] = v70;
LABEL_26:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v111, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  *(&v120 + 1) = v56;
  v132 = v58;
  v128 = v29;
  v74 = v119;
  sub_1CF25116C(v119);
  v35 = (*(v26 + 48))(v74, 1, v25);
  if (v35 == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v114 = a9;
  (*(v26 + 32))(v72, v74, v25);
  v75 = objc_opt_self();
  v76 = sub_1CF9E5928();
  *&v120 = v26;
  v77 = 1;
  v78 = [v75 writingIntentWithURL:v76 options:1];

  MEMORY[0x1EEE9AC00](v79);
  v112[-16] = 0;
  *&v112[-8] = v72;
  MEMORY[0x1EEE9AC00](v80);
  *&v112[-32] = v137;
  *&v112[-24] = sub_1CF2A94E4;
  *&v112[-16] = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v119 = v25;
  sub_1CF9E59B8();
  v113 = v141;
  if (!**(&v120 + 1))
  {
    sub_1CEFD90AC(v133, v22, type metadata accessor for VFSItem);
    v77 = 0;
  }

  (*(v128 + 7))(v22, v77, 1, v136);
  v138 = a2;
  v82 = v130;
  v139 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v83 = swift_allocObject();
  v136 = v83;
  *(v83 + 16) = xmmword_1CFA00250;
  *(v83 + 32) = v78;
  v84 = v117;
  sub_1CEFCCBDC(v22, v117, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v85 = (*(v115 + 80) + 160) & ~*(v115 + 80);
  v86 = v85 + v116;
  v87 = (v85 + v116) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v128 = v22;
  v89 = v88;
  v90 = v135;
  *(v88 + 16) = v134;
  *(v88 + 24) = v90;
  *(v88 + 32) = v137;
  *(v88 + 40) = v78;
  *(v88 + 48) = a2;
  *(v88 + 56) = v82;
  v91 = v131;
  *(v88 + 64) = v132;
  *(v88 + 72) = v91;
  v92 = v127;
  *(v88 + 80) = *(&v127 + 1);
  *(v88 + 88) = v92;
  v93 = v126;
  *(v88 + 96) = *(&v126 + 1);
  *(v88 + 104) = v93;
  v94 = v125;
  *(v88 + 112) = *(&v125 + 1);
  *(v88 + 120) = v94;
  v95 = v123;
  *(v88 + 128) = v124;
  *(v88 + 136) = v95;
  v96 = v121;
  *(v88 + 144) = v122;
  *(v88 + 152) = v96;
  sub_1CEFE55D0(v84, v88 + v85, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v89 + v86) = v118 & 1;
  v97 = v89 + v87;
  v98 = v114;
  v99 = v114[2];
  *(v97 + 56) = v114[3];
  *(v97 + 40) = v99;
  v100 = *v98;
  *(v97 + 24) = v98[1];
  *(v97 + 8) = v100;
  v101 = v78;

  sub_1CEFCCBDC(v98, &v141, &unk_1EC4BF260, &unk_1CFA01B60);
  v102 = v136;
  sub_1CF265B04(&v138, v136, v113 & 1, sub_1CF2A951C, v89);

  v102, v103, v104, v105, v106, v107, v108, v109;

  sub_1CEFCCC44(v128, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFE5888(v133, type metadata accessor for VFSItem);
  return (*(v120 + 8))(v129, v119);
}

uint64_t sub_1CF28EF20(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t *a9, uint64_t a10, unsigned __int8 a11, __int128 *a12)
{
  v51 = a8;
  v49 = a6;
  v50 = a7;
  v52 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v53 = &v42[-v19];
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42[-v25];
  *&v28 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v30 = &v42[-v29];
  if (a2)
  {
    *v17 = a2;
    swift_storeEnumTagMultiPayload();
    v31 = a2;
    a3(v17);
    v37 = &unk_1EC4BEC10;
    v38 = &unk_1CFA00660;
    v39 = v17;
  }

  else
  {
    v46 = v15;
    v47 = a4;
    v48 = a3;
    v43 = a11;
    v44 = a9;
    v45 = a10;
    v32 = v49;
    v33 = [v49 URL];
    sub_1CF9E59D8();

    sub_1CF9E5988();
    v34 = *(v21 + 8);
    v34(v26, v20);
    v34(v30, v20);
    v35 = [v32 URL];
    sub_1CF9E59D8();

    v54 = v50;
    v55 = v51;
    v36 = v53;
    sub_1CF28CB50(v23, &v54, v44, v45, v43 & 1, a12, v53);
    v34(v23, v20);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC38, &unk_1CFA00670) + 48);
    sub_1CEFCCBDC(v36, v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
    *(v17 + v41) = 0;
    swift_storeEnumTagMultiPayload();
    v48(v17);
    sub_1CEFCCC44(v17, &unk_1EC4BEC10, &unk_1CFA00660);
    v39 = v36;
    v37 = &unk_1EC4BEC00;
    v38 = &unk_1CF9FCB60;
  }

  return sub_1CEFCCC44(v39, v37, v38);
}

void sub_1CF28F2E0(uint64_t *a1, uint64_t *a2, void (*a3)(void *), uint64_t a4)
{
  v9 = sub_1CF9E63D8();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = *a1;
  v18 = *(a1 + 8);
  if (v18 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v32 = swift_allocError();
    v34 = v33;
    sub_1CF1B8150();
    v35 = swift_allocError();
    *v36 = 0xB000000000000020;
    *&aBlock = v17;
    BYTE8(aBlock) = v18;
LABEL_7:
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = v35;
    sub_1CF2A8DE0(&aBlock);
    *v34 = aBlock;
    v39 = v59;
    v40 = v60;
    v41 = v62;
    *(v34 + 48) = v61;
    *(v34 + 64) = v41;
    *(v34 + 16) = v39;
    *(v34 + 32) = v40;
    v42 = v63;
    v43 = v64;
    v44 = v65;
    *(v34 + 128) = v66;
    *(v34 + 96) = v43;
    *(v34 + 112) = v44;
    *(v34 + 80) = v42;
    a3(v32);

    return;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  if (v20 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v32 = swift_allocError();
    v34 = v37;
    sub_1CF1B8150();
    v35 = swift_allocError();
    *v38 = 0xB000000000000020;
    *&aBlock = v19;
    BYTE8(aBlock) = v20;
    goto LABEL_7;
  }

  v51 = v9;
  v21 = *(v4 + 216);
  v53 = *(v4 + 224);
  v55 = v21;
  v22 = &v50 - v16;
  v56 = &v50 - v16;
  v23 = sub_1CF9E6448();
  v52 = *(v23 - 8);
  (*(v52 + 56))(v22, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v17;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  *(v25 + 48) = v17;
  *(v25 + 56) = 1;
  *(v25 + 64) = v19;
  *(v25 + 72) = v19;
  *(v25 + 80) = 1;
  v26 = swift_allocObject();
  v26[2] = sub_1CF2BA174;
  v26[3] = v24;
  v27 = v53;
  v26[4] = v53;
  swift_retain_n();
  v54 = v55;

  v55 = v24;
  v28 = v52;

  v29 = v27;

  v30 = fpfs_current_log();
  v53 = v29[2];
  sub_1CEFCCBDC(v56, v14, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v28 + 48))(v14, 1, v23) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
    v31 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v28 + 8))(v14, v23);
    v31 = sub_1CF9E63C8();
    (*(v57 + 8))(v11, v51);
  }

  v45 = swift_allocObject();
  v45[2] = v30;
  v45[3] = sub_1CF2B052C;
  v45[4] = v25;
  *&v60 = sub_1CF2BA17C;
  *(&v60 + 1) = v45;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_1CEFCA444;
  *(&v59 + 1) = &block_descriptor_468;
  v46 = _Block_copy(&aBlock);
  v47 = v30;

  *&v60 = sub_1CF2BA180;
  *(&v60 + 1) = v26;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_1CEFCA444;
  *(&v59 + 1) = &block_descriptor_471;
  v48 = _Block_copy(&aBlock);

  v49 = v54;
  fp_task_tracker_async_and_qos(v53, v54, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v31, v46, v48);
  _Block_release(v48);
  _Block_release(v46);

  sub_1CEFCCC44(v56, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF28F99C(void *a1, void *a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5, int a6, void *a7, uint64_t a8, char a9)
{
  v203 = a8;
  v204 = a7;
  v209 = a6;
  v208 = a5;
  v210 = a3;
  v211 = a4;
  v199 = sub_1CF9E64A8();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = (v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v201 = v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v205 = v185 - v15;
  v207 = sub_1CF9E5A58();
  v206 = *(v207 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v200 = v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v196 = v185 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v202 = v185 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v185 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v185 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v185 - v28;
  v30 = type metadata accessor for VFSItem(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v185 - v35;
  sub_1CF263ADC(a2, 0, 0, v29);
  v192 = v26;
  v194 = a1;
  v191 = v33;
  v193 = v23;
  v195 = v36;
  v39 = *(v31 + 48);
  v38 = v31 + 48;
  v37 = v39;
  if (v39(v29, 1, v30) == 1)
  {
    sub_1CEFCCC44(v29, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v41 = swift_allocError();
    v43 = v42;
    sub_1CF1B8150();
    v44 = swift_allocError();
    *v45 = v40;
    *&aBlock = v208;
    BYTE8(aBlock) = v209;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v44;
    sub_1CF2A8DE0(&aBlock);
    *v43 = aBlock;
    v46 = v214;
    v47 = v215;
    v48 = v217;
    *(v43 + 48) = v216;
    *(v43 + 64) = v48;
    *(v43 + 16) = v46;
    *(v43 + 32) = v47;
    v49 = v218;
    v50 = v219;
    v51 = v220;
    *(v43 + 128) = v221;
    *(v43 + 96) = v50;
    *(v43 + 112) = v51;
    *(v43 + 80) = v49;
    v210(v41);

    return;
  }

  v52 = v29;
  v53 = v195;
  sub_1CEFE4C60(v52, v195, type metadata accessor for VFSItem);
  v54 = v209;
  v55 = v208;
  if (*(v53 + *(v30 + 28)) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v73 = swift_allocError();
    v75 = v74;
    sub_1CF1B8150();
    v76 = swift_allocError();
    *v77 = 0xB000000000000020;
    *&aBlock = v55;
    BYTE8(aBlock) = v54;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v76;
    sub_1CF2A8DE0(&aBlock);
    *v75 = aBlock;
    v78 = v214;
    v79 = v215;
    v80 = v217;
    *(v75 + 48) = v216;
    *(v75 + 64) = v80;
    *(v75 + 16) = v78;
    *(v75 + 32) = v79;
    v81 = v218;
    v82 = v219;
    v83 = v220;
    *(v75 + 128) = v221;
    *(v75 + 96) = v82;
    *(v75 + 112) = v83;
    *(v75 + 80) = v81;
    v210(v73);

    v84 = v53;
LABEL_10:
    sub_1CEFE5888(v84, type metadata accessor for VFSItem);
    return;
  }

  v56 = v194;
  v57 = objc_sync_enter(v194);
  if (v57)
  {
    goto LABEL_27;
  }

  v189 = v38;
  v190 = v30;
  v58 = objc_sync_exit(v56);
  v59 = v205;
  if (v58)
  {
    MEMORY[0x1EEE9AC00](v58);
    v184 = &v185[-4];
    v185[-2] = v56;
    goto LABEL_29;
  }

  sub_1CF25116C(v205);
  v60 = v206;
  v61 = v207;
  v188 = *(v206 + 48);
  if (v188(v59, 1, v207) == 1)
  {
    sub_1CEFCCC44(v59, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v62 = swift_allocError();
    v64 = v63;
    sub_1CF1B8150();
    v65 = swift_allocError();
    *v66 = 0xB000000000000008;
    *&aBlock = v55;
    BYTE8(aBlock) = v54;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v65;
    sub_1CF2A8DE0(&aBlock);
    *v64 = aBlock;
    v67 = v214;
    v68 = v215;
    v69 = v217;
    *(v64 + 48) = v216;
    *(v64 + 64) = v69;
    *(v64 + 16) = v67;
    *(v64 + 32) = v68;
    v70 = v218;
    v71 = v219;
    v72 = v220;
    *(v64 + 128) = v221;
    *(v64 + 96) = v71;
    *(v64 + 112) = v72;
    *(v64 + 80) = v70;
    v210(v62);

LABEL_9:
    v84 = v195;
    goto LABEL_10;
  }

  v187 = v16;
  v86 = v60 + 32;
  v85 = *(v60 + 32);
  v85(v193, v59, v61);
  v87 = v192;
  sub_1CF263ADC(v204, 0, 0, v192);
  v88 = v85;
  v89 = v190;
  if (v37(v87, 1, v190) == 1)
  {
    sub_1CEFCCC44(v87, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v91 = swift_allocError();
    v93 = v92;
    sub_1CF1B8150();
    v94 = swift_allocError();
    *v95 = v90;
    *&aBlock = v203;
    BYTE8(aBlock) = a9;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v94;
    sub_1CF2A8DE0(&aBlock);
    *v93 = aBlock;
    v96 = v214;
    v97 = v215;
    v98 = v217;
    *(v93 + 48) = v216;
    *(v93 + 64) = v98;
    *(v93 + 16) = v96;
    *(v93 + 32) = v97;
    v99 = v218;
    v100 = v219;
    v101 = v220;
    *(v93 + 128) = v221;
    *(v93 + 96) = v100;
    *(v93 + 112) = v101;
    *(v93 + 80) = v99;
    v210(v91);

    (*(v206 + 8))(v193, v207);
    goto LABEL_9;
  }

  v102 = v191;
  sub_1CEFE4C60(v87, v191, type metadata accessor for VFSItem);
  v103 = *(v102 + *(v89 + 28)) == 1;
  v104 = v206;
  v105 = v193;
  if (!v103)
  {
    v122 = v206;
    v123 = v195;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v124 = swift_allocError();
    v126 = v125;
    sub_1CF1B8150();
    v127 = swift_allocError();
    *v128 = 0xB000000000000020;
    *&aBlock = v203;
    BYTE8(aBlock) = a9;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v127;
    sub_1CF2A8DE0(&aBlock);
    *v126 = aBlock;
    v129 = v214;
    v130 = v215;
    v131 = v217;
    *(v126 + 48) = v216;
    *(v126 + 64) = v131;
    *(v126 + 16) = v129;
    *(v126 + 32) = v130;
    v132 = v218;
    v133 = v219;
    v134 = v220;
    *(v126 + 128) = v221;
    *(v126 + 96) = v133;
    *(v126 + 112) = v134;
    *(v126 + 80) = v132;
    v210(v124);

    sub_1CEFE5888(v102, type metadata accessor for VFSItem);
    (*(v122 + 8))(v105, v207);
    v84 = v123;
    goto LABEL_10;
  }

  v57 = objc_sync_enter(v56);
  if (v57)
  {
LABEL_27:
    MEMORY[0x1EEE9AC00](v57);
    v185[-2] = v56;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v185[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v106 = objc_sync_exit(v56);
  v107 = v202;
  v108 = v201;
  if (v106)
  {
    MEMORY[0x1EEE9AC00](v106);
    v184 = &v185[-4];
    v185[-2] = v194;
LABEL_29:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v184, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v201);
  v109 = v207;
  if (v188(v108, 1, v207) == 1)
  {
    sub_1CEFCCC44(v108, &unk_1EC4BE310, qword_1CF9FCBE0);
    v110 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v111 = swift_allocError();
    v113 = v112;
    sub_1CF1B8150();
    v114 = swift_allocError();
    *v115 = 0xB000000000000008;
    *&aBlock = v203;
    BYTE8(aBlock) = a9;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = v114;
    sub_1CF2A8DE0(&aBlock);
    *v113 = aBlock;
    v116 = v214;
    v117 = v215;
    v118 = v217;
    *(v113 + 48) = v216;
    *(v113 + 64) = v118;
    *(v113 + 16) = v116;
    *(v113 + 32) = v117;
    v119 = v218;
    v120 = v219;
    v121 = v220;
    *(v113 + 128) = v221;
    *(v113 + 96) = v120;
    *(v113 + 112) = v121;
    *(v113 + 80) = v119;
    v210(v111);

    sub_1CEFE5888(v102, type metadata accessor for VFSItem);
    (*(v110 + 8))(v193, v109);
    v84 = v195;
    goto LABEL_10;
  }

  v185[1] = v86;
  v186 = v88;
  v88(v107, v108, v109);
  v135 = objc_opt_self();
  v136 = sub_1CF9E5928();
  v137 = [v135 writingIntentWithURL:v136 options:4];
  v205 = v137;

  v138 = sub_1CF9E5928();
  v139 = [v135 writingIntentWithURL:v138 options:2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1CFA00380;
  *(v140 + 32) = v137;
  *(v140 + 40) = v139;
  v141 = *(v104 + 16);
  v142 = v196;
  v141(v196, v107, v109);
  v141(v200, v142, v109);
  v143 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v144 = (v187 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = swift_allocObject();
  *(v145 + 16) = v139;
  v186(v145 + v143, v142, v109);
  v56 = v194;
  *(v145 + v144) = v194;
  v146 = v145 + ((v144 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v146 = v208;
  *(v146 + 8) = v209;
  v147 = (v145 + ((v144 + 31) & 0xFFFFFFFFFFFFFFF8));
  v149 = v210;
  v148 = v211;
  *v147 = v210;
  v147[1] = v148;
  v150 = v56[27];
  v151 = v197;
  *v197 = v150;
  v152 = v198;
  v153 = v199;
  (*(v198 + 104))(v151, *MEMORY[0x1E69E8020], v199);
  v204 = v139;
  v205 = v205;

  v154 = v150;
  LOBYTE(v139) = sub_1CF9E64D8();
  v57 = (*(v152 + 8))(v151, v153);
  if ((v139 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v162 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    if (v56[23])
    {
      v163 = sub_1CF9E6888();
      [v162 setPurposeIdentifier_];
    }

    swift_beginAccess();
    v164 = v162;
    sub_1CF6E96F4(&v212, v164);
    swift_endAccess();

    v165 = fpfs_current_log();
    sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
    v166 = sub_1CF9E6D28();
    v140, v167, v168, v169, v170, v171, v172, v173;
    v174 = v56[26];
    v175 = swift_allocObject();
    *(v175 + 16) = v165;
    *(v175 + 24) = v56;
    *(v175 + 32) = v164;
    *(v175 + 40) = 0;
    *(v175 + 48) = -1;
    *(v175 + 56) = sub_1CF2B0568;
    *(v175 + 64) = v145;
    *&v215 = sub_1CF2BA138;
    *(&v215 + 1) = v175;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_1CF00A468;
    *(&v214 + 1) = &block_descriptor_487;
    v176 = _Block_copy(&aBlock);

    v177 = v164;
    v178 = v174;
    v179 = v165;

    [v177 coordinateAccessWithIntents:v166 queue:v178 byAccessor:v176];
    _Block_release(v176);

    v180 = v200;
  }

  else
  {
    v140, v155, v156, v157, v158, v159, v160, v161;
    v181 = v204;
    v180 = v200;
    sub_1CF2AE4E8(0, v204, v200, v56, v208, v209, v149, v211);
  }

  v182 = *(v206 + 8);
  v183 = v207;
  v182(v202, v207);
  sub_1CEFE5888(v191, type metadata accessor for VFSItem);
  v182(v193, v183);
  sub_1CEFE5888(v195, type metadata accessor for VFSItem);
  v182(v180, v183);
}

uint64_t sub_1CF290EB8(uint64_t a1, void *a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (*(v5 + 16))(v7, a1, v4);
  v13 = a2;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72A8();
  v41 = a2;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v8;
    v17 = v16;
    v37 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v17 = 136315394;
    v18 = sub_1CF9E5928();
    v19 = [v18 fp_shortDescription];
    v38 = v9;
    v20 = v19;

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v15;
    v24 = v23;

    (*(v5 + 8))(v7, v4);
    v25 = sub_1CEFD0DF0(v21, v24, &v44);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v17 + 4) = v25;
    *(v17 + 12) = 2112;
    swift_getErrorValue();
    v33 = Error.prettyDescription.getter(v42, v43);
    *(v17 + 14) = v33;
    v34 = v37;
    *v37 = v33;
    _os_log_impl(&dword_1CEFC7000, v14, v22, "Can't enumerate: %s: %@", v17, 0x16u);
    sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v34, -1, -1);
    v35 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D386CDC0](v35, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v38 + 8))(v11, v40);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  return 1;
}

uint64_t sub_1CF291224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5968();
  sub_1CF9E5A18();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = sub_1CF9E6888();
  v9, v11, v12, v13, v14, v15, v16, v17;
  LODWORD(a3) = [a3 fileExistsAtPath_];

  return a3 ^ 1;
}

uint64_t sub_1CF29135C(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t a5, char *a6)
{
  v61 = a6;
  v12 = sub_1CF9E63D8();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v60 = *a1;
  LODWORD(v58) = *(a1 + 8);
  v19 = a2[3];
  v70 = a2[2];
  v71 = v19;
  v20 = a2[5];
  v72 = a2[4];
  v73 = v20;
  v21 = a2[1];
  v68 = *a2;
  v69 = v21;
  v22 = *a3;
  v55 = *(a3 + 8);
  v23 = a4[1];
  v74 = *a4;
  v75 = v23;
  v24 = a4[2];
  v25 = a4[3];
  v26 = a4[5];
  v78 = a4[4];
  v79 = v26;
  v76 = v24;
  v77 = v25;
  v27 = *(v6 + 216);
  v28 = *(v6 + 224);
  v56 = v22;
  v57 = v27;
  v29 = sub_1CF9E6448();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v18, 1, 1, v29);
  v31 = swift_allocObject();
  v32 = v61;
  *(v31 + 16) = a5;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v71;
  *(v33 + 72) = v70;
  *(v33 + 88) = v34;
  v35 = v73;
  *(v33 + 104) = v72;
  *(v33 + 120) = v35;
  v36 = v69;
  *(v33 + 40) = v68;
  *(v33 + 56) = v36;
  v37 = v77;
  *(v33 + 200) = v76;
  *(v33 + 216) = v37;
  v38 = v79;
  *(v33 + 232) = v78;
  *(v33 + 248) = v38;
  v39 = v75;
  *(v33 + 168) = v74;
  v40 = v60;
  *(v33 + 16) = v6;
  *(v33 + 24) = v40;
  *(v33 + 32) = v58;
  *(v33 + 136) = a5;
  *(v33 + 144) = v32;
  *(v33 + 152) = v56;
  *(v33 + 160) = v55;
  *(v33 + 184) = v39;
  v41 = swift_allocObject();
  v41[2] = sub_1CF2BA174;
  v41[3] = v31;
  v41[4] = v28;
  swift_retain_n();
  v60 = v57;

  sub_1CEFCCBDC(&v68, &v62, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(&v74, &v62, &unk_1EC4BE330, &unk_1CF9FF010);

  v42 = fpfs_current_log();
  v58 = *(v28 + 16);
  v61 = v18;
  v43 = v59;
  sub_1CEFCCBDC(v18, v59, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v30 + 48))(v43, 1, v29) == 1)
  {
    sub_1CEFCCC44(v43, &unk_1EC4BE370, qword_1CFA01B30);
    v44 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v45 = v52;
    sub_1CF9E6438();
    (*(v30 + 8))(v43, v29);
    v44 = sub_1CF9E63C8();
    (*(v53 + 8))(v45, v54);
  }

  v46 = swift_allocObject();
  v46[2] = v42;
  v46[3] = sub_1CF2B0454;
  v46[4] = v33;
  v66 = sub_1CF2BA17C;
  v67 = v46;
  v62 = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1CEFCA444;
  v65 = &block_descriptor_434;
  v47 = _Block_copy(&v62);
  v48 = v42;

  v66 = sub_1CF2BA180;
  v67 = v41;
  v62 = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1CEFCA444;
  v65 = &block_descriptor_437;
  v49 = _Block_copy(&v62);

  v50 = v60;
  fp_task_tracker_async_and_qos(v58, v60, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v44, v47, v49);
  _Block_release(v49);
  _Block_release(v47);

  return sub_1CEFCCC44(v61, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2918E0(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void *a7, int a8, __int128 *a9)
{
  v203 = a8;
  v207 = a7;
  v209 = a5;
  v210 = a6;
  v13 = a9[3];
  v247 = a9[2];
  v248 = v13;
  v14 = a9[5];
  v249 = a9[4];
  v250 = v14;
  v15 = a9[1];
  v245 = *a9;
  v246 = v15;
  v16 = a4[3];
  v253 = a4[2];
  v254 = v16;
  v17 = a4[5];
  v255 = a4[4];
  v256 = v17;
  v18 = a4[1];
  v251 = *a4;
  v252 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v195 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v182 - v22;
  v200 = sub_1CF9E64A8();
  v197 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v196 = (&v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v199 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v205 = &v182 - v27;
  v208 = sub_1CF9E5A58();
  v206 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v194 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v198 = &v182 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v204 = &v182 - v32;
  v193 = type metadata accessor for VFSItem(0);
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v34 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v182 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v182 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v182 - v42;
  v201 = a2;
  *v241 = a2;
  v202 = a3;
  v241[8] = a3;
  v44 = a4[3];
  v242[2] = a4[2];
  v242[3] = v44;
  v45 = a4[5];
  v242[4] = a4[4];
  v242[5] = v45;
  v46 = a4[1];
  v242[0] = *a4;
  v242[1] = v46;
  *&v235 = 8;
  v47 = a1;
  sub_1CF278908(v241, v242, &v235, 0, &v182 - v42);
  v186 = v37;
  v187 = 0;
  v49 = v205;
  v189 = v40;
  v190 = a9;
  v185 = v34;
  v188 = a4;
  v50 = objc_sync_enter(a1);
  if (v50)
  {
    goto LABEL_24;
  }

  v51 = objc_sync_exit(a1);
  v52 = v206;
  v53 = v207;
  if (v51)
  {
    goto LABEL_25;
  }

  v54 = v43;
  sub_1CF25116C(v49);
  v55 = v49;
  v56 = *(v52 + 48);
  v57 = v208;
  if ((v56)(v55, 1, v208) != 1)
  {
    v183 = v56;
    v184 = v54;
    v70 = v204;
    v205 = *(v52 + 32);
    (v205)(v204, v55, v57);
    *v241 = v53;
    v241[8] = v203;
    v71 = v189;
    v72 = v190[3];
    v242[2] = v190[2];
    v242[3] = v72;
    v73 = v190[5];
    v242[4] = v190[4];
    v242[5] = v73;
    v74 = v190[1];
    v242[0] = *v190;
    v242[1] = v74;
    *&v235 = 0;
    v75 = v187;
    sub_1CF278908(v241, v242, &v235, 0, v189);
    if (v75)
    {
      (*(v52 + 8))(v70, v57);
      sub_1CEFE5888(v184, type metadata accessor for VFSItem);
      v48 = v75;
      v209(v75);

      return;
    }

    v76 = v205;
    v50 = objc_sync_enter(v47);
    if (v50)
    {
      goto LABEL_24;
    }

    v51 = objc_sync_exit(v47);
    v77 = v203;
    v78 = v199;
    if (!v51)
    {
      v79 = v71;
      sub_1CF25116C(v199);
      v80 = v208;
      if ((v183)(v78, 1, v208) == 1)
      {
        sub_1CEFCCC44(v78, &unk_1EC4BE310, qword_1CF9FCBE0);
        v237 = v247;
        v238 = v248;
        v239 = v249;
        v240 = v250;
        v235 = v245;
        v236 = v246;
        v81 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
        v82 = swift_allocError();
        v84 = v83;
        sub_1CF1B8150();
        v85 = swift_allocError();
        *v86 = 0xB000000000000008;
        *&v241[7] = v235;
        *&v241[23] = v236;
        *&v241[39] = v237;
        *&v241[55] = v238;
        *&v241[71] = v239;
        *&v241[87] = v240;
        *&v242[0] = v207;
        BYTE8(v242[0]) = v77;
        *(&v242[2] + 9) = *&v241[32];
        *(&v242[1] + 9) = *&v241[16];
        *(v242 + 9) = *v241;
        *(&v242[6] + 1) = *(&v240 + 1);
        *(&v242[5] + 9) = *&v241[80];
        *(&v242[4] + 9) = *&v241[64];
        *(&v242[3] + 9) = *&v241[48];
        v243 = v85;
        sub_1CF2A8DE0(v242);
        *v84 = v242[0];
        v87 = v242[1];
        v88 = v242[2];
        v89 = v242[4];
        *(v84 + 48) = v242[3];
        *(v84 + 64) = v89;
        *(v84 + 16) = v87;
        *(v84 + 32) = v88;
        v90 = v242[5];
        v91 = v242[6];
        v92 = v243;
        *(v84 + 128) = v244;
        *(v84 + 96) = v91;
        *(v84 + 112) = v92;
        *(v84 + 80) = v90;
        sub_1CEFCCBDC(v190, &v229, &unk_1EC4BE330, &unk_1CF9FF010);
        v209(v82);

        sub_1CEFE5888(v81, type metadata accessor for VFSItem);
        (*(v206 + 8))(v204, v80);
LABEL_16:
        v69 = v184;
        goto LABEL_17;
      }

      (v76)(v198, v78, v80);
      v93 = objc_opt_self();
      v94 = sub_1CF9E5928();
      v95 = [v93 writingIntentWithURL:v94 options:4];
      v205 = v95;

      v96 = sub_1CF9E5928();
      v97 = [v93 writingIntentWithURL:v96 options:2];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1CFA00380;
      *(v98 + 32) = v95;
      *(v98 + 40) = v97;
      v183 = v98;
      v99 = swift_allocObject();
      v100 = v207;
      *(v99 + 16) = v47;
      *(v99 + 24) = v100;
      *(v99 + 32) = v77;
      v101 = v190;
      v102 = v190[3];
      *(v99 + 72) = v190[2];
      *(v99 + 88) = v102;
      v103 = v101[5];
      *(v99 + 104) = v101[4];
      *(v99 + 120) = v103;
      v104 = v101[1];
      *(v99 + 40) = *v101;
      *(v99 + 56) = v104;
      v105 = v201;
      *(v99 + 136) = v97;
      *(v99 + 144) = v105;
      *(v99 + 152) = v202;
      v106 = v47;
      v107 = v188;
      v108 = v188[3];
      *(v99 + 192) = v188[2];
      *(v99 + 208) = v108;
      v109 = v107[5];
      *(v99 + 224) = v107[4];
      *(v99 + 240) = v109;
      v110 = v107[1];
      *(v99 + 160) = *v107;
      *(v99 + 176) = v110;
      v111 = v210;
      *(v99 + 256) = v209;
      *(v99 + 264) = v111;
      v187 = v99;
      v199 = v47[27];
      v47 = v196;
      v112 = v197;
      *v196 = v199;
      (*(v112 + 104))(v47, *MEMORY[0x1E69E8020], v200);
      v113 = v97;
      sub_1CEFCCBDC(v107, v242, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CEFCCBDC(v101, v242, &unk_1EC4BE330, &unk_1CF9FF010);
      v114 = v113;
      v205 = v205;

      v115 = v106;

      v116 = v199;
      LOBYTE(v113) = sub_1CF9E64D8();
      v50 = (*(v112 + 8))(v47, v200);
      if (v113)
      {
        v124 = v183;
        v125 = v189;
        v127 = v194;
        v126 = v195;
        v128 = v186;
        if (!*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v183, v117, v118, v119, v120, v121, v122, v123;
          v227 = v207;
          v228 = v203;
          v151 = v190[3];
          v237 = v190[2];
          v238 = v151;
          v152 = v190[5];
          v239 = v190[4];
          v240 = v152;
          v153 = v190[1];
          v235 = *v190;
          v236 = v153;
          v226 = 0;
          sub_1CF278908(&v227, &v235, &v226, 0, v128);
          sub_1CEFE5888(v128, type metadata accessor for VFSItem);
          v207 = v114;
          v155 = [v114 URL];
          sub_1CF9E59D8();

          v224 = v201;
          v225 = v202;
          v231 = v253;
          v232 = v254;
          v233 = v255;
          v234 = v256;
          v229 = v251;
          v230 = v252;
          v220 = v253;
          v221 = v254;
          v222 = v255;
          v223 = v256;
          v218 = v251;
          v219 = v252;
          v156 = v191;
          (*(v191 + 56))(v126, 1, 1, v193);
          v213 = 0uLL;
          v214 = 0;
          v215 = 0xB000000000000000;
          v216 = 0u;
          v217 = 0u;
          sub_1CEFCCBDC(v188, v242, &unk_1EC4BE330, &unk_1CF9FF010);
          v157 = v192;
          sub_1CF28CB50(v127, &v224, &v218, v126, 1, &v213, v192);
          v158 = v127;
          v159 = v184;
          v160 = v126;
          v161 = v208;
          sub_1CEFCCC44(v160, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v212[2] = v220;
          v212[3] = v221;
          v212[4] = v222;
          v212[5] = v223;
          v212[0] = v218;
          v212[1] = v219;
          sub_1CEFCCC44(v212, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v163 = *(v206 + 8);
          v163(v158, v161);
          if ((*(v156 + 48))(v157, 1, v193) == 1)
          {
            sub_1CEFCCC44(v157, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v209(0);

            v164 = v208;
          }

          else
          {
            v165 = v157;
            v166 = v185;
            sub_1CEFE4C60(v165, v185, type metadata accessor for VFSItem);
            v167 = swift_allocBox();
            sub_1CEFD90AC(v166, v168, type metadata accessor for VFSItem);
            v169 = v167 | 0x6000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
            v170 = swift_allocError();
            v172 = v171;
            sub_1CF1B8150();
            v173 = swift_allocError();
            *v174 = v169;
            v159 = v184;
            *&v241[7] = v229;
            *&v241[23] = v230;
            *&v241[39] = v231;
            *&v241[55] = v232;
            *&v241[71] = v233;
            *&v241[87] = v234;
            *&v242[0] = v201;
            BYTE8(v242[0]) = v202;
            *(&v242[2] + 9) = *&v241[32];
            *(&v242[1] + 9) = *&v241[16];
            *(v242 + 9) = *v241;
            *(&v242[6] + 1) = *(&v234 + 1);
            *(&v242[5] + 9) = *&v241[80];
            *(&v242[4] + 9) = *&v241[64];
            *(&v242[3] + 9) = *&v241[48];
            v243 = v173;
            sub_1CF2A8DE0(v242);
            *v172 = v242[0];
            v175 = v242[1];
            v176 = v242[2];
            v177 = v242[4];
            *(v172 + 48) = v242[3];
            *(v172 + 64) = v177;
            *(v172 + 16) = v175;
            *(v172 + 32) = v176;
            v178 = v242[5];
            v179 = v242[6];
            v180 = v243;
            *(v172 + 128) = v244;
            *(v172 + 96) = v179;
            *(v172 + 112) = v180;
            *(v172 + 80) = v178;
            swift_willThrow();
            sub_1CEFCCBDC(v188, &v211, &unk_1EC4BE330, &unk_1CF9FF010);
            sub_1CEFE5888(v166, type metadata accessor for VFSItem);
            v181 = v207;
            v164 = v208;
            v154 = v209;
            v162 = v170;
            v154(v170);

            v163 = *(v206 + 8);
          }

          v163(v198, v164);
          sub_1CEFE5888(v125, type metadata accessor for VFSItem);
          v163(v204, v164);
          v69 = v159;
          goto LABEL_17;
        }

        v129 = v114;
        v130 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
        if (v115[23])
        {
          v131 = sub_1CF9E6888();
          [v130 setPurposeIdentifier_];
        }

        swift_beginAccess();
        v132 = v130;
        sub_1CF6E96F4(v241, v132);
        swift_endAccess();

        v133 = fpfs_current_log();
        sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
        v134 = sub_1CF9E6D28();
        v124, v135, v136, v137, v138, v139, v140, v141;
        v142 = v115[26];
        v143 = swift_allocObject();
        *(v143 + 16) = v133;
        *(v143 + 24) = v115;
        *(v143 + 32) = v132;
        *(v143 + 40) = 0;
        *(v143 + 48) = -1;
        v144 = v187;
        *(v143 + 56) = sub_1CF2B0494;
        *(v143 + 64) = v144;
        *&v242[2] = sub_1CF2B04DC;
        *(&v242[2] + 1) = v143;
        *&v242[0] = MEMORY[0x1E69E9820];
        *(&v242[0] + 1) = 1107296256;
        *&v242[1] = sub_1CF00A468;
        *(&v242[1] + 1) = &block_descriptor_450;
        v145 = _Block_copy(v242);

        v146 = v132;
        v147 = v142;
        v148 = v133;

        [v146 coordinateAccessWithIntents:v134 queue:v147 byAccessor:v145];
        _Block_release(v145);

        v149 = *(v206 + 8);
        v150 = v208;
        v149(v198, v208);
        sub_1CEFE5888(v189, type metadata accessor for VFSItem);
        v149(v204, v150);
        goto LABEL_16;
      }

      __break(1u);
LABEL_24:
      MEMORY[0x1EEE9AC00](v50);
      *(&v182 - 2) = v47;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v182 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_25:
    MEMORY[0x1EEE9AC00](v51);
    *(&v182 - 2) = v47;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v182 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
  v237 = v253;
  v238 = v254;
  v239 = v255;
  v240 = v256;
  v235 = v251;
  v236 = v252;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v58 = swift_allocError();
  v60 = v59;
  sub_1CF1B8150();
  v61 = swift_allocError();
  *v62 = 0xB000000000000008;
  *&v241[7] = v235;
  *&v241[23] = v236;
  *&v241[39] = v237;
  *&v241[55] = v238;
  *&v241[71] = v239;
  *&v241[87] = v240;
  *&v242[0] = v201;
  BYTE8(v242[0]) = v202;
  *(&v242[2] + 9) = *&v241[32];
  *(&v242[1] + 9) = *&v241[16];
  *(v242 + 9) = *v241;
  *(&v242[6] + 1) = *(&v240 + 1);
  *(&v242[5] + 9) = *&v241[80];
  *(&v242[4] + 9) = *&v241[64];
  *(&v242[3] + 9) = *&v241[48];
  v243 = v61;
  sub_1CF2A8DE0(v242);
  *v60 = v242[0];
  v63 = v242[1];
  v64 = v242[2];
  v65 = v242[4];
  *(v60 + 48) = v242[3];
  *(v60 + 64) = v65;
  *(v60 + 16) = v63;
  *(v60 + 32) = v64;
  v66 = v242[5];
  v67 = v242[6];
  v68 = v243;
  *(v60 + 128) = v244;
  *(v60 + 96) = v67;
  *(v60 + 112) = v68;
  *(v60 + 80) = v66;
  sub_1CEFCCBDC(v188, &v229, &unk_1EC4BE330, &unk_1CF9FF010);
  v209(v58);

  v69 = v54;
LABEL_17:
  sub_1CEFE5888(v69, type metadata accessor for VFSItem);
}

void sub_1CF292CCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6, void *a7, uint64_t a8, unsigned __int8 a9, __int128 *a10, void (*a11)(void *), uint64_t a12)
{
  v66 = a4;
  v67 = a8;
  v65 = a7;
  v69 = a6;
  v70 = a3;
  v68 = a5;
  v71 = a12;
  v72 = a11;
  v13 = a10[3];
  v103 = a10[2];
  v104 = v13;
  v14 = a10[5];
  v105 = a10[4];
  v106 = v14;
  v15 = a10[1];
  v101 = *a10;
  v102 = v15;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v56 - v29;
  if (a2)
  {
    swift_willThrow();
    v33 = a2;
    v34 = a2;
  }

  else
  {
    v58 = v31;
    v59 = v25;
    v62 = v28;
    v63 = v19;
    v60 = v17;
    v61 = v16;
    v57 = v30;
    v35 = v67;
    v64 = 0;
    v98 = 0;
    v99 = v66;
    v100 = v68;
    sub_1CF278908(&v99, v69, &v98, 0, &v56 - v29);
    sub_1CEFE5888(v32, type metadata accessor for VFSItem);
    v36 = [v65 URL];
    v37 = v63;
    sub_1CF9E59D8();

    v90 = v35;
    LODWORD(v69) = a9;
    v91 = a9;
    v94 = v103;
    v95 = v104;
    v96 = v105;
    v97 = v106;
    v92 = v101;
    v93 = v102;
    v86 = v103;
    v87 = v104;
    v88 = v105;
    v89 = v106;
    v84 = v101;
    v85 = v102;
    v38 = v58;
    (*(v58 + 56))(v22, 1, 1, v62);
    v79 = 0uLL;
    v80 = 0;
    v81 = 0xB000000000000000;
    v82 = 0u;
    v83 = 0u;
    sub_1CEFCCBDC(a10, v75, &unk_1EC4BE330, &unk_1CF9FF010);
    v39 = v59;
    sub_1CF28CB50(v37, &v90, &v84, v22, 1, &v79, v59);
    sub_1CEFCCC44(v22, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v78[2] = v86;
    v78[3] = v87;
    v78[4] = v88;
    v78[5] = v89;
    v78[0] = v84;
    v78[1] = v85;
    sub_1CEFCCC44(v78, &unk_1EC4BECD0, &unk_1CF9FEF80);
    (*(v60 + 8))(v63, v61);
    if ((*(v38 + 48))(v39, 1, v62) == 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v72(0);
      return;
    }

    v40 = v57;
    sub_1CEFE4C60(v39, v57, type metadata accessor for VFSItem);
    v41 = swift_allocBox();
    sub_1CEFD90AC(v40, v42, type metadata accessor for VFSItem);
    v43 = v41 | 0x6000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v33 = swift_allocError();
    v45 = v44;
    sub_1CF1B8150();
    v46 = swift_allocError();
    *v47 = v43;
    *&v74[7] = v92;
    *&v74[23] = v93;
    *&v74[39] = v94;
    *&v74[55] = v95;
    *&v74[71] = v96;
    *&v74[87] = v97;
    *&v75[0] = v35;
    BYTE8(v75[0]) = v69;
    *(&v75[2] + 9) = *&v74[32];
    *(&v75[1] + 9) = *&v74[16];
    *(v75 + 9) = *v74;
    *(&v75[6] + 1) = *(&v97 + 1);
    v76 = v46;
    *(&v75[5] + 9) = *&v74[80];
    *(&v75[4] + 9) = *&v74[64];
    *(&v75[3] + 9) = *&v74[48];
    sub_1CF2A8DE0(v75);
    *v45 = v75[0];
    v48 = v75[1];
    v49 = v75[2];
    v50 = v75[4];
    *(v45 + 48) = v75[3];
    *(v45 + 64) = v50;
    *(v45 + 16) = v48;
    *(v45 + 32) = v49;
    v51 = v75[5];
    v52 = v75[6];
    v53 = v76;
    *(v45 + 128) = v77;
    *(v45 + 96) = v52;
    *(v45 + 112) = v53;
    *(v45 + 80) = v51;
    swift_willThrow();
    sub_1CEFCCBDC(a10, &v73, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFE5888(v40, type metadata accessor for VFSItem);
    v34 = v64;
  }

  v54 = v34;
  v55 = v33;
  v72(v33);
}

uint64_t sub_1CF293374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6388();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45 - v10;
  v11 = sub_1CF9E6498();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v45 - v14;
  v15 = sub_1CF9E63D8();
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E73D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = swift_allocObject();
  v50 = v24;
  *(v26 + 16) = v24;
  v49 = v25;
  *(v26 + 24) = v25;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;
  v45 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v55 = v3;
  v27 = *(v3 + 216);
  v63 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v29 = v46;
  sub_1CF9E77B8();
  v30 = v47;
  v31 = sub_1CF9E73E8();

  (*(v21 + 8))(v23, v20);
  v32 = v48;
  qos_class_self();
  sub_1CF9E63B8();
  v33 = *(v30 + 48);
  if (v33(v32, 1, v29) == 1)
  {
    (*(v30 + 104))(v51, *MEMORY[0x1E69E7FA0], v29);
    if (v33(v32, 1, v29) != 1)
    {
      sub_1CEFCCC44(v32, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v30 + 32))(v51, v32, v29);
  }

  ObjectType = swift_getObjectType();
  v35 = v52;
  sub_1CF9E6428();
  v36 = swift_allocObject();
  v37 = v50;
  *(v36 + 16) = v55;
  *(v36 + 24) = v37;
  *(v36 + 32) = v49;
  *(v36 + 40) = 0u;
  *(v36 + 56) = 0u;
  *(v36 + 72) = 0u;
  *(v36 + 88) = 0u;
  *(v36 + 104) = 0u;
  *(v36 + 120) = 0u;
  *(v36 + 136) = 0u;
  *(v36 + 152) = v31;
  *(v36 + 160) = sub_1CF2B0424;
  *(v36 + 168) = v26;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v35, sub_1CF2B9F4C, v36, ObjectType);

  (*(v53 + 8))(v35, v54);
  v38 = v56;
  sub_1CF9E6478();
  v39 = v59;
  sub_1CEFD5B64(v59);
  v40 = v60;
  sub_1CEFD5BD8(v60);
  MEMORY[0x1D3869770](v38, v39, v40, ObjectType);
  v41 = *(v61 + 8);
  v42 = v40;
  v43 = v62;
  v41(v42, v62);
  v41(v39, v43);
  (*(v57 + 8))(v38, v58);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF293A1C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void *), uint64_t a5)
{
  v74 = a5;
  v75 = a4;
  v73 = a3;
  v72 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v71 = sub_1CF9E5A58();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v69 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - v14;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v12, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v12;
    *v76 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  sub_1CEFE55D0(v12, v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v21 = swift_allocObject();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v21 + 16) = v22;
    v23 = v21 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v20 = swift_allocError();
    v25 = v24;
    sub_1CF1B8150();
    v26 = swift_allocError();
    *v27 = v23;
    *v76 = v72;
    v76[8] = v73;
    memset(&v76[16], 0, 32);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = v26;
    sub_1CF2A8DE0(v76);
    *v25 = *v76;
    v28 = *&v76[16];
    v29 = *&v76[32];
    v30 = v78;
    *(v25 + 48) = v77;
    *(v25 + 64) = v30;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    v31 = v79;
    v32 = v80;
    v33 = v81;
    *(v25 + 128) = v82;
    *(v25 + 96) = v32;
    *(v25 + 112) = v33;
    *(v25 + 80) = v31;
    swift_willThrow();
    goto LABEL_12;
  }

  v34 = v19;
  sub_1CEFE4C60(v15, v19, type metadata accessor for VFSItem);
  sub_1CF25116C(v8);
  v35 = v70;
  v36 = v71;
  if ((*(v70 + 48))(v8, 1, v71) == 1)
  {
    sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v20 = swift_allocError();
    v38 = v37;
    sub_1CF1B8150();
    v39 = swift_allocError();
    *v40 = 0xB000000000000008;
    *v76 = v72;
    v76[8] = v73;
    memset(&v76[16], 0, 32);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = v39;
    sub_1CF2A8DE0(v76);
    *v38 = *v76;
    v41 = *&v76[16];
    v42 = *&v76[32];
    v43 = v78;
    *(v38 + 48) = v77;
    *(v38 + 64) = v43;
    *(v38 + 16) = v41;
    *(v38 + 32) = v42;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    *(v38 + 128) = v82;
    *(v38 + 96) = v45;
    *(v38 + 112) = v46;
    *(v38 + 80) = v44;
    swift_willThrow();
LABEL_11:
    sub_1CEFE5888(v34, type metadata accessor for VFSItem);
    goto LABEL_12;
  }

  v47 = v69;
  (*(v35 + 32))(v69, v8, v36);
  sub_1CF9E5A18();
  v49 = v48;
  fpfs_openflags(0x200000u);
  sub_1CF9E6978();
  v50 = openat_s();

  if (v50 < 0)
  {
    v59 = MEMORY[0x1D38683F0](v51);
    memset(v76, 0, 40);
    v76[40] = 19;
    v20 = sub_1CF19BBE4(v59, v76);
    sub_1CF1969CC(v76);
    swift_willThrow();
    v49, v60, v61, v62, v63, v64, v65, v66;
    (*(v35 + 8))(v47, v36);
    goto LABEL_11;
  }

  v49, v52, v53, v54, v55, v56, v57, v58;
  if ((fpfs_remove_resurrected() & 0x80000000) == 0)
  {
    close(v50);
    v75(0);
    (*(v35 + 8))(v47, v36);
    sub_1CEFE5888(v34, type metadata accessor for VFSItem);
    return;
  }

  v68 = MEMORY[0x1D38683F0]();
  *v76 = 17;
  memset(&v76[8], 0, 32);
  v76[40] = 19;
  v20 = sub_1CF19BBE4(v68, v76);
  sub_1CF1969CC(v76);
  swift_willThrow();
  (*(v35 + 8))(v47, v36);
  sub_1CEFE5888(v34, type metadata accessor for VFSItem);
  close(v50);
LABEL_12:
  v67 = v20;
  v75(v20);
}

uint64_t sub_1CF2941EC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v199 = a6;
  v202 = a5;
  v201 = a4;
  v203 = a3;
  v204 = a2;
  v205 = a1;
  v245 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E6118();
  v196 = *(v6 - 8);
  v197 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v198 = v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v194);
  v191 = (v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v186 = (v171 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v193 = (v171 - v12);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v188);
  v189 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = (v171 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v190 = v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v192 = v171 - v19;
  v20 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v20);
  v195 = v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VFSItem(0);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v185 = v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v200 = v171 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v171 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v171 - v31);
  sub_1CEFCCBDC(v205, v171 - v31, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    *v29 = *v32;
    swift_storeEnumTagMultiPayload();
    v34 = v33;
    v204(v29);

    return sub_1CEFCCC44(v29, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v184 = v29;
  v205 = v27;
  v36 = *(v23 + 48);
  if (v36(v32, 1, v22) == 1)
  {
    v37 = swift_allocObject();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v37 + 16) = v38;
    v39 = v37 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v40 = swift_allocError();
    v42 = v41;
    sub_1CF1B8150();
    v43 = swift_allocError();
    *v44 = v39;
    *&v229 = v201;
    BYTE8(v229) = v202;
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = v43;
    sub_1CF2A8DE0(&v229);
    *v42 = v229;
    v45 = v230;
    v46 = v231;
    v47 = v233;
    *(v42 + 48) = v232;
    *(v42 + 64) = v47;
    *(v42 + 16) = v45;
    *(v42 + 32) = v46;
    v48 = v234;
    v49 = v235;
    v50 = v236;
    *(v42 + 128) = v237;
    *(v42 + 96) = v49;
    *(v42 + 112) = v50;
    *(v42 + 80) = v48;
    v51 = v184;
    *v184 = v40;
    swift_storeEnumTagMultiPayload();
    v204(v51);
    return sub_1CEFCCC44(v51, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v52 = v200;
  sub_1CEFE4C60(v32, v200, type metadata accessor for VFSItem);
  v60 = (v52 + v22[7]);
  if ((v60[*(v20 + 80)] & 1) == 0 && *v60 == 1 && v60[*(v20 + 64)] != 1)
  {
    v182 = v36;
    v183 = v23;
    v64 = v52 + v22[9];
    v65 = *v64;
    v66 = v52 + v22[14];
    if (*(v66 + 4))
    {
      v67 = 0;
    }

    else
    {
      v67 = *v66;
    }

    v68 = *(v64 + 8);
    0, v53, v54, v55, v56, v57, v58, v59;
    v224[0] = v65;
    v224[1] = 0;
    v225 = v67;
    v226 = v68;
    v228 = 0;
    v227 = 0;
    v69 = v199;
    v70 = objc_sync_enter(v199);
    if (v70)
    {
      MEMORY[0x1EEE9AC00](v70);
      v169 = &v171[-4];
      v171[-2] = v69;
    }

    else
    {
      v71 = v69[20];

      v72 = objc_sync_exit(v69);
      if (v72)
      {
        MEMORY[0x1EEE9AC00](v72);
        v170 = &v171[-4];
        v171[-2] = v199;
        goto LABEL_44;
      }

      v73 = *(v71 + 16);

      LODWORD(v73) = sub_1CEFDADE0(v224, v73, 0x200000);
      v180 = v22;
      v228, v98, v99, v100, v101, v102, v103, v104;
      v105 = v195;
      sub_1CEFD90AC(v60, v195, type metadata accessor for ItemMetadata);
      *(v105 + *(v20 + 80)) = 1;
      sub_1CEFE528C(v222);
      v244 = v223;
      v241 = v222[12];
      v242 = v222[13];
      v243 = v222[14];
      v237 = v222[8];
      v238 = v222[9];
      v239 = v222[10];
      v240 = v222[11];
      v233 = v222[4];
      v234 = v222[5];
      v235 = v222[6];
      v236 = v222[7];
      v229 = v222[0];
      v230 = v222[1];
      v231 = v222[2];
      v232 = v222[3];
      MEMORY[0x1EEE9AC00](v106);
      LODWORD(v171[-2]) = v73;
      sub_1CF9B9578(&v229, sub_1CF2B0408, &v171[-4], v171);
      v181 = v73;
      v107 = v199;
      v108 = objc_sync_enter(v199);
      if (!v108)
      {
        v109 = v107[20];

        v110 = objc_sync_exit(v107);
        if (!v110)
        {
          v111 = type metadata accessor for VFSFileTree(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          v113 = v107[36];
          v199 = *(v109 + 24);
          os_unfair_lock_lock((v109 + 56));
          v115 = *(v109 + 64);
          v114 = *(v109 + 72);
          v116 = *(v109 + 88);
          v177 = *(v109 + 89);
          v178 = v116;
          v176 = *(v109 + 90);

          v117 = *(v109 + 80);
          os_unfair_lock_unlock((v109 + 56));
          v174 = v171;
          MEMORY[0x1EEE9AC00](v118);
          v179 = &v171[-12];
          v171[-10] = v111;
          LODWORD(v171[-9]) = v181;
          v175 = v109;
          v171[-8] = v109;
          v171[-7] = Strong;
          v173 = Strong;
          v171[-6] = v113;
          LOBYTE(v171[-5]) = 2;
          v119 = v201;
          v171[-4] = 0;
          v171[-3] = v119;
          LOBYTE(v171[-2]) = v202;
          v171[-1] = 0;
          *&v215 = v115;
          *(&v215 + 1) = v114;
          *&v213 = MEMORY[0x1E69E9820];
          *(&v213 + 1) = 1107296256;
          *&v214 = sub_1CEFDB088;
          *(&v214 + 1) = &block_descriptor_392;
          v120 = _Block_copy(&v213);
          v171[1] = v114;

          v172 = v120;
          v208 = v120;
          v209 = v117;
          v210 = v178;
          v211 = v177;
          v212 = v176;
          sub_1CEFDB034();
          v121 = swift_allocError();
          *v122 = 6;
          *(v122 + 8) = 0u;
          *(v122 + 24) = 0u;
          *(v122 + 40) = 19;
          v123 = v193;
          *v193 = v121;
          swift_storeEnumTagMultiPayload();
          v124 = swift_allocObject();
          v125 = v123;
          *(v124 + 16) = v123;
          *(v124 + 24) = sub_1CF2B9F90;
          *(v124 + 32) = v179;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_1CF1DBD3C;
          *(v126 + 24) = v124;
          v179 = v124;
          *&v215 = sub_1CF1DBD5C;
          *(&v215 + 1) = v126;
          *&v213 = MEMORY[0x1E69E9820];
          *(&v213 + 1) = 1107296256;
          *&v214 = sub_1CEFDB270;
          *(&v214 + 1) = &block_descriptor_403;
          v127 = _Block_copy(&v213);

          v128 = fpfs_fgetfileattrs_detailed();
          _Block_release(v127);
          LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

          if (v124)
          {
            __break(1u);
          }

          if (v128)
          {
            swift_getErrorValue();
            v129 = v207;
            v199 = v206;
            v130 = swift_allocError();
            *v131 = 6;
            *(v131 + 8) = 0u;
            *(v131 + 24) = 0u;
            *(v131 + 40) = 19;
            v132 = v128;
            v133 = sub_1CF199074(v130, v129);

            v134 = v186;
            *v186 = v133;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v134, v125, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          v135 = v191;
          sub_1CEFCCBDC(v125, v191, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *&v213 = *v135;
            v136 = v213;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v125, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v172);

            v137 = v136;
            LODWORD(v213) = sub_1CF9E52A8();
            sub_1CF196978();
            v138 = sub_1CF9E5658();

            swift_unknownObjectRelease();

            v139 = v195;
            v140 = v192;
            v141 = v181;
            if ((v138 & 1) == 0)
            {
              sub_1CEFE5888(v195, type metadata accessor for ItemMetadata);
              if ((v141 & 0x80000000) == 0)
              {
                close(v141);
              }

              v168 = v198;
              v74 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v75 = v136;
              v76 = sub_1CF9E6108();
              v77 = sub_1CF9E72A8();

              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                *&v213 = v80;
                *v78 = 136446466;
                *&v222[0] = v201;
                BYTE8(v222[0]) = v202;
                v81 = VFSItemID.description.getter(v80);
                v83 = v82;
                v84 = sub_1CEFD0DF0(v81, v82, &v213);
                v83, v85, v86, v87, v88, v89, v90, v91;
                *(v78 + 4) = v84;
                *(v78 + 12) = 2112;
                v92 = v136;
                v93 = _swift_stdlib_bridgeErrorToNSError();
                *(v78 + 14) = v93;
                *v79 = v93;
                _os_log_impl(&dword_1CEFC7000, v76, v77, "failed to open directory at %{public}s, error: %@", v78, 0x16u);
                sub_1CEFCCC44(v79, &qword_1EC4BE350, &unk_1CF9FC3B0);
                MEMORY[0x1D386CDC0](v79, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x1D386CDC0](v80, -1, -1);
                v94 = v78;
                v52 = v200;
                MEMORY[0x1D386CDC0](v94, -1, -1);
              }

              (*(v196 + 8))(v168, v197);
              v95 = v204;
              v96 = v184;
              *v184 = v136;
              swift_storeEnumTagMultiPayload();
              v97 = v136;
              v95(v96);

              v62 = v96;
              goto LABEL_9;
            }

            v142 = v187;
            *v187 = xmmword_1CF9FD940;
            *(v142 + 16) = 2;
            swift_storeEnumTagMultiPayload();
          }

          else
          {

            v142 = v187;
            sub_1CEFE55D0(v135, v187, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v125, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v172);

            swift_unknownObjectRelease();
            v139 = v195;
            v140 = v192;
            v141 = v181;
          }

          v143 = v142;
          v144 = v189;
          sub_1CEFE55D0(v143, v189, &unk_1EC4BE2F0, qword_1CFA04220);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v146 = (v183 + 56);
          if (EnumCaseMultiPayload == 1)
          {
            sub_1CEFCCC44(v144, &unk_1EC4BE2F0, qword_1CFA04220);
            v147 = 1;
          }

          else
          {
            sub_1CEFE4C60(v144, v140, type metadata accessor for VFSItem);
            v147 = 0;
          }

          v148 = v180;
          (*v146)(v140, v147, 1, v180);
          if ((v141 & 0x80000000) == 0)
          {
            close(v141);
          }

          v149 = v190;
          sub_1CEFCCBDC(v140, v190, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if (v182(v149, 1, v148) == 1)
          {
            sub_1CEFCCC44(v149, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v150 = swift_allocObject();
            v151 = swift_allocObject();
            *(v151 + 16) = 0;
            *(v150 + 16) = v151;
            v152 = v150 | 0xA000000000000000;
            v153 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
            v154 = swift_allocError();
            v156 = v155;
            sub_1CF1B8150();
            v157 = swift_allocError();
            *v158 = v152;
            *&v213 = v201;
            BYTE8(v213) = v202;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = v157;
            sub_1CF2A8DE0(&v213);
            *v156 = v213;
            v159 = v214;
            v160 = v215;
            v161 = v217;
            *(v156 + 48) = v216;
            *(v156 + 64) = v161;
            *(v156 + 16) = v159;
            *(v156 + 32) = v160;
            v162 = v218;
            v163 = v219;
            v164 = v220;
            *(v156 + 128) = v221;
            *(v156 + 96) = v163;
            *(v156 + 112) = v164;
            *(v156 + 80) = v162;
            v165 = v184;
            *v184 = v154;
            swift_storeEnumTagMultiPayload();
            v204(v165);
            sub_1CEFCCC44(v165, &unk_1EC4BF300, &unk_1CFA006B0);
            sub_1CEFCCC44(v140, &unk_1EC4BEC00, &unk_1CF9FCB60);
            sub_1CEFE5888(v139, type metadata accessor for ItemMetadata);
            v63 = v153;
          }

          else
          {
            v166 = v185;
            sub_1CEFE4C60(v149, v185, type metadata accessor for VFSItem);
            v167 = v184;
            sub_1CEFD90AC(v166, v184, type metadata accessor for VFSItem);
            swift_storeEnumTagMultiPayload();
            v204(v167);
            sub_1CEFCCC44(v167, &unk_1EC4BF300, &unk_1CFA006B0);
            sub_1CEFE5888(v166, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v140, &unk_1EC4BEC00, &unk_1CF9FCB60);
            sub_1CEFE5888(v139, type metadata accessor for ItemMetadata);
            v63 = v52;
          }

          return sub_1CEFE5888(v63, type metadata accessor for VFSItem);
        }

        MEMORY[0x1EEE9AC00](v110);
        v170 = &v171[-4];
        v171[-2] = v107;
LABEL_44:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v170, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v108);
      v169 = &v171[-4];
      v171[-2] = v107;
    }

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v169, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v61 = v184;
  sub_1CEFD90AC(v52, v184, type metadata accessor for VFSItem);
  swift_storeEnumTagMultiPayload();
  v204(v61);
  v62 = v61;
LABEL_9:
  sub_1CEFCCC44(v62, &unk_1EC4BF300, &unk_1CFA006B0);
  v63 = v52;
  return sub_1CEFE5888(v63, type metadata accessor for VFSItem);
}

uint64_t sub_1CF295764(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a7;
  v61 = a5;
  v62 = a6;
  v8 = v7;
  v12 = sub_1CF9E6388();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = (v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v68 = v51 - v15;
  v16 = sub_1CF9E6498();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v64 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v54 = v51 - v19;
  v20 = sub_1CF9E63D8();
  v52 = *(v20 - 8);
  v53 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v57 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6448();
  v59 = *(v22 - 8);
  v60 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v58 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E73D8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v29 = *(a1 + 8);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  v56 = v28;
  *(v30 + 32) = v28;
  v55 = v29;
  *(v30 + 40) = v29;
  *(v30 + 48) = v8;
  v51[1] = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v31 = *(v8 + 216);
  v72 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v63 = v8;

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v33 = v52;
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v34 = v53;
  sub_1CF9E77B8();
  v35 = sub_1CF9E73E8();

  v36 = v27;
  v37 = v54;
  (*(v25 + 8))(v36, v24);
  qos_class_self();
  sub_1CF9E63B8();
  v38 = *(v33 + 48);
  if (v38(v37, 1, v34) == 1)
  {
    (*(v33 + 104))(v57, *MEMORY[0x1E69E7FA0], v34);
    if (v38(v37, 1, v34) != 1)
    {
      sub_1CEFCCC44(v37, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v33 + 32))(v57, v37, v34);
  }

  ObjectType = swift_getObjectType();
  v40 = v58;
  sub_1CF9E6428();
  v41 = swift_allocObject();
  v42 = v56;
  *(v41 + 16) = v63;
  *(v41 + 24) = v42;
  *(v41 + 32) = v55;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  *(v41 + 88) = 0u;
  *(v41 + 104) = 0u;
  *(v41 + 120) = 0u;
  *(v41 + 136) = 0u;
  v43 = v62;
  *(v41 + 152) = v35;
  *(v41 + 160) = v43;
  *(v41 + 168) = v30;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v40, v65, v41, ObjectType);

  (*(v59 + 8))(v40, v60);
  v44 = v64;
  sub_1CF9E6478();
  v45 = v68;
  sub_1CEFD5B64(v68);
  v46 = v69;
  sub_1CEFD5BD8(v69);
  MEMORY[0x1D3869770](v44, v45, v46, ObjectType);
  v47 = *(v70 + 8);
  v48 = v46;
  v49 = v71;
  v47(v48, v71);
  v47(v45, v49);
  (*(v66 + 8))(v44, v67);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF295E0C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v168 = a6;
  v169 = a4;
  v170 = a5;
  v172 = a3;
  v173 = a1;
  v174 = a2;
  v214 = *MEMORY[0x1E69E9840];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v166);
  v163 = (&v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v158 = (&v143 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v165 = (&v143 - v10);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v161 = (&v143 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v159 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v143 - v17;
  v171 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VFSItem(0);
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v143 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v143 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v143 - v29);
  sub_1CEFCCBDC(v173, &v143 - v29, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    *v27 = *v30;
    swift_storeEnumTagMultiPayload();
    v32 = v31;
    v174(v27);

    return sub_1CEFCCC44(v27, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v173 = v25;
  v34 = v27;
  v35 = v174;
  v36 = *(v20 + 48);
  if (v36(v30, 1, v19) == 1)
  {
    v37 = swift_allocObject();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v37 + 16) = v38;
    v39 = v37 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v40 = swift_allocError();
    v42 = v41;
    sub_1CF1B8150();
    v43 = swift_allocError();
    *v44 = v39;
    *&v198 = v169;
    BYTE8(v198) = v170;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = v43;
    sub_1CF2A8DE0(&v198);
    *v42 = v198;
    v45 = v199;
    v46 = v200;
    v47 = v202;
    *(v42 + 48) = v201;
    *(v42 + 64) = v47;
    *(v42 + 16) = v45;
    *(v42 + 32) = v46;
    v48 = v203;
    v49 = v204;
    v50 = v205;
    *(v42 + 128) = v206;
    *(v42 + 96) = v49;
    *(v42 + 112) = v50;
    *(v42 + 80) = v48;
    *v34 = v40;
    swift_storeEnumTagMultiPayload();
    v35(v34);
    return sub_1CEFCCC44(v34, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v156 = v36;
  sub_1CEFE4C60(v30, v24, type metadata accessor for VFSItem);
  v58 = &v24[v19[7]];
  v59 = v34;
  if (v58[*(v171 + 80)] != 1 || *v58 != 1)
  {
    sub_1CEFD90AC(v24, v34, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v35(v34);
LABEL_14:
    sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
    goto LABEL_15;
  }

  v153 = v20 + 48;
  v154 = v20;
  v60 = &v24[v19[9]];
  v61 = *v60;
  v155 = v19;
  v62 = &v24[v19[14]];
  if (v62[4])
  {
    v63 = 0;
  }

  else
  {
    v63 = *v62;
  }

  v64 = *(v60 + 2);
  0, v51, v52, v53, v54, v55, v56, v57;
  v193[0] = v61;
  v193[1] = 0;
  v194 = v63;
  v195 = v64;
  v197 = 0;
  v196 = 0;
  v65 = v168;
  v66 = objc_sync_enter(v168);
  if (v66)
  {
    goto LABEL_38;
  }

  v67 = v65[20];

  v68 = objc_sync_exit(v65);
  if (v68)
  {
    MEMORY[0x1EEE9AC00](v68);
    v142 = &v143 - 4;
    *(&v143 - 2) = v65;
    goto LABEL_40;
  }

  v69 = *(v67 + 16);

  v72 = sub_1CEFDADE0(v193, v69, 0x200000);
  v197, v73, v74, v75, v76, v77, v78, v79;
  v80 = v167;
  sub_1CEFD90AC(v58, v167, type metadata accessor for ItemMetadata);
  *(v80 + *(v171 + 80)) = 0;
  sub_1CEFE528C(v191);
  v171 = &v143;
  v210 = v191[12];
  v211 = v191[13];
  v212 = v191[14];
  v213 = v192;
  v206 = v191[8];
  v207 = v191[9];
  v208 = v191[10];
  v209 = v191[11];
  v202 = v191[4];
  v203 = v191[5];
  v204 = v191[6];
  v205 = v191[7];
  v198 = v191[0];
  v199 = v191[1];
  v200 = v191[2];
  v201 = v191[3];
  v81 = v65;
  v82 = *(v65[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
  v84 = MEMORY[0x1EEE9AC00](v83).n128_u64[0];
  *(&v143 - 12) = v72;
  *(&v143 - 11) = 0;
  *(&v143 - 5) = 0x20000;
  *(&v143 - 4) = v85;
  *(&v143 - 3) = v82;
  *(&v143 - 2) = v84;
  *(&v143 - 8) = v86;
  *(&v143 - 7) = v87;
  *(&v143 - 6) = v88;
  *(&v143 - 5) = 0;

  sub_1CF9B8B08(&v198, sub_1CF2B9EBC, &v143 - 64);

  v66 = objc_sync_enter(v65);
  if (v66)
  {
LABEL_38:
    MEMORY[0x1EEE9AC00](v66);
    *(&v143 - 2) = v65;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v143 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  LODWORD(v171) = v72;
  v89 = v65[20];

  v90 = objc_sync_exit(v81);
  if (v90)
  {
    MEMORY[0x1EEE9AC00](v90);
    v142 = &v143 - 4;
    *(&v143 - 2) = v81;
LABEL_40:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v142, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v148 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v92 = v81[36];
  v168 = *(v89 + 24);
  os_unfair_lock_lock((v89 + 56));
  v93 = *(v89 + 64);
  v94 = *(v89 + 72);
  v95 = *(v89 + 88);
  v150 = *(v89 + 89);
  v151 = v95;
  v149 = *(v89 + 90);

  v96 = *(v89 + 80);
  os_unfair_lock_unlock((v89 + 56));
  v145 = &v143;
  MEMORY[0x1EEE9AC00](v97);
  v152 = &v143 - 12;
  *(&v143 - 10) = v148;
  *(&v143 - 18) = v171;
  v147 = Strong;
  v148 = v89;
  *(&v143 - 8) = v89;
  *(&v143 - 7) = Strong;
  *(&v143 - 6) = v92;
  *(&v143 - 40) = 2;
  v98 = v169;
  *(&v143 - 4) = 0;
  *(&v143 - 3) = v98;
  *(&v143 - 16) = v170;
  *(&v143 - 1) = 0;
  *&v184 = v93;
  *(&v184 + 1) = v94;
  *&v182 = MEMORY[0x1E69E9820];
  *(&v182 + 1) = 1107296256;
  *&v183 = sub_1CEFDB088;
  *(&v183 + 1) = &block_descriptor_360;
  v99 = _Block_copy(&v182);
  v146 = v94;

  v144 = v99;
  v177 = v99;
  v178 = v96;
  v179 = v151;
  v180 = v150;
  v181 = v149;
  sub_1CEFDB034();
  v100 = swift_allocError();
  *v101 = 6;
  *(v101 + 8) = 0u;
  *(v101 + 24) = 0u;
  *(v101 + 40) = 19;
  v102 = v165;
  *v165 = v100;
  swift_storeEnumTagMultiPayload();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = sub_1CF2B9F90;
  *(v103 + 32) = v152;
  v104 = swift_allocObject();
  *(v104 + 16) = sub_1CF1DBD3C;
  *(v104 + 24) = v103;
  v152 = v103;
  *&v184 = sub_1CF1DBD5C;
  *(&v184 + 1) = v104;
  *&v182 = MEMORY[0x1E69E9820];
  *(&v182 + 1) = 1107296256;
  *&v183 = sub_1CEFDB270;
  *(&v183 + 1) = &block_descriptor_371;
  v105 = _Block_copy(&v182);

  v106 = fpfs_fgetfileattrs_detailed();
  _Block_release(v105);
  LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

  if (v103)
  {
    __break(1u);
  }

  v107 = v106;
  if (v106)
  {
    swift_getErrorValue();
    v108 = v176;
    v168 = v175;
    v109 = swift_allocError();
    *v110 = 6;
    *(v110 + 8) = 0u;
    *(v110 + 24) = 0u;
    *(v110 + 40) = 19;
    v111 = v107;
    v112 = v107;
    v113 = sub_1CF199074(v109, v108);

    v107 = v111;
    v114 = v158;
    *v158 = v113;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v114, v102, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v115 = v163;
  sub_1CEFCCBDC(v102, v163, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v120 = v161;
    sub_1CEFE55D0(v115, v161, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v102, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v144);

    swift_unknownObjectRelease();
    v119 = v164;
    goto LABEL_26;
  }

  *&v182 = *v115;
  v116 = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v102, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v144);

  v117 = v116;
  LODWORD(v182) = sub_1CF9E52A8();
  sub_1CF196978();
  v118 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  v119 = v164;
  if ((v118 & 1) == 0)
  {
    sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
    if ((v171 & 0x80000000) == 0)
    {
      close(v171);
    }

    *v59 = v116;
    swift_storeEnumTagMultiPayload();
    v70 = v116;
    v35(v59);

    goto LABEL_14;
  }

  v120 = v161;
  *v161 = xmmword_1CF9FD940;
  *(v120 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_26:
  v121 = v171;
  sub_1CEFE55D0(v120, v119, &unk_1EC4BE2F0, qword_1CFA04220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v123 = (v154 + 56);
  v124 = v160;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v119, &unk_1EC4BE2F0, qword_1CFA04220);
    v125 = 1;
  }

  else
  {
    sub_1CEFE4C60(v119, v160, type metadata accessor for VFSItem);
    v125 = 0;
  }

  (*v123)(v124, v125, 1, v155);
  if ((v121 & 0x80000000) == 0)
  {
    close(v121);
  }

  v126 = v159;
  sub_1CEFCCBDC(v124, v159, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v156(v126, 1, v155) != 1)
  {
    v141 = v157;
    sub_1CEFE4C60(v126, v157, type metadata accessor for VFSItem);
    sub_1CEFD90AC(v141, v59, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v35(v59);
    sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v141, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
    v71 = v24;
    return sub_1CEFE5888(v71, type metadata accessor for VFSItem);
  }

  sub_1CEFCCC44(v126, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v127 = swift_allocObject();
  v128 = swift_allocObject();
  *(v128 + 16) = 0;
  *(v127 + 16) = v128;
  v129 = v127 | 0xA000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v130 = swift_allocError();
  v132 = v131;
  sub_1CF1B8150();
  v133 = swift_allocError();
  *v134 = v129;
  *&v182 = v169;
  BYTE8(v182) = v170;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = v133;
  sub_1CF2A8DE0(&v182);
  *v132 = v182;
  v135 = v183;
  v136 = v184;
  v137 = v186;
  *(v132 + 48) = v185;
  *(v132 + 64) = v137;
  *(v132 + 16) = v135;
  *(v132 + 32) = v136;
  v138 = v187;
  v139 = v188;
  v140 = v189;
  *(v132 + 128) = v190;
  *(v132 + 96) = v139;
  *(v132 + 112) = v140;
  *(v132 + 80) = v138;
  *v59 = v130;
  swift_storeEnumTagMultiPayload();
  v35(v59);
  sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
  sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
LABEL_15:
  v71 = v24;
  return sub_1CEFE5888(v71, type metadata accessor for VFSItem);
}

uint64_t sub_1CF297184(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v13;
  v14 = sub_1CF9E6498();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v49 - v17;
  v18 = sub_1CF9E63D8();
  v19 = *(v18 - 8);
  v50 = v18;
  v51 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E73D8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(a1 + 8);
  LOBYTE(a2) = *a2;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v54 = v27;
  *(v29 + 32) = v27;
  v53 = v28;
  *(v29 + 40) = v28;
  *(v29 + 41) = a2;
  *(v29 + 48) = v5;
  v49 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v30 = *(v5 + 216);
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v59 = v5;

  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v32 = v50;
  sub_1CF9E77B8();
  v33 = sub_1CF9E73E8();

  v34 = v26;
  v35 = v52;
  (*(v24 + 8))(v34, v23);
  v36 = v51;
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v36 + 48);
  if (v37(v35, 1, v32) == 1)
  {
    (*(v36 + 104))(v55, *MEMORY[0x1E69E7FA0], v32);
    if (v37(v35, 1, v32) != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v55, v35, v32);
  }

  ObjectType = swift_getObjectType();
  v39 = v56;
  sub_1CF9E6428();
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = v59;
  *(v40 + 24) = v41;
  *(v40 + 32) = v53;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0;
  *(v40 + 144) = 2048;
  *(v40 + 152) = v33;
  *(v40 + 160) = sub_1CF2B02C8;
  *(v40 + 168) = v29;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v39, sub_1CF2B9F4C, v40, ObjectType);

  (*(v57 + 8))(v39, v58);
  v42 = v60;
  sub_1CF9E6478();
  v43 = v63;
  sub_1CEFD5B64(v63);
  v44 = v64;
  sub_1CEFD5BD8(v64);
  MEMORY[0x1D3869770](v42, v43, v44, ObjectType);
  v45 = *(v65 + 8);
  v46 = v44;
  v47 = v66;
  v45(v46, v66);
  v45(v43, v47);
  (*(v61 + 8))(v42, v62);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF29784C(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, int a5, int a6, void *a7)
{
  v69 = a7;
  v70 = a4;
  v73 = a6;
  v71 = a5;
  v72 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v68 - v14);
  sub_1CEFCCBDC(a1, &v68 - v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = *v15;
    a2(v16);
  }

  else if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = 2048;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v19 = swift_allocError();
    v21 = v20;
    sub_1CF1B8150();
    v22 = swift_allocError();
    *v23 = v18;
    *&v82 = v70;
    BYTE8(v82) = v71;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = v22;
    sub_1CF2A8DE0(&v82);
    *v21 = v82;
    v24 = v83;
    v25 = v84;
    v26 = v86;
    *(v21 + 48) = v85;
    *(v21 + 64) = v26;
    *(v21 + 16) = v24;
    *(v21 + 32) = v25;
    v27 = v87;
    v28 = v88;
    v29 = v89;
    *(v21 + 128) = v90;
    *(v21 + 96) = v28;
    *(v21 + 112) = v29;
    *(v21 + 80) = v27;
    a2(v19);
  }

  else
  {
    v30 = v74;
    sub_1CEFE4C60(v15, v74, type metadata accessor for VFSItem);
    v38 = v30 + v10[7];
    if (*(v38 + *(v72 + 88)) == v73)
    {
      a2(0);
      v49 = v30;
    }

    else
    {
      v39 = v30 + v10[9];
      v40 = *v39;
      v41 = v30 + v10[14];
      if (*(v41 + 4))
      {
        v42 = 0;
      }

      else
      {
        v42 = *v41;
      }

      v43 = *(v39 + 8);
      0, v31, v32, v33, v34, v35, v36, v37;
      v77[0] = v40;
      v77[1] = 0;
      v78 = v42;
      v79 = v43;
      v80 = 0;
      v81 = 0;
      v44 = v69;
      v45 = objc_sync_enter(v69);
      if (v45)
      {
        MEMORY[0x1EEE9AC00](v45);
        *(&v68 - 2) = v44;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v68 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v46 = v44[20];

      v47 = objc_sync_exit(v44);
      if (v47)
      {
        MEMORY[0x1EEE9AC00](v47);
        *(&v68 - 2) = v44;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v68 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v48 = *(v46 + 16);

      v50 = sub_1CEFDADE0(v77, v48, 2129920);
      v81, v51, v52, v53, v54, v55, v56, v57;
      v58 = v38;
      v59 = v68;
      sub_1CEFD90AC(v58, v68, type metadata accessor for ItemMetadata);
      *(v59 + *(v72 + 88)) = v73;
      sub_1CEFE528C(v75);
      v94 = v75[12];
      v95 = v75[13];
      v96 = v75[14];
      v97 = v76;
      v90 = v75[8];
      v91 = v75[9];
      v92 = v75[10];
      v93 = v75[11];
      v86 = v75[4];
      v87 = v75[5];
      v88 = v75[6];
      v89 = v75[7];
      v82 = v75[0];
      v83 = v75[1];
      v84 = v75[2];
      v85 = v75[3];
      v60 = *(v44[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
      v62 = MEMORY[0x1EEE9AC00](v61).n128_u64[0];
      *(&v68 - 12) = v50;
      *(&v68 - 11) = 0;
      *(&v68 - 5) = 0x20000;
      *(&v68 - 4) = v63;
      *(&v68 - 3) = v60;
      *(&v68 - 2) = v62;
      *(&v68 - 8) = v64;
      *(&v68 - 7) = v65;
      *(&v68 - 6) = v66;
      *(&v68 - 5) = 0;

      sub_1CF9B8B08(&v82, sub_1CF2B02E0, &v68 - 64);

      v67 = v74;
      if ((v50 & 0x80000000) == 0)
      {
        close(v50);
      }

      a2(0);
      sub_1CEFE5888(v59, type metadata accessor for ItemMetadata);
      v49 = v67;
    }

    sub_1CEFE5888(v49, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF297F3C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v13;
  v14 = sub_1CF9E6498();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v49 - v17;
  v18 = sub_1CF9E63D8();
  v19 = *(v18 - 8);
  v50 = v18;
  v51 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E73D8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v54 = v27;
  *(v29 + 32) = v27;
  v53 = v28;
  *(v29 + 40) = v28;
  *(v29 + 41) = a2;
  *(v29 + 48) = v5;
  v49 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v30 = *(v5 + 216);
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v59 = v5;

  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v32 = v50;
  sub_1CF9E77B8();
  v33 = sub_1CF9E73E8();

  v34 = v26;
  v35 = v52;
  (*(v24 + 8))(v34, v23);
  v36 = v51;
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v36 + 48);
  if (v37(v35, 1, v32) == 1)
  {
    (*(v36 + 104))(v55, *MEMORY[0x1E69E7FA0], v32);
    if (v37(v35, 1, v32) != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v55, v35, v32);
  }

  ObjectType = swift_getObjectType();
  v39 = v56;
  sub_1CF9E6428();
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = v59;
  *(v40 + 24) = v41;
  *(v40 + 32) = v53;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0;
  *(v40 + 144) = 2048;
  *(v40 + 152) = v33;
  *(v40 + 160) = sub_1CF2B02B0;
  *(v40 + 168) = v29;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v39, sub_1CF2B9F4C, v40, ObjectType);

  (*(v57 + 8))(v39, v58);
  v42 = v60;
  sub_1CF9E6478();
  v43 = v63;
  sub_1CEFD5B64(v63);
  v44 = v64;
  sub_1CEFD5BD8(v64);
  MEMORY[0x1D3869770](v42, v43, v44, ObjectType);
  v45 = *(v65 + 8);
  v46 = v44;
  v47 = v66;
  v45(v46, v66);
  v45(v43, v47);
  (*(v61 + 8))(v42, v62);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF298600(uint64_t a1, void (*a2)(uint64_t *), void *a3, uint64_t a4, int a5, int a6, void *a7)
{
  v78 = a7;
  v79 = a6;
  v81 = a5;
  v80 = a4;
  v83 = a2;
  v84 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v77 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v77 - v18);
  sub_1CEFCCBDC(a1, v77 - v18, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    *v16 = *v19;
    swift_storeEnumTagMultiPayload();
    v21 = v20;
    v83(v16);

    return sub_1CEFCCC44(v16, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v77[1] = v11;
  v22 = v83;
  if ((*(v9 + 48))(v19, 1, v8) == 1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = 2048;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v24 = swift_allocError();
    v26 = v25;
    sub_1CF1B8150();
    v27 = swift_allocError();
    *v28 = v23;
    *&v85 = v80;
    BYTE8(v85) = v81;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = v27;
    sub_1CF2A8DE0(&v85);
    *v26 = v85;
    v29 = v86;
    v30 = v87;
    v31 = v89;
    *(v26 + 48) = v88;
    *(v26 + 64) = v31;
    *(v26 + 16) = v29;
    *(v26 + 32) = v30;
    v32 = v90;
    v33 = v91;
    v34 = v92;
    *(v26 + 128) = v93;
    *(v26 + 96) = v33;
    *(v26 + 112) = v34;
    *(v26 + 80) = v32;
    *v16 = v24;
    swift_storeEnumTagMultiPayload();
    v22(v16);
    return sub_1CEFCCC44(v16, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v36 = v82;
  sub_1CEFE4C60(v19, v82, type metadata accessor for VFSItem);
  v37 = *v36;
  v38 = *(v36 + 16);
  v39 = *(v36 + 24);
  if (*(v36 + 8))
  {
    if (*(v36 + 8) == 1)
    {
      if (v39 != 1 || v37 != v38)
      {
LABEL_12:
        v41 = v36 + v8[7];
        v49 = *(type metadata accessor for ItemMetadata(0) + 44);
        if (*(v41 + v49) == (v79 & 1))
        {
LABEL_44:
          sub_1CEFD90AC(v36, v16, type metadata accessor for VFSItem);
          swift_storeEnumTagMultiPayload();
          v22(v16);
          v69 = v16;
          goto LABEL_45;
        }

        v50 = v36 + v8[9];
        v51 = *v50;
        v52 = v36 + v8[14];
        if (*(v52 + 4))
        {
          v53 = 0;
        }

        else
        {
          v53 = *v52;
        }

        v54 = *(v50 + 8);
        0, v42, v43, v44, v45, v46, v47, v48;
        v85 = v51;
        v86 = __PAIR64__(v54, v53);
        *&v87 = 0;
        v55 = v78;
        v56 = objc_sync_enter(v78);
        if (!v56)
        {
          v57 = v55[20];

          v58 = objc_sync_exit(v55);
          if (v58)
          {
            MEMORY[0x1EEE9AC00](v58);
            v77[-2] = v55;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v77[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          v59 = *(v57 + 16);

          v60 = sub_1CEFDADE0(&v85, v59, 2129920);
          v87, v61, v62, v63, v64, v65, v66, v67;
          v73 = v79 & 1;
          is_pinned = fpfs_set_is_pinned();
          if (is_pinned < 0)
          {
            v75 = MEMORY[0x1D38683F0]();
            LOBYTE(v85) = v73;
            BYTE8(v87) = 8;
            v76 = sub_1CF19BBE4(v75, &v85);
            sub_1CF1969CC(&v85);
            swift_willThrow();
            if ((v60 & 0x80000000) == 0)
            {
              close(v60);
            }

            *v16 = v76;
            swift_storeEnumTagMultiPayload();
            v68 = v76;
            v22(v16);

            v69 = v16;
            goto LABEL_45;
          }

          if ((v60 & 0x80000000) == 0)
          {
            close(v60);
          }

          *(v41 + v49) = v79 & 1;
          goto LABEL_44;
        }

LABEL_50:
        MEMORY[0x1EEE9AC00](v56);
        v77[-2] = v55;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v77[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    else if (v37)
    {
      if (v39 != 2 || v38 != 1)
      {
        goto LABEL_12;
      }
    }

    else if (v39 != 2 || v38 != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v36 + 24))
    {
      v70 = 0;
    }

    else
    {
      v70 = v37 == v38;
    }

    if (!v70)
    {
      goto LABEL_12;
    }
  }

  v56 = FPNotSupportedError();
  v55 = v84;
  if (!v56)
  {
    __break(1u);
    goto LABEL_50;
  }

  *v13 = v56;
  swift_storeEnumTagMultiPayload();
  v22(v13);
  v69 = v13;
LABEL_45:
  sub_1CEFCCC44(v69, &unk_1EC4BF300, &unk_1CFA006B0);
  return sub_1CEFE5888(v36, type metadata accessor for VFSItem);
}

void sub_1CF298D34(unsigned int a1, unsigned __int8 *a2, int a3, uint64_t a4, unsigned __int8 *a5, int a6, uint64_t a7, uint64_t a8)
{
  v155 = a7;
  v149 = a6;
  v151 = a4;
  v152 = a3;
  v158 = a2;
  v154 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E53C8();
  v147 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v133 - v16;
  v159 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v159);
  v150 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v133 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v137 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v133 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v133 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v144 = &v133 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v133 - v30;
  v32 = sub_1CF9E5A58();
  v156 = *(v32 - 8);
  v157 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v138 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v139 = &v133 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v140 = &v133 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v133 - v41;
  v43 = *a5;
  v44 = *(a8 + 208);
  v166[12] = *(a8 + 192);
  v166[13] = v44;
  v166[14] = *(a8 + 224);
  v167 = *(a8 + 240);
  v45 = *(a8 + 144);
  v166[8] = *(a8 + 128);
  v166[9] = v45;
  v46 = *(a8 + 176);
  v166[10] = *(a8 + 160);
  v166[11] = v46;
  v47 = *(a8 + 80);
  v166[4] = *(a8 + 64);
  v166[5] = v47;
  v48 = *(a8 + 112);
  v166[6] = *(a8 + 96);
  v166[7] = v48;
  v49 = *(a8 + 16);
  v166[0] = *a8;
  v166[1] = v49;
  v50 = *(a8 + 48);
  v166[2] = *(a8 + 32);
  v166[3] = v50;
  v51 = objc_sync_enter(v8);
  if (v51)
  {
    goto LABEL_70;
  }

  v148 = v11;
  v52 = v8[20];

  v53 = objc_sync_exit(v8);
  if (v53)
  {
LABEL_71:
    MEMORY[0x1EEE9AC00](v53);
    *(&v133 - 2) = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v133 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v54 = *(v52 + 40);
  v55 = *(v52 + 48);

  if (v55)
  {
    v54 = 0;
  }

  v56 = v159;
  if (v158[v159[18]])
  {
    sub_1CEFCCBDC(v155, v31, &unk_1EC4BE310, qword_1CF9FCBE0);
    v58 = v156;
    v57 = v157;
    if (v156[6](v31, 1, v157) != 1)
    {
      v58[4](v42, v31, v57);
      type metadata accessor for NSFileProviderError(0);
      v161 = -2008;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v108;
      *(inited + 72) = v57;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v58[2](boxed_opaque_existential_0, v42, v57);
      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF2A9448(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      swift_willThrow();
      (v58[1])(v42, v57);
      return;
    }

    sub_1CEFCCC44(v31, &unk_1EC4BE310, qword_1CF9FCBE0);
    type metadata accessor for NSFileProviderError(0);
    v161 = -2008;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    goto LABEL_40;
  }

  sub_1CEFD90AC(v158, v20, type metadata accessor for ItemMetadata);
  v59 = v43 == 6 ? 0 : v43;
  v20[v56[22]] = v59;
  v51 = objc_sync_enter(v8);
  if (v51)
  {
LABEL_70:
    MEMORY[0x1EEE9AC00](v51);
    *(&v133 - 2) = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v133 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v135 = v54;
  v60 = v8[20];

  v53 = objc_sync_exit(v8);
  if (v53)
  {
    goto LABEL_71;
  }

  os_unfair_lock_lock((v60 + 56));
  v61 = *(v60 + 64);
  v62 = *(v60 + 72);
  v134 = *(v60 + 88);
  v63 = *(v60 + 89);
  v64 = *(v60 + 90);

  v65 = v149 & 1;
  v66 = *(v60 + 80);
  os_unfair_lock_unlock((v60 + 56));

  v67 = v150;
  v68 = sub_1CEFD90AC(v20, v150, type metadata accessor for ItemMetadata);
  *(v67 + v159[20]) = 1;
  MEMORY[0x1EEE9AC00](v68);
  *(&v133 - 16) = v154;
  v69 = v151;
  *(&v133 - 7) = v135;
  *(&v133 - 6) = v69;
  *(&v133 - 10) = v152;
  *(&v133 - 36) = v65;
  *(&v133 - 4) = v61;
  *(&v133 - 3) = v62;
  *(&v133 - 2) = v66;
  *(&v133 - 8) = v134;
  *(&v133 - 7) = v63;
  *(&v133 - 6) = v64;
  v70 = v153;
  sub_1CF9B9578(v166, sub_1CF2B1984, &v133 - 80, &v133);
  if (!v70)
  {

    sub_1CEFE5888(v67, type metadata accessor for ItemMetadata);
    sub_1CEFE5888(v20, type metadata accessor for ItemMetadata);
    return;
  }

  sub_1CEFE5888(v67, type metadata accessor for ItemMetadata);
  sub_1CEFE5888(v20, type metadata accessor for ItemMetadata);
  v71 = v70;
  v165.st_dev = sub_1CF9E52F8();
  sub_1CF196978();
  v72 = sub_1CF9E5658();

  if ((v72 & 1) != 0 && *v158 - 1 >= 2)
  {
    v110 = v144;
    sub_1CEFCCBDC(v155, v144, &unk_1EC4BE310, qword_1CF9FCBE0);
    v112 = v156;
    v111 = v157;
    v113 = v156[6](v110, 1, v157);
    v114 = v148;
    if (v113 == 1)
    {

      sub_1CEFCCC44(v110, &unk_1EC4BE310, qword_1CF9FCBE0);
      v165.st_dev = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v115 = v145;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v147 + 8))(v115, v114);
LABEL_40:
      swift_willThrow();
      return;
    }

    v120 = v140;
    v112[4](v140, v110, v111);
    v121 = sub_1CF9E5928();
    v8 = FPMissingAllowsEvictingCapabilitiesError();

    if (v8)
    {

      swift_willThrow();
      (v112[1])(v120, v111);
      return;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_70;
  }

  v73 = v70;
  v165.st_dev = sub_1CF9E5298();
  v74 = sub_1CF9E5658();

  v75 = v148;
  v77 = v156;
  v76 = v157;
  if ((v74 & 1) != 0 && *v158 - 1 >= 2)
  {
    v116 = v143;
    sub_1CEFCCBDC(v155, v143, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v77 + 6))(v116, 1, v76) != 1)
    {
      v75 = v139;
      (*(v77 + 4))(v139, v116, v76);
      v122 = sub_1CF9E5928();
      v123 = FPEvictionOnBusyItemError();

      if (!v123)
      {
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_47;
    }

    sub_1CEFCCC44(v116, &unk_1EC4BE310, qword_1CF9FCBE0);
    v117 = 16;
    goto LABEL_39;
  }

  v78 = v70;
  v165.st_dev = sub_1CF9E5318();
  v79 = sub_1CF9E5658();

  if ((v79 & 1) != 0 && *v158 - 1 >= 2)
  {
    v118 = v141;
    sub_1CEFCCBDC(v155, v141, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v77 + 6))(v118, 1, v76) == 1)
    {

      sub_1CEFCCC44(v118, &unk_1EC4BE310, qword_1CF9FCBE0);
      v117 = 31;
LABEL_39:
      v165.st_dev = v117;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v119 = v145;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v147 + 8))(v119, v75);
      goto LABEL_40;
    }

    v75 = v138;
    (*(v77 + 4))(v138, v118, v76);
    v124 = sub_1CF9E5928();
    v8 = FPEvictionOnItemWithHardlinkError();

    if (v8)
    {
      goto LABEL_47;
    }

    goto LABEL_67;
  }

  v80 = v70;
  v165.st_dev = sub_1CF9E5328();
  v81 = sub_1CF9E5658();

  if ((v81 & 1) != 0 && *v158 - 1 >= 2 && (v158[v159[28]] & 1) == 0)
  {
    memset(&v165, 0, sizeof(v165));
    v125 = fstat(v154, &v165);
    v126 = v147;
    if (v125 < 0)
    {

      v128 = MEMORY[0x1D38683F0]();
      v161 = 3;
      v162 = 0u;
      v163 = 0u;
      v164 = 19;
      v129 = sub_1CF19BBE4(v128, &v161);
      sub_1CF1969CC(&v161);
      swift_willThrow();
      v130 = v129;
    }

    else
    {
      if (v165.st_nlink >= 2u)
      {
        v127 = v137;
        sub_1CEFCCBDC(v155, v137, &unk_1EC4BE310, qword_1CF9FCBE0);
        if ((*(v77 + 6))(v127, 1, v76) == 1)
        {

          sub_1CEFCCC44(v127, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_57:
          v165.st_dev = 2;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v131 = v145;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v126 + 8))(v131, v75);
          goto LABEL_40;
        }

        v75 = v136;
        (*(v77 + 4))(v136, v127, v76);
        v105 = sub_1CF9E5928();
        v132 = FPEvictionOnItemWithHardlinkError();

        if (!v132)
        {
          __break(1u);
          goto LABEL_65;
        }

LABEL_47:

        swift_willThrow();
        (*(v77 + 1))(v75, v76);
        return;
      }

      v130 = v70;
    }

    goto LABEL_57;
  }

  v161 = v70;
  v82 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v83 = v146;
  if (!swift_dynamicCast())
  {
    goto LABEL_62;
  }

  v76 = v147;
  v77 = v142;
  (*(v147 + 32))(v142, v83, v75);
  sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  sub_1CF9E57A8();
  if (!sub_1CF384284(v165.st_dev, &unk_1F4BED4C0))
  {
LABEL_45:
    (*(v76 + 8))(v77, v75);
    goto LABEL_62;
  }

  v84 = *v158;
  v85 = sub_1CF9E53A8();
  if (v84 == 1)
  {
    v86 = sub_1CF9E57E8();

    v87 = [v86 underlyingErrors];
    v88 = sub_1CF9E6D48();

    if (*v88->tree)
    {
      isa = v88[1].super.isa;
      v97 = isa;
      v88, v98, v99, v100, v101, v102, v103, v104;
      v160 = isa;
      if (swift_dynamicCast())
      {
        v105 = v147;
        if (LOBYTE(v165.st_atimespec.tv_nsec) == 11)
        {
          if (LOBYTE(v165.st_ino) != 1)
          {
            v106 = [objc_opt_self() fp:v154 nonEvictableChildrenErrorWithFD:v135 trashIno:*&v165.st_dev busyIno:?];
LABEL_61:
            swift_willThrow();
            (v105)[1](v77, v75);
            goto LABEL_62;
          }

LABEL_60:
          sub_1CF9E53A8();
          goto LABEL_61;
        }

LABEL_65:
        sub_1CF1969CC(&v165);
        goto LABEL_60;
      }

      memset(&v165, 0, 40);
      LOBYTE(v165.st_atimespec.tv_nsec) = -1;
      sub_1CEFCCC44(&v165, &qword_1EC4BD918, &unk_1CF9FA550);
    }

    else
    {
      v88, v89, v90, v91, v92, v93, v94, v95;
    }

    v105 = v147;
    goto LABEL_60;
  }

  swift_willThrow();
  (*(v147 + 8))(v77, v75);
LABEL_62:
}