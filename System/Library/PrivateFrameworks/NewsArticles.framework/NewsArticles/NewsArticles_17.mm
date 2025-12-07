void sub_1D7B4F558(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v111 = sub_1D7D2E8FC();
  v8 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v110 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D7D29C1C();
  v11 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v12);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v125 = &v92 - v16;
  v17 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v107 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v106 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = &v92 - v25;
  sub_1D7B57020(0);
  v126 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v104 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v103 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v127 = (&v92 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v124 = (&v92 - v37);
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_60;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_61;
  }

  v41 = &a2[-a1] / v39;
  v130 = a1;
  v129 = a4;
  if (v41 >= v40 / v39)
  {
    v43 = v40 / v39 * v39;
    if (a4 < a2 || &a2[v43] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = &a4[v43];
    if (v43 >= 1)
    {
      v66 = -v39;
      v97 = (v8 + 32);
      v96 = (v8 + 8);
      v95 = (v11 + 8);
      v67 = &a4[v43];
      v121 = a4;
      v122 = a1;
      v98 = v66;
      v68 = v97;
      while (2)
      {
        while (1)
        {
          v93 = v65;
          v69 = &a2[v66];
          v123 = &a2[v66];
          v99 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v130 = a2;
              v128 = v93;
              goto LABEL_58;
            }

            v94 = v65;
            v120 = a3 + v66;
            v100 = &v67[v66];
            v71 = v124;
            v119 = a3;
            sub_1D7B4C274(&v67[v66], v124, sub_1D7B57020);
            sub_1D7B4C274(v69, v127, sub_1D7B57020);
            v117 = *v71;
            v72 = v71;
            v73 = v103;
            sub_1D7B4C274(v72, v103, sub_1D7B57020);
            v74 = *(v126 + 48);
            sub_1D7A5FC40(0);
            v76 = v75;
            v118 = v67;
            v77 = v105;
            sub_1D7D2ABBC();
            v78 = *(v76 - 8);
            v115 = *(v78 + 8);
            v116 = (v78 + 8);
            v115(v73 + v74, v76);
            v114 = type metadata accessor for EndOfArticleLayoutModel;
            v79 = v106;
            sub_1D7B4C274(v77, v106, type metadata accessor for EndOfArticleLayoutModel);
            v113 = *v68;
            v80 = v110;
            v81 = v111;
            v113(v110, v79, v111);
            sub_1D7D2E8DC();
            v102 = *v96;
            (v102)(v80, v81);
            v101 = type metadata accessor for EndOfArticleLayoutModel;
            sub_1D7B49994(v77, type metadata accessor for EndOfArticleLayoutModel);
            v112 = *v127;
            v82 = v104;
            sub_1D7B4C274(v127, v104, sub_1D7B57020);
            v83 = *(v126 + 48);
            sub_1D7D2ABBC();
            v115(v82 + v83, v76);
            v84 = v107;
            sub_1D7B4C274(v79, v107, v114);
            v113(v80, v84, v81);
            v85 = v108;
            sub_1D7D2E8DC();
            (v102)(v80, v81);
            sub_1D7B49994(v79, v101);
            v86 = v125;
            LOBYTE(v79) = sub_1D7D2AD3C();
            v87 = *v95;
            v88 = v109;
            (*v95)(v85, v109);
            v87(v86, v88);
            sub_1D7B49994(v127, sub_1D7B57020);
            sub_1D7B49994(v124, sub_1D7B57020);
            if (v79)
            {
              break;
            }

            v89 = v100;
            v65 = v100;
            a3 = v120;
            v90 = v121;
            if (v119 < v118 || v120 >= v118)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v122;
              v69 = v123;
              v66 = v98;
            }

            else
            {
              a1 = v122;
              v69 = v123;
              v66 = v98;
              if (v119 != v118)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v67 = v65;
            v70 = v89 > v90;
            a2 = v99;
            if (!v70)
            {
              goto LABEL_56;
            }
          }

          v67 = v118;
          a3 = v120;
          v91 = v121;
          if (v119 < v99 || v120 >= v99)
          {
            break;
          }

          a1 = v122;
          a2 = v123;
          v65 = v94;
          v66 = v98;
          if (v119 != v99)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v67 <= v91)
          {
            goto LABEL_56;
          }
        }

        a2 = v123;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v122;
        v65 = v94;
        v66 = v98;
        if (v67 > v91)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v130 = a2;
    v128 = v65;
  }

  else
  {
    v42 = v41 * v39;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v102 = &a4[v42];
    v128 = &a4[v42];
    if (v42 >= 1 && a2 < a3)
    {
      v100 = (v8 + 32);
      v99 = (v8 + 8);
      v98 = (v11 + 8);
      v120 = a3;
      v101 = v39;
      do
      {
        v122 = a1;
        v123 = a2;
        v121 = a4;
        v45 = v124;
        sub_1D7B4C274(a2, v124, sub_1D7B57020);
        sub_1D7B4C274(a4, v127, sub_1D7B57020);
        v119 = *v45;
        v46 = v103;
        sub_1D7B4C274(v45, v103, sub_1D7B57020);
        v47 = *(v126 + 48);
        sub_1D7A5FC40(0);
        v49 = v48;
        v50 = v105;
        sub_1D7D2ABBC();
        v51 = *(v49 - 8);
        v117 = *(v51 + 8);
        v118 = (v51 + 8);
        v117(v46 + v47, v49);
        v116 = type metadata accessor for EndOfArticleLayoutModel;
        v52 = v106;
        sub_1D7B4C274(v50, v106, type metadata accessor for EndOfArticleLayoutModel);
        v115 = *v100;
        v54 = v110;
        v53 = v111;
        (v115)(v110, v52, v111);
        sub_1D7D2E8DC();
        v113 = *v99;
        (v113)(v54, v53);
        v112 = type metadata accessor for EndOfArticleLayoutModel;
        sub_1D7B49994(v50, type metadata accessor for EndOfArticleLayoutModel);
        v114 = *v127;
        v55 = v104;
        sub_1D7B4C274(v127, v104, sub_1D7B57020);
        v56 = *(v126 + 48);
        sub_1D7D2ABBC();
        v117(v55 + v56, v49);
        v57 = v107;
        sub_1D7B4C274(v52, v107, v116);
        (v115)(v54, v57, v53);
        v58 = v108;
        sub_1D7D2E8DC();
        (v113)(v54, v53);
        sub_1D7B49994(v52, v112);
        v59 = v125;
        LOBYTE(v47) = sub_1D7D2AD3C();
        v60 = *v98;
        v61 = v109;
        (*v98)(v58, v109);
        v60(v59, v61);
        sub_1D7B49994(v127, sub_1D7B57020);
        sub_1D7B49994(v124, sub_1D7B57020);
        if (v47)
        {
          v62 = v101;
          v63 = v122;
          a2 = v101 + v123;
          a4 = v121;
          if (v122 < v123 || v122 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v64 = v120;
          }

          else
          {
            v64 = v120;
            if (v122 != v123)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v63 = v122;
          a2 = v123;
          v62 = v101;
          a4 = v101 + v121;
          if (v122 < v121 || v122 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v64 = v120;
          }

          else
          {
            v64 = v120;
            if (v122 != v121)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v129 = a4;
        }

        a1 = v62 + v63;
        v130 = a1;
      }

      while (a4 < v102 && a2 < v64);
    }
  }

LABEL_58:
  sub_1D7B50264(&v130, &v129, &v128, sub_1D7B57020);
}

uint64_t sub_1D7B50194(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D7B50220(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D7B50264(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D7B5034C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7B57244(0, &unk_1EE0BE840, sub_1D79E6C90, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D7B50474(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v6 && (v2 == v7 && v3 == v6 || (sub_1D7D3197C() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C() & 1;
  }
}

void *sub_1D7B505E4(uint64_t a1)
{
  sub_1D7A5FC40(0);
  v76 = v2;
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v75 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57020(0);
  v78 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v74 = (v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v81 = v68 - v11;
  sub_1D7A600A4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57040(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B570D4(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v6;
  v27 = *(v6 + 80);
  sub_1D7B4C274(a1, v21, sub_1D7B57040);
  (*(v14 + 32))(v17, v21, v13);
  sub_1D7B571FC(&qword_1EC9E5468, sub_1D7A600A4, MEMORY[0x1E69D7DC8]);
  sub_1D7D304FC();
  sub_1D7B57168(0);
  v29 = *(v28 + 36);
  v30 = sub_1D7B571FC(&qword_1EC9E5480, sub_1D7A600A4, MEMORY[0x1E69D7DD0]);
  v31 = v26;
  sub_1D7D30A5C();
  v77 = v29;
  v32 = MEMORY[0x1E69E7CC0];
  if (*&v26[v29] == v82[0])
  {
    v33 = 0;
    v34 = 0;
LABEL_31:
    *(v31 + *(v23 + 36)) = v34;
    result = sub_1D7B49994(v31, sub_1D7B570D4);
    v65 = *(v32 + 3);
    if (v65 < 2)
    {
      return v32;
    }

    v66 = v65 >> 1;
    v64 = __OFSUB__(v66, v33);
    v67 = v66 - v33;
    if (!v64)
    {
      *(v32 + 2) = v67;
      return v32;
    }
  }

  else
  {
    v68[0] = v23;
    v68[1] = v27;
    v35 = 0;
    v80 = 0;
    v69 = (v27 + 32) & ~v27;
    v70 = v26;
    v36 = MEMORY[0x1E69E7CC0] + v69;
    v37 = v72;
    v72 += 4;
    v73 = (v37 + 2);
    v38 = MEMORY[0x1E69E7CC0];
    v71 = v30;
    while (1)
    {
      v39 = sub_1D7D30AAC();
      v40 = v75;
      v41 = v35;
      v42 = v76;
      (*v73)(v75);
      v39(v82, 0);
      v43 = v13;
      sub_1D7D30A6C();
      v44 = *(v78 + 48);
      v45 = v74;
      *v74 = v41;
      v46 = v42;
      v47 = v41;
      result = (*v72)(v45 + v44, v40, v46);
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      result = sub_1D7B551E8(v45, v81, sub_1D7B57020);
      if (v80)
      {
        v32 = v38;
        v31 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v49 = *(v38 + 3);
        v50 = v69;
        if (((v49 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v51 = v38;
        v52 = v34;
        v53 = v49 & 0xFFFFFFFFFFFFFFFELL;
        if (v53 <= 1)
        {
          v54 = 1;
        }

        else
        {
          v54 = v53;
        }

        sub_1D7B57244(0, &qword_1EC9E2DE8, sub_1D7B57020, MEMORY[0x1E69E6F90]);
        v55 = *(v79 + 72);
        v32 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v32);
        if (!v55)
        {
          goto LABEL_37;
        }

        v56 = result - v50;
        if ((result - v50) == 0x8000000000000000 && v55 == -1)
        {
          goto LABEL_38;
        }

        v58 = v56 / v55;
        *(v32 + 2) = v54;
        *(v32 + 3) = 2 * (v56 / v55);
        v59 = &v32[v50];
        v60 = *(v51 + 3) >> 1;
        v61 = v60 * v55;
        if (*(v51 + 2))
        {
          if (v32 < v51 || v59 >= &v51[v69 + v61])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          *(v51 + 2) = 0;
        }

        v36 = &v59[v61];
        v63 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

        v34 = v52;
        v64 = __OFSUB__(v63, 1);
        v31 = v63 - 1;
        if (v64)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          v23 = v68[0];
          v33 = v80;
          goto LABEL_31;
        }
      }

      v80 = v31;
      sub_1D7B551E8(v81, v36, sub_1D7B57020);
      v36 += *(v79 + 72);
      v31 = v70;
      v13 = v43;
      sub_1D7D30A5C();
      v35 = v47 + 1;
      v38 = v32;
      if (*(v31 + v77) == v82[0])
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7B50C54(uint64_t a1)
{
  sub_1D7A5FB54(0);
  v76 = v2;
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v75 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B554EC(0);
  v78 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v74 = (v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v81 = v68 - v11;
  sub_1D7A2B48C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B5550C(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B555A0(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v6;
  v27 = *(v6 + 80);
  sub_1D7B4C274(a1, v21, sub_1D7B5550C);
  (*(v14 + 32))(v17, v21, v13);
  sub_1D7B571FC(&qword_1EC9E53C0, sub_1D7A2B48C, MEMORY[0x1E69D7DC8]);
  sub_1D7D304FC();
  sub_1D7B55634(0);
  v29 = *(v28 + 36);
  v30 = sub_1D7B571FC(&qword_1EC9E53D8, sub_1D7A2B48C, MEMORY[0x1E69D7DD0]);
  v31 = v26;
  sub_1D7D30A5C();
  v77 = v29;
  v32 = MEMORY[0x1E69E7CC0];
  if (*&v26[v29] == v82[0])
  {
    v33 = 0;
    v34 = 0;
LABEL_31:
    *(v31 + *(v23 + 36)) = v34;
    result = sub_1D7B49994(v31, sub_1D7B555A0);
    v65 = *(v32 + 3);
    if (v65 < 2)
    {
      return v32;
    }

    v66 = v65 >> 1;
    v64 = __OFSUB__(v66, v33);
    v67 = v66 - v33;
    if (!v64)
    {
      *(v32 + 2) = v67;
      return v32;
    }
  }

  else
  {
    v68[0] = v23;
    v68[1] = v27;
    v35 = 0;
    v80 = 0;
    v69 = (v27 + 32) & ~v27;
    v70 = v26;
    v36 = MEMORY[0x1E69E7CC0] + v69;
    v37 = v72;
    v72 += 4;
    v73 = (v37 + 2);
    v38 = MEMORY[0x1E69E7CC0];
    v71 = v30;
    while (1)
    {
      v39 = sub_1D7D30AAC();
      v40 = v75;
      v41 = v35;
      v42 = v76;
      (*v73)(v75);
      v39(v82, 0);
      v43 = v13;
      sub_1D7D30A6C();
      v44 = *(v78 + 48);
      v45 = v74;
      *v74 = v41;
      v46 = v42;
      v47 = v41;
      result = (*v72)(v45 + v44, v40, v46);
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      result = sub_1D7B551E8(v45, v81, sub_1D7B554EC);
      if (v80)
      {
        v32 = v38;
        v31 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v49 = *(v38 + 3);
        v50 = v69;
        if (((v49 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v51 = v38;
        v52 = v34;
        v53 = v49 & 0xFFFFFFFFFFFFFFFELL;
        if (v53 <= 1)
        {
          v54 = 1;
        }

        else
        {
          v54 = v53;
        }

        sub_1D7B57244(0, &qword_1EC9E53E0, sub_1D7B554EC, MEMORY[0x1E69E6F90]);
        v55 = *(v79 + 72);
        v32 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v32);
        if (!v55)
        {
          goto LABEL_37;
        }

        v56 = result - v50;
        if ((result - v50) == 0x8000000000000000 && v55 == -1)
        {
          goto LABEL_38;
        }

        v58 = v56 / v55;
        *(v32 + 2) = v54;
        *(v32 + 3) = 2 * (v56 / v55);
        v59 = &v32[v50];
        v60 = *(v51 + 3) >> 1;
        v61 = v60 * v55;
        if (*(v51 + 2))
        {
          if (v32 < v51 || v59 >= &v51[v69 + v61])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          *(v51 + 2) = 0;
        }

        v36 = &v59[v61];
        v63 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

        v34 = v52;
        v64 = __OFSUB__(v63, 1);
        v31 = v63 - 1;
        if (v64)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          v23 = v68[0];
          v33 = v80;
          goto LABEL_31;
        }
      }

      v80 = v31;
      sub_1D7B551E8(v81, v36, sub_1D7B554EC);
      v36 += *(v79 + 72);
      v31 = v70;
      v13 = v43;
      sub_1D7D30A5C();
      v35 = v47 + 1;
      v38 = v32;
      if (*(v31 + v77) == v82[0])
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B512C4(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v6 = (result + 48);
    do
    {
      v7 = *v6;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v8 = [v7 articleID];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1D7D3034C();
        v12 = v11;

        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
        v12 = 0;
        if (!a2)
        {
LABEL_12:
          v17 = 0;
          v19 = 0;
          if (!v12)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      v13 = v10;
      v14 = a2;
      v15 = [a2 articleID];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1D7D3034C();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      a2 = v14;
      v10 = v13;
      if (!v12)
      {
LABEL_13:
        if (v19)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

LABEL_17:
      if (!v19)
      {
        goto LABEL_5;
      }

      if (v10 == v17 && v12 == v19)
      {
      }

      else
      {
        v20 = sub_1D7D3197C();

        if ((v20 & 1) == 0)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

LABEL_4:
      *a3 = a4;

LABEL_5:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_6:

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D7B51514(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a4;
  v59 = a3;
  v57[1] = a2;
  v76 = sub_1D7D2E8FC();
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v5);
  v70 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v69 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v68 = v57 - v12;
  sub_1D7A5FC40(0);
  v67 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v66 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D79B84E4();
  v18 = *(v17 + 16);
  if (v18)
  {
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v65 = v20;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v57[0] = v17;
    v22 = v17 + v21;
    v60 = *(v19 + 56);
    v64 = (v4 + 32);
    v63 = (v4 + 8);
    v62 = (v19 - 8);
    v23 = MEMORY[0x1E69E7CC0];
    v61 = v19;
    while (1)
    {
      v25 = v23;
      v26 = v66;
      v27 = v67;
      v65(v66, v22, v67);
      v28 = v68;
      sub_1D7D2ABBC();
      v29 = v69;
      sub_1D7B4C274(v28, v69, type metadata accessor for EndOfArticleLayoutModel);
      v30 = v70;
      v31 = v76;
      (*v64)(v70, v29, v76);
      v32 = FeedItemLayoutAttributes.articles.getter();
      (*v63)(v30, v31);
      sub_1D7B49994(v28, type metadata accessor for EndOfArticleLayoutModel);
      v33 = v26;
      v23 = v25;
      result = (*v62)(v33, v27);
      v34 = *(v32 + 16);
      v35 = *(v25 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_31;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v36 <= *(v25 + 24) >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_1D79E3A50(result, v37, 1, v25);
        v23 = result;
        if (*(v32 + 16))
        {
LABEL_14:
          if ((*(v23 + 24) >> 1) - *(v23 + 16) < v34)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v34)
          {
            v38 = *(v23 + 16);
            v39 = __OFADD__(v38, v34);
            v40 = v38 + v34;
            if (v39)
            {
              goto LABEL_34;
            }

            *(v23 + 16) = v40;
          }

          goto LABEL_4;
        }
      }

      if (v34)
      {
        goto LABEL_32;
      }

LABEL_4:
      v22 += v60;
      if (!--v18)
      {

        v41 = *(v23 + 16);
        if (!v41)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  v41 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v41)
  {
LABEL_19:
    v42 = 0;
    v43 = (v23 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    while (v42 < *(v23 + 16))
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = v43[3];
      v74 = v43[2];
      v75 = v47;
      v72 = v45;
      v73 = v46;
      sub_1D79F5B54(&v72, v71);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v44 + 16) + 1, 1, v44);
        v44 = result;
      }

      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1D79E3A50((v48 > 1), v49 + 1, 1, v44);
        v44 = result;
      }

      ++v42;
      *(v44 + 16) = v49 + 1;
      v50 = (v44 + (v49 << 6));
      v51 = v72;
      v52 = v73;
      v53 = v75;
      v50[4] = v74;
      v50[5] = v53;
      v50[2] = v51;
      v50[3] = v52;
      v43 += 4;
      if (v41 == v42)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    v44 = MEMORY[0x1E69E7CC0];
LABEL_29:

    sub_1D79E26EC(v54);
    v55 = v59;
    swift_unknownObjectRetain();

    sub_1D7B512C4(v56, v55, v58, v44);
    swift_unknownObjectRelease();
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D7B51A98(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  sub_1D7A600A4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B56CD0(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B56F8C(0);
  v18 = v17 - 8;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v20);
  sub_1D7B571FC(&qword_1EC9E5458, sub_1D7B56CD0, MEMORY[0x1E69D7848]);
  sub_1D7D304FC();
  v23 = *(v18 + 44);
  sub_1D7B571FC(&qword_1EC9E5450, sub_1D7B56CD0, MEMORY[0x1E69D7850]);
  sub_1D7D30A5C();
  if (*&v22[v23] == v35[0])
  {
    return sub_1D7B49994(v22, sub_1D7B56F8C);
  }

  v24 = v7;
  v25 = v6;
  v26 = (v24 + 16);
  v27 = (v24 + 8);
  while (1)
  {
    v28 = sub_1D7D30AAC();
    (*v26)(v10);
    v28(v35, 0);
    sub_1D7D30A6C();
    v29 = v36;
    sub_1D7B51514(v10, v32, v33, v34);
    if (v29)
    {
      break;
    }

    v36 = 0;
    (*v27)(v10, v25);
    sub_1D7D30A5C();
    if (*&v22[v23] == v35[0])
    {
      return sub_1D7B49994(v22, sub_1D7B56F8C);
    }
  }

  (*v27)(v10, v25);
  return sub_1D7B49994(v22, sub_1D7B56F8C);
}

uint64_t sub_1D7B51E74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v59 = a4;
  v60 = a3;
  v58[1] = a2;
  v77 = sub_1D7D2E8FC();
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v6);
  v71 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfRecipeLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = v58 - v13;
  sub_1D7A5FB54(0);
  v68 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v67 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7B51E34(a1);
  v19 = v18[2];
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v66 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v58[0] = v18;
    v23 = v18 + v22;
    v61 = *(v20 + 56);
    v65 = (v5 + 32);
    v64 = (v5 + 8);
    v63 = (v20 - 8);
    v24 = MEMORY[0x1E69E7CC0];
    v62 = v20;
    while (1)
    {
      v26 = v24;
      v27 = v67;
      v28 = v68;
      v66(v67, v23, v68);
      v29 = v69;
      sub_1D7D2ABBC();
      v30 = v70;
      sub_1D7B4C274(v29, v70, type metadata accessor for EndOfRecipeLayoutModel);
      v31 = v71;
      v32 = v77;
      (*v65)(v71, v30, v77);
      v33 = FeedItemLayoutAttributes.articles.getter();
      (*v64)(v31, v32);
      sub_1D7B49994(v29, type metadata accessor for EndOfRecipeLayoutModel);
      v34 = v27;
      v24 = v26;
      result = (*v63)(v34, v28);
      v35 = *(v33 + 16);
      v36 = *(v26 + 16);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_31;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v37 <= *(v26 + 24) >> 1)
      {
        if (*(v33 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v36 <= v37)
        {
          v38 = v36 + v35;
        }

        else
        {
          v38 = v36;
        }

        result = sub_1D79E3A50(result, v38, 1, v26);
        v24 = result;
        if (*(v33 + 16))
        {
LABEL_14:
          if ((*(v24 + 24) >> 1) - *(v24 + 16) < v35)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v35)
          {
            v39 = *(v24 + 16);
            v40 = __OFADD__(v39, v35);
            v41 = v39 + v35;
            if (v40)
            {
              goto LABEL_34;
            }

            *(v24 + 16) = v41;
          }

          goto LABEL_4;
        }
      }

      if (v35)
      {
        goto LABEL_32;
      }

LABEL_4:
      v23 += v61;
      if (!--v19)
      {

        v42 = *(v24 + 16);
        if (!v42)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  v42 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v42)
  {
LABEL_19:
    v43 = 0;
    v44 = (v24 + 32);
    v45 = MEMORY[0x1E69E7CC0];
    while (v43 < *(v24 + 16))
    {
      v46 = *v44;
      v47 = v44[1];
      v48 = v44[3];
      v75 = v44[2];
      v76 = v48;
      v73 = v46;
      v74 = v47;
      sub_1D79F5B54(&v73, v72);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v45 + 16) + 1, 1, v45);
        v45 = result;
      }

      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_1D79E3A50((v49 > 1), v50 + 1, 1, v45);
        v45 = result;
      }

      ++v43;
      *(v45 + 16) = v50 + 1;
      v51 = (v45 + (v50 << 6));
      v52 = v73;
      v53 = v74;
      v54 = v76;
      v51[4] = v75;
      v51[5] = v54;
      v51[2] = v52;
      v51[3] = v53;
      v44 += 4;
      if (v42 == v43)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    v45 = MEMORY[0x1E69E7CC0];
LABEL_29:

    sub_1D79E26EC(v55);
    v56 = v60;
    swift_unknownObjectRetain();

    sub_1D7B512C4(v57, v56, v59, v45);
    swift_unknownObjectRelease();
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D7B523F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  sub_1D7A2B48C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55348(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55458(0);
  v18 = v17 - 8;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v20);
  sub_1D7B571FC(&unk_1EC9E53A0, sub_1D7B55348, MEMORY[0x1E69D7848]);
  sub_1D7D304FC();
  v23 = *(v18 + 44);
  sub_1D7B571FC(&qword_1EC9E5398, sub_1D7B55348, MEMORY[0x1E69D7850]);
  sub_1D7D30A5C();
  if (*&v22[v23] == v35[0])
  {
    return sub_1D7B49994(v22, sub_1D7B55458);
  }

  v24 = v7;
  v25 = v6;
  v26 = (v24 + 16);
  v27 = (v24 + 8);
  while (1)
  {
    v28 = sub_1D7D30AAC();
    (*v26)(v10);
    v28(v35, 0);
    sub_1D7D30A6C();
    v29 = v36;
    sub_1D7B51E74(v10, v32, v33, v34);
    if (v29)
    {
      break;
    }

    v36 = 0;
    (*v27)(v10, v25);
    sub_1D7D30A5C();
    if (*&v22[v23] == v35[0])
    {
      return sub_1D7B49994(v22, sub_1D7B55458);
    }
  }

  (*v27)(v10, v25);
  return sub_1D7B49994(v22, sub_1D7B55458);
}

uint64_t sub_1D7B52768(uint64_t result, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  v24 = a3;
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 + 32;
    v23 = a2 + 32;
    do
    {
      v8 = (v7 + (v6 << 6));
      v9 = v6;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v10 = v8[1];
        v27 = *v8;
        v28 = v10;
        v11 = v8[3];
        v29 = v8[2];
        v30 = v11;
        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_20;
        }

        v12 = v8[1];
        v26[0] = *v8;
        v26[1] = v12;
        v13 = v8[3];
        v26[2] = v8[2];
        v26[3] = v13;
        MEMORY[0x1EEE9AC00](result, a2);
        v22[2] = v26;
        sub_1D79F5B54(&v27, v25);
        if ((sub_1D7B8A998(v24, v22, v5) & 1) == 0)
        {
          break;
        }

        result = sub_1D7A0AD5C(&v27);
        ++v9;
        v8 += 4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v4;
      if ((result & 1) == 0)
      {
        result = sub_1D7A5BE4C(0, *(v4 + 16) + 1, 1);
        v4 = v31;
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1D7A5BE4C((v14 > 1), v15 + 1, 1);
        v4 = v31;
      }

      *(v4 + 16) = v15 + 1;
      v16 = (v4 + (v15 << 6));
      v17 = v27;
      v18 = v28;
      v19 = v30;
      v16[4] = v29;
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v7 = v23;
    }

    while (v6 != v3);
  }

LABEL_14:
  v20 = *(v4 + 16);
  if (v20)
  {
    *&v27 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v21 = 48;
    do
    {
      swift_unknownObjectRetain();
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v21 += 64;
      --v20;
    }

    while (v20);

    return v27;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D7B5299C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v54[1] = a2;
  v71 = sub_1D7D2E8FC();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v6);
  v65 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfRecipeLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v63 = v54 - v13;
  sub_1D7A5FB54(0);
  v62 = v14;
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v61 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3(a1, v17);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v60 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v54[0] = v19;
    v24 = v19 + v23;
    v55 = *(v21 + 56);
    v59 = (v5 + 32);
    v58 = (v5 + 8);
    v57 = (v21 - 8);
    v25 = MEMORY[0x1E69E7CC0];
    v56 = v21;
    while (1)
    {
      v27 = v61;
      v28 = v62;
      v60(v61, v24, v62);
      v29 = v63;
      sub_1D7D2ABBC();
      v30 = v64;
      sub_1D7B4C274(v29, v64, type metadata accessor for EndOfRecipeLayoutModel);
      v31 = v65;
      v32 = v71;
      (*v59)(v65, v30, v71);
      v33 = FeedItemLayoutAttributes.articles.getter();
      (*v58)(v31, v32);
      sub_1D7B49994(v29, type metadata accessor for EndOfRecipeLayoutModel);
      result = (*v57)(v27, v28);
      v34 = *(v33 + 16);
      v35 = *(v25 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_31;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v36 <= *(v25 + 24) >> 1)
      {
        if (*(v33 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_1D79E3A50(result, v37, 1, v25);
        v25 = result;
        if (*(v33 + 16))
        {
LABEL_14:
          if ((*(v25 + 24) >> 1) - *(v25 + 16) < v34)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v34)
          {
            v38 = *(v25 + 16);
            v39 = __OFADD__(v38, v34);
            v40 = v38 + v34;
            if (v39)
            {
              goto LABEL_34;
            }

            *(v25 + 16) = v40;
          }

          goto LABEL_4;
        }
      }

      if (v34)
      {
        goto LABEL_32;
      }

LABEL_4:
      v24 += v55;
      if (!--v20)
      {

        v41 = *(v25 + 16);
        if (!v41)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  v41 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v41)
  {
LABEL_19:
    v42 = 0;
    v43 = (v25 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    while (v42 < *(v25 + 16))
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = v43[3];
      v69 = v43[2];
      v70 = v47;
      v67 = v45;
      v68 = v46;
      sub_1D79F5B54(&v67, v66);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v44 + 16) + 1, 1, v44);
        v44 = result;
      }

      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1D79E3A50((v48 > 1), v49 + 1, 1, v44);
        v44 = result;
      }

      ++v42;
      *(v44 + 16) = v49 + 1;
      v50 = (v44 + (v49 << 6));
      v51 = v67;
      v52 = v68;
      v53 = v70;
      v50[4] = v69;
      v50[5] = v53;
      v50[2] = v51;
      v50[3] = v52;
      v43 += 4;
      if (v41 == v42)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    v44 = MEMORY[0x1E69E7CC0];
LABEL_29:

    return sub_1D79E26EC(v44);
  }

  return result;
}

uint64_t sub_1D7B52EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v29 = a2;
  v30 = a3;
  sub_1D7A2B48C(0);
  v6 = v5;
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55348(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55458(0);
  v17 = v16 - 8;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v19);
  sub_1D7B571FC(&unk_1EC9E53A0, sub_1D7B55348, MEMORY[0x1E69D7848]);
  sub_1D7D304FC();
  v22 = *(v17 + 44);
  sub_1D7B571FC(&qword_1EC9E5398, sub_1D7B55348, MEMORY[0x1E69D7850]);
  sub_1D7D30A5C();
  if (*&v21[v22] != v31[0])
  {
    v32 = v6;
    v23 = (v28 + 16);
    v24 = (v28 + 8);
    while (1)
    {
      v25 = sub_1D7D30AAC();
      (*v23)(v9);
      v25(v31, 0);
      sub_1D7D30A6C();
      sub_1D7B5299C(v9, v29, v30);
      if (v3)
      {
        break;
      }

      (*v24)(v9, v32);
      sub_1D7D30A5C();
      if (*&v21[v22] == v31[0])
      {
        return sub_1D7B49994(v21, sub_1D7B55458);
      }
    }

    (*v24)(v9, v32);
  }

  return sub_1D7B49994(v21, sub_1D7B55458);
}

void *sub_1D7B53234(uint64_t a1, double a2)
{
  sub_1D7B57020(0);
  v39 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v38 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v37 = v35 - v9;
  sub_1D7A5FC40(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57040(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A600A4(0);
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  v40 = sub_1D7B505E4(v19);
  sub_1D7B49C38(&v40, v21);
  sub_1D7B49994(v19, sub_1D7B57040);
  v22 = v40;
  v23 = v40[2];
  if (v23)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C3CC(0, v23, 0);
    v24 = v40;
    v25 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v26 = *(v4 + 72);
    v35[1] = v22;
    v36 = v26;
    v27 = (v12 + 32);
    do
    {
      v28 = v37;
      sub_1D7B4C274(v25, v37, sub_1D7B57020);
      v29 = v28;
      v30 = v38;
      sub_1D7B551E8(v29, v38, sub_1D7B57020);
      v31 = *v27;
      (*v27)(v15, v30 + *(v39 + 48), v11);
      v40 = v24;
      v33 = v24[2];
      v32 = v24[3];
      if (v33 >= v32 >> 1)
      {
        sub_1D7A5C3CC((v32 > 1), v33 + 1, 1);
        v24 = v40;
      }

      v24[2] = v33 + 1;
      v31(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v15, v11);
      v25 += v36;
      --v23;
    }

    while (v23);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

uint64_t sub_1D7B535B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v54[1] = a2;
  v71 = sub_1D7D2E8FC();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v6);
  v65 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v63 = v54 - v13;
  sub_1D7A5FC40(0);
  v62 = v14;
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v61 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3(a1, v17);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v60 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v54[0] = v19;
    v24 = v19 + v23;
    v55 = *(v21 + 56);
    v59 = (v5 + 32);
    v58 = (v5 + 8);
    v57 = (v21 - 8);
    v25 = MEMORY[0x1E69E7CC0];
    v56 = v21;
    while (1)
    {
      v27 = v61;
      v28 = v62;
      v60(v61, v24, v62);
      v29 = v63;
      sub_1D7D2ABBC();
      v30 = v64;
      sub_1D7B4C274(v29, v64, type metadata accessor for EndOfArticleLayoutModel);
      v31 = v65;
      v32 = v71;
      (*v59)(v65, v30, v71);
      v33 = FeedItemLayoutAttributes.articles.getter();
      (*v58)(v31, v32);
      sub_1D7B49994(v29, type metadata accessor for EndOfArticleLayoutModel);
      result = (*v57)(v27, v28);
      v34 = *(v33 + 16);
      v35 = *(v25 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_31;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v36 <= *(v25 + 24) >> 1)
      {
        if (*(v33 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_1D79E3A50(result, v37, 1, v25);
        v25 = result;
        if (*(v33 + 16))
        {
LABEL_14:
          if ((*(v25 + 24) >> 1) - *(v25 + 16) < v34)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v34)
          {
            v38 = *(v25 + 16);
            v39 = __OFADD__(v38, v34);
            v40 = v38 + v34;
            if (v39)
            {
              goto LABEL_34;
            }

            *(v25 + 16) = v40;
          }

          goto LABEL_4;
        }
      }

      if (v34)
      {
        goto LABEL_32;
      }

LABEL_4:
      v24 += v55;
      if (!--v20)
      {

        v41 = *(v25 + 16);
        if (!v41)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  v41 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v41)
  {
LABEL_19:
    v42 = 0;
    v43 = (v25 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    while (v42 < *(v25 + 16))
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = v43[3];
      v69 = v43[2];
      v70 = v47;
      v67 = v45;
      v68 = v46;
      sub_1D79F5B54(&v67, v66);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v44 + 16) + 1, 1, v44);
        v44 = result;
      }

      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1D79E3A50((v48 > 1), v49 + 1, 1, v44);
        v44 = result;
      }

      ++v42;
      *(v44 + 16) = v49 + 1;
      v50 = (v44 + (v49 << 6));
      v51 = v67;
      v52 = v68;
      v53 = v70;
      v50[4] = v69;
      v50[5] = v53;
      v50[2] = v51;
      v50[3] = v52;
      v43 += 4;
      if (v41 == v42)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    v44 = MEMORY[0x1E69E7CC0];
LABEL_29:

    return sub_1D79E26EC(v44);
  }

  return result;
}

uint64_t sub_1D7B53AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v29 = a2;
  v30 = a3;
  sub_1D7A600A4(0);
  v6 = v5;
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B56CD0(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B56F8C(0);
  v17 = v16 - 8;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v19);
  sub_1D7B571FC(&qword_1EC9E5458, sub_1D7B56CD0, MEMORY[0x1E69D7848]);
  sub_1D7D304FC();
  v22 = *(v17 + 44);
  sub_1D7B571FC(&qword_1EC9E5450, sub_1D7B56CD0, MEMORY[0x1E69D7850]);
  sub_1D7D30A5C();
  if (*&v21[v22] != v31[0])
  {
    v32 = v6;
    v23 = (v28 + 16);
    v24 = (v28 + 8);
    while (1)
    {
      v25 = sub_1D7D30AAC();
      (*v23)(v9);
      v25(v31, 0);
      sub_1D7D30A6C();
      sub_1D7B535B0(v9, v29, v30);
      if (v3)
      {
        break;
      }

      (*v24)(v9, v32);
      sub_1D7D30A5C();
      if (*&v21[v22] == v31[0])
      {
        return sub_1D7B49994(v21, sub_1D7B56F8C);
      }
    }

    (*v24)(v9, v32);
  }

  return sub_1D7B49994(v21, sub_1D7B56F8C);
}

void *sub_1D7B53E1C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, void, uint64_t, unint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  sub_1D7B554EC(0);
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v42 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = v39 - v14;
  sub_1D7A5FB54(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B5550C(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B48C(0);
  (*(*(v25 - 8) + 16))(v24, a1, v25);
  v44 = sub_1D7B50C54(v24);
  sub_1D7B49CE0(&v44, a2, a3, a4);
  sub_1D7B49994(v24, sub_1D7B5550C);
  v26 = v44;
  v27 = v44[2];
  if (v27)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C4AC(0, v27, 0);
    v28 = v44;
    v29 = v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v30 = *(v9 + 72);
    v39[1] = v26;
    v40 = v30;
    v31 = (v17 + 32);
    do
    {
      v32 = v41;
      sub_1D7B4C274(v29, v41, sub_1D7B554EC);
      v33 = v32;
      v34 = v42;
      sub_1D7B551E8(v33, v42, sub_1D7B554EC);
      v35 = *v31;
      (*v31)(v20, v34 + *(v43 + 48), v16);
      v44 = v28;
      v37 = v28[2];
      v36 = v28[3];
      if (v37 >= v36 >> 1)
      {
        sub_1D7A5C4AC((v36 > 1), v37 + 1, 1);
        v28 = v44;
      }

      v28[2] = v37 + 1;
      v35(v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37, v20, v16);
      v29 += v40;
      --v27;
    }

    while (v27);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v28;
}

uint64_t sub_1D7B541B0(uint64_t a1, uint64_t a2)
{
  v54[1] = a2;
  v66 = sub_1D7D2E8FC();
  v3 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v4);
  v65 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfRecipeLayoutModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v64 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = v54 - v11;
  sub_1D7A5FB54(0);
  v62 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v61 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7B53E1C(a1, sub_1D7B57374, sub_1D7B5731C, sub_1D7B5733C);
  v17 = v16[2];
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v54[0] = v16;
    v21 = v16 + v20;
    v55 = *(v18 + 56);
    v59 = (v3 + 32);
    v60 = v19;
    v57 = (v18 - 8);
    v58 = (v3 + 8);
    v22 = MEMORY[0x1E69E7CC0];
    v56 = v18;
    while (1)
    {
      v24 = v22;
      v26 = v61;
      v25 = v62;
      v60(v61, v21, v62);
      v27 = v63;
      sub_1D7D2ABBC();
      v28 = v64;
      sub_1D7B4C274(v27, v64, type metadata accessor for EndOfRecipeLayoutModel);
      v29 = v65;
      v30 = v66;
      (*v59)(v65, v28, v66);
      v31 = FeedItemLayoutAttributes.recipes.getter();
      (*v58)(v29, v30);
      sub_1D7B49994(v27, type metadata accessor for EndOfRecipeLayoutModel);
      v32 = v26;
      v22 = v24;
      result = (*v57)(v32, v25);
      v33 = *(v31 + 16);
      v34 = *(v24 + 16);
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_32;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v35 <= *(v24 + 24) >> 1)
      {
        if (*(v31 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v36 = v34 + v33;
        }

        else
        {
          v36 = v34;
        }

        result = sub_1D79E3BD4(result, v36, 1, v24);
        v22 = result;
        if (*(v31 + 16))
        {
LABEL_14:
          if ((*(v22 + 24) >> 1) - *(v22 + 16) < v33)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v33)
          {
            v37 = *(v22 + 16);
            v38 = __OFADD__(v37, v33);
            v39 = v37 + v33;
            if (v38)
            {
              goto LABEL_35;
            }

            *(v22 + 16) = v39;
          }

          goto LABEL_4;
        }
      }

      if (v33)
      {
        goto LABEL_33;
      }

LABEL_4:
      v21 += v55;
      if (!--v17)
      {

        goto LABEL_20;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v62 = *(v22 + 16);
  if (v62)
  {
    v40 = 0;
    v41 = (v22 + 80);
    v42 = MEMORY[0x1E69E7CC0];
    while (v40 < *(v22 + 16))
    {
      v44 = *(v41 - 6);
      v43 = *(v41 - 5);
      v45 = *(v41 - 4);
      v46 = *(v41 - 3);
      v47 = *(v41 - 2);
      v64 = *(v41 - 1);
      v48 = *v41;

      v63 = v45;

      result = swift_isUniquelyReferenced_nonNull_native();
      v66 = v44;
      v65 = v46;
      if ((result & 1) == 0)
      {
        result = sub_1D79E3BD4(0, *(v42 + 16) + 1, 1, v42);
        v42 = result;
      }

      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_1D79E3BD4((v49 > 1), v50 + 1, 1, v42);
        v42 = result;
      }

      ++v40;
      *(v42 + 16) = v50 + 1;
      v51 = (v42 + 56 * v50);
      v51[4] = v66;
      v51[5] = v43;
      v52 = v64;
      v53 = v65;
      v51[6] = v63;
      v51[7] = v53;
      v51[8] = v47;
      v51[9] = v52;
      v51[10] = v48;
      v41 += 7;
      if (v62 == v40)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return sub_1D79E2A68(v42);
  }

  return result;
}

uint64_t sub_1D7B546E8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  sub_1D7A2B48C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55348(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B55458(0);
  v16 = v15 - 8;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v18);
  sub_1D7B571FC(&unk_1EC9E53A0, sub_1D7B55348, MEMORY[0x1E69D7848]);
  sub_1D7D304FC();
  v21 = *(v16 + 44);
  sub_1D7B571FC(&qword_1EC9E5398, sub_1D7B55348, MEMORY[0x1E69D7850]);
  sub_1D7D30A5C();
  if (*&v20[v21] == v31[0])
  {
    return sub_1D7B49994(v20, sub_1D7B55458);
  }

  v22 = v5;
  v23 = v4;
  v24 = (v22 + 16);
  v25 = (v22 + 8);
  while (1)
  {
    v26 = sub_1D7D30AAC();
    (*v24)(v8);
    v26(v31, 0);
    sub_1D7D30A6C();
    v27 = v32;
    sub_1D7B541B0(v8, v30);
    if (v27)
    {
      break;
    }

    v32 = 0;
    (*v25)(v8, v23);
    sub_1D7D30A5C();
    if (*&v20[v21] == v31[0])
    {
      return sub_1D7B49994(v20, sub_1D7B55458);
    }
  }

  (*v25)(v8, v23);
  return sub_1D7B49994(v20, sub_1D7B55458);
}

uint64_t sub_1D7B54A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v20 = a2;
  sub_1D7B56CD0(0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v21 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[5] = a1;
  *(v5 + 24) = a1;
  v19[1] = a1;
  *v13 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();

  *(v5 + 16) = sub_1D7D28ECC();
  sub_1D7B56C18(0);
  sub_1D7B571FC(&unk_1EE0BFE58, sub_1D7B56C18, MEMORY[0x1E69D7EB0]);
  sub_1D7D2B76C();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a3;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(v24, v24[3]);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1D7D2B76C();

  v17 = v21;
  sub_1D7D28EDC();

  sub_1D7B44FF8(v17, sub_1D7B51E08, v13);

  (*(v22 + 8))(v17, v23);
  sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
  sub_1D7D28F1C();
  sub_1D7B49994(v13, type metadata accessor for ArticleViewerBlueprint);
  return v5;
}

uint64_t sub_1D7B54DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v20 = a2;
  sub_1D7B55348(0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v21 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[5] = a1;
  *(v5 + 24) = a1;
  v19[1] = a1;
  *v13 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();

  *(v5 + 16) = sub_1D7D28ECC();
  sub_1D7B348D0(0);
  sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0, MEMORY[0x1E69D7EB0]);
  sub_1D7D2B76C();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a3;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(v24, v24[3]);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1D7D2B76C();

  v17 = v21;
  sub_1D7D28EDC();

  sub_1D7B44FF8(v17, sub_1D7B52EC4, v13);

  (*(v22 + 8))(v17, v23);
  sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
  sub_1D7D28F1C();
  sub_1D7B49994(v13, type metadata accessor for ArticleViewerBlueprint);
  return v5;
}

void sub_1D7B55180(uint64_t a1)
{
  if (!qword_1EE0C3900)
  {
    sub_1D798F168(255, &unk_1EE0CCE80, &protocol descriptor for AlertOpenBlockedStoryFactoryType);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C3900);
    }
  }
}

uint64_t sub_1D7B551E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7B55250(uint64_t a1)
{
  if (!qword_1EC9E5360)
  {
    sub_1D798F168(255, &qword_1EC9E77A0, MEMORY[0x1E69D87E0]);
    type metadata accessor for ArticleRouteModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5360);
    }
  }
}

uint64_t sub_1D7B552D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D7B55368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfRecipeLayoutSectionDescriptor;
    v8[1] = type metadata accessor for EndOfRecipeLayoutModel(255);
    v8[2] = sub_1D7A2B544();
    v8[3] = sub_1D7B571FC(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel, &unk_1D7D4F0E8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7B55458(uint64_t a1)
{
  if (!qword_1EC9E5390)
  {
    sub_1D7B55348(255);
    sub_1D7B571FC(&qword_1EC9E5398, sub_1D7B55348, MEMORY[0x1E69D7850]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5390);
    }
  }
}

void sub_1D7B5550C(uint64_t a1)
{
  if (!qword_1EC9E53B8)
  {
    sub_1D7A2B48C(255);
    sub_1D7B571FC(&qword_1EC9E53C0, sub_1D7A2B48C, MEMORY[0x1E69D7DC8]);
    v1 = sub_1D7D3165C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E53B8);
    }
  }
}

void sub_1D7B555A0(uint64_t a1)
{
  if (!qword_1EC9E53C8)
  {
    sub_1D7A2B48C(255);
    sub_1D7B571FC(&qword_1EC9E53C0, sub_1D7A2B48C, MEMORY[0x1E69D7DC8]);
    v1 = sub_1D7D3164C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E53C8);
    }
  }
}

void sub_1D7B55634(uint64_t a1)
{
  if (!qword_1EC9E53D0)
  {
    sub_1D7A2B48C(255);
    sub_1D7B571FC(&qword_1EC9E53D8, sub_1D7A2B48C, MEMORY[0x1E69D7DD0]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E53D0);
    }
  }
}

void sub_1D7B556FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7B348D0(255);
    v11[0] = v8;
    v11[1] = sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0, MEMORY[0x1E69D7EB0]);
    v11[2] = a3;
    v11[3] = sub_1D7B571FC(&unk_1EC9E5350, type metadata accessor for EndOfRecipeLayoutModel, &unk_1D7D4F210);
    v11[4] = sub_1D7B571FC(&qword_1EC9E5108, type metadata accessor for EndOfRecipeLayoutModel, &unk_1D7D4F1E8);
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7B55820(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D7B5587C()
{
  result = qword_1EC9E53F8;
  if (!qword_1EC9E53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E53F8);
  }

  return result;
}

uint64_t sub_1D7B55900(uint64_t a1)
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
  v10[1] = sub_1D7A4E2D8;

  return sub_1D7B4688C(a1, v4, v5, v6, v7, v9, v8);
}

double sub_1D7B559D4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = off_1F52A5F58[0];
      type metadata accessor for EndOfRecipeViewController();
      v1();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D7B55A88(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 80);
  (*(v3 + 48))(a1, a2, v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_1D7B558E0(0);
  sub_1D7B571FC(&unk_1EC9E5410, sub_1D7B558E0, MEMORY[0x1E69D7A50]);

  sub_1D7D2A70C();

  return result;
}

void sub_1D7B55BFC(uint64_t a1)
{
  sub_1D7B57244(0, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v14 - v4);
  v6 = type metadata accessor for EndOfRecipeRouteModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D3001C();
  sub_1D7B489FC(a1, v11, v12, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D7B4C198(v5, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel);
  }

  else
  {
    sub_1D7B551E8(v5, v10, type metadata accessor for EndOfRecipeRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_1D7B5A104(v10);
      sub_1D7B49994(v10, type metadata accessor for EndOfRecipeRouteModel);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7B49994(v10, type metadata accessor for EndOfRecipeRouteModel);
    }
  }
}

uint64_t sub_1D7B55E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7B57244(0, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v18 - v8);
  v10 = type metadata accessor for EndOfRecipeRouteModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B489FC(a1, a2, a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D7B4C198(v9, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel);
  }

  else
  {
    sub_1D7B551E8(v9, v14, type metadata accessor for EndOfRecipeRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v16 = sub_1D7B5A44C(v14);
      sub_1D7B49994(v14, type metadata accessor for EndOfRecipeRouteModel);
      swift_unknownObjectRelease();
      return v16;
    }

    sub_1D7B49994(v14, type metadata accessor for EndOfRecipeRouteModel);
  }

  return 0;
}

void sub_1D7B56050(uint64_t a1)
{
  if (!qword_1EE0BB340)
  {
    sub_1D7D2EF0C();
    sub_1D7B571FC(&qword_1EE0BB1A8, MEMORY[0x1E69B60A0], MEMORY[0x1E69B6090]);
    v1 = sub_1D7D29F0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BB340);
    }
  }
}

