uint64_t sub_18FB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_5:
    v38 = v9;
    v39 = a3;
    v37 = v10;
    while (1)
    {
      v49 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      v13 = *(v9 + 64);
      v52 = *(v9 + 48);
      v53 = v13;
      v50 = v11;
      v51 = v12;
      v14 = *(v9 + 80);
      v15 = *(v9 + 96);
      v16 = *(v9 + 112);
      v57 = *(v9 + 128);
      v55 = v15;
      v56 = v16;
      v54 = v14;
      v58 = *(v9 - 136);
      v17 = *(v9 - 120);
      v18 = *(v9 - 104);
      v19 = *(v9 - 72);
      v61 = *(v9 - 88);
      v62 = v19;
      v59 = v17;
      v60 = v18;
      v20 = *(v9 - 56);
      v21 = *(v9 - 40);
      v22 = *(v9 - 24);
      v66 = *(v9 - 8);
      v64 = v21;
      v65 = v22;
      v63 = v20;
      sub_2B0C(&qword_2294A8, &qword_1BC540);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C00E0;
      v45 = v54;
      v46 = v55;
      v47 = v56;
      v48 = v57;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v40 = v49;
      v41 = v50;
      *(inited + 32) = sub_18DC48(&v40, a5);
      v24 = BYTE8(v49);
      v25 = *(&v52 + 1);
      sub_429F8(&v49, &v40);
      sub_429F8(&v58, &v40);
      if (sub_2B404(v24, a6))
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      *(inited + 40) = v26;
      *(inited + 48) = v25;
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1C00E0;
      v45 = v63;
      v46 = v64;
      v47 = v65;
      v48 = v66;
      v42 = v60;
      v43 = v61;
      v44 = v62;
      v40 = v58;
      v41 = v59;
      *(v27 + 32) = sub_18DC48(&v40, a5);
      v28 = *(&v61 + 1);
      if (sub_2B404(SBYTE8(v58), a6))
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      *(v27 + 40) = v29;
      *(v27 + 48) = v28;
      v30 = sub_18DD00(v27, inited);
      swift_setDeallocating();
      swift_setDeallocating();
      sub_5C740(&v58);
      result = sub_5C740(&v49);
      if (v30)
      {
LABEL_4:
        a3 = v39 + 1;
        v9 = v38 + 136;
        v10 = v37 - 1;
        if (v39 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v31 = v9 - 136;
      v45 = *(v9 + 80);
      v46 = *(v9 + 96);
      v47 = *(v9 + 112);
      v48 = *(v9 + 128);
      v41 = *(v9 + 16);
      v42 = *(v9 + 32);
      v43 = *(v9 + 48);
      v44 = *(v9 + 64);
      v40 = *v9;
      v32 = *(v9 - 56);
      *(v9 + 64) = *(v9 - 72);
      *(v9 + 80) = v32;
      v33 = *(v9 - 24);
      *(v9 + 96) = *(v9 - 40);
      *(v9 + 112) = v33;
      *(v9 + 128) = *(v9 - 8);
      v34 = *(v9 - 88);
      *(v9 + 32) = *(v9 - 104);
      *(v9 + 48) = v34;
      v35 = *(v9 - 120);
      *v9 = *(v9 - 136);
      *(v9 + 16) = v35;
      *(v31 + 64) = v44;
      *(v31 + 80) = v45;
      *(v31 + 96) = v46;
      *(v31 + 112) = v47;
      *(v31 + 128) = v48;
      *(v31 + 16) = v41;
      *(v31 + 32) = v42;
      *(v31 + 48) = v43;
      *v31 = v40;
      if (!v10)
      {
        goto LABEL_4;
      }

      ++v10;
      v9 -= 136;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_18FECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_1B5584(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1B4B34();
        v10[2] = v9;
      }

      v11[0] = (v10 + 4);
      v11[1] = v9;

      sub_18ED98(v11, v12, a1, v8, a2, a3);

      v10[2] = 0;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
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

    sub_18FB88(0, v6, 1, a1, a2, a3);
  }

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_190070(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_56B58(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = (v6 + 32);
  v9[1] = v7;

  sub_18FECC(v9, a2, a3);

  *a1 = v6;
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_19014C(uint64_t *a1, char *a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = *a1 + 56;
  v9 = 1 << *(*a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (v11)
  {
    v15 = v11;
LABEL_10:
    v11 = (v15 - 1) & v15;
    if (*(a2 + 2))
    {
      v17 = sub_43124(*(*(v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v15))))));
      if (v18)
      {
        v19 = *(a2 + 7) + 136 * v17;
        v64 = *v19;
        v20 = *(v19 + 64);
        v22 = *(v19 + 16);
        v21 = *(v19 + 32);
        v67 = *(v19 + 48);
        v68 = v20;
        v65 = v22;
        v66 = v21;
        v24 = *(v19 + 96);
        v23 = *(v19 + 112);
        v25 = *(v19 + 80);
        v72 = *(v19 + 128);
        v70 = v24;
        v71 = v23;
        v69 = v25;
        sub_429F8(&v64, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_33358(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v62 = v27 + 1;
          v36 = v14;
          v37 = *(v14 + 2);
          v38 = sub_33358((v26 > 1), v27 + 1, 1, v36);
          v27 = v37;
          v28 = v62;
          v14 = v38;
        }

        *(v14 + 2) = v28;
        v29 = &v14[136 * v27];
        *(v29 + 2) = v64;
        v30 = v65;
        v31 = v66;
        v32 = v68;
        *(v29 + 5) = v67;
        *(v29 + 6) = v32;
        *(v29 + 3) = v30;
        *(v29 + 4) = v31;
        v33 = v69;
        v34 = v70;
        v35 = v71;
        v29[160] = v72;
        *(v29 + 8) = v34;
        *(v29 + 9) = v35;
        *(v29 + 7) = v33;
      }
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v16 >= v12)
    {
      break;
    }

    v15 = *(v8 + 8 * v16);
    ++v13;
    if (v15)
    {
      v13 = v16;
      goto LABEL_10;
    }
  }

  if (*(a3 + 16) && (v39 = sub_3B15C(v7), (v40 & 1) != 0))
  {
    v41 = *(*(a3 + 56) + 8 * v39);

    if (!a4[2])
    {
LABEL_24:
      v44 = _swiftEmptySetSingleton;
      goto LABEL_25;
    }
  }

  else
  {
    v41 = _swiftEmptySetSingleton;
    if (!a4[2])
    {
      goto LABEL_24;
    }
  }

  v42 = sub_3B15C(v7);
  if ((v43 & 1) == 0)
  {
    goto LABEL_24;
  }

  v44 = *(a4[7] + 8 * v42);

LABEL_25:
  v45 = v73;
  *&v64 = v14;

  sub_190070(&v64, v41, v44);
  if (v45)
  {
LABEL_44:

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v46 = v64;
  v47 = *(v64 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = *(v64 + 40);
    v50 = _swiftEmptyArrayStorage;
LABEL_28:
    v51 = v46 + 136 * v48;
    while (v47 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_43;
      }

      ++v48;
      v52 = (v51 + 136);
      v53 = *(v51 + 144);
      v51 += 136;
      if (v53 != 2)
      {
        v73 = v14;
        v54 = *v52;
        v55 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_33008(0, *(v50 + 2) + 1, 1, v50);
        }

        v57 = *(v50 + 2);
        v56 = *(v50 + 3);
        if (v57 >= v56 >> 1)
        {
          v50 = sub_33008((v56 > 1), v57 + 1, 1, v50);
        }

        *(v50 + 2) = v57 + 1;
        *&v50[8 * v57 + 32] = v54;
        v49 = v55;
        v14 = v73;
        goto LABEL_28;
      }
    }

    v58 = *(v50 + 2);
    if (v58)
    {
      v59 = *(v50 + 4);
    }

    else
    {
      v59 = 0;
    }

    v61 = v58 == 0;

    sub_18A23C(v14, v49, v59, v61);
  }

  else
  {
  }
}

uint64_t sub_190570(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 136;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 136;
  if (v10 >= v12)
  {
    v30 = 136 * v12;
    if (a4 != __src || &__src[v30] <= a4)
    {
      memmove(a4, __src, 136 * v12);
    }

    v14 = &v5[v30];
    if (v11 >= 136 && v7 > v8)
    {
LABEL_23:
      v31 = v7 - 136;
      v6 -= 136;
      v32 = v14;
      do
      {
        v14 = v32;
        v33 = v6 + 136;
        v55 = *(v32 - 136);
        v34 = *(v32 - 120);
        v35 = *(v32 - 104);
        v36 = *(v32 - 72);
        v58 = *(v32 - 88);
        v59 = v36;
        v56 = v34;
        v57 = v35;
        v37 = *(v32 - 56);
        v38 = *(v32 - 40);
        v39 = *(v32 - 24);
        v63 = *(v32 - 8);
        v61 = v38;
        v62 = v39;
        v60 = v37;
        v40 = *(v7 - 88);
        v66 = *(v7 - 104);
        v67 = v40;
        v41 = *(v7 - 120);
        v64 = *v31;
        v65 = v41;
        v72 = *(v7 - 8);
        v42 = *(v7 - 24);
        v70 = *(v7 - 40);
        v71 = v42;
        v43 = *(v7 - 56);
        v68 = *(v7 - 72);
        v69 = v43;
        v51 = v55;
        v52 = v56;
        v53 = v57;
        v54 = v58;
        sub_429F8(&v55, &v47);
        sub_429F8(&v64, &v47);
        sub_42BA4(&v55, &v47);
        swift_getAtKeyPath();
        v73 = v51;
        v74 = v52;
        v75 = v53;
        v76 = v54;
        sub_43FF4(&v73);
        v47 = v64;
        v48 = v65;
        v49 = v66;
        v50 = v67;
        sub_42BA4(&v64, &v51);
        swift_getAtKeyPath();
        v77 = v47;
        v78 = v48;
        v79 = v49;
        v80 = v50;
        sub_43FF4(&v77);
        sub_5C740(&v64);
        sub_5C740(&v55);
        v44 = *&v51 < v81;
        if (v81 == *&v51)
        {
          v44 = v55 < v64;
        }

        if (v44)
        {
          if (v33 < v7 || v6 >= v7 || v33 != v7)
          {
            memmove(v6, v7 - 136, 0x88uLL);
          }

          if (v32 <= v5 || (v7 -= 136, v31 <= v8))
          {
            v7 = v31;
            goto LABEL_42;
          }

          goto LABEL_23;
        }

        v32 -= 136;
        if (v33 < v14 || v6 >= v14 || v33 != v14)
        {
          memmove(v6, v14 - 136, 0x88uLL);
        }

        v6 -= 136;
      }

      while (v32 > v5);
      v14 -= 136;
    }
  }

  else
  {
    v13 = 136 * v10;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, v13);
    }

    v14 = &v5[v13];
    if (v9 < 136)
    {
      v7 = v8;
    }

    else
    {
      if (v7 < v6)
      {
        while (1)
        {
          v55 = *v7;
          v15 = *(v7 + 1);
          v16 = *(v7 + 2);
          v17 = *(v7 + 4);
          v58 = *(v7 + 3);
          v59 = v17;
          v56 = v15;
          v57 = v16;
          v18 = *(v7 + 5);
          v19 = *(v7 + 6);
          v20 = *(v7 + 7);
          v63 = v7[128];
          v61 = v19;
          v62 = v20;
          v60 = v18;
          v64 = *v5;
          v21 = *(v5 + 1);
          v22 = *(v5 + 2);
          v23 = *(v5 + 4);
          v67 = *(v5 + 3);
          v68 = v23;
          v65 = v21;
          v66 = v22;
          v24 = *(v5 + 5);
          v25 = *(v5 + 6);
          v26 = *(v5 + 7);
          v72 = v5[128];
          v70 = v25;
          v71 = v26;
          v69 = v24;
          v73 = v55;
          v74 = v56;
          v75 = v57;
          v76 = v58;
          sub_429F8(&v55, &v47);
          sub_429F8(&v64, &v47);
          sub_42BA4(&v55, &v47);
          swift_getAtKeyPath();
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          sub_43FF4(&v77);
          v73 = v64;
          v74 = v65;
          v75 = v66;
          v76 = v67;
          sub_42BA4(&v64, &v47);
          swift_getAtKeyPath();
          v47 = v73;
          v48 = v74;
          v49 = v75;
          v50 = v76;
          sub_43FF4(&v47);
          sub_5C740(&v64);
          sub_5C740(&v55);
          v27 = v81 < *&v51;
          if (*&v51 == v81)
          {
            v27 = v55 < v64;
          }

          if (!v27)
          {
            break;
          }

          v28 = v7;
          v29 = v8 == v7;
          v7 += 136;
          if (!v29)
          {
            goto LABEL_14;
          }

LABEL_15:
          v8 += 136;
          if (v5 >= v14 || v7 >= v6)
          {
            goto LABEL_17;
          }
        }

        v28 = v5;
        v29 = v8 == v5;
        v5 += 136;
        if (v29)
        {
          goto LABEL_15;
        }

LABEL_14:
        memmove(v8, v28, 0x88uLL);
        goto LABEL_15;
      }

LABEL_17:
      v7 = v8;
    }
  }

LABEL_42:
  v45 = 136 * ((v14 - v5) / 136);
  if (v7 != v5 || v7 >= &v5[v45])
  {
    memmove(v7, v5, v45);
  }

  return 1;
}

uint64_t sub_190A4C(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_52E40(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 136 * *v6);
      v15 = (v10 + 136 * *v13);
      v16 = (v10 + 136 * v14);

      sub_190570(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_190BF8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v187 = _swiftEmptyArrayStorage;
  swift_retain_n();
  if (v7 < 1)
  {
LABEL_97:
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    sub_190A4C(&v187, v132, a3, a5);
    if (!v142)
    {
    }

LABEL_100:
  }

  v134 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v141 = a5;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_27;
    }

    v12 = *a3;
    v13 = *a3 + 136 * v11;
    v183[0] = *v13;
    v14 = *(v13 + 64);
    v16 = *(v13 + 16);
    v15 = *(v13 + 32);
    v183[3] = *(v13 + 48);
    v183[4] = v14;
    v183[1] = v16;
    v183[2] = v15;
    v18 = *(v13 + 96);
    v17 = *(v13 + 112);
    v19 = *(v13 + 80);
    v184 = *(v13 + 128);
    v183[6] = v18;
    v183[7] = v17;
    v183[5] = v19;
    v20 = v12 + 136 * v10;
    v21 = *(v20 + 80);
    v22 = *(v20 + 96);
    v23 = *(v20 + 112);
    v186 = *(v20 + 128);
    v185[6] = v22;
    v185[7] = v23;
    v185[5] = v21;
    v24 = *(v20 + 16);
    v25 = *(v20 + 32);
    v26 = *(v20 + 64);
    v185[3] = *(v20 + 48);
    v185[4] = v26;
    v185[1] = v24;
    v185[2] = v25;
    v185[0] = *v20;
    sub_429F8(v183, &v166);
    sub_429F8(v185, &v166);
    v27 = sub_18E1E4(v183, v185, a5);
    if (v142)
    {
      sub_5C740(v185);
      sub_5C740(v183);
      goto LABEL_100;
    }

    v28 = v27;
    sub_5C740(v185);
    sub_5C740(v183);
    v29 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      v8 = v10 + 2;
      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v30 = v12 + 136 * v10 + 272;
    while (1)
    {
      v8 = v29;
      v157 = *v30;
      v31 = *(v30 + 16);
      v32 = *(v30 + 32);
      v33 = *(v30 + 64);
      v160 = *(v30 + 48);
      v161 = v33;
      v158 = v31;
      v159 = v32;
      v34 = *(v30 + 80);
      v35 = *(v30 + 96);
      v36 = *(v30 + 112);
      v165 = *(v30 + 128);
      v163 = v35;
      v164 = v36;
      v162 = v34;
      v166 = *(v30 - 136);
      v37 = *(v30 - 120);
      v38 = *(v30 - 104);
      v39 = *(v30 - 72);
      v169 = *(v30 - 88);
      v170 = v39;
      v167 = v37;
      v168 = v38;
      v40 = *(v30 - 56);
      v41 = *(v30 - 40);
      v42 = *(v30 - 24);
      v174 = *(v30 - 8);
      v172 = v41;
      v173 = v42;
      v171 = v40;
      v175 = v157;
      v176 = v158;
      v177 = v159;
      v178 = v160;
      sub_429F8(&v157, &v143);
      sub_429F8(&v166, &v143);
      sub_42BA4(&v157, &v143);
      swift_getAtKeyPath();
      v179 = v175;
      v180 = v176;
      v181 = v177;
      v182 = v178;
      sub_43FF4(&v179);
      v175 = v166;
      v176 = v167;
      v177 = v168;
      v178 = v169;
      sub_42BA4(&v166, &v143);
      swift_getAtKeyPath();
      v143 = v175;
      v144 = v176;
      v145 = v177;
      v146 = v178;
      sub_43FF4(&v143);
      sub_5C740(&v166);
      sub_5C740(&v157);
      v43 = v157 >= v166;
      if (*&v152 != v156)
      {
        v43 = v156 >= *&v152;
      }

      if (v28 == v43)
      {
        break;
      }

      v29 = v8 + 1;
      v30 += 136;
      if (v7 == v8 + 1)
      {
        v11 = v8;
        v8 = v7;
        if (!v28)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (v8 >= v10)
        {
          if (v10 <= v11)
          {
            v44 = 136 * v8 - 136;
            v45 = v8;
            v46 = 136 * v10;
            v47 = v45;
            v48 = v10;
            do
            {
              if (v48 != --v45)
              {
                v49 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v50 = v49 + v44;
                v171 = *(v49 + v46 + 80);
                v172 = *(v49 + v46 + 96);
                v173 = *(v49 + v46 + 112);
                v174 = *(v49 + v46 + 128);
                v167 = *(v49 + v46 + 16);
                v168 = *(v49 + v46 + 32);
                v169 = *(v49 + v46 + 48);
                v170 = *(v49 + v46 + 64);
                v166 = *(v49 + v46);
                memmove((v49 + v46), (v49 + v44), 0x88uLL);
                *(v50 + 80) = v171;
                *(v50 + 96) = v172;
                *(v50 + 112) = v173;
                *(v50 + 128) = v174;
                *(v50 + 16) = v167;
                *(v50 + 32) = v168;
                *(v50 + 48) = v169;
                *(v50 + 64) = v170;
                *v50 = v166;
              }

              ++v48;
              v44 -= 136;
              v46 += 136;
            }

            while (v48 < v45);
            v8 = v47;
          }

          goto LABEL_27;
        }

LABEL_123:
        __break(1u);
LABEL_124:

        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:

        __break(1u);
        goto LABEL_127;
      }
    }

    v11 = v8 - 1;
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_27:
    v51 = a3[1];
    if (v8 < v51)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < v134)
      {
        if (__OFADD__(v10, v134))
        {
          goto LABEL_121;
        }

        if (v10 + v134 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v10 + v134;
        }

        if (v52 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v52)
        {
          v53 = *a3;
          v54 = v10;
          v55 = *a3 + 136 * v8;
          v138 = v54;
          v56 = v54 - v8 + 1;
          do
          {
            v57 = v8;
            v58 = v56;
            for (i = v55; ; i -= 136)
            {
              v157 = *i;
              v60 = *(i + 16);
              v61 = *(i + 32);
              v62 = *(i + 64);
              v160 = *(i + 48);
              v161 = v62;
              v158 = v60;
              v159 = v61;
              v63 = *(i + 80);
              v64 = *(i + 96);
              v65 = *(i + 112);
              v165 = *(i + 128);
              v163 = v64;
              v164 = v65;
              v162 = v63;
              v166 = *(i - 136);
              v66 = *(i - 120);
              v67 = *(i - 104);
              v68 = *(i - 72);
              v169 = *(i - 88);
              v170 = v68;
              v167 = v66;
              v168 = v67;
              v69 = *(i - 56);
              v70 = *(i - 40);
              v71 = *(i - 24);
              v174 = *(i - 8);
              v172 = v70;
              v173 = v71;
              v171 = v69;
              v152 = v157;
              v153 = v158;
              v154 = v159;
              v155 = v160;
              sub_429F8(&v157, &v143);
              sub_429F8(&v166, &v143);
              sub_42BA4(&v157, &v143);
              swift_getAtKeyPath();
              v175 = v152;
              v176 = v153;
              v177 = v154;
              v178 = v155;
              sub_43FF4(&v175);
              v143 = v166;
              v144 = v167;
              v145 = v168;
              v146 = v169;
              sub_42BA4(&v166, &v152);
              swift_getAtKeyPath();
              v179 = v143;
              v180 = v144;
              v181 = v145;
              v182 = v146;
              sub_43FF4(&v179);
              sub_5C740(&v166);
              sub_5C740(&v157);
              v72 = *&v152 < v156;
              if (v156 == *&v152)
              {
                v72 = v157 < v166;
              }

              if (!v72)
              {
                break;
              }

              if (!v53)
              {
                goto LABEL_124;
              }

              v73 = i - 136;
              v148 = *(i + 80);
              v149 = *(i + 96);
              v150 = *(i + 112);
              v151 = *(i + 128);
              v144 = *(i + 16);
              v145 = *(i + 32);
              v146 = *(i + 48);
              v147 = *(i + 64);
              v143 = *i;
              v74 = *(i - 56);
              *(i + 64) = *(i - 72);
              *(i + 80) = v74;
              v75 = *(i - 24);
              *(i + 96) = *(i - 40);
              *(i + 112) = v75;
              *(i + 128) = *(i - 8);
              v76 = *(i - 88);
              *(i + 32) = *(i - 104);
              *(i + 48) = v76;
              v77 = *(i - 120);
              *i = *(i - 136);
              *(i + 16) = v77;
              *(v73 + 64) = v147;
              *(v73 + 80) = v148;
              *(v73 + 96) = v149;
              *(v73 + 112) = v150;
              *(v73 + 128) = v151;
              *(v73 + 16) = v144;
              *(v73 + 32) = v145;
              *(v73 + 48) = v146;
              *v73 = v143;
              if (!v58)
              {
                break;
              }

              ++v58;
            }

            v8 = v57 + 1;
            v55 += 136;
            --v56;
          }

          while (v57 + 1 != v52);
          v8 = v52;
          v10 = v138;
        }
      }
    }

    if (v8 < v10)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_32F04(0, *(v9 + 2) + 1, 1, v9);
    }

    v79 = *(v9 + 2);
    v78 = *(v9 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v9 = sub_32F04((v78 > 1), v79 + 1, 1, v9);
    }

    *(v9 + 2) = v80;
    v81 = v9 + 32;
    v82 = &v9[16 * v79 + 32];
    *v82 = v10;
    *(v82 + 1) = v8;
    v187 = v9;
    v139 = *a1;
    if (!*a1)
    {
      break;
    }

    if (v79)
    {
      v135 = v8;
      v137 = v9 + 32;
      while (1)
      {
        v83 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v9 + 4);
          v85 = *(v9 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_67:
          if (v87)
          {
            goto LABEL_110;
          }

          v100 = &v9[16 * v80];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_113;
          }

          v106 = &v81[16 * v83];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_117;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v80 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v110 = &v9[16 * v80];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_81:
        if (v105)
        {
          goto LABEL_112;
        }

        v113 = &v81[16 * v83];
        v115 = *v113;
        v114 = *(v113 + 1);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_115;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_88:
        if (v83 - 1 >= v80)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_122;
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_125;
        }

        v122 = v9;
        v123 = &v81[16 * v83 - 16];
        v124 = *v123;
        v125 = v83;
        v126 = &v81[16 * v83];
        v127 = *(v126 + 1);
        v128 = (v121 + 136 * *v123);
        v129 = (v121 + 136 * *v126);
        v130 = (v121 + 136 * v127);

        sub_190570(v128, v129, v130, v139, v141);
        if (v142)
        {

          v187 = v122;
          goto LABEL_100;
        }

        if (v127 < v124)
        {
          goto LABEL_105;
        }

        v131 = *(v122 + 2);
        if (v125 > v131)
        {
          goto LABEL_106;
        }

        *v123 = v124;
        *(v123 + 1) = v127;
        if (v125 >= v131)
        {
          goto LABEL_107;
        }

        v142 = 0;
        v80 = v131 - 1;
        memmove(v126, v126 + 16, 16 * (v131 - 1 - v125));
        v9 = v122;
        *(v122 + 2) = v131 - 1;
        v81 = v137;
        a5 = v141;
        if (v131 <= 2)
        {
LABEL_3:
          v187 = v9;
          v8 = v135;
          goto LABEL_4;
        }
      }

      v88 = &v81[16 * v80];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_108;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_109;
      }

      v95 = &v9[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_111;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_114;
      }

      if (v99 >= v91)
      {
        v117 = &v81[16 * v83];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_118;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_4:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_97;
    }
  }

