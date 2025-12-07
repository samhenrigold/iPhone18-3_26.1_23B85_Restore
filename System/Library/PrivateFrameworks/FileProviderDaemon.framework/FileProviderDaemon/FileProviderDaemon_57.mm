uint64_t sub_1CF61A3C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v118 = a4;
  v119 = a3;
  v131 = a1;
  v6 = *a2;
  v7 = *a2;
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v109 - v14;
  v125 = AssociatedTypeWitness;
  v124 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v109 - v18;
  v19 = *(v6 + 96);
  v20 = *(v6 + 80);
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_1CF9E75D8();
  v129 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v126 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - v25;
  v128 = v21;
  v127 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v123 = &v109 - v31;
  v32 = a2;
  if (((*(v7 + 152))(v30) & 0x4000) == 0 || (v33 = v22, *&v34 = v20, *(&v34 + 1) = v9, *&v35 = v19, *(&v35 + 1) = v8, v132[1] = v35, v132[0] = v34, v113 = type metadata accessor for ItemReconciliation(0, v132), v36 = v131, !sub_1CF07CD80(v113)) || (v39 = *(v36 + *(type metadata accessor for ItemReconciliationHalf(0, v20, v19, v37) + 36)), (v39 & 0x80) == 0) && (v40 = v36 + *(v113 + 52), (v40[*(type metadata accessor for ItemReconciliationHalf(0, v9, v8, v38) + 36)] & 0x80) == 0))
  {
    v41 = 0;
    return v41 & 1;
  }

  v111 = v9;
  v112 = v8;
  v43 = v32;
  v44 = sub_1CF056558();
  if ((v39 & 0x80) != 0)
  {
    v45 = v127;
    if ((v39 & 9) == 0)
    {
      v50 = v133;
      v46 = v128;
      v47 = v130;
      goto LABEL_20;
    }

    v46 = v128;
    v47 = v130;
    if (!v44)
    {
      v50 = v133;
      goto LABEL_20;
    }

    v48 = v129;
    v49 = v131;
    (*(v129 + 16))(v26, v131, v33);
    if ((*(v45 + 48))(v26, 1, v46) == 1)
    {
      (*(v48 + 8))(v26, v33);
      v50 = v133;
      v22 = v33;
      goto LABEL_21;
    }

    v110 = v32;
    v51 = v123;
    (*(v45 + 32))(v123, v26, v46);
    v53 = v124;
    v52 = v125;
    v55 = v121;
    v54 = v122;
    v56 = v49 + *(v113 + 52);
    v57 = v120;
    (*(v121 + 16))(v120, v56, v122);
    if ((*(v53 + 48))(v57, 1, v52) == 1)
    {
      (*(v45 + 8))(v51, v46);
      (*(v55 + 8))(v57, v54);
      v50 = v133;
      v48 = v129;
      v47 = v130;
      v22 = v33;
      v43 = v110;
      goto LABEL_21;
    }

    v58 = v57;
    v59 = v115;
    v60 = (*(v53 + 32))(v115, v58, v52);
    v43 = v110;
    v61 = (*(*v110 + 176))(v60);
    v62 = v133;
    v63 = sub_1CF5E1650(v59, v61, v119, v118, *(v117 + 8));
    v50 = v62;
    if (v62)
    {

      v65 = v127;
      v66 = v128;
      v68 = v123;
      v67 = v124;
LABEL_42:
      (*(v67 + 8))(v59, v125);
      (*(v65 + 8))(v68, v66);
      return v41 & 1;
    }

    v86 = v63;
    v87 = v64;

    if (v86)
    {
      v46 = v128;
      v88 = v124;
      v47 = v130;
      if (v87)
      {
        v89 = v128;
        v90 = v59;
        v91 = v119;
        v92 = v59;
        v93 = v117;
        v94 = v118;
        sub_1CF61C304(v43, v90, v87, v119, v118, v117);
        v103 = v43;
        v104 = v123;
        sub_1CF61C584(v103, v123, v92, v91, v94, v93);

        (*(v88 + 8))(v92, v125);
        (*(v127 + 8))(v104, v89);
LABEL_43:
        v41 = 1;
        return v41 & 1;
      }
    }

    else
    {

      v46 = v128;
      v88 = v124;
      v47 = v130;
    }

    (*(v88 + 8))(v59, v125);
    (*(v127 + 8))(v123, v46);
  }

  else
  {
    v50 = v133;
    v46 = v128;
    v47 = v130;
  }

  v22 = v33;
LABEL_20:
  v48 = v129;
LABEL_21:
  v69 = sub_1CF056558();
  v71 = v126;
  if (!v69)
  {
LABEL_26:
    v41 = 0;
    return v41 & 1;
  }

  v72 = v131 + *(v113 + 52);
  v73 = type metadata accessor for ItemReconciliationHalf(0, v111, v112, v70);
  v41 = 0;
  v74 = *&v72[*(v73 + 36)];
  if ((v74 & 0x80) != 0 && (v74 & 9) != 0)
  {
    (*(v48 + 16))(v71, v131, v22);
    v65 = v127;
    if ((*(v127 + 48))(v71, 1, v46) == 1)
    {
      (*(v48 + 8))(v71, v22);
      goto LABEL_26;
    }

    v75 = v116;
    (*(v65 + 32))(v116, v71, v46);
    v66 = v46;
    v76 = v121;
    v77 = v72;
    v78 = v122;
    (*(v121 + 16))(v47, v77, v122);
    v67 = v124;
    if ((*(v124 + 48))(v47, 1, v125) == 1)
    {
      (*(v65 + 8))(v75, v66);
      (*(v76 + 8))(v47, v78);
      v41 = 0;
      return v41 & 1;
    }

    v79 = v114;
    (*(v67 + 32))(v114, v47, v125);
    v80 = v117;
    v81 = v75;
    v82 = v75;
    v83 = v118;
    v84 = sub_1CF5E1650(v81, v43, v119, v118, *(v117 + 8));
    if (v50)
    {
      v59 = v79;
      v68 = v82;
      goto LABEL_42;
    }

    if (v84)
    {
      if (v85)
      {
        v95 = v80;
        v96 = v85;
        v131 = *(*v43 + 176);
        v97 = v131();
        v98 = v116;
        v133 = v96;
        v99 = v96;
        v100 = v119;
        v101 = v83;
        v102 = v95;
        sub_1CF61C304(v97, v116, v99, v119, v101, v95);

        v106 = (v131)(v105);
        v107 = v114;
        sub_1CF61C584(v106, v114, v98, v100, v118, v102);
        v108 = v128;

        (*(v67 + 8))(v107, v125);
        (*(v127 + 8))(v98, v108);
        goto LABEL_43;
      }
    }

    else
    {
    }

    (*(v67 + 8))(v114, v125);
    (*(v65 + 8))(v116, v66);
    v41 = 0;
  }

  return v41 & 1;
}

void sub_1CF61AF18()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  [v3 setRequiresExternalPower_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBBB28 = v4;
}

