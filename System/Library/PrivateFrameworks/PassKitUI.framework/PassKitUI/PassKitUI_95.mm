void sub_1BDA10AB8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v118 = sub_1BE04AFE4();
  v137 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = v112 - v10;
  v11 = sub_1BE0493F4();
  v124 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v130 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v112 - v14;
  v16 = sub_1BE049774();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v131 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v132 = v112 - v24;
  v127 = *(v25 + 72);
  if (!v127)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v127 == -1)
  {
    goto LABEL_70;
  }

  v26 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v127 == -1)
  {
    goto LABEL_71;
  }

  v27 = (a2 - a1) / v127;
  v140 = a1;
  v139 = a4;
  v128 = v16;
  v129 = v11;
  v134 = v15;
  if (v27 >= v26 / v127)
  {
    v29 = v26 / v127 * v127;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v29 < 1)
    {
      v71 = a4 + v29;
    }

    else
    {
      v68 = -v127;
      v121 = (v17 + 16);
      v69 = (v124 + 8);
      v113 = (v137 + 8);
      v120 = (v17 + 8);
      v70 = (a4 + v29);
      v71 = a4 + v29;
      v122 = (v124 + 8);
      v135 = a4;
      v136 = a1;
      v127 = -v127;
      do
      {
        v112[0] = v71;
        v72 = a2;
        v73 = a2 + v68;
        v137 = v73;
        v123 = v72;
        while (1)
        {
          v132 = a3;
          if (v72 <= a1)
          {
            v140 = v72;
            v138 = v112[0];
            goto LABEL_68;
          }

          v119 = v71;
          v125 = v70;
          v74 = *v121;
          v133 = &v70[v68];
          v75 = v69;
          v74(v126);
          (v74)(v131, v73, v16);
          sub_1BE049744();
          v76 = sub_1BE0493C4();
          v124 = v77;
          v79 = v78;
          v80 = *v75;
          v81 = v15;
          v82 = v129;
          (*v75)(v81, v129);
          v83 = v130;
          sub_1BE049744();
          v84 = sub_1BE0493C4();
          v86 = v85;
          v88 = v87;
          v80(v83, v82);
          if (MEMORY[0x1BFB40440](v76, v124, v79, v84, v86, v88))
          {
            v89 = v116;
            v90 = v126;
            sub_1BE049764();
            v91 = v117;
            v92 = v131;
            sub_1BE049764();
            v93 = MEMORY[0x1BFB38030](v89, v91);
            v94 = *v113;
            v95 = v91;
            v96 = v118;
            (*v113)(v95, v118);
            v94(v89, v96);
            v97 = v92;
          }

          else
          {
            v98 = v134;
            v99 = v126;
            sub_1BE049744();
            v124 = sub_1BE0493C4();
            v115 = v100;
            v114 = v101;
            v80(v98, v82);
            v102 = v131;
            sub_1BE049744();
            v103 = sub_1BE0493C4();
            v105 = v104;
            v107 = v106;
            v80(v83, v82);
            v93 = MEMORY[0x1BFB403F0](v103, v105, v107, v124, v115, v114);
            v97 = v102;
            v90 = v99;
          }

          v16 = v128;
          v108 = v132;
          a3 = &v132[v127];
          v109 = *v120;
          (*v120)(v97, v128);
          v109(v90, v16);
          a1 = v136;
          v110 = v137;
          v111 = v135;
          if (v93)
          {
            break;
          }

          v30 = v108 >= v125;
          v71 = v133;
          v15 = v134;
          if (v30 && a3 < v125)
          {
            v73 = v137;
            if (v132 != v125)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
            v73 = v110;
          }

          v70 = v71;
          v68 = v127;
          v69 = v122;
          v72 = v123;
          if (v133 <= v111)
          {
            a2 = v123;
            goto LABEL_67;
          }
        }

        v30 = v108 >= v123;
        v15 = v134;
        if (v30 && a3 < v123)
        {
          v71 = v119;
          v70 = v125;
          a2 = v137;
          if (v132 != v123)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v137;
          swift_arrayInitWithTakeFrontToBack();
          v71 = v119;
          v70 = v125;
        }

        v68 = v127;
        v69 = v122;
      }

      while (v70 > v111);
    }

LABEL_67:
    v140 = a2;
    v138 = v71;
  }

  else
  {
    v28 = v27 * v127;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v126 = (a4 + v28);
    v138 = a4 + v28;
    v30 = v28 < 1 || a2 >= a3;
    if (!v30)
    {
      v123 = *(v17 + 16);
      v31 = (v124 + 8);
      v115 = (v137 + 8);
      v124 = v17 + 16;
      v125 = a3;
      v121 = (v17 + 8);
      v122 = v31;
      do
      {
        v136 = a1;
        v137 = a2;
        v32 = v123;
        (v123)(v132, a2, v16);
        v135 = a4;
        (v32)(v133, a4, v16);
        sub_1BE049744();
        v33 = sub_1BE0493C4();
        v35 = v34;
        LODWORD(v131) = v36;
        v37 = *v31;
        v38 = v129;
        v37(v15, v129);
        v39 = v130;
        sub_1BE049744();
        v40 = sub_1BE0493C4();
        v42 = v41;
        v44 = v43;
        v37(v39, v38);
        if (MEMORY[0x1BFB40440](v33, v35, v131, v40, v42, v44))
        {
          v45 = v116;
          v46 = v132;
          sub_1BE049764();
          v47 = v117;
          v48 = v133;
          sub_1BE049764();
          v49 = MEMORY[0x1BFB38030](v45, v47);
          v50 = *v115;
          v51 = v47;
          v52 = v118;
          (*v115)(v51, v118);
          v50(v45, v52);
          v53 = v48;
          v54 = v46;
        }

        else
        {
          v55 = v134;
          v54 = v132;
          sub_1BE049744();
          v131 = sub_1BE0493C4();
          v120 = v56;
          LODWORD(v119) = v57;
          v37(v55, v38);
          v58 = v133;
          sub_1BE049744();
          v59 = sub_1BE0493C4();
          v61 = v60;
          v63 = v62;
          v37(v39, v38);
          v49 = MEMORY[0x1BFB403F0](v59, v61, v63, v131, v120, v119);
          v53 = v58;
        }

        v64 = *v121;
        v16 = v128;
        (*v121)(v53, v128);
        (v64)(v54, v16);
        v65 = v136;
        a2 = v137;
        a4 = v135;
        v66 = v125;
        v67 = v127;
        if (v49)
        {
          v15 = v134;
          if (v136 < v137 || v136 >= v137 + v127)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v136 != v137)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v67;
        }

        else
        {
          v15 = v134;
          if (v136 < v135 || v136 >= v135 + v127)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v136 != v135)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v139 = a4 + v67;
          a4 += v67;
        }

        a1 = v65 + v67;
        v140 = a1;
        v31 = v122;
      }

      while (a4 < v126 && a2 < v66);
    }
  }

LABEL_68:
  sub_1BD9353D0(&v140, &v139, &v138);
}

void sub_1BDA115A0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v118 = sub_1BE049B04();
  v124 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = v112 - v10;
  v11 = sub_1BE0493F4();
  v122 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v130 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v112 - v14;
  v16 = sub_1BE0497B4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v131 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v132 = v112 - v24;
  v127 = *(v25 + 72);
  if (!v127)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v127 == -1)
  {
    goto LABEL_71;
  }

  v26 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v127 == -1)
  {
    goto LABEL_72;
  }

  v27 = (a2 - a1) / v127;
  v140 = a1;
  v139 = a4;
  v128 = v16;
  v129 = v11;
  v134 = v15;
  if (v27 >= v26 / v127)
  {
    v29 = v26 / v127 * v127;
    v32 = a4 >= a2;
    v30 = a2;
    v31 = v130;
    v137 = v30;
    if (v32 && v30 + v29 > a4)
    {
      if (a4 != v30)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    else
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    if (v29 < 1)
    {
      v73 = a4 + v29;
    }

    else
    {
      v70 = -v127;
      v121 = (v17 + 16);
      v71 = v122 + 1;
      v113 = (v124 + 8);
      v120 = (v17 + 8);
      v72 = (a4 + v29);
      v73 = a4 + v29;
      ++v122;
      v135 = a4;
      v136 = a1;
      v127 = -v127;
      do
      {
        v112[0] = v73;
        v74 = v137;
        v137 += v70;
        v123 = v74;
        while (1)
        {
          v132 = a3;
          if (v74 <= a1)
          {
            v140 = v74;
            v138 = v112[0];
            goto LABEL_69;
          }

          v119 = v73;
          v125 = v72;
          v75 = *v121;
          v133 = &v72[v70];
          v76 = v71;
          v75(v126);
          (v75)(v131, v137, v16);
          sub_1BE049784();
          v77 = sub_1BE0493C4();
          v124 = v78;
          v80 = v79;
          v81 = *v76;
          v82 = v15;
          v83 = v129;
          (*v76)(v82, v129);
          sub_1BE049784();
          v84 = sub_1BE0493C4();
          v86 = v85;
          v88 = v87;
          v81(v31, v83);
          if (MEMORY[0x1BFB40440](v77, v124, v80, v84, v86, v88))
          {
            v89 = v116;
            v90 = v126;
            sub_1BE0497A4();
            v91 = sub_1BE049AF4();
            v92 = *v113;
            v93 = v118;
            (*v113)(v89, v118);
            v94 = v117;
            v95 = v131;
            sub_1BE0497A4();
            LOWORD(v89) = sub_1BE049AF4();
            v92(v94, v93);
            v96 = v91 < v89;
            v97 = v95;
            v98 = v90;
          }

          else
          {
            v99 = v134;
            v100 = v126;
            sub_1BE049784();
            v124 = sub_1BE0493C4();
            v115 = v101;
            v114 = v102;
            v81(v99, v83);
            v103 = v131;
            sub_1BE049784();
            v104 = sub_1BE0493C4();
            v106 = v105;
            v108 = v107;
            v81(v31, v83);
            v96 = MEMORY[0x1BFB403F0](v104, v106, v108, v124, v115, v114);
            v97 = v103;
            v98 = v100;
          }

          v16 = v128;
          v109 = v132;
          a3 = &v132[v127];
          v110 = *v120;
          (*v120)(v97, v128);
          v110(v98, v16);
          v111 = v135;
          a1 = v136;
          if (v96)
          {
            break;
          }

          v32 = v109 >= v125;
          v31 = v130;
          v73 = v133;
          v15 = v134;
          if (v32 && a3 < v125)
          {
            if (v132 != v125)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          v72 = v73;
          v70 = v127;
          v71 = v122;
          v74 = v123;
          if (v133 <= v111)
          {
            v137 = v123;
            goto LABEL_68;
          }
        }

        v32 = v109 >= v123;
        v31 = v130;
        v15 = v134;
        if (v32 && a3 < v123)
        {
          v73 = v119;
          v72 = v125;
          if (v132 != v123)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
          v73 = v119;
          v72 = v125;
        }

        v70 = v127;
        v71 = v122;
      }

      while (v72 > v111);
    }

LABEL_68:
    v140 = v137;
    v138 = v73;
  }

  else
  {
    v28 = v27 * v127;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v126 = (a4 + v28);
    v138 = a4 + v28;
    v32 = v28 < 1 || a2 >= a3;
    if (!v32)
    {
      v123 = *(v17 + 16);
      v33 = v122 + 1;
      v115 = (v124 + 8);
      v124 = v17 + 16;
      v125 = a3;
      v121 = (v17 + 8);
      ++v122;
      do
      {
        v136 = a1;
        v137 = a2;
        v34 = v123;
        (v123)(v132, a2, v16);
        v135 = a4;
        (v34)(v133, a4, v16);
        sub_1BE049784();
        v35 = sub_1BE0493C4();
        v37 = v36;
        LODWORD(v131) = v38;
        v39 = *v33;
        v40 = v129;
        v39(v15, v129);
        v41 = v130;
        sub_1BE049784();
        v42 = sub_1BE0493C4();
        v44 = v43;
        v46 = v45;
        v39(v41, v40);
        if (MEMORY[0x1BFB40440](v35, v37, v131, v42, v44, v46))
        {
          v47 = v116;
          v48 = v132;
          sub_1BE0497A4();
          v49 = sub_1BE049AF4();
          v50 = *v115;
          v51 = v118;
          (*v115)(v47, v118);
          v52 = v117;
          v53 = v133;
          sub_1BE0497A4();
          LOWORD(v47) = sub_1BE049AF4();
          v50(v52, v51);
          v54 = v49 < v47;
          v55 = v53;
          v56 = v48;
        }

        else
        {
          v57 = v134;
          v56 = v132;
          sub_1BE049784();
          v131 = sub_1BE0493C4();
          v120 = v58;
          LODWORD(v119) = v59;
          v39(v57, v40);
          v60 = v133;
          sub_1BE049784();
          v61 = sub_1BE0493C4();
          v63 = v62;
          v65 = v64;
          v39(v41, v40);
          v54 = MEMORY[0x1BFB403F0](v61, v63, v65, v131, v120, v119);
          v55 = v60;
        }

        v66 = *v121;
        v16 = v128;
        (*v121)(v55, v128);
        (v66)(v56, v16);
        v67 = v136;
        a2 = v137;
        a4 = v135;
        v68 = v125;
        v69 = v127;
        if (v54)
        {
          v15 = v134;
          if (v136 < v137 || v136 >= v137 + v127)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v136 != v137)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v69;
        }

        else
        {
          v15 = v134;
          if (v136 < v135 || v136 >= v135 + v127)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v136 != v135)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v139 = a4 + v69;
          a4 += v69;
        }

        a1 = v67 + v69;
        v140 = a1;
        v33 = v122;
      }

      while (a4 < v126 && a2 < v68);
    }
  }

LABEL_69:
  sub_1BD9353E8(&v140, &v139, &v138);
}

BOOL sub_1BDA120B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978, &qword_1BE10DE00);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1BE049B04();
  sub_1BDA1396C(&qword_1EBD45980, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AF0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v22 != v21)
  {
    return 0;
  }

  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  sub_1BD842AA4(*(a1 + *(v13 + 20)), *(a2 + *(v13 + 20)));
  if ((v14 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v13 + 28);
  v16 = *(v10 + 48);
  sub_1BD0DE19C(a1 + v15, v12, &qword_1EBD44F98, &unk_1BE0D39B0);
  sub_1BD0DE19C(a2 + v15, &v12[v16], &qword_1EBD44F98, &unk_1BE0D39B0);
  v17 = *(v20 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_1BD0DE53C(v12, &qword_1EBD44F98, &unk_1BE0D39B0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1BD0DE19C(v12, v9, &qword_1EBD44F98, &unk_1BE0D39B0);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    sub_1BDA138A4(v9, type metadata accessor for FinanceKitSpendingTrend);
LABEL_9:
    sub_1BD0DE53C(v12, &qword_1EBD45978, &qword_1BE10DE00);
    return 0;
  }

  sub_1BDA13904(&v12[v16], v6, type metadata accessor for FinanceKitSpendingTrend);
  v19 = sub_1BD362DBC(v9, v6);
  sub_1BDA138A4(v6, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v9, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v12, &qword_1EBD44F98, &unk_1BE0D39B0);
  return (v19 & 1) != 0;
}

BOOL sub_1BDA1245C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v54 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978, &qword_1BE10DE00);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - v9;
  v11 = sub_1BE0491F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD10, &qword_1BE10DE08);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v60 = v12;
  v20 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v21 = *(v20 + 20);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 != *v24 || v23 != v24[1])
  {
    v25 = a1;
    v26 = a2;
    v27 = v20;
    v28 = sub_1BE053B84();
    v20 = v27;
    a2 = v26;
    a1 = v25;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = a2;
  v30 = v20;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v56 = v4;
  v57 = v10;
  v55 = v6;
  v58 = a1;
  v59 = v30;
  v31 = *(v30 + 28);
  v32 = *(v17 + 48);
  sub_1BD0DE19C(a1 + v31, v19, &qword_1EBD45CC0, &qword_1BE0D5630);
  sub_1BD0DE19C(v29 + v31, &v19[v32], &qword_1EBD45CC0, &qword_1BE0D5630);
  v33 = *(v60 + 48);
  if (v33(v19, 1, v11) == 1)
  {
    if (v33(&v19[v32], 1, v11) == 1)
    {
      sub_1BD0DE53C(v19, &qword_1EBD45CC0, &qword_1BE0D5630);
      goto LABEL_14;
    }

LABEL_11:
    v34 = &qword_1EBD5BD10;
    v35 = &qword_1BE10DE08;
    v36 = v19;
LABEL_12:
    sub_1BD0DE53C(v36, v34, v35);
    return 0;
  }

  sub_1BD0DE19C(v19, v16, &qword_1EBD45CC0, &qword_1BE0D5630);
  if (v33(&v19[v32], 1, v11) == 1)
  {
    (*(v60 + 8))(v16, v11);
    goto LABEL_11;
  }

  v37 = v60;
  v38 = v64;
  (*(v60 + 32))(v64, &v19[v32], v11);
  sub_1BDA1396C(&qword_1EBD5BD18, MEMORY[0x1E69676E0], MEMORY[0x1E69676E8]);
  v39 = sub_1BE052334();
  v40 = *(v37 + 8);
  v40(v38, v11);
  v40(v16, v11);
  sub_1BD0DE53C(v19, &qword_1EBD45CC0, &qword_1BE0D5630);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v41 = v59;
  sub_1BE049B04();
  sub_1BDA1396C(&qword_1EBD45980, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AF0]);
  v42 = v58;
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v66 != v65)
  {
    return 0;
  }

  sub_1BD842AA4(*(v42 + *(v41 + 36)), *(v29 + *(v41 + 36)));
  if ((v43 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  v44 = *(v41 + 44);
  v45 = *(v62 + 48);
  v46 = v57;
  sub_1BD0DE19C(v42 + v44, v57, &qword_1EBD44F98, &unk_1BE0D39B0);
  sub_1BD0DE19C(v29 + v44, v46 + v45, &qword_1EBD44F98, &unk_1BE0D39B0);
  v47 = *(v63 + 48);
  v48 = v56;
  if (v47(v46, 1, v56) == 1)
  {
    if (v47(v46 + v45, 1, v48) == 1)
    {
      sub_1BD0DE53C(v46, &qword_1EBD44F98, &unk_1BE0D39B0);
      return 1;
    }

    goto LABEL_22;
  }

  v49 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD44F98, &unk_1BE0D39B0);
  if (v47(v46 + v45, 1, v48) == 1)
  {
    sub_1BDA138A4(v49, type metadata accessor for FinanceKitSpendingTrend);
LABEL_22:
    v34 = &qword_1EBD45978;
    v35 = &qword_1BE10DE00;
    v36 = v46;
    goto LABEL_12;
  }

  v50 = v46 + v45;
  v51 = v55;
  sub_1BDA13904(v50, v55, type metadata accessor for FinanceKitSpendingTrend);
  v52 = sub_1BD362DBC(v49, v51);
  sub_1BDA138A4(v51, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v49, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v46, &qword_1EBD44F98, &unk_1BE0D39B0);
  return (v52 & 1) != 0;
}