void sub_1D7B560E4(uint64_t a1)
{
  if (!qword_1EC9E5420)
  {
    v4[0] = type metadata accessor for EndOfRecipeSectionDescriptor(255);
    v4[1] = type metadata accessor for EndOfRecipeModel(255);
    v4[2] = &type metadata for EndOfRecipeLayoutSectionDescriptor;
    v4[3] = type metadata accessor for EndOfRecipeLayoutModel(255);
    v4[4] = sub_1D7B571FC(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor, &protocol conformance descriptor for EndOfRecipeSectionDescriptor);
    v4[5] = sub_1D7B571FC(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel, &protocol conformance descriptor for EndOfRecipeModel);
    v4[6] = sub_1D7A2B544();
    v4[7] = sub_1D7B571FC(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel, &unk_1D7D4F0E8);
    v2 = type metadata accessor for BlueprintRecipeViewerTokenState(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC9E5420);
    }
  }
}

uint64_t sub_1D7B5623C(uint64_t a1, uint64_t a2)
{
  sub_1D7B560E4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7B562A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_1D7B56334(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  sub_1D7B57244(0, &qword_1EC9E5430, sub_1D7A060E8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - v5;
  sub_1D7A060E8(0);
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  sub_1D7D2A6EC();
  v28 = v29;
  sub_1D7996944(0);
  sub_1D7B571FC(&qword_1EC9E4F68, sub_1D7996944, MEMORY[0x1E69D7A78]);
  sub_1D7D2AEEC();

  v17 = v27;
  sub_1D7D2C75C();
  if ((*(v17 + 48))(v6, 1, v8) == 1)
  {
    (*(v13 + 8))(v16, v12);
    sub_1D7B4C198(v6, &qword_1EC9E5430, sub_1D7A060E8);
  }

  else
  {
    v19 = v25;
    (*(v17 + 32))(v25, v6, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = v19;
    if (Strong)
    {
      if (*(Strong + 88))
      {
        v22 = *(Strong + 96);
        ObjectType = swift_getObjectType();
        (*(v22 + 40))(v21, v16, v24, ObjectType, v22);
      }

      (*(v17 + 8))(v21, v8);
      (*(v13 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v17 + 8))(v19, v8);
      (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

double sub_1D7B56700(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  sub_1D7B57244(0, &qword_1EC9E5430, sub_1D7A060E8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - v6;
  sub_1D7A060E8(0);
  v9 = v8;
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 48);
  v29 = v2;
  sub_1D7D2A6EC();
  v31 = v32;
  sub_1D7996944(0);
  sub_1D7B571FC(&qword_1EC9E4F68, sub_1D7996944, MEMORY[0x1E69D7A78]);
  sub_1D7D2AEEC();

  if (v18)
  {
    v19 = v14;
    sub_1D7D2C75C();
    v20 = v30;
    if ((*(v30 + 48))(v7, 1, v9) == 1)
    {
      (*(v19 + 8))(v17, v13);
      sub_1D7B4C198(v7, &qword_1EC9E5430, sub_1D7A060E8);
    }

    else
    {
      v22 = v28;
      (*(v20 + 32))(v28, v7, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = v19;
        if (*(Strong + 88))
        {
          v25 = *(Strong + 96);
          ObjectType = swift_getObjectType();
          (*(v25 + 48))(v22, v17, v27, ObjectType, v25);
        }

        (*(v20 + 8))(v22, v9);
        (*(v24 + 8))(v17, v13);
        swift_unknownObjectRelease();
      }

      else
      {
        (*(v20 + 8))(v22, v9);
        (*(v19 + 8))(v17, v13);
      }
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  return result;
}

void sub_1D7B56AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7B56C18(255);
    v9[0] = v6;
    v9[1] = sub_1D7B571FC(&unk_1EE0BFE58, sub_1D7B56C18, MEMORY[0x1E69D7EB0]);
    v9[2] = &protocol witness table for EndOfArticleLayoutModel;
    v9[3] = sub_1D7B571FC(&qword_1EE0C7080, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v9[4] = sub_1D7B571FC(&unk_1EE0C7050, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D7B56C18(uint64_t a1)
{
  if (!qword_1EE0BFE50)
  {
    type metadata accessor for EndOfArticleLayoutModel(255);
    sub_1D7A6015C();
    sub_1D7B571FC(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v1 = sub_1D7D2B28C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BFE50);
    }
  }
}

void sub_1D7B56CD0(uint64_t a1)
{
  if (!qword_1EE0C0080)
  {
    type metadata accessor for EndOfArticleLayoutModel(255);
    sub_1D7A6015C();
    sub_1D7B571FC(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v1 = sub_1D7D2A23C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0080);
    }
  }
}

uint64_t objectdestroy_3Tm_2()
{

  sub_1D79DA510(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_1D7D2EB7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7B56EF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, char *))
{
  v4 = *(sub_1D7D2EB7C() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[10];
  v9 = v2 + ((*(v4 + 80) + 88) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v2 + 5, v8, v9);
}

void sub_1D7B56F8C(uint64_t a1)
{
  if (!qword_1EC9E5448)
  {
    sub_1D7B56CD0(255);
    sub_1D7B571FC(&qword_1EC9E5450, sub_1D7B56CD0, MEMORY[0x1E69D7850]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5448);
    }
  }
}

void sub_1D7B57040(uint64_t a1)
{
  if (!qword_1EC9E5460)
  {
    sub_1D7A600A4(255);
    sub_1D7B571FC(&qword_1EC9E5468, sub_1D7A600A4, MEMORY[0x1E69D7DC8]);
    v1 = sub_1D7D3165C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5460);
    }
  }
}

void sub_1D7B570D4(uint64_t a1)
{
  if (!qword_1EC9E5470)
  {
    sub_1D7A600A4(255);
    sub_1D7B571FC(&qword_1EC9E5468, sub_1D7A600A4, MEMORY[0x1E69D7DC8]);
    v1 = sub_1D7D3164C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5470);
    }
  }
}

void sub_1D7B57168(uint64_t a1)
{
  if (!qword_1EC9E5478)
  {
    sub_1D7A600A4(255);
    sub_1D7B571FC(&qword_1EC9E5480, sub_1D7A600A4, MEMORY[0x1E69D7DD0]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5478);
    }
  }
}

uint64_t sub_1D7B571FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D7B57244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7B57390()
{
  sub_1D7D2E5EC();
  sub_1D7D2E5DC();
  sub_1D7994954(0, &qword_1EC9E2710, MEMORY[0x1E69D87F8]);
  sub_1D7D2C7DC();
  if (v3)
  {
    sub_1D7D2DEEC();
    swift_dynamicCast();
  }

  else
  {
    sub_1D7B579F8(v2, sub_1D79F0070);
  }

  type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  sub_1D79970C4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig, &unk_1D7D5E9C0);
  v0 = sub_1D7D2E5CC();

  return v0;
}

uint64_t sub_1D7B574D0()
{
  v33 = type metadata accessor for EndOfRecipeModel(0);
  MEMORY[0x1EEE9AC00](v33, v0);
  v2 = (&v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A060E8(0);
  v4 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57964(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A06270(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  sub_1D7994954(0, &qword_1EC9E26F0, MEMORY[0x1E69D7980]);
  sub_1D7D2A45C();
  v35 = MEMORY[0x1E69E7CC0];
  v30 = v22;
  v31 = v15;
  (*(v15 + 16))(v18, v22, v14);
  sub_1D79970C4(&qword_1EC9E5490, sub_1D7A06270, MEMORY[0x1E69D6620]);
  sub_1D7D304FC();
  v23 = *(v9 + 44);
  sub_1D79970C4(&qword_1EC9E2030, sub_1D7A06270, MEMORY[0x1E69D6628]);
  sub_1D7D30A5C();
  v24 = MEMORY[0x1E69E7CC0];
  if (*&v12[v23] != v34[0])
  {
    v25 = (v32 + 16);
    v26 = (v32 + 8);
    do
    {
      v32 = v24;
      while (1)
      {
        v27 = sub_1D7D30AAC();
        (*v25)(v7);
        v27(v34, 0);
        sub_1D7D30A6C();
        sub_1D7D29EEC();
        (*v26)(v7, v4);
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_1D7B579F8(v2, type metadata accessor for EndOfRecipeModel);
        sub_1D7D30A5C();
        if (*&v12[v23] == v34[0])
        {
          v24 = v32;
          goto LABEL_10;
        }
      }

      v32 = *v2;
      MEMORY[0x1DA70E080]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
      v32 = v35;
      sub_1D7D30A5C();
      v24 = v32;
    }

    while (*&v12[v23] != v34[0]);
  }

LABEL_10:
  sub_1D7B579F8(v12, sub_1D7B57964);
  (*(v31 + 8))(v30, v14);
  return v24;
}

void sub_1D7B57964(uint64_t a1)
{
  if (!qword_1EC9E5488)
  {
    sub_1D7A06270(255);
    sub_1D79970C4(&qword_1EC9E2030, sub_1D7A06270, MEMORY[0x1E69D6628]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5488);
    }
  }
}

uint64_t sub_1D7B579F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B57A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D7A4E2D8;

  return sub_1D7B57B08(a1, a3);
}

uint64_t sub_1D7B57B08(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  v4 = sub_1D7D2E3FC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedContentConfig(0);
  v3[11] = swift_task_alloc();
  sub_1D7B58B28(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[12] = swift_task_alloc();
  v5 = sub_1D7D2824C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedConfigFetchResult(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7B57D28, 0, 0);
}

uint64_t sub_1D7B57D28()
{
  v0[20] = [*(v0[6] + 32) appConfiguration];
  if (qword_1EC9DFEA8 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2860C())
  {
    if (qword_1EC9DFEA0 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[12];
    sub_1D7995410(&qword_1EC9E54A8, v1, type metadata accessor for EndOfRecipeFeedServiceConfigFetcher, &unk_1D7D4FCF0);
    sub_1D7D285AC();
    sub_1D7D2823C();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_1D79A8AB4(v0[12]);
      sub_1D7B58CBC();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();

      v6 = v0[1];

      return v6();
    }

    else
    {
      v11 = v0[6];
      (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
      __swift_project_boxed_opaque_existential_1((v11 + 40), *(v11 + 64));
      v12 = swift_task_alloc();
      v0[21] = v12;
      *v12 = v0;
      v12[1] = sub_1D7B58098;
      v13 = v0[18];
      v14 = v0[15];

      return sub_1D7A7A664(v13, v14);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + 40), *(v0[6] + 64));
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_1D7B58500;
    v9 = v0[17];
    v10 = v0[5];

    return sub_1D7A79918(v9, v10);
  }
}

uint64_t sub_1D7B58098()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D7B58414;
  }

  else
  {
    v2 = sub_1D7B581AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7B581AC()
{
  v1 = v0[18];
  v2 = v0[19];
  (*(v0[14] + 8))(v0[15], v0[13]);
  sub_1D7B58B8C(v1, v2, type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  v16 = v0[20];
  v17 = v0[19];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v15 = v0[6];
  v9 = v0[4];
  sub_1D7B58BF4(v17, v3, type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  sub_1D7B58B8C(v3, v4, type metadata accessor for EndOfRecipeFeedContentConfig);
  (*(v5 + 104))(v6, *MEMORY[0x1E69B5A80], v7);
  v10 = type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  sub_1D799CC84(v15 + 80, &v9[v10[9]]);
  *v9 = v8;
  sub_1D7B58BF4(v4, &v9[v10[5]], type metadata accessor for EndOfRecipeFeedContentConfig);
  *&v9[v10[6]] = v16;
  (*(v5 + 16))(&v9[v10[7]], v6, v7);
  v11 = v8;
  v12 = [v16 autoRefreshMinimumInterval];
  (*(v5 + 8))(v6, v7);
  sub_1D7B58C5C(v4, type metadata accessor for EndOfRecipeFeedContentConfig);
  sub_1D7B58C5C(v17, type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  *&v9[v10[8]] = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D7B58414()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D7B58500()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D7B58860;
  }

  else
  {
    v2 = sub_1D7B58614;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7B58614()
{
  sub_1D7B58B8C(v0[17], v0[19], type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  v14 = v0[20];
  v15 = v0[19];
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v7 = v0[4];
  sub_1D7B58BF4(v15, v1, type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  sub_1D7B58B8C(v1, v2, type metadata accessor for EndOfRecipeFeedContentConfig);
  (*(v3 + 104))(v4, *MEMORY[0x1E69B5A80], v5);
  v8 = type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  sub_1D799CC84(v13 + 80, &v7[v8[9]]);
  *v7 = v6;
  sub_1D7B58BF4(v2, &v7[v8[5]], type metadata accessor for EndOfRecipeFeedContentConfig);
  *&v7[v8[6]] = v14;
  (*(v3 + 16))(&v7[v8[7]], v4, v5);
  v9 = v6;
  v10 = [v14 autoRefreshMinimumInterval];
  (*(v3 + 8))(v4, v5);
  sub_1D7B58C5C(v2, type metadata accessor for EndOfRecipeFeedContentConfig);
  sub_1D7B58C5C(v15, type metadata accessor for EndOfRecipeFeedConfigFetchResult);
  *&v7[v8[8]] = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D7B58860()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7B5892C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B58980(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  sub_1D7B58B28(0, &unk_1EC9E5498, type metadata accessor for EndOfRecipeFeedServiceConfig, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = v2;
  return sub_1D7D2938C();
}

uint64_t sub_1D7B58A7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D7A4E2D8;

  return sub_1D7B57A58(a1, v5, v4);
}

void sub_1D7B58B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B58B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B58BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B58C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7B58CBC()
{
  result = qword_1EC9E54B0;
  if (!qword_1EC9E54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E54B0);
  }

  return result;
}

unint64_t sub_1D7B58D24()
{
  result = qword_1EC9E54B8;
  if (!qword_1EC9E54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E54B8);
  }

  return result;
}

uint64_t sub_1D7B58E2C(uint64_t a1)
{
  sub_1D799CC84(*v1 + 16, &v7);
  v6[0] = 0x6D726177657250;
  v6[1] = 0xE700000000000000;
  v6[2] = a1;
  sub_1D7B58FD4(v6, &v5);
  sub_1D7B558E0(0);
  swift_allocObject();
  sub_1D7B59030();

  v3 = sub_1D7D2A69C();
  sub_1D7B59084(v6);
  return v3;
}

uint64_t sub_1D7B58EE4(uint64_t a1, uint64_t a2)
{
  sub_1D7B558E0(0);
  swift_allocObject();
  sub_1D7A06464();

  return sub_1D7D2A69C();
}

uint64_t sub_1D7B58F64(uint64_t a1)
{
  sub_1D7B558E0(0);
  swift_allocObject();
  sub_1D7AAF930();

  return sub_1D7D2A69C();
}

unint64_t sub_1D7B59030()
{
  result = qword_1EC9E54C0;
  if (!qword_1EC9E54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E54C0);
  }

  return result;
}

uint64_t sub_1D7B590D8(uint64_t a1)
{
  v23 = a1;
  v24 = sub_1D7D2B54C();
  v2 = *(v24 - 8);
  v4 = MEMORY[0x1EEE9AC00](v24, v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B593BC(0, v4);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndOfRecipeRouteModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 40);
  v22 = v1;
  ObjectType = swift_getObjectType();
  sub_1D7D2B53C();
  (*(v16 + 56))(v23, v6, ObjectType, v16);
  (*(v2 + 8))(v6, v24);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D7B59478(v10, sub_1D7B593BC);
    return 0;
  }

  else
  {
    sub_1D7B59414(v10, v15, v18);
    __swift_project_boxed_opaque_existential_1((v22 + 48), *(v22 + 72));
    v20 = sub_1D7B5A44C(v15);
    sub_1D7B59478(v15, type metadata accessor for EndOfRecipeRouteModel);
    return v20;
  }
}

uint64_t sub_1D7B59348()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7B593BC(uint64_t a1, double a2)
{
  if (!qword_1EC9E5400)
  {
    type metadata accessor for EndOfRecipeRouteModel(255);
    v2 = sub_1D7D3130C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC9E5400);
    }
  }
}

uint64_t sub_1D7B59414(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for EndOfRecipeRouteModel(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B59478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsArticles::RecipeSession::PageEvent_optional __swiftcall RecipeSession.PageEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RecipeSession.PageEvent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x6E6769736572;
  v4 = 0x656D75736572;
  if (v1 != 3)
  {
    v4 = 0x6C65636E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6581861;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7B595C4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7B59690(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7B59748(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7B5981C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0x6E6769736572;
  v6 = 0x656D75736572;
  if (v2 != 3)
  {
    v6 = 0x6C65636E6163;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RecipeSession.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeSession.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSession(0) + 20);
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RecipeSession(uint64_t a1)
{
  result = qword_1EE0BDC98;
  if (!qword_1EE0BDC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecipeSession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeSession(0) + 24);

  return sub_1D7AE1250(v3, a1);
}

uint64_t RecipeSession.trigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeSession(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

void RecipeSession.duration.getter()
{
  sub_1D7A86838(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2833C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeSession(0);
  sub_1D7AE1250(v0 + *(v10 + 24), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D7AE148C(v4);
    sub_1D7D282FC();
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_1D7D282AC();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t RecipeSessionTrigger.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_1D7D3145C();

      v3 = 0xE500000000000000;
      strcpy(v19, "swipe-(event: ");
      HIBYTE(v19[1]) = -18;
      v4 = 0x6E6769736572;
      v5 = 0x656D75736572;
      if (v1 != 3)
      {
        v5 = 0x6C65636E6163;
      }

      if (v1 != 2)
      {
        v4 = v5;
      }

      v6 = 6581861;
      if (v1)
      {
        v3 = 0xE300000000000000;
      }

      else
      {
        v6 = 0x7472617473;
      }

      if (v1 <= 1)
      {
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (v1 <= 1)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0xE600000000000000;
      }

      MEMORY[0x1DA70DE90](v7, v8);

      return v19[0];
    }

    v9 = v1 & 0x3F;
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1D7D3145C();

    v10 = 0x80000001D7D74240;
    v11 = 0xD000000000000013;
LABEL_20:
    v19[0] = v11;
    v19[1] = v10;
    v12 = 0xE500000000000000;
    v13 = 0x6E6769736572;
    v14 = 0x656D75736572;
    if (v9 != 3)
    {
      v14 = 0x6C65636E6163;
    }

    if (v9 != 2)
    {
      v13 = v14;
    }

    v15 = 6581861;
    if (v9)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v15 = 0x7472617473;
    }

    if (v9 <= 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v9 <= 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    MEMORY[0x1DA70DE90](v16, v17);

    MEMORY[0x1DA70DE90](41, 0xE100000000000000);
    return v19[0];
  }

  if (v2 == 2)
  {
    v9 = v1 & 0x3F;
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1D7D3145C();

    v10 = 0x80000001D7D74220;
    v11 = 0xD000000000000014;
    goto LABEL_20;
  }

  return 0x6E776F6E6B6E75;
}

unint64_t sub_1D7B59E10()
{
  result = qword_1EC9E54C8;
  if (!qword_1EC9E54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E54C8);
  }

  return result;
}

void sub_1D7B59E90(uint64_t a1)
{
  sub_1D7D2833C();
  if (v1 <= 0x3F)
  {
    sub_1D7A86838(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for RecipeSessionTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for RecipeSessionTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D7B5A098(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1D7B5A0C4(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t sub_1D7B5A104(uint64_t a1)
{
  v3 = sub_1D7D2B54C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for RouteModel(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for EndOfRecipeRouteModel(0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7B5A75C(a1, v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v18 = *v16;
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v1[12];
      v20 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v19);
      *v11 = v18;
      swift_storeEnumTagMultiPayload();

      sub_1D7D2B53C();
      (*(v20 + 16))(v11, v7, v1[8], v19, v20);
    }

    else
    {

      v26 = v1[12];
      v27 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v26);
      *v11 = v18;
      swift_storeEnumTagMultiPayload();
      swift_unknownObjectRetain();
      sub_1D7D2B53C();
      (*(v27 + 16))(v11, v7, v1[8], v26, v27);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D7B5A7C0(0);
    v22 = *(v21 + 48);
    sub_1D7B5A834(v16, v11);
    (*(v4 + 32))(v7, &v16[v22], v3);
    v23 = v1[12];
    v24 = v1[13];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v23);
    v25 = v1[8];
    sub_1D799CC84((v1 + 14), v30);
    (*(v24 + 32))(v11, v7, v25, v30, v23, v24);
    sub_1D7B5A898(v30, sub_1D7B5A8F8);
  }

  (*(v4 + 8))(v7, v3);
  return sub_1D7B5A898(v11, type metadata accessor for RouteModel);
}

uint64_t sub_1D7B5A44C(uint64_t a1)
{
  v3 = type metadata accessor for RouteModel(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for EndOfRecipeRouteModel(0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B5A75C(a1, v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = v1[12];
      v15 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v14);
      *v6 = v13;
      swift_storeEnumTagMultiPayload();
      v16 = v1[8];
      v17 = *(v15 + 40);

      v18 = v17(v6, v16, v14, v15);
    }

    else
    {
      v24 = *v11;

      v25 = v1[12];
      v26 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v25);
      *v6 = v24;
      swift_storeEnumTagMultiPayload();
      v27 = v1[8];
      v28 = *(v26 + 40);
      swift_unknownObjectRetain();
      v18 = v28(v6, v27, v25, v26);
      swift_unknownObjectRelease();
    }

    sub_1D7B5A898(v6, type metadata accessor for RouteModel);
  }

  else
  {
    sub_1D7B5A7C0(0);
    v20 = *(v19 + 48);
    sub_1D7B5A834(v11, v6);
    v21 = v1[12];
    v22 = v1[13];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v21);
    v18 = RouterType.preview(for:)(v6, v21, v22);
    sub_1D7B5A898(v6, type metadata accessor for RouteModel);
    v23 = sub_1D7D2B54C();
    (*(*(v23 - 8) + 8))(&v11[v20], v23);
  }

  return v18;
}

uint64_t sub_1D7B5A6E0()
{
  MEMORY[0x1DA7103D0](v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B5A75C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for EndOfRecipeRouteModel(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7B5A7C0(uint64_t a1)
{
  if (!qword_1EC9E5320)
  {
    type metadata accessor for RouteModel(255);
    sub_1D7D2B54C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5320);
    }
  }
}

uint64_t sub_1D7B5A834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B5A898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B5A8F8(uint64_t a1)
{
  if (!qword_1EE0BFAE0)
  {
    sub_1D7B5A950();
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BFAE0);
    }
  }
}

unint64_t sub_1D7B5A950()
{
  result = qword_1EE0CBDD0;
  if (!qword_1EE0CBDD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBDD0);
  }

  return result;
}

void *sub_1D7B5A9B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D7B5AAD0();
  result = sub_1D7D28D2C();
  if (v9)
  {
    sub_1D799D69C(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 8))(v2, v3, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7B5AAD0()
{
  result = qword_1EE0CE8B8[0];
  if (!qword_1EE0CE8B8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0CE8B8);
  }

  return result;
}

id sub_1D7B5AC54(void *a1)
{
  v33 = a1;
  v36 = sub_1D7D2FCAC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2FCCC();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2EEBC();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D7D2FE1C();
  v35 = *(v38 - 8);
  v14 = MEMORY[0x1EEE9AC00](v38, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_issue);
  v18 = v17;
  if (v17 || (v27 = *(v1 + OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_headline), ([v27 respondsToSelector_] & 1) != 0) && (v18 = objc_msgSend(v27, sel_parentIssue)) != 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_issueCoverLayoutAttributesFactory), *(v1 + OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_issueCoverLayoutAttributesFactory + 24));
    v30 = v5;
    v19 = v17;
    sub_1D7D3111C();
    [v33 boundingWidth];
    *v4 = v20;
    (*(v34 + 104))(v4, *MEMORY[0x1E69B66C0], v36);
    sub_1D7D2FCBC();
    sub_1D7D300DC();
    (*(v37 + 8))(v8, v30);
    (*(v31 + 8))(v12, v32);
    sub_1D7D2FDFC();
    v25 = [objc_allocWithZone(MEMORY[0x1E69CE060]) initWithFrame_];

    (*(v35 + 8))(v16, v38);
    return v25;
  }

  else
  {
    v28 = objc_allocWithZone(MEMORY[0x1E69CE060]);

    return [v28 initWithFrame_];
  }
}

void sub_1D7B5B084(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v7 = sub_1D7D2AC3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v99 - v14;
  sub_1D7B5C2C4(0);
  v17 = v16;
  v18 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v19);
  v110 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ArticlePageColorPalette(0);
  MEMORY[0x1EEE9AC00](v109, v21);
  v23 = (&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    v106 = v18;
    v107 = v17;
    v108 = v7;
    if (a2)
    {
      v26 = a2;
      v25 = [objc_msgSend(v26 sourceChannel)];

      swift_unknownObjectRelease();
      if (v25)
      {
        goto LABEL_7;
      }
    }

LABEL_12:

    sub_1D7D2ACBC();
    return;
  }

  v24 = [swift_unknownObjectRetain() sourceChannel];
  if (!v24)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v106 = v18;
  v107 = v17;
  v108 = v7;
  v25 = [v24 theme];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_7:
  v104 = v11;
  v27 = objc_opt_self();
  swift_unknownObjectRetain();
  v28 = [v27 mainBundle];
  v29 = [v28 bundleIdentifier];

  if (v29)
  {
    v30 = sub_1D7D3034C();
    v32 = v31;

    if (v30 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v32)
    {

      goto LABEL_16;
    }

    v33 = sub_1D7D3197C();

    if (v33)
    {
LABEL_16:
      v34 = [objc_opt_self() currentDevice];
      v35 = [v34 userInterfaceIdiom];

      if (!v35)
      {
        sub_1D7B5BC60(a4);
        swift_unknownObjectRelease_n();
        return;
      }
    }
  }

  v103 = v8;
  v105 = a4;
  swift_unknownObjectRelease();
  v36 = swift_allocObject();
  *(v36 + 16) = v25;
  v37 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v116 = sub_1D7B5C31C;
  v117 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v113 = 1107296256;
  v114 = sub_1D7B5C448;
  v115 = &block_descriptor_22;
  v38 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v39 = [v37 initWithDynamicProvider_];
  _Block_release(v38);

  v40 = objc_opt_self();
  v41 = [v40 whiteColor];
  v101 = v39;
  v42 = [v39 _isSimilarToColor_withinPercentage_];

  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  v44 = sub_1D7D2DB0C();
  v102 = v15;
  if (v44)
  {
    v46 = v111[5];
    v45 = v111[6];
    v47 = __swift_project_boxed_opaque_existential_1(v111 + 2, v46);
    v48 = *(v46 - 8);
    v49 = MEMORY[0x1EEE9AC00](v47, v47);
    v51 = v43;
    v52 = &v99 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v52, v49);
    (*(v45 + 16))(v46, v45);
    (*(v48 + 8))(v52, v46);
    v53 = v110;
    v55 = v106;
    v54 = v107;
    (v106[2])(v110, v23 + *(v109 + 28), v107);
    sub_1D7B5C4C8(v23);
    sub_1D7D29DEC();
    (v55)[1](v53, v54);
    v56 = aBlock;
    v111 = v51;
    v57 = sub_1D7B5C324(v51, v25);
    v58 = v101;
    if ([v57 _isSimilarToColor_withinPercentage_])
    {
      v59 = &selRef_blackColor;
      if (!v42)
      {
        v59 = &selRef_whiteColor;
      }

      v60 = [v40 *v59];

      v57 = v60;
    }

    v61 = v104;
    v62 = v103;
    v63 = [v40 clearColor];
    v64 = v102;
    *v102 = v63;
    v64[1] = v57;
    *(v64 + 16) = 1;
    v64[3] = 0;
    v65 = v62[13];
    v66 = v108;
    v65(v64, *MEMORY[0x1E69D7C50], v108);
    *v61 = xmmword_1D7D50230;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v65(v61, *MEMORY[0x1E69D7C40], v66);
    v67 = v57;
    MEMORY[0x1DA7086C0](v64, v61, v56, v56, 0, 0, v111, 0);
  }

  else
  {
    v68 = [v40 secondarySystemFillColor];
    v69 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v100 = [v68 resolvedColorWithTraitCollection_];

    v70 = v111[5];
    v71 = v111[6];
    v72 = __swift_project_boxed_opaque_existential_1(v111 + 2, v70);
    v73 = *(v70 - 8);
    v74 = MEMORY[0x1EEE9AC00](v72, v72);
    v76 = &v99 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v76, v74);
    (*(v71 + 16))(v70, v71);
    (*(v73 + 8))(v76, v70);
    v77 = v110;
    v79 = v106;
    v78 = v107;
    (v106[2])(v110, v23 + *(v109 + 28), v107);
    sub_1D7B5C4C8(v23);
    v80 = v101;
    sub_1D7D29DFC();
    (v79)[1](v77, v78);
    v110 = aBlock;
    v81 = swift_allocObject();
    *(v81 + 16) = v25;
    *(v81 + 24) = v80;
    v82 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v116 = sub_1D7B5C524;
    v117 = v81;
    aBlock = MEMORY[0x1E69E9820];
    v113 = 1107296256;
    v114 = sub_1D7B5C448;
    v115 = &block_descriptor_8;
    v83 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v84 = v80;
    v107 = v84;
    v85 = [v82 initWithDynamicProvider_];
    _Block_release(v83);

    *v15 = v84;
    *(v15 + 1) = v85;
    v15[16] = 1;
    v86 = v15;
    v87 = v100;
    *(v86 + 3) = v100;
    v109 = v103[13];
    (v109)();
    v89 = v111[5];
    v88 = v111[6];
    v90 = __swift_project_boxed_opaque_existential_1(v111 + 2, v89);
    v103 = &v99;
    v91 = *(v89 - 8);
    v92 = MEMORY[0x1EEE9AC00](v90, v90);
    v94 = &v99 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v91 + 16))(v94, v92);
    v111 = v25;
    v95 = *(v88 + 16);
    v107 = v107;
    v106 = v85;
    v96 = v87;
    v95(v89, v88);
    (*(v91 + 8))(v94, v89);
    v97 = v23[2];
    sub_1D7B5C4C8(v23);
    v98 = v104;
    *v104 = xmmword_1D7D50230;
    *(v98 + 2) = v97;
    *(v98 + 3) = 0;
    (v109)(v98, *MEMORY[0x1E69D7C40], v108);
    MEMORY[0x1DA7086D0](v102, v98, v110, v110, 0, 0);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D7B5BC60@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_1D7D2AC3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v19 - v8;
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  v12 = [v10 whiteColor];
  v13 = [v10 secondarySystemFillColor];
  v14 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v15 = [v13 resolvedColorWithTraitCollection_];

  *v9 = v11;
  *(v9 + 1) = v12;
  v9[16] = 1;
  *(v9 + 3) = v15;
  v16 = *(v2 + 104);
  v16(v9, *MEMORY[0x1E69D7C50], v1);
  v17 = [v10 whiteColor];
  *v5 = xmmword_1D7D50230;
  *(v5 + 2) = v17;
  *(v5 + 3) = 0;
  v16(v5, *MEMORY[0x1E69D7C40], v1);
  return MEMORY[0x1DA7086D0](v9, v5, 1, 1, 0, 0);
}

id sub_1D7B5BE8C(void *a1, void *a2)
{
  v3 = [a1 userInterfaceStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      result = sub_1D7D3160C();
      __break(1u);
      return result;
    }

    v8 = [objc_opt_self() blackColor];
  }

  else
  {
    v4 = [a2 backgroundColor];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 ne_color];

      return v6;
    }

    v8 = [objc_opt_self() whiteColor];
  }

  return v8;
}

id sub_1D7B5BFB4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1D7B5C52C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7B5C448;
  aBlock[3] = &block_descriptor_14_0;
  v8 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  if (![v9 _isSimilarToColor_withinPercentage_])
  {
    return v9;
  }

  v10 = [a1 userInterfaceStyle];
  if (v10 >= 3)
  {
    result = sub_1D7D3160C();
    __break(1u);
  }

  else
  {
    v11 = [objc_opt_self() *off_1E84EAB48[v10]];

    return v11;
  }

  return result;
}

id sub_1D7B5C170(void *a1, void *a2)
{
  v3 = [a1 userInterfaceStyle];
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = [objc_opt_self() labelColor];
  }

  else
  {
    if (v3 != 1)
    {
      result = sub_1D7D3160C();
      __break(1u);
      return result;
    }

    v7 = [a2 foregroundColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 ne_color];

      return v9;
    }

    v5 = [objc_opt_self() whiteColor];
  }

  return v5;
}