void sub_1CF61B038(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v121 = a4;
  v122 = a5;
  v120 = a3;
  v6 = *a2;
  v110 = sub_1CF9E5CF8();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v115 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v6[11];
  v9 = v6[13];
  v114 = type metadata accessor for ItemReconciliationHalf(0, v8, v9, v10);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v103 - v11;
  v12 = v6[10];
  v13 = v6[12];
  v15 = type metadata accessor for ItemReconciliationHalf(0, v12, v13, v14);
  v117 = *(v15 - 8);
  v118 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v103 - v16;
  *&v17 = v12;
  *(&v17 + 1) = v8;
  *&v18 = v13;
  *(&v18 + 1) = v9;
  v125 = v18;
  v126 = v17;
  v130 = v18;
  v129 = v17;
  v124 = type metadata accessor for ItemReconciliation(255, &v129);
  v119 = sub_1CF9E75D8();
  v123 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v107 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v103 - v32;
  v130 = v125;
  v129 = v126;
  v108 = type metadata accessor for Job(0, &v129);
  v34 = sub_1CF9E6DA8();
  v128 = v34;
  v36 = type metadata accessor for SnapshotItem(0, v12, v13, v35);
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v36, WitnessTable, &v129);
  if (v129 == 1)
  {
    v38 = v127;
    sub_1CF68DDB0(a1, v120, v121, v122, v33);
    if (v38)
    {
      v34, v39, v40, v41, v42, v43, v44, v45;
      return;
    }

    v104 = a1;
    v127 = 0;
    v46 = v123;
    v48 = v123 + 16;
    v47 = *(v123 + 16);
    v106 = v33;
    v49 = v119;
    v120 = v47;
    v47(v30, v33, v119);
    v50 = v124;
    v51 = *(v124 - 8);
    v121 = *(v51 + 48);
    v122 = v51 + 48;
    v52 = v121(v30, 1, v124);
    v105 = v51;
    if (v52 == 1)
    {
      (*(v46 + 8))(v30, v49);
      v53 = v49;
      v54 = v106;
      v55 = v120;
      v120(v27, v106, v53);
    }

    else
    {
      v56 = v117;
      v57 = *(v117 + 16);
      v103 = v48;
      v58 = v116;
      v59 = v118;
      v57(v116, v30, v118);
      (*(v51 + 8))(v30, v124);
      v60 = v58[*(v59 + 56)];
      v61 = v59;
      v50 = v124;
      (*(v56 + 8))(v58, v61);
      v62 = v60 == 6;
      v46 = v123;
      v53 = v49;
      v54 = v106;
      v55 = v120;
      if (!v62)
      {
        goto LABEL_20;
      }

      v120(v27, v106, v53);
    }

    if (v121(v27, 1, v50) == 1)
    {
      (*(v46 + 8))(v27, v53);
    }

    else
    {
      v64 = v117;
      v63 = v118;
      v65 = v116;
      (*(v117 + 16))(v116, v27, v118);
      (*(v105 + 8))(v27, v124);
      v66 = v65[*(v63 + 52)];
      v67 = v64;
      v55 = v120;
      v54 = v106;
      v68 = v63;
      v50 = v124;
      (*(v67 + 8))(v65, v68);
      v62 = v66 == 3;
      v46 = v123;
      if (v62)
      {
        goto LABEL_20;
      }
    }

    v55(v24, v54, v53);
    if (v121(v24, 1, v50) == 1)
    {
      (*(v46 + 8))(v24, v53);
    }

    else
    {
      v69 = *(v50 + 52);
      v70 = v50;
      v71 = v113;
      v72 = v112;
      v73 = v114;
      (*(v113 + 16))(v112, &v24[v69], v114);
      (*(v105 + 8))(v24, v70);
      v74 = v72[*(v73 + 56)];
      v75 = v71;
      v50 = v70;
      v55 = v120;
      v54 = v106;
      (*(v75 + 8))(v72, v73);
      v62 = v74 == 6;
      v46 = v123;
      if (!v62)
      {
        goto LABEL_20;
      }
    }

    v76 = v54;
    v77 = v111;
    v55(v111, v76, v53);
    if (v121(v77, 1, v50) == 1)
    {
      (*(v46 + 8))(v77, v53);
      goto LABEL_21;
    }

    v78 = *(v50 + 52);
    v79 = v50;
    v80 = v113;
    v81 = v112;
    v82 = v114;
    (*(v113 + 16))(v112, &v77[v78], v114);
    (*(v105 + 8))(v77, v79);
    v83 = v81[*(v82 + 52)];
    (*(v80 + 8))(v81, v82);
    v62 = v83 == 3;
    v46 = v123;
    v54 = v106;
    if (!v62)
    {
LABEL_21:
      v129 = v126;
      v130 = v125;
      type metadata accessor for Ingestion.ReSnapshotChildren(0, &v129);
      v84 = v115;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v86 = v85;
      v87 = *(v109 + 8);
      v88 = v110;
      v87(v84, v110);
      v89 = v86 * 1000000000.0;
      if (COERCE__INT64(fabs(v86 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v89 > -9.22337204e18)
      {
        if (v89 < 9.22337204e18)
        {
          *&v129 = sub_1CF656FF8(v104, 0, v89, 0x8000, type metadata accessor for Ingestion.ReSnapshotChildren);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          if (!sub_1CF056558())
          {
            v90 = v107;
            v91 = v119;
            v55(v107, v106, v119);
            v92 = v124;
            if (v121(v90, 1, v124) == 1)
            {
              (*(v123 + 8))(v90, v91);
            }

            else
            {
              v94 = v116;
              v93 = v117;
              v95 = v90;
              v96 = v90;
              v97 = v118;
              (*(v117 + 16))(v116, v95, v118);
              (*(v105 + 8))(v96, v92);
              LODWORD(v96) = v94[*(v97 + 52)];
              (*(v93 + 8))(v94, v97);
              if (!v96)
              {
                (*(v123 + 8))(v106, v119);
                return;
              }
            }
          }

          v129 = v126;
          v130 = v125;
          type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v129);
          v98 = v115;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v100 = v99;
          v87(v98, v88);
          v101 = v100 * 1000000000.0;
          if (COERCE__INT64(fabs(v100 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v102 = v119;
            if (v101 > -9.22337204e18)
            {
              if (v101 < 9.22337204e18)
              {
                *&v129 = sub_1CF657094(v104, 0, v101, 0x8000, type metadata accessor for Ingestion.FetchChildrenMetadata);
                sub_1CF9E6E18();
                (*(v123 + 8))(v106, v102);
                return;
              }

LABEL_39:
              __break(1u);
              return;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_20:
    (*(v46 + 8))(v54, v53);
  }
}

void sub_1CF61BC14(uint64_t a1, void *a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v80 = a3;
  v73 = a1;
  v71 = *a2;
  v82 = sub_1CF9E5CF8();
  v8 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v71[12];
  v78 = v71[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v65 - v14;
  v72 = sub_1CF9E75D8();
  v15 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v65 - v16;
  v18 = a2[4];
  if (sub_1CF056558())
  {
    v68 = v8;
    v66 = v13;
    v67 = v10;
    v20 = type metadata accessor for SnapshotItem(0, v78, v10, v19);
    v70 = *(v20 + 36);
    v21 = v73;
    v22 = (v73 + *(v20 + 44));
    v74 = v6;
    v23 = v22[1];
    v84 = *v22;
    v85 = v23;
    v24 = v12 + 16;
    v79 = *(v12 + 16);
    v79(v17, v73, AssociatedTypeWitness);
    (*(v12 + 56))(v17, 0, 1, AssociatedTypeWitness);
    v25 = *v18;
    v69 = v12;
    v26 = *(v25 + 256);

    v27 = v74;
    v28 = v26(v21 + v70, &v84, v17, v75, v76, v77);
    v74 = v27;
    if (v27)
    {
      (*(v15 + 8))(v17, v72);
      v36 = v85;
LABEL_18:
      v36, v29, v30, v31, v32, v33, v34, v35;
      return;
    }

    v37 = v28;
    v38 = v78;
    (*(v15 + 8))(v17, v72);
    v85, v39, v40, v41, v42, v43, v44, v45;
    v46 = sub_1CF9E6DF8();
    v47 = v69;
    if (!v46)
    {
LABEL_17:
      v36 = v37;
      goto LABEL_18;
    }

    v48 = v71[11];
    v49 = v71[13];
    v50 = v38;
    v84 = v38;
    v85 = v48;
    v51 = v67;
    v86 = v67;
    v87 = v49;
    v77 = type metadata accessor for JobResult(0, &v84);
    v84 = v50;
    v85 = v48;
    v86 = v51;
    v87 = v49;
    ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata(0, &v84);
    v53 = 0;
    v78 = (v68 + 8);
    v75 = (v47 + 8);
    v76 = ItemMetadata;
    while (1)
    {
      v54 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v54)
      {
        v79(v83, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v53, AssociatedTypeWitness);
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v64 = sub_1CF9E7998();
        if (v66 != 8)
        {
          goto LABEL_23;
        }

        v84 = v64;
        v79(v83, &v84, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      v56 = v81;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v58 = v57;
      (*v78)(v56, v82);
      v59 = v58 * 1000000000.0;
      if (COERCE__INT64(fabs(v58 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v59 <= -9.22337204e18)
      {
        goto LABEL_21;
      }

      if (v59 >= 9.22337204e18)
      {
        goto LABEL_22;
      }

      v60 = v83;
      v61 = v24;
      v62 = v47;
      v63 = sub_1CF657094(v83, 0x2000000000000000, v59, 0, type metadata accessor for Ingestion.FetchItemMetadata);
      (*v75)(v60, AssociatedTypeWitness);
      sub_1CF803A0C(v80, v63);
      v47 = v62;
      v24 = v61;

      ++v53;
      if (v55 == sub_1CF9E6DF8())
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

BOOL sub_1CF61C1E8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *a3;
  if (!sub_1CF056558())
  {
    return 0;
  }

  v7 = type metadata accessor for SnapshotItem(0, *(v4 + 80), *(v4 + 96), v6);
  v8 = a2 + *(v7 + 48);
  v9 = type metadata accessor for ItemMetadata(0);
  if (*(v8 + v9[20]))
  {
    return 0;
  }

  if (*(v8 + v9[21]))
  {
    return 0;
  }

  if (*(v8 + v9[16]))
  {
    return 0;
  }

  v11 = *(v8 + v9[17]);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    return 0;
  }

  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v7, WitnessTable, &v13);
  return v13 - 1 >= 2 && (v5 & 0x10008) == 0x10000;
}

void sub_1CF61C304(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *a1;
  v28 = a3;
  v12 = sub_1CF9E5CF8();
  v26 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*a1[5] + 384))(a2, 1, a4, a5, *(a6 + 8), v13);
  if (!v6)
  {
    v24 = a4;
    v25 = v12;
    v17 = v26;
    if (v16)
    {
      v23 = 0;
      v18 = *(v27 + 96);
      v29[0] = *(v27 + 80);
      v29[1] = v18;
      type metadata accessor for Propagation.DeletionAcked(0, v29);
      v19 = sub_1CF559420();
      (*(*a1 + 176))();
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v21 = v20;
      (*(v17 + 8))(v15, v25);
      v22 = v21 * 1000000000.0;
      if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v22 > -9.22337204e18)
      {
        if (v22 < 9.22337204e18)
        {
          sub_1CF5215C0(v19, v22, v24, a5, a6);

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_1CF61C584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v56 = a5;
  v55 = a4;
  v64 = a3;
  v66 = a2;
  v7 = *a1;
  v8 = sub_1CF9E5CF8();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[10];
  v11 = v7[12];
  v13 = type metadata accessor for SnapshotMutation(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v54 - v15;
  v67 = a1;
  v16 = v7[11];
  v17 = v7[13];
  v62 = type metadata accessor for SnapshotMutation(0, v16, v17, v18);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - v19;
  *&v20 = v16;
  *(&v20 + 1) = v10;
  *&v21 = v17;
  *(&v21 + 1) = v11;
  v73 = v21;
  v74 = v20;
  v79 = v21;
  v78 = v20;
  v22 = type metadata accessor for ReconciliationMutation(0, &v78);
  v23 = *(v22 - 8);
  v76 = v22;
  v77 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54 - v24;
  v79 = v73;
  v78 = v74;
  type metadata accessor for ConcreteJobResult(0, &v78);
  v75 = sub_1CF056580();
  v79 = v73;
  v78 = v74;
  *&v74 = type metadata accessor for JobResult(0, &v78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  *&v73 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  *&v78 = AssociatedTypeWitness;
  *(&v78 + 1) = v27;
  *&v79 = AssociatedConformanceWitness;
  *(&v79 + 1) = v29;
  v58 = type metadata accessor for ReconciliationID(255, &v78);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(*(AssociatedTypeWitness - 8) + 16);
  v32 = v64;
  v31(v25, v64, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *&v25[v30] = 0;
  v33 = v76;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v75, v25);
  v34 = *(v77 + 8);
  v77 += 8;
  v59 = v34;
  v34(v25, v33);
  v35 = swift_getTupleTypeMetadata2();
  v36 = v61;
  v37 = &v61[*(v35 + 48)];
  v31(v61, v32, AssociatedTypeWitness);
  strcpy(v37, "lazily deleted");
  v37[15] = -18;
  v38 = v62;
  swift_storeEnumTagMultiPayload();
  v39 = v75;
  sub_1CF9491AC(v75, v36);
  (*(v63 + 8))(v36, v38);
  v40 = *(TupleTypeMetadata2 + 48);
  v41 = v73;
  v42 = *(*(v73 - 8) + 16);
  v43 = v66;
  v42(v25, v66, v73);
  swift_storeEnumTagMultiPayload();
  *&v25[v40] = 2;
  v44 = v76;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v39, v25);
  v59(v25, v44);
  v45 = swift_getTupleTypeMetadata2();
  v46 = v65;
  v47 = &v65[*(v45 + 48)];
  v42(v65, v43, v41);
  strcpy(v47, "lazily deleted");
  v47[15] = -18;
  v48 = v68;
  swift_storeEnumTagMultiPayload();
  sub_1CF9491F4(v39, v46);
  v49 = (*(v69 + 8))(v46, v48);
  (*(*v67 + 176))(v49);
  v50 = v70;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v52 = v51;
  (*(v71 + 8))(v50, v72);
  v53 = v52 * 1000000000.0;
  if (COERCE__INT64(fabs(v52 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v53 < 9.22337204e18)
  {
    sub_1CF521850(v39, v53, v55, v56, v57);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1CF62D6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotItem(255, a2, a5, a4);
  v6 = sub_1CF9E75D8();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - v8, a1, v6, v7);
  return sub_1CF9E6948();
}

unint64_t sub_1CF62D788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a5;
  v13[3] = a6;
  v8 = a1 + *(type metadata accessor for ItemReconciliation(0, v13) + 52);
  v10 = type metadata accessor for ItemReconciliationHalf(0, a3, a6, v9);
  result = sub_1CF959F8C(*(v8 + *(v10 + 76)));
  if (!v12)
  {
    return 1819047278;
  }

  return result;
}

uint64_t sub_1CF62D810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v9 = *(*a2 + 96);
  v27 = *(*a2 + 80);
  v28[0] = v27;
  v26 = v9;
  v28[1] = v9;
  v10 = type metadata accessor for ItemReconciliation(255, v28);
  v11 = sub_1CF9E75D8();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (sub_1CF056558())
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = v5;
    v20 = v11;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = *(AssociatedConformanceWitness + 64);
    v16 = swift_checkMetadataState();
    v17 = v29;
    if (v15(v16, AssociatedConformanceWitness) & 1) != 0 || ((*(AssociatedConformanceWitness + 72))(v16, AssociatedConformanceWitness))
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      v19 = v24;
      sub_1CF68DDB0(v17, v21, v22, v23, v13);
      if (!v19)
      {
        LOBYTE(v17) = (*(*(v10 - 8) + 48))(v13, 1, v10) != 1;
        (*(v25 + 8))(v13, v20);
      }
    }
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  return v17 & 1;
}

uint64_t sub_1CF62DA88(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v95 = a5;
  v96 = a6;
  v93 = a1;
  v94 = a4;
  v88 = a2;
  v6 = *a3;
  v7 = sub_1CF9E6118();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[10];
  v10 = v6[11];
  v11 = v6[12];
  v12 = v6[13];
  v97 = v9;
  v98 = v10;
  v89 = v12;
  v90 = v10;
  v99 = v11;
  v100 = v12;
  v13 = type metadata accessor for ItemReconciliation(255, &v97);
  v14 = sub_1CF9E75D8();
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - v15;
  v17 = v13;
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;
  if (!sub_1CF056558())
  {
    return 0;
  }

  v25 = v101;
  result = sub_1CF68DDB0(v93, v94, v95, v96, v16);
  if (v25)
  {
    return result;
  }

  v27 = v92;
  if ((*(v92 + 48))(v16, 1, v17) == 1)
  {
    (*(v91 + 8))(v16, v14);
    return 0xD000000000000025;
  }

  (*(v27 + 32))(v24, v16, v17);
  v28 = v9;
  v29 = v24;
  v31 = type metadata accessor for ItemReconciliationHalf(0, v28, v11, v30);
  v33 = *&v24[*(v31 + 36)];
  if (v33)
  {
    (*(v27 + 8))(v24, v17);
    return 0xD000000000000022;
  }

  if ((v33 & 0x10) != 0)
  {
    v34 = v31;
    v35 = sub_1CF07CD80(v17);
    v31 = v34;
    if (!v35)
    {
      (*(v92 + 8))(v24, v17);
      return 0xD000000000000023;
    }
  }

  if (!v24[*(v31 + 52)])
  {
    v48 = v31;
    if (!sub_1CF056558())
    {
      (*(v92 + 8))(v29, v17);
      return 0xD00000000000002BLL;
    }

    v49 = v92;
    if (v88 == 4)
    {
      (*(v92 + 8))(v29, v17);
      return 0;
    }

    if ((v29[*(v48 + 56)] | 2) != 6)
    {
      (*(v92 + 8))(v29, v17);
      return 0xD000000000000054;
    }

    v101 = 0;
    v50 = fpfs_current_or_default_log();
    v51 = v87;
    sub_1CF9E6128();
    v52 = v17;
    v53 = *(v49 + 16);
    v54 = v84;
    v53(v84, v29, v52);
    v55 = v49;
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E72B8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v96 = v29;
      v59 = v58;
      v60 = swift_slowAlloc();
      v97 = v60;
      *v59 = 136315138;
      LODWORD(v95) = v57;
      v61 = v83;
      v53(v83, v54, v52);
      v62 = *(v55 + 8);
      v62(v54, v52);
      v63 = sub_1CF082CB0(v52);
      v65 = v64;
      v62(v61, v52);
      v66 = sub_1CEFD0DF0(v63, v65, &v97);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v59 + 4) = v66;
      _os_log_impl(&dword_1CEFC7000, v56, v95, "🤦🏼‍♂️  inconsistent children status for item %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);

      (*(v85 + 8))(v87, v86);
      v62(v96, v52);
    }

    else
    {
      v82 = *(v55 + 8);
      v82(v54, v52);

      (*(v85 + 8))(v51, v86);
      v82(v29, v52);
    }

    return 0;
  }

  v36 = &v24[*(v17 + 52)];
  v37 = v36[*(type metadata accessor for ItemReconciliationHalf(0, v90, v89, v32) + 56)];
  if (v37 == 3)
  {
    v38 = v92;
    if (v88 != 4)
    {
      (*(v92 + 8))(v29, v17);
      return 0xD00000000000003FLL;
    }

    goto LABEL_22;
  }

  v38 = v92;
  if (v37 == 6 || v37 == 4)
  {
LABEL_22:
    (*(v38 + 8))(v29, v17);
    return 0;
  }

  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1CF9E7948();
  v98, v39, v40, v41, v42, v43, v44, v45;
  v97 = 0xD000000000000025;
  v98 = 0x80000001CFA45E80;
  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v46 = 0xE600000000000000;
      v47 = 0x7463656C6573;
    }

    else
    {
      v46 = 0xE700000000000000;
      v47 = 0x70756E61656C63;
    }
  }

  else if (v37)
  {
    v46 = 0xE600000000000000;
    v47 = 0x746E65726170;
  }

  else
  {
    v46 = 0xE700000000000000;
    v47 = 0x676E69646E6570;
  }

  MEMORY[0x1D3868CC0](v47, v46);
  v46, v74, v75, v76, v77, v78, v79, v80;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v81 = v97;
  (*(v92 + 8))(v29, v17);
  return v81;
}

uint64_t sub_1CF62E2F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, char *a7)
{
  result = sub_1CF62D810(a1, a4, a5, a6, a7);
  if (!v7)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return sub_1CF62DA88(a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t sub_1CF62E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, _TtC18FileProviderDaemon8FSTester *a8@<X7>, char *a9@<X8>, char *a10)
{
  v210 = a7;
  v211 = a8;
  v195 = a5;
  LODWORD(v201) = a4;
  v191 = a3;
  v202 = a1;
  v204 = a9;
  v209 = a10;
  v12 = *a6;
  v186 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v186);
  v196 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v12 + 96);
  v200 = *(v12 + 80);
  v198 = v14;
  v16 = type metadata accessor for SnapshotItem(0, v200, v14, v15);
  v203 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v180 - v19;
  v207 = v20;
  v246 = sub_1CF9E75D8();
  v206 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v194 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v193 = (&v180 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v190 = &v180 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v189 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v187 = &v180 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v180 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v180 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v180 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v180 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v180 - v46;
  v188 = a6;
  v48 = *(a6 + 4);
  v49 = *(*v48 + 240);
  v199 = a2;
  v50 = v208;
  result = v49(a2, 1, v210, v211, v209, v45);
  if (!v50)
  {
    v181 = v40;
    v182 = v34;
    v183 = v37;
    v184 = v48;
    v52 = v201;
    v197 = v47;
    v208 = 0;
    v53 = v206;
    v54 = v206 + 16;
    v55 = *(v206 + 16);
    v55(v43, v202, v246);
    v56 = v203;
    v57 = *(v203 + 48);
    if (v57(v43, 1, v207) == 1)
    {
      v58 = *(v53 + 8);
      v211 = ((v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v59 = v43;
      v60 = v246;
      v58(v59, v246);
      v61 = v193;
      v55(v193, v197, v60);
      v62 = v194;
      (*(v56 + 56))(v194, 1, 1, v207);
      v63 = sub_1CF056558();
      v64 = v198;
      v65 = v204;
      v66 = v200;
      sub_1CF06D058(v61, v62, v199, 0, v63 && (v195 & 0x400000) == 0, 0x6C6564206D657469, 0xEC00000064657465, v200, v204, v179, v198);
      v58(v62, v60);
      v58(v61, v60);
      *&v230 = v66;
      *(&v230 + 1) = v66;
      v67 = v197;
      *&v231 = v64;
      *(&v231 + 1) = v64;
      v68 = type metadata accessor for ItemChange(0, &v230);
      (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
      return (v58)(v67, v246);
    }

    v194 = v55;
    v202 = v54;
    v69 = v205;
    v70 = v43;
    v71 = v207;
    v193 = *(v56 + 32);
    v193(v205, v70, v207);
    if (v52)
    {
      v201 = v57;
      v72 = v196;
    }

    else
    {
      v89 = v208;
      v90 = sub_1CF62E2F8(v69, v69 + v71[9], v191, v188, v210, v211, v209);
      v72 = v196;
      if (v89)
      {
        (*(v56 + 8))(v69, v71);
        return (*(v206 + 8))(v197, v246);
      }

      v208 = 0;
      if (v91)
      {
        v210 = v90;
        v211 = v91;
        if (sub_1CF056558() && (v92 = v181, v93 = v71, v94 = v246, (v194)(v181, v197, v246), v95 = v57(v92, 1, v93), v58 = *(v206 + 8), v96 = v94, v71 = v93, v58(v92, v96), v95 != 1))
        {
          (*(v56 + 8))(v205, v93);
          v161 = v204;
          v162 = v211;
          *v204 = v210;
          *(v161 + 1) = v162;
          *&v230 = v200;
          *(&v230 + 1) = v200;
          *&v231 = v198;
          *(&v231 + 1) = v198;
          v163 = type metadata accessor for ItemChange(0, &v230);
          swift_storeEnumTagMultiPayload();
          (*(*(v163 - 8) + 56))(v161, 0, 1, v163);
          v67 = v197;
        }

        else
        {
          v97 = v183;
          v98 = v246;
          (v194)(v183, v197, v246);
          v99 = v56;
          v100 = v182;
          (*(v56 + 56))(v182, 1, 1, v71);
          v101 = sub_1CF056558();
          v102 = v198;
          v103 = v200;
          v104 = v211;
          sub_1CF06D058(v97, v100, v199, 0, v101, v210, v211, v200, v204, v179, v198);
          v104, v105, v106, v107, v108, v109, v110, v111;
          v58 = *(v206 + 8);
          v58(v100, v98);
          v58(v183, v98);
          (*(v99 + 8))(v205, v207);
          *&v230 = v103;
          *(&v230 + 1) = v103;
          *&v231 = v102;
          *(&v231 + 1) = v102;
          v112 = type metadata accessor for ItemChange(0, &v230);
          v67 = v197;
          (*(*(v112 - 8) + 56))(v204, 0, 1, v112);
        }

        return (v58)(v67, v246);
      }

      v201 = v57;
      v69 = v205;
    }

    v73 = v69 + v71[13];
    v74 = *(v73 + 208);
    v242 = *(v73 + 192);
    v243 = v74;
    v244 = *(v73 + 224);
    v245 = *(v73 + 240);
    v75 = *(v73 + 144);
    v238 = *(v73 + 128);
    v239 = v75;
    v76 = *(v73 + 176);
    v240 = *(v73 + 160);
    v241 = v76;
    v77 = *(v73 + 80);
    v234 = *(v73 + 64);
    v235 = v77;
    v78 = *(v73 + 112);
    v236 = *(v73 + 96);
    v237 = v78;
    v79 = *(v73 + 16);
    v230 = *v73;
    v231 = v79;
    v80 = *(v73 + 48);
    v232 = *(v73 + 32);
    v233 = v80;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v230);
    v82 = v197;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      v83 = v71;
      v84 = v187;
      v85 = v246;
      (v194)(v187, v197, v246);
      v86 = v71;
      v87 = v201;
      v88 = v201(v84, 1, v86);
      v188 = *(v206 + 8);
      v188(v84, v85);
      if (v88 == 1)
      {
        v56 = v203;
        v71 = v83;
      }

      else
      {
        v113 = v87(v82, 1, v83);
        v56 = v203;
        v71 = v83;
        if (v113 || (v114 = &v82[v83[13]], v115 = *(v114 + 13), v224 = *(v114 + 12), v225 = v115, v226 = *(v114 + 14), v227 = *(v114 + 30), v116 = *(v114 + 9), v220 = *(v114 + 8), v221 = v116, v117 = *(v114 + 11), v222 = *(v114 + 10), v223 = v117, v118 = *(v114 + 5), v216 = *(v114 + 4), v217 = v118, v119 = *(v114 + 7), v218 = *(v114 + 6), v219 = v119, v120 = *(v114 + 1), v212 = *v114, v213 = v120, v121 = *(v114 + 3), v214 = *(v114 + 2), v215 = v121, get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v212) == 1))
        {
          v122 = v201(v82, 1, v83);
          v72 = v196;
          if (v122)
          {
            goto LABEL_19;
          }

          v160 = v208;
          (*(*v184 + 264))(v228, v199, v210, v211, v209);
          v208 = v160;
          if (v160)
          {
            (*(v56 + 8))(v205, v71);
            return (v188)(v197, v246);
          }

          v164 = &v197[v71[13]];
          v165 = *(v164 + 13);
          v224 = *(v164 + 12);
          v225 = v165;
          v226 = *(v164 + 14);
          v227 = *(v164 + 30);
          v166 = *(v164 + 9);
          v220 = *(v164 + 8);
          v221 = v166;
          v167 = *(v164 + 11);
          v222 = *(v164 + 10);
          v223 = v167;
          v168 = *(v164 + 5);
          v216 = *(v164 + 4);
          v217 = v168;
          v169 = *(v164 + 7);
          v218 = *(v164 + 6);
          v219 = v169;
          v170 = *(v164 + 1);
          v212 = *v164;
          v213 = v170;
          v171 = *(v164 + 3);
          v214 = *(v164 + 2);
          v215 = v171;
          v172 = v228[13];
          *(v164 + 12) = v228[12];
          *(v164 + 13) = v172;
          *(v164 + 14) = v228[14];
          *(v164 + 30) = v229;
          v173 = v228[9];
          *(v164 + 8) = v228[8];
          *(v164 + 9) = v173;
          v174 = v228[11];
          *(v164 + 10) = v228[10];
          *(v164 + 11) = v174;
          v175 = v228[5];
          *(v164 + 4) = v228[4];
          *(v164 + 5) = v175;
          v176 = v228[7];
          *(v164 + 6) = v228[6];
          *(v164 + 7) = v176;
          v177 = v228[1];
          *v164 = v228[0];
          *(v164 + 1) = v177;
          v178 = v228[3];
          *(v164 + 2) = v228[2];
          *(v164 + 3) = v178;
          sub_1CEFCCC44(&v212, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        }
      }

      v72 = v196;
    }

LABEL_19:
    v123 = v189;
    (v194)(v189, v197, v246);
    if (v201(v123, 1, v71) == 1)
    {
      v124 = v71;
      v125 = v56;
      (*(v206 + 8))(v123, v246);
      v127 = v204;
      v126 = v205;
    }

    else
    {
      v128 = v185;
      v193(v185, v123, v71);
      sub_1CEFF4408(&v128[v71[12]], v72);
      v129 = v72;
      v124 = v71;
      v125 = v56;
      (*(v56 + 8))(v128, v124);
      v130 = v186;
      v131 = *(v129 + *(v186 + 48));
      sub_1CF06DA00(v129);
      v127 = v204;
      v126 = v205;
      v205[v124[12] + *(v130 + 48)] = v131;
    }

    v132 = v200;
    v133 = v192;
    v134 = v190;
    if ((*&v126[v124[17] + 8] & 0x8000000000000000) != 0)
    {
      v144 = v126;
      (v194)(v192, v197, v246);
      (*(v125 + 16))(v134, v144, v124);
      (*(v125 + 56))(v134, 0, 1, v124);
      v145 = sub_1CF056558();
      if (v191 == 4)
      {
        v146 = 0x6F7270206D657469;
      }

      else
      {
        v146 = 0x616863206D657469;
      }

      if (v191 == 4)
      {
        v147 = 0xEF64657461676170;
      }

      else
      {
        v147 = 0xEC0000006465676ELL;
      }

      v148 = v198;
      sub_1CF06D058(v133, v134, v199, (v195 & 0x800400000) != 0, v145, v146, v147, v132, v127, v179, v198);
      v147, v149, v150, v151, v152, v153, v154, v155;
      v156 = *(v206 + 8);
      v157 = v134;
      v158 = v246;
      v156(v157, v246);
      v156(v192, v158);
      v58 = v156;
      (*(v125 + 8))(v205, v124);
      v67 = v197;
      *&v212 = v132;
      *(&v212 + 1) = v132;
      *&v213 = v148;
      *(&v213 + 1) = v148;
    }

    else
    {
      v135 = v246;
      v136 = v127;
      v137 = v183;
      (v194)();
      v138 = v182;
      (*(v125 + 56))(v182, 1, 1, v124);
      v139 = sub_1CF056558();
      v140 = v198;
      v141 = v200;
      sub_1CF06D058(v137, v138, v199, 0, v139, 0xD000000000000014, 0x80000001CFA45E30, v200, v136, v179, v198);
      v142 = v138;
      v143 = *(v206 + 8);
      v143(v142, v135);
      v143(v137, v135);
      v58 = v143;
      (*(v125 + 8))(v205, v207);
      v67 = v197;
      *&v212 = v141;
      *(&v212 + 1) = v141;
      *&v213 = v140;
      *(&v213 + 1) = v140;
    }

    v159 = type metadata accessor for ItemChange(0, &v212);
    (*(*(v159 - 8) + 56))(v204, 0, 1, v159);
    return (v58)(v67, v246);
  }

  return result;
}

double sub_1CF62F2A0(void *a1, void (*a2)(NSObject *, uint64_t), char *a3, NSObject *a4, uint64_t a5)
{
  v65 = a1;
  v58 = a5;
  v68 = a4;
  v62 = a3;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v60 = *(*a2 + 96);
  v8 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v7, v60, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v63 = sub_1CF9E6118();
  v14 = MEMORY[0x1EEE9AC00](v63);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 216);
  v6 += 216;
  v18 = v9;
  v61 = v19;
  v66 = a2;
  v17(v14);
  sub_1CF529CE8();

  *&v20 = v7;
  *(&v20 + 1) = *(v6 - 128);
  *&v21 = v60;
  *(&v21 + 1) = *(v6 - 112);
  v67[0] = v20;
  v67[1] = v21;
  type metadata accessor for ConcreteJobResult(0, v67);
  v22 = sub_1CF056580();
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = *(v18 + 16);
  v25 = v13;
  v26 = v13;
  v27 = v8;
  v24(v26, v68, v8);
  v62 = v16;
  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7288();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v60 = v22;
    v31 = v30;
    v32 = swift_slowAlloc();
    *&v67[0] = v32;
    *v31 = 136446210;
    v57 = v28;
    v33 = v59;
    v24(v59, v25, v27);
    v34 = *(v18 + 8);
    v34(v25, v27);
    v35 = sub_1CF06AB58(v27);
    v36 = v29;
    v38 = v37;
    v34(v33, v27);
    v39 = sub_1CEFD0DF0(v35, v38, v67);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v31 + 4) = v39;
    v47 = v57;
    _os_log_impl(&dword_1CEFC7000, v57, v36, "%{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D386CDC0](v32, -1, -1);
    v22 = v60;
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  else
  {
    (*(v18 + 8))(v25, v8);
  }

  (*(v61 + 8))(v62, v63);
  v48 = v65;
  v49 = v65[3];
  v50 = v65[4];
  v51 = __swift_project_boxed_opaque_existential_1(v65, v49);
  v52 = v64;
  sub_1CF6180A8(v68, 1, v22, v66, v51, v49, v50);
  if (!v52)
  {
    v53 = v48[3];
    v54 = v48[4];
    v55 = __swift_project_boxed_opaque_existential_1(v48, v53);
    sub_1CF521850(v22, v58, v55, v53, v54);
  }

  return result;
}

uint64_t sub_1CF62F714()
{
  if ((*(v0 + 136) & 0x10000) != 0)
  {
    return 3;
  }

  else
  {
    return 2 * ((*(v0 + 136) & 0x8008) != 0);
  }
}

uint64_t sub_1CF62F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v31 = a5;
  v32 = a3;
  v34 = a4;
  v30 = a1;
  v9 = type metadata accessor for JobLockRule(0, *(*v7 + 600), *(*v7 + 616), a4);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *(a2 + 32);
  v17 = *(*v16[2] + 312);

  LOBYTE(v17) = v17(v18);

  if (v17)
  {
    return 0;
  }

  v20 = *(*v7 + 576);
  result = ((*v16)[36])(&v7[v20], v32, v34, *(v31 + 8));
  if (!v6)
  {
    swift_beginAccess();
    sub_1CEFCCBDC((v7 + 56), v33, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v21 = *(v7 + 15);
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v11, &v7[v20], AssociatedTypeWitness);
    v23 = v27;
    (*(v27 + 16))(&v11[v22], v15, v13);
    v24 = v29;
    swift_storeEnumTagMultiPayload();
    v26 = sub_1CF052B3C(v33, v21, v11, v25);
    (*(v28 + 8))(v11, v24);
    sub_1CEFCCC44(v33, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v23 + 8))(v15, v13);
    return v26;
  }

  return result;
}

uint64_t sub_1CF62FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v42 = a7;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v39 = a3;
  v40 = a2;
  v12 = *v8;
  v46[0] = swift_getAssociatedTypeWitness();
  v46[1] = swift_getAssociatedTypeWitness();
  v46[2] = swift_getAssociatedConformanceWitness();
  v46[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v46);
  v41 = sub_1CF9E75D8();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v34 - v16;
  v37 = a1;
  v17 = v12;
  v18 = *(a1 + 32);
  v19 = v18[2];
  v20 = *(v17 + 576);
  v21 = *(*v18 + 656);
  v22 = a8;
  v23 = v42;

  v35 = v20;
  v21(&v9[v20]);
  v24 = v38;
  v25 = v36;
  v26 = (*(v38 + 32))(v36, v14, v41);
  v27 = v37;
  v43 = (*(*v37 + 272))(v26);
  v28 = swift_allocObject();
  v28[2] = v23;
  v28[3] = v22;
  v28[4] = v27;
  v28[5] = v9;
  v29 = v45;
  v28[6] = v44;
  v28[7] = v29;
  v28[8] = v39;
  v30 = *(*v19 + 536);

  v31 = &v9[v35];
  v32 = v43;
  v30(v31, v25, v43, v40, 0, sub_1CF659EFC, v28);

  return (*(v24 + 8))(v25, v41);
}

double sub_1CF62FF0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v37 = a8;
  v35 = a7;
  v44 = a6;
  v45 = a5;
  v38 = a3;
  v39 = a1;
  v42 = *a2;
  v40 = *(v42 + 80);
  v43 = *(v42 + 96);
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v40, v43, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v41 = v19;
  v20 = v45;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v42;
  *(v25 + 2) = v40;
  *(v25 + 3) = *(v26 + 88);
  v27 = v34;
  v28 = v43;
  *(v25 + 4) = v35;
  *(v25 + 5) = v28;
  *(v25 + 6) = *(v26 + 104);
  *(v25 + 7) = v37;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v29 = &v25[v22];
  v30 = v44;
  v31 = v45;
  *v29 = v36;
  v29[1] = v31;
  *&v25[v23] = v38;
  *&v25[v24] = a2;
  *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v30;
  v32 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v18, sub_1CF559418, v41, sub_1CF659F14, v25, v32, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF63024C(void *a1, _TtC18FileProviderDaemon8FSTester *a2, void (*a3)(void **, id, void (*)(char *, char *, uint64_t), uint64_t, void *), uint64_t a4, uint64_t *a5, void (*a6)(char *, uint64_t), uint64_t a7)
{
  v384 = a7;
  v383 = a6;
  v388 = a4;
  v389 = a3;
  v392 = a1;
  v393 = a2;
  v371 = *a5;
  v355 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v355);
  v356 = &v338 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v371[75];
  v390 = a5;
  v10 = v371[77];
  v12 = type metadata accessor for FileTreeError(255, v9, v10, v11);
  v374 = sub_1CF9E75D8();
  v372 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v373 = &v338 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v400 = AssociatedTypeWitness;
  v401 = v15;
  v402 = AssociatedConformanceWitness;
  v403 = v17;
  v346 = type metadata accessor for FileItemVersion(255, &v400);
  v364 = sub_1CF9E75D8();
  v359 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v347 = &v338 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v375 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v349 = &v338 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v344 = &v338 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v362 = &v338 - v24;
  v387 = v25;
  v26 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v340 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v350 = &v338 - v27;
  v361 = v26;
  v354 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v339 = &v338 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v352 = &v338 - v31;
  v385 = v12;
  v376 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v351 = &v338 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v386 = &v338 - v35;
  v343 = sub_1CF9E5268();
  v342 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v341 = &v338 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for SnapshotItem(255, v9, v10, v37);
  v377 = sub_1CF9E75D8();
  v378 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v348 = &v338 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v382 = &v338 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v338 = &v338 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v360 = &v338 - v44;
  v45 = sub_1CF9E5248();
  v380 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v338 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v365 = &v338 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v370 = &v338 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v363 = &v338 - v54;
  v396 = v10;
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v9, v10, v55);
  v381 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v56 = sub_1CF9E8238();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v357 = (&v338 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v338 - v60;
  v395 = sub_1CF9E75D8();
  v404 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v366 = &v338 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v369 = (&v338 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v368 = &v338 - v66;
  v68 = MEMORY[0x1EEE9AC00](v67);
  v379 = v48;
  v69 = *(v48 + 56);
  v397 = &v338 - v70;
  v394 = v9;
  v69(v68);
  v345 = v57;
  v71 = *(v57 + 16);
  v71(v61, v393, v56);
  v358 = v56;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = *v61;
    v73 = *v61;
    sub_1CF9E5108();
    sub_1CF00BC98(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
    v74 = sub_1CF9E5658();

    v75 = *(v380 + 1);
    v382 = v47;
    v75(v47, v45);
    v76 = v390;
    v77 = v396;
    if (v74)
    {
      v78 = *(*v390 + 576);
      v79 = v387;
      v80 = swift_getAssociatedConformanceWitness();
      if ((*(v80 + 72))(v79, v80))
      {

        v81 = v392;
        v82 = v392[3];
        v83 = v392[4];
        v84 = __swift_project_boxed_opaque_existential_1(v392, v82);
        v85 = v360;
        (*(*(v367 - 8) + 56))(v360, 1, 1);
        v86 = v383;
        v87 = v391;
        sub_1CF611904(v85, v76 + v78, 0, 0, 0, v383, v76[15], v76[16], v76[17], v384, v84, v82, v83);
        v88 = v404;
        v89 = v397;
        (*(v378 + 8))(v85, v377);
        if (!v87)
        {
          sub_1CF1A91AC(v81, &v400);
          sub_1CF9E5108();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00BC98(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v211 = v341;
          v212 = v343;
          sub_1CF9E57D8();
          v213 = sub_1CF9E50D8();
          (*(v342 + 8))(v211, v212);
          v389(&v400, 0, 0, 0, v213);

          sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
          v214 = *(**(*(v86 + 4) + 16) + 920);

          v214(v215);
        }

        (*(v88 + 8))(v89, v395);
        return;
      }
    }

    v380 = v71;
    v398 = v72;
    v94 = v72;
    v95 = v385;
    v96 = swift_dynamicCast();
    v97 = v404;
    v98 = v397;
    if (!v96)
    {
      goto LABEL_70;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 4)
      {
        (*(v376 + 8))(v386, v95);
LABEL_70:
        v311 = v98;

        v400 = v72;
        v312 = v72;
        v313 = v373;
        v314 = swift_dynamicCast();
        v315 = *(v376 + 56);
        v316 = (v372 + 8);
        if (v314)
        {
          v315(v313, 0, 1, v95);
          (*v316)(v313, v374);
          sub_1CF1A91AC(v392, &v400);
          v317 = v72;
          v389(&v400, 0, 0, 0, v72);

          sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
          v318 = *(**(*(v383 + 4) + 16) + 920);

          v318(v319);
        }

        else
        {
          v315(v313, 1, 1, v95);
          (*v316)(v313, v374);
          v320 = v371[76];
          v321 = v371[78];
          v322 = v394;
          v400 = v394;
          v401 = v320;
          v402 = v77;
          v403 = v321;
          type metadata accessor for JobResult(0, &v400);
          v400 = v322;
          v401 = v320;
          v402 = v77;
          v403 = v321;
          type metadata accessor for Ingestion.FetchItemMetadata(0, &v400);
          v323 = sub_1CF657094(v76 + *(*v76 + 576), v76[15], v76[16], v76[17], type metadata accessor for Ingestion.FetchItemMetadata);
          sub_1CF803A0C(v384, v323);

          sub_1CF1A91AC(v392, &v400);
          v324 = v72;
          v389(&v400, 0, 0, 0, v72);

          sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        (*(v97 + 8))(v311, v395);
        return;
      }

      v100 = v361;
      v101 = v387;
      v368 = swift_getTupleTypeMetadata2();
      v393 = *(v368 + 12);
      v102 = v375;
      v103 = *(v375 + 16);
      v379 = *(*v76 + 576);
      v104 = v352;
      v370 = (v375 + 16);
      v369 = v103;
      v103(v352, v76 + v379, v101);
      v105 = *(v102 + 56);
      v366 = (v102 + 56);
      v365 = v105;
      (v105)(v104, 0, 1, v101);
      v106 = *(TupleTypeMetadata2 + 48);
      v107 = v354;
      v108 = v350;
      v380 = *(v354 + 16);
      v380(v350, v104, v100);
      v109 = *(v107 + 32);
      v382 = v106;
      v109(&v108[v106], v386, v100);
      v110 = *(v102 + 48);
      if (v110(v108, 1, v101) == 1)
      {
        v111 = *(v107 + 8);
        v112 = v104;
        v113 = v361;
        v111(v112, v361);
        v114 = v110(&v108[v382], 1, v101);
        v115 = v375;
        if (v114 == 1)
        {

          v111(v108, v113);
          (*(v115 + 32))(v344, &v386[v393], v101);
          goto LABEL_66;
        }
      }

      else
      {
        v265 = v339;
        v266 = v361;
        v380(v339, v108, v361);
        v267 = v382;
        if (v110(&v108[v382], 1, v101) != 1)
        {
          v296 = v375;
          v297 = v362;
          v380 = *(v375 + 32);
          v380(v362, &v108[v267], v101);
          swift_getAssociatedConformanceWitness();
          LODWORD(v382) = sub_1CF9E6868();
          v268 = *(v296 + 8);
          v268(v297, v101);
          v298 = v265;
          v299 = *(v354 + 8);
          v299(v352, v266);
          v268(v298, v387);
          v299(v108, v266);
          if (v382)
          {

            v101 = v387;
            v380(v344, &v386[v393], v387);
LABEL_66:
            v300 = v101;
            v301 = v392;
            v303 = v392[3];
            v302 = v392[4];
            v304 = __swift_project_boxed_opaque_existential_1(v392, v303);
            v305 = v338;
            (*(*(v367 - 8) + 56))(v338, 1, 1);
            v306 = v390;
            v307 = v379;
            v308 = v391;
            sub_1CF611904(v305, v390 + v379, 0, 0, 0, v383, v390[15], v390[16], v390[17], v384, v304, v303, v302);
            v309 = v404;
            v310 = v395;
            (*(v378 + 8))(v305, v377);
            if (v308)
            {
              (*(v375 + 8))(v344, v300);
              (*(v309 + 8))(v397, v310);
            }

            else
            {
              v325 = v371[76];
              v326 = v371[78];
              v327 = v394;
              v400 = v394;
              v401 = v325;
              v328 = v396;
              v402 = v396;
              v403 = v326;
              v393 = type metadata accessor for JobResult(0, &v400);
              v400 = v327;
              v401 = v325;
              v402 = v328;
              v403 = v326;
              type metadata accessor for Ingestion.FetchItemMetadata(0, &v400);
              v329 = v344;
              v330 = sub_1CF657094(v344, v306[15], v306[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v384, v330);

              sub_1CF1A91AC(v301, &v400);
              swift_getWitnessTable();
              v331 = swift_allocError();
              v333 = v332;
              v334 = *(v368 + 12);
              v335 = v306 + v307;
              v336 = v387;
              v337 = v369;
              v369(v333, v335, v387);
              (v365)(v333, 0, 1, v336);
              v337(v333 + v334, v329, v336);
              swift_storeEnumTagMultiPayload();
              v389(&v400, 0, 0, 0, v331);

              sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v375 + 8))(v329, v336);
              (*(v404 + 8))(v397, v395);
            }

            goto LABEL_75;
          }

          v269 = v397;
          v101 = v387;
          goto LABEL_59;
        }

        (*(v354 + 8))(v352, v266);
        v115 = v375;
        (*(v375 + 8))(v265, v101);
      }

      (*(v340 + 8))(v108, TupleTypeMetadata2);
      v268 = *(v115 + 8);
      v269 = v397;
LABEL_59:
      v268(&v386[v393], v101);
      v97 = v404;
      v76 = v390;
      v95 = v385;
      v77 = v396;
      v98 = v269;
      goto LABEL_70;
    }

    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v185 = v387;
    v400 = v387;
    v401 = v364;
    v402 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v403 = v402;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v382 = TupleTypeMetadata[12];
    v187 = v386;

    v188 = v375;
    v189 = v349;
    (*(v375 + 32))(v349, v187, v185);
    v190 = *(*v76 + 576);
    v128 = v394;
    v191 = swift_getAssociatedConformanceWitness();
    v379 = v190;
    LOBYTE(v190) = sub_1CF9E6868();
    (*(v188 + 8))(v189, v185);
    if (v190)
    {
      v192 = v382;
      if ((*(v191 + 64))(v185, v191))
      {

        (*(v359 + 8))(&v386[v192], v364);
        v92 = v396;
        goto LABEL_18;
      }

      (*(v359 + 8))(&v386[v192], v364);
    }

    else
    {
      (*(v359 + 8))(&v386[v382], v364);
    }

    v95 = v385;
    v77 = v396;
    v98 = v397;
    v97 = v404;
    goto LABEL_70;
  }

  v90 = swift_getEnumCaseMultiPayload();
  if (v90)
  {
    v91 = v404;
    v92 = v396;
    if (v90 == 1)
    {
      v93 = *v61;
      sub_1CF1A91AC(v392, &v400);

      v389(&v400, v93, 0, 0, 0);

      sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v91 + 8))(v397, v395);
      return;
    }

    v380 = v71;
    v126 = *v61;
    v125 = *(v61 + 1);
    v127 = v61[16];
    v76 = v390;
    v128 = v394;
    v129 = v387;
    v130 = swift_getAssociatedConformanceWitness();
    if ((*(v130 + 64))(v129, v130))
    {
      sub_1CF60F704(v126, v125, v127, v131, v132, v133, v134, v135);
LABEL_18:
      v136 = v404;
      v137 = v371[76];
      v138 = v371[78];
      v400 = v128;
      v401 = v137;
      v402 = v92;
      v403 = v138;
      type metadata accessor for JobResult(0, &v400);
      v400 = v128;
      v401 = v137;
      v402 = v92;
      v403 = v138;
      type metadata accessor for Ingestion.FetchItemMetadata(0, &v400);
      v139 = *(*v76 + 576);
      v140 = sub_1CF657094(v76 + v139, v76[15], v76[16], v76[17], type metadata accessor for Ingestion.FetchItemMetadata);
      sub_1CF803A0C(v384, v140);

      v141 = v357;
      v142 = v358;
      v380(v357, v393, v358);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v143 = *v141;
        sub_1CF1A91AC(v392, &v400);
        v144 = v143;
        v389(&v400, 0, 0, 0, v143);
      }

      else
      {
        (*(v345 + 8))(v141, v142);
        sub_1CF1A91AC(v392, &v400);
        v209 = v347;
        (*(*(v346 - 8) + 56))(v347, 1, 1);
        swift_getWitnessTable();
        v143 = swift_allocError();
        sub_1CF72C4D8(v76 + v139, v209, 0, v128, v92, v210);
        (*(v359 + 8))(v209, v364);
        v389(&v400, 0, 0, 0, v143);
      }

      sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v136 + 8))(v397, v395);
      return;
    }

    v400 = 0;
    v401 = 0xE000000000000000;
    sub_1CF9E7948();
    v398 = v400;
    v399 = v401;
    MEMORY[0x1D3868CC0](0x696E3A6D6574693CLL, 0xEE003A796877206CLL);
    v400 = v126;
    v401 = v125;
    LOBYTE(v402) = v127;
    type metadata accessor for FileTreeWriter.FileTreeNilReason(0, v128, v92, v145);
    sub_1CF9E7FD8();
    sub_1CF60F704(v126, v125, v127, v146, v147, v148, v149, v150);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v380 = v398;
    v393 = v399;
    v118 = v395;
    v116 = v404;
    v123 = v397;
    v124 = v379;
    v122 = v128;
  }

  else
  {
    v116 = v404;
    v117 = v397;
    v118 = v395;
    (*(v404 + 8))(v397, v395);
    v119 = v379;
    v120 = v363;
    v121 = v61;
    v122 = v394;
    (*(v379 + 32))(v363, v121, v394);
    (*(v119 + 16))(v117, v120, v122);
    (v69)(v117, 0, 1, v122);
    v123 = v117;
    v400 = 0;
    v401 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6D6574693CLL, 0xE600000000000000);
    v92 = v396;
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v124 = v119;
    v380 = v400;
    v393 = v401;
    (*(v119 + 8))(v120, v122);
  }

  v151 = *(v116 + 16);
  v152 = v116;
  v153 = v368;
  v151(v368, v123, v118);
  sub_1CF06B4E0(v153, v122, v92, v382);
  v154 = v369;
  v386 = v151;
  v151(v369, v123, v118);
  v155 = v124;
  v156 = v122;
  v157 = v124;
  v158 = v152;
  v159 = *(v155 + 48);
  if (v159(v154, 1, v156) == 1)
  {
    (*(v158 + 8))(v154, v118);
    v160 = v157;
    goto LABEL_25;
  }

  (*(v157 + 32))(v370, v154, v156);
  v161 = *(v92 + 64);
  v162 = v362;
  v373 = (v92 + 64);
  v372 = v161;
  (v161)(v156, v92);
  v163 = v390;
  v164 = *(*v390 + 576);
  v165 = v387;
  swift_getAssociatedConformanceWitness();
  v374 = v164;
  LOBYTE(v164) = sub_1CF9E6868();
  v369 = *(v375 + 8);
  (v369)(v162, v165);
  if (v164)
  {
    v160 = v379;
    (*(v379 + 8))(v370, v156);
    v118 = v395;
LABEL_25:
    v166 = v366;
    (v386)(v366, v397, v118);
    if (v159(v166, 1, v156) == 1)
    {
      v167 = v404;
      (*(v404 + 8))(v166, v118);
      v169 = v390;
      v168 = v391;
      v170 = v396;
      goto LABEL_43;
    }

    (*(v160 + 32))(v365, v166, v156);
    v170 = v396;
    v171 = v356;
    (*(v396 + 104))(v156, v396);
    sub_1CF9E5C98();
    v169 = v390;
    v168 = v391;
    v167 = v404;
    if ((*&v172 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v172 > -9.22337204e18)
    {
      if (v172 < 9.22337204e18)
      {
        is_busy_date = fpfs_is_busy_date();
        sub_1CF06DA00(v171);
        if (is_busy_date)
        {
          sub_1CF1A91AC(v392, &v400);
          swift_getWitnessTable();
          v174 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v175 = v393;
          v389(&v400, 0, v380, v393, v174);
          v175, v176, v177, v178, v179, v180, v181, v182;

          sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
          v183 = *(**(*(v383 + 4) + 16) + 920);

          v183(v184);

          (*(v379 + 8))(v365, v156);
          (*(v378 + 8))(v382, v377);
LABEL_54:
          (*(v167 + 8))(v397, v395);
          return;
        }

        (*(v379 + 8))(v365, v156);
LABEL_43:
        v216 = v392[3];
        v217 = v392[4];
        v218 = __swift_project_boxed_opaque_existential_1(v392, v216);
        v219 = *(*v169 + 576);
        v220 = v169[17];
        if ((v220 & 0x10000) != 0)
        {
          v221 = 3;
        }

        else
        {
          v221 = 2 * ((v169[17] & 0x8008) != 0);
        }

        sub_1CF611904(v382, v169 + v219, v221, 0, 0, v383, v169[15], v169[16], v220, v384, v218, v216, v217);
        if (v168)
        {
          v398 = v168;
          v222 = v168;
          v223 = v351;
          v224 = v385;
          if (swift_dynamicCast())
          {
            v232 = swift_getEnumCaseMultiPayload();
            v240 = v378;
            v241 = v377;
            if (v232 == 15)
            {

              sub_1CF1A91AC(v392, &v400);
              swift_getWitnessTable();
              v242 = swift_allocError();
              swift_storeEnumTagMultiPayload();
              v243 = v393;
              v389(&v400, 0, v380, v393, v242);
              v243, v244, v245, v246, v247, v248, v249, v250;

              sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
LABEL_53:
              v263 = *(**(*(v383 + 4) + 16) + 920);

              v263(v264);

              (*(v240 + 8))(v382, v241);
              goto LABEL_54;
            }

            v393, v233, v234, v235, v236, v237, v238, v239;
            (*(v240 + 8))(v382, v241);
            (*(v167 + 8))(v397, v395);
            (*(v376 + 8))(v223, v224);
          }

          else
          {
            v393, v225, v226, v227, v228, v229, v230, v231;
            (*(v378 + 8))(v382, v377);
            (*(v167 + 8))(v397, v395);
          }

LABEL_75:

          return;
        }

        v251 = v169[17];
        if ((v251 & 0x20000) != 0)
        {
          v252 = v371[76];
          v253 = v371[78];
          v400 = v156;
          v401 = v252;
          v402 = v170;
          v403 = v253;
          type metadata accessor for JobResult(0, &v400);
          v400 = v156;
          v401 = v252;
          v402 = v170;
          v403 = v253;
          v167 = v404;
          type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v400);
          v254 = sub_1CF657094(v169 + v219, v169[15], v169[16], v251, type metadata accessor for Ingestion.FetchChildrenMetadata);
          sub_1CF803A0C(v384, v254);
        }

        sub_1CF1A91AC(v392, &v400);
        v255 = v393;
        v389(&v400, 0, v380, v393, 0);
        v255, v256, v257, v258, v259, v260, v261, v262;
        sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
        v240 = v378;
        v241 = v377;
        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_79;
  }

  v193 = v392;
  v194 = v392[3];
  v195 = v392[4];
  v196 = __swift_project_boxed_opaque_existential_1(v392, v194);
  v197 = v348;
  (*(*(v367 - 8) + 56))(v348, 1, 1);
  v198 = v391;
  sub_1CF611904(v197, v163 + v374, 0, 0, 0, v383, v163[15], v163[16], v163[17], v384, v196, v194, v195);
  if (v198)
  {
    v393, v199, v200, v201, v202, v203, v204, v205;
    v206 = *(v378 + 8);
    v207 = v197;
    v208 = v377;
    v206(v207, v377);
    (*(v379 + 8))(v370, v394);
    v206(v382, v208);
  }

  else
  {
    v270 = *(v378 + 8);
    v378 += 8;
    v386 = v270;
    (v270)(v197, v377);
    v271 = v371[76];
    v272 = v371[78];
    v400 = v394;
    v401 = v271;
    v273 = v394;
    v402 = v396;
    v403 = v272;
    v274 = v396;
    type metadata accessor for JobResult(0, &v400);
    v400 = v273;
    v401 = v271;
    v402 = v274;
    v403 = v272;
    v275 = v274;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v400);
    v391 = 0;
    v276 = v362;
    v277 = v275;
    v278 = v372;
    (v372)(v273, v277);
    v279 = sub_1CF657094(v276, v163[15], v163[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
    v280 = v276;
    v281 = v387;
    (v369)(v280, v387);
    sub_1CF803A0C(v384, v279);

    sub_1CF1A91AC(v193, &v400);
    swift_getWitnessTable();
    v282 = swift_allocError();
    v284 = v283;
    swift_getTupleTypeMetadata2();
    v285 = v375;
    (*(v375 + 16))(v284, v163 + v374, v281);
    (*(v285 + 56))(v284, 0, 1, v281);
    v286 = v370;
    v287 = v394;
    v278(v394, v396);
    swift_storeEnumTagMultiPayload();
    v288 = v393;
    v389(&v400, 0, v380, v393, v282);

    v288, v289, v290, v291, v292, v293, v294, v295;
    sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v379 + 8))(v286, v287);
    (v386)(v382, v377);
  }

  (*(v404 + 8))(v397, v395);
}