LABEL_127:

  __break(1u);
LABEL_128:

  __break(1u);
  return result;
}

uint64_t sub_191668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = *a4;
    v8 = *a4 + 136 * a3;
    v9 = result - a3 + 1;
LABEL_5:
    v10 = v9;
    for (i = v8; ; i -= 136)
    {
      v43 = *i;
      v12 = *(i + 16);
      v13 = *(i + 32);
      v14 = *(i + 64);
      v46 = *(i + 48);
      v47 = v14;
      v44 = v12;
      v45 = v13;
      v15 = *(i + 80);
      v16 = *(i + 96);
      v17 = *(i + 112);
      v51 = *(i + 128);
      v49 = v16;
      v50 = v17;
      v48 = v15;
      v52 = *(i - 136);
      v18 = *(i - 120);
      v19 = *(i - 104);
      v20 = *(i - 72);
      v55 = *(i - 88);
      v56 = v20;
      v53 = v18;
      v54 = v19;
      v21 = *(i - 56);
      v22 = *(i - 40);
      v23 = *(i - 24);
      v60 = *(i - 8);
      v58 = v22;
      v59 = v23;
      v57 = v21;
      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
      sub_429F8(&v43, &v30);
      sub_429F8(&v52, &v30);
      sub_42BA4(&v43, &v30);
      swift_getAtKeyPath();
      v61[0] = v39;
      v61[1] = v40;
      v61[2] = v41;
      v61[3] = v42;
      sub_43FF4(v61);
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v33 = v55;
      sub_42BA4(&v52, &v39);
      swift_getAtKeyPath();
      v62[0] = v30;
      v62[1] = v31;
      v62[2] = v32;
      v62[3] = v33;
      sub_43FF4(v62);
      sub_5C740(&v52);
      result = sub_5C740(&v43);
      v24 = *&v39 < v63;
      if (v63 == *&v39)
      {
        v24 = v43 < v52;
      }

      if (!v24)
      {
LABEL_4:
        ++v5;
        v8 += 136;
        --v9;
        if (v5 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v25 = i - 136;
      v35 = *(i + 80);
      v36 = *(i + 96);
      v37 = *(i + 112);
      v38 = *(i + 128);
      v31 = *(i + 16);
      v32 = *(i + 32);
      v33 = *(i + 48);
      v34 = *(i + 64);
      v30 = *i;
      v26 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v26;
      v27 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v27;
      *(i + 128) = *(i - 8);
      v28 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v28;
      v29 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v29;
      *(v25 + 64) = v34;
      *(v25 + 80) = v35;
      *(v25 + 96) = v36;
      *(v25 + 112) = v37;
      *(v25 + 128) = v38;
      *(v25 + 16) = v31;
      *(v25 + 32) = v32;
      *(v25 + 48) = v33;
      *v25 = v30;
      if (!v10)
      {
        goto LABEL_4;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_19191C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1B5584(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1B4B34();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      sub_190BF8(v9, v10, a1, v6, a2);

      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_191668(0, v4, 1, a1, a2);
  }
}

uint64_t sub_191A64(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_56B58(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_19191C(v7, a2);

  *a1 = v4;
}

uint64_t sub_191B08(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v69 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v20)
  {
    v19 = v9;
    v20 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 88 * v22;
    v25 = *(v24 + 16);
    v54[0] = *v24;
    v54[1] = v25;
    v27 = *(v24 + 48);
    v26 = *(v24 + 64);
    v28 = *(v24 + 32);
    v55 = *(v24 + 80);
    v54[3] = v27;
    v54[4] = v26;
    v54[2] = v28;
    v29 = *(v24 + 48);
    *&v53[40] = *(v24 + 32);
    *&v53[56] = v29;
    *&v53[72] = *(v24 + 64);
    *&v53[88] = *(v24 + 80);
    v30 = *(v24 + 16);
    *&v53[8] = *v24;
    *&v53[24] = v30;
    *v53 = v23;
    sub_5EDD8(v54, &v56);
    a2(&v62, v53);
    v58 = *&v53[32];
    v59 = *&v53[48];
    v60 = *&v53[64];
    v61 = *&v53[80];
    v56 = *v53;
    v57 = *&v53[16];
    sub_193878(&v56);
    if (!*(&v63 + 1))
    {
LABEL_22:
      sub_417B8(a1);
    }

    v31 = a4;
    v32 = v62;
    v33 = *v69;
    v35 = sub_43124(v62);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if ((v31 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      sub_17FD40(v38, v31 & 1);
      v40 = sub_43124(v32);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_26;
      }

      v35 = v40;
    }

    v9 = (v19 - 1) & v19;
    if (v39)
    {
      v12 = *(*v69 + 56) + 88 * v35;
      v13 = *(v12 + 16);
      v56 = *v12;
      v57 = v13;
      v15 = *(v12 + 48);
      v14 = *(v12 + 64);
      v16 = *(v12 + 32);
      *&v61 = *(v12 + 80);
      v59 = v15;
      v60 = v14;
      v58 = v16;
      v17 = v66;
      *(v12 + 32) = v65;
      *(v12 + 48) = v17;
      *(v12 + 64) = v67;
      *(v12 + 80) = v68;
      v18 = v64;
      *v12 = v63;
      *(v12 + 16) = v18;
      sub_85554(&v56);
    }

    else
    {
      v42 = *v69;
      v42[(v35 >> 6) + 8] |= 1 << v35;
      *(v42[6] + 8 * v35) = v32;
      v43 = v42[7] + 88 * v35;
      v44 = v64;
      *v43 = v63;
      *(v43 + 16) = v44;
      *(v43 + 80) = v68;
      v45 = v67;
      v46 = v65;
      *(v43 + 48) = v66;
      *(v43 + 64) = v45;
      *(v43 + 32) = v46;
      v47 = v42[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_25;
      }

      v42[2] = v49;
    }

    a4 = 1;
  }

  v21 = i;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v10)
    {
      goto LABEL_22;
    }

    v19 = *(v6 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_191E50(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = _swiftEmptyDictionarySingleton;
  v132 = v1;
  while (1)
  {
    v8 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v6 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = *(a1 + 56) + 88 * v10;
    v13 = *(v12 + 64);
    v14 = *(v12 + 80);
    v15 = *(v12 + 32);
    v146 = *(v12 + 48);
    v16 = *(v12 + 16);
    v143 = *v12;
    v144 = v16;
    v148 = v14;
    v145 = v15;
    v147 = v13;
    if (BYTE8(v146) != 2)
    {
      v17 = v7;
      v18 = v146;
      sub_5EDD8(&v143, v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142[0] = v17;
      v20 = sub_43124(v11);
      v22 = v17[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_128;
      }

      v26 = v21;
      if (v17[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v29 = v20;
        sub_18535C();
        v20 = v29;
        v28 = v142[0];
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:
        *(v28[7] + 8 * v20) = v18;
        sub_85554(&v143);
        v7 = v28;
        v1 = v132;
      }

      else
      {
        sub_17D544(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_43124(v11);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_130;
        }

LABEL_14:
        v28 = v142[0];
        if (v26)
        {
          goto LABEL_15;
        }

LABEL_17:
        v28[(v20 >> 6) + 8] |= 1 << v20;
        *(v28[6] + 8 * v20) = v11;
        *(v28[7] + 8 * v20) = v18;
        sub_85554(&v143);
        v30 = v28[2];
        v24 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v24)
        {
          goto LABEL_129;
        }

        v7 = v28;
        v28[2] = v31;
        v1 = v132;
      }
    }
  }

  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_120;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v32 = v7 + 8;
  v33 = 1 << *(v7 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v7[8];
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  v136 = v7;
  v137 = v7 + 8;
  if (v35)
  {
    while (1)
    {
LABEL_26:
      v40 = (v37 << 9) | (8 * __clz(__rbit64(v35)));
      v41 = v7[7];
      v42 = *(v7[6] + v40);
      v43 = *(v41 + v40);
      v44 = v38;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v143 = v44;
      v47 = sub_43124(v43);
      v48 = v44[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_124;
      }

      v51 = v46;
      if (v44[3] < v50)
      {
        break;
      }

      if (v45)
      {
        if ((v46 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1854E4();
        v44 = v143;
        if ((v51 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_35:
      v57 = v44[7];
      v58 = *(v57 + 8 * v47);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + 8 * v47) = v58;
      if ((v59 & 1) == 0)
      {
        v58 = sub_33008(0, *(v58 + 2) + 1, 1, v58);
        *(v57 + 8 * v47) = v58;
      }

      v61 = *(v58 + 2);
      v60 = *(v58 + 3);
      if (v61 >= v60 >> 1)
      {
        v62 = sub_33008((v60 > 1), v61 + 1, 1, v58);
        v38 = v44;
        v58 = v62;
        *(v57 + 8 * v47) = v62;
      }

      else
      {
        v38 = v44;
      }

      v35 &= v35 - 1;
      *(v58 + 2) = v61 + 1;
      *&v58[8 * v61 + 32] = v42;
      v7 = v136;
      v32 = v137;
      if (!v35)
      {
        goto LABEL_22;
      }
    }

    sub_17D824(v50, v45);
    v52 = v143;
    v53 = sub_43124(v43);
    if ((v51 & 1) != (v54 & 1))
    {
      goto LABEL_130;
    }

    v47 = v53;
    v44 = v52;
    if (v51)
    {
      goto LABEL_35;
    }

LABEL_33:
    v44[(v47 >> 6) + 8] |= 1 << v47;
    *(v44[6] + 8 * v47) = v43;
    *(v44[7] + 8 * v47) = _swiftEmptyArrayStorage;
    v55 = v44[2];
    v24 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v24)
    {
      goto LABEL_126;
    }

    v44[2] = v56;
    goto LABEL_35;
  }

  while (1)
  {
LABEL_22:
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_121;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = v32[v39];
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_26;
    }
  }

  v131 = v38;

  v63 = 1 << *(a1 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(a1 + 64);
  v66 = (v63 + 63) >> 6;

  v67 = 0;
  v68 = _swiftEmptyDictionarySingleton;
  v129 = v66;
  while (2)
  {
    if (v65)
    {
      v69 = v67;
    }

    else
    {
      do
      {
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_122;
        }

        if (v69 >= v66)
        {

          *&v143 = v68;
          v120 = 1 << *(v7 + 32);
          v121 = -1;
          if (v120 < 64)
          {
            v121 = ~(-1 << v120);
          }

          v122 = v121 & v7[8];
          v123 = (v120 + 63) >> 6;

          v124 = 0;
          if (!v122)
          {
            goto LABEL_109;
          }

          while (1)
          {
            v125 = v124;
            v126 = v131;
            while (1)
            {
              v127 = __clz(__rbit64(v122));
              v122 &= v122 - 1;
              sub_18DD80(*(v7[6] + ((v125 << 9) | (8 * v127))), *(v7[7] + ((v125 << 9) | (8 * v127))), v126, &v143);
              if (v122)
              {
                break;
              }

LABEL_109:
              v126 = v131;
              do
              {
                v125 = v124 + 1;
                if (__OFADD__(v124, 1))
                {
                  goto LABEL_123;
                }

                if (v125 >= v123)
                {

                  return v143;
                }

                v122 = v32[v125];
                ++v124;
              }

              while (!v122);
              v124 = v125;
            }
          }
        }

        v65 = *(v132 + 8 * v69);
        ++v67;
      }

      while (!v65);
    }

    v133 = v69;
    v70 = __clz(__rbit64(v65)) | (v69 << 6);
    v71 = *(*(a1 + 48) + 8 * v70);
    v72 = *(a1 + 56) + 88 * v70;
    v73 = *v72;
    v144 = *(v72 + 16);
    v75 = *(v72 + 48);
    v74 = *(v72 + 64);
    v76 = *(v72 + 80);
    v145 = *(v72 + 32);
    v146 = v75;
    v143 = v73;
    v148 = v76;
    v147 = v74;
    v77 = *(&v144 + 1);
    v78 = _swiftEmptyArrayStorage;
    v134 = v145;
    if ((v145 & 1) == 0)
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v78 = swift_allocObject();
      *(v78 + 1) = xmmword_1BCA80;
      v78[4] = v77;
    }

    v141 = v78;
    if (v148)
    {
      v79 = v148;
    }

    else
    {
      v79 = _swiftEmptyArrayStorage;
    }

    sub_5EDD8(&v143, v142);

    v135 = v79;
    sub_5F33C(v79);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v68;
    v82 = sub_43124(v71);
    v83 = v68[2];
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      goto LABEL_125;
    }

    v86 = v81;
    if (v68[3] >= v85)
    {
      if (v80)
      {
        v68 = v142[0];
        if (v81)
        {
          goto LABEL_68;
        }
      }

      else
      {
        sub_187930();
        v68 = v142[0];
        if (v86)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_66;
    }

    sub_1825E8(v85, v80);
    v87 = sub_43124(v71);
    if ((v86 & 1) != (v88 & 1))
    {
      goto LABEL_130;
    }

    v82 = v87;
    v68 = v142[0];
    if ((v86 & 1) == 0)
    {
LABEL_66:
      v68[(v82 >> 6) + 8] |= 1 << v82;
      *(v68[6] + 8 * v82) = v71;
      *(v68[7] + 8 * v82) = _swiftEmptySetSingleton;
      v89 = v68[2];
      v24 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v24)
      {
        goto LABEL_127;
      }

      v68[2] = v90;
    }

LABEL_68:
    v91 = v141[2];
    if (v91)
    {
      v130 = v77;
      v139 = v65;
      v92 = 0;
      v93 = v68[7];
      do
      {
        v95 = v141[v92++ + 4];
        v96 = *(v93 + 8 * v82);
        v97 = sub_1B57E4();
        v98 = -1 << *(v96 + 32);
        v99 = v97 & ~v98;
        if ((*(v96 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
        {
          v100 = ~v98;
          while (*(*(v96 + 48) + 8 * v99) != v95)
          {
            v99 = (v99 + 1) & v100;
            if (((*(v96 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
LABEL_70:
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v142[0] = *(v93 + 8 * v82);
          sub_115EFC(v95, v99, v94);
          *(v93 + 8 * v82) = v142[0];
        }
      }

      while (v92 != v91);

      v7 = v136;
      v65 = v139;
      v77 = v130;
    }

    else
    {
    }

    v101 = _swiftEmptyArrayStorage;
    if ((v134 & 1) == 0)
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v101 = swift_allocObject();
      *(v101 + 1) = xmmword_1BCA80;
      v101[4] = v77;
    }

    v140 = (v65 - 1) & v65;
    v142[0] = v101;

    sub_5F33C(v135);
    v102 = v142[0];
    v103 = *(v142[0] + 16);
    if (!v103)
    {
LABEL_48:

      sub_85554(&v143);
      v67 = v133;
      v32 = v137;
      v66 = v129;
      v65 = v140;
      continue;
    }

    break;
  }

  v104 = 0;
  while (2)
  {
    if (v104 < *(v102 + 16))
    {
      v105 = *(v102 + 8 * v104 + 32);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v142[0] = v68;
      sub_43124(v105);
      v108 = v68[2];
      v109 = (v107 & 1) == 0;
      v24 = __OFADD__(v108, v109);
      v110 = v108 + v109;
      if (v24)
      {
        goto LABEL_118;
      }

      v111 = v107;
      if (v68[3] >= v110)
      {
        if (v106)
        {
          goto LABEL_90;
        }

        sub_187930();
        v68 = v142[0];
        if ((v111 & 1) == 0)
        {
LABEL_91:
          sub_15C8E0();
        }
      }

      else
      {
        sub_1825E8(v110, v106);
        v68 = v142[0];
        sub_43124(v105);
        if ((v111 & 1) != (v112 & 1))
        {
          goto LABEL_130;
        }

LABEL_90:
        if ((v111 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      sub_111CE0(v142, v71);
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v142[0] = v68;
      sub_43124(v71);
      v115 = v68[2];
      v116 = (v114 & 1) == 0;
      v24 = __OFADD__(v115, v116);
      v117 = v115 + v116;
      if (v24)
      {
        goto LABEL_119;
      }

      v118 = v114;
      if (v68[3] >= v117)
      {
        if (v113)
        {
          goto LABEL_97;
        }

        sub_187930();
        v68 = v142[0];
        if ((v118 & 1) == 0)
        {
LABEL_98:
          sub_15C8E0();
        }
      }

      else
      {
        sub_1825E8(v117, v113);
        sub_43124(v71);
        if ((v118 & 1) != (v119 & 1))
        {
          goto LABEL_130;
        }

LABEL_97:
        v68 = v142[0];
        if ((v118 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      ++v104;
      sub_111CE0(v142, v105);
      if (v103 == v104)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_1928F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v17 = *(*(a3 + 48) + 8 * v16);
      result = sub_1B57E4();
      v18 = -1 << *(a4 + 32);
      v19 = result & ~v18;
      if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a4 + 48) + 8 * v19) != v17)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_3D71C(v23, a2, v5, a3);
        }
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_21;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_192A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28 = &v28;
    __chkstk_darwin(v10);
    v31 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v9);
    v9 = 0;
    v3 = 0;
    v32 = v5;
    v11 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v5 = v13 & *(v5 + 56);
    v8 = (v12 + 63) >> 6;
    v14 = a2 + 56;
LABEL_6:
    while (v5)
    {
      v15 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_13:
      v18 = v15 | (v3 << 6);
      if (*(a2 + 16))
      {
        v19 = *(*(v32 + 48) + 8 * v18);
        v20 = sub_1B57E4();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (*(*(a2 + 48) + 8 * v22) != v19)
          {
            v22 = (v22 + 1) & v23;
            if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v31[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v9++, 1))
          {
            __break(1u);
LABEL_22:
            v25 = sub_3D71C(v31, v29, v9, v32);

            return v25;
          }
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_22;
      }

      v17 = *(v11 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v5 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_18E2EC(v27, v8, v5, a2);

  return v25;
}

void *sub_192D68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v115 = sub_191E50(a1);
  v123 = a2;

  v5 = _swiftEmptyArrayStorage;
  v106 = sub_130F20(_swiftEmptyArrayStorage);
  v109 = sub_130F34(_swiftEmptyArrayStorage);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = 0;
    while (2)
    {
      v8 = (a3 + 200 + 568 * v7);
      v9 = v6 - v7;
      while (1)
      {
        if (v7 >= *(a3 + 16))
        {
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
          sub_1B5784();
          __break(1u);
LABEL_119:
          result = sub_1B5784();
          __break(1u);
          return result;
        }

        memcpy(__dst, v8 - 168, 0x231uLL);
        memcpy(__src, v8, 0x179uLL);
        if (sub_42D84(__src) == 1)
        {
          goto LABEL_117;
        }

        memcpy(v119, __src, 0x179uLL);
        if (sub_DF2A8())
        {
          break;
        }

        v8 += 568;
        ++v7;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      sub_4299C(__dst, v119);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_3749C(0, v5[2] + 1, 1);
        v5 = v122;
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_3749C((v11 > 1), v12 + 1, 1);
        v5 = v122;
      }

      ++v7;
      v5[2] = v12 + 1;
      memcpy(&v5[71 * v12 + 4], __dst, 0x231uLL);
      if (v9 != 1)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v13 = v5[2];
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    __dst[0] = _swiftEmptyArrayStorage;
    sub_3741C(0, v13, 0);
    v14 = __dst[0];
    v15 = v5 + 4;
    v16 = *(__dst[0] + 16);
    do
    {
      v17 = *v15;
      __dst[0] = v14;
      v18 = v14[3];
      if (v16 >= v18 >> 1)
      {
        sub_3741C((v18 > 1), v16 + 1, 1);
        v14 = __dst[0];
      }

      v15 += 71;
      v14[2] = v16 + 1;
      v14[v16++ + 4] = v17;
      --v13;
    }

    while (v13);
  }

  v19 = sub_40854(v14);

  v20 = 0;
  v21 = v5[2];
  v22 = _swiftEmptyArrayStorage;
  v118 = v19;
LABEL_20:
  v23 = &v5[71 * v20 - 60];
  while (v21 != v20)
  {
    if (v20 >= v5[2])
    {
      goto LABEL_112;
    }

    ++v20;
    v24 = (v23 + 568);
    v25 = *(v23 + 576);
    v23 += 568;
    if (v25 != 2)
    {
      v26 = *v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_33008(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_33008((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      *&v22[8 * v28 + 32] = v26;
      v19 = v118;
      goto LABEL_20;
    }
  }

  v29 = sub_40854(v22);

  v119[0] = v29;

  v30 = sub_2070(v123);
  if ((v31 & 1) == 0)
  {
    v33 = v30;
    v34 = v19 + 56;
    v32 = _swiftEmptyArrayStorage;
    v103 = v29 + 56;
    v117 = v29;
    v113 = a1;
LABEL_33:
    v36 = swift_allocObject();
    *(v36 + 16) = _swiftEmptySetSingleton;
    v37 = (v36 + 16);
    sub_18E018(v33, v36, v115);
    swift_beginAccess();
    v38 = *v37;

    sub_18A15C(v38);

    v40 = sub_192A9C(v39, a2);

    v41 = v40;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_34934(0, v32[2] + 1, 1, v32);
    }

    v43 = v32[2];
    v42 = v32[3];
    if (v43 >= v42 >> 1)
    {
      v32 = sub_34934((v42 > 1), v43 + 1, 1, v32);
    }

    v44 = 0;
    v32[2] = v43 + 1;
    v116 = v32;
    v32[v43 + 4] = v41;
    v45 = 1 << *(v19 + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v19 + 56);
    v48 = (v45 + 63) >> 6;
    v49 = v38 + 56;
LABEL_41:
    while (v47)
    {
      v50 = v47;
LABEL_47:
      v47 = (v50 - 1) & v50;
      if (*(v38 + 16))
      {
        v52 = *(*(v19 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v50)))));
        v53 = sub_1B57E4();
        v54 = -1 << *(v38 + 32);
        v55 = v53 & ~v54;
        if ((*(v49 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          while (*(*(v38 + 48) + 8 * v55) != v52)
          {
            v55 = (v55 + 1) & v56;
            if (((*(v49 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v112 = 1;
LABEL_55:
          v57 = 1 << *(v38 + 32);
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          else
          {
            v58 = -1;
          }

          v59 = v58 & *(v38 + 56);
          v60 = (v57 + 63) >> 6;

          v61 = 0;
          while (1)
          {
LABEL_59:
            if (!v59)
            {
              v19 = v118;
              while (1)
              {
                v63 = v61 + 1;
                if (__OFADD__(v61, 1))
                {
                  __break(1u);
                  goto LABEL_111;
                }

                if (v63 >= v60)
                {
                  break;
                }

                v62 = *(v49 + 8 * v63);
                ++v61;
                if (v62)
                {
                  v61 = v63;
                  goto LABEL_66;
                }
              }

              v33 = sub_2070(v123);
              v32 = v116;
              if (v35)
              {
                goto LABEL_109;
              }

              goto LABEL_33;
            }

            v62 = v59;
LABEL_66:
            v59 = (v62 - 1) & v62;
            if (*(v113 + 16))
            {
              v64 = *(*(v38 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v62)))));
              v65 = sub_43124(v64);
              if (v66)
              {
                break;
              }
            }
          }

          v67 = *(v113 + 56) + 88 * v65;
          v68 = *(v67 + 48);
          v105 = v68;
          if (*(v118 + 16))
          {
            v104 = *(v67 + 56);
            v102 = *v67;
            v69 = sub_1B57E4();
            v70 = -1 << *(v118 + 32);
            v71 = v69 & ~v70;
            if ((*(v34 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
            {
              v72 = ~v70;
              v68 = v105;
              while (*(*(v118 + 48) + 8 * v71) != v64)
              {
                v71 = (v71 + 1) & v72;
                if (((*(v34 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                {
                  v73 = 0;
                  goto LABEL_88;
                }
              }

              v101 = swift_isUniquelyReferenced_nonNull_native();
              __src[0] = v109;
              v75 = sub_3B15C(v41);
              v76 = v109[2];
              v77 = (v74 & 1) == 0;
              v78 = v76 + v77;
              if (__OFADD__(v76, v77))
              {
                goto LABEL_114;
              }

              if (v109[3] >= v78)
              {
                if (v101)
                {
                  v81 = __src[0];
                  if (v74)
                  {
                    goto LABEL_86;
                  }
                }

                else
                {
                  v111 = v74;
                  sub_188314();
                  v81 = __src[0];
                  if (v111)
                  {
                    goto LABEL_86;
                  }
                }
              }

              else
              {
                v110 = v74;
                sub_183F08(v78, v101);
                sub_2B0C(&qword_2292C8, &unk_1BCB00);
                v79 = sub_3B15C(v41);
                if ((v110 & 1) != (v80 & 1))
                {
                  goto LABEL_118;
                }

                v75 = v79;
                v81 = __src[0];
                if (v110)
                {
                  goto LABEL_86;
                }
              }

              v81[(v75 >> 6) + 8] |= 1 << v75;
              *(v81[6] + 8 * v75) = v41;
              *(v81[7] + 8 * v75) = _swiftEmptySetSingleton;
              v82 = v81[2];
              v83 = __OFADD__(v82, 1);
              v84 = v82 + 1;
              if (v83)
              {
                goto LABEL_116;
              }

              v81[2] = v84;

LABEL_86:
              v109 = v81;
              sub_111FB0(__src, v102);
              v73 = sub_18DD70;
            }

            else
            {
              v73 = 0;
            }

            v68 = v105;
LABEL_88:
            if (v104 != 2)
            {
LABEL_89:
              if (*(v117 + 16))
              {
                v85 = sub_1B57E4();
                v68 = v105;
                v86 = -1 << *(v117 + 32);
                v87 = v85 & ~v86;
                if ((*(v103 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
                {
                  v88 = ~v86;
                  while (*(*(v117 + 48) + 8 * v87) != v105)
                  {
                    v87 = (v87 + 1) & v88;
                    if (((*(v103 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
                    {
                      goto LABEL_94;
                    }
                  }

                  v90 = swift_isUniquelyReferenced_nonNull_native();
                  __src[0] = v106;
                  v92 = sub_3B15C(v41);
                  v93 = v106[2];
                  v94 = (v91 & 1) == 0;
                  v95 = v93 + v94;
                  if (__OFADD__(v93, v94))
                  {
                    goto LABEL_115;
                  }

                  if (v106[3] >= v95)
                  {
                    if ((v90 & 1) == 0)
                    {
                      v108 = v91;
                      v99 = v92;
                      sub_188300();
                      v92 = v99;
                      v91 = v108;
                    }
                  }

                  else
                  {
                    v107 = v91;
                    sub_183EF4(v95, v90);
                    sub_2B0C(&qword_2292C8, &unk_1BCB00);
                    v96 = sub_3B15C(v41);
                    v98 = v97 & 1;
                    v91 = v107;
                    if ((v107 & 1) != v98)
                    {
                      goto LABEL_119;
                    }

                    v92 = v96;
                  }

                  v106 = __src[0];
                  if ((v91 & 1) == 0)
                  {
                    sub_15BBE8(v92, v41, _swiftEmptySetSingleton, __src[0]);
                  }

                  sub_111CE0(__src, v105);
                  v89 = v73;
                  goto LABEL_97;
                }
              }

LABEL_94:
              if (v112)
              {
                sub_111CE0(__src, v68);
                v89 = v73;
LABEL_97:
                sub_41C08(v89, 0);
                goto LABEL_59;
              }
            }
          }

          else
          {
            v73 = 0;
            if (*(v67 + 56) != 2)
            {
              goto LABEL_89;
            }
          }

          v89 = v73;
          goto LABEL_97;
        }
      }
    }

    while (1)
    {
      v51 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v51 >= v48)
      {
        v112 = 0;
        goto LABEL_55;
      }

      v50 = *(v34 + 8 * v51);
      ++v44;
      if (v50)
      {
        v44 = v51;
        goto LABEL_47;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_109:

  return v32;
}

double sub_193830@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = fabs(*(a1 + 56));
  *a2 = result;
  return result;
}

uint64_t sub_193840()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_193878(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22B298, &qword_1C38E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1938E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_193930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1192) = 0;
    *(result + 248) = 0u;
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
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 1200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_193ABC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(a1 + 56) + 48 * v10;
        v12 = *(v11 + 40);
        if (v12)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v26 = *(*(a1 + 48) + 8 * v10);
      v25 = *(v11 + 32);
      if (_swiftEmptyDictionarySingleton[3] <= _swiftEmptyDictionarySingleton[2])
      {
        v14 = _swiftEmptyDictionarySingleton[2];
        swift_bridgeObjectRetain_n();

        sub_184720(v14 + 1, 1);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      result = sub_1B57E4();
      v15 = &_swiftEmptyDictionarySingleton[8];
      v16 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~_swiftEmptyDictionarySingleton[(v17 >> 6) + 8]) == 0)
      {
        break;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~_swiftEmptyDictionarySingleton[(v17 >> 6) + 8])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v19) = v26;
      v24 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      *v24 = v25;
      v24[1] = v12;
      ++_swiftEmptyDictionarySingleton[2];

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v20 = 0;
    v21 = (63 - v16) >> 6;
    while (++v18 != v21 || (v20 & 1) == 0)
    {
      v22 = v18 == v21;
      if (v18 == v21)
      {
        v18 = 0;
      }

      v20 |= v22;
      v23 = v15[v18];
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v13);
      ++v8;
      if (v5)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193D14()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22F6A0);
  sub_50E58(v0, qword_22F6A0);
  return sub_1B4634();
}

uint64_t PostHydrationFilteringCandidateMetadata.artworkURL.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

__n128 PostHydrationFilteringCandidateMetadata.init(title:author:locale:isPreorder:artworkURL:seriesSequenceNumber:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unsigned __int32 a12, char a13)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u32[2] = a12;
  a9[5].n128_u8[12] = a13 & 1;
  return result;
}

uint64_t PostHydrationFilteringCandidateMetadata.debugDescription.getter()
{
  v13 = *v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 92);
  v11 = 34;
  v12 = 0xE100000000000000;
  sub_1B48D4(v13);
  v14._countAndFlagsBits = 0x2079622022;
  v14._object = 0xE500000000000000;
  sub_1B48D4(v14);
  v15._countAndFlagsBits = v1;
  v15._object = v2;
  sub_1B48D4(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  sub_1B48D4(v16);
  if (v4)
  {
    strcpy(&v10, " locale=");
    BYTE1(v10._object) = 0;
    WORD1(v10._object) = 0;
    HIDWORD(v10._object) = -402653184;
    v17._countAndFlagsBits = v3;
    v17._object = v4;
    sub_1B48D4(v17);
    sub_1B48D4(v10);
  }

  strcpy(&v10, " isPreorder=");
  BYTE5(v10._object) = 0;
  HIWORD(v10._object) = -5120;
  if (v5)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_1B48D4(v7);

  sub_1B48D4(v10);

  if ((v6 & 1) == 0)
  {
    sub_1B5084(24);

    v18._countAndFlagsBits = sub_1B4E84();
    sub_1B48D4(v18);

    v19._countAndFlagsBits = 0xD000000000000016;
    v19._object = 0x80000000001D8CD0;
    sub_1B48D4(v19);
  }

  return v11;
}

uint64_t sub_194008()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v1 = sub_194064();
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_194064()
{
  v35 = sub_1B4154();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2B0C(&qword_22F798, &qword_1D19D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v34 = sub_1B4174();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4134();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v31 = (v5 + 8);
    v32 = (v0 + 8);
    v12 = result + 40;
    v30 = v10;
    v27 = v10 - 1;
    v28 = result + 40;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v13 = v12 + 16 * v11;
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = v14 + 1;
        swift_bridgeObjectRetain_n();
        sub_1B4104();
        v15 = v33;
        sub_1B4164();
        sub_1B4144();
        (*v32)(v15, v35);
        v16 = sub_1B4124();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v4, 1, v16) != 1)
        {
          break;
        }

        (*v31)(v7, v34);
        result = sub_42F48(v4, &qword_22F798, &qword_1D19D0);
        v13 += 16;
        ++v14;
        if (v30 == v11)
        {
          goto LABEL_15;
        }
      }

      v18 = sub_1B4114();
      v20 = v19;

      (*v31)(v7, v34);
      (*(v17 + 8))(v4, v16);
      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v20;
      if ((result & 1) == 0)
      {
        result = sub_3301C(0, *(v29 + 2) + 1, 1, v29);
        v29 = result;
      }

      v23 = *(v29 + 2);
      v22 = *(v29 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_3301C((v22 > 1), v23 + 1, 1, v29);
        v29 = result;
      }

      v12 = v28;
      v24 = v29;
      *(v29 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v18;
      *(v25 + 5) = v21;
    }

    while (v27 != v14);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v29;
}

void *BookRecommendationPostHydrationFilteringService.deinit()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);

  return v0;
}

uint64_t BookRecommendationPostHydrationFilteringService.__deallocating_deinit()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);

  return swift_deallocClassInstance();
}

uint64_t BookRecommendationPostHydrationFilteringService.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return sub_194634(a1);
}

uint64_t sub_194584(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B9584;

  return sub_194634(a1);
}

uint64_t sub_194634(uint64_t a1)
{
  v2[377] = v1;
  v2[376] = a1;
  sub_2B0C(&qword_22F788, &qword_1D19C0);
  v2[378] = swift_task_alloc();
  v3 = sub_2B0C(&qword_22F790, &qword_1D19C8);
  v2[379] = v3;
  v2[380] = *(v3 - 8);
  v2[381] = swift_task_alloc();
  v4 = sub_1B4154();
  v2[382] = v4;
  v2[383] = *(v4 - 8);
  v2[384] = swift_task_alloc();
  v5 = sub_1B4174();
  v2[385] = v5;
  v2[386] = *(v5 - 8);
  v2[387] = swift_task_alloc();
  sub_2B0C(&qword_22F798, &qword_1D19D0);
  v2[388] = swift_task_alloc();
  v6 = sub_1B40F4();
  v2[389] = v6;
  v2[390] = *(v6 - 8);
  v2[391] = swift_task_alloc();
  v2[392] = type metadata accessor for PersonalizationMetadataRequest(0);
  v2[393] = swift_task_alloc();
  sub_2B0C(&qword_22F7A0, &qword_1D19D8);
  v2[394] = swift_task_alloc();
  v2[395] = swift_task_alloc();
  v2[396] = swift_task_alloc();

  return _swift_task_switch(sub_194908, 0, 0);
}

uint64_t sub_194908()
{
  v1 = *(v0 + 3016);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 3176) = v4;
  *v4 = v0;
  v4[1] = sub_194A30;

  return v6(v2, v3);
}

uint64_t sub_194A30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3184) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_194C10, 0, 0);
  }
}

void sub_194C10()
{
  v1 = v0[398];
  v2 = v0[377];
  v46 = *(v1 + 16);
  if (v46)
  {
    v3 = 0;
    v4 = (v1 + 64);
    v5 = _swiftEmptyDictionarySingleton;
    v44 = v0[398];
    v45 = v0[377];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v7 = *(v4 - 3);
      v49 = *(v4 - 4);
      v8 = *(v4 - 2);
      v47 = v3;
      v48 = *(v4 - 1);
      v9 = *v4;
      v10 = v2[15];
      v11 = v2[16];
      sub_2698(v2 + 12, v10);
      v12 = *(v11 + 8);

      v13 = v12(v7, v8, v10, v11);
      v15 = v13;
      v16 = v14;
      if (v5[2] && (v17 = sub_3A678(v13, v14), (v18 & 1) != 0))
      {
        v19 = *(v5[7] + 8 * v17);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_34DD4(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_34DD4((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      *(v22 + 4) = v49;
      *(v22 + 5) = v7;
      *(v22 + 6) = v8;
      *(v22 + 7) = v48;
      *(v22 + 8) = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v5;
      v24 = sub_3A678(v15, v16);
      v26 = v5[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_33;
      }

      v30 = v25;
      if (v5[3] < v29)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v35 = v24;
      sub_18847C();
      v24 = v35;
      if (v30)
      {
LABEL_3:
        v6 = v24;

        v5 = v51;
        *(v51[7] + 8 * v6) = v19;

        goto LABEL_4;
      }

LABEL_20:
      v5 = v51;
      v51[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v51[6] + 16 * v24);
      *v32 = v15;
      v32[1] = v16;
      *(v51[7] + 8 * v24) = v19;

      v33 = v51[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_34;
      }

      v51[2] = v34;
LABEL_4:
      v3 = v47 + 1;
      v4 += 5;
      v1 = v44;
      v2 = v45;
      if (v46 == v47 + 1)
      {
        v0 = v43;
        v2 = v43[377];
        goto LABEL_26;
      }
    }

    sub_1841AC(v29, isUniquelyReferenced_nonNull_native);
    v24 = sub_3A678(v15, v16);
    if ((v30 & 1) != (v31 & 1))
    {

      sub_1B5784();
      return;
    }

LABEL_19:
    if (v30)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_26:
  v0[399] = v5;
  v36 = v0[396];
  v37 = v0[380];
  v38 = v0[379];
  v39 = *(v37 + 56);
  v0[400] = v39;
  v0[401] = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v39(v36, 1, 1, v38);
  v40 = v2[5];
  v41 = v2[6];
  sub_2698(v2 + 2, v40);
  v50 = (*(v41 + 16) + **(v41 + 16));
  v42 = swift_task_alloc();
  v0[402] = v42;
  *v42 = v0;
  v42[1] = sub_195084;

  v50(v0 + 2, v40, v41);
}

uint64_t sub_195084()
{
  *(*v1 + 3224) = v0;

  if (v0)
  {

    v2 = sub_199714;
  }

  else
  {
    v2 = sub_1951AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1951AC()
{
  v222 = v0;
  v1 = v0;
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  v2 = *(v0 + 1216);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 1208) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 3224);
    sub_71DF0(v0 + 1168, v0 + 2880);
    sub_1B43E4();
    v5 = *(v0 + 3168);
    if (v4)
    {

      sub_2B54(v0 + 1136);
      sub_42F48(v5, &qword_22F7A0, &qword_1D19D8);

      v6 = *(v0 + 8);

      return v6();
    }

    v8 = *(v0 + 3200);
    v9 = *(v0 + 3160);
    v10 = *(v0 + 3032);
    sub_42F48(v5, &qword_22F7A0, &qword_1D19D8);
    v8(v9, 0, 1, v10);
    sub_199B94(v9, v5);
    v209 = 0;
  }

  else
  {
    v209 = *(v0 + 3224);
  }

  sub_2B54(v0 + 1136);
  if ((*(v0 + 1800) & 1) != 0 || *(*(v0 + 3016) + 216) == 1)
  {
    v11 = *(v0 + 3184);
    v12 = *(v11 + 16);
    if (v12)
    {
      v221[0]._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_3741C(0, v12, 0);
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v14 = (v11 + 32);
      v15 = _swiftEmptyArrayStorage[2];
      do
      {
        v17 = *v14;
        v14 += 5;
        v16 = v17;
        v221[0]._countAndFlagsBits = countAndFlagsBits;
        v18 = countAndFlagsBits[3];
        if (v15 >= v18 >> 1)
        {
          sub_3741C((v18 > 1), v15 + 1, 1);
          countAndFlagsBits = v221[0]._countAndFlagsBits;
        }

        countAndFlagsBits[2] = v15 + 1;
        countAndFlagsBits[v15++ + 4] = v16;
        --v12;
      }

      while (v12);
    }

    else
    {

      countAndFlagsBits = _swiftEmptyArrayStorage;
    }

    v19 = *(v1 + 3008);
    *(v1 + 3232) = sub_40854(countAndFlagsBits);

    sub_1B40E4();
    v20 = *(v19 + 16);
    v21 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v22 = *(v1 + 3008);
      v221[0]._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_3741C(0, v20, 0);
      v21 = _swiftEmptyArrayStorage;
      v23 = (v22 + 32);
      v24 = _swiftEmptyArrayStorage[2];
      do
      {
        v26 = *v23;
        v23 += 13;
        v25 = v26;
        v221[0]._countAndFlagsBits = v21;
        v27 = v21[3];
        if (v24 >= v27 >> 1)
        {
          sub_3741C((v27 > 1), v24 + 1, 1);
          v21 = v221[0]._countAndFlagsBits;
        }

        v21[2] = v24 + 1;
        v21[v24++ + 4] = v25;
        --v20;
      }

      while (v20);
    }

    v28 = *(v1 + 3144);
    v29 = *(v1 + 3136);
    v30 = *(v1 + 3128);
    v31 = v1;
    v32 = *(v1 + 3120);
    v33 = v31[389];
    v34 = v31[377];
    v35 = sub_40854(v21);

    v37 = sub_1ABCA4(v36, v35);
    (*(v32 + 32))(v28, v30, v33);
    *(v28 + *(v29 + 20)) = v37;
    v38 = v34[25];
    v39 = v34[26];
    sub_2698(v34 + 22, v38);
    v219 = (*(v39 + 8) + **(v39 + 8));
    v40 = swift_task_alloc();
    v31[405] = v40;
    *v40 = v31;
    v40[1] = sub_19736C;
    v41 = v31[393];

    return v219(v41, v38, v39);
  }

  v42 = *(v0 + 3008);
  v195 = v0;
  v198 = *(v42 + 16);
  if (!v198)
  {

LABEL_136:

    goto LABEL_140;
  }

  v199 = *(v0 + 3192);
  v43 = 0;
  v205 = v0 + 2256;
  v191 = v0 + 2936;
  v184 = (v0 + 2952);
  v185 = (v0 + 2960);
  v183 = (v0 + 2976);
  v187 = (v0 + 2984);
  v188 = (v0 + 2968);
  v186 = (v0 + 2992);
  v44 = *(v0 + 3040);
  v217 = *(v0 + 3016);
  v197 = v42 + 32;
  v190 = (*(v0 + 3088) + 8);
  v189 = (*(v0 + 3064) + 8);
  v196 = (v44 + 48);
  v192 = (v44 + 8);
  v193 = (v44 + 32);
  v214 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v204 = v43;
    v45 = (v197 + 104 * v43);
    v46 = *v45;
    v47 = v45[2];
    *(v205 + 16) = v45[1];
    *(v205 + 32) = v47;
    *v205 = v46;
    v48 = v45[3];
    v49 = v45[4];
    v50 = v45[5];
    *(v205 + 93) = *(v45 + 93);
    *(v205 + 64) = v49;
    *(v205 + 80) = v50;
    *(v205 + 48) = v48;
    v213 = *(v1 + 2256);
    v51 = *(v1 + 2264);
    v52 = *(v1 + 2272);
    v200 = v51;
    v201 = v52;
    v218 = *(v1 + 2280);
    v220 = *(v1 + 2288);
    v207 = *(v1 + 2296);
    v53 = *(v1 + 2304);
    v202 = *(v1 + 2312);
    v203 = *(v1 + 2328);
    sub_43050(v205, v1 + 2360, &qword_22F7A8, &qword_1D19E0);
    v54 = v217[15];
    v55 = v217[16];
    sub_2698((*(v1 + 3016) + 96), v54);
    v56 = (*(v55 + 8))(v51, v52, v54, v55);
    v208 = v57;
    v206 = v56;
    if (*(v199 + 16))
    {
      v58 = sub_3A678(v56, v57);
      if (v59)
      {
        break;
      }
    }

LABEL_48:
    if (!v53)
    {
      goto LABEL_59;
    }

    v79 = _swiftEmptyDictionarySingleton[2];

    if (v79)
    {
      v80 = sub_3A678(v207, v53);
      if (v81)
      {
        v82 = (_swiftEmptyDictionarySingleton[7] + 16 * v80);
        v84 = *v82;
        v83 = v82[1];

LABEL_56:
        v95 = sub_194008();
        *(v1 + 2936) = v84;
        *(v1 + 2944) = v83;
        v96 = swift_task_alloc();
        *(v96 + 16) = v191;
        v97 = sub_50718(sub_199C04, v96, v95);

        if (v97)
        {
        }

        else
        {
          v221[0]._countAndFlagsBits = 0;
          v221[0]._object = 0xE000000000000000;
          v230._countAndFlagsBits = 0;
          v230._object = 0xE000000000000000;
          sub_1B48D4(v230);

          *v187 = v213;
          v231._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v231);

          v232._countAndFlagsBits = 40;
          v232._object = 0xE100000000000000;
          sub_1B48D4(v232);
          v233._countAndFlagsBits = v84;
          v233._object = v83;
          sub_1B48D4(v233);

          v234._countAndFlagsBits = 41;
          v234._object = 0xE100000000000000;
          sub_1B48D4(v234);
          sub_1B48D4(v221[0]);

          sub_111CE0(v221, v213);
        }

        goto LABEL_59;
      }
    }

    v85 = *(v1 + 3104);
    v86 = *(v1 + 3096);
    v87 = *(v1 + 3080);
    v88 = *(v1 + 3072);
    v89 = *(v1 + 3056);

    sub_1B4104();
    sub_1B4164();
    (*v190)(v86, v87);
    sub_1B4144();
    (*v189)(v88, v89);
    v90 = sub_1B4124();
    v91 = *(v90 - 8);
    v92 = (*(v91 + 48))(v85, 1, v90);
    v93 = *(v1 + 3104);
    if (v92 == 1)
    {
      sub_42F48(*(v1 + 3104), &qword_22F798, &qword_1D19D0);
      v84 = 0;
      v83 = 0;
    }

    else
    {
      v84 = sub_1B4114();
      v83 = v94;
      (*(v91 + 8))(v93, v90);
    }

    sub_49BA0(v84, v83, v207, v53);
    if (v83)
    {
      goto LABEL_56;
    }

LABEL_59:
    v98 = *(v1 + 3152);
    v99 = *(v1 + 3032);
    v62 = &qword_1D19D8;
    sub_43050(*(v1 + 3168), v98, &qword_22F7A0, &qword_1D19D8);
    if ((*v196)(v98, 1, v99) != 1)
    {
      (*v193)(*(v1 + 3048), *(v1 + 3152), *(v1 + 3032));
      if (v203)
      {

        sub_1B43D4();
        if (v209)
        {

          if (qword_228348 != -1)
          {
            swift_once();
          }

          v102 = sub_1B4644();
          sub_50E58(v102, qword_22F6A0);
          swift_errorRetain();
          v103 = sub_1B4624();
          v104 = sub_1B4DB4();

          v105 = os_log_type_enabled(v103, v104);
          v106 = *(v1 + 3048);
          v62 = *(v1 + 3032);
          if (v105)
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v107 = 138412290;
            swift_errorRetain();
            v109 = _swift_stdlib_bridgeErrorToNSError();
            *(v107 + 4) = v109;
            *v108 = v109;
            _os_log_impl(&dword_0, v103, v104, "Error matching artwork URL against regex: %@", v107, 0xCu);
            sub_42F48(v108, &qword_22B250, &qword_1C3850);
          }

          else
          {
          }

          (*v192)(v106, v62);
        }

        else
        {
          v110 = *(v1 + 3024);

          v111 = sub_2B0C(&qword_22F7B0, &qword_1D19E8);
          v112 = (*(*(v111 - 8) + 48))(v110, 1, v111);
          v62 = *(v1 + 3048);
          v113 = *(v1 + 3032);
          v114 = *(v1 + 3024);
          if (v112 != 1)
          {
            v221[0]._countAndFlagsBits = 0;
            v221[0]._object = 0xE000000000000000;
            v244._countAndFlagsBits = 0;
            v244._object = 0xE000000000000000;
            sub_1B48D4(v244);

            *v183 = v213;
            v245._countAndFlagsBits = sub_1B5594();
            sub_1B48D4(v245);

            v246._countAndFlagsBits = 0x29786567657228;
            v246._object = 0xE700000000000000;
            sub_1B48D4(v246);
            sub_1B48D4(v221[0]);

            sub_111CE0(v221, v213);
            (*v192)(v62, v113);
            v155 = v114;
            v100 = v213;
            sub_42F48(v155, &qword_22F788, &qword_1D19C0);
            v101 = 0;
            goto LABEL_76;
          }

          (*v192)(*(v1 + 3048), *(v1 + 3032));
          sub_42F48(v114, &qword_22F788, &qword_1D19C0);
        }

        v101 = 0;
      }

      else
      {
        (*v192)(*(v1 + 3048), *(v1 + 3032));
LABEL_69:
        v101 = v209;
      }

      v100 = v213;
      goto LABEL_76;
    }

    sub_42F48(*(v1 + 3152), &qword_22F7A0, &qword_1D19D8);
    if (!v202)
    {
      goto LABEL_69;
    }

    v221[0]._countAndFlagsBits = 0;
    v221[0]._object = 0xE000000000000000;
    v235._countAndFlagsBits = 0;
    v235._object = 0xE000000000000000;
    sub_1B48D4(v235);

    *v188 = v213;
    v236._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v236);

    v237._countAndFlagsBits = 0x6564726F65727028;
    v237._object = 0xEA00000000002972;
    sub_1B48D4(v237);
    sub_1B48D4(v221[0]);
    v100 = v213;

    sub_111CE0(v221, v213);
    v101 = v209;
LABEL_76:
    v209 = v101;
    if (_swiftEmptySetSingleton[2] && (v115 = sub_1B57E4(), v116 = -1 << LOBYTE(_swiftEmptySetSingleton[4]), v117 = v115 & ~v116, ((*(&_swiftEmptySetSingleton[7] + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) != 0))
    {
      v118 = ~v116;
      while (*(_swiftEmptySetSingleton[6] + 8 * v117) != v100)
      {
        v117 = (v117 + 1) & v118;
        if (((*(&_swiftEmptySetSingleton[7] + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
LABEL_81:
      if (!v214[2] || (v119 = sub_3A678(v206, v208), (v120 & 1) == 0))
      {
        sub_2B0C(&qword_229478, &qword_1BC510);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1BCA80;
        *(v51 + 32) = v213;
        *(v51 + 40) = v206;
        *(v51 + 48) = v208;
        *(v51 + 56) = v218;
        *(v51 + 64) = v220;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v221[0]._countAndFlagsBits = v214;
        v62 = v208;
        v135 = sub_3A678(v206, v208);
        v137 = v214[2];
        v138 = (v136 & 1) == 0;
        v139 = __OFADD__(v137, v138);
        v140 = v137 + v138;
        if (v139)
        {
          goto LABEL_149;
        }

        v141 = v136;
        if (v214[3] >= v140)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_97;
          }

          v156 = v135;
          sub_18847C();
          v135 = v156;
          if ((v141 & 1) == 0)
          {
            goto LABEL_118;
          }

LABEL_98:
          v143 = v135;

          v214 = v221[0]._countAndFlagsBits;
          *(*(v221[0]._countAndFlagsBits + 56) + 8 * v143) = v51;
        }

        else
        {
          sub_1841AC(v140, isUniquelyReferenced_nonNull_native);
          v135 = sub_3A678(v206, v208);
          if ((v141 & 1) != (v142 & 1))
          {

            return sub_1B5784();
          }

LABEL_97:
          if (v141)
          {
            goto LABEL_98;
          }

LABEL_118:
          v157 = v221[0]._countAndFlagsBits;
          *(v221[0]._countAndFlagsBits + 8 * (v135 >> 6) + 64) |= 1 << v135;
          v158 = (v157[6] + 16 * v135);
          *v158 = v206;
          v158[1] = v208;
          *(v157[7] + 8 * v135) = v51;
          v159 = v157[2];
          v139 = __OFADD__(v159, 1);
          v160 = v159 + 1;
          if (v139)
          {
            goto LABEL_150;
          }

          v214 = v157;
          v157[2] = v160;
        }

        v100 = v213;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_125;
        }

        goto LABEL_121;
      }

      v121 = *(*(v214[7] + 8 * v119) + 16);

      v51 = v122 + 64;
      v210 = -v121;
      v212 = v122;
      v1 = -1;
      while (1)
      {
        if (v210 + v1 == -1)
        {
          v1 = v195;
          v100 = v213;
          goto LABEL_106;
        }

        if (++v1 >= *(v212 + 2))
        {
          goto LABEL_148;
        }

        v123 = *(v51 - 8);
        v124 = *v51;
        v125 = v217[20];
        v62 = v217[21];
        sub_2698(v217 + 17, v125);
        v216 = v62[1];

        v126 = v216(v123, v124, v125, v62);
        v128 = v127;

        v129 = v217[20];
        v130 = v217[21];
        sub_2698(v217 + 17, v129);
        if (v126 == (*(v130 + 8))(v218, v220, v129, v130) && v128 == v131)
        {
          break;
        }

        v51 += 40;
        v133 = sub_1B5604();

        if (v133)
        {
          goto LABEL_102;
        }
      }

LABEL_102:
      v238._countAndFlagsBits = 0;
      v238._object = 0xE000000000000000;
      sub_1B48D4(v238);

      v100 = v213;
      *v185 = v213;
      v239._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v239);

      v240._countAndFlagsBits = 8744;
      v240._object = 0xE200000000000000;
      sub_1B48D4(v240);
      object = v201;
      if (sub_1B4894() < 21)
      {

        v148._countAndFlagsBits = v200;
      }

      else
      {

        sub_4123C(20, v200, v201);

        v145 = sub_1B4864();
        v147 = v146;

        v221[0]._countAndFlagsBits = v145;
        v221[0]._object = v147;
        v241._countAndFlagsBits = 10911970;
        v241._object = 0xA300000000000000;
        sub_1B48D4(v241);
        v148._countAndFlagsBits = v221[0]._countAndFlagsBits;
        object = v221[0]._object;
      }

      v1 = v195;
      v148._object = object;
      sub_1B48D4(v148);

      v242._countAndFlagsBits = 10530;
      v242._object = 0xE200000000000000;
      sub_1B48D4(v242);
      v243._countAndFlagsBits = 0;
      v243._object = 0xE000000000000000;
      sub_1B48D4(v243);

      sub_111CE0(v221, v213);
LABEL_106:
      if (!sub_2AA44(v100, _swiftEmptySetSingleton))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = sub_34DD4(0, *(v212 + 2) + 1, 1, v212);
        }

        v150 = *(v212 + 2);
        v149 = *(v212 + 3);
        v151 = v214;
        if (v150 >= v149 >> 1)
        {
          v175 = sub_34DD4((v149 > 1), v150 + 1, 1, v212);
          v151 = v214;
          v212 = v175;
        }

        *(v212 + 2) = v150 + 1;
        v152 = &v212[40 * v150];
        *(v152 + 4) = v100;
        *(v152 + 5) = v206;
        *(v152 + 6) = v208;
        *(v152 + 7) = v218;
        *(v152 + 8) = v220;
        v153 = v151;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v221[0]._countAndFlagsBits = v153;
        sub_548BC(v212, v206, v208, v154);

        v214 = v221[0]._countAndFlagsBits;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_125;
        }

        goto LABEL_121;
      }
    }

    if (!_swiftEmptySetSingleton[2])
    {
      goto LABEL_125;
    }

LABEL_121:
    v161 = sub_1B57E4();
    v162 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
    v163 = v161 & ~v162;
    if ((*(&_swiftEmptySetSingleton[7] + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163))
    {
      v164 = ~v162;
      while (*(_swiftEmptySetSingleton[6] + 8 * v163) != v100)
      {
        v163 = (v163 + 1) & v164;
        if (((*(&_swiftEmptySetSingleton[7] + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_29;
    }

LABEL_125:
    if (_swiftEmptyDictionarySingleton[2])
    {
      v165 = sub_43124(v100);
      if (v166)
      {
        v167 = (_swiftEmptyDictionarySingleton[7] + 16 * v165);
        v169 = *v167;
        v168 = v167[1];

        if (sub_2AAEC(v169, v168, _swiftEmptySetSingleton))
        {

          sub_111CE0(v221, v213);
          v247._countAndFlagsBits = 0;
          v247._object = 0xE000000000000000;
          sub_1B48D4(v247);

          *v184 = v213;
          v248._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v248);

          v249._countAndFlagsBits = 8744;
          v249._object = 0xE200000000000000;
          sub_1B48D4(v249);
          v170 = v200;
          v171 = v201;
          if (sub_1B4894() < 21)
          {

            sub_42F48(v205, &qword_22F7A8, &qword_1D19E0);
          }

          else
          {

            sub_4123C(20, v200, v201);

            sub_42F48(v205, &qword_22F7A8, &qword_1D19E0);
            v172 = sub_1B4864();
            v174 = v173;

            v221[0]._countAndFlagsBits = v172;
            v221[0]._object = v174;
            v250._countAndFlagsBits = 10911970;
            v250._object = 0xA300000000000000;
            sub_1B48D4(v250);
            v170 = v221[0]._countAndFlagsBits;
            v171 = v221[0]._object;
          }

          v251._countAndFlagsBits = v170;
          v251._object = v171;
          sub_1B48D4(v251);

          v252._countAndFlagsBits = 10530;
          v252._object = 0xE200000000000000;
          sub_1B48D4(v252);
          v253._countAndFlagsBits = 0;
          v253._object = 0xE000000000000000;
          sub_1B48D4(v253);
        }

        else
        {
          sub_42F48(v205, &qword_22F7A8, &qword_1D19E0);
          sub_111A38(v221, v169, v168);
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    sub_42F48(v205, &qword_22F7A8, &qword_1D19E0);
LABEL_30:
    v43 = v204 + 1;
    if (v204 + 1 == v198)
    {

      goto LABEL_136;
    }
  }

  v194 = v53;
  v60 = *(*(*(v199 + 56) + 8 * v58) + 16);

  v62 = (v61 + 64);
  v211 = v61;
  v1 = -1;
  while (1)
  {
    if (v1 - v60 == -1)
    {

      v53 = v194;
      v1 = v195;
      goto LABEL_48;
    }

    if (++v1 >= *(v211 + 16))
    {
      break;
    }

    v63 = *v62;
    v215 = *(v62 - 1);
    v65 = v217[20];
    v64 = v217[21];
    sub_2698(v217 + 17, v65);
    v66 = *(v64 + 8);

    v67 = v66(v215, v63, v65, v64);
    v69 = v68;

    v70 = v217[20];
    v71 = v217[21];
    sub_2698(v217 + 17, v70);
    if (v67 == (*(v71 + 8))(v218, v220, v70, v71) && v69 == v72)
    {

LABEL_44:

      v224._countAndFlagsBits = 0;
      v224._object = 0xE000000000000000;
      sub_1B48D4(v224);

      *v186 = v213;
      v225._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v225);

      v226._countAndFlagsBits = 8744;
      v226._object = 0xE200000000000000;
      sub_1B48D4(v226);
      v74 = v201;
      if (sub_1B4894() < 21)
      {

        v78._countAndFlagsBits = v200;
      }

      else
      {

        sub_4123C(20, v200, v201);

        v75 = sub_1B4864();
        v77 = v76;

        v221[0]._countAndFlagsBits = v75;
        v221[0]._object = v77;
        v227._countAndFlagsBits = 10911970;
        v227._object = 0xA300000000000000;
        sub_1B48D4(v227);
        v78._countAndFlagsBits = v221[0]._countAndFlagsBits;
        v74 = v221[0]._object;
      }

      v53 = v194;
      v1 = v195;
      v78._object = v74;
      sub_1B48D4(v78);

      v228._countAndFlagsBits = 10530;
      v228._object = 0xE200000000000000;
      sub_1B48D4(v228);
      v229._countAndFlagsBits = 0;
      v229._object = 0xE000000000000000;
      sub_1B48D4(v229);

      sub_111CE0(v221, v213);
      goto LABEL_48;
    }

    v62 += 5;
    v51 = sub_1B5604();

    if (v51)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  swift_once();
  v176 = sub_1B4644();
  sub_50E58(v176, qword_22F6A0);

  v177 = sub_1B4624();
  v178 = sub_1B4DB4();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v221[0]._countAndFlagsBits = v180;
    *v179 = 136315138;
    v181 = sub_60FF4(v62, v51, &v221[0]._countAndFlagsBits);

    *(v179 + 4) = v181;
    _os_log_impl(&dword_0, v177, v178, "Similar titles in library: %s", v179, 0xCu);
    sub_2BF8(v180);

    goto LABEL_141;
  }

LABEL_140:

LABEL_141:

  sub_42F48(*(v1 + 3168), &qword_22F7A0, &qword_1D19D8);

  v182 = *(v1 + 8);

  return v182(_swiftEmptySetSingleton);
}

uint64_t sub_19736C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3248) = v1;

  if (v1)
  {

    v5 = sub_199824;
  }

  else
  {
    *(v4 + 3256) = a1;
    v5 = sub_1974A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1974A8()
{
  v271 = v0;
  v245 = v0 + 2256;
  v225 = v0 + 2936;
  v218 = (v0 + 2952);
  v219 = (v0 + 2960);
  v216 = (v0 + 2976);
  v221 = (v0 + 2984);
  v222 = (v0 + 2968);
  v1 = *(v0 + 3248);
  v220 = (v0 + 2992);
  v2 = *(v0 + 3232);
  v217 = (v0 + 3000);
  v3 = sub_193ABC(*(v0 + 3256));

  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;

  v9 = v1;
  v237 = v1;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v228 = v0;
  v229 = v3;
LABEL_4:
  if (v7)
  {
    v12 = v7;
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v22 = *(v0 + 3144);

      v23 = sub_4025C(v11);

      sub_199C5C(v22);
      v24 = *(v0 + 3008);
      v258 = _swiftEmptySetSingleton;
      v259 = 0;
      v260 = 0xE000000000000000;
      v261 = 0;
      v262 = 0xE000000000000000;
      v263 = 0;
      v264 = 0xE000000000000000;
      v265 = 0;
      v266 = 0xE000000000000000;
      v267 = 0;
      v268 = 0xE000000000000000;
      v232 = *(v24 + 16);
      if (v232)
      {
        v25 = 0;
        v26 = v24 + 32;
        v233 = *(v0 + 3192);
        v234 = v23 + 56;
        v223 = (*(v0 + 3064) + 8);
        v224 = (*(v0 + 3088) + 8);
        v27 = *(v0 + 3040);
        v230 = (v27 + 48);
        v231 = v26;
        v227 = (v27 + 32);
        countAndFlagsBits = _swiftEmptyDictionarySingleton;
        v226 = (v27 + 8);
        v254 = *(v0 + 3016);
        v246 = v23;
        while (1)
        {
          v242 = countAndFlagsBits;
          v239 = v25;
          v29 = (v231 + 104 * v25);
          v30 = *v29;
          v31 = v29[2];
          v32 = v245;
          *(v245 + 16) = v29[1];
          *(v245 + 32) = v31;
          *v245 = v30;
          v33 = v29[3];
          v34 = v29[4];
          v35 = v29[5];
          *(v245 + 93) = *(v29 + 93);
          *(v245 + 64) = v34;
          *(v245 + 80) = v35;
          *(v245 + 48) = v33;
          v4 = *(v0 + 2272);
          v255 = *(v0 + 2280);
          v257 = *(v0 + 2288);
          v241 = *(v0 + 2296);
          v243 = *(v0 + 2304);
          v244 = *(v0 + 2264);
          v235 = *(v0 + 2312);
          v36 = *(v0 + 2328);
          v238 = v4;
          v251 = *(v0 + 2256);
          if (!*(v3 + 16))
          {
            break;
          }

          v37 = sub_43124(*(v0 + 2256));
          if ((v38 & 1) == 0)
          {
            v48 = v0 + 2464;
            goto LABEL_37;
          }

          if (!*(v246 + 16))
          {
            v48 = v0 + 2672;
LABEL_37:
            v32 = v245;
LABEL_38:
            sub_43050(v32, v48, &qword_22F7A8, &qword_1D19E0);
            goto LABEL_39;
          }

          v39 = (*(v3 + 56) + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          sub_1B57F4();
          sub_43050(v245, v0 + 2568, &qword_22F7A8, &qword_1D19E0);

          sub_1B4884();
          v42 = sub_1B5844();
          v43 = -1 << *(v246 + 32);
          v44 = v42 & ~v43;
          if ((*(v234 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              v46 = (*(v246 + 48) + 16 * v44);
              v47 = *v46 == v41 && v46[1] == v40;
              if (v47 || (sub_1B5604() & 1) != 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v234 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v270._countAndFlagsBits = 0;
            v270._object = 0xE000000000000000;
            v293._countAndFlagsBits = 0;
            v293._object = 0xE000000000000000;
            sub_1B48D4(v293);

            *v217 = v251;
            v294._countAndFlagsBits = sub_1B5594();
            sub_1B48D4(v294);

            v295._countAndFlagsBits = 8744;
            v295._object = 0xE200000000000000;
            sub_1B48D4(v295);
            v4 = v238;
            if (sub_1B4894() < 21)
            {

              v147._countAndFlagsBits = v244;
              object = v238;
            }

            else
            {

              sub_4123C(20, v244, v238);

              v144 = sub_1B4864();
              v146 = v145;

              v269[0]._countAndFlagsBits = v144;
              v269[0]._object = v146;
              v296._countAndFlagsBits = 10911970;
              v296._object = 0xA300000000000000;
              sub_1B48D4(v296);
              v147._countAndFlagsBits = v269[0]._countAndFlagsBits;
              object = v269[0]._object;
            }

            v147._object = object;
            sub_1B48D4(v147);

            v298._countAndFlagsBits = 10530;
            v298._object = 0xE200000000000000;
            sub_1B48D4(v298);
            sub_1B48D4(v270);

            sub_111CE0(v269, v251);
          }

          else
          {
LABEL_33:

            v4 = v238;
          }

LABEL_39:
          v1 = v254[15];
          v49 = v254[16];
          sub_2698((*(v0 + 3016) + 96), v1);
          v50 = (*(v49 + 8))(v244, v4, v1, v49);
          v247 = v51;
          v240 = v50;
          v236 = v36;
          if (*(v233 + 16))
          {
            v52 = sub_3A678(v50, v51);
            if (v53)
            {
              v54 = *(*(*(v233 + 56) + 8 * v52) + 16);

              v56 = (v55 + 64);
              v249 = v55;
              v57 = -1;
              while (1)
              {
                if (v57 - v54 == -1)
                {

                  v0 = v228;
                  v67 = v229;
                  v68 = v243;
                  if (v243)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_68;
                }

                if (++v57 >= *(v249 + 16))
                {
                  __break(1u);
LABEL_206:
                  __break(1u);
                  goto LABEL_207;
                }

                v58 = *v56;
                v252 = *(v56 - 1);
                v59 = v254[20];
                v0 = v254[21];
                sub_2698(v254 + 17, v59);
                v60 = *(v0 + 8);

                v1 = v60(v252, v58, v59, v0);
                v62 = v61;

                v63 = v254[20];
                v64 = v254[21];
                sub_2698(v254 + 17, v63);
                if (v1 == (*(v64 + 8))(v255, v257, v63, v64) && v62 == v65)
                {
                  break;
                }

                v56 += 5;
                v4 = sub_1B5604();

                if (v4)
                {
                  goto LABEL_64;
                }
              }

LABEL_64:

              v270._countAndFlagsBits = 0;
              v270._object = 0xE000000000000000;
              v278._countAndFlagsBits = 0;
              v278._object = 0xE000000000000000;
              sub_1B48D4(v278);

              *v220 = v251;
              v279._countAndFlagsBits = sub_1B5594();
              sub_1B48D4(v279);

              v280._countAndFlagsBits = 8744;
              v280._object = 0xE200000000000000;
              sub_1B48D4(v280);
              v88 = v238;
              if (sub_1B4894() < 21)
              {

                v92._countAndFlagsBits = v244;
              }

              else
              {

                sub_4123C(20, v244, v238);

                v89 = sub_1B4864();
                v91 = v90;

                v269[0]._countAndFlagsBits = v89;
                v269[0]._object = v91;
                v281._countAndFlagsBits = 10911970;
                v281._object = 0xA300000000000000;
                sub_1B48D4(v281);
                v92._countAndFlagsBits = v269[0]._countAndFlagsBits;
                v88 = v269[0]._object;
              }

              v0 = v228;
              v67 = v229;
              v92._object = v88;
              sub_1B48D4(v92);

              v282._countAndFlagsBits = 10530;
              v282._object = 0xE200000000000000;
              sub_1B48D4(v282);
              sub_1B48D4(v270);

              sub_111CE0(v269, v251);
              v68 = v243;
              if (v243)
              {
                goto LABEL_51;
              }

LABEL_68:
              v3 = v67;
              goto LABEL_69;
            }
          }

          v67 = v3;
          v68 = v243;
          if (!v243)
          {
            goto LABEL_68;
          }

LABEL_51:
          v69 = _swiftEmptyDictionarySingleton[2];

          if (v69)
          {
            v70 = sub_3A678(v241, v68);
            if (v71)
            {
              v72 = (_swiftEmptyDictionarySingleton[7] + 16 * v70);
              v73 = *v72;
              v74 = v72[1];

              v3 = v67;
LABEL_58:
              v85 = sub_194008();
              *(v0 + 2936) = v73;
              *(v0 + 2944) = v74;
              v86 = swift_task_alloc();
              *(v86 + 16) = v225;
              v87 = sub_50718(sub_199C04, v86, v85);

              if (v87)
              {
              }

              else
              {
                v269[0]._countAndFlagsBits = 0;
                v269[0]._object = 0xE000000000000000;
                v273._countAndFlagsBits = 0;
                v273._object = 0xE000000000000000;
                sub_1B48D4(v273);

                *v221 = v251;
                v274._countAndFlagsBits = sub_1B5594();
                sub_1B48D4(v274);

                v275._countAndFlagsBits = 40;
                v275._object = 0xE100000000000000;
                sub_1B48D4(v275);
                v276._countAndFlagsBits = v73;
                v276._object = v74;
                sub_1B48D4(v276);

                v277._countAndFlagsBits = 41;
                v277._object = 0xE100000000000000;
                sub_1B48D4(v277);
                sub_1B48D4(v269[0]);

                sub_111CE0(v269, v251);
              }

              goto LABEL_69;
            }
          }

          v75 = *(v0 + 3104);
          v76 = *(v0 + 3096);
          v77 = *(v0 + 3080);
          v78 = *(v0 + 3072);
          v79 = *(v0 + 3056);

          sub_1B4104();
          sub_1B4164();
          (*v224)(v76, v77);
          sub_1B4144();
          (*v223)(v78, v79);
          v80 = sub_1B4124();
          v81 = *(v80 - 8);
          v82 = (*(v81 + 48))(v75, 1, v80);
          v83 = *(v0 + 3104);
          if (v82 == 1)
          {
            sub_42F48(*(v0 + 3104), &qword_22F798, &qword_1D19D0);
            v73 = 0;
            v74 = 0;
          }

          else
          {
            v73 = sub_1B4114();
            v74 = v84;
            (*(v81 + 8))(v83, v80);
          }

          v3 = v67;

          sub_49BA0(v73, v74, v241, v243);
          if (v74)
          {
            goto LABEL_58;
          }

LABEL_69:
          v93 = *(v0 + 3152);
          v94 = *(v0 + 3032);
          sub_43050(*(v0 + 3168), v93, &qword_22F7A0, &qword_1D19D8);
          if ((*v230)(v93, 1, v94) == 1)
          {
            sub_42F48(*(v0 + 3152), &qword_22F7A0, &qword_1D19D8);
            if (v235)
            {
              v269[0]._countAndFlagsBits = 0;
              v269[0]._object = 0xE000000000000000;
              v283._countAndFlagsBits = 0;
              v283._object = 0xE000000000000000;
              sub_1B48D4(v283);

              *v222 = v251;
              v284._countAndFlagsBits = sub_1B5594();
              sub_1B48D4(v284);

              v285._countAndFlagsBits = 0x6564726F65727028;
              v285._object = 0xEA00000000002972;
              sub_1B48D4(v285);
              sub_1B48D4(v269[0]);

              sub_111CE0(v269, v251);
            }
          }

          else
          {
            (*v227)(*(v0 + 3048), *(v0 + 3152), *(v0 + 3032));
            if (v236)
            {

              sub_1B43D4();
              if (v237)
              {

                if (qword_228348 != -1)
                {
                  swift_once();
                }

                v95 = sub_1B4644();
                sub_50E58(v95, qword_22F6A0);
                swift_errorRetain();
                v96 = sub_1B4624();
                v97 = sub_1B4DB4();

                v98 = os_log_type_enabled(v96, v97);
                v99 = *(v0 + 3048);
                v100 = *(v0 + 3032);
                if (v98)
                {
                  v101 = swift_slowAlloc();
                  v102 = swift_slowAlloc();
                  *v101 = 138412290;
                  swift_errorRetain();
                  v103 = _swift_stdlib_bridgeErrorToNSError();
                  *(v101 + 4) = v103;
                  *v102 = v103;
                  _os_log_impl(&dword_0, v96, v97, "Error matching artwork URL against regex: %@", v101, 0xCu);
                  sub_42F48(v102, &qword_22B250, &qword_1C3850);
                }

                else
                {
                }

                (*v226)(v99, v100);
              }

              else
              {
                v104 = *(v0 + 3024);

                v105 = sub_2B0C(&qword_22F7B0, &qword_1D19E8);
                v106 = (*(*(v105 - 8) + 48))(v104, 1, v105);
                v107 = *(v0 + 3048);
                v108 = *(v0 + 3032);
                v109 = *(v0 + 3024);
                if (v106 != 1)
                {
                  v269[0]._countAndFlagsBits = 0;
                  v269[0]._object = 0xE000000000000000;
                  v286._countAndFlagsBits = 0;
                  v286._object = 0xE000000000000000;
                  sub_1B48D4(v286);

                  *v216 = v251;
                  v287._countAndFlagsBits = sub_1B5594();
                  sub_1B48D4(v287);

                  v288._countAndFlagsBits = 0x29786567657228;
                  v288._object = 0xE700000000000000;
                  sub_1B48D4(v288);
                  sub_1B48D4(v269[0]);

                  sub_111CE0(v269, v251);
                }

                (*v226)(v107, v108);
                sub_42F48(v109, &qword_22F788, &qword_1D19C0);
              }

              v237 = 0;
            }

            else
            {
              (*v226)(*(v0 + 3048), *(v0 + 3032));
            }
          }

          countAndFlagsBits = v242;
          v4 = v247;
          v1 = _swiftEmptySetSingleton;
          if (_swiftEmptySetSingleton[2])
          {
            v110 = v251;
            v111 = sub_1B57E4();
            v112 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
            v113 = v111 & ~v112;
            if ((*(&_swiftEmptySetSingleton[7] + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113))
            {
              v114 = ~v112;
              while (*(_swiftEmptySetSingleton[6] + 8 * v113) != v251)
              {
                v113 = (v113 + 1) & v114;
                if (((*(&_swiftEmptySetSingleton[7] + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              goto LABEL_132;
            }

LABEL_90:
            if (!v242[2])
            {
              goto LABEL_103;
            }
          }

          else
          {
            v110 = v251;
            if (!v242[2])
            {
              goto LABEL_103;
            }
          }

          v115 = sub_3A678(v240, v247);
          v110 = v251;
          if ((v116 & 1) == 0)
          {
LABEL_103:
            sub_2B0C(&qword_229478, &qword_1BC510);
            v1 = swift_allocObject();
            *(v1 + 1) = xmmword_1BCA80;
            v1[4] = v110;
            v1[5] = v240;
            v1[6] = v247;
            v1[7] = v255;
            v1[8] = v257;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v269[0]._countAndFlagsBits = v242;
            v131 = sub_3A678(v240, v247);
            v133 = v242[2];
            v134 = (v132 & 1) == 0;
            v135 = __OFADD__(v133, v134);
            v136 = v133 + v134;
            if (v135)
            {
              goto LABEL_208;
            }

            v4 = v132;
            if (v242[3] >= v136)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_108;
              }

              v153 = v131;
              sub_18847C();
              v131 = v153;
              if ((v4 & 1) == 0)
              {
                goto LABEL_129;
              }

LABEL_109:
              v138 = v131;

              countAndFlagsBits = v269[0]._countAndFlagsBits;
              *(*(v269[0]._countAndFlagsBits + 56) + 8 * v138) = v1;
            }

            else
            {
              sub_1841AC(v136, isUniquelyReferenced_nonNull_native);
              v131 = sub_3A678(v240, v247);
              if ((v4 & 1) != (v137 & 1))
              {

                return sub_1B5784();
              }

LABEL_108:
              if (v4)
              {
                goto LABEL_109;
              }

LABEL_129:
              countAndFlagsBits = v269[0]._countAndFlagsBits;
              *(v269[0]._countAndFlagsBits + 8 * (v131 >> 6) + 64) |= 1 << v131;
              v154 = (countAndFlagsBits[6] + 16 * v131);
              *v154 = v240;
              v154[1] = v247;
              *(countAndFlagsBits[7] + 8 * v131) = v1;
              v155 = countAndFlagsBits[2];
              v135 = __OFADD__(v155, 1);
              v156 = v155 + 1;
              if (v135)
              {
                goto LABEL_209;
              }

              countAndFlagsBits[2] = v156;
            }

            v110 = v251;
            goto LABEL_132;
          }

          v117 = *(*(v242[7] + 8 * v115) + 16);

          v0 = v118 + 64;
          v248 = -v117;
          v250 = v118;
          v119 = -1;
          while (1)
          {
            if (v248 + v119 == -1)
            {
              v0 = v228;
              v3 = v229;
              v110 = v251;
              goto LABEL_119;
            }

            if (++v119 >= *(v250 + 2))
            {
              goto LABEL_206;
            }

            v121 = *(v0 - 8);
            v120 = *v0;
            v122 = v254[20];
            v123 = v254[21];
            sub_2698(v254 + 17, v122);
            v253 = *(v123 + 8);

            v124 = v253(v121, v120, v122, v123);
            v1 = v125;

            v126 = v254[20];
            v127 = v254[21];
            sub_2698(v254 + 17, v126);
            if (v124 == (*(v127 + 8))(v255, v257, v126, v127) && v1 == v128)
            {
              break;
            }

            v0 += 40;
            v4 = sub_1B5604();

            if (v4)
            {
              goto LABEL_113;
            }
          }

LABEL_113:
          v270._countAndFlagsBits = 0;
          v270._object = 0xE000000000000000;
          v289._countAndFlagsBits = 0;
          v289._object = 0xE000000000000000;
          sub_1B48D4(v289);

          *v219 = v251;
          v290._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v290);

          v291._countAndFlagsBits = 8744;
          v291._object = 0xE200000000000000;
          sub_1B48D4(v291);
          v139 = v238;
          if (sub_1B4894() < 21)
          {

            v143._countAndFlagsBits = v244;
          }

          else
          {

            sub_4123C(20, v244, v238);

            v140 = sub_1B4864();
            v142 = v141;

            v269[0]._countAndFlagsBits = v140;
            v269[0]._object = v142;
            v292._countAndFlagsBits = 10911970;
            v292._object = 0xA300000000000000;
            sub_1B48D4(v292);
            v143._countAndFlagsBits = v269[0]._countAndFlagsBits;
            v139 = v269[0]._object;
          }

          v0 = v228;
          v3 = v229;
          v143._object = v139;
          sub_1B48D4(v143);

          v297._countAndFlagsBits = 10530;
          v297._object = 0xE200000000000000;
          sub_1B48D4(v297);
          sub_1B48D4(v270);

          sub_111CE0(v269, v251);
          v110 = v251;
LABEL_119:
          countAndFlagsBits = v242;
          if (sub_2AA44(v110, _swiftEmptySetSingleton))
          {
          }

          else
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v250 = sub_34DD4(0, *(v250 + 2) + 1, 1, v250);
            }

            v150 = *(v250 + 2);
            v149 = *(v250 + 3);
            if (v150 >= v149 >> 1)
            {
              v250 = sub_34DD4((v149 > 1), v150 + 1, 1, v250);
            }

            *(v250 + 2) = v150 + 1;
            v151 = &v250[40 * v150];
            *(v151 + 4) = v251;
            *(v151 + 5) = v240;
            *(v151 + 6) = v247;
            *(v151 + 7) = v255;
            *(v151 + 8) = v257;
            v152 = swift_isUniquelyReferenced_nonNull_native();
            v269[0]._countAndFlagsBits = v242;
            sub_548BC(v250, v240, v247, v152);
            v110 = v251;

            countAndFlagsBits = v269[0]._countAndFlagsBits;
          }

LABEL_132:
          if (_swiftEmptySetSingleton[2] && (v157 = sub_1B57E4(), v158 = -1 << LOBYTE(_swiftEmptySetSingleton[4]), v159 = v157 & ~v158, ((*(&_swiftEmptySetSingleton[7] + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) != 0))
          {
            v160 = ~v158;
            while (*(_swiftEmptySetSingleton[6] + 8 * v159) != v110)
            {
              v159 = (v159 + 1) & v160;
              if (((*(&_swiftEmptySetSingleton[7] + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
              {
                goto LABEL_137;
              }
            }
          }

          else
          {
LABEL_137:
            if (*(v3 + 16))
            {
              v161 = sub_43124(v110);
              if (v162)
              {
                v163 = (*(v3 + 56) + 16 * v161);
                v165 = *v163;
                v164 = v163[1];

                if (sub_2AAEC(v165, v164, _swiftEmptySetSingleton))
                {

                  sub_111CE0(v269, v251);
                  v270._countAndFlagsBits = 0;
                  v270._object = 0xE000000000000000;
                  v299._countAndFlagsBits = 0;
                  v299._object = 0xE000000000000000;
                  sub_1B48D4(v299);

                  *v218 = v251;
                  v300._countAndFlagsBits = sub_1B5594();
                  sub_1B48D4(v300);

                  v301._countAndFlagsBits = 8744;
                  v301._object = 0xE200000000000000;
                  sub_1B48D4(v301);
                  v166 = v238;
                  if (sub_1B4894() < 21)
                  {

                    sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
                    v170._countAndFlagsBits = v244;
                  }

                  else
                  {

                    sub_4123C(20, v244, v238);

                    sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
                    v167 = sub_1B4864();
                    v169 = v168;

                    v269[0]._countAndFlagsBits = v167;
                    v269[0]._object = v169;
                    v302._countAndFlagsBits = 10911970;
                    v302._object = 0xA300000000000000;
                    sub_1B48D4(v302);
                    v170._countAndFlagsBits = v269[0]._countAndFlagsBits;
                    v166 = v269[0]._object;
                  }

                  v170._object = v166;
                  sub_1B48D4(v170);

                  v303._countAndFlagsBits = 10530;
                  v303._object = 0xE200000000000000;
                  sub_1B48D4(v303);
                  sub_1B48D4(v270);
                }

                else
                {
                  sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
                  sub_111A38(v269, v165, v164);
                }

                goto LABEL_21;
              }
            }
          }

          sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
LABEL_21:
          v25 = v239 + 1;
          if (v239 + 1 == v232)
          {

            goto LABEL_148;
          }
        }

        v48 = v0 + 2776;
        goto LABEL_38;
      }

LABEL_148:

      goto LABEL_152;
    }

    v12 = *(v4 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
LABEL_10:
      v7 = (v12 - 1) & v12;
      if (*(v3 + 16))
      {
        v1 = v9;
        v14 = sub_43124(*(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v12))))));
        v9 = v1;
        if (v15)
        {
          v16 = (*(v3 + 56) + 16 * v14);
          v17 = v16[1];
          v256 = *v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_3301C(0, *(v11 + 2) + 1, 1, v11);
          }

          v19 = *(v11 + 2);
          v18 = *(v11 + 3);
          if (v19 >= v18 >> 1)
          {
            v21 = sub_3301C((v18 > 1), v19 + 1, 1, v11);
            v9 = v1;
            v11 = v21;
          }

          else
          {
            v9 = v1;
          }

          *(v11 + 2) = v19 + 1;
          v20 = &v11[16 * v19];
          *(v20 + 4) = v256;
          *(v20 + 5) = v17;
          v0 = v228;
          v3 = v229;
        }
      }

      goto LABEL_4;
    }
  }

LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
  swift_once();
  v171 = sub_1B4644();
  sub_50E58(v171, qword_22F6A0);

  v172 = sub_1B4624();
  v173 = sub_1B4DB4();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v269[0]._countAndFlagsBits = v175;
    *v174 = 136315138;
    v176 = sub_60FF4(v1, v4, &v269[0]._countAndFlagsBits);

    *(v174 + 4) = v176;
    _os_log_impl(&dword_0, v172, v173, "Similar titles in library: %s", v174, 0xCu);
    sub_2BF8(v175);

    goto LABEL_153;
  }

LABEL_152:

LABEL_153:
  v177 = HIBYTE(v260) & 0xF;
  if ((v260 & 0x2000000000000000) == 0)
  {
    v177 = v259 & 0xFFFFFFFFFFFFLL;
  }

  if (v177)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v178 = sub_1B4644();
    sub_50E58(v178, qword_22F6A0);

    v179 = sub_1B4624();
    v180 = sub_1B4DB4();

    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v269[0]._countAndFlagsBits = v182;
      *v181 = 136315138;
      v183 = sub_60FF4(v259, v260, &v269[0]._countAndFlagsBits);

      *(v181 + 4) = v183;
      _os_log_impl(&dword_0, v179, v180, "Books for which the user has that book work in their library: %s", v181, 0xCu);
      sub_2BF8(v182);

      goto LABEL_162;
    }
  }

LABEL_162:
  v184 = HIBYTE(v262) & 0xF;
  if ((v262 & 0x2000000000000000) == 0)
  {
    v184 = v261 & 0xFFFFFFFFFFFFLL;
  }

  if (v184)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v185 = sub_1B4644();
    sub_50E58(v185, qword_22F6A0);

    v186 = sub_1B4624();
    v187 = sub_1B4DB4();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v269[0]._countAndFlagsBits = v189;
      *v188 = 136315138;
      v190 = sub_60FF4(v261, v262, &v269[0]._countAndFlagsBits);

      *(v188 + 4) = v190;
      _os_log_impl(&dword_0, v186, v187, "Languages not installed on this system: %s", v188, 0xCu);
      sub_2BF8(v189);

      goto LABEL_171;
    }
  }

LABEL_171:
  v191 = HIBYTE(v264) & 0xF;
  if ((v264 & 0x2000000000000000) == 0)
  {
    v191 = v263 & 0xFFFFFFFFFFFFLL;
  }

  if (v191)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v192 = sub_1B4644();
    sub_50E58(v192, qword_22F6A0);

    v193 = sub_1B4624();
    v194 = sub_1B4DB4();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v269[0]._countAndFlagsBits = v196;
      *v195 = 136315138;
      v197 = sub_60FF4(v263, v264, &v269[0]._countAndFlagsBits);

      *(v195 + 4) = v197;
      _os_log_impl(&dword_0, v193, v194, "Generic artwork: %s", v195, 0xCu);
      sub_2BF8(v196);

      goto LABEL_180;
    }
  }

LABEL_180:
  v198 = HIBYTE(v266) & 0xF;
  if ((v266 & 0x2000000000000000) == 0)
  {
    v198 = v265 & 0xFFFFFFFFFFFFLL;
  }

  if (!v198)
  {
    goto LABEL_188;
  }

  if (qword_228348 != -1)
  {
    swift_once();
  }

  v199 = sub_1B4644();
  sub_50E58(v199, qword_22F6A0);

  v200 = sub_1B4624();
  v201 = sub_1B4DB4();

  if (!os_log_type_enabled(v200, v201))
  {

LABEL_188:

    goto LABEL_189;
  }

  v202 = swift_slowAlloc();
  v203 = swift_slowAlloc();
  v269[0]._countAndFlagsBits = v203;
  *v202 = 136315138;
  v204 = sub_60FF4(v265, v266, &v269[0]._countAndFlagsBits);

  *(v202 + 4) = v204;
  _os_log_impl(&dword_0, v200, v201, "Similar titles within suggestions, removed later candidates: %s", v202, 0xCu);
  sub_2BF8(v203);

LABEL_189:
  v205 = HIBYTE(v268) & 0xF;
  if ((v268 & 0x2000000000000000) == 0)
  {
    v205 = v267 & 0xFFFFFFFFFFFFLL;
  }

  if (v205)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v206 = sub_1B4644();
    sub_50E58(v206, qword_22F6A0);

    v207 = sub_1B4624();
    v208 = sub_1B4DB4();

    v209 = os_log_type_enabled(v207, v208);
    v210 = *(v0 + 3168);
    if (v209)
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v269[0]._countAndFlagsBits = v212;
      *v211 = 136315138;
      v213 = sub_60FF4(v267, v268, &v269[0]._countAndFlagsBits);

      *(v211 + 4) = v213;
      _os_log_impl(&dword_0, v207, v208, "Similar book work IDs within suggestions, removed later candidates: %s", v211, 0xCu);
      sub_2BF8(v212);
    }

    else
    {
    }

    sub_42F48(v210, &qword_22F7A0, &qword_1D19D8);
  }

  else
  {
    sub_42F48(*(v0 + 3168), &qword_22F7A0, &qword_1D19D8);
  }

  v214 = *(v0 + 8);

  return v214(v258);
}

uint64_t sub_199714()
{
  sub_42F48(*(v0 + 3168), &qword_22F7A0, &qword_1D19D8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199824()
{
  v1 = v0[396];
  sub_199C5C(v0[393]);
  sub_42F48(v1, &qword_22F7A0, &qword_1D19D8);

  v2 = v0[1];

  return v2();
}

__n128 sub_199940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 93))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1999AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 93) = 1;
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

    *(result + 93) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookRecommendationPostHydrationFilteringServiceType.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_199B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22F7A0, &qword_1D19D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199C04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B5604() & 1;
  }
}

uint64_t sub_199C5C(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizationMetadataRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199CB8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C78 = result;
  return result;
}

uint64_t sub_199D24()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C80);
  sub_50E58(v0, qword_260C80);
  if (qword_228350 != -1)
  {
    swift_once();
  }

  v1 = qword_260C78;
  return sub_1B4654();
}

uint64_t sub_199DB0(uint64_t a1, const void *a2)
{
  *(v3 + 4648) = v2;
  *(v3 + 4656) = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(v3 + 4664) = swift_task_alloc();
  v6 = sub_1B40F4();
  *(v3 + 4672) = v6;
  *(v3 + 4680) = *(v6 - 8);
  *(v3 + 4688) = swift_task_alloc();
  *(v3 + 4696) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *(a1 + 16);
  *(v3 + 4712) = *a1;
  *(v3 + 4704) = v7;
  *(v3 + 4728) = v8;
  *(v3 + 3739) = *(a1 + 32);
  *(v3 + 3740) = *(a1 + 33);
  *(v3 + 4744) = *(a1 + 40);
  *(v3 + 3741) = *(a1 + 48);
  memcpy((v3 + 16), a2, 0x460uLL);

  return _swift_task_switch(sub_199F0C, 0, 0);
}

uint64_t sub_199F0C(uint64_t a1)
{
  v30 = v1;
  sub_1B40E4();
  if (qword_228358 != -1)
  {
    swift_once();
  }

  v2 = v1[588];
  v3 = v1[587];
  v4 = v1[585];
  v5 = v1[584];
  v6 = sub_1B4644();
  v1[594] = sub_50E58(v6, qword_260C80);
  v7 = *(v4 + 16);
  v1[595] = v7;
  v1[596] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v5);
  v8 = sub_1B4624();
  v9 = sub_1B4DB4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[587];
  v12 = v1[585];
  v13 = v1[584];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446210;
    v28 = sub_1B40D4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_60FF4(v28, v17, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "fetching seed books for %{public}s", v14, 0xCu);
    sub_2BF8(v15);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v1[597] = v18;
  v20 = v1[581];
  v21 = v1[55];
  v22 = v20[15];
  v23 = v20[16];
  sub_2698(v20 + 12, v22);
  memcpy(v1 + 142, v1 + 2, 0x460uLL);
  v24 = *(v23 + 8);
  sub_71E28((v1 + 13), (v1 + 422));
  sub_71E28((v1 + 13), (v1 + 468));
  v27 = (v24 + *v24);
  v25 = swift_task_alloc();
  v1[598] = v25;
  *v25 = v1;
  v25[1] = sub_19A234;

  return (v27)(v1 + 142, v21, v22, v23);
}

uint64_t sub_19A234(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4792) = a1;
  *(v3 + 4800) = v1;

  if (v1)
  {
    sub_72470(v3 + 104);
    sub_72470(v3 + 104);
    v4 = sub_19AAA0;
  }

  else
  {
    v4 = sub_19A35C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19A35C()
{
  v45 = v0;
  (*(v0 + 4760))(*(v0 + 4688), *(v0 + 4704), *(v0 + 4672));
  v1 = sub_1B4624();
  v2 = sub_1B4DB4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 4776);
  v5 = *(v0 + 4688);
  v6 = *(v0 + 4672);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v42 = v2;
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315138;
    v9 = sub_1B40D4();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_60FF4(v9, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v1, v42, "fetched seed books for %s", v7, 0xCu);
    sub_2BF8(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 4800);
  v14 = *(v0 + 41);
  sub_2698((*(v0 + 4648) + 56), *(*(v0 + 4648) + 80));
  LOBYTE(v44[0]) = v14;
  sub_16C6D8(v44, v0 + 4608);
  if (v13)
  {
    v15 = *(v0 + 4776);
    v16 = *(v0 + 4704);
    v17 = *(v0 + 4672);

    sub_72470(v0 + 104);
    sub_72470(v0 + 104);
    v15(v16, v17);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 4792);
    v21 = *(v0 + 4760);
    v40 = *(v0 + 3741);
    v39 = *(v0 + 4744);
    v37 = *(v0 + 3739);
    v38 = *(v0 + 3740);
    v22 = *(v0 + 4736);
    v36 = *(v0 + 4728);
    v23 = *(v0 + 4720);
    v34 = *(v0 + 4712);
    v24 = *(v0 + 4704);
    v25 = *(v0 + 4672);
    v26 = *(v0 + 4664);
    v27 = *(v0 + 4656);
    v41 = *(v0 + 4632);
    v43 = *(v0 + 4640);
    sub_2698((v0 + 4608), v41);
    v28 = sub_2A594(v20);
    v33 = *(v0 + 392);
    v35 = *(v0 + 400);
    v21(v26, v24, v25);

    sub_72470(v0 + 104);
    *(v26 + v27[5]) = v28;
    v29 = (v26 + v27[6]);
    *v29 = v34;
    v29[1] = v23;
    v30 = (v26 + v27[7]);
    *v30 = v36;
    v30[1] = v22;
    *(v26 + v27[8]) = v37;
    *(v26 + v27[9]) = v38;
    *(v26 + v27[10]) = v39;
    *(v26 + v27[11]) = v40;
    *(v26 + v27[12]) = _swiftEmptySetSingleton;
    *(v26 + v27[13]) = v33;
    *(v26 + v27[14]) = v35;
    memcpy((v0 + 2256), (v0 + 16), 0x460uLL);
    v31 = swift_task_alloc();
    *(v0 + 4808) = v31;
    *v31 = v0;
    v31[1] = sub_19A774;
    v32 = *(v0 + 4664);

    return sub_165F78(v32, v0 + 2256, v41, v43);
  }
}

uint64_t sub_19A774(uint64_t a1)
{
  v3 = *v2;
  v3[602] = a1;
  v3[603] = v1;

  if (v1)
  {
    v4 = v3[583];
    sub_72470((v3 + 13));
    sub_155848(v4);
    v5 = sub_19AB50;
  }

  else
  {
    sub_155848(v3[583]);
    v5 = sub_19A8A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_19A8A8()
{
  v23 = v0;
  v1 = *(v0 + 4816);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 4480);
    v22[0] = _swiftEmptyArrayStorage;
    sub_375F8(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[3];
      *(v0 + 4512) = v5[2];
      *(v0 + 4528) = v9;
      *v3 = v7;
      *(v0 + 4496) = v8;
      sub_42BA4(v0 + 4480, v0 + 4544);
      v22[0] = v4;
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_375F8((v10 > 1), v11 + 1, 1);
        v4 = v22[0];
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[64 * v11];
      v13 = *v3;
      v14 = *(v0 + 4496);
      v15 = *(v0 + 4528);
      *(v12 + 4) = *(v0 + 4512);
      *(v12 + 5) = v15;
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
      if (!i)
      {
        break;
      }

      v5 = (v5 + 136);
    }
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v16 = *(v0 + 4704);
  v17 = *(v0 + 4680);
  v18 = *(v0 + 4672);
  sub_2BF8((v0 + 4608));
  memcpy(v22, (v0 + 104), 0x16BuLL);
  v19 = sub_885C8(v4, v22);

  memcpy((v0 + 4112), v22, 0x16BuLL);
  sub_71DC0(v0 + 4112);
  (*(v17 + 8))(v16, v18);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_19AAA0()
{
  (*(v0 + 4776))(*(v0 + 4704), *(v0 + 4672));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19AB50()
{
  (*(v0[585] + 8))(v0[588], v0[584]);
  sub_2BF8(v0 + 576);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19AC08(uint64_t a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_199DB0(a1, a2);
}

uint64_t sub_19ACB0()
{
  result = sub_40228(&off_20E7A8);
  qword_22F7B8 = result;
  return result;
}

uint64_t static Set<>.local.getter()
{
  if (qword_228360 != -1)
  {
    swift_once();
  }
}

_BYTE *MoreFromYourAuthorsOptions.init(mediaType:seedBooks:excludedStoreIDs:hydratedBooksFetchLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t dispatch thunk of MoreFromYourAuthorsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

Swift::Int sub_19AEB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56C20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_19B838(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_19AF20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19AF5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19AF5C()
{
  v1 = *(v0 + 8);
  v22 = *(v0 + 40);
  v23 = &off_214020;
  sub_19AEB4(&v23);
  v2 = v23;
  v3 = *(v23 + 2);
  if (!v3)
  {

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v4 = 0xE90000000000006BLL;
  v23 = _swiftEmptyArrayStorage;
  sub_3747C(0, v3, 0);
  v5 = v23;
  v6 = v1 == 0;
  if (v1)
  {
    v7 = 0x6F6F626F69647561;
  }

  else
  {
    v7 = 0x6B6F6F6265;
  }

  if (v6)
  {
    v4 = 0xE500000000000000;
  }

  v8 = 32;
  do
  {
    if (v2[v8])
    {
      v9 = 0x6F6F626F69647561;
    }

    else
    {
      v9 = 0x6B6F6F6265;
    }

    if (v2[v8])
    {
      v10 = 0xE90000000000006BLL;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v9 == v7 && v10 == v4)
    {
    }

    else
    {
      v12 = sub_1B5604();

      if (v12 & 1) == 0 && (v22)
      {
        v13 = 0xE400000000000000;
        v14 = 1701736302;
        goto LABEL_24;
      }
    }

    v14 = sub_1B5594();
LABEL_24:
    v23 = v5;
    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v21 = v14;
      v18 = v13;
      sub_3747C((v15 > 1), v16 + 1, 1);
      v14 = v21;
      v13 = v18;
      v5 = v23;
    }

    *(v5 + 2) = v16 + 1;
    v17 = &v5[16 * v16];
    *(v17 + 4) = v14;
    *(v17 + 5) = v13;
    ++v8;
    --v3;
  }

  while (v3);

LABEL_30:
  v23 = v5;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_76824();
  v19 = sub_1B4764();

  return v19;
}

void *sub_19B1E0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, 0x231uLL);
  v8 = __dst[8];
  v9 = *(a2 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 32));
  if (v8)
  {
    v10 = 0x6F6F626F69647561;
  }

  else
  {
    v10 = 0x6B6F6F6265;
  }

  if (v8)
  {
    v11 = 0xE90000000000006BLL;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v9)
  {
    v12 = 0x6F6F626F69647561;
  }

  else
  {
    v12 = 0x6B6F6F6265;
  }

  if (v9)
  {
    v13 = 0xE90000000000006BLL;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    goto LABEL_21;
  }

  v15 = sub_1B5604();

  if (v15)
  {
LABEL_21:
    memcpy(v23, __src, 0x231uLL);
    AuthorRecommendationSource.id.getter();
    memcpy(a4, v23, 0x231uLL);
    return sub_4299C(__dst, __srca);
  }

  sub_19B3C8(__srca);
  memcpy(v23, __srca, 0x231uLL);
  if (sub_6153C(v23) == 1)
  {
    v16 = __srca;
  }

  else
  {
    v18 = v23[0];
    if (!*(*a3 + 16) || (sub_43124(v23[0]), (v19 & 1) == 0))
    {
      sub_4299C(__dst, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = *a3;
      *a3 = 0x8000000000000000;
      sub_54BB8(__dst, v18, isUniquelyReferenced_nonNull_native);
      *a3 = v21[0];
    }

    memcpy(v21, v23, 0x231uLL);
    AuthorRecommendationSource.id.getter();
    v16 = v21;
  }

  return memcpy(a4, v16, 0x231uLL);
}

void *sub_19B3C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v35 = *(v1 + 40);
  v36 = v5;
  v37 = *(v1 + 72);
  v38 = *(v1 + 88);
  v33 = *(v1 + 8);
  v34 = v4;
  if (v35)
  {
    sub_61554(__src);
  }

  else
  {
    v6 = v1;
    v7 = *(v1 + 144);
    v8 = *(v1 + 552);
    v9 = *(&v34 + 1);
    LOBYTE(v19[0]) = (v33 & 1) == 0;

    sub_5EDD8(&v33, __src);
    Book.Metadata.copy(for:mappedAssetID:)(v19, v3, 0, v28);
    v10 = *(v1 + 56);
    v30[2] = *(v1 + 40);
    v30[3] = v10;
    v30[4] = *(v1 + 72);
    v31 = *(v1 + 88);
    v11 = *(v1 + 24);
    v30[0] = *(v1 + 8);
    v30[1] = v11;
    sub_85554(v30);
    memcpy(__dst, (v1 + 168), sizeof(__dst));
    v12 = *(v1 + 96);
    v13 = *(v1 + 128);
    v26 = *(v1 + 112);
    v27 = v13;
    v24 = *(v1 + 152);
    v25 = v12;
    if (v7 >> 1 == 0xFFFFFFFF)
    {
      v16 = 12;
    }

    else
    {
      v14 = *(v1 + 112);
      __src[0] = *(v1 + 96);
      __src[1] = v14;
      __src[2] = *(v1 + 128);
      *&__src[3] = v7;
      *(&__src[3] + 8) = *(v1 + 152);
      sub_12700C(&v22);
      v16 = v22;
      v17 = v6[7];
      v19[0] = v6[6];
      v19[1] = v17;
      v19[2] = v6[8];
      v20 = v7;
      v21 = *(v6 + 152);
      sub_42CD4(v19, v18);
    }

    *(&__src[2] + 8) = v28[2];
    *(&__src[3] + 8) = v28[3];
    *(&__src[4] + 8) = v28[4];
    *(__src + 8) = v28[0];
    *(&__src[1] + 8) = v28[1];
    __src[7] = v26;
    __src[8] = v27;
    __src[6] = v25;
    *&__src[0] = v9;
    *(&__src[5] + 1) = v29;
    *&__src[9] = v7;
    *(&__src[9] + 8) = v24;
    memcpy(&__src[10] + 8, __dst, 0x179uLL);
    *(&__src[34] + 1) = v8;
    LOBYTE(__src[35]) = v16;
    AuthorRecommendationSource.id.getter();
  }

  return memcpy(a1, __src, 0x231uLL);
}

uint64_t Book.Metadata.copy(for:mappedAssetID:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = v4[2];
  v9 = v4[4];
  *&v31[16] = v4[3];
  *&v31[32] = v9;
  v32 = *(v4 + 10);
  v10 = v4[1];
  v29 = *v4;
  v30 = v10;
  *v31 = v8;
  if (v7)
  {
    v11 = 0x6F6F626F69647561;
  }

  else
  {
    v11 = 0x6B6F6F6265;
  }

  if (v7)
  {
    v12 = 0xE90000000000006BLL;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v29)
  {
    v13 = 0x6F6F626F69647561;
  }

  else
  {
    v13 = 0x6B6F6F6265;
  }

  if (v29)
  {
    v14 = 0xE90000000000006BLL;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {

    goto LABEL_22;
  }

  v17 = sub_1B5604();

  if (v17)
  {
LABEL_22:
    v21 = v4[3];
    *(a4 + 32) = v4[2];
    *(a4 + 48) = v21;
    *(a4 + 64) = v4[4];
    *(a4 + 80) = *(v4 + 10);
    v22 = v4[1];
    *a4 = *v4;
    *(a4 + 16) = v22;
    return sub_5EDD8(&v29, v28);
  }

  v18 = *&v31[24];
  v19 = *&v31[8];
  v20 = v31[40];
  if (v31[24] != 2)
  {
    v20 = 0;
    if (v31[40])
    {
      v18 = xmmword_1BCA90;
      v19 = 0uLL;
    }

    else
    {
      *&v24 = *&v31[8];
      *(&v24 + 1) = *&v31[32];
      *(&v18 + 1) = *&v31[16];
      *&v18 = v31[24] & 1;
      v19 = v24;
    }
  }

  v26 = *(&v29 + 1);
  v25 = v30;
  v27 = v32;
  *a4 = v7;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  *(a4 + 40) = v19;
  *(a4 + 56) = v18;
  *(a4 + 72) = v20;
  *(a4 + 80) = v27;
}

Swift::Int sub_19B838(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1B4B34();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_19BA74(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_19B930(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19B930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v18 = a3;
    v7 = *(v4 + a3);
    v16 = v6;
    v17 = v5;
    while (1)
    {
      if (v7)
      {
        v8 = 0x6F6F626F69647561;
      }

      else
      {
        v8 = 0x6B6F6F6265;
      }

      if (v7)
      {
        v9 = 0xE90000000000006BLL;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (*(v5 - 1))
      {
        v10 = 0x6F6F626F69647561;
      }

      else
      {
        v10 = 0x6B6F6F6265;
      }

      if (*(v5 - 1))
      {
        v11 = 0xE90000000000006BLL;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {

LABEL_5:
        a3 = v18 + 1;
        v5 = v17 + 1;
        v6 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_1B5604();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19BA74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v98 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_141:
    v5 = v7;
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_143:
      v90 = v6;
      v91 = *(v10 + 2);
      if (v91 >= 2)
      {
        while (*v5)
        {
          v6 = v91 - 1;
          v92 = *&v10[16 * v91];
          v93 = *&v10[16 * v91 + 24];
          sub_19C19C((*v5 + v92), (*v5 + *&v10[16 * v91 + 16]), (*v5 + v93), v7);
          if (v90)
          {
          }

          if (v93 < v92)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_52E40(v10);
          }

          if (v91 - 2 >= *(v10 + 2))
          {
            goto LABEL_168;
          }

          v94 = &v10[16 * v91];
          *v94 = v92;
          *(v94 + 1) = v93;
          result = sub_52DB4(v91 - 1);
          v91 = *(v10 + 2);
          if (v91 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_52E40(v10);
    v10 = result;
    goto LABEL_143;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *v7;
      if (v9[*v7])
      {
        v13 = 0x6F6F626F69647561;
      }

      else
      {
        v13 = 0x6B6F6F6265;
      }

      if (v9[*v7])
      {
        v14 = 0xE90000000000006BLL;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      if (*(*v7 + v11))
      {
        v15 = 0x6F6F626F69647561;
      }

      else
      {
        v15 = 0x6B6F6F6265;
      }

      if (*(*v7 + v11))
      {
        v5 = 0xE90000000000006BLL;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      if (v13 == v15 && v14 == v5)
      {
        v101 = 0;
      }

      else
      {
        v101 = sub_1B5604();
      }

      v9 = (v11 + 2);
      if (v11 + 2 < v8)
      {
        do
        {
          if (v9[v12])
          {
            v20 = 0x6F6F626F69647561;
          }

          else
          {
            v20 = 0x6B6F6F6265;
          }

          if (v9[v12])
          {
            v21 = 0xE90000000000006BLL;
          }

          else
          {
            v21 = 0xE500000000000000;
          }

          if (v9[v12 - 1])
          {
            v22 = 0x6F6F626F69647561;
          }

          else
          {
            v22 = 0x6B6F6F6265;
          }

          if (v9[v12 - 1])
          {
            v5 = 0xE90000000000006BLL;
          }

          else
          {
            v5 = 0xE500000000000000;
          }

          if (v20 == v22 && v21 == v5)
          {

            if (v101)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v17 = v12;
            v18 = sub_1B5604();

            v19 = v101 ^ v18;
            v12 = v17;
            v7 = a3;
            if (v19)
            {
              goto LABEL_47;
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v9 = v8;
      }

LABEL_47:
      if (v101)
      {
LABEL_48:
        if (v9 < v11)
        {
          goto LABEL_171;
        }

        if (v11 < v9)
        {
          v24 = v9 - 1;
          v25 = v11;
          do
          {
            if (v25 != v24)
            {
              v27 = *v7;
              if (!*v7)
              {
                goto LABEL_177;
              }

              v28 = v25[v27];
              v25[v27] = v24[v27];
              v24[v27] = v28;
            }
          }

          while (++v25 < v24--);
        }
      }
    }

    v29 = v7[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_170;
      }

      if (&v9[-v11] < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v9 < v11)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v11;
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_32F04((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v5;
    v45 = &v10[16 * v44];
    *(v45 + 4) = v42;
    *(v45 + 5) = v9;
    v103 = *v98;
    if (!*v98)
    {
      goto LABEL_179;
    }

    if (v44)
    {
      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v10 + 4);
          v48 = *(v10 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_110:
          if (v50)
          {
            goto LABEL_158;
          }

          v63 = &v10[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_161;
          }

          v69 = &v10[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_165;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_131;
          }

          goto LABEL_124;
        }

        v73 = &v10[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_124:
        if (v68)
        {
          goto LABEL_160;
        }

        v76 = &v10[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_163;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_131:
        v84 = v46 - 1;
        if (v46 - 1 >= v5)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v85 = *v7;
        if (!*v7)
        {
          goto LABEL_176;
        }

        v86 = v9;
        v87 = v7;
        v88 = *&v10[16 * v84 + 32];
        v7 = *&v10[16 * v46 + 40];
        sub_19C19C((v85 + v88), (v85 + *&v10[16 * v46 + 32]), v7 + v85, v103);
        if (v6)
        {
        }

        if (v7 < v88)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_52E40(v10);
        }

        if (v84 >= *(v10 + 2))
        {
          goto LABEL_155;
        }

        v89 = &v10[16 * v84];
        *(v89 + 4) = v88;
        *(v89 + 5) = v7;
        result = sub_52DB4(v46);
        v5 = *(v10 + 2);
        v9 = v86;
        v7 = v87;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v10[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_156;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_157;
      }

      v58 = &v10[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_159;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_162;
      }

      if (v62 >= v54)
      {
        v80 = &v10[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_166;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_131;
      }

      goto LABEL_110;
    }

LABEL_3:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_141;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_172;
  }

  if (v11 + a4 < v29)
  {
    v29 = v11 + a4;
  }

  if (v29 < v11)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v9 == v29)
  {
    goto LABEL_90;
  }

  v95 = v11;
  v96 = v6;
  v30 = *v7;
  v31 = &v9[*v7];
  v32 = v11 - v9;
  v100 = v29;
LABEL_67:
  v102 = v9;
  v33 = v9[v30];
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33)
    {
      v36 = 0x6F6F626F69647561;
    }

    else
    {
      v36 = 0x6B6F6F6265;
    }

    if (v33)
    {
      v37 = 0xE90000000000006BLL;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    if (*(v35 - 1))
    {
      v38 = 0x6F6F626F69647561;
    }

    else
    {
      v38 = 0x6B6F6F6265;
    }

    if (*(v35 - 1))
    {
      v39 = 0xE90000000000006BLL;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    if (v36 == v38 && v37 == v39)
    {

LABEL_66:
      v9 = v102 + 1;
      ++v31;
      --v32;
      if (v102 + 1 == v100)
      {
        v9 = v100;
        v11 = v95;
        v6 = v96;
        v7 = a3;
        goto LABEL_90;
      }

      goto LABEL_67;
    }

    v5 = sub_1B5604();

    if ((v5 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v30)
    {
      break;
    }

    v33 = *v35;
    *v35 = *(v35 - 1);
    *--v35 = v33;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_19C19C(_BYTE *__src, _BYTE *__dst, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < a3 - __dst)
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_74;
    }

    while (1)
    {
      if (*v6)
      {
        v11 = 0x6F6F626F69647561;
      }

      else
      {
        v11 = 0x6B6F6F6265;
      }

      if (*v6)
      {
        v12 = 0xE90000000000006BLL;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      if (*v4)
      {
        v13 = 0x6F6F626F69647561;
      }

      else
      {
        v13 = 0x6B6F6F6265;
      }

      if (*v4)
      {
        v14 = 0xE90000000000006BLL;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      if (v11 == v13 && v12 == v14)
      {
      }

      else
      {
        v16 = sub_1B5604();

        if (v16)
        {
          v17 = v6 + 1;
          v18 = v6;
          if (v7 >= v6 && v7 < v17)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v19 = v4 + 1;
      v18 = v4;
      v17 = v6;
      if (v7 < v4)
      {
        ++v4;
      }

      else
      {
        ++v4;
        if (v7 < v19)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      *v7 = *v18;
LABEL_33:
      ++v7;
      if (v4 < v10)
      {
        v6 = v17;
        if (v17 < v5)
        {
          continue;
        }
      }

      v6 = v7;
      goto LABEL_74;
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
LABEL_41:
    v20 = v6 - 1;
    --v5;
    while (1)
    {
      if (*(v10 - 1))
      {
        v21 = 0x6F6F626F69647561;
      }

      else
      {
        v21 = 0x6B6F6F6265;
      }

      if (*(v10 - 1))
      {
        v22 = 0xE90000000000006BLL;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (*v20)
      {
        v23 = 0x6F6F626F69647561;
      }

      else
      {
        v23 = 0x6B6F6F6265;
      }

      if (*v20)
      {
        v24 = 0xE90000000000006BLL;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      if (v21 == v23 && v22 == v24)
      {
      }

      else
      {
        v26 = sub_1B5604();

        if (v26)
        {
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v20;
          }

          if (v10 <= v4 || (--v6, v20 <= v7))
          {
            v6 = v20;
            break;
          }

          goto LABEL_41;
        }
      }

      v27 = (v10 - 1);
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v27;
      }

      --v5;
      --v10;
      if (v27 <= v4)
      {
        v10 = v27;
        break;
      }
    }
  }

LABEL_74:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

__n128 SuggestionsOptions.init(userInfo:storeInfo:mediaType:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:maxRecommendationCount:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 a4@<W3>, unint64_t *a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *a5;
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u64[0] = v9;
  a9[1].n128_u64[1] = v10;
  a9[2].n128_u8[0] = v11;
  a9[2].n128_u8[1] = a4;
  a9[2].n128_u64[1] = v12;
  a9[3].n128_u8[0] = a6;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u64[0] = a8;
  return result;
}

uint64_t dispatch thunk of SuggestionsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t BooksPersonalizationMetadataCache.__allocating_init(fetchService:subfolder:configurationService:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_19C6B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_19C6F8()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C98);
  sub_50E58(v0, qword_260C98);
  return sub_1B4634();
}

void *BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v4;
  v68 = sub_1B4DE4();
  v73 = *(v68 - 8);
  v11 = __chkstk_darwin(v68);
  v63[10] = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = v63 - v13;
  v74 = sub_1B3F34();
  v14 = *(v74 - 8);
  v15 = __chkstk_darwin(v74 - 8);
  v63[8] = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v63[9] = v63 - v18;
  v19 = __chkstk_darwin(v17);
  v69 = v63 - v20;
  v21 = __chkstk_darwin(v19);
  v70 = v63 - v22;
  __chkstk_darwin(v21);
  v24 = v63 - v23;
  v5[3] = 0;
  v25 = (v5 + 3);
  v5[10] = 0;
  v65 = (v5 + 10);
  v5[2] = 25;
  v5[4] = 0;
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0x4122750000000000;
  v72 = a1;
  sub_404C4(a1, (v5 + 14));
  v71 = a4;
  sub_404C4(a4, (v5 + 5));
  v67 = v10;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28 = sub_1B4794();
  v29 = sub_1B4794();
  v30 = [v27 pathForResource:v28 ofType:v29];

  if (v30)
  {
    v31 = [objc_opt_self() fileURLWithPath:v30 isDirectory:1];

    sub_1B3EE4();
    v32 = objc_allocWithZone(NSManagedObjectModel);
    sub_1B3EB4(v33);
    v35 = v34;
    v36 = [v32 initWithContentsOfURL:v34];

    (*(v14 + 8))(v24, v74);
    v37 = *v25;
    *v25 = v36;
  }

  v38 = *v25;
  if (!v38)
  {

    v53 = v5[4];
    if (!v53)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v66 = v14;
  v39 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v40 = v38;
  v41 = [v39 initWithManagedObjectModel:v40];
  v42 = v5[4];
  v5[4] = v41;
  v43 = v41;

  v5[11] = a2;
  v5[12] = a3;

  v44 = v70;
  static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)(a2, a3, v70);

  v46 = v5[11];
  v45 = v5[12];

  static BooksPersonalizationMetadataCache.recreatePersistentStoreDirectory(subfolder:)(v46, v45);

  v47 = v69;
  sub_1B3EC4();
  sub_2B0C(&qword_22B008, &qword_1C3618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = sub_1B47C4();
  *(inited + 40) = v49;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1B47C4();
  *(inited + 64) = v50;
  *(inited + 72) = 1;
  v51 = sub_130760(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22B010, &qword_1C3620);
  swift_arrayDestroy();
  v52 = v64;
  sub_1B4DD4();
  sub_A4AD4(v51);
  v54 = sub_1B4E34();
  (*(v73 + 8))(v52, v68);

  v55 = *(v66 + 8);
  v56 = v74;
  v55(v47, v74);
  v55(v44, v56);

  v53 = v5[4];
  if (v53)
  {
LABEL_8:
    v57 = objc_allocWithZone(NSManagedObjectContext);
    v58 = v53;
    v59 = [v57 initWithConcurrencyType:1];
    [v59 setUndoManager:0];
    v60 = *v65;
    *v65 = v59;
    v61 = v59;

    [v61 setPersistentStoreCoordinator:v58];
  }

LABEL_9:
  sub_2BF8(v71);
  sub_2BF8(v72);
  return v5;
}

uint64_t static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a1;
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:13 inDomains:1];

  v15 = sub_1B4AC4();
  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_10;
  }

  if (v16 > *(v15 + 16))
  {
    __break(1u);
LABEL_10:

    __break(1u);
    return result;
  }

  (*(v7 + 16))(v12, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v16 - 1), v6);

  v17 = *(v7 + 32);
  v17(a3, v12, v6);
  v21[1] = v3;
  sub_2B0C(&qword_22F9A8, &qword_1D1C48);
  sub_1B4834();
  sub_1B3EC4();

  v18 = *(v7 + 8);
  v18(a3, v6);
  v17(a3, v10, v6);
  result = v21[0];
  if (a2)
  {
    v20 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v20 = v21[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_1B3EC4();
      v18(a3, v6);
      return (v17)(a3, v10, v6);
    }
  }

  return result;
}

uint64_t static BooksPersonalizationMetadataCache.recreatePersistentStoreDirectory(subfolder:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B3F34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)(a1, a2, v7);
  v8 = [objc_opt_self() defaultManager];
  sub_1B3EB4(v9);
  v11 = v10;
  v17 = 0;
  LODWORD(a1) = [v8 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v17];

  if (a1)
  {
    v12 = *(v5 + 8);
    v13 = v17;
    return v12(v7, v4);
  }

  else
  {
    v15 = v17;
    sub_1B3E64();

    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t BooksPersonalizationMetadataCache.fetchPersonalizationMetadata(for:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_19DA88, 0, 0);
}

uint64_t sub_19DA88()
{
  v1 = v0[14];
  v2 = *(v1 + 80);
  v0[15] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_19DC50;
    v5 = v0[13];

    return sub_19E020(v5, v3);
  }

  else
  {
    sub_404C4(v1 + 112, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    sub_2698(v0 + 2, v7);
    v11 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_19DDD4;
    v10 = v0[13];

    return v11(v10, v7, v8);
  }
}

uint64_t sub_19DC50(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_19DFBC;
  }

  else
  {
    v4 = sub_19DD6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19DD6C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19DDD4(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[19] = v1;

  if (v1)
  {
    v4 = sub_19DF58;
  }

  else
  {
    v4 = sub_19DEF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19DEF0()
{
  sub_2BF8(v0 + 2);
  v1 = v0[11];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_19DF58()
{
  sub_2BF8((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19DFBC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19E020(uint64_t a1, uint64_t a2)
{
  v3[290] = v2;
  v3[289] = a2;
  v3[288] = a1;
  v3[291] = *v2;
  return _swift_task_switch(sub_19E070, 0, 0);
}

uint64_t sub_19E070()
{
  sub_404C4(v0[290] + 40, (v0 + 282));
  v1 = v0[285];
  v2 = v0[286];
  sub_2698(v0 + 282, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[292] = v3;
  *v3 = v0;
  v3[1] = sub_19E1B0;

  return v5(v0 + 2, v1, v2);
}

uint64_t sub_19E1B0()
{

  if (v0)
  {

    v1 = sub_19E414;
  }

  else
  {
    v1 = sub_19E2C8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_19E2C8()
{
  memcpy(&v0[71], &v0[1], 0x460uLL);
  sub_2BF8(v0[141].i64);
  sub_2B54(v0[71].i64);
  v1 = v0[113].i64[0];
  v2 = v0[145].i64[1];
  v3 = v0[145].i64[0];
  v4 = swift_task_alloc();
  v0[146].i64[1] = v4;
  v4[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v4[2].i64[0] = v3;
  v4[2].i64[1] = v1;
  v4[3].i64[0] = v2;
  v5 = swift_task_alloc();
  v0[147].i64[0] = v5;
  v6 = sub_2B0C(&qword_22FA88, &qword_1D1D38);
  *v5 = v0;
  v5[1] = sub_19E540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD00000000000001ELL, 0x80000000001D8FF0, sub_1A324C, v4, v6);
}

uint64_t sub_19E414()
{
  sub_2BF8(v0[141].i64);
  v1 = v0[145].i64[1];
  v2 = v0[145].i64[0];
  v3 = swift_task_alloc();
  v0[146].i64[1] = v3;
  v3[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = 0x4122750000000000;
  v3[3].i64[0] = v1;
  v4 = swift_task_alloc();
  v0[147].i64[0] = v4;
  v5 = sub_2B0C(&qword_22FA88, &qword_1D1D38);
  *v4 = v0;
  v4[1] = sub_19E540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD00000000000001ELL, 0x80000000001D8FF0, sub_1A324C, v3, v5);
}

uint64_t sub_19E540()
{
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v2 = sub_19E678;
  }

  else
  {

    v2 = sub_19E65C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_19E678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BooksPersonalizationMetadataCache.cacheEntryCount()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_19E724, 0, 0);
}

uint64_t sub_19E724()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_A5B84;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000000001D6BC0, sub_1A247C, v3, &type metadata for UInt);
}

void sub_19E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 80);
  if (v11)
  {
    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v10, v6);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_1A31B0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19C6B4;
    aBlock[3] = &unk_2216E8;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    aBlock[0] = 0;
    sub_1B4BE4();
  }
}

void sub_19EA18()
{
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1B47C4();
    v1 = sub_1B4794();
  }

  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  if (sub_1B4E14() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2B0C(&qword_22B288, &qword_1D1D30);
    sub_1B4BE4();
  }
}

void sub_19EBE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a2;
  v33 = a5;
  v10 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = type metadata accessor for PersonalizationMetadataRequest(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_136650(a3, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_136814(v18, v25 + v19);
  *(v25 + v20) = a4;
  *(v25 + v21) = a6;
  v26 = v31;
  v27 = v32;
  *(v25 + v22) = v32;
  (*(v11 + 32))(v25 + v23, v26, v30);
  *(v25 + v24) = v33;
  aBlock[4] = sub_1A3428;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_221738;
  v28 = _Block_copy(aBlock);

  v29 = v27;

  [v29 performBlock:v28];
  _Block_release(v28);
}

void sub_19EEA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v94 = a4;
  v102 = a2;
  v97 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v90 = *(v97 - 8);
  v89 = *(v90 + 64);
  __chkstk_darwin(v97);
  v96 = &v83 - v8;
  v9 = type metadata accessor for PersonalizationMetadataRequest(0);
  v10 = v9 - 8;
  v85 = *(v9 - 8);
  __chkstk_darwin(v9);
  v86 = v11;
  v87 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v12 - 8);
  v95 = &v83 - v13;
  v14 = *(v10 + 28);
  v88 = a1;
  v15 = *(a1 + v14);
  v113 = v15;
  type metadata accessor for CachedPersonalizationMetadataBook();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_bridgeObjectRetain_n();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    sub_1B47C4();
    v17 = sub_1B4794();
  }

  v18 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v17];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BFC80;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 32) = 0x44497465737361;
  *(v19 + 40) = 0xE700000000000000;
  *(v19 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v19 + 64) = v15;
  v20 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v22 = [objc_opt_self() predicateWithFormat:v20 argumentArray:isa];

  sub_2B0C(&qword_22B2A8, &qword_1C3900);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D1C10;
  *(v23 + 32) = v22;
  v92 = v22;
  *(v23 + 40) = sub_1A28D8(a5);
  sub_1A355C();
  v24 = sub_1B4AA4().super.isa;

  v25 = [objc_opt_self() andPredicateWithSubpredicates:v24];

  [v18 setPredicate:v25];
  v93 = v18;
  v26 = sub_1B4E24();
  v91 = a3;
  v27 = v26;

  if (v27 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1B5284())
  {
    v100 = v28;
    if (!i)
    {
      break;
    }

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = sub_1B50B4();
      }

      else
      {
        if (v30 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v32 = *(v27 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v28 = [v32 assetID];

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_33008(0, *(v31 + 2) + 1, 1, v31);
      }

      v36 = *(v31 + 2);
      v35 = *(v31 + 3);
      if (v36 >= v35 >> 1)
      {
        v31 = sub_33008((v35 > 1), v36 + 1, 1, v31);
      }

      *(v31 + 2) = v36 + 1;
      *&v31[8 * v36 + 32] = v28;
      ++v30;
      if (v34 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
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
    __break(1u);
LABEL_65:
    ;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_20:

  v28 = sub_40854(v31);

  v37 = v100;
  if (v100)
  {
    v38 = v100 & 0xFFFFFFFFFFFFFF8;
    if (v100 >> 62)
    {
      v39 = sub_1B5284();
    }

    else
    {
      v39 = *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8));
    }

    v84 = v28;
    if (v39)
    {
      v40 = 0;
      v101 = v37 & 0xC000000000000001;
      v41 = _swiftEmptyDictionarySingleton;
      v99 = v37 & 0xFFFFFFFFFFFFFF8;
      v98 = v39;
      while (1)
      {
        if (v101)
        {
          v42 = sub_1B50B4();
        }

        else
        {
          if (v40 >= *(v38 + 16))
          {
            goto LABEL_61;
          }

          v42 = *(v37 + 8 * v40 + 32);
        }

        v28 = v42;
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_60;
        }

        v44 = [v42 assetID];
        if (v44 < 0)
        {
          goto LABEL_62;
        }

        v45 = v44;
        v106 = v28;
        sub_19FA80(v28, v108);
        v46 = v110;
        if (!v110)
        {
          v27 = v41;
          v58 = sub_43124(v45);
          if (v59)
          {
            v28 = v58;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v107 = v41;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_187AC0();
              v41 = v107;
            }

            v27 = *(v41[7] + 48 * v28 + 40);

            sub_53728(v28, v41);
          }

          goto LABEL_27;
        }

        v103 = v40 + 1;
        v48 = v108[0];
        v47 = v108[1];
        v49 = v109;
        v104 = v111;
        v105 = v112;
        v27 = v41;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v27;
        v28 = sub_43124(v45);
        v52 = *(v27 + 16);
        v53 = (v51 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_63;
        }

        v55 = v51;
        if (*(v27 + 24) >= v54)
        {
          if (v50)
          {
            v41 = v107;
            if ((v51 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v27 = &v107;
            sub_187AC0();
            v41 = v107;
            if ((v55 & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
          sub_1829C4(v54, v50);
          v27 = v107;
          v56 = sub_43124(v45);
          if ((v55 & 1) != (v57 & 1))
          {
            sub_1B5784();
            __break(1u);
            return;
          }

          v28 = v56;
          v41 = v107;
          if ((v55 & 1) == 0)
          {
LABEL_47:
            v41[(v28 >> 6) + 8] |= 1 << v28;
            *(v41[6] + 8 * v28) = v45;
            v64 = v41[7] + 48 * v28;
            *v64 = v48;
            *(v64 + 8) = v47;
            *(v64 + 16) = v49 & 1;
            v66 = v104;
            v65 = v105;
            *(v64 + 24) = v46;
            *(v64 + 32) = v66;
            *(v64 + 40) = v65;

            v67 = v41[2];
            v68 = __OFADD__(v67, 1);
            v69 = v67 + 1;
            if (v68)
            {
              goto LABEL_64;
            }

            v41[2] = v69;
            goto LABEL_49;
          }
        }

        v61 = v41[7] + 48 * v28;
        v28 = *(v61 + 24);
        v27 = *(v61 + 40);
        *v61 = v48;
        *(v61 + 8) = v47;
        *(v61 + 16) = v49 & 1;
        v63 = v104;
        v62 = v105;
        *(v61 + 24) = v46;
        *(v61 + 32) = v63;
        *(v61 + 40) = v62;

LABEL_49:
        v37 = v100;
        v38 = v99;
        v39 = v98;
        v43 = v103;
LABEL_27:
        ++v40;
        if (v43 == v39)
        {
          goto LABEL_52;
        }
      }
    }

    v41 = _swiftEmptyDictionarySingleton;
LABEL_52:

    v28 = v84;
  }

  else
  {
    v41 = sub_13113C(_swiftEmptyArrayStorage);
  }

  sub_DFDD8(v28);

  v70 = v113;
  if (*(v113 + 16))
  {
    v71 = sub_1B4C54();
    (*(*(v71 - 8) + 56))(v95, 1, 1, v71);
    v72 = v87;
    sub_136650(v88, v87);
    v73 = v90;
    (*(v90 + 16))(v96, v94, v97);
    v74 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v106 = v41;
    v75 = (v86 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (*(v73 + 80) + v78 + 8) & ~*(v73 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    *(v80 + 24) = 0;
    sub_136814(v72, v80 + v74);
    *(v80 + v75) = v70;
    *(v80 + v76) = v102;
    v81 = v91;
    *(v80 + v77) = v91;
    *(v80 + v78) = v106;
    (*(v73 + 32))(v80 + v79, v96, v97);

    v82 = v81;
    sub_16AB6C(0, 0, v95, &unk_1D1D58, v80);
  }

  else
  {

    v108[0] = v41;
    sub_1B4BE4();
  }
}

void sub_19FA80(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 assetID];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v8;
    v10 = [a1 ulyssesEmbedding];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [a1 bisac];
    if (v14)
    {
      v31 = v5;
      v32 = v11;
      v33 = a1;
      v34 = v9;
      v35 = a2;
      v30 = v14;
      sub_1B4E44();
      sub_1A393C(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      sub_1B4ED4();
      if (v40)
      {
        v15 = _swiftEmptyArrayStorage;
        do
        {
          sub_430B8(&v39, v38);
          sub_430C8(v38, v37);
          type metadata accessor for CachedPersonalizationMetadataBISAC();
          if (swift_dynamicCast() && (v16 = v36, v17 = [v36 code], v16, v17))
          {
            v18 = sub_1B47C4();
            v20 = v19;

            sub_2BF8(v38);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_3301C(0, *(v15 + 2) + 1, 1, v15);
            }

            v22 = *(v15 + 2);
            v21 = *(v15 + 3);
            if (v22 >= v21 >> 1)
            {
              v15 = sub_3301C((v21 > 1), v22 + 1, 1, v15);
            }

            *(v15 + 2) = v22 + 1;
            v23 = &v15[16 * v22];
            *(v23 + 4) = v18;
            *(v23 + 5) = v20;
          }

          else
          {
            sub_2BF8(v38);
          }

          sub_1B4ED4();
        }

        while (v40);
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

      (*(v31 + 8))(v7, v4);
      v9 = v34;
      a2 = v35;
      v11 = v32;
      a1 = v33;
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v24 = sub_4025C(v15);

    v25 = [a1 deduplicationID];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1B47C4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11 == 0;
    a2[3] = v24;
    a2[4] = v27;
    a2[5] = v29;
  }
}

uint64_t sub_19FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[10] = type metadata accessor for PersonalizationMetadataRequest(0);
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_19FEA4, 0, 0);
}

uint64_t sub_19FEA4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_1B40F4();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  *(v1 + *(v2 + 20)) = v3;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_19FF9C;
  v7 = v0[11];
  v8 = v0[7];

  return sub_1A0278(v7, v8);
}

uint64_t sub_19FF9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1A01D8;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_1A00C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A00C4()
{
  v9 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_1A29F8(v1, sub_1A241C, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {
  }

  else
  {
    v6 = v0[11];
    v0[3] = v8;
    sub_2B0C(&qword_22FA90, &unk_1D1D40);
    sub_1B4BE4();
    sub_199C5C(v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A01D8()
{
  v1 = v0[13];
  sub_199C5C(v0[11]);
  v0[2] = v1;
  sub_2B0C(&qword_22FA90, &unk_1D1D40);
  sub_1B4BD4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A0278(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_1A029C, 0, 0);
}

uint64_t sub_1A029C()
{
  v1 = v0[7];
  if (*(*(v1 + *(type metadata accessor for PersonalizationMetadataRequest(0) + 20)) + 16))
  {
    sub_404C4(v0[9] + 112, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    sub_2698(v0 + 2, v2);
    v9 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_1A0470;
    v5 = v0[7];

    return v9(v5, v2, v3);
  }

  else
  {
    v0[13] = _swiftEmptyDictionarySingleton;
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1A068C;
    v8 = v0[8];

    return sub_1A0BC8(_swiftEmptyDictionarySingleton, v8);
  }
}

uint64_t sub_1A0470(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1A07A8;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1A0598;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A0598()
{
  v8 = v0;
  v1 = v0[12];
  sub_2BF8(v0 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = _swiftEmptyDictionarySingleton;
  sub_1A29F8(v1, sub_1A241C, 0, isUniquelyReferenced_nonNull_native, &v7);

  v3 = v7;
  v0[13] = v7;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1A068C;
  v5 = v0[8];

  return sub_1A0BC8(v3, v5);
}

uint64_t sub_1A068C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1A080C;
  }

  else
  {
    v2 = sub_A7AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A07A8()
{
  sub_2BF8((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BooksPersonalizationMetadataCache.contribute(cachableMetadata:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1A0844, 0, 0);
}

uint64_t sub_1A0844()
{
  v1 = *(v0[3] + 80);
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1A09EC;
    v4 = v0[2];

    return sub_1A0BC8(v4, v2);
  }

  else
  {
    if (qword_228368 != -1)
    {
      swift_once();
    }

    v6 = sub_1B4644();
    sub_50E58(v6, qword_260C98);
    v7 = sub_1B4624();
    v8 = sub_1B4D94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "No MOC for caching personalization metadata", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1A09EC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A0B64;
  }

  else
  {
    v2 = sub_1A0B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A0B00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A0B64()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A0BC8(uint64_t a1, uint64_t a2)
{
  v3[290] = v2;
  v3[289] = a2;
  v3[288] = a1;
  v3[291] = *v2;
  v4 = sub_1B40C4();
  v3[292] = v4;
  v3[293] = *(v4 - 8);
  v3[294] = swift_task_alloc();

  return _swift_task_switch(sub_1A0CB8, 0, 0);
}

uint64_t sub_1A0CB8(uint64_t a1)
{
  v2 = v1[290];
  sub_1B40B4();
  sub_404C4(v2 + 40, (v1 + 282));
  v3 = v1[285];
  v4 = v1[286];
  sub_2698(v1 + 282, v3);
  v7 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v1[295] = v5;
  *v5 = v1;
  v5[1] = sub_1A0E00;

  return v7(v1 + 2, v3, v4);
}

uint64_t sub_1A0E00()
{

  if (v0)
  {

    v1 = sub_1A1058;
  }

  else
  {
    v1 = sub_1A0F18;
  }

  return _swift_task_switch(v1, 0, 0);
}