uint64_t sub_1BDA12BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v89 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BCF8, &qword_1BE10DDE8);
  MEMORY[0x1EEE9AC00](v96);
  v9 = &v89 - v8;
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v89 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD00, &qword_1BE10DDF0);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v89 - v15;
  v16 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v107 = *(v16 - 8);
  v108 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v105 = &v89 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD08, &qword_1BE10DDF8);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v89 - v20;
  v21 = type metadata accessor for FinanceKitSpendingTrend(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v89 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978, &qword_1BE10DE00);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v89 - v29;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_49;
  }

  v93 = v12;
  v31 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    goto LABEL_49;
  }

  v90 = v9;
  v91 = v31;
  v32 = *(v31 + 24);
  v33 = *(v28 + 48);
  v92 = a1;
  sub_1BD0DE19C(a1 + v32, v30, &qword_1EBD44F98, &unk_1BE0D39B0);
  v34 = a2 + v32;
  v35 = a2;
  sub_1BD0DE19C(v34, &v30[v33], &qword_1EBD44F98, &unk_1BE0D39B0);
  v36 = *(v22 + 48);
  if (v36(v30, 1, v21) == 1)
  {
    if (v36(&v30[v33], 1, v21) == 1)
    {
      sub_1BD0DE53C(v30, &qword_1EBD44F98, &unk_1BE0D39B0);
      goto LABEL_11;
    }

LABEL_8:
    v37 = &qword_1EBD45978;
    v38 = &qword_1BE10DE00;
    v39 = v30;
    goto LABEL_9;
  }

  sub_1BD0DE19C(v30, v27, &qword_1EBD44F98, &unk_1BE0D39B0);
  if (v36(&v30[v33], 1, v21) == 1)
  {
    sub_1BDA138A4(v27, type metadata accessor for FinanceKitSpendingTrend);
    goto LABEL_8;
  }

  sub_1BDA13904(&v30[v33], v24, type metadata accessor for FinanceKitSpendingTrend);
  v40 = sub_1BD362DBC(v27, v24);
  sub_1BDA138A4(v24, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v27, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v30, &qword_1EBD44F98, &unk_1BE0D39B0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_11:
  v42 = v91;
  v41 = v92;
  if ((sub_1BD4001A4(*(v92 + v91[7]), *(a2 + v91[7])) & 1) == 0 || (sub_1BD40043C(*(v41 + v42[8]), *(a2 + v42[8])) & 1) == 0)
  {
    goto LABEL_49;
  }

  v43 = v42[9];
  v44 = *(v106 + 48);
  v45 = v109;
  sub_1BD0DE19C(v41 + v43, v109, &qword_1EBD507F8, &qword_1BE0F10E0);
  sub_1BD0DE19C(v35 + v43, v45 + v44, &qword_1EBD507F8, &qword_1BE0F10E0);
  v46 = v108;
  v47 = *(v107 + 48);
  if (v47(v45, 1, v108) == 1)
  {
    if (v47(v45 + v44, 1, v46) == 1)
    {
      sub_1BD0DE53C(v45, &qword_1EBD507F8, &qword_1BE0F10E0);
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v73 = v105;
  sub_1BD0DE19C(v45, v105, &qword_1EBD507F8, &qword_1BE0F10E0);
  if (v47(v45 + v44, 1, v46) == 1)
  {
    sub_1BDA138A4(v73, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
LABEL_28:
    v37 = &qword_1EBD5BD08;
    v38 = &qword_1BE10DDF8;
LABEL_29:
    v39 = v45;
    goto LABEL_9;
  }

  v74 = v45 + v44;
  v75 = v100;
  sub_1BDA13904(v74, v100, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    sub_1BDA138A4(v75, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    sub_1BDA138A4(v73, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    v37 = &qword_1EBD507F8;
    v38 = &qword_1BE0F10E0;
    goto LABEL_29;
  }

  sub_1BD842AA4(*(v73 + *(v46 + 20)), *(v75 + *(v46 + 20)));
  v77 = v76;
  sub_1BDA138A4(v75, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  sub_1BDA138A4(v73, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  sub_1BD0DE53C(v45, &qword_1EBD507F8, &qword_1BE0F10E0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_16:
  v48 = v42[10];
  v49 = *(v101 + 48);
  v50 = v104;
  sub_1BD0DE19C(v41 + v48, v104, &qword_1EBD507F0, &qword_1BE0F10D8);
  v51 = v35 + v48;
  v52 = v50;
  sub_1BD0DE19C(v51, v50 + v49, &qword_1EBD507F0, &qword_1BE0F10D8);
  v53 = v103;
  v54 = *(v102 + 48);
  if (v54(v50, 1, v103) == 1)
  {
    if (v54(v50 + v49, 1, v53) == 1)
    {
      sub_1BD0DE53C(v50, &qword_1EBD507F0, &qword_1BE0F10D8);
      goto LABEL_19;
    }

LABEL_35:
    v37 = &qword_1EBD5BD00;
    v38 = &qword_1BE10DDF0;
    v39 = v52;
    goto LABEL_9;
  }

  v78 = v99;
  sub_1BD0DE19C(v52, v99, &qword_1EBD507F0, &qword_1BE0F10D8);
  if (v54(v52 + v49, 1, v53) == 1)
  {
    sub_1BDA138A4(v78, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    goto LABEL_35;
  }

  v79 = v52 + v49;
  v80 = v93;
  sub_1BDA13904(v79, v93, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    sub_1BDA138A4(v80, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    sub_1BDA138A4(v78, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    v37 = &qword_1EBD507F0;
    v38 = &qword_1BE0F10D8;
    v39 = v52;
    goto LABEL_9;
  }

  sub_1BD842AA4(*(v78 + *(v53 + 20)), *(v80 + *(v53 + 20)));
  v82 = v81;
  sub_1BDA138A4(v80, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  sub_1BDA138A4(v78, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  sub_1BD0DE53C(v52, &qword_1EBD507F0, &qword_1BE0F10D8);
  if ((v82 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v55 = v42[11];
  v56 = *(v96 + 48);
  v57 = v90;
  sub_1BD0DE19C(v41 + v55, v90, &qword_1EBD507E8, &qword_1BE0F10D0);
  v58 = v57;
  sub_1BD0DE19C(v35 + v55, v57 + v56, &qword_1EBD507E8, &qword_1BE0F10D0);
  v59 = v98;
  v60 = *(v97 + 48);
  if (v60(v57, 1, v98) != 1)
  {
    v83 = v95;
    sub_1BD0DE19C(v58, v95, &qword_1EBD507E8, &qword_1BE0F10D0);
    if (v60(v58 + v56, 1, v59) == 1)
    {
      sub_1BDA138A4(v83, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      goto LABEL_42;
    }

    v84 = v94;
    sub_1BDA13904(v58 + v56, v94, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    if (sub_1BE0493B4())
    {
      sub_1BD842AA4(*(v83 + *(v98 + 20)), *(v84 + *(v98 + 20)));
      v86 = v85;
      sub_1BDA138A4(v84, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      sub_1BDA138A4(v83, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      sub_1BD0DE53C(v58, &qword_1EBD507E8, &qword_1BE0F10D0);
      if ((v86 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    sub_1BDA138A4(v84, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    sub_1BDA138A4(v83, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    v37 = &qword_1EBD507E8;
    v38 = &qword_1BE0F10D0;
    v39 = v58;
LABEL_9:
    sub_1BD0DE53C(v39, v37, v38);
    goto LABEL_49;
  }

  if (v60(v57 + v56, 1, v59) != 1)
  {
LABEL_42:
    v37 = &qword_1EBD5BCF8;
    v38 = &qword_1BE10DDE8;
    v39 = v58;
    goto LABEL_9;
  }

  sub_1BD0DE53C(v57, &qword_1EBD507E8, &qword_1BE0F10D0);
LABEL_22:
  v61 = v42[12];
  v62 = *(v41 + v61);
  v63 = *(v35 + v61);
  if (v62)
  {
    if (!v63)
    {
      goto LABEL_49;
    }

    sub_1BE048C84();
    sub_1BD842AA4(v62, v63);
    v65 = v64;
    v63, v66, v67, v68, v69, v70, v71, v72;
    if ((v65 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_51:
    v87 = sub_1BD4009DC(*(v41 + v42[13]), *(v35 + v42[13]));
    return v87 & 1;
  }

  if (!v63)
  {
    goto LABEL_51;
  }

LABEL_49:
  v87 = 0;
  return v87 & 1;
}

uint64_t sub_1BDA138A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BDA13904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA1396C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BDA139B4(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD20, &unk_1BE10DE10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13B70();
  sub_1BE053D94();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1BE053AA4();
    (*(v4 + 8))(v6, v3);
    v7 = v23[1];
    __swift_destroy_boxed_opaque_existential_0(a1, v15, v16, v17, v18, v19, v20, v21);
  }

  return v7;
}

unint64_t sub_1BDA13B70()
{
  result = qword_1EBD5BD28;
  if (!qword_1EBD5BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD28);
  }

  return result;
}

uint64_t sub_1BDA13BC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BDA1396C(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA13C60()
{
  result = qword_1EBD5BD40;
  if (!qword_1EBD5BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD40);
  }

  return result;
}

unint64_t sub_1BDA13CB4()
{
  result = qword_1EBD5BD68;
  if (!qword_1EBD5BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD68);
  }

  return result;
}

uint64_t sub_1BDA13D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BDA13D70()
{
  result = qword_1EBD5BD80;
  if (!qword_1EBD5BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD80);
  }

  return result;
}

void sub_1BDA13DC4(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v10, v11, v12, v13, v14, v15, v16;

    a3, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1BDA13E10(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1BE04B2D4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1BD126968;

  return sub_1BDA0344C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1BDA13FE4()
{
  result = qword_1EBD5BD90;
  if (!qword_1EBD5BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD90);
  }

  return result;
}

uint64_t sub_1BDA14058(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA094F0(a1, v6, v1 + v5);
}

uint64_t sub_1BDA14148(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA095BC(a1, v1 + v5, v6);
}

uint64_t sub_1BDA14284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9FE518(a1, v4, v5, v6);
}

uint64_t sub_1BDA14338(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0, &qword_1BE10DEE8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BDA001D8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BDA1446C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA0BD38(a1, v6, v1 + v5);
}

uint64_t objectdestroy_130Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BDA1462C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA0C190(a1, v6, v1 + v5);
}

unint64_t sub_1BDA1471C()
{
  result = qword_1EBD5BE20;
  if (!qword_1EBD5BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BE18, &unk_1BE10E000);
    sub_1BD58197C();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0, &unk_1BE0B7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE20);
  }

  return result;
}

void sub_1BDA147C0(uint64_t a1)
{
  sub_1BE049B04();
  if (v1 <= 0x3F)
  {
    sub_1BDA14834();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BDA14834()
{
  if (!qword_1EBD5BE38)
  {
    v0 = sub_1BE04AFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5BE38);
    }
  }
}

unint64_t sub_1BDA148D0()
{
  result = qword_1EBD5BE40;
  if (!qword_1EBD5BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE40);
  }

  return result;
}

unint64_t sub_1BDA14928()
{
  result = qword_1EBD5BE48;
  if (!qword_1EBD5BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE48);
  }

  return result;
}

unint64_t sub_1BDA14980()
{
  result = qword_1EBD5BE50;
  if (!qword_1EBD5BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE50);
  }

  return result;
}

unint64_t sub_1BDA149D8()
{
  result = qword_1EBD5BE58;
  if (!qword_1EBD5BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE58);
  }

  return result;
}

unint64_t sub_1BDA14A30()
{
  result = qword_1EBD5BE60;
  if (!qword_1EBD5BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE60);
  }

  return result;
}

unint64_t sub_1BDA14A88()
{
  result = qword_1EBD5BE68;
  if (!qword_1EBD5BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE68);
  }

  return result;
}

unint64_t sub_1BDA14AE0()
{
  result = qword_1EBD5BE70;
  if (!qword_1EBD5BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE70);
  }

  return result;
}

unint64_t sub_1BDA14B38()
{
  result = qword_1EBD5BE78;
  if (!qword_1EBD5BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE78);
  }

  return result;
}

unint64_t sub_1BDA14B90()
{
  result = qword_1EBD5BE80;
  if (!qword_1EBD5BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE80);
  }

  return result;
}

unint64_t sub_1BDA14BE8()
{
  result = qword_1EBD5BE88;
  if (!qword_1EBD5BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE88);
  }

  return result;
}

unint64_t sub_1BDA14C40()
{
  result = qword_1EBD5BE90;
  if (!qword_1EBD5BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE90);
  }

  return result;
}

unint64_t sub_1BDA14C98()
{
  result = qword_1EBD5BE98;
  if (!qword_1EBD5BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE98);
  }

  return result;
}

unint64_t sub_1BDA14CF0()
{
  result = qword_1EBD5BEA0;
  if (!qword_1EBD5BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEA0);
  }

  return result;
}

uint64_t sub_1BDA14DD4(uint64_t a1)
{
  result = _s14MerchantOriginOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BDA14E50(uint64_t a1)
{
  result = _s7WebInfoVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BDA14F04(uint64_t a1)
{
  sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    sub_1BD3F7300(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_1BDA14F98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v60 - v4;
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v66 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v66);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v60 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v60 - v21;
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  v24 = [result requestType];

  if (v24 == 8)
  {
    v25 = v67;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  result = [a1 paymentRequest];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = result;
  v27 = [result originatingURL];

  if (v27)
  {
    sub_1BE04A9F4();

    v62 = *(v6 + 32);
    v62(v13, v10, v5);
    v61 = *(v6 + 16);
    v61(v64, v13, v5);
    result = [a1 paymentRequest];
    if (!result)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v28 = result;
    v29 = [result thumbnailURLs];

    v30 = v63;
    if (v29)
    {
      v31 = sub_1BE052744();

      if (*(v31 + 2))
      {
        v61(v30, &v31[(*(v6 + 80) + 32) & ~*(v6 + 80)], v5);
        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v31, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      v39 = 1;
    }

    (*(v6 + 8))(v13, v5);
    (*(v6 + 56))(v30, v39, 1, v5);
    v62(v15, v64, v5);
    v53 = _s7WebInfoVMa(0);
    sub_1BD226B4C(v30, &v15[*(v53 + 20)]);
    swift_storeEnumTagMultiPayload();
    v52 = v15;
    goto LABEL_18;
  }

  result = [a1 hostAppLocalizedName];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = result;
  v41 = sub_1BE052434();
  v43 = v42;

  result = [a1 hostApplicationIdentifier];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = result;
  v45 = sub_1BE052434();
  v47 = v46;

  result = [a1 bundleIdentifier];
  if (result)
  {
    v48 = result;
    v49 = sub_1BE052434();
    v51 = v50;

    *v18 = v41;
    v18[1] = v43;
    v18[2] = v45;
    v18[3] = v47;
    v18[4] = v49;
    v18[5] = v51;
    swift_storeEnumTagMultiPayload();
    v52 = v18;
LABEL_18:
    v25 = v67;
    sub_1BDA15DF0(v52, v67, _s14MerchantOriginOMa);
LABEL_19:
    result = [a1 merchantName];
    if (result)
    {
      v54 = result;
      v55 = sub_1BE052434();
      v57 = v56;

      v58 = v65;
      *v65 = v55;
      v58[1] = v57;
      v59 = _s8MerchantVMa(0);
      return sub_1BDA15DF0(v25, v58 + *(v59 + 20), _s14MerchantOriginOMa);
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BDA15500(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  return sub_1BDA154FC();
}

uint64_t sub_1BDA15584(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BE053B84();
}

BOOL sub_1BDA15684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78, &unk_1BE0E4690);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1BE04A9E4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(_s7WebInfoVMa(0) + 20);
  v15 = *(v11 + 48);
  sub_1BD38F438(a1 + v14, v13);
  sub_1BD38F438(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BD38F438(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1BD0DE53C(v13, &qword_1EBD44E78, &unk_1BE0E4690);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BD96D338();
  v18 = sub_1BE052334();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  return (v18 & 1) != 0;
}

BOOL sub_1BDA1596C(uint64_t a1, uint64_t a2)
{
  v4 = _s7WebInfoVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v174 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BED8, &qword_1BE10E618);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v174 - v14;
  v17 = (&v174 + *(v16 + 56) - v14);
  sub_1BD129504(a1, &v174 - v14);
  sub_1BD129504(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BD129504(v15, v12);
    v20 = *v12;
    v21 = v12[1];
    v23 = v12[2];
    v22 = v12[3];
    v25 = v12[4];
    v24 = v12[5];
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = *v17;
      v49 = v17[1];
      v51 = v17[2];
      v50 = v17[3];
      v52 = v17[5];
      v174 = v17[4];
      v175 = v49;
      v53 = v20 == v48 && v21 == v49;
      v54 = v50;
      if (v53 || (v55 = sub_1BE053B84(), v50 = v54, (v55)) && (v23 == v51 ? (v57 = v22 == v50) : (v57 = 0), v57 || (v58 = sub_1BE053B84(), v50 = v54, (v58)))
      {
        if (v25 == v174 && v24 == v52)
        {
          v24, v26, v174, v28, v29, v30, v31, v32;
          v22, v139, v140, v141, v142, v143, v144, v145;
          v21, v146, v147, v148, v149, v150, v151, v152;
          v52, v153, v154, v155, v156, v157, v158, v159;
          v54, v160, v161, v162, v163, v164, v165, v166;
          v175, v167, v168, v169, v170, v171, v172, v173;
          goto LABEL_8;
        }

        v60 = sub_1BE053B84();
        v24, v61, v62, v63, v64, v65, v66, v67;
        v22, v68, v69, v70, v71, v72, v73, v74;
        v21, v75, v76, v77, v78, v79, v80, v81;
        v52, v82, v83, v84, v85, v86, v87, v88;
        v54, v89, v90, v91, v92, v93, v94, v95;
        v175, v96, v97, v98, v99, v100, v101, v102;
        if (v60)
        {
LABEL_8:
          sub_1BDA15D90(v15, _s14MerchantOriginOMa);
          return 1;
        }
      }

      else
      {
        v103 = v50;
        v24, v26, v56, v28, v29, v30, v31, v32;
        v22, v104, v105, v106, v107, v108, v109, v110;
        v21, v111, v112, v113, v114, v115, v116, v117;
        v52, v118, v119, v120, v121, v122, v123, v124;
        v103, v125, v126, v127, v128, v129, v130, v131;
        v175, v132, v133, v134, v135, v136, v137, v138;
      }

      sub_1BDA15D90(v15, _s14MerchantOriginOMa);
      return 0;
    }

    v24, v26, v27, v28, v29, v30, v31, v32;
    v22, v33, v34, v35, v36, v37, v38, v39;
    v21, v40, v41, v42, v43, v44, v45, v46;
LABEL_10:
    sub_1BD0DE53C(v15, &qword_1EBD5BED8, &qword_1BE10E618);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1BD129504(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BDA15D90(v9, _s7WebInfoVMa);
    goto LABEL_10;
  }

  sub_1BDA15DF0(v17, v6, _s7WebInfoVMa);
  v19 = sub_1BDA15684(v9, v6);
  sub_1BDA15D90(v6, _s7WebInfoVMa);
  sub_1BDA15D90(v9, _s7WebInfoVMa);
  sub_1BDA15D90(v15, _s14MerchantOriginOMa);
  return v19;
}

uint64_t sub_1BDA15D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BDA15DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PKAppIntentError.localizedStringResource.getter()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v6, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t PKCashAppIntentError.localizedStringResource.getter()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v6, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

unint64_t sub_1BDA16438()
{
  result = qword_1EBD5BEE0;
  if (!qword_1EBD5BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEE0);
  }

  return result;
}

unint64_t sub_1BDA16490()
{
  result = qword_1EBD5BEE8;
  if (!qword_1EBD5BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PKAppIntentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PKAppIntentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1BDA16660(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC9PassKitUI37AuthenticatorPassphraseViewController_cancelHandler];
  *v9 = a2;
  *(v9 + 1) = a3;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  sub_1BE048964();
  v10 = objc_msgSendSuper2(&v21, sel_initWithRootViewController_, a1);
  [v10 setModalPresentationStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v10 action:sel_cancelPressed];
  v12 = [a1 navigationItem];
  [v12 setRightBarButtonItem:v11 animated:0];

  a3, v13, v14, v15, v16, v17, v18, v19;
  return v10;
}

void sub_1BDA168F4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    [v2 setHidden_];
  }

  sub_1BDA169B0(1u, 0);
  v3 = 4;
  sub_1BDA17054(&v3, 0);
}

void sub_1BDA169B0(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  if (v3[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_footerState] == v5)
  {
    return;
  }

  v14 = [v3 dockView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v52 = v14;
  v53 = [v14 footerView];
  if (!v53)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = [v3 headerView];
  v16 = v15;
  if (v5 <= 1)
  {
    if (!v5)
    {
      if (v15)
      {
        [v15 setActionTitle_];
        [v16 setActionButtonAction_];

        [v3 setShowPrimaryButton_];
        sub_1BD3789BC(0);
        [v53 setSecondaryActionButton_];
        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (!v15)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    (*(v7 + 104))(v13, *MEMORY[0x1E69B80D8], v6);
    v37 = PKPassKitBundle();
    if (!v37)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v38 = v37;
    sub_1BE04B6F4();
    v40 = v39;

    (*(v7 + 8))(v13, v6);
    v41 = sub_1BE052404();
    v40, v42, v43, v44, v45, v46, v47, v48;
    [v16 setActionTitle_];

    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = sub_1BE0530B4();
    [v16 setActionButtonAction_];

    [v3 setShowPrimaryButton_];
    v34 = 0;
LABEL_28:
    sub_1BD3789BC(v34);

    return;
  }

  if (v5 == 2)
  {
    if (v15)
    {
      (*(v7 + 104))(v9, *MEMORY[0x1E69B80D8], v6);
      v21 = PKPassKitBundle();
      if (!v21)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = v21;
      sub_1BE04B6F4();
      v24 = v23;

      (*(v7 + 8))(v9, v6);
      v25 = sub_1BE052404();
      v24, v26, v27, v28, v29, v30, v31, v32;
      [v16 setActionTitle_];

      sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = sub_1BE0530B4();
      [v16 setActionButtonAction_];

      [v3 setShowPrimaryButton_];
      v34 = 1;
      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 != 3)
  {
    if (v15)
    {
      [v15 setActionTitle_];
      [v16 setActionButtonAction_];

      sub_1BDA1A7B8(v3, a2 & 1, v53);
      sub_1BDA1A9F4(v3, v53);
      v35 = [v3 dockView];
      if (v35)
      {
        v36 = v35;
        v51 = [v35 footerView];

        if (v51)
        {
          [v51 setSecondaryActionButton_];

          v20 = v51;
          goto LABEL_22;
        }

LABEL_42:
        __break(1u);
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  [v15 setActionTitle_];
  [v16 setActionButtonAction_];

  sub_1BDA1A7B8(v3, a2 & 1, v53);
  v17 = [v3 dockView];
  if (!v17)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v17;
  v19 = [v17 footerView];

  if (!v19)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v19 setSecondaryActionButton_];

LABEL_14:
  [v53 setTertiaryActionButton_];

  v20 = v53;
LABEL_22:
}

void sub_1BDA17054(_BYTE *a1, int a2)
{
  LODWORD(v432) = a2;
  v433 = a1;
  v3 = sub_1BE04BAC4();
  v429 = *(v3 - 1);
  v430 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v428 = &v425 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v431 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v425 - v11;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v425 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v425 - v21;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v425 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v427 = &v425 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v425 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v425 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v425 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v425 - v39;
  v54.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v55 = &v425 - v50;
  v434 = v2;
  if ((v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] & 1) == 0)
  {
    v56 = *v433;
    if (v56 <= 8)
    {
      if (v56 - 5 < 4)
      {
        LODWORD(v57) = v432;
        if (v432)
        {
          v58 = *MEMORY[0x1E69B80D8];
          v59 = v431;
          v60 = *(v431 + 13);
          v57 = v42;
          v60(v37, v58, v42, v54.n128_f64[0]);
          v61 = PKPassKitBundle();
          if (!v61)
          {
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

          v62 = v61;
          sub_1BE04B6F4();
          v433 = v63;

          v64 = *(v59 + 1);
          v64(v37, v57);
          (v60)(v34, v58, v57);
          v65 = PKPassKitBundle();
          if (!v65)
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v66 = v65;
          v429 = sub_1BE04B6F4();
          v68 = v67;

          v64(v34, v57);
          v69 = v434;
          v434[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
          LODWORD(v57) = v432;
        }

        else
        {
          v429 = 0;
          v68 = 0;
          v433 = 0;
          v69 = v434;
          v434[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
        }

        v112 = 0;
        v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
        v82 = 7;
        v111 = 1;
LABEL_25:
        v113 = v57;
        LODWORD(v430) = v57;
        if (!v433)
        {
          goto LABEL_81;
        }

LABEL_80:
        if (v68)
        {
          goto LABEL_87;
        }

LABEL_81:
        v207 = v111;
        v208 = v57;
        LODWORD(v57) = v112;
        v209 = v113;
        v210 = v82;
        sub_1BDA197A8();
        v432 = v212;
        v218 = v213;
        if (v433)
        {
          v211, v211, v212, v213, v214, v215, v216, v217;
          if (v68)
          {
LABEL_83:
            v218, v219, v220, v221, v222, v223, v224, v225;
LABEL_86:
            v82 = v210;
            v113 = v209;
            v112 = v57;
            LOBYTE(v57) = v208;
            v111 = v207;
LABEL_87:
            v431 = v68;
            v180 = 0;
            if (v57)
            {
              v233 = v111;
              v111 = 1;
              v179 = 1;
              v181 = 1;
              if (v233 != 1)
              {
                goto LABEL_92;
              }
            }

            else
            {
              v179 = 0;
            }

            goto LABEL_91;
          }
        }

        else
        {
          v433 = sub_1BE048C84();
          v433, v226, v227, v228, v229, v230, v231, v232;
          if (v68)
          {
            goto LABEL_83;
          }
        }

        v429 = v432;
        v68 = v218;
        goto LABEL_86;
      }

      v70 = v51;
      v69 = v434;
      if (v56 == 4)
      {
        LOBYTE(v57) = v432;
        if (v432)
        {
          v114 = *MEMORY[0x1E69B80D8];
          v115 = v431;
          v116 = *(v431 + 13);
          v117 = v42;
          v116(&v425 - v50, v114, v42, v54.n128_f64[0]);
          v118 = PKPassKitBundle();
          if (!v118)
          {
LABEL_200:
            __break(1u);
            goto LABEL_201;
          }

          v119 = v118;
          v426 = sub_1BE04B6F4();
          v433 = v120;

          v121 = *(v115 + 1);
          v121(v55, v117);
          (v116)(v40, v114, v117);
          v122 = PKPassKitBundle();
          if (!v122)
          {
LABEL_204:
            __break(1u);
            goto LABEL_205;
          }

          v123 = v122;
          v429 = sub_1BE04B6F4();
          v68 = v124;

          v121(v40, v117);
          LOBYTE(v57) = v432;
        }

        else
        {
          v429 = 0;
          v68 = 0;
          v433 = 0;
        }

        v112 = 0;
        v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
        v82 = 7;
        LODWORD(v430) = 1;
        v113 = v57;
        v111 = 1;
        if (!v433)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

LABEL_40:
      if ((v432 & 1) == 0)
      {
        if (*v433)
        {
          v166 = v44;
          v167 = *MEMORY[0x1E69B80D8];
          v168 = v431;
          v169 = *(v431 + 13);
          v170 = v42;
          v169(v70, v167, v42, v54);
          v171 = PKPassKitBundle();
          LODWORD(v57) = v432;
          if (!v171)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v172 = v70;
          v173 = v171;
          v426 = sub_1BE04B6F4();
          v433 = v174;

          v175 = *(v168 + 1);
          v175(v172, v170);
          (v169)(v166, v167, v170);
          v176 = PKPassKitBundle();
          if (!v176)
          {
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

          v177 = v176;
          v429 = sub_1BE04B6F4();
          v68 = v178;

          v175(v166, v170);
          v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
          v82 = 4;
          v111 = 2;
          v112 = 1;
        }

        else
        {
          v112 = 0;
          v429 = 0;
          v68 = 0;
          v433 = 0;
          v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
          if (v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard])
          {
            v111 = 2;
          }

          else
          {
            v111 = 1;
          }

          v82 = 2;
          LODWORD(v57) = v432;
        }

        goto LABEL_181;
      }

      if (v56 >= 2)
      {
        v182 = v42;
        if (v56 != 2)
        {
          v414 = v46;
          v415 = *MEMORY[0x1E69B80D8];
          v416 = v431;
          v417 = *(v431 + 13);
          v417(v22, v415, v42, v54);
          v418 = PKPassKitBundle();
          if (!v418)
          {
            goto LABEL_212;
          }

          v419 = v418;
          v426 = sub_1BE04B6F4();
          v433 = v420;

          v421 = *(v416 + 1);
          v421(v22, v182);
          v57 = v414;
          (v417)(v414, v415, v182);
          v422 = PKPassKitBundle();
          if (!v422)
          {
LABEL_214:
            __break(1u);
            return;
          }

          v423 = v422;
          v429 = sub_1BE04B6F4();
          v68 = v424;

          v421(v57, v182);
          v112 = 1;
          v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
          v82 = 4;
          v111 = 2;
          LODWORD(v57) = v432;
          goto LABEL_181;
        }

        v183 = v47;
        v184 = *MEMORY[0x1E69B80D8];
        v185 = v431;
        v186 = *(v431 + 13);
        v186(v26, v184, v42, v54);
        v187 = PKPassKitBundle();
        if (!v187)
        {
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        v188 = v187;
        v426 = sub_1BE04B6F4();
        v433 = v189;

        v190 = *(v185 + 1);
        v190(v26, v182);
        v191 = v183;
        (v186)(v183, v184, v182);
        v192 = PKPassKitBundle();
        if (!v192)
        {
LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        v193 = v192;
        v429 = sub_1BE04B6F4();
        v68 = v194;

        v190(v191, v182);
        v82 = 3;
        LODWORD(v57) = v432;
      }

      else
      {
        v153 = *MEMORY[0x1E69B80D8];
        v154 = v431;
        v155 = *(v431 + 13);
        v156 = v42;
        v155(v31, v153, v42, v54);
        v157 = PKPassKitBundle();
        if (!v157)
        {
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

        v158 = v157;
        v426 = sub_1BE04B6F4();
        v433 = v159;

        v160 = *(v154 + 1);
        v160(v31, v156);
        v161 = v427;
        (v155)(v427, v153, v156);
        v162 = PKPassKitBundle();
        LODWORD(v57) = v432;
        if (!v162)
        {
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

        v163 = v162;
        v429 = sub_1BE04B6F4();
        v68 = v164;

        v160(v161, v156);
        v82 = 1;
      }

      v112 = 0;
      v111 = 1;
      v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
LABEL_181:
      v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
      goto LABEL_25;
    }

    v70 = v51;
    if (*v433 > 0xAu)
    {
      v69 = v434;
      if (v56 != 11)
      {
        if (v56 == 12)
        {
          v427 = v53;
          v83 = *MEMORY[0x1E69B80D8];
          v84 = v431;
          v85 = *(v431 + 13);
          v86 = v42;
          v87 = v48;
          v85(v48, v83, v42, v54.n128_f64[0]);
          v88 = PKPassKitBundle();
          if (!v88)
          {
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }

          v89 = v88;
          v426 = sub_1BE04B6F4();
          v433 = v90;

          v91 = *(v84 + 1);
          v91(v87, v86);
          v92 = sub_1BE052404();
          v93 = v428;
          sub_1BE04BC34();
          LOBYTE(v89) = sub_1BE04BAB4();
          (v429)[1](v93, v430);
          v94 = PKDeviceSpecificLocalizedStringKeyForKey(v92, v89 & 1);

          if (!v94)
          {
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }

          sub_1BE052434();
          v96 = v95;

          v97 = v427;
          (v85)(v427, v83, v86);
          v98 = PKPassKitBundle();
          if (!v98)
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          v99 = v98;
          v100 = sub_1BE04B6F4();
          v431 = v101;
          v96, v101, v102, v103, v104, v105, v106, v107;

          v91(v97, v86);
          v108 = [v69 fieldsModel];
          if (!v108)
          {
LABEL_198:
            __break(1u);
            goto LABEL_199;
          }

          v109 = v108;
          v110 = [v108 paymentSetupFieldWithIdentifier_];

          v429 = v100;
          if (v110)
          {

            v111 = 4;
          }

          else
          {
            v111 = 3;
          }

          v113 = 0;
          v112 = 0;
          LODWORD(v430) = 0;
          v179 = 0;
          v82 = 6;
          v180 = 1;
          v181 = 1;
          if (v432)
          {
LABEL_92:
            v234 = [v69 headerView];
            if (!v234)
            {
              __break(1u);
              goto LABEL_183;
            }

            v432 = v234;
            [v234 setAccessoryViewsDisabled_];
            if (v180)
            {
              [v69 showCheckmarkAnimated_];
              v235 = v433;
              v236 = sub_1BE052404();
              v235, v237, v238, v239, v240, v241, v242, v243;
              if (v431)
              {
                v244 = sub_1BE052404();
              }

              else
              {
                v244 = 0;
              }

              [v69 hideActivitySpinnerWithTitle:v236 subtitle:v244 animated:0];

              [v69 endUserInteraction];
              v256 = *&v69[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
              if (!v256)
              {
                goto LABEL_118;
              }

              v257 = *&v256[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
              if (!v257)
              {
                goto LABEL_118;
              }

              v258 = v82;
              v259 = v257;
              v260 = v256;
              v261 = sub_1BE04BC84();

              v262 = objc_allocWithZone(PKPassView);
              v247 = v261;
              v263 = [v262 initWithPass:v247 content:5];
              v264 = v263;
              if (v263)
              {
                v265 = [v263 pass];
                if (!v265)
                {
LABEL_191:
                  __break(1u);
                  goto LABEL_192;
                }

                v266 = v265;
                [v265 loadImageSetSync:0 preheat:1];
              }

              v267 = [v264 snapshotOfFrontFace];
              v268 = *&v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
              if (v268)
              {
                v269 = *(v268 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
                v270 = *(v269 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
                *(v269 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = v267;
                v267 = v270;
              }

              v271 = v112;

              v272 = [objc_opt_self() sharedInstance];
              if (!v272)
              {
LABEL_190:
                __break(1u);
                goto LABEL_191;
              }

              v273 = v272;
              v274 = swift_allocObject();
              *(v274 + 16) = v69;
              v439 = sub_1BDA1B554;
              v440 = v274;
              aBlock = MEMORY[0x1E69E9820];
              v436 = 1107296256;
              v437 = sub_1BD20815C;
              v438 = &block_descriptor_63_4;
              v275 = _Block_copy(&aBlock);
              v276 = v440;
              v277 = v434;
              v278 = v276;
              v69 = v434;
              v278, v279, v280, v281, v282, v283, v284, v285;
              [v273 snapshotWithPass:v247 completion:v275];
              _Block_release(v275);

              v255 = v247;
              v82 = v258;
              v112 = v271;
LABEL_117:

LABEL_118:
              if (v82 != 7)
              {
                if (v112 != v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure])
                {
                  v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure] = v112;
                  sub_1BD6066F8(v112, 1);
                }

                v286 = *&v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
                if (v286)
                {
                  LODWORD(v433) = v180;
                  v287 = v286;
                  v288 = [v69 view];
                  if (!v288)
                  {
LABEL_186:
                    __break(1u);
                    goto LABEL_187;
                  }

                  v289 = v288;
                  v290 = v113;
                  v291 = v82;
                  [v288 setNeedsLayout];

                  v292 = [v69 view];
                  if (!v292)
                  {
LABEL_187:
                    __break(1u);
                    goto LABEL_188;
                  }

                  v293 = v292;
                  [v292 layoutIfNeeded];

                  v294 = objc_opt_self();
                  v295 = *&v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
                  v296 = swift_allocObject();
                  *(v296 + 16) = v287;
                  *(v296 + 24) = v291;
                  *(v296 + 32) = v69;
                  v439 = sub_1BD37DC1C;
                  v440 = v296;
                  aBlock = MEMORY[0x1E69E9820];
                  v436 = 1107296256;
                  v437 = sub_1BD126964;
                  v438 = &block_descriptor_240;
                  v297 = _Block_copy(&aBlock);
                  v298 = v440;
                  v299 = v434;
                  v300 = v287;
                  v298, v301, v302, v303, v304, v305, v306, v307;
                  v439 = PKEdgeInsetsMake;
                  v440 = 0;
                  v69 = v434;
                  aBlock = MEMORY[0x1E69E9820];
                  v436 = 1107296256;
                  v437 = sub_1BD3F08C0;
                  v438 = &block_descriptor_57_7;
                  v308 = _Block_copy(&aBlock);
                  [v294 pkui:v295 animateUsingFactory:0 withDelay:v297 options:v308 animations:0.0 completion:?];

                  _Block_release(v308);
                  _Block_release(v297);
                  v113 = v290;
                  v180 = v433;
                }
              }

              v309 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally;
              if (v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally])
              {
                if (!(v113 & 1 | ((v181 & 1) == 0)))
                {
LABEL_133:
                  v310 = 0;
                  goto LABEL_135;
                }
              }

              else if (v113)
              {
                sub_1BD37834C();
              }

              else
              {
                [v69 setHidesBackButton:0 animated:0];
                if ((v69[v309] & 1) == 0)
                {
                  [v69 _setLeftBarButtonItems_animated_];
                }

                if (v181)
                {
                  goto LABEL_133;
                }
              }

              v310 = v180 ^ 1u;
LABEL_135:
              v311 = [v69 view];
              if (v311)
              {
                v312 = v311;
                [v311 setUserInteractionEnabled_];

                v313 = [v69 dockView];
                v314 = v313;
                if (!v310)
                {
                  if (v313)
                  {
                    [v313 setButtonsEnabled_];
                    goto LABEL_175;
                  }

                  goto LABEL_185;
                }

                if (v313)
                {
                  [v313 setButtonsEnabled_];

                  v315 = [v69 visibleFieldIdentifiers];
                  if (v315)
                  {
                    v323 = v315;
                    v324 = sub_1BE052744();
                  }

                  else
                  {
                    v324 = MEMORY[0x1E69E7CC0];
                  }

                  v325 = v324[2];
                  if (v325)
                  {
                    v326 = v324 + 5;
                    v327 = 1;
                    do
                    {
                      v328 = *v326;
                      sub_1BE048C84();
                      v329 = sub_1BE052404();
                      v328, v330, v331, v332, v333, v334, v335, v336;
                      v337 = [v69 fieldForIdentifier_];

                      if (v337)
                      {

                        v338 = [v337 isReadonly];
                        v339 = [v337 isOptional];
                        v340 = [v337 submissionStringMeetsAllRequirements];
                        v341 = [v337 submissionStringMeetsValidationRegex];

                        if (!v338)
                        {
                          if (v339)
                          {
                            v327 &= v341;
                          }

                          else
                          {
                            v327 &= v340;
                          }
                        }

                        v69 = v434;
                      }

                      v326 += 2;
                      --v325;
                    }

                    while (v325);
                  }

                  else
                  {
                    LOBYTE(v327) = 1;
                  }

                  v324, v316, v317, v318, v319, v320, v321, v322;
                  [v69 _setPrimaryButtonEnabled_];
                  v342 = *&v69[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
                  if (!v342)
                  {
                    goto LABEL_176;
                  }

                  v314 = v342;
                  v343 = [v69 visibleFieldIdentifiers];
                  if (v343)
                  {
                    v351 = v343;
                    v352 = sub_1BE052744();
                  }

                  else
                  {
                    v352 = MEMORY[0x1E69E7CC0];
                  }

                  v353 = v352[2];
                  v430 = v352;
                  if (v353)
                  {
                    v354 = v352 + 5;
                    LODWORD(v433) = 1;
                    do
                    {
                      v369 = *v354;
                      sub_1BE048C84();
                      v370 = sub_1BE052404();
                      v369, v371, v372, v373, v374, v375, v376, v377;
                      v378 = [v434 fieldForIdentifier_];

                      if (v378)
                      {
                        v379 = [v378 identifier];
                        v380 = sub_1BE052434();
                        v382 = v381;

                        v383 = sub_1BE052434();
                        v385 = v384;
                        if (v380 == v383 && v382 == v384)
                        {

                          v382, v355, v356, v357, v358, v359, v360, v361;
                          v385, v362, v363, v364, v365, v366, v367, v368;
                        }

                        else
                        {
                          v387 = sub_1BE053B84();
                          v382, v388, v389, v390, v391, v392, v393, v394;
                          v385, v395, v396, v397, v398, v399, v400, v401;
                          if (v387)
                          {
                          }

                          else
                          {
                            v402 = [v378 isReadonly];
                            v403 = [v378 isOptional];
                            v404 = [v378 submissionStringMeetsAllRequirements];
                            v405 = [v378 submissionStringMeetsValidationRegex];

                            if ((v402 & 1) == 0)
                            {
                              if (v403)
                              {
                                v406 = v405 & v433;
                              }

                              else
                              {
                                v406 = v404 & v433;
                              }

                              LODWORD(v433) = v406;
                            }
                          }
                        }
                      }

                      v354 += 2;
                      --v353;
                    }

                    while (v353);
                  }

                  else
                  {
                    LODWORD(v433) = 1;
                  }

                  v430, v344, v345, v346, v347, v348, v349, v350;
                  [v314 setEnabled_];
LABEL_175:

LABEL_176:
                  v431, v407, v408, v409, v410, v411, v412, v413;
                  return;
                }

LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
                goto LABEL_186;
              }

LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

            v245 = v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard];
            v246 = v433;
            v247 = sub_1BE052404();
            v246, v248, v249, v250, v251, v252, v253, v254;
            if (v245 == 1)
            {
              if (v431)
              {
LABEL_98:
                v255 = sub_1BE052404();
LABEL_114:
                [v69 hideActivitySpinnerWithTitle:v247 subtitle:v255 animated:1];
                goto LABEL_117;
              }
            }

            else
            {
              if (v181)
              {
                if (v431)
                {
                  v255 = sub_1BE052404();
                }

                else
                {
                  v255 = 0;
                }

                [v69 showActivitySpinnerWithTitle:v247 subtitle:v255];
                goto LABEL_117;
              }

              if (v431)
              {
                goto LABEL_98;
              }
            }

            v255 = 0;
            goto LABEL_114;
          }

LABEL_91:
          sub_1BDA169B0(v111, 1);
          v181 = v179;
          goto LABEL_92;
        }

        goto LABEL_40;
      }

      LOBYTE(v57) = v432;
      if (v432)
      {
        v137 = v52;
        v138 = v431;
        v139 = *(v431 + 13);
        v140 = v42;
        v141 = v49;
        v139(v49, *MEMORY[0x1E69B80D8], v42, v54.n128_f64[0]);
        v142 = PKPassKitBundle();
        if (!v142)
        {
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

        v143 = v142;
        v426 = sub_1BE04B6F4();
        v433 = v144;

        v57 = *(v138 + 1);
        v145 = v141;
        v146 = v140;
        v431 = v138 + 8;
        (v57)(v145, v140);
        v147 = sub_1BE052404();
        v148 = v428;
        sub_1BE04BC34();
        v149 = sub_1BE04BAB4();
        (v429)[1](v148, v430);
        v150 = PKDeviceSpecificLocalizedStringKeyForKey(v147, v149 & 1);

        if (v150)
        {
          sub_1BE052434();
          v152 = v151;
        }

        else
        {
          v152 = 0x80000001BE12F470;
        }

        v195 = v146;
        (v139)(v137, *MEMORY[0x1E69B80D0], v146);
        v196 = PKPassKitCoreBundle();
        if (!v196)
        {
          goto LABEL_206;
        }

        v197 = v196;
        v429 = sub_1BE04B6F4();
        v68 = v198;
        v152, v198, v199, v200, v201, v202, v203, v204;

        (v57)(v137, v195);
        v82 = 5;
        LOBYTE(v57) = v432;
      }

      else
      {
        v429 = 0;
        v68 = 0;
        v433 = 0;
        v82 = 7;
      }

      v165 = [v69 fieldsModel];
      if (!v165)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v69 = v434;
      if (v56 == 9)
      {
        LOBYTE(v57) = v432;
        if (v432)
        {
          v125 = v45;
          v126 = v431;
          v127 = *(v431 + 13);
          v128 = v42;
          v127(v16, *MEMORY[0x1E69B80D8], v42, v54.n128_f64[0]);
          v129 = PKPassKitBundle();
          if (!v129)
          {
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          v130 = v129;
          v426 = sub_1BE04B6F4();
          v433 = v131;

          v132 = *(v126 + 1);
          v132(v16, v128);
          v133 = v125;
          (v127)(v125, *MEMORY[0x1E69B80D0], v128);
          v134 = PKPassKitCoreBundle();
          if (!v134)
          {
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          v135 = v134;
          v429 = sub_1BE04B6F4();
          v68 = v136;

          v132(v133, v128);
          v82 = 5;
        }

        else
        {
          v429 = 0;
          v68 = 0;
          v433 = 0;
          v82 = 7;
        }

        v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 1;
        v69[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
        v165 = [v69 fieldsModel];
        if (!v165)
        {
          goto LABEL_195;
        }
      }

      else
      {
        if (v56 != 10)
        {
          goto LABEL_40;
        }

        LOBYTE(v57) = v432;
        if (v432)
        {
          v71 = v43;
          v72 = v431;
          v73 = *(v431 + 13);
          v74 = v42;
          v73(v12, *MEMORY[0x1E69B80D8], v42, v54.n128_f64[0]);
          v75 = PKPassKitBundle();
          if (!v75)
          {
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v76 = v75;
          v426 = sub_1BE04B6F4();
          v433 = v77;

          v78 = *(v72 + 1);
          v78(v12, v74);
          (v73)(v71, *MEMORY[0x1E69B80D0], v74);
          v79 = PKPassKitCoreBundle();
          if (!v79)
          {
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          v80 = v79;
          v429 = sub_1BE04B6F4();
          v68 = v81;

          v78(v71, v74);
          v82 = 5;
        }

        else
        {
          v429 = 0;
          v68 = 0;
          v433 = 0;
          v82 = 7;
        }

        v165 = [v69 fieldsModel];
        if (!v165)
        {
          goto LABEL_194;
        }
      }
    }

    v205 = v165;
    v206 = [v165 paymentSetupFieldWithIdentifier_];

    if (v206)
    {

      v113 = 0;
      v112 = 0;
      LODWORD(v430) = 0;
      v111 = 4;
      if (!v433)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v113 = 0;
      v112 = 0;
      LODWORD(v430) = 0;
      v111 = 3;
      if (!v433)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_80;
  }
}

void sub_1BDA18F9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      sub_1BD826850(v2, 0, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
    }
  }

  if ((v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 1;
    v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive] = 0;
    sub_1BD3789BC(0);
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
    if (v6)
    {
      v7 = v6;
      sub_1BD814F6C();
    }
  }
}

void sub_1BDA1911C()
{
  v1 = [v0 fieldsModel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v1 paymentSetupFieldWithIdentifier_];

  if (v3)
  {
    [v3 setCurrentValue_];
    sub_1BDA19220();
  }

  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 fieldsModel];
    if (v6)
    {
      v7 = v6;
      sub_1BD8145A8(v6);

      return;
    }

LABEL_11:
    __break(1u);
  }
}

id sub_1BDA19220()
{
  result = [v0 fieldsModel];
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v2 = result;
  v3 = [result hasVisibleEditableFields];

  if (v3)
  {
    result = [v0 headerView];
    if (result)
    {
      v4 = result;
      [result setActionTitle_];
      [v4 setActionButtonAction_];

      goto LABEL_5;
    }

LABEL_47:
    __break(1u);
    return result;
  }

LABEL_5:
  v5 = [v0 visibleFieldIdentifiers];
  if (v5)
  {
    v13 = v5;
    v14 = sub_1BE052744();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);
  v98 = v14;
  if (v15)
  {
    v16 = (v14 + 40);
    v17 = 1;
    while (1)
    {
      v18 = *v16;
      sub_1BE048C84();
      v19 = sub_1BE052404();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = [v0 fieldForIdentifier_];

      if (!v27)
      {
        goto LABEL_11;
      }

      v28 = [v27 isReadonly];
      v29 = [v27 isOptional];
      v30 = [v27 submissionStringMeetsAllRequirements];
      v31 = [v27 submissionStringMeetsValidationRegex];

      if (v28)
      {
        goto LABEL_11;
      }

      if (v29)
      {
        if (v31)
        {
          goto LABEL_11;
        }
      }

      else if (v30)
      {
        goto LABEL_11;
      }

      v17 = 0;
LABEL_11:
      v16 += 2;
      if (!--v15)
      {
        goto LABEL_20;
      }
    }
  }

  v17 = 1;
LABEL_20:
  v98, v6, v7, v8, v9, v10, v11, v12;
  [v0 _setPrimaryButtonEnabled_];
  v32 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
  if (v32)
  {
    v97 = v32;
    v33 = [v0 visibleFieldIdentifiers];
    if (v33)
    {
      v41 = v33;
      v42 = sub_1BE052744();
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v42 + 16);
    v96 = v42;
    if (v43)
    {
      v44 = (v42 + 40);
      v99 = 1;
      while (1)
      {
        v59 = *v44;
        sub_1BE048C84();
        v60 = sub_1BE052404();
        v59, v61, v62, v63, v64, v65, v66, v67;
        v68 = [v0 fieldForIdentifier_];

        if (v68)
        {
          v69 = [v68 identifier];
          v70 = sub_1BE052434();
          v72 = v71;

          v73 = sub_1BE052434();
          v75 = v74;
          if (v70 == v73 && v72 == v74)
          {

            v72, v45, v46, v47, v48, v49, v50, v51;
            v75, v52, v53, v54, v55, v56, v57, v58;
          }

          else
          {
            v77 = sub_1BE053B84();
            v72, v78, v79, v80, v81, v82, v83, v84;
            v75, v85, v86, v87, v88, v89, v90, v91;
            if (v77)
            {
            }

            else
            {
              v92 = [v68 isReadonly];
              v93 = [v68 isOptional];
              v94 = [v68 submissionStringMeetsAllRequirements];
              v95 = [v68 submissionStringMeetsValidationRegex];

              if ((v92 & 1) == 0)
              {
                if (v93)
                {
                  if ((v95 & 1) == 0)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v94 & 1) == 0)
                {
LABEL_40:
                  v99 = 0;
                }
              }
            }
          }
        }

        v44 += 2;
        if (!--v43)
        {
          goto LABEL_42;
        }
      }
    }

    v99 = 1;
LABEL_42:
    v96, v34, v35, v36, v37, v38, v39, v40;
    [v97 setEnabled_];
  }

  return [v0 noteFieldIdentifiersChanged];
}

void sub_1BDA19668()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 fieldsModel];
    if (v3)
    {
      v4 = v3;
      sub_1BD8145A8(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BDA19740()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD814F6C();
  }
}

id sub_1BDA197A8()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  v24 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v100 - v21;
  v26 = *MEMORY[0x1E69B80D8];
  v27 = *(v3 + 104);
  if ((v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] & 1) == 0)
  {
    v34 = *MEMORY[0x1E69B80D8];
    v35 = *(v3 + 104);
    v27(&v100 - v21, v24);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v112 = sub_1BE04B6F4();

      v37 = *(v3 + 8);
      v37(v25, v2);
      v35(v19, v34, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v38 = result;
        sub_1BE04B6F4();

        v37(v19, v2);
        return v112;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v106 = v22;
  v107 = v23;
  v110 = v26;
  v111 = v27;
  v27(v16, v24);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v29 = result;
  v105 = v5;
  v112 = sub_1BE04B6F4();
  v109 = v30;

  v108 = *(v3 + 8);
  v108(v16, v2);
  v31 = [v1 visibleFieldIdentifiers];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1BE052744();
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1BE052434();
  v41 = v40;
  v113[0] = v39;
  v113[1] = v40;
  MEMORY[0x1EEE9AC00](v39);
  *(&v100 - 2) = v113;
  v42 = sub_1BD2FF084(sub_1BD20DFC4, (&v100 - 4), v33);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = v33[2];
  v33, v51, v52, v53, v54, v55, v56, v57;
  if (!v50)
  {
    (v111)(v13, v110, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v59 = result;
      sub_1BE04B6F4();

      v108(v13, v2);
      return v112;
    }

    goto LABEL_44;
  }

  if (v42)
  {
    (v111)(v10, v110, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v58 = result;
      sub_1BE04B6F4();

      v108(v10, v2);
      return v112;
    }

    goto LABEL_45;
  }

  v60 = [v1 visibleFieldIdentifiers];
  if (v60)
  {
    v68 = v60;
    v69 = sub_1BE052744();
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  v70 = v112;
  v71 = v69[2];
  if (v71)
  {
    v102 = v3 + 8;
    v103 = v2;
    v72 = 0;
    v73 = -v71;
    v74 = v69 + 5;
    v75 = 1;
    v100 = v69 + 5;
    v101 = v69;
LABEL_21:
    v104 = v75;
    v76 = &v74[2 * v72++];
    do
    {
      v77 = *v76;
      sub_1BE048C84();
      v78 = sub_1BE052404();
      v77, v79, v80, v81, v82, v83, v84, v85;
      v86 = [v1 fieldForIdentifier_];

      if (v86)
      {

        v94 = [v86 isReadonly];
        v95 = [v86 isOptional];
        v96 = [v86 submissionStringMeetsAllRequirements];
        v97 = [v86 submissionStringMeetsValidationRegex];

        if (!v94)
        {
          if (v95)
          {
            if ((v97 & 1) == 0)
            {
LABEL_28:
              v75 = 0;
              v74 = v100;
              if (v73 + v72)
              {
                goto LABEL_21;
              }

              v101, v87, v88, v89, v90, v91, v92, v93;
              v2 = v103;
              v70 = v112;
              goto LABEL_31;
            }
          }

          else if ((v96 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      ++v72;
      v76 += 2;
    }

    while (v73 + v72 != 1);
    v101, v87, v88, v89, v90, v91, v92, v93;
    v2 = v103;
    v70 = v112;
    if (v104)
    {
      goto LABEL_35;
    }

LABEL_31:
    if ([v1 isEmpty])
    {
      v98 = v106;
      (v111)(v106, v110, v2);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v99 = result;
    }

    else
    {
      v98 = v105;
      (v111)(v105, v110, v2);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v99 = result;
    }
  }

  else
  {
    v69, v61, v62, v63, v64, v65, v66, v67;
LABEL_35:
    v98 = v107;
    (v111)(v107, v110, v2);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_46;
    }

    v99 = result;
  }

  sub_1BE04B6F4();

  v108(v98, v2);
  return v70;
}

uint64_t sub_1BDA1A068(char a1)
{
  v2 = [v1 visibleFieldIdentifiers];
  if (v2)
  {
    v10 = v2;
    v11 = sub_1BE052744();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v71 = v11;
  if (v12)
  {
    v13 = (v11 + 40);
    v72 = 1;
    v14 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
    v15 = *MEMORY[0x1E69BC1C0];
    v16 = &selRef_hoursOfDay;
    v73 = v1;
    while (1)
    {
      v17 = *v13;
      sub_1BE048C84();
      v18 = sub_1BE052404();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v26 = [v1 v14[462]];

      if (!v26)
      {
        goto LABEL_7;
      }

      v27 = [v26 v16[20]];
      v28 = sub_1BE052434();
      v30 = v29;

      v31 = sub_1BE052434();
      v39 = v32;
      if (v28 == v31 && v30 == v32)
      {
        v30, v32, v33, v34, v35, v36, v37, v38;
        v39, v56, v57, v58, v59, v60, v61, v62;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = sub_1BE053B84();
        v30, v42, v43, v44, v45, v46, v47, v48;
        v39, v49, v50, v51, v52, v53, v54, v55;
        if (v41 & 1) != 0 && (a1)
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      v63 = v15;
      v64 = v14;
      v65 = v16;
      v66 = [v26 isReadonly];
      v67 = [v26 isOptional];
      v68 = [v26 submissionStringMeetsAllRequirements];
      v69 = [v26 submissionStringMeetsValidationRegex];

      if (v66)
      {
        v16 = v65;
        v14 = v64;
        v15 = v63;
        v1 = v73;
      }

      else
      {
        v16 = v65;
        v14 = v64;
        v15 = v63;
        if (v67)
        {
          v1 = v73;
          if ((v69 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v1 = v73;
          if ((v68 & 1) == 0)
          {
LABEL_23:
            v72 = 0;
          }
        }
      }

LABEL_7:
      v13 += 2;
      if (!--v12)
      {
        goto LABEL_25;
      }
    }
  }

  v72 = 1;
LABEL_25:
  v71, v3, v4, v5, v6, v7, v8, v9;
  return v72 & 1;
}

void sub_1BDA1A304()
{
  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton);
}

uint64_t sub_1BDA1A404(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BDA1B55C;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_69_3;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = a1;
  v16 = a2;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

void sub_1BDA1A6A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
    v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
    *(v3 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = a2;
    v4 = a2;
  }
}

unint64_t sub_1BDA1A710()
{
  result = qword_1EBD5BF28;
  if (!qword_1EBD5BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BF28);
  }

  return result;
}

void sub_1BDA1A764(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BDA18F9C();
  }
}

void sub_1BDA1A7B8(void *a1, char a2, void *a3)
{
  [a1 setShowPrimaryButton_];
  v4 = [a1 visibleFieldIdentifiers];
  if (v4)
  {
    v12 = v4;
    v13 = sub_1BE052744();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  v33 = v13;
  if (v14)
  {
    v15 = (v13 + 40);
    v16 = 1;
    do
    {
      v17 = *v15;
      sub_1BE048C84();
      v18 = sub_1BE052404();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v26 = [a1 fieldForIdentifier_];

      if (v26)
      {

        v27 = [v26 isReadonly];
        v28 = [v26 isOptional];
        v29 = [v26 submissionStringMeetsAllRequirements];
        v30 = [v26 submissionStringMeetsValidationRegex];

        if (!v27)
        {
          if (v28)
          {
            v16 &= v30;
          }

          else
          {
            v16 &= v29;
          }
        }
      }

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  v33, v5, v6, v7, v8, v9, v10, v11;
  [a1 _setPrimaryButtonEnabled_];
  if (a2)
  {
    v31 = [a3 primaryButton];
    if (v31)
    {
      v35 = v31;
      [v31 pkui:0 setAlpha:0.0 animated:?];
      [v35 pkui:1 setAlpha:1.0 animated:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BDA1A9F4(char *a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton;
  v10 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
  if (v10)
  {
    return [a2 setTertiaryActionButton_];
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v8, v4);
    v15 = sub_1BE052404();
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = [a2 createAlternateActionButtonWithTitle_];

    v97 = v23;
    [v97 addTarget:a1 action:sel_verifyLaterButtonPressed forControlEvents:0x2000];
    v24 = [a1 visibleFieldIdentifiers];
    if (v24)
    {
      v32 = v24;
      v33 = sub_1BE052744();
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v98 = v9;
    v99 = a2;
    v34 = v33[2];
    v96 = v33;
    if (v34)
    {
      v35 = v33 + 5;
      v100 = 1;
      v36 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
      v37 = *MEMORY[0x1E69BC1C0];
      v38 = &selRef_hoursOfDay;
      v101 = a1;
      while (1)
      {
        v53 = *v35;
        sub_1BE048C84();
        v54 = sub_1BE052404();
        v53, v55, v56, v57, v58, v59, v60, v61;
        v62 = [a1 v36[462]];

        if (v62)
        {
          v63 = [v62 v38[20]];
          v64 = sub_1BE052434();
          v66 = v65;

          v67 = sub_1BE052434();
          v69 = v68;
          if (v64 == v67 && v66 == v68)
          {

            v66, v39, v40, v41, v42, v43, v44, v45;
            v69, v46, v47, v48, v49, v50, v51, v52;
          }

          else
          {
            v71 = sub_1BE053B84();
            v66, v72, v73, v74, v75, v76, v77, v78;
            v69, v79, v80, v81, v82, v83, v84, v85;
            if (v71)
            {
            }

            else
            {
              v86 = v37;
              v87 = v36;
              v88 = v38;
              v89 = [v62 isReadonly];
              v90 = [v62 isOptional];
              v91 = [v62 submissionStringMeetsAllRequirements];
              v92 = [v62 submissionStringMeetsValidationRegex];

              if (v89)
              {
                v38 = v88;
                v36 = v87;
                v37 = v86;
                a1 = v101;
              }

              else
              {
                v38 = v88;
                v36 = v87;
                v37 = v86;
                if (v90)
                {
                  a1 = v101;
                  if ((v92 & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  a1 = v101;
                  if ((v91 & 1) == 0)
                  {
LABEL_23:
                    v100 = 0;
                  }
                }
              }
            }
          }
        }

        v35 += 2;
        if (!--v34)
        {
          goto LABEL_25;
        }
      }
    }

    v100 = 1;
LABEL_25:
    v96, v25, v26, v27, v28, v29, v30, v31;
    v93 = v97;
    [v97 setEnabled_];

    v94 = v98;
    v95 = *&a1[v98];
    *&a1[v98] = v93;

    v10 = *&a1[v94];
    a2 = v99;
    return [a2 setTertiaryActionButton_];
  }

  __break(1u);
  return result;
}

void sub_1BDA1AE08(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  v20 = [a1 hasLocalizedTitleAndMessage];
  v21 = MEMORY[0x1E69B80D8];
  if ((v20 & 1) == 0)
  {
    v93 = v10;
    v94 = v2;
    v97 = a1;
    v22 = *(v8 + 104);
    v96 = *MEMORY[0x1E69B80D8];
    v95 = v22;
    v22(v19);
    v23 = PKPassKitBundle();
    if (v23)
    {
      v24 = v23;
      sub_1BE04B6F4();
      v26 = v25;

      v92 = *(v8 + 8);
      v92(v19, v7);
      v27 = sub_1BE052404();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = v97;
      [v97 setLocalizedTitle_];

      v95(v15, v96, v7);
      v36 = PKPassKitBundle();
      if (v36)
      {
        v37 = v36;
        sub_1BE04B6F4();
        v39 = v38;

        v92(v15, v7);
        v40 = sub_1BE052404();
        v39, v41, v42, v43, v44, v45, v46, v47;
        [v35 setLocalizedMessage_];

        a1 = v35;
        v10 = v93;
        v2 = v94;
        v21 = MEMORY[0x1E69B80D8];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_1BE04BC34();
  v48 = sub_1BE04BA54();
  (*(v99 + 8))(v6, v100);
  v49 = *v21;
  v50 = *(v8 + 104);
  if (v48)
  {
    v51 = v98;
    v50(v98, v49, v7);
    v52 = PKPassKitBundle();
    if (v52)
    {
      v53 = v52;
      v55 = sub_1BE04B6F4();
LABEL_10:
      v57 = v54;

      (*(v8 + 8))(v51, v7);
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v58 = swift_allocObject();
      v58[2] = v2;
      v59 = swift_allocObject();
      v59[2] = v2;
      v60 = swift_allocObject();
      v60[2] = v2;
      v61 = v2;
      v62 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v55, v57, sub_1BDA1B53C, v58, sub_1BDA1B544, v59, sub_1BDA1B54C, v60);
      v57, v63, v64, v65, v66, v67, v68, v69;
      v58, v70, v71, v72, v73, v74, v75, v76;
      v59, v77, v78, v79, v80, v81, v82, v83;
      v60, v84, v85, v86, v87, v88, v89, v90;
      [v61 presentViewController:v62 animated:1 completion:0];

      return;
    }

    goto LABEL_13;
  }

  v50(v10, v49, v7);
  v56 = PKPassKitBundle();
  if (v56)
  {
    v53 = v56;
    v55 = sub_1BE04B6F4();
    v51 = v10;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1BDA1B3A0(char *a1)
{
  if ((a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] & 1) == 0)
  {
    v1 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
    if (v1)
    {
      v3 = v1;
      v4 = [a1 fieldsModel];
      if (v4)
      {
        v5 = v4;
        sub_1BD8145A8(v4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BDA1B444(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BDA1B4A0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t AccountAutomaticPaymentsModel.__allocating_init(controller:)(void *a1)
{
  v2 = swift_allocObject();
  AccountAutomaticPaymentsModel.init(controller:)(a1);
  return v2;
}

void sub_1BDA1B5C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 40);
}

uint64_t sub_1BDA1B698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v13 = sub_1BE04AF64();
  return (*(*(v13 - 8) + 16))(a2, v3 + v12, v13);
}

uint64_t sub_1BDA1B790(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BDA1D640(v5);
}

uint64_t sub_1BDA1B85C()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 24);
}

void sub_1BDA1B8FC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 24);
}

void sub_1BDA1B9CC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {

    sub_1BDA20DE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BDA1BB28()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 40);
}

void sub_1BDA1BBC8(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
    sub_1BDA217C4();

    sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BDA1BCF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  sub_1BDA217C4();
  sub_1BDA21BE0();
}

void sub_1BDA1BD2C()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] == 2)
  {
    v2 = [v1 account];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 creditDetails];

      if (v4)
      {
        v5 = [v4 termsIdentifier];

        if (v5)
        {
          sub_1BE052434();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BDA1BE00()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] == 2)
  {
    v2 = [v1 account];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 creditDetails];

      if (v4)
      {
        v5 = [v4 currencyCode];

        if (v5)
        {
          sub_1BE052434();

          return;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

double sub_1BDA1BEDC()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  sub_1BE048C84();
  return result;
}

void sub_1BDA1BF9C(unsigned __int8 *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v11 = *(v1 + v3);
  v12 = *(v11 + 2);
  if (v12 == *(a1 + 2))
  {
    if (v12)
    {
      v13 = v11 == a1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_10:
      *(v1 + v3) = a1;
      v11, v4, v5, v6, v7, v8, v9, v10;
    }

    else
    {
      v14 = v11 + 32;
      v15 = a1 + 32;
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_11;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    a1, v24, v25, v26, v27, v28, v29, v30;
  }
}

void sub_1BDA1C114(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BDA1C264(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

void sub_1BDA1C32C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }
}

uint64_t sub_1BDA1C454@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v20 + v18, a5, a3, a4);
}

uint64_t sub_1BDA1C534(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v7 = sub_1BDA26E18(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t sub_1BDA1C73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1BD0DE19C(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1BD2C7C4C(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1BDA1C820()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  if (!*(*(v1 + v10) + 16))
  {
    [*(v1 + 48) featureIdentifier];
    v67 = sub_1BE04C124();
    v69 = v68;
    sub_1BDA22B14();
    if (!v71)
    {
      return v67;
    }

    v81 = v70;
    MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
    MEMORY[0x1BFB3F610](v67, v69);
    v69, v72, v73, v74, v75, v76, v77, v78;
    return v81;
  }

  v11 = swift_getKeyPath();
  sub_1BE04B594();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v1 + 40);
  if (v19 == 4)
  {
    v79 = "TS_DATE_FOOTER_BIWEEKLY_DATE";
    v80 = 0xD00000000000003ALL;
    return sub_1BDA1CBBC(v80, v79 | 0x8000000000000000);
  }

  if (v19 == 5)
  {
    v79 = "PKAccountServiceUseOrdinalDay";
    v80 = 0xD00000000000003CLL;
    return sub_1BDA1CBBC(v80, v79 | 0x8000000000000000);
  }

  if (v19 != 6)
  {
    return 0;
  }

  v20 = swift_getKeyPath();
  sub_1BE04B594();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay;
  v29 = sub_1BDA2391C(*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay));
  v31 = v30;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000037, 0x80000001BE148310);
  v32 = swift_getKeyPath();
  sub_1BE04B594();
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = *(v1 + v28);
  if (v40 >= 29)
  {
    v41 = 0x414C5F524F5F3932;
  }

  else
  {
    v41 = 0x38325F4F545F31;
  }

  if (v40 >= 29)
  {
    v42 = 0xEB00000000524554;
  }

  else
  {
    v42 = 0xE700000000000000;
  }

  MEMORY[0x1BFB3F610](v41, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  [*(v1 + 48) featureIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BE0B69E0;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1BD110550();
  *(v50 + 32) = v29;
  *(v50 + 40) = v31;
  v51 = sub_1BE04C134();
  0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
  v50, v59, v60, v61, v62, v63, v64, v65;
  return v51;
}

uint64_t sub_1BDA1CBBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BDA1DF28();
  KeyPath = swift_getKeyPath();
  v53 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v59 = v2;
  v52 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v51 = *(v5 + 16);
  v51(v7, v2 + v17, v4);
  v18 = sub_1BE04AE64();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v20 = [v8 stringFromDate_];

  v21 = sub_1BE052434();
  v54 = v22;
  v55 = v21;

  v23 = sub_1BDA1E0E8();
  v24 = swift_getKeyPath();
  v58 = v3;
  sub_1BE04B594();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v51(v7, v3 + v17, v4);
  v32 = sub_1BE04AE64();
  v19(v7, v4);
  v33 = [v23 stringFromDate_];

  v34 = sub_1BE052434();
  v36 = v35;

  [*(v3 + 48) featureIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BE0B6CA0;
  v38 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v39 = sub_1BD110550();
  v40 = v54;
  *(v37 + 32) = v55;
  *(v37 + 40) = v40;
  *(v37 + 96) = v38;
  *(v37 + 104) = v39;
  *(v37 + 64) = v39;
  *(v37 + 72) = v34;
  *(v37 + 80) = v36;
  v41 = sub_1BE04C134();
  v37, v42, v43, v44, v45, v46, v47, v48;
  return v41;
}

void sub_1BDA1CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  if (MEMORY[0x1BFB40440](*(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount), *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8), *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16), a1, a2, a3))
  {
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = v4;

    sub_1BDA21BE0();
  }

  else
  {
    v16[3] = HIWORD(v4);
    KeyPath = swift_getKeyPath();
    v18 = v16;
    MEMORY[0x1EEE9AC00](KeyPath);
    v19 = v3;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    v8 = KeyPath;
    sub_1BE04B584();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_1BDA1D0E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4;
  sub_1BDA21BE0();
}

uint64_t sub_1BDA1D19C(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

__n128 sub_1BDA1D258@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = (v6 + *a3);
  result = *v15;
  *a4 = *v15;
  a4[1].n128_u32[0] = v15[1].n128_u32[0];
  return result;
}

void sub_1BDA1D388(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = v6 + *a4;
  if (MEMORY[0x1BFB40440](*v11, *(v11 + 8), *(v11 + 16), a1, a2, a3))
  {
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v8;
  }

  else
  {
    v21 = HIWORD(v8);
    v20 = HIWORD(a2);
    v22 = a6;
    KeyPath = swift_getKeyPath();
    v23 = &v20;
    MEMORY[0x1EEE9AC00](KeyPath);
    v24 = v6;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }
}

uint64_t sub_1BDA1D548@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v14 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v12 = sub_1BE04AF64();
  return (*(*(v12 - 8) + 16))(a1, v14 + v11, v12);
}

uint64_t sub_1BDA1D640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BDA26C5C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BDA1D8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BDA1D9FC()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay);
}

void sub_1BDA1DAA4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) == a1)
  {
    sub_1BDA217C4();

    sub_1BDA21BE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BDA1DBDC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) = a2;
  sub_1BDA217C4();
  sub_1BDA21BE0();
}

uint64_t sub_1BDA1DC18()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1BDA1DC5C(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1BDA1DC5C(uint64_t a1)
{
  v2 = sub_1BE052404();
  [*(a1 + 48) featureIdentifier];
  v3 = PKLocalizedFeatureString();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE052434();
  v6 = v5;

  if (v4 == 49 && v6 == 0xE100000000000000)
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    return 1;
  }

  else
  {
    v15 = sub_1BE053B84();
    v6, v16, v17, v18, v19, v20, v21, v22;
    return v15 & 1;
  }
}

void sub_1BDA1DD38()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter);
  if (v2)
  {
    goto LABEL_4;
  }

  sub_1BDA1BE00();
  v4 = v3;
  v5 = sub_1BE052404();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = PKMutableNumberFormatterForCurrencyCode();

  if (v13)
  {
    [v13 setMinimumFractionDigits_];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v13;

    v2 = 0;
LABEL_4:
    v15 = v2;
    return;
  }

  __break(1u);
}

id sub_1BDA1DDE0()
{
  v1 = v0;
  v2 = sub_1BE04B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    sub_1BE04B054();
    v10 = sub_1BE04B044();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_1BDA1DF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1BE052404();
  [v7 setLocalizedDateFormatFromTemplate_];

  sub_1BD0DE19C(a1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, v6, &unk_1EBD3D260, &unk_1BE0C0F20);
  v9 = sub_1BE04B3B4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    v11 = sub_1BE04B374();
    (*(v10 + 8))(v6, v9);
  }

  [v7 setTimeZone_];

  return v7;
}

id sub_1BDA1E110(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_1BDA1DF54(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void AccountAutomaticPaymentsModel.init(controller:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v177 = &v159 - v5;
  v6 = sub_1BE04A474();
  v172 = *(v6 - 8);
  v173 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v171 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1BE04AF64();
  v174 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v159 - v10;
  v11 = sub_1BE04B3B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = &v159 - v16;
  v17 = sub_1BE04B104();
  v167 = *(v17 - 8);
  v168 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1BE04B2F4();
  v170 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v169 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v159 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v159 - v25;
  *(v1 + 3) = 0;
  *(v1 + 5) = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid] = 0;
  v27 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__paymentDueWarning;
  v28 = type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
  (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources] = 0;
  v29 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError;
  v30 = type metadata accessor for FeatureError(0);
  (*(*(v30 - 8) + 56))(&v2[v29], 1, 1, v30);
  v31 = MEMORY[0x1BFB403C0](25);
  v32 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 4) = v34;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_days] = xmmword_1BE0FFF30;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay] = 1;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_maxDay] = 31;
  v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___useOrdinalDay] = 2;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___currencyFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dayNameFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___cardinalDayDateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dateFormatter] = 0;
  sub_1BE04B5C4();
  *(v2 + 6) = a1;
  v35 = a1;
  v183 = [v35 account];
  if (!v183)
  {
    __break(1u);
    goto LABEL_66;
  }

  v164 = v12;
  v36 = *(v12 + 56);
  v182 = v26;
  v179 = v11;
  v36(v26, 1, 1, v11);
  v37 = MEMORY[0x1BFB403C0](0);
  v39 = v38;
  v41 = v40;
  v178 = MEMORY[0x1BFB403C0](0);
  v43 = v42;
  v45 = v44;
  v46 = [v35 featureIdentifier];
  v160 = v14;
  v163 = v35;
  if (v46 == 2)
  {
    v47 = [v183 creditDetails];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 productTimeZone];

      v50 = v182;
      v51 = v179;
      v52 = v162;
      if (v49)
      {
        sub_1BE04B394();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      sub_1BD0DE53C(v50, &unk_1EBD3D260, &unk_1BE0C0F20);
      v36(v52, v53, 1, v51);
      sub_1BD0DE204(v52, v50, &unk_1EBD3D260, &unk_1BE0C0F20);
      v56 = v183;
      v57 = [v183 scheduleRecurringPaymentsFeatureDescriptor];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 paymentPresets];
        v64 = v59;
        if ((v59 & 4) != 0)
        {
          v65 = sub_1BD1D87D0(0, 1, 1, MEMORY[0x1E69E7CC0], v60, v61, v62, v63);
          v71 = *(v65 + 2);
          v70 = *(v65 + 3);
          if (v71 >= v70 >> 1)
          {
            v65 = sub_1BD1D87D0((v70 > 1), v71 + 1, 1, v65, v66, v67, v68, v69);
          }

          *(v65 + 2) = v71 + 1;
          *&v65[8 * v71 + 32] = 3;
          if ((v64 & 2) == 0)
          {
LABEL_20:
            v78 = [v56 creditDetails];
            if (v78)
            {
              v79 = v78;
              v159 = v65;
              v80 = [v78 accountSummary];

              if (v80)
              {
                v162 = v80;
                v81 = [v80 creditLimit];
                v86 = [v58 paymentFrequencies];
                if (v81)
                {
                  sub_1BE0533F4();
                  v87 = v81;
                  v88 = MEMORY[0x1BFB403C0](0);
                  if (MEMORY[0x1BFB403F0](v88) & 1) != 0 && (v64)
                  {
                    if (!v86)
                    {

                      v54 = MEMORY[0x1E69E7CC0];
                      goto LABEL_44;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v159 = sub_1BD1D87D0(0, *(v159 + 2) + 1, 1, v159, v89, v90, v91, v92);
                    }

                    v94 = *(v159 + 2);
                    v93 = *(v159 + 3);
                    if (v94 >= v93 >> 1)
                    {
                      v159 = sub_1BD1D87D0((v93 > 1), v94 + 1, 1, v159, v89, v90, v91, v92);
                    }

                    v95 = v159;
                    *(v159 + 2) = v94 + 1;
                    *&v95[8 * v94 + 32] = 1;
                    if ((v86 & 4) == 0)
                    {
LABEL_27:
                      v54 = MEMORY[0x1E69E7CC0];
                      if ((v86 & 8) == 0)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_39;
                    }

LABEL_36:
                    v54 = sub_1BD1D87BC(0, 1, 1, MEMORY[0x1E69E7CC0], v82, v83, v84, v85);
                    v101 = *(v54 + 2);
                    v100 = *(v54 + 3);
                    if (v101 >= v100 >> 1)
                    {
                      v54 = sub_1BD1D87BC((v100 > 1), v101 + 1, 1, v54, v96, v97, v98, v99);
                    }

                    *(v54 + 2) = v101 + 1;
                    *&v54[8 * v101 + 32] = 4;
                    if ((v86 & 8) == 0)
                    {
LABEL_28:
                      if ((v86 & 0x10) != 0)
                      {
LABEL_45:
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v54 = sub_1BD1D87BC(0, *(v54 + 2) + 1, 1, v54, v110, v111, v112, v113);
                        }

                        v115 = *(v54 + 2);
                        v114 = *(v54 + 3);
                        v108 = v58;
                        if (v115 >= v114 >> 1)
                        {
                          v54 = sub_1BD1D87BC((v114 > 1), v115 + 1, 1, v54, v110, v111, v112, v113);
                        }

                        v109 = v183;
                        *(v54 + 2) = v115 + 1;
                        *&v54[8 * v115 + 32] = 6;
LABEL_50:
                        if ([v109 isClosedAndChargedOff])
                        {
                          v116 = [v162 currentBalance];
                          if (v116)
                          {
LABEL_54:
                            v117 = v116;
                            v178 = sub_1BE0533F4();
                            v43 = v118;
                            v45 = v119;

                            v120 = [v108 minimumAmount];
                            if (v120)
                            {
                              v121 = v120;
                              v37 = sub_1BE0533F4();
                              v39 = v122;
                              v41 = v123;

                              v55 = v159;
                              goto LABEL_56;
                            }

                            goto LABEL_70;
                          }

                          __break(1u);
                        }

                        v116 = [v108 maximumAmount];
                        if (!v116)
                        {
LABEL_71:
                          __break(1u);
                          return;
                        }

                        goto LABEL_54;
                      }

LABEL_44:
                      v108 = v58;
                      v109 = v183;
                      goto LABEL_50;
                    }

LABEL_39:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v54 = sub_1BD1D87BC(0, *(v54 + 2) + 1, 1, v54, v102, v103, v104, v105);
                    }

                    v107 = *(v54 + 2);
                    v106 = *(v54 + 3);
                    if (v107 >= v106 >> 1)
                    {
                      v54 = sub_1BD1D87BC((v106 > 1), v107 + 1, 1, v54, v102, v103, v104, v105);
                    }

                    *(v54 + 2) = v107 + 1;
                    *&v54[8 * v107 + 32] = 5;
                    if ((v86 & 0x10) != 0)
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_44;
                  }
                }

                if ((v86 & 4) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_36;
              }

LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
          if ((v59 & 2) == 0)
          {
            goto LABEL_20;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1BD1D87D0(0, *(v65 + 2) + 1, 1, v65, v72, v73, v74, v75);
        }

        v77 = *(v65 + 2);
        v76 = *(v65 + 3);
        if (v77 >= v76 >> 1)
        {
          v65 = sub_1BD1D87D0((v76 > 1), v77 + 1, 1, v65, v72, v73, v74, v75);
        }

        *(v65 + 2) = v77 + 1;
        *&v65[8 * v77 + 32] = 2;
        goto LABEL_20;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v54 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
LABEL_56:
  *(v2 + 2) = v55;
  v124 = v182;
  sub_1BD0DE19C(v182, &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone], &unk_1EBD3D260, &unk_1BE0C0F20);
  v125 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount];
  *v125 = v37;
  *(v125 + 1) = v39;
  *(v125 + 4) = v41;
  v126 = &v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount];
  *v126 = v178;
  *(v126 + 1) = v43;
  *(v126 + 4) = v45;
  *(v2 + 4) = v54;
  v128 = v166;
  v127 = v167;
  v129 = v168;
  (*(v167 + 104))(v166, *MEMORY[0x1E6969868], v168);
  v130 = v169;
  sub_1BE04B114();
  (*(v127 + 8))(v128, v129);
  v131 = v165;
  sub_1BD0DE19C(v124, v165, &unk_1EBD3D260, &unk_1BE0C0F20);
  v132 = v164;
  v133 = v179;
  if ((*(v164 + 48))(v131, 1, v179) == 1)
  {
    sub_1BD0DE53C(v131, &unk_1EBD3D260, &unk_1BE0C0F20);
  }

  else
  {
    v134 = v161;
    (*(v132 + 32))(v161, v131, v133);
    (*(v132 + 16))(v160, v134, v133);
    sub_1BE04B2C4();
    (*(v132 + 8))(v134, v133);
  }

  v135 = v170;
  (*(v170 + 16))(&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar], v130, v180);
  sub_1BE04AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
  v136 = sub_1BE04B2D4();
  v137 = *(v136 - 8);
  v138 = *(v137 + 72);
  v139 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1BE0B98D0;
  v141 = v140 + v139;
  v142 = *(v137 + 104);
  v142(v141, *MEMORY[0x1E6969A48], v136);
  v142(v141 + v138, *MEMORY[0x1E6969A78], v136);
  v142(v141 + 2 * v138, *MEMORY[0x1E6969A68], v136);
  v143 = v181;
  v144 = sub_1BD111674(v140);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v145 = v171;
  sub_1BE04B194();
  v144, v146, v147, v148, v149, v150, v151, v152;
  v153 = v177;
  sub_1BE04B204();

  (*(v172 + 8))(v145, v173);
  (*(v135 + 8))(v130, v180);
  sub_1BD0DE53C(v182, &unk_1EBD3D260, &unk_1BE0C0F20);
  v154 = v174;
  v155 = *(v174 + 48);
  v156 = v176;
  if (v155(v153, 1, v176) == 1)
  {
    v157 = *(v154 + 32);
    v158 = v175;
    v157(v175, v143, v156);
    if (v155(v153, 1, v156) != 1)
    {
      sub_1BD0DE53C(v153, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    (*(v154 + 8))(v143, v156);
    v157 = *(v154 + 32);
    v158 = v175;
    v157(v175, v153, v156);
  }

  v157(&v2[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate], v158, v156);
}

void sub_1BDA1F184()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v223 = *(v2 - 8);
  v224 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v222 = v207 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v225 = v207 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46338, &qword_1BE0D6B48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v207 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v207 - v10;
  v12 = sub_1BE04B3B4();
  v229 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v227 = v207 - v16;
  v232 = sub_1BE04AF64();
  v230 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v228 = v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v226 = v207 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v207 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v207 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v231 = v207 - v27;
  KeyPath = swift_getKeyPath();
  v236 = v0;
  v29 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v233 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid) == 1)
  {
    v37 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);
    v220 = v8;
    v221 = v12;
    if (v37 == 1)
    {
      v219 = 0;
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 1;
    }

    else
    {
      v38 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v38);
      v236 = v0;
      sub_1BE04B584();
      v219 = 0;
      v38, v39, v40, v41, v42, v43, v44, v45;
    }

    v46 = v0[6];
    v47 = [v46 account];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 isClosedAndChargedOff];

      if ((v49 & 1) != 0 || [v46 featureIdentifier] != 2)
      {
        goto LABEL_15;
      }

      v50 = [v46 account];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 creditDetails];

        if (v52)
        {
          v53 = [v52 accountSummary];

          if (v53)
          {
            v54 = [v53 paymentDueDate];
            if (!v54)
            {

              goto LABEL_15;
            }

            v215 = v11;
            v218 = v53;
            v216 = v14;
            v55 = v54;
            sub_1BE04AEE4();

            v56 = v230;
            (*(v230 + 32))(v231, v25, v232);
            v57 = swift_getKeyPath();
            v236 = v1;
            v217 = v29;
            sub_1BE04B594();
            v57, v58, v59, v60, v61, v62, v63, v64;
            v65 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
            swift_beginAccess();
            v66 = v56 + 16;
            v67 = v232;
            v214 = *(v56 + 16);
            (v214)(v22, v1 + v65, v232);
            v68 = sub_1BE04AF04();
            v71 = *(v56 + 8);
            v69 = v56 + 8;
            v70 = v71;
            v71(v22, v67);
            if (v68 != -1)
            {
              v70(v231, v67);

LABEL_15:
              (*(*v1 + 1152))();
              return;
            }

            *&v212 = v66;
            v213 = v70;
            v72 = swift_getKeyPath();
            v234 = v1;
            sub_1BE04B594();
            v72, v73, v74, v75, v76, v77, v78, v79;
            v80 = &selRef_remainingMinimumPayment;
            if (v1[3] != 2)
            {
              v80 = &selRef_remainingStatementBalance;
            }

            v81 = v218;
            v82 = [v218 *v80];
            if (!v82)
            {
              v213(v231, v67);

              goto LABEL_15;
            }

            v83 = v82;
            sub_1BE0533F4();
            v84 = MEMORY[0x1BFB403C0](0);
            v85 = MEMORY[0x1BFB403F0](v84);
            v86 = v231;
            if ((v85 & 1) == 0)
            {
              v213(v231, v232);

              goto LABEL_15;
            }

            v87 = v215;
            sub_1BD0DE19C(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, v215, &unk_1EBD3D260, &unk_1BE0C0F20);
            v88 = v229;
            v89 = v221;
            if ((*(v229 + 48))(v87, 1, v221) == 1)
            {
              v213(v86, v232);

              sub_1BD0DE53C(v87, &unk_1EBD3D260, &unk_1BE0C0F20);
              goto LABEL_15;
            }

            v211 = v83;
            v230 = v69;
            v90 = v227;
            v91 = v87;
            v92 = v232;
            (*(v88 + 32))(v227, v91, v89);
            v215 = [v46 featureIdentifier];
            (*(v88 + 16))(v216, v90, v89);
            v93 = swift_getKeyPath();
            v234 = v1;
            sub_1BE04B594();
            v93, v94, v95, v96, v97, v98, v99, v100;
            v101 = v214;
            (v214)(v226, v1 + v65, v92);
            (v101)(v228, v86, v92);
            v102 = swift_allocObject();
            swift_weakInit();
            v103 = v220;
            *v220 = 0xD000000000000011;
            v103[1] = 0x80000001BE1481D0;
            v104 = objc_allocWithZone(MEMORY[0x1E696AB78]);
            v210 = v102;
            sub_1BE048964();
            v105 = [v104 init];
            v106 = sub_1BE052404();
            [v105 setLocalizedDateFormatFromTemplate_];

            v107 = sub_1BE04B374();
            [v105 setTimeZone_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v108 = swift_allocObject();
            v212 = xmmword_1BE0B69E0;
            *(v108 + 16) = xmmword_1BE0B69E0;
            v109 = sub_1BE04AE64();
            v110 = [v105 stringFromDate_];

            v111 = sub_1BE052434();
            v113 = v112;

            *(v108 + 56) = MEMORY[0x1E69E6158];
            v114 = sub_1BD110550();
            *(v108 + 64) = v114;
            *(v108 + 32) = v111;
            *(v108 + 40) = v113;
            v115 = sub_1BE04C134();
            v214 = v116;
            v108, v116, v117, v118, v119, v120, v121, v122;
            v123 = swift_allocObject();
            *(v123 + 16) = v212;
            v124 = sub_1BE04AE64();
            *&v212 = v105;
            v125 = [v105 stringFromDate_];

            v126 = sub_1BE052434();
            v128 = v127;

            *(v123 + 56) = MEMORY[0x1E69E6158];
            *(v123 + 64) = v114;
            *(v123 + 32) = v126;
            *(v123 + 40) = v128;
            v129 = sub_1BE04C134();
            v131 = v130;
            v123, v130, v132, v133, v134, v135, v136, v137;
            v234 = v115;
            v235 = v214;
            sub_1BD0DDEBC();
            v215 = sub_1BE0506C4();
            v214 = v138;
            v208 = v139;
            v209 = v140;
            v234 = v129;
            v235 = v131;
            v207[3] = sub_1BE0506C4();
            v207[2] = v141;
            v207[1] = v142;
            v143 = v222;
            v144 = v223;
            v145 = v224;
            (*(v223 + 104))(v222, *MEMORY[0x1E69B80D0], v224);
            v146 = PKPassKitBundle();
            if (v146)
            {
              v147 = v146;
              v148 = sub_1BE04B6F4();
              v150 = v149;

              (*(v144 + 8))(v143, v145);
              v234 = v148;
              v235 = v150;
              v151 = sub_1BE0506C4();
              v153 = v152;
              v155 = v154;
              v157 = v156;
              v158 = swift_allocObject();
              v159 = v210;
              v158[2] = sub_1BDA26CFC;
              v158[3] = v159;
              sub_1BE048964();
              v160 = v225;
              sub_1BE051194();
              v158, v161, v162, v163, v164, v165, v166, v167;
              sub_1BD0DDF10(v151, v153, (v155 & 1), v168, v169, v170, v171, v172);
              v157, v173, v174, v175, v176, v177, v178, v179;
              v180 = sub_1BE0511A4();
              (*(*(v180 - 8) + 56))(v160, 0, 1, v180);
              v181 = type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
              v182 = v220;
              sub_1BE051174();
              v159, v183, v184, v185, v186, v187, v188, v189;

              v190 = v232;
              v191 = v213;
              v213(v228, v232);
              v191(v226, v190);
              v229 = *(v229 + 8);
              (v229)(v216, v221);
              v159, v192, v193, v194, v195, v196, v197, v198;
              (*(*(v181 - 8) + 56))(v182, 0, 1, v181);
              v199 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v199);
              v234 = v1;
              sub_1BE04B584();

              v199, v200, v201, v202, v203, v204, v205, v206;
              (v229)(v227, v221);
              v191(v231, v190);
              sub_1BD0DE53C(v182, &qword_1EBD46338, &qword_1BE0D6B48);
              return;
            }

LABEL_31:
            __break(1u);
            return;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1BDA20144(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*(*Strong + 1152))(Strong);
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BDA201C4()
{
  v1 = [v0[6] fundingSources];
  if (v1)
  {
    v9 = v1;
    sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
    v10 = sub_1BE052744();

    if (!(v10 >> 62))
    {
LABEL_3:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }
  }

  v11 = sub_1BE053704();
LABEL_4:
  v10, v2, v3, v4, v5, v6, v7, v8;
  if (v11)
  {
    v12 = *(*v0 + 145);

    v12();
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
      KeyPath, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
    }

    if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources) == 1)
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__needsFundingSources) = 1;
    }

    else
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
      v21, v22, v23, v24, v25, v26, v27, v28;
    }
  }
}

void sub_1BDA204A4()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  KeyPath = swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  [v6 setPaymentPreset_];
  v15 = swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BE04B594();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = 0;
  if (*(v1 + 24) == 1)
  {
    v24 = swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE04B594();
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = sub_1BE053344();
    sub_1BDA1BE00();
    v34 = v33;
    v35 = sub_1BE052404();
    v34, v36, v37, v38, v39, v40, v41, v42;
    v23 = PKCurrencyAmountMake();
  }

  [v6 setAmount_];

  v43 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();
  v43, v44, v45, v46, v47, v48, v49, v50;
  [v6 setPaymentFrequency_];
  v51 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();
  v51, v52, v53, v54, v55, v56, v57, v58;
  if (*(v1 + 40) == 7)
  {
    v59 = 0;
  }

  else
  {
    v60 = swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE04B594();
    v60, v61, v62, v63, v64, v65, v66, v67;
    v68 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v68, v2);
    v59 = sub_1BE04AE64();
    (*(v3 + 8))(v5, v2);
  }

  [v6 setPaymentDate_];

  v69 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();
  v69, v70, v71, v72, v73, v74, v75, v76;
  [v6 setScheduledDay_];
  v77 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BDA26CDC;
  v88 = v77;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_271;
  v78 = _Block_copy(aBlock);
  v88, v79, v80, v81, v82, v83, v84, v85;
  [v6 performScheduleAutomaticPayments_];
  _Block_release(v78);
}

void sub_1BDA208F4(char a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v73 - v6;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      KeyPath = swift_getKeyPath();
      v73[0] = v73;
      MEMORY[0x1EEE9AC00](KeyPath);
      v73[-2] = v20;
      LOBYTE(v73[-1]) = 0;
      v74 = v20;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
      KeyPath, v22, v23, v24, v25, v26, v27, v28;
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
      if ((a1 & 1) == 0)
      {
LABEL_4:
        if (!a2)
        {
LABEL_11:
          v39 = v20;
LABEL_12:
          v39, v13, v14, v15, v16, v17, v18, v19;
          return;
        }

LABEL_8:
        v29 = a2;
        sub_1BE04D194();
        v30 = a2;
        v31 = sub_1BE04D204();
        v32 = sub_1BE052C34();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = a2;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_1BD026000, v31, v32, "AccountAutomaticPayments: Error performing schedule of automatic payments with error: %@", v33, 0xCu);
          sub_1BD0DE53C(v34, &unk_1EBD3E590, &unk_1BE0B7E50);
          MEMORY[0x1BFB45F20](v34, -1, -1);
          MEMORY[0x1BFB45F20](v33, -1, -1);
        }

        (*(v9 + 8))(v11, v8);
        v37 = [v20[6] featureIdentifier];
        v38 = a2;
        FeatureError.init(feature:error:)(v37, a2, v7);
        sub_1BDA1C534(v7);

        goto LABEL_11;
      }
    }

    if (!a2)
    {
      v40 = swift_getKeyPath();
      v74 = v20;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();
      v40, v41, v42, v43, v44, v45, v46, v47;
      v74 = v20;
      v48 = swift_getKeyPath();
      sub_1BE04B5B4();
      v48, v49, v50, v51, v52, v53, v54, v55;
      v56 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v57 = *(v20 + v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + v56) = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_1BD1D90B0(0, *(v57 + 2) + 1, 1, v57, v59, v60, v61, v62);
        *(v20 + v56) = v57;
      }

      v64 = *(v57 + 2);
      v63 = *(v57 + 3);
      if (v64 >= v63 >> 1)
      {
        v57 = sub_1BD1D90B0((v63 > 1), v64 + 1, 1, v57, v59, v60, v61, v62);
      }

      *(v57 + 2) = v64 + 1;
      v57[v64 + 32] = 3;
      *(v20 + v56) = v57;
      swift_endAccess();
      v74 = v20;
      v65 = swift_getKeyPath();
      sub_1BE04B5A4();
      v20, v66, v67, v68, v69, v70, v71, v72;
      v39 = v65;
      goto LABEL_12;
    }

    goto LABEL_8;
  }
}

void sub_1BDA20DE0()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B2D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MockAccountAutomaticPaymentsModel(0);
  if (!swift_dynamicCastClass())
  {
    v187 = v2;
    KeyPath = swift_getKeyPath();
    v11 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
    v190 = v1;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    v188 = v11;
    sub_1BE04B594();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    v19 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
    swift_beginAccess();
    if (*(*(v1 + v19) + 16) == 1)
    {
      v20 = swift_getKeyPath();
      v189 = v1;
      sub_1BE04B594();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = *(v1 + v19);
      if (*(v28 + 16))
      {
        if (!*(v28 + 32))
        {
          v29 = v1[2];
          v30 = swift_getKeyPath();
          v189 = v1;
          sub_1BE04B594();
          v30, v31, v32, v33, v34, v35, v36, v37;
          v38 = *(v29 + 16);
          v39 = (v29 + 32);
          v2 = v187;
          while (v38)
          {
            v40 = *v39++;
            --v38;
            if (v40 == v1[3])
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    while (1)
    {
      sub_1BE053994();
      __break(1u);
    }
  }

LABEL_8:
  (*(v7 + 104))(v9, *MEMORY[0x1E6969A48], v6);
  sub_1BE04AEF4();
  v41 = sub_1BE04B2E4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v42 = swift_getKeyPath();
  v189 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  v42, v43, v44, v45, v46, v47, v48, v49;
  if (v1[3] == 2 || (v50 = swift_getKeyPath(), v189 = v1, sub_1BE04B594(), v50, v51, v52, v53, v54, v55, v56, v57, v1[3] == 3))
  {
    if (v41 <= 11)
    {
      v58 = 11;
    }

    else
    {
      v58 = v41;
    }
  }

  else if (v41 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v41;
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) == v58)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    v59 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v59);
    v189 = v1;
    sub_1BE04B584();
    v59, v60, v61, v62, v63, v64, v65, v66;
  }

  v67 = swift_getKeyPath();
  v189 = v1;
  sub_1BE04B594();
  v67, v68, v69, v70, v71, v72, v73, v74;
  v75 = v1[3];
  if ((v75 - 2) >= 2)
  {
    if (v75 != 1)
    {
      return;
    }

    v93 = swift_getKeyPath();
    v189 = v1;
    sub_1BE04B594();
    v93, v94, v95, v96, v97, v98, v99, v100;
    v108 = v1[3];
    if ((v108 - 2) < 2)
    {
      v109 = &unk_1F3B8F848;
      if (!qword_1F3B8F858)
      {
        goto LABEL_44;
      }

LABEL_32:
      v111 = v109[4];
LABEL_45:
      v109, v101, v102, v103, v104, v105, v106, v107;
      if (v1[5] == v111)
      {
        sub_1BDA217C4();
        sub_1BDA21BE0();
      }

      else
      {
        v147 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v147);
        v189 = v1;
        sub_1BE04B584();
        v147, v148, v149, v150, v151, v152, v153, v154;
      }

      v155 = swift_getKeyPath();
      v189 = v1;
      sub_1BE04B594();
      v155, v156, v157, v158, v159, v160, v161, v162;
      v189 = v1;
      v163 = swift_getKeyPath();
      sub_1BE04B5B4();
      v163, v164, v165, v166, v167, v168, v169, v170;
      v136 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v137 = *(v1 + v136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v136) = v137;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v137 = sub_1BD1D90B0(0, *(v137 + 2) + 1, 1, v137, v172, v173, v174, v175);
        *(v1 + v136) = v137;
      }

      v177 = *(v137 + 2);
      v176 = *(v137 + 3);
      if (v177 >= v176 >> 1)
      {
        v137 = sub_1BD1D90B0((v176 > 1), v177 + 1, 1, v137, v172, v173, v174, v175);
      }

      *(v137 + 2) = v177 + 1;
      v145 = &v137[v177];
      v146 = 2;
      goto LABEL_53;
    }

    if (v108 == 1)
    {
      v109 = sub_1BE048C84();
      if (v109[2])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v109 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    v111 = 4;
    goto LABEL_45;
  }

  v76 = swift_getKeyPath();
  v189 = v1;
  sub_1BE04B594();
  v76, v77, v78, v79, v80, v81, v82, v83;
  v91 = v1[3];
  if ((v91 - 2) >= 2)
  {
    if (v91 == 1)
    {
      v92 = sub_1BE048C84();
      if (v92[2])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v92 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_29;
      }
    }

LABEL_34:
    v110 = 7;
    goto LABEL_35;
  }

  v92 = &unk_1F3B8F818;
  if (!qword_1F3B8F828)
  {
    goto LABEL_34;
  }

LABEL_29:
  v110 = v92[4];
LABEL_35:
  v92, v84, v85, v86, v87, v88, v89, v90;
  if (v1[5] == v110)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
  }

  else
  {
    v112 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v112);
    v189 = v1;
    sub_1BE04B584();
    v112, v113, v114, v115, v116, v117, v118, v119;
  }

  v120 = swift_getKeyPath();
  v189 = v1;
  sub_1BE04B594();
  v120, v121, v122, v123, v124, v125, v126, v127;
  v189 = v1;
  v128 = swift_getKeyPath();
  sub_1BE04B5B4();
  v128, v129, v130, v131, v132, v133, v134, v135;
  v136 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v137 = *(v1 + v136);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v136) = v137;
  if ((v138 & 1) == 0)
  {
    v137 = sub_1BD1D90B0(0, *(v137 + 2) + 1, 1, v137, v139, v140, v141, v142);
    *(v1 + v136) = v137;
  }

  v144 = *(v137 + 2);
  v143 = *(v137 + 3);
  if (v144 >= v143 >> 1)
  {
    v137 = sub_1BD1D90B0((v143 > 1), v144 + 1, 1, v137, v139, v140, v141, v142);
  }

  *(v137 + 2) = v144 + 1;
  v145 = &v137[v144];
  v146 = 1;
LABEL_53:
  v145[32] = v146;
  *(v1 + v136) = v137;
  swift_endAccess();
  v189 = v1;
  v178 = swift_getKeyPath();
  sub_1BE04B5A4();
  v178, v179, v180, v181, v182, v183, v184, v185;
}

void sub_1BDA217C4()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54380, &qword_1BE10EC90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  KeyPath = swift_getKeyPath();
  v43 = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = *(v0 + 40);
  if ((v21 - 4) < 2)
  {
    sub_1BDA23090(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v22 = &unk_1EBD54380;
      v23 = &qword_1BE10EC90;
      v24 = v8;
LABEL_12:
      sub_1BD0DE53C(v24, v22, v23);
      return;
    }

    sub_1BD0DE204(v8, v12, &unk_1EBD387B0, "FM\r");
    v26 = swift_getKeyPath();
    v43 = v0;
    sub_1BE04B594();
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
    swift_beginAccess();
    v36 = v40;
    v35 = v41;
    v37 = *(v41 + 16);
    v37(v40, v1 + v34, v2);
    sub_1BDA26C5C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1BE052304())
    {
      v38 = sub_1BE052314();
      (*(v35 + 8))(v36, v2);
      if (v38)
      {
        goto LABEL_11;
      }
    }

    else
    {
      (*(v35 + 8))(v36, v2);
    }

    v39 = v42;
    v37(v42, &v12[*(v9 + 36)], v2);
    sub_1BDA1D640(v39);
LABEL_11:
    v22 = &unk_1EBD387B0;
    v23 = "FM\r";
    v24 = v12;
    goto LABEL_12;
  }

  if (v21 == 6)
  {
    v25 = v42;
    sub_1BDA23BAC(v42);
    sub_1BDA1D640(v25);
  }
}

void sub_1BDA21BE0()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + 24);
  v11 = swift_getKeyPath();
  sub_1BE04B594();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v0 + 40);
  if ((v19 - 6) < 2)
  {
    v28 = 1;
  }

  else if ((v19 - 4) > 1)
  {
    v28 = 0;
  }

  else
  {
    v20 = swift_getKeyPath();
    sub_1BE04B594();
    v20, v21, v22, v23, v24, v25, v26, v27;
    v28 = *(v0 + 24) == 1;
  }

  v29 = swift_getKeyPath();
  sub_1BE04B594();
  v29, v30, v31, v32, v33, v34, v35, v36;
  if (*(v0 + 24) == 1)
  {
    v87 = v10;
    v37 = swift_getKeyPath();
    sub_1BE04B594();
    v37, v38, v39, v40, v41, v42, v43, v44;
    v45 = (v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
    v46 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16);
    v48 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
    v47 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8);
    v49 = swift_getKeyPath();
    sub_1BE04B594();
    v49, v50, v51, v52, v53, v54, v55, v56;
    if ((MEMORY[0x1BFB403F0](v48, v47, v46, *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__minAmount + 16)) & 1) != 0 || (v57 = swift_getKeyPath(), sub_1BE04B594(), v57, v58, v59, v60, v61, v62, v63, v64, v65 = *(v45 + 4), v67 = *v45, v66 = v45[1], v68 = swift_getKeyPath(), sub_1BE04B594(), v68, v69, v70, v71, v72, v73, v74, v75, v76 = MEMORY[0x1BFB403F0](*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__maxAmount + 16), v67, v66, v65), !v87))
    {
      LOBYTE(v77) = 0;
      v78 = (v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid);
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid))
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v77 = v28 & (v76 ^ 1);
  }

  else
  {
    v77 = v10 != 0 && v28;
  }

  v78 = (v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid);
  if (v77 != *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid))
  {
LABEL_12:
    v79 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v79);
    sub_1BE04B584();
    v79, v80, v81, v82, v83, v84, v85, v86;
    return;
  }