uint64_t sub_1CF632ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v43 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v42 = type metadata accessor for JobLockRule(0, v9, v10, a4);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v38 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v17 = type metadata accessor for SnapshotItem(255, v9, v10, v16);
  v18 = sub_1CF9E75D8();
  v39 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v22 = *(a2 + 32);
  v23 = *(v8 + 576);
  v24 = v49;
  (*(*v22 + 240))(&v6[v23], 1, v45, v46, v47, v19);
  if (!v24)
  {
    v47 = v15;
    v49 = 0;
    v25 = &v6[*(*v6 + 632)];
    swift_beginAccess();
    (*(v39 + 40))(v25, v21, v18);
    swift_endAccess();
    if ((*(*(v17 - 8) + 48))(v25, 1, v17))
    {
      v26 = AssociatedTypeWitness;
      v27 = *(AssociatedTypeWitness - 8);
      v28 = 1;
      v29 = v47;
    }

    else
    {
      v30 = *(v17 + 36);
      v26 = AssociatedTypeWitness;
      v27 = *(AssociatedTypeWitness - 8);
      v29 = v47;
      (*(v27 + 16))(v47, &v25[v30], AssociatedTypeWitness);
      v28 = 0;
    }

    (*(v27 + 56))(v29, v28, 1, v26);
    swift_beginAccess();
    sub_1CEFCCBDC((v6 + 56), v48, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v31 = *(v6 + 15);
    v32 = *(swift_getTupleTypeMetadata2() + 48);
    v33 = v40;
    (*(v27 + 16))(v40, &v6[v23], v26);
    v34 = v41;
    (*(v41 + 16))(v33 + v32, v29, v13);
    v35 = v42;
    swift_storeEnumTagMultiPayload();
    v22 = sub_1CF052B3C(v48, v31, v33, v36);
    (*(v44 + 8))(v33, v35);
    sub_1CEFCCC44(v48, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v34 + 8))(v29, v13);
  }

  return v22;
}

double sub_1CF6333DC(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v60 = a6;
  v61 = a8;
  v56 = a1;
  v57 = a5;
  v62 = a3;
  v63 = a2;
  v66 = a7;
  v67 = a11;
  v58 = *v11;
  v59 = a4;
  v55 = *(v58 + 616);
  v13 = *(v58 + 600);
  v65 = a10;
  v50 = a9;
  v52 = v13;
  v68[0] = swift_getAssociatedTypeWitness();
  v68[1] = swift_getAssociatedTypeWitness();
  v68[2] = swift_getAssociatedConformanceWitness();
  v68[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v68);
  v14 = sub_1CF9E75D8();
  v48 = v14;
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v49 = &v46 - v15;
  swift_getTupleTypeMetadata2();
  v17 = sub_1CF9E75D8();
  v47 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v51 = (a9 & 0x4400000000) != 0;
  v22 = swift_allocObject();
  v54 = v22;
  v23 = v12;
  v24 = v66;
  *(v22 + 16) = v12;
  *(v22 + 24) = v24;
  v25 = swift_allocObject();
  v53 = v25;
  v26 = v67;
  *(v25 + 16) = v65;
  *(v25 + 24) = v26;
  (*(v18 + 16))(v21, v56, v17);
  v27 = v64;
  (*(v64 + 16))(v16, v57, v14);
  v28 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v27 + 80) + v32 + 20) & ~*(v27 + 80);
  v34 = swift_allocObject();
  v35 = v58;
  *(v34 + 2) = v52;
  v46 = v23;
  *(v34 + 3) = *(v35 + 608);
  *(v34 + 4) = v55;
  *(v34 + 5) = *(v35 + 624);
  *(v34 + 6) = v23;
  v36 = v59;
  *(v34 + 7) = v59;
  (*(v18 + 32))(&v34[v28], v21, v47);
  v38 = v60;
  v37 = v61;
  *&v34[v29] = v60;
  v39 = v65;
  *&v34[v30] = v66;
  *&v34[v31] = v37;
  v40 = &v34[v32];
  v41 = v67;
  *v40 = v39;
  *(v40 + 1) = v41;
  v40[16] = BYTE3(v50) & 1;
  v40[17] = v51;
  LOBYTE(v39) = v63;
  v40[18] = v62;
  v40[19] = v39;
  (*(v64 + 32))(&v34[v33], v49, v48);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v42 = v36;
  v43 = type metadata accessor for Continuation();
  v44 = v38;

  sub_1CF92E6B4("handle(reply:strictVersioning:itemUnchanged:error:lastKnownVersion:request:db:result:reason:completion:)", 104, 2u, sub_1CF6598FC, v54, sub_1CF559418, v53, sub_1CF65995C, v34, v43, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF6338F0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *, void, void, void, void), uint64_t a9, char a10, unsigned __int8 a11, unsigned __int8 a12, char a13, uint64_t a14)
{
  v869 = a8;
  v857 = a7;
  *&v876 = a6;
  v851 = a5;
  v866 = a4;
  *&v874 = a3;
  v14 = a2;
  v877 = a1;
  v15 = *a2;
  v16 = *(*a2 + 600);
  v871 = v16;
  v17 = v15[76];
  v18 = v15[77];
  v19 = v15[78];
  *&v884 = v16;
  *(&v884 + 1) = v17;
  *&v885 = v18;
  *(&v885 + 1) = v19;
  v878 = type metadata accessor for ItemReconciliation(0, &v884);
  v865 = *(v878 - 1);
  MEMORY[0x1EEE9AC00](v878);
  v798 = &v769 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v784 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v783 = &v769 - v22;
  v849 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v782 = &v769 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v790 = &v769 - v26;
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v786 = AssociatedTypeWitness;
  *&v884 = AssociatedTypeWitness;
  *(&v884 + 1) = v27;
  v781 = AssociatedConformanceWitness;
  *&v885 = AssociatedConformanceWitness;
  *(&v885 + 1) = v29;
  v30 = type metadata accessor for FileItemVersion(255, &v884);
  v820 = sub_1CF9E75D8();
  v814 = *(v820 - 8);
  MEMORY[0x1EEE9AC00](v820);
  v796 = &v769 - v31;
  v808 = v30;
  v806 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v788 = &v769 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v794 = &v769 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v785 = &v769 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v797 = &v769 - v39;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v855 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v832 = &v769 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v838 = &v769 - v43;
  v44 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v44 - 8);
  v837 = &v769 - v45;
  v816 = sub_1CF9E6118();
  v815 = *(v816 - 8);
  MEMORY[0x1EEE9AC00](v816);
  v807 = &v769 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v805 = &v769 - v48;
  v49 = swift_getAssociatedTypeWitness();
  v826 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v780 = &v769 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v779 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v791 = &v769 - v52;
  v831 = type metadata accessor for SnapshotItem(255, v16, v18, v53);
  v844 = sub_1CF9E75D8();
  v845 = *(v844 - 8);
  MEMORY[0x1EEE9AC00](v844);
  v829 = &v769 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v850 = &v769 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v801 = &v769 - v58;
  v59 = swift_getAssociatedTypeWitness();
  v60 = sub_1CF9E75D8();
  v818 = swift_getTupleTypeMetadata2();
  v804 = *(v818 - 8);
  MEMORY[0x1EEE9AC00](v818);
  v812 = &v769 - v61;
  v827 = v60;
  v819 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v803 = &v769 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v817 = &v769 - v65;
  v863 = v59;
  v862 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v802 = &v769 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v830 = &v769 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v811 = &v769 - v71;
  v848 = type metadata accessor for FileTreeError(0, v16, v18, v72);
  v810 = *(v848 - 8);
  MEMORY[0x1EEE9AC00](v848);
  v846 = &v769 - v73;
  v856 = v49;
  v825 = sub_1CF9E75D8();
  v824 = *(v825 - 8);
  MEMORY[0x1EEE9AC00](v825);
  v799 = &v769 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v823 = &v769 - v76;
  *&v867 = type metadata accessor for ItemReconciliationHalf(0, v17, v19, v77);
  v843 = *(v867 - 8);
  MEMORY[0x1EEE9AC00](v867);
  v822 = &v769 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v833 = &v769 - v80;
  *&v884 = v16;
  *(&v884 + 1) = v17;
  v860 = v17;
  *&v885 = v18;
  *(&v885 + 1) = v19;
  v858 = v19;
  v854 = type metadata accessor for ReconciliationMutation(0, &v884);
  v853 = *(v854 - 8);
  MEMORY[0x1EEE9AC00](v854);
  v792 = &v769 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  *&v870 = &v769 - v83;
  v868 = v18;
  v842 = type metadata accessor for ItemReconciliationHalf(0, v16, v18, v84);
  v841 = *(v842 - 8);
  MEMORY[0x1EEE9AC00](v842);
  v840 = &v769 - v85;
  v875 = sub_1CF9E75D8();
  v86 = *(v875 - 8);
  MEMORY[0x1EEE9AC00](v875);
  v800 = &v769 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v769 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v809 = &v769 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v769 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v847 = &v769 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v839 = &v769 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v769 - v101;
  MEMORY[0x1EEE9AC00](v103);
  v879 = &v769 - v104;
  v859 = TupleTypeMetadata2;
  v861 = sub_1CF9E75D8();
  v105 = *(v861 - 8);
  MEMORY[0x1EEE9AC00](v861);
  v813 = &v769 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  MEMORY[0x1EEE9AC00](v108);
  v787 = &v769 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v793 = &v769 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v778 = &v769 - v113;
  MEMORY[0x1EEE9AC00](v114);
  MEMORY[0x1EEE9AC00](v115);
  v836 = &v769 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v835 = &v769 - v118;
  MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v120);
  v122 = (&v769 - v121);
  v125 = MEMORY[0x1EEE9AC00](v123);
  v126 = (&v769 - v124);
  v127 = *(v14 + 136);
  v852 = v105;
  v873 = v86;
  v795 = v128;
  v789 = v129;
  v821 = v95;
  v834 = v130;
  if ((v127 & 1) == 0)
  {
    LODWORD(v828) = 0;
    v131 = v877;
LABEL_9:
    v134 = v876;
    goto LABEL_10;
  }

  if (v874)
  {
    v131 = v877;
    if (v851)
    {
      LODWORD(v828) = [v851 requestedExtent] != -1;
    }

    else
    {
      LODWORD(v828) = 0;
    }

    goto LABEL_9;
  }

  v773 = v90;
  v864 = v14;
  v132 = v861;
  v828 = *(v105 + 16);
  v828(&v769 - v124, v866, v861, v125);
  v133 = v859;
  v851 = v855[6];
  if ((v851)(v126, 1, v859) == 1)
  {
    (*(v105 + 8))(v126, v132);
LABEL_19:
    LODWORD(v828) = 0;
    v131 = v877;
    v14 = v864;
    v134 = v876;
    v90 = v773;
    goto LABEL_10;
  }

  v169 = v126[1];
  v884 = *v126;
  v885 = v169;
  v170 = v126[3];
  v886 = v126[2];
  v887 = v170;
  sub_1CF1AE25C(&v884);
  v171 = v887;
  v172 = v126 + *(v133 + 48);
  v777 = *(v849 + 8);
  v777(v172, v871);
  if (v171 == 1)
  {
    goto LABEL_19;
  }

  v203 = v861;
  (v828)(v122, v866, v861);
  v204 = (v851)(v122, 1, v133);
  v90 = v773;
  if (v204 == 1)
  {
    (*(v852 + 8))(v122, v203);
LABEL_56:
    v131 = v877;
    v14 = v864;
    v134 = v876;
LABEL_57:
    LODWORD(v828) = 1;
    goto LABEL_10;
  }

  v241 = v122[1];
  v880 = *v122;
  v881 = v241;
  v242 = v122[3];
  v882 = v122[2];
  v883 = v242;
  sub_1CF1AE25C(&v880);
  v243 = *(v133 + 48);
  if (v883)
  {
    v777(v122 + v243, v871);
    goto LABEL_56;
  }

  v308 = v882;
  v777(v122 + v243, v871);
  v309 = v308 == -1;
  v131 = v877;
  v14 = v864;
  v134 = v876;
  if (!v309)
  {
    goto LABEL_57;
  }

  LODWORD(v828) = 0;
LABEL_10:
  v135 = v131[3];
  v136 = v131[4];
  v137 = __swift_project_boxed_opaque_existential_1(v131, v135);
  v138 = *(v134 + 16);
  v139 = *(*v14 + 576);
  v140 = *(v136 + 8);
  v141 = v879;
  v142 = v872;
  sub_1CF68DDB0(&v139[v14], v137, v135, v140, v879);
  if (v142)
  {
    return;
  }

  v770 = v138;
  v864 = v14;
  v143 = v141;
  v144 = v131;
  v851 = v139;
  v872 = 0;
  v771 = a11;
  v772 = a9;
  v145 = v873;
  v146 = *(v873 + 16);
  v775 = v873 + 16;
  v774 = v146;
  v146(v102, v143, v875);
  v147 = v865;
  v148 = *(v865 + 48);
  v149 = v878;
  v777 = (v865 + 48);
  v776 = v148;
  v150 = v148(v102, 1, v878);
  v773 = v90;
  if (v150 == 1)
  {
    (*(v145 + 8))(v102, v875);
    v151 = v874;
    v152 = v879;
    v153 = v870;
    v154 = v867;
  }

  else
  {
    v155 = v841;
    v156 = v840;
    v157 = v842;
    (*(v841 + 16))(v840, v102, v842);
    (*(v147 + 8))(v102, v149);
    v158 = v156[*(v157 + 52)];
    (*(v155 + 8))(v156, v157);
    v159 = v869;
    v160 = v144;
    v151 = v874;
    v152 = v879;
    v153 = v870;
    v154 = v867;
    if (!v158)
    {
      goto LABEL_26;
    }
  }

  if (sub_1CF056558())
  {
    goto LABEL_15;
  }

  v167 = v839;
  v774(v839, v152, v875);
  v168 = v878;
  if (v776(v167, 1, v878) == 1)
  {
    (*(v145 + 8))(v167, v875);
  }

  else
  {
    v173 = v168;
    v174 = v167[*(v168 + 14)];
    (*(v865 + 8))(v167, v173);
    if (v174 == 2)
    {
LABEL_15:
      v161 = v871;
      *&v884 = v871;
      *(&v884 + 1) = v860;
      v162 = v868;
      *&v885 = v868;
      *(&v885 + 1) = v858;
      type metadata accessor for JobResult(0, &v884);
      v163 = v863;
      v164 = swift_getAssociatedConformanceWitness();
      v165 = v856;
      v166 = swift_getAssociatedConformanceWitness();
      *&v884 = v163;
LABEL_24:
      *(&v884 + 1) = v165;
      *&v885 = v164;
      *(&v885 + 1) = v166;
      type metadata accessor for ReconciliationID(255, &v884);
      v177 = 2;
LABEL_25:
      type metadata accessor for ReconciliationSideMutation(255, v161, v162, v176);
      v178 = *(swift_getTupleTypeMetadata2() + 48);
      v153 = v870;
      (*(v862 + 16))(v870, &v851[v864], v163);
      swift_storeEnumTagMultiPayload();
      *(v153 + v178) = v177;
      swift_storeEnumTagMultiPayload();
      v179 = v854;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v857, v153);
      (*(v853 + 8))(v153, v179);
      v152 = v879;
      v160 = v877;
      v159 = v869;
      v145 = v873;
      v151 = v874;
      v154 = v867;
LABEL_26:
      if (v151)
      {
LABEL_27:
        v180 = v847;
        v774(v847, v152, v875);
        v181 = v878;
        if (v776(v180, 1, v878) == 1)
        {
          v182 = v153;
          (*(v145 + 8))(v180, v875);
          goto LABEL_32;
        }

        v183 = v843;
        v184 = *v843->tree;
        v185 = v833;
        v184(v833, &v180[*(v181 + 52)], v154);
        v186 = v180;
        v187 = *(v865 + 8);
        v187(v186, v181);
        v188 = v185[*(v154 + 44)];
        v189 = v154;
        v192 = *v183->_anon_8;
        anon_8 = v183->_anon_8;
        v191 = v192;
        v192(v185, v189);
        if (v188)
        {
          v145 = v873;
          v159 = v869;
          v152 = v879;
          v182 = v870;
LABEL_31:
          v151 = v874;
LABEL_32:
          *&v880 = v151;
          v193 = v151;
          v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          v195 = v846;
          v196 = v848;
          if (!swift_dynamicCast())
          {
            goto LABEL_129;
          }

          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 4)
          {
            if (EnumCaseMultiPayload != 5)
            {
              if (EnumCaseMultiPayload != 21)
              {
                if (EnumCaseMultiPayload == 23)
                {
                  v198 = v809;
                  v774(v809, v152, v875);
                  if (v776(v198, 1, v181) == 1)
                  {
                    (*(v145 + 8))(v198, v875);
                  }

                  else
                  {
                    v455 = v181;
                    v456 = sub_1CF07CD80(v181);
                    v457 = *(v865 + 8);
                    v865 += 8;
                    v457(v198, v455);
                    if (!v456)
                    {
                      v545 = v773;
                      v774(v773, v879, v875);
                      if (v776(v545, 1, v455) == 1)
                      {
                        (*(v145 + 8))(v545, v875);
                      }

                      else
                      {
                        v583 = v841;
                        v584 = v840;
                        v585 = v842;
                        (*(v841 + 16))(v840, v545, v842);
                        v457(v545, v455);
                        v586 = v584[*(v585 + 56)];
                        (*(v583 + 8))(v584, v585);
                        if (!v586)
                        {
                          goto LABEL_123;
                        }
                      }

                      v587 = v862;
                      *&v884 = v871;
                      *(&v884 + 1) = v860;
                      v588 = v868;
                      *&v885 = v868;
                      *(&v885 + 1) = v858;
                      v878 = type metadata accessor for JobResult(0, &v884);
                      v589 = v863;
                      v590 = swift_getAssociatedConformanceWitness();
                      v591 = v856;
                      v592 = swift_getAssociatedConformanceWitness();
                      *&v884 = v589;
                      *(&v884 + 1) = v591;
                      *&v885 = v590;
                      *(&v885 + 1) = v592;
                      type metadata accessor for ReconciliationID(255, &v884);
                      type metadata accessor for ReconciliationSideMutation(255, v871, v588, v593);
                      v594 = *(swift_getTupleTypeMetadata2() + 48);
                      (*(v587 + 16))(v182, &v851[v864], v589);
                      swift_storeEnumTagMultiPayload();
                      *(v182 + v594) = 1;
                      v145 = v873;
                      swift_storeEnumTagMultiPayload();
                      v595 = v854;
                      swift_storeEnumTagMultiPayload();
                      sub_1CF06EB44(v857, v182);
                      (*(v853 + 8))(v182, v595);
                      goto LABEL_165;
                    }
                  }

LABEL_123:
                  v458 = v871;
                  v459 = v860;
                  *&v884 = v871;
                  *(&v884 + 1) = v860;
                  v460 = v868;
                  v461 = v858;
                  *&v885 = v868;
                  *(&v885 + 1) = v858;
                  type metadata accessor for JobResult(0, &v884);
                  *&v884 = v458;
                  *(&v884 + 1) = v459;
                  *&v885 = v460;
                  *(&v885 + 1) = v461;
                  type metadata accessor for Ingestion.FetchItemMetadata(0, &v884);
                  v462 = sub_1CF657094(&v851[v864], v864[15], v864[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
                  sub_1CF803A0C(v857, v462);

LABEL_165:
                  sub_1CF1A91AC(v877, &v884);
                  v869(&v884, 0, 0, 0, v874);
                  sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
                  (*(v145 + 8))(v879, v875);
                  goto LABEL_166;
                }

                goto LABEL_77;
              }

              if (!sub_1CF056558() && (v771 & 1) != 0)
              {
                v277 = fpfs_current_or_default_log();
                v278 = v805;
                sub_1CF9E6128();
                v279 = sub_1CF9E6108();
                v280 = sub_1CF9E7288();
                if (os_log_type_enabled(v279, v280))
                {
                  v281 = swift_slowAlloc();
                  *v281 = 0;
                  _os_log_impl(&dword_1CEFC7000, v279, v280, "download got canceled since we are out of space", v281, 2u);
                  MEMORY[0x1D386CDC0](v281, -1, -1);
                }

                (*(v815 + 8))(v278, v816);
                v282 = v860;
                *&v884 = v871;
                *(&v884 + 1) = v860;
                v283 = v858;
                *&v885 = v868;
                *(&v885 + 1) = v858;
                type metadata accessor for JobResult(0, &v884);
                v284 = v863;
                v285 = swift_getAssociatedConformanceWitness();
                v286 = v856;
                v287 = swift_getAssociatedConformanceWitness();
                *&v884 = v284;
                *(&v884 + 1) = v286;
                *&v885 = v285;
                *(&v885 + 1) = v287;
                type metadata accessor for ReconciliationID(255, &v884);
                type metadata accessor for ReconciliationSideMutation(255, v282, v283, v288);
                v289 = swift_getTupleTypeMetadata2();
                v290 = v870;
                v291 = v870 + *(v289 + 48);
                v292 = v864;
                (*(v862 + 16))(v870, &v851[v864], v284);
                swift_storeEnumTagMultiPayload();
                *v291 = 1280;
                *(v291 + 8) = *(v292 + 15);
                swift_storeEnumTagMultiPayload();
                v293 = v854;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v857, v290);
                (*(v853 + 8))(v290, v293);
                v145 = v873;
                v159 = v869;
                v152 = v879;
              }

              v276 = v877;
              goto LABEL_73;
            }

            v244 = *v195;
            if (sub_1CF056558())
            {
LABEL_66:
              v276 = v877;
LABEL_73:
              sub_1CF1A91AC(v276, &v884);
              v159(&v884, 0, 0, 0, v874);
              sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
LABEL_74:
              (*(v145 + 8))(v152, v875);
LABEL_166:

              return;
            }

            v245 = v877;
            if ((v244 & a10) != 1)
            {
LABEL_65:
              v264 = v860;
              *&v884 = v871;
              *(&v884 + 1) = v860;
              v265 = v858;
              *&v885 = v868;
              *(&v885 + 1) = v858;
              type metadata accessor for JobResult(0, &v884);
              v266 = v863;
              v267 = swift_getAssociatedConformanceWitness();
              v268 = v856;
              v269 = swift_getAssociatedConformanceWitness();
              *&v884 = v266;
              *(&v884 + 1) = v268;
              *&v885 = v267;
              *(&v885 + 1) = v269;
              type metadata accessor for ReconciliationID(255, &v884);
              type metadata accessor for ReconciliationSideMutation(255, v264, v265, v270);
              v271 = swift_getTupleTypeMetadata2();
              v272 = v870;
              v273 = v870 + *(v271 + 48);
              v274 = v864;
              (*(v862 + 16))(v870, &v851[v864], v266);
              swift_storeEnumTagMultiPayload();
              *v273 = 1280;
              *(v273 + 8) = *(v274 + 15);
              swift_storeEnumTagMultiPayload();
              v275 = v854;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v857, v272);
              (*(v853 + 8))(v272, v275);
              v145 = v873;
              v159 = v869;
              v152 = v879;
              goto LABEL_66;
            }

            v246 = v182;
            if (v771)
            {
              v247 = v857;
              (*(*v857 + 168))(0xD000000000000053, 0x80000001CFA55790);
              *&v884 = v871;
              *(&v884 + 1) = v860;
              *&v885 = v868;
              *(&v885 + 1) = v858;
              v878 = type metadata accessor for JobResult(0, &v884);
              v248 = v863;
              v249 = swift_getAssociatedConformanceWitness();
              v250 = v862;
              v251 = v856;
              v252 = swift_getAssociatedConformanceWitness();
              *&v884 = v248;
              *(&v884 + 1) = v251;
              *&v885 = v249;
              *(&v885 + 1) = v252;
              type metadata accessor for ReconciliationID(255, &v884);
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
              v254 = *(TupleTypeMetadata3 + 48);
              v255 = *(TupleTypeMetadata3 + 64);
              (*(v250 + 16))(v246, &v851[v864], v248);
              swift_storeEnumTagMultiPayload();
              *(v246 + v254) = 1;
              v245 = v877;
              *(v246 + v255) = 0;
              v152 = v879;
              v145 = v873;
              v256 = v854;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v247, v246);
              (*(v853 + 8))(v246, v256);
            }

            v257 = v245[3];
            v258 = v245[4];
            v259 = __swift_project_boxed_opaque_existential_1(v245, v257);
            v260 = v799;
            v261 = v872;
            (*(*v770 + 160))(&v851[v864], v259, v257, *(v258 + 8));
            v872 = v261;
            if (v261)
            {
              goto LABEL_74;
            }

            v262 = v826;
            v263 = v856;
            if ((*(v826 + 48))(v260, 1, v856) == 1)
            {
              (*(v824 + 8))(v260, v825);
              goto LABEL_65;
            }

            v712 = *(v262 + 32);
            v877 = (v262 + 32);
            v878 = v712;
            (v712)(v791, v260, v263);
            *&v884 = v871;
            *(&v884 + 1) = v860;
            *&v885 = v868;
            *(&v885 + 1) = v858;
            *&v867 = type metadata accessor for JobResult(0, &v884);
            v713 = v863;
            v714 = swift_getAssociatedConformanceWitness();
            v715 = swift_getAssociatedConformanceWitness();
            *&v884 = v713;
            *(&v884 + 1) = v263;
            v716 = v263;
            *&v885 = v714;
            *(&v885 + 1) = v715;
            type metadata accessor for ReconciliationID(255, &v884);
            v717 = swift_getTupleTypeMetadata3();
            v718 = *(v717 + 48);
            v719 = *(v717 + 64);
            (*(v862 + 16))(v246, &v851[v864], v713);
            swift_storeEnumTagMultiPayload();
            *(v246 + v718) = 2;
            *(v246 + v719) = 0;
            v720 = v854;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v857, v246);
            (*(v853 + 8))(v246, v720);
            *&v870 = *(*(v876 + 40) + 16);
            LOBYTE(v884) = 2;
            v721 = v262;
            v722 = *(v262 + 16);
            v723 = v780;
            v724 = v716;
            v722(v780, v791, v716);
            v725 = (*(v721 + 80) + 48) & ~*(v721 + 80);
            v726 = (v779 + v725 + 7) & 0xFFFFFFFFFFFFFFF8;
            v727 = (v726 + 15) & 0xFFFFFFFFFFFFFFF8;
            v728 = (v727 + 23) & 0xFFFFFFFFFFFFFFF8;
            v729 = (v728 + 15) & 0xFFFFFFFFFFFFFFF8;
            v730 = swift_allocObject();
            v731 = v860;
            v730[2] = v871;
            v730[3] = v731;
            v732 = v858;
            v730[4] = v868;
            v730[5] = v732;
            (v878)(v730 + v725, v723, v724);
            v733 = v870;
            *(v730 + v726) = v876;
            v734 = (v730 + v727);
            v735 = v772;
            *v734 = v869;
            v734[1] = v735;
            *(v730 + v728) = v857;
            *(v730 + v729) = v864;
            v736 = v874;
            *(v730 + ((v729 + 15) & 0xFFFFFFFFFFFFFFF8)) = v874;
            v737 = *(*v733 + 768);
            v738 = v736;

            v739 = v791;
            v737(v791, &v884, sub_1CF659B7C, v730);

            (*(v826 + 8))(v739, v856);
LABEL_197:
            (*(v873 + 8))(v879, v875);
            goto LABEL_166;
          }

          if (!EnumCaseMultiPayload)
          {
            v878 = v194;
            MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
            v294 = v862;
            v295 = v195;
            v296 = v863;
            *&v884 = v863;
            *(&v884 + 1) = v820;
            *&v885 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
            *(&v885 + 1) = v885;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v298 = v871;
            v299 = TupleTypeMetadata[12];

            v300 = v811;
            (*(v294 + 32))(v811, v295, v296);
            v301 = v868;
            v302 = v298;
            swift_getAssociatedConformanceWitness();
            v303 = v864;
            LOBYTE(TupleTypeMetadata) = sub_1CF9E6868();
            (*(v294 + 8))(v300, v296);
            if (TupleTypeMetadata)
            {
              v304 = v860;
              *&v884 = v302;
              *(&v884 + 1) = v860;
              v305 = v858;
              *&v885 = v301;
              *(&v885 + 1) = v858;
              type metadata accessor for JobResult(0, &v884);
              *&v884 = v302;
              *(&v884 + 1) = v304;
              *&v885 = v301;
              *(&v885 + 1) = v305;
              type metadata accessor for Ingestion.FetchItemMetadata(0, &v884);
              v306 = sub_1CF657094(&v851[v303], v303[15], v303[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v857, v306);

              sub_1CF1A91AC(v877, &v884);
              v869(&v884, 0, 0, 0, v874);
              sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v873 + 8))(v879, v875);
              (*(v814 + 8))(&v295[v299], v820);
              goto LABEL_166;
            }

            (*(v814 + 8))(&v295[v299], v820);
            v145 = v873;
            v159 = v869;
            v152 = v879;
