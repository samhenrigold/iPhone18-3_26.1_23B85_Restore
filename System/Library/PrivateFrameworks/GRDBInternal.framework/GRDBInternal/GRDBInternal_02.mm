unint64_t sub_1B213A580(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

void *sub_1B213A59C(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

unint64_t sub_1B213A620(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

void sub_1B213A63C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B216F050(0, v2, 0);
    v5 = v13;
    v6 = a1 + 40;
    while (*(a2 + 16))
    {

      v7 = sub_1B211E590();
      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      memcpy(__dst, (*(a2 + 56) + 216 * v7), sizeof(__dst));
      sub_1B21A63AC(__dst, v11);

      v13 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B216F050(v9 > 1, v10 + 1, 1);
        v5 = v13;
      }

      *(v5 + 16) = v10 + 1;
      memcpy((v5 + 216 * v10 + 32), __dst, 0xD8uLL);
      v6 += 16;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1B213A7D0(uint64_t a1)
{
  sub_1B21118C4();
  memcpy(v3, v4, v5);
  sub_1B21118C4();
  memcpy(v6, v7, v8);
  v9 = 42;
  switch(sub_1B213A580(v71))
  {
    case 1u:
      v35 = sub_1B213AA9C(v71);
      v36 = memcpy(__dst, v35, 0xA3uLL);
      sub_1B2112878(v36, v37, v38, v39, v40, v41, v42, v43, v64, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v69[0]);
      v44 = sub_1B213AA9C(v69);
      sub_1B2127DC0(v44, v68);
      v9 = __dst;
      v34 = sub_1B2127E58(a1, 0);
      goto LABEL_6;
    case 2u:
      v45 = sub_1B213AA9C(v71);
      v47 = v45[21];
      v46 = v45[22];
      v48 = memcpy(v68, v45, 0xA3uLL);
      sub_1B2112878(v48, v49, v50, v51, v52, v53, v54, v55, v64, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v69[0]);
      v56 = sub_1B213AA9C(v69);
      sub_1B2156464(v56, __dst);
      v9 = v68;
      v57 = sub_1B2127E58(a1, 0);
      if (v1)
      {

        sub_1B21356F8(v45);
        return v9;
      }

      *__dst = v57;
      *&__dst[8] = v58;

      MEMORY[0x1B2741EB0](542327072, 0xE400000000000000);

      v60 = *__dst;
      v59 = *&__dst[8];
      sub_1B2116550();
      MEMORY[0x1B2741EB0](v47, v46);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      v61 = *__dst;
      v62 = *&__dst[8];
      *__dst = v60;
      *&__dst[8] = v59;

      MEMORY[0x1B2741EB0](v61, v62);

      sub_1B21356F8(v45);
      return *__dst;
    case 3u:
      v20 = sub_1B213AA9C(v71);
      sub_1B2112878(v20, v21, v22, v23, v24, v25, v26, v27, v64, *v20, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v69[0]);
      sub_1B213AA9C(v69);

      v9 = __dst;
      v34 = sub_1B2119120(a1, v28, v29, v30, v31, v32, v33);
LABEL_6:
      if (!v1)
      {
        v9 = v34;
      }

      sub_1B213ACA0(v70);
      return v9;
    case 4u:
      return v9;
    default:
      v10 = sub_1B213AA9C(v71);
      v11 = *v10;
      sub_1B2112878(v10, v12, v13, v14, v15, v16, v17, v18, v64, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v69[0]);
      sub_1B213AA9C(v69);

      sub_1B213AAC0(v11);
      if (v19)
      {
        sub_1B2116550();
        MEMORY[0x1B2741EB0]();
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        MEMORY[0x1B2741EB0](10798, 0xE200000000000000);

        sub_1B213ACA0(v70);
        return *__dst;
      }

      else
      {
        sub_1B213ACA0(v70);
        return 42;
      }
  }
}

uint64_t sub_1B213AAC0(unint64_t a1)
{
  v2 = v1;
  sub_1B2139070();
  if (v4)
  {

    return sub_1B2138F70(v5);
  }

  else
  {
    v7 = *(v2 + 40);
    sub_1B213AB40();
    if ((v8 & 1) != 0 && sub_1B2118DD0(v7) < 2)
    {
      return 0;
    }

    else
    {
      return sub_1B213AE84(a1);
    }
  }
}

void sub_1B213AB40()
{
  sub_1B212D010();
  v1 = v0;
  if ((v0 & 0xC000000000000001) != 0)
  {

    sub_1B2252C50();
  }

  else if (*(v0 + 16))
  {
    type metadata accessor for TableAlias();
    sub_1B2253420();
    sub_1B2138CB8();
    sub_1B2253470();
    sub_1B2113B98();
    v4 = ~v3;
    do
    {
      v5 = v2 & v4;
      if (((1 << (v2 & v4)) & *(v1 + 56 + (((v2 & v4) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v6 = static TableAlias.== infix(_:_:)();

      v2 = v5 + 1;
    }

    while (!v6);
  }

  sub_1B212CE34();
}

BOOL static TableAlias.== infix(_:_:)()
{
  v0 = sub_1B2138CF0();

  v1 = sub_1B2138CF0();

  return v0 == v1;
}

uint64_t sub_1B213ACD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1B213ADF0(a4);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v8, v9);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  }

  return 34;
}

uint64_t sub_1B213ADF0(unint64_t a1)
{
  v1 = sub_1B213AE84(a1);
  v3 = v2;
  if (v1 == sub_1B2138F90() && v3 == v4)
  {

LABEL_8:

    return sub_1B2115C78();
  }

  sub_1B2115C78();
  v6 = sub_1B22531F0();

  if (v6)
  {
    goto LABEL_8;
  }

  return sub_1B2115C78();
}

uint64_t sub_1B213AE84(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 32);
  if (*(v4 + 16) && (a1 = sub_1B2190C9C(), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 16 * a1);
  }

  else
  {
    v7 = *(v2 + 24);
    if (v7 < 0)
    {
      v8 = *(v2 + 16);

      v6 = sub_1B213AE84(v3);
      sub_1B211B418(v8, v7);
    }

    else
    {
      return sub_1B2138F70(a1);
    }
  }

  return v6;
}

void *sub_1B213AF68(uint64_t a1, void (*a2)(void *), uint64_t a3, void *(*a4)(void *__return_ptr))
{
  result = (a4)(__src, a1);
  if (!v4)
  {
    a2(__src);
    memcpy(v7, __src, 0xA3uLL);
    return sub_1B21356F8(v7);
  }

  return result;
}

void *sub_1B213B064(uint64_t a1, void *(*a2)(void *__return_ptr))
{
  result = (a2)(v6, a1);
  if (!v2)
  {
    v4 = v7;
    v5 = v8;
    sub_1B21139A0(v6, v7);
    (*(v5 + 8))(v4, v5);
    return sub_1B2113208(v6);
  }

  return result;
}

uint64_t sub_1B213B110(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  v10[3] = &type metadata for SQLExpression;
  v10[4] = &protocol witness table for SQLExpression;
  v10[0] = swift_allocObject();
  a2(a1);
  if (v4)
  {
    return sub_1B21C80D0(v10);
  }

  v9[3] = &type metadata for SQLExpression;
  v9[4] = &protocol witness table for SQLExpression;
  v9[0] = swift_allocObject();
  a4(a1);
  && infix(_:_:)(v10, v9);
  sub_1B2113208(v9);
  return sub_1B2113208(v10);
}

uint64_t sub_1B213B230()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B213B2AC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1B21139A0(a1, v3);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  v6 = sub_1B212FF14(a2);
  return (*(*(v3 - 8) + 16))(v6, v5, v3);
}

uint64_t SQLExpression.sqlExpression.getter()
{
  sub_1B2111ADC();
  memcpy(v0, v1, v2);
  sub_1B2111ADC();
  v6 = memcpy(v3, v4, v5);
  v14 = sub_1B21D09F8(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  return sub_1B2127DC0(v14, v15);
}

uint64_t sub_1B213B3A4(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

void sub_1B213B4BC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v101 = *(a1 + 16);
  v104 = *(a1 + 24);
  LODWORD(v107) = *(a1 + 32);
  v6 = *(a1 + 33);
  HIDWORD(v89) = *(a1 + 34);
  if (v6 == 1)
  {
    HIDWORD(v83) = 1;
    v86 = a3;
    v7 = a2[2];
    v8 = a2 + 4;
    v3 = MEMORY[0x1E69E7CC0];
    v110 = xmmword_1B22546B0;
    v92 = *a1;
    v95 = *(a1 + 8);
    if (v7)
    {
      while (1)
      {
        sub_1B2117AC4();
        memcpy(v9, v10, v11);
        sub_1B2117AC4();
        memcpy(v12, v13, v14);
        v15 = sub_1B2127E1C(__dst);
        if (v15 != 9)
        {
          sub_1B21263F8(v15, v16, v17, v18, v19, v20, v21, v22, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v118, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
          goto LABEL_17;
        }

        v119 = v7;
        v23 = sub_1B2127E38(__dst);
        v30 = *v23;
        v31 = *(v23 + 16);
        v32 = *(v23 + 24);
        v33 = *(v23 + 32);
        HIDWORD(v107) = *(v23 + 33);
        v34 = *(v23 + 34);
        v35 = *(v23 + 40);
        if (v5 != *v23 || v4 != *(v23 + 8))
        {
          v23 = sub_1B22531F0();
          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        HIDWORD(v98) = v34;
        v37 = v107;
        LOBYTE(v127) = v107;
        LOBYTE(v124) = v33;
        v38 = sub_1B21263F8(v23, v24, v30, v25, v26, v27, v28, v29, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v119, v31, v32, v124, v101, v104, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
        sub_1B21263F8(v38, v39, v40, v41, v42, v43, v44, v45, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v113, v116, v120, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
        v46 = sub_1B211F390();
        sub_1B2113A20(v46, v47, v37);
        v48 = sub_1B211FE5C();
        sub_1B2113A20(v48, v49, v50);
        v51 = static DatabaseValue.== infix(_:_:)(&v125, &v122);
        sub_1B2113A44(v122, v123, v124);
        sub_1B2113A44(v125, v126, v127);

        v52 = sub_1B211FE5C();
        sub_1B2113A44(v52, v53, v54);
        if (!v51)
        {

          v5 = v92;
          v4 = v95;
          goto LABEL_16;
        }

        v5 = v92;
        v4 = v95;
        v7 = v118;
        if ((v107 & 0x100000000) == 0 || HIDWORD(v89) != HIDWORD(v98))
        {

          goto LABEL_17;
        }

        sub_1B21356F8(__src);
        v66 = *(v35 + 16);
LABEL_18:
        v67 = v3[2];
        if (__OFADD__(v67, v66))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v68 = v3[3] >> 1, v68 < v67 + v66))
        {
          sub_1B213B944();
          v3 = v69;
          v68 = v69[3] >> 1;
        }

        if (*(v35 + 16))
        {
          if (v68 - v3[2] < v66)
          {
            goto LABEL_41;
          }

          swift_arrayInitWithCopy();

          if (v66)
          {
            v70 = v3[2];
            v71 = __OFADD__(v70, v66);
            v72 = v70 + v66;
            if (v71)
            {
              goto LABEL_42;
            }

            v3[2] = v72;
          }
        }

        else
        {

          if (v66)
          {
            goto LABEL_40;
          }
        }

        v8 += 21;
        if (!--v7)
        {
          goto LABEL_32;
        }
      }

      v55 = sub_1B21263F8(v23, v24, v30, v25, v26, v27, v28, v29, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, *(&v110 + 1), v115, v119, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
      sub_1B21263F8(v55, v56, v57, v58, v59, v60, v61, v62, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v114, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

      v63 = sub_1B211FE5C();
      sub_1B2113A44(v63, v64, v65);

LABEL_16:
      v7 = v118;
LABEL_17:
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v35 = swift_allocObject();
      *(v35 + 16) = v110;
      memcpy((v35 + 32), __src, 0xA3uLL);
      v66 = 1;
      goto LABEL_18;
    }

LABEL_32:
    LOBYTE(v6) = BYTE4(v83);
  }

  else
  {
  }

  v73 = v3[2];
  if (v73)
  {
    memcpy(__dst, v3 + 4, 0xA3uLL);
    if (v73 == 1)
    {
      sub_1B2127DC0(__dst, __src);

      sub_1B21D0A74(v74, __dst);
      return;
    }

    __src[0] = v5;
    __src[1] = v4;
    v76 = v101;
    v75 = v104;
    __src[2] = v101;
    __src[3] = v104;
    v77 = v107;
    LOBYTE(__src[4]) = v107;
    BYTE1(__src[4]) = v6;
    BYTE2(__src[4]) = BYTE4(v89);
    __src[5] = v3;
    v79 = sub_1B213B9B8(__src);
    sub_1B21D0A74(v79, __src);
  }

  else
  {

    v76 = v101;
    v75 = v104;
    __dst[0] = v101;
    __dst[1] = v104;
    v77 = v107;
    LOBYTE(__dst[2]) = v107;
    v78 = sub_1B2127D7C(__dst);
    sub_1B21D0A74(v78, __dst);
  }

  sub_1B2113A20(v76, v75, v77);
}

void sub_1B213B894()
{
  sub_1B2114660();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1B213B974(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B213B998(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 168 * a2);
  }

  return result;
}

uint64_t sub_1B213B9B8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x480000u) >> 16;
  return result;
}

uint64_t sub_1B213B9FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v21 = a5;
  switch((a21 >> 19) & 0x1F)
  {
    case 0u:
    case 3u:
    case 5u:
      goto LABEL_14;
    case 1u:

      goto LABEL_2;
    case 2u:

      return sub_1B2113A44(result, a2, a3);
    case 4u:
    case 0xAu:

      return sub_1B214E054(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
    case 6u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
LABEL_2:

    case 9u:

      sub_1B2113A44(a3, a4, v21);
      goto LABEL_14;
    case 0x11u:

LABEL_14:

      break;
    default:
      return result;
  }

  return result;
}

void *sub_1B213BBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  v11 = sub_1B2127E1C(v144);
  switch(v11)
  {
    case 1:
      sub_1B2127E38(v144);
      sub_1B2121220();

      goto LABEL_3;
    case 2:
    case 4:
    case 10:
    case 19:
    case 20:
      v12 = sub_1B2127E38(v144);
LABEL_3:
      sub_1B211A2B4(v12, v143);
      return sub_1B2121220();
    case 3:
      v37 = sub_1B2127E38(v144);
      v38 = *v37;
      v39 = *(*v37 + 16);
      if (v39)
      {
        sub_1B2121220();
        v140[0] = MEMORY[0x1E69E7CC0];
        sub_1B2115CA0();
        sub_1B213CA68();
        v40 = v140[0];
        v41 = v38 + 32;
        do
        {
          sub_1B213CBAC();
          memcpy(v42, v43, v44);
          sub_1B213CBAC();
          memcpy(v45, v46, v47);
          sub_1B2127DC0(&v141[21], __dst);
          v48 = sub_1B211725C();
          sub_1B213BBD8(v48, v49);
          sub_1B21356F8(&v141[21]);
          v140[0] = v40;
          v51 = v40[2];
          v50 = v40[3];
          if (v51 >= v50 >> 1)
          {
            sub_1B211156C(v50);
            sub_1B213CA68();
            v40 = v140[0];
          }

          v40[2] = v51 + 1;
          sub_1B212D6D8(&v40[21 * v51 + 4]);
          v41 += 168;
          --v39;
        }

        while (v39);
      }

      else
      {
        sub_1B2121220();
        v40 = MEMORY[0x1E69E7CC0];
      }

      if (!v40[2])
      {
        goto LABEL_59;
      }

      sub_1B21356F8(v143);
      v129 = v40[2];
      if (!v129)
      {
        __break(1u);
LABEL_59:

        __break(1u);
        JUMPOUT(0x1B213C664);
      }

      memcpy(__dst, v40 + 4, 0xA3uLL);
      if (v129 == 1)
      {
        sub_1B2127DC0(__dst, &v141[21]);

        v130 = __dst;
      }

      else
      {
        v141[0] = v40;
        sub_1B218184C(v141);
        v130 = v141;
      }

      v11 = memcpy(&v141[21], v130, 0xA3uLL);
      v97 = &v141[21];
      return sub_1B211A2B4(v11, v97);
    case 5:
      v141[0] = *sub_1B2127E38(v144);
      sub_1B2121220();
      v52 = sub_1B211725C();
      sub_1B2153E58(v52, v53);
      sub_1B21356F8(v143);
      __dst[0] = v141[21];
      v11 = sub_1B2153E14(__dst);
      goto LABEL_56;
    case 6:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v24, v25, v26);
      sub_1B21D09A0();
      memcpy(v27, v28, v29);
      sub_1B2142348();
      memcpy(v30, v31, v32);
      v33 = *(v2 + 515);
      sub_1B212E2C8();
      sub_1B212338C(v140);
      v34 = sub_1B211725C();
      sub_1B213BBD8(v34, v35);
      sub_1B213BBD8(a1, __src);
      sub_1B21CF574(v33, a2);
      memcpy(v141, __src, 0xA3uLL);
      sub_1B21356F8(v141);
      sub_1B21D0A5C(&v141[21]);
      sub_1B21356F8(&v141[21]);
      v36 = v140;
      goto LABEL_32;
    case 7:
      sub_1B212D02C();
      v83 = v2[2];
      v84 = v2[3];
      memcpy(__dst, v2 + 4, 0xA3uLL);
      memcpy(v140, v2 + 25, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C(v141);
      sub_1B213BBD8(a1, v139);
      sub_1B21CF9AC(v83, v84, v141, a2);
      goto LABEL_25;
    case 8:
      sub_1B212D02C();
      v86 = v2[2];
      v85 = v2[3];
      v88 = v2[4];
      v87 = v2[5];
      memcpy(__dst, v2 + 6, 0xA3uLL);
      memcpy(v139, v2 + 27, 0xA3uLL);
      memcpy(v140, v2 + 48, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C(v141);
      sub_1B213BBD8(a1, &v141[21]);
      memcpy(__dst, v140, 0xA3uLL);
      if (sub_1B213EA68(__dst) == 1)
      {
        v89 = v140;
      }

      else
      {
        sub_1B212D6D8(v139);
        memcpy(v135, v140, 0xA3uLL);
        sub_1B2127DC0(v135, v138);
        sub_1B213BBD8(a1, __src);
        sub_1B21D0A5C(v136);
        sub_1B21356F8(v136);
        memcpy(v138, __src, 0xA3uLL);
        nullsub_1();
        v89 = v138;
      }

      memcpy(v139, v89, 0xA3uLL);
      v128 = swift_allocObject();
      v128[2] = v86;
      v128[3] = v85;
      v128[4] = v88;
      v128[5] = v87;
      memcpy(v128 + 6, v141, 0xA3uLL);
      sub_1B214CC30(v128 + 27);
      sub_1B21D0A5C(v128 + 48);

      sub_1B21356F8(v143);
      v138[0] = v128;
      v11 = sub_1B21D0530(v138);
      v97 = v138;
      return sub_1B211A2B4(v11, v97);
    case 9:
      v54 = sub_1B2127E38(v144);
      v55 = *(v54 + 8);
      v56 = *(v54 + 16);
      v57 = *(v54 + 24);
      v58 = *(v54 + 32);
      v59 = *(v54 + 33);
      v60 = *(v54 + 34);
      v61 = *(v54 + 40);
      v139[0] = *v54;
      v139[1] = v55;
      v139[2] = v56;
      v139[3] = v57;
      LOBYTE(v139[4]) = v58;
      BYTE1(v139[4]) = v59;
      BYTE2(v139[4]) = v60;
      v62 = *(v61 + 16);
      if (v62)
      {
        v131 = v58;
        v133 = v57;
        sub_1B2121220();
        v138[0] = MEMORY[0x1E69E7CC0];
        sub_1B213CA68();
        v63 = v138[0];
        v64 = v62 - 1;
        for (i = 32; ; i += 168)
        {
          memcpy(&v141[21], (v61 + i), 0xA3uLL);
          memcpy(v141, (v61 + i), 0xA3uLL);
          sub_1B2127DC0(&v141[21], v140);
          v66 = sub_1B211725C();
          sub_1B213BBD8(v66, v67);
          sub_1B21356F8(&v141[21]);
          v138[0] = v63;
          v69 = v63[2];
          v68 = v63[3];
          if (v69 >= v68 >> 1)
          {
            sub_1B211156C(v68);
            sub_1B213CA68();
            v63 = v138[0];
          }

          v63[2] = v69 + 1;
          sub_1B212D6D8(&v63[21 * v69 + 4]);
          if (!v64)
          {
            break;
          }

          --v64;
        }

        v57 = v133;
        v58 = v131;
      }

      else
      {
        sub_1B2121220();

        v63 = MEMORY[0x1E69E7CC0];
      }

      sub_1B213B4BC(v139, v63, a2);

      return sub_1B2113A44(v56, v57, v58);
    case 11:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v98, v99, v100);
      sub_1B2114090();
      memcpy(v101, v102, v103);
      v104 = *(v2 + 346);
      sub_1B212E2C8();
      sub_1B2116A68();
      sub_1B214C980(a1, v141);
      sub_1B21D0994();
      v105 = swift_allocObject();
      v106 = sub_1B211E4F4(v105);
      sub_1B214CC30(v106);
      memcpy(&v141[2], v141, 0xA2uLL);
      BYTE2(v141[22]) = v104;
      sub_1B21356F8(v143);
      sub_1B213CF3C();
      v11 = sub_1B214C468(v107);
      goto LABEL_56;
    case 12:
      v18 = sub_1B2127E38(v144);
      v20 = *(*v18 + 16);
      v19 = *(*v18 + 24);
      v21 = *(*v18 + 32);
      memcpy(__dst, (*v18 + 40), 0xA3uLL);
      sub_1B212E2C8();
      sub_1B2116A68();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      sub_1B214CC30((v22 + 40));

      sub_1B21356F8(v143);
      sub_1B213CF3C();
      v11 = sub_1B21D0684(v23);
      goto LABEL_56;
    case 13:
      sub_1B212D02C();
      v70 = *(v2 + 16);
      memcpy(__dst, v2 + 3, 0xA3uLL);
      memcpy(v140, v2 + 24, 0xA3uLL);
      sub_1B212E2C8();
      sub_1B212338C(v141);
      sub_1B213BBD8(a1, v139);
      sub_1B21353B0(v70, v141, a2);
LABEL_25:
      sub_1B21D0A5C(&v141[21]);
      sub_1B21356F8(&v141[21]);
      v36 = v141;
      goto LABEL_32;
    case 14:
      v14 = sub_1B2127E38(v144);
      v15 = *(*v14 + 16);
      memcpy(__dst, (*v14 + 24), 0xA3uLL);
      sub_1B212E2C8();
      sub_1B2116A68();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      sub_1B214CC30((v16 + 24));

      sub_1B21356F8(v143);
      sub_1B213CF3C();
      v11 = sub_1B21D0640(v17);
      goto LABEL_56;
    case 15:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v74, v75, v76);
      sub_1B211D694();
      memcpy(v77, v78, v79);
      sub_1B212E2C8();
      sub_1B2127DC0(v141, &v141[21]);
      sub_1B2116A68();
      sub_1B21356F8(v141);
      v80 = swift_allocObject();
      v81 = sub_1B211E4F4(v80);
      sub_1B214CC30(v81);
      sub_1B21356F8(v143);
      sub_1B213CF3C();
      v11 = sub_1B21D03D8(v82);
      goto LABEL_56;
    case 16:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v108, v109, v110);
      v111 = v2[23];
      v112 = v2[24];
      sub_1B212E2C8();
      sub_1B2116A68();
      v141[0] = v111;
      v141[1] = v112;
      sub_1B21CF728(v141, a2);
      v36 = &v141[21];
LABEL_32:
      memcpy(__dst, v36, 0xA3uLL);
      sub_1B21356F8(__dst);
      return sub_1B21356F8(v143);
    case 17:
      v114 = sub_1B2127E38(v144);
      v115 = *v114;
      v116 = *(v114 + 8);
      v117 = *(v114 + 16);
      v118 = *(v114 + 17);
      v119 = *(v114 + 24);
      v120 = *(v119 + 16);
      if (v120)
      {
        v132 = *(v114 + 16);
        v134 = *(v114 + 8);
        sub_1B2121220();
        v139[0] = MEMORY[0x1E69E7CC0];
        sub_1B2115CA0();
        sub_1B213CA68();
        v121 = v139[0];
        v122 = v120 - 1;
        for (j = 32; ; j += 168)
        {
          memcpy(&v141[21], (v119 + j), 0xA3uLL);
          memcpy(v141, (v119 + j), 0xA3uLL);
          sub_1B2127DC0(&v141[21], v140);
          v124 = sub_1B211725C();
          sub_1B213BBD8(v124, v125);
          sub_1B21356F8(&v141[21]);
          v139[0] = v121;
          v127 = *(v121 + 16);
          v126 = *(v121 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_1B211156C(v126);
            sub_1B21234E8();
            sub_1B213CA68();
            v121 = v139[0];
          }

          *(v121 + 16) = v127 + 1;
          sub_1B212D6D8((v121 + 168 * v127 + 32));
          if (!v122)
          {
            break;
          }

          --v122;
        }

        v116 = v134;
        v117 = v132;
      }

      else
      {
        sub_1B2121220();

        v121 = MEMORY[0x1E69E7CC0];
      }

      __dst[0] = v115;
      __dst[1] = v116;
      LOBYTE(__dst[2]) = v117;
      BYTE1(__dst[2]) = v118;
      __dst[3] = v121;
      v11 = sub_1B2179374(__dst);
      goto LABEL_56;
    case 18:
      sub_1B212D02C();
      sub_1B211D694();
      memcpy(v90, v91, v92);
      v93 = *(v2 + 179);
      sub_1B212E2C8();
      sub_1B2116A68();
      v94 = swift_allocObject();
      v95 = sub_1B211E4F4(v94);
      sub_1B214CC30(v95);
      *(v2 + 179) = v93;
      sub_1B21356F8(v143);
      sub_1B213CF3C();
      v11 = sub_1B21D04A8(v96);
LABEL_56:
      v97 = __dst;
      return sub_1B211A2B4(v11, v97);
    case 21:
      v97 = v143;
      return sub_1B211A2B4(v11, v97);
    case 22:
      __dst[0] = a1;
      v113 = sub_1B21D05FC(__dst);
      sub_1B211A2B4(v113, __dst);

    default:
      v71 = sub_1B2127E38(v144);
      v72 = v71[1];
      __dst[0] = *v71;
      __dst[1] = v72;
      __dst[2] = a1;
      v73 = sub_1B213CBE4(__dst);
      sub_1B211A2B4(v73, __dst);
      sub_1B212E2C8();
  }
}

uint64_t sub_1B213C6D0()
{
  sub_1B2114F84();
  v1 = sub_1B212CE50();
  sub_1B214DF8C(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, v16, v17, *(v0 + 328), *(v0 + 336), *(v0 + 344));
  sub_1B21D0994();

  return swift_deallocObject();
}

uint64_t sub_1B213C72C()
{

  sub_1B211668C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160), *(v0 + 176), *(v0 + 208) | (*(v0 + 210) << 16));
  sub_1B211668C(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328), *(v0 + 344), *(v0 + 376) | (*(v0 + 378) << 16));
  v1 = *(v0 + 448);
  v2 = *(v0 + 488);
  v3 = *(v0 + 544) | (*(v0 + 546) << 16);
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v4 = v2 != 0;
    v5 = v2 == 1;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (!v5 && v4 || (v3 & 0xFE7E00) != 0)
  {
    sub_1B213B9FC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v1, *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), v2, *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1B213C86C()
{

  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 184) | (*(v0 + 186) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B213C8E4()
{

  sub_1B211668C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168), *(v0 + 200) | (*(v0 + 202) << 16));

  return swift_deallocObject();
}