LABEL_14:
  *v78 = v77;
}

void sub_1BDA21F78()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = [v2 account];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isClosedAndChargedOff];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    if ([v2 needsPreflight])
    {
      if (*(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) == 1)
      {
        *(v1 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        aBlock[0] = v1;
        sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
        sub_1BE04B584();
        KeyPath, v41, v42, v43, v44, v45, v46, v47;
      }

      v48 = swift_allocObject();
      swift_weakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v6;
      aBlock[4] = sub_1BDA26CA4;
      v59 = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3CC8C0;
      aBlock[3] = &block_descriptor_241;
      v50 = _Block_copy(aBlock);
      v59, v51, v52, v53, v54, v55, v56, v57;
      [v2 preflightWithCompletion_];
      _Block_release(v50);
    }

    else
    {
      v7 = swift_getKeyPath();
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();
      v7, v8, v9, v10, v11, v12, v13, v14;
      aBlock[0] = v1;
      v15 = swift_getKeyPath();
      sub_1BE04B5B4();
      v15, v16, v17, v18, v19, v20, v21, v22;
      v23 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v24 = *(v1 + v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v23) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1BD1D90B0(0, *(v24 + 2) + 1, 1, v24, v26, v27, v28, v29);
        *(v1 + v23) = v24;
      }

      v31 = *(v24 + 2);
      v30 = *(v24 + 3);
      if (v31 >= v30 >> 1)
      {
        v24 = sub_1BD1D90B0((v30 > 1), v31 + 1, 1, v24, v26, v27, v28, v29);
      }

      *(v24 + 2) = v31 + 1;
      v24[v31 + 32] = v6;
      *(v1 + v23) = v24;
      swift_endAccess();
      aBlock[0] = v1;
      v32 = swift_getKeyPath();
      sub_1BE04B5A4();
      v32, v33, v34, v35, v36, v37, v38, v39;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BDA22330(char a1, void *a2, uint64_t a3, int a4)
{
  v28 = a4;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1BE051FA4();
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = v28;
  aBlock[4] = sub_1BDA26CB0;
  v31 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_254_0;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  sub_1BE048964();
  v18 = a2;
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA26C5C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v29);
}

