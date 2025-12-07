uint64_t sub_1CA4323EC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v74 = a4;
  v73 = sub_1CA94B1C8();
  v7 = MEMORY[0x1EEE9AC00](v73);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v70 = &v61 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v81 = a1;
  v80 = v74;
  v68 = (v10 + 8);
  v69 = (v10 + 16);
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v67 = a1;
    v37 = v74;
    sub_1CA43F160(a2, v15 / v13, v74);
    v38 = v37 + v18 * v13;
    v39 = -v13;
    v40 = v38;
    v64 = -v13;
LABEL_36:
    v41 = a3;
    v62 = v40;
    v42 = v40;
    v65 = a2 + v39;
    v66 = a2;
    while (1)
    {
      if (v38 <= v74)
      {
        v81 = a2;
        v79 = v42;
        goto LABEL_58;
      }

      if (a2 <= v67)
      {
        break;
      }

      v63 = v42;
      v72 = v41 + v39;
      v43 = v38 + v39;
      v44 = v70;
      v45 = *v69;
      v46 = v38 + v39;
      v47 = v73;
      (*v69)(v70, v46, v73);
      v48 = v38;
      v49 = v71;
      v50 = OUTLINED_FUNCTION_126();
      v45(v50);
      v77 = sub_1CA94B138();
      v78 = v51;
      v75 = sub_1CA94B138();
      v76 = v52;
      v53 = sub_1CA27BAF0();
      OUTLINED_FUNCTION_110_2(&v75, MEMORY[0x1E69E6158], v54, v53);
      OUTLINED_FUNCTION_101_3();

      v55 = *v68;
      (*v68)(v49, v47);
      v55(v44, v47);
      if (&vars0 == 119)
      {
        v38 = v48;
        a3 = v72;
        if (v41 < v66 || v72 >= v66)
        {
          a2 = v65;
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeFrontToBack();
          v40 = v63;
          v39 = v64;
        }

        else
        {
          v59 = v63;
          v40 = v63;
          v39 = v64;
          v60 = v65;
          a2 = v65;
          if (v41 != v66)
          {
            OUTLINED_FUNCTION_71_4();
            swift_arrayInitWithTakeBackToFront();
            a2 = v60;
            v40 = v59;
          }
        }

        goto LABEL_36;
      }

      v56 = v72;
      if (v41 < v48 || v72 >= v48)
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_71_4();
        swift_arrayInitWithTakeFrontToBack();
        v41 = v56;
        v38 = v43;
        v42 = v43;
        a2 = v66;
        v39 = v64;
      }

      else
      {
        v42 = v43;
        v14 = v48 == v41;
        v41 = v72;
        v38 = v43;
        a2 = v66;
        v39 = v64;
        if (!v14)
        {
          OUTLINED_FUNCTION_3_3();
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeBackToFront();
          v41 = v56;
          v38 = v43;
          v42 = v43;
        }
      }
    }

    v81 = a2;
    v79 = v62;
  }

  else
  {
    v19 = v74;
    sub_1CA43F160(a1, (a2 - a1) / v13, v74);
    v67 = v19 + v17 * v13;
    v79 = v67;
    v20 = a1;
    v72 = a3;
    while (v74 < v67 && a2 < a3)
    {
      v22 = v13;
      v23 = v70;
      v24 = *v69;
      v25 = OUTLINED_FUNCTION_120();
      v26 = v73;
      v24(v25);
      v27 = a2;
      v28 = v71;
      (v24)(v71, v74, v26);
      v77 = sub_1CA94B138();
      v78 = v29;
      v75 = sub_1CA94B138();
      v76 = v30;
      v31 = sub_1CA27BAF0();
      OUTLINED_FUNCTION_110_2(&v75, MEMORY[0x1E69E6158], v32, v31);
      OUTLINED_FUNCTION_87();

      v33 = *v68;
      (*v68)(v28, v26);
      v33(v23, v26);
      if (&vars0 == 119)
      {
        v13 = v22;
        a2 = v27 + v22;
        if (v20 < v27 || v20 >= a2)
        {
          OUTLINED_FUNCTION_71_4();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v72;
        }

        else
        {
          a3 = v72;
          if (v20 != v27)
          {
            OUTLINED_FUNCTION_71_4();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v27;
        v13 = v22;
        v34 = v74 + v22;
        if (v20 < v74 || v20 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v72;
        }

        else
        {
          a3 = v72;
          if (v20 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v80 = v34;
        v74 = v34;
      }

      v20 += v13;
      v81 = v20;
    }
  }

LABEL_58:
  sub_1CA434FF4(&v81, &v80, &v79, MEMORY[0x1E69DB328]);
  return 1;
}

uint64_t sub_1CA432950(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = sub_1CA9486C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_1CA43F214(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_1CA9486B8();
      v36 = v35;
      if (v34 == sub_1CA9486B8() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_1CA94D7F8();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_1CA43F214(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_1CA9486B8();
    v54 = v53;
    if (v52 == sub_1CA9486B8() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_1CA94D7F8();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_1CA434FF4(&v77, &v76, &v75, MEMORY[0x1E6996C28]);
  return 1;
}

uint64_t sub_1CA432F6C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v122 = sub_1CA94A4E8();
  v8 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1CA94A288();
  v10 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v12 = MEMORY[0x1EEE9AC00](v129);
  v114 = (v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v110 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (v110 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v128 = (v110 - v20);
  v127 = type metadata accessor for DrawerAction(0);
  v21 = MEMORY[0x1EEE9AC00](v127);
  v113 = v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v123 = v110 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v125 = v110 - v26;
  result = MEMORY[0x1EEE9AC00](v25);
  v29 = v110 - v28;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v32 = a2 - a1 == 0x8000000000000000 && v31 == -1;
  if (v32)
  {
    goto LABEL_84;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_85;
  }

  v124 = v19;
  v126 = a3;
  v35 = (a2 - a1) / v31;
  v136 = a1;
  v135 = a4;
  v117 = (v8 + 8);
  v118 = (v8 + 32);
  v115 = (v10 + 8);
  v116 = (v10 + 32);
  v36 = v33 / v31;
  v37 = v31;
  if (v35 >= v33 / v31)
  {
    sub_1CA43F1B8(a2, v33 / v31, a4);
    v125 = a4;
    v73 = a2;
    v74 = &a4[v36 * v37];
    v75 = -v37;
    v76 = v74;
    v77 = v126;
    v112 = v16;
    v78 = v113;
    v128 = v75;
LABEL_48:
    v126 = v73;
    v124 = (v75 + v73);
    v79 = v77;
    v110[0] = v76;
    while (1)
    {
      if (v74 <= v125)
      {
        v136 = v126;
        v134 = v76;
        goto LABEL_82;
      }

      if (v126 <= a1)
      {
        break;
      }

      v111 = v76;
      v80 = v75 + v74;
      v81 = v123;
      sub_1CA42B9A4(v75 + v74, v123);
      sub_1CA42B9A4(v124, v78);
      sub_1CA42B9A4(v81, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v84 = v119;
          v83 = v120;
          (*v116)(v119, v16, v120);
          v85 = sub_1CA94A268();
          v87 = v86;
          v88 = v115;
        }

        else
        {
          v84 = v121;
          v83 = v122;
          (*v118)(v121, v16, v122);
          v85 = sub_1CA94A4B8();
          v87 = v92;
          v88 = v117;
        }

        (*v88)(v84, v83);
      }

      else
      {
        v89 = *v16;
        v90 = [*v16 localizedName];
        v85 = sub_1CA94C3A8();
        v87 = v91;
      }

      v132 = v85;
      v133 = v87;
      sub_1CA42B9A4(v78, v114);
      v93 = swift_getEnumCaseMultiPayload();
      if (v93)
      {
        if (v93 == 1)
        {
          v95 = v119;
          v94 = v120;
          (*v116)(v119, v114, v120);
          v96 = sub_1CA94A268();
          v98 = v97;
          v99 = v115;
        }

        else
        {
          v95 = v121;
          v94 = v122;
          (*v118)(v121, v114, v122);
          v96 = sub_1CA94A4B8();
          v98 = v103;
          v99 = v117;
        }

        (*v99)(v95, v94);
      }

      else
      {
        v100 = *v114;
        v101 = [*v114 localizedName];
        v96 = sub_1CA94C3A8();
        v98 = v102;
      }

      v77 = v128 + v79;
      v130 = v96;
      v131 = v98;
      sub_1CA27BAF0();
      v104 = sub_1CA94D1F8();

      v78 = v113;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      if (v104 == -1)
      {
        v106 = v79 < v126 || v77 >= v126;
        v16 = v112;
        if (v106)
        {
          v107 = v124;
          swift_arrayInitWithTakeFrontToBack();
          v73 = v107;
          v76 = v111;
          v75 = v128;
        }

        else
        {
          v108 = v111;
          v76 = v111;
          v32 = v79 == v126;
          v109 = v124;
          v73 = v124;
          v75 = v128;
          if (!v32)
          {
            swift_arrayInitWithTakeBackToFront();
            v73 = v109;
            v76 = v108;
          }
        }

        goto LABEL_48;
      }

      v105 = v79 < v74 || v77 >= v74;
      v16 = v112;
      if (v105)
      {
        swift_arrayInitWithTakeFrontToBack();
        v79 = v77;
        v74 = v80;
        v76 = v80;
        v75 = v128;
      }

      else
      {
        v76 = v80;
        v32 = v74 == v79;
        v79 = v77;
        v74 = v80;
        v75 = v128;
        if (!v32)
        {
          swift_arrayInitWithTakeBackToFront();
          v79 = v77;
          v74 = v80;
          v76 = v80;
        }
      }
    }

    v136 = v126;
    v134 = v110[0];
  }

  else
  {
    sub_1CA43F1B8(a1, (a2 - a1) / v31, a4);
    v123 = &a4[v35 * v37];
    v134 = v123;
    v38 = v126;
    v114 = v37;
    v39 = v125;
    while (a4 < v123 && a2 < v38)
    {
      sub_1CA42B9A4(a2, v29);
      sub_1CA42B9A4(a4, v39);
      sub_1CA42B9A4(v29, v128);
      v41 = swift_getEnumCaseMultiPayload();
      if (v41)
      {
        if (v41 == 1)
        {
          v43 = v119;
          v42 = v120;
          (*v116)(v119, v128, v120);
          v44 = sub_1CA94A268();
          v46 = v45;
          v47 = v115;
        }

        else
        {
          v43 = v121;
          v42 = v122;
          (*v118)(v121, v128, v122);
          v44 = sub_1CA94A4B8();
          v46 = v51;
          v47 = v117;
        }

        (*v47)(v43, v42);
      }

      else
      {
        v48 = *v128;
        v49 = [*v128 localizedName];
        v44 = sub_1CA94C3A8();
        v46 = v50;
      }

      v132 = v44;
      v133 = v46;
      v52 = v124;
      sub_1CA42B9A4(v39, v124);
      v53 = swift_getEnumCaseMultiPayload();
      if (v53)
      {
        if (v53 == 1)
        {
          v55 = v119;
          v54 = v120;
          (*v116)(v119, v52, v120);
          v56 = sub_1CA94A268();
          v58 = v57;
          (*v115)(v55, v54);
        }

        else
        {
          v64 = a2;
          v66 = v121;
          v65 = v122;
          (*v118)(v121, v52, v122);
          v56 = sub_1CA94A4B8();
          v58 = v67;
          v68 = v66;
          a2 = v64;
          (*v117)(v68, v65);
        }
      }

      else
      {
        v59 = *v52;
        v60 = a2;
        v61 = a4;
        v62 = [*v52 localizedName];
        v56 = sub_1CA94C3A8();
        v58 = v63;

        a4 = v61;
        a2 = v60;
      }

      v130 = v56;
      v131 = v58;
      sub_1CA27BAF0();
      v69 = sub_1CA94D1F8();

      v39 = v125;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      if (v69 == -1)
      {
        v70 = v114;
        v72 = a1 < a2 || a1 >= v114 + a2;
        v38 = v126;
        if (v72)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 = v70 + a2;
      }

      else
      {
        v70 = v114;
        v71 = a1 < a4 || a1 >= v114 + a4;
        v38 = v126;
        if (v71)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v135 = v70 + a4;
        a4 = v70 + a4;
      }

      a1 = v70 + a1;
      v136 = a1;
    }
  }

LABEL_82:
  sub_1CA434FF4(&v136, &v135, &v134, type metadata accessor for DrawerAction);
  return 1;
}

uint64_t sub_1CA433B14(id *a1, id *a2, unint64_t a3, id *a4, uint64_t a5)
{
  v139 = a5;
  v133 = sub_1CA94A4E8();
  v9 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1CA94A288();
  v11 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v13 = MEMORY[0x1EEE9AC00](v140);
  v15 = (v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v125 = (v121 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (v121 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v135 = (v121 - v21);
  v136 = type metadata accessor for DrawerAction(0);
  v22 = MEMORY[0x1EEE9AC00](v136);
  v138 = v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v137 = v121 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v142 = v121 - v27;
  result = MEMORY[0x1EEE9AC00](v26);
  v141 = (v121 - v29);
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  v32 = a2 - a1 == 0x8000000000000000 && v31 == -1;
  if (v32)
  {
    goto LABEL_96;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_97;
  }

  v134 = v20;
  v123 = v15;
  v35 = (a2 - a1) / v31;
  v149 = a1;
  v148 = a4;
  v128 = (v9 + 8);
  v129 = (v9 + 32);
  v127 = (v11 + 32);
  v126 = (v11 + 8);
  v36 = v33 / v31;
  if (v35 < v33 / v31)
  {
    sub_1CA43F1B8(a1, (a2 - a1) / v31, a4);
    v137 = a3;
    v138 = a4 + v35 * v31;
    v147 = v138;
    while (1)
    {
      if (a4 >= v138 || a2 >= a3)
      {
        goto LABEL_94;
      }

      v38 = v31;
      v39 = v141;
      sub_1CA42B9A4(a2, v141);
      v40 = v142;
      sub_1CA42B9A4(a4, v142);
      v41 = *(ActionDrawerDataSource.topHits(for:)(v39) + 16);

      v42 = *(ActionDrawerDataSource.topHits(for:)(v40) + 16);

      if (v41)
      {
        if (!v42)
        {
          v31 = v38;
          sub_1CA42B9FC();
          sub_1CA42B9FC();
LABEL_39:
          if (a1 < a2 || a1 >= (a2 + v31))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = (a2 + v31);
          goto LABEL_51;
        }
      }

      else if (v42)
      {
        v31 = v38;
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        goto LABEL_33;
      }

      sub_1CA42B9A4(v141, v135);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v44 = v130;
          v45 = v131;
          (*v127)(v130, v135, v131);
          v46 = sub_1CA94A268();
          v48 = v47;
          v49 = v126;
        }

        else
        {
          v44 = v132;
          v45 = v133;
          (*v129)(v132, v135, v133);
          v46 = sub_1CA94A4B8();
          v48 = v54;
          v49 = v128;
        }

        (*v49)(v44, v45);
      }

      else
      {
        v50 = *v135;
        v51 = a4;
        v52 = [*v135 localizedName];
        v46 = sub_1CA94C3A8();
        v48 = v53;

        a4 = v51;
      }

      v145 = v46;
      v146 = v48;
      v55 = v134;
      sub_1CA42B9A4(v142, v134);
      v56 = swift_getEnumCaseMultiPayload();
      if (v56)
      {
        if (v56 == 1)
        {
          v58 = v130;
          v57 = v131;
          (*v127)(v130, v55, v131);
          v59 = sub_1CA94A268();
          v61 = v60;
          (*v126)(v58, v57);
        }

        else
        {
          v67 = a1;
          v68 = a2;
          v70 = v132;
          v69 = v133;
          (*v129)(v132, v55, v133);
          v59 = sub_1CA94A4B8();
          v61 = v71;
          v72 = v70;
          a2 = v68;
          a1 = v67;
          (*v128)(v72, v69);
        }
      }

      else
      {
        v125 = a1;
        v62 = a2;
        v63 = a4;
        v64 = *v55;
        v65 = [*v55 localizedName];
        v59 = sub_1CA94C3A8();
        v61 = v66;

        a4 = v63;
        a2 = v62;
        a1 = v125;
      }

      v143 = v59;
      v144 = v61;
      sub_1CA27BAF0();
      v73 = sub_1CA94D1D8();

      sub_1CA42B9FC();
      sub_1CA42B9FC();
      a3 = v137;
      v31 = v38;
      if (v73 == -1)
      {
        goto LABEL_39;
      }

LABEL_33:
      if (a1 < a4 || a1 >= (a4 + v31))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v148 = (a4 + v31);
      a4 = (a4 + v31);
LABEL_51:
      a1 = (a1 + v31);
      v149 = a1;
    }
  }

  sub_1CA43F1B8(a2, v33 / v31, a4);
  v76 = a4 + v36 * v31;
  v77 = -v31;
  v78 = v76;
  v134 = v77;
  v135 = a4;
LABEL_53:
  v79 = (a2 + v77);
  v80 = a3;
  v121[0] = v78;
  v81 = v78;
  v122 = a2;
  while (1)
  {
    if (v76 <= v135)
    {
      v149 = a2;
      v147 = v81;
      goto LABEL_94;
    }

    if (a2 <= a1)
    {
      break;
    }

    v141 = v80;
    v124 = v81;
    v142 = v76;
    v82 = &v76[v77];
    v83 = &v76[v77];
    v84 = v137;
    sub_1CA42B9A4(v83, v137);
    v85 = v79;
    v86 = v79;
    v87 = v138;
    sub_1CA42B9A4(v86, v138);
    v88 = *(ActionDrawerDataSource.topHits(for:)(v84) + 16);

    v89 = *(ActionDrawerDataSource.topHits(for:)(v87) + 16);

    if (v88)
    {
      if (!v89)
      {
        v90 = 1;
        goto LABEL_74;
      }
    }

    else if (v89)
    {
      v90 = 0;
      goto LABEL_74;
    }

    sub_1CA42B9A4(v137, v125);
    v91 = swift_getEnumCaseMultiPayload();
    if (v91)
    {
      if (v91 == 1)
      {
        v93 = v130;
        v92 = v131;
        (*v127)(v130, v125, v131);
        v94 = sub_1CA94A268();
        v96 = v95;
        v97 = v126;
      }

      else
      {
        v93 = v132;
        v92 = v133;
        (*v129)(v132, v125, v133);
        v94 = sub_1CA94A4B8();
        v96 = v101;
        v97 = v128;
      }

      (*v97)(v93, v92);
    }

    else
    {
      v98 = *v125;
      v99 = [*v125 localizedName];
      v94 = sub_1CA94C3A8();
      v96 = v100;
    }

    v145 = v94;
    v146 = v96;
    v102 = v123;
    sub_1CA42B9A4(v138, v123);
    v103 = swift_getEnumCaseMultiPayload();
    if (v103)
    {
      if (v103 == 1)
      {
        v104 = v130;
        v105 = v102;
        v106 = v131;
        (*v127)(v130, v105, v131);
        v107 = sub_1CA94A268();
        v109 = v108;
        v110 = v126;
      }

      else
      {
        v104 = v132;
        v114 = v102;
        v106 = v133;
        (*v129)(v132, v114, v133);
        v107 = sub_1CA94A4B8();
        v109 = v115;
        v110 = v128;
      }

      (*v110)(v104, v106);
    }

    else
    {
      v111 = *v102;
      v112 = [v111 localizedName];
      v107 = sub_1CA94C3A8();
      v109 = v113;
    }

    v143 = v107;
    v144 = v109;
    sub_1CA27BAF0();
    v116 = sub_1CA94D1D8();

    v90 = v116 == -1;
    a2 = v122;
LABEL_74:
    v79 = v85;
    v77 = v134;
    v117 = v141;
    a3 = v134 + v141;
    sub_1CA42B9FC();
    sub_1CA42B9FC();
    if (v90)
    {
      if (v117 < a2 || a3 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v79;
        v78 = v124;
        v76 = v142;
      }

      else
      {
        v120 = v124;
        v78 = v124;
        v32 = v117 == a2;
        a2 = v79;
        v76 = v142;
        if (!v32)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v79;
          v78 = v120;
        }
      }

      goto LABEL_53;
    }

    if (v117 < v142 || a3 >= v142)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_83;
    }

    v81 = v82;
    v80 = v117 + v77;
    v76 = v82;
    if (v142 != v117)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_83:
      v80 = v117 + v77;
      v76 = v82;
      v81 = v82;
    }
  }

  v149 = a2;
  v147 = v121[0];
LABEL_94:
  sub_1CA434FF4(&v149, &v148, &v147, type metadata accessor for DrawerAction);

  return 1;
}

uint64_t sub_1CA4347AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_70;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v23 = v19 / v18;
  v69 = a1;
  v24 = v58;
  v68 = v58;
  v25 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1CA43F2A4();
    v61 = v24 + v23 * v18;
    v67 = v61;
    v57 = a3;
    while (1)
    {
      if (v24 >= v61 || a2 >= a3)
      {
        goto LABEL_68;
      }

      sub_1CA2D9D20(a2, v16, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA2D9D20(v24, v13, &unk_1EC4440B0, &unk_1CA981B10);
      v27 = *(v62 + 36);
      v28 = *&v16[v27];
      v29 = *&v13[v27];
      if (v29 < v28)
      {
        break;
      }

      if (v28 >= v29)
      {
        v60 = a2;
        v65 = sub_1CA429604();
        v66 = v31;
        v63 = sub_1CA429604();
        v64 = v32;
        sub_1CA27BAF0();
        v33 = sub_1CA94D1F8();

        a3 = v57;

        sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
        a2 = v60;
        sub_1CA27080C(v16, &unk_1EC4440B0, &unk_1CA981B10);
        if (v33 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA27080C(v16, &unk_1EC4440B0, &unk_1CA981B10);
      }

      if (a1 < v24 || a1 >= v24 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v24)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = v24 + v18;
      v24 += v18;
LABEL_39:
      a1 += v18;
      v69 = a1;
    }

    sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v16, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_18:
    if (a1 < a2 || a1 >= a2 + v18)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a2 += v18;
    goto LABEL_39;
  }

  sub_1CA43F2A4();
  v35 = v24 + v25 * v18;
  v36 = -v18;
  v37 = v35;
  v59 = -v18;
LABEL_41:
  v38 = v37;
  v57 = a2 + v36;
  v39 = a3;
  v55 = v37;
  while (1)
  {
    if (v35 <= v58)
    {
      v69 = a2;
      v67 = v38;
      goto LABEL_68;
    }

    if (a2 <= a1)
    {
      break;
    }

    v56 = v38;
    v40 = v35 + v36;
    v41 = v60;
    sub_1CA2D9D20(v35 + v36, v60, &unk_1EC4440B0, &unk_1CA981B10);
    v42 = v61;
    sub_1CA2D9D20(v57, v61, &unk_1EC4440B0, &unk_1CA981B10);
    v43 = *(v62 + 36);
    v44 = *(v41 + v43);
    v45 = *(v42 + v43);
    if (v45 >= v44)
    {
      if (v44 >= v45)
      {
        v65 = sub_1CA429604();
        v66 = v47;
        v63 = sub_1CA429604();
        v64 = v48;
        sub_1CA27BAF0();
        v49 = sub_1CA94D1F8();

        v46 = v49 == -1;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 1;
    }

    a3 = v39 + v59;
    sub_1CA27080C(v61, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v60, &unk_1EC4440B0, &unk_1CA981B10);
    if (v46)
    {
      if (v39 < a2 || a3 >= a2)
      {
        a2 = v57;
        swift_arrayInitWithTakeFrontToBack();
        v37 = v56;
        v36 = v59;
      }

      else
      {
        v53 = v56;
        v52 = v57;
        v37 = v56;
        v20 = v39 == a2;
        a2 = v57;
        v36 = v59;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v52;
          v37 = v53;
        }
      }

      goto LABEL_41;
    }

    if (v39 < v35 || a3 >= v35)
    {
      swift_arrayInitWithTakeFrontToBack();
      v39 = a3;
      v35 = v40;
      v38 = v40;
      v36 = v59;
    }

    else
    {
      v38 = v40;
      v20 = v35 == v39;
      v39 = a3;
      v35 = v40;
      v36 = v59;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = a3;
        v35 = v40;
        v38 = v40;
      }
    }
  }

  v69 = a2;
  v67 = v55;
LABEL_68:
  sub_1CA4350C8(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_1CA434DBC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1CA43F004(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_1CA27BAF0();
      if (sub_1CA94D1D8() != -1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_10;
  }

  sub_1CA43F004(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    sub_1CA27BAF0();
    v17 = sub_1CA94D1D8();
    v18 = (v5 + 24);
    if (v17 == -1)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_1CA434FF4(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_52();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    OUTLINED_FUNCTION_3_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_3_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1CA4350C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1CA4351B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CA94C368();
  [a4 fetchRecommendedDonationsForApplicationBundleIdentifier:v6 completionHandler:a3];
}

unint64_t sub_1CA435218()
{
  result = qword_1EC445428;
  if (!qword_1EC445428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445428);
  }

  return result;
}

uint64_t sub_1CA435294(uint64_t a1)
{
  result = type metadata accessor for DrawerAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ActionDrawerDataSource.ensureLoaded()()
{
  v4 = (*(*v0 + 400) + **(*v0 + 400));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CA2DF78C;

  return v4();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA4356A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4356E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CA435778(uint64_t a1)
{
  type metadata accessor for DrawerAction(319);
  if (v1 <= 0x3F)
  {
    sub_1CA435804(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CA435804(uint64_t a1)
{
  if (!qword_1EC445440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC445448, &unk_1CA987340);
    v1 = sub_1CA94C758();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC445440);
    }
  }
}

uint64_t sub_1CA435878(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4358B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA43591C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA43595C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CA4359B8(uint64_t a1)
{
  sub_1CA435A2C(319);
  if (v1 <= 0x3F)
  {
    sub_1CA94B1C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CA435A2C(uint64_t a1)
{
  if (!qword_1EC442C80)
  {
    type metadata accessor for DrawerAction(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC445458, &unk_1CA987488);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC442C80);
    }
  }
}

unint64_t sub_1CA435AAC()
{
  result = qword_1EC445468;
  if (!qword_1EC445468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445468);
  }

  return result;
}

uint64_t sub_1CA435B00(uint64_t a1)
{
  result = sub_1CA435D64(&qword_1EC4425A8, 255, type metadata accessor for DrawerSearchIndexItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA435B60()
{
  result = qword_1EC4425B0;
  if (!qword_1EC4425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4425B0);
  }

  return result;
}

uint64_t sub_1CA435BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_1CA435BC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1CA435BD4()
{
  result = qword_1EC441B88;
  if (!qword_1EC441B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B88);
  }

  return result;
}

unint64_t sub_1CA435C28()
{
  result = qword_1EC441B90;
  if (!qword_1EC441B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B90);
  }

  return result;
}

id sub_1CA435C7C(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    v6 = a2;

    return a3;
  }

  else
  {
    swift_unknownObjectRetain();

    return sub_1CA94C218();
  }
}

void sub_1CA435CF0(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CA435D64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA435DA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA5C42D4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

unint64_t sub_1CA435DEC()
{
  result = qword_1EC4454D8;
  if (!qword_1EC4454D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4454D8);
  }

  return result;
}

void sub_1CA435E40(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a2)
  {
    sub_1CA94C218();
    v12 = a3;

    sub_1CA435C7C(a4, a5, a6, a7 & 1);
  }
}

void sub_1CA435EB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a2)
  {

    sub_1CA435CF0(a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1CA435F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_206(a1, a2, a3, a4);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v4;
}

uint64_t sub_1CA435F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1CA418AB8(v5, a1);
}

uint64_t sub_1CA436004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1CA2E9390;

  return sub_1CA41BEE0(a1, v4, v5, v7, v6);
}

uint64_t sub_1CA4360F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA4361DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA43621C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionDrawerDataLoader.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit22ActionDrawerDataLoader33_3DEEF7B2499E1B37D3EC5450A935870FLLC17UnavailableReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA436348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA43639C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DrawerSearchIndexItem.SearchableProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DrawerSearchIndexItem.SearchableProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA43656C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4365AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1CA4365FC()
{
  result = qword_1EC4455E0[0];
  if (!qword_1EC4455E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4455E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_106_3(uint64_t a1)
{

  return sub_1CA27080C(a1, v2, v1);
}

BOOL OUTLINED_FUNCTION_107_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_111_3(uint64_t a1)
{

  return sub_1CA94B028();
}

uint64_t OUTLINED_FUNCTION_114_2()
{
}

__n128 OUTLINED_FUNCTION_120_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, __int128 a27)
{
  result = a26;
  *v27 = *(v28 - 128);
  v27[1] = a27;
  v27[2] = a26;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return swift_arrayDestroy();
}

uint64_t sub_1CA436864(uint64_t a1)
{
  v2 = *v1;
  sub_1CA94C218();
  sub_1CA94C458();

  OUTLINED_FUNCTION_27_2((v1 + 2), v6);
  type metadata accessor for RadixTree.Node(0, *(v2 + 80), v3, v4);
  sub_1CA94C218();
  swift_getWitnessTable();
  sub_1CA94C768();
}

uint64_t sub_1CA436934(void *a1, void *a2)
{
  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v5 || (v6 = 0, (sub_1CA94D7F8() & 1) != 0))
  {
    OUTLINED_FUNCTION_27_2((a1 + 2), v11);
    OUTLINED_FUNCTION_27_2((a2 + 2), &v10);
    type metadata accessor for RadixTree.Node(0, *(v2 + 80), v7, v8);
    sub_1CA94C218();
    sub_1CA94C218();
    swift_getWitnessTable();
    v6 = sub_1CA94C788();
  }

  return v6 & 1;
}

uint64_t sub_1CA436A18()
{

  return v0;
}

uint64_t sub_1CA436A48()
{
  sub_1CA436A18();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1CA436A94()
{
  sub_1CA94D918();
  sub_1CA436864(v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA436AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA436B70(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA436864(v2);
  return sub_1CA94D968();
}

uint64_t sub_1CA436BE4(uint64_t a1)
{
  v3 = *v1;
  v18[0] = 91;
  v18[1] = 0xE100000000000000;
  v4 = v1[3];
  v5 = v1[4];
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v4, v5);

  MEMORY[0x1CCAA1300](93, 0xE100000000000000);
  v19 = 91;
  v20 = 0xE100000000000000;
  OUTLINED_FUNCTION_27_2((v1 + 5), v18);
  v16[0] = v1[5];
  v6 = *(v3 + 80);
  v7 = sub_1CA94C758();
  OUTLINED_FUNCTION_0_32(v7);
  if (sub_1CA94CAE8())
  {
    MEMORY[0x1CCAA1300](10, 0xE100000000000000);
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    MEMORY[0x1CCAA1300](0x5B203E2D20, 0xE500000000000000);
    v17 = v1[5];
    swift_getWitnessTable();
    sub_1CA94D7C8();
    MEMORY[0x1CCAA1300](2653, 0xE200000000000000);
    MEMORY[0x1CCAA1300](0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_27_2((v1 + 2), v16);
  v17 = v1[2];
  type metadata accessor for RadixTree.Node(255, v6, v8, v9);
  v10 = sub_1CA94C758();
  OUTLINED_FUNCTION_0_32(v10);
  result = sub_1CA94CAE8();
  if (result)
  {
    return v19;
  }

  if (a1 + 0x4000000000000000 >= 0)
  {
    v12 = sub_1CA94C558();
    MEMORY[0x1CCAA1300](v12);

    MEMORY[0x1CCAA1300](2684, 0xE200000000000000);
    sub_1CA94C218();
    v17 = sub_1CA94C668();
    while (v17 != sub_1CA94C6F8())
    {
      v13 = sub_1CA94C6D8();
      sub_1CA94C688();
      if (v13)
      {
      }

      else
      {
        sub_1CA94D468();
      }

      sub_1CA94C738();
      v14 = sub_1CA94C558();
      MEMORY[0x1CCAA1300](v14);

      MEMORY[0x1CCAA1300](11563, 0xE200000000000000);
      v15 = sub_1CA436BE4(a1 + 1);
      MEMORY[0x1CCAA1300](v15);
    }

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA436F48()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA949F78();
  v0[5] = v3;
  v0[6] = *(v3 - 8);
  v0[7] = swift_task_alloc();
  v4 = sub_1CA94AC88();
  v0[8] = v4;
  v0[9] = *(v4 - 8);
  v0[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA437060, 0, 0);
}

uint64_t sub_1CA437060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  [**(v20 + 32) multipleStateClass];
  swift_getObjCClassMetadata();
  sub_1CA437644();
  v21 = swift_dynamicCastMetatype();
  *(v20 + 88) = v21;
  if (v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    *(v20 + 16) = MEMORY[0x1E69E7CC0];
    result = sub_1CA94A878();
    *(v20 + 96) = result;
    v24 = *(result + 16);
    *(v20 + 112) = 0;
    *(v20 + 120) = v22;
    *(v20 + 104) = v24;
    if (v24)
    {
      if (*(result + 16))
      {
        (*(*(v20 + 72) + 16))(*(v20 + 80), result + ((*(*(v20 + 72) + 80) + 32) & ~*(*(v20 + 72) + 80)), *(v20 + 64));
        v25 = swift_task_alloc();
        *(v20 + 128) = v25;
        *v25 = v20;
        OUTLINED_FUNCTION_0_33(v25);

        return sub_1CA6337C0();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      sub_1CA542800();

      v34 = OUTLINED_FUNCTION_1_3();

      return v35(v34);
    }
  }

  else
  {
    sub_1CA949C58();
    v26 = sub_1CA949F68();
    v27 = sub_1CA94CC18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CA256000, v26, v27, "Provided a collection, but the parameter does not support multiple states.", v28, 2u);
      MEMORY[0x1CCAA4BF0](v28, -1, -1);
    }

    v30 = *(v20 + 48);
    v29 = *(v20 + 56);
    v31 = *(v20 + 40);

    (*(v30 + 8))(v29, v31);
    sub_1CA3DBA78();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v33 = *(v20 + 8);

    return v33();
  }

  return result;
}

uint64_t sub_1CA4372F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  *(v2 + 136) = v3;
  *(v2 + 144) = v0;

  if (v0)
  {

    v4 = sub_1CA4375C0;
  }

  else
  {
    v4 = sub_1CA43741C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CA43741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  MEMORY[0x1CCAA1490](a1, a2, a3, a4, a5, a6, a7, a8);
  if (*((v20[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  v22 = v20[9];
  v21 = v20[10];
  v23 = v20[8];
  sub_1CA94C6E8();
  (*(v22 + 8))(v21, v23);
  v24 = v20[2];
  v25 = v20[13];
  v26 = v20[14] + 1;
  v20[14] = v26;
  v20[15] = v24;
  result = v20[12];
  if (v26 == v25)
  {

    sub_1CA542800();

    v28 = OUTLINED_FUNCTION_1_3();

    return v29(v28);
  }

  else if (v26 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v20[9] + 16))(v20[10], result + ((*(v20[9] + 80) + 32) & ~*(v20[9] + 80)) + *(v20[9] + 72) * v26, v20[8]);
    v30 = swift_task_alloc();
    v20[16] = v30;
    *v30 = v20;
    OUTLINED_FUNCTION_0_33(v30);

    return sub_1CA6337C0();
  }

  return result;
}

uint64_t sub_1CA4375C0()
{
  OUTLINED_FUNCTION_0();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1CA437644()
{
  result = qword_1EC446DB0;
  if (!qword_1EC446DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC446DB0);
  }

  return result;
}

uint64_t sub_1CA437688()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA437724;

  return sub_1CA436F48();
}

uint64_t sub_1CA437724(uint64_t a1)
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

unint64_t sub_1CA437834(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_75_3();
            while (1)
            {
              OUTLINED_FUNCTION_16_17();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_8_13();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_53_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_16_17();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_8_13();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_53_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_75_3();
          while (1)
          {
            OUTLINED_FUNCTION_16_17();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_8_13();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_53_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1CA94D4B8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_16_17();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_8_13();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_53_8();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_16_17();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_8_13();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_53_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_1CA43F618(result, a2, 10);
  v7 = v24;
  v23 = v25;
LABEL_70:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_1CA437A9C(char *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = v3;
  v5 = sub_1CA6048D4(v3);

  if (v5 == 1)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = v4;
    v7 = sub_1CA6048D4(v3);
    sub_1CA607C68(v7, v6);
    v9 = sub_1CA360EB0(v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (!v10)
  {
LABEL_8:
    v13 = 9;
  }

  else
  {
    sub_1CA437BCC(&v14);
    if (v15)
    {
      sub_1CA27F268(&v14, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 40))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      return;
    }

    sub_1CA27080C(&v14, &unk_1EC4456B0, &unk_1CA985F30);
    v13 = 8;
  }

  *a1 = v13;
}

void sub_1CA437BCC(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = *(v1 + 1);
  *&v18[5] = *v1;
  *&v18[7] = v4;
  *&v18[9] = *(v1 + 2);
  v5 = v3;
  v6 = sub_1CA6048D4(v3);

  if (v6 == 1)
  {
    goto LABEL_2;
  }

  if (v3)
  {
    v8 = v5;
    v9 = sub_1CA6048D4(v3);
    sub_1CA607C68(v9, v8);
    v11 = sub_1CA360EB0(v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1CA3E4D48(sub_1CA440414, v11, &v16);

  if (v17)
  {
    sub_1CA27F268(&v16, v18);
    sub_1CA27F268(v18, a1);
    return;
  }

  v12 = *(v1 + 16);
  sub_1CA27080C(&v16, &unk_1EC4456B0, &unk_1CA985F30);
  if ((v12 & 1) == 0)
  {
    goto LABEL_2;
  }

  v13 = *v1;
  if (!*v1)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
    *(a1 + 32) = sub_1CA276B98(&qword_1EC444E38, &qword_1EC444E30, &unk_1CA985F40);
    v14 = swift_allocObject();
    *a1 = v14;
    *(v14 + 16) = 0;
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
    *(a1 + 32) = sub_1CA276B98(&qword_1EC444E38, &qword_1EC444E30, &unk_1CA985F40);
    v14 = swift_allocObject();
    *a1 = v14;
    *(v14 + 16) = 2;
LABEL_18:
    strcpy((v14 + 24), "WFNumberValue");
    *(v14 + 38) = -4864;
    *(v14 + 40) = 1;
    return;
  }

  if (v13 != 99)
  {
    if (v13 == 4)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
      *(a1 + 32) = sub_1CA276B98(&unk_1EC444E48, &qword_1EC444E40, &qword_1CA98F950);
      strcpy(a1, "WFNumberValue");
      *(a1 + 14) = -4864;
      *(a1 + 16) = 1;
      return;
    }

LABEL_2:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (v3)
  {
    v15 = [v5 isCaseInsensitive];
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
  *(a1 + 32) = sub_1CA276B98(&qword_1EC444E28, &qword_1EC444E20, &unk_1CA9917A0);
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000001CA9B28F0;
  *(a1 + 16) = 0;
  *(a1 + 17) = v15;
}

uint64_t sub_1CA437F64(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 24))(v3, v4);
  type metadata accessor for WFContentOperator(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v7 == *a2;
  }

  return result;
}

uint64_t sub_1CA438070(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v32 = a2 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  v33 = *(a2 + 16);
  v4 = &unk_1EC444470;
  v5 = &unk_1CA983510;
  while (1)
  {
    if (v2 == v33)
    {
      return v3;
    }

    v6 = v32 + 48 * v2;
    v7 = *(v6 + 40);
    v8 = *(v6 + 24);
    v9 = *(v6 + 16);
    v10 = *(v6 + 8);
    v38[0] = *v6;
    v38[1] = v10;
    v39 = v9;
    v40 = v8;
    v41 = v7;
    v11 = RowTemplateConditionalParameterState.containedVariables.getter();
    v12 = v11;
    v13 = v11 >> 62;
    v14 = v11 >> 62 ? sub_1CA94D328() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v3 >> 62;
    result = v3 >> 62 ? sub_1CA94D328() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = result + v14;
    if (__OFADD__(result, v14))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v15)
      {
LABEL_13:
        sub_1CA94D328();
      }

LABEL_14:
      v3 = sub_1CA94D488();
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }

    if (v15)
    {
      goto LABEL_13;
    }

    v18 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    v37 = v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      v21 = sub_1CA94D328();
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v2;
    if (v21)
    {
      result = sub_1CA25B410(v12);
      if (((v20 >> 1) - v19) < result)
      {
        goto LABEL_36;
      }

      v35 = v14;
      v22 = v37 + 8 * v19 + 32;
      v36 = v2;
      v34 = result;
      if (v13)
      {
        if (v21 < 1)
        {
          goto LABEL_38;
        }

        sub_1CA276B98(&qword_1EC447B50, v4, v5);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
          v24 = v5;
          v25 = v4;
          v26 = sub_1CA276BDC(v38, i, v12);
          v28 = *v27;
          v26(v38, 0);
          v4 = v25;
          v5 = v24;
          *(v22 + 8 * i) = v28;
        }
      }

      else
      {
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        swift_arrayInitWithCopy();
      }

      v2 = v36;
      if (v34 < v35)
      {
        goto LABEL_35;
      }

      if (v34 > 0)
      {
        v29 = *(v37 + 16);
        v30 = __OFADD__(v29, v34);
        v31 = v29 + v34;
        if (v30)
        {
          goto LABEL_37;
        }

        *(v37 + 16) = v31;
      }
    }

    else
    {

      if (v14 > 0)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CA438380(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1CA94C1E8();
  v6 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v5;
  OUTLINED_FUNCTION_59_5(v6, v8, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v33);
  v9 = v33[0];
  v10 = sub_1CA94C7A8();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v9;
  result = OUTLINED_FUNCTION_59_5(v10, v12, 0x80000001CA9B2A70, v11, v33);
  v14 = 0;
  v15 = v33[0];
  v37 = v4;
  v16 = a2 + 9;
  v17 = a2[2];
LABEL_2:
  v18 = &v16[6 * v14];
  while (1)
  {
    if (v17 == v14)
    {
      OUTLINED_FUNCTION_116();
      sub_1CA94C648();
      OUTLINED_FUNCTION_171();

      swift_isUniquelyReferenced_nonNull_native();
      v33[0] = v15;
      OUTLINED_FUNCTION_67_5();
      sub_1CA32EA0C(a2, v26, v27, v28, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v30;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v31;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = v16;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v32 = sub_1CA94C1A8();

      return v32;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_12;
    }

    v20 = *v18;
    v21 = *(v18 - 1);
    v22 = *(v18 - 24);
    v23 = *(v18 - 4);
    v33[0] = *(v18 - 5);
    v33[1] = v23;
    v34 = v22;
    v35 = v21;
    v36 = v20;
    a2 = v33;
    result = RowTemplateConditionalParameterState.serializedRepresentation.getter();
    ++v14;
    v18 += 6;
    if (result)
    {
      a2 = &v37;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2();
      if (v25)
      {
        OUTLINED_FUNCTION_80_4(v24 > 1);
      }

      result = sub_1CA94C6E8();
      v14 = v19;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CA438638(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1CA94C1E8();
  v6 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = v5;
  OUTLINED_FUNCTION_59_5(v6, v8, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v30);
  v9 = *&v30[0];
  v10 = sub_1CA94C7A8();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = v9;
  result = OUTLINED_FUNCTION_59_5(v10, v12, 0x80000001CA9B2A70, v11, v30);
  v14 = 0;
  v15 = *&v30[0];
  v32 = v4;
  v16 = a2 + 4;
  v17 = a2[2];
LABEL_2:
  v18 = &v16[7 * v14];
  while (1)
  {
    if (v17 == v14)
    {
      OUTLINED_FUNCTION_116();
      sub_1CA94C648();
      OUTLINED_FUNCTION_171();

      swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = v15;
      OUTLINED_FUNCTION_67_5();
      sub_1CA32EA0C(a2, v23, v24, v25, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v27;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v28;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = v16;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v29 = sub_1CA94C1A8();

      return v29;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_12;
    }

    v20 = *(v18 + 1);
    v30[0] = *v18;
    v30[1] = v20;
    v30[2] = *(v18 + 2);
    v31 = v18[6];
    a2 = v30;
    result = RowTemplateFindFilterParameterState.serializedRepresentation.getter();
    ++v14;
    v18 += 7;
    if (result)
    {
      a2 = &v32;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2();
      if (v22)
      {
        OUTLINED_FUNCTION_80_4(v21 > 1);
      }

      result = sub_1CA94C6E8();
      v14 = v19;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1CA4388E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1CA94C1E8();
  v6 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = v5;
  OUTLINED_FUNCTION_59_5(v6, v8, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, v29);
  v9 = v29[0];
  v10 = sub_1CA94C7A8();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = v9;
  result = OUTLINED_FUNCTION_59_5(v10, v12, 0x80000001CA9B2A70, v11, v29);
  v14 = 0;
  v15 = v29[0];
  v29[0] = v4;
  v16 = a2 + 56;
  v17 = *(a2 + 16);
LABEL_2:
  for (i = (v16 + (v14 << 6)); ; i += 8)
  {
    if (v17 == v14)
    {
      v23 = sub_1CA94C648();

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v29[0] = v15;
      sub_1CA32EA0C(v23, 0xD000000000000020, 0x80000001CA9B2A40, v24, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA97EDF0;
      *(inited + 32) = sub_1CA94C3A8();
      *(inited + 40) = v26;
      *(inited + 48) = sub_1CA94C368();
      *(inited + 56) = sub_1CA94C3A8();
      *(inited + 64) = v27;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1A8();
      OUTLINED_FUNCTION_39_6();

      *(inited + 72) = i;
      OUTLINED_FUNCTION_7_19();
      sub_1CA94C1E8();
      OUTLINED_FUNCTION_7_19();
      v28 = sub_1CA94C1A8();

      return v28;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_14;
    }

    result = *i;
    if (*i)
    {
      result = [result value];
      if (result)
      {
        v20 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457D8, &qword_1CA987B78);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1CA981310;
        strcpy((v21 + 32), "WFRowSubject");
        *(v21 + 45) = 0;
        *(v21 + 46) = -5120;
        *(v21 + 48) = v20;
        sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
        v22 = v20;
        sub_1CA94C1E8();
        sub_1CA94C1A8();

        MEMORY[0x1CCAA1490]();
        if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        result = sub_1CA94C6E8();
        v14 = v19;
        goto LABEL_2;
      }
    }

    ++v14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1CA438C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1CA2E764C();
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1CA2BC130();
  sub_1CA28A224(v5);
  if (v3 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1CA438D30(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_72_4();
  v6 = a3();
  sub_1CA28A224(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

WorkflowKit::WFConditionalAction::ParameterKey_optional __swiftcall WFConditionalAction.ParameterKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WFConditionalAction.ParameterKey.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x756F706D6F434657;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7469646E6F434657;
  }
}

unint64_t sub_1CA438EC4@<X0>(unint64_t *a1@<X8>)
{
  result = WFConditionalAction.ParameterKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1CA438EEC()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = [v0 mode];
  if (v4 == 2)
  {
    sub_1CA94C438("WFConditionalAction - End If", 28);
    OUTLINED_FUNCTION_1_2();
    sub_1CA94C438("End If", 6);
    v7 = OUTLINED_FUNCTION_58();
    v8 = OUTLINED_FUNCTION_18_0(v7);
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_24_12();
    sub_1CA948D98();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_6;
    }

LABEL_9:
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    goto LABEL_6;
  }

  if (v4 != 1)
  {
    v15.receiver = v0;
    v15.super_class = type metadata accessor for WFConditionalAction();
    v14 = objc_msgSendSuper2(&v15, sel_localizedNameWithContext_, v3);
    goto LABEL_8;
  }

  sub_1CA94C438("WFConditionalAction - Otherwise", 31);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("Otherwise", 9);
  v5 = OUTLINED_FUNCTION_58();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_12();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = [qword_1EDB9F690 bundleURL];
  OUTLINED_FUNCTION_63_6();
  v10 = sub_1CA948BA8();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_8();

  v12 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v13 = OUTLINED_FUNCTION_9_1();
  v14 = [v3 localize_];

LABEL_8:
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4392EC()
{
  v1 = v0 + OBJC_IVAR___WFConditionalAction_tableTemplate;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 72);
  while (1)
  {
    v5 = *v4;
    v4 += 6;
    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CA439454()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F8, &unk_1CA987A00);
  OUTLINED_FUNCTION_64_5();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  *(v1 + 32) = sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  return v1;
}

id sub_1CA4394DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([v3 mode])
  {
    return (a1 == 0);
  }

  v7.receiver = v3;
  v7.super_class = type metadata accessor for WFConditionalAction();
  return objc_msgSendSuper2(&v7, sel_legacyBehaviorIgnoresOutputFromAction_inWorkflow_, a1, a2);
}

void sub_1CA4395D8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  sub_1CA94C438("If Result", 9);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("If Result", 9);
  v3 = OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_12();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v5 = [qword_1EDB9F690 bundleURL];
  OUTLINED_FUNCTION_63_6();
  v6 = sub_1CA948BA8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_8();

  v8 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v9 = OUTLINED_FUNCTION_9_1();
  v10 = [v2 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4397B4()
{
  if ([v0 mode])
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for WFConditionalAction();
    v1 = objc_msgSendSuper2(&v7, sel_createAccompanyingActions);
    if (v1)
    {
      v2 = v1;
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      v3 = sub_1CA94C658();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = [v0 createAccompanyingActionWithMode_];
    v5 = [v0 createAccompanyingActionWithMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1CA981360;
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
  }

  return v3;
}

id WFConditionalAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFConditionalAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFConditionalAction_tableTemplate];
  v8 = MEMORY[0x1E69E7CC0];
  *v7 = 0;
  *(v7 + 1) = v8;
  v7[16] = 0;
  *&v4[OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter] = 0;
  v9 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
  *&v4[v9] = sub_1CA94C1E8();
  *&v4[OBJC_IVAR___WFConditionalAction_observedVariables] = v8;
  v4[OBJC_IVAR___WFConditionalAction_truthForTestingOnly] = 0;
  OUTLINED_FUNCTION_69();
  v10 = sub_1CA94C368();

  if (a4)
  {
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v11 = sub_1CA94C1A8();
  }

  else
  {
    v11 = 0;
  }

  v40.receiver = v4;
  v40.super_class = type metadata accessor for WFConditionalAction();
  v12 = objc_msgSendSuper2(&v40, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, v11);
  v13 = v12;

  if (v13)
  {

    if (a4)
    {
      sub_1CA94C218();
      OUTLINED_FUNCTION_3_28();
      v14 = sub_1CA323E28();

      if (v14)
      {

        v15 = v13;
        OUTLINED_FUNCTION_52_0();
        sub_1CA698020(0, v16);
        v17 = v35;
        if (v35)
        {
          v18 = v36;
          v19 = v34;
          v20 = &v15[OBJC_IVAR___WFConditionalAction_tableTemplate];
          OUTLINED_FUNCTION_54_4(&v15[OBJC_IVAR___WFConditionalAction_tableTemplate], &v34);
          *v20 = v19;
          *(v20 + 1) = v17;
          v20[16] = v18 & 1;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
        sub_1CA94C1A8();

        v21 = v13;
        RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)();
        v22 = v35;
        if (v35)
        {
          v24 = v38;
          v23 = v39;
          v32 = v36;
          v33 = v37;
          v25 = v34;
          v26 = &v21[OBJC_IVAR___WFConditionalAction_tableTemplate];
          OUTLINED_FUNCTION_28(&v21[OBJC_IVAR___WFConditionalAction_tableTemplate], &v34);
          v27 = v23;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA69AE28();
          v28 = *(*(v26 + 1) + 16);
          sub_1CA69B03C(v28);
          v29 = *(v26 + 1);
          *(v29 + 16) = v28 + 1;
          v30 = v29 + 48 * v28;
          *(v30 + 32) = v25;
          *(v30 + 40) = v22;
          *(v30 + 48) = v32 & 1;
          *(v30 + 56) = v33;
          *(v30 + 64) = v24;
          *(v30 + 72) = v23;
          *(v26 + 1) = v29;
          swift_endAccess();
          sub_1CA43EFAC(v25, v22, v32, v33, v24, v23);
        }
      }
    }

    sub_1CA43D2A0();
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_1CA439DB8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  v3 = sub_1CA94C3A8();
  v5 = v4;
  sub_1CA43FB24(v0);
  if (!v6)
  {
    v7 = sub_1CA948D28();
    v77 = &v75;
    OUTLINED_FUNCTION_1_0();
    v9 = v8;
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_6_0();
    v13 = v12 - v11;
    sub_1CA948D18();
    sub_1CA948CC8();
    (*(v9 + 8))(v13, v7);
  }

  v14 = sub_1CA94C368();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = v2;
  sub_1CA32EA0C(v14, v3, v5, isUniquelyReferenced_nonNull_native, v80);

  v16 = v80[0];
  v17 = sub_1CA94C3A8();
  v19 = v18;
  if ([v1 UUID])
  {
    OUTLINED_FUNCTION_39_6();
    swift_isUniquelyReferenced_nonNull_native();
    v20 = OUTLINED_FUNCTION_70_7();
    sub_1CA32EA0C(v20, v17, v19, v21, v22);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_187();
    sub_1CA271BF8(v23, v24);
    if (v25)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();

      sub_1CA94D5A8();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v26 = sub_1CA94C3A8();
  v28 = v27;
  [v1 mode];
  sub_1CA94C988();
  OUTLINED_FUNCTION_39_6();
  swift_isUniquelyReferenced_nonNull_native();
  v29 = OUTLINED_FUNCTION_70_7();
  sub_1CA32EA0C(v29, v26, v28, v30, v31);

  v32 = v80[0];
  if ([v1 mode])
  {
    goto LABEL_9;
  }

  v33 = &v1[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v34 = *(v33 + 1);
  if (*(v34 + 16) != 1)
  {
    v67 = v33[16];
    sub_1CA94C218();
    v68 = OUTLINED_FUNCTION_188();
    sub_1CA438380(v68, v69, v67);
    OUTLINED_FUNCTION_171();

    if (v67)
    {
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v32;
      ObjectType = swift_getObjectType();
      sub_1CA32EB34(v67, 0x7469646E6F434657, 0xEC000000736E6F69, v70, v80, ObjectType);
    }

    else
    {
      v72 = OUTLINED_FUNCTION_3_28();
      sub_1CA271BF8(v72, v73);
      if (v74)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v80[0] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        sub_1CA94D588();

        OUTLINED_FUNCTION_163();
        sub_1CA94D5A8();
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_9;
  }

  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  v37 = *(v34 + 56);
  v38 = *(v34 + 72);
  v80[0] = *(v34 + 32);
  v80[1] = v35;
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v39 = RowTemplateConditionalParameterState.serializedRepresentation.getter();
  if (!v39 || (v79 = v39, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    OUTLINED_FUNCTION_36();
    return;
  }

  v40 = 0;
  v42 = v78 + 64;
  v41 = *(v78 + 64);
  v76 = v78 + 64;
  v77 = v78;
  v43 = 1 << *(v78 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v41;
  v46 = (v43 + 63) >> 6;
  v75 = v46;
  if (v45)
  {
    while (1)
    {
      v47 = v40;
LABEL_20:
      v48 = __clz(__rbit64(v45)) | (v47 << 6);
      v49 = (v77[6] + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      v52 = *(v77[7] + 8 * v48);
      swift_unknownObjectRetain_n();
      sub_1CA94C218();
      swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v32;
      v53 = OUTLINED_FUNCTION_204();
      v55 = sub_1CA271BF8(v53, v54);
      if (__OFADD__(v32[2], (v56 & 1) == 0))
      {
        break;
      }

      v57 = v55;
      v58 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        v59 = OUTLINED_FUNCTION_204();
        v61 = sub_1CA271BF8(v59, v60);
        if ((v58 & 1) != (v62 & 1))
        {
          goto LABEL_38;
        }

        v57 = v61;
      }

      v45 &= v45 - 1;
      if (v58)
      {

        v32 = v80[0];
        *(*(v80[0] + 56) + 8 * v57) = v52;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = v80[0];
        *(v80[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
        v63 = (v32[6] + 16 * v57);
        *v63 = v51;
        v63[1] = v50;
        *(v32[7] + 8 * v57) = v52;
        swift_unknownObjectRelease();
        v64 = v32[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_37;
        }

        v32[2] = v66;
      }

      v40 = v47;
      v46 = v75;
      v42 = v76;
      if (!v45)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    while (1)
    {
      v47 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v47 >= v46)
      {

        goto LABEL_9;
      }

      v45 = *(v42 + 8 * v47);
      ++v40;
      if (v45)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1CA94D878();
  __break(1u);
}

uint64_t sub_1CA43A4A0()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WFConditionalAction();
  v1 = objc_msgSendSuper2(&v17, sel_minimumSupportedClientVersion);
  if (!v1)
  {
    sub_1CA94C3A8();
    v1 = sub_1CA94C368();
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_66_3();
  v2 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  if (*(*(v2 + 1) + 16) < 2uLL)
  {
  }

  else
  {

    v3 = sub_1CA94C368();
    v4 = WFMaximumBundleVersion(v3, v1);

    if (v4)
    {
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_66_3();
    }
  }

  v5 = *(v2 + 1);
  v6 = *(v5 + 16);
  result = sub_1CA94C218();
  v8 = 0;
  for (i = (v5 + 72); ; i += 6)
  {
    if (v6 == v8)
    {

      return OUTLINED_FUNCTION_116();
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    if (*(*(i - 4) + 2))
    {
      v10 = *i;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA271BF8(0x7070414657, 0xE500000000000000);
      if (v11)
      {

        v12 = sub_1CA94C368();
        OUTLINED_FUNCTION_116();
        v13 = sub_1CA94C368();

        v14 = OUTLINED_FUNCTION_69();
        v16 = WFMaximumBundleVersion(v14, v15);

        if (v16)
        {
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_66_3();
        }

        return OUTLINED_FUNCTION_116();
      }
    }

    ++v8;
  }

  __break(1u);
  return result;
}

id sub_1CA43A750@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___WFConditionalAction_tableTemplate;
  OUTLINED_FUNCTION_14_17();
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  v7 = *(v6 + 16);
  if (v7 <= 1)
  {
    if (v7)
    {
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);
      v10 = *(v6 + 48);
      v11 = *(v6 + 56);
      v12 = *(v6 + 64);
      v13 = *(v6 + 72);
      sub_1CA94C218();
      sub_1CA94C218();
      result = v13;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      v8 = sub_1CA94C1E8();
      v14 = sub_1CA948D28();
      OUTLINED_FUNCTION_1_0();
      v16 = v15;
      MEMORY[0x1EEE9AC00](v17);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_24_12();
      sub_1CA948D18();
      v11 = sub_1CA948CC8();
      v12 = v18;
      result = (*(v16 + 8))(v2, v14);
      v9 = 4;
      v10 = 0;
      v13 = 0;
    }

    *a1 = v9;
    a1[1] = v8;
    a1[2] = v10;
    a1[3] = v11;
    a1[4] = v12;
    a1[5] = v13;
  }

  else
  {
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_1CA43A920()
{
  OUTLINED_FUNCTION_37_0();
  if ([v0 mode])
  {
    goto LABEL_11;
  }

  sub_1CA43A750(&v39);
  v1 = v40;
  if (!v40)
  {
    v12 = OBJC_IVAR___WFConditionalAction_tableTemplate;
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    if (*&v0[v12])
    {
      v13 = sub_1CA94C438("CONDITIONAL_TITLE_FORMAT_ALL", 28);
      v15 = v14;
      v16 = sub_1CA94C438("If ${WFCompoundType} are true", 29);
      v18 = v17;
      v19 = sub_1CA948E58();
      v20 = OUTLINED_FUNCTION_18_0(v19);
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_6_0();
      v23 = v22 - v21;
      sub_1CA948D98();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = sub_1CA94C438("CONDITIONAL_TITLE_FORMAT_ANY", 28);
      v15 = v24;
      v16 = sub_1CA94C438("If ${WFCompoundType} are true", 29);
      v18 = v25;
      v26 = sub_1CA948E58();
      v27 = OUTLINED_FUNCTION_18_0(v26);
      MEMORY[0x1EEE9AC00](v27);
      OUTLINED_FUNCTION_6_0();
      v23 = v29 - v28;
      sub_1CA948D98();
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_10:
        v30 = [qword_1EDB9F690 bundleURL];
        v31 = sub_1CA948BA8();
        v32 = OUTLINED_FUNCTION_18_0(v31);
        MEMORY[0x1EEE9AC00](v32);
        OUTLINED_FUNCTION_6_0();
        v35 = v34 - v33;
        sub_1CA948B68();

        v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v37 = sub_1CA2F9F14(v13, v15, v16, v18, 0, 0, v23, v35);
        [objc_allocWithZone(WFActionParameterSummary) initWithString_];

        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    goto LABEL_10;
  }

  v2 = v39;
  v3 = v42;
  v4 = v43;
  v5 = v44;
  v45 = v39;
  v46 = v40;
  v38 = v41;
  v47 = v41 & 1;
  v48 = v42;
  v49 = v43;
  v50 = v44;
  sub_1CA437A9C(&v39);
  v39 = sub_1CA44CF44();
  v40 = v6;
  sub_1CA94C438("and", 3);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v7 = qword_1EDB9F690;
  v8 = sub_1CA94C368();
  v9 = sub_1CA94C368();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_1CA94C3A8();
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_17();
  sub_1CA94D1B8();
  OUTLINED_FUNCTION_1_2();

  sub_1CA43ADA0(0x7D73756C707B2420, 0xE800000000000000, &v39, v11);

  sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  sub_1CA43AE20();
  sub_1CA43EFAC(v2, v1, v38, v3, v4, v5);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA43ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA94C218();
  v5 = sub_1CA94C578();
  sub_1CA94C498();
  return v5;
}

id sub_1CA43AE20()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithLocalizedString_];

  return v2;
}

uint64_t sub_1CA43AEB8()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_64_5();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA9813B0;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  strcpy((inited + 40), "WFConditions");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v3;
  *(inited + 72) = @"Class";
  type metadata accessor for WFTableTemplateParameter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = @"Key";
  v6 = @"Class";
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  v8 = sub_1CA94C3A8();
  v10 = v9;

  *(inited + 104) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = v10;
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_2_32();
  sub_1CA43FD98(v11, v12);
  OUTLINED_FUNCTION_163();
  v13 = sub_1CA94C1E8();
  *(v1 + 32) = sub_1CA2F864C(v13);
  return v1;
}

id sub_1CA43B068()
{
  v1 = OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter;
  v2 = *(v0 + OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFConditionalAction____lazy_storage___addButtonParameter);
  }

  else
  {
    v4 = sub_1CA43B0CC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CA43B0CC(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA43FD98(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v3 = @"Key";
  v4 = sub_1CA94C1E8();
  v5 = sub_1CA2F864C(v4);
  v6 = [objc_allocWithZone(WFAddButtonParameter) initWithDefinition_];

  [v6 setDelegate_];
  return v6;
}

void sub_1CA43B220()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  if (![v0 mode])
  {
    OUTLINED_FUNCTION_3_28();
    v4 = sub_1CA94C368();
    v5 = [v1 parameterForKey_];

    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v141 = v5;
      v7 = MEMORY[0x1E69E6158];
      v8 = sub_1CA94C1E8();
      v9 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
      OUTLINED_FUNCTION_54_4(v1 + OBJC_IVAR___WFConditionalAction_parameterSerializationKeys, &v158);
      v147 = v9;
      *&v9[v1] = v8;

      v157 = v6;
      sub_1CA43A750(&v149);
      if (*(&v149 + 1))
      {
        v136 = v149;
        v159 = v149;
        v137 = *(&v152 + 1);
        v138 = v150;
        LOBYTE(v160) = v150 & 1;
        v134 = v152;
        v135 = v151;
        *(&v160 + 1) = v151;
        v161 = v152;
        if (v3)
        {
          v10 = v141;
          MEMORY[0x1CCAA1490](v10, v11, v12, v13);
          OUTLINED_FUNCTION_22_12();
          if (v15)
          {
            OUTLINED_FUNCTION_64(v14);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_188();
          sub_1CA94C6E8();
        }

        sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CA97EDF0;
        *(inited + 32) = @"Key";
        *(inited + 40) = 0x79747265706F7270;
        *(inited + 48) = 0xE800000000000000;
        v17 = v7;
        *(inited + 64) = v7;
        *(inited + 72) = @"Label";
        v18 = @"Key";
        v19 = @"Label";
        sub_1CA94C438("Condition", 9);
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v20 = qword_1EDB9F690;
          OUTLINED_FUNCTION_188();
          v21 = sub_1CA94C368();
          OUTLINED_FUNCTION_188();
          v22 = sub_1CA94C368();

          v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

          v24 = sub_1CA94C3A8();
          v26 = v25;

          *(inited + 104) = v17;
          *(inited + 80) = v24;
          *(inited + 88) = v26;
          _s3__C3KeyVMa_0(0);
          OUTLINED_FUNCTION_2_32();
          sub_1CA43FD98(v27, v28);
          v29 = sub_1CA94C1E8();
          v30 = sub_1CA2F864C(v29);
          [objc_allocWithZone(WFConditionalSubjectParameter) initWithDefinition_];

          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_22_12();
          v32 = v137;
          if (v15)
          {
            OUTLINED_FUNCTION_64(v31);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_188();
          sub_1CA94C6E8();
          sub_1CA437A9C(&v149);
          if (v149 != 9)
          {
            if (v137)
            {
              v33 = v137;
              v34 = sub_1CA6048D4(v137);
              sub_1CA607C68(v34, v33);
              sub_1CA360EB0(v35);
            }

            v86 = objc_allocWithZone(type metadata accessor for RowTemplateOperatorPickerParameter());
            sub_1CA3E7A10();
            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_22_12();
            if (v15)
            {
              OUTLINED_FUNCTION_64(v87);
              sub_1CA94C698();
            }

            OUTLINED_FUNCTION_188();
            sub_1CA94C6E8();
          }

          sub_1CA437BCC(&v149);
          if (!v151)
          {
            break;
          }

          sub_1CA27F268(&v149, v154);
          v88 = v155;
          v89 = v156;
          __swift_project_boxed_opaque_existential_1(v154, v155);
          v148[3] = &type metadata for RowTemplateConditionalParameterState;
          v148[4] = sub_1CA43FDDC();
          v90 = swift_allocObject();
          v148[0] = v90;
          v91 = v160;
          v90[1] = v159;
          v90[2] = v91;
          v90[3] = v161;
          sub_1CA43FE30(v148, &v149);
          sub_1CA43FEA0(v136, *(&v136 + 1), v138, v135, v134, v32);
          sub_1CA27080C(v148, &unk_1EC4456C0, &qword_1CA987A30);
          *(&v152 + 1) = 0x65756C6176;
          v153 = 0xE500000000000000;
          v92 = (*(v89 + 48))(&v149, v88, v89);
          sub_1CA43FEEC(&v149);
          inited = 0;
          v94 = v92 + 64;
          v93 = *(v92 + 64);
          v142 = v92;
          v95 = 1 << *(v92 + 32);
          v96 = -1;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          v17 = v96 & v93;
          v97 = (v95 + 63) >> 6;
          v139 = v97;
          v140 = v92 + 64;
          if ((v96 & v93) != 0)
          {
            while (1)
            {
LABEL_33:
              v99 = __clz(__rbit64(v17)) | (inited << 6);
              v100 = *(v142 + 56);
              v101 = (*(v142 + 48) + 16 * v99);
              v102 = v101[1];
              v145 = *v101;
              v103 = *(v100 + 8 * v99);
              v146 = v102;
              v104 = sub_1CA94C218();
              MEMORY[0x1CCAA1490](v104);
              OUTLINED_FUNCTION_23_2();
              if (v15)
              {
                v131 = OUTLINED_FUNCTION_64(v105);
                OUTLINED_FUNCTION_80_4(v131);
              }

              sub_1CA94C6E8();
              v143 = v103;
              v106 = [v103 key];
              v107 = sub_1CA94C3A8();
              v109 = v108;

              OUTLINED_FUNCTION_28(v147 + v1, &v149);
              swift_isUniquelyReferenced_nonNull_native();
              v148[0] = *(v147 + v1);
              v110 = v148[0];
              v111 = v1;
              *(v147 + v1) = 0x8000000000000000;
              v144 = v107;
              v112 = sub_1CA271BF8(v107, v109);
              v114 = *(v110 + 16);
              v115 = (v113 & 1) == 0;
              v1 = (v114 + v115);
              if (__OFADD__(v114, v115))
              {
                break;
              }

              v116 = v112;
              v117 = v113;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447140, &qword_1CA987A38);
              if (sub_1CA94D588())
              {
                v118 = sub_1CA271BF8(v144, v109);
                if ((v117 & 1) != (v119 & 1))
                {
                  sub_1CA94D878();
                  __break(1u);
                  return;
                }

                v116 = v118;
              }

              v1 = v111;
              if (v117)
              {

                v120 = v148[0];
                v121 = (*(v148[0] + 56) + 16 * v116);
                v122 = v146;
                *v121 = v145;
                v121[1] = v122;
              }

              else
              {
                v120 = v148[0];
                *(v148[0] + 8 * (v116 >> 6) + 64) |= 1 << v116;
                v123 = (v120[6] + 16 * v116);
                v124 = v145;
                *v123 = v144;
                v123[1] = v109;
                v125 = (v120[7] + 16 * v116);
                v126 = v146;
                *v125 = v124;
                v125[1] = v126;
                v127 = v120[2];
                v128 = __OFADD__(v127, 1);
                v129 = v127 + 1;
                if (v128)
                {
                  goto LABEL_52;
                }

                v120[2] = v129;
              }

              v130 = v143;
              v17 &= v17 - 1;
              *(v147 + v111) = v120;
              swift_endAccess();

              v97 = v139;
              v94 = v140;
              if (!v17)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
LABEL_29:
            while (1)
            {
              v98 = inited + 1;
              if (__OFADD__(inited, 1))
              {
                break;
              }

              if (v98 >= v97)
              {

                __swift_destroy_boxed_opaque_existential_0(v154);
                goto LABEL_47;
              }

              v17 = *(v94 + 8 * v98);
              ++inited;
              if (v17)
              {
                inited = v98;
                goto LABEL_33;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
        }

        sub_1CA27080C(&v149, &unk_1EC4456B0, &unk_1CA985F30);
LABEL_47:
        sub_1CA43B068();
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_62_4();
        if (v15)
        {
          OUTLINED_FUNCTION_64(v132);
          sub_1CA94C698();
        }

        OUTLINED_FUNCTION_69();
        sub_1CA94C6E8();

        sub_1CA43EFAC(v136, *(&v136 + 1), v138, v135, v134, v137);
      }

      else
      {
        v36 = v141;
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_23_2();
        if (v15)
        {
          v133 = OUTLINED_FUNCTION_64(v37);
          OUTLINED_FUNCTION_80_4(v133);
        }

        v147 = v36;
        sub_1CA94C6E8();
        v146 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_1CA981370;
        *(v38 + 32) = @"Key";
        strcpy((v38 + 40), "WFCompoundType");
        *(v38 + 55) = -18;
        *(v38 + 64) = v7;
        *(v38 + 72) = @"Items";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1CA97EDF0;
        *&v149 = 0;
        v40 = @"Key";
        v41 = @"Items";
        *(v39 + 32) = sub_1CA94D798();
        *(v39 + 40) = v42;
        *&v149 = 1;
        *(v39 + 48) = sub_1CA94D798();
        *(v39 + 56) = v43;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
        *(v38 + 80) = v39;
        *(v38 + 104) = v44;
        *(v38 + 112) = @"ItemDisplayNames";
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1CA981360;
        v45 = @"ItemDisplayNames";
        v46 = sub_1CA94C438("Any (find/filter)", 17);
        v142 = v47;
        v143 = v46;
        v48 = sub_1CA94C438("Any", 3);
        v139 = v49;
        v140 = v48;
        v50 = sub_1CA948E58();
        v141 = &v134;
        v51 = OUTLINED_FUNCTION_18_0(v50);
        v53 = *(v52 + 64);
        MEMORY[0x1EEE9AC00](v51);
        v144 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
        v54 = &v134 - v144;
        sub_1CA948D98();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
        }

        v55 = qword_1EDB9F690;
        v56 = [qword_1EDB9F690 bundleURL];
        v57 = sub_1CA948BA8();
        v58 = OUTLINED_FUNCTION_18_0(v57);
        v60 = *(v59 + 64);
        MEMORY[0x1EEE9AC00](v58);
        v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_1CA948B68();

        v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v63 = sub_1CA2F9F14(v143, v142, v140, v139, 0, 0, v54, &v134 - v61);
        v64 = v145;
        *(v145 + 32) = v63;
        v65 = sub_1CA94C438("All (find/filter)", 17);
        v141 = v66;
        v142 = v65;
        v67 = sub_1CA94C438("All", 3);
        v69 = v68;
        v143 = &v134;
        MEMORY[0x1EEE9AC00](v67);
        v70 = &v134 - v144;
        sub_1CA948D98();
        v71 = [v55 bundleURL];
        MEMORY[0x1EEE9AC00](v71);
        sub_1CA948B68();

        v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
        *(v64 + 40) = sub_1CA2F9F14(v142, v141, v67, v69, 0, 0, v70, &v134 - v61);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
        *(v38 + 120) = v64;
        *(v38 + 144) = v73;
        *(v38 + 152) = @"DefaultValue";
        *&v149 = 0;
        v74 = @"DefaultValue";
        *(v38 + 160) = sub_1CA94D798();
        *(v38 + 168) = v75;
        *(v38 + 184) = MEMORY[0x1E69E6158];
        *(v38 + 192) = @"DisallowedVariableTypes";
        v76 = objc_opt_self();
        v77 = @"DisallowedVariableTypes";
        v78 = [v76 allInsertableVariableTypes];
        type metadata accessor for WFVariableType(0);
        sub_1CA43FD98(&qword_1EC441A60, type metadata accessor for WFVariableType);
        OUTLINED_FUNCTION_52_0();
        v79 = sub_1CA94C8F8();

        v80 = sub_1CA438D30(v79, sub_1CA2E7750, sub_1CA2BAF98);
        *(v38 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456A8, &unk_1CA987A20);
        *(v38 + 200) = v80;
        _s3__C3KeyVMa_0(0);
        OUTLINED_FUNCTION_2_32();
        sub_1CA43FD98(v81, v82);
        v83 = sub_1CA94C1E8();
        v84 = sub_1CA2F864C(v83);
        [objc_allocWithZone(WFEnumerationParameter) initWithDefinition_];

        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_62_4();
        if (v15)
        {
          OUTLINED_FUNCTION_64(v85);
          sub_1CA94C698();
        }

        OUTLINED_FUNCTION_69();
        sub_1CA94C6E8();
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA43C050()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_63_6();
  v8 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  if ([v0 mode])
  {
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_32_9();
  v17 = v7 == v16 && v5 == v15;
  if (v17 || (OUTLINED_FUNCTION_26_13(), (sub_1CA94D7F8() & 1) != 0))
  {
    if (v2)
    {
      swift_getObjectType();
      v18 = v0;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456D0, &unk_1CA987A40);
      OUTLINED_FUNCTION_18_16();
      v22 = sub_1CA276B98(v20, v21, &unk_1CA987A40);
      v3 = v0;
      WFParameterState.swiftParameterState<A>(_:)(v19, v22, &v162);
      v23 = v163;
      if (v163)
      {
        v24 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
        OUTLINED_FUNCTION_54_4(&v18[OBJC_IVAR___WFConditionalAction_tableTemplate], &v162);
        v25 = *(*(v24 + 1) + 16) == 1;
        v26 = *(v23 + 16);
        *(v24 + 1) = v23;

        if ((v25 ^ (v26 != 1)))
        {
LABEL_53:
          [v3 lockInputParameter];
          OUTLINED_FUNCTION_26_13();
          v85 = sub_1CA94C368();
          [v3 notifyEventObserversParameterStateDidChangeForKey_];

LABEL_87:
          OUTLINED_FUNCTION_36();
          return;
        }

LABEL_10:
        [v3 visibleParametersUpdated];
        goto LABEL_53;
      }
    }

LABEL_84:
    sub_1CA949C58();
    sub_1CA94C218();
    v137 = sub_1CA949F68();
    v138 = sub_1CA94CC18();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v159 = v140;
      *v139 = 136315138;
      v141 = OUTLINED_FUNCTION_26_13();
      *(v139 + 4) = sub_1CA26B54C(v141, v142, v143);
      _os_log_impl(&dword_1CA256000, v137, v138, "Not setting conditional parameter state for key %s, due to unhandled condition", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v140);
      MEMORY[0x1CCAA4BF0](v140, -1, -1);
      MEMORY[0x1CCAA4BF0](v139, -1, -1);
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_87;
  }

  sub_1CA43A750(&v162);
  if (!v163)
  {
    OUTLINED_FUNCTION_30_12();
    v49 = v7 == v48 && v5 == v47;
    if (v49 || (OUTLINED_FUNCTION_26_13(), (sub_1CA94D7F8() & 1) != 0))
    {
      if (v2)
      {
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (v50)
        {
          v51 = v50;
          swift_unknownObjectRetain();
          v52 = [v51 value];
          if (v52)
          {
            v53 = v52;
            v54 = sub_1CA94C3A8();
            v56 = sub_1CA437834(v54, v55);
            v58 = v57;
            swift_unknownObjectRelease();

            if ((v58 & 1) == 0)
            {
              v59 = OBJC_IVAR___WFConditionalAction_tableTemplate;
              OUTLINED_FUNCTION_54_4(&v3[OBJC_IVAR___WFConditionalAction_tableTemplate], &v162);
              *&v3[v59] = v56;
              goto LABEL_53;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      goto LABEL_84;
    }

    if (v7 != 0xD000000000000012 || 0x80000001CA996FE0 != v5)
    {
      v73 = OUTLINED_FUNCTION_26_13();
      if ((OUTLINED_FUNCTION_60_4(v73, v74, v75, v76) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v77 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    v42 = (v77 + 8);
    if (*(*(v77 + 8) + 16) < 2uLL)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_28(v77, &v159);
    sub_1CA43FB88(&v162);
    if (v163)
    {
      sub_1CA43EFAC(v162, v163, v164, v165, v166, v167);
LABEL_78:
      swift_endAccess();
      goto LABEL_10;
    }

    sub_1CA43EFAC(v162, 0, v164, v165, v166, v167);
    v120 = *v42;
    v43 = *(*v42 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v120;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_76;
    }

    goto LABEL_91;
  }

  v149 = v10;
  v157 = v163;
  v154 = v162;
  v155 = v164;
  v156 = v165;
  v27 = v167;
  v158 = v166;
  v28 = &v0[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  v29 = swift_beginAccess();
  v153 = v28;
  v152 = (v28 + 8);
  if (!*(*(v28 + 1) + 16))
  {
    OUTLINED_FUNCTION_36_9(v29, &v161);
    v30 = v27;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA69AE28();
    v31 = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths[2];
    sub_1CA69B03C(v31);
    opt_class_meths = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths;
    OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths[2] = (v31 + 1);
    v33 = &opt_class_meths[6 * v31];
    v33[4] = v154;
    v33[5] = v157;
    LOBYTE(v33[6].entrysize) = v155 & 1;
    v33[7] = v156;
    v33[8] = v158;
    v33[9] = v27;
    OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths = opt_class_meths;
    swift_endAccess();
  }

  v151 = v27;
  v34 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v35 = *&v3[v34];
  sub_1CA94C218();
  v36 = OUTLINED_FUNCTION_26_13();
  v1 = sub_1CA3118E4(v36, v37, v35);
  v38 = v5;
  v39 = v7;
  v41 = v40;

  if (v41)
  {
    v42 = v38;
    v43 = v39;
    OUTLINED_FUNCTION_28(v153, &v159);
    v44 = *(v153 + 8);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v153 + 8) = v44;
    if ((v45 & 1) == 0)
    {
      sub_1CA42B2A4();
      v44 = v144;
      *v152 = v144;
    }

    if (v44[2])
    {
      if (v2)
      {
        swift_getObjectType();
        v46 = swift_unknownObjectRetain();
        sub_1CA43FF40(v46, v1, v41, &v44[5]);
      }

      else
      {
        sub_1CA43F494(v1, v41);

        swift_unknownObjectRelease();
      }

      *v152 = v44;
      swift_endAccess();
      v67 = OUTLINED_FUNCTION_15_11();
      sub_1CA43EFAC(v67, v68, v69, v70, v71, v151);
      goto LABEL_53;
    }

    __break(1u);
LABEL_89:
    sub_1CA42B2A4();
    v78 = v145;
    *v152 = v145;
LABEL_50:
    if (v78[2])
    {
      RowTemplateConditionalParameterState.subject.setter(v1);
      *v152 = v78;
      swift_endAccess();
      goto LABEL_52;
    }

    __break(1u);
LABEL_91:
    sub_1CA42B2A4();
    v120 = v146;
    *v42 = v146;
LABEL_76:
    v122 = *(v120 + 16);
    if (v43 - 1 < v122)
    {
      v123 = v122 - 1;
      v124 = v122 - v43;
      v125 = v120 + 48 * v43;
      v126 = *(v125 + 24);
      memmove((v125 - 16), (v125 + 32), 48 * v124);
      *(v120 + 16) = v123;
      *v42 = v120;

      goto LABEL_78;
    }

    __break(1u);
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_73_6();
  v61 = v39 == v60 && v38 == 0xE800000000000000;
  v62 = v39;
  v63 = v38;
  if (v61 || (v64 = OUTLINED_FUNCTION_26_13(), (OUTLINED_FUNCTION_81_4(v64, v65, v66) & 1) != 0))
  {
    v43 = v151;
    if (v2)
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v1 = 0;
    }

    v42 = v153;
    OUTLINED_FUNCTION_28(v153, &v159);
    v78 = *(v153 + 8);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    *(v153 + 8) = v78;
    if (v79)
    {
      goto LABEL_50;
    }

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_68_5();
  v87 = v62 == v86 && v38 == 0xE800000000000000;
  v43 = v151;
  if (!v87)
  {
    v88 = OUTLINED_FUNCTION_26_13();
    if ((OUTLINED_FUNCTION_81_4(v88, v89, v90) & 1) == 0)
    {
      v96 = v62 == 0xD000000000000012 && 0x80000001CA996FE0 == v63;
      if (v96 || (v97 = OUTLINED_FUNCTION_26_13(), (OUTLINED_FUNCTION_60_4(v97, v98, v99, v100))) && v2)
      {
        swift_getObjectType();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456D0, &unk_1CA987A40);
        OUTLINED_FUNCTION_18_16();
        v104 = sub_1CA276B98(v102, v103, &unk_1CA987A40);
        WFParameterState.swiftParameterState<A>(_:)(v101, v104, &v159);
        if (v160)
        {
          if (*(v160 + 16))
          {
            v106 = *(v160 + 32);
            v105 = *(v160 + 40);
            v150 = *(v160 + 48);
            v107 = *(v160 + 64);
            v148 = *(v160 + 56);
            v108 = *(v160 + 72);
            v109 = v108;
            sub_1CA94C218();
            sub_1CA94C218();

            OUTLINED_FUNCTION_36_9(v110, &v159);
            sub_1CA94C218();
            sub_1CA94C218();
            v111 = v109;
            sub_1CA69AE28();
            v112 = *(off_1EC4456D8 + 2);
            sub_1CA69B03C(v112);
            v113 = off_1EC4456D8;
            *(off_1EC4456D8 + 2) = v112 + 1;
            v114 = &v113[48 * v112];
            *(v114 + 4) = v106;
            *(v114 + 5) = v105;
            v114[48] = v150;
            *(v114 + 7) = v148;
            *(v114 + 8) = v107;
            *(v114 + 9) = v108;
            off_1EC4456D8 = v113;
            swift_endAccess();
            [v3 visibleParametersUpdated];
            v115 = OUTLINED_FUNCTION_15_11();
            sub_1CA43EFAC(v115, v116, v117, v118, v119, v151);

            goto LABEL_53;
          }
        }

        v132 = OUTLINED_FUNCTION_15_11();
        sub_1CA43EFAC(v132, v133, v134, v135, v136, v151);
      }

      else
      {
        v127 = OUTLINED_FUNCTION_15_11();
        sub_1CA43EFAC(v127, v128, v129, v130, v131, v151);
      }

      v10 = v149;
      goto LABEL_84;
    }
  }

  if (!v2 || (objc_opt_self(), (v91 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_52:
    [v3 visibleParametersUpdated];
    v80 = OUTLINED_FUNCTION_15_11();
    sub_1CA43EFAC(v80, v81, v82, v83, v84, v43);
    goto LABEL_53;
  }

  v92 = v91;
  swift_unknownObjectRetain();
  v93 = [v92 number];
  if (!v93)
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v42 = v93;
  v1 = sub_1CA94C978();
  OUTLINED_FUNCTION_36_9(v1, &v159);
  v94 = OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  OBJC_PROTOCOL___WFActionSupportsContextualMediaPlayback.opt_class_meths = v94;
  if ((v95 & 1) == 0)
  {
LABEL_93:
    sub_1CA42B2A4();
    v94 = v147;
  }

  if (v94[2])
  {
    v94[4] = v1;
    *v152 = v94;
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_52;
  }

  __break(1u);
}

id sub_1CA43CB20(uint64_t a1, uint64_t a2)
{
  if ([v2 mode])
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_9();
  if (a1 != v7 || a2 != v6)
  {
    OUTLINED_FUNCTION_204();
    if ((sub_1CA94D7F8() & 1) == 0)
    {
      if (a1 != 0xD000000000000012 || 0x80000001CA996FE0 != a2)
      {
        v17 = OUTLINED_FUNCTION_204();
        if ((OUTLINED_FUNCTION_60_4(v17, v18, v19, v20) & 1) == 0)
        {
          sub_1CA43A750(&v89);
          v25 = v90;
          if (v90)
          {
            v5 = v92;
            v85 = v91;
            v26 = OBJC_IVAR___WFConditionalAction_parameterSerializationKeys;
            OUTLINED_FUNCTION_14_17();
            swift_beginAccess();
            v27 = *&v2[v26];
            sub_1CA94C218();
            v28 = OUTLINED_FUNCTION_204();
            v30 = sub_1CA3118E4(v28, v29, v27);
            v32 = v31;

            if (v32)
            {
              if (*(v25 + 16))
              {
                v33 = sub_1CA271BF8(v30, v32);
                if (v34)
                {
                  v35 = *(*(v25 + 56) + 8 * v33);
                  swift_unknownObjectRetain();

                  OUTLINED_FUNCTION_11_19(v36, v37, v38, v39, v40, v41, v42, v43, v85);
                  return v35;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_73_6();
              v58 = a1 == v57 && a2 == 0xE800000000000000;
              if (v58 || (v59 = OUTLINED_FUNCTION_204(), (OUTLINED_FUNCTION_81_4(v59, v60, v61) & 1) != 0))
              {
                v62 = v5;
                OUTLINED_FUNCTION_11_19(v62, v63, v64, v65, v66, v67, v68, v69, v85);
                return v5;
              }

              OUTLINED_FUNCTION_68_5();
              v71 = a1 == v70 && a2 == 0xE800000000000000;
              if (v71 || (v72 = OUTLINED_FUNCTION_204(), v49 = OUTLINED_FUNCTION_81_4(v72, v73, v74), (v49 & 1) != 0))
              {
                v75 = sub_1CA94C988();
                v76 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

                OUTLINED_FUNCTION_11_19(v77, v78, v79, v80, v81, v82, v83, v84, v85);
                return v76;
              }
            }

            OUTLINED_FUNCTION_11_19(v49, v50, v51, v52, v53, v54, v55, v56, v85);
          }

          else
          {
            OUTLINED_FUNCTION_30_12();
            v46 = a1 == v45 && a2 == v44;
            if (v46 || (OUTLINED_FUNCTION_204(), (sub_1CA94D7F8() & 1) != 0))
            {
              v47 = OBJC_IVAR___WFConditionalAction_tableTemplate;
              OUTLINED_FUNCTION_14_17();
              swift_beginAccess();
              v88 = *&v2[v47];
              sub_1CA94D798();
              v48 = sub_1CA94C368();

              v5 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

              return v5;
            }
          }

          return 0;
        }
      }

      v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
      v22 = v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x60);
      v23 = MEMORY[0x1E69E7CC0];
      *v22 = 1;
      *(v22 + 1) = v23;
      v22[16] = 0;
      v87.receiver = v21;
      v87.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
      return objc_msgSendSuper2(&v87, sel_init);
    }
  }

  v9 = &v2[OBJC_IVAR___WFConditionalAction_tableTemplate];
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v10 = *(v9 + 1);
  if (*(v10 + 16))
  {
    v11 = *v9;
    v12 = v9[16];
    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
    v14 = v13 + *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
    *v14 = v11;
    *(v14 + 1) = v10;
    v14[16] = v12;
    sub_1CA94C218();
    v86.receiver = v13;
    v86.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
    return objc_msgSendSuper2(&v86, sel_init);
  }

  return 0;
}

uint64_t sub_1CA43CF54()
{
  if ([v0 mode])
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  sub_1CA94C218();
  v2 = OUTLINED_FUNCTION_52_0();
  v1 = sub_1CA438070(v2, v3);

  return v1;
}

id sub_1CA43D010(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_1CA25B3D0(0, a4, a5);
  v9 = sub_1CA94C648();

  return v9;
}

uint64_t sub_1CA43D094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFConditionalAction();
  objc_msgSendSuper2(&v2, sel_visibleParametersUpdated);
  return sub_1CA43D2A0();
}

uint64_t sub_1CA43D114(uint64_t a1)
{
  result = sub_1CA25B410(a1);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_20;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeDelegate_];
    }
  }

  v8 = *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables);
  result = sub_1CA25B410(v8);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_1CA94C218();
  for (j = 0; j != v9; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA22D0](j, v8);
    }

    else
    {
      v11 = *(v8 + 8 * j + 32);
    }

    v12 = v11;
    [v11 addDelegate_];
  }
}

uint64_t sub_1CA43D258(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables);
  *(v1 + OBJC_IVAR___WFConditionalAction_observedVariables) = a1;
  sub_1CA43D114(v2);
}

uint64_t sub_1CA43D2A0()
{
  sub_1CA43A750(&v10);
  v0 = v11;
  if (v11 && (v2 = v14, v1 = v15, v4 = v12, v3 = v13, v5 = v10, v6 = v15, sub_1CA43EFAC(v5, v0, v4, v3, v2, v1), v1))
  {
    v7 = [v6 containedVariables];

    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v8 = sub_1CA94C658();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return sub_1CA43D258(v8);
}

uint64_t sub_1CA43D38C()
{
  v1 = 0xE000000000000000;
  v2 = sub_1CA43FB24(v0);
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1CCAA1300](v2, v1);

  MEMORY[0x1CCAA1300](0x68747572742DLL, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CA43D470(char a1, void *a2)
{
  v4 = v2;
  if ((a1 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_64_5();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CA9813B0;
  v3 = sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v12[3] = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v12[0] = sub_1CA94CFA8();
  result = sub_1CA469348(v12);
  if (result)
  {
    v9 = result;
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    *(v7 + 32) = v9;
    v10 = sub_1CA46934C(v7);
LABEL_5:
    sub_1CA43D38C();
    sub_1CA94C368();
    OUTLINED_FUNCTION_39_6();

    [a2 setContent:v10 forVariableWithName:v3];

    v11 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
    result = OUTLINED_FUNCTION_54_4(v4 + OBJC_IVAR___WFConditionalAction_truthForTestingOnly, v12);
    *(v4 + v11) = a1 & 1;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1CA43D5CC(void *a1)
{
  sub_1CA43D38C();
  v2 = sub_1CA94C368();

  v3 = [a1 contentForVariableWithName_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  if (!sub_1CA25B410(v5))
  {

    return 0;
  }

  v6 = (v5 & 0xC000000000000001);
  sub_1CA275D70(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1CCAA22D0](0, v5);
  }

  else
  {
    v7 = *(v5 + 32);
  }

  OUTLINED_FUNCTION_171();

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    return 0;
  }

  v9 = [v8 number];
  v10 = [v9 BOOLValue];

  return v10;
}

uint64_t sub_1CA43D784()
{
  v1 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1CA43D7C4(char a1)
{
  v3 = OBJC_IVAR___WFConditionalAction_truthForTestingOnly;
  result = OUTLINED_FUNCTION_54_4(v1 + OBJC_IVAR___WFConditionalAction_truthForTestingOnly, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CA43D864()
{
  v1[28] = v0;
  sub_1CA94C838();
  v1[29] = sub_1CA94C828();
  v3 = sub_1CA94C7C8();
  v1[30] = v3;
  v1[31] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA43D8FC, v3, v2);
}

uint64_t sub_1CA43D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char **a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v17 = &selRef_temporaryDirectoryURL;
  v18 = [*(v14 + 224) variableSource];
  *(v14 + 256) = v18;
  if (!v18)
  {

    goto LABEL_35;
  }

  v19 = [*(v14 + 224) mode];
  v20 = &selRef_contentPredicate;
  if (v19 == 2)
  {
    v37 = *(v14 + 224);

    v38 = [v37 controlFlowTracker];
    [v38 leftScopeOfControlFlowAction_];
    swift_unknownObjectRelease();

    goto LABEL_35;
  }

  if (v19)
  {

LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v21 = [*(v14 + 224) controlFlowTracker];
  *(v14 + 264) = v21;
  if (v21)
  {
    v22 = *(v14 + 224);
    *(v14 + 272) = [objc_allocWithZone(MEMORY[0x1E6996D40]) init];
    sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v16 = @"Key";
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Key";
    strcpy((inited + 40), "WFConditions");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    _s3__C3KeyVMa_0(0);
    OUTLINED_FUNCTION_2_32();
    sub_1CA43FD98(v24, v25);
    v26 = @"Key";
    v27 = sub_1CA94C1E8();
    v28 = sub_1CA2F864C(v27);
    v29 = [objc_allocWithZone(type metadata accessor for WFTableTemplateParameter()) initWithDefinition_];
    *(v14 + 280) = v29;

    v30 = [v22 variableSource];
    v31 = [v22 contentAttributionTracker];
    if (!v31)
    {
LABEL_53:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v31);
    }

    v32 = v31;
    v33 = *(v14 + 224);
    objc_allocWithZone(WFParameterStateProcessingContext);
    *(v14 + 288) = sub_1CA4710A8(v30, v29, 0, 0, v32, 0);
    v34 = [v33 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    OUTLINED_FUNCTION_5_3();
    v35 = sub_1CA94C658();
    *(v14 + 296) = v35;

    v31 = sub_1CA25B410(v35);
    *(v14 + 304) = v31;
    if (v31)
    {
      if (v31 >= 1)
      {
        *(v14 + 312) = 0;
        v36 = *(v14 + 296);
        if ((v36 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCAA22D0](0);
        }

        else
        {
          v53 = *(v36 + 32);
        }

        OUTLINED_FUNCTION_45_7();
        *(v14 + 320) = v54;
        v55 = *(v14 + 288);
        *(v14 + 16) = v56;
        *(v14 + 56) = v14 + 216;
        v57 = OUTLINED_FUNCTION_6_23();
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
        OUTLINED_FUNCTION_4_30(v58);
        *(v14 + 160) = 1107296256;
        *(v14 + 168) = sub_1CA320A2C;
        *(v14 + 176) = &block_descriptor_11;
        *(v14 + 184) = v57;
        [v34 getContentWithContext:v55 completionHandler:v14 + 152];
        OUTLINED_FUNCTION_24();

        return MEMORY[0x1EEE6DEC8](v31);
      }

      __break(1u);
      goto LABEL_52;
    }

    v39 = *(v14 + 288);
    v20 = *(v14 + 272);
    v17 = *(v14 + 280);
    v40 = *(v14 + 264);
    v15 = *(v14 + 224);

    [v40 enteredScopeOfControlFlowAction:v15 withInput:v20];
  }

  else
  {
  }

  v41 = OUTLINED_FUNCTION_116();
  v43 = sub_1CA33A8A0(v41, v42);
  if (!v43)
  {
LABEL_33:
    OUTLINED_FUNCTION_34_11();
    goto LABEL_34;
  }

  v44 = v43;
  v45 = qword_1EC444E18;
  if (!sub_1CA25B410(*(v43 + qword_1EC444E18)))
  {

    goto LABEL_33;
  }

  v46 = *&v44[v45];
  v47 = sub_1CA25B410(v46);
  if (v47)
  {
    v20 = v47;
    a10 = v44;
    v31 = OUTLINED_FUNCTION_57_5(v47);
    if (v20 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_61_5();
    do
    {
      if (v16)
      {
        v48 = MEMORY[0x1CCAA22D0](v15, v46);
      }

      else
      {
        v48 = *(v46 + 8 * v15 + 32);
      }

      v49 = v48;
      [v48 (v45 + 1144)];

      a11 = v17;
      OUTLINED_FUNCTION_42_6();
      if (v72)
      {
        v52 = OUTLINED_FUNCTION_64(v50);
        OUTLINED_FUNCTION_79_4(v52);
        v45 = v17;
      }

      OUTLINED_FUNCTION_17_9();
    }

    while (!v51);
  }

  else
  {
    v49 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  OUTLINED_FUNCTION_41_8();
  if (v51)
  {
    do
    {
      v70 = v49 == 0;
      if (!v49)
      {
        break;
      }

      v71 = *v69++;
      --v49;
    }

    while ((v71 & 1) != 0);
  }

  else
  {
    do
    {
      v72 = v49-- != 0;
      v70 = v72;
      if (!v72)
      {
        break;
      }

      v73 = *v69++;
    }

    while (v73 != 1);
  }

  OUTLINED_FUNCTION_55_5();
  sub_1CA43D470(v70, v20);
  swift_unknownObjectRelease();

LABEL_35:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43DE90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1CA43E308;
  }

  else
  {
    v5 = sub_1CA43DFC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CA43DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v20 = v14 + 216;
  v19 = *(v14 + 216);

  v21 = [v19 items];
  if (!v21)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
    sub_1CA94C658();
    v21 = sub_1CA94C648();
  }

  v22 = *(v14 + 320);
  [*(v14 + 272) addItems_];

  v23 = *(v14 + 312) + 1;
  if (v23 != *(v14 + 304))
  {
    *(v14 + 312) = v23;
    v37 = *(v14 + 296);
    if ((v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v38 = *(v37 + 8 * v23 + 32);
    }

    OUTLINED_FUNCTION_45_7();
    *(v14 + 320) = v39;
    v40 = *(v14 + 288);
    *(v14 + 16) = v41;
    *(v14 + 56) = v20;
    v42 = OUTLINED_FUNCTION_6_23();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_4_30(v43);
    OUTLINED_FUNCTION_19_11(COERCE_DOUBLE(1107296256));
    *(v14 + 168) = v44;
    *(v14 + 176) = &block_descriptor_11;
    *(v14 + 184) = v42;
    [v19 getContentWithContext:v40 completionHandler:v14 + 152];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v31);
  }

  OUTLINED_FUNCTION_78_4();

  [v22 enteredScopeOfControlFlowAction:v14 + 216 withInput:v21];

  v24 = OUTLINED_FUNCTION_3_28();
  v26 = sub_1CA33A8A0(v24, v25);
  if (v26)
  {
    v27 = v26;
    v28 = qword_1EC444E18;
    if (sub_1CA25B410(*(v26 + qword_1EC444E18)))
    {
      v29 = *&v27[v28];
      v30 = sub_1CA25B410(v29);
      if (!v30)
      {
        v33 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_26:
        OUTLINED_FUNCTION_41_8();
        if (v35)
        {
          do
          {
            v47 = v33 == 0;
            if (!v33)
            {
              break;
            }

            v48 = *v46++;
            --v33;
          }

          while ((v48 & 1) != 0);
        }

        else
        {
          do
          {
            v49 = v33-- != 0;
            v47 = v49;
            if (!v49)
            {
              break;
            }

            v50 = *v46++;
          }

          while (v50 != 1);
        }

        OUTLINED_FUNCTION_55_5();
        sub_1CA43D470(v47, v20);
        swift_unknownObjectRelease();

        goto LABEL_38;
      }

      v20 = v30;
      a10 = v27;
      v31 = OUTLINED_FUNCTION_57_5(v30);
      if ((v20 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_61_5();
        do
        {
          if (v18)
          {
            v32 = MEMORY[0x1CCAA22D0](v16, v29);
          }

          else
          {
            v32 = *(v29 + 8 * v16 + 32);
          }

          v33 = v32;
          [v32 (v28 + 1144)];

          a11 = v17;
          OUTLINED_FUNCTION_42_6();
          if (v49)
          {
            v36 = OUTLINED_FUNCTION_64(v34);
            OUTLINED_FUNCTION_79_4(v36);
            v28 = v17;
          }

          OUTLINED_FUNCTION_17_9();
        }

        while (!v35);
        goto LABEL_26;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v31);
    }
  }

  OUTLINED_FUNCTION_34_11();
  swift_unknownObjectRelease();
LABEL_38:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  v17 = v14[40];
  v18 = v14[41];
  v19 = v14[36];
  swift_willThrow();

  v20 = v14[39] + 1;
  if (v20 != v14[38])
  {
    v14[39] = v20;
    v35 = v14[37];
    if ((v35 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v36 = *(v35 + 8 * v20 + 32);
    }

    OUTLINED_FUNCTION_45_7();
    v14[40] = v37;
    v38 = v14[36];
    v14[2] = v39;
    v14[7] = v14 + 27;
    v40 = OUTLINED_FUNCTION_6_23();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_4_30(v41);
    OUTLINED_FUNCTION_19_11(COERCE_DOUBLE(1107296256));
    v14[21] = v42;
    v14[22] = &block_descriptor_11;
    v14[23] = v40;
    [v18 getContentWithContext:v38 completionHandler:v14 + 19];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v28);
  }

  OUTLINED_FUNCTION_78_4();

  [v18 enteredScopeOfControlFlowAction:v19 withInput:v17];

  v21 = OUTLINED_FUNCTION_3_28();
  v23 = sub_1CA33A8A0(v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = qword_1EC444E18;
    if (sub_1CA25B410(*(v23 + qword_1EC444E18)))
    {
      v26 = *&v24[v25];
      v27 = sub_1CA25B410(v26);
      if (!v27)
      {
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_24:
        OUTLINED_FUNCTION_41_8();
        if (v33)
        {
          do
          {
            v45 = v31 == 0;
            if (!v31)
            {
              break;
            }

            v46 = *v44++;
            --v31;
          }

          while ((v46 & 1) != 0);
        }

        else
        {
          do
          {
            v47 = v31-- != 0;
            v45 = v47;
            if (!v47)
            {
              break;
            }

            v48 = *v44++;
          }

          while (v48 != 1);
        }

        OUTLINED_FUNCTION_55_5();
        sub_1CA43D470(v45, v19);
        swift_unknownObjectRelease();

        goto LABEL_36;
      }

      v19 = v27;
      a9 = v24;
      v58 = MEMORY[0x1E69E7CC0];
      v28 = sub_1CA2B8FA4(0, v27 & ~(v27 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v29 = v58;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1CCAA22D0](0, v26);
          }

          else
          {
            v30 = *(v26 + 32);
          }

          v31 = v30;
          [v30 BOOLValue];

          a10 = v29;
          OUTLINED_FUNCTION_42_6();
          if (v47)
          {
            v34 = OUTLINED_FUNCTION_64(v32);
            sub_1CA2B8FA4(v34, v31, 1);
          }

          OUTLINED_FUNCTION_17_9();
        }

        while (!v33);
        goto LABEL_24;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v28);
    }
  }

  OUTLINED_FUNCTION_34_11();
  swift_unknownObjectRelease();
LABEL_36:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA43E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA43E738, v5, v4);
}

uint64_t sub_1CA43E738()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1CA43E7F4;

  return sub_1CA43D864();
}

uint64_t sub_1CA43E7F4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 48);
  if (v2)
  {
    v9 = sub_1CA948AC8();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v10 = *(v7 + 8);

  return v10();
}

id WFConditionalAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFConditionalAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFConditionalAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall WFConditionalAction.showsAddButton(for:)(WFParameter *a1)
{
  sub_1CA43A750(&v10);
  v1 = v11;
  if (v11)
  {
    v3 = v14;
    v2 = v15;
    v5 = v12;
    v4 = v13;
    v6 = v10;
    sub_1CA60465C();
    v8 = v7;
    sub_1CA43EFAC(v6, v1, v5, v4, v3, v2);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

WFAddButtonParameterStateUpdate_optional __swiftcall WFConditionalAction.parameterStateUpdateForPlusButton(for:)(WFParameter *a1)
{
  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  strcpy((inited + 40), "WFConditions");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_2_32();
  sub_1CA43FD98(v4, v5);
  v6 = @"Key";
  v7 = sub_1CA94C1E8();
  v8 = sub_1CA2F864C(v7);
  v9 = [objc_allocWithZone(type metadata accessor for WFTableTemplateParameter()) initWithDefinition_];

  sub_1CA50E2D8(&v50);
  v10 = v51;
  if (v51)
  {
    v11 = v50;
    v12 = v52;
    v13 = v53;
    v14 = v54;
    v15 = v55;
    v16 = (v2 + OBJC_IVAR___WFConditionalAction_tableTemplate);
    OUTLINED_FUNCTION_14_17();
    swift_beginAccess();
    v17 = v16[1];
    v47 = *v16;
    v49 = *(v16 + 16);
    sub_1CA94C218();
    v18 = OUTLINED_FUNCTION_37_8();
    sub_1CA43FEA0(v18, v19, v20, v21, v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E63D4(0, *(v17 + 16) + 1, 1, v17);
      v17 = v44;
    }

    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      v45 = OUTLINED_FUNCTION_64(v24);
      sub_1CA2E63D4(v45, v25 + 1, 1, v17);
      v17 = v46;
    }

    *(v17 + 16) = v25 + 1;
    v26 = v17 + 48 * v25;
    *(v26 + 32) = v11;
    *(v26 + 40) = v10;
    *(v26 + 48) = v12 & 1;
    *(v26 + 56) = v13;
    *(v26 + 64) = v14;
    *(v26 + 72) = v15;
    v27 = v49;
    v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E0, &unk_1CA989F70));
    v29 = v28 + *((*MEMORY[0x1E69E7D40] & *v28) + 0x60);
    *v29 = v47;
    *(v29 + 1) = v17;
    v29[16] = v27;
    v48.receiver = v28;
    v48.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456E8, &qword_1CA987A50);
    v30 = [(WFParameter *)&v48 init];
    v31 = objc_allocWithZone(WFAddButtonParameterStateUpdate);
    OUTLINED_FUNCTION_3_28();
    v32 = sub_1CA94C368();
    v33 = [v31 initWithParameterKey:v32 parameterState:v30];

    v34 = OUTLINED_FUNCTION_37_8();
    sub_1CA43EFAC(v34, v35, v36, v37, v38, v39);
  }

  else
  {

    v33 = 0;
  }

  v43 = v33;
  result.value._parameterState = v41;
  result.value._parameterKey = v40;
  result.value.super.isa = v43;
  result.is_nil = v42;
  return result;
}

Swift::Void __swiftcall WFConditionalAction.variableDidChange(_:)(WFVariable a1)
{
  sub_1CA43A750(&v2);
  if (v3)
  {
    sub_1CA43EFAC(v2, v3, v4, v5, v6, v7);

    [v1 visibleParametersUpdated];
  }
}

void sub_1CA43EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

char *sub_1CA43F004(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F0B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F0D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F178(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F1E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_14(a3, result, 56 * a2);
  }

  return result;
}

char *sub_1CA43F264(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F2B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

char *sub_1CA43F308(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

void sub_1CA43F3E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_74_3();
  if (v8 && (a4(0), OUTLINED_FUNCTION_52(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_13_17();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_13_17();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_1CA43F494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1CA271BF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_65_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  OUTLINED_FUNCTION_77_5(v7);

  v8 = *(*(v10 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_163();
  sub_1CA94D5A8();
  *v3 = v10;
  return v8;
}

uint64_t sub_1CA43F55C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CA321184(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_65_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
  OUTLINED_FUNCTION_77_5(v6);
  v7 = *(*(v9 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  OUTLINED_FUNCTION_163();
  sub_1CA94D5A8();
  *v2 = v9;
  return v7;
}

void sub_1CA43F618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a1;
  v86 = a2;
  sub_1CA94C218();
  sub_1CA94C578();
  OUTLINED_FUNCTION_66_3();
  if ((v6 & 0x1000000000000000) != 0)
  {
    v44 = OUTLINED_FUNCTION_116();
    v4 = sub_1CA592144(v44, v45);
    v47 = v46;

    v3 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_116();
      v7 = sub_1CA94D4B8();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_47_8();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_52_7();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_140;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_140;
            }
          }
        }

        goto LABEL_140;
      }

      goto LABEL_144;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v7)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v7;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_140;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 == (v40 * a3) >> 63)
            {
              v40 = v43 + (v41 + v42);
              if (!__OFADD__(v43, (v41 + v42)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_140;
          }
        }
      }

      goto LABEL_140;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_47_8();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_52_7();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_140:

      return;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v48 = HIBYTE(v3) & 0xF;
  v85 = v4;
  v86 = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v4 != 43)
  {
    if (v4 != 45)
    {
      if (v48)
      {
        OUTLINED_FUNCTION_12_17();
        if (v74 ^ v75 | v73)
        {
          v78 = 65;
        }

        if (!(v74 ^ v75 | v73))
        {
          v79 = 58;
        }

        v80 = &v85;
        while (1)
        {
          v81 = *v80;
          if (v81 < 0x30 || v81 >= v79)
          {
            if (v81 < 0x41 || v81 >= v78)
            {
              OUTLINED_FUNCTION_52_7();
              if (!v22 || v81 >= v83)
              {
                goto LABEL_140;
              }

              v82 = -87;
            }

            else
            {
              v82 = -55;
            }
          }

          else
          {
            v82 = -48;
          }

          v84 = v77 * a3;
          if ((v77 * a3) >> 64 == (v77 * a3) >> 63)
          {
            v77 = v84 + (v81 + v82);
            if (!__OFADD__(v84, (v81 + v82)))
            {
              v80 = (v80 + 1);
              if (--v76)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    if (v48)
    {
      if (v48 != 1)
      {
        OUTLINED_FUNCTION_12_17();
        if (v50 ^ v51 | v49)
        {
          v54 = 65;
        }

        if (!(v50 ^ v51 | v49))
        {
          v55 = 58;
        }

        v56 = &v85 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v55)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              OUTLINED_FUNCTION_52_7();
              if (!v22 || v57 >= v59)
              {
                goto LABEL_140;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v60 = v53 * a3;
          if ((v53 * a3) >> 64 == (v53 * a3) >> 63)
          {
            v53 = v60 - (v57 + v58);
            if (!__OFSUB__(v60, (v57 + v58)))
            {
              ++v56;
              if (--v52)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    goto LABEL_143;
  }

  if (v48)
  {
    if (v48 != 1)
    {
      OUTLINED_FUNCTION_12_17();
      if (v62 ^ v63 | v61)
      {
        v66 = 65;
      }

      if (!(v62 ^ v63 | v61))
      {
        v67 = 58;
      }

      v68 = &v85 + 1;
      while (1)
      {
        v69 = *v68;
        if (v69 < 0x30 || v69 >= v67)
        {
          if (v69 < 0x41 || v69 >= v66)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v22 || v69 >= v71)
            {
              goto LABEL_140;
            }

            v70 = -87;
          }

          else
          {
            v70 = -55;
          }
        }

        else
        {
          v70 = -48;
        }

        v72 = v65 * a3;
        if ((v65 * a3) >> 64 == (v65 * a3) >> 63)
        {
          v65 = v72 + (v69 + v70);
          if (!__OFADD__(v72, (v69 + v70)))
          {
            ++v68;
            if (--v64)
            {
              continue;
            }
          }
        }

        goto LABEL_140;
      }
    }

    goto LABEL_140;
  }

LABEL_145:
  __break(1u);
}

uint64_t sub_1CA43FB24(void *a1)
{
  v1 = [a1 groupingIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

void sub_1CA43FB88(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2A4();
    v3 = v11;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48 * v4);
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = *(v5 + 8);
    v10 = *(v5 + 3);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 40) = v10;
    *(v3 + 16) = v4 - 1;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA43FC10()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B234();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA43FC6C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2EC();
    v3 = v7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = _s10ScopeStackV5EntryOMa(0);
    sub_1CA44035C(v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1);
    *(v3 + 16) = v5;
    *v1 = v3;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA43FD60(void *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_1CA437F64(a1, v4) & 1;
}

uint64_t sub_1CA43FD98(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA43FDDC()
{
  result = qword_1EC446050;
  if (!qword_1EC446050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446050);
  }

  return result;
}

uint64_t sub_1CA43FE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456C0, &qword_1CA987A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA43FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v6 = a6;
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA43FF40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *a4;
  OUTLINED_FUNCTION_187();
  result = sub_1CA60D430();
  *a4 = v6;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_1CA25B374(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA43FFE8()
{
  result = qword_1EC4456F0;
  if (!qword_1EC4456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4456F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFConditionalAction.ParameterKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFConditionalAction.ParameterKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA4402A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA3601B4;

  return sub_1CA43E69C(v2, v3, v4);
}

uint64_t sub_1CA44035C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ScopeStackV5EntryOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA4403C0()
{
  result = qword_1EC4457D0;
  if (!qword_1EC4457D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4457D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{

  return sub_1CA2B8FA4(a1, v1, 1);
}

id sub_1CA4404AC(uint64_t a1, uint64_t a2)
{
  Value = type metadata accessor for WFSpotlightQueryValue();
  v5 = objc_allocWithZone(Value);
  v6 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = Value;
  sub_1CA94C218();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1CA44051C(void *a1)
{
  v1 = [a1 stringValue];
  sub_1CA94C3A8();

  v2 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
  OUTLINED_FUNCTION_4_31(v2, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1CA440598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    v11 = 34;
    v12 = 0xE100000000000000;
    MEMORY[0x1CCAA1300](a1, a2);
    MEMORY[0x1CCAA1300](6578978, 0xE300000000000000);
    v5 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
    OUTLINED_FUNCTION_4_31(v5, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    Value = type metadata accessor for WFSpotlightQueryValue();
    v8 = objc_allocWithZone(Value);
    v9 = &v8[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
    *v9 = a1;
    *(v9 + 1) = a2;
    v13.receiver = v8;
    v13.super_class = Value;
    sub_1CA94C218();
    return objc_msgSendSuper2(&v13, sel_init);
  }
}

id sub_1CA44066C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445838, &qword_1CA987D28);
  v4 = sub_1CA948CB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA97EDF0;
  v46 = v8;
  v9 = v8 + v7;
  v10 = *(v5 + 16);
  v5 += 16;
  v10(v9, a1, v4);
  v49 = v9;
  v50 = v6;
  v52 = v4;
  v48 = v10;
  v10(v9 + v6, a2, v4);
  v56 = MEMORY[0x1E69E7CC0];
  sub_1CA271524(0, 2, 0, v11, v12, v13, v14);
  v16 = 0;
  v17 = v56;
  v47 = (v5 - 8);
  v51 = v5;
  v18 = *(v5 + 48);
  do
  {
    v19 = v16;
    MEMORY[0x1EEE9AC00](v15);
    v21 = v52;
    v48(&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v20 * v50, v52);
    OUTLINED_FUNCTION_8_14();
    v54 = v22;
    v55 = 0xEA0000000000286FLL;
    v23 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v24 = sub_1CA948C58();
    v25 = [v23 stringFromDate_];

    v26 = sub_1CA94C3A8();
    v28 = v27;

    MEMORY[0x1CCAA1300](v26, v28);

    v29 = OUTLINED_FUNCTION_6_24();
    MEMORY[0x1CCAA1300](v29);
    v30 = v54;
    v31 = v55;
    v15 = (*v47)(&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v56 = v17;
    v37 = *(v17 + 16);
    v36 = *(v17 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1CA271524(v36 > 1, v37 + 1, 1, v32, v33, v34, v35);
      v17 = v56;
    }

    *(v17 + 16) = v37 + 1;
    v38 = v17 + 16 * v37;
    *(v38 + 32) = v30;
    *(v38 + 40) = v31;
    v16 = 1;
  }

  while ((v19 & 1) == 0);
  swift_setDeallocating();
  sub_1CA32E26C();
  v54 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v39 = sub_1CA94C308();
  v41 = v40;

  Value = type metadata accessor for WFSpotlightQueryValue();
  v43 = objc_allocWithZone(Value);
  v44 = &v43[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v44 = v39;
  v44[1] = v41;
  v53.receiver = v43;
  v53.super_class = Value;
  return objc_msgSendSuper2(&v53, sel_init);
}

id sub_1CA4409B4()
{
  OUTLINED_FUNCTION_8_14();
  v11 = v0;
  v12 = 0xEA0000000000286FLL;
  v1 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v2 = sub_1CA948C58();
  v3 = [v1 stringFromDate_];

  v4 = sub_1CA94C3A8();
  v6 = v5;

  MEMORY[0x1CCAA1300](v4, v6);

  v7 = OUTLINED_FUNCTION_6_24();
  MEMORY[0x1CCAA1300](v7);
  v8 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryValue());
  OUTLINED_FUNCTION_4_31(v8, OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue);
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_1CA440AA8(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1CA440AB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA440AA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1CA440AEC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_operator] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSpotlightQueryBuilder();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1CA440B68(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions;
  *&v2[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_operator] = a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for WFSpotlightQueryBuilder();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1CA440C38(void *a1)
{
  swift_beginAccess();
  v2 = a1;
  MEMORY[0x1CCAA1490]();
  sub_1CA69B4CC();
  sub_1CA94C6E8();
  swift_endAccess();

  return v4;
}

void sub_1CA440D44()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit23WFSpotlightQueryBuilder_conditions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = sub_1CA25B410(v2);
  if (!v3)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    sub_1CA94C308();

    return;
  }

  v4 = v3;
  v22 = MEMORY[0x1E69E7CC0];
  v5 = v3 & ~(v3 >> 63);
  sub_1CA94C218();
  sub_1CA271524(0, v5, 0, v6, v7, v8, v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](v10, v2);
      }

      else
      {
        v11 = *(v2 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x78))();
      MEMORY[0x1CCAA1300](v13);

      v14 = OUTLINED_FUNCTION_6_24();
      MEMORY[0x1CCAA1300](v14);

      v20 = *(v22 + 16);
      v19 = *(v22 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1CA271524(v19 > 1, v20 + 1, 1, v15, v16, v17, v18);
      }

      ++v10;
      *(v22 + 16) = v20 + 1;
      v21 = v22 + 16 * v20;
      *(v21 + 32) = 40;
      *(v21 + 40) = 0xE100000000000000;
    }

    while (v4 != v10);

    goto LABEL_11;
  }

  __break(1u);
}

id WFSpotlightQueryBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1CA4411A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator] = a3;
  v5 = &v3[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for WFSpotlightQueryCondition();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1CA44123C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = &v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator] = a3;
  v7 = *&a4[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue + 8];
  v8 = &v4[OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue];
  *v8 = *&a4[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *(v8 + 1) = v7;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for WFSpotlightQueryCondition();
  sub_1CA94C218();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id sub_1CA4412F0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryKeywordCondition()) + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term;
  *v4 = a1;
  v4[1] = a2;
  sub_1CA94C218();
  return sub_1CA4411A4(0, 0xE000000000000000, 4);
}

id sub_1CA441370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1CA94C3A8();
  v6 = a4(v5);

  return v6;
}

uint64_t sub_1CA4413C4()
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_operator);
  if (!(!v1 & v0))
  {
    switch(v4)
    {
      case 0:
        OUTLINED_FUNCTION_1_30();
        v7 = 2112544;
        goto LABEL_28;
      case 1:
        OUTLINED_FUNCTION_1_30();
        v29 = 15392;
        goto LABEL_32;
      case 2:
        OUTLINED_FUNCTION_1_30();
        v7 = 2113056;
LABEL_28:
        v27 = 0xE300000000000000;
        goto LABEL_37;
      case 3:
        OUTLINED_FUNCTION_1_30();
        v7 = 540884512;
        goto LABEL_36;
      case 4:
        OUTLINED_FUNCTION_1_30();
        v7 = 540884256;
        goto LABEL_36;
      case 5:
        OUTLINED_FUNCTION_1_30();
        v29 = 8480;
LABEL_32:
        v7 = v29 | 0x203D0000u;
LABEL_36:
        v27 = 0xE400000000000000;
LABEL_37:
        MEMORY[0x1CCAA1300](v7, v27);
        v6 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
        v26 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue + 8);
        goto LABEL_38;
      case 6:
      case 7:
        goto LABEL_46;
      case 8:
        OUTLINED_FUNCTION_1_30();
        OUTLINED_FUNCTION_5_24();
        OUTLINED_FUNCTION_2_33();
        v6 = 1684219690;
        goto LABEL_34;
      case 9:
        OUTLINED_FUNCTION_1_30();
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_2_33();
        v6 = 6578983;
        v26 = 0xE300000000000000;
        goto LABEL_38;
      default:
        goto LABEL_47;
    }
  }

  v5 = v4 - 999;
  switch(v5)
  {
    case 0:
      OUTLINED_FUNCTION_1_30();
      OUTLINED_FUNCTION_9_20();
      OUTLINED_FUNCTION_2_33();
      v6 = 0x647763272ALL;
      goto LABEL_26;
    case 1:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33();
      v28 = OUTLINED_FUNCTION_7_20();
      MEMORY[0x1CCAA1300](v28);
      OUTLINED_FUNCTION_2_33();
      v6 = OUTLINED_FUNCTION_6_24();
      goto LABEL_38;
    case 2:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33();
      MEMORY[0x1CCAA1300](0x742E656D6974242CLL, 0xEE002D287961646FLL);
      OUTLINED_FUNCTION_2_33();
      v6 = 0x2E656D6974242C29;
      v26 = 0xEE00297961646F74;
      goto LABEL_38;
    case 3:
      OUTLINED_FUNCTION_3_29();
      sub_1CA94D408();

      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_2_33();
      v6 = OUTLINED_FUNCTION_7_20();
      goto LABEL_38;
    case 4:
      v9 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue + 8);
      v57 = *(v2 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_stringValue);
      v58 = v9;
      sub_1CA27BAF0();
      sub_1CA94C218();
      v10 = sub_1CA94D248();

      v11 = 0;
      v12 = *(v10 + 16);
      v13 = (v10 + 56);
      v14 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v12 != v11)
        {
          if (v11 < *(v10 + 16))
          {
            v15 = *(v13 - 1);
            v16 = *v13;
            v18 = *(v13 - 3);
            v17 = *(v13 - 2);
            sub_1CA94C218();
            v19 = MEMORY[0x1CCAA1280](v18, v17, v15, v16);
            v21 = v20;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA26DADC();
              v14 = v24;
            }

            v22 = v14[2];
            if (v22 >= v14[3] >> 1)
            {
              sub_1CA26DADC();
              v14 = v25;
            }

            v14[2] = v22 + 1;
            v23 = &v14[2 * v22];
            v23[4] = v19;
            v23[5] = v21;
            v13 += 4;
            ++v11;
            continue;
          }

          __break(1u);
          goto LABEL_44;
        }

        break;
      }

      v32 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryBuilder());
      v33 = sub_1CA440AEC(0);
      if (!v14[2])
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v34 = v33;
      v35 = v3 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key;
      v36 = *(v3 + OBJC_IVAR____TtC11WorkflowKit25WFSpotlightQueryCondition_key);
      v37 = *(v35 + 8);
      v39 = v14[4];
      v38 = v14[5];
      Value = type metadata accessor for WFSpotlightQueryValue();
      v41 = objc_allocWithZone(Value);
      v42 = &v41[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
      *v42 = v39;
      *(v42 + 1) = v38;
      v56.receiver = v41;
      v56.super_class = Value;
      sub_1CA94C218();
      sub_1CA94C218();
      v43 = objc_msgSendSuper2(&v56, sel_init);
      Condition = type metadata accessor for WFSpotlightQueryCondition();
      v45 = objc_allocWithZone(Condition);
      sub_1CA94C218();
      v46 = sub_1CA44123C(v36, v37, 3, v43);
      sub_1CA440C38(v46);

      if (v14[2] < 2uLL)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v48 = v14[6];
      v47 = v14[7];
      sub_1CA94C218();

      v49 = objc_allocWithZone(Value);
      v50 = &v49[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
      *v50 = v48;
      *(v50 + 1) = v47;
      v55.receiver = v49;
      v55.super_class = Value;
      v51 = objc_msgSendSuper2(&v55, sel_init);
      v52 = objc_allocWithZone(Condition);
      v53 = sub_1CA44123C(v36, v37, 1, v51);
      sub_1CA440C38(v53);

      sub_1CA440D44();
      v30 = v54;

      return v30;
    default:
      if (v5 == 99)
      {
        OUTLINED_FUNCTION_1_30();
        OUTLINED_FUNCTION_5_24();
        OUTLINED_FUNCTION_2_33();
        v6 = 1685545767;
LABEL_34:
        v26 = 0xE400000000000000;
      }

      else
      {
        if (v5 == 101)
        {
          OUTLINED_FUNCTION_1_30();
          v8 = 8480;
        }

        else
        {
          if (v5 != 100)
          {
LABEL_46:
            sub_1CA94D5F8();
            __break(1u);
LABEL_47:
            JUMPOUT(0);
          }

          OUTLINED_FUNCTION_1_30();
          v8 = 15648;
        }

        v6 = v8 & 0xFFFF00000000FFFFLL | 0x2A203D0000;
LABEL_26:
        v26 = 0xE500000000000000;
      }

LABEL_38:
      MEMORY[0x1CCAA1300](v6, v26);
      return v57;
  }
}

uint64_t sub_1CA441B10()
{
  MEMORY[0x1CCAA1300](*(v0 + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_CDB753D3D56C005953F224F5AE54023732WFSpotlightQueryKeywordCondition_term + 8));
  MEMORY[0x1CCAA1300](0x74647763272ALL, 0xE600000000000000);
  return 658319914;
}

id sub_1CA441CC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for WFSpotlightQueryBuilder.MeasurementFormatter(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1CA441DF0()
{
  result = qword_1EC445828;
  if (!qword_1EC445828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445828);
  }

  return result;
}

uint64_t sub_1CA441E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445830, &qword_1CA987D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0x6465657073;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_opt_self() kilometersPerHour];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  v1 = objc_opt_self();
  *(inited + 72) = [v1 seconds];
  strcpy((inited + 80), "exposuretime");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [v1 seconds];
  *(inited + 104) = 0x6E656C6C61636F66;
  *(inited + 112) = 0xEB00000000687467;
  *(inited + 120) = [objc_opt_self() millimeters];
  sub_1CA441FBC();
  result = sub_1CA94C1E8();
  qword_1EC4457E8 = result;
  return result;
}

unint64_t sub_1CA441FBC()
{
  result = qword_1EC444B50;
  if (!qword_1EC444B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444B50);
  }

  return result;
}

void *sub_1CA442000(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445858, &qword_1CA987ED0);
  sub_1CA4437F0(&unk_1EC4420E0, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey, "}nQ$\bP\v");
  v2[14] = sub_1CA94C1E8();
  v2[15] = a1;
  v2[16] = a2;
  return v2;
}

void *sub_1CA4420B8(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445840, &qword_1CA987E90);
  sub_1CA4437F0(&qword_1EC442000, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey, &unk_1CA987E34);
  v2[14] = sub_1CA94C1E8();
  v2[15] = a1;
  v2[16] = a2;
  return v2;
}

uint64_t sub_1CA442170(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1CA94D7F8() & 1) != 0)
  {
    type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);

    JUMPOUT(0x1CCA9FFB0);
  }

  return 0;
}

uint64_t sub_1CA4421EC(uint64_t a1)
{
  sub_1CA94C458();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_36();
  sub_1CA4437F0(v1, v2, MEMORY[0x1E69DB2F8]);
  return sub_1CA94C298();
}

uint64_t sub_1CA44226C()
{
  sub_1CA94D918();
  sub_1CA94C458();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  sub_1CA4437F0(&qword_1EC443B20, MEMORY[0x1E69DB2F0], MEMORY[0x1E69DB2F8]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA442320(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_36();
  sub_1CA4437F0(v1, v2, MEMORY[0x1E69DB2F8]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

void sub_1CA4423B8()
{
  sub_1CA94A138();
  sub_1CA94A118();
  type metadata accessor for DatabaseContainerDefinitionProvider();
  v0 = swift_allocObject();

  v2 = sub_1CA443838(v1, v0);

  qword_1EC442010 = v2;
}

uint64_t static DatabaseContainerDefinitionProvider.shared.getter()
{
  if (qword_1EC442008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA44247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1CA94B508();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  v3[15] = swift_task_alloc();
  v6 = sub_1CA949F78();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA442684, 0, 0);
}

uint64_t sub_1CA442684()
{
  v22 = v0;
  v1 = v0[15];
  v2 = v0[3];
  sub_1CA949C58();
  sub_1CA4439BC(v2, v1);
  v3 = sub_1CA949F68();
  v4 = sub_1CA94CBF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  if (v5)
  {
    v20 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = *v9;
    v13 = v9[1];
    sub_1CA94C218();
    sub_1CA4432A4(v9);
    v14 = sub_1CA26B54C(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1CA256000, v3, v4, "Fetching definition for container: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1CCAA4BF0](v11, -1, -1);
    MEMORY[0x1CCAA4BF0](v10, -1, -1);

    (*(v6 + 8))(v20, v8);
  }

  else
  {

    sub_1CA4432A4(v9);
    (*(v6 + 8))(v7, v8);
  }

  v15 = v0[4];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_1CA44288C;

  return MEMORY[0x1EEE4AAA0](v16, v17);
}

uint64_t sub_1CA44288C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA442A24, 0, 0);
  }
}

uint64_t sub_1CA442A24()
{
  v35 = v0[21];
  v1 = v0[10];
  v33 = v0[9];
  v34 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  v31 = *(v0[14] + 20);
  sub_1CA94B4F8();
  swift_getKeyPath();
  v6 = swift_allocObject();
  v32 = v5;
  v7 = *v5;
  v8 = *(v5 + 1);
  v30 = v7;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *v3 = v6;
  (*(v2 + 104))(v3, *MEMORY[0x1E69DA9C0], v4);
  sub_1CA4437F0(&unk_1EC441CD8, MEMORY[0x1E69DB418], MEMORY[0x1E69DB410]);
  sub_1CA443A20();
  v29 = v8;
  sub_1CA94C218();
  sub_1CA94A838();

  (*(v2 + 8))(v3, v4);
  v9 = *(v33 + 8);
  v9(v1, v34);
  v10 = sub_1CA948E58();
  v11 = *(v10 - 8);
  v12 = swift_task_alloc();
  sub_1CA948D98();
  sub_1CA94A808();
  if (v35)
  {
    v13 = v0[11];
    v14 = v0[8];

    (*(v11 + 8))(v12, v10);
    v9(v13, v14);

LABEL_5:

    OUTLINED_FUNCTION_5();
    goto LABEL_6;
  }

  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];
  v18 = v0[8];
  (*(v11 + 8))(v12, v10);
  v9(v17, v18);

  sub_1CA407B48(v16, v15);
  v19 = sub_1CA94B1C8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    v20 = v0[13];
    sub_1CA2FF9AC(v0[12]);
    type metadata accessor for DatabaseContainerDefinitionProvider.Error(0);
    sub_1CA4437F0(&qword_1EC445848, type metadata accessor for DatabaseContainerDefinitionProvider.Error, &unk_1CA987EF8);
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8) + 48);
    *v22 = v30;
    *(v22 + 1) = v29;
    sub_1CA94B168();
    OUTLINED_FUNCTION_0_1();
    (*(v24 + 16))(&v22[v23], &v32[v31]);
    swift_willThrow();
    sub_1CA94C218();

    sub_1CA2FF9AC(v20);
    goto LABEL_5;
  }

  v27 = v0[12];
  v28 = v0[2];
  sub_1CA2FF9AC(v0[13]);

  (*(*(v19 - 8) + 32))(v28, v27, v19);

  OUTLINED_FUNCTION_5();
LABEL_6:

  return v25();
}

uint64_t sub_1CA442EE0()
{
  OUTLINED_FUNCTION_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA442F78, v0, 0);
}

uint64_t sub_1CA442F78()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[7] + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(&v1[v5], v2);
  *v1 = v4;
  *(v1 + 1) = v3;
  sub_1CA94C218();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1CA44308C;
  v8 = v0[8];
  v9 = v0[2];

  return (sub_1CA2C8194)(v9, v8);
}

uint64_t sub_1CA44308C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1CA44321C;
  }

  else
  {
    v6 = sub_1CA4431B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA4431B4()
{
  OUTLINED_FUNCTION_0();
  sub_1CA4432A4(*(v0 + 64));

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA44321C()
{
  OUTLINED_FUNCTION_0();
  sub_1CA4432A4(*(v0 + 64));

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA4432A4(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DatabaseContainerDefinitionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DatabaseContainerDefinitionProvider.__deallocating_deinit()
{
  DatabaseContainerDefinitionProvider.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA443384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2F0828;

  return sub_1CA442EE0();
}

uint64_t dispatch thunk of ContainerDefinitionProvider.container(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 8) + **(a6 + 8));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4_4(v12);
  *v13 = v14;
  v13[1] = sub_1CA2F0828;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DatabaseContainerDefinitionProvider.container(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 112) + **(*v4 + 112));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4_4(v9);
  *v10 = v11;
  v10[1] = sub_1CA2F1548;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1CA44372C(uint64_t a1)
{
  result = sub_1CA94B168();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4437F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA443838(uint64_t a1, uint64_t a2)
{
  v8[3] = sub_1CA94A138();
  v8[4] = MEMORY[0x1E69DA938];
  v8[0] = a1;
  swift_defaultActor_initialize();
  sub_1CA2C9578(v8, a2 + 120);
  sub_1CA2C9578(v8, v7);
  v4 = swift_allocObject();
  sub_1CA27F268(v7, v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B30, &qword_1CA981F10);
  swift_allocObject();
  v5 = sub_1CA4420B8(&unk_1CA987E80, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);
  *(a2 + 112) = v5;
  return a2;
}

uint64_t sub_1CA443918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2F1548;

  return sub_1CA44247C(a1, a2, v2 + 16);
}

uint64_t sub_1CA4439BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA443A20()
{
  result = qword_1EDB9F7C0;
  if (!qword_1EDB9F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444CC0, &unk_1CA9867F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7C0);
  }

  return result;
}

uint64_t sub_1CA443AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA443AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445850, &qword_1CA987EC8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA443B5C(uint64_t a1)
{
  sub_1CA443C30(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1CA94B168();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1CA443C30(uint64_t a1)
{
  if (!qword_1EC445870)
  {
    sub_1CA94B168();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC445870);
    }
  }
}

uint64_t sub_1CA443C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA443CC0, 0, 0);
}

uint64_t sub_1CA443CC0()
{
  v0[2] = v0[6];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  if (swift_dynamicCast())
  {
    v0[10] = v0[3];
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_1CA443E28;
    v3 = v0[7];
    v2 = v0[8];

    return WFParameterState.process(context:)(v3, v2);
  }

  else
  {
    v5 = v0[6];
    sub_1CA2A741C();
    swift_allocError();
    *v6 = v5;
    *(v6 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_5();
    v8 = v7;
    swift_unknownObjectRetain();

    return v8();
  }
}

uint64_t sub_1CA443E28()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  *(v2 + 96) = v1;
  *(v2 + 104) = v0;

  if (v0)
  {
    v3 = sub_1CA444094;
  }

  else
  {
    v3 = sub_1CA443F34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA443F34()
{
  v1 = v0[12];
  if (!v1)
  {
    swift_unknownObjectRelease();
    v2 = 0;
    goto LABEL_5;
  }

  v0[4] = v1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2 = v0[5];
LABEL_5:
    v3 = v0[1];

    return v3(v2);
  }

  sub_1CA2A741C();
  swift_allocError();
  v6 = v5;
  *(v5 + 24) = swift_getObjectType();
  *v6 = v1;
  *(v6 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA444094()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t RowTemplateParameterOptions.variablesDisabled.getter()
{
  sub_1CA43FE30(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 72))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1CA444194(v4);
  }

  return v1 & 1;
}

uint64_t sub_1CA444194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456C0, &qword_1CA987A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA444218(uint64_t a1)
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v2 = result;
    v3 = sub_1CA94C3A8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA44426C()
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v1 = result;
    v2 = sub_1CA94C3A8();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA4442C4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v3 = result;
    v4 = sub_1CA94C3A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA444348()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA444390()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_8_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t RowTemplateValueComparisonOperator.formatString.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_13();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = OUTLINED_FUNCTION_25_9();
  (*(v9 + 8))(v2, v9);
  return (*(v5 + 8))(v3, v2);
}

uint64_t sub_1CA4444D8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_8_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

uint64_t RowTemplateValueComparisonOperator.parameters(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_13();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_10();
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_9();
  v12 = (*(v11 + 16))(a1, v3, v11);
  (*(v7 + 8))(v4, v3);
  return v12;
}

id sub_1CA444628()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA444670()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_5_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA4446B8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_5_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

uint64_t RowTemplateParameterOptions.init(row:parameterKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CA43FE30(a1, a4);
  if (!a3)
  {
    a2 = 0x65756C6176;
    a3 = 0xE500000000000000;
  }

  result = sub_1CA444194(a1);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RowTemplateParameterOptions.parameterKey.getter()
{
  v1 = *(v0 + 40);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA44479C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4447DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}