LABEL_128:
            v151 = v874;
LABEL_129:

            *&v880 = v151;
            v466 = v151;
            sub_1CF1B7E64();
            if (!swift_dynamicCast())
            {
LABEL_142:

              sub_1CF1A91AC(v877, &v884);
              v159(&v884, 0, 0, 0, v151);
              sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
              v436 = *(v145 + 8);
              v437 = v152;
              goto LABEL_143;
            }

            v467 = v152;
            v468 = v145;
            v469 = v888;
            v470 = [v888 domain];
            v471 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v473 = v472;

            v475 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v481 = v474;
            if (v471 == v475 && v473 == v474)
            {
              v473, v474, v475, v476, v477, v478, v479, v480;
              v481, v482, v483, v484, v485, v486, v487, v488;
            }

            else
            {
              v489 = sub_1CF9E8048();
              v473, v490, v491, v492, v493, v494, v495, v496;
              v481, v497, v498, v499, v500, v501, v502, v503;
              if ((v489 & 1) == 0)
              {
LABEL_141:

                v145 = v468;
                v152 = v467;
                v151 = v874;
                goto LABEL_142;
              }
            }

            v504 = [v469 code];
            if (v504 == *MEMORY[0x1E69671E0])
            {
              v505 = sub_1CF056558();
              v506 = v468;
              v507 = v877;
              if (!v505 && (v771 & 1) != 0)
              {
                v878 = v469;
                v508 = v862;
                v509 = fpfs_current_or_default_log();
                v510 = v807;
                sub_1CF9E6128();
                v511 = sub_1CF9E6108();
                v512 = sub_1CF9E7288();
                if (os_log_type_enabled(v511, v512))
                {
                  v513 = swift_slowAlloc();
                  *v513 = 0;
                  _os_log_impl(&dword_1CEFC7000, v511, v512, "speculative download got canceled by the provider going to update speculative fulfilled", v513, 2u);
                  MEMORY[0x1D386CDC0](v513, -1, -1);
                }

                (*(v815 + 8))(v510, v816);
                *&v884 = v871;
                *(&v884 + 1) = v860;
                *&v885 = v868;
                *(&v885 + 1) = v858;
                type metadata accessor for JobResult(0, &v884);
                v514 = v863;
                v515 = swift_getAssociatedConformanceWitness();
                v516 = v856;
                v517 = swift_getAssociatedConformanceWitness();
                *&v884 = v514;
                *(&v884 + 1) = v516;
                *&v885 = v515;
                *(&v885 + 1) = v517;
                type metadata accessor for ReconciliationID(255, &v884);
                v518 = swift_getTupleTypeMetadata3();
                v519 = *(v518 + 48);
                v520 = *(v518 + 64);
                *&v874 = *(v508 + 16);
                v521 = v870;
                (v874)(v870, &v851[v864], v514);
                swift_storeEnumTagMultiPayload();
                *(v521 + v519) = 1;
                *(v521 + v520) = 0;
                v522 = v854;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v857, v521);
                *&v876 = *(v853 + 8);
                (v876)(v521, v522);
                type metadata accessor for ReconciliationSideMutation(255, v860, v858, v523);
                v524 = v521 + *(swift_getTupleTypeMetadata2() + 48);
                v525 = v864;
                (v874)(v521, &v851[v864], v863);
                swift_storeEnumTagMultiPayload();
                *v524 = 1280;
                *(v524 + 8) = *(v525 + 15);
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v857, v521);
                (v876)(v521, v522);
                v506 = v873;
                v469 = v878;
                v467 = v879;
                v507 = v877;
                v159 = v869;
              }

              sub_1CF1A91AC(v507, &v884);
              v526 = v469;
              v159(&v884, 0, 0, 0, v469);

              sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v506 + 8))(v467, v875);
              goto LABEL_166;
            }

            goto LABEL_141;
          }

          if (EnumCaseMultiPayload != 4)
          {
LABEL_77:
            (*(v810 + 8))(v195, v196);
            v151 = v874;
            goto LABEL_129;
          }

          v878 = v194;
          v218 = v827;
          v219 = v863;
          *&v867 = *(swift_getTupleTypeMetadata2() + 48);
          v220 = v862;
          v221 = v817;
          (*(v862 + 16))(v817, &v851[v864], v219);
          (*(v220 + 56))(v221, 0, 1, v219);
          v222 = *(v818 + 48);
          v223 = v819;
          v224 = v195;
          v225 = v812;
          v865 = *(v819 + 16);
          (v865)(v812, v221, v218);
          v226 = *(v223 + 32);
          v866 = v222;
          v226(&v225[v222], v224, v218);
          v227 = *(v220 + 48);
          if (v227(v225, 1, v219) == 1)
          {
            v228 = *(v223 + 8);
            v228(v221, v218);
            v229 = v227(&v225[v866], 1, v219);
            v230 = v862;
            if (v229 == 1)
            {
              v228(v225, v218);
              v231 = *(v230 + 32);
LABEL_155:
              v553 = v802;
              v554 = v863;
              v231(v802, &v846[v867], v863);
              v555 = v877;
              v556 = v877[3];
              v557 = v877[4];
              v558 = __swift_project_boxed_opaque_existential_1(v877, v556);
              v559 = v801;
              (*(*(v831 - 8) + 56))(v801, 1, 1);
              v560 = v864;
              v561 = v857;
              v562 = v872;
              sub_1CF611904(v559, &v851[v864], 0, 0, 0, v876, v864[15], v864[16], v864[17], v857, v558, v556, v557);
              v872 = v562;
              v563 = v873;
              if (v562)
              {
                (*(v845 + 8))(v559, v844);
                (*(v862 + 8))(v553, v554);
                (*(v563 + 8))(v879, v875);
                goto LABEL_166;
              }

              (*(v845 + 8))(v559, v844);
              v577 = v871;
              v578 = v860;
              *&v884 = v871;
              *(&v884 + 1) = v860;
              v579 = v868;
              v580 = v858;
              *&v885 = v868;
              *(&v885 + 1) = v858;
              v878 = type metadata accessor for JobResult(0, &v884);
              *&v884 = v577;
              *(&v884 + 1) = v578;
              *&v885 = v579;
              *(&v885 + 1) = v580;
              type metadata accessor for Ingestion.FetchItemMetadata(0, &v884);
              v581 = sub_1CF657094(v553, v560[15], v560[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v561, v581);

              sub_1CF1A91AC(v555, &v884);
              v869(&v884, 0, 0, 0, v874);
              sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v862 + 8))(v553, v554);
              goto LABEL_197;
            }
          }

          else
          {
            v463 = v803;
            (v865)(v803, v225, v218);
            v464 = v866;
            if (v227(&v225[v866], 1, v219) != 1)
            {
              v546 = v862;
              v547 = &v225[v464];
              v548 = v218;
              v549 = v830;
              v865 = *(v862 + 32);
              (v865)(v830, v547, v219);
              swift_getAssociatedConformanceWitness();
              v550 = v219;
              LODWORD(v866) = sub_1CF9E6868();
              v551 = v225;
              v465 = *(v546 + 8);
              v465(v549, v550);
              v552 = *(v819 + 8);
              v552(v817, v548);
              v465(v463, v550);
              v552(v551, v548);
              if (v866)
              {
                v231 = v865;
                goto LABEL_155;
              }

              goto LABEL_127;
            }

            (*(v819 + 8))(v817, v218);
            v230 = v862;
            (*(v862 + 8))(v463, v219);
          }

          (*(v804 + 8))(v225, v818);
          v465 = *(v230 + 8);
LABEL_127:
          v465(&v846[v867], v863);
          v145 = v873;
          v152 = v879;
          v159 = v869;
          goto LABEL_128;
        }

        v866 = v187;
        v843 = anon_8;
        v205 = v877[3];
        v859 = v877[4];
        v855 = __swift_project_boxed_opaque_existential_1(v877, v205);
        v206 = v181;
        v861 = *(v876 + 24);
        v207 = v821;
        v774(v821, v879, v875);
        if (v776(v207, 1, v206) == 1)
        {
          __break(1u);
        }

        else
        {
          v852 = v205;
          v208 = v822;
          v209 = v867;
          v184(v822, &v207[*(v206 + 52)], v867);
          (v866)(v207, v206);
          v210 = v823;
          (*(v824 + 16))(v823, v208, v825);
          v191(v208, v209);
          v211 = v210;
          v212 = v826;
          if ((*(v826 + 48))(v210, 1, v856) != 1)
          {
            *&v884 = v860;
            *(&v884 + 1) = v871;
            v213 = v858;
            v214 = v868;
            *&v885 = v858;
            *(&v885 + 1) = v868;
            v215 = type metadata accessor for Materialization.MaterializeItem(0, &v884);
            v216 = v872;
            v217 = (*(*v861 + 320))(v210, v215, 0, v855, v852, *(v859 + 8));
            v872 = v216;
            if (v216)
            {
              (*(v873 + 8))(v879, v875);
              (*(v212 + 8))(v210, v856);
              return;
            }

            v307 = v856;
            (*(v212 + 8))(v211, v856);
            if (v217)
            {
              v159 = v869;
              v145 = v873;
              v182 = v870;
            }

            else
            {
              v528 = v213;
              v529 = v860;
              *&v884 = v871;
              *(&v884 + 1) = v860;
              *&v885 = v214;
              *(&v885 + 1) = v213;
              type metadata accessor for JobResult(0, &v884);
              v530 = v863;
              v531 = swift_getAssociatedConformanceWitness();
              v532 = swift_getAssociatedConformanceWitness();
              *&v884 = v530;
              *(&v884 + 1) = v307;
              *&v885 = v531;
              *(&v885 + 1) = v532;
              type metadata accessor for ReconciliationID(255, &v884);
              type metadata accessor for ReconciliationSideMutation(255, v529, v528, v533);
              v534 = swift_getTupleTypeMetadata2();
              v535 = v870;
              v536 = v870 + *(v534 + 48);
              v537 = v864;
              (*(v862 + 16))(v870, &v851[v864], v530);
              swift_storeEnumTagMultiPayload();
              *v536 = 1280;
              *(v536 + 8) = *(v537 + 15);
              swift_storeEnumTagMultiPayload();
              v538 = v854;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v857, v535);
              v182 = v535;
              (*(v853 + 8))(v535, v538);
              v159 = v869;
              v145 = v873;
            }

            v181 = v878;
            v152 = v879;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_210;
      }

      goto LABEL_84;
    }

    if (v174 == 4)
    {
LABEL_210:
      __break(1u);
      return;
    }
  }

  if ((v864[17] & 1) == 0)
  {
    v161 = v871;
    *&v884 = v871;
    *(&v884 + 1) = v860;
    v162 = v868;
    *&v885 = v868;
    *(&v885 + 1) = v858;
    type metadata accessor for JobResult(0, &v884);
    v175 = v863;
    v164 = swift_getAssociatedConformanceWitness();
    v163 = v175;
    v165 = v856;
    v166 = swift_getAssociatedConformanceWitness();
    *&v884 = v175;
    goto LABEL_24;
  }

  if (v828)
  {
    v161 = v871;
    *&v884 = v871;
    *(&v884 + 1) = v860;
    v162 = v868;
    *&v885 = v868;
    *(&v885 + 1) = v858;
    type metadata accessor for JobResult(0, &v884);
    v199 = v863;
    v200 = swift_getAssociatedConformanceWitness();
    v163 = v199;
    v201 = v856;
    v202 = swift_getAssociatedConformanceWitness();
    *&v884 = v199;
    *(&v884 + 1) = v201;
    *&v885 = v200;
    *(&v885 + 1) = v202;
    type metadata accessor for ReconciliationID(255, &v884);
    v177 = 4;
    goto LABEL_25;
  }

  if (v151)
  {
    *&v884 = v871;
    *(&v884 + 1) = v860;
    v232 = v868;
    *&v885 = v868;
    *(&v885 + 1) = v858;
    v866 = type metadata accessor for JobResult(0, &v884);
    v233 = v863;
    v234 = swift_getAssociatedConformanceWitness();
    v235 = v856;
    v236 = swift_getAssociatedConformanceWitness();
    *&v884 = v233;
    *(&v884 + 1) = v235;
    *&v885 = v234;
    *(&v885 + 1) = v236;
    type metadata accessor for ReconciliationID(255, &v884);
    type metadata accessor for ReconciliationSideMutation(255, v871, v232, v237);
    v238 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v862 + 16))(v153, &v851[v864], v233);
    swift_storeEnumTagMultiPayload();
    *(v153 + v238) = 0;
    swift_storeEnumTagMultiPayload();
    v239 = v854;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v857, v153);
    v240 = v239;
    v151 = v874;
    (*(v853 + 8))(v153, v240);
    v145 = v873;
    v159 = v869;
    v152 = v879;
    goto LABEL_27;
  }

  v310 = v871;
  *&v884 = v871;
  *(&v884 + 1) = v860;
  v311 = v868;
  *&v885 = v868;
  *(&v885 + 1) = v858;
  *&v874 = type metadata accessor for JobResult(0, &v884);
  v312 = v863;
  v313 = swift_getAssociatedConformanceWitness();
  v314 = v856;
  v315 = swift_getAssociatedConformanceWitness();
  *&v884 = v312;
  *(&v884 + 1) = v314;
  *&v885 = v313;
  *(&v885 + 1) = v315;
  type metadata accessor for ReconciliationID(255, &v884);
  type metadata accessor for ReconciliationSideMutation(255, v310, v311, v316);
  v317 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v862 + 16))(v153, &v851[v864], v312);
  swift_storeEnumTagMultiPayload();
  *(v153 + v317) = 2;
  swift_storeEnumTagMultiPayload();
  v318 = v854;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v857, v153);
  (*(v853 + 8))(v153, v318);
  v145 = v873;
  v152 = v879;
  v160 = v877;