void sub_1D7B5C2C4(uint64_t a1)
{
  if (!qword_1EE0C0110)
  {
    type metadata accessor for UIStatusBarStyle(255);
    v1 = sub_1D7D29E0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0110);
    }
  }
}

id sub_1D7B5C324(uint64_t a1, id a2)
{
  if (a1 && a1 != 2)
  {
    if (a1 != 1)
    {
      result = sub_1D7D3160C();
      __break(1u);
      return result;
    }

    v4 = [a2 foregroundColor];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 ne_color];

      return v6;
    }

    v2 = [objc_opt_self() blackColor];
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];
  }

  return v2;
}

id sub_1D7B5C448(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7B5C4C8(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageColorPalette(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7B5C550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7B5C598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7B5C610(uint64_t a1, void *a2, uint64_t a3)
{
  if (!ArticleRouteModel.headline.getter())
  {
    goto LABEL_4;
  }

  if ([a2 cachePolicy] == 1)
  {
    swift_unknownObjectRelease();
LABEL_4:
    __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
    ArticleRouteModel.articleIdentifier.getter();
    v5 = sub_1D7D2F5EC();

    return v5;
  }

  sub_1D7B5C974(0);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7B5C6F0(id *a1)
{
  v1 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_parentIssue)) != 0)
  {
    v3 = v2;
    v4 = [v2 identifier];
    sub_1D7D3034C();

    v5 = [v1 identifier];
    sub_1D7D3034C();

    sub_1D7B5C924();
    swift_allocObject();
    v6 = sub_1D7D2940C();

    return v6;
  }

  else
  {
    sub_1D7B5C924();
    swift_allocObject();
    swift_unknownObjectRetain();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D7B5C860(uint64_t a1, uint64_t a2)
{
  sub_1D799621C();
  sub_1D7D294BC();
  v2 = sub_1D7D2934C();
  v3 = sub_1D7D2939C();

  return v3;
}

void sub_1D7B5C924()
{
  if (!qword_1EE0BB3E8)
  {
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB3E8);
    }
  }
}

void sub_1D7B5C974(uint64_t a1)
{
  if (!qword_1EE0C0260)
  {
    sub_1D799621C();
    v1 = sub_1D7D2947C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0260);
    }
  }
}