void sub_1B213C9B8()
{
  sub_1B2111830();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B213CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v8 = a4 + 16 * v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
}

uint64_t sub_1B213CAF8(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1B2183238(a1, va1, va, v1);
}

uint64_t sub_1B213CB2C()
{

  return type metadata accessor for Row();
}

void *sub_1B213CB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(a1, &__src, 0xD2uLL);
}

void *sub_1B213CBB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0xA3uLL);
}

uint64_t sub_1B213CBE4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x80000u) >> 16;
  return result;
}

void *sub_1B213CC28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xA2uLL);
}

uint64_t sub_1B213CC8C()
{
  v2 = *(v0 + 3368);
  *(v0 + 3360) = *(v0 + 3360);
  *(v0 + 3368) = v2;
}

void *sub_1B213CCB0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

uint64_t sub_1B213CCC8()
{

  return sub_1B2252190();
}

uint64_t sub_1B213CD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);

  return type metadata accessor for QueryInterfaceRequest(0, v6, a3, a4);
}

uint64_t sub_1B213CD34()
{
  sub_1B21139A0((v0 + 2592), v1);

  return sub_1B2127B14(v0 + 3536, v0 + 2088);
}

void sub_1B213CD78()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B213CE30()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B213CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return swift_dynamicCast();
}

uint64_t sub_1B213CE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_1B21CF574(0, v51);
}

char *sub_1B213CED0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B213CF0C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x250] = a1;
  STACK[0x258] = v1;
  return v2;
}

uint64_t sub_1B213CF20()
{
}