LABEL_84:
  v319 = v852;
  v320 = v834;
  v321 = v861;
  v847 = *(v852 + 16);
  v846 = (v852 + 16);
  (v847)(v834, v866, v861);
  v322 = v855;
  v323 = v855[6];
  v324 = v859;
  *&v874 = v855 + 6;
  *&v867 = v323;
  if (v323(v320, 1, v859) == 1)
  {
    (*(v319 + 8))(v320, v321);
    v325 = v837;
    v326 = v871;
    (*(v849 + 56))(v837, 1, 1, v871);
  }

  else
  {
    v327 = v320[1];
    v884 = *v320;
    v885 = v327;
    v328 = v320[3];
    v886 = v320[2];
    v887 = v328;
    sub_1CF1AE25C(&v884);
    v329 = v849;
    v330 = v320 + *(v324 + 48);
    v325 = v837;
    v326 = v871;
    (*(v849 + 32))(v837, v330, v871);
    (*(v329 + 56))(v325, 0, 1, v326);
  }

  v331 = v850;
  LODWORD(v841) = a12;
  sub_1CF06B4E0(v325, v326, v868, v850);
  v332 = v835;
  (v847)(v835, v866, v321);
  if ((v867)(v332, 1, v324) == 1)
  {
    v333 = v152;
    (*(v852 + 8))(v332, v321);
    v843 = 0xEA00000000003E6CLL;
    v334 = 0x696E3A6D6574693CLL;
    v335 = v836;
  }

  else
  {
    v336 = v152;
    v337 = v322;
    (v322[4])(v838, v332, v324);
    *&v884 = 0;
    *(&v884 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x3A6D6574693CLL, 0xE600000000000000);
    v338 = v845;
    v339 = v829;
    v340 = v844;
    (*(v845 + 16))(v829, v331, v844);
    v341 = v831;
    v342 = *(v831 - 8);
    v343 = (*(v342 + 48))(v339, 1, v831);
    v335 = v836;
    if (v343 == 1)
    {
      v344 = 0x3E6C696E3CLL;
      v342 = v338;
      v345 = 0xE500000000000000;
    }

    else
    {
      v340 = v341;
      v344 = sub_1CF06FB20(v341);
      v345 = v346;
    }

    (*(v342 + 8))(v339, v340);
    MEMORY[0x1D3868CC0](v344, v345);
    v345, v347, v348, v349, v350, v351, v352, v353;
    MEMORY[0x1D3868CC0](0x746E65746E6F6320, 0xE90000000000003ALL);
    v354 = v838;
    v355 = *v838;
    *&v880 = 677669222;
    *(&v880 + 1) = 0xE400000000000000;
    v888 = v355;
    v356 = sub_1CF9E7F98();
    v358 = v357;
    MEMORY[0x1D3868CC0](v356);
    v358, v359, v360, v361, v362, v363, v364, v365;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v366 = *(&v880 + 1);
    MEMORY[0x1D3868CC0](v880, *(&v880 + 1));
    v366, v367, v368, v369, v370, v371, v372, v373;
    MEMORY[0x1D3868CC0](0x676E6168636E7520, 0xEB000000003A6465);
    if (v841)
    {
      v374 = 1702195828;
    }

    else
    {
      v374 = 0x65736C6166;
    }

    if (v841)
    {
      v375 = 0xE400000000000000;
    }

    else
    {
      v375 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v374, v375);
    v375, v376, v377, v378, v379, v380, v381, v382;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v843 = *(&v884 + 1);
    v334 = v884;
    v324 = v859;
    (v337[1])(v354, v859);
    v333 = v336;
    v160 = v877;
    v145 = v873;
    v321 = v861;
  }

  (v847)(v335, v866, v321);
  v383 = (v867)(v335, 1, v324);
  v840 = v334;
  if (v383 == 1)
  {
    (*(v852 + 8))(v335, v321);
  }

  else
  {
    v384 = v871;
    v385 = v855;
    v386 = v832;
    (v855[4])(v832, v335, v324);
    v387 = *(v868 + 64);
    v388 = v830;
    v839 = v386 + *(v324 + 48);
    v387(v384, v868);
    v389 = v863;
    swift_getAssociatedConformanceWitness();
    v390 = sub_1CF9E6868();
    v391 = (*(v862 + 8))(v388, v389);
    if ((v390 & 1) == 0)
    {
      if (*v386)
      {
        v438 = *(*(*(v876 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v391);

        v439 = v872;
        sub_1CEFE1894(sub_1CF2B9F78);
        v440 = v864;
        if (v439)
        {
          v441 = v387;

          v872 = 0;
        }

        else
        {
          v872 = 0;
          *(v438 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          v441 = v387;
          if (*(v438 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, ObjectType);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        v441 = v387;
        v440 = v864;
      }

      sub_1CF1A91AC(v877, &v884);
      swift_getWitnessTable();
      v564 = swift_allocError();
      v566 = v565;
      v567 = v863;
      swift_getTupleTypeMetadata2();
      v568 = v862;
      (*(v862 + 16))(v566, &v851[v440], v567);
      (*(v568 + 56))(v566, 0, 1, v567);
      v441(v871, v868);
      swift_storeEnumTagMultiPayload();
      v569 = v843;
      v869(&v884, 0, v840, v843, v564);

      v569, v570, v571, v572, v573, v574, v575, v576;
      sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v845 + 8))(v850, v844);
      (*(v873 + 8))(v879, v875);
      (v855[1])(v832, v859);
      return;
    }

    (v385[1])(v386, v324);
    v333 = v879;
    v160 = v877;
    v145 = v873;
  }

  v392 = v160[3];
  v393 = v160[4];
  v394 = __swift_project_boxed_opaque_existential_1(v160, v392);
  v395 = *(v876 + 32);
  v396 = v872;
  v397 = (*(*v395 + 296))(&v851[v864], v394, v392, *(v393 + 8));
  if (v396)
  {
    v843, v398, v399, v400, v401, v402, v403, v404;
    (*(v845 + 8))(v850, v844);
    (*(v145 + 8))(v333, v875);
    return;
  }

  v872 = 0;
  if (v397)
  {
    if (!sub_1CF056558())
    {
      if (v771)
      {
        *&v884 = v871;
        *(&v884 + 1) = v860;
        *&v885 = v868;
        *(&v885 + 1) = v858;
        type metadata accessor for JobResult(0, &v884);
        v405 = v863;
        v406 = swift_getAssociatedConformanceWitness();
        v407 = v856;
        v408 = swift_getAssociatedConformanceWitness();
        *&v884 = v405;
        *(&v884 + 1) = v407;
        *&v885 = v406;
        *(&v885 + 1) = v408;
        type metadata accessor for ReconciliationID(255, &v884);
        v409 = swift_getTupleTypeMetadata3();
        v410 = *(v409 + 48);
        v411 = *(v409 + 64);
        v412 = v870;
        (*(v862 + 16))(v870, &v851[v864], v405);
        swift_storeEnumTagMultiPayload();
        *(v412 + v410) = 1;
        *(v412 + v411) = 0;
        v413 = v854;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v857, v412);
        (*(v853 + 8))(v412, v413);
      }

      *&v884 = v871;
      *(&v884 + 1) = v860;
      *&v885 = v868;
      *(&v885 + 1) = v858;
      type metadata accessor for JobResult(0, &v884);
      v414 = v863;
      v415 = swift_getAssociatedConformanceWitness();
      v416 = v856;
      v417 = swift_getAssociatedConformanceWitness();
      *&v884 = v414;
      *(&v884 + 1) = v416;
      *&v885 = v415;
      *(&v885 + 1) = v417;
      type metadata accessor for ReconciliationID(255, &v884);
      v418 = swift_getTupleTypeMetadata3();
      v419 = *(v418 + 48);
      v420 = *(v418 + 64);
      v421 = v870;
      (*(v862 + 16))(v870, &v851[v864], v414);
      swift_storeEnumTagMultiPayload();
      *(v421 + v419) = 0;
      *(v421 + v420) = 2;
      v422 = v854;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v857, v421);
      (*(v853 + 8))(v421, v422);
      v333 = v879;
      v145 = v873;
    }

    v424 = v877[3];
    v423 = v877[4];
    v425 = __swift_project_boxed_opaque_existential_1(v877, v424);
    v426 = v851;
    v427 = v850;
    v428 = v872;
    sub_1CF611904(v850, &v851[v864], 0, 0, 0, v876, v864[15], v864[16], v864[17], v857, v425, v424, v423);
    v872 = v428;
    if (v428)
    {
      v843, v429, v430, v431, v432, v433, v434, v435;
      (*(v845 + 8))(v427, v844);
      v436 = *(v145 + 8);
      v437 = v333;
LABEL_143:
      v436(v437, v875);
      return;
    }

    v539 = v808;
    if ((a13 & 1) == 0)
    {
LABEL_171:
      if (v841)
      {
        v617 = v539;
        v618 = v793;
        v619 = v861;
        (v847)(v793, v866, v861);
        v620 = v859;
        if ((v867)(v618, 1, v859) != 1)
        {
          v635 = *(v618 + 1);
          v884 = *v618;
          v885 = v635;
          v636 = *(v618 + 3);
          v886 = *(v618 + 2);
          v887 = v636;
          sub_1CF1AE25C(&v884);
          v637 = *(v620 + 48);
          v638 = v868;
          v639 = v788;
          v640 = v871;
          (*(v868 + 112))(v871, v868);
          (*(v849 + 8))(&v618[v637], v640);
          (*(v806 + 32))(v794, v639, v617);
          *&v880 = v640;
          *(&v880 + 1) = v860;
          *&v881 = v638;
          *(&v881 + 1) = v858;
          v878 = type metadata accessor for JobResult(0, &v880);
          v641 = v863;
          v642 = swift_getAssociatedConformanceWitness();
          v643 = v856;
          v644 = swift_getAssociatedConformanceWitness();
          *&v880 = v641;
          *(&v880 + 1) = v643;
          v645 = v641;
          *&v881 = v642;
          *(&v881 + 1) = v644;
          type metadata accessor for ReconciliationID(255, &v880);
          *&v876 = type metadata accessor for ReconciliationSideMutation(255, v640, v638, v646);
          v871 = swift_getTupleTypeMetadata2();
          v647 = *(v871 + 48);
          v648 = *(v862 + 16);
          v862 += 16;
          v649 = v864;
          v650 = v851;
          v651 = v870;
          v648(v870, &v851[v864], v645);
          swift_storeEnumTagMultiPayload();
          *(v651 + v647) = 8;
          swift_storeEnumTagMultiPayload();
          v652 = v854;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v857, v651);
          *&v874 = *(v853 + 8);
          (v874)(v651, v652);
          v653 = v651 + *(v871 + 48);
          v648(v651, &v650[v649], v645);
          swift_storeEnumTagMultiPayload();
          v654 = v808;
          v655 = swift_getTupleTypeMetadata3();
          v656 = *(v655 + 48);
          v657 = *(v655 + 64);
          v658 = v794;
          (*(v806 + 16))(v653, v794, v654);
          *(v653 + v656) = 1;
          *(v653 + v657) = 0;
          v659 = v845;
          v145 = v873;
          v622 = v879;
          v660 = v877;
          swift_storeEnumTagMultiPayload();
          v661 = v854;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v857, v651);
          (v874)(v651, v661);
          v662 = v869;
          (*(v806 + 8))(v658, v808);
          v663 = v875;
          v664 = v850;
LABEL_195:
          sub_1CF1A91AC(v660, &v884);
          v704 = v843;
          v662(&v884, 0, v840, v843, 0);
          v704, v705, v706, v707, v708, v709, v710, v711;
          sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
          (*(v659 + 8))(v664, v844);
          (*(v145 + 8))(v622, v663);
          return;
        }

        (*(v852 + 8))(v618, v619);
      }

      v621 = v800;
      v622 = v333;
      v623 = v875;
      v774(v800, v333, v875);
      v624 = v878;
      if (v776(v621, 1, v878) == 1)
      {
        (*(v145 + 8))(v621, v623);
      }

      else
      {
        v625 = v865;
        v626 = v798;
        (*(v865 + 32))(v798, v621, v624);
        if (v626[*(v842 + 52)])
        {
          v627 = v863;
          (*(v862 + 16))(v792, &v426[v864], v863);
          v628 = v871;
          v629 = swift_getAssociatedConformanceWitness();
          v630 = v856;
          v631 = swift_getAssociatedConformanceWitness();
          *&v884 = v627;
          *(&v884 + 1) = v630;
          *&v885 = v629;
          *(&v885 + 1) = v631;
          type metadata accessor for ReconciliationID(0, &v884);
          swift_storeEnumTagMultiPayload();
          v632 = v787;
          v633 = v861;
          (v847)(v787, v866, v861);
          v634 = v859;
          if ((v867)(v632, 1, v859) == 1)
          {
            (*(v852 + 8))(v632, v633);
            v876 = xmmword_1CF9FEC40;
            v874 = 0u;
            v870 = 0u;
            v867 = 0u;
          }

          else
          {
            v692 = *v632;
            v876 = *(v632 + 1);
            v874 = v692;
            v693 = *(v632 + 2);
            v867 = *(v632 + 3);
            v870 = v693;
            (*(v849 + 8))(&v632[*(v634 + 48)], v628);
          }

          v663 = v875;
          v694 = v628;
          v662 = v869;
          v695 = v798;
          *&v884 = v694;
          *(&v884 + 1) = v860;
          v696 = v868;
          *&v885 = v868;
          *(&v885 + 1) = v858;
          type metadata accessor for JobResult(0, &v884);
          type metadata accessor for ReconciliationSideMutation(255, v694, v696, v697);
          v698 = swift_getTupleTypeMetadata2();
          v699 = v792;
          v700 = &v792[*(v698 + 48)];
          v701 = v876;
          *v700 = v874;
          *(v700 + 1) = v701;
          v702 = v867;
          *(v700 + 2) = v870;
          *(v700 + 3) = v702;
          *(v700 + 32) = 0;
          swift_storeEnumTagMultiPayload();
          v703 = v854;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v857, v699);
          (*(v853 + 8))(v699, v703);
          (*(v865 + 8))(v695, v878);
          v145 = v873;
          v664 = v850;
          goto LABEL_193;
        }

        (*(v625 + 8))(v626, v624);
      }

      v665 = v795;
      v666 = v861;
      (v847)(v795, v866, v861);
      v667 = v859;
      v668 = (v867)(v665, 1, v859);
      v664 = v850;
      if (v668 != 1)
      {
        v660 = v877;
        v669 = *(v665 + 1);
        v884 = *v665;
        v885 = v669;
        v670 = *(v665 + 3);
        v886 = *(v665 + 2);
        v887 = v670;
        (*(v849 + 8))(&v665[*(v667 + 48)], v871);
        v671 = *(v395[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;

        os_unfair_lock_lock(v671);
        v672 = *(v671 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v671 + 8) = v672;
        v663 = v875;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v672 = sub_1CF1F6AB4(0, *v672->tree + 1, 1, v672, v674, v675, v676, v677);
          *(v671 + 8) = v672;
        }

        v679 = *v672->tree;
        v678 = *v672->tester;
        if (v679 >= v678 >> 1)
        {
          v672 = sub_1CF1F6AB4((v678 > 1), v679 + 1, 1, v672, v674, v675, v676, v677);
          *(v671 + 8) = v672;
        }

        v680 = v884;
        *v672->tree = v679 + 1;
        *(&v672[1].super.isa + v679) = v680;
        os_unfair_lock_unlock(v671);

        sub_1CF1AE25C(&v884);
        v662 = v869;
        v145 = v873;
        goto LABEL_194;
      }

      (*(v852 + 8))(v665, v666);
      v663 = v875;
      v662 = v869;
LABEL_193:
      v660 = v877;
LABEL_194:
      v659 = v845;
      goto LABEL_195;
    }

    v540 = v814;
    v541 = v796;
    v542 = v820;
    (*(v814 + 16))(v796, a14, v820);
    v543 = v539;
    v544 = v806;
    if ((*(v806 + 48))(v541, 1, v543) == 1)
    {
      (*(v540 + 8))(v541, v542);
      v539 = v808;
      goto LABEL_171;
    }

    v596 = v797;
    (*(v544 + 32))(v797, v541, v808);
    v597 = v789;
    v598 = v861;
    (v847)(v789, v866, v861);
    if ((v867)(v597, 1, v859) == 1)
    {
      v599 = *(v544 + 8);
      v539 = v808;
      v599(v596, v808);
      (*(v852 + 8))(v597, v598);
      goto LABEL_171;
    }

    v600 = v597[1];
    v884 = *v597;
    v885 = v600;
    v601 = v597[3];
    v886 = v597[2];
    v887 = v601;
    sub_1CF1AE25C(&v884);
    v602 = v808;
    v603 = *(v849 + 32);
    v604 = v782;
    v603(v782, v597 + *(v859 + 48), v871);
    v603(v790, v604, v871);
    v605 = *(v868 + 112);
    v606 = v785;
    v839 = (v868 + 112);
    v838 = v605;
    (v605)(v871);
    v607 = v784;
    v608 = *(v784 + 16);
    v609 = v783;
    v610 = v786;
    v837 = (v784 + 16);
    v836 = v608;
    (v608)(v783, v606, v786);
    v611 = (v544 + 8);
    v612 = *(v544 + 8);
    v613 = v606;
    v614 = v602;
    v855 = v611;
    v612(v613, v602);
    v615 = v797;
    v616 = sub_1CF9E6868();
    (*(v607 + 8))(v609, v610);
    if (v616)
    {
      (*(v849 + 8))(v790, v871);
      v612(v615, v614);
      v333 = v879;
      v145 = v873;
      v539 = v614;
      goto LABEL_171;
    }

    v878 = v612;
    v740 = v871;
    v741 = v778;
    v742 = v861;
    (v847)(v778, v866, v861);
    v743 = v859;
    if ((v867)(v741, 1, v859) == 1)
    {
      (*(v852 + 8))(v741, v742);
    }

    else
    {
      v744 = *(v741 + 1);
      v880 = *v741;
      v881 = v744;
      v745 = *(v741 + 3);
      v882 = *(v741 + 2);
      v883 = v745;
      v746 = (*(v849 + 8))(&v741[*(v743 + 48)], v740);
      if (v880)
      {
        v747 = *(*(*(v876 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v746);

        v748 = v872;
        sub_1CEFE1894(sub_1CF2B9F78);
        if (v748)
        {

          sub_1CF1AE25C(&v880);
          v872 = 0;
        }

        else
        {
          v872 = 0;
          *(v747 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          if (*(v747 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            v749 = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, v749);
            sub_1CF1AE25C(&v880);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1CF1AE25C(&v880);
          }
        }
      }

      else
      {
        sub_1CF1AE25C(&v880);
      }
    }

    sub_1CF1A91AC(v877, &v880);
    swift_getWitnessTable();
    v877 = swift_allocError();
    v751 = v750;
    v752 = v786;
    v753 = *(swift_getTupleTypeMetadata2() + 48);
    v754 = v836;
    (v836)(v751, v797, v752);
    v755 = v785;
    v756 = v790;
    (v838)(v871, v868);
    v754(v751 + v753, v755, v752);
    v757 = v755;
    v758 = v808;
    v759 = v878;
    (v878)(v757, v808);
    swift_storeEnumTagMultiPayload();
    v760 = v843;
    v761 = v877;
    v869(&v880, 0, v840, v843, v877);
    v760, v762, v763, v764, v765, v766, v767, v768;

    sub_1CEFCCC44(&v880, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v849 + 8))(v756, v871);
    v759(v797, v758);
    (*(v845 + 8))(v850, v844);
    (*(v873 + 8))(v879, v875);
  }

  else
  {
    v442 = v877;
    v443 = v813;
    v444 = v861;
    (v847)(v813, v866, v861);
    v445 = v859;
    if ((v867)(v443, 1, v859) == 1)
    {
      (*(v852 + 8))(v443, v444);
      v446 = v875;
      v447 = v864;
      v448 = v860;
      v449 = v843;
    }

    else
    {
      v450 = *(v443 + 1);
      v884 = *v443;
      v885 = v450;
      v451 = *(v443 + 3);
      v886 = *(v443 + 2);
      v887 = v451;
      v452 = (*(v849 + 8))(&v443[*(v445 + 48)], v871);
      v446 = v875;
      v447 = v864;
      v448 = v860;
      v449 = v843;
      if (v884)
      {
        v453 = *(*(*(v876 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v452);

        v454 = v872;
        sub_1CEFE1894(sub_1CF2B9F78);
        if (v454)
        {

          sub_1CF1AE25C(&v884);
          v872 = 0;
        }

        else
        {
          v872 = 0;
          *(v453 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          if (*(v453 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            v582 = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, v582);
            sub_1CF1AE25C(&v884);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1CF1AE25C(&v884);
          }
        }
      }

      else
      {
        sub_1CF1AE25C(&v884);
      }
    }

    v681 = v871;
    *&v884 = v871;
    *(&v884 + 1) = v448;
    v682 = v868;
    v683 = v858;
    *&v885 = v868;
    *(&v885 + 1) = v858;
    type metadata accessor for JobResult(0, &v884);
    *&v884 = v681;
    *(&v884 + 1) = v448;
    *&v885 = v682;
    *(&v885 + 1) = v683;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v884);
    v684 = sub_1CF657094(&v851[v447], v447[15], v447[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
    sub_1CF803A0C(v857, v684);

    sub_1CF1A91AC(v442, &v884);
    v869(&v884, 0, v840, v449, 0);
    v449, v685, v686, v687, v688, v689, v690, v691;
    sub_1CEFCCC44(&v884, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v845 + 8))(v850, v844);
    (*(v873 + 8))(v879, v446);
  }
}

double sub_1CF639DEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v68 = a5;
  v69 = a6;
  v67 = a4;
  v13 = *(*a3 + 104);
  v65 = *(*a3 + 88);
  v66 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v58 - v19;
  v21 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = v23;
    v62 = v22;
    v63 = a7;
    v64 = a8;
    v26 = a1;
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v28 = *(v15 + 16);
    v28(v20, a2, AssociatedTypeWitness);
    v29 = a1;
    v60 = v25;
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E72A8();

    v59 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58[1] = a3;
      v33 = v32;
      v58[0] = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70 = v34;
      *v33 = 136315394;
      v28(v17, v20, AssociatedTypeWitness);
      v35 = *(v15 + 8);
      v35(v20, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v36 = v30;
      v37 = sub_1CF9E7F98();
      v39 = v38;
      v35(v17, AssociatedTypeWitness);
      v40 = sub_1CEFD0DF0(v37, v39, &v70);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v33 + 4) = v40;
      *(v33 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v49;
      v50 = v58[0];
      *v58[0] = v49;
      _os_log_impl(&dword_1CEFC7000, v36, v59, "updateEvictionReason for %s failed with %@", v33, 0x16u);
      sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    else
    {
      (*(v15 + 8))(v20, AssociatedTypeWitness);
    }

    (*(v61 + 8))(v60, v62);
    a7 = v63;
    a8 = v64;
  }

  v51 = swift_allocObject();
  v53 = v67;
  v52 = v68;
  *(v51 + 16) = v67;
  *(v51 + 24) = v52;
  v54 = swift_allocObject();
  v54[2] = v69;
  v54[3] = a7;
  v54[4] = v53;
  v54[5] = v52;
  v54[6] = a8;
  swift_retain_n();

  v55 = a8;
  v56 = type metadata accessor for Continuation();
  sub_1CF92E6B4("handle(reply:strictVersioning:itemUnchanged:error:lastKnownVersion:request:db:result:reason:completion:)", 104, 2u, sub_1CF045408, 0, sub_1CF559418, v51, sub_1CF659C64, v54, v56, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF63A2E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void, void, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v24 = a3;
  v27 = a2;
  v28 = a1;
  v7 = *(*a2 + 88);
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 104);
  v32 = *(*a2 + 80);
  v6 = v32;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v10 = type metadata accessor for ReconciliationMutation(0, &v32);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v23 = type metadata accessor for JobResult(0, &v32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v33 = v15;
  v34 = AssociatedConformanceWitness;
  v35 = v17;
  type metadata accessor for ReconciliationID(255, &v32);
  type metadata accessor for ReconciliationSideMutation(255, v7, v9, v18);
  v19 = &v13[*(swift_getTupleTypeMetadata2() + 48)];
  v20 = v24;
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, v24 + *(*v24 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v19 = 1280;
  *(v19 + 8) = *(v20 + 120);
  swift_storeEnumTagMultiPayload();
  v21 = v25;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v27, v13);
  (*(v26 + 8))(v13, v21);
  sub_1CF1A91AC(v28, &v32);
  v31(&v32, 0, 0, 0, v29);
  return sub_1CEFCCC44(&v32, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF63A5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v146 = a7;
  v147 = a8;
  v141 = a5;
  v142 = a6;
  v143 = a3;
  v140 = a1;
  v12 = *v8;
  v13 = v12[75];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1CF9E75D8();
  v136 = *(v14 - 8);
  v137 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v101[-v15];
  v16 = v12[76];
  v17 = v12[78];
  v19 = type metadata accessor for SnapshotItem(255, v16, v17, v18);
  v113 = sub_1CF9E75D8();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v101[-v20];
  v115 = v19;
  v114 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v101[-v22];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = sub_1CF9E75D8();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v101[-v24];
  v120 = AssociatedTypeWitness;
  v124 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v101[-v26];
  v27 = v12[77];
  *&v28 = v27;
  v131 = v17;
  *(&v28 + 1) = v17;
  *&v29 = v13;
  v130 = v16;
  *(&v29 + 1) = v16;
  v148 = v29;
  v149 = v28;
  v30 = type metadata accessor for ItemReconciliation(255, &v148);
  v119 = sub_1CF9E75D8();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v128 = &v101[-v31];
  v127 = v30;
  v126 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v123 = &v101[-v33];
  v34 = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v129 = v13;
  v37 = swift_getAssociatedConformanceWitness();
  *&v148 = v34;
  *(&v148 + 1) = v35;
  *&v149 = AssociatedConformanceWitness;
  *(&v149 + 1) = v37;
  v133 = type metadata accessor for FileItemVersion(255, &v148);
  v145 = sub_1CF9E75D8();
  v139 = *(v145 - 8);
  v38 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v138 = &v101[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v101[-v41];
  v43 = v12;
  v44 = *(v9 + 17);
  v144 = a2;
  v45 = *(a2 + 32);
  v46 = v147;
  v47 = v43[72];
  v48 = *(*v45 + 656);
  v132 = a4;
  v49 = a4;
  v50 = v146;
  v48(&v9[v47], v49, v40);
  v109 = v44;
  v110 = v42;
  v108 = v27;
  v51 = v132;
  (*(*v45 + 664))(&v148, &v9[v47], v132, v50, v46);
  v107 = v47;
  if (BYTE8(v148) == 4)
  {
    v52 = 0;
  }

  else
  {
    v52 = BYTE8(v148);
  }

  if (BYTE8(v148) == 4)
  {
    v53 = 0;
  }

  else
  {
    v53 = v148;
  }

  v106 = v45;
  v54 = sub_1CF056558();
  v55 = 0;
  v56 = v140;
  if (!v54)
  {
    v57 = v109;
    if (!v140)
    {
      goto LABEL_23;
    }

    v58 = v140;
    if ([v58 requestedExtent] == -1)
    {

      v55 = 0;
      goto LABEL_23;
    }

    v103 = v58;
    v59 = v128;
    sub_1CF68DDB0(&v9[v107], v51, v146, v147, v128);
    v102 = v52;
    v60 = v126;
    v61 = v127;
    v62 = (*(v126 + 48))(v59, 1, v127);
    if (v62 == 1)
    {

      (*(v118 + 8))(v59, v119);
      v55 = 0;
    }

    else
    {
      v63 = v123;
      (*(v60 + 32))(v123, v59, v61);
      v64 = v125;
      (*(v121 + 16))(v125, &v63[*(v61 + 52)], v122);
      v65 = v64;
      v66 = v120;
      if ((*(v124 + 48))(v65, 1, v120) == 1)
      {
        (*(v60 + 8))(v63, v61);

        (*(v121 + 8))(v125, v122);
        v55 = 0;
      }

      else
      {
        v105 = v53;
        v67 = v124;
        v68 = v117;
        (*(v124 + 32))(v117, v125, v66);
        v69 = v116;
        (*(*v144[5] + 240))(v68, 1, v51, v146, v147);

        v70 = v114;
        v71 = v115;
        if ((*(v114 + 48))(v69, 1, v115) == 1)
        {
          (*(v67 + 8))(v117, v66);
          (*(v126 + 8))(v123, v127);
          (*(v112 + 8))(v69, v113);
          v55 = 0;
        }

        else
        {
          v72 = v67;
          v73 = v111;
          (*(v70 + 32))(v111, v69, v71);
          v74 = &v73[*(v71 + 48)];
          LODWORD(v74) = *&v74[*(type metadata accessor for ItemMetadata(0) + 108)] > 0;
          (*(v70 + 8))(v73, v71);
          (*(v72 + 8))(v117, v66);
          (*(v126 + 8))(v123, v127);
          v55 = 8 * v74;
        }

        v53 = v105;
      }
    }

    LOBYTE(v52) = v102;
  }

  v57 = v109;
LABEL_23:
  v105 = v53;
  v75 = (*(v9 + 17) >> 10) & 0x40 | v55;
  if ((v57 & 0x4400000000) != 0 && v56 == 0)
  {
    v77 = v75 | 0x100;
  }

  else
  {
    v77 = v75;
  }

  v136 = v77;
  v78 = *(v106 + 16);
  LOBYTE(v148) = v52;
  v79 = v144;
  v80 = (*v144)[34];
  v81 = v9;
  v104 = v9;

  v137 = v80(v82);
  v83 = v138;
  v84 = v139;
  v85 = v145;
  (*(v139 + 16))(v138, v110, v145);
  v86 = v56;
  v87 = (*(v84 + 80) + 120) & ~*(v84 + 80);
  v88 = swift_allocObject();
  v89 = v130;
  *(v88 + 16) = v129;
  *(v88 + 24) = v89;
  v90 = v108;
  *(v88 + 32) = v146;
  *(v88 + 40) = v90;
  v91 = v147;
  *(v88 + 48) = v131;
  *(v88 + 56) = v91;
  *(v88 + 64) = v86;
  *(v88 + 72) = v81;
  *(v88 + 80) = (v77 & 8) != 0;
  v92 = v142;
  v93 = v143;
  *(v88 + 88) = v79;
  *(v88 + 96) = v93;
  *(v88 + 104) = v141;
  *(v88 + 112) = v92;
  (*(v84 + 32))(v88 + v87, v83, v85);
  v94 = *(*v78 + 600);
  v95 = v86;
  v96 = v104;

  v97 = &v96[v107];
  v98 = v110;
  v99 = v137;
  v94(v97, &v148, v105, v110, v137, v86, v136, sub_1CF659DB0, v88);

  return (*(v84 + 8))(v98, v145);
}

uint64_t sub_1CF63B53C(uint64_t a1, void *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v61 = a7;
  v62 = a5;
  v64 = a6;
  v60 = a4;
  v55 = a1;
  v56 = a2;
  v10 = *(*a3 + 600);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1CF9E75D8();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v50 - v15;
  v63 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v65[0] = AssociatedTypeWitness;
  v65[1] = v17;
  v65[2] = AssociatedConformanceWitness;
  v65[3] = v19;
  v20 = type metadata accessor for FileItemVersion(255, v65);
  v21 = sub_1CF9E75D8();
  v51 = *(v21 - 8);
  v52 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  v24 = swift_getTupleTypeMetadata2();
  v25 = sub_1CF9E75D8();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v31 = sub_1CF9E8238();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = (&v50 - v33);
  (*(v35 + 16))(&v50 - v33, v55, v31, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v34;
    if (v56)
    {
      v37 = v56;
      if ([v37 requestedExtent] != -1)
      {
        [v37 setSelectedForMaterialization_];
      }
    }

    (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
    (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
    v38 = v63[17];
    v39 = v36;
    sub_1CF6333DC(v30, v60 & 1, 0, v36, v23, 0, v62, v64, v38, v61, v59);

    (*(v51 + 8))(v23, v52);
    return (*(v57 + 8))(v30, v58);
  }

  else
  {
    v41 = v53;
    v42 = v50;
    (*(v53 + 32))(v50, v34, v11);
    (*(v41 + 16))(v13, v42, v11);
    v43 = TupleTypeMetadata2;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      (*(v41 + 8))(v13, v11);
      v44 = 1;
    }

    else
    {
      v45 = *(v43 + 48);
      v46 = *(v24 + 48);
      v47 = *(v13 + 1);
      *v27 = *v13;
      *(v27 + 1) = v47;
      v48 = *(v13 + 3);
      *(v27 + 2) = *(v13 + 2);
      *(v27 + 3) = v48;
      (*(*(v10 - 8) + 32))(&v27[v46], &v13[v45], v10);
      v44 = 0;
    }

    (*(*(v24 - 8) + 56))(v27, v44, 1, v24);
    v49 = sub_1CF6333DC(v27, v60 & 1, 0, 0, a9, v56, v62, v64, v63[17], v61, v59);
    (*(v57 + 8))(v27, v58, v49);
    return (*(v41 + 8))(v42, v11);
  }
}

uint64_t sub_1CF63BC0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v74) = a8;
  v73 = a7;
  v85 = a5;
  v78 = a4;
  v83 = a3;
  v87 = a2;
  v81 = a1;
  v82 = a11;
  v79 = *v11;
  v13 = *(v79 + 616);
  v75 = *(v79 + 600);
  v14 = v11;
  v84 = a9;
  v80 = a10;
  v76 = v13;
  *&v96 = swift_getAssociatedTypeWitness();
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  *&v97 = swift_getAssociatedConformanceWitness();
  *(&v97 + 1) = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion(255, &v96);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v86 = *(TupleTypeMetadata3 - 8);
  v17 = v86;
  v18 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v64 - v23);
  v25 = *v78;
  v26 = a6[1];
  v93[0] = *a6;
  v93[1] = v26;
  v27 = a6[3];
  v94 = a6[2];
  v28 = v94;
  v95 = v27;
  *v24 = v93[0];
  v24[1] = v26;
  v24[2] = v28;
  v24[3] = v27;
  v29 = &v64 - v23;
  v31 = *(v30 + 48);
  v77 = v15;
  v78 = *(v15 - 8);
  (*(v78 + 16))(&v64 + v31 - v23, v73, v15);
  v32 = v29;
  v29[*(TupleTypeMetadata3 + 64)] = v74;
  v33 = v87;
  v66 = *(*(v87 + 32) + 16);
  v67 = v14;
  v74 = *(*v14 + 576);
  v92 = v25;
  v34 = *(v17 + 16);
  v35 = v32;
  v71 = v32;
  v34(v21);
  v72 = *(TupleTypeMetadata3 + 48);
  v36 = *(TupleTypeMetadata3 + 64);
  v65 = TupleTypeMetadata3;
  v70 = v21;
  LODWORD(v73) = v21[v36];
  v37 = *(v21 + 1);
  v88 = *v21;
  v89 = v37;
  v38 = *(v21 + 3);
  v90 = *(v21 + 2);
  v91 = v38;
  v39 = *(*v33 + 272);
  sub_1CF1AE1DC(v93, &v96);

  v68 = v39(v40);
  v41 = v69;
  (v34)(v69, v35, TupleTypeMetadata3);
  v42 = v86;
  v43 = (*(v86 + 80) + 48) & ~*(v86 + 80);
  v44 = (v18 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v79;
  *(v48 + 2) = v75;
  v50 = v67;
  *(v48 + 3) = *(v49 + 608);
  *(v48 + 4) = v76;
  *(v48 + 5) = *(v49 + 624);
  v51 = *(v42 + 32);
  v52 = v65;
  v51(&v48[v43], v41, v65);
  v53 = v66;
  *&v48[v44] = v87;
  v54 = v81;
  *&v48[v45] = v81;
  *&v48[v46] = v50;
  *&v48[v47] = v83;
  v55 = &v48[(v47 + 15) & 0xFFFFFFFFFFFFFFF8];
  v56 = v82;
  *v55 = v80;
  v55[1] = v56;
  v57 = *(*v53 + 608);
  v58 = v54;

  v59 = v50 + v74;
  v60 = v72;
  v61 = v70;
  v62 = v68;
  v57(v59, &v92, v85, &v88, &v70[v72], v73, v68, v54, v84, sub_1CF659424, v48);

  v96 = v88;
  v97 = v89;
  v98 = v90;
  v99 = v91;
  sub_1CF1AE25C(&v96);
  (*(v86 + 8))(v71, v52);
  return (*(v78 + 8))(&v61[v60], v77);
}

double sub_1CF63C2C0(uint64_t a1, void *a2, void *a3, void (*a4)(char *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v138 = a8;
  v139 = a5;
  v140 = a6;
  v141 = a7;
  v123 = a4;
  v142 = a2;
  v143 = a1;
  v118 = *a3;
  v9 = v118;
  v10 = *(v118 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1CF9E75D8();
  v137 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v115 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v115 - v16;
  v144 = a3;
  v17 = *(v9 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v155 = AssociatedTypeWitness;
  *(&v155 + 1) = v19;
  *&v156 = AssociatedConformanceWitness;
  *(&v156 + 1) = v21;
  v22 = type metadata accessor for FileItemVersion(255, &v155);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v126 = *(TupleTypeMetadata3 - 8);
  v24 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v115 - v27;
  v131 = v22;
  v28 = sub_1CF9E75D8();
  v133 = *(v28 - 8);
  v134 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v115 - v29;
  v127 = v10;
  v128 = swift_getTupleTypeMetadata2();
  v30 = sub_1CF9E75D8();
  v129 = *(v30 - 8);
  v130 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v121 = &v115 - v33;
  v119 = sub_1CF9E5E58();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v35 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v36 = sub_1CF9E8238();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v115 - v38);
  (*(v40 + 16))(&v115 - v38, v143, v36, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v143 = TupleTypeMetadata3;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = v136;
    v47 = v137;
    v49 = (v137[4])(v136, v39, v11);
    v50 = v142;
    v51 = TupleTypeMetadata2;
    if (*v142)
    {
      v52 = *(*(v144[5] + 16) + 136);
      MEMORY[0x1EEE9AC00](v49);

      sub_1CEFE1894(sub_1CF2AF9F4);
      *(v52 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v52 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v50 = v142;
    }

    v55 = v122;
    v123 = v47[2];
    v119 = (v47 + 2);
    v123(v122, v48, v11);
    v56 = *(v51 - 8);
    v57 = *(v56 + 48);
    v120 = (v56 + 48);
    v121 = v57;
    v58 = (v57)(v55, 1, v51);
    v116 = v11;
    if (v58 == 1)
    {
      (v47[1])(v55, v11);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v142 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0xB000000000000000;
    }

    else
    {
      v66 = v51;
      v59 = *v55;
      v60 = *(v55 + 1);
      v67 = v55;
      v61 = *(v55 + 2);
      v65 = *(v55 + 3);
      v62 = *(v55 + 5);
      v142 = *(v55 + 4);
      v63 = *(v55 + 6);
      v64 = *(v67 + 7);
      (*(*(v127 - 8) + 8))(&v67[*(v66 + 48)]);
    }

    (*(v126 + 16))(v25, v50, v143);
    v68 = *v25;
    v69 = *(v25 + 3);
    v167 = *(v25 + 2);
    v70 = *(v25 + 3);
    v164 = *(v25 + 2);
    v165 = v70;
    v166 = v68;
    if (v65 >> 60 == 11)
    {
      if (v69 >> 60 == 11)
      {
        *&v155 = v59;
        *(&v155 + 1) = v60;
        *&v156 = v61;
        *(&v156 + 1) = v65;
        *&v157 = v142;
        *(&v157 + 1) = v62;
        *&v158 = v63;
        *(&v158 + 1) = v64;
        sub_1CEFCCC44(&v155, &unk_1EC4BF260, &unk_1CFA01B60);
        v71 = 1;
LABEL_22:
        v75 = v131;
        v76 = *(v131 - 8);
        (*(v76 + 8))(&v25[*(v143 + 48)], v131);
        v77 = v125;
        v78 = v136;
        v79 = v116;
        v123(v125, v136, v116);
        v80 = TupleTypeMetadata2;
        v81 = (v121)(v77, 1, TupleTypeMetadata2);
        v82 = v128;
        v83 = v137;
        if (v81 == 1)
        {
          (v137[1])(v77, v79);
          v84 = 1;
          v85 = v124;
        }

        else
        {
          v86 = *(v80 + 48);
          v87 = *(v128 + 48);
          v88 = *(v77 + 1);
          v85 = v124;
          *v124 = *v77;
          *(v85 + 1) = v88;
          v89 = *(v77 + 3);
          *(v85 + 2) = *(v77 + 2);
          *(v85 + 3) = v89;
          (*(*(v127 - 8) + 32))(&v85[v87], &v77[v86]);
          v84 = 0;
        }

        (*(*(v82 - 8) + 56))(v85, v84, 1, v82);
        v90 = v132;
        (*(v76 + 56))(v132, 1, 1, v75);
        v91 = sub_1CF6333DC(v85, 0, v71 & 1, 0, v90, 0, v144, v140, *(v139 + 136), v141, v138);
        (*(v133 + 8))(v90, v134, v91);
        (*(v129 + 8))(v85, v130);
        (v83[1])(v78, v79);
        return result;
      }
    }

    else
    {
      *&v155 = v59;
      *(&v155 + 1) = v60;
      *&v156 = v61;
      *(&v156 + 1) = v65;
      *&v157 = v142;
      *(&v157 + 1) = v62;
      *&v158 = v63;
      *(&v158 + 1) = v64;
      v151 = v155;
      v152 = v156;
      v153 = v157;
      v154 = v158;
      if (v69 >> 60 != 11)
      {
        v147 = *v25;
        v72 = *(v25 + 2);
        v73 = *(v25 + 3);
        v149 = *(v25 + 2);
        v150 = v73;
        *&v148 = v72;
        *(&v148 + 1) = v69;
        sub_1CEFCCBDC(&v155, v146, &unk_1EC4BF260, &unk_1CFA01B60);
        v74 = v59;
        v71 = _s18FileProviderDaemon15CapturedContentV2eeoiySbAC_ACtFZ_0(&v151, &v147);
        v145[0] = v147;
        v145[1] = v148;
        v145[2] = v149;
        v145[3] = v150;
        sub_1CF1AE25C(v145);
        v146[0] = v151;
        v146[1] = v152;
        v146[2] = v153;
        v146[3] = v154;
        sub_1CF1AE25C(v146);
        *&v147 = v74;
        *(&v147 + 1) = v60;
        *&v148 = v61;
        *(&v148 + 1) = v65;
        *&v149 = v142;
        *(&v149 + 1) = v62;
        *&v150 = v63;
        *(&v150 + 1) = v64;
        sub_1CEFCCC44(&v147, &unk_1EC4BF260, &unk_1CFA01B60);
        goto LABEL_22;
      }

      v147 = v155;
      v148 = v156;
      v149 = v157;
      v150 = v158;
      sub_1CEFCCBDC(&v155, v146, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CF1AE25C(&v147);
    }

    *&v155 = v59;
    *(&v155 + 1) = v60;
    *&v156 = v61;
    *(&v156 + 1) = v65;
    *&v157 = v142;
    *(&v157 + 1) = v62;
    *&v158 = v63;
    *(&v158 + 1) = v64;
    v159 = v166;
    v160 = v167;
    v161 = v69;
    v162 = v164;
    v163 = v165;
    sub_1CEFCCC44(&v155, &qword_1EC4BFC68, &unk_1CFA053B8);
    v71 = 0;
    goto LABEL_22;
  }

  v42 = *v39;
  v43 = v142;
  v44 = TupleTypeMetadata3;
  if ((*(v142 + *(TupleTypeMetadata3 + 64)) & 1) == 0 && *v142)
  {
    v45 = v142;
    v137 = &v115;
    v46 = *(*(v144[5] + 16) + 136);
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);

    sub_1CEFE1894(sub_1CF2B9F78);
    *(v46 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v46 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v54 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v54);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v44 = v143;
    v43 = v45;
  }

  v93 = v123;
  if (v123)
  {
    v94 = v43;
    v95 = v123;
    if ([v95 requestedExtent] != -1)
    {
      [v95 setSelectedForMaterialization_];
    }

    v43 = v94;
  }

  *&v155 = v42;
  v96 = v42;
  type metadata accessor for NSFileProviderError(0);
  if (swift_dynamicCast())
  {

LABEL_36:
    v99 = v121;
    (*(*(v128 - 8) + 56))(v121, 1, 1);
    v100 = v132;
    (*(*(v131 - 8) + 56))(v132, 1, 1);
    v101 = *(v139 + 136);
    v102 = v42;
    sub_1CF6333DC(v99, 0, 0, v42, v100, 0, v144, v140, v101, v141, v138);

    (*(v133 + 8))(v100, v134);
    (*(v129 + 8))(v99, v130);
    return result;
  }

  *&v155 = v42;
  v97 = v42;
  v98 = v119;
  if (swift_dynamicCast())
  {
    (*(v117 + 8))(v35, v98);
    goto LABEL_36;
  }

  v103 = swift_allocObject();
  v143 = v103;
  v104 = v138;
  *(v103 + 16) = v141;
  *(v103 + 24) = v104;
  v105 = v126;
  (*(v126 + 16))(v120, v43, v44);
  v106 = (*(v105 + 80) + 80) & ~*(v105 + 80);
  v107 = (v24 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  *(v108 + 2) = v127;
  v109 = v118;
  *(v108 + 3) = *(v118 + 88);
  *(v108 + 4) = v17;
  v110 = v139;
  *(v108 + 5) = *(v109 + 104);
  *(v108 + 6) = v110;
  v111 = v144;
  *(v108 + 7) = v93;
  *(v108 + 8) = v111;
  *(v108 + 9) = v140;
  (*(v105 + 32))(&v108[v106], v120, v44);
  v112 = &v108[v107];
  *v112 = v141;
  *(v112 + 1) = v104;
  v113 = type metadata accessor for Continuation();
  swift_retain_n();
  v114 = v93;

  sub_1CF92E6B4("provideFileFromProvider(for:db:result:kind:expectedFileSize:existingFile:lookupOptions:completion:)", 99, 2u, sub_1CF045408, 0, sub_1CF559418, v143, sub_1CF6595D4, v108, v113, MEMORY[0x1E69E6158]);

  return result;
}

double sub_1CF63D33C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v38 = a5;
  v33 = a2;
  v34 = a4;
  v32 = *a2;
  v31 = *(v32 + 616);
  v10 = *(v32 + 600);
  v39[0] = swift_getAssociatedTypeWitness();
  v39[1] = swift_getAssociatedTypeWitness();
  v39[2] = swift_getAssociatedConformanceWitness();
  v39[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v39);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v27 - v14;
  v16 = a1[4];
  v30 = a1[3];
  v28 = v16;
  v29 = __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v12 + 16))(v15, a6, TupleTypeMetadata3);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v32;
  *(v19 + 2) = v10;
  *(v19 + 3) = *(v20 + 608);
  *(v19 + 4) = v31;
  *(v19 + 5) = *(v20 + 624);
  (*(v12 + 32))(&v19[v17], v15, TupleTypeMetadata3);
  v22 = v34;
  v21 = v35;
  *&v19[v18] = v34;
  v23 = &v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v36;
  *v23 = v21;
  v23[1] = v24;
  v25 = *(v28 + 8);

  sub_1CF63A5FC(v37, v22, v38, v29, sub_1CF659758, v19, v30, v25);

  return result;
}

uint64_t sub_1CF63D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v27 = a4;
  v28 = a8;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v29[0] = swift_getAssociatedTypeWitness();
  v29[1] = swift_getAssociatedTypeWitness();
  v29[2] = swift_getAssociatedConformanceWitness();
  v29[3] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion(255, v29);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v16 = &v24 - v15;
  if (!a5)
  {
    (*(v13 + 16))(v16, a6, TupleTypeMetadata3, v14);
    sub_1CEFE48D8(*(v16 + 2), *(v16 + 3));
    v17 = v16[*(TupleTypeMetadata3 + 64)];
    v18 = (*(*(v11 - 8) + 8))(&v16[*(TupleTypeMetadata3 + 48)], v11);
    if (v17 == 1)
    {
      if (*a6)
      {
        v19 = *(*(a7[5] + 16) + 136);
        MEMORY[0x1EEE9AC00](v18);
        *(&v24 - 4) = v19;
        *(&v24 - 6) = v20;
        *(&v24 - 2) = v21;

        sub_1CEFE1894(sub_1CF2B9F78);
        *(v19 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
        if (*(v19 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
        {
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          MEMORY[0x1D3869790](1, ObjectType);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  return v28(v24, v25, v26, v27, a5, v14);
}

void *sub_1CF63D978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v211 = a7;
  v212 = a8;
  v207 = a3;
  v208 = a6;
  v206 = a5;
  v209 = a1;
  v210 = a4;
  v213 = a2;
  v9 = *v8;
  v10 = *(*v8 + 76);
  v11 = *(*v8 + 78);
  v12 = type metadata accessor for SnapshotItem(255, v10, v11, a4);
  v13 = sub_1CF9E75D8();
  v173 = *(v13 - 8);
  v174 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v155 - v14;
  v175 = v12;
  v176 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v171 = &v155 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v182 = *(v20 - 8);
  v183 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v155 - v21;
  v187 = AssociatedTypeWitness;
  v186 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v184 = &v155 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v179 = AssociatedConformanceWitness;
  v180 = v24;
  *&v225 = v24;
  *(&v225 + 1) = v25;
  v169 = v27;
  v170 = v25;
  *&v226 = AssociatedConformanceWitness;
  *(&v226 + 1) = v27;
  v28 = type metadata accessor for FileItemVersion(255, &v225);
  v193 = sub_1CF9E75D8();
  v189 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v168 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v188 = &v155 - v31;
  v200 = v28;
  v192 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v166 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v155 - v35;
  v205 = v9;
  v36 = *(v9 + 77);
  v37 = *(v9 + 75);
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedConformanceWitness();
  v177 = v40;
  v178 = v38;
  *&v225 = v38;
  *(&v225 + 1) = v39;
  *&v226 = v40;
  *(&v226 + 1) = v41;
  v42 = type metadata accessor for FileItemVersion(255, &v225);
  v197 = sub_1CF9E75D8();
  v195 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v155 - v43;
  v202 = v42;
  v201 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v165 = &v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v194 = &v155 - v47;
  v198 = v37;
  v199 = v36;
  *&v48 = v37;
  v190 = v10;
  v191 = v11;
  *(&v48 + 1) = v10;
  *&v49 = v36;
  *(&v49 + 1) = v11;
  v225 = v48;
  v226 = v49;
  v50 = type metadata accessor for ItemReconciliation(255, &v225);
  v51 = sub_1CF9E75D8();
  v203 = *(v51 - 8);
  v204 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v155 - v52;
  v54 = *(v50 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v155 - v58;
  v60 = *(v205 + 72);
  sub_1CF68DDB0(v214 + v60, v210, v211, v212, v53);
  v158 = v55;
  v159 = v60;
  v205 = &v155 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v59;
  v61 = (*(v54 + 48))(v53, 1, v50);
  v62 = v213;
  if (v61 == 1)
  {
    v203[1](v53, v204);
LABEL_3:
    v63 = v210;
    return sub_1CF63A5FC(v209, v62, v207, v63, v206, v208, v211, v212);
  }

  v65 = *(v54 + 32);
  v66 = v161;
  v160 = v50;
  (v65)(v161, v53, v50);
  v68 = type metadata accessor for ItemReconciliationHalf(0, v198, v199, v67);
  v70 = v195;
  v69 = v196;
  v71 = v197;
  (v195[2])(v196, &v66[*(v68 + 48)], v197);
  v72 = v201;
  if ((*(v201 + 48))(v69, 1, v202) == 1)
  {
    (*(v54 + 8))(v66, v160);
    v70[1](v69, v71);
LABEL_9:
    v63 = v210;
    v62 = v213;
    return sub_1CF63A5FC(v209, v62, v207, v63, v206, v208, v211, v212);
  }

  v203 = v65;
  v204 = v54 + 32;
  v157 = v54;
  v73 = v194;
  v196 = *(v72 + 32);
  v197 = v72 + 32;
  (v196)(v194, v69, v202);
  v74 = v160;
  v75 = &v66[*(v160 + 52)];
  v77 = type metadata accessor for ItemReconciliationHalf(0, v190, v191, v76);
  v79 = v188;
  v78 = v189;
  (*(v189 + 16))(v188, v75 + *(v77 + 48), v193);
  v80 = v192;
  if ((*(v192 + 48))(v79, 1, v200) == 1)
  {
    (*(v72 + 8))(v73, v202);
    (*(v157 + 8))(v161, v74);
    (*(v78 + 8))(v79, v193);
    goto LABEL_9;
  }

  v156 = v77;
  v81 = *(v80 + 32);
  v82 = v185;
  v188 = (v80 + 32);
  v155 = v81;
  v81(v185, v79, v200);
  v83 = v181;
  v84 = v182;
  v85 = v182[2];
  v195 = v75;
  v86 = v183;
  v85(v181, v75, v183);
  v87 = v80;
  v89 = v186;
  v88 = v187;
  v90 = (*(v186 + 48))(v83, 1, v187);
  v62 = v213;
  if (v90 == 1)
  {
    (*(v87 + 8))(v82, v200);
    (*(v201 + 8))(v194, v202);
    (*(v157 + 8))(v161, v160);
    (v84[1])(v83, v86);
    goto LABEL_3;
  }

  (*(v89 + 32))(v184, v83, v88);
  v91 = *(v62 + 40);
  v92 = v177;
  v93 = *(v177 + 48);
  v183 = v91[2];

  v94 = v194;
  v95 = v93(v178, v92);
  v96 = v210;
  if (v95 & 1) != 0 || ((*(v179 + 48))(v180))
  {
    sub_1CF63A5FC(v209, v62, v207, v96, v206, v208, v211, v212);

    (*(v186 + 8))(v184, v187);
    (*(v192 + 8))(v82, v200);
    (*(v201 + 8))(v94, v202);
    return (*(v157 + 8))(v161, v160);
  }

  v97 = v172;
  v98 = v184;
  (*(*v91 + 240))(v184, 1, v96, v211, v212);
  v99 = v160;
  v101 = v175;
  v100 = v176;
  if ((*(v176 + 48))(v97, 1, v175) == 1)
  {
    (*(v173 + 8))(v97, v174);
    sub_1CF63A5FC(v209, v62, v207, v96, v206, v208, v211, v212);

    (*(v186 + 8))(v98, v187);
LABEL_17:
    (*(v192 + 8))(v185, v200);
    (*(v201 + 8))(v194, v202);
    return (*(v157 + 8))(v161, v99);
  }

  v102 = *(v100 + 32);
  v103 = v171;
  v182 = v102;
  v104 = (v102)(v171, v97, v101);
  v105 = v195 + *(v156 + 68);
  v106 = *(v105 + 1);
  v225 = *v105;
  v226 = v106;
  v107 = *(v105 + 3);
  v227 = *(v105 + 2);
  v228 = v107;
  if (((*(*v62 + 152))(v104) & 0x20000) == 0 || *(&v226 + 1) >> 60 == 11) && (WitnessTable = swift_getWitnessTable(), (sub_1CF937C7C(v101, WitnessTable)) || !static FileItemVersion.== infix(_:_:)(&v103[*(v101 + 40)], v185, v180, v170, v179, v169))
  {
    sub_1CF63A5FC(v209, v62, v207, v96, v206, v208, v211, v212);

    (*(v176 + 8))(v103, v101);
    (*(v186 + 8))(v184, v187);
    goto LABEL_17;
  }

  v195 = (*(*v62 + 272))();
  v109 = **(v62 + 32);
  v110 = v214;
  result = (*(v109 + 664))(&v223, v214 + v159, v96, v211, v212);
  v111 = v223;
  if (v224 == 4)
  {
    v111 = 0;
  }

  v210 = v111;
  v112 = *(&v226 + 1);
  if (*(&v226 + 1) >> 60 == 11)
  {
    if (v209)
    {
      v181 = 0;
    }

    else
    {
      v181 = (((*(v110 + 140) & 0x44) != 0) << 8);
    }

    LODWORD(v180) = v224 == 4;
    if (v161[*(v99 + 56)] != 4)
    {
      v119 = v168;
      LOBYTE(v221[0]) = v161[*(v99 + 56)];
      v120 = v103;
      v121 = &v103[*(v101 + 48)];
      v179 = *&v121[*(type metadata accessor for ItemMetadata(0) + 104)];
      v122 = v192;
      v123 = v101;
      v124 = *(v192 + 16);
      v125 = v119;
      v126 = v119;
      v127 = v185;
      v128 = v200;
      v124(v126, v185, v200);
      (*(v122 + 56))(v125, 0, 1, v128);
      v124(v166, v127, v128);
      v129 = v157;
      (*(v157 + 16))(v205, v161, v160);
      v130 = v176;
      (*(v176 + 16))(v167, v120, v123);
      v131 = v201;
      (*(v201 + 16))(v165, v194, v202);
      v132 = (*(v122 + 80) + 112) & ~*(v122 + 80);
      v178 = (v163 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
      v133 = (*(v129 + 80) + v178 + 8) & ~*(v129 + 80);
      v134 = (v158 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
      v135 = (*(v130 + 80) + v134 + 9) & ~*(v130 + 80);
      v136 = (v164 + *(v131 + 80) + v135) & ~*(v131 + 80);
      v177 = (v162 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
      v137 = swift_allocObject();
      v138 = v190;
      *(v137 + 2) = v198;
      *(v137 + 3) = v138;
      v140 = v199;
      v139 = v200;
      *(v137 + 4) = v211;
      *(v137 + 5) = v140;
      v141 = v212;
      v142 = v213;
      *(v137 + 6) = v191;
      *(v137 + 7) = v141;
      v143 = v206;
      v144 = v207;
      *(v137 + 8) = v142;
      *(v137 + 9) = v143;
      v145 = v209;
      v146 = v214;
      *(v137 + 10) = v208;
      *(v137 + 11) = v146;
      *(v137 + 12) = v145;
      *(v137 + 13) = v144;
      v155(&v137[v132], v166, v139);
      v147 = v183;
      *&v137[v178] = v183;
      (v203)(&v137[v133], v205, v160);
      v148 = &v137[v134];
      *v148 = v210;
      v148[8] = v180;
      (v182)(&v137[v135], v167, v175);
      (v196)(&v137[v136], v165, v202);
      v149 = v181;
      *&v137[v177] = v181;
      v150 = *(*v147 + 600);
      v151 = v145;

      v152 = v184;
      v153 = v168;
      v154 = v195;
      v150(v184, v221, v179, v168, v195, v145, v149, sub_1CF659094, v137);

      (*(v189 + 8))(v153, v193);
      (*(v176 + 8))(v171, v175);
      (*(v186 + 8))(v152, v187);
      (*(v192 + 8))(v185, v200);
      (*(v201 + 8))(v194, v202);
      return (*(v157 + 8))(v161, v160);
    }

    goto LABEL_37;
  }

  if (v161[*(v99 + 56)] == 4)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v222 = v161[*(v99 + 56)];
  v113 = v176;
  v114 = v184;
  v115 = v192;
  v116 = v210;
  if (v224 == 4)
  {
    v117 = &v171[*(v101 + 48)];
    v116 = *&v117[*(type metadata accessor for ItemMetadata(0) + 104)];
  }

  v216 = v225;
  v217 = v226;
  v218 = v112;
  v219 = v227;
  v220 = v228;
  v221[0] = v225;
  v221[1] = v226;
  v221[2] = v227;
  v221[3] = v228;
  sub_1CF1AE1DC(v221, &v215);
  v118 = v194;
  sub_1CF63BC0C(v209, v213, v207, &v222, v116, &v216, v194, 1, 0, v206, v208);

  (*(v113 + 8))(v171, v101);
  (*(v186 + 8))(v114, v187);
  (*(v115 + 8))(v185, v200);
  (*(v201 + 8))(v118, v202);
  (*(v157 + 8))(v161, v160);
  return sub_1CEFCCC44(&v225, &unk_1EC4BF260, &unk_1CFA01B60);
}

void sub_1CF63EE60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v66 = a8;
  v74 = a6;
  v75 = a7;
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v76 = a1;
  v61 = *a2;
  v17 = v61[13];
  v70 = a2;
  v18 = v61[11];
  v68 = a16;
  v69 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  *&v77 = AssociatedTypeWitness;
  *(&v77 + 1) = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v78 = AssociatedConformanceWitness;
  *(&v78 + 1) = swift_getAssociatedConformanceWitness();
  v64 = *(&v78 + 1);
  v63 = type metadata accessor for FileItemVersion(0, &v77);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v22 = &v61 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = &v61 - v25;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v26 = sub_1CF9E8238();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v61 - v29;
  (*(v27 + 16))(&v61 - v29, v76, v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v27 + 8))(v30, v26);
LABEL_4:
    v31 = swift_allocObject();
    v32 = v71;
    v33 = v72;
    *(v31 + 16) = v71;
    *(v31 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v69;
    v34[2] = v68;
    v34[3] = v35;
    v36 = v74;
    v34[4] = v73;
    v34[5] = v36;
    v37 = v75;
    v34[6] = v70;
    v34[7] = v37;
    v34[8] = v32;
    v34[9] = v33;
    v38 = type metadata accessor for Continuation();
    swift_retain_n();

    v39 = v36;

    sub_1CF92E6B4("provideWithExistingItem(for:db:result:with:completion:)", 55, 2u, sub_1CF045408, 0, sub_1CF559418, v31, sub_1CF65A0EC, v34, v38, MEMORY[0x1E69E6158]);

    return;
  }

  if ((*(v24 + 48))(v30, 1, TupleTypeMetadata2) == 1)
  {
    goto LABEL_4;
  }

  v40 = v67;
  (*(v24 + 32))(v67, v30, TupleTypeMetadata2);
  (*(v17 + 112))(v18, v17);
  v41 = static FileItemVersion.== infix(_:_:)(v22, v66, AssociatedTypeWitness, v20, AssociatedConformanceWitness, v64);
  v42 = (*(v62 + 8))(v22, v63);
  if (v41)
  {
    v43 = v61[12];
    *&v77 = v61[10];
    *(&v77 + 1) = v18;
    *&v78 = v43;
    *(&v78 + 1) = v17;
    v45 = *(a10 + *(type metadata accessor for ItemReconciliation(0, &v77) + 56));
    if (v45 == 4)
    {
      __break(1u);
    }

    else
    {
      v81[0] = v45;
      if (a12)
      {
        v46 = a13 + *(type metadata accessor for SnapshotItem(0, v18, v17, v44) + 48);
        v47 = *(v46 + *(type metadata accessor for ItemMetadata(0) + 104));
      }

      else
      {
        v47 = a11;
      }

      v49 = *(v40 + 1);
      v77 = *v40;
      v78 = v49;
      v50 = *(v40 + 3);
      v79 = *(v40 + 2);
      v80 = v50;
      sub_1CF63BC0C(v74, v70, v75, v81, v47, &v77, a14, 0, a15, v71, v72);
      (*(v24 + 8))(v40, TupleTypeMetadata2);
    }
  }

  else
  {
    if (*v40)
    {
      v48 = *(a9 + 136);
      MEMORY[0x1EEE9AC00](v42);
      sub_1CEFE1894(sub_1CF2B9F78);
      *(v48 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v48 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    v52 = swift_allocObject();
    v53 = v71;
    v54 = v72;
    *(v52 + 16) = v71;
    *(v52 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v69;
    v55[2] = v68;
    v55[3] = v56;
    v57 = v74;
    v55[4] = v73;
    v55[5] = v57;
    v58 = v75;
    v55[6] = v70;
    v55[7] = v58;
    v55[8] = v53;
    v55[9] = v54;
    v59 = type metadata accessor for Continuation();
    swift_retain_n();

    v60 = v57;

    sub_1CF92E6B4("provideWithExistingItem(for:db:result:with:completion:)", 55, 2u, sub_1CF045408, 0, sub_1CF559418, v52, sub_1CF659CBC, v55, v59, MEMORY[0x1E69E6158]);

    (*(v24 + 8))(v67, TupleTypeMetadata2);
  }
}

void sub_1CF63F66C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v26 = a8;
  v27 = a3;
  v23 = a4;
  v24 = a7;
  v28 = a5;
  v29 = a6;
  v25 = a1;
  v10 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v23;
  v12 = v24;
  v30[0] = AssociatedTypeWitness;
  v30[1] = swift_getAssociatedTypeWitness();
  v30[2] = swift_getAssociatedConformanceWitness();
  v30[3] = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ReconciliationID(0, v30);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v19 = v25;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v22 - v17, &v9[*(v10 + 576)], AssociatedTypeWitness, v16);
  swift_storeEnumTagMultiPayload();
  v20 = *(v26 + 8);
  v21 = (*(*v19 + 504))(v18, v13, v12, v20);
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    [v21 setSelectedForMaterialization_];
  }

  if (*(v19[4] + 32) == 1)
  {
    sub_1CF63D978(v21, v19, v27, v13, v28, v29, v12, v20);
  }

  else
  {
    sub_1CF63A5FC(v21, v19, v27, v13, v28, v29, v12, v20);
  }
}

uint64_t sub_1CF63F984()
{
  sub_1CF655ED8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF63FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = a8;
  v93 = a4;
  v94 = a7;
  v83 = a6;
  v84 = a5;
  v89 = a3;
  v82 = *v8;
  v11 = v82[76];
  v12 = v82[77];
  v13 = v82[78];
  v95 = v82[75];
  v10 = v95;
  v96 = v11;
  v97 = v12;
  v98 = v13;
  v72 = type metadata accessor for PersistenceTrigger(0, &v95);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v62 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = sub_1CF9E75D8();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v62 - v16;
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v62 - v18;
  v95 = v10;
  v96 = v11;
  v97 = v12;
  v98 = v13;
  v87 = type metadata accessor for ReconciliationMutation(0, &v95);
  v92 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v20 = &v62 - v19;
  v73 = a1;
  v85 = *(a1 + 32);
  v95 = v10;
  v96 = v11;
  v97 = v12;
  v98 = v13;
  v88 = type metadata accessor for JobResult(0, &v95);
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v13;
  v81 = v11;
  v23 = swift_getAssociatedConformanceWitness();
  v95 = AssociatedTypeWitness;
  v96 = v21;
  v97 = AssociatedConformanceWitness;
  v98 = v23;
  type metadata accessor for ReconciliationID(255, &v95);
  v77 = v10;
  v78 = v12;
  v25 = type metadata accessor for ReconciliationSideMutation(255, v10, v12, v24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = v82[72];
  v29 = v86 + 16;
  v28 = *(v86 + 16);
  v82 = AssociatedTypeWitness;
  v30 = v90;
  v80 = v28;
  v28(v20, (v90 + v27), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v20[v26] = 0;
  swift_storeEnumTagMultiPayload();
  v31 = v87;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v89, v20);
  v32 = *(v92 + 8);
  v92 += 8;
  v32(v20, v31);
  v33 = v85;
  v34 = *(v91 + 8);
  v35 = ((*v85)[37])(v30 + v27, v93, v94, v34);
  v66 = v34;
  v64 = v29;
  v63 = v32;
  v67 = v27;
  v65 = v25;
  v37 = v81;
  v36 = v82;
  v38 = v90;
  if (v35)
  {
    v39 = v67;
    if (((*v33)[48])(v90 + v67, 1, v93, v94, v66))
    {
      v95 = v77;
      v96 = v37;
      v97 = v78;
      v98 = v76;
      type metadata accessor for Ingestion.FetchItemMetadata(0, &v95);
      v40 = sub_1CF657094(v38 + v39, *(v38 + 120), *(v38 + 128), 16, type metadata accessor for Ingestion.FetchItemMetadata);
      sub_1CF803A0C(v89, v40);
    }

    else
    {
      v46 = v75;
      ((*v33)[36])(v38 + v39, v93, v94, v66);
      v47 = v86;
      v48 = v36;
      if ((*(v86 + 48))(v46, 1, v36) == 1)
      {
        (*(v68 + 8))(v46, v69);
      }

      else
      {
        (*(v47 + 32))(v74, v46, v36);
        v49 = *(swift_getTupleTypeMetadata2() + 48);
        v50 = v70;
        v51 = v80;
        v80(v70, (v38 + v39), v48);
        swift_storeEnumTagMultiPayload();
        v51(&v50[v49], v74, v48);
        swift_storeEnumTagMultiPayload();
        v52 = v72;
        swift_storeEnumTagMultiPayload();
        (*(*v73 + 312))(v50);
        (*(v71 + 8))(v50, v52);
        (*(v86 + 8))(v74, v48);
      }

      v53 = v78;
      v54 = v77;
      v55 = v20;
      if ((*(v38 + 139) & 2) == 0)
      {
        v56 = *(TupleTypeMetadata2 + 48);
        v57 = v67;
        v58 = v89;
        v80(v55, (v38 + v67), v48);
        swift_storeEnumTagMultiPayload();
        *(v55 + v56) = *(v38 + 120);
        swift_storeEnumTagMultiPayload();
        v59 = v87;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v58, v55);
        v63(v55, v59);
        v95 = v54;
        v96 = v81;
        v97 = v53;
        v98 = v76;
        type metadata accessor for Ingestion.MarkParentDeleted(0, &v95);
        v60 = sub_1CF656F74(v38 + v57, *(v38 + 120), *(v38 + 128), *(v38 + 136), sub_1CF052464);
        sub_1CF803A0C(v58, v60);

        (*(*v85[2] + 920))(v61);
      }
    }
  }

  else
  {
    v41 = *(TupleTypeMetadata2 + 48);
    v80(v20, (v90 + v67), v82);
    swift_storeEnumTagMultiPayload();
    *&v20[v41] = *(v38 + 120);
    swift_storeEnumTagMultiPayload();
    v42 = v87;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v89, v20);
    v63(v20, v42);
  }

  v43 = v94;
  v98 = v94;
  v99 = v91;
  v44 = __swift_allocate_boxed_opaque_existential_0(&v95);
  (*(*(v43 - 8) + 16))(v44, v93, v43);
  v84(&v95, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v95, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF6404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1CF656F74(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF640578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF6476BC(a1, a4, *(a5 + 8), a4);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF6405C0(uint64_t a1, void (**a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v123 = a7;
  v124 = a4;
  v113 = a5;
  v114 = a6;
  v101 = a3;
  v104 = a2;
  v12 = *v9;
  v14 = *(*v9 + 608);
  v15 = *(*v9 + 616);
  v16 = *(*v9 + 624);
  v125 = *(*v9 + 600);
  v13 = v125;
  v126 = v14;
  v127 = v15;
  v128 = v16;
  v98 = type metadata accessor for ReconciliationMutation(0, &v125);
  v105 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v86 - v17;
  v125 = v13;
  v126 = v14;
  v100 = v14;
  v127 = v15;
  v128 = v16;
  v99 = v16;
  v18 = type metadata accessor for ItemReconciliation(0, &v125);
  v103 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v86 - v19;
  v21 = type metadata accessor for SnapshotItem(0, v13, v15, v20);
  v121 = *(v21 - 8);
  v122 = v21;
  v22 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v86 - v24;
  v116 = v13;
  v96 = v15;
  v111 = type metadata accessor for ItemReconciliationHalf(0, v13, v15, v25);
  v93 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v102 = &v86 - v26;
  v106 = v18;
  v27 = sub_1CF9E75D8();
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - v31;
  v33 = *(a1 + 32);
  v34 = *(a1 + 16);
  v35 = *(v12 + 576);
  v112 = a8;
  v36 = *(a8 + 8);
  sub_1CF68DDB0(&v35[v9], v124, v123, v36, &v86 - v31);
  v90 = v9;
  v91 = v35;
  v37 = v102;
  v118 = v36;
  v109 = v34;
  v110 = v29;
  v92 = v33;
  v94 = v27;
  v117 = v22;
  v38 = v103;
  v39 = *(v103 + 48);
  v40 = v106;
  v108 = v103 + 48;
  v107 = v39;
  if (v39(v32, 1, v106) == 1)
  {
    v95[1](v32, v94);
    v102 = 0;
  }

  else
  {
    v41 = v93;
    v42 = v111;
    v93[2](v37, v32, v111);
    (*(v38 + 8))(v32, v40);
    v43 = *&v37[*(v42 + 36)];
    (v41[1])(v37, v42);
    v102 = ((v43 >> 1) & 1);
  }

  v44 = v123;
  v45 = v124;
  v46 = v105;
  v47 = ((*v92)[62])(v91 + v90, v104, v124, v123, v118);
  v48 = v117;
  v49 = v47;
  v87 = v50;
  v51 = v122;
  if (sub_1CF9E6DF8())
  {
    v59 = v38;
    v60 = 0;
    v105 = (v121 + 16);
    v104 = (v121 + 32);
    v93 = (v59 + 32);
    v88 = (v46 + 1);
    v91 = (v59 + 8);
    v103 = v121 + 8;
    ++v95;
    v89 = v49;
    while (1)
    {
      v62 = v51;
      v63 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v63)
      {
        v64 = v119;
        result = (*(v121 + 16))(v119, v49 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v60, v62);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v48 != 8)
        {
          goto LABEL_24;
        }

        v125 = result;
        v82 = v119;
        (*v105)(v119, &v125, v62);
        v64 = v82;
        result = swift_unknownObjectRelease();
      }

      v66 = v62;
      v67 = v60 + 1;
      v68 = v120;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      (*v104)(v120, v64, v66);
      v69 = v110;
      sub_1CF68DDB0(v68, v45, v44, v118, v110);
      if (v107(v69, 1, v40) == 1)
      {
        v51 = v122;
        (*v103)(v68, v122);
        (*v95)(v69, v94);
      }

      else
      {
        v70 = v115;
        (*v93)(v115, v69, v40);
        if ((v70[*(v111 + 36)] & 2) != 0)
        {
          v125 = v116;
          v126 = v100;
          v71 = v96;
          v127 = v96;
          v128 = v99;
          v90 = type metadata accessor for JobResult(0, &v125);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v73 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v75 = swift_getAssociatedConformanceWitness();
          v125 = AssociatedTypeWitness;
          v126 = v73;
          v127 = AssociatedConformanceWitness;
          v128 = v75;
          type metadata accessor for ReconciliationID(255, &v125);
          v76 = v71;
          v49 = v89;
          type metadata accessor for ReconciliationSideMutation(255, v116, v76, v77);
          v78 = *(swift_getTupleTypeMetadata2() + 48);
          v79 = v97;
          (*(*(AssociatedTypeWitness - 8) + 16))(v97, v68, AssociatedTypeWitness);
          v44 = v123;
          swift_storeEnumTagMultiPayload();
          *(v79 + v78) = v102;
          v45 = v124;
          swift_storeEnumTagMultiPayload();
          v80 = v98;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v101, v79);
          v81 = v79;
          v40 = v106;
          (*v88)(v81, v80);
          (*v91)(v115, v40);
        }

        else
        {
          (*v91)(v70, v40);
        }

        v51 = v122;
        (*v103)(v68, v122);
      }

      ++v60;
      v61 = v67 == sub_1CF9E6DF8();
      v48 = v117;
      if (v61)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_18:
    v49, v52, v53, v54, v55, v56, v57, v58;
    v83 = v87;
    v84 = v102;
    if (v87)
    {
      v84 = 1;
    }

    if ((v84 & 1) == 0)
    {
      (*(*v92[2] + 920))();
    }

    v128 = v44;
    v129 = v112;
    v85 = __swift_allocate_boxed_opaque_existential_0(&v125);
    (*(*(v44 - 8) + 16))(v85, v45, v44);

    v113(&v125, v83, 0, 0, 0);

    return sub_1CEFCCC44(&v125, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF6411C8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF641298(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v65 = a4;
  v66 = a5;
  v61 = a1;
  v9 = *v6;
  v10 = *(*v6 + 600);
  v62 = *(*v6 + 616);
  v60 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v63 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v64 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = *(a2 + 32);
  v24 = *(v9 + 576);
  v25 = a3;
  v26 = v23;
  v27 = v68;
  (*(*v23 + 288))(&v6[v24], v25, v65, v66, v20);
  if (!v27)
  {
    v65 = v14;
    v66 = v12;
    v28 = v62;
    v68 = 0;
    if ((*(v18 + 48))(v17, 1, v64) == 1)
    {
      (*(v63 + 8))(v17, v66);
      return 0;
    }

    else
    {
      v29 = v18;
      v58 = v22;
      v59 = v18;
      v30 = *(v18 + 32);
      v31 = v22;
      v32 = v64;
      v30(v22, v17, v64);
      v57 = *(v29 + 16);
      v33 = v65;
      v57(v65, v31, v32);
      (*(v29 + 56))(v33, 0, 1, v32);
      v34 = *(*v6 + 632);
      swift_beginAccess();
      (*(v63 + 40))(&v6[v34], v33, v66);
      swift_endAccess();
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v67, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v66 = *(v6 + 15);
      v36 = type metadata accessor for JobLockRule(255, v60, v28, v35);
      sub_1CF9E7FA8();
      v37 = *(*(v36 - 8) + 72);
      swift_allocObject();
      v65 = sub_1CF9E6D68();
      v39 = v38;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v41 = *(TupleTypeMetadata3 + 48);
      v42 = *(TupleTypeMetadata3 + 64);
      v43 = &v6[v24];
      v44 = v57;
      v57(v39, v43, v32);
      v45 = &v39[v41];
      v46 = v58;
      v44(v45, v58, v32);
      v44(&v39[v42], v46, v32);
      swift_storeEnumTagMultiPayload();
      v44(&v39[v37], v46, v32);
      swift_storeEnumTagMultiPayload();
      v47 = sub_1CF045898(v65, v36);
      v26 = sub_1CF052C94(v67, v66, v47, v48);
      v47, v49, v50, v51, v52, v53, v54, v55;
      sub_1CEFCCC44(v67, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v59 + 8))(v46, v32);
    }
  }

  return v26;
}

uint64_t sub_1CF6417CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v92 = a8;
  v93 = a7;
  v89 = a6;
  v88 = a5;
  v91 = a4;
  v79 = a3;
  v90 = a1;
  v10 = *v8;
  v11 = v10[75];
  v12 = v10[77];
  v76 = type metadata accessor for ItemReconciliationHalf(0, v11, v12, a4);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v68 - v13;
  *&v14 = v11;
  *(&v14 + 1) = v10[76];
  *&v15 = v12;
  *(&v15 + 1) = v10[78];
  v102 = v14;
  v103 = v15;
  v16 = type metadata accessor for ItemReconciliation(255, &v102);
  v73 = sub_1CF9E75D8();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v68 - v17;
  v84 = v16;
  v77 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v68 - v19;
  v21 = type metadata accessor for SnapshotItem(255, v11, v12, v20);
  v83 = sub_1CF9E75D8();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v23 = &v68 - v22;
  v81 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v68 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  *&v102 = AssociatedTypeWitness;
  *(&v102 + 1) = v27;
  *&v103 = AssociatedConformanceWitness;
  *(&v103 + 1) = v29;
  v87 = type metadata accessor for FileItemVersion(0, &v102);
  v86 = *(v87 - 8);
  v30 = MEMORY[0x1EEE9AC00](v87);
  v85 = &v68 - v31;
  v32 = *(v90 + 32);
  v33 = v10[72];
  v34 = *(v92 + 8);
  (*(*v32 + 240))(&v9[v33], 1, v91, v93, v34, v30);
  v35 = v82;
  v36 = v83;
  v69 = v9;
  v37 = v84;
  v70 = v33;
  v38 = v81;
  if ((*(v81 + 48))(v23, 1, v21) == 1)
  {
    (*(v35 + 8))(v23, v36);
    v39 = v93;
    *(&v103 + 1) = v93;
    *&v104 = v92;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v102);
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_0, v91, v39);
    v88(&v102, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v102, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v42 = v80;
    (*(v38 + 32))(v80, v23, v21);
    (*(v86 + 16))(v85, &v42[*(v21 + 40)], v87);
    if (sub_1CF056558())
    {
      v43 = v78;
      sub_1CF68DDB0(&v69[v70], v91, v93, v34, v78);
      (*(v38 + 8))(v80, v21);
      v48 = v77;
      v49 = v37;
      v50 = (*(v77 + 48))(v43, 1, v37);
      v51 = v79;
      if (v50 == 1)
      {
        (*(v72 + 8))(v43, v73);
        v102 = 0uLL;
        *&v103 = 0;
        *(&v103 + 1) = 0xB000000000000000;
        v104 = 0u;
        v105 = 0u;
      }

      else
      {
        v52 = v71;
        (*(v48 + 32))(v71, v43, v49);
        v53 = v75;
        v54 = v74;
        v55 = v76;
        (*(v75 + 16))(v74, v52, v76);
        (*(v48 + 8))(v52, v49);
        v56 = &v54[*(v55 + 68)];
        v57 = *(v56 + 1);
        v98 = *v56;
        v99 = v57;
        v58 = *(v56 + 3);
        v100 = *(v56 + 2);
        v101 = v58;
        sub_1CEFCCBDC(&v98, &v94, &unk_1EC4BF260, &unk_1CFA01B60);
        (*(v53 + 8))(v54, v55);
        v102 = v98;
        v103 = v99;
        v104 = v100;
        v105 = v101;
      }

      v45 = v90;
      v46 = v70;
      v47 = v69;
      v44 = v51;
    }

    else
    {
      (*(v38 + 8))(v42, v21);
      v102 = 0uLL;
      *&v103 = 0;
      *(&v103 + 1) = 0xB000000000000000;
      v104 = 0u;
      v105 = 0u;
      v44 = v79;
      v45 = v90;
      v46 = v70;
      v47 = v69;
    }

    v59 = v32[2];
    v60 = *(*v45 + 272);

    v62 = v60(v61);
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;
    v63 = swift_allocObject();
    v64 = v92;
    v63[2] = v93;
    v63[3] = v64;
    v65 = v88;
    v63[4] = v45;
    v63[5] = v65;
    v63[6] = v89;
    v63[7] = v47;
    v63[8] = v44;
    v66 = *(*v59 + 664);
    sub_1CEFCCBDC(&v102, &v98, &unk_1EC4BF260, &unk_1CFA01B60);

    v67 = v85;
    v66(&v47[v46], 1, v85, v62, &v94, sub_1CF658F28, v63);

    sub_1CEFCCC44(&v102, &unk_1EC4BF260, &unk_1CFA01B60);
    v98 = v94;
    v99 = v95;
    v100 = v96;
    v101 = v97;
    sub_1CEFCCC44(&v98, &unk_1EC4BF260, &unk_1CFA01B60);
    return (*(v86 + 8))(v67, v87);
  }
}

double sub_1CF642344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a8;
  v32 = a7;
  v33 = a5;
  v28 = a4;
  v29 = a3;
  v12 = *a2;
  v30 = *(*a2 + 80);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  v31 = v18;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v30;
  *(v21 + 3) = v12[11];
  v22 = v33;
  *(v21 + 4) = v32;
  *(v21 + 5) = v12[12];
  *(v21 + 6) = v12[13];
  v23 = v34;
  *(v21 + 7) = v35;
  *(v21 + 8) = v22;
  *(v21 + 9) = v23;
  (*(v14 + 32))(&v21[v19], v17, v13);
  *&v21[v20] = a2;
  v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  v25 = v28;
  *v24 = v29;
  v24[1] = v25;
  v26 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v31, sub_1CF658F5C, v21, v26, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF642650(void *a1, uint64_t *a2, uint64_t a3, char *a4, void (*a5)(char *, uint64_t), void (*a6)(__int128 *, void, void, void, void *), uint64_t a7)
{
  v117 = a7;
  v118 = a6;
  v115 = a5;
  v125 = a4;
  v116 = *a2;
  v10 = v116;
  v11 = v116[77];
  v12 = v116[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v100 - v15;
  v114 = type metadata accessor for FileTreeError(0, v12, v11, v16);
  v103 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v18 = &v100 - v17;
  v106 = type metadata accessor for SnapshotMutation(0, v12, v11, v19);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v100 - v20;
  v110 = type metadata accessor for SnapshotItem(255, v12, v11, v21);
  v113 = sub_1CF9E75D8();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v100 - v22;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v23 = sub_1CF9E8238();
  v134 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v100 - v24;
  *&v25 = v12;
  v120 = v10[76];
  *(&v25 + 1) = v120;
  v26 = v10;
  v27 = v11;
  v28 = v26[78];
  *&v29 = v27;
  *(&v29 + 1) = v28;
  v128 = v29;
  v129 = v25;
  v136 = v25;
  v137 = v29;
  v30 = type metadata accessor for ReconciliationMutation(0, &v136);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v100 - v31;
  v33 = (a2[17] & 0xA0) == 0;
  v108 = a2[17] & 0xA0;
  v123 = a1;
  v126 = a3;
  v127 = v23;
  v131 = a2;
  v121 = v34;
  v132 = v35;
  v119 = v28;
  if (!v33)
  {
    v136 = v129;
    v137 = v128;
    v107 = type metadata accessor for JobResult(0, &v136);
    v36 = v18;
    v37 = v27;
    v38 = swift_getAssociatedTypeWitness();
    v39 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = swift_getAssociatedConformanceWitness();
    *&v136 = v39;
    *(&v136 + 1) = v38;
    v27 = v37;
    v18 = v36;
    *&v137 = AssociatedConformanceWitness;
    *(&v137 + 1) = v41;
    type metadata accessor for ReconciliationID(255, &v136);
    type metadata accessor for ReconciliationSideMutation(255, v12, v27, v42);
    v43 = &v32[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v122 + 16))(v32, v131 + v116[72], v39);
    swift_storeEnumTagMultiPayload();
    *v43 = xmmword_1CF9FD920;
    v43[16] = 4;
    a1 = v123;
    a3 = v126;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(a3, v32);
    v23 = v127;
    (*(v121 + 8))(v32, v132);
  }

  v116 = v32;
  v44 = v133;
  (*(v134 + 2))(v133, v125, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    v138 = v45;
    v46 = v45;
    v47 = v114;
    if (swift_dynamicCast())
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        (*(v103 + 8))(v18, v47);
      }

      else
      {
        v134 = &v100;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v69 = v18;
        v125 = v99;
        strcpy(v99, " at originalError previousError ");
        v70 = AssociatedTypeWitness;
        *&v136 = AssociatedTypeWitness;
        v71 = swift_getAssociatedTypeWitness();
        v72 = swift_getAssociatedTypeWitness();
        v73 = swift_getAssociatedConformanceWitness();
        v74 = swift_getAssociatedConformanceWitness();
        v132 = v72;
        v133 = v71;
        v135[0] = v71;
        v135[1] = v72;
        v127 = v73;
        v135[2] = v73;
        v135[3] = v74;
        v121 = v74;
        type metadata accessor for FileItemVersion(255, v135);
        *(&v136 + 1) = sub_1CF9E75D8();
        *&v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        *(&v137 + 1) = v137;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v125 = TupleTypeMetadata[12];

        v76 = v122;
        v77 = *(v122 + 32);
        v78 = v102;
        v134 = v69;
        v77(v102, v69, v70);
        v79 = v131;
        v80 = *(*v131 + 576);
        v81 = v70;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v73) = sub_1CF9E6868();
        v82 = *(v76 + 8);
        v82(v78, v81);
        if (v73)
        {
          v83 = v79 + v80;
          v84 = v101;
          (*(v76 + 16))(v101, v83, v81);
          v85 = v79[15];
          v86 = v79[16];
          v87 = v79[17];
          v136 = v129;
          v137 = v128;
          type metadata accessor for JobResult(0, &v136);
          v136 = v129;
          v137 = v128;
          type metadata accessor for Ingestion.FetchItemMetadata(0, &v136);
          v88 = sub_1CF657094(v84, v85, v86, v87 | 0x100, type metadata accessor for Ingestion.FetchItemMetadata);
          v82(v84, AssociatedTypeWitness);
          sub_1CF803A0C(v126, v88);

          *&v136 = v133;
          *(&v136 + 1) = v132;
          *&v137 = v127;
          *(&v137 + 1) = v121;
          type metadata accessor for FileItemVersion(255, &v136);
          v89 = sub_1CF9E75D8();
          (*(*(v89 - 8) + 8))(&v134[v125], v89);

          a1 = v123;
LABEL_15:
          sub_1CF1A91AC(a1, &v136);
          v98 = v45;
          v118(&v136, 0, 0, 0, v45);

          return sub_1CEFCCC44(&v136, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        *&v136 = v133;
        *(&v136 + 1) = v132;
        *&v137 = v127;
        *(&v137 + 1) = v121;
        type metadata accessor for FileItemVersion(255, &v136);
        v90 = sub_1CF9E75D8();
        (*(*(v90 - 8) + 8))(&v134[v125], v90);
        a1 = v123;
        a3 = v126;
      }
    }

    if (!v108)
    {
      v136 = v129;
      v137 = v128;
      type metadata accessor for JobResult(0, &v136);
      v136 = v129;
      v137 = v128;
      type metadata accessor for Ingestion.DeleteRejectedItemInTree(0, &v136);
      v91 = v131;
      v92 = *(*v131 + 576);
      v93 = a1;
      v94 = v131[15];
      v95 = v131[16];
      v96 = v131[17];
      swift_allocObject();
      v97 = sub_1CF657128(v91 + v92, v94, v95, v96);
      sub_1CF803A0C(a3, v97);
      a1 = v93;
    }

    goto LABEL_15;
  }

  v125 = v27;
  v49 = a1[3];
  v50 = a1[4];
  v51 = __swift_project_boxed_opaque_existential_1(a1, v49);
  v52 = v111;
  (*(*(v110 - 8) + 56))(v111, 1, 1);
  v53 = v131;
  v54 = *(*v131 + 576);
  v55 = v130;
  sub_1CF611904(v52, v131 + v54, 0, 0, 0, v115, v131[15], v131[16], v131[17], a3, v51, v49, v50);
  (*(v112 + 8))(v52, v113);
  if (!v55)
  {
    v136 = v129;
    v137 = v128;
    *&v129 = type metadata accessor for JobResult(0, &v136);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    v56 = AssociatedTypeWitness;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v130 = 0;
    v58 = *(TupleTypeMetadata3 + 48);
    v59 = v104;
    v60 = &v104[*(TupleTypeMetadata3 + 64)];
    *&v128 = *(v122 + 16);
    (v128)(v104, v53 + v54, v56);
    *(v59 + v58) = 0;
    strcpy(v60, "item rejected");
    *(v60 + 7) = -4864;
    v61 = v106;
    swift_storeEnumTagMultiPayload();
    sub_1CF9491AC(v126, v59);
    (*(v105 + 8))(v59, v61);
    v62 = v53 + v54;
    v63 = v116;
    (v128)(v116, v62, v56);
    v64 = swift_getAssociatedTypeWitness();
    v65 = swift_getAssociatedConformanceWitness();
    v66 = swift_getAssociatedConformanceWitness();
    *&v136 = v56;
    *(&v136 + 1) = v64;
    *&v137 = v65;
    *(&v137 + 1) = v66;
    type metadata accessor for ReconciliationID(0, &v136);
    swift_storeEnumTagMultiPayload();
    v67 = v132;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v126, v63);
    (*(v121 + 8))(v63, v67);
    sub_1CF1A91AC(v123, &v136);
    v118(&v136, 0, 0, 0, 0);
    sub_1CEFCCC44(&v136, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return (*(v134 + 1))(v133, v127);
}

uint64_t sub_1CF643678()
{
  v1 = *(*v0 + 632);
  swift_getAssociatedTypeWitness();
  v2 = sub_1CF9E75D8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t *sub_1CF643734()
{
  v0 = sub_1CF059B48();
  v1 = *(*v0 + 632);
  swift_getAssociatedTypeWitness();
  v2 = sub_1CF9E75D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1CF64383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = a6(a1, a2, a3, a4, *(a5 + 8));
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF643884(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a5;
  v43 = a3;
  v44 = a4;
  v39 = a1;
  v8 = *v6;
  v9 = type metadata accessor for JobLockRule(0, *(*v6 + 600), *(*v6 + 616), a4);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v41 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v20 = *(v8 + 576);
  v21 = *(a2 + 32);
  v22 = v46;
  (*(*v21 + 288))(&v6[v20], v43, v44, *(v42 + 8), v17);
  if (!v22)
  {
    v23 = v40;
    v43 = v11;
    v44 = v9;
    v46 = 0;
    if ((*(v41 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v23 + 8))(v15, v13);
      return 0;
    }

    else
    {
      v24 = v41;
      v25 = v19;
      (*(v41 + 32))(v19, v15, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v45, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v42 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v27 = *(TupleTypeMetadata3 + 48);
      v28 = *(TupleTypeMetadata3 + 64);
      v29 = *(v24 + 16);
      v30 = &v6[v20];
      v31 = v43;
      v29(v43, v30, AssociatedTypeWitness);
      v29((v31 + v27), v25, AssociatedTypeWitness);
      v32 = (v31 + v28);
      v33 = v25;
      v29(v32, v25, AssociatedTypeWitness);
      v34 = v44;
      swift_storeEnumTagMultiPayload();
      v21 = sub_1CF052B3C(v45, v42, v31, v35);
      (*(v38 + 8))(v31, v34);
      sub_1CEFCCC44(v45, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v24 + 8))(v33, AssociatedTypeWitness);
    }
  }

  return v21;
}

double sub_1CF643CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a1 + 32) + 16);
  v16 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = v8;
  v17[8] = a3;
  v18 = *(*v15 + 752);

  v18(v8 + v16, sub_1CF658D58, v17);

  return result;
}

void sub_1CF643DF0(void *a1, NSObject *a2, uint64_t *a3, void (*a4)(char *, uint64_t), uint64_t a5, void (*a6)(char **, void, unint64_t, unint64_t, NSObject *), uint64_t a7)
{
  v112 = a5;
  v105 = a7;
  v106 = a6;
  v114 = a4;
  v115 = a1;
  v110 = a2;
  v8 = *a3;
  v9 = *(*a3 + 616);
  v10 = *(*a3 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v8 + 624);
  v113 = a3;
  v13 = *(v8 + 608);
  v101 = v12;
  v100 = v13;
  v117 = AssociatedTypeWitness;
  v118 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = AssociatedConformanceWitness;
  v120 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ThrottlingKey(255, &v117);
  v99 = sub_1CF9E75D8();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v107 = &v90 - v14;
  v96 = AssociatedTypeWitness;
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v90 - v16;
  v102 = type metadata accessor for FileTreeError(0, v10, v9, v17);
  v97 = *(v102 - 1);
  MEMORY[0x1EEE9AC00](v102);
  v19 = &v90 - v18;
  v108 = v9;
  v21 = type metadata accessor for SnapshotItem(255, v10, v9, v20);
  v104 = sub_1CF9E75D8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v92 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v90 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v32 = sub_1CF9E8238();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v90 - v34);
  (*(v36 + 16))(&v90 - v34, v110, v32, v33);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = v109;
    (*(v26 + 32))(v109, v35, v10);
    v49 = v115;
    v50 = v115[3];
    v51 = v115[4];
    v110 = __swift_project_boxed_opaque_existential_1(v115, v50);
    (*(v26 + 16))(v29, v48, v10);
    sub_1CF06B77C(v29, v10, v108, v25);
    (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
    v52 = v111;
    sub_1CF611904(v25, v113 + *(*v113 + 576), 3u, 0, 0, v114, v113[15], v113[16], v113[17], v112, v110, v50, v51);
    (*(v103 + 8))(v25, v104);
    if (!v52)
    {
      sub_1CF1A91AC(v49, &v117);
      v106(&v117, 0, 0, 0, 0);
      sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v26 + 8))(v109, v10);
    return;
  }

  v91 = v21;
  v121 = *v35;
  v109 = v10;
  v110 = v121;
  v37 = v121;
  v38 = v102;
  v39 = swift_dynamicCast();
  v40 = v114;
  v41 = v115;
  v43 = v112;
  v42 = v113;
  v44 = v107;
  if (v39)
  {
    v45 = v19;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v47 = v97;
    }

    else
    {
      v102 = &v90;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v53 = v96;
      v117 = v96;
      v54 = swift_getAssociatedTypeWitness();
      v55 = swift_getAssociatedTypeWitness();
      v56 = swift_getAssociatedConformanceWitness();
      v57 = swift_getAssociatedConformanceWitness();
      v116[0] = v54;
      v116[1] = v55;
      v116[2] = v56;
      v116[3] = v57;
      type metadata accessor for FileItemVersion(255, v116);
      v118 = sub_1CF9E75D8();
      v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v120 = v119;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v59 = TupleTypeMetadata[12];

      v117 = v54;
      v118 = v55;
      v119 = v56;
      v120 = v57;
      v60 = type metadata accessor for FileItemVersion(0, &v117);
      if ((*(*(v60 - 8) + 48))(&v45[v59], 1, v60) == 1)
      {
        v61 = v95;
        v62 = v93;
        (*(v95 + 32))(v93, v45, v53);
        v42 = v113;
        v63 = *(*v113 + 576);
        v64 = sub_1CF9E6868();
        (*(v61 + 8))(v62, v53);
        v40 = v114;
        v41 = v115;
        v43 = v112;
        v44 = v107;
        if (v64)
        {
          v65 = v115[3];
          v66 = v115[4];
          v67 = __swift_project_boxed_opaque_existential_1(v115, v65);
          v68 = v92;
          (*(*(v91 - 8) + 56))(v92, 1, 1);
          v69 = v111;
          sub_1CF611904(v68, v42 + v63, 0, 0, 0, v40, v42[15], v42[16], v42[17], v43, v67, v65, v66);
          (*(v103 + 8))(v68, v104);
          if (v69)
          {
          }

          else
          {
            sub_1CF1A91AC(v41, &v117);
            v88 = v110;
            v89 = v110;
            v106(&v117, 0, 0, 0, v88);

            sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
          }

          v85 = v121;
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      v70 = sub_1CF9E75D8();
      (*(*(v70 - 8) + 8))(&v45[v59], v70);
      v47 = v95;
      v38 = v53;
      v40 = v114;
      v41 = v115;
      v43 = v112;
      v42 = v113;
      v44 = v107;
    }

    (*(v47 + 8))(v45, v38);
  }

LABEL_14:

  if ((*(v42 + 138) & 1) == 0)
  {
    v71 = v108;
LABEL_16:
    v72 = v109;
    v73 = v100;
    v117 = v109;
    v118 = v100;
    v74 = v101;
    v119 = v71;
    v120 = v101;
    type metadata accessor for JobResult(0, &v117);
    v117 = v72;
    v118 = v73;
    v119 = v71;
    v120 = v74;
    type metadata accessor for Ingestion.FaultDirectoryInTree(0, &v117);
    v75 = *(*v42 + 576);
    v76 = v42[15];
    v77 = v42[16];
    v78 = v42[17];
    swift_allocObject();
    v79 = sub_1CF052464(v42 + v75, v76, v77, v78);
    sub_1CF803A0C(v43, v79);

    sub_1CF1A91AC(v41, &v117);
    v80 = v110;
    v81 = v110;
    v106(&v117, 0, 0, 0, v80);

    sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
    return;
  }

  sub_1CF050230(v44);
  v82 = v110;
  v83 = v111;
  v84 = sub_1CF96A12C(v110, v44, v40);
  if (v83)
  {
    (*(v98 + 8))(v44, v99);
    v85 = v82;
LABEL_19:

    return;
  }

  v86 = v84;
  (*(v98 + 8))(v44, v99);
  v71 = v108;
  if (!v86)
  {
    v111 = 0;
    goto LABEL_16;
  }

  sub_1CF1A91AC(v41, &v117);
  v87 = v82;
  v106(&v117, 0, 0xD000000000000020, 0x80000001CFA55590, v82);

  sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF644B68@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 632);
  swift_beginAccess();
  v6 = type metadata accessor for SnapshotItem(0, *(v3 + 600), *(v3 + 616), v5);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(v4 + *(v6 + 48));
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1CF644C48()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 600), *(v1 + 616), v3);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    return 2;
  }

  v6 = v2 + *(v4 + 48);
  return *(v6 + *(type metadata accessor for ItemMetadata(0) + 112));
}

uint64_t sub_1CF644D30()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 600), *(v1 + 616), v3);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  result = 0;
  if (!v5)
  {
    v7 = v2 + *(v4 + 48);
    return *(v7 + *(type metadata accessor for ItemMetadata(0) + 104));
  }

  return result;
}

unint64_t sub_1CF644E20()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 600), *(v1 + 616), v3);
  v5 = 1;
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    v6 = 0;
  }

  else
  {
    v7 = v2 + *(v4 + 48);
    v6 = *(v7 + 4);
    v5 = *(v7 + 8);
  }

  return v6 | (v5 << 32);
}