char *sub_1D7B5C9CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEF70, &protocolRef_FCNewsletterManager);
  v1 = sub_1D7D28D1C();
  v2 = type metadata accessor for NewsletterSubscriptionStatusProvider();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_observers;
  *&v3[v4] = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_newsletterManager] = v1;
  v8.receiver = v3;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = *(v5 + OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_newsletterManager);
  if (v6)
  {
    [v6 addObserver_];
  }

  swift_unknownObjectRelease();
  return v5;
}

void *sub_1D7B5CACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for ArticleModule();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_1D799D69C(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_1F52AD670;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7B5CBE0(void *a1)
{
  v2 = sub_1D7D2918C();
  v149 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v148 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2836C();
  v150 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v6);
  v147 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799D6E0(0, &unk_1EE0CABC8, type metadata accessor for ArticleModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v128 - v10;
  v12 = type metadata accessor for ArticleModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v159 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v156 = &v128 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CFC10, &protocol descriptor for ArticleViewerArticleFactoryType, 1);
  sub_1D7D28D2C();
  if (!v194)
  {
    __break(1u);
    goto LABEL_31;
  }

  v146 = v5;
  sub_1D799D69C(&v193, v195);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v156;
  sub_1D7AD3EF4(v11, v156);
  v20 = v196;
  v21 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FCRelativePriority(0);
  sub_1D7D28D2C();
  if (BYTE8(v193))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = (*(v21 + 8))(v19, v193, v20, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D41C();
  v23 = sub_1D7D28CDC();
  if (!v23)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v24 = v19;
  v25 = v23;
  sub_1D7A35E7C(v24, v159);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C9950, &protocol descriptor for ArticleStylerType, 1);
  sub_1D7D28D2C();
  if (!v194)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7158, &protocol descriptor for ArticleEventHandlerType, 0);
  sub_1D7D28D2C();
  v158 = v191;
  if (!v191)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v144 = v192;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EE0BEE00, 0x1E69B70A8);
  sub_1D799CC84(a1, &v189);
  v26 = swift_allocObject();
  sub_1D799D69C(&v189, v26 + 16);
  *(v26 + 56) = v22;
  *(v26 + 64) = v25;
  v145 = v22;

  v27 = sub_1D7D28CFC();

  if (!v27)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  v28 = v187;
  if (v187 == 2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v188;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEE48, &protocolRef_NUArticleKeyCommandManager);
  v155 = sub_1D7D28D1C();
  if (!v155)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BED80, &protocolRef_NUDocumentSectionBlueprintProvider);
  v157 = sub_1D7D28D1C();
  if (!v157)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C6700, &protocol descriptor for ArticleFooterProviderType, 1);
  sub_1D7D28D2C();
  if (!v190)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C66F8, &protocol descriptor for ArticleHeaderProviderType, 1);
  sub_1D7D28D2C();
  if (!v186)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for URLHandler();
  v30 = sub_1D7D28D1C();
  if (!v30)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = v30;
  v141 = v29;
  v142 = v28;
  v154 = v27;
  v143 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  sub_1D7D28D2C();
  if (!v179[0])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = sub_1D7D28A3C();
  v33 = sub_1D7D28D1C();
  if (!v33)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v34 = v33;
  v140 = v31;
  v183 = v32;
  v184 = sub_1D7B61FCC(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v182[0] = v34;
  sub_1D7D2A50C();
  swift_allocObject();
  v153 = sub_1D7D2A4FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFE00, MEMORY[0x1E69D8040], 1);
  sub_1D7D28D2C();
  if (!v183)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  v138 = v181;
  v139 = v180;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7994200(0, &qword_1EE0CBB88, sub_1D79906C8, &type metadata for ArticleOfflineModel, MEMORY[0x1E69B6158]);
  v35 = sub_1D7D28D1C();
  if (!v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  sub_1D7D28D2C();
  if (!v179[3])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  v152 = sub_1D7D28D1C();
  if (!v152)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = sub_1D7D2FABC();
  v38 = sub_1D7D28D1C();
  if (!v38)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v135 = v38;
  v136 = v36;
  v128 = v37;
  v137 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C15F8, &protocol descriptor for ArticleBottomPalettePluginProviderType, 0);
  sub_1D7D28D2C();
  if (!v177)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v39 = v177;
  v151 = v178;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(&v193, v194);
  v134 = &v128;
  v41 = MEMORY[0x1EEE9AC00](v40, v40);
  v43 = (&v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
  v133 = &v128;
  v46 = MEMORY[0x1EEE9AC00](v45, v45);
  v48 = (&v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v52 = type metadata accessor for ArticleStyler();
  v176 = &off_1F52ABD08;
  v175 = v52;
  v174[0] = v50;
  v53 = type metadata accessor for ArticleHeaderProvider();
  v172 = v53;
  v173 = &off_1F52A8558;
  v171[0] = v51;
  v129 = type metadata accessor for ArticleViewController(0);
  v54 = objc_allocWithZone(v129);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
  v131 = &v128;
  v56 = MEMORY[0x1EEE9AC00](v55, v55);
  v58 = (&v128 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58, v56);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v171, v172);
  v130 = &v128;
  v61 = MEMORY[0x1EEE9AC00](v60, v60);
  v63 = (&v128 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63, v61);
  v65 = *v58;
  v66 = *v63;
  v170[3] = v52;
  v170[4] = &off_1F52ABD08;
  v169[4] = &off_1F52A8558;
  v170[0] = v65;
  v169[3] = v53;
  v169[0] = v66;
  v67 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_observableScrollView;
  v163 = 0;
  sub_1D799D6E0(0, &qword_1EE0C0420, sub_1D7A469D4, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v54[v67] = sub_1D7D28ECC();
  v68 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_isImpressionable;
  LOBYTE(v163) = 0;
  sub_1D7B61EE4(0, &qword_1EE0C0430, MEMORY[0x1E69E6370]);
  swift_allocObject();
  *&v54[v68] = sub_1D7D28ECC();
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v69 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_contentBackgroundColor;
  v163 = [objc_opt_self() whiteColor];
  v164 = 0;
  sub_1D7B61EE4(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors);
  swift_allocObject();
  *&v54[v69] = sub_1D7D28ECC();
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline] = 0;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController] = 0;
  v70 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_paywallPreparationEventManager;
  sub_1D7994200(0, &qword_1EE0C04C0, sub_1D7B08BAC, &type metadata for ArticleViewController.PaywallPrepRequirement, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *&v54[v70] = sub_1D7D28C9C();
  v71 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize];
  *v71 = 0;
  v71[1] = 0;
  v72 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID];
  v73 = v147;
  sub_1D7D2835C();
  v74 = sub_1D7D2834C();
  v76 = v75;
  v150[1](v73, v146);
  *v72 = v74;
  v72[1] = v76;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollDebounce] = 0;
  v77 = MEMORY[0x1E69E7CC0];
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_didDisappearCompletions] = MEMORY[0x1E69E7CC0];
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_completedReadingDebouncer] = 0;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate] = 0;
  v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_spaceKeyCommandsRegistered] = 0;
  v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_endOfArticleSectionDidLayout] = 0;
  v78 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX];
  *v78 = 0;
  v78[8] = 1;
  v79 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_lastSafeAreaInsets];
  *v79 = 0u;
  *(v79 + 1) = 0u;
  v79[32] = 1;
  sub_1D7A35E7C(v159, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_model]);
  sub_1D799CC84(v170, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_styler]);
  v80 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler];
  v81 = v144;
  *v80 = v158;
  v80[1] = v81;
  v82 = v155;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] = v154;
  v83 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_presentationContext];
  v84 = v141;
  *v83 = v142;
  v83[1] = v84;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager] = v82;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider] = v157;
  sub_1D799CC84(&v189, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footerProvider]);
  sub_1D799CC84(v169, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headerProvider]);
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headers] = v77;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers] = v77;
  v85 = v140;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_urlHandler] = v140;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_commands] = v153;
  sub_1D799CC84(v182, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyboardInputMonitor]);
  v86 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleGroupData];
  v87 = v138;
  *v86 = v139;
  v86[1] = v87;
  v88 = v136;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_offlineManager] = v136;
  sub_1D799CC84(v179, &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_featureAvailability]);
  v89 = v151;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_appConfigurationManager] = v152;
  v90 = v135;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_tagMastheadProvider] = v135;
  v91 = &v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadPluginProvider];
  *v91 = v39;
  v91[1] = v89;
  sub_1D7D2B25C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v150 = v154;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v92 = v85;

  v93 = v88;
  swift_unknownObjectRetain();
  v94 = v90;
  swift_unknownObjectRetain();
  v95 = sub_1D7D2B24C();
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollViewProxyManager] = v95;

  v96 = sub_1D7D2DB0C();
  v154 = v93;
  v132 = v39;
  v146 = v94;
  v147 = v92;
  v144 = v95;
  if (v96)
  {
    v151 = *(v151 + 8);
    v97 = type metadata accessor for ArticleMastheadRootViewController();
    v98 = objc_allocWithZone(v97);
    v99 = OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_coverViewManager;
    sub_1D7D2A59C();
    swift_allocObject();
    v100 = v150;
    v101 = v94;
    v102 = v100;
    v103 = v101;
    swift_unknownObjectRetain();

    *&v98[v99] = sub_1D7D2A58C();
    *&v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxXUpdateDelegate + 8] = 0;
    v104 = swift_unknownObjectWeakInit();
    v105 = &v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX];
    *v105 = 0;
    v105[8] = 1;
    v106 = &v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_lastSafeAreaInsets];
    *v106 = 0u;
    *(v106 + 1) = 0u;
    v106[32] = 1;
    *&v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_rootViewController] = v102;
    *&v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_scrollViewProxyManager] = v95;
    *&v98[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_tagMastheadProvider] = v103;
    *(v104 + 8) = v151;
    swift_unknownObjectWeakAssign();
    v167.receiver = v98;
    v167.super_class = v97;
    v107 = v102;
    v108 = v103;

    objc_msgSendSuper2(&v167, sel_initWithNibName_bundle_, 0, 0);

    swift_unknownObjectRelease();
    v165 = v128;
    v166 = sub_1D7B61FCC(&unk_1EE0BF5D0, MEMORY[0x1E69B6550], MEMORY[0x1E69B6548]);
    v163 = v108;
    sub_1D7B61F38(0);
    v160 = 0u;
    v161 = 0u;
    v162 = 0;
    v110 = objc_allocWithZone(v109);
    v111 = v108;
    v112 = sub_1D7D2B16C();
    v113 = sub_1D7D2B17C();
    v114 = *&v113[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_coverViewManager];

    *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_coverViewManager] = v114;
  }

  else
  {
    sub_1D7D2A59C();
    swift_allocObject();
    v112 = 0;
    *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_coverViewManager] = sub_1D7D2A58C();
  }

  v115 = v137;
  v116 = v148;
  v117 = v150;
  *&v54[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController] = v112;
  v168.receiver = v54;
  v168.super_class = v129;
  v118 = objc_msgSendSuper2(&v168, sel_initWithNibName_bundle_, 0, 0);
  v119 = sub_1D7D3031C();
  [v118 setFocusGroupIdentifier_];

  *(*(v118 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler) + 24) = &off_1F52A48E0;
  swift_unknownObjectWeakAssign();
  [v117 setShouldShowLoadingCover_];
  v120 = sub_1D7D2F12C();
  v121 = sub_1D7BB9D70(v120 & 1);
  [v117 setArticleContext_];

  [v117 setDelegate_];
  [v117 setExperimentationDelegate_];
  [v117 setLoadingDelegate_];
  v122 = [v117 loadingListeners];
  [v122 addObject_];

  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v123 = qword_1EE0CAF10;
  v124 = sub_1D7D30C6C();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v149;
  if (v125)
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_1D7987000, v123, v124, "Setting up PaywallPreparationEventManager trigger.  Awaiting articleLoaded event.", v127, 2u);
    MEMORY[0x1DA7102E0](v127, -1, -1);
  }

  sub_1D7B22E00(&unk_1F529AC48);

  sub_1D7D2917C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D28C7C();

  (*(v126 + 8))(v116, v115);

  sub_1D7AFA19C();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D7B61CD8(v159, type metadata accessor for ArticleModel);
  sub_1D7B61CD8(v156, type metadata accessor for ArticleModel);
  __swift_destroy_boxed_opaque_existential_1(v179);
  __swift_destroy_boxed_opaque_existential_1(v182);
  __swift_destroy_boxed_opaque_existential_1(&v189);
  __swift_destroy_boxed_opaque_existential_1(v169);
  __swift_destroy_boxed_opaque_existential_1(v170);
  __swift_destroy_boxed_opaque_existential_1(v171);
  __swift_destroy_boxed_opaque_existential_1(v174);
  __swift_destroy_boxed_opaque_existential_1(v185);
  __swift_destroy_boxed_opaque_existential_1(&v193);
  __swift_destroy_boxed_opaque_existential_1(v195);
}