void sub_1B213CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v21;
  a20 = v23;
  v24 = v20;
  v164 = v25;
  v26 = *(v22 + 16);
  if (v27)
  {
    v28 = 0;
    v163 = v22 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v162 = *(v22 + 16);
    while (v28 != v26)
    {
      v30 = v163 + 24 * v28;
      v32 = *v30;
      v31 = *(v30 + 8);
      if (*(v30 + 16))
      {
        v33 = sub_1B211619C();
        sub_1B214C970(v33, v34, v35);

        sub_1B213CF80(v164, v32, (v31 & 1) == 0, v36, v37, v38, v39, v40, v157, v158, v159, v160, v161, v162, v163, v164, __src[0], __src[1], __src[2], __src[3]);
        if (v24)
        {
          v154 = sub_1B211619C();
          sub_1B214DCD8(v154, v155, v156);
LABEL_54:
          v145 = sub_1B211619C();
LABEL_55:
          sub_1B214DCD8(v145, v146, v147);

          break;
        }

        v42 = v41;
        v43 = sub_1B211619C();
        sub_1B214DCD8(v43, v44, v45);
        v46 = sub_1B211619C();
        sub_1B214DCD8(v46, v47, v48);
      }

      else
      {
        v49 = sub_1B2115178();
        sub_1B214C970(v49, v50, v51);
        v52 = sub_1B2115178();
        sub_1B214C970(v52, v53, v54);

        v32(&a10, v164);
        if (v24)
        {
          v148 = sub_1B2115178();
          sub_1B214DCD8(v148, v149, v150);
          v151 = sub_1B2115178();
          sub_1B214DCD8(v151, v152, v153);

          break;
        }

        v160 = v28;
        v161 = 0;
        v55 = a10;
        v56 = *(a10 + 16);
        if (v56)
        {
          v169 = MEMORY[0x1E69E7CC0];
          sub_1B214D708();
          v42 = v169;
          v57 = v56 - 1;
          v58 = 32;
          while (1)
          {
            memcpy(__dst, (v55 + v58), 0xA3uLL);
            memmove(v168, (v55 + v58), 0xA3uLL);
            switch(sub_1B214DC10(v168))
            {
              case 2u:
                v75 = sub_1B213D4C8(v168);
                sub_1B21229D4(v75, v76, v77, v78, v79, v80, v81, v82, v157, v158, v159, v160, v161, v162, v163, v164);
                sub_1B21C7F70(__src);
                goto LABEL_15;
              case 3u:
                v83 = sub_1B213D4C8(v168);
                sub_1B21229D4(v83, v84, v85, v86, v87, v88, v89, v90, v157, v158, v159, v160, v161, v162, v163, v164);
                sub_1B21C7F2C(__src);
                goto LABEL_15;
              case 4u:
                v67 = sub_1B213D4C8(v168);
                sub_1B21229D4(v67, v68, v69, v70, v71, v72, v73, v74, v157, v158, v159, v160, v161, v162, v163, v164);
                sub_1B21C7E84(__src);
                goto LABEL_15;
              case 5u:
                goto LABEL_64;
              default:
                v59 = sub_1B213D4C8(v168);
                sub_1B21229D4(v59, v60, v61, v62, v63, v64, v65, v66, v157, v158, v159, v160, v161, v162, v163, v164);
                sub_1B21C7FB4(__src);
LABEL_15:
                memcpy(v166, __src, sizeof(v166));
                sub_1B21C7ED0(__dst, __src);
                v169 = v42;
                v92 = *(v42 + 16);
                v91 = *(v42 + 24);
                if (v92 >= v91 >> 1)
                {
                  sub_1B211156C(v91);
                  sub_1B214D708();
                  v42 = v169;
                }

                *(v42 + 16) = v92 + 1;
                memcpy((v42 + 168 * v92 + 32), v166, 0xA3uLL);
                if (!v57)
                {

                  v93 = sub_1B2115178();
                  sub_1B214DCD8(v93, v94, v95);
                  v96 = sub_1B2115178();
                  sub_1B214DCD8(v96, v97, v98);
                  v99 = sub_1B2115178();
                  sub_1B214DCD8(v99, v100, v101);
                  goto LABEL_21;
                }

                --v57;
                v58 += 168;
                break;
            }
          }
        }

        v102 = sub_1B2115178();
        sub_1B214DCD8(v102, v103, v104);
        v105 = sub_1B2115178();
        sub_1B214DCD8(v105, v106, v107);

        v42 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v28 = v160;
        v24 = v161;
      }

      v108 = *(v42 + 16);
      v109 = *(v29 + 16);
      if (__OFADD__(v109, v108))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_1B213D4C8(v168);
        sub_1B2111608();
        sub_1B2112A88();
        sub_1B212E2BC();
        sub_1B2252EC0();
        __break(1u);
        JUMPOUT(0x1B213D4B0);
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v109 + v108 > *(v29 + 24) >> 1)
      {
        sub_1B214DCA8();
        v29 = v110;
      }

      ++v28;
      if (*(v42 + 16))
      {
        sub_1B2116A58();
        if (v112 != v113)
        {
          goto LABEL_61;
        }

        sub_1B21234D0(v111);
        swift_arrayInitWithCopy();

        v26 = v162;
        if (v108)
        {
          v114 = *(v29 + 16);
          v113 = __OFADD__(v114, v108);
          v115 = v114 + v108;
          if (v113)
          {
            goto LABEL_63;
          }

          *(v29 + 16) = v115;
        }
      }

      else
      {

        v26 = v162;
        if (v108)
        {
          __break(1u);
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
LABEL_33:
    v116 = (v22 + 48);
    for (i = MEMORY[0x1E69E7CC0]; v26; --v26)
    {
      v119 = *(v116 - 2);
      v118 = *(v116 - 1);
      if (*v116)
      {

        sub_1B213CF80(v164, v119, v118 & 1, v120, v121, v122, v123, v124, v157, v158, v159, v160, v161, v162, v163, v164, __src[0], __src[1], __src[2], __src[3]);
        if (v24)
        {
          goto LABEL_54;
        }

        v126 = v125;
        v127 = sub_1B211619C();
        sub_1B214DCD8(v127, v128, v129);
      }

      else
      {
        v130 = sub_1B2115178();
        sub_1B214C970(v130, v131, v132);

        v119(v168, v164);
        v133 = sub_1B2115178();
        if (v24)
        {
          sub_1B214DCD8(v133, v134, v135);
          v145 = sub_1B2115178();
          goto LABEL_55;
        }

        sub_1B214DCD8(v133, v134, v135);
        v136 = sub_1B2115178();
        sub_1B214DCD8(v136, v137, v138);
        v126 = v168[0];
      }

      v139 = *(v126 + 16);
      v140 = *(i + 16);
      if (__OFADD__(v140, v139))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v140 + v139 > *(i + 24) >> 1)
      {
        sub_1B214DCA8();
        i = v141;
      }

      if (*(v126 + 16))
      {
        sub_1B2116A58();
        if (v112 != v113)
        {
          goto LABEL_60;
        }

        sub_1B21234D0(v142);
        swift_arrayInitWithCopy();

        if (v139)
        {
          v143 = *(i + 16);
          v113 = __OFADD__(v143, v139);
          v144 = v143 + v139;
          if (v113)
          {
            goto LABEL_62;
          }

          *(i + 16) = v144;
        }
      }

      else
      {

        if (v139)
        {
          goto LABEL_59;
        }
      }

      v116 += 24;
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B213D4C8(uint64_t result)
{
  v1 = (*(result + 160) | (*(result + 162) << 16)) & 0xF9BFFF;
  *(result + 160) &= ~0x4000u;
  *(result + 162) = BYTE2(v1);
  return result;
}

void sub_1B213D4F4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = *(v2 + 16);

  v5 = (v2 + 40);
  if (v4)
  {
    while (*(v1 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v8 = sub_1B211E590();
      if ((v9 & 1) == 0)
      {
        goto LABEL_11;
      }

      v10 = (*(v1 + 56) + 216 * v8);
      memcpy(__dst, v10, sizeof(__dst));
      memcpy(__src, v10, sizeof(__src));
      memmove(v22, v10, 0xD8uLL);
      v23[0] = v7;
      v23[1] = v6;
      memcpy(v24, __src, sizeof(v24));

      sub_1B21A63AC(__dst, v19);
      sub_1B21A63AC(v22, v19);
      sub_1B212AC5C(v23, &qword_1EB7A1CB8, &qword_1B225A4C0);
      memcpy(v26, v22, sizeof(v26));
      v25[0] = v7;
      v25[1] = v6;
      memcpy(v27, &v22[48], sizeof(v27));
      v11 = sub_1B213D4F4();
      v13 = v12;
      sub_1B21619D8(&qword_1EB7A0EB0, &unk_1B225BB30);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B22546B0;
      *(v14 + 32) = v11;
      *(v14 + 40) = v13 & 1;
      *(v14 + 48) = 1;
      v15 = *(v3 + 16);

      if (!swift_isUniquelyReferenced_nonNull_native() || (v16 = *(v3 + 24) >> 1, v17 = v3, v16 <= v15))
      {
        sub_1B2162224();
        v17 = v18;
        v16 = *(v18 + 24) >> 1;
      }

      if (v16 <= *(v17 + 16))
      {
        goto LABEL_12;
      }

      swift_arrayInitWithCopy();

      ++*(v17 + 16);
      sub_1B212AC5C(v25, &qword_1EB7A1CB8, &qword_1B225A4C0);

      v5 += 2;
      --v4;
      v3 = v17;
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t sub_1B213D76C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (*(v4[10] + 16))
  {
    goto LABEL_2;
  }

  v5 = a1;
  v9 = *v4;
  v10 = v4[1];
  v11._countAndFlagsBits = *v4;
  v11._object = v10;
  v12 = Database.tableExists(_:)(v11);
  if (v13)
  {
    return v5 & 1;
  }

  if (v12)
  {
    memcpy(__dst, a3, 0xA3uLL);
    if (sub_1B213EA68(__dst) != 1)
    {
      memcpy(v22, __dst, sizeof(v22));
      memcpy(__src, a3, 0xA3uLL);
      sub_1B2127DC0(__src, v21);
      v19 = sub_1B213EA80();
      memcpy(v21, v22, 0xA3uLL);
      sub_1B21356F8(v21);
      v20 = sub_1B213FF40(v9, v10, v19);

      if (v20)
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  if (*(a4 + 16))
  {
LABEL_2:
    v5 = 0;
  }

  else
  {
    v15 = *(a2 + 16);
    for (i = (a2 + 32); ; i += 184)
    {
      v17 = v15-- != 0;
      v5 = v17;
      if (!v17)
      {
        break;
      }

      memcpy(__dst, i, 0xB8uLL);
      if (sub_1B213A580(__dst) - 1 <= 1)
      {
        v18 = sub_1B213AA9C(__dst);
        memcpy(__src, v18, 0xA3uLL);
        memcpy(v22, __src, sizeof(v22));
        if (sub_1B21CE8F0())
        {
          break;
        }
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_1B213D95C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = sub_1B213DA88();
  if (v3)
  {
    return v8 & 1;
  }

  v9 = result;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v10 = result + 40;
  v11 = -*(result + 16);
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {

      v8 = 0;
      return v8 & 1;
    }

    if (++v12 >= *(v9 + 16))
    {
      break;
    }

    v13 = sub_1B2111664();
    sub_1B213E100(v13, v14);
    v15 = sub_1B213E114(v20, v18, v19);
    v10 += 16;
    v16 = sub_1B2111664();
    result = sub_1B213EA54(v16, v17);
    if (v15)
    {

      v8 = 1;
      return v8 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B213DA88()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {

    return v4;
  }

  type metadata accessor for Row();
  *&v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v6 = static Row.fetchAll(_:sql:arguments:adapter:)(v0, 0xD000000000000014, 0x80000001B226E560, &v39, &v43);

  sub_1B212AC5C(&v43, &qword_1EB7A1370, &unk_1B2257580);
  if (v1)
  {
    return v4;
  }

  v7 = sub_1B2116B08();
  if (!v7)
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v48 = v4;
    v22 = *(v4 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = 40;
      while (*(v4 + v24) != 1)
      {
        ++v23;
        v24 += 16;
        if (v22 == v23)
        {
          goto LABEL_43;
        }
      }

      sub_1B214A77C(v23, 0);
      v4 = v48;
    }

LABEL_43:
    *(v2 + v3) = v4;

    return v4;
  }

  v8 = v7;
  v29 = v3;
  v30 = v0;
  v47 = v5;
  sub_1B2147194();
  if (v8 < 0)
  {
    goto LABEL_47;
  }

  v9 = 0;
  v4 = v47;
  v33 = v6;
  v34 = v6 & 0xC000000000000001;
  v31 = v6 & 0xFFFFFFFFFFFFFF8;
  v32 = v8;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v34)
    {
      v11 = sub_1B2111664();
      v12 = MEMORY[0x1B27427E0](v11);
    }

    else
    {
      if (v9 >= *(v31 + 16))
      {
        goto LABEL_46;
      }

      v12 = *(v6 + 8 * v9 + 32);
    }

    if (*(v12 + 72) <= 1)
    {
      goto LABEL_49;
    }

    v6 = *(v12 + 64);
    if (v6)
    {
      if (sqlite3_column_type(*(v12 + 64), 1) == 5)
      {
        goto LABEL_50;
      }

      if (!sqlite3_column_text(v6, 1))
      {
        goto LABEL_48;
      }

      v13 = sub_1B2252400();
    }

    else
    {
      v13 = sub_1B212614C();
    }

    v15 = v13;
    v16 = v14;
    v17 = v13 == 1852399981 && v14 == 0xE400000000000000;
    if (v17 || (sub_1B2135670(1852399981) & 1) != 0)
    {

      v15 = 0;
      v16 = 0;
    }

    else
    {
      if (v15 == 1886217588 && v16 == 0xE400000000000000)
      {

        goto LABEL_35;
      }

      v21 = sub_1B2135670(1886217588);

      if (v21)
      {

LABEL_35:
        v15 = 0;
        v16 = 1;
      }
    }

    v47 = v4;
    v18 = *(v4 + 16);
    if (v18 >= *(v4 + 24) >> 1)
    {
      sub_1B213CC80();
      sub_1B2147194();
      v4 = v47;
    }

    *(v4 + 16) = v18 + 1;
    v19 = v4 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    ++v9;
    v6 = v33;
    if (v10 == v32)
    {

      v3 = v29;
      v2 = v30;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_1B2111608();
  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
LABEL_50:
  v39 = xmmword_1B2259350;
  LOBYTE(v40) = 1;

  RowDecodingContext.init(row:key:)(v26, &v39, &v43);
  sub_1B21A2FC0();
  sub_1B2118078();
  swift_allocError();
  v28 = v27;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  sub_1B21320F0(v6, 1, &v37);
  v35 = v37;
  v36 = v38;
  sub_1B2183238(MEMORY[0x1E69E6158], &v39, &v35, v28);
  sub_1B2113A44(v35, *(&v35 + 1), v36);
  sub_1B218450C(&v43);
  swift_willThrow();
  sub_1B213CE18();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B213DF08()
{
  sub_1B2117A7C();
  v2 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  sub_1B2122C80();
  sub_1B213E2CC(v3, v4);
  v5 = v19;
  v31[0] = v20;
  v29 = v22;
  v30 = v21;
  v28 = v23;
  swift_endAccess();
  sub_1B212AC5C(v31, &qword_1EB7A21B0, &qword_1B225B690);
  sub_1B212AC5C(&v30, &qword_1EB7A21B8, &qword_1B225B698);
  sub_1B212AC5C(&v29, &qword_1EB7A21C0, &qword_1B225B6A0);
  sub_1B212AC5C(&v28, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (!v19)
  {

    v6 = sub_1B2122C80();
    v8 = sub_1B21471E0(v6, v7);
    v10 = sub_1B21472B8(v0, v8, v9);
    if (!v1)
    {
      v5 = v10;
      swift_beginAccess();
      v11 = *(v2 + 8);

      v12 = sub_1B2122C80();
      sub_1B213E100(v12, v13);
      sub_1B2122C80();
      sub_1B213E2CC(v11, v14);
      v27 = v24;
      sub_1B212AC5C(&v27, &qword_1EB7A21D0, &qword_1B225B6B0);
      v31[1] = v5;
      v32 = v25;
      v33 = v26;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v2 + 8);
      sub_1B2148D50();
      *(v2 + 8) = v18;
      v15 = sub_1B2122C80();
      sub_1B213EA54(v15, v16);
      swift_endAccess();
    }
  }

  return v5;
}

uint64_t sub_1B213E100(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B213E114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1B2252220();
  v8 = v7;
  v9 = sub_1B213DF08();
  if (v3)
  {

    return v4 & 1;
  }

  else
  {
    v10 = sub_1B213E598(a1, v9);

    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 56);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    while (v13)
    {
LABEL_11:
      if (sub_1B2252220() == v6 && v18 == v8)
      {

        v4 = 1;
        goto LABEL_18;
      }

      v13 &= v13 - 1;
      v20 = sub_1B22531F0();

      if (v20)
      {

        v4 = 1;
LABEL_18:

        return v4 & 1;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v4 = 0;
        goto LABEL_18;
      }

      v13 = *(v10 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B213E2CC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B213E424(), (v5 & 1) != 0))
  {
    v6 = (*(a1 + 56) + 40 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A33A8, &qword_1B226B9D8);
    sub_1B2112F9C();
    v7 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33B0, &qword_1B226B9E0);
    sub_1B2112F9C();
    v9 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33B8, &qword_1B226B9E8);
    sub_1B2112F9C();
    v10 = sub_1B2252190();
    sub_1B21619D8(&qword_1EB7A33C0, &qword_1B226B9F0);
    sub_1B2112F9C();
    result = sub_1B2252190();
    v11 = result;
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  return result;
}

unint64_t sub_1B213E424()
{
  sub_1B2117FC0();
  sub_1B21224DC();
  if (!v0)
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (v0 == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B2742F10](v1);
    goto LABEL_7;
  }

  MEMORY[0x1B2742F10](2);
  sub_1B211473C();
  sub_1B2252370();
LABEL_7:
  sub_1B2253470();
  v2 = sub_1B2111F44();

  return sub_1B213E4B4(v2, v3, v4);
}

unint64_t sub_1B213E4B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1B22531F0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1B213E7F8()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C70();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1B2148CEC(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1B2253420();
    sub_1B2252370();
    result = sub_1B2253470();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B213EA54(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B213EA68(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1B213EA80()
{
  sub_1B2111ADC();
  memcpy(v1, v2, v3);
  v4 = sub_1B2127E1C(v82);
  if (v4 == 16)
  {
    sub_1B21D0AA4(v82);
    memcpy(v81, (v51 + 16), 0xA3uLL);
    v5 = v81;
    sub_1B2122C80();
    v52 = sub_1B213EA80();
    if (!v0)
    {
      return v52;
    }

    return v5;
  }

  v5 = MEMORY[0x1E69E7CD0];
  switch(v4)
  {
    case 9:
      v17 = sub_1B2127E38(v82);
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 33);
      v23 = *(v17 + 34);
      v72 = *v17;
      v73 = *(v17 + 40);
      v81[0] = *v17;
      v70 = v19;
      v71 = v18;
      v81[1] = v18;
      v81[2] = v19;
      v69 = v20;
      v81[3] = v20;
      v67 = v22;
      v68 = v21;
      LOBYTE(v81[4]) = v21;
      BYTE1(v81[4]) = v22;
      v66 = v23;
      BYTE2(v81[4]) = v23;
      if (qword_1ED85DC80 != -1)
      {
LABEL_40:
        sub_1B2112AD4();
        swift_once();
      }

      v75 = xmmword_1ED85DC88;
      v76 = xmmword_1ED85DC98;
      v77 = word_1ED85DCA8;
      v78 = byte_1ED85DCAA;

      v24 = sub_1B2118388();
      sub_1B2113A20(v24, v25, v26);
      v27 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v81, &v75);

      v28 = sub_1B2118388();
      sub_1B2113A44(v28, v29, v30);
      if (v27)
      {
        v31 = 0;
        v83 = v5;
        v32 = *(v73 + 16);
        v33 = v73 + 32;
        while (v32 != v31)
        {
          if (v31 >= *(v73 + 16))
          {
            goto LABEL_39;
          }

          sub_1B213CBAC();
          memcpy(v34, v35, v36);
          sub_1B213CBAC();
          memcpy(v37, v38, v39);
          sub_1B2127DC0(v81, v74);
          v5 = &v75;
          sub_1B2122C80();
          v40 = sub_1B213EA80();
          if (v0)
          {
            goto LABEL_25;
          }

          ++v31;
          v5 = &v83;
          sub_1B213FE4C(v40);
          sub_1B21356F8(v81);
          v33 += 168;
        }

        return v83;
      }

      v81[0] = v72;
      v81[1] = v71;
      v81[2] = v70;
      v81[3] = v69;
      LOBYTE(v81[4]) = v68;
      BYTE1(v81[4]) = v67;
      BYTE2(v81[4]) = v66;
      if (qword_1ED85D4E8 != -1)
      {
        sub_1B21175B4();
        swift_once();
      }

      v75 = xmmword_1ED85D4F0;
      v76 = xmmword_1ED85D500;
      v77 = word_1ED85D510;
      v78 = byte_1ED85D512;

      v53 = sub_1B2113190();
      sub_1B2113A20(v53, v54, v55);
      static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v81, &v75);

      v56 = sub_1B2113190();
      sub_1B2113A44(v56, v57, v58);
      return MEMORY[0x1E69E7CD0];
    case 13:
      v41 = sub_1B2127E38(v82);
      v42 = *v41;
      v43 = *(*v41 + 16);
      memcpy(__dst, (*v41 + 24), sizeof(__dst));
      memcpy(v80, (v42 + 192), sizeof(v80));
      switch(v43)
      {
        case 1:
        case 3:
          return v5;
        default:
          memcpy(v81, (v42 + 24), 0xA3uLL);
          v5 = v81;
          v44 = sub_1B2122C80();
          v46 = sub_1B213F348(v44, v45, 1);
          if (v0)
          {
            return v5;
          }

          v48 = v47;
          if (!v47)
          {
            goto LABEL_33;
          }

          v49 = v46;
          if (sub_1B213F998())
          {
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1B22546B0;
            *(v50 + 32) = v49;
            *(v50 + 40) = v48;
            return sub_1B213285C(v50);
          }

LABEL_33:
          v60 = sub_1B2122C80();
          v62 = sub_1B213F348(v60, v61, 1);
          v64 = v63;
          if (!v63)
          {
            return MEMORY[0x1E69E7CD0];
          }

          v65 = v62;
          if (sub_1B213F998())
          {
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1B22546B0;
            *(v50 + 32) = v65;
            *(v50 + 40) = v64;
            return sub_1B213285C(v50);
          }

          break;
      }

      return MEMORY[0x1E69E7CD0];
    case 3:
      v6 = 0;
      v7 = *sub_1B2127E38(v82);
      v83 = v5;
      v8 = *(v7 + 16);
      v9 = v7 + 32;
      while (v8 != v6)
      {
        if (v6 >= *(v7 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        sub_1B213CBAC();
        memcpy(v10, v11, v12);
        sub_1B213CBAC();
        memcpy(v13, v14, v15);
        sub_1B2127DC0(v81, v74);
        v5 = &v75;
        sub_1B2122C80();
        v16 = sub_1B213EA80();
        if (v0)
        {
LABEL_25:

          sub_1B21356F8(v81);
          return v5;
        }

        ++v6;
        v5 = &v83;
        sub_1B213FE4C(v16);
        sub_1B21356F8(v81);
        v9 += 168;
      }

      return v83;
  }

  return v5;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v12 || (v13 = sub_1B22531F0(), result = 0, (v13 & 1) != 0))
  {
    v23 = v2;
    v24 = v3;
    v25 = v4;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    sub_1B2113A20(v2, v3, v4);
    v15 = sub_1B2113190();
    sub_1B2113A20(v15, v16, v17);
    v18 = static DatabaseValue.== infix(_:_:)(&v23, &v20);
    sub_1B2113A44(v20, v21, v22);
    sub_1B2113A44(v23, v24, v25);
    if ((v5 ^ v10))
    {
      v19 = 0;
    }

    else
    {
      v19 = v6 ^ v11 ^ 1;
    }

    if (v18)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL static DatabaseValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (*(a2 + 16))
      {
        if (v7 != 1)
        {
          goto LABEL_33;
        }

        v53 = sub_1B2114F30();
        sub_1B2113A44(v53, v54, 1);
        v55 = sub_1B211187C();
        sub_1B2113A44(v55, v56, 1);
        return v2 == v5;
      }

      v69 = sub_1B2114F30();
      sub_1B2113A44(v69, v70, 1);
      v71 = sub_1B211187C();
      sub_1B2113A44(v71, v72, 0);
      v73 = trunc(v2);
      if (v2 > -9.22337204e18 && v2 < 9.22337204e18 && v73 == v2)
      {
        return *&v5 == v2;
      }

      return 0;
    case 2:
      if (v7 != 2)
      {

        goto LABEL_33;
      }

      v22 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v24 = sub_1B22531F0();
        v25 = sub_1B211187C();
        sub_1B2113A20(v25, v26, 2);
        v27 = sub_1B2114F30();
        sub_1B2113A20(v27, v28, 2);
        v29 = sub_1B2114F30();
        sub_1B2113A44(v29, v30, 2);
        v31 = sub_1B211187C();
        v33 = 2;
        goto LABEL_27;
      }

      sub_1B2113A20(*&v22, v3, 2);
      v76 = sub_1B2114F30();
      sub_1B2113A20(v76, v77, 2);
      v78 = sub_1B2114F30();
      sub_1B2113A44(v78, v79, 2);
      v19 = sub_1B2114F30();
      v21 = 2;
LABEL_49:
      sub_1B2113A44(v19, v20, v21);
      return 1;
    case 3:
      if (v7 != 3)
      {
        v57 = sub_1B2114F30();
        sub_1B2126638(v57, v58);
        goto LABEL_33;
      }

      v34 = sub_1B2117308();
      sub_1B2113A20(v34, v35, v36);
      v37 = sub_1B2114F30();
      sub_1B2113A20(v37, v38, 3);
      v39 = sub_1B2117308();
      sub_1B2113A20(v39, v40, v41);
      v42 = sub_1B2114F30();
      sub_1B2113A20(v42, v43, 3);
      v44 = sub_1B2114F30();
      v24 = MEMORY[0x1B27418B0](v44);
      v45 = sub_1B2117308();
      sub_1B2113A44(v45, v46, v47);
      v48 = sub_1B2114F30();
      sub_1B2113A44(v48, v49, 3);
      v50 = sub_1B2114F30();
      sub_1B2113A44(v50, v51, 3);
      v31 = sub_1B2117308();
LABEL_27:
      sub_1B2113A44(v31, v32, v33);
      return v24 & 1;
    case 4:
      if (v7 != 4 || (v6 | *&v5) != 0)
      {
        goto LABEL_33;
      }

      v17 = sub_1B2114F30();
      sub_1B2113A44(v17, v18, 4);
      v19 = 0;
      v20 = 0;
      v21 = 4;
      goto LABEL_49;
    default:
      if (*(a2 + 16))
      {
        if (v7 != 1)
        {
LABEL_33:
          v59 = sub_1B211187C();
          sub_1B2113A20(v59, v60, v7);
          v61 = sub_1B2114F30();
          sub_1B2113A44(v61, v62, v4);
          v63 = sub_1B211187C();
          sub_1B2113A44(v63, v64, v7);
          return 0;
        }

        v8 = sub_1B2114F30();
        sub_1B2113A44(v8, v9, 0);
        v10 = sub_1B211187C();
        sub_1B2113A44(v10, v11, 1);
        v12 = trunc(v5);
        if (v5 <= -9.22337204e18 || v5 >= 9.22337204e18 || v12 != v5)
        {
          return 0;
        }

        return *&v2 == v5;
      }

      else
      {
        v65 = sub_1B2114F30();
        sub_1B2113A44(v65, v66, 0);
        v67 = sub_1B211187C();
        sub_1B2113A44(v67, v68, 0);
        return *&v2 == *&v5;
      }
  }
}

void *sub_1B213F348(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  v10 = sub_1B2127E1C(v60);
  v11 = 0;
  switch(v10)
  {
    case 9:
      v12 = sub_1B2127E38(v60);
      v11 = 0;
      if ((a3 & 1) == 0 || !*(v12 + 34))
      {
        return v11;
      }

      v54 = a1;
      v55 = a2;
      v13 = 0;
      v14 = *(v12 + 40);
      v15 = *(v14 + 16);
      v16 = v14 + 32;
      v17 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v11 = (v16 + 168 * v13);
LABEL_6:
        if (v15 != v13)
        {
          if (v13 < *(v14 + 16))
          {
            sub_1B2117AC4();
            memcpy(v18, v19, v20);
            sub_1B2117AC4();
            memcpy(v21, v22, v23);
            sub_1B2127DC0(v59, v57);
            if ((sub_1B213F998() & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v61 = v17;
              v53 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1B213CA68();
                v17 = v61;
              }

              v26 = v17[2];
              v25 = v17[3];
              if (v26 >= v25 >> 1)
              {
                sub_1B211156C(v25);
                sub_1B213CA68();
                v17 = v61;
              }

              ++v13;
              v17[2] = v26 + 1;
              memcpy(&v17[21 * v26 + 4], v59, 0xA3uLL);
              v16 = v53;
              continue;
            }

            sub_1B21356F8(v59);
            v11 += 21;
            ++v13;
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_63;
        }

        break;
      }

      if (v17[2] == 1)
      {
        memcpy(v59, v17 + 4, 0xA3uLL);
        sub_1B2127DC0(v59, v58);

        memcpy(v58, v59, 0xA3uLL);
        v42 = v54;
        v43 = v55;
        v41 = 1;
        goto LABEL_56;
      }

      return 0;
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 18:
      return v11;
    case 12:
      sub_1B21D0AA4(v60);
      v32 = *(v31 + 16);
      v11 = *(v31 + 24);
      v33 = *(v31 + 32);
      memcpy(v56, (v31 + 40), sizeof(v56));
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      if (v32 == 45 && v11 == 0xE100000000000000)
      {
        if (v33)
        {
          return 0;
        }
      }

      else if (v33 & 1 | ((sub_1B22531F0() & 1) == 0))
      {
        return 0;
      }

      sub_1B21234E8();
LABEL_22:
      sub_1B213F348(v29, v30, v28);
      if (!v3)
      {
        sub_1B21D09AC();
      }

      return v11;
    case 16:
      sub_1B21D0AA4(v60);
      memcpy(v59, (v27 + 16), 0xA3uLL);
      v28 = a3 & 1;
      v29 = a1;
      v30 = a2;
      goto LABEL_22;
    case 17:
      v35 = sub_1B2127E38(v60);
      v11 = 0;
      if ((*(v35 + 16) & 1) != 0 || (*(v35 + 17) & 1) != 0 || (a3 & 1) == 0)
      {
        return v11;
      }

      v54 = a1;
      v55 = a2;
      v36 = *(v35 + 24);
      v37 = sub_1B2252230();
      v11 = v38;
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v39 = swift_allocObject();
      *(v39 + 32) = 5784904;
      *(v39 + 40) = 0xE300000000000000;
      *(v39 + 48) = 0x45544F5551;
      *(v39 + 56) = 0xE500000000000000;
      *(v39 + 16) = xmmword_1B225B140;
      v59[0] = v37;
      v59[1] = v11;
      MEMORY[0x1EEE9AC00](v39);
      v52[2] = v59;
      v40 = sub_1B2158BF0(sub_1B2158ED4, v52, v39);
      swift_setDeallocating();
      sub_1B21B7140();
      if (v40 && v36[2] == 1)
      {

        if (!v36[2])
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        memcpy(v59, v36 + 4, 0xA3uLL);
        memcpy(v58, v36 + 4, 0xA3uLL);
        sub_1B2127DC0(v59, v57);
        v41 = a3 & 1;
        v42 = v54;
        v43 = v55;
        goto LABEL_56;
      }

      if (v37 == 0x4C4C554E4649 && v11 == 0xE600000000000000)
      {
      }

      else
      {
        v45 = sub_1B22531F0();

        if ((v45 & 1) == 0)
        {
          return 0;
        }
      }

      v11 = v36;
      v48 = v36[2];
      v50 = v54;
      v49 = v55;
      if (v48 != 2)
      {
        return 0;
      }

      memcpy(v59, v11 + 25, 0xA3uLL);
      if ((sub_1B213F998() & 1) == 0)
      {
        return 0;
      }

      if (!v11[2])
      {
LABEL_64:
        __break(1u);
        JUMPOUT(0x1B213F96CLL);
      }

      memcpy(v59, v11 + 4, 0xA3uLL);
      memcpy(v58, v11 + 4, 0xA3uLL);
      sub_1B2127DC0(v59, v57);
      v41 = a3 & 1;
      v42 = v50;
      v43 = v49;
LABEL_56:
      sub_1B213F348(v42, v43, v41);
      if (v3)
      {
        memcpy(v57, v58, 0xA3uLL);
        sub_1B21356F8(v57);
      }

      else
      {
        sub_1B21D09AC();
        memcpy(v57, v58, 0xA3uLL);
        sub_1B21356F8(v57);
      }

      return v11;
    case 19:
      sub_1B2127E38(v60);
      type metadata accessor for TableAlias();
      if (!static TableAlias.== infix(_:_:)())
      {
        return 0;
      }

      sub_1B2138F90();
      Database.primaryKey(_:)();

      if (!v3)
      {
        v58[0] = v59[0];
        v58[1] = v59[1];
        LOBYTE(v58[2]) = v59[2];
        sub_1B21BE504();
        sub_1B21D09AC();
        v46 = sub_1B2112F9C();
        sub_1B21424A0(v46, v47, v59[2]);
      }

      return v11;
    default:
      if (v10 != 1)
      {
        return v11;
      }

      v11 = *sub_1B2127E38(v60);
      type metadata accessor for TableAlias();

      if (static TableAlias.== infix(_:_:)())
      {
        return v11;
      }

      return 0;
  }
}

uint64_t sub_1B213F998()
{
  memcpy(__dst, v0, 0xA3uLL);
  v2 = 0;
  v3 = 40;
  v4 = 200;
  v5 = 32;
  switch(sub_1B2127E1C(__dst))
  {
    case 2u:
      sub_1B2127E38(__dst);
      goto LABEL_45;
    case 3u:
      v39 = sub_1B2127E38(__dst);
      goto LABEL_39;
    case 6u:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v17, v18, v19);
      sub_1B21D09A0();
      memcpy(v20, v21, v22);
      sub_1B2142348();
      memcpy(v23, v24, v25);
      if (sub_1B213F998() & 1) != 0 && (sub_1B213F998())
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    case 7u:
      goto LABEL_35;
    case 9u:
      v39 = sub_1B2127E38(__dst) + 40;
LABEL_39:
      v41 = *v39;
      v42 = *(*v39 + 16);

      v43 = -1;
      v44 = 32;
      while (2)
      {
        if (v43 - v42 != -1)
        {
          if (++v43 < *(v41 + 16))
          {
            v45 = v44 + 168;
            memcpy(v58, (v41 + v44), 0xA3uLL);
            v46 = sub_1B213F998();
            v44 = v45;
            if ((v46 & 1) == 0)
            {

              goto LABEL_53;
            }

            continue;
          }

          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          JUMPOUT(0x1B213FE08);
        }

        break;
      }

LABEL_45:
      v2 = 1;
      return v2 & 1;
    case 0xBu:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v26, v27, v28);
      sub_1B2114090();
      memcpy(v29, v30, v31);
      sub_1B2114090();
      memcpy(v32, v33, v34);
      if (sub_1B214CB20(v54))
      {
        sub_1B214CB10(v54);
        goto LABEL_53;
      }

      v35 = *sub_1B214CB10(v54);
      memcpy(v55, v56, 0xA2uLL);
      sub_1B214CB10(v55);

      if (sub_1B213F998())
      {
        sub_1B21D09B8();
        do
        {
          v2 = v1 == -33;
          if (v1 == -33)
          {
            break;
          }

          if (++v1 >= *(v35 + 16))
          {
            goto LABEL_59;
          }

          v37 = v36 + 168;
          memcpy(v58, v36, 0xA3uLL);
          v38 = sub_1B213F998();
          v36 = v37;
        }

        while ((v38 & 1) != 0);
      }

      else
      {
        v2 = 0;
      }

      sub_1B214D4C8(v56);
      return v2 & 1;
    case 0xCu:
      goto LABEL_3;
    case 0xDu:
      v4 = 192;
      v5 = 24;
LABEL_35:
      v40 = *sub_1B2127E38(__dst);
      memcpy(v57, (v40 + v5), sizeof(v57));
      memcpy(v58, (v40 + v4), 0xA3uLL);
      sub_1B2127DC0(v58, v54);
      if (sub_1B213F998())
      {
        memcpy(v54, v58, 0xA3uLL);
        v2 = sub_1B213F998();
        sub_1B21356F8(v58);
        return v2 & 1;
      }

      sub_1B21356F8(v58);
      goto LABEL_53;
    case 0xFu:
    case 0x10u:
    case 0x12u:
      v3 = 16;
LABEL_3:
      v6 = sub_1B2127E38(__dst);
      memcpy(v59, (*v6 + v3), sizeof(v59));
LABEL_4:
      v2 = sub_1B213F998();
      return v2 & 1;
    case 0x11u:
      v7 = sub_1B2127E38(__dst);
      v2 = 0;
      if (*(v7 + 16) & 1) != 0 || (*(v7 + 17))
      {
        return v2 & 1;
      }

      v8 = *(v7 + 24);
      v9 = sub_1B2252230();
      v11 = v9;
      v12 = v10;
      v13 = 0xE300000000000000;
      v14 = v9 == 5783885 && v10 == 0xE300000000000000;
      if (v14 || ((v1 = 5130573, sub_1B2112864(), v9 = sub_1B22531F0(), v11 == 5130573) ? (v15 = v12 == 0xE300000000000000) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v9 & 1) != 0 || (v16 & 1) != 0 || (sub_1B2112864(), v9 = sub_1B22531F0(), (v9))) && *(v8 + 16) >= 2uLL)
      {
      }

      else
      {
        v13 = &v53;
        v58[0] = v11;
        v58[1] = v12;
        MEMORY[0x1EEE9AC00](v9);
        v52[2] = v58;
        v47 = sub_1B2158BF0(sub_1B2158EB4, v52, &unk_1F2968B50);

        if (!v47)
        {
LABEL_53:
          v2 = 0;
          return v2 & 1;
        }
      }

      sub_1B21D09B8();
      do
      {
        v2 = (v13 + v1) == -1;
        if ((v13 + v1) == -1)
        {
          break;
        }

        if (++v1 >= *(v8 + 16))
        {
          goto LABEL_58;
        }

        v49 = v48 + 168;
        memcpy(v58, v48, 0xA3uLL);
        v50 = sub_1B213F998();
        v48 = v49;
      }

      while ((v50 & 1) != 0);
      return v2 & 1;
    default:
      return v2 & 1;
  }
}

const char *sub_1B213FF28(void *a1)
{

  return RowDecodingContext.init(row:key:)(a1, (v1 - 200), v1 - 176);
}

uint64_t sub_1B213FF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  v8 = sub_1B213FFD4(a3);
  sub_1B21401E4(v8, a1, a2, v9, v10, v11, v12);
  v14 = v13;

  if (!v4)
  {
    if (v14)
    {

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

void *sub_1B213FFD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1B2140064(*(a1 + 16), 0);
  sub_1B21400DC();
  v4 = v3;
  sub_1B21401E0(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1B2140078()
{
  sub_1B212CDB4();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v0;
  v6[3] = 2 * ((v7 - 32) / 16);
  return v6;
}

void sub_1B21400DC()
{
  sub_1B2111F14();
  sub_1B2111FE0();
  if (!v4)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2113B5C(v8);
    sub_1B2111588();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    sub_1B2115BFC();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = (*(v0 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v3)))));
      v15 = v14[1];
      v3 &= v3 - 1;
      *v7 = *v14;
      v7[1] = v15;
      if (v12 == v6)
      {

        v8 = v13;
        goto LABEL_17;
      }

      v7 += 2;

      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1B21401E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2;
  v10 = sub_1B214056C(a1, a2, a3, a4, a5, a6, a7);
  if (!*(sub_1B2140648(v10) + 16) || (sub_1B213285C(&unk_1F2968D90), v11 = sub_1B211F670(), sub_1B2140704(v11, v12, v13, v14, v15, v16, v17, v18, v70, v71, v72, v74, v75, v78, v81, v82, v84, v86, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8), sub_1B212601C(), (v8 & 1) != 0) || (sub_1B21229C4(), Database.primaryKey(_:)(), v7))
  {
LABEL_37:
  }

  else
  {
    v19 = v83;
    if (v87)
    {
      if (v87 == 1)
      {
        v20 = v83;
      }

      else
      {
        v20 = &unk_1F2968DF0;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      sub_1B2113B74();
      v20 = swift_allocObject();
      v20[1] = xmmword_1B22546B0;
      *(v20 + 4) = v83;
      *(v20 + 5) = v85;
    }

    v21 = *(v20 + 2);
    sub_1B212D6C4();
    if (v21)
    {
      v22 = sub_1B2113978();
      v25 = sub_1B21414CC(v22, v23, v24);
      sub_1B2117238(v25, v26, v27, v28, v29, v30, v31);
      v32 = v83;
      do
      {
        sub_1B2252220();
        sub_1B212D574();
        if (v34)
        {
          v36 = sub_1B2121FC4(v33);
          sub_1B2116B10(v36, swift_getObjectType, 1, v37, v38, v39, v40);
          v32 = v83;
        }

        sub_1B2135314();
      }

      while (!v35);
    }

    else
    {
      v41 = sub_1B2113978();
      sub_1B21414CC(v41, v42, v43);

      v32 = MEMORY[0x1E69E7CC0];
    }

    sub_1B2140648(v32);
    v44 = sub_1B211F670();
    sub_1B21414EC(v44, v45);
    sub_1B212601C();
    if (swift_getObjectType)
    {

      if (!v76)
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        sub_1B2113B74();
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1B22546B0;
        *(v69 + 32) = v90;
        *(v69 + 40) = v79;
      }
    }

    else
    {
      sub_1B21424A0(v90, v79, v76);
      v46 = sub_1B21229C4();
      Database.indexes(on:)(v46, v47);
      sub_1B213CD20();
      v50 = MEMORY[0x1E69E7CC0];
      v73 = v51;
      v80 = v48;
      v77 = v49;
      while (1)
      {
        if (v32 == v48)
        {

          goto LABEL_37;
        }

        if (v32 >= *(v9 + 16))
        {
          break;
        }

        v52 = v49 + 32 * v32++;
        if (*(v52 + 24))
        {
          if (*(*(v52 + 16) + 16))
          {

            sub_1B214CB88(v53, v54, v55, v56, v57, v58, v59);
            v60 = v50;
            do
            {
              sub_1B2252220();
              sub_1B213CB78();
              if (v34)
              {
                v62 = sub_1B2121FC4(v61);
                sub_1B2116B10(v62, v19, 1, v63, v64, v65, v66);
                v60 = v50;
              }

              sub_1B214CBF8();
            }

            while (!v35);
            v9 = v73;
            v50 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v60 = v50;
          }

          sub_1B2140648(v60);
          v67 = sub_1B2112FD0();
          v19 = sub_1B21414EC(v67, v68);

          if (v19)
          {

            return;
          }

          v49 = v77;
          v48 = v80;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B214056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v8, 0, a4, a5, a6, a7);
  if (v8)
  {
    v9 = a1 + 40;
    do
    {
      v14 = sub_1B2252220();
      v16 = v15;
      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B2116B10(v17 > 1, v18 + 1, 1, v10, v11, v12, v13);
      }

      *(v21 + 16) = v18 + 1;
      v19 = v21 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return v21;
}

void sub_1B2140704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1B212D010();
  if (v31 != v32 && (sub_1B212257C(), v54))
  {
    v34 = 0;
    v35 = v33 + 56;
    sub_1B211837C();
    sub_1B21161AC();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;
    v56 = v36;
    if ((v38 & v37) != 0)
    {
      while (2)
      {
        v42 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
LABEL_11:
        v46 = (*(v36 + 48) + 16 * (v42 | (v34 << 6)));
        v48 = *v46;
        v47 = v46[1];
        sub_1B2253420();

        sub_1B2252370();
        sub_1B2253470();
        sub_1B2113B98();
        v51 = ~v50;
        do
        {
          v52 = v49 & v51;
          if (((*(v30 + 56 + (((v49 & v51) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v51)) & 1) == 0)
          {

            goto LABEL_22;
          }

          v53 = (*(v30 + 48) + 16 * v52);
          v54 = *v53 == v48 && v53[1] == v47;
          if (v54)
          {
            break;
          }

          v55 = sub_1B22531F0();
          v49 = v52 + 1;
        }

        while ((v55 & 1) == 0);

        v36 = v56;
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v43 = v34;
    while (1)
    {
      v34 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v34 >= v41)
      {
        goto LABEL_22;
      }

      ++v43;
      if (*(v35 + 8 * v34))
      {
        sub_1B211667C();
        v39 = v45 & v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1B212CE34();
  }
}

uint64_t Database.primaryKey(_:)()
{
  sub_1B2117A7C();
  v4 = v3;
  result = sub_1B213DA88();
  if (!v0)
  {
    v6 = result;
    v18 = v4;
    v22 = v2;
    v7 = 0;
    v8 = *(result + 16);
    for (i = result + 40; ; i += 16)
    {
      if (v8 == v7)
      {

        sub_1B21AC298();
        sub_1B2118078();
        swift_allocError();
        sub_1B21AB9A4(v22, v1, v17);
        return swift_willThrow();
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v10 = sub_1B2111664();
      sub_1B213E100(v10, v11);

      v12 = sub_1B2111664();
      sub_1B21409CC(v12, v13, v22, v1, v14);
      v15 = sub_1B2111664();
      sub_1B213EA54(v15, v16);

      if (v21 != 255)
      {

        *v18 = v19;
        *(v18 + 8) = v20;
        *(v18 + 16) = v21;
        return result;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21409CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v117 = a5;
  type metadata accessor for SchedulingWatchdog();
  if ((sub_1B2117B40(v6) & 1) == 0)
  {
LABEL_46:
    sub_1B2252EC0();
    __break(1u);

    __break(1u);
    return result;
  }

  v12 = v6 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v13 = *(v12 + 8);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v13, &v80);
  swift_endAccess();
  v14 = v81;
  v106[0] = v81;
  if (*(v81 + 16))
  {
    swift_bridgeObjectRetain_n();
    v15 = sub_1B211E590();
    if (v16)
    {
      v17 = v15;

      sub_1B213EA54(a1, a2);

      sub_1B213EA54(a1, a2);

      sub_1B213EA54(a1, a2);
      v18 = *(v14 + 56) + 24 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v101 = v80;
      sub_1B21414B8(v19, v20, v21);
      sub_1B212AC5C(&v101, &qword_1EB7A21D0, &qword_1B225B6B0);
      sub_1B212AC5C(v106, &qword_1EB7A21B0, &qword_1B225B690);
      v100 = v82;
      sub_1B212AC5C(&v100, &qword_1EB7A21B8, &qword_1B225B698);
      v99 = v83;
      sub_1B212AC5C(&v99, &qword_1EB7A21C0, &qword_1B225B6A0);
      v98 = v84;
      result = sub_1B212AC5C(&v98, &qword_1EB7A21C8, &qword_1B225B6A8);
      if (v21 == 255)
      {
        v37 = v117;
        *v117 = 0;
        v37[1] = 0;
        *(v37 + 16) = -1;
      }

      else
      {
        v23 = v117;
        *v117 = v19;
        v23[1] = v20;
        *(v23 + 16) = v21;
      }

      return result;
    }

    v105 = v80;
    sub_1B212AC5C(&v105, &qword_1EB7A21D0, &qword_1B225B6B0);
    sub_1B212AC5C(v106, &qword_1EB7A21B0, &qword_1B225B690);
    v104 = v82;
    sub_1B212AC5C(&v104, &qword_1EB7A21B8, &qword_1B225B698);
    v103 = v83;
    sub_1B212AC5C(&v103, &qword_1EB7A21C0, &qword_1B225B6A0);
    v102 = v84;
    v24 = &v102;
  }

  else
  {
    v97 = v80;
    swift_bridgeObjectRetain_n();
    sub_1B212AC5C(&v97, &qword_1EB7A21D0, &qword_1B225B6B0);
    sub_1B212AC5C(v106, &qword_1EB7A21B0, &qword_1B225B690);
    v96 = v82;
    sub_1B212AC5C(&v96, &qword_1EB7A21B8, &qword_1B225B698);
    v95 = v83;
    sub_1B212AC5C(&v95, &qword_1EB7A21C0, &qword_1B225B6A0);
    v94 = v84;
    v24 = &v94;
  }

  sub_1B212AC5C(v24, &qword_1EB7A21C8, &qword_1B225B6A8);
  v25 = sub_1B213E114(1, a3, a4);
  if (v7)
  {

    sub_1B213EA54(a1, a2);

    sub_1B213EA54(a1, a2);

    return sub_1B213EA54(a1, a2);
  }

  else
  {
    v26 = v25;

    sub_1B213EA54(a1, a2);
    if (v26)
    {
      v27 = sub_1B2143644(a1, a2, a3, a4);

      if (v27)
      {
        v74 = a4;
        v71 = v12;
        sub_1B213EA54(a1, a2);
        v28 = 0;
        v29 = *(v27 + 16);
        v30 = MEMORY[0x1E69E7CC0];
        v73 = a3;
        while (1)
        {
          for (i = (88 * v28 + 32); ; i += 88)
          {
            if (v29 == v28)
            {
              __dst[0] = v30;

              sub_1B2149BD0(__dst, sub_1B21C035C, sub_1B2149F90);

              v42 = __dst[0];
              v43 = *(__dst[0] + 16);
              if (v43)
              {
                if (v43 == 1)
                {
                  memcpy(__dst, (__dst[0] + 32), sizeof(__dst));
                  sub_1B21499AC(__dst, v77);

                  v45 = __dst[3];
                  v44 = __dst[4];
                  if (sub_1B2252230() == 0x52454745544E49 && v46 == 0xE700000000000000)
                  {

                    v49 = v71;
                  }

                  else
                  {
                    v48 = sub_1B22531F0();

                    v49 = v71;
                    if ((v48 & 1) == 0)
                    {
                      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
                      v50 = swift_allocObject();
                      *(v50 + 16) = xmmword_1B22546B0;
                      *(v50 + 32) = v45;
                      *(v50 + 40) = v44;

                      sub_1B2149A98(__dst);
                      v44 = sub_1B214AD9C(a1, a2, v73, v74);
                      v65 = 1;
                      v45 = v50;
                      goto LABEL_43;
                    }
                  }

                  sub_1B21414CC(v45, v44, 0);
                  sub_1B2149A98(__dst);
                  v65 = 0;
LABEL_44:
                  swift_beginAccess();
                  v66 = *(v49 + 8);
                  sub_1B21414CC(v45, v44, v65);
                  sub_1B213E2CC(v66, v88);
                  v68 = v88[0];
                  v67 = v88[1];
                  v72 = v90;
                  sub_1B21414CC(v45, v44, v65);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v77[0] = v67;
                  sub_1B214A070(v45, v44, v65, v73, v74, isUniquelyReferenced_nonNull_native);

                  v106[1] = v68;
                  v106[2] = v77[0];
                  v107 = v89;
                  v108 = v72;
                  swift_isUniquelyReferenced_nonNull_native();
                  v77[0] = *(v49 + 8);
                  sub_1B2148D50();
                  *(v49 + 8) = v77[0];
                  sub_1B213EA54(a1, a2);
                  swift_endAccess();
                  result = sub_1B21424A0(v45, v44, v65);
                  v70 = v117;
                  *v117 = v45;
                  v70[1] = v44;
                  *(v70 + 16) = v65;
                  return result;
                }

                __dst[0] = MEMORY[0x1E69E7CC0];
                sub_1B2116B10(0, v43, 0, v38, v39, v40, v41);
                v54 = __dst[0];
                v55 = (v42 + 64);
                do
                {
                  v57 = *(v55 - 1);
                  v56 = *v55;
                  __dst[0] = v54;
                  v59 = *(v54 + 16);
                  v58 = *(v54 + 24);

                  if (v59 >= v58 >> 1)
                  {
                    sub_1B2116B10(v58 > 1, v59 + 1, 1, v60, v61, v62, v63);
                    v54 = __dst[0];
                  }

                  *(v54 + 16) = v59 + 1;
                  v64 = v54 + 16 * v59;
                  *(v64 + 32) = v57;
                  *(v64 + 40) = v56;
                  v55 += 11;
                  --v43;
                }

                while (v43);
                v45 = v54;

                v44 = sub_1B214AD9C(a1, a2, v73, v74);
                v65 = 1;
              }

              else
              {

                v45 = 0;
                v44 = 0;
                v65 = 2;
              }

LABEL_43:
              v49 = v71;
              goto LABEL_44;
            }

            if (v28 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            memcpy(__dst, &i[v27], sizeof(__dst));
            if (__dst[10] > 0)
            {
              break;
            }

            ++v28;
          }

          sub_1B21499AC(__dst, v77);
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v79 = v30;
          if ((v31 & 1) == 0)
          {
            sub_1B2149BB0();
            v30 = v79;
          }

          v32 = *(v30 + 16);
          if (v32 >= *(v30 + 24) >> 1)
          {
            sub_1B2149BB0();
            v30 = v79;
          }

          ++v28;
          *(v30 + 16) = v32 + 1;
          memcpy((v30 + 88 * v32 + 32), __dst, 0x58uLL);
        }
      }

      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      sub_1B213E2CC(*(v12 + 8), v91);
      v52 = v91[0];
      v51 = v91[1];
      v76 = v93;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v51;
      sub_1B214A070(0, 0, 255, a3, a4, v53);

      v109 = v52;
      v110 = v51;
      v111 = v92;
      v112 = v76;
      swift_isUniquelyReferenced_nonNull_native();
      v77[0] = *(v12 + 8);
    }

    else
    {

      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      sub_1B213E2CC(*(v12 + 8), v85);
      v34 = v85[0];
      v33 = v85[1];
      v75 = v87;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v33;
      sub_1B214A070(0, 0, 255, a3, a4, v35);

      v113 = v34;
      v114 = v33;
      v115 = v86;
      v116 = v75;
      swift_isUniquelyReferenced_nonNull_native();
      v77[0] = *(v12 + 8);
    }

    sub_1B2148D50();
    *(v12 + 8) = v77[0];
    sub_1B213EA54(a1, a2);
    result = swift_endAccess();
    v36 = v117;
    *v117 = 0;
    v36[1] = 0;
    *(v36 + 16) = -1;
  }

  return result;
}

uint64_t sub_1B21414B8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B21414CC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B21414CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B21414EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1B2253420();

        sub_1B2252370();
        v17 = sub_1B2253470();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1B22531F0();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21416B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 163))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t Statement.arguments.setter(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = v6;
  Statement.setArguments(_:)(*(&a2 - 1));
  if (v4)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1B214177C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B216F2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B214179C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[6];
  v11._countAndFlagsBits = *v3;
  v11._object = v8;
  result = Database.tableExists(_:)(v11);
  if (!v13)
  {
    v20 = a3;
    if ((result & 1) != 0 && v10)
    {
      v10(__src, a1);
      memcpy(__dst, __src, 0xA3uLL);
      memcpy(v17, __src, 0xA3uLL);
      v14 = sub_1B21418EC(a1, v9);
      if (v14)
      {
        v17[0] = v6;
        sub_1B214A3A8(v7, v8, v14, v20);
        sub_1B21356F8(__dst);
      }

      sub_1B21356F8(__dst);
      v15 = v20;
      v16 = v6;
    }

    else
    {
      v15 = v20;
      v16 = v6;
    }

    *v15 = v16;
  }

  return result;
}

uint64_t sub_1B21418EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v130[21] = *MEMORY[0x1E69E9840];
  sub_1B2111ADC();
  memcpy(v6, v7, v8);
  v9 = sub_1B2127E1C(v130);
  v10 = 0;
  v123 = a2;
  switch(v9)
  {
    case 9:
      v122 = a1;
      v11 = sub_1B2127E38(v130);
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v17 = *(v11 + 33);
      v18 = *(v11 + 34);
      v19 = *(v11 + 40);
      v129[0] = *v11;
      v120 = v14;
      v121 = v12;
      v129[1] = v12;
      v129[2] = v14;
      v119 = v15;
      v129[3] = v15;
      v117 = v17;
      v118 = v16;
      LOBYTE(v129[4]) = v16;
      BYTE1(v129[4]) = v17;
      v116 = v18;
      BYTE2(v129[4]) = v18;
      if (qword_1ED85DC80 == -1)
      {
        goto LABEL_3;
      }

LABEL_90:
      sub_1B2112AD4();
      swift_once();
LABEL_3:
      sub_1B2121FF0(&xmmword_1ED85DC88);
      v20 = sub_1B2118388();
      sub_1B2113A20(v20, v21, v22);
      v23 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v129, v127);

      v24 = sub_1B2118388();
      sub_1B2113A44(v24, v25, v26);
      if (v23)
      {
        v10 = 0;
        v27 = 0;
        v28 = *(v19 + 16);
        v29 = v19 + 32;
        v13 = v122;
        v121 = v19 + 32;
        while (1)
        {
          for (i = v29 + 168 * v27; ; i += 168)
          {
            if (v28 == v27)
            {
              return v10;
            }

            if (v27 >= *(v19 + 16))
            {
              __break(1u);
              goto LABEL_89;
            }

            sub_1B2117AC4();
            memcpy(v31, v32, v33);
            sub_1B2117AC4();
            memcpy(v34, v35, v36);
            sub_1B2127DC0(v129, &v124);
            v37 = sub_1B21418EC(v13, v123);
            if (v3)
            {
              goto LABEL_49;
            }

            v38 = v37;
            if (v37)
            {
              break;
            }

            sub_1B21356F8(v129);
            ++v27;
          }

          ++v27;
          if (v10)
          {
            v39 = *(v10 + 32);
            v40 = v39 & 0x3F;
            v120 = ((1 << v39) + 63) >> 6;
            v41 = 8 * v120;

            if (v40 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              v119 = v115;
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v43 = &v115[-((v41 + 15) & 0x3FFFFFFFFFFFFFF0)];
              v44 = v120;
              sub_1B2148CEC(0, v120, v43);
              sub_1B21CAE7C(v43, v44, v10, v38);
              v46 = v45;
            }

            else
            {
              v47 = swift_slowAlloc();

              v46 = sub_1B21CABF4(v47, v120, v10, v38);

              MEMORY[0x1B2743C50](v47, -1, -1);
            }

            v10 = v46;
            sub_1B21356F8(v129);

            v29 = v121;
            v13 = v122;
            if (!v46[2])
            {
              return v10;
            }
          }

          else
          {
            sub_1B21356F8(v129);
            v10 = v38;
            v29 = v121;
          }
        }
      }

      v129[0] = v13;
      v129[1] = v121;
      v129[2] = v120;
      v129[3] = v119;
      LOBYTE(v129[4]) = v118;
      BYTE1(v129[4]) = v117;
      BYTE2(v129[4]) = v116;
      if (qword_1ED85D4E8 != -1)
      {
        sub_1B21175B4();
        swift_once();
      }

      sub_1B2121FF0(&xmmword_1ED85D4F0);
      v73 = sub_1B2118388();
      sub_1B2113A20(v73, v74, v75);
      v76 = static SQLExpression.AssociativeBinaryOperator.== infix(_:_:)(v129, v127);

      v77 = sub_1B2118388();
      sub_1B2113A44(v77, v78, v79);
      if (v76)
      {
        v13 = 0;
        v126[0] = MEMORY[0x1E69E7CD0];
        v80 = *(v19 + 16);
        v10 = v19 + 32;
        v81 = v123;
        while (1)
        {
          if (v80 == v13)
          {
            return v126[0];
          }

          if (v13 >= *(v19 + 16))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          memcpy(v129, v10, 0xA3uLL);
          memcpy(v127, v10, 0xA3uLL);
          sub_1B2127DC0(v129, &v124);
          v82 = sub_1B21418EC(v122, v81);
          if (v3)
          {
LABEL_49:

            sub_1B21356F8(v129);
            return v10;
          }

          if (!v82)
          {
            break;
          }

          sub_1B223DD24(v82);
          sub_1B21356F8(v129);
          v10 += 168;
          ++v13;
        }

        sub_1B21356F8(v129);
      }

      return 0;
    case 10:
    case 12:
    case 14:
    case 15:
      return v10;
    case 11:
      v63 = *sub_1B2127E38(v130);
      sub_1B211D694();
      memcpy(v64, v65, v66);
      sub_1B2114090();
      memcpy(v67, v68, v69);
      if (*(v63 + 346))
      {
        return 0;
      }

      sub_1B2114090();
      memcpy(v70, v71, v72);
      if (sub_1B214CB20(&v124))
      {
        sub_1B214CB10(&v124);
        return 0;
      }

      v83 = *sub_1B214CB10(&v124);
      memcpy(v126, v127, 0xA2uLL);
      sub_1B214CB10(v126);

      sub_1B213F348(a1, v123, 0);
      if (v2)
      {
        sub_1B214D4C8(v127);
        return v10;
      }

      if (!v84 || (sub_1B2138F90(), v85 = sub_1B21440C0(), v93 = v85, , , (v93 & 1) == 0))
      {
        sub_1B214D4C8(v127);
        return 0;
      }

      v94 = 0;
      v95 = *(v83 + 16);
      v96 = v83 + 32;
      v97 = MEMORY[0x1E69E7CC0];
      v123 = v83 + 32;
LABEL_62:
      v98 = v96 + 168 * v94;
      while (v95 != v94)
      {
        if (v94 >= *(v83 + 16))
        {
          __break(1u);
        }

        sub_1B21D0950();
        memmove(v99, v100, v101);
        if (sub_1B2127E1C(v129) == 2)
        {
          v102 = sub_1B2127E38(v129);
          v103 = *v102;
          if (*(v102 + 16) == 1)
          {
            if (v103 >= -9.22337204e18 && v103 < 9.22337204e18)
            {
              if ((~*&v103 & 0x7FF0000000000000) == 0)
              {
                __break(1u);
LABEL_93:
                __break(1u);

                swift_willThrow();

                __break(1u);

                MEMORY[0x1B2743C50](v94, -1, -1);
                __break(1u);
                JUMPOUT(0x1B2142318);
              }

              if (v103 <= -9.22337204e18)
              {
                goto LABEL_93;
              }

              *&v103 = v103;
LABEL_75:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B2162254(0, *(v97 + 16) + 1, 1, v97);
                v97 = v107;
              }

              v105 = *(v97 + 16);
              v104 = *(v97 + 24);
              v106 = v105 + 1;
              if (v105 >= v104 >> 1)
              {
                v108 = sub_1B211156C(v104);
                v122 = v109;
                sub_1B2162254(v108, v109, 1, v97);
                v106 = v122;
                v97 = v110;
              }

              ++v94;
              *(v97 + 16) = v106;
              *(v97 + 8 * v105 + 32) = v103;
              v96 = v123;
              goto LABEL_62;
            }
          }

          else if (!*(v102 + 16))
          {
            goto LABEL_75;
          }
        }

        v98 += 168;
        ++v94;
      }

      sub_1B214D4C8(v127);
      return sub_1B2168E80(v97);
    case 13:
      v53 = sub_1B2127E38(v130);
      v54 = *v53;
      v55 = *(*v53 + 16);
      memcpy(v129, (*v53 + 24), 0xA3uLL);
      memcpy(v128, (v54 + 192), sizeof(v128));
      switch(v55)
      {
        case 1:
        case 3:
          return 0;
        default:
          memcpy(v127, (v54 + 24), 0xA3uLL);
          v56 = sub_1B21D0A04();
          if (v2)
          {
            return v10;
          }

          v58 = v57;
          if (!v57 || (v59 = v56, sub_1B2138F90(), v60 = sub_1B2142354(v59, v58), (v86 = v60, , , (v86 & 1) == 0) || (memcpy(v127, v128, 0xA3uLL), sub_1B2127E1C(v127) != 2)))
          {
            sub_1B21D0A04();
            if (!v91)
            {
              return 0;
            }

            sub_1B2138F90();
            v92 = sub_1B21440C0();
            v112 = v92;

            if ((v112 & 1) == 0)
            {
              return 0;
            }

            memcpy(v127, v129, 0xA3uLL);
            if (sub_1B2127E1C(v127) != 2)
            {
              return 0;
            }
          }

          v87 = sub_1B2127E38(v127);
          v88 = *(v87 + 16);
          v124 = *v87;
          v125 = v88;
          v89 = static Int64.fromDatabaseValue(_:)(&v124);
          if (v90)
          {
            return MEMORY[0x1E69E7CD0];
          }

          v113 = v89;
          sub_1B21619D8(&qword_1EB7A0F80, &qword_1B2254698);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_1B22546B0;
          *(v114 + 32) = v113;
          v62 = sub_1B214A274(v114);
          break;
      }

      return v62;
    case 16:
      sub_1B21D0AA4(v130);
      memcpy(v129, (v61 + 16), 0xA3uLL);
      v62 = sub_1B21418EC(a1, v123);
      if (!v2)
      {
        return v62;
      }

      return v10;
    default:
      if (v9 == 2)
      {
        v48 = sub_1B2127E38(v130);
        v49 = *(v48 + 8);
        v50 = *(v48 + 16);
        v10 = MEMORY[0x1E69E7CD0];
        if (v50 != 4 || *v48 != 0)
        {
          v129[0] = *v48;
          v129[1] = v49;
          LOBYTE(v129[2]) = v50;
          memset(v127, 0, 17);
          v52 = static DatabaseValue.== infix(_:_:)(v129, v127);
          sub_1B2113A44(v127[0], v127[1], v127[2]);
          if (!v52)
          {
            return 0;
          }
        }
      }

      return v10;
  }
}

uint64_t sub_1B2142354(uint64_t a1, uint64_t a2)
{
  Database.primaryKey(_:)();
  if (v2)
  {
    return v5 & 1;
  }

  if (!v14)
  {
    if (v12 == a1 && v13 == a2)
    {
      sub_1B21424A0(a1, v13, 0);
    }

    else
    {
      v7 = sub_1B22531F0();
      sub_1B21424A0(v12, v13, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    v5 = 1;
    return v5 & 1;
  }

  if (v14 != 1)
  {
    sub_1B21424A0(v12, v13, 2u);
    goto LABEL_13;
  }

  sub_1B21424A0(v12, v13, 1u);
  if (v13)
  {
LABEL_13:
    sub_1B2113B50();
    if (sub_1B2252230() != 0x4449574F52 || v8 != 0xE500000000000000)
    {
      v10 = sub_1B22531F0();

      return v10 & 1;
    }

    goto LABEL_20;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B21424A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B21424C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1B211B358();
  result = sub_1B2252190();
  v15 = result;
  v12 = *(a2 + 16);
  v13 = (a2 + 32);
  if (v12)
  {
    while (1)
    {
      v14 = *v13;

      sub_1B2180750(&v15, &v14, a1, a3, a4);

      if (v5)
      {
      }

      ++v13;
      if (!--v12)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    *a5 = v15;
  }

  return result;
}

double sub_1B21425A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_1B2142658(a1, 0, 1, &v7);
  if (!v3)
  {
    if (v8)
    {
      sub_1B2134D5C(&v7, a2);
    }

    else
    {
      sub_1B212AC5C(&v7, &qword_1EB7A3500, &qword_1B226C7D8);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1B2142658@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v8 = result;
  if ((a3 & 1) != 0 && !*(v4[10] + 16))
  {
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return result;
  }

  v10 = v4[3];
  sub_1B2139B70();
  v10(&v50);

  if (!v5)
  {
    v11 = sub_1B2178F60(v8, v50);

    v38 = a2 + v11;
    if (__OFADD__(a2, v11))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      sub_1B2253390();
      __break(1u);
      goto LABEL_40;
    }

    v12 = v8;
    v36 = a3;
    v37 = a4;
    sub_1B21619D8(&qword_1EB7A0F40, &qword_1B226C7E0);
    v13 = sub_1B2252190();
    v14 = v4[10];
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v4[11];
      v17 = (v14 + 40);
      v18 = a2 + v11;
      v39 = v11;
      v40 = v12;
      v42 = v6[11];
      while (*(v16 + 16))
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        v54 = v17;

        v21 = sub_1B211E590();
        if ((v22 & 1) == 0)
        {
          goto LABEL_34;
        }

        v23 = (*(v16 + 56) + 216 * v21);
        memcpy(__dst, v23, sizeof(__dst));
        memcpy(__src, v23, sizeof(__src));
        memmove(v49, v23, 0xD8uLL);
        *&v50 = v19;
        *(&v50 + 1) = v20;
        memcpy(v51, __src, sizeof(v51));

        sub_1B21A63AC(__dst, &v44);
        sub_1B21A63AC(v49, &v44);
        sub_1B212AC5C(&v50, &qword_1EB7A1CB8, &qword_1B225A4C0);
        memcpy(v52, v49, sizeof(v52));
        memcpy(v53, &v49[48], sizeof(v53));
        sub_1B2142658(v12, v18, 0, &v44);
        if (v45)
        {
          v24 = v46;
          sub_1B2134D5C(&v44, __src);
          *&__src[40] = v24;
          sub_1B2134D5C(__src, v43);
          sub_1B211EE68(v43, __src);
          swift_isUniquelyReferenced_nonNull_native();
          *&v44 = v13;
          v25 = sub_1B211E590();
          if (__OFADD__(v13[2], (v26 & 1) == 0))
          {
            goto LABEL_35;
          }

          v27 = v25;
          v28 = v26;
          sub_1B21619D8(&qword_1EB7A3508, qword_1B226C7E8);
          if (sub_1B2252E70())
          {
            v29 = sub_1B211E590();
            if ((v28 & 1) != (v30 & 1))
            {
              goto LABEL_39;
            }

            v27 = v29;
          }

          v18 = v24;
          if (v28)
          {

            v13 = v44;
            v31 = (*(v44 + 56) + 40 * v27);
            sub_1B2113208(v31);
            sub_1B2134D5C(__src, v31);
            sub_1B21A6464(v52);
            sub_1B2113208(v43);
          }

          else
          {
            v13 = v44;
            *(v44 + 8 * (v27 >> 6) + 64) |= 1 << v27;
            v32 = (v13[6] + 16 * v27);
            *v32 = v19;
            v32[1] = v20;
            sub_1B2134D5C(__src, v13[7] + 40 * v27);
            sub_1B21A6464(v52);
            sub_1B2113208(v43);
            v33 = v13[2];
            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_36;
            }

            v13[2] = v35;
          }

          v11 = v39;
          v12 = v40;
        }

        else
        {

          sub_1B21A6464(v52);
          sub_1B212AC5C(&v44, &qword_1EB7A3500, &qword_1B226C7D8);
        }

        v17 = v54 + 2;
        --v15;
        v16 = v42;
        if (!v15)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v18 = a2 + v11;
LABEL_24:
    if ((v36 & 1) == 0 && v11 || v13[2])
    {
      if (v38 < a2)
      {
        goto LABEL_38;
      }

      if (a2 < 0)
      {
LABEL_40:
        result = sub_1B2252EC0();
        __break(1u);
        return result;
      }

      sub_1B224F47C(v13, a2, v38, &v50);
      sub_1B2134D5C(&v50, v37);
      *(v37 + 5) = v18;
    }

    else
    {
      v37[1] = 0u;
      v37[2] = 0u;
      *v37 = 0u;
    }
  }

  return result;
}

uint64_t sub_1B2142B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2142C20()
{

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t TableAlias.__deallocating_deinit()
{
  sub_1B2142C9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t sub_1B2142C9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return v6;
      }
    }
  }
}

uint64_t sub_1B2142D6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B2142D84(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B2142DA4()
{

  return swift_deallocObject();
}

void PersistableRecord.performInsert(_:)()
{
  sub_1B2111640();
  v4 = v3;
  v6 = v5;
  sub_1B21115E0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  sub_1B212D870(v10, v11);
  v12 = *(v4 + 8);
  v13 = sub_1B2115F1C();
  v14(v13, v12);
  v15 = LOBYTE(v23[0]);
  type metadata accessor for DAO(0, v6, v12, v16);
  (*(v8 + 16))(v2, v0, v6);

  v17 = sub_1B2143004();
  if (!v1)
  {
    v18 = v17;
    sub_1B21454D4(v23);
    v23[0] = 0;
    v23[1] = 0;
    v24.value.values._rawValue = v23;
    Statement.execute(arguments:)(v24);
    if (v19)
    {

LABEL_6:

      goto LABEL_7;
    }

    if (v15 == 3)
    {
      goto LABEL_6;
    }

    v20 = Database.lastInsertedRowID.getter();
    if (*(v18 + 72))
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = *(v18 + 56);
      v22 = *(v18 + 64);
    }

    (*(v4 + 16))(v20, v21, v22, v6, v4);
  }

LABEL_7:
  sub_1B2112FDC();
}

uint64_t sub_1B2143004()
{
  sub_1B2117A7C();
  swift_allocObject();
  sub_1B2115F1C();
  sub_1B2143054();
  return v0;
}

void sub_1B2143054()
{
  sub_1B2111640();
  v2 = v0;
  v3 = *v0;
  v28 = v3;
  v4 = *(v3 + 80);
  sub_1B21115E0();
  v29 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - v7;
  v2[2] = v8;
  v32 = v9;
  sub_1B212DF24();
  DynamicType = swift_getDynamicType();
  v11 = *(v3 + 88);
  v12 = *(v11 + 16);
  v13 = *(v12 + 8);

  v14 = sub_1B2112F9C();
  v2[5] = v13(v14);
  v2[6] = v15;

  Database.primaryKey(_:)();
  if (v1)
  {

    swift_deallocPartialClassInstance();
LABEL_4:
    v20 = sub_1B21D810C();
    v21(v20);
    sub_1B2112FDC();
    return;
  }

  v26 = DynamicType;

  v16 = v31;
  *(v2 + 7) = v30;
  *(v2 + 72) = v16;
  v17 = v27;
  (*(v29 + 16))(v27, v32, v4);
  v18 = *(v11 + 8);

  sub_1B2143368(v19, v17, v4, v18, v12);
  v22 = v30;
  *(v2 + 3) = v30;
  if (*(v22 + 16))
  {

    goto LABEL_4;
  }

  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_1B2252CD0();
  v23 = sub_1B2253510();
  v25 = v24;

  *&v30 = v23;
  *(&v30 + 1) = v25;
  MEMORY[0x1B2741EB0](0xD000000000000025, 0x80000001B226CF50);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2143368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2117A7C();
  v11 = v10;
  swift_getDynamicType();
  v12 = sub_1B2113B28();
  v14 = v13(v12, a5);
  v16 = Database.columns(in:)(v14, v15);
  if (v5)
  {
  }

  else
  {
    v17 = v16;

    v18 = *(v17 + 16);

    sub_1B2122CE8();
    sub_1B214400C();
    v20 = v19;
    v21 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    v22 = MEMORY[0x1B2741C60](v18, MEMORY[0x1E69E6158], v21, MEMORY[0x1E69E6168]);
    *v11 = v20;
    v11[1] = v22;
    (*(a4 + 8))(v11, a3, a4);
  }

  return (*(*(a3 - 8) + 8))(v6, a3);
}

uint64_t sub_1B21434C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = sub_1B213DA88();
  if (v3)
  {
    return v4;
  }

  v9 = result;
  v18 = a3;
  v19 = a1;
  v10 = result + 40;
  v20 = -*(result + 16);
  v11 = -1;
  while (1)
  {
    if (v20 + v11 == -1)
    {

      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      sub_1B21AB9A4(v19, a2, v17);
      swift_willThrow();
      return v4;
    }

    if (++v11 >= *(v9 + 16))
    {
      break;
    }

    v12 = sub_1B2111664();
    sub_1B213E100(v12, v13);

    v14 = sub_1B2111664();
    v4 = v18(v14);
    v10 += 16;
    v15 = sub_1B2111664();
    sub_1B213EA54(v15, v16);

    if (v4)
    {

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2143644(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache;
  swift_beginAccess();
  v13 = *(v12 + 8);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v13, v56);
  swift_endAccess();
  v14 = sub_1B2143F18();
  v67[0] = v56[0];
  sub_1B212AC5C(v67, &qword_1EB7A21D0, &qword_1B225B6B0);
  v66 = v56[1];
  sub_1B212AC5C(&v66, &qword_1EB7A21B0, &qword_1B225B690);
  v65 = v56[2];
  sub_1B212AC5C(&v65, &qword_1EB7A21B8, &qword_1B225B698);
  v64 = v56[3];
  sub_1B212AC5C(&v64, &qword_1EB7A21C0, &qword_1B225B6A0);
  v63 = v56[4];
  sub_1B212AC5C(&v63, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v14 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v14;
  }

  if (sqlite3_libversion_number() > 3025999)
  {
    v50 = v12;
    sub_1B213EA54(a1, a2);
    sub_1B2252CD0();

    strcpy(__dst, "PRAGMA ");
    *&__dst[8] = 0xE700000000000000;
    v16 = 0xE400000000000000;
    v17 = 1886217588;
    if (a2 != 1)
    {
      v17 = a1;
      v16 = a2;
    }

    v18 = a4;
    if (a2)
    {
      v19 = v17;
    }

    else
    {
      v19 = 1852399981;
    }

    if (a2)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    sub_1B213E100(a1, a2);
    MEMORY[0x1B2741EB0](v19, v20);

    MEMORY[0x1B2741EB0](0x785F656C6261742ELL, 0xED0000286F666E69);
    v52 = 34;
    v53 = 0xE100000000000000;
    v21 = a3;
    v77 = v18;
    v22 = v18;
    v6 = v5;
    v7 = v4;
    goto LABEL_26;
  }

  if (sqlite3_libversion_number() > 3008004)
  {
    v51 = a3;
    v77 = a4;
    sub_1B213EA54(a1, a2);
LABEL_17:
    v50 = v12;
    sub_1B2252CD0();

    strcpy(__dst, "PRAGMA ");
    *&__dst[8] = 0xE700000000000000;
    v23 = 0xE400000000000000;
    v24 = 1886217588;
    if (a2 != 1)
    {
      v24 = a1;
      v23 = a2;
    }

    if (a2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1852399981;
    }

    if (a2)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    sub_1B213E100(a1, a2);
    MEMORY[0x1B2741EB0](v25, v26);

    MEMORY[0x1B2741EB0](0x695F656C6261742ELL, 0xEC000000286F666ELL);
    v52 = 34;
    v53 = 0xE100000000000000;
    v21 = v51;
    v22 = v77;
LABEL_26:
    MEMORY[0x1B2741EB0](v21, v22);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v52, v53);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v14 = *&__dst[8];
    v27 = *__dst;
    memset(__dst, 0, 40);
    v28 = sub_1B21473DC(v7, v27, v14, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], __dst, sub_1B2148E94);
    if (v6)
    {

      sub_1B213EA54(a1, a2);
      sub_1B213EA54(a1, a2);
      sub_1B212AC5C(__dst, &qword_1EB7A1370, &unk_1B2257580);
      return v14;
    }

    v29 = v28;
    sub_1B212AC5C(__dst, &qword_1EB7A1370, &unk_1B2257580);

    v30 = MEMORY[0x1E69E7CC0];

    v31 = 0;
    v32 = *(v29 + 16);
    v33 = 32;
LABEL_29:
    v34 = v33;
    v35 = v33 + 88 * v31;
    while (v32 != v31)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      memcpy(__dst, (v29 + v35), sizeof(__dst));
      if ((__dst[16] & 1) != 0 || *&__dst[8] != 1)
      {
        sub_1B21499AC(__dst, &v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2149BB0();
          v30 = v55;
        }

        v37 = *(v30 + 16);
        if (v37 >= *(v30 + 24) >> 1)
        {
          sub_1B2149BB0();
          v30 = v55;
        }

        ++v31;
        *(v30 + 16) = v37 + 1;
        memcpy((v30 + 88 * v37 + 32), __dst, 0x58uLL);
        v33 = v34;
        goto LABEL_29;
      }

      v35 += 88;
      ++v31;
    }

    *__dst = v30;

    sub_1B2149BD0(__dst, sub_1B21BFE34, sub_1B2149D70);

    v14 = *__dst;
    v38 = *(*__dst + 16);
    sub_1B213EA54(a1, a2);
    if (v38)
    {
      swift_beginAccess();
      v39 = *(v50 + 8);

      sub_1B213E2CC(v39, v61);
      v40 = v61[0];
      v41 = v61[1];
      v42 = v61[2];
      swift_isUniquelyReferenced_nonNull_native();
      v52 = v42;
      sub_1B2149F60();
      v69 = v40;
      v70 = v41;
      v71 = v52;
      v72 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v50 + 8);
      sub_1B2148D50();
      *(v50 + 8) = v52;
      sub_1B213EA54(a1, a2);
      swift_endAccess();
      return v14;
    }

    v12 = v50;
    swift_beginAccess();
    sub_1B213E2CC(*(v50 + 8), v59);
    v43 = v59[0];
    v44 = v59[1];
    v45 = v59[2];
    swift_isUniquelyReferenced_nonNull_native();
    v52 = v45;
    sub_1B2149F60();
    v67[1] = v43;
    v67[2] = v44;
    v67[3] = v52;
    v68 = v60;
    swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v50 + 8);
LABEL_46:
    sub_1B2148D50();
    *(v12 + 8) = v52;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
    return 0;
  }

  v15 = sub_1B213E114(1, a3, a4);
  sub_1B213EA54(a1, a2);
  if (!v5)
  {
    if ((v15 & 1) == 0)
    {
      sub_1B213EA54(a1, a2);
      swift_beginAccess();
      sub_1B213E2CC(*(v12 + 8), v57);
      v46 = v57[0];
      v47 = v57[1];
      v48 = v57[2];
      swift_isUniquelyReferenced_nonNull_native();
      v52 = v48;
      sub_1B2149F60();
      v73 = v46;
      v74 = v47;
      v75 = v48;
      v76 = v58;
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v12 + 8);
      goto LABEL_46;
    }

    v51 = a3;
    v77 = a4;
    goto LABEL_17;
  }

  sub_1B213EA54(a1, a2);
  sub_1B213EA54(a1, a2);
  return v14;
}

uint64_t sub_1B2143F18()
{
  if (*(*(v0 + 16) + 16) && (sub_1B211E590(), (v1 & 1) != 0))
  {
  }

  else
  {
    return 1;
  }
}

void sub_1B2143F5C()
{
  sub_1B2114660();
  if ((v5 & 1) == 0 || (sub_1B2115F84(), v6 == v7))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v4)
    {
      sub_1B2113B10(v8, v9, v10, v11, v12, v13);
      v14 = sub_1B211A23C();
      sub_1B2111554(v14);
      sub_1B211F5F8();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1B2144090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11)
{

  return sub_1B2113A44(a9, a10, a11);
}

uint64_t sub_1B21440C0()
{

  return sub_1B2142354(v1, v0);
}

void *sub_1B214412C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return memcpy(va, &a9, 0xA3uLL);
}

double EncodableRecord<>.encode(to:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RecordEncoder(0, a2, a3, a4);
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  sub_1B21442C4(v10);
  v8 = v7;
  v11 = v5;
  WitnessTable = swift_getWitnessTable();
  v10[0] = v8;

  sub_1B2252200();

  sub_1B2113208(v10);
  sub_1B2145424(v10);

  result = v10[0];
  *a1 = *v10;
  return result;
}

__n128 sub_1B21442C4(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v2[1] = *a1;
  return result;
}

uint64_t sub_1B2144320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v11[4] = v4;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);

  v11[0] = v8;
  v11[1] = a2;
  v11[2] = v9;
  v11[3] = a3;
  type metadata accessor for RecordEncoder.KeyedContainer(0, v11);
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

uint64_t sub_1B21443FC(uint64_t a1, void *a2)
{
  sub_1B2144680();
  if (v13[0])
  {
    if (v13[0] == 1)
    {
      sub_1B21139A0(a2, a2[3]);
      v4 = sub_1B22534D0();
      v6 = sub_1B2190834(v4, v5);
      v8 = v7;
    }

    else
    {
      v6 = (v13[0])(a2);
      v8 = v10;
      sub_1B21268B4(v13[0], v13[1]);
    }
  }

  else
  {
    sub_1B21139A0(a2, a2[3]);
    v6 = sub_1B22534D0();
    v8 = v9;
  }

  sub_1B21446E0(a1, v13);
  swift_beginAccess();
  sub_1B2144750(v13, v6, v8, v12);

  sub_1B212AC5C(v12, qword_1EB7A1570, &qword_1B225A4D0);
  sub_1B212AC5C(v13, &qword_1EB7A0E30, &unk_1B2259360);
  return swift_endAccess();
}

uint64_t sub_1B2144558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = &protocol witness table for String;
  v13[0] = a1;
  v13[1] = a2;
  v12[3] = a6;
  v12[4] = a8;
  v10 = sub_1B212FF14(v12);
  (*(*(a6 - 8) + 16))(v10, a3, a6);

  sub_1B21443FC(v13, v12);
  sub_1B2113208(v12);
  return sub_1B212AC5C(v13, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21446E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B2144750@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B21446E0(a1, &v13);
  sub_1B211314C();
  sub_1B2144838();
  if (*(&v15 + 1) == 1)
  {
    sub_1B212AC5C(&v14, qword_1EB7A1570, &qword_1B225A4D0);

    sub_1B21449A8();
    v8 = *(*v4 + 16);
    sub_1B2144A08();
    v9 = *v4;
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    *v4 = v9;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_1B2259350;
  }

  else
  {
    result = *&v14;
    v12 = v15;
    *a4 = v14;
    *(a4 + 16) = v12;
    *(a4 + 32) = v16;
  }

  return result;
}

void sub_1B2144838()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  sub_1B211E590();
  sub_1B21120DC();
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_11:
    sub_1B2253390();
    __break(1u);
    return;
  }

  v13 = v9;
  v14 = v10;
  sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
  sub_1B213CE24();
  if (sub_1B2252E70())
  {
    sub_1B211E590();
    sub_1B2114080();
    if (!v16)
    {
      goto LABEL_11;
    }

    v13 = v15;
  }

  if (v14)
  {
    v17 = *(v20 + 56) + 40 * v13;
    v18 = *(v17 + 16);
    *v8 = *v17;
    *(v8 + 16) = v18;
    *(v8 + 32) = *(v17 + 32);
    v19 = *(v6 + 16);
    *v17 = *v6;
    *(v17 + 16) = v19;
    *(v17 + 32) = *(v6 + 32);
  }

  else
  {
    sub_1B2144974(v13, v4, v2, v6, v20);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = xmmword_1B2259350;
  }

  *v0 = v20;
  sub_1B21119F0();
}

void sub_1B2144974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2117584(a1, a2, a3, a4, a5);
  sub_1B211ADB0(v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v8, v9);
  }
}

void sub_1B21449A8()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B211728C();
    sub_1B2143F5C();
    *v1 = v3;
  }
}

void sub_1B2144A08()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B211728C();
    sub_1B2143F5C();
    *v0 = v4;
  }
}