void sub_1BDA2261C(uint64_t a1, char a2, void *a3, int a4)
{
  v77 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v76 - v7;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
    {
      v15 = v10;
      KeyPath = swift_getKeyPath();
      v76[1] = v76;
      MEMORY[0x1EEE9AC00](KeyPath);
      v76[-2] = v14;
      LOBYTE(v76[-1]) = 0;
      v78 = v14;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B584();
      v17 = KeyPath;
      v10 = v15;
      v17, v18, v19, v20, v21, v22, v23, v24;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (!a3)
    {
      v25 = swift_getKeyPath();
      v78 = v14;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();
      v25, v26, v27, v28, v29, v30, v31, v32;
      v78 = v14;
      v33 = swift_getKeyPath();
      sub_1BE04B5B4();
      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
      swift_beginAccess();
      v42 = *(v14 + v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + v41) = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1BD1D90B0(0, *(v42 + 2) + 1, 1, v42, v44, v45, v46, v47);
        *(v14 + v41) = v42;
      }

      v49 = *(v42 + 2);
      v48 = *(v42 + 3);
      if (v49 >= v48 >> 1)
      {
        v42 = sub_1BD1D90B0((v48 > 1), v49 + 1, 1, v42, v44, v45, v46, v47);
      }

      *(v42 + 2) = v49 + 1;
      v42[v49 + 32] = v77;
      *(v14 + v41) = v42;
      swift_endAccess();
      v78 = v14;
      v50 = swift_getKeyPath();
      sub_1BE04B5A4();
      v14, v51, v52, v53, v54, v55, v56, v57;
      v65 = v50;
      goto LABEL_18;
    }

LABEL_12:
    sub_1BE04D194();
    v66 = a3;
    v67 = sub_1BE04D204();
    v68 = sub_1BE052C34();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      if (a3)
      {
        v71 = a3;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        v73 = v72;
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      *(v69 + 4) = v72;
      *v70 = v73;
      _os_log_impl(&dword_1BD026000, v67, v68, "AccountAutomaticPayments: preflight failed with error %@", v69, 0xCu);
      sub_1BD0DE53C(v70, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v70, -1, -1);
      MEMORY[0x1BFB45F20](v69, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v74 = [v14[6] featureIdentifier];
    v75 = a3;
    FeatureError.init(feature:error:)(v74, a3, v8);
    sub_1BDA1C534(v8);
    v65 = v14;
LABEL_18:
    v65, v58, v59, v60, v61, v62, v63, v64;
  }
}

void sub_1BDA22B14()
{
  v1 = *(v0 + 48);
  if ([v1 featureIdentifier] != 2)
  {
    return;
  }

  v2 = [v1 account];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 creditDetails];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = [v4 accountSummary];

  if (v5)
  {
    if ([v5 balanceStatus] == 2 || objc_msgSend(v5, sel_requiresDebtCollectionNotices))
    {
      [v1 featureIdentifier];
      sub_1BE04C124();
    }

    else
    {
    }
  }
}