uint64_t sub_1D7B5E380(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D28D2C();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
    sub_1D7D28BEC();
    sub_1D7B62014(v6);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEC88, 0x1E69B5188);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D7D28BDC();
}

void sub_1D7B5E510(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &qword_1EE0BF128, 0x1E69B70F0);
  v4 = sub_1D7D28D1C();
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for URLPreviewViewControllerFactory();
    v6 = sub_1D7D28D1C();
    if (v6)
    {
      v7 = v6;
      [v5 setPreviewViewControllerFactory_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7B5E61C()
{
  type metadata accessor for ArticlePagePrewarmer();

  return swift_allocObject();
}

id sub_1D7B5E650(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BED48, &protocolRef_SXHost);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &unk_1EE0BEE20, &protocolRef_SXViewControllerPresenting);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for MailPresenter();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC12NewsArticles13MailPresenter_host] = v3;
      *&v6[OBJC_IVAR____TtC12NewsArticles13MailPresenter_viewControllerPresenting] = v4;
      v7.receiver = v6;
      v7.super_class = v5;
      return objc_msgSendSuper2(&v7, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7B5E768(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
  v2 = sub_1D7D28D1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_1D7D3007C();
    result = sub_1D7D28D1C();
    if (result)
    {
      v10[3] = v5;
      v10[4] = MEMORY[0x1E69B6850];
      v10[0] = result;
      v6 = type metadata accessor for ANFIssueCoverLayoutAttributesFactory();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_issue] = v2;
      *&v7[OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_headline] = v4;
      sub_1D799CC84(v10, &v7[OBJC_IVAR____TtC12NewsArticles36ANFIssueCoverLayoutAttributesFactory_issueCoverLayoutAttributesFactory]);
      v9.receiver = v7;
      v9.super_class = v6;
      v8 = objc_msgSendSuper2(&v9, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7B5E8D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
  v2 = sub_1D7D28D1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D7D3007C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11[3] = v5;
  v11[4] = MEMORY[0x1E69B6850];
  v11[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF570, MEMORY[0x1E69B6610], 1);
  result = sub_1D7D28D2C();
  if (v10[3])
  {
    v6 = type metadata accessor for ANFIssueCoverViewProvider();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_issue] = v2;
    *&v7[OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_headline] = v4;
    sub_1D799CC84(v11, &v7[OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_layoutAttributesFactory]);
    sub_1D799CC84(v10, &v7[OBJC_IVAR____TtC12NewsArticles25ANFIssueCoverViewProvider_renderer]);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

_OWORD *sub_1D7B5EAC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  v3[8] = v4[10];
  v4[0] = v5[0];
  *(v4 + 9) = *(v5 + 9);
  v3[4] = v4[6];
  v3[5] = v4[7];
  v3[6] = v4[8];
  v3[7] = v4[9];
  v3[0] = v4[2];
  v3[1] = v4[3];
  v3[2] = v4[4];
  v3[3] = v4[5];
  v1 = objc_allocWithZone(type metadata accessor for ANFDebugLayoutOptionsProvider());
  return sub_1D7AE1878(v3);
}

void *sub_1D7B5EB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E3A38, &protocol descriptor for IssueTableOfContentsActionHandlerType, 1);
    result = sub_1D7D28D2C();
    if (v8[3])
    {
      v4 = type metadata accessor for TableOfContentsURLHandler();
      v5 = objc_allocWithZone(v4);
      swift_unknownObjectWeakInit();
      *&v5[OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_issue] = v3;
      sub_1D799CC84(v8, &v5[OBJC_IVAR____TtC12NewsArticles25TableOfContentsURLHandler_actionHandler]);
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D7B5ECA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for DarkModeConfiguration();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12NewsArticles21DarkModeConfiguration_headline] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7B5ED44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDBB0, &protocol descriptor for ArticleFeatureProviderType, 1);
  result = sub_1D7D28D2C();
  if (v4)
  {
    sub_1D799D69C(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v2 = sub_1D7C59634();
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7B5EDEC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  v3 = sub_1D7D28D1C();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for ArticleFeatureProvider();
    v6 = swift_allocObject();
    *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E69CE058]) initWithNewAdsEnabled:1 limitTextSelectionEnabled:0 textSelectionLimit:200 writingToolsDisabled:0];
    v7 = [v4 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    *(v6 + 16) = v7;
    a2[3] = v5;
    a2[4] = &off_1F52AE308;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7B5EEE0()
{
  type metadata accessor for AdSettingsFactory();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69B7098]) initWithDebugAdvertisementSettings_];

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D7B5EF58()
{
  sub_1D7994200(0, &qword_1EE0CBEB0, sub_1D79962A4, &type metadata for ArticleEvent, MEMORY[0x1E69D6460]);
  swift_allocObject();
  return sub_1D7D28C9C();
}