uint64_t sub_1B2144A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[3] = a5;
  v15[4] = a8;
  v13 = sub_1B212FF14(v15);
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  sub_1B2144B88(a1, v15, a6, a9);
  return sub_1B2113208(v15);
}

void sub_1B2144B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v66 = a2;
  v78 = *MEMORY[0x1E69E9840];
  v64 = *v4;
  v7 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v57 - v8;
  v63 = sub_1B2251EE0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v22 = sub_1B2251E90();
  v62 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v13 + 16);
  v26(v21, a1, a3, v23);
  v27 = a3;
  if (swift_dynamicCast())
  {
    sub_1B21117B4(v12, 0, 1, v22);
    v28 = v62;
    (*(v62 + 32))(v25, v12, v22);
    (*(*(v64 + 88) + 32))(&v71);
    v69 = v71;
    v70 = v72;
    sub_1B218EF84(v25, &v74);
    sub_1B2187B6C(v69, *(&v69 + 1), v70);
    sub_1B21443FC(&v74, v66);
    sub_1B212AC5C(&v74, &qword_1EB7A0E30, &unk_1B2259360);
    (*(v28 + 8))(v25, v22);
    return;
  }

  v29 = v64;
  v30 = v66;
  sub_1B21117B4(v12, 1, 1, v22);
  sub_1B212AC5C(v12, &qword_1EB7A1330, &unk_1B226A760);
  (v26)(v18, a1, v27);
  v31 = v63;
  if (swift_dynamicCast())
  {
    v32 = v65;
    sub_1B21117B4(v65, 0, 1, v31);
    v33 = v61;
    v34 = v60;
    (*(v61 + 32))(v60, v32, v31);
    (*(*(v29 + 88) + 40))(&v69);
    if (v69)
    {
      if (v69 == 1)
      {
        v35 = sub_1B2251EB0();
        v76 = MEMORY[0x1E69E6158];
        WitnessTable = &protocol witness table for String;
        *&v74 = v35;
        *(&v74 + 1) = v36;
      }

      else
      {
        sub_1B2251EB0();
        v52 = sub_1B2252220();
        v54 = v53;

        v76 = MEMORY[0x1E69E6158];
        WitnessTable = &protocol witness table for String;
        *&v74 = v52;
        *(&v74 + 1) = v54;
      }
    }

    else
    {
      v76 = &type metadata for DatabaseValue;
      WitnessTable = &protocol witness table for DatabaseValue;
      *&v71 = sub_1B2251ED0();
      *(&v71 + 1) = v50;
      *&v74 = MEMORY[0x1B27418E0](&v71, 16);
      *(&v74 + 1) = v51;
      v75 = 3;
    }

    sub_1B21443FC(&v74, v30);
    (*(v33 + 8))(v34, v31);
    sub_1B212AC5C(&v74, &qword_1EB7A0E30, &unk_1B2259360);
  }

  else
  {
    v37 = a1;
    v38 = v65;
    sub_1B21117B4(v65, 1, 1, v31);
    sub_1B212AC5C(v38, &qword_1EB7A1568, &qword_1B2258E20);
    (v26)(v59, a1, v27);
    sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
    v39 = v30;
    if (swift_dynamicCast())
    {
      sub_1B21217FC(&v71, &v74);
      v40 = v76;
      v41 = WitnessTable;
      sub_1B21139A0(&v74, v76);
      v42 = v41[3];
      *(&v72 + 1) = &type metadata for DatabaseValue;
      v73 = &protocol witness table for DatabaseValue;
      v42(&v71, v40, v41);
      sub_1B21443FC(&v71, v30);
      sub_1B212AC5C(&v71, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B2113208(&v74);
      return;
    }

    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_1B212AC5C(&v71, &qword_1EB7A0E30, &unk_1B2259360);
    v44 = type metadata accessor for ColumnEncoder(0, *(v29 + 80), *(v29 + 88), v43);
    sub_1B211EE68(v30, &v74);
    v45 = v67;
    v46 = sub_1B214A968(v67, &v74);
    v76 = v44;
    WitnessTable = swift_getWitnessTable();
    *&v74 = v46;

    v47 = v68;
    v48 = v58;
    sub_1B2252200();
    v49 = v47;
    if (v47)
    {

      sub_1B2113208(&v74);
    }

    else
    {
      sub_1B2113208(&v74);
      if (*(v46 + 64) != 1)
      {

        return;
      }

      sub_1B2155660();
      v49 = swift_allocError();
      swift_willThrow();
    }

    *&v74 = v49;
    v55 = v49;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    if (swift_dynamicCast())
    {

      v56 = MEMORY[0x1B2743050]();
      sub_1B2186FAC(v39, v37, v45, v27, v48, &v71);
      objc_autoreleasePoolPop(v56);
    }
  }
}