uint64_t sub_1CF644F10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 632);
  swift_beginAccess();
  v6 = type metadata accessor for SnapshotItem(0, *(v3 + 600), *(v3 + 616), v5);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v9 = *(v6 + 36);
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v4 + v9, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1CF6450D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v56 = a3;
  v57 = a4;
  v54 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule(0, v9, v10, a4);
  v12 = *(v11 - 8);
  v52 = v11;
  v53 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v48 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v50 = v15;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v22 = type metadata accessor for SnapshotItem(255, v9, v10, v21);
  v23 = sub_1CF9E75D8();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v28 = *(a2 + 32);
  v29 = *(v8 + 576);
  v30 = v59;
  (*(*v28 + 240))(&v6[v29], 1, v56, v57, *(v55 + 8), v25);
  if (!v30)
  {
    v57 = v20;
    v59 = 0;
    v31 = &v6[*(*v6 + 632)];
    swift_beginAccess();
    (*(v24 + 40))(v31, v27, v23);
    swift_endAccess();
    if ((*(*(v22 - 8) + 48))(v31, 1, v22))
    {
      return 0;
    }

    else
    {
      v32 = v50;
      v33 = *(v50 + 16);
      v34 = v17;
      v35 = v17;
      v36 = v49;
      v33(v35, &v31[*(v22 + 36)], v49);
      v37 = v57;
      (*(v32 + 32))(v57, v34, v36);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v58, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v56 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v39 = *(TupleTypeMetadata3 + 48);
      v40 = *(TupleTypeMetadata3 + 64);
      v41 = &v6[v29];
      v42 = v51;
      v33(v51, v41, v36);
      v43 = (v42 + v39);
      v44 = v37;
      v33(v43, v37, v36);
      v33((v42 + v40), v37, v36);
      v45 = v52;
      swift_storeEnumTagMultiPayload();
      v28 = sub_1CF052B3C(v58, v56, v42, v46);
      (*(v53 + 8))(v42, v45);
      sub_1CEFCCC44(v58, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v32 + 8))(v44, v36);
    }
  }

  return v28;
}