double sub_1D7B5EFC8()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798C468(0, &qword_1EE0C9950, &protocol descriptor for ArticleStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C7158, &protocol descriptor for ArticleEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C8290, &protocol descriptor for ArticleInteractorType, 0);
  sub_1D7D291EC();
  type metadata accessor for ArticleInteractor(0);
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EE0C7818, &protocol descriptor for ArticleDataManagerType, 0);
  sub_1D7D291EC();

  sub_1D7992EFC(0, &unk_1EE0BEE00, 0x1E69B70A8);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0C66F8, &protocol descriptor for ArticleHeaderProviderType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C6700, &protocol descriptor for ArticleFooterProviderType, 1);
  sub_1D7D291EC();

  sub_1D798C3BC(0, &qword_1EE0BF0B0, &protocolRef_SXURLHandling);
  sub_1D7D291DC();

  type metadata accessor for URLHandler();
  sub_1D7D291DC();

  type metadata accessor for URLPreviewViewControllerFactory();
  sub_1D7D291DC();

  sub_1D798C3BC(0, &qword_1EE0BEEF0, &protocolRef_NUErrorMessageFactory);
  sub_1D7D291DC();

  sub_1D798C468(0, qword_1EE0C7D18, &protocol descriptor for CoverViewProviderType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C2EC0, &protocol descriptor for ArticleReadingHistoryRecorderType, 1);
  sub_1D7D291EC();

  type metadata accessor for FCRelativePriority(0);
  sub_1D7D291EC();

  sub_1D7D3010C();
  sub_1D7D291DC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7D28ADC();

  (*(v1 + 8))(v4, v0);
  sub_1D798C468(0, qword_1EE0C4428, &protocol descriptor for ArticleBottomPaletteStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C17E0, &protocol descriptor for ArticleBottomPaletteFeatureDescriptor, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C15F8, &protocol descriptor for ArticleBottomPalettePluginProviderType, 0);
  sub_1D7D291EC();

  return result;
}

void *sub_1D7B5F5E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C8290, &protocol descriptor for ArticleInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C9958, &protocol descriptor for ArticleRouterType, 1);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    type metadata accessor for ArticleEventHandler();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[4] = v5;
    v8[5] = v6;
    sub_1D799D69C(&v9, (v8 + 6));
    v8[11] = v7;
    *(v5 + 24) = &off_1F52A1238;
    result = swift_unknownObjectWeakAssign();
    *a2 = v8;
    a2[1] = &off_1F52A1258;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7B5F760@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = sub_1D7D2836C();
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v94 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D799D6E0(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v101 = v81 - v9;
  sub_1D799D6E0(0, &unk_1EE0CABC8, type metadata accessor for ArticleModel, v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v81 - v12;
  v14 = type metadata accessor for ArticleModel(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v100 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v81 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v81 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1D7AD3EF4(v13, v25);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A35E7C(v25, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v98 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174(0);
    v30 = *(v29 + 48);
  }

  else
  {
    v99 = v27;
    v31 = *(v21 + 5);
    v92 = *(v21 + 3);
    v93 = v31;
    sub_1D7996048(0);
    v30 = *(v32 + 48);

    v25 = v98;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1D7B61CD8(&v21[v30], type metadata accessor for ArticleNavigationAction);
  sub_1D7B61E74(0);
  v33 = sub_1D7D28CDC();

  if (v33)
  {
    v93 = v33;
  }

  else
  {
    LOBYTE(v120[0]) = 0;
    swift_allocObject();
    v93 = sub_1D7D28D7C();
  }

  sub_1D7A35E7C(v25, v100);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_1D7D295CC();
  v35 = v101;
  sub_1D7D28D2C();
  v36 = *(v34 - 8);
  result = (*(v36 + 48))(v35, 1, v34);
  if (result == 1)
  {
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C7818, &protocol descriptor for ArticleDataManagerType, 0);
  result = sub_1D7D28D2C();
  v37 = v122;
  if (!v122)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = v123;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE048, &protocol descriptor for ReadingListObserverType, 1);
  result = sub_1D7D28D2C();
  if (!v121)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01E0, MEMORY[0x1E69B6B18], 1);
  result = sub_1D7D28D2C();
  if (!v119[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CDCA8, &protocol descriptor for ArticlePreviewManagerType, 1);
  result = sub_1D7D28D2C();
  if (!v118[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v117[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v92 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C01F0, MEMORY[0x1E69B6AC8], 0);
  result = sub_1D7D28D2C();
  v39 = v115;
  if (!v115)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v91 = v116;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C0240, MEMORY[0x1E69B6A30], 1);
  result = sub_1D7D28D2C();
  if (!v114[3])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01B8, MEMORY[0x1E69B6BF8], 1);
  result = sub_1D7D28D2C();
  if (!v113[3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7D18, &protocol descriptor for CoverViewProviderType, 1);
  result = sub_1D7D28D2C();
  if (!v112[3])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEF0, &protocolRef_NUErrorMessageFactory);
  result = sub_1D7D28D1C();
  v90 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v89 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7994200(0, &qword_1EE0CBEB0, sub_1D79962A4, &type metadata for ArticleEvent, MEMORY[0x1E69D6460]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C2EC0, &protocol descriptor for ArticleReadingHistoryRecorderType, 1);
  result = sub_1D7D28D2C();
  if (!v111)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v86 = v40;
  v87 = v39;
  v88 = v37;
  v99 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  v85 = v108;
  if (v108)
  {
    v82 = v109;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
    v84 = v81;
    v42 = MEMORY[0x1EEE9AC00](v41, v41);
    v44 = (v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44, v42);
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
    v83 = v81;
    v47 = MEMORY[0x1EEE9AC00](v46, v46);
    v49 = (v81 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v47);
    v51 = *v44;
    v52 = *v49;
    v53 = type metadata accessor for ReadingListObserver();
    v107[3] = v53;
    v107[4] = &off_1F529E3E0;
    v107[0] = v51;
    v54 = type metadata accessor for ArticleReadingHistoryRecorder();
    v105 = v54;
    v106 = &off_1F52B53F0;
    v104[0] = v52;
    type metadata accessor for ArticleInteractor(0);
    v55 = swift_allocObject();
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v107, v53);
    v81[2] = v81;
    v57 = MEMORY[0x1EEE9AC00](v56, v56);
    v59 = (v81 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59, v57);
    v61 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v81[1] = v81;
    v62 = MEMORY[0x1EEE9AC00](v61, v61);
    v64 = (v81 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64, v62);
    v66 = *v59;
    v67 = *v64;
    v103[3] = v53;
    v103[4] = &off_1F529E3E0;
    v102[4] = &off_1F52B53F0;
    v103[0] = v66;
    v102[3] = v54;
    v102[0] = v67;
    *(v55 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v55 + 64) = 0;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0u;
    *(v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle) = 0;
    v68 = (v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
    v69 = v94;
    sub_1D7D2835C();
    v70 = sub_1D7D2834C();
    v72 = v71;
    (*(v95 + 8))(v69, v96);
    *v68 = v70;
    v68[1] = v72;
    sub_1D7A35E7C(v100, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleModel);
    v73 = v89;
    (*(v89 + 16))(v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleAccess, v101, v99);
    v74 = (v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_dataManager);
    v75 = v92;
    *v74 = v88;
    v74[1] = v75;
    sub_1D799CC84(v103, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_readingListObserver);
    sub_1D799CC84(v119, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallFactory);
    sub_1D799CC84(v118, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_previewManager);
    sub_1D799CC84(v117, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_contextBuilder);
    v76 = (v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_offerManager);
    v77 = v91;
    *v76 = v87;
    v76[1] = v77;
    sub_1D799CC84(v114, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallTypeProvider);
    sub_1D799CC84(v113, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articlePurchaseOffersProvider);
    sub_1D799CC84(v112, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadingIndicatorProvider);
    *(v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_errorMessageFactory) = v90;
    *(v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleLoadingStateMachine) = v93;
    *(v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_eventManager) = v86;
    sub_1D799CC84(v102, v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleReadingHistoryRecorder);
    v78 = (v55 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_commandCenter);
    v79 = v82;
    *v78 = v85;
    v78[1] = v79;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1D7A314E8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_1D7B61CD8(v100, type metadata accessor for ArticleModel);
    sub_1D7B61CD8(v98, type metadata accessor for ArticleModel);
    __swift_destroy_boxed_opaque_existential_1(v112);
    __swift_destroy_boxed_opaque_existential_1(v113);
    __swift_destroy_boxed_opaque_existential_1(v114);
    __swift_destroy_boxed_opaque_existential_1(v117);
    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(v119);
    (*(v73 + 8))(v101, v99);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(v103);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(v110);
    result = __swift_destroy_boxed_opaque_existential_1(v120);
    v80 = v97;
    *v97 = v55;
    v80[1] = &off_1F529EF70;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D7B60610(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType, 1);
  sub_1D7D28D2C();
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    v5 = *(v4 + 16);

    v5(v6, &off_1F529EF68, v3, v4);
  }

  swift_beginAccess();
  sub_1D7B61D9C(v8, v2 + 32);
  swift_endAccess();
  return sub_1D7B61E18(v8, &unk_1EE0C7820, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType);
}

uint64_t sub_1D7B6071C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArticleDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_1F52A2938;
  return result;
}

void sub_1D7B6075C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEC88, 0x1E69B5188);
  v2 = sub_1D7D28D1C();
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
  v4 = sub_1D7D28D1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDC8, &protocolRef_NUArticleViewControllerFactory);
  sub_1D799CC84(a1, v15);
  v5 = swift_allocObject();
  sub_1D799D69C(v15, v5 + 16);
  v6 = sub_1D7D28CFC();

  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BF160, &protocolRef_NUSettings);
  v7 = sub_1D7D28D1C();
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEF0, &protocolRef_NUErrorMessageFactory);
  v9 = sub_1D7D28D1C();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA58, &protocolRef_NUAnalyticsReporting);
  v11 = sub_1D7D28D1C();
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE10, &protocolRef_NUArticleContentSizeManager);
  v13 = sub_1D7D28D1C();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FCRelativePriority(0);
  sub_1D7D28D2C();
  if ((BYTE8(v15[0]) & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E69B70A8]) initWithArticle:v3 issue:v4 articleViewControllerFactory:v6 settings:v8 errorMessageFactory:v10 analyticsReporting:v12 contentSizeManager:v14 relativePriority:*&v15[0]];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1D7B60AA0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0BF0B0, &protocolRef_SXURLHandling);
  if (sub_1D7D28D1C())
  {
    sub_1D7D28BEC();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C3BC(0, &unk_1EE0BF058, &protocolRef_SXURLPreviewing);
    sub_1D7D28D1C();
    sub_1D7D28BAC();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D7B60BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_1D7D28D1C();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for ArticleHeaderProvider();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      result = sub_1D799D69C(&v8, v7 + 56);
      *(v7 + 96) = v5;
      a2[3] = v6;
      a2[4] = &off_1F52A8558;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7B60D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7D2864C();
  sub_1D7D2863C();
  if (qword_1EE0CB478 != -1)
  {
    swift_once();
  }

  sub_1D7D2862C();

  if (LOBYTE(v13[0]) == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0CDE50, &protocol descriptor for ArticleSharingModuleType, 1);
    sub_1D7D28D2C();
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  sub_1D7AD5458(v13, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, qword_1EE0CE2C8, &protocolRef_NAEndOfArticleModuleType);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
    result = sub_1D7D28D2C();
    if (v10)
    {
      v6 = type metadata accessor for ArticleFooterProvider();
      v7 = swift_allocObject();
      v8 = v11[1];
      *(v7 + 16) = v11[0];
      *(v7 + 32) = v8;
      *(v7 + 48) = v12;
      *(v7 + 56) = v5;
      sub_1D799D69C(&v9, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_1F52A36D8;
      *a2 = v7;
      return sub_1D7B61E18(v13, qword_1EE0C6C70, qword_1EE0CDE50, &protocol descriptor for ArticleSharingModuleType);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B60F10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for URLHandler();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1D7B60F94(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = objc_allocWithZone(a2(0));

  return [v2 init];
}

id sub_1D7B60FD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C15F0, &protocol descriptor for ArticleErrorMessageFactoryProviderType, 1);
  sub_1D7D28D2C();
  if (v7)
  {
    sub_1D799D69C(&v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v4;
  }

  sub_1D7B61E18(&v6, qword_1EE0BBC98, &qword_1EE0C15F0, &protocol descriptor for ArticleErrorMessageFactoryProviderType);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE70, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69B70C8]) initWithNetworkReachability_];
    swift_unknownObjectRelease();
    return v4;
  }

  __break(1u);
  return result;
}