uint64_t sub_1BDA22C3C(char a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      v32 = v6;
      v33 = sub_1BDA1E0E8();
      KeyPath = swift_getKeyPath();
      v61 = v2;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      sub_1BE04B594();
      KeyPath, v35, v36, v37, v38, v39, v40, v41;
      v42 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
      swift_beginAccess();
      (*(v5 + 16))(v8, v2 + v42, v32);
      v43 = sub_1BE04AE64();
      (*(v5 + 8))(v8, v32);
      v44 = [v33 stringFromDate_];

      v45 = sub_1BE052434();
      return v45;
    }

    v9 = swift_getKeyPath();
    v61 = v2;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();
    v9, v10, v11, v12, v13, v14, v15, v16;
    v17 = *(v2 + 40);
    [*(v2 + 48) featureIdentifier];
    if (v17 == 6 || v17 == 5 || v17 == 4)
    {
      return sub_1BE04C124();
    }

    return 0;
  }

  v18 = swift_getKeyPath();
  v61 = v2;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 16);
  v28 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount);
  v27 = *(v2 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount + 8);
  v29 = MEMORY[0x1BFB403C0](0);
  if ((MEMORY[0x1BFB40440](v28, v27, v26, v29, v30, v31) & 1) == 0)
  {
    sub_1BDA1DD38();
    v48 = v47;
    v49 = swift_getKeyPath();
    v61 = v2;
    sub_1BE04B594();
    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = sub_1BE053344();
    v58 = [v48 stringFromNumber_];

    if (v58)
    {
      v59 = sub_1BE052434();

      return v59;
    }

    return 0;
  }

  [*(v2 + 48) featureIdentifier];
  return sub_1BE04C124();
}