uint64_t sub_1B2145424@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1B2145474()
{
  v0 = sub_1B21454A4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21454A4()
{

  return v0;
}

uint64_t sub_1B21454D4(_BYTE *a1)
{
  v3 = v1;
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[3];
  LOBYTE(v19) = *a1;
  *(&v19 + 1) = v4;
  v20 = v5;
  v21 = v6;

  v7 = sub_1B21455C4();
  v9 = v8;

  v10 = sub_1B212DAFC(v7, v9);
  if (!v2)
  {

    v11 = sub_1B214620C(v6, v3[4]);
    sub_1B2112554(v11, &v19, v12, v13, v14, v15);
    v18 = v19;
    v16.values._rawValue = &v18;
    Statement.setUncheckedArguments(_:)(v16);
  }

  return v10;
}

uint64_t sub_1B21455C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_1ED85DA20 != -1)
  {
    swift_once();
  }

  v5 = sub_1B2117D3C();
  sub_1B2145AD4(v5, v6);
  v8 = v7;

  v9 = sub_1B2145CE0(v1, v2, v3, v4, v8);
  v11 = v10;

  if (!v11)
  {
    v12 = *(v4 + 16);
    if (v12)
    {
      v48 = MEMORY[0x1E69E7CC0];
      v13 = sub_1B212CE88();
      sub_1B2116B10(v13, v14, v15, v16, v17, v18, v19);
      v20 = v48;
      v21 = v4 + 40;
      v46 = v12;
      do
      {
        v49[0] = 34;
        v49[1] = 0xE100000000000000;

        v22 = sub_1B212D5CC();
        MEMORY[0x1B2741EB0](v22);
        sub_1B2122C5C();

        v47 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1B2116B10(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
        }

        *(v20 + 16) = v28 + 1;
        v29 = v20 + 16 * v28;
        *(v29 + 32) = 34;
        *(v29 + 40) = 0xE100000000000000;
        v21 += 16;
        --v12;
      }

      while (v12);
      v12 = v46;
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B21151BC();
    sub_1B211AB74(v30, &qword_1EB7A0DA0, &qword_1B2254340, v31);
    sub_1B2252250();

    v49[0] = v12;
    v49[1] = 63;
    v49[2] = 0xE100000000000000;
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B211AB74(&qword_1ED85DA30, &qword_1EB7A2330, &qword_1B225EC10, MEMORY[0x1E69E7C00]);
    v32 = sub_1B2252250();
    v34 = v33;
    if (v1 == 1)
    {
      sub_1B211A2CC();
      sub_1B2252CD0();

      strcpy(v49, "INSERT INTO ");
      BYTE5(v49[1]) = 0;
      HIWORD(v49[1]) = -5120;
      v35 = sub_1B2112F9C();
      MEMORY[0x1B2741EB0](v35);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
      v36 = sub_1B212D5CC();
      MEMORY[0x1B2741EB0](v36);

      sub_1B211F6B0();
      MEMORY[0x1B2741EB0](v32, v34);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v9 = v49[0];
    }

    else
    {
      sub_1B211A2CC();
      sub_1B2252CD0();

      strcpy(v49, "INSERT OR ");
      BYTE3(v49[1]) = 0;
      HIDWORD(v49[1]) = -369098752;
      v37 = 0xE800000000000000;
      v38 = sub_1B21D8124();
      switch(v1)
      {
        case 1:
          __break(1u);
          JUMPOUT(0x1B2145AC0);
        case 2:
          v37 = 0xE400000000000000;
          v38 = 1279869254;
          break;
        case 3:
          v37 = 0xE600000000000000;
          v38 = 0x45524F4E4749;
          break;
        case 4:
          v37 = 0xE700000000000000;
          v38 = sub_1B21260C0();
          break;
        default:
          break;
      }

      MEMORY[0x1B2741EB0](v38, v37);

      MEMORY[0x1B2741EB0](0x204F544E4920, 0xE600000000000000);
      sub_1B21131A0();
      v39 = sub_1B2112F9C();
      MEMORY[0x1B2741EB0](v39);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](v47);

      MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
      v40 = sub_1B212D5CC();
      MEMORY[0x1B2741EB0](v40);

      sub_1B211F6B0();
      MEMORY[0x1B2741EB0](v32, v34);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v9 = v49[0];
    }

    v41 = sub_1B2117D3C();
    sub_1B2145AD4(v41, v42);
    v44 = v43;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B2153B18();
    sub_1B2153A80(v44);
  }

  return v9;
}