double sub_1CF64559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a1 + 32) + 16);
  v16 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = v8;
  v17[8] = a3;
  v18 = *(*v15 + 760);

  v18(v8 + v16, sub_1CF658CA8, v17);

  return result;
}

double sub_1CF6456D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a7;
  v39 = a8;
  v40 = a5;
  v41 = a6;
  v33 = a4;
  v34 = a3;
  v42 = a11;
  v43 = a12;
  v16 = *a2;
  v35 = *(*a2 + 80);
  v36 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v32 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  v22 = swift_allocObject();
  v37 = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  (*(v18 + 16))(v21, a1, v17);
  v23 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v35;
  *(v27 + 3) = v16[11];
  *(v27 + 4) = v38;
  *(v27 + 5) = v16[12];
  *(v27 + 6) = v16[13];
  *(v27 + 7) = v39;
  (*(v18 + 32))(&v27[v23], v21, v32);
  *&v27[v24] = v40;
  *&v27[v25] = a2;
  *&v27[v26] = v41;
  v28 = &v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
  v29 = v33;
  *v28 = v34;
  v28[1] = v29;
  v30 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, v42, v37, v43, v27, v30, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF6459A0(void *a1, NSObject *a2, uint64_t *a3, void (*a4)(char *, uint64_t), uint64_t a5, void (*a6)(uint64_t *, void, void, void, id), uint64_t a7)
{
  v93 = a5;
  v86 = a7;
  v87 = a6;
  v85 = a4;
  v88 = a2;
  v91 = a1;
  v80 = *a3;
  v8 = v80[77];
  v9 = v80[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v74 - v10;
  v81 = type metadata accessor for FileTreeError(0, v9, v8, v11);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v74 - v12;
  v82 = type metadata accessor for SnapshotItem(255, v9, v8, v14);
  v15 = sub_1CF9E75D8();
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v89 = (&v74 - v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v25 = sub_1CF9E8238();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v74 - v27);
  (*(v29 + 16))(&v74 - v27, v88, v25, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = *v28;
    v90 = v99;
    v30 = v99;
    v31 = v81;
    v32 = swift_dynamicCast();
    v33 = v93;
    v34 = a3;
    if (!v32)
    {
      goto LABEL_14;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v36 = v78;
LABEL_13:
      (*(v36 + 8))(v13, v31);
      goto LABEL_14;
    }

    v88 = &v74;
    v89 = a3;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v42 = v13;
    v95 = AssociatedTypeWitness;
    v43 = swift_getAssociatedTypeWitness();
    v44 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = swift_getAssociatedConformanceWitness();
    v94[0] = v43;
    v94[1] = v44;
    v94[2] = AssociatedConformanceWitness;
    v94[3] = v46;
    type metadata accessor for FileItemVersion(255, v94);
    v96 = sub_1CF9E75D8();
    v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v98 = v97;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v48 = TupleTypeMetadata[12];

    v95 = v43;
    v96 = v44;
    v97 = AssociatedConformanceWitness;
    v98 = v46;
    v49 = type metadata accessor for FileItemVersion(0, &v95);
    if ((*(*(v49 - 8) + 48))(&v42[v48], 1, v49) != 1)
    {
      v61 = sub_1CF9E75D8();
      (*(*(v61 - 8) + 8))(&v42[v48], v61);
      v36 = v77;
      v31 = AssociatedTypeWitness;
      v33 = v93;
      v34 = v89;
      v13 = v42;
      goto LABEL_13;
    }

    v50 = v77;
    v51 = v76;
    v52 = AssociatedTypeWitness;
    (*(v77 + 32))(v76, v42, AssociatedTypeWitness);
    v34 = v89;
    v53 = *(*v89 + 576);
    swift_getAssociatedConformanceWitness();
    v54 = sub_1CF9E6868();
    (*(v50 + 8))(v51, v52);
    v33 = v93;
    if ((v54 & 1) == 0)
    {
LABEL_14:

      v62 = v80[76];
      v63 = v80[78];
      v95 = v9;
      v96 = v62;
      v97 = v8;
      v98 = v63;
      type metadata accessor for JobResult(0, &v95);
      v95 = v9;
      v96 = v62;
      v97 = v8;
      v98 = v63;
      type metadata accessor for Ingestion.UnfaultDirectoryInTree(0, &v95);
      v64 = v34;
      v65 = *(*v34 + 576);
      v66 = v64[15];
      v67 = v64[16];
      v68 = v64[17];
      swift_allocObject();
      v69 = sub_1CF65722C(v64 + v65, v66, v67, v68);
      sub_1CF803A0C(v33, v69);

      sub_1CF1A91AC(v91, &v95);
      v70 = v90;
      v71 = v90;
      v87(&v95, 0, 0, 0, v70);

      sub_1CEFCCC44(&v95, &unk_1EC4C1B30, &qword_1CFA05300);
      return;
    }

    v55 = v91;
    v56 = v91[3];
    v57 = v91[4];
    v58 = __swift_project_boxed_opaque_existential_1(v91, v56);
    v59 = v75;
    (*(*(v82 - 8) + 56))(v75, 1, 1);
    v60 = v92;
    sub_1CF611904(v59, v34 + v53, 0, 0, 0, v85, v34[15], v34[16], v34[17], v33, v58, v56, v57);
    (*(v83 + 8))(v59, v84);
    if (v60)
    {
    }

    else
    {
      sub_1CF1A91AC(v55, &v95);
      v72 = v90;
      v73 = v90;
      v87(&v95, 0, 0, 0, v72);

      sub_1CEFCCC44(&v95, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  else
  {
    v38 = v89;
    v37 = v90;
    (*(v90 + 4))(v89, v28, v9);
    v39 = v91;
    v40 = v91[3];
    v81 = v91[4];
    v88 = __swift_project_boxed_opaque_existential_1(v91, v40);
    (v37)[2](v22, v38, v9);
    sub_1CF06B77C(v22, v9, v8, v19);
    (*(*(v82 - 8) + 56))(v19, 0, 1);
    v41 = v92;
    sub_1CF611904(v19, a3 + *(*a3 + 576), 3u, 0, 0, v85, a3[15], a3[16], a3[17], v93, v88, v40, v81);
    (*(v83 + 8))(v19, v84);
    if (!v41)
    {
      sub_1CF1A91AC(v39, &v95);
      v87(&v95, 0, 0, 0, 0);
      sub_1CEFCCC44(&v95, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v90 + 1))(v89, v9);
  }
}

uint64_t sub_1CF6464CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF656EE0(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v5;
}

uint64_t sub_1CF646584(void (*a1)(char *, uint64_t), void (**a2)(char *, uint64_t *, uint64_t), uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7, uint64_t a8)
{
  v9 = v8;
  v82 = a6;
  v83 = a5;
  v100 = a3;
  v103 = a2;
  v95 = *v9;
  v14 = v95;
  v15 = v95[77];
  v94 = v95[75];
  v16 = type metadata accessor for SnapshotItem(255, v94, v15, a4);
  v88 = sub_1CF9E75D8();
  v102 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v79 - v17;
  v101 = *(v16 - 8);
  v18 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v79 - v22);
  v90 = a1;
  v24 = *(a1 + 4);
  v25 = v14[72];
  v26 = *(*v24 + 496);
  v27 = *(a8 + 8);
  v92 = a4;
  v28 = 0;
  v31 = v26(v9 + v25, v103, a4, a7, v27, v21);
  v87 = a8;
  v99 = v23;
  v79 = v18;
  v80 = v24;
  v81 = v32;
  v93 = v9;
  if (sub_1CF9E6DF8())
  {
    v86 = a7;
    v40 = 0;
    v41 = v101;
    v103 = (v101 + 16);
    v96 = (v101 + 32);
    v97 = (v101 + 8);
    v84 = (v101 + 56);
    v85 = v102 + 1;
    v42 = v93;
    v43 = v91;
    v98 = v31;
    while (1)
    {
      v56 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v56)
      {
        v57 = v31 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
        v58 = *(v41 + 16);
        v59 = v99;
        v58(v99, v57, v16);
        v60 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v79 != 8)
        {
          __break(1u);
          return result;
        }

        v104 = result;
        v58 = *v103;
        v31 = v99;
        (*v103)(v99, &v104, v16);
        v59 = v31;
        swift_unknownObjectRelease();
        v60 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v31, v49, v50, v51, v52, v53, v54, v55;
          v73 = v83;
          a7 = v86;
          goto LABEL_16;
        }
      }

      v61 = v43;
      v62 = v15;
      (*v96)(v61, v59, v16);
      v63 = v42[17];
      if ((v63 & 0xFFFFFFCFFFFFFFFFLL) != 0)
      {
        v44 = v94;
        v45 = v95[76];
        v46 = v95[78];
        v104 = v94;
        v105 = v45;
        v106 = v62;
        v107 = v46;
        type metadata accessor for JobResult(0, &v104);
        v102 = v28;
        v104 = v44;
        v105 = v45;
        v15 = v62;
        v106 = v62;
        v107 = v46;
        v42 = v93;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v104);
        v47 = sub_1CF657094(v61, v42[15], v42[16], v63, type metadata accessor for Ingestion.FetchItemMetadata);
        v28 = v102;
        sub_1CF803A0C(v100, v47);

        v43 = v61;
      }

      else
      {
        v64 = v89;
        v58(v89, v61, v16);
        (*v84)(v64, 0, 1, v16);
        sub_1CF611904(v64, v61, 0, 0, 0, v90, v42[15], v42[16], v63, v100, v92, v86, v87);
        if (v28)
        {
          v98, v65, v66, v67, v68, v69, v70, v71;

          (*v85)(v64, v88);
          (*v97)(v91, v16);
          v78 = v86;
          v107 = v86;
          v108 = v87;
          v29 = __swift_allocate_boxed_opaque_existential_0(&v104);
          (*(*v78[-1].tester + 16))(v29, v92, v78);
          v30 = v28;
          v83(&v104, 0, 0, 0, v28);

          return sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        (*v85)(v64, v88);
        v15 = v62;
        v43 = v91;
      }

      v31 = v98;
      (*v97)(v43, v16);
      v48 = sub_1CF9E6DF8();
      ++v40;
      v41 = v101;
      if (v60 == v48)
      {
        goto LABEL_14;
      }
    }
  }

  v31, v33, v34, v35, v36, v37, v38, v39;
  v73 = v83;
LABEL_16:
  v74 = v87;
  v75 = v92;
  if ((*(v93 + 137) & 0x80) != 0 && !v81)
  {
    (*(**(v80 + 16) + 920))();
  }

  v107 = a7;
  v108 = v74;
  v76 = __swift_allocate_boxed_opaque_existential_0(&v104);
  (*(*a7[-1].tester + 16))(v76, v75, a7);
  v77 = v81;

  v73(&v104, v77, 0, 0, 0);

  return sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF646D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v74 = a8;
  v76 = a7;
  v67 = a6;
  v75 = a4;
  v69 = a3;
  v12 = *v8;
  v13 = sub_1CF9E5CF8();
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v12[77];
  v16 = v12[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v64 - v20;
  v73 = *(a1 + 32);
  *&v21 = v16;
  *(&v21 + 1) = v12[76];
  *&v22 = v15;
  *(&v22 + 1) = v12[78];
  v70 = v22;
  v71 = v21;
  v81 = v21;
  v82 = v22;
  type metadata accessor for SQLDatabase(0, &v81);
  v77 = a1;
  v23 = swift_dynamicCastClass();
  v68 = a5;
  if (v23)
  {
    v64 = v13;
    v24 = v17;
    sub_1CF478C28();
    v25 = swift_getAssociatedTypeWitness();
    v26 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = v26;
    v29 = swift_getAssociatedConformanceWitness();
    *&v81 = v26;
    *(&v81 + 1) = v25;
    *&v82 = AssociatedConformanceWitness;
    *(&v82 + 1) = v29;
    v30 = type metadata accessor for ThrottlingKey(255, &v81);
    sub_1CF9E7FA8();
    swift_allocObject();

    v31 = sub_1CF9E6D68();
    v33 = v32;
    *&v81 = v28;
    *(&v81 + 1) = v25;
    *&v82 = AssociatedConformanceWitness;
    *(&v82 + 1) = v29;
    type metadata accessor for ReconciliationID(255, &v81);
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v24 + 16))(v33, &v9[*(*v9 + 576)], v28);
    swift_storeEnumTagMultiPayload();
    *(v33 + v34) = sub_1CF03D760();
    v35 = v31;
    v36 = v76;
    v37 = sub_1CF045898(v35, v30);
    sub_1CF3302CC(v37, v75, v36, v74);

    v37, v38, v39, v40, v41, v42, v43, v44;
    v17 = v24;
    v13 = v64;
  }

  v78 = v17;
  (*(**(v73 + 16) + 720))(nullsub_1, 0);
  sub_1CF046AB4();
  v45 = v66;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v47 = v46;
  v49 = v79 + 8;
  v48 = *(v79 + 8);
  result = v48(v45, v13);
  v51 = v47 * 1000000000.0;
  if (COERCE__INT64(fabs(v47 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v79 = v49;
  v52 = v51;
  v53 = *(v9 + 17);
  v81 = v71;
  v82 = v70;
  type metadata accessor for JobResult(0, &v81);
  v81 = v71;
  v82 = v70;
  type metadata accessor for Ingestion.FetchItemMetadata(0, &v81);
  v54 = v72;
  v55 = sub_1CF657094(v72, 0, v52, v53 | 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
  v56 = *(v78 + 8);
  v78 += 8;
  v56(v54, AssociatedTypeWitness);
  sub_1CF803A0C(v69, v55);

  v57 = v65;
  sub_1CF685B34();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v59 = v58;
  result = v48(v45, v13);
  v60 = v59 * 1000000000.0;
  if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v60 < 9.22337204e18)
  {
    v61 = sub_1CF657094(v57, 0, v60, *(v9 + 17) | 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
    v56(v57, AssociatedTypeWitness);
    sub_1CF803A0C(v69, v61);

    v62 = v76;
    *(&v82 + 1) = v76;
    v83 = v74;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v62 - 8) + 16))(boxed_opaque_existential_0, v75, v62);
    v68(&v81, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v81, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CF6475A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))(a1, v1 + v3, AssociatedTypeWitness);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF6476A8()
{
  if (*(v0 + 138))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1CF6476BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(0, *(*v4 + 600), *(*v4 + 616), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v4 + 56), v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v9 = *(v4 + 15);
  v10 = *(*v4 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, &v4[v10], AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1CF052B3C(v16, v9, v8, v12);
  (*(v6 + 8))(v8, v5);
  sub_1CEFCCC44(v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v13;
}

void sub_1CF6478B4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v91 = a4;
  v92 = a8;
  v89 = a6;
  v90 = a7;
  v88 = a5;
  v85 = a3;
  v86 = a1;
  v83 = a2;
  v10 = *v8;
  v11 = v10[77];
  v12 = v10[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v10[78];
  v15 = v10[76];
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = AssociatedTypeWitness;
  v94 = v16;
  v95 = AssociatedConformanceWitness;
  v96 = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for ReconciliationID(0, &v93);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v18 = &v68 - v17;
  v93 = v12;
  v94 = v15;
  v95 = v11;
  v96 = v14;
  v74 = type metadata accessor for ReconciliationMutation(0, &v93);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v19;
  v93 = v12;
  v94 = v15;
  v75 = v15;
  v95 = v11;
  v96 = v14;
  v76 = v14;
  v20 = v11;
  v21 = v86;
  v22 = type metadata accessor for ItemReconciliation(255, &v93);
  v23 = sub_1CF9E75D8();
  v78 = *(v23 - 8);
  v79 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v81 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v68 - v27;
  v28 = swift_allocObject();
  v77 = v20;
  type metadata accessor for SnapshotItem(0, v12, v20, v29);
  v30 = sub_1CF9E65D8();
  AssociatedConformanceWitness = v28;
  *(v28 + 16) = v30;
  v31 = v90;
  v32 = v21[4];
  if (((*(*v21 + 256))() & 1) == 0)
  {
    goto LABEL_11;
  }

  v70 = v32;
  v71 = v22;
  v33 = *(*v9 + 576);
  sub_1CF68DDB0(&v9[v33], v91, v31, *(v92 + 8), v25);
  v69 = v33;
  v34 = v81;
  v35 = v71;
  if ((*(v81 + 48))(v25, 1, v71) != 1)
  {
    v36 = v80;
    (*(v34 + 32))(v80, v25, v35);
    v32 = v70;
    if (sub_1CF056558())
    {
      v38 = type metadata accessor for ItemReconciliationHalf(0, v12, v77, v37);
      v31 = v90;
      if (v36[*(v38 + 56)] - 3 >= 4)
      {
        if (v36[*(v38 + 52)] == 1)
        {
          v93 = v12;
          v94 = v75;
          v39 = v77;
          v95 = v77;
          v96 = v76;
          type metadata accessor for JobResult(0, &v93);
          type metadata accessor for ReconciliationSideMutation(255, v12, v39, v40);
          v41 = *(swift_getTupleTypeMetadata2() + 48);
          v42 = v72;
          (*(*(AssociatedTypeWitness - 8) + 16))(v72, &v9[v69], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          *(v42 + v41) = 0;
          v31 = v90;
          swift_storeEnumTagMultiPayload();
          v43 = v74;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v85, v42);
          (*(v73 + 8))(v42, v43);
        }

        v96 = v31;
        v97 = v92;
        v44 = __swift_allocate_boxed_opaque_existential_0(&v93);
        (*(*(v31 - 8) + 16))(v44, v91, v31);
        v45 = 0x80000001CFA554F0;
        v46 = 0xD000000000000036;
LABEL_16:
        v88(&v93, 0, v46, v45, 0);
        (*(v81 + 8))(v36, v71);
        sub_1CEFCCC44(&v93, &unk_1EC4C1B30, &qword_1CFA05300);

        return;
      }
    }

    else
    {
      v47 = &v36[*(v35 + 52)];
      v48 = type metadata accessor for ItemReconciliationHalf(0, v75, v76, v37);
      v31 = v90;
      if ((v47[*(v48 + 56)] | 2) != 6)
      {
        if (v36[*(type metadata accessor for ItemReconciliationHalf(0, v12, v77, v49) + 52)] == 1)
        {
          v93 = v12;
          v94 = v75;
          v62 = v77;
          v95 = v77;
          v96 = v76;
          type metadata accessor for JobResult(0, &v93);
          type metadata accessor for ReconciliationSideMutation(255, v12, v62, v63);
          v64 = *(swift_getTupleTypeMetadata2() + 48);
          v65 = v72;
          (*(*(AssociatedTypeWitness - 8) + 16))(v72, &v9[v69], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          *(v65 + v64) = 3;
          v31 = v90;
          swift_storeEnumTagMultiPayload();
          v66 = v74;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v85, v65);
          (*(v73 + 8))(v65, v66);
        }

        v96 = v31;
        v97 = v92;
        v67 = __swift_allocate_boxed_opaque_existential_0(&v93);
        (*(*(v31 - 8) + 16))(v67, v91, v31);
        v46 = 0xD000000000000040;
        v45 = 0x80000001CFA554A0;
        goto LABEL_16;
      }
    }

    (*(v81 + 8))(v36, v71);
    goto LABEL_11;
  }

  (*(v78 + 8))(v25, v79);
  v31 = v90;
  v32 = v70;
LABEL_11:
  v90 = *(*v9 + 576);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, &v9[v90], AssociatedTypeWitness);
  v50 = v84;
  swift_storeEnumTagMultiPayload();
  v51 = v92;
  v91 = (*(*v21 + 504))(v18, v91, v31, *(v92 + 8));
  v52 = (*(v82 + 8))(v18, v50);
  v53 = *(v32 + 16);
  v54 = (*(*v21 + 272))(v52);
  v55 = AssociatedConformanceWitness;
  v84 = v54;
  v56 = swift_allocObject();
  v56[2] = v31;
  v56[3] = v51;
  v56[4] = v9;
  v56[5] = v55;
  v57 = swift_allocObject();
  v57[2] = v31;
  v57[3] = v51;
  v57[4] = v21;
  v57[5] = v9;
  v58 = v89;
  v57[6] = v88;
  v57[7] = v58;
  v57[8] = v85;
  v57[9] = v55;
  v59 = *(*v53 + 144);
  swift_retain_n();
  swift_retain_n();

  v60 = v91;
  v61 = v84;
  v59(&v9[v90], v83, v84, v91, sub_1CF6589B4, v56, sub_1CF658A18, v57);
}

uint64_t sub_1CF648420(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v5 = *(*a2 + 600);
  v6 = *a2;
  v47 = a2;
  v7 = *(v6 + 616);
  v40 = type metadata accessor for SnapshotItem(255, v5, v7, a4);
  v8 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = v34 - v9;
  v50 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v34 - v12;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v37 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  v34[0] = v19;
  MEMORY[0x1EEE9AC00](v20);
  v51 = v34 - v21;
  v22 = a1;
  if (!sub_1CF9E6DF8())
  {
    return 0;
  }

  v23 = 0;
  v45 = *(v50 + 72);
  v44 = *(*v47 + 576);
  v49 = (v48 + 16);
  v42 = (v11 + 8);
  v43 = (v48 + 32);
  v41 = (v48 + 8);
  v46 = v50 + 72;
  v34[2] = v50 + 64;
  v34[1] = v40 - 8;
  v35 = AssociatedTypeWitness;
  v36 = v13;
  while (1)
  {
    v24 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v24)
    {
      v25 = *(v48 + 16);
      v25(v51, (v22 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v23), v5);
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_1CF9E7998();
    if (v34[0] != 8)
    {
      break;
    }

    v52[0] = result;
    v25 = *v49;
    (*v49)(v51, v52, v5);
    swift_unknownObjectRelease();
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_11:
      __break(1u);
      return 0;
    }

LABEL_6:
    (*v43)(v18, v51, v5);
    v45(v5, v50);
    swift_getAssociatedConformanceWitness();
    v27 = sub_1CF9E6868();
    (*v42)(v13, AssociatedTypeWitness);
    if (v27)
    {
      v28 = v22;
      v29 = v50;
      (*(v50 + 64))(v5, v50);
      v30 = v37;
      v25(v37, v18, v5);
      v31 = v38;
      v32 = v29;
      v22 = v28;
      AssociatedTypeWitness = v35;
      sub_1CF06B77C(v30, v5, v32, v38);
      (*(*(v40 - 8) + 56))(v31, 0, 1, v40);
      swift_beginAccess();
      sub_1CF9E6708();
      v13 = v36;
      sub_1CF9E6738();
      swift_endAccess();
    }

    (*v41)(v18, v5);
    ++v23;
    if (v26 == sub_1CF9E6DF8())
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF648978(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v14 = swift_allocObject();
    v14[2] = a9;
    v14[3] = a10;
    v14[4] = a4;
    v14[5] = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v16 = swift_allocObject();
    v16[2] = a9;
    v16[3] = a10;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = a7;
    v16[7] = a1;
    v16[8] = a5;
    v16[9] = a6;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1CF2B1868(a1, 1);
    v17 = type metadata accessor for Continuation();
    sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v14, sub_1CF559418, v15, sub_1CF658C20, v16, v17, MEMORY[0x1E69E6158]);
  }

  else
  {
    v18 = *a3;
    swift_beginAccess();
    v19 = *(v18 + 96);
    v20 = *(v18 + 80);
    swift_getAssociatedTypeWitness();
    type metadata accessor for SnapshotItem(0, v20, v19, v21);
    swift_getAssociatedConformanceWitness();
    nullsub_1();
    sub_1CF9E66B8();

    swift_getWitnessTable();
    v22 = sub_1CF9E6E88();
    v23 = sub_1CF9E6DF8();
    v56 = v22;
    if (sub_1CF9E6DF8() < 1)
    {
LABEL_13:
      if (v23)
      {
        v56, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v41 = swift_allocObject();
        v41[2] = a9;
        v41[3] = a10;
        v41[4] = a4;
        v41[5] = a3;
        v42 = swift_allocObject();
        *(v42 + 16) = a5;
        *(v42 + 24) = a6;
        v43 = swift_allocObject();
        v43[2] = a9;
        v43[3] = a10;
        v43[4] = a1;
        v43[5] = a3;
        v43[6] = a4;
        v43[7] = a7;
        v43[8] = a5;
        v43[9] = a6;
        v43[10] = v56;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        sub_1CF2B1868(a1, 0);
        v44 = type metadata accessor for Continuation();
        sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v41, sub_1CF559418, v42, sub_1CF658AC0, v43, v44, MEMORY[0x1E69E6158]);
      }
    }

    else
    {
      v31 = 0;
      v32 = 50;
      if (v23 < 50)
      {
        v32 = v23;
      }

      while (v32 >= v31)
      {
        v57 = v32;
        v33 = sub_1CF9E6E98();
        v54 = v34;
        v52 = v36;
        v53 = v35;
        v51 = v57 == v23;
        v37 = swift_allocObject();
        v37[2] = a9;
        v37[3] = a10;
        v37[4] = a4;
        v37[5] = a3;
        v55 = swift_allocObject();
        *(v55 + 16) = a5;
        *(v55 + 24) = a6;
        v38 = v23;
        v39 = swift_allocObject();
        *(v39 + 16) = a9;
        *(v39 + 24) = a10;
        *(v39 + 32) = a4;
        *(v39 + 40) = v33;
        *(v39 + 48) = v54;
        *(v39 + 56) = v53;
        *(v39 + 64) = v52;
        *(v39 + 72) = a3;
        *(v39 + 80) = v51;
        *(v39 + 88) = a1;
        *(v39 + 96) = a7;
        *(v39 + 104) = a5;
        *(v39 + 112) = a6;
        *(v39 + 120) = v56;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        sub_1CF2B1868(a1, 0);
        v40 = type metadata accessor for Continuation();
        swift_unknownObjectRetain();

        sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v37, sub_1CF559418, v55, sub_1CF658B54, v39, v40, MEMORY[0x1E69E6158]);

        swift_unknownObjectRelease();
        v32 = v57 + 50;
        if (__OFADD__(v57, 50))
        {
          goto LABEL_17;
        }

        if (v38 < v32)
        {
          v32 = v38;
        }

        v31 = v57;
        v23 = v38;
        if (v57 >= v38)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }
}

void sub_1CF648FD0(void *a1, void (*a2)(char *, uint64_t), uint64_t *a3, uint64_t a4, void *a5, void (*a6)(__int128 *, void, void, void, void *), uint64_t a7)
{
  v139 = a7;
  v129 = a6;
  v137 = a5;
  v130 = a4;
  v145 = a3;
  v9 = *a2;
  v116 = sub_1CF9E5268();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v9[10];
  v12 = v9[12];
  v119 = type metadata accessor for SnapshotItem(255, v11, v12, v13);
  v122 = sub_1CF9E75D8();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v110 - v14;
  v134 = sub_1CF9E5248();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = &v110 - v16;
  v136 = type metadata accessor for FileTreeError(0, v11, v12, v17);
  v117 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v110 - v18;
  v19 = v9[11];
  v142 = v11;
  *&v20 = v11;
  v126 = v19;
  *(&v20 + 1) = v19;
  v147 = v20;
  v21 = v9[13];
  v141 = v12;
  *&v22 = v12;
  v127 = v21;
  *(&v22 + 1) = v21;
  v146 = v22;
  v149 = v20;
  v150 = v22;
  v125 = type metadata accessor for ReconciliationMutation(0, &v149);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v110 - v23;
  v149 = v147;
  v150 = v146;
  v24 = type metadata accessor for ItemReconciliation(255, &v149);
  v25 = sub_1CF9E75D8();
  v131 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v110 - v26;
  v143 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v138 = a1;
  v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v34 = v144;
  v35 = *(*v145 + 576);
  v36 = *(v32 + 8);
  v37 = v145;
  sub_1CF68DDB0(v145 + v35, v33, v31, v36, v27);
  if (!v34)
  {
    v38 = v131;
    v39 = v30;
    v144 = v35;
    v112 = a2;
    v40 = v37;
    v113 = 0;
    v41 = v143;
    if ((*(v143 + 48))(v27, 1, v24) == 1)
    {
      (*(v38 + 8))(v27, v25);
      v42 = v137;
      v43 = v37;
    }

    else
    {
      v44 = v39;
      (*(v41 + 32))(v39, v27, v24);
      v45 = &v39[*(v24 + 52)];
      if (v45[*(type metadata accessor for ItemReconciliationHalf(0, v126, v127, v46) + 56)] - 3 > 1)
      {
        v59 = v141;
        v60 = v142;
        v61 = v44[*(type metadata accessor for ItemReconciliationHalf(0, v142, v141, v47) + 52)];
        v62 = v44;
        v43 = v37;
        if (v61 == 1)
        {
          v149 = v147;
          v150 = v146;
          v131 = v62;
          v110 = type metadata accessor for JobResult(0, &v149);
          v63 = swift_getAssociatedTypeWitness();
          v111 = v24;
          v64 = v63;
          v65 = AssociatedTypeWitness;
          v66 = v59;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v68 = swift_getAssociatedConformanceWitness();
          *&v149 = v65;
          *(&v149 + 1) = v64;
          *&v150 = AssociatedConformanceWitness;
          *(&v150 + 1) = v68;
          type metadata accessor for ReconciliationID(255, &v149);
          type metadata accessor for ReconciliationSideMutation(255, v60, v66, v69);
          v70 = *(swift_getTupleTypeMetadata2() + 48);
          v71 = v123;
          (*(v128 + 16))(v123, v43 + v144, v65);
          swift_storeEnumTagMultiPayload();
          *(v71 + v70) = 0;
          swift_storeEnumTagMultiPayload();
          v72 = v125;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v130, v71);
          (*(v124 + 8))(v71, v72);
          (*(v143 + 8))(v131, v111);
        }

        else
        {
          (*(v143 + 8))(v62, v24);
        }
      }

      else
      {
        v149 = v147;
        v150 = v146;
        v110 = type metadata accessor for JobResult(0, &v149);
        v48 = swift_getAssociatedTypeWitness();
        v111 = v24;
        v49 = v48;
        v131 = v44;
        v51 = v141;
        v50 = v142;
        v52 = AssociatedTypeWitness;
        v53 = swift_getAssociatedConformanceWitness();
        v54 = swift_getAssociatedConformanceWitness();
        *&v149 = v52;
        *(&v149 + 1) = v49;
        *&v150 = v53;
        *(&v150 + 1) = v54;
        type metadata accessor for ReconciliationID(255, &v149);
        type metadata accessor for ReconciliationSideMutation(255, v50, v51, v55);
        v56 = *(swift_getTupleTypeMetadata2() + 48);
        v43 = v40;
        v57 = v123;
        (*(v128 + 16))(v123, v40 + v144, v52);
        swift_storeEnumTagMultiPayload();
        *(v57 + v56) = 3;
        swift_storeEnumTagMultiPayload();
        v58 = v125;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v130, v57);
        (*(v124 + 8))(v57, v58);
        (*(v143 + 8))(v131, v111);
      }

      v42 = v137;
    }

    v73 = v135;
    v74 = v134;
    v75 = v133;
    v76 = v132;
    v151 = v42;
    v77 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v78 = swift_dynamicCast();
    v79 = v138;
    if (v78)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 14)
      {
        v149 = v147;
        v150 = v146;
        type metadata accessor for JobResult(0, &v149);
        v149 = v147;
        v150 = v146;
        type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v149);
        v94 = sub_1CF657094(v43 + v144, v43[15], v43[16], v43[17] | 0x2000, type metadata accessor for Ingestion.FetchChildrenMetadata);
        sub_1CF803A0C(v130, v94);

        sub_1CF1A91AC(v79, &v149);
        v129(&v149, 0, 0, 0, v42);
        sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload)
      {
        (*(v117 + 8))(v76, v136);
      }

      else
      {
        v132 = &v110;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v81 = AssociatedTypeWitness;
        *&v149 = AssociatedTypeWitness;
        v82 = swift_getAssociatedTypeWitness();
        v83 = swift_getAssociatedTypeWitness();
        v84 = swift_getAssociatedConformanceWitness();
        v85 = swift_getAssociatedConformanceWitness();
        v143 = v82;
        v148[0] = v82;
        v148[1] = v83;
        v136 = v84;
        v148[2] = v84;
        v148[3] = v85;
        v131 = v85;
        type metadata accessor for FileItemVersion(255, v148);
        *(&v149 + 1) = sub_1CF9E75D8();
        *&v150 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        *(&v150 + 1) = v150;
        v86 = v76;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v132 = TupleTypeMetadata[12];

        v88 = v128;
        v89 = v118;
        (*(v128 + 32))(v118, v86, v81);
        v90 = v145;
        swift_getAssociatedConformanceWitness();
        v91 = v144;
        LOBYTE(TupleTypeMetadata) = sub_1CF9E6868();
        (*(v88 + 8))(v89, v81);
        if (TupleTypeMetadata)
        {
          v149 = v147;
          v150 = v146;
          type metadata accessor for JobResult(0, &v149);
          v149 = v147;
          v150 = v146;
          type metadata accessor for Ingestion.FetchItemMetadata(0, &v149);
          v92 = sub_1CF657094(v90 + v91, v90[15], v90[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
          sub_1CF803A0C(v130, v92);

          sub_1CF1A91AC(v138, &v149);
          v129(&v149, 0, 0, 0, v137);
          sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
          *&v149 = v143;
          *(&v149 + 1) = v83;
          *&v150 = v136;
          *(&v150 + 1) = v131;
          type metadata accessor for FileItemVersion(255, &v149);
          v93 = sub_1CF9E75D8();
          (*(*(v93 - 8) + 8))(&v132[v86], v93);
LABEL_16:

          return;
        }

        *&v149 = v143;
        *(&v149 + 1) = v83;
        *&v150 = v136;
        *(&v150 + 1) = v131;
        type metadata accessor for FileItemVersion(255, &v149);
        v95 = sub_1CF9E75D8();
        (*(*(v95 - 8) + 8))(&v132[v86], v95);
        v79 = v138;
        v42 = v137;
        v43 = v90;
        v73 = v135;
        v74 = v134;
        v75 = v133;
      }
    }

    sub_1CF9E5108();
    sub_1CF00BC98(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
    v96 = sub_1CF9E5658();
    (*(v75 + 8))(v73, v74);
    v97 = AssociatedTypeWitness;
    v98 = swift_getAssociatedConformanceWitness();
    v99 = v98;
    if (v96 & 1) != 0 && ((*(v98 + 72))(v97, v98))
    {
      v100 = v79[3];
      v101 = v79[4];
      v102 = __swift_project_boxed_opaque_existential_1(v79, v100);
      v103 = v120;
      (*(*(v119 - 8) + 56))(v120, 1, 1);
      v104 = v113;
      sub_1CF611904(v103, v43 + v144, 0, 0, 0, v112, v43[15], v43[16], v43[17], v130, v102, v100, v101);
      (*(v121 + 8))(v103, v122);
      if (!v104)
      {
        sub_1CF1A91AC(v79, &v149);
        sub_1CF9E5108();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC98(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v107 = v114;
        v108 = v116;
        sub_1CF9E57D8();
        v109 = sub_1CF9E50D8();
        (*(v115 + 8))(v107, v108);
        v129(&v149, 0, 0, 0, v109);

        sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
      }
    }

    else
    {
      if (((*(v99 + 72))(v97, v99) & 1) == 0)
      {
        v105 = v43[17];
        if ((v105 & 1) == 0)
        {
          v149 = v147;
          v150 = v146;
          type metadata accessor for JobResult(0, &v149);
          v149 = v147;
          v150 = v146;
          type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v149);
          v106 = sub_1CF657094(v43 + v144, v43[15], v43[16], v105, type metadata accessor for Ingestion.FetchChildrenMetadata);
          sub_1CF803A0C(v130, v106);
        }
      }

      sub_1CF1A91AC(v79, &v149);
      v129(&v149, 0, 0, 0, v42);
      sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }
}