uint64_t sub_1BDA23090@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v77 - v7;
  v94 = sub_1BE04B2D4();
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v77 - v12;
  v13 = sub_1BE04AF64();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  v21 = sub_1BE04A474();
  v91 = *(v21 - 8);
  v92 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v99 = v1;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v31 = *(v1 + 40);
  if (v31 == 4)
  {
    v89 = v1;
    v79 = v15;
    v77 = v3;
    v78 = v5;
    v86 = a1;
    v32 = 6;
  }

  else
  {
    if (v31 != 5)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
      v62 = *(*(v61 - 8) + 56);
      v63 = a1;
      return v62(v63, 1, 1, v61);
    }

    v89 = v1;
    v79 = v15;
    v77 = v3;
    v78 = v5;
    v86 = a1;
    v32 = 13;
  }

  v84 = v32;
  v33 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
  v34 = v97;
  v35 = *(v97 + 72);
  v36 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BE0B98D0;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v82 = *MEMORY[0x1E6969A48];
  v40 = v94;
  v39(v38);
  (v39)(v38 + v35, *MEMORY[0x1E6969A78], v40);
  (v39)(v38 + 2 * v35, *MEMORY[0x1E6969A68], v40);
  v41 = sub_1BD111674(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = v20;
  sub_1BE04AEF4();
  v43 = v98;
  sub_1BE04B194();
  v41, v44, v45, v46, v47, v48, v49, v50;
  v52 = v95;
  v51 = v96;
  v80 = *(v95 + 8);
  v81 = v95 + 8;
  v80(v42, v96);
  v83 = v33;
  v53 = v93;
  sub_1BE04B204();
  v54 = *(v52 + 48);
  if (v54(v53, 1, v51) == 1)
  {
    v55 = v53;
    v57 = v91;
    v56 = v92;
LABEL_9:
    (*(v57 + 8))(v43, v56);
    sub_1BD0DE53C(v55, &unk_1EBD39970, &unk_1BE0B9F80);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
    v62 = *(*(v61 - 8) + 56);
    v63 = v86;
    return v62(v63, 1, 1, v61);
  }

  v58 = v53;
  v59 = v88;
  v95 = *(v52 + 32);
  (v95)(v88, v58, v51);
  v60 = v87;
  (v39)(v87, v82, v40);
  v55 = v90;
  sub_1BE04B224();
  (*(v97 + 8))(v60, v40);
  if (v54(v55, 1, v51) == 1)
  {
    v80(v59, v51);
    v57 = v91;
    v56 = v92;
    v43 = v98;
    goto LABEL_9;
  }

  v65 = v79;
  (v95)(v79, v55, v51);
  sub_1BDA26C5C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v66 = sub_1BE052314();
  result = (*(v91 + 8))(v98, v92);
  if (v66)
  {
    v67 = v85;
    v68 = v95;
    (v95)(v85, v59, v51);
    v69 = v51;
    v70 = v77;
    v68(v67 + *(v77 + 48), v65, v69);
    v71 = v78;
    sub_1BD0DE19C(v67, v78, &unk_1EBD38810, &unk_1BE0B6F60);
    v72 = *(v70 + 48);
    v73 = v86;
    v68(v86, v71, v69);
    v74 = v80;
    v80((v71 + v72), v69);
    sub_1BD0DE204(v67, v71, &unk_1EBD38810, &unk_1BE0B6F60);
    v75 = *(v70 + 48);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
    v68(v73 + *(v76 + 36), (v71 + v75), v69);
    v74(v71, v69);
    return (*(*(v76 - 8) + 56))(v73, 0, 1, v76);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA2391C(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if (sub_1BDA1DC18())
  {
    result = PKOrdinalStringForInteger();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE052434();

      return v14;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_1BE04B1D4();
    sub_1BE04AEF4();
    v16 = sub_1BE04AE64();
    v17 = v8;
    v18 = v2;
    v24[0] = *(v3 + 8);
    (v24[0])(v17, v2);
    v19 = [v15 nextDateAfterDate:v16 matchingUnit:16 value:a1 options:2];

    if (v19)
    {
      sub_1BE04AEE4();

      (*(v3 + 32))(v11, v5, v2);
      v20 = sub_1BDA1DF40();
      v21 = sub_1BE04AE64();
      v22 = [v20 stringFromDate_];

      v23 = sub_1BE052434();
      (v24[0])(v11, v18);
      return v23;
    }

    else
    {
      v24[1] = a1;
      return sub_1BE053B24();
    }
  }

  return result;
}

uint64_t sub_1BDA23BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v126 = &v113 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v113 - v8;
  v9 = sub_1BE04B2D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  v20 = sub_1BE04AF64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v113 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v113 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v113 - v31;
  sub_1BE04AEF4();
  v139 = v29;
  v140 = v21;
  v33 = *(v21 + 16);
  v141 = v20;
  v127 = v33;
  v33(v29, v32, v20);
  v34 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  v35 = *(v10 + 104);
  v135 = *MEMORY[0x1E6969A48];
  v35(v19);
  v130 = *MEMORY[0x1E6969A78];
  v138 = v35;
  v35(v16);
  v134 = v34;
  v142 = v32;
  v36 = sub_1BE04B254();
  v38 = v37;
  LOBYTE(v35) = v39;
  v40 = *(v10 + 8);
  v123 = v16;
  v41 = v16;
  v42 = v40;
  v40(v41, v9);
  v128 = v19;
  v136 = v10 + 8;
  result = (v40)(v19, v9);
  if ((v35 & 1) == 0)
  {
    v124 = v2;
    if (__OFSUB__(v38, v36))
    {
      __break(1u);
    }

    else
    {
      v44 = v131;
      (v138)(v131, v135, v9);
      KeyPath = swift_getKeyPath();
      v46 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
      v2 = v124;
      v143 = v124;
      v47 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      v118 = v46;
      v117 = v47;
      sub_1BE04B594();
      KeyPath, v48, v49, v50, v51, v52, v53, v54;
      v116 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay;
      v55 = v132;
      sub_1BE04B234();
      v42(v44, v9);
      v56 = v140;
      v57 = v141;
      v58 = *(v140 + 48);
      v131 = (v140 + 48);
      v120 = v58;
      if (v58(v55, 1, v141) == 1)
      {
        sub_1BD0DE53C(v55, &unk_1EBD39970, &unk_1BE0B9F80);
        goto LABEL_16;
      }

      v59 = *(v56 + 8);
      v119 = v42;
      v60 = v139;
      v115 = v56 + 8;
      v114 = v59;
      v59(v139, v57);
      v61 = *(v56 + 32);
      v62 = v133;
      v132 = (v56 + 32);
      v113 = v61;
      v61(v133, v55, v57);
      v127(v60, v62, v57);
      v63 = v128;
      (v138)(v128, v130, v9);
      v64 = v119;
      v65 = sub_1BE04B274();
      v64(v63, v9);
      if (v65)
      {
        v114(v133, v141);
        goto LABEL_16;
      }

      (v138)(v63, v130, v9);
      v66 = v126;
      sub_1BE04B224();
      v64(v63, v9);
      v67 = v141;
      v68 = v120(v66, 1, v141);
      v69 = v138;
      if (v68 == 1)
      {
        v114(v133, v67);
        sub_1BD0DE53C(v66, &unk_1EBD39970, &unk_1BE0B9F80);
        goto LABEL_16;
      }

      v70 = v125;
      v113(v125, v66, v67);
      (v69)(v63, v135, v9);
      v71 = v123;
      (v69)(v123, v130, v9);
      v72 = sub_1BE04B254();
      v74 = v73;
      v76 = v75;
      v77 = v71;
      v78 = v119;
      v119(v77, v9);
      result = v78(v63, v9);
      if (v76)
      {
        v79 = v141;
        v80 = v114;
        v114(v70, v141);
        v80(v133, v79);
LABEL_15:
        v2 = v124;
        goto LABEL_16;
      }

      v81 = v133;
      if (!__OFSUB__(v74, v72))
      {
        v82 = v121;
        (v138)(v121, v135, v9);
        v83 = swift_getKeyPath();
        v143 = v124;
        sub_1BE04B594();
        v83, v84, v85, v86, v87, v88, v89, v90;
        v91 = v122;
        sub_1BE04B234();
        v119(v82, v9);
        v92 = v141;
        v93 = v114;
        v114(v125, v141);
        v93(v81, v92);
        if (v120(v91, 1, v92) == 1)
        {
          sub_1BD0DE53C(v91, &unk_1EBD39970, &unk_1BE0B9F80);
        }

        else
        {
          v94 = v139;
          v93(v139, v92);
          v113(v94, v91, v92);
        }

        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

LABEL_16:
  v95 = swift_getKeyPath();
  v143 = v2;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  v95, v96, v97, v98, v99, v100, v101, v102;
  if (*(v2 + 24) == 1)
  {
    v104 = v140;
    v103 = v141;
    (*(v140 + 8))(v142, v141);
    v105 = v139;
  }

  else
  {
    v106 = *(v2 + 48);
    v105 = v139;
    v107 = sub_1BE04AE64();
    v108 = [v106 firstAutomaticPaymentDateForSelectedDate_];

    v104 = v140;
    if (v108)
    {
      v109 = v129;
      sub_1BE04AEE4();

      v110 = *(v104 + 8);
      v111 = v105;
      v112 = v141;
      v110(v111, v141);
      v110(v142, v112);
      v103 = v112;
      v105 = v109;
    }

    else
    {
      v103 = v141;
      (*(v140 + 8))(v142, v141);
    }
  }

  return (*(v104 + 32))(v137, v105, v103);
}

uint64_t sub_1BDA24684(uint64_t a1)
{
  v25 = a1;
  v24 = sub_1BE04AF64();
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04A474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
  v8 = sub_1BE04B2D4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E6969A48], v8);
  v12 = sub_1BD111674(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  sub_1BE04AEF4();
  sub_1BE04B194();
  v12, v13, v14, v15, v16, v17, v18, v19;
  (*(v1 + 8))(v3, v24);
  v20 = sub_1BE04A434();
  LODWORD(v9) = v21;
  (*(v5 + 8))(v7, v4);
  return (v20 == v25) & ~v9;
}

void sub_1BDA2493C()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v212 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v210 - v6;
  v218 = 0;
  v219 = 0xE000000000000000;
  v8 = sub_1BDA255B8();
  v214 = v9;
  KeyPath = swift_getKeyPath();
  v11 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v216 = v0;
  v12 = sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v0 + 24);
  v21 = swift_getKeyPath();
  v215 = v11;
  v213 = v12;
  if (v20 == 1)
  {
    v216 = v1;
    sub_1BE04B594();
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v1 + 40);
    switch(v29)
    {
      case 4:
        v211 = v8;
        v142 = *(v1 + 48);
        v210 = [v142 featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1BE0B6CA0;
        v143 = swift_getKeyPath();
        v216 = v1;
        sub_1BE04B594();
        v143, v144, v145, v146, v147, v148, v149, v150;
        v151 = sub_1BE053344();
        sub_1BDA1BE00();
        v153 = v152;
        v154 = sub_1BE052404();
        v153, v155, v156, v157, v158, v159, v160, v161;
        v162 = PKFormattedCurrencyStringFromNumber();

        if (v162)
        {
          v163 = sub_1BE052434();
          v165 = v164;

          v166 = MEMORY[0x1E69E6158];
          *(v108 + 56) = MEMORY[0x1E69E6158];
          v167 = sub_1BD110550();
          *(v108 + 64) = v167;
          *(v108 + 32) = v163;
          *(v108 + 40) = v165;
          v168 = sub_1BDA1DF28();
          v169 = [v142 paymentDate];
          if (!v169)
          {
LABEL_36:
            __break(1u);
            return;
          }

          v170 = v169;
          sub_1BE04AEE4();

          v171 = sub_1BE04AE64();
          (*(v212 + 8))(v7, v2);
          v172 = [v168 stringFromDate_];

          v139 = sub_1BE052434();
          v141 = v173;

          *(v108 + 96) = v166;
          *(v108 + 104) = v167;
          goto LABEL_23;
        }

        break;
      case 5:
        v211 = v8;
        v107 = *(v1 + 48);
        v210 = [v107 featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1BE0B6CA0;
        v109 = swift_getKeyPath();
        v216 = v1;
        sub_1BE04B594();
        v109, v110, v111, v112, v113, v114, v115, v116;
        v117 = sub_1BE053344();
        sub_1BDA1BE00();
        v119 = v118;
        v120 = sub_1BE052404();
        v119, v121, v122, v123, v124, v125, v126, v127;
        v128 = PKFormattedCurrencyStringFromNumber();

        if (v128)
        {
          v129 = sub_1BE052434();
          v131 = v130;

          v132 = MEMORY[0x1E69E6158];
          *(v108 + 56) = MEMORY[0x1E69E6158];
          v133 = sub_1BD110550();
          *(v108 + 64) = v133;
          *(v108 + 32) = v129;
          *(v108 + 40) = v131;
          v134 = sub_1BDA1DF28();
          v135 = [v107 paymentDate];
          if (!v135)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v136 = v135;
          sub_1BE04AEE4();

          v137 = sub_1BE04AE64();
          (*(v212 + 8))(v4, v2);
          v138 = [v134 stringFromDate_];

          v139 = sub_1BE052434();
          v141 = v140;

          *(v108 + 96) = v132;
          *(v108 + 104) = v133;
LABEL_23:
          *(v108 + 72) = v139;
          *(v108 + 80) = v141;
          v60 = sub_1BE04C134();
          v62 = v69;
          v76 = v108;
LABEL_24:
          v76, v69, v70, v71, v72, v73, v74, v75;
          v218 = v60;
          v8 = v211;
          goto LABEL_25;
        }

        __break(1u);
        break;
      case 6:
        v211 = v8;
        v30 = sub_1BDA2530C();
        [*(v1 + 48) featureIdentifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1BE0B6CA0;
        v32 = swift_getKeyPath();
        v216 = v1;
        sub_1BE04B594();
        v32, v33, v34, v35, v36, v37, v38, v39;
        v40 = sub_1BE053344();
        sub_1BDA1BE00();
        v42 = v41;
        v43 = sub_1BE052404();
        v42, v44, v45, v46, v47, v48, v49, v50;
        v51 = PKFormattedCurrencyStringFromNumber();

        if (v51)
        {
          if (v30 >= 29)
          {
            v52 = "E_BODY_FIXED_AMOUNT_WEEKLY";
          }

          else
          {
            v52 = "UNT_MONTHLY_29_OR_LATER";
          }

          v53 = sub_1BE052434();
          v55 = v54;

          v56 = MEMORY[0x1E69E6158];
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v57 = sub_1BD110550();
          *(v31 + 64) = v57;
          *(v31 + 32) = v53;
          *(v31 + 40) = v55;
          v58 = sub_1BDA25758();
          *(v31 + 96) = v56;
          *(v31 + 104) = v57;
          *(v31 + 72) = v58;
          *(v31 + 80) = v59;
          v60 = sub_1BE04C134();
          v62 = v61;
          (v52 | 0x8000000000000000), v61, v63, v64, v65, v66, v67, v68;
          v76 = v31;
          goto LABEL_24;
        }

        goto LABEL_34;
      default:
        goto LABEL_26;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v216 = v1;
  sub_1BE04B594();
  v21, v77, v78, v79, v80, v81, v82, v83;
  v84 = *(v1 + 40);
  if (v84 == 6)
  {
    if (sub_1BDA2530C() >= 29)
    {
      v87 = "D_MINIMUM_PAYMENT";
    }

    else
    {
      v87 = "_AMOUNT_MONTHLY_29_OR_LATER";
    }

    [*(v1 + 48) featureIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1BE0B69E0;
    v89 = sub_1BDA25758();
    v91 = v90;
    *(v88 + 56) = MEMORY[0x1E69E6158];
    *(v88 + 64) = sub_1BD110550();
    *(v88 + 32) = v89;
    *(v88 + 40) = v91;
    v92 = sub_1BE04C134();
    v62 = v93;
    (v87 | 0x8000000000000000), v93, v94, v95, v96, v97, v98, v99;
    v88, v100, v101, v102, v103, v104, v105, v106;
    v218 = v92;
  }

  else
  {
    if (v84 != 7)
    {
      goto LABEL_26;
    }

    [*(v1 + 48) featureIdentifier];
    v85 = sub_1BE04C124();
    v62 = v86;
    v218 = v85;
  }

LABEL_25:
  v219 = v62;
LABEL_26:
  v174 = *(v1 + 48);
  if (![v174 willSkipFirstPayment] || (v175 = swift_getKeyPath(), v216 = v1, sub_1BE04B594(), v175, v176, v177, v178, v179, v180, v181, v182, v190 = *(v1 + 24), v190 == 2) || v190 == 3)
  {
    [v174 featureIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_1BE0B69E0;
    *(v191 + 56) = MEMORY[0x1E69E6158];
    *(v191 + 64) = sub_1BD110550();
    v192 = v214;
    *(v191 + 32) = v8;
    *(v191 + 40) = v192;
    v193 = sub_1BE04C134();
    v195 = v194;
    v191, v194, v196, v197, v198, v199, v200, v201;
    v216 = 32;
    v217 = 0xE100000000000000;
    MEMORY[0x1BFB3F610](v193, v195);
    v195, v202, v203, v204, v205, v206, v207, v208;
    v209 = v217;
    MEMORY[0x1BFB3F610](v216, v217);
  }

  else
  {
    v209 = v214;
  }

  v209, v183, v184, v185, v186, v187, v188, v189;
}

char *sub_1BDA2530C()
{
  v18 = sub_1BE04AF64();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04B2D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B2F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 48);
  result = [v13 scheduledDay];
  if ((result - 32) <= 0xFFFFFFFFFFFFFFE0)
  {
    (*(v9 + 16))(v12, v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar, v8);
    (*(v5 + 104))(v7, *MEMORY[0x1E6969A48], v4);
    result = [v13 paymentDate];
    if (result)
    {
      v15 = result;
      sub_1BE04AEE4();

      v16 = sub_1BE04B2E4();
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v8);
      (*(v1 + 8))(v3, v18);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BDA255B8()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BDA1E0E8();
  v6 = sub_1BE052404();
  [v5 setLocalizedDateFormatFromTemplate_];

  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel____lazy_storage___dateFormatter);
  v8 = *(v0 + 48);
  v9 = v7;
  result = [v8 paymentDate];
  if (result)
  {
    v11 = result;
    sub_1BE04AEE4();

    v12 = sub_1BE04AE64();
    (*(v2 + 8))(v4, v1);
    v13 = [v9 stringFromDate_];

    v14 = sub_1BE052434();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA25758()
{
  v1 = sub_1BE04B2D4();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v46 = v0;
  v18 = *(v0 + 48);
  v19 = [v18 scheduledDay];
  result = [v18 paymentDate];
  if (result)
  {
    v21 = result;
    sub_1BE04AEE4();

    v22 = *(v4 + 32);
    v22(v17, v13, v3);
    v23 = v3;
    if ((v19 - 32) >= 0xFFFFFFFFFFFFFFE1)
    {
      v24 = sub_1BE04B1D4();
      sub_1BE04AEF4();
      v25 = sub_1BE04AE64();
      v40 = v4;
      v26 = v8;
      v27 = *(v4 + 8);
      v27(v26, v23);
      v28 = [v24 nextDateAfterDate:v25 matchingUnit:16 value:v19 options:2];

      v29 = v17;
      if (v28)
      {
        v30 = v41;
        sub_1BE04AEE4();

        v27(v17, v23);
        v29 = v30;
      }

      v31 = v42;
      v22(v42, v29, v23);
      v22(v17, v31, v23);
      v4 = v40;
    }

    if (sub_1BDA1DC18())
    {
      v33 = v43;
      v32 = v44;
      v34 = v45;
      (*(v44 + 104))(v43, *MEMORY[0x1E6969A48], v45);
      sub_1BE04B2E4();
      (*(v32 + 8))(v33, v34);
      v35 = PKOrdinalStringForInteger();
      if (v35)
      {
LABEL_10:
        v38 = sub_1BE052434();

        (*(v4 + 8))(v17, v23);
        return v38;
      }

      __break(1u);
    }

    v36 = sub_1BDA1DF40();
    v37 = sub_1BE04AE64();
    v35 = [v36 stringFromDate_];

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id *AccountAutomaticPaymentsModel.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_timeZone, &unk_1EBD3D260, &unk_1BE0C0F20);
  *(v8 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath), v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__paymentDueWarning, &qword_1EBD46338, &qword_1BE0D6B48);
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__featureError, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v23 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  v24 = sub_1BE04AF64();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);
  v25 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel_calendar;
  v26 = sub_1BE04B2F4();
  (*(*(v26 - 8) + 8))(v8 + v25, v26);

  v27 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel___observationRegistrar;
  v28 = sub_1BE04B5D4();
  (*(*(v28 - 8) + 8))(v8 + v27, v28);
  return v8;
}

uint64_t AccountAutomaticPaymentsModel.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  AccountAutomaticPaymentsModel.deinit(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t MockAccountAutomaticPaymentsModel.__allocating_init(controller:step:)(void *a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  MockAccountAutomaticPaymentsModel.init(controller:step:)(a1, a2);
  return v4;
}

uint64_t MockAccountAutomaticPaymentsModel.init(controller:step:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1BE04B5C4();
  v11 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v11);
  if (v10 == 4)
  {
    goto LABEL_2;
  }

  sub_1BDA1BF9C(byte_1F3B8FED0);
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (*(v3 + 24) == 3)
      {
        sub_1BDA20DE0();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v31 - 2) = v3;
        *(&v31 - 1) = 3;
        v32 = v3;
        sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
        sub_1BE04B584();
        KeyPath, v22, v23, v24, v25, v26, v27, v28;
      }

      sub_1BE04AEF4();
      v29 = sub_1BE04AE64();
      (*(v7 + 8))(v9, v6);
      [v11 setPaymentDate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA70, &qword_1BE10E990);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BE0B69E0;
      *(v30 + 32) = 3;
      sub_1BDA1BF9C(v30);
      goto LABEL_2;
    }

    if (*(v3 + 24) != 1)
    {
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      *(&v31 - 2) = v3;
      *(&v31 - 1) = 1;
      v32 = v3;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    if (*(v3 + 24) != 3)
    {
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      *(&v31 - 2) = v3;
      *(&v31 - 1) = 3;
      v32 = v3;
      sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
LABEL_14:
      sub_1BE04B584();
      v13, v14, v15, v16, v17, v18, v19, v20;

      return v3;
    }

LABEL_10:
    sub_1BDA20DE0();
  }

LABEL_2:

  return v3;
}

void sub_1BDA261E8()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v58[-16] = v0;
    v58[-8] = 0;
    v60 = v0;
    sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading) = 0;
  }

  v14 = *(v0 + 48);
  v15 = swift_getKeyPath();
  v60 = v0;
  sub_1BDA26C5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v23, v2);
  v24 = sub_1BE04AE64();
  (*(v3 + 8))(v5, v2);
  [v14 setPaymentDate_];

  v25 = swift_getKeyPath();
  v59 = v1;
  sub_1BE04B594();
  v25, v26, v27, v28, v29, v30, v31, v32;
  v59 = v1;
  v33 = swift_getKeyPath();
  sub_1BE04B5B4();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  v42 = *(v1 + v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v41) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_1BD1D90B0(0, *(v42 + 2) + 1, 1, v42, v44, v45, v46, v47);
    *(v1 + v41) = v42;
  }

  v49 = *(v42 + 2);
  v48 = *(v42 + 3);
  if (v49 >= v48 >> 1)
  {
    v42 = sub_1BD1D90B0((v48 > 1), v49 + 1, 1, v42, v44, v45, v46, v47);
  }

  *(v42 + 2) = v49 + 1;
  v42[v49 + 32] = 3;
  *(v1 + v41) = v42;
  swift_endAccess();
  v59 = v1;
  v50 = swift_getKeyPath();
  sub_1BE04B5A4();
  v50, v51, v52, v53, v54, v55, v56, v57;
}