void sub_1B2145B10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *(v5 + 24);
  sub_1B21619D8(a3, a4);
  sub_1B2252A50();
}

uint64_t sub_1B2145BA4()
{
  sub_1B211D7B0();
  swift_beginAccess();
  v4 = *(v1 + 16);

  v2(&v5, &v4);

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B2145C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2145BA4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2145CB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2145C98();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2145CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (sub_1B2145D20(), (v5 & 1) != 0))
  {
    sub_1B2114830();
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

unint64_t sub_1B2145D20()
{
  sub_1B2111FC0();
  v2 = v1;
  sub_1B21224DC();
  sub_1B2145DB0(v8, v2);
  sub_1B211314C();
  sub_1B2252370();
  sub_1B2145E84();
  sub_1B2253470();
  sub_1B211314C();

  return sub_1B2145EE4(v3, v4, v5, v0, v6);
}

uint64_t sub_1B2145DB0(uint64_t a1, char a2)
{
  sub_1B2252370();
}

void sub_1B2145E84()
{
  sub_1B211AD04();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_1B2114748();
      sub_1B2252370();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_1B2145EE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    v8 = 0x4B4341424C4C4F52;
    v26 = (a4 + 40);
    do
    {
      v9 = *(v5 + 48) + 32 * v7;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = 0xE800000000000000;
      v14 = v8;
      switch(*v9)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x54524F4241;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1279869254;
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x45524F4E4749;
          break;
        case 4:
          v13 = 0xE700000000000000;
          v14 = 0x4543414C504552;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = v8;
      switch(a1)
      {
        case 1:
          v15 = 0xE500000000000000;
          v8 = 0x54524F4241;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v8 = 1279869254;
          break;
        case 3:
          v15 = 0xE600000000000000;
          v8 = 0x45524F4E4749;
          break;
        case 4:
          v15 = 0xE700000000000000;
          v8 = 0x4543414C504552;
          break;
        default:
          break;
      }

      if (v14 == v8 && v13 == v15)
      {
      }

      else
      {
        v18 = sub_1B22531F0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v19 = v11 == a2 && v10 == a3;
      if (v19 || (sub_1B22531F0() & 1) != 0)
      {
        v20 = *(v12 + 16);
        if (v20 == *(a4 + 16))
        {
          if (v20)
          {
            v21 = v12 == a4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
LABEL_41:

            return v7;
          }

          v22 = (v12 + 40);
          v23 = v26;
          while (1)
          {
            if (!v20)
            {
              __break(1u);
              JUMPOUT(0x1B21461C4);
            }

            v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
            if (!v24 && (sub_1B22531F0() & 1) == 0)
            {
              break;
            }

            v22 += 2;
            v23 += 2;
            if (!--v20)
            {
              goto LABEL_41;
            }
          }
        }
      }

LABEL_39:

      v7 = (v7 + 1) & v28;
      v8 = v16;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_1B21461EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B216F90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B214620C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1B21461EC(0, v2, 0);
  v3 = v17;
  v7 = a1 + 40;
  while (*(a2 + 16))
  {

    result = sub_1B211E590();
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1B21446E0(*(a2 + 56) + 40 * result, v15);

    v17 = v3;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      v14 = sub_1B211156C(v9);
      result = sub_1B21461EC(v14, v10 + 1, 1);
      v3 = v17;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 40 * v10;
    v12 = v15[0];
    v13 = v15[1];
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 48) = v13;
    v7 += 16;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

sqlite3_int64 Database.lastInsertedRowID.getter()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    return sqlite3_last_insert_rowid(*(v0 + 16));
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21463A4()
{
  sub_1B21463D8();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t sub_1B21463D8()
{

  sub_1B21424A0(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

void *DatabaseValueConvertible.sqlExpression.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  (*(a1 + 24))(&v4);
  __src[0] = v4;
  LOBYTE(__src[1]) = v5;
  sub_1B2127D7C(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B2146534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, _OWORD *))
{
  v11 = *a4;
  v10 = a4[1];
  sub_1B211E1E0(a5, v15, &qword_1EB7A1370, &unk_1B2257580);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = v11;
  __src[3] = v10;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = v12;

  sub_1B214670C(v15, v16, &qword_1EB7A1370, &unk_1B2257580);
  v19 = 2;
  v13 = a6(a1, v16);
  sub_1B212ACBC(v16, &qword_1EB7A1C18);
  return v13;
}

uint64_t sub_1B21466AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B21619D8(a3, a4);
  sub_1B21118A0();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1B214670C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B224B650(a1, a2, a3, a4);
  sub_1B2111808();
  v5 = sub_1B2112FD0();
  v6(v5);
  return v4;
}

uint64_t sub_1B214675C()
{
  sub_1B213CACC();
  v4 = sub_1B2146A54(v3);
  if (!v0)
  {
    v12 = sub_1B212CF8C(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19, v20[0]);
    v1 = static Row.fetchAll(_:arguments:adapter:)(v12, v13, v14);
    if (v21)
    {

      v21(v2, v1);
      v16 = sub_1B2122C8C();
      sub_1B2112F4C(v16, v17);
    }

    sub_1B2142D18(v20);
  }

  return v1;
}

uint64_t sub_1B2146830@<X0>(uint64_t a2@<X8>)
{
  v4 = v2;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v12 = sub_1B2114D98(0, v6, v7, v8, v9, v10, v11);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v15 = sub_1B2117164(v14, v12, v13);
  *&v33[0] = *(v4 + 40);

  sub_1B2119120(v15, v16, v17, v18, v19, v20, v21);
  if (v3)
  {
  }

  if (*(v4 + 48) == 2)
  {
    sub_1B2114290();
    v25 = sub_1B212641C(v22, v23, v24);
  }

  else
  {
    sub_1B2114290();
    if (v28)
    {
      v25 = sub_1B212DAFC(v26, v27);
    }

    else
    {
      v25 = Database.cachedStatement(sql:)(v26, v27);
    }
  }

  v30 = v25;

  sub_1B211B048(v33);
  v33[3] = v33[0];
  sub_1B2114290();
  Statement.setArguments(_:)(v31);
  if (v32)
  {
  }

  sub_1B211E17C(v4, v33, &qword_1EB7A1370, &unk_1B2257580);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  *a2 = v30;
  result = sub_1B2142B5C(v33, a2 + 8);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1B2146A84(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B2146AA4()
{
  result = *(v0 - 176);
  *(v0 - 72) = *(*(v0 - 168) + 32);
  return result;
}

void sub_1B2146AC0()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t *sub_1B2146AD8(uint64_t a1)
{

  return sub_1B2181098();
}

void *sub_1B2146AF8(void *a1)
{

  return memcpy(a1, (v1 + 2840), 0xA3uLL);
}

uint64_t sub_1B2146B30()
{

  return sub_1B2253420();
}

uint64_t sub_1B2146B4C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *a2;
  result = static Row.fetchCursor(_:arguments:adapter:)(a1, &v11, a3);
  if (!v5)
  {
    v9 = result;
    sub_1B21619D8(&qword_1EB7A33D0, &unk_1B226BA20);
    inited = swift_initStackObject();
    inited[2] = v9;
    inited[3] = a4;
    inited[4] = 0;
    return a5();
  }

  return result;
}

uint64_t sub_1B2146C18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  type metadata accessor for SchedulingWatchdog();
  v9 = *(a1 + 80);
  swift_unownedRetainStrong();

  if (sub_1B2117B40(v9))
  {

    v10 = *(a1 + 16);
    if (sqlite3_stmt_busy(v10))
    {
      v28 = a1;
      v31 = v9;
      goto LABEL_4;
    }

    swift_unownedRetainStrong();
    v25 = sub_1B212D130();
    Database.statementWillExecute(_:)(v25);
    v5 = v4;
    if (v4)
    {
    }

    else
    {
      v28 = a1;
      v31 = v9;

LABEL_4:
      while (sqlite3_step(v10) == 100)
      {
        v34 = *(a2 + 32);
        v11 = *(a3 + 24);

        v11(&v33, &v34);
        if (v5)
        {

          return sub_1B2122A70();
        }

        MEMORY[0x1B2742060](v12);
        v13 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
        {
          sub_1B211156C(v13);
          sub_1B22525E0();
        }

        sub_1B2252630();
      }

      sub_1B21122DC();
      if (v22)
      {
        sub_1B21130F0(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28, v31);
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(v29, v23);
        if (!v5)
        {
          sub_1B2122A70();
        }
      }

      else
      {
        sub_1B21130F0(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28, v31);
        swift_unownedRetainStrong();
        sub_1B2122700(v30);
      }
    }

    return sub_1B2122A70();
  }

  else
  {
    sub_1B2122A70();

    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2146E6C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 16);
  swift_retain_n();

  sub_1B2146C18(v6, v5, a1, &v8);
  if (!v2)
  {
    *(v5 + 24) = 1;

    v4 = v8;
LABEL_5:

    return v4;
  }

  return v4;
}

uint64_t sub_1B2146F44@<X0>(uint64_t *a1@<X8>)
{
  sub_1B211E6C0();
  sub_1B224B2B4();
  sub_1B2127108();
  result = v2();
  *a1 = result;
  return result;
}

uint64_t sub_1B2146FA8(uint64_t a1, uint64_t a2)
{

  return sub_1B2252EF0();
}

void *sub_1B2146FF4(void *a1)
{

  return memcpy(a1, &STACK[0x418], 0xA3uLL);
}

uint64_t sub_1B214700C()
{
}

void sub_1B2147038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sqlite3_column_count(v1);
  if ((v2 & 0x80000000) == 0)
  {
    v7 = v2;
    if (!v2)
    {
      return;
    }

    v19 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v2, 0, v3, v4, v5, v6);
    v8 = 0;
    while (v7 != v8)
    {
      if (!sqlite3_column_name(v1, v8))
      {
        goto LABEL_12;
      }

      v13 = sub_1B22523F0();
      v15 = v14;
      v17 = *(v19 + 16);
      v16 = *(v19 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B2116B10(v16 > 1, v17 + 1, 1, v9, v10, v11, v12);
      }

      ++v8;
      *(v19 + 16) = v17 + 1;
      v18 = v19 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      if (v7 == v8)
      {
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t FilterCursor.__deallocating_deinit()
{
  FilterCursor.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s12GRDBInternal12FilterCursorCfd_0()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1B21471E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6D5F6574696C7173;
  }

  if (a2 == 1)
  {
    sub_1B212D858();
    return 0xD000000000000012;
  }

  else
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](0x5F6574696C71732ELL, 0xEE0072657473616DLL);
    return a1;
  }
}

uint64_t sub_1B21472B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2252CD0();

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001B226E460;
  MEMORY[0x1B2741EB0](a2, a3);

  sub_1B2113180();
  v7 = sub_1B21473DC(a1, v6, 0x80000001B226E460, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v9, sub_1B214750C);
  sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);

  return v7;
}

uint64_t sub_1B21473DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, _OWORD *))
{
  sub_1B2122784(a6, v16);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = v13;

  sub_1B2142B5C(v16, v17);
  v20 = 2;
  v14 = a7(a1, v17);
  sub_1B212AC5C(v17, &qword_1EB7A1C18, &qword_1B2259C90);
  return v14;
}