_OWORD *sub_1D7B61128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ArticleModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D799D6E0(0, &unk_1EE0CABC8, type metadata accessor for ArticleModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D7A35E7C(v12, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7994174(0);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      v15 = *v8;
      v22 = v8[1];
      v23 = v15;
      v16 = v8[2];
      v20 = v8[3];
      v21 = v16;
      sub_1D7996048(0);
    }

    sub_1D7B61CD8(v8 + *(v14 + 48), type metadata accessor for ArticleNavigationAction);
    sub_1D7B61CD8(v12, type metadata accessor for ArticleModel);
    v17 = type metadata accessor for ArticleLoadingIndicatorProvider();
    result = swift_allocObject();
    v18 = v22;
    result[1] = v23;
    result[2] = v18;
    v19 = v20;
    result[3] = v21;
    result[4] = v19;
    a2[3] = v17;
    a2[4] = &off_1F52B1DC8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D7B61374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF040, 0x1E69B5558);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ArticleReadingHistoryRecorder();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F52B53F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B61418(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2FEFC();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D3010C();
    swift_allocObject();
    return sub_1D7D300EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B614B0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_1D7B61500@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF618, MEMORY[0x1E69B6418], 1);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D3010C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C4428, &protocol descriptor for ArticleBottomPaletteStylerType, 1);
  result = sub_1D7D28D2C();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for ArticleBottomPaletteStyler();
    v21[3] = v12;
    v21[4] = &off_1F52A06D8;
    v21[0] = v11;
    v13 = type metadata accessor for SharedArticleBottomPaletteFeatureDescriptor();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = MEMORY[0x1EEE9AC00](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[16] = v12;
    v14[17] = &off_1F52A06D8;
    v14[13] = v20;
    sub_1D799D69C(&v26, (v14 + 2));
    sub_1D799D69C(&v24, (v14 + 7));
    v14[12] = v5;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_1F52A9938;
    *a2 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7B6182C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D7B61A64(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C4428, &protocol descriptor for ArticleBottomPaletteStylerType, 1);
  result = sub_1D7D28D2C();
  if (v22)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for ArticleBottomPaletteStyler();
    v20[3] = v12;
    v20[4] = &off_1F52A06D8;
    v20[0] = v11;
    type metadata accessor for ArticleBottomPalettePluginProvider();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[6] = v12;
    v13[7] = &off_1F52A06D8;
    v13[8] = 0;
    v13[2] = v4;
    v13[3] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a2 = v13;
    a2[1] = &off_1F52ABF80;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7B61A64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (v18)
  {
    sub_1D799D69C(&v17, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    if ((sub_1D7D2F9CC() & 1) == 0)
    {
      v3 = MEMORY[0x1E69E7CC0];
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v3;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0C17E0, &protocol descriptor for ArticleBottomPaletteFeatureDescriptor, 1);
    result = sub_1D7D28CEC();
    if (v16)
    {
      sub_1D799D69C(&v15, &v17);
      sub_1D799CC84(&v17, &v15);
      v3 = sub_1D79E4E88(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_1D79E4E88((v4 > 1), v5 + 1, 1, v3);
      }

      __swift_destroy_boxed_opaque_existential_1(&v17);
      v6 = __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
      v7 = MEMORY[0x1EEE9AC00](v6, v6);
      v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v13 = type metadata accessor for SharedArticleBottomPaletteFeatureDescriptor();
      v14 = &off_1F52A9938;
      *&v12 = v11;
      v3[2] = v5 + 1;
      sub_1D799D69C(&v12, &v3[5 * v5 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v15);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B61CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B61D38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D798C468(255, a3, a4, 1);
    v5 = sub_1D7D3130C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7B61D9C(uint64_t a1, uint64_t a2)
{
  sub_1D7B61D38(0, &unk_1EE0C7820, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B61E18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7B61D38(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7B61E74(uint64_t a1)
{
  if (!qword_1EE0C0498)
  {
    sub_1D7A35000();
    v1 = sub_1D7D28D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0498);
    }
  }
}

void sub_1D7B61EE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D7D28F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B61F38(uint64_t a1)
{
  if (!qword_1EE0BFE98)
  {
    type metadata accessor for ArticleMastheadRootViewController();
    sub_1D7B61FCC(qword_1EE0C2ED0, type metadata accessor for ArticleMastheadRootViewController, &unk_1D7D4C990);
    v1 = sub_1D7D2B1BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BFE98);
    }
  }
}

uint64_t sub_1D7B61FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D7B62014(void *result)
{
  if (result)
  {
  }

  return result;
}

double sub_1D7B62054(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 32);
  v10 = v9 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_coordinator;
  swift_beginAccess();
  if (*(v10 + 24))
  {
    sub_1D799CC84(v10, v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v12 + 32))(a1, a2 & 1, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  sub_1D79F93E8(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7A2B9D4(v8);
  if (EnumCaseMultiPayload == 2)
  {
    *(v9 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_insertAdvertisementBlueprintModifier) = 0;
  }

  return result;
}

double sub_1D7B621C4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      sub_1D7D2AA9C();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1D7B6223C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B622C4();
  result = sub_1D7D28D2C();
  if (v3)
  {
    v2 = objc_allocWithZone(type metadata accessor for OfferUpsellScenarioProvider());
    return sub_1D7AE5FC0(v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7B622C4()
{
  result = qword_1EE0C01F0;
  if (!qword_1EE0C01F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C01F0);
  }

  return result;
}

uint64_t RecipeBlueprintRouteModel.__allocating_init(identifier:routeModel:blueprintProvider:blueprintTraits:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4[3];
  v16 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v18 = sub_1D7B63C98(a1, a2, a3, v17, a5, a6, a7, v7, v15, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

uint64_t RecipeBlueprintRouteModel.__allocating_init(identifier:routeModel:observer:blueprintTraits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7AD9468(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer;
  *(v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_1D7B63E30(a3, v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  sub_1D7B63E30(a3, v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  *(v14 + 8) = a5;
  swift_unknownObjectWeakAssign();
  *(v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = a6;

  sub_1D7BEF87C(a1, a2, &v24);

  v15 = v28 & 0xCFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for RecipeViewerBlueprintProvider();
  v22 = v26;
  v23 = v24;
  v20 = v27;
  v21 = v25;
  v17 = swift_allocObject();
  v25 = v21;
  v24 = v23;
  v27 = v20;
  v26 = v22;
  v28 = v15;
  sub_1D7AD9528();
  swift_allocObject();
  *(v17 + 16) = sub_1D7D28ECC();
  v18 = (v11 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  v18[3] = v16;
  v18[4] = &protocol witness table for RecipeViewerBlueprintProvider;
  swift_unknownObjectRelease();
  *v18 = v17;
  sub_1D7B63EA0(a3, type metadata accessor for RecipeRouteModel);
  return v11;
}

uint64_t RecipeBlueprintRouteModel.Traits.hashValue.getter()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

uint64_t RecipeBlueprintRouteModel.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RecipeBlueprintRouteModel.transitionIdentifier.getter@<X0>(double (**a1)()@<X8>)
{
  sub_1D7B63DBC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20[-v9];
  v11 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  swift_beginAccess();
  sub_1D7B63E30(v1 + v11, v10, sub_1D7B63DBC);
  sub_1D7AD9468(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) != 1)
  {
    return sub_1D7B6414C(v10, a1, sub_1D7AD9468);
  }

  sub_1D7B63EA0(v10, sub_1D7B63DBC);
  v15 = swift_allocObject();
  swift_weakInit();
  *a1 = sub_1D7B63E98;
  a1[1] = v15;
  v16 = *MEMORY[0x1E69D83E8];
  v17 = sub_1D7D2BA0C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(a1, v16, v17);
  (*(v18 + 56))(a1, 0, 1, v17);
  sub_1D7B63E30(a1, v6, sub_1D7AD9468);
  (*(v14 + 56))(v6, 0, 1, v13);
  swift_beginAccess();
  sub_1D7B63F00(v6, v1 + v11, sub_1D7B63DBC);
  return swift_endAccess();
}

uint64_t sub_1D7B629EC(uint64_t a1, uint64_t *a2)
{
  sub_1D7B63DBC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD9468(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B63E30(a1, v13, sub_1D7AD9468);
  v14 = *a2;
  sub_1D7B6414C(v13, v7, sub_1D7AD9468);
  (*(v10 + 56))(v7, 0, 1, v9);
  v15 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  swift_beginAccess();
  sub_1D7B63F00(v7, v14 + v15, sub_1D7B63DBC);
  return swift_endAccess();
}

uint64_t RecipeBlueprintRouteModel.transitionIdentifier.setter(uint64_t a1)
{
  sub_1D7B63DBC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B6414C(a1, v6, sub_1D7AD9468);
  sub_1D7AD9468(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  swift_beginAccess();
  sub_1D7B63F00(v6, v1 + v8, sub_1D7B63DBC);
  return swift_endAccess();
}

double sub_1D7B62CA4(uint64_t a1)
{
  v1 = type metadata accessor for RecipeRouteModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25[-v11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1D7D2B9FC();
    return result;
  }

  v14 = Strong;
  v15 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel;
  swift_beginAccess();
  sub_1D7B63E30(v14 + v15, v12, type metadata accessor for RecipeRouteModel);
  v16 = RecipeRouteModel.feedItemIdentifier.getter();
  v18 = v17;
  sub_1D7B63EA0(v12, type metadata accessor for RecipeRouteModel);
  if (!v18)
  {
    goto LABEL_8;
  }

  sub_1D7B63E30(v14 + v15, v4, type metadata accessor for RecipeRouteModel);
  v19 = RecipeRouteModel.identifier.getter();
  v21 = v20;
  sub_1D7B63EA0(v4, type metadata accessor for RecipeRouteModel);
  if (v19 == v16 && v18 == v21)
  {

    goto LABEL_12;
  }

  v23 = sub_1D7D3197C();

  if ((v23 & 1) == 0)
  {
LABEL_8:
    sub_1D7B63E30(v14 + v15, v8, type metadata accessor for RecipeRouteModel);
    RecipeRouteModel.identifier.getter();
    sub_1D7B63EA0(v8, type metadata accessor for RecipeRouteModel);
  }

LABEL_12:
  sub_1D7D2B9FC();

  return result;
}

void (*RecipeBlueprintRouteModel.transitionIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1D7B63DBC(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  sub_1D7AD9468(0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  RecipeBlueprintRouteModel.transitionIdentifier.getter(v11);
  return sub_1D7B63098;
}

void sub_1D7B63098(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_1D7B63E30(v2[10], v2[7], sub_1D7AD9468);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
    swift_beginAccess();
    sub_1D7B63F00(v5, v7 + v8, sub_1D7B63DBC);
    swift_endAccess();
    sub_1D7B63EA0(v4, sub_1D7AD9468);
  }

  else
  {
    sub_1D7B6414C(v2[10], v2[7], sub_1D7AD9468);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
    swift_beginAccess();
    sub_1D7B63F00(v5, v7 + v9, sub_1D7B63DBC);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t RecipeBlueprintRouteModel.currentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel;
  swift_beginAccess();
  return sub_1D7B63E30(v1 + v3, a1, type metadata accessor for RecipeRouteModel);
}

uint64_t RecipeBlueprintRouteModel.currentModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel;
  swift_beginAccess();
  sub_1D7B63F00(a1, v1 + v3, type metadata accessor for RecipeRouteModel);
  return swift_endAccess();
}

uint64_t RecipeBlueprintRouteModel.init(identifier:routeModel:blueprintProvider:blueprintTraits:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1D7B63B08(a1, a2, a3, v19, a5, a6, a7, v23[1], v15, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

uint64_t RecipeBlueprintRouteModel.init(identifier:routeModel:observer:blueprintTraits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7AD9468(0);
  (*(*(v14 - 8) + 56))(v7 + v13, 1, 1, v14);
  v15 = v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer;
  *(v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1D7B63E30(a3, v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  sub_1D7B63E30(a3, v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  *(v15 + 8) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = a6;

  sub_1D7BEF87C(a1, a2, &v24);

  v16 = v28 & 0xCFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for RecipeViewerBlueprintProvider();
  v22 = v26;
  v23 = v24;
  v20 = v27;
  v21 = v25;
  v18 = swift_allocObject();
  v25 = v21;
  v24 = v23;
  v27 = v20;
  v26 = v22;
  v28 = v16;
  sub_1D7AD9528();
  swift_allocObject();
  *(v18 + 16) = sub_1D7D28ECC();
  *(&v25 + 1) = v17;
  *&v26 = &protocol witness table for RecipeViewerBlueprintProvider;
  swift_unknownObjectRelease();
  *&v24 = v18;
  sub_1D7B63EA0(a3, type metadata accessor for RecipeRouteModel);
  sub_1D799D69C(&v24, v7 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  return v7;
}

uint64_t RecipeBlueprintRouteModel.deinit()
{

  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider));

  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier, sub_1D7B63DBC);
  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  sub_1D79C92AC(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer);
  return v0;
}

uint64_t RecipeBlueprintRouteModel.__deallocating_deinit()
{

  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider));

  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier, sub_1D7B63DBC);
  sub_1D7B63EA0(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  sub_1D79C92AC(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer);

  return swift_deallocClassInstance();
}

double RecipeBlueprintRouteModel.didShow(recipe:tracker:contextBuilder:previewing:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a4;
  v33 = a3;
  v31 = a2;
  v6 = type metadata accessor for RecipeRouteModel(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v29 = a1[1];
  v30 = v10;
  v12 = a1[2];
  v11 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
  sub_1D79AC454(0);
  v17 = v9 + *(v16 + 48);
  *v9 = v12;
  if (v15)
  {
    if (v14)
    {
      *v17 = v11;
      *(v17 + 1) = v14;
      *(v17 + 2) = v13;
      *(v17 + 3) = v15;
      v17[32] = 1;
      v18 = *(type metadata accessor for RecipeRouteContext(0) + 20);
      v19 = type metadata accessor for ArticleRouteModel(0);
      (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);

      goto LABEL_7;
    }

    *v17 = v13;
    *(v17 + 1) = v15;
    v20 = type metadata accessor for RecipeRouteContext(0);
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    v17[32] = 0;
  }

  else
  {
    *v17 = 0u;
    *(v17 + 1) = 0u;
    v17[32] = 2;
    v20 = type metadata accessor for RecipeRouteContext(0);
  }

  v21 = *(v20 + 20);
  v22 = type metadata accessor for ArticleRouteModel(0);
  (*(*(v22 - 8) + 56))(&v17[v21], 1, 1, v22);
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel;
  swift_beginAccess();

  v24 = v12;
  sub_1D7B63F00(v9, v4 + v23, type metadata accessor for RecipeRouteModel);
  swift_endAccess();
  v25 = v4 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    v34[0] = v30;
    v34[1] = v29;
    v34[2] = v24;
    v34[3] = v11;
    v34[4] = v14;
    v34[5] = v13;
    v34[6] = v15;
    (*(v27 + 8))(v34, v31, v33, v32 & 1, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7B63B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a9;
  v23 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a4, a9);
  v18 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7AD9468(0);
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  *(a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  sub_1D7B63E30(a3, a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  sub_1D7B6414C(a3, a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  sub_1D799D69C(&v21, a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  *(a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = a5;
  *(a8 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = a7;
  swift_unknownObjectWeakAssign();
  return a8;
}

uint64_t sub_1D7B63C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a6;
  v21 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a4, a9);
  return sub_1D7B63B08(a1, a2, a3, v17, a5, v20, v21, v18, a9, a10);
}

void sub_1D7B63DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7B63E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B63EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B63F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7B63F6C()
{
  result = qword_1EC9E57F0;
  if (!qword_1EC9E57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E57F0);
  }

  return result;
}

uint64_t type metadata accessor for RecipeBlueprintRouteModel(uint64_t a1)
{
  result = qword_1EE0BCDF0;
  if (!qword_1EE0BCDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B64014(uint64_t a1)
{
  type metadata accessor for RecipeRouteModel(319);
  if (v1 <= 0x3F)
  {
    sub_1D7B63DBC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7B6414C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TextResizeFeatureContext(uint64_t a1)
{
  result = qword_1EE0C6840;
  if (!qword_1EE0C6840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7B64228(uint64_t a1)
{
  result = sub_1D7D2ACCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D7B642A4(double a1, double a2, double a3, double a4)
{
  v31.receiver = v4;
  v31.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = sub_1D7D3031C();
  v13 = [v10 ts:v12 internalSystemImageNamed:?];

  if (v13)
  {
    v14 = [objc_opt_self() systemPinkColor];
    v15 = [v13 imageWithTintColor_];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v17 = v11;
  v18 = v16;
  v19 = v17;
  v20 = v18;
  [v19 addSubview_];
  [v20 setAnchorPoint_];
  v21 = [v20 layer];
  [v19 bounds];
  MidX = CGRectGetMidX(v32);
  [v19 bounds];
  [v21 setPosition_];

  [v20 bounds];
  [v20 setBounds_];

  [v20 setAutoresizingMask_];
  [v20 setContentMode_];

  v23 = [v19 layer];
  [v23 setCornerRadius_];

  v24 = [v19 layer];
  v25 = objc_opt_self();
  v26 = [v25 systemGray4Color];
  v27 = [v26 CGColor];

  [v24 setBorderColor_];
  v28 = [v19 layer];

  [v28 setBorderWidth_];
  v29 = [v25 whiteColor];
  [v19 setBackgroundColor_];

  return v19;
}

double sub_1D7B64700@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D7B65080((a1 + 1), &v31);
  if (!*(&v32[0] + 1))
  {
    sub_1D7AF4510(&v31, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
    v35 = 0u;
    memset(v36, 0, 24);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(&v31, *(&v32[0] + 1));
  (off_1F52A9510)(0, &v35);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (!*(&v36[0] + 1))
  {
LABEL_7:
    sub_1D7AF4510(&v35, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);
    goto LABEL_8;
  }

  sub_1D799D69C(&v35, &v33);
  v4 = a1[6];
  if (v4 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_5;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    *(&v32[0] + 1) = &type metadata for EndOfArticleStyle;
    *&v32[1] = &protocol witness table for EndOfArticleStyle;
    v5 = swift_allocObject();
    *&v31 = v5;

    sub_1D7B64E10(&v33, a1, v5 + 16);
    *(v5 + 80) = *a1;
    v6 = 0x50204030100uLL >> (8 * *(__swift_project_boxed_opaque_existential_1(&v33, *(&v34[0] + 1)) + 33));
    v35 = v4;
    sub_1D799D69C(&v31, v36);
    BYTE8(v36[2]) = v6;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_8:
  v35 = 0u;
  memset(v36, 0, 41);
LABEL_9:
  sub_1D7B65080((a1 + 1), &v26);
  if (!*(&v27[0] + 1))
  {
    sub_1D7AF4510(&v26, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
    v33 = 0u;
    memset(v34, 0, 24);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(&v26, *(&v27[0] + 1));
  (off_1F52A9510)(1, &v33);
  __swift_destroy_boxed_opaque_existential_1(&v26);
  if (!*(&v34[0] + 1))
  {
LABEL_15:
    sub_1D7AF4510(&v33, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);
    goto LABEL_16;
  }

  sub_1D799D69C(&v33, &v31);
  v7 = a1[7];
  if (v7 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_13;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    *(&v27[0] + 1) = &type metadata for EndOfArticleStyle;
    *&v27[1] = &protocol witness table for EndOfArticleStyle;
    v8 = swift_allocObject();
    *&v26 = v8;

    sub_1D7B64E10(&v31, a1, v8 + 16);
    *(v8 + 80) = *a1;
    v9 = 0x50204030100uLL >> (8 * *(__swift_project_boxed_opaque_existential_1(&v31, *(&v32[0] + 1)) + 33));
    *&v33 = v7;
    *(&v33 + 1) = 1;
    sub_1D799D69C(&v26, v34);
    BYTE8(v34[2]) = v9;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_16:
  v33 = 0u;
  memset(v34, 0, 41);
LABEL_17:
  sub_1D7B65080((a1 + 1), &v28);
  if (!v29)
  {
    sub_1D7AF4510(&v28, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
    v31 = 0u;
    memset(v32, 0, 24);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(&v28, v29);
  (off_1F52A9510)(2, &v31);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if (!*(&v32[0] + 1))
  {
LABEL_23:
    sub_1D7AF4510(&v31, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);
    goto LABEL_24;
  }

  sub_1D799D69C(&v31, &v26);
  v10 = a1[8];
  if (v10 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_21;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    v29 = &type metadata for EndOfArticleStyle;
    v30 = &protocol witness table for EndOfArticleStyle;
    v11 = swift_allocObject();
    *&v28 = v11;

    sub_1D7B64E10(&v26, a1, v11 + 16);
    *(v11 + 80) = *a1;
    v12 = 0x50204030100uLL >> (8 * *(__swift_project_boxed_opaque_existential_1(&v26, *(&v27[0] + 1)) + 33));
    *&v31 = v10;
    *(&v31 + 1) = 2;
    sub_1D799D69C(&v28, v32);
    BYTE8(v32[2]) = v12;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    goto LABEL_25;
  }

  __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_24:
  v31 = 0u;
  memset(v32, 0, 41);
LABEL_25:
  sub_1D7B65080((a1 + 1), &v23);
  if (!v24)
  {
    sub_1D7AF4510(&v23, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
    v26 = 0u;
    memset(v27, 0, 24);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(&v23, v24);
  (off_1F52A9510)(3, &v26);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  if (!*(&v27[0] + 1))
  {
LABEL_31:
    sub_1D7AF4510(&v26, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);
LABEL_32:
    v26 = 0u;
    memset(v27, 0, 41);
    goto LABEL_33;
  }

  sub_1D799D69C(&v26, &v28);
  v13 = a1[9];
  if (v13 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    __swift_destroy_boxed_opaque_existential_1(&v28);
    goto LABEL_32;
  }

LABEL_29:
  v24 = &type metadata for EndOfArticleStyle;
  v25 = &protocol witness table for EndOfArticleStyle;
  v14 = swift_allocObject();
  *&v23 = v14;

  sub_1D7B64E10(&v28, a1, v14 + 16);
  *(v14 + 80) = *a1;
  v15 = 0x50204030100uLL >> (8 * *(__swift_project_boxed_opaque_existential_1(&v28, v29) + 33));
  *&v26 = v13;
  *(&v26 + 1) = 3;
  sub_1D799D69C(&v23, v27);
  BYTE8(v27[2]) = v15;
  __swift_destroy_boxed_opaque_existential_1(&v28);
LABEL_33:
  v16 = v36[0];
  *a2 = v35;
  a2[1] = v16;
  a2[2] = v36[1];
  *(a2 + 41) = *(&v36[1] + 9);
  v17 = v34[0];
  a2[4] = v33;
  a2[5] = v17;
  a2[6] = v34[1];
  *(a2 + 105) = *(&v34[1] + 9);
  v18 = v31;
  v19 = v32[0];
  v20 = v32[1];
  *(a2 + 169) = *(&v32[1] + 9);
  a2[9] = v19;
  a2[10] = v20;
  a2[8] = v18;
  *(a2 + 233) = *(&v27[1] + 9);
  result = *v27;
  v22 = v27[1];
  a2[13] = v27[0];
  a2[14] = v22;
  a2[12] = v26;
  return result;
}

void sub_1D7B64E10(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v6 = sub_1D7D303CC();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v9 = sub_1D7D3031C();

  v10 = [objc_opt_self() colorWithHexString_];

  v11 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 32);
  if (*(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 32) == 1 && (v12 = *(a2 + 88)) != 0)
  {
    *a3 = v12;
    *(a3 + 32) = &type metadata for EndOfArticleSectionTitleHeaderStyle;
    *(a3 + 40) = &off_1F52B31F0;
    v13 = swift_allocObject();
    *(a3 + 8) = v13;
    *(v13 + 16) = v6;
    *(v13 + 24) = v8;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11;
    v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = *(v14 + 3);
    v28 = *(v14 + 2);
    v29 = v15;
    v30 = *(v14 + 4);
    v31 = v14[10];
    v16 = *(v14 + 1);
    v26 = *v14;
    v27 = v16;
    swift_unknownObjectRetain_n();

    v17 = v10;
    v18 = sub_1D7B650FC(&v26);

    swift_unknownObjectRelease();
    *(a3 + 48) = v18;
    v19 = 1;
  }

  else
  {
    *(a3 + 24) = &type metadata for EndOfArticleSectionTitleHeaderStyle;
    *(a3 + 32) = &off_1F52B31F0;
    v20 = swift_allocObject();
    *a3 = v20;
    *(v20 + 16) = v6;
    *(v20 + 24) = v8;
    *(v20 + 32) = v10;
    *(v20 + 40) = v11;
    v21 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v22 = *(v21 + 3);
    v28 = *(v21 + 2);
    v29 = v22;
    v30 = *(v21 + 4);
    v31 = v21[10];
    v23 = *(v21 + 1);
    v26 = *v21;
    v27 = v23;

    v24 = v10;
    v25 = sub_1D7B650FC(&v26);

    v19 = 0;
    *(a3 + 40) = v25;
  }

  *(a3 + 56) = v19;
}

uint64_t sub_1D7B65080(uint64_t a1, uint64_t a2)
{
  sub_1D7AF44B8(0, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D7B650FC(uint64_t a1)
{
  v13[3] = &type metadata for CombinedArticleRecirculationConfig.Section;
  v13[4] = &off_1F52A98F0;
  v2 = swift_allocObject();
  v13[0] = v2;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(__swift_project_boxed_opaque_existential_1(v13, &type metadata for CombinedArticleRecirculationConfig.Section) + 33);
  v6 = objc_opt_self();
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    sub_1D7B653B4(a1, v12);
    v8 = [v7 initWithRed:0.97 green:0.97 blue:0.97 alpha:1.0];
    v9 = [v6 secondarySystemBackgroundColor];
    v10 = [v6 ts:v8 dynamicColor:v9 withDarkStyleVariant:?];

    goto LABEL_6;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7B653B4(a1, v12);
  v10 = [v6 systemBackgroundColor];
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

void sub_1D7B65410(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleAdLayoutProcessor(0);
  v3 = sub_1D7D28D1C();
  if (v3)
  {
    v4 = v3;
    [a1 addProcessor_type_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7B654A4()
{
  sub_1D7D2D41C();
  swift_allocObject();
  return sub_1D7D2D40C();
}

void *sub_1D7B654DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D41C();
  result = sub_1D7D28CDC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0CBD60, MEMORY[0x1E69B4398], 1);
    result = sub_1D7D28CEC();
    if (v7)
    {
      v5 = sub_1D7D2D30C();
      swift_allocObject();
      result = sub_1D7D2D2FC();
      v6 = MEMORY[0x1E69B42E8];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B65618(uint64_t a1, void *a2)
{
  v3 = sub_1D7D2CF2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D7D28D1C();
  if (result)
  {
    v9 = result;
    v16 = sub_1D7D2CD3C();
    v17 = MEMORY[0x1E69B4030];
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D7D2CD2C();
    sub_1D7D2D2EC();
    __swift_destroy_boxed_opaque_existential_1(v15);
    *(swift_allocObject() + 16) = v9;
    sub_1D7B68580(0);
    v10 = sub_1D7D2D36C();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3B4D0;
    (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69B4310], v10);
    v16 = sub_1D7D2D01C();
    v17 = MEMORY[0x1E69B4200];
    __swift_allocate_boxed_opaque_existential_1(v15);
    swift_unknownObjectRetain();
    sub_1D7D2D00C();
    sub_1D7D2D2EC();
    __swift_destroy_boxed_opaque_existential_1(v15);
    *(swift_allocObject() + 16) = v9;
    (*(v4 + 104))(v7, *MEMORY[0x1E69B4128], v3);
    v16 = sub_1D7D2D14C();
    v17 = MEMORY[0x1E69B4288];
    __swift_allocate_boxed_opaque_existential_1(v15);
    swift_unknownObjectRetain();
    sub_1D7D2D13C();
    sub_1D7D2D2EC();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7B65930(void *a1)
{
  v1 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    [v1 articleNumberOfViewportsBetweenAds];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7B659B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2D19C();
  swift_allocObject();
  result = sub_1D7D2D18C();
  v4 = MEMORY[0x1E69B42A0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_1D7B65A08(void *a1, void *a2, uint64_t *a3)
{
  v18 = *a3;
  v17 = sub_1D7D2CF2C();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &qword_1EE0BEED8, 0x1E69B5230);
  v9 = sub_1D7D28D1C();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 possiblyUnfetchedAppConfiguration];
  }

  else
  {
    v11 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7D2D01C();
  v21 = MEMORY[0x1E69B4200];
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1D7D2D00C();
  sub_1D7D2D37C();
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_1D7D2853C();
  if (v11)
  {
    v13 = [v11 iAdConfig];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 isPreRequestPolicyValidationEnabled];
  }

  sub_1D798C730(qword_1EE0CADB0, v12, type metadata accessor for AdsAssembly, &unk_1D7D507CC);
  v15 = sub_1D7D285CC();

  if (v15)
  {
    *(swift_allocObject() + 16) = v11;
    (*(v5 + 104))(v8, *MEMORY[0x1E69B4120], v17);
    v20 = sub_1D7D2D14C();
    v21 = MEMORY[0x1E69B4288];
    __swift_allocate_boxed_opaque_existential_1(v19);
    swift_unknownObjectRetain();
    sub_1D7D2D13C();
    sub_1D7D2D37C();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D7B65D38(void *a1)
{
  if (a1)
  {
    v1 = [a1 iAdConfig];
    if (v1)
    {
      v2 = v1;
      [v1 articleNumberOfViewportsBetweenAds];
    }
  }
}

double sub_1D7B65D9C()
{
  type metadata accessor for ArticleAdLayoutProcessor(0);
  sub_1D7D291DC();

  sub_1D798C468(0, qword_1EE0C2010, &protocol descriptor for ArticleBannerAdRequesterFactoryType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0CBD60, MEMORY[0x1E69B4398], 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C7B10, &protocol descriptor for RecipeDataManagerType, 0);
  sub_1D7D291EC();

  return result;
}

void *sub_1D7B65EE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2D41C();
  result = sub_1D7D28CDC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C2010, &protocol descriptor for ArticleBannerAdRequesterFactoryType, 1);
    result = sub_1D7D28D2C();
    if (v12)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      v5 = MEMORY[0x1EEE9AC00](v4, v4);
      v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = sub_1D7B683FC(v3, *v7);
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7B66078@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C9C8(0, &qword_1EE0CBE10, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CDBC0, &protocol descriptor for ArticleBannerAdFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0CBD30, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBD98, MEMORY[0x1E69B4318], 1);
  result = sub_1D7D28CEC();
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEDF0, &protocolRef_SXDocumentControllerProvider);
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for ArticleBannerAdFactory();
    v25[3] = v14;
    v25[4] = &off_1F52B4328;
    v25[0] = v13;
    v15 = type metadata accessor for ArticleBannerAdRequesterFactory();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v14);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (&v25[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[6] = v14;
    v16[7] = &off_1F52B4328;
    v16[2] = v5;
    v16[3] = v22;
    v16[13] = v6;
    sub_1D799D69C(&v26, (v16 + 8));
    v16[14] = v7;
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v23 = v24;
    v24[3] = v15;
    v23[4] = &off_1F52B1338;
    *v23 = v16;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7B66454@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF150, 0x1E69CE0D0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AdPolicyViewportEnvironmentProvider();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_1D798C730(qword_1EE0C20C0, 255, type metadata accessor for AdPolicyViewportEnvironmentProvider, &unk_1D7D61D54);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7B66524@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0, MEMORY[0x1E69B6230], 1);
  result = sub_1D7D28D2C();
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFA10, MEMORY[0x1E69B4F20], 1);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCache();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF600, MEMORY[0x1E69B64B0], 1);
  result = sub_1D7D28D2C();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B68344(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    type metadata accessor for RecipeDataManager();
    v7 = swift_allocObject();
    v7[19] = 0;
    v7[20] = 0;
    sub_1D799D69C(&v12, (v7 + 2));
    sub_1D799D69C(&v10, (v7 + 12));
    v7[17] = v5;
    result = sub_1D799D69C(&v8, (v7 + 7));
    v7[18] = v6;
    *a2 = v7;
    a2[1] = &off_1F52ACD00;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7B66710@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDBE8, &protocol descriptor for RecipeBannerAdFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v40)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &unk_1EE0CBD40, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C9C8(0, &qword_1EE0CBE18, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C850(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7B10, &protocol descriptor for RecipeDataManagerType, 0);
  result = sub_1D7D28D2C();
  v9 = v37;
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v38;
  v33 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v29 = v7;
  v30 = v6;
  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E2B80, MEMORY[0x1E6997320], 1);
  result = sub_1D7D28D2C();
  if (v36)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v12 = MEMORY[0x1EEE9AC00](v11, v11);
    v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v14;
    v17 = type metadata accessor for RecipeBannerAdFactory();
    v34[3] = v17;
    v34[4] = &off_1F52B1E90;
    v34[0] = v16;
    v18 = type metadata accessor for RecipeBannerAdViewControllerProvider();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v17);
    v21 = MEMORY[0x1EEE9AC00](v20, v20);
    v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v19[6] = v17;
    v19[7] = &off_1F52B1E90;
    v19[2] = v33;
    v19[3] = v25;
    v19[8] = v30;
    v19[9] = v8;
    v26 = v32;
    v19[10] = v9;
    v19[11] = v26;
    v19[12] = v29;
    v19[13] = v10;
    sub_1D799D69C(&v35, (v19 + 14));
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v27 = v31;
    v31[3] = v18;
    result = sub_1D798C730(&unk_1EC9E58D8, 255, type metadata accessor for RecipeBannerAdViewControllerProvider, &protocol conformance descriptor for RecipeBannerAdViewControllerProvider);
    v27[4] = result;
    *v27 = v19;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1D7B66BF8(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0BFBA0, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFAC0, MEMORY[0x1E69B4268], 1);
  result = sub_1D7D28D2C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0CBD30, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E58C8, MEMORY[0x1E69B41A0], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = [result articleID];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_1D7D3034C();
  }

  sub_1D7D2CDFC();
  sub_1D798C4C4(0);
  swift_allocObject();
  return sub_1D7D2CF4C();
}

void *sub_1D7B66F30(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0BFBA8, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFAC0, MEMORY[0x1E69B4268], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &unk_1EE0CBD40, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E58C8, MEMORY[0x1E69B41A0], 1);
  result = sub_1D7D28D2C();
  if (v5)
  {
    sub_1D7D2CDFC();
    sub_1D798C850(0);
    swift_allocObject();
    return sub_1D7D2CF4C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7B671E0(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0BFBA0, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0CBD30, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = [result articleID];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_1D7D3034C();
  }

  sub_1D7D2CDFC();
  sub_1D798C9C8(0, &qword_1EE0CBE10, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0]);
  swift_allocObject();
  return sub_1D7D2CD5C();
}

void *sub_1D7B674E8(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0BFBA8, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &unk_1EE0CBD40, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2CDFC();
    sub_1D798C9C8(0, &qword_1EE0CBE18, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290]);
    swift_allocObject();
    return sub_1D7D2CD5C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7B67764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &qword_1EE0CBD30, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ArticleBannerAdFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F52B4328;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B67824@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CAA4(0, &unk_1EE0CBD40, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeBannerAdFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F52B1E90;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B6794C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(void))
{
  sub_1D798CAA4(0, a2, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], a3);
  swift_allocObject();
  return a4();
}

uint64_t sub_1D7B67A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(void))
{
  sub_1D798CAA4(0, a2, MEMORY[0x1E69B42B8], MEMORY[0x1E69B42B0], a3);
  swift_allocObject();
  return a4();
}

uint64_t sub_1D7B67AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_1D7D2932C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798CAA4(0, a2, a3, a4, MEMORY[0x1E69B3F38]);
  sub_1D7D291DC();
  (*(v9 + 104))(v12, *MEMORY[0x1E69D6AD0], v8);
  sub_1D7D28ADC();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D7B67C4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterstitialAdHistoryRecorder();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[3] = v2;
  a1[4] = &off_1F52A8080;
  *a1 = result;
  return result;
}

void *sub_1D7B67C98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v7[3])
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &qword_1EE0CBE38, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &unk_1EE0CBD20, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticlePrerollAdRequester();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFAF0, MEMORY[0x1E69B4118], 1);
  result = sub_1D7D28D2C();
  if (v6[3])
  {
    v3 = objc_allocWithZone(type metadata accessor for ArticleVideoAdProviderFactory(0));
    sub_1D799CC84(v6, v3 + qword_1EE0C4990);
    sub_1D799CC84(v7, v5);
    v4 = sub_1D7D2D0BC();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D7B67F00(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &qword_1EE0CBE38, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &unk_1EE0CBD20, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2CDFC();
    sub_1D798CC04(0);
    swift_allocObject();
    return sub_1D7D2CD5C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7B68184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(void))
{
  sub_1D798CCDC(0, a2, a3);
  swift_allocObject();
  return a4();
}

void *sub_1D7B681C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CC04(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &qword_1EE0CBE38, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798CCDC(0, &unk_1EE0CBD20, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEDF0, &protocolRef_SXDocumentControllerProvider);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    type metadata accessor for ArticlePrerollAdRequester();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    result[5] = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D7B68344(uint64_t a1)
{
  if (!qword_1EE0BF720)
  {
    sub_1D7B683A0();
    v1 = sub_1D7D2F13C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF720);
    }
  }
}

unint64_t sub_1D7B683A0()
{
  result = qword_1EE0C9170;
  if (!qword_1EE0C9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C9170);
  }

  return result;
}

id sub_1D7B683FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v16[3] = v3;
  v16[4] = &off_1F52B1338;
  v16[0] = a2;
  v4 = type metadata accessor for ArticleAdLayoutProcessor(0);
  v5 = objc_allocWithZone(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v16, v3);
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  v9 = (&v14 - v8);
  (*(v10 + 16))(&v14 - v8, v7);
  v11 = *v9;
  v15[3] = v3;
  v15[4] = &off_1F52B1338;
  v15[0] = v11;
  sub_1D7D2D1FC();
  *&v5[OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_layoutEnvironmentProvider] = a1;
  sub_1D799CC84(v15, &v5[OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_bannerAdRequesterFactory]);
  v14.receiver = v5;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v12;
}

void sub_1D7B68580(uint64_t a1)
{
  if (!qword_1EE0BE8F8)
  {
    sub_1D7D2D36C();
    v1 = sub_1D7D3191C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BE8F8);
    }
  }
}

uint64_t sub_1D7B685F8(void *a1)
{
  v53 = *v1;
  v54 = v1;
  v3 = sub_1D7D3039C();
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE0CA138;
  sub_1D79F3AB0(0);
  v50 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D3B4D0;
  v10 = [a1 identifier];
  v11 = sub_1D7D3034C();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D79D6AE0();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v15 = sub_1D7D30C6C();
  v51 = v7;
  sub_1D7D29AAC("Resolving EOA resource identifier for headline %{public}@", 57, 2, &dword_1D7987000, v7, v15, v9);

  v16 = [a1 sourceChannel];
  if (v16)
  {
    v49 = v14;
    v18 = [v16 articleRecirculationConfigJSON];
    v16 = swift_unknownObjectRelease();
    if (v18)
    {
      sub_1D7D3034C();

      sub_1D7D3038C();
      v19 = sub_1D7D3035C();
      v21 = v20;

      v16 = (*(v52 + 8))(v6, v3);
      v22 = v59;
      if (v21 >> 60 != 15)
      {
        sub_1D7D28A9C();
        swift_allocObject();
        sub_1D7D28A8C();
        sub_1D7B6A06C();
        sub_1D7D28A7C();
        if (v22)
        {

          LODWORD(v52) = sub_1D7D30C4C();
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1D7D3B4E0;
          v24 = [a1 identifier];
          v59 = v21;
          v25 = v24;
          v26 = sub_1D7D3034C();
          v28 = v27;

          v29 = MEMORY[0x1E69E6158];
          v30 = v19;
          v31 = v49;
          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = v31;
          *(v23 + 32) = v26;
          *(v23 + 40) = v28;
          v58[0] = 0;
          v58[1] = 0xE000000000000000;
          v57[0] = v22;
          sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
          sub_1D7D315DC();
          v32 = v58[0];
          v33 = v58[1];
          *(v23 + 96) = v29;
          *(v23 + 104) = v31;
          *(v23 + 72) = v32;
          *(v23 + 80) = v33;
          sub_1D7D29AAC("EOA resource identifier missing for headline %{public}@, error=%{public}@", 73, 2, &dword_1D7987000, v51, v52, v23);
          sub_1D79EA2D0(v30, v59);
        }

        else
        {

          memcpy(v57, v58, sizeof(v57));
          v37 = v57[137];
          if (v57[137])
          {
            v38 = v57[136];

            sub_1D7B6A0C0(v57);
            v39 = swift_allocObject();
            v54 = v19;
            v40 = v39;
            *(v39 + 16) = xmmword_1D7D3B4E0;
            v41 = v49;
            *(v39 + 56) = MEMORY[0x1E69E6158];
            *(v39 + 64) = v41;
            *(v39 + 32) = v38;
            *(v39 + 40) = v37;

            v42 = [a1 identifier];
            v59 = v21;
            v43 = v42;
            v44 = sub_1D7D3034C();
            v46 = v45;

            v40[12] = MEMORY[0x1E69E6158];
            v40[13] = v41;
            v40[9] = v44;
            v40[10] = v46;
            v47 = sub_1D7D30C6C();
            sub_1D7D29AAC("Resolved EOA resource identifier %{public}@ from headline config %{public}@", 75, 2, &dword_1D7987000, v51, v47, v40);

            v55 = v38;
            v56 = v37;
            sub_1D7AD7018();
            swift_allocObject();
            v35 = sub_1D7D2940C();
            sub_1D79EA2D0(v54, v59);
            return v35;
          }

          sub_1D79EA2D0(v19, v21);
          v16 = sub_1D7B6A0C0(v57);
        }
      }
    }
  }

  MEMORY[0x1EEE9AC00](v16, v17);
  *(&v48 - 2) = v54;
  *(&v48 - 1) = a1;
  sub_1D7D294BC();
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  v34 = sub_1D7D2934C();
  v35 = sub_1D7D293CC();

  return v35;
}