uint64_t sub_1BDA265CC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t MockAccountAutomaticPaymentsModel.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  AccountAutomaticPaymentsModel.deinit(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v10 = sub_1BE04B5D4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  return v8;
}

uint64_t MockAccountAutomaticPaymentsModel.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  AccountAutomaticPaymentsModel.deinit(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OBJC_IVAR____TtC9PassKitUI33MockAccountAutomaticPaymentsModel___observationRegistrar;
  v10 = sub_1BE04B5D4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_1BDA267B4(uint64_t a1)
{
  sub_1BDA26A68(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
  if (v1 <= 0x3F)
  {
    sub_1BDA26A68(319, &qword_1EBD5BFE0, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning);
    if (v2 <= 0x3F)
    {
      sub_1BDA26A68(319, &qword_1EBD5D3F0, type metadata accessor for FeatureError);
      if (v3 <= 0x3F)
      {
        sub_1BE04AF64();
        if (v4 <= 0x3F)
        {
          sub_1BE04B2F4();
          if (v5 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BDA26A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BDA26AE4(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BDA26BC8(uint64_t a1)
{
  result = sub_1BE0511B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BDA26C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BDA26DAC(void *result)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16) + *result;
  *v4 = *(v1 + 24);
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

void sub_1BDA26DCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__amount;
  *v3 = *(v0 + 24);
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
  sub_1BDA21BE0();
}

BOOL sub_1BDA26E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400, &qword_1BE0D2B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v20 - v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD416C0, &unk_1BE0BC2A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BD230994(v10);
LABEL_6:
    sub_1BD0DE53C(v13, &unk_1EBD5D400, &qword_1BE0D2B80);
    return 1;
  }

  sub_1BD230930(&v13[v15], v7);
  v18 = *v10;
  v19 = *v7;
  sub_1BD230994(v7);

  sub_1BD230994(v10);
  sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  return v18 != v19;
}

void sub_1BDA2710C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay) = *(v0 + 24);
  sub_1BDA217C4();
  sub_1BDA21BE0();
}

void sub_1BDA27154()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
  sub_1BDA217C4();
  sub_1BDA21BE0();
}

void sub_1BDA27290(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xEE006572756C6961;
  v3 = 0x80000001BE117EB0;
  if (a2 != 6)
  {
    v3 = 0xEE0064657373696DLL;
  }

  v4 = 0xED00006465737369;
  if (a2 == 4)
  {
    v4 = 0xEE006572756C6961;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x80000001BE117E60;
  if (a2 != 2)
  {
    v5 = 0x80000001BE117E80;
  }

  if (a2)
  {
    v2 = 0x80000001BE117E40;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BDA273F0(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE300000000000000;
  v3 = 0xE800000000000000;
  if (a2 != 6)
  {
    v3 = 0xE700000000000000;
  }

  v4 = 0xE900000000000074;
  if (a2 != 4)
  {
    v4 = 0xE600000000000000;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xED0000736B6E6972;
  if (a2 != 2)
  {
    v5 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0xE800000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BDA2751C(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xEA00000000006564;
  if (a2 != 6)
  {
    v3 = 0xE700000000000000;
  }

  v4 = 0x80000001BE1173C0;
  if (a2 != 4)
  {
    v4 = 0xE500000000000000;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xEB00000000797469;
  if (a2 != 2)
  {
    v5 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BDA27650(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xE800000000000000;
  if (a2 != 6)
  {
    v3 = 0xE600000000000000;
  }

  v4 = 0xEB00000000726165;
  if (a2 == 4)
  {
    v4 = 0xE900000000000068;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xE900000000000079;
  if (a2 != 2)
  {
    v5 = 0xEC00000068746E6FLL;
  }

  if (a2)
  {
    v2 = 0xE500000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BDA27790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 3)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = a3;
    goto LABEL_8;
  }

  if (a3 > 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1BE052434();
  v5 = v6;
LABEL_8:
  sub_1BD14ED40(a2, a3);
  sub_1BE052524();

  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BDA27864(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    v5 = 0x80000001BE117300;
    if (a2 != 6)
    {
      v5 = 0xE800000000000000;
    }

    v6 = 0xEA00000000006472;
    if (a2 != 4)
    {
      v6 = 0x80000001BE1172E0;
    }

    if (a2 <= 5u)
    {
      v4 = v6;
    }

    else
    {
      v4 = v5;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x80000001BE117290;
    if (a2 != 2)
    {
      v3 = 0x80000001BE1172B0;
    }

    if (a2)
    {
      v2 = 0x80000001BE117270;
    }

    if (a2 <= 1u)
    {
      v4 = v2;
    }

    else
    {
      v4 = v3;
    }
  }

  sub_1BE052524();

  v4, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BDA279B0(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  v3 = 0x80000001BE117EB0;
  if (a2 != 6)
  {
    v3 = 0xEE0064657373696DLL;
  }

  v4 = 0xED00006465737369;
  if (a2 == 4)
  {
    v4 = 0xEE006572756C6961;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x80000001BE117E60;
  if (a2 != 2)
  {
    v5 = 0x80000001BE117E80;
  }

  v6 = 0x80000001BE117E40;
  if (!a2)
  {
    v6 = 0xEE006572756C6961;
  }

  if (a2 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (a2 <= 3u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  sub_1BE052524();
  v8, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BE053D64();
}

uint64_t sub_1BDA27B24(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  if (a2 != 6)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0xE900000000000074;
  if (a2 != 4)
  {
    v5 = 0xE600000000000000;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xED0000736B6E6972;
  if (a2 != 2)
  {
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0xE800000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1BE053D64();
}

uint64_t sub_1BDA27C64(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  v3 = 0xEF73736150656C62;
  v4 = 0x80000001BE117FC0;
  v5 = 0x80000001BE117FF0;
  if (a2 != 4)
  {
    v5 = 0x80000001BE118020;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  if (a2 != 1)
  {
    v3 = 0x80000001BE117FA0;
  }

  if (!a2)
  {
    v3 = 0x80000001BE117F70;
  }

  if (a2 <= 2u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1BE053D64();
}

uint64_t sub_1BDA27D7C(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006564;
  if (a2 != 6)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0x80000001BE1173C0;
  if (a2 != 4)
  {
    v5 = 0xE500000000000000;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xEB00000000797469;
  if (a2 != 2)
  {
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1BE053D64();
}

uint64_t sub_1BDA27EC4(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  if (a2 != 6)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xEB00000000726165;
  if (a2 == 4)
  {
    v5 = 0xE900000000000068;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000079;
  if (a2 != 2)
  {
    v6 = 0xEC00000068746E6FLL;
  }

  if (a2)
  {
    v3 = 0xE500000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1BE053D64();
}

uint64_t sub_1BDA28018(uint64_t a1, unsigned __int8 a2)
{
  sub_1BE053D04();
  if (a2 > 3u)
  {
    v6 = 0x80000001BE117300;
    if (a2 != 6)
    {
      v6 = 0xE800000000000000;
    }

    v7 = 0xEA00000000006472;
    if (a2 != 4)
    {
      v7 = 0x80000001BE1172E0;
    }

    if (a2 <= 5u)
    {
      v5 = v7;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x80000001BE117290;
    if (a2 != 2)
    {
      v4 = 0x80000001BE1172B0;
    }

    if (a2)
    {
      v3 = 0x80000001BE117270;
    }

    if (a2 <= 1u)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  sub_1BE052524();
  v5, v8, v9, v10, v11, v12, v13, v14;
  return sub_1BE053D64();
}

uint64_t sub_1BDA28178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F024();
  *a1 = result & 1;
  return result;
}

_BYTE *sub_1BDA281D0@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE700000000000000;
  v4 = 0x31746565727473;
  v5 = 0xEA00000000006564;
  v6 = 0x6F436C6174736F70;
  if (v2 != 6)
  {
    v6 = 0x7972746E756F63;
    v5 = 0xE700000000000000;
  }

  v7 = 0x80000001BE1173C0;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (*result <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797469;
  v10 = 0x6C61636F4C627573;
  if (v2 != 2)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*result)
  {
    v4 = 0x32746565727473;
    v3 = 0xE700000000000000;
  }

  if (*result > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*result <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a2 = v14;
  a2[1] = v3;
  return result;
}