uint64_t sub_1B214750C(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54();
  if (v2)
  {
    return a2;
  }

  v5 = v24;
  if (!v24)
  {
    sub_1B2122784(v23, v20);
    sub_1B21619D8(&qword_1EB7A21D8, &qword_1B225B6B8);
    swift_allocObject();

    v10 = sub_1B214786C(v7, 0, 0, v20);
    *&v19[0] = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(v10 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v16 = v10[2];

      sub_1B2147A24(v16, v10);
      *(v10 + 24) = 1;

      a2 = *&v19[0];
    }

LABEL_17:
    sub_1B2142D18(&v22);
    return a2;
  }

  v6 = v25;
  type metadata accessor for Row();
  v20[0] = 0uLL;

  v9 = static Row.fetchAll(_:arguments:adapter:)(v22, v20, v23);
  v5(a1, v9);
  v17 = v6;
  v27 = v5;
  v11 = sub_1B2116B08();
  v12 = sub_1B21C2600();
  v21 = MEMORY[0x1B27422D0](v11, &type metadata for SchemaInfo.SchemaObject, v12);
  v13 = sub_1B2116B08();
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      sub_1B2112F4C(v27, v17);
      a2 = v21;
      goto LABEL_17;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B27427E0](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v15 = *(v9 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for RowDecoder();
    swift_initStackObject();
    sub_1B2147C54(v15, v20);

    v26[0] = v20[0];
    v26[1] = v20[1];
    v26[2] = v20[2];
    v26[3] = v20[3];
    sub_1B21481C0(v18, v26);
    v19[0] = v18[0];
    v19[1] = v18[1];
    v19[2] = v18[2];
    v19[3] = v18[3];
    sub_1B2148190(v19);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t *sub_1B214786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v11 = swift_retain_n();
  sub_1B211CFCC(v11, v12, v13, v14, v15, v16, v17);
  v21[3] = type metadata accessor for Statement();
  v21[4] = &protocol witness table for Statement;
  v21[0] = a1;

  v18 = sub_1B211E6DC(a4, v21);

  if (v5)
  {
    sub_1B211A378(a2, a3);

    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(v21);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v21);
    *(v6 + 32) = v18;
    v21[0] = a2;
    v21[1] = a3;
    sub_1B2119E50(v21, v19);
    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2, a3);
  }

  return v6;
}

uint64_t sub_1B2147A24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchedulingWatchdog();
  v4 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v4))
  {

    v5 = *(a1 + 16);
    if (!sqlite3_stmt_busy(v5))
    {
      swift_unownedRetainStrong();
      v6 = sub_1B2115468();
      Database.statementWillExecute(_:)(v6);
      if (v2)
      {
LABEL_10:
      }
    }

    while (1)
    {
      v7 = sqlite3_step(v5);
      if (v7 != 100)
      {
        break;
      }

      sub_1B2147BC4(&v13);
      v22[0] = v13;
      v22[1] = v14;
      v22[2] = v15;
      v22[3] = v16;
      sub_1B2148158(v22, &v18);
      sub_1B21481C0(&v18, v22);
      v17[0] = v18;
      v17[1] = v19;
      v17[2] = v20;
      v17[3] = v21;
      sub_1B2148190(v17);
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = v16;
      sub_1B2148190(&v18);
    }

    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      v8 = sub_1B2115468();
      Database.statementDidExecute(_:)(v8, v9);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_1B2111BFC();
      Database.statementDidFail(_:withResultCode:)(v10, v11);
    }

    goto LABEL_10;
  }

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

