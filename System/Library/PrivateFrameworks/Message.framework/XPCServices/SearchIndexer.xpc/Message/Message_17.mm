uint64_t sub_100129238(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v10 - v4);
  result = sub_1004A4634();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_10000E268(v8, v5, &qword_1005CE300, &qword_1004D0DE0);
      result = *v5;
      if (v5[1] < result)
      {
        break;
      }

      sub_1004A45F4();
      result = sub_100025F40(v5, &qword_1005CE300, &qword_1004D0DE0);
      v8 += v9;
      if (!--v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100129368@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v78 - v8;
  __chkstk_darwin(v9);
  v84 = (&v78 - v10);
  v11 = sub_1004A5384();
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v78 - v14;
  __chkstk_darwin(v15);
  v17 = (&v78 - v16);
  v104 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v99 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v92 = (&v78 - v20);
  v103 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v97 = *(v103 - 8);
  __chkstk_darwin(v103);
  v90 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v100 = &v78 - v23;
  __chkstk_darwin(v24);
  v26 = &v78 - v25;
  __chkstk_darwin(v27);
  v94 = &v78 - v28;
  __chkstk_darwin(v29);
  v91 = (&v78 - v30);
  __chkstk_darwin(v31);
  v33 = (&v78 - v32);
  v34 = *v1;
  v93 = sub_100129FEC(*v1, *(v1 + 8) | (*(v1 + 12) << 32));
  v86 = v35;
  if (v36 == 1)
  {
    v82 = v26;
    v79 = v1;
    v83 = v17;
    v81 = v6;
    v95 = v11;
    v80 = a1;
    v37 = _swiftEmptyArrayStorage;
    v38 = v34;
    v87 = *(v34 + 16);
    v102 = v34;
    if (v87)
    {
      v39 = 0;
      v40 = &qword_1005D1118;
      while (v39 < v38[2])
      {
        v98 = v37;
        v41 = v38 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v39;
        v42 = v103;
        v43 = *(v103 + 48);
        v44 = v91;
        *v91 = v39;
        sub_10000E268(v41, v44 + v43, &qword_1005CE300, &qword_1004D0DE0);
        v2 = v40;
        sub_100025FDC(v44, v33, v40, &qword_1004D65D0);
        v45 = v33 + *(v42 + 48);
        v46 = v104;
        v47 = *(v104 + 48);
        v48 = v92;
        *v92 = *v45;
        sub_10000E268(&v45[v47], v48 + v47, &qword_1005D05E0, &qword_1004D65C0);
        v49 = v101;
        sub_100025FDC(v48, v101, &qword_1005CE300, &qword_1004D0DE0);
        a1 = *v49;
        sub_100025F40(v49 + *(v46 + 48), &qword_1005D05E0, &qword_1004D65C0);
        if (v93 > a1 || v86 <= a1)
        {
          v40 = v2;
          sub_100025F40(v33, v2, &qword_1004D65D0);
          v38 = v102;
          v37 = v98;
        }

        else
        {
          v40 = v2;
          sub_100025FDC(v33, v94, v2, &qword_1004D65D0);
          v37 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100091E68(0, *(v37 + 16) + 1, 1);
            v37 = v105;
          }

          v38 = v102;
          v52 = *(v37 + 16);
          v51 = *(v37 + 24);
          a1 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            sub_100091E68((v51 > 1), v52 + 1, 1);
            v37 = v105;
          }

          *(v37 + 16) = a1;
          sub_100025FDC(v94, v37 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v52, v2, &qword_1004D65D0);
        }

        v39 = (v39 + 1);
        if (v87 == v39)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v105 = v37;

      sub_10012A494(&v105);

      v33 = v105;
      sub_1004A5344();
      v2 = v84;
      v55 = v82;
      v94 = v33[2];
      if (!v94)
      {
        v65 = *(v85 + 32);
        v64 = (v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
LABEL_24:
        v39 = v83;
        v2 = v95;
        v86 = v64;
        v98 = v65;
        v65(v83, v96, v95);
        v66 = v33[2];
        if (v66)
        {
          v105 = _swiftEmptyArrayStorage;
          sub_100091C48(0, v66, 0);
          v37 = v105;
          v67 = v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v68 = *(v97 + 72);
          do
          {
            v69 = v100;
            sub_10000E268(v67, v100, &qword_1005D1118, &qword_1004D65D0);
            v70 = v90;
            sub_100025FDC(v69, v90, &qword_1005D1118, &qword_1004D65D0);
            v71 = *v70;
            sub_100025F40(v70 + *(v103 + 48) + *(v104 + 48), &qword_1005D05E0, &qword_1004D65C0);
            v105 = v37;
            v73 = *(v37 + 16);
            v72 = *(v37 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_100091C48((v72 > 1), v73 + 1, 1);
              v37 = v105;
            }

            *(v37 + 16) = v73 + 1;
            *(v37 + 8 * v73 + 32) = v71;
            v67 += v68;
            --v66;
          }

          while (v66);

          v2 = v95;
          v39 = v83;
          v38 = v102;
        }

        else
        {

          v37 = _swiftEmptyArrayStorage;
        }

        a1 = *(v37 + 16);
        v33 = v81;
        if (!a1)
        {

LABEL_39:
          v77 = v80;
          v98(v80, v39, v2);
          return (*(v85 + 56))(v77, 0, 1, v2);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v74 = *(v85 + 56);
          v75 = 32;
          do
          {
            v76 = *(v37 + v75);
            v74(v33, 1, 1, v2);
            if ((v76 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v76 >= v102[2])
            {
              goto LABEL_43;
            }

            sub_10012A590(v33, v102 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v76 + *(v104 + 48));
            v75 += 8;
            a1 = (a1 - 1);
          }

          while (a1);

          *v79 = v102;
          goto LABEL_39;
        }

LABEL_44:
        v102 = sub_1001398A4(v38);
        goto LABEL_33;
      }

      v37 = 0;
      v91 = (v85 + 8);
      v39 = &qword_1005D1118;
      a1 = &qword_1004D65D0;
      v92 = (v85 + 32);
      v93 = (v85 + 48);
      v86 = ((v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v87 = v33;
      while (v37 < v33[2])
      {
        v56 = v37;
        sub_10000E268(v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v37, v55, &qword_1005D1118, &qword_1004D65D0);
        v57 = v100;
        sub_10000E268(v55, v100, &qword_1005D1118, &qword_1004D65D0);
        v58 = v57 + *(v103 + 48);
        v59 = *(v104 + 48);
        v60 = v101;
        sub_100025FDC(v58 + v59, v101 + v59, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025FDC(v60 + v59, v2, &qword_1005D05E0, &qword_1004D65C0);
        v61 = v89;
        sub_10000E268(v2, v89, &qword_1005D05E0, &qword_1004D65C0);
        v62 = v2;
        v63 = v95;
        if ((*v93)(v61, 1, v95) == 1)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v38 = v88;
        v98 = *v92;
        v98(v88, v61, v63);
        sub_1004A5354();
        v37 = v56 + 1;
        (*v91)(v38, v63);
        sub_100025F40(v62, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v55, &qword_1005D1118, &qword_1004D65D0);
        v2 = v62;
        v33 = v87;
        if (v94 == v56 + 1)
        {
          v38 = v102;
          v64 = v86;
          v65 = v98;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v53 = *(v85 + 56);

  return v53(a1, 1, 1, v11);
}

uint64_t sub_100129E64(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  result = sub_1004A4634();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10000E268(v9, v5, &qword_1005CE300, &qword_1004D0DE0);
      v11 = sub_1004A5384();
      if ((*(*(v11 - 8) + 48))(&v5[v8], 1, v11) != 1)
      {
        result = *v5;
        if (*(v5 + 1) < result)
        {
          __break(1u);
          return result;
        }

        sub_1004A45F4();
      }

      result = sub_100025F40(v5, &qword_1005CE300, &qword_1004D0DE0);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_100129FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4614();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1004A4644();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  if ((a2 & 0xFFFFFFFFFFLL) != 0)
  {
    v43 = a2 & 0xFFFFFFFFFFLL;
    v44 = v19;
    v42 = a2;
    v45 = a1;
    sub_100129238(a1);
    sub_1004A4624();
    v22 = *(v11 + 8);
    v22(v21, v10);
    sub_10012A548(&qword_1005CE310, &type metadata accessor for IndexSet.RangeView, &protocol conformance descriptor for IndexSet.RangeView);
    sub_1004A5E64();
    sub_1004A5EA4();
    if (v48 == v47[0])
    {
      (*(v5 + 8))(v9, v4);
      return 0;
    }

    v23 = sub_1004A5F34();
    v25 = *v24;
    v41 = v24[1];
    v23(v47, 0);
    v27 = *(v5 + 8);
    v26 = v5 + 8;
    v28 = v9;
    v29 = v27;
    v27(v28, v4);
    if (v25)
    {
      return 0;
    }

    v39 = v29;
    v40 = v26;
    sub_100129E64(v45);
    sub_1004A45C4();
    v31 = v22;
    v32 = v44;
    sub_1004A45D4();
    v31(v13, v10);
    v31(v16, v10);
    v33 = v46;
    sub_1004A4624();
    v31(v32, v10);
    sub_1004A5E64();
    sub_1004A5EA4();
    if (v48 != v47[0])
    {
      v35 = sub_1004A5F34();
      v37 = *v36;
      v35(v47, 0);
      v39(v33, v4);
      return v37;
    }

    v34 = v42;
    v39(v33, v4);
    result = v41;
    if ((v34 & 0xFF00000000) != 0 || v41 != v34)
    {
      if ((v41 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v41))
        {
          return result;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  return 0;
}

double sub_10012A468@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_10012A494(uint64_t *a1)
{
  v2 = *(sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001419F8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10012A600(v5);
  *a1 = v3;
}

uint64_t sub_10012A548(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10012A600(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004A6CC4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012AAB0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10012A744(0, v2, 1, a1);
  }
}

void sub_10012A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  __chkstk_darwin(v52);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v39 - v10;
  __chkstk_darwin(v11);
  v50 = &v39 - v12;
  __chkstk_darwin(v13);
  v49 = &v39 - v14;
  __chkstk_darwin(v15);
  v56 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v46 = -v19;
    v47 = v18;
    v21 = &qword_1005D1118;
    v22 = a1 - a3;
    v40 = v19;
    v23 = v18 + v19 * a3;
    v24 = &qword_1004D65D0;
LABEL_5:
    v44 = v20;
    v45 = a3;
    v42 = v23;
    v43 = v22;
    v53 = v22;
    v25 = v52;
    while (1)
    {
      v26 = v56;
      sub_10000E268(v23, v56, v21, v24);
      v27 = v49;
      sub_10000E268(v20, v49, v21, v24);
      v28 = v21;
      v29 = v50;
      sub_10000E268(v26, v50, v28, v24);
      v30 = (v29 + *(v25 + 48));
      v55 = *v30;
      v31 = v24;
      v32 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
      v54 = *(v32 + 48);
      v33 = v51;
      sub_10000E268(v27, v51, v28, v31);
      v34 = (v33 + *(v25 + 48));
      v21 = v28;
      v35 = *v34;
      v36 = *(v32 + 48);
      v24 = v31;
      sub_100025F40(v34 + v36, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v30 + v54, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v27, v28, v31);
      sub_100025F40(v56, v28, v31);
      v37 = v55 >= v35;
      v25 = v52;
      if (v37)
      {
LABEL_4:
        a3 = v45 + 1;
        v20 = v44 + v40;
        v22 = v43 - 1;
        v23 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v38 = v48;
      sub_100025FDC(v23, v48, v28, v31);
      swift_arrayInitWithTakeFrontToBack();
      sub_100025FDC(v38, v20, v28, v31);
      v20 += v46;
      v23 += v46;
      v37 = __CFADD__(v53++, 1);
      if (v37)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10012AAB0(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v140 = *(v8 - 8);
  __chkstk_darwin(v8);
  v135 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v145 = &v128 - v11;
  __chkstk_darwin(v12);
  v149 = &v128 - v13;
  __chkstk_darwin(v14);
  v148 = &v128 - v15;
  __chkstk_darwin(v16);
  v147 = &v128 - v17;
  __chkstk_darwin(v18);
  v146 = &v128 - v20;
  v21 = a3[1];
  v136 = a3;
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_98:
    v22 = v23;
    v23 = *v132;
    if (!*v132)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v153 = v22;
      v124 = *(v22 + 16);
      if (v124 >= 2)
      {
        while (*a3)
        {
          v125 = *(v22 + 16 * v124);
          v126 = *(v22 + 16 * (v124 - 1) + 40);
          sub_10012B6C0(*a3 + *(v140 + 72) * v125, *a3 + *(v140 + 72) * *(v22 + 16 * (v124 - 1) + 32), *a3 + *(v140 + 72) * v126, v23);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v126 < v125)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100141810(v22);
          }

          if (v124 - 2 >= *(v22 + 16))
          {
            goto LABEL_124;
          }

          v127 = (v22 + 16 * v124);
          *v127 = v125;
          v127[1] = v126;
          v153 = v22;
          sub_100141784(v124 - 1);
          v22 = v153;
          v124 = *(v153 + 16);
          a3 = v136;
          if (v124 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v22 = sub_100141810(v22);
    goto LABEL_100;
  }

  v129 = a4;
  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v24 = v19;
  v150 = v19;
  while (1)
  {
    if (v22 + 1 >= v21)
    {
      v38 = v22 + 1;
    }

    else
    {
      v142 = v21;
      v130 = v23;
      v131 = v5;
      v25 = v22;
      v133 = v22;
      v152 = *a3;
      v26 = v152;
      v27 = *(v140 + 72);
      v28 = v152 + v27 * (v22 + 1);
      v29 = v146;
      sub_10000E268(v28, v146, &qword_1005D1118, &qword_1004D65D0);
      v30 = v147;
      sub_10000E268(v26 + v27 * v25, v147, &qword_1005D1118, &qword_1004D65D0);
      v31 = v148;
      sub_10000E268(v29, v148, &qword_1005D1118, &qword_1004D65D0);
      v32 = (v31 + *(v24 + 48));
      LODWORD(v139) = *v32;
      v33 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
      v151 = *(v33 + 48);
      v23 = &qword_1004D65D0;
      v34 = v149;
      sub_10000E268(v30, v149, &qword_1005D1118, &qword_1004D65D0);
      v35 = (v34 + *(v24 + 48));
      LODWORD(v138) = *v35;
      v137 = v33;
      sub_100025F40(v35 + *(v33 + 48), &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v32 + v151, &qword_1005D05E0, &qword_1004D65C0);
      sub_100025F40(v30, &qword_1005D1118, &qword_1004D65D0);
      sub_100025F40(v29, &qword_1005D1118, &qword_1004D65D0);
      v36 = v133 + 2;
      v141 = v27;
      v37 = v152 + v27 * (v133 + 2);
      while (1)
      {
        v38 = v142;
        if (v142 == v36)
        {
          break;
        }

        LODWORD(v152) = v139 < v138;
        v39 = v146;
        sub_10000E268(v37, v146, &qword_1005D1118, &qword_1004D65D0);
        v40 = v28;
        v41 = v147;
        sub_10000E268(v28, v147, &qword_1005D1118, &qword_1004D65D0);
        v42 = v148;
        sub_10000E268(v39, v148, &qword_1005D1118, &qword_1004D65D0);
        v43 = v150;
        v44 = (v42 + *(v150 + 48));
        LODWORD(v151) = *v44;
        v45 = v137;
        v143 = *(v137 + 48);
        v46 = v149;
        sub_10000E268(v41, v149, &qword_1005D1118, &qword_1004D65D0);
        v47 = (v46 + *(v43 + 48));
        LODWORD(v144) = *v47;
        sub_100025F40(v47 + *(v45 + 48), &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v44 + v143, &qword_1005D05E0, &qword_1004D65C0);
        v23 = &qword_1004D65D0;
        sub_100025F40(v41, &qword_1005D1118, &qword_1004D65D0);
        sub_100025F40(v39, &qword_1005D1118, &qword_1004D65D0);
        ++v36;
        v37 += v141;
        v28 = v40 + v141;
        if (((v152 ^ (v151 >= v144)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v24 = v150;
      v5 = v131;
      a3 = v136;
      v22 = v133;
      if (v139 >= v138)
      {
        goto LABEL_24;
      }

      if (v38 < v133)
      {
        goto LABEL_127;
      }

      if (v133 >= v38)
      {
LABEL_24:
        v23 = v130;
      }

      else
      {
        v48 = v38;
        v49 = v141 * (v38 - 1);
        v50 = v38 * v141;
        v142 = v38;
        v51 = v133;
        v52 = v133 * v141;
        do
        {
          if (v51 != --v48)
          {
            v53 = *v136;
            if (!*v136)
            {
              goto LABEL_133;
            }

            sub_100025FDC(v53 + v52, v135, &qword_1005D1118, &qword_1004D65D0);
            if (v52 < v49 || v53 + v52 >= v53 + v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100025FDC(v135, v53 + v49, &qword_1005D1118, &qword_1004D65D0);
          }

          ++v51;
          v49 -= v141;
          v50 -= v141;
          v52 += v141;
        }

        while (v51 < v48);
        v5 = v131;
        v23 = v130;
        v24 = v150;
        a3 = v136;
        v22 = v133;
        v38 = v142;
      }
    }

    v54 = a3[1];
    if (v38 >= v54)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v38, v22))
    {
      goto LABEL_126;
    }

    if (v38 - v22 >= v129)
    {
LABEL_35:
      v56 = v38;
      if (v38 < v22)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v129))
    {
      goto LABEL_128;
    }

    if (v22 + v129 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = v22 + v129;
    }

    if (v55 < v22)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v38 == v55)
    {
      goto LABEL_35;
    }

    v130 = v23;
    v131 = v5;
    v104 = *a3;
    v105 = *(v140 + 72);
    v106 = *a3 + v105 * (v38 - 1);
    v143 = -v105;
    v144 = v104;
    v133 = v22;
    v134 = v105;
    v107 = v22 - v38;
    v108 = v104 + v38 * v105;
    v109 = v24;
    v137 = v55;
LABEL_89:
    v141 = v106;
    v142 = v38;
    v138 = v108;
    v139 = v107;
    v110 = v108;
    v111 = v107;
LABEL_90:
    v151 = v111;
    v112 = v146;
    sub_10000E268(v110, v146, &qword_1005D1118, &qword_1004D65D0);
    v113 = v147;
    sub_10000E268(v106, v147, &qword_1005D1118, &qword_1004D65D0);
    v114 = v148;
    sub_10000E268(v112, v148, &qword_1005D1118, &qword_1004D65D0);
    v115 = (v114 + *(v109 + 48));
    LODWORD(v152) = *v115;
    v116 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
    v117 = *(v116 + 48);
    v118 = v149;
    sub_10000E268(v113, v149, &qword_1005D1118, &qword_1004D65D0);
    v119 = (v118 + *(v109 + 48));
    v120 = *v119;
    sub_100025F40(v119 + *(v116 + 48), &qword_1005D05E0, &qword_1004D65C0);
    sub_100025F40(v115 + v117, &qword_1005D05E0, &qword_1004D65C0);
    sub_100025F40(v113, &qword_1005D1118, &qword_1004D65D0);
    sub_100025F40(v112, &qword_1005D1118, &qword_1004D65D0);
    if (v152 < v120)
    {
      break;
    }

    v109 = v150;
LABEL_88:
    v38 = v142 + 1;
    v106 = v141 + v134;
    v107 = v139 - 1;
    v108 = v138 + v134;
    v56 = v137;
    if (v142 + 1 != v137)
    {
      goto LABEL_89;
    }

    v5 = v131;
    a3 = v136;
    v23 = v130;
    v22 = v133;
    if (v137 < v133)
    {
      goto LABEL_125;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_100085288(0, *(v23 + 2) + 1, 1, v23);
    }

    v59 = *(v23 + 2);
    v58 = *(v23 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v23 = sub_100085288((v58 > 1), v59 + 1, 1, v23);
    }

    *(v23 + 2) = v60;
    v61 = &v23[16 * v59];
    v62 = v137;
    *(v61 + 4) = v22;
    *(v61 + 5) = v62;
    v152 = *v132;
    if (!v152)
    {
      goto LABEL_135;
    }

    if (v59)
    {
      v24 = v150;
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v23 + 4);
          v65 = *(v23 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_56:
          if (v67)
          {
            goto LABEL_114;
          }

          v80 = &v23[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_117;
          }

          v86 = &v23[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_121;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v90 = &v23[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_70:
        if (v85)
        {
          goto LABEL_116;
        }

        v93 = &v23[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_119;
        }

        if (v96 < v84)
        {
          goto LABEL_4;
        }

LABEL_77:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v102 = *&v23[16 * v101 + 32];
        v22 = *&v23[16 * v63 + 40];
        sub_10012B6C0(*a3 + *(v140 + 72) * v102, *a3 + *(v140 + 72) * *&v23[16 * v63 + 32], *a3 + *(v140 + 72) * v22, v152);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v22 < v102)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100141810(v23);
        }

        if (v101 >= *(v23 + 2))
        {
          goto LABEL_111;
        }

        v103 = &v23[16 * v101];
        *(v103 + 4) = v102;
        *(v103 + 5) = v22;
        v153 = v23;
        sub_100141784(v63);
        v23 = v153;
        v60 = *(v153 + 16);
        v24 = v150;
        if (v60 <= 1)
        {
          goto LABEL_4;
        }
      }

      v68 = &v23[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_112;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_113;
      }

      v75 = &v23[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_115;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_118;
      }

      if (v79 >= v71)
      {
        v97 = &v23[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_122;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v24 = v150;
LABEL_4:
    v21 = a3[1];
    v22 = v137;
    if (v137 >= v21)
    {
      goto LABEL_98;
    }
  }

  v121 = v151;
  if (v144)
  {
    v122 = v145;
    sub_100025FDC(v110, v145, &qword_1005D1118, &qword_1004D65D0);
    v109 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_100025FDC(v122, v106, &qword_1005D1118, &qword_1004D65D0);
    v106 += v143;
    v110 += v143;
    v123 = __CFADD__(v121, 1);
    v111 = v121 + 1;
    if (v123)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_10012B6C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  __chkstk_darwin(v66);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v52 - v10;
  __chkstk_darwin(v11);
  v59 = &v52 - v12;
  __chkstk_darwin(v13);
  v58 = &v52 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v69 = a1;
  v68 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v20;
    if (v20 >= 1)
    {
      v35 = -v16;
      v36 = v34;
      v64 = a4;
      v65 = a1;
      v54 = -v16;
      while (2)
      {
        while (1)
        {
          v52 = v34;
          v37 = a2 + v35;
          v55 = a2;
          v56 = a2 + v35;
          while (1)
          {
            if (a2 <= a1)
            {
              v69 = a2;
              v67 = v52;
              goto LABEL_59;
            }

            v39 = a3;
            v53 = v34;
            v63 = a3 + v35;
            v40 = v36 + v35;
            v41 = v36 + v35;
            v42 = v58;
            sub_10000E268(v41, v58, &qword_1005D1118, &qword_1004D65D0);
            v43 = v59;
            sub_10000E268(v37, v59, &qword_1005D1118, &qword_1004D65D0);
            v44 = v60;
            sub_10000E268(v42, v60, &qword_1005D1118, &qword_1004D65D0);
            v45 = v66;
            v46 = (v44 + *(v66 + 48));
            v62 = *v46;
            v47 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
            v57 = *(v47 + 48);
            v48 = v61;
            sub_10000E268(v43, v61, &qword_1005D1118, &qword_1004D65D0);
            v49 = (v48 + *(v45 + 48));
            LODWORD(v45) = *v49;
            sub_100025F40(v49 + *(v47 + 48), &qword_1005D05E0, &qword_1004D65C0);
            sub_100025F40(v46 + v57, &qword_1005D05E0, &qword_1004D65C0);
            sub_100025F40(v43, &qword_1005D1118, &qword_1004D65D0);
            sub_100025F40(v42, &qword_1005D1118, &qword_1004D65D0);
            if (v62 < v45)
            {
              break;
            }

            v34 = v40;
            a3 = v63;
            v50 = v64;
            if (v39 < v36 || v63 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
              v37 = v56;
              a1 = v65;
              v35 = v54;
            }

            else
            {
              v37 = v56;
              a1 = v65;
              v35 = v54;
              if (v39 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v40;
            v38 = v40 > v50;
            a2 = v55;
            if (!v38)
            {
              goto LABEL_57;
            }
          }

          a3 = v63;
          v51 = v64;
          if (v39 < v55 || v63 >= v55)
          {
            break;
          }

          a2 = v56;
          a1 = v65;
          v34 = v53;
          v35 = v54;
          if (v39 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v36 <= v51)
          {
            goto LABEL_57;
          }
        }

        a2 = v56;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v65;
        v34 = v53;
        v35 = v54;
        if (v36 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v69 = a2;
    v67 = v34;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v19;
    v67 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v63 = a3;
      v56 = v16;
      v22 = v58;
      do
      {
        v64 = a4;
        v65 = a1;
        sub_10000E268(a2, v22, &qword_1005D1118, &qword_1004D65D0);
        v23 = v59;
        sub_10000E268(a4, v59, &qword_1005D1118, &qword_1004D65D0);
        v24 = v60;
        sub_10000E268(v22, v60, &qword_1005D1118, &qword_1004D65D0);
        v25 = v66;
        v26 = (v24 + *(v66 + 48));
        v62 = *v26;
        v27 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
        v28 = *(v27 + 48);
        v29 = v61;
        sub_10000E268(v23, v61, &qword_1005D1118, &qword_1004D65D0);
        v30 = (v29 + *(v25 + 48));
        LODWORD(v25) = *v30;
        sub_100025F40(v30 + *(v27 + 48), &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v26 + v28, &qword_1005D05E0, &qword_1004D65C0);
        sub_100025F40(v23, &qword_1005D1118, &qword_1004D65D0);
        sub_100025F40(v22, &qword_1005D1118, &qword_1004D65D0);
        if (v62 >= v25)
        {
          v31 = v56;
          v32 = v65;
          a4 = v64 + v56;
          if (v65 < v64 || v65 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v63;
          }

          else
          {
            v33 = v63;
            if (v65 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4;
        }

        else
        {
          v31 = v56;
          a4 = v64;
          v32 = v65;
          if (v65 < a2 || v65 >= a2 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v31;
            v33 = v63;
          }

          else
          {
            v33 = v63;
            if (v65 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v31;
          }
        }

        a1 = v32 + v31;
        v69 = a1;
      }

      while (a4 < v57 && a2 < v33);
    }
  }

LABEL_59:
  sub_10017D820(&v69, &v68, &v67);
}

uint64_t sub_10012BD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012BE10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1004A5384();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10012BEB0(uint64_t a1)
{
  v1 = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10012BF08(uint64_t a1)
{
  sub_10012C000();
  if (v1 <= 0x3F)
  {
    sub_10012C030();
    if (v2 <= 0x3F)
    {
      sub_10012C060(319);
      if (v3 <= 0x3F)
      {
        sub_10012C0E0(319);
        if (v4 <= 0x3F)
        {
          sub_10012C1B4(319, &qword_1005D1268);
          if (v5 <= 0x3F)
          {
            sub_10012C14C();
            if (v6 <= 0x3F)
            {
              sub_10012C1B4(319, &unk_1005D1278);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void *sub_10012C000()
{
  result = qword_1005D1240;
  if (!qword_1005D1240)
  {
    result = &type metadata for UInt32;
    atomic_store(&type metadata for UInt32, &qword_1005D1240);
  }

  return result;
}

void *sub_10012C030()
{
  result = qword_1005D1248;
  if (!qword_1005D1248)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1005D1248);
  }

  return result;
}

void sub_10012C060(uint64_t a1)
{
  if (!qword_1005D1250)
  {
    sub_1004A4644();
    sub_10000DEFC(&qword_1005D1258, &qword_1004D65E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1250);
    }
  }
}

void sub_10012C0E0(uint64_t a1)
{
  if (!qword_1005D1260)
  {
    sub_1004A4644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1260);
    }
  }
}

void sub_10012C14C()
{
  if (!qword_1005D1270)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D1270);
    }
  }
}

void sub_10012C1B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012C2AC(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10012C2C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_10012C2EC(uint64_t *a1, uint64_t *a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10012C754(v10 + v12, v9);
  v13 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10012C754(v11 + v13, v6);
  LOBYTE(v11) = sub_10012C7B8(v9, v6);
  sub_10012C85C(v6);
  sub_10012C85C(v9);
  return v11 & 1;
}

uint64_t sub_10012C408()
{
  sub_10012C85C(v0 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);

  return swift_deallocClassInstance();
}

uint64_t sub_10012C494(uint64_t a1)
{
  result = _s13SelectedStateV7WrappedVMa(319);
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

uint64_t sub_10012C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for MailboxSyncState(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10012C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for MailboxSyncState(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10012C670(uint64_t a1)
{
  type metadata accessor for MailboxSyncState(319);
  if (v1 <= 0x3F)
  {
    sub_10012C704();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012C704()
{
  if (!qword_1005D13C8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D13C8);
    }
  }
}

uint64_t sub_10012C754(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C7B8(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s13SelectedStateV7WrappedVMa(0);
  if ((sub_1000D42EC(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10012C85C(uint64_t a1)
{
  v2 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10012C94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for State.Logger(uint64_t a1)
{
  result = qword_1005D1458;
  if (!qword_1005D1458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012CA08(uint64_t a1)
{
  result = sub_1004A4A74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012CA94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012CADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10012CB6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 16);
  result = swift_beginAccess();
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
LABEL_3:
    v9 = (v8 + 176 * v7);
    while (v7 < v5)
    {
      v10 = v9[9];
      v21 = v9[8];
      v22 = v10;
      v23 = v9[10];
      v11 = v9[5];
      v20[4] = v9[4];
      v20[5] = v11;
      v12 = v9[7];
      v20[6] = v9[6];
      v20[7] = v12;
      v13 = v9[1];
      v20[0] = *v9;
      v20[1] = v13;
      v14 = v9[3];
      v20[2] = v9[2];
      v20[3] = v14;
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      v16 = *(&v21 + 1);
      sub_10000E08C(v20, &v19);

      LOBYTE(v16) = sub_10012DDBC(v17, v16);

      result = sub_10000E0E8(v20);
      if ((v16 & 1) == 0)
      {
        if (!__OFADD__(a1++, 1))
        {
          ++v7;
          if (v15 != v5)
          {
            goto LABEL_3;
          }

          return a1;
        }

LABEL_14:
        __break(1u);
        return result;
      }

      ++v7;
      v9 += 11;
      if (v15 == v5)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_10012CCA4(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100139804(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_10012CD38;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10012CD44(uint64_t a1, unsigned int a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = BYTE1(__dst[3]);
  v6 = __dst[4];
  v7 = BYTE2(__dst[2]);
  v8 = __dst[7];

  sub_100166D28();
  v10 = v9;
  v19 = v7;
  if (v6 == 3 || v6 == 2)
  {

    if ((__dst[24] & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  sub_100166E18(v9);
  sub_100013AD0(&off_100598658, v8);
  sub_100166E18(v10);
  v16 = sub_100013CF4(v8);

  if (v16 & 1) == 0 && (v5)
  {
    sub_100166E18(v10);
  }

  if (__dst[24])
  {
LABEL_4:
    v13 = __dst[22];
    v12 = __dst[23];
    v14 = __dst[21];
    v18 = __dst[21];

    sub_1000BD984(&v18, a1, a2, 0);
    result = sub_100020D58(v14, v13, v12, 1);
    v15 = v18;
    *(__src + 22) = 0;
    *(__src + 23) = 0;
    *(__src + 21) = v15;
    *(__src + 192) = 1;
  }

  return result;
}

uint64_t sub_10012D0D0(uint64_t a1, unsigned int a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  v7 = LOBYTE(__dst[3]);
  v8 = BYTE1(__dst[3]);
  v9 = __dst[4];
  v10 = LOBYTE(__dst[5]);
  v11 = BYTE2(__dst[2]);
  v12 = __dst[6];
  v13 = __dst[7];

  sub_100166D28();
  v15 = v14;
  v49 = v11;
  v46 = a4;
  if (v9 == 3 || v9 == 2)
  {

    v16 = 0;
    v17 = 0;
    v18 = 0x100000000000000;
    v19 = &_mh_execute_header;
    v20 = 0x1000000;
    v21 = 512;
    v22 = 1;
    goto LABEL_71;
  }

  v23 = sub_100166E18(v14);
  if ((v8 & 1) == 0)
  {
    if (v9 == 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v24 = 0;
          v19 = &_mh_execute_header;
          v25 = 512;
LABEL_77:
          v41 = v25;
          goto LABEL_19;
        }

LABEL_76:
        v24 = 0;
        v19 = 0;
        v7 = 1;
        v25 = 256;
        goto LABEL_77;
      }
    }

    else if (!v9 && v7)
    {
      if (v7 != 1)
      {
        v7 = 0;
        v41 = 0;
        v24 = 0;
        v19 = 0;
        goto LABEL_19;
      }

      goto LABEL_76;
    }
  }

  v7 = (v23 & 1) == 0;
  if (v23)
  {
    v19 = 0;
  }

  else
  {
    v19 = &_mh_execute_header;
  }

  v26 = 512;
  if (v23)
  {
    v26 = 0;
  }

  v41 = v26;
  v24 = (v23 & 1) == 0;
LABEL_19:
  v27 = sub_100013AD0(&off_100598658, v13);
  if (v27)
  {
    v28 = v7;
  }

  else
  {
    v28 = 1;
  }

  v42 = v28;
  v29 = (v27 & 1) == 0 || v24;
  v40 = v29;
  v30 = sub_100166E18(v15);
  v31 = sub_100013CF4(v13);

  v32 = v31 ^ 1;
  if (v31 & 1) == 0 && (v8)
  {
    v32 = sub_100166E18(v15);
    v31 = v32 ^ 1;
  }

  v33 = *(v15 + 16);

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v35 = 0x10000;
      if ((v32 & 1) == 0)
      {
        v35 = 0;
      }

      if (v31)
      {
        v16 = v35;
      }

      else
      {
        v16 = 0x20000;
      }
    }

    else if (v32)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= 3989)
    {
      v21 = 512;
    }

    else
    {
      v21 = v41;
    }

    if (((v33 == 0) & v8) != 0)
    {
      v18 = 0x100000000000000;
    }

    else
    {
      v18 = 0;
    }

    if (v30)
    {
      v17 = 0x10000000000;
    }

    else
    {
      v17 = 0;
    }

    if ((v40 & 1) == 0)
    {
      v20 = 0;
      v34 = v42;
      goto LABEL_70;
    }

    v34 = v42;
  }

  else
  {
    v16 = 0;
    if (v10)
    {
      v20 = 0;
      if (v12 >= 3989)
      {
        v21 = 512;
      }

      else
      {
        v21 = v41;
      }

      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = v42;
      if ((v40 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = 1;
      v21 = 512;
    }
  }

  v20 = 0x1000000;
LABEL_70:
  v22 = v34;
LABEL_71:
  *v51 = *&__dst[21];
  *&v51[9] = *(&__dst[22] + 1);
  if (__dst[24])
  {
    v36 = v49;
    v48 = *v51;
    sub_1001428C0(v51, v47);
    v37 = 0x1000000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    sub_1000BDC8C(&v48, a1, a2, 0, a3, v46, v16 | v21 | v22 | v20 | v19 | v17 | v18 | v37);
    result = sub_10014291C(v51);
    v39 = v48;
    v5[22] = 0;
    v5[23] = 0;
    v5[21] = v39;
    *(v5 + 192) = 1;
  }

  else
  {
    sub_1001428C0(v51, v47);
  }

  return result;
}

uint64_t sub_10012D47C(uint64_t a1)
{
  v2 = sub_1004A6554();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10001D9C4(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void sub_10012D504(uint64_t a1)
{
  v2 = sub_1004A6554();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_10001DA68(&v3, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10012D588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A6554();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    result = sub_10001DAEC(&v11, v4, *(a1 + 36), 0, a1);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

double sub_10012D634(uint64_t a1)
{
  v2 = sub_1004A6554();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_100142178(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_10012D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v4);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v54[-v8];
  memcpy(v68, v1, sizeof(v68));
  sub_10012DCC8();
  v11 = v10;
  memcpy(v67, v1, sizeof(v67));
  v12 = sub_10013244C(v11);
  v13 = v12;
  if (!v12[2])
  {
LABEL_11:

    goto LABEL_14;
  }

  sub_10012D634(v12);
  if (!v14)
  {
LABEL_8:
    sub_100142970(a1, v6, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();

    v32 = sub_1004A4A54();
    v33 = sub_1004A6034();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v59 = a1;
      v35 = v34;
      v36 = swift_slowAlloc();
      v62[0] = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = v6[*(v4 + 20)];
      sub_1001429D8(v6, type metadata accessor for State.Logger);
      *(v35 + 10) = v37;
      *(v35 + 11) = 2082;
      v38 = sub_100134BF8(v11);
      v40 = v39;

      v41 = sub_10015BA6C(v38, v40, v62);

      *(v35 + 13) = v41;
      *(v35 + 21) = 2048;
      v42 = *(v13 + 16);

      *(v35 + 23) = v42;

      _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx] Push sync %{public}s for %ld mailbox(es)", v35, 0x1Fu);
      sub_1000197E0(v36);

      a1 = v59;

      goto LABEL_14;
    }

    sub_1001429D8(v6, type metadata accessor for State.Logger);

    goto LABEL_11;
  }

  if (*(v13 + 16) != 1)
  {

    goto LABEL_8;
  }

  v16 = *(v1 + 184);
  v17 = *(v1 + 216);
  v65 = *(v1 + 200);
  v66[0] = v17;
  *(v66 + 12) = *(v1 + 228);
  v63 = *(v1 + 168);
  v64 = v16;
  v18 = v14;
  v57 = v15;
  v19 = sub_1000BAD00(v14, v15);
  sub_100142970(a1, v9, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v59 = a1;
  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  v58 = v18;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v55 = v19;
    v23 = v22;
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v23 = 68159235;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = v9[*(v4 + 20)];
    sub_1001429D8(v9, type metadata accessor for State.Logger);
    *(v23 + 10) = v24;
    *(v23 + 11) = 2082;
    v25 = sub_100134BF8(v11);
    v27 = v26;

    v28 = sub_10015BA6C(v25, v27, v61);

    *(v23 + 13) = v28;
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    *(v23 + 29) = v55;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v62[0] = v58;
    LODWORD(v62[1]) = v57;
    v29 = sub_1004A5824();
    v31 = sub_10015BA6C(v29, v30, v61);

    *(v23 + 43) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx] Push sync %{public}s for mailbox {%.*hx} '%{sensitive,mask.mailbox}s'", v23, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001429D8(v9, type metadata accessor for State.Logger);
  }

  a1 = v59;
LABEL_14:
  memcpy(v62, v2, sizeof(v62));
  v43 = sub_1000CBCD0();
  memcpy(v61, v2, sizeof(v61));
  v44 = v61[21];
  v45 = v61[22];
  v46 = v61[23];
  v47 = v61[24];
  v48 = sub_100132554();
  v49 = sub_100155540(v48, v43);
  v50 = sub_100155540(v13, v49);
  if ((v47 & 1) == 0)
  {
  }

  v60 = v44;
  v51 = v50;

  sub_1000BA740(&v60, v51, a1);

  result = sub_100020D58(v44, v45, v46, 1);
  v53 = v60;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = v53;
  *(v2 + 192) = 1;
  return result;
}

void sub_10012DCC8()
{
  v1 = *(v0 + 64);
  v11 = _swiftEmptySetSingleton;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    if (*(*(v1 + 56) + 32 * v9) == 3)
    {
      sub_100088204(v10, *(*(v1 + 48) + 4 * v9));
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Int sub_10012DDBC(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      sub_1004A6E94();
      sub_1004A6EE4(v14);
      result = sub_1004A6F14();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 4 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10012DF2C(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v14);
      result = sub_1004A6F14();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10012E098(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      sub_1004A6E94();
      sub_1004A6EE4(v14);
      result = sub_1004A6F14();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (v14 != *(*(v6 + 48) + 4 * v16))
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_10012E208()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 120);
    if (v3 && *(v3 + 16))
    {
      v4 = *(v2 + 16);
      if (!v4)
      {
        return result;
      }

      for (i = (v2 + 32); ; i += 11)
      {
        v6 = *i;
        v7 = i[2];
        v42 = i[1];
        v43 = v7;
        v41 = v6;
        v8 = i[3];
        v9 = i[4];
        v10 = i[6];
        v46 = i[5];
        v47 = v10;
        v44 = v8;
        v45 = v9;
        v11 = i[7];
        v12 = i[8];
        v13 = i[10];
        v50 = i[9];
        v51 = v13;
        v48 = v11;
        v49 = v12;
        v14 = v42;
        v15 = DWORD2(v42);
        v16 = v46;
        v17 = *(&v45 + 1);
        sub_10000E08C(&v41, v40);
        if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v17, v16, 0, 0) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (MailboxName.isInbox.getter(v18, v15))
        {
          goto LABEL_11;
        }

        if (*(v3 + 16))
        {
          v19 = sub_100063B5C(v14, v15);
          if (v20)
          {
            v21 = *(*(v3 + 56) + 72 * v19 + 14);

            v22 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
            v23 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

            if (!v22)
            {
              if (!v23)
              {
                goto LABEL_11;
              }

LABEL_19:
              if (((v23 | v22) & v21) == 0)
              {
LABEL_11:
                sub_100088220(v40, v14, v15);
                sub_10000E0E8(&v41);

                goto LABEL_8;
              }

              goto LABEL_6;
            }

            if ((v23 & ~v22) != 0)
            {
              goto LABEL_19;
            }

            if ((v22 & v21) == 0)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_6:

LABEL_7:
        sub_10000E0E8(&v41);
LABEL_8:
        if (!--v4)
        {
          return _swiftEmptySetSingleton;
        }
      }
    }

    v24 = *(v2 + 16);
    if (!v24)
    {
      return result;
    }

    for (j = (v2 + 32); ; j += 11)
    {
      v26 = *j;
      v27 = j[2];
      v42 = j[1];
      v43 = v27;
      v41 = v26;
      v28 = j[3];
      v29 = j[4];
      v30 = j[6];
      v46 = j[5];
      v47 = v30;
      v44 = v28;
      v45 = v29;
      v31 = j[7];
      v32 = j[8];
      v33 = j[10];
      v50 = j[9];
      v51 = v33;
      v48 = v31;
      v49 = v32;
      v34 = DWORD2(v42);
      sub_10000E08C(&v41, v40);

      LOBYTE(v34) = MailboxName.isInbox.getter(v35, v34);

      sub_10000E0E8(&v41);
      if (v34)
      {
        break;
      }

      if (!--v24)
      {
        return _swiftEmptySetSingleton;
      }
    }

    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v37 = MailboxName.inbox.unsafeMutableAddressor();
    v38 = *(v37 + 2);
    *(inited + 32) = *v37;
    *(inited + 40) = v38;
    v39 = sub_100092FD4(inited);
    swift_setDeallocating();

    sub_10009DA94(inited + 32);
    return v39;
  }

  return result;
}

Swift::Int sub_10012E4C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v6, v4, v1, v2);
  sub_1004A6EF4(v3);
  return sub_1004A6F14();
}

void sub_10012E538(__int128 *a1)
{
  v2 = *(v1 + 24);
  SyncRequest.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16));
  sub_1004A6EF4(v2);
}

Swift::Int sub_10012E580(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v7, v5, v2, v3);
  sub_1004A6EF4(v4);
  return sub_1004A6F14();
}

uint64_t sub_10012E5EC(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  v3 = *(a1 + 3);
  v4 = *(a2 + 3);
  return static SyncRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 1), a1[16], *a2, *(a2 + 1), a2[16], a3) & (v3 == v4);
}

Swift::Int sub_10012E63C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_100141F40(v4, __dst) & 1;
}

unint64_t sub_10012E698()
{
  result = qword_1005D1490;
  if (!qword_1005D1490)
  {
    result = swift_getWitnessTable(asc_1004D6844, &type metadata for State.InProgressSync, v0, v1);
    atomic_store(result, &qword_1005D1490);
  }

  return result;
}

uint64_t sub_10012E6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v148 = a6;
  sub_10012F464(a1, &v166);
  if (v167[24] != 255)
  {
    v181 = v166;
    v182[0] = *v167;
    *(v182 + 9) = *&v167[9];
    sub_10011D9F0(&v181, a8);
    sub_10011DA4C(&v181);

    *(a8 + 48) = _swiftEmptySetSingleton;
    return result;
  }

  v143 = a1;
  v144 = a3;
  v149 = a2;
  v132 = a5;
  v133 = a4;
  v138 = a8;
  sub_100025F40(&v166, &qword_1005D14E8, &qword_1004D6900);
  v17 = *(a7 + 9);
  v18 = a7[9];
  v19 = a9;
  if (v17 == 2)
  {
    goto LABEL_4;
  }

  v21 = a7;
  v22 = *(a7 + 11);
  v23 = a7[13];
  v24 = *(a7 + 114);
  v25 = *(a7 + 56);
  v139 = a7[15];
  v26 = *(a7 + 137);
  v145 = a9;
  v142 = a7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v154 = v22;
  v155 = v17;
  v27 = *(a7 + 24);
  v28 = *(a7 + 25);
  v29 = a7[4];
  v30 = a7[7];

  sub_100166D28();
  v32 = v31;
  if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    v19 = v145;
    v21 = v142;
    v22 = v154;
    v17 = v155;
    if ((v18 & 0xFF0000) == 0x20000)
    {
      goto LABEL_19;
    }

LABEL_4:
    v20 = v138;
    *(v138 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 40) = -1;

    *(v20 + 48) = _swiftEmptySetSingleton;
    return result;
  }

  v33 = sub_100166E18(v31);
  LODWORD(v153) = v28;
  if (v28)
  {
    goto LABEL_14;
  }

  if (v29 != 1)
  {
    if (!v29 && (v27 - 1) < 2)
    {
      v33 = 1;
      v19 = v145;
      goto LABEL_15;
    }

LABEL_14:
    v19 = v145;
    goto LABEL_15;
  }

  v19 = v145;
  if (v27)
  {
    v33 = v27 != 1;
  }

LABEL_15:
  v34 = v33;
  sub_100013AD0(&off_100598658, v30);
  sub_100166E18(v32);
  v35 = sub_100013CF4(v30);

  if (v35 & 1) == 0 && (v153)
  {
    sub_100166E18(v32);
  }

  v21 = v142;
  v22 = v154;
  v17 = v155;
  if (!(((v18 & 0xFF0000) == 0x20000) | v34 & 1))
  {
    goto LABEL_4;
  }

LABEL_19:
  v36 = _swiftEmptySetSingleton;
  v176 = _swiftEmptySetSingleton;
  v141 = *(v148 + 16);
  if (!v141)
  {
    goto LABEL_135;
  }

  v177[0] = v17;
  v177[1] = v22;
  v178 = v23;
  v179 = v25;
  v180 = (v25 | (v24 << 16)) >> 16;
  v37 = v132 + 32;
  v38 = v148 + 32;
  v39 = v21[21];
  v152 = *(v21 + 192);
  v153 = *(v132 + 16);
  v147 = v39;
  v146 = v39 + 32;

  v40 = 0;
  v41 = v141;
  v134 = v148 + 32;
  v135 = v132 + 32;
  while (2)
  {
    if (v40 == v153)
    {
      __break(1u);
      return result;
    }

    v42 = v37 + 16 * v40;
    v43 = *v42;
    v44 = v19;
    v45 = *(v42 + 8);
    LODWORD(v154) = *(v38 + 2 * v40);

    *&v155 = v45;
    v47 = v45;
    v19 = v44;
    v48 = sub_10016511C(v46, v47, v44);
    if ((v152 & 1) == 0 || (v49 = *(v147 + 16)) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v146 + 176 * v50);
      v52 = *v51;
      v53 = v51[2];
      v182[0] = v51[1];
      v182[1] = v53;
      v181 = v52;
      v54 = v51[3];
      v55 = v51[4];
      v56 = v51[6];
      v185 = v51[5];
      v186 = v56;
      v183 = v54;
      v184 = v55;
      v57 = v51[7];
      v58 = v51[8];
      v59 = v51[10];
      v189 = v51[9];
      v190 = v59;
      v187 = v57;
      v188 = v58;
      if ((DWORD2(v182[0]) | (DWORD2(v182[0]) << 32)) == (v155 | (v155 << 32)))
      {
        v60 = *(*&v182[0] + 16);
        if (v60 == *(v43 + 16))
        {
          break;
        }
      }

LABEL_27:
      if (++v50 == v49)
      {
        goto LABEL_21;
      }
    }

    if (v60 && *&v182[0] != v43)
    {
      v61 = (*&v182[0] + 32);
      v62 = (v43 + 32);
      while (*v61 == *v62)
      {
        ++v61;
        ++v62;
        if (!--v60)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_27;
    }

LABEL_35:
    v63 = v139;
    v151 = v48;
    v150 = v43;
    if (v139 && *(v139 + 16) && (v64 = sub_100063B5C(v43, v155), (v65 & 1) != 0))
    {
      v66 = *(v63 + 56) + 72 * v64;
      v160[0] = *v66;
      v68 = *(v66 + 32);
      v67 = *(v66 + 48);
      v69 = *(v66 + 64);
      v160[1] = *(v66 + 16);
      v160[2] = v68;
      v161 = v69;
      v160[3] = v67;
      *v167 = *(v66 + 16);
      *&v167[16] = *(v66 + 32);
      v168 = *(v66 + 48);
      v169 = *(v66 + 64);
      v166 = *v66;
      sub_100063BD4(v160, &v156);
      v172 = *&v167[16];
      v173 = v168;
      v174 = v169;
      v170 = v166;
      v171 = *v167;
    }

    else
    {
      v174 = 0;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
    }

    v191[2] = v172;
    v191[3] = v173;
    v192 = v174;
    v191[0] = v170;
    v191[1] = v171;
    v70 = v142;
    v72 = *v142;
    v71 = v142[1];
    sub_10000E08C(&v181, &v166);
    v137 = WindowOfInterestSizes.subscript.getter(v191, v72, v71);
    v136 = v73;
    sub_100025F40(&v170, &qword_1005CF248, &qword_1004D22C0);
    v74 = *(v70 + 24);
    v75 = *(v70 + 25);
    v76 = v70[4];
    LODWORD(v140) = *(v70 + 40);
    LOBYTE(v72) = *(v70 + 18);
    v78 = v70[6];
    v77 = v70[7];

    sub_100166D28();
    v80 = v79;
    v162 = v72;
    if (v76 == 3)
    {

      v82 = 0;
      v83 = 0;
      v84 = 0x100000000000000;
      v85 = &_mh_execute_header;
      v86 = 1;
      v87 = 512;
      v88 = 0x1000000;
      v19 = v145;
      v90 = v149;
      v89 = v150;
      v91 = v143;
      v81 = v154;
    }

    else
    {
      v131 = v78;
      v19 = v145;
      v81 = v154;
      if (v76 == 2)
      {

        v82 = 0;
        v83 = 0;
        v84 = 0x100000000000000;
        v85 = &_mh_execute_header;
        v86 = 1;
        v87 = 512;
        v88 = 0x1000000;
        v90 = v149;
        v89 = v150;
        v91 = v143;
        goto LABEL_112;
      }

      v92 = sub_100166E18(v79);
      v93 = v75;
      if (v75)
      {
        goto LABEL_53;
      }

      v94 = v74;
      if (v76 == 1)
      {
        if (!v74)
        {
          goto LABEL_53;
        }

        if (v74 != 1)
        {
          goto LABEL_132;
        }

        v95 = 0;
        v130 = &_mh_execute_header;
        v96 = 512;
LABEL_133:
        v127 = v96;
      }

      else
      {
        if (!v76 && v74)
        {
          if (v74 != 1)
          {
            v94 = 0;
            v127 = 0;
            v95 = 0;
            v130 = 0;
            goto LABEL_58;
          }

LABEL_132:
          v95 = 0;
          v130 = 0;
          v94 = 1;
          v96 = 256;
          goto LABEL_133;
        }

LABEL_53:
        v94 = (v92 & 1) == 0;
        v97 = &_mh_execute_header;
        if (v92)
        {
          v97 = 0;
        }

        v130 = v97;
        v98 = 512;
        if (v92)
        {
          v98 = 0;
        }

        v127 = v98;
        v95 = (v92 & 1) == 0;
      }

LABEL_58:
      v89 = v150;
      v99 = sub_100013AD0(&off_100598658, v77);
      v100 = (v99 & 1) == 0 || v94;
      LODWORD(v128) = v100;
      v101 = (v99 & 1) == 0 || v95;
      v126 = v101;
      LODWORD(v129) = sub_100166E18(v80);
      v102 = sub_100013CF4(v77);

      v103 = v102 ^ 1;
      if (v102)
      {
        v90 = v149;
      }

      else
      {
        v90 = v149;
        if (v93)
        {
          v103 = sub_100166E18(v80);
          v102 = v103 ^ 1;
        }
      }

      v104 = *(v80 + 16);

      v105 = (v104 == 0) & v93;
      if (v140 > 1)
      {
        v19 = v145;
        v81 = v154;
        if (v140 == 2)
        {
          v82 = 0x10000;
          if ((v103 & 1) == 0)
          {
            v82 = 0;
          }

          if ((v102 & 1) == 0)
          {
            v82 = 0x20000;
          }

          v87 = v127;
          if (v131 >= 3989)
          {
            v87 = 512;
          }

          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          if (v126)
          {
            v91 = v143;
            v85 = v130;
            LODWORD(v86) = v128;
            goto LABEL_110;
          }

          v88 = 0;
          v91 = v143;
          v85 = v130;
          LODWORD(v86) = v128;
        }

        else
        {
          v82 = 0x10000;
          if ((v103 & 1) == 0)
          {
            v82 = 0;
          }

          v85 = v130;
          v87 = v127;
          if (v131 >= 3989)
          {
            v87 = 512;
          }

          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          LODWORD(v86) = v128;
          if (v126)
          {
            v91 = v143;
            goto LABEL_110;
          }

          v88 = 0;
          v91 = v143;
        }
      }

      else
      {
        v19 = v145;
        v81 = v154;
        if (!v140)
        {
          v82 = 0;
          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          LODWORD(v86) = 1;
          v87 = 512;
          v91 = v143;
          v85 = v130;
          goto LABEL_110;
        }

        v82 = 0;
        v88 = 0;
        v85 = v130;
        v87 = v127;
        if (v131 >= 3989)
        {
          v87 = 512;
        }

        v106 = v105 == 0;
        v84 = 0x100000000000000;
        if (v106)
        {
          v84 = 0;
        }

        v83 = 0x10000000000;
        if ((v129 & 1) == 0)
        {
          v83 = 0;
        }

        v91 = v143;
        LODWORD(v86) = v128;
        if (v126)
        {
LABEL_110:
          v88 = 0x1000000;
        }
      }

      v86 = v86;
    }

LABEL_112:
    v107 = 0x1000000000000;
    if ((v162 & 1) == 0)
    {
      v107 = 0;
    }

    v108 = v82 | v87 | v86 | v88 | v85 | v83 | v84 | v107;

    v109 = v144;

    sub_10009F4BC(v81, v108, &v181, v91, v90, v109, v151 & 1, v160);
    sub_10000E268(v160, &v156, &qword_1005D14F0, &qword_1004D6908);
    if (v159 == 255)
    {
      sub_100025F40(v160, &qword_1005D14F0, &qword_1004D6908);
LABEL_118:
      sub_10000E0E8(&v181);
      v163 = 0u;
      v164 = 0u;
      v165 = 0;
      v38 = v134;
      v37 = v135;
      goto LABEL_123;
    }

    if (v159)
    {
      sub_100025F40(v160, &qword_1005D14F0, &qword_1004D6908);
      sub_10000E0E8(&v181);
      sub_1000B364C(&v156, &v163);
      goto LABEL_122;
    }

    if (v81 >> 14 > 2)
    {
LABEL_120:
      v131 = v158;
      v140 = v157;
      *&v154 = *(&v156 + 1);
      v110 = v156;
      v129 = sub_1001421D4;
      goto LABEL_121;
    }

    if (v81 > 1u)
    {
      if (v81 == 2)
      {
        v131 = v158;
        v140 = v157;
        *&v154 = *(&v156 + 1);
        v110 = v156;
        v129 = sub_100142258;
        goto LABEL_121;
      }

      sub_100025F40(v160, &qword_1005D14F0, &qword_1004D6908);

      goto LABEL_118;
    }

    if (!v81)
    {
      goto LABEL_120;
    }

    v131 = v158;
    v140 = v157;
    *&v154 = *(&v156 + 1);
    v110 = v156;
    v129 = sub_100142320;
LABEL_121:
    v111 = swift_allocObject();
    v130 = &v125;
    v112 = v189;
    v111[9] = v188;
    v111[10] = v112;
    v111[11] = v190;
    v113 = v185;
    v111[5] = v184;
    v111[6] = v113;
    v114 = v187;
    v111[7] = v186;
    v111[8] = v114;
    v115 = v182[0];
    v111[1] = v181;
    v111[2] = v115;
    v116 = v183;
    v111[3] = v182[1];
    v111[4] = v116;
    __chkstk_darwin(v111);
    v128 = v123;
    __chkstk_darwin(v117);
    __chkstk_darwin(v118);
    v124 = v119;
    sub_10000E08C(&v181, &v166);
    v120 = v136 & 1;

    LOBYTE(v124) = v120;
    v123[3] = v108;
    v123[4] = v137;
    v123[1] = v123;
    v123[2] = v177;
    v123[0] = sub_100142248;
    (v129)(&v163, v110, v154, v140, v131, sub_10014222C, v128, sub_10014223C, v123);

    sub_10000E0E8(&v181);

    sub_100025F40(v160, &qword_1005D14F0, &qword_1004D6908);
    v19 = v145;
    v89 = v150;
LABEL_122:
    v38 = v134;
    v37 = v135;
    if (*(&v164 + 1))
    {
      sub_1000B364C(&v163, v175);

      v122 = v138;
      sub_1000B364C(v175, v138);
      *(v122 + 40) = 1;

      *(v122 + 48) = v176;
    }

    else
    {
LABEL_123:
      sub_100025F40(&v163, &qword_1005CF328, &unk_1004D2620);
      sub_100088220(&v166, v89, v155);

      v41 = v141;
LABEL_22:
      if (++v40 != v41)
      {
        continue;
      }

      v36 = v176;
LABEL_135:
      v121 = v138;
      *(v138 + 32) = 0;
      *v121 = 0u;
      *(v121 + 16) = 0u;
      *(v121 + 40) = -1;

      *(v121 + 48) = v36;
    }

    return result;
  }
}

uint64_t sub_10012F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1000CECCC(v2, &v27);
  sub_1000FE52C(v2, &v36);
  if (v36)
  {
    v43 = v38;
    *v44 = v39;
    *&v44[16] = v40;
    v41 = v36;
    v42 = v37;
    if ((sub_100012728(&v41, a1) & 1) == 0)
    {
      *(a2 + 24) = sub_10000C9C0(&qword_1005D1570, &qword_1004D6960);
      *(a2 + 32) = sub_10000DF44(&qword_1005D1578, &qword_1005D1570, &qword_1004D6960, byte_1004CDC90);
      v12 = swift_allocObject();
      *a2 = v12;
      sub_1000FF12C(&v41, v12 + 16);
      *(v12 + 88) = _swiftEmptyArrayStorage;
      *(v12 + 96) = _swiftEmptyArrayStorage;
      result = sub_1000FF164(&v41);
      goto LABEL_19;
    }

    result = sub_1000FF164(&v41);
  }

  else
  {
    result = sub_100025F40(&v36, &qword_1005D0760, &unk_1004D4110);
  }

  v7 = *(v2 + 72);
  if (v7 == 2)
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_7:
    *(a2 + 40) = -1;
    return result;
  }

  v8 = *(v2 + 80);
  if (*(v2 + 120))
  {
    if ((*(v2 + 137) & 1) == 0)
    {
LABEL_14:
      v9 = *(v2 + 184);
      v10 = *(v2 + 216);
      v43 = *(v2 + 200);
      *v44 = v10;
      *&v44[12] = *(v2 + 228);
      v41 = *(v2 + 168);
      v42 = v9;
      sub_1000C1574();
      sub_1001755BC(v11, &v36);
      if (!v36)
      {
        result = sub_100025F40(&v36, &qword_1005D1528, &qword_1004D6938);
        if ((BYTE8(v42) & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_26;
      }

      v28[1] = v38;
      v29 = v39;
      v30[0] = v40;
      v27 = v36;
      v28[0] = v37;
      if (sub_100012728(&v27 + 1, a1))
      {
        result = sub_1001425C8(&v27);
        if ((BYTE8(v42) & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_26:
        v14 = sub_1000B6D0C()[2];

        if (v14)
        {
          v30[0] = sub_1000B6D0C();
          v30[1] = _swiftEmptySetSingleton;
          *(&v29 + 1) = 0x80000001004AA440;
          LOBYTE(v36) = 1;
          *&v29 = 0xD000000000000010;
          *&v27 = &type metadata for CreateMailboxes;
          sub_1004A6674();
          if (sub_100012728(&v27, a1))
          {
            result = sub_1000197B0(&v27);
            goto LABEL_40;
          }

          *(a2 + 24) = sub_10000C9C0(&qword_1005D1530, &qword_1004D6940);
          *(a2 + 32) = sub_10000DF44(&qword_1005D1538, &qword_1005D1530, &qword_1004D6940, byte_1004CDC90);
          v23 = swift_allocObject();
          *a2 = v23;
          sub_100019778(&v27, v23 + 16);
          *(v23 + 96) = _swiftEmptyArrayStorage;
          *(v23 + 104) = _swiftEmptyArrayStorage;
          result = sub_1000197B0(&v27);
        }

        else
        {
          v16 = sub_1000B6D04()[2];

          if (v16)
          {
            v17 = *(v3 + 248);
            v18 = *(v17 + 16);
            v19 = (v17 + 32);
            while (v18)
            {
              v20 = *v19++;
              --v18;
              if (v20 == 3)
              {
                goto LABEL_34;
              }
            }

            v24 = sub_1000B6D04();
            sub_10001AB64(v24, &v27);
            if (sub_100012728(&v27, a1))
            {
              result = sub_100021028(&v27);
              goto LABEL_40;
            }

            *(a2 + 24) = sub_10000C9C0(&qword_1005D1540, &qword_1004D6948);
            *(a2 + 32) = sub_10000DF44(&qword_1005D1548, &qword_1005D1540, &qword_1004D6948, byte_1004CDC90);
            v26 = swift_allocObject();
            *a2 = v26;
            sub_100020FF0(&v27, v26 + 16);
            *(v26 + 96) = _swiftEmptyArrayStorage;
            *(v26 + 104) = _swiftEmptyArrayStorage;
            result = sub_100021028(&v27);
          }

          else
          {
LABEL_34:
            v21 = sub_1000B6FCC()[2];

            if (!v21)
            {
              goto LABEL_6;
            }

            v22 = sub_1000B6FCC();
            *(&v29 + 1) = _swiftEmptySetSingleton;
            v30[0] = _swiftEmptySetSingleton;
            LOBYTE(v36) = 1;
            *&v29 = v22;
            *&v27 = &type metadata for RenameMailboxes;
            sub_1004A6674();
            if (sub_100012728(&v27, a1))
            {
              result = sub_1001115D8(&v27);
              goto LABEL_40;
            }

            *(a2 + 24) = sub_10000C9C0(&qword_1005D1550, &qword_1004D6950);
            *(a2 + 32) = sub_10000DF44(&qword_1005D1558, &qword_1005D1550, &qword_1004D6950, byte_1004CDC90);
            v25 = swift_allocObject();
            *a2 = v25;
            sub_1001115A0(&v27, v25 + 16);
            *(v25 + 88) = _swiftEmptyArrayStorage;
            *(v25 + 96) = _swiftEmptyArrayStorage;
            result = sub_1001115D8(&v27);
          }
        }

        goto LABEL_19;
      }

      *(a2 + 24) = sub_10000C9C0(&qword_1005D1560, &qword_1004D6958);
      *(a2 + 32) = sub_10000DF44(&qword_1005D1568, &qword_1005D1560, &qword_1004D6958, byte_1004CDC90);
      v15 = swift_allocObject();
      *a2 = v15;
      sub_10014256C(&v27, v15 + 16);
      *(v15 + 88) = _swiftEmptyArrayStorage;
      *(v15 + 96) = _swiftEmptyArrayStorage;
      result = sub_1001425C8(&v27);
LABEL_19:
      *(a2 + 40) = 0;
      return result;
    }

    v45 = *(v2 + 144);
    v46 = *(v2 + 160);
    *&v27 = sub_100162334(_swiftEmptyArrayStorage);
    *(&v27 + 1) = sub_100163378(_swiftEmptyArrayStorage);
    sub_10000E268(&v45, &v41, &qword_1005D1510, &qword_1004D6928);
    if (qword_1005CCE60 != -1)
    {
      swift_once();
    }

    sub_100014B90(&qword_1005DDF30, v28);
    strcpy(v30, "ListMailboxes");
    HIWORD(v30[1]) = -4864;
    v31 = BYTE6(v7) & 1;
    v32 = v45;
    v33 = v46;
    v34 = HIBYTE(v7);
    v35 = v8;
    if (sub_100012728(v28, a1))
    {
      sub_10009A260(&v27);
      goto LABEL_14;
    }
  }

  else
  {
    v41 = *(v2 + 144);
    *&v42 = *(v2 + 160);
    *&v27 = sub_100162334(_swiftEmptyArrayStorage);
    *(&v27 + 1) = sub_100163378(_swiftEmptyArrayStorage);
    sub_10000E268(&v41, &v36, &qword_1005D1510, &qword_1004D6928);
    if (qword_1005CCE60 != -1)
    {
      swift_once();
    }

    sub_100014B90(&qword_1005DDF30, v28);
    strcpy(v30, "ListMailboxes");
    HIWORD(v30[1]) = -4864;
    v31 = BYTE6(v7) & 1;
    v32 = v41;
    v33 = v42;
    v34 = HIBYTE(v7);
    v35 = v8;
    if (sub_100012728(v28, a1))
    {
      result = sub_10009A260(&v27);
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      goto LABEL_7;
    }
  }

  *(a2 + 24) = sub_10000C9C0(&qword_1005D1518, &qword_1004D6930);
  *(a2 + 32) = sub_10000DF44(&qword_1005D1520, &qword_1005D1518, &qword_1004D6930, byte_1004CDC90);
  v13 = swift_allocObject();
  *a2 = v13;
  sub_10009A228(&v27, v13 + 16);
  *(v13 + 136) = _swiftEmptyArrayStorage;
  *(v13 + 144) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  return sub_10009A260(&v27);
}

void sub_10012FC9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v7 = *(v2 + 168);
  v8 = *(v2 + 176);
  v6 = v2 + 168;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  sub_100020D10(v7, v8, v9, *(v6 + 24));
  v48 = a2;
  sub_1000B7BFC(a1, a2);
  if (v10 == 1)
  {
    v44 = v9;
    v45 = v8;
    v11 = *(v7 + 16);
    v46 = v7;
    if (v11)
    {
      sub_1000923A8(0, v11, 0);
      v12 = (v7 + 40);
      do
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];

        if (v15 >= v16 >> 1)
        {
          sub_1000923A8((v16 > 1), v15 + 1, 1);
        }

        v12 += 22;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v15];
        v17[4] = v14;
        v17[5] = v13;
        --v11;
      }

      while (v11);
    }

    v19 = sub_1000CE9EC(_swiftEmptyArrayStorage);

    v20 = *(a1 + 16);
    v47 = v3;
    if (v20)
    {
      sub_1000923A8(0, v20, 0);
      v21 = (a1 + 40);
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];

        if (v24 >= v25 >> 1)
        {
          sub_1000923A8((v25 > 1), v24 + 1, 1);
        }

        v21 += 12;
        _swiftEmptyArrayStorage[2] = v24 + 1;
        v26 = &_swiftEmptyArrayStorage[2 * v24];
        v26[4] = v23;
        v26[5] = v22;
        --v20;
      }

      while (v20);
      v3 = v47;
    }

    v27 = sub_1000CE9EC(_swiftEmptyArrayStorage);

    if (*(v19 + 16) <= v27[2] >> 3)
    {
      sub_10015CB24(v19);
    }

    else
    {
      sub_10015F6DC(v19, v27);
    }

    v28 = *(v3 + 64);
    v29 = 1 << *(v28 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v28 + 64);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    while (v31)
    {
LABEL_29:
      v36 = __clz(__rbit64(v31)) | (v33 << 6);
      v37 = *(*(v28 + 48) + 4 * v36);
      v38 = (*(v28 + 56) + 32 * v36);
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = v38[16];
      if (v40)
      {
        swift_bridgeObjectRetain_n();

        v34 = sub_100155780(v42, v40);
      }

      else
      {
        v34 = 0;
      }

      v31 &= v31 - 1;
      sub_1000BC63C(v37, v39, v40, v41, v34, v48);
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return;
      }

      if (v35 >= v32)
      {
        break;
      }

      v31 = *(v28 + 64 + 8 * v35);
      ++v33;
      if (v31)
      {
        v33 = v35;
        goto LABEL_29;
      }
    }

    sub_100020D58(v46, v45, v44, 1);

    v3 = v47;
    v18 = *(v47 + 120);
    if (!v18)
    {
      return;
    }
  }

  else
  {
    sub_100020D58(v7, v8, v9, 0);
    v18 = *(v3 + 120);
    if (!v18)
    {
      return;
    }
  }

  if (*(v3 + 192) == 1)
  {
    sub_100130030(v18);
    sub_1000C11D8(v43);
  }
}

void sub_100130030(uint64_t a1)
{
  v2 = v1;
  v4 = _swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v55 = _swiftEmptyDictionarySingleton;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(a1 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a1 + 56) + 72 * v14;
    LOWORD(v15) = *(v18 + 64);
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v51 = *(v18 + 16);
    v52 = v20;
    v53 = v19;
    v54 = v15;
    v50 = *v18;
    if ((v15 & 0x100) != 0)
    {
      v43 = v16;
      v44 = v17;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;

      sub_100063BD4(&v50, v41);
      sub_100025F40(&v43, &qword_1005D14D0, &qword_1004D68F0);
    }

    else
    {
      v36 = *(&v51 + 1);
      v37 = v52;
      v21 = v53;
      v39 = v2;
      v38 = v54;
      v45 = *v18;
      v49 = *(v18 + 64);
      v48 = *(v18 + 48);
      v47 = *(v18 + 32);
      v46 = *(v18 + 16);
      v22 = v4[2];
      v40 = v16;
      if (v4[3] <= v22)
      {

        sub_100063BD4(&v50, v41);
        sub_1000C7E44(v22 + 1, 1);
        v4 = v55;
      }

      else
      {

        sub_100063BD4(&v50, v41);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v17 | (v17 << 32));
      v23 = sub_1004A6F14();
      v24 = v4 + 8;
      v25 = -1 << *(v4 + 32);
      v26 = v23 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~v4[(v26 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v25) >> 6;
        v2 = v39;
        v29 = v40;
        while (++v27 != v31 || (v30 & 1) == 0)
        {
          v32 = v27 == v31;
          if (v27 == v31)
          {
            v27 = 0;
          }

          v30 |= v32;
          v33 = v24[v27];
          if (v33 != -1)
          {
            v28 = __clz(__rbit64(~v33)) + (v27 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~v4[(v26 >> 6) + 8])) | v26 & 0x7FFFFFFFFFFFFFC0;
      v2 = v39;
      v29 = v40;
LABEL_24:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v34 = v4[6] + 16 * v28;
      *v34 = v29;
      *(v34 + 8) = v17;
      v35 = v4[7] + 48 * v28;
      *v35 = v36;
      *(v35 + 8) = v37;
      *(v35 + 24) = v21 & 1;
      *(v35 + 32) = *(&v21 + 1);
      *(v35 + 40) = v38 & 1;
      ++v4[2];
      v41[2] = v47;
      v41[3] = v48;
      v42 = v49;
      v41[0] = v45;
      v41[1] = v46;
      sub_100063C30(v41);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_100130390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v89 = a1;
  v88 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v88);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 184);
  v6 = *(v2 + 216);
  v110 = *(v2 + 200);
  v111[0] = v6;
  *(v111 + 12) = *(v2 + 228);
  v108 = *(v2 + 168);
  v109 = v5;
  v98 = sub_1000B7BA4();
  memcpy(v107, v2, sizeof(v107));
  v7 = LOBYTE(v107[3]);
  v8 = BYTE1(v107[3]);
  v9 = v107[4];
  v10 = LOBYTE(v107[5]);
  v11 = BYTE2(v107[2]);
  v12 = v107[6];
  v13 = v107[7];

  sub_100166D28();
  v15 = v14;
  v101 = v11;
  if (v9 != 3 && v9 != 2)
  {
    v17 = sub_100166E18(v14);
    if ((v8 & 1) == 0)
    {
      if (v9 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v18 = 0;
            v96 = &_mh_execute_header;
            v19 = 512;
LABEL_163:
            v95 = v19;
            goto LABEL_19;
          }

LABEL_162:
          v18 = 0;
          v96 = 0;
          v7 = 1;
          v19 = 256;
          goto LABEL_163;
        }
      }

      else if (!v9 && v7)
      {
        if (v7 != 1)
        {
          v7 = 0;
          v95 = 0;
          v96 = 0;
          v18 = 0;
          goto LABEL_19;
        }

        goto LABEL_162;
      }
    }

    v7 = (v17 & 1) == 0;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = &_mh_execute_header;
    }

    v21 = 512;
    if (v17)
    {
      v21 = 0;
    }

    v95 = v21;
    v96 = v20;
    v18 = (v17 & 1) == 0;
LABEL_19:
    v22 = sub_100013AD0(&off_100598658, v13);
    if (v22)
    {
      v23 = v7;
    }

    else
    {
      v23 = 1;
    }

    LODWORD(v94) = v23;
    v24 = (v22 & 1) == 0 || v18;
    LODWORD(v93) = v24;
    v25 = sub_100166E18(v15);
    v26 = sub_100013CF4(v13);

    v27 = v26 ^ 1;
    if (v26 & 1) == 0 && (v8)
    {
      v27 = sub_100166E18(v15);
      v26 = v27 ^ 1;
    }

    v28 = *(v15 + 16);

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v34 = 0x10000;
        if ((v27 & 1) == 0)
        {
          v34 = 0;
        }

        v29 = 0x20000;
        if (v26)
        {
          v29 = v34;
        }

        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        if ((v93 & 1) == 0)
        {
          v35 = 0;
          v16 = v89;
          v32 = v94;
          goto LABEL_71;
        }

        v16 = v89;
        v32 = v94;
      }

      else
      {
        if (v27)
        {
          v29 = 0x10000;
        }

        else
        {
          v29 = 0;
        }

        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v16 = v89;
        v32 = v94;
        if ((v93 & 1) == 0)
        {
          v35 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v29 = 0;
      if (v10)
      {
        v35 = 0;
        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v16 = v89;
        v32 = v94;
        if ((v93 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v32 = 1;
        v33 = 512;
        v16 = v89;
      }
    }

    v35 = 0x1000000;
LABEL_71:
    v91 = v35;
    v92 = v31;
    v93 = v33;
    v94 = v30;
    v95 = v29;
    v90 = v32;
    goto LABEL_72;
  }

  v94 = 0x100000000000000;
  v95 = 0;
  v96 = &_mh_execute_header;
  v91 = 0x1000000;
  v92 = 0;
  v93 = 512;
  v90 = 1;
  v16 = v89;
LABEL_72:
  LODWORD(v89) = v101;
  sub_100130C40(v16, v99);
  memcpy(v106, v3, sizeof(v106));
  v36 = LOBYTE(v106[3]);
  v37 = BYTE1(v106[3]);
  v38 = v106[4];
  v39 = LOBYTE(v106[5]);
  v40 = BYTE2(v106[2]);
  v41 = v106[6];
  v42 = v106[7];

  sub_100166D28();
  v44 = v43;
  v100 = v40;
  if (v38 == 2 || v38 == 3)
  {

    v45 = 0;
    v46 = 0;
    v47 = 0x100000000000000;
    v48 = &_mh_execute_header;
    v49 = 0x1000000;
    v50 = 512;
    v51 = 1;
    v52 = v96;
    v53 = v97;
    v54 = v98;
    v55 = v94;
    v56 = v95;
    v57 = v92;
    v58 = v93;
    v60 = v90;
    v59 = v91;
    v61 = v89;
    goto LABEL_143;
  }

  v62 = sub_100166E18(v43);
  if ((v37 & 1) == 0)
  {
    if (v38 == 1)
    {
      if (v36)
      {
        if (v36 == 1)
        {
          v63 = 0;
          v48 = &_mh_execute_header;
          v64 = 512;
LABEL_165:
          v86 = v64;
          goto LABEL_90;
        }

LABEL_164:
        v63 = 0;
        v48 = 0;
        v36 = 1;
        v64 = 256;
        goto LABEL_165;
      }
    }

    else if (!v38 && v36)
    {
      if (v36 != 1)
      {
        v36 = 0;
        v86 = 0;
        v63 = 0;
        v48 = 0;
        goto LABEL_90;
      }

      goto LABEL_164;
    }
  }

  v36 = (v62 & 1) == 0;
  if (v62)
  {
    v48 = 0;
  }

  else
  {
    v48 = &_mh_execute_header;
  }

  v65 = 512;
  if (v62)
  {
    v65 = 0;
  }

  v86 = v65;
  v63 = (v62 & 1) == 0;
LABEL_90:
  v66 = sub_100013AD0(&off_100598658, v42);
  if (v66)
  {
    v67 = v36;
  }

  else
  {
    v67 = 1;
  }

  v68 = (v66 & 1) == 0 || v63;
  v84 = v68;
  v85 = v67;
  v87 = sub_100166E18(v44);
  v69 = sub_100013CF4(v42);

  v70 = v69 ^ 1;
  if (v69 & 1) == 0 && (v37)
  {
    v70 = sub_100166E18(v44);
    v69 = v70 ^ 1;
  }

  v71 = *(v44 + 16);

  v72 = (v71 == 0) & v37;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v45 = 0x10000;
      if ((v70 & 1) == 0)
      {
        v45 = 0;
      }

      if ((v69 & 1) == 0)
      {
        v45 = 0x20000;
      }

      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v54 = v98;
      if ((v84 & 1) == 0)
      {
        v49 = 0;
        v52 = v96;
        v53 = v97;
        v55 = v94;
        v56 = v95;
        v57 = v92;
        v58 = v93;
        v60 = v90;
        v59 = v91;
        v61 = v89;
        LODWORD(v51) = v85;
        goto LABEL_142;
      }

      v52 = v96;
      v53 = v97;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
      LODWORD(v51) = v85;
    }

    else
    {
      v45 = 0x10000;
      if ((v70 & 1) == 0)
      {
        v45 = 0;
      }

      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v54 = v98;
      v56 = v95;
      v52 = v96;
      v58 = v93;
      v55 = v94;
      v59 = v91;
      v57 = v92;
      v60 = v90;
      v61 = v89;
      LODWORD(v51) = v85;
      if ((v84 & 1) == 0)
      {
        v49 = 0;
        v53 = v97;
        goto LABEL_142;
      }

      v53 = v97;
    }
  }

  else
  {
    v45 = 0;
    if (v39)
    {
      v49 = 0;
      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v52 = v96;
      v53 = v97;
      v54 = v98;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
      LODWORD(v51) = v85;
      if ((v84 & 1) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      LODWORD(v51) = 1;
      v50 = 512;
      v52 = v96;
      v53 = v97;
      v54 = v98;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
    }
  }

  v49 = 0x1000000;
LABEL_142:
  v51 = v51;
LABEL_143:
  if (v61)
  {
    v74 = 0x1000000000000;
  }

  else
  {
    v74 = 0;
  }

  v75 = v56 | v58 | v60 | v59 | v52 | v57 | v55;
  if (v100)
  {
    v76 = 0x1000000000000;
  }

  else
  {
    v76 = 0;
  }

  if (!sub_100166EB4(v75 | v74, v45 | v50 | v51 | v49 | v48 | v46 | v47 | v76))
  {
    sub_10013140C(v75 | v74);
    sub_100142674(v99, v3);
  }

  if (v54)
  {
    v77 = *(v3 + 184);
    v78 = *(v3 + 216);
    v104 = *(v3 + 200);
    v105[0] = v78;
    *(v105 + 12) = *(v3 + 228);
    v102 = *(v3 + 168);
    v103 = v77;
    if (!sub_1000B7BA4())
    {
      sub_100142970(v99, v53, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v79 = sub_1004A4A54();
      v80 = sub_1004A6034();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 68157952;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v82 = *(v53 + *(v88 + 20));
        sub_1001429D8(v53, type metadata accessor for State.Logger);
        *(v81 + 10) = v82;
        _os_log_impl(&_mh_execute_header, v79, v80, "[%.*hhx] Resetting mailboxes-need-to-be-updated.", v81, 0xBu);
      }

      else
      {
        sub_1001429D8(v53, type metadata accessor for State.Logger);
      }

      *(v3 + 137) = 0;
    }
  }
}

void sub_100130C40(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = a1 >> 62;
  if (a1 >> 62)
  {
    if (v16 == 1 && (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0)
    {
      v17 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = (v17 >> 59) & 0x1E | (v17 >> 2) & 1;
      if (v18)
      {
        if (v18 == 19)
        {
          v68 = v13;
          v42 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_100142970(a2, &v59 - v14, type metadata accessor for State.Logger);

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();

          v43 = sub_1004A4A54();
          LODWORD(v67) = sub_1004A5FF4();
          if (os_log_type_enabled(v43, v67))
          {
            v44 = swift_slowAlloc();
            v66 = v43;
            v45 = v44;
            *v44 = 68158208;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            LODWORD(v68) = v15[*(v68 + 20)];
            sub_1001429D8(v15, type metadata accessor for State.Logger);
            *(v45 + 10) = v68;
            *(v45 + 11) = 2048;
            *(v45 + 13) = v42[2];

            v46 = v66;
            _os_log_impl(&_mh_execute_header, v66, v67, "[%.*hhx] Setting %ld search requests.", v45, 0x15u);
          }

          else
          {
            sub_1001429D8(v15, type metadata accessor for State.Logger);
          }

          if (*(v3 + 120))
          {
            v56 = *(v3 + 120);
          }

          else
          {
            v56 = sub_100162334(_swiftEmptyArrayStorage);
          }

          v97[0] = v56;
          v97[1] = sub_1001323F4;
          v97[2] = 0;
          v97[3] = sub_100141F0C;
          v97[4] = 0;
          v97[5] = sub_100141F1C;
          v97[6] = 0;
          *&v86 = _swiftEmptyDictionarySingleton;

          sub_1001399E4(v97, 1, &v86);
          sub_1000B97B0(v42, v86);
        }

        else if (v18 == 2)
        {
          sub_100131EB0(*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28), a2);
        }
      }

      else
      {
        v47 = v13;
        LODWORD(v68) = *(v17 + 16);
        v48 = *(v17 + 18);
        v63 = *(v17 + 17);
        v64 = v48;
        v67 = *(v17 + 24);
        LODWORD(v66) = *(v17 + 32);
        v65 = *(v17 + 40);
        sub_100142970(a2, v11, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v49 = sub_1004A4A54();
        v61 = sub_1004A6034();
        v62 = v49;
        if (os_log_type_enabled(v49, v61))
        {
          v50 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v69[0] = v60;
          *v50 = 68158210;
          *(v50 + 4) = 2;
          *(v50 + 8) = 256;
          v51 = v11[*(v47 + 20)];
          sub_1001429D8(v11, type metadata accessor for State.Logger);
          *(v50 + 10) = v51;
          *(v50 + 11) = 2082;
          LOBYTE(v86) = v68;
          BYTE1(v86) = v63;
          BYTE2(v86) = v64;
          *(&v86 + 1) = v67;
          LOBYTE(v87) = v66;
          *(&v87 + 1) = v65;
          v52 = sub_1004A5824();
          v54 = sub_10015BA6C(v52, v53, v69);

          *(v50 + 13) = v54;
          v55 = v62;
          _os_log_impl(&_mh_execute_header, v62, v61, "[%.*hhx] Received environment update: %{public}s", v50, 0x15u);
          sub_1000197E0(v60);
        }

        else
        {
          sub_1001429D8(v11, type metadata accessor for State.Logger);
        }

        *(v3 + 24) = v68;
        v57 = v64;
        *(v3 + 25) = v63;
        *(v3 + 26) = v57;
        *(v3 + 32) = v67;
        *(v3 + 40) = v66;
        *(v3 + 48) = v65;
      }
    }
  }

  else
  {
    v19 = a1[3];
    if (v19 >> 60 == 6)
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      *(v3 + 56) = v20;
    }
  }

  v21 = *(v3 + 72);
  if (v21 == 2)
  {
    v22 = ServerID.empty.unsafeMutableAddressor();
    v24 = v22[1];
    v23 = v22[2];
    v86 = *v22;
    v87 = v24;
    v88 = v23;
    v25 = v22[6];
    v27 = v22[3];
    v26 = v22[4];
    v91 = v22[5];
    v92 = v25;
    v89 = v27;
    v90 = v26;
    v28 = v22[10];
    v30 = v22[7];
    v29 = v22[8];
    v95 = v22[9];
    v96 = v28;
    v93 = v30;
    v94 = v29;
    sub_10010E800(&v86, v69);
    sub_10010E0AC(_swiftEmptySetSingleton, &v86, &v76);
    v21 = v76;
    v31 = v77;
    v32 = v78;
    v33 = v79 | (v80 << 16);
  }

  else
  {
    v33 = *(v3 + 112) | (*(v3 + 114) << 16);
    v31 = *(v3 + 80);
    v32 = *(v3 + 96);
  }

  v81 = v21;
  v82 = v31;
  v83 = v32;
  v84 = v33;
  v85 = BYTE2(v33);
  sub_1000BEDD4(a1, &v81, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 120), a2);
  sub_10010B09C(a1, a2);
  if (!v16)
  {
    v34 = a1[3];
    if (v34 >> 60 == 3)
    {
      v35 = swift_projectBox();
      sub_100142970(v35, v8, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v36 = *v8;
        v37 = *(v8 + 2);
        v38 = *(v8 + 6);
        v72 = *(v8 + 5);
        v73 = v38;
        v39 = *(v8 + 8);
        v74 = *(v8 + 7);
        v75 = v39;
        v40 = *(v8 + 2);
        v69[0] = *(v8 + 1);
        v69[1] = v40;
        v41 = *(v8 + 4);
        v70 = *(v8 + 3);
        v71 = v41;
        if (BYTE8(v69[0]) & 1) != 0 || (v70 & 1) != 0 || (BYTE8(v70))
        {

          sub_10009A0FC(v69);
        }

        else
        {
          v58 = v36;
          sub_1000CB7C8(v34);

          sub_10009A0FC(v69);
          sub_1000CA698(v58, v37, (v3 + 168), v71, SBYTE8(v71));

          sub_1000CB848(v34);
        }
      }

      else
      {
        sub_1001429D8(v8, type metadata accessor for UntaggedResponse);
      }
    }
  }
}

uint64_t sub_10013140C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_100132664();
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v54 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v10 = v3;
LABEL_8:
      v11 = *(v54 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8))));
      v12 = *v11;
      v55 = *(v11 + 8);
      memcpy(v60, __src, sizeof(v60));
      v13 = LOBYTE(v60[3]);
      v14 = BYTE1(v60[3]);
      v15 = v60[4];
      v53 = LOBYTE(v60[5]);
      v16 = BYTE2(v60[2]);
      v17 = v60[7];
      v52 = v60[6];
      v57 = v12;

      sub_100166D28();
      v19 = v18;
      v59 = v16;
      if (v15 != 3 && v15 != 2)
      {
        break;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0x100000000000000;
      v23 = &_mh_execute_header;
      v24 = 1;
      v25 = 512;
      v26 = 0x1000000;
      v27 = v57;
LABEL_82:
      v8 &= v8 - 1;
      if (v60[24])
      {
        v42 = v60[22];
        v41 = v60[23];
        v43 = v60[21];
        v58 = v60[21];
        if (v59)
        {
          v44 = 0x1000000000000;
        }

        else
        {
          v44 = 0;
        }

        v45 = v20 | v25 | v24 | v26 | v23 | v21 | v22;

        sub_1000BE614(&v58, v27, v55, 0, a1 & 0x101010101FFFF01, v45 | v44);

        result = sub_100020D58(v43, v42, v41, 1);
        v46 = v58;
        *(__src + 22) = 0;
        *(__src + 23) = 0;
        *(__src + 21) = v46;
        *(__src + 192) = 1;
        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    v28 = sub_100166E18(v18);
    if ((v14 & 1) == 0)
    {
      if (v15 == 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v29 = 0;
            v30 = &_mh_execute_header;
            v31 = 512;
LABEL_91:
            v47 = v31;
            goto LABEL_26;
          }

LABEL_90:
          v29 = 0;
          v30 = 0;
          v13 = 1;
          v31 = 256;
          goto LABEL_91;
        }
      }

      else if (!v15 && v13)
      {
        if (v13 != 1)
        {
          v13 = 0;
          v47 = 0;
          v29 = 0;
          v30 = 0;
          goto LABEL_26;
        }

        goto LABEL_90;
      }
    }

    v13 = (v28 & 1) == 0;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = &_mh_execute_header;
    }

    v32 = 512;
    if (v28)
    {
      v32 = 0;
    }

    v47 = v32;
    v29 = (v28 & 1) == 0;
LABEL_26:
    v33 = sub_100013AD0(&off_100598658, v17);
    if (v33)
    {
      v34 = v13;
    }

    else
    {
      v34 = 1;
    }

    v35 = (v33 & 1) == 0 || v29;
    v48 = v35;
    v49 = v34;
    v50 = sub_100166E18(v19);
    v36 = sub_100013CF4(v17);

    v37 = v36 ^ 1;
    if (v36 & 1) == 0 && (v14)
    {
      v37 = sub_100166E18(v19);
      v36 = v37 ^ 1;
    }

    v38 = *(v19 + 16);

    v39 = (v38 == 0) & v14;
    if (v53 <= 1)
    {
      v23 = v30;
      if (v53)
      {
        v20 = 0;
        v26 = 0;
        v25 = v47;
        if (v52 >= 3989)
        {
          v25 = 512;
        }

        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        LODWORD(v24) = v49;
        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        v27 = v57;
        if ((v48 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v20 = 0;
        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        LODWORD(v24) = 1;
        v25 = 512;
        v27 = v57;
      }

      goto LABEL_77;
    }

    v23 = v30;
    if (v53 == 2)
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      if ((v36 & 1) == 0)
      {
        v20 = 0x20000;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      if (v48)
      {
        v27 = v57;
LABEL_76:
        LODWORD(v24) = v49;
LABEL_77:
        v26 = 0x1000000;
LABEL_81:
        v24 = v24;
        goto LABEL_82;
      }

      v26 = 0;
      v27 = v57;
    }

    else
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      v27 = v57;
      if (v48)
      {
        goto LABEL_76;
      }

      v26 = 0;
    }

    LODWORD(v24) = v49;
    goto LABEL_81;
  }

  while (1)
  {
LABEL_5:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001318D0(os_log_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v65 = a2;
  v64 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v64);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  memcpy(v76, a3, sizeof(v76));
  v68 = v76[32];
  v8 = LOBYTE(v76[3]);
  v9 = BYTE1(v76[3]);
  v10 = v76[4];
  v11 = LOBYTE(v76[5]);
  v12 = v76[6];
  v13 = v76[7];

  sub_100166D28();
  v15 = v14;
  if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v62 = v12;
    v17 = sub_100166E18(v14);
    v18 = v17;
    v63 = a1;
    if ((v9 & 1) == 0)
    {
      if (v10 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 2;
            goto LABEL_16;
          }

          goto LABEL_61;
        }
      }

      else if (!v10 && v8)
      {
        if (v8 != 1)
        {
          v19 = 0;
          v20 = 0;
          v18 = 1;
          goto LABEL_16;
        }

LABEL_61:
        v19 = 0;
        v18 = 1;
        v20 = 1;
        goto LABEL_16;
      }
    }

    v19 = v17 ^ 1;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

LABEL_16:
    v21 = sub_100013AD0(&off_100598658, v13) ^ 1 | v19;
    sub_100166E18(v15);
    v22 = sub_100013CF4(v13);

    if (v22 & 1) == 0 && (v9)
    {
      sub_100166E18(v15);
    }

    if (v11)
    {
      v23 = v21;
    }

    else
    {
      v23 = 1;
    }

    if (v11)
    {
      v24 = v20;
    }

    else
    {
      v24 = 2;
    }

    if (v11 <= 1)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v11 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }

    a1 = v63;
    v28 = v62 < 3989 && v26 != 2;
    v16 = v68;
    if (((v18 | v28) & 1) != 0 || (v25 & 1) == 0 || (v9 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v16 = v68;
  if ((v9 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_40:
  v29 = *(a4 + 272);
  v30 = *(a4 + 264);

  v31 = sub_100121E04(v30, v29);

  v32 = v31[2];
  if (!v32)
  {

LABEL_45:

    *(v67 + 32) = _swiftEmptySetSingleton;
    return;
  }

  if (v32 <= a1[2].isa >> 3)
  {
    *&v72 = a1;

    sub_10015CC4C(v31);

    v33 = v72;
  }

  else
  {

    v33 = sub_10015FC1C(v31, a1);
  }

  v34 = v33 + 7;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33[7];
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  *&v40 = 68158979;
  v59 = v40;
  v41 = v66;
  v61 = v33;
  while (v37)
  {
LABEL_56:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v33[6] + ((v39 << 10) | (16 * v43));
    v45 = *v44;
    v46 = *(v44 + 8);
    if ((sub_100011B00(*v44, v46, v16) & 1) == 0)
    {
      v47 = *(v67 + 184);
      v48 = *(v67 + 216);
      v74 = *(v67 + 200);
      v75[0] = v48;
      *(v75 + 12) = *(v67 + 228);
      v72 = *(v67 + 168);
      v73 = v47;
      LODWORD(v62) = sub_1000BAD00(v45, v46);
      sub_100142970(v65, v41, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v49 = v41;
      v50 = sub_1004A4A54();
      v51 = sub_1004A6034();

      v63 = v50;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v71 = v60;
        *v52 = v59;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = *(v66 + *(v64 + 20));
        sub_1001429D8(v66, type metadata accessor for State.Logger);
        *(v52 + 10) = v53;
        *(v52 + 11) = 1040;
        *(v52 + 13) = 2;
        *(v52 + 17) = 512;
        *(v52 + 19) = v62;
        *(v52 + 21) = 2160;
        *(v52 + 23) = 0x786F626C69616DLL;
        *(v52 + 31) = 2085;
        v69 = v45;
        v70 = v46;
        v54 = sub_1004A5824();
        v56 = sub_10015BA6C(v54, v55, &v71);
        v41 = v66;

        *(v52 + 33) = v56;
        v57 = v51;
        v58 = v63;
        _os_log_impl(&_mh_execute_header, v63, v57, "[%.*hhx] [Background] Skipping mailbox {%.*hx} '%{sensitive,mask.mailbox}s' until next sync.", v52, 0x29u);
        sub_1000197E0(v60);

        v16 = v68;

        v33 = v61;
      }

      else
      {
        sub_1001429D8(v49, type metadata accessor for State.Logger);

        v33 = v61;
        v41 = v49;
        v16 = v68;
      }
    }
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v38)
    {

      sub_100080EB4(v33);
      return;
    }

    v37 = v34[v42];
    ++v39;
    if (v37)
    {
      v39 = v42;
      goto LABEL_56;
    }
  }

  __break(1u);
}

uint64_t sub_100131EB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v47 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v47);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v44 - v15;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;

  *(v5 + 256) = _swiftEmptySetSingleton;
  v19 = static MonotonicTime.now()();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = *(v5 + 64);
  sub_10001D314(a2, a3, v8, v19, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 64) = v49;
  v21 = *(v5 + 184);
  v22 = *(v5 + 216);
  v51 = *(v5 + 200);
  v52[0] = v22;
  *(v52 + 12) = *(v5 + 228);
  v49 = *(v5 + 168);
  v50 = v21;
  sub_1000B7A20();
  v48 = a1;
  LOBYTE(v19) = sub_10001296C(a1, v23);

  if (v19)
  {
    sub_100142970(a5, v18, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = v8;
      v8 = v26;
      *v26 = 68158208;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = *(v47 + 20);
      v45 = a2;
      v28 = v18[v27];
      sub_1001429D8(v18, type metadata accessor for State.Logger);
      *(v8 + 10) = v28;
      a2 = v45;
      *(v8 + 11) = 1024;
      *(v8 + 13) = v48;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx] Requesting sync with ID that already exists: #%u", v8, 0x11u);
      LOBYTE(v8) = v44;
    }

    else
    {
      sub_1001429D8(v18, type metadata accessor for State.Logger);
    }
  }

  if (a2 != 3 || a3)
  {
    sub_1000BC63C(v48, a2, a3, v8 & 1, 0, a5);
  }

  else
  {
    v29 = v46;
    sub_100142970(a5, v46, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v30 = sub_1004A4A54();
    v31 = sub_1004A6014();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 68158208;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v8;
      v34 = *(v29 + *(v47 + 20));
      sub_1001429D8(v29, type metadata accessor for State.Logger);
      *(v32 + 10) = v34;
      LOBYTE(v8) = v33;
      *(v32 + 11) = 1024;
      *(v32 + 13) = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx] Ignoring push sync #%u without mailboxes.", v32, 0x11u);
    }

    else
    {
      sub_1001429D8(v29, type metadata accessor for State.Logger);
    }
  }

  v35 = *(v6 + 128);
  v36 = *(v6 + 136);
  v37 = static MonotonicTime.now()();
  result = sub_10010E4CC(v35, v36, v37, a2, v8 & 1);
  if (result)
  {
    *(v6 + 137) = 1;
  }

  else
  {
    sub_100142970(a5, v13, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v39 = sub_1004A4A54();
    v40 = sub_1004A6034();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 68157952;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v13;
      v43 = v13[*(v47 + 20)];
      sub_1001429D8(v42, type metadata accessor for State.Logger);
      *(v41 + 10) = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx] Skipping update of mailbox list for sync.", v41, 0xBu);
    }

    else
    {
      sub_1001429D8(v13, type metadata accessor for State.Logger);
    }

    return sub_10012D6A8(a5);
  }

  return result;
}

void sub_1001323F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 81))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 8);
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

void *sub_10013244C(Swift::Int a1)
{
  result = _swiftEmptySetSingleton;
  if (*(v1 + 192))
  {
    v4 = *(v1 + 168);
    v30 = _swiftEmptySetSingleton;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6;
        v8 = v6[2];
        v20 = v6[1];
        v21 = v8;
        v19 = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v24 = v6[5];
        v25 = v11;
        v22 = v9;
        v23 = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v28 = v6[9];
        v29 = v14;
        v26 = v12;
        v27 = v13;
        v15 = *(&v13 + 1);
        sub_10000E08C(&v19, v18);
        if (sub_10012DDBC(a1, v15))
        {
          sub_10000E0E8(&v19);
        }

        else
        {
          v16 = v20;
          v17 = DWORD2(v20);

          sub_100088220(v18, v16, v17);
          sub_10000E0E8(&v19);
        }

        v6 += 11;
        --v5;
      }

      while (v5);
      return v30;
    }
  }

  return result;
}

void *sub_100132554()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v29 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *v4;
        v6 = v4[2];
        v19 = v4[1];
        v20 = v6;
        v18 = v5;
        v7 = v4[3];
        v8 = v4[4];
        v9 = v4[6];
        v23 = v4[5];
        v24 = v9;
        v21 = v7;
        v22 = v8;
        v10 = v4[7];
        v11 = v4[8];
        v12 = v4[10];
        v27 = v4[9];
        v28 = v12;
        v25 = v10;
        v26 = v11;
        v13 = v19;
        v14 = DWORD2(v19);
        v15 = v23;
        v16 = *(&v22 + 1);
        sub_10000E08C(&v18, v17);
        if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v16, v15, 0, 0))
        {
          sub_10000E0E8(&v18);
        }

        else
        {

          sub_100088220(v17, v13, v14);
          sub_10000E0E8(&v18);
        }

        v4 += 11;
        --v3;
      }

      while (v3);
      return v29;
    }
  }

  return result;
}

void *sub_100132664()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v10 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);

          sub_100088220(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

void sub_10013270C(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100142138;
  *(v5 + 24) = v4;
  swift_getKeyPath();
  sub_1000CB72C();
  swift_bridgeObjectRetain_n();

  v6 = 0;
  v49 = sub_1004A5D64();
  v7 = v3;
  v9 = v3 + 64;
  v8 = *(v3 + 64);
  v10 = -1 << *(v3 + 32);
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v44 = v7;
  while (v12)
  {
LABEL_11:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v6 << 6);
    v17 = *(v7 + 56) + 32 * v16;
    if ((*v17 & 0xFE) == 2)
    {
      v18 = *(*(v7 + 48) + 4 * v16);
      v19 = *(v17 + 24);
      if (v19 <= a1)
      {
        v20 = a1 - v19;
        if (__OFSUB__(a1, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (__OFSUB__(v19, a1))
        {
          goto LABEL_48;
        }

        v20 = a1 - v19;
        if (__OFSUB__(0, v19 - a1))
        {
          goto LABEL_49;
        }
      }

      if (v20 / 1000000000.0 > 60.0)
      {
        sub_100088204(v48, v18);
        v7 = v44;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v14 >= ((63 - v10) >> 6))
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v13;
    if (v12)
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  sub_100020D08(v7);

  v21 = v49;
  v22 = v49 + 56;
  v23 = 1 << *(v49 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v49 + 56);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  v28 = v45;
  v43 = v21;
  while (v25)
  {
LABEL_30:
    v31 = *(*(v21 + 48) + ((v27 << 8) | (4 * __clz(__rbit64(v25)))));
    v32 = *(v28 + 168);
    v47 = *(v28 + 176);
    v33 = *(v28 + 184);
    v46 = *(v28 + 192);
    if (v46)
    {

      v34 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = *(v32 + 16);
        if (v35)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v34 = sub_100139804(v32);
        v35 = *(v34 + 2);
        if (v35)
        {
LABEL_33:
          v36 = 0;
          v37 = v34 + 168;
          while (v36 < v35)
          {
            sub_10013FDD4(v31, sub_10008E7C4);
            ++v36;
            v35 = *(v34 + 2);
            v37 += 176;
            if (v36 == v35)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_36:
      sub_100020D58(v32, v47, v33, 1);
      v29 = 0;
      v33 = 0;
      v32 = v34;
      v28 = v45;
      v21 = v43;
    }

    else
    {
      v38 = sub_100067004();
      if (v39)
      {
        v40 = v38;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v32;
        v42 = v32;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10013B74C();
          v42 = v49;
        }

        sub_10013D8C8(v40, v42);
        v29 = v47;
        sub_100020D58(v32, v47, v33, 0);
        v32 = v42;
      }

      else
      {
        v29 = v47;
      }
    }

    v25 &= v25 - 1;
    *(v28 + 168) = v32;
    *(v28 + 176) = v29;
    *(v28 + 184) = v33;
    *(v28 + 192) = v46;
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v30);
    ++v27;
    if (v25)
    {
      v27 = v30;
      goto LABEL_30;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

BOOL sub_100132B60(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0xFE) != 2)
  {
    return 0;
  }

  v6 = a6 - a5;
  if (a6 >= a5)
  {
    if (!__OFSUB__(a6, a5))
    {
      return v6 / 1000000000.0 > 60.0;
    }
  }

  else
  {
    if (!__OFSUB__(a5, a6))
    {
      v6 = a6 - a5;
      if (!__OFSUB__(0, a5 - a6))
      {
        return v6 / 1000000000.0 > 60.0;
      }

      __break(1u);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100132BC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = (a1 + 32);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    if (*(v4 + 24) >> 60 == 3)
    {
      type metadata accessor for UntaggedResponse(0);
      swift_projectBox();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_15;
      }
    }

LABEL_3:
    if (!--v2)
    {
      return;
    }
  }

  if (v6 != 1)
  {
    goto LABEL_3;
  }

  v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if ((*(v7 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = (*(v7 + 16) >> 59) & 0x1E | (*(v7 + 16) >> 2) & 1;
  if (v8 != 2 && v8 != 4)
  {
    goto LABEL_3;
  }

LABEL_15:
  v10 = *(v1 + 120);
  v11 = _swiftEmptySetSingleton;
  if (!v10)
  {
    goto LABEL_35;
  }

  v12 = *(v10 + 64);
  v40 = _swiftEmptySetSingleton;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 < v16)
      {
        v15 = *(v10 + 64 + 8 * v18);
        ++v17;
        if (!v15)
        {
          continue;
        }

LABEL_26:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = v19 | (v18 << 6);
        v21 = *(v10 + 48) + 16 * v20;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v10 + 56) + 72 * v20;
        v31[0] = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v32 = *(v24 + 64);
        v31[2] = v26;
        v31[3] = v27;
        v31[1] = v25;
        v33 = v22;
        v34 = v23;
        v37 = v26;
        v38 = v27;
        v39 = v32;
        v35 = v31[0];
        v36 = v25;

        sub_100063BD4(v31, v30);
        v28 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
        v29 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
        if (v28)
        {
          if ((v29 & ~v28) == 0)
          {
LABEL_31:
            if ((HIWORD(v31[0]) & v28) != 0)
            {
              sub_10000E268(&v33, v30, &qword_1005D14D0, &qword_1004D68F0);
              sub_100063C30(v31);
              sub_100088220(v30, v22, v23);
              sub_100025F40(&v33, &qword_1005D14D0, &qword_1004D68F0);

              v17 = v18;
              if (!v15)
              {
                continue;
              }

              goto LABEL_25;
            }

LABEL_20:
            sub_100025F40(&v33, &qword_1005D14D0, &qword_1004D68F0);
            v17 = v18;
            if (!v15)
            {
              continue;
            }

LABEL_25:
            v18 = v17;
            goto LABEL_26;
          }
        }

        else if (!v29)
        {
          goto LABEL_20;
        }

        LOWORD(v28) = v29 | v28;
        goto LABEL_31;
      }

      v11 = v40;
LABEL_35:
      sub_1000BD394(v11);
    }

    break;
  }
}

void sub_100132E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v175 = a2;
  v200 = type metadata accessor for TaskHistory.Running(0);
  v173 = *(v200 - 8);
  __chkstk_darwin(v200);
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v159 - v9);
  __chkstk_darwin(v11);
  v196 = &v159 - v12;
  __chkstk_darwin(v13);
  v199 = &v159 - v14;
  v181 = type metadata accessor for RunningTask(0);
  v170 = *(v181 - 8);
  __chkstk_darwin(v181);
  v16 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v171);
  v18 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v162 = &v159 - v21;
  __chkstk_darwin(v22);
  v188 = *(v4 + 64);
  if (*(v188 + 16))
  {
    v161 = &v159 - v23;
    v174 = v24;
    v164 = v4;
    v25 = static SyncRequest.Kind.allCases.getter();
    v167 = v25[2];
    if (v167)
    {
      v27 = 0;
      v163 = 0;
      v179 = v188 + 64;
      v166 = (v25 + 4);
      *&v26 = 68159234;
      v160 = v26;
      *&v26 = 68159747;
      v168 = v26;
      *&v26 = 68158722;
      v159 = v26;
      v195 = v10;
      v182 = v16;
      v180 = a4;
      v198 = v7;
      v165 = v25;
LABEL_6:
      if (v27 >= v25[2])
      {
        goto LABEL_112;
      }

      v28 = *(v166 + v27);
      v172 = (v27 + 1);
      v217 = _swiftEmptySetSingleton;
      v29 = 1 << *(v188 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v188 + 64);
      swift_beginAccess();

      v32 = 0;
LABEL_12:
      if (v31)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v33 >= ((v29 + 63) >> 6))
        {
          swift_endAccess();

          if (!v217[2])
          {
            goto LABEL_4;
          }

          v169 = v217;
          if (*(v164 + 192))
          {
            v38 = *(v164 + 168);
            v39 = v163;
            v197 = sub_10012CB6C(0, v38, &v217);
            v163 = v39;
            v40 = *(v38 + 16);
            v41 = v162;
            sub_100142970(a4, v162, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v42 = sub_1004A4A54();
            v43 = sub_1004A6034();
            v44 = os_log_type_enabled(v42, v43);
            v177 = v40;
            if (v44)
            {
              v45 = swift_slowAlloc();
              v194 = v38;
              v46 = v41;
              v47 = v45;
              v193 = swift_slowAlloc();
              *&v206 = v193;
              *v47 = v160;
              *(v47 + 4) = 2;
              *(v47 + 8) = 256;
              v48 = *(v46 + *(v171 + 20));
              sub_1001429D8(v46, type metadata accessor for State.Logger);
              *(v47 + 10) = v48;
              v10 = v195;
              *(v47 + 11) = 2082;
              v49 = sub_1004A6754();
              v51 = sub_10015BA6C(v49, v50, &v206);

              *(v47 + 13) = v51;
              *(v47 + 21) = 2048;
              *(v47 + 23) = v169[2];
              *(v47 + 31) = 2082;

              v53 = sub_100134BF8(v52);
              v55 = v54;

              v56 = sub_10015BA6C(v53, v55, &v206);
              v38 = v194;

              *(v47 + 33) = v56;
              *(v47 + 41) = 2048;
              *(v47 + 43) = v197;
              *(v47 + 51) = 2048;
              v40 = v177;
              *(v47 + 53) = v177;
              _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s} with total of %ld of %ld mailbox(es).", v47, 0x3Du);
              swift_arrayDestroy();
              v16 = v182;
            }

            else
            {
              sub_1001429D8(v41, type metadata accessor for State.Logger);
            }

            v70 = v198;
            if (v40)
            {
              v71 = v40;
              v72 = 0;
              v73 = v38 + 32;
              v176 = v38 + 32;
              do
              {
                v74 = (v73 + 176 * v72);
                v75 = *v74;
                v76 = v74[2];
                v207 = v74[1];
                v208 = v76;
                v206 = v75;
                v77 = v74[3];
                v78 = v74[4];
                v79 = v74[6];
                v211 = v74[5];
                v212 = v79;
                v209 = v77;
                v210 = v78;
                v80 = v74[7];
                v81 = v74[8];
                v82 = v74[10];
                v215 = v74[9];
                v216 = v82;
                v213 = v80;
                v214 = v81;
                if (*(*(&v81 + 1) + 16))
                {
                  v83 = v212;
                  if (v212)
                  {
                    v185 = v72;
                    v84 = v207;
                    v85 = DWORD2(v207);
                    v86 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                    swift_beginAccess();
                    v183 = *(v83 + v86);
                    v87 = *(v175 + 16);
                    v189 = v84;
                    if (v87)
                    {
                      v88 = v170;
                      v89 = v175 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
                      sub_10000E08C(&v206, v204);
                      v90 = 0;
                      v197 = *(v88 + 72);
                      v91 = v89;
                      v178 = (v84 + 32);
                      v190 = _swiftEmptyArrayStorage;
                      v191 = v85 | (v85 << 32);
                      v92 = v85;
                      v193 = v87;
                      v194 = v85;
                      v192 = v89;
                      while (1)
                      {
                        sub_100142970(v91 + v197 * v90, v16, type metadata accessor for RunningTask);
                        sub_100117890(v16, v204);
                        if (v205)
                        {
                          if (v205 == 1)
                          {
                            sub_1000B364C(v204, v201);
                            v93 = v202;
                            v94 = v203;
                            sub_10002587C(v201, v202);
                            (*(v94 + 32))(&v218, v93, v94);
                            v222 = v219;
                            v223 = v220;
                            v221 = v218;
                            sub_1000D69D0(&v221);
                            sub_1000197E0(v201);
                            if ((v223 | (v223 << 32)) != v191)
                            {
                              sub_10009DA94(&v222);
                              v87 = v193;
                              v92 = v194;
LABEL_67:
                              v91 = v192;
                              goto LABEL_68;
                            }

                            v95 = *(v222 + 16);
                            v87 = v193;
                            if (v95 != *(v189 + 16))
                            {
                              sub_10009DA94(&v222);
                              v92 = v194;
                              goto LABEL_67;
                            }

                            v92 = v194;
                            v91 = v192;
                            if (!v95 || v222 == v189)
                            {
LABEL_54:
                              sub_10009DA94(&v222);
                              v98 = &v16[*(v181 + 28)];
                              v99 = &v98[*(type metadata accessor for Task.Logger(0) + 20)];
                              v100 = *(v99 + 1);
                              v186 = *(v99 + 2);
                              v187 = v100;

                              v101 = *(v16 + 6);
                              v102 = *(v101 + 16);
                              if (v102)
                              {
                                v103 = *(v173 + 80);
                                v184 = *(v16 + 6);
                                v104 = v101 + ((v103 + 32) & ~v103);
                                v105 = *(v173 + 72);
                                v106 = v104;
                                v107 = _swiftEmptyArrayStorage;
                                do
                                {
                                  v108 = v199;
                                  sub_100142970(v106, v199, type metadata accessor for TaskHistory.Running);
                                  sub_100142A38(v108, v10, type metadata accessor for TaskHistory.Running);
                                  if (swift_getEnumCaseMultiPayload() == 1)
                                  {
                                    sub_1001429D8(v10, type metadata accessor for TaskHistory.Running);
                                  }

                                  else
                                  {
                                    v109 = *v10;
                                    v110 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
                                    sub_1001429D8(v10 + *(v110 + 64), type metadata accessor for ClientCommand);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v107 = sub_1000878A0(0, *(v107 + 2) + 1, 1, v107);
                                    }

                                    v112 = *(v107 + 2);
                                    v111 = *(v107 + 3);
                                    if (v112 >= v111 >> 1)
                                    {
                                      v107 = sub_1000878A0((v111 > 1), v112 + 1, 1, v107);
                                    }

                                    *(v107 + 2) = v112 + 1;
                                    *&v107[8 * v112 + 32] = v109;
                                    v70 = v198;
                                    v10 = v195;
                                  }

                                  v106 += v105;
                                  --v102;
                                }

                                while (v102);
                                v113 = *(v184 + 16);
                                if (v113)
                                {
                                  v114 = _swiftEmptyArrayStorage;
                                  do
                                  {
                                    v115 = v196;
                                    sub_100142970(v104, v196, type metadata accessor for TaskHistory.Running);
                                    sub_100142A38(v115, v70, type metadata accessor for TaskHistory.Running);
                                    if (swift_getEnumCaseMultiPayload() == 1)
                                    {
                                      v116 = *v70;
                                      sub_100020EDC(*(v70 + 8));
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v114 = sub_100087790(0, *(v114 + 2) + 1, 1, v114);
                                      }

                                      v118 = *(v114 + 2);
                                      v117 = *(v114 + 3);
                                      if (v118 >= v117 >> 1)
                                      {
                                        v114 = sub_100087790((v117 > 1), v118 + 1, 1, v114);
                                      }

                                      *(v114 + 2) = v118 + 1;
                                      *&v114[4 * v118 + 32] = v116;
                                      v70 = v198;
                                    }

                                    else
                                    {
                                      sub_1001429D8(v70, type metadata accessor for TaskHistory.Running);
                                    }

                                    v104 += v105;
                                    --v113;
                                  }

                                  while (v113);
                                }

                                else
                                {
                                  v114 = _swiftEmptyArrayStorage;
                                }

                                v16 = v182;
                              }

                              else
                              {
                                v114 = _swiftEmptyArrayStorage;
                                v107 = _swiftEmptyArrayStorage;
                              }

                              sub_1001429D8(v16, type metadata accessor for RunningTask);
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
                                v119 = v190;
                              }

                              else
                              {
                                v119 = sub_100087684(0, *(v190 + 2) + 1, 1, v190);
                              }

                              v121 = *(v119 + 2);
                              v120 = *(v119 + 3);
                              if (v121 >= v120 >> 1)
                              {
                                v119 = sub_100087684((v120 > 1), v121 + 1, 1, v119);
                              }

                              *(v119 + 2) = v121 + 1;
                              v190 = v119;
                              v122 = &v119[32 * v121];
                              v123 = v186;
                              *(v122 + 4) = v187;
                              *(v122 + 5) = v123;
                              *(v122 + 6) = v107;
                              *(v122 + 7) = v114;
                              v92 = v194;
                              v10 = v195;
                              v91 = v192;
                              v87 = v193;
                              goto LABEL_69;
                            }

                            v96 = (v222 + 32);
                            v97 = v178;
                            while (*v96 == *v97)
                            {
                              ++v96;
                              ++v97;
                              if (!--v95)
                              {
                                goto LABEL_54;
                              }
                            }

                            sub_10009DA94(&v222);
                          }
                        }

                        else
                        {
                          sub_10011D8CC(v204);
                        }

LABEL_68:
                        sub_1001429D8(v16, type metadata accessor for RunningTask);
LABEL_69:
                        if (++v90 == v87)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    sub_10000E08C(&v206, v204);
                    v190 = _swiftEmptyArrayStorage;
                    v92 = v85;
LABEL_92:
                    a4 = v180;
                    v124 = v174;
                    sub_100142970(v180, v174, type metadata accessor for State.Logger);
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    sub_10000E08C(&v206, v204);
                    sub_10000E08C(&v206, v204);
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    variable initialization expression of Engine.isProcessingUpdates();
                    v125 = v190;

                    sub_10000E08C(&v206, v204);

                    v126 = sub_1004A4A54();
                    v127 = sub_1004A6034();
                    sub_10000E0E8(&v206);
                    if (os_log_type_enabled(v126, v127))
                    {
                      LODWORD(v193) = v127;
                      v128 = swift_slowAlloc();
                      v192 = swift_slowAlloc();
                      v201[0] = v192;
                      *v128 = v168;
                      *(v128 + 4) = 2;
                      *(v128 + 8) = 256;
                      v129 = *(v124 + *(v171 + 20));
                      sub_1001429D8(v124, type metadata accessor for State.Logger);
                      *(v128 + 10) = v129;
                      *(v128 + 11) = 1040;
                      *(v128 + 13) = 2;
                      *(v128 + 17) = 512;
                      sub_10000E0E8(&v206);
                      *(v128 + 19) = WORD6(v216);
                      sub_10000E0E8(&v206);
                      *(v128 + 21) = 2160;
                      *(v128 + 23) = 0x786F626C69616DLL;
                      *(v128 + 31) = 2085;
                      *&v204[0] = v189;
                      DWORD2(v204[0]) = v92;

                      v130 = sub_1004A5824();
                      v132 = sub_10015BA6C(v130, v131, v201);

                      *(v128 + 33) = v132;
                      *(v128 + 41) = 2048;
                      v133 = *(v125 + 2);

                      *(v128 + 43) = v133;

                      *(v128 + 51) = 2082;
                      v134 = ConnectionID.debugDescription.getter(v183);
                      v136 = sub_10015BA6C(v134, v135, v201);

                      *(v128 + 53) = v136;
                      v197 = v128;
                      *(v128 + 61) = 2082;
                      v137 = *(v125 + 2);
                      if (v137)
                      {
                        v194 = v126;
                        *&v204[0] = _swiftEmptyArrayStorage;
                        sub_100091A08(0, v137, 0);
                        v138 = *&v204[0];
                        v139 = (v125 + 56);
                        do
                        {
                          v140 = *(v139 - 3);
                          v141 = *(v139 - 2);
                          v142 = *(v139 - 1);
                          v143 = *v139;

                          v144 = sub_10013471C(v140, v141, v142, v143);
                          v146 = v145;

                          *&v204[0] = v138;
                          v148 = v138[2];
                          v147 = v138[3];
                          if (v148 >= v147 >> 1)
                          {
                            sub_100091A08((v147 > 1), v148 + 1, 1);
                            v138 = *&v204[0];
                          }

                          v138[2] = v148 + 1;
                          v149 = &v138[2 * v148];
                          v149[4] = v144;
                          v149[5] = v146;
                          v139 += 4;
                          --v137;
                        }

                        while (v137);

                        a4 = v180;
                        v126 = v194;
                        v10 = v195;
                      }

                      else
                      {

                        v138 = _swiftEmptyArrayStorage;
                      }

                      *&v204[0] = v138;
                      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
                      sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
                      v150 = sub_1004A5614();
                      v152 = v151;

                      v153 = sub_10015BA6C(v150, v152, v201);

                      v154 = v197;
                      *(v197 + 63) = v153;
                      _os_log_impl(&_mh_execute_header, v126, v193, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Is running %ld task(s) on %{public}s: %{public}s", v154, 0x47u);
                      swift_arrayDestroy();

                      sub_10000E0E8(&v206);
                      v70 = v198;
                      v16 = v182;
                    }

                    else
                    {

                      sub_10000E0E8(&v206);
                      sub_1001429D8(v124, type metadata accessor for State.Logger);

                      sub_10000E0E8(&v206);

                      sub_10000E0E8(&v206);
                    }

                    v73 = v176;
                    v71 = v177;
                    v72 = v185;
                  }
                }

                ++v72;
              }

              while (v72 != v71);
            }

LABEL_4:
          }

          else
          {
            v57 = v161;
            sub_100142970(a4, v161, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v58 = sub_1004A4A54();
            v59 = sub_1004A6034();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *&v206 = swift_slowAlloc();
              *v60 = v159;
              *(v60 + 4) = 2;
              *(v60 + 8) = 256;
              v61 = *(v57 + *(v171 + 20));
              sub_1001429D8(v57, type metadata accessor for State.Logger);
              *(v60 + 10) = v61;
              v10 = v195;
              *(v60 + 11) = 2082;
              v62 = sub_1004A6754();
              v64 = sub_10015BA6C(v62, v63, &v206);

              *(v60 + 13) = v64;
              *(v60 + 21) = 2048;
              *(v60 + 23) = v169[2];
              *(v60 + 31) = 2082;

              v66 = sub_100134BF8(v65);
              v68 = v67;

              v69 = sub_10015BA6C(v66, v68, &v206);

              *(v60 + 33) = v69;
              _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s}. Mailbox(es) are unknown.", v60, 0x29u);
              swift_arrayDestroy();
              v16 = v182;
            }

            else
            {
              sub_1001429D8(v57, type metadata accessor for State.Logger);
            }
          }

          v27 = v172;
          v25 = v165;
          if (v172 == v167)
          {
            goto LABEL_107;
          }

          goto LABEL_6;
        }

        v31 = *(v179 + 8 * v33);
        ++v32;
        if (v31)
        {
          v32 = v33;
LABEL_17:
          v34 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v35 = v34 | (v32 << 6);
          v36 = *(*(v188 + 48) + 4 * v35);
          v37 = *(*(v188 + 56) + 32 * v35);
          switch(v37)
          {
            case 2:
              if (v28 != 2)
              {
                goto LABEL_12;
              }

              break;
            case 3:
              if (v28 != 3)
              {
                goto LABEL_12;
              }

              break;
            case 4:
              if (v28 == 4)
              {
                break;
              }

              goto LABEL_12;
            default:
              if (v28 - 2) < 3 || ((v37 ^ v28))
              {
                goto LABEL_12;
              }

              break;
          }

          sub_100088204(v204, v36);
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
LABEL_112:
      __break(1u);
    }

    else
    {

LABEL_107:
    }
  }

  else
  {
    sub_100142970(a4, v18, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v155 = sub_1004A4A54();
    v156 = sub_1004A6034();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 68157952;
      *(v157 + 4) = 2;
      *(v157 + 8) = 256;
      v158 = v18[*(v171 + 20)];
      sub_1001429D8(v18, type metadata accessor for State.Logger);
      *(v157 + 10) = v158;
      _os_log_impl(&_mh_execute_header, v155, v156, "[%.*hhx] No running sync requests.", v157, 0xBu);
    }

    else
    {
      sub_1001429D8(v18, type metadata accessor for State.Logger);
    }
  }
}

void sub_100134318(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 64);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v2 + 64) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  *&v17 = 68158722;
  v38 = v17;
  v40 = a2;
  v42 = v15;
  v43 = a1;
  v37 = v6;
  while (v13)
  {
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v16 << 6);
    v20 = *(*(v15 + 48) + 4 * v19);
    v21 = (*(v15 + 56) + 32 * v19);
    v22 = *v21;
    v23 = *(v21 + 3);
    if (v23 <= a1)
    {
      v24 = a1 - v23;
      if (__OFSUB__(a1, v23))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (__OFSUB__(v23, a1))
      {
        goto LABEL_29;
      }

      v24 = a1 - v23;
      if (__OFSUB__(0, v23 - a1))
      {
        goto LABEL_30;
      }
    }

    v25 = v24 / 1000000000.0;
    if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    v13 &= v13 - 1;
    v26 = v25;
    if (v25 >= 301)
    {
      v44 = v20;
      v45 = v22;
      sub_100142970(a2, v6, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v27 = sub_1004A4A54();
      v28 = v6;
      v29 = sub_1004A6034();

      if (os_log_type_enabled(v27, v29))
      {
        v30 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v30 = v38;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        v31 = v28;
        v32 = *(v28 + *(v39 + 20));
        sub_1001429D8(v31, type metadata accessor for State.Logger);
        *(v30 + 10) = v32;
        *(v30 + 11) = 1024;
        *(v30 + 13) = v44;
        *(v30 + 17) = 2082;

        v33 = sub_1004A6754();
        v35 = sub_10015BA6C(v33, v34, &v46);

        *(v30 + 19) = v35;
        *(v30 + 27) = 2048;
        *(v30 + 29) = v26;
        _os_log_impl(&_mh_execute_header, v27, v29, "[%.*hhx] Sync #%u (%{public}s) still running after %ld seconds.", v30, 0x25u);
        sub_1000197E0(v41);

        a2 = v40;

        a1 = v43;
        v6 = v37;
      }

      else
      {
        sub_1001429D8(v28, type metadata accessor for State.Logger);

        a1 = v43;
        v6 = v28;
      }

      v15 = v42;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v9 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10013471C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6724(33);
  sub_1004A6934();
  v29._countAndFlagsBits = 0x6E616D6D6F63202CLL;
  v29._object = 0xED00007B203A7364;
  sub_1004A5994(v29);
  v6 = *(a3 + 16);
  if (v6)
  {
    sub_100091A08(0, v6, 0);
    v7 = a3 + 36;
    do
    {
      sub_1004A6934();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100091A08((v8 > 1), v9 + 1, 1);
      }

      v7 += 8;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = 0;
      v10[5] = 0xE000000000000000;
      --v6;
    }

    while (v6);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v11 = sub_1004A5614();
  v13 = v12;

  v30._countAndFlagsBits = v11;
  v30._object = v13;
  sub_1004A5994(v30);

  v31._countAndFlagsBits = 0x6F69746361202C7DLL;
  v31._object = 0xED00007B203A736ELL;
  sub_1004A5994(v31);
  v14 = *(a4 + 16);
  if (v14)
  {
    sub_100091A08(0, v14, 0);
    v15 = _swiftEmptyArrayStorage;
    v16 = a4 + 32;
    sub_1000D40AC();
    do
    {
      v16 += 4;
      v17 = sub_1004A5A84();
      v28 = v15;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        v27 = v17;
        v22 = v18;
        sub_100091A08((v19 > 1), v20 + 1, 1);
        v18 = v22;
        v17 = v27;
        v15 = v28;
      }

      v15[2] = v20 + 1;
      v21 = &v15[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      --v14;
    }

    while (v14);
  }

  v23 = sub_1004A5614();
  v25 = v24;

  v32._countAndFlagsBits = v23;
  v32._object = v25;
  sub_1004A5994(v32);

  v33._countAndFlagsBits = 125;
  v33._object = 0xE100000000000000;
  sub_1004A5994(v33);
  return 0;
}

Swift::Int sub_100134A90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141928(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100141044(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_100134BC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135274(a1, a2, a3, *v3, &_swift_release);
  *v3 = result;
  return result;
}

uint64_t sub_100134BF8(unint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1001353A4(*(a1 + 16), 0);
    v6 = sub_1001390AC(&v45, v5 + 8, v4, v3);
    v7 = v45;
    v1 = v46;
    v2 = v47;

    sub_100020D08(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v45 = v5;
  v8 = 0;
  sub_100134A90(&v45);
  v9 = v45;
  v10 = *(v3 + 16);
  if (v10)
  {
    v43 = v45;
    v11 = sub_1001353A4(v10, 0);
    v1 = sub_1001390AC(&v45, v11 + 8, v10, v3);
    v2 = v45;
    v12 = v46;
    v9 = v47;
    v13 = v48;

    sub_100020D08(v2);
    if (v1 != v10)
    {
      __break(1u);
      goto LABEL_38;
    }

    v9 = v43;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v45 = v11;
  sub_100134A90(&v45);
  v12 = v45;
  v13 = *(v45 + 16);
  if (v13 >= 7)
  {
    v15 = 7;
  }

  else
  {
    v15 = *(v45 + 16);
  }

  if (v15 >= *(v9 + 16))
  {

    v33 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v34 = v12 + 8;
      sub_100134BC4(0, v15, 0);
      v33 = _swiftEmptyArrayStorage;
      do
      {
        v35.rawValue = *v34++;
        v45 = 35;
        v46 = 0xE100000000000000;
        v54 = String.init(_:)(v35);
        sub_1004A5994(v54);

        v36 = v45;
        v37 = v46;
        v39 = _swiftEmptyArrayStorage[2];
        v38 = _swiftEmptyArrayStorage[3];
        if (v39 >= v38 >> 1)
        {
          sub_100134BC4((v38 > 1), v39 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v39 + 1;
        v40 = &_swiftEmptyArrayStorage[2 * v39];
        v40[4] = v36;
        v40[5] = v37;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
    if (!v13)
    {
      goto LABEL_29;
    }

    if (v13 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = *(v45 + 16);
    }

    sub_100134BC4(0, v17, 0);
    v16 = _swiftEmptyArrayStorage;
    v18.rawValue = v12[8];
    v45 = 35;
    v46 = 0xE100000000000000;
    v49 = String.init(_:)(v18);
    sub_1004A5994(v49);

    v1 = v45;
    v2 = v46;
    v44 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    v8 = v3 + 1;
    if (v3 >= v14 >> 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v16[2] = v8;
      v19 = &v16[2 * v3];
      v19[4] = v1;
      v19[5] = v2;
      if (v13 != 1)
      {
        v20.rawValue = v12[9];
        v45 = 35;
        v46 = 0xE100000000000000;
        v50 = String.init(_:)(v20);
        sub_1004A5994(v50);

        v1 = v45;
        v2 = v46;
        v44 = v16;
        v3 = v16[2];
        v21 = v16[3];
        v8 = v3 + 1;
        if (v3 >= v21 >> 1)
        {
          sub_100134BC4((v21 > 1), v3 + 1, 1);
        }

        v16[2] = v8;
        v22 = &v16[2 * v3];
        v22[4] = v1;
        v22[5] = v2;
        if (v13 != 2)
        {
          v23.rawValue = v12[10];
          v45 = 35;
          v46 = 0xE100000000000000;
          v51 = String.init(_:)(v23);
          sub_1004A5994(v51);

          v1 = v45;
          v2 = v46;
          v44 = v16;
          v3 = v16[2];
          v24 = v16[3];
          v8 = v3 + 1;
          if (v3 >= v24 >> 1)
          {
            sub_100134BC4((v24 > 1), v3 + 1, 1);
          }

          v16[2] = v8;
          v25 = &v16[2 * v3];
          v25[4] = v1;
          v25[5] = v2;
          if (v13 != 3)
          {
            v26.rawValue = v12[11];
            v45 = 35;
            v46 = 0xE100000000000000;
            v52 = String.init(_:)(v26);
            sub_1004A5994(v52);

            v13 = v45;
            v1 = v46;
            v44 = v16;
            v3 = v16[2];
            v27 = v16[3];
            v8 = v3 + 1;
            if (v3 >= v27 >> 1)
            {
              sub_100134BC4((v27 > 1), v3 + 1, 1);
            }

            v16[2] = v8;
            v28 = &v16[2 * v3];
            v28[4] = v13;
            v28[5] = v1;
          }
        }
      }

LABEL_29:
      sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004D01D0;
      *(inited + 32) = 10911970;
      *(inited + 40) = 0xA300000000000000;
      v45 = 35;
      v46 = 0xE100000000000000;
      v14 = *(v9 + 16);
      if (v14)
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      sub_100134BC4((v14 > 1), v8, 1);
      v16 = v44;
    }

    v30 = inited;
    v31.rawValue = *(v9 + 4 * v14 + 28);

    v53 = String.init(_:)(v31);
    sub_1004A5994(v53);

    v32 = v46;
    *(v30 + 48) = v45;
    *(v30 + 56) = v32;
    v45 = v16;
    sub_10013516C(v30);
    v33 = v45;
  }

  v45 = v33;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v41 = sub_1004A5614();

  return v41;
}

uint64_t sub_10013516C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100135274(result, v10, 1, v3, &_swift_bridgeObjectRelease);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100135274(char *result, int64_t a2, char a3, char *a4, void (*a5)(char *))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a5(a4);
  return v12;
}

void *sub_1001353A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D1498, &qword_1004E93A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100135428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005CEEA0, &unk_1004D1D70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1001354D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005CEF00, &qword_1004D1DD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_100135578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

char *sub_1001355F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100135700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEEA0, &unk_1004D1D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100135828(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100135970(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1670, &qword_1004D6BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1678, &qword_1004D6BC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135AB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1638, &qword_1004D6B88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1640, &qword_1004D6B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135C48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1680, &qword_1004D6BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1688, &qword_1004D6BD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135E1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1660, &qword_1004D6BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1668, &qword_1004D6BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100135F64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1580, &qword_1004D6968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D1588, &qword_1004D6970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100136098(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10013619C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001362EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D16E0, &qword_1004D6C30);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100136404(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D1628, &qword_1004D6B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D0968, &qword_1004D44B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100136538(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D1730, &qword_1004D6C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100136674(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D14F8, &qword_1004D6910);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001367D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}