double sub_1B2147BC4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  type metadata accessor for RowDecoder();
  swift_initStackObject();
  sub_1B2147C54(v3, v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double sub_1B2147C54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v10[3] = sub_1B21619D8(&qword_1EB7A21E8, &qword_1B225B6C0);
  v10[4] = sub_1B211AB74(qword_1ED85E018, &qword_1EB7A21E8, &qword_1B225B6C0, &unk_1B226A360);
  sub_1B2113B74();
  v5 = swift_allocObject();
  v10[0] = v5;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = a1;
  v5[3] = v6;
  v5[4] = 0;
  v5[5] = 0;

  sub_1B2147D80(v10, v11);
  if (!v2)
  {
    v8 = v11[1];
    *a2 = v11[0];
    a2[1] = v8;
    result = *&v12;
    v9 = v13;
    a2[2] = v12;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1B2147D30()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B2147D80@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A21F0, &qword_1B225B6C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1B21139A0(a1, a1[3]);
  sub_1B2148074();
  sub_1B22534A0();
  if (v2)
  {
    return sub_1B2113208(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_1B2252F60();
  v24 = v10;
  LOBYTE(v29[0]) = 1;
  *&v23 = sub_1B2252F60();
  *(&v23 + 1) = v11;
  LOBYTE(v29[0]) = 2;
  *&v22 = sub_1B2252F50();
  *(&v22 + 1) = v12;
  v35 = 3;
  v13 = sub_1B2252F50();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  v17 = *(&v22 + 1);
  v18 = v23;
  v26 = v23;
  v27 = v22;
  *&v28 = v13;
  *(&v28 + 1) = v15;
  sub_1B2148158(&v25, v29);
  sub_1B2113208(a1);
  v29[0] = v9;
  v29[1] = v16;
  v30 = __PAIR128__(*(&v23 + 1), v18);
  v31 = v22;
  v32 = v17;
  v33 = v13;
  v34 = v15;
  result = sub_1B2148190(v29);
  v20 = v26;
  *a2 = v25;
  a2[1] = v20;
  v21 = v28;
  a2[2] = v27;
  a2[3] = v21;
  return result;
}

unint64_t sub_1B2148074()
{
  result = qword_1ED85E0B0;
  if (!qword_1ED85E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0B0);
  }

  return result;
}

uint64_t sub_1B21480DC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x656D616E5F6C6274;
      break;
    case 3:
      result = 7106931;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B21481C0(__int128 *a1, void *a2)
{
  v4 = *v2;
  sub_1B2253420();
  sub_1B21483F8(v41);
  sub_1B2253470();
  sub_1B2113B98();
  v7 = v6 & ~v5;
  v39 = v8;
  if ((*(v8 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v37 = ~v5;
    v9 = *a2;
    v10 = a2[1];
    v34 = v4;
    v38 = *(v4 + 48);
    do
    {
      v11 = (v38 + (v7 << 6));
      v12 = v11[2];
      v13 = v11[3];
      v15 = v11[4];
      v14 = v11[5];
      v17 = v11[6];
      v16 = v11[7];
      v18 = *v11 == v9 && v11[1] == v10;
      if (!v18 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v12 != a2[2] || v13 != a2[3])
      {
        sub_1B2116164();
        if ((sub_1B22531F0() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v20 = a2[5];
      if (v14)
      {
        if (!v20)
        {
          goto LABEL_31;
        }

        if (v15 != a2[4] || v14 != v20)
        {
          sub_1B2111658();
          if ((sub_1B22531F0() & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v20)
      {
        goto LABEL_31;
      }

      v22 = a2[7];
      if (v16)
      {
        if (v22)
        {
          v23 = v17 == a2[6] && v16 == v22;
          if (v23 || (sub_1B2117214(), (sub_1B22531F0() & 1) != 0))
          {
LABEL_34:
            sub_1B2148190(a2);
            v28 = (*(v34 + 48) + (v7 << 6));
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v41[2] = v28[2];
            v41[3] = v31;
            v41[0] = v29;
            v41[1] = v30;
            v32 = v28[1];
            *a1 = *v28;
            a1[1] = v32;
            v33 = v28[3];
            a1[2] = v28[2];
            a1[3] = v33;
            sub_1B2148158(v41, v40);
            return 0;
          }
        }
      }

      else if (!v22)
      {
        goto LABEL_34;
      }

LABEL_31:
      v7 = (v7 + 1) & v37;
    }

    while (((*(v39 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = *v35;
  sub_1B2148158(a2, v41);
  sub_1B21484B0(a2, v7, isUniquelyReferenced_nonNull_native);
  *v35 = v40[0];
  v25 = *(a2 + 1);
  *a1 = *a2;
  a1[1] = v25;
  v26 = *(a2 + 3);
  a1[2] = *(a2 + 2);
  a1[3] = v26;
  return 1;
}

uint64_t sub_1B21483F8(uint64_t a1)
{
  sub_1B2252370();
  sub_1B2252370();
  if (*(v1 + 40))
  {
    sub_1B2253440();
    sub_1B2252370();
  }

  else
  {
    sub_1B2253440();
  }

  if (!*(v1 + 56))
  {
    return sub_1B2253440();
  }

  sub_1B2253440();

  return sub_1B2252370();
}

uint64_t sub_1B21484B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B21489CC();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1B2249048();
        goto LABEL_39;
      }

      sub_1B21486EC();
    }

    v8 = *v3;
    sub_1B2253420();
    sub_1B21483F8(v36);
    result = sub_1B2253470();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    v35 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v34 = ~v9;
      v10 = *v5;
      v11 = v5[1];
      v33 = *(v8 + 48);
      do
      {
        v12 = (v33 + (a2 << 6));
        result = *v12;
        v14 = v12[2];
        v13 = v12[3];
        v16 = v12[4];
        v15 = v12[5];
        v18 = v12[6];
        v17 = v12[7];
        if (*v12 != v10 || v12[1] != v11)
        {
          result = sub_1B22531F0();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        if (v14 != v5[2] || v13 != v5[3])
        {
          result = sub_1B22531F0();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v21 = v5[5];
        if (v15)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          if (v16 != v5[4] || v15 != v21)
          {
            result = sub_1B22531F0();
            if ((result & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else if (v21)
        {
          goto LABEL_38;
        }

        v23 = v5[7];
        if (v17)
        {
          if (v23)
          {
            if (v18 == v5[6] && v17 == v23)
            {
              goto LABEL_42;
            }

            result = sub_1B22531F0();
            if (result)
            {
              goto LABEL_42;
            }
          }
        }

        else if (!v23)
        {
          goto LABEL_42;
        }

LABEL_38:
        a2 = (a2 + 1) & v34;
      }

      while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + (a2 << 6));
  v27 = *(v5 + 1);
  *v26 = *v5;
  v26[1] = v27;
  v28 = *(v5 + 3);
  v26[2] = *(v5 + 2);
  v26[3] = v28;
  v29 = *(v25 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_42:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v31;
  }

  return result;
}

uint64_t sub_1B21486EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  result = sub_1B2252C70();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + ((v11 | (v5 << 6)) << 6));
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[3];
        v33 = v14[2];
        v34 = v17;
        v31 = v16;
        v32 = v15;
        sub_1B2253420();
        sub_1B2148158(&v31, v30);
        sub_1B2252370();
        sub_1B2252370();
        if (*(&v33 + 1))
        {
          sub_1B2253440();
          sub_1B2252370();
        }

        else
        {
          sub_1B2253440();
        }

        if (*(&v34 + 1))
        {
          sub_1B2253440();
          sub_1B2252370();
        }

        else
        {
          sub_1B2253440();
        }

        result = sub_1B2253470();
        v18 = -1 << *(v4 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v10 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v4 + 48) + (v21 << 6));
        v27 = v31;
        v28 = v32;
        v29 = v34;
        v26[2] = v33;
        v26[3] = v29;
        *v26 = v27;
        v26[1] = v28;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v10 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_31;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B21489CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  result = sub_1B2252C70();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_31:
    v34 = v4;

    *v1 = v34;
    return result;
  }

  v35 = v0;
  v36 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  v37 = result;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      v33 = v4;
      sub_1B2148CEC(0, (v32 + 63) >> 6, v6);
      v4 = v33;
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v35;
    *(v2 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_12:
    v15 = (*(v2 + 48) + ((v12 | (v5 << 6)) << 6));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v21 = v15[4];
    v20 = v15[5];
    v39 = v15[6];
    v40 = v15[7];
    sub_1B2253420();
    sub_1B2252370();
    sub_1B2252370();
    sub_1B2253440();
    if (v20)
    {
      sub_1B2252370();
    }

    sub_1B2253440();
    if (v40)
    {
      sub_1B2252370();
    }

    result = sub_1B2253470();
    v4 = v37;
    v22 = -1 << *(v37 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v26 = v40;
LABEL_25:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v31 = (*(v37 + 48) + (v25 << 6));
    *v31 = v16;
    v31[1] = v17;
    v9 = v38;
    v31[2] = v18;
    v31[3] = v19;
    v31[4] = v21;
    v31[5] = v20;
    v31[6] = v39;
    v31[7] = v26;
    ++*(v37 + 16);
    v2 = v36;
    if (!v38)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v22) >> 6;
  v26 = v40;
  while (++v24 != v28 || (v27 & 1) == 0)
  {
    v29 = v24 == v28;
    if (v24 == v28)
    {
      v24 = 0;
    }

    v27 |= v29;
    v30 = *(v11 + 8 * v24);
    if (v30 != -1)
    {
      v25 = __clz(__rbit64(~v30)) + (v24 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B2148CEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B225E500;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B2148D50()
{
  sub_1B2122548();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1B211D630(v5, v3);
  sub_1B213E424();
  sub_1B211744C();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1B21619D8(&qword_1EB7A1CE8, &qword_1B225A750);
  if (sub_1B21165F8(v12))
  {
    sub_1B213E424();
    sub_1B21150FC();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v0;
  if (v11)
  {
    v16 = *(v15 + 56) + 40 * v10;
    v17 = *(v6 + 16);
    *v16 = *v6;
    *(v16 + 16) = v17;
    *(v16 + 32) = *(v6 + 32);

    sub_1B2115ED4();
  }

  else
  {
    sub_1B2144974(v10, v4, v2, v6, v15);
    sub_1B2115ED4();

    return sub_1B213E100(v20, v21);
  }
}

uint64_t sub_1B2148E94(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54();
  if (v2)
  {
    return a2;
  }

  if (!v45)
  {
    sub_1B2122784(v44, v42);
    sub_1B21619D8(&qword_1EB7A21F8, &qword_1B225B6D0);
    swift_allocObject();

    v9 = sub_1B214786C(v6, 0, 0, v42);
    v47 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    if (*(v9 + 24) == 1)
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v30 = v9[2];

      sub_1B2149358(v30, v9, &v47);
      *(v9 + 24) = 1;

      v10 = v47;
    }

    a2 = v10;
    goto LABEL_5;
  }

  v31 = v45;
  v5 = v46;
  type metadata accessor for Row();
  v42[0] = 0uLL;

  v8 = static Row.fetchAll(_:arguments:adapter:)(v43, v42, v44);
  v31(a1, v8);
  v11 = sub_1B2116B08();
  if (!v11)
  {

    sub_1B2112F4C(v31, v5);
    a2 = MEMORY[0x1E69E7CC0];
LABEL_5:
    sub_1B2142D18(&v43);
    return a2;
  }

  v12 = v11;
  *&v42[0] = MEMORY[0x1E69E7CC0];
  sub_1B2149BB0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    a2 = *&v42[0];
    v32 = v12 - 1;
    v33 = v8 & 0xC000000000000001;
    for (i = v8; ; v8 = i)
    {
      if (v33)
      {
        MEMORY[0x1B27427E0](v13, v8);
      }

      else
      {
      }

      v14 = sub_1B212F0BC(6580579, 0xE300000000000000);
      v15 = sub_1B212D190(1701667182);
      v17 = v16;
      v18 = sub_1B212D190(1701869940);
      v37 = v19;
      v38 = v18;
      v39 = v17;
      v20 = sub_1B21322A0(0x6C6C756E746F6ELL);
      v21 = v14;
      v40 = v13;
      v22 = sub_1B21496F4();
      v36 = v23;
      v24 = sub_1B212F0BC(27504, 0xE200000000000000);
      v35 = sub_1B2149894();
      v26 = v25;

      *&v42[0] = a2;
      v27 = *(a2 + 16);
      if (v27 >= *(a2 + 24) >> 1)
      {
        sub_1B2149BB0();
        a2 = *&v42[0];
      }

      *(a2 + 16) = v27 + 1;
      v28 = a2 + 88 * v27;
      *(v28 + 32) = v21;
      *(v28 + 40) = v35;
      *(v28 + 48) = v26 & 1;
      v29 = *(&v47 + 3);
      *(v28 + 49) = v47;
      *(v28 + 52) = v29;
      *(v28 + 56) = v15;
      *(v28 + 64) = v39;
      *(v28 + 72) = v38;
      *(v28 + 80) = v37;
      *(v28 + 88) = v20 & 1;
      *(v28 + 92) = *&v41[3];
      *(v28 + 89) = *v41;
      *(v28 + 96) = v22;
      *(v28 + 104) = v36;
      *(v28 + 112) = v24;
      if (v32 == v40)
      {
        break;
      }

      v13 = v40 + 1;
    }

    sub_1B2112F4C(v31, v5);

    goto LABEL_5;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B2149358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  type metadata accessor for SchedulingWatchdog();
  v6 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v6))
  {

    v33 = *(a1 + 16);
    if (!sqlite3_stmt_busy(v33))
    {
      swift_unownedRetainStrong();
      Database.statementWillExecute(_:)(a1);
      if (v3)
      {
LABEL_15:
      }
    }

    v31 = a1;
    while (1)
    {
      v7 = sqlite3_step(v33);
      if (v7 != 100)
      {
        break;
      }

      v37 = sub_1B212F0BC(6580579, 0xE300000000000000);
      if (v4)
      {
        swift_unexpectedError();
        __break(1u);
        goto LABEL_18;
      }

      v8 = sub_1B212D190(1701667182);
      v35 = v9;
      v36 = v8;
      v10 = sub_1B212D190(1701869940);
      v34 = v11;
      v12 = v10;
      v13 = sub_1B21322A0(0x6C6C756E746F6ELL);
      v14 = sub_1B21496F4();
      v16 = v15;
      v17 = sub_1B212F0BC(27504, 0xE200000000000000);
      v18 = v13 & 1;
      v19 = sub_1B2149894();
      v21 = v20;

      v49 = v21 & 1;
      __src[0] = v37;
      __src[1] = v19;
      LOBYTE(__src[2]) = v21 & 1;
      __src[3] = v36;
      __src[4] = v35;
      __src[5] = v12;
      __src[6] = v34;
      v50 = v18;
      LOBYTE(__src[7]) = v18;
      __src[8] = v14;
      __src[9] = v16;
      __src[10] = v17;
      v22 = *a3;
      sub_1B21499AC(__src, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B21499E4();
        v22 = v26;
        *a3 = v26;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B211156C(v24);
        sub_1B21499E4();
        v22 = v27;
        *a3 = v27;
      }

      *(v22 + 16) = v25 + 1;
      memcpy((v22 + 88 * v25 + 32), __src, 0x58uLL);
      v38[0] = v37;
      v38[1] = v19;
      v39 = v21 & 1;
      v40 = v36;
      v41 = v35;
      v42 = v12;
      v43 = v34;
      v44 = v50;
      v45 = v14;
      v46 = v16;
      v47 = v17;
      sub_1B2149A98(v38);
      a1 = v31;
      v4 = 0;
    }

    v28 = v7;
    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(a1, v29);
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementDidFail(_:withResultCode:)(a1, v28);
    }

    goto LABEL_15;
  }

LABEL_18:

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21496F4()
{
  v1 = v0;
  sub_1B211D964();
  sub_1B21139A0(v0 + 2, v0[5]);
  v2 = sub_1B2115EE8();
  result = v3(v2);
  if (v5)
  {
    return 0;
  }

  v6 = result;
  v7 = v0[8];
  if (!v7)
  {
    return sub_1B21B9EDC(result);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (sqlite3_column_type(v1[8], result) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(v7, v6);
  if (result)
  {
    return sub_1B2252400();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B2149824()
{
  v3 = *v0;
  *(v1 - 128) = *(v0 - 1);
  *(v1 - 120) = v3;
}

uint64_t sub_1B2149844()
{
}

sqlite3_int64 sub_1B2149894()
{
  v1 = v0;
  sub_1B211D964();
  sub_1B21139A0(v0 + 2, v0[5]);
  v2 = sub_1B2115EE8();
  v4 = v3(v2);
  v5 = v4;
  if (v6)
  {
    return v5;
  }

  v7 = v0[8];
  if (!v7)
  {
    sub_1B21B9F7C();
    return v8;
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(v1[8], v4) == 5)
    {
      return 0;
    }

    else
    {
      return sqlite3_column_int64(v7, v5);
    }
  }

  __break(1u);
  sub_1B213CE18();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B21499E4()
{
  sub_1B211ACC4();
  if ((v3 & 1) == 0 || (sub_1B2115F84(), v4 == v5))
  {
LABEL_6:
    sub_1B2118200();
    if (v2)
    {
      v9 = sub_1B21619D8(&qword_1EB7A0EE8, &unk_1B2254600);
      v10 = sub_1B2112F5C(v9);
      v6 = sub_1B21127CC(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_1B21117DC();
        sub_1B2149AC8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1B212CD20(v6, v7, v8, &type metadata for ColumnInfo);
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v4)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1B2149AC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B2149AF0()
{
  sub_1B211ACC4();
  if ((v3 & 1) == 0 || (sub_1B2115F84(), v4 == v5))
  {
LABEL_6:
    sub_1B2118200();
    if (v2)
    {
      v6 = sub_1B21619D8(&qword_1EB7A0EE8, &unk_1B2254600);
      v7 = sub_1B2112F5C(v6);
      sub_1B21127CC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1B21117DC();
        sub_1B2149AC8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v4)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1B2149BD0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2149C54();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1B2149C6C(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1B2149C6C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1B2252FC0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1B2252610();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_1B2149D70(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (*v10 >= *(v10 - 11))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B2149E50()
{
  sub_1B211AD88();
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B211D630(v10, v8);
  sub_1B211E590();
  sub_1B211744C();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_1B21619D8(v5, v3);
  if (sub_1B2121FA4(v17))
  {
    sub_1B211E590();
    sub_1B21150FC();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v0;
  if (v16)
  {
    *(*(v20 + 56) + 8 * v15) = v11;
    sub_1B21119F0();
  }

  else
  {
    v24(v15, v9, v7, v11, v20);
    sub_1B21119F0();
  }
}

char *sub_1B2149F90(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[10] >= *(v10 - 1))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B214A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1B211E590();
  sub_1B211744C();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1B21619D8(&qword_1EB7A1D38, &qword_1B225A798);
  if (sub_1B2252E70())
  {
    sub_1B211E590();
    sub_1B2118020();
    if (!v18)
    {
      goto LABEL_14;
    }

    v15 = v17;
  }

  v19 = *v6;
  if (v16)
  {
    v20 = *(v19 + 56) + 24 * v15;
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = a3;
    sub_1B2111588();

    return sub_1B21AC4E4(v21, v22, v23);
  }

  else
  {
    sub_1B214A1B4(v15, a4, a5, a1, a2, a3, v19);
    sub_1B2111588();
  }
}

uint64_t sub_1B214A1B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B21157C0(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

uint64_t static Int64.fromDatabaseValue(_:)(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 != 1 || (*&result >= -9.22337204e18 ? (v4 = *&result < 9.22337204e18) : (v4 = 0), !v4))
    {
      *&result = COERCE_DOUBLE(sub_1B2111FA8());
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        *&result = COERCE_DOUBLE(sub_1B2122188(*&result));
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B214A274(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C90();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = ~(-1 << *(result + 32));
  while (v5 < *(a1 + 16))
  {
    v8 = *(a1 + 32 + 8 * v5++);
    for (result = sub_1B2253410(); ; result = v9 + 1)
    {
      v9 = result & v7;
      v10 = (result & v7) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v7);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == v8)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 8 * v9) = v8;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B214A3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *v4;
  if (v9)
  {
    sub_1B2252220();

    v10 = sub_1B21120EC();
    v14 = sub_1B214A5A8(v10, v11, v12, v13, v9);
    if (v14 != 1)
    {
      v17 = v14;
      v18 = v15;
      if (v15)
      {

        v20 = sub_1B21CACB8(v19, v18, sub_1B21CAE7C, sub_1B21CAE7C);

        a3 = v20;
      }

      else
      {
      }

      if (sub_1B214A608(v17, a3))
      {

        sub_1B21120EC();
        v21 = sub_1B21C7A3C();
        sub_1B21CC30C(v21);
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B214A630();
      }
    }

    *a4 = v9;
  }

  else
  {

    return sub_1B21C9744(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B214A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 1;
  }

  v6 = sub_1B2133834();
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = *(*(a5 + 56) + 16 * v6);

  return v8;
}

uint64_t sub_1B214A630()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v25 = v9;
  v11 = v10;
  sub_1B2133834();
  sub_1B211744C();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
  if (sub_1B2113040(v17))
  {
    sub_1B2133834();
    sub_1B2118020();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v0;
  if (v16)
  {
    v21 = (*(v20 + 56) + 16 * v15);
    *v21 = v11;
    v21[1] = v25;

    sub_1B21119F0();
  }

  else
  {
    sub_1B21CBF7C(v15, v8, v6, v4, v2, v11, v25, v20);

    sub_1B21119F0();
  }
}

unint64_t sub_1B214A77C(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v6 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v9 = (v7 + 32 + 16 * a2);
          v4 = *v9;
          v5 = v9[1];
          v17 = *(v7 + 32 + 16 * result);
          sub_1B213E100(*(v7 + 32 + 16 * result), *(&v17 + 1));
          sub_1B213E100(v4, v5);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_1B21956CC();
        v7 = v16;
LABEL_6:
        v10 = (v7 + 32 + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        *v10 = v4;
        v10[1] = v5;
        result = sub_1B213EA54(v11, v12);
        if (*(v7 + 16) <= v2)
        {
          __break(1u);
        }

        else
        {
          v13 = (v7 + 32 + 16 * v2);
          v14 = *v13;
          v15 = v13[1];
          *v13 = v17;
          result = sub_1B213EA54(v14, v15);
          *v3 = v7;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

__n128 sub_1B214A874(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B214A888(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B2253420();
  sub_1B214A8D0(v5, v2, v3);
  return sub_1B2253470();
}

uint64_t sub_1B214A8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1B2742F10](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B2742F10](v3, a2);
  }

  MEMORY[0x1B2742F10](2);

  return sub_1B2252370();
}

uint64_t sub_1B214A9B4(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  sub_1B21217FC(a2, v2 + 24);
  return v2;
}

uint64_t sub_1B214AA08@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for ColumnEncoder(0, *(*v2 + 80), *(*v2 + 88), a1);
  a2[4] = swift_getWitnessTable();
  *a2 = v2;
}

uint64_t sub_1B214AACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[4] = a3;
  sub_1B2116040();
  v21[0] = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214AB3C()
{

  sub_1B2113208((v0 + 24));
  return v0;
}

uint64_t sub_1B214AB64()
{
  v0 = sub_1B214AB3C();

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

void sub_1B214AB94()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B214ABF8();
    *v1 = v3;
  }
}

void sub_1B214ABF8()
{
  sub_1B2114660();
  if ((v5 & 1) == 0 || (sub_1B2115F84(), v6 == v7))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v4)
    {
      sub_1B2113B10(v8, v9, v10, v11, v12, v13);
      v14 = sub_1B211A23C();
      sub_1B2111554(v14);
      sub_1B211F5F8();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B214ACA8()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2114214();
    sub_1B214ABF8();
    *v0 = v4;
  }
}

void *ColumnExpression.sqlExpression.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  __src[0] = (*(a1 + 16))();
  __src[1] = v3;
  sub_1B2134F5C(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

void *sub_1B214AD60(uint64_t __src)
{
  *__srca = __src;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__srca);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

BOOL sub_1B214AD9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000033, 0x80000001B226E520);
  v9 = sub_1B214AEF4(a1, a2, a3, a4);
  MEMORY[0x1B2741EB0](v9);

  ppStmt[0] = 0;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = sub_1B2252350();

  LODWORD(v10) = sqlite3_prepare_v2(v10, (v11 + 32), -1, ppStmt, 0);

  sqlite3_finalize(ppStmt[0]);
  return v10 == 0;
}

uint64_t sub_1B214AEF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B213E100(a1, a2);
  v6 = sub_1B2113B50();
  MEMORY[0x1B2741EB0](v6);

  MEMORY[0x1B2741EB0](46, 0xE100000000000000);
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  return 0;
}

uint64_t sub_1B214AFE0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B214B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a8;
  v27 = a2;
  v32 = a3;
  v12 = sub_1B2252B00();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *(a6 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v18);
  if (sub_1B2122A98(v15, 1, a6) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v28[3] = a5;
    v28[4] = v26;
    v21 = sub_1B212FF14(v28);
    (*(*(a5 - 8) + 16))(v21, v27, a5);
    sub_1B21443FC(&v29, v28);
    sub_1B212AC5C(&v29, &qword_1EB7A0E30, &unk_1B2259360);
    v22 = v28;
  }

  else
  {
    (*(v16 + 32))(v20, v15, a6);
    *(&v30 + 1) = a5;
    v31 = v26;
    v23 = sub_1B212FF14(&v29);
    (*(*(a5 - 8) + 16))(v23, v27, a5);
    sub_1B2144B88(v20, &v29, a6, a9);
    (*(v16 + 8))(v20, a6);
    v22 = &v29;
  }

  return sub_1B2113208(v22);
}