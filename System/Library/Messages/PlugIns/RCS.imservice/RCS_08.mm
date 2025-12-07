void sub_BB9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TypingIndicator(0);
  v87 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_388C8(&qword_1296E8, &qword_F5298);
  v88 = v4;
  v9 = sub_F10FC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v80 = v2;
    v11 = 0;
    v12 = *(v8 + 64);
    v81 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v83 = v9 + 64;
    v86 = v8;
    v84 = v7;
    v85 = v9;
    v82 = v16;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v93 = v23;
      if (v88)
      {
        v27 = *(v8 + 56);
        v28 = *(v8 + 48) + (v26 << 6);
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v97 = *(v28 + 24);
        v94 = *(v28 + 40);
        v96 = *(v28 + 48);
        v95 = *(v28 + 56);
        v92 = *(v87 + 72);
        sub_BDEA0(v27 + v92 * v26, v7);
      }

      else
      {
        v32 = (*(v8 + 48) + (v26 << 6));
        v34 = v32[1];
        v33 = v32[2];
        v35 = *v32;
        *&v102[25] = *(v32 + 41);
        *v102 = v34;
        *&v102[16] = v33;
        v101 = v35;
        v36 = *(v8 + 56);
        v92 = *(v87 + 72);
        sub_BDE3C(v36 + v92 * v26, v7);
        v95 = v102[40];
        v94 = *&v102[24];
        v96 = *&v102[32];
        v30 = *(&v101 + 1);
        v31 = *v102;
        v97 = *&v102[8];
        v29 = v101;
        sub_38910(&v101, v99);
      }

      sub_F12FC();
      v90 = v29;
      v89 = v30;
      sub_F089C();
      v91 = v31;
      sub_F089C();
      v37 = *(&v97 + 1);
      v38 = *(&v97 + 1) + 64;
      v39 = 1 << *(*(&v97 + 1) + 32);
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(*(&v97 + 1) + 64);
      v42 = (v39 + 63) >> 6;

      v43 = 0;
      v44 = 0;
      while (v41)
      {
        v98 = v43;
LABEL_30:
        v47 = __clz(__rbit64(v41)) | (v44 << 6);
        v48 = *(*(v37 + 48) + v47);
        v49 = *(*(v37 + 56) + 16 * v47 + 8);
        v41 &= v41 - 1;
        v99[2] = *&v102[16];
        v99[3] = *&v102[32];
        v100 = v103;
        v99[0] = v101;
        v99[1] = *v102;
        v50 = 0xE200000000000000;
        if (v48 != 3)
        {
          v50 = 0xE900000000000074;
        }

        if (v48 == 2)
        {
          v50 = 0xEA00000000006563;
        }

        v51 = 0xED0000747865746ELL;
        if (v48)
        {
          v51 = 0xE400000000000000;
        }

        if (v48 <= 1)
        {
          v52 = v51;
        }

        else
        {
          v52 = v50;
        }

        sub_F089C();
        v52, v53, v54, v55, v56, v57, v58, v59;
        if (v49)
        {
          sub_F131C(1u);
          sub_F089C();
          v49, v60, v61, v62, v63, v64, v65, v66;
        }

        else
        {
          sub_F131C(0);
        }

        v45 = v98;
        v43 = sub_F132C() ^ v45;
      }

      while (1)
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (v46 >= v42)
        {
          break;
        }

        v41 = *(v38 + 8 * v46);
        ++v44;
        if (v41)
        {
          v98 = v43;
          v44 = v46;
          goto LABEL_30;
        }
      }

      sub_F130C(v43);
      if (v96)
      {
        sub_F131C(1u);
        v67 = v94;
        sub_F089C();
        v8 = v86;
        v10 = v85;
        v7 = v84;
        v68 = v83;
        v69 = v95;
      }

      else
      {
        sub_F131C(0);
        v8 = v86;
        v10 = v85;
        v7 = v84;
        v68 = v83;
        v69 = v95;
        v67 = v94;
      }

      sub_F130C(v69);
      v70 = sub_F132C();
      v71 = -1 << *(v10 + 32);
      v72 = v70 & ~v71;
      v73 = v72 >> 6;
      if (((-1 << v72) & ~*(v68 + 8 * (v72 >> 6))) == 0)
      {
        v74 = 0;
        v75 = (63 - v71) >> 6;
        v18 = v97;
        while (++v73 != v75 || (v74 & 1) == 0)
        {
          v76 = v73 == v75;
          if (v73 == v75)
          {
            v73 = 0;
          }

          v74 |= v76;
          v77 = *(v68 + 8 * v73);
          if (v77 != -1)
          {
            v17 = __clz(__rbit64(~v77)) + (v73 << 6);
            goto LABEL_7;
          }
        }

LABEL_63:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v72) & ~*(v68 + 8 * (v72 >> 6)))) | v72 & 0x7FFFFFFFFFFFFFC0;
      v18 = v97;
LABEL_7:
      *(v68 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v19 = *(v10 + 48) + (v17 << 6);
      v20 = v89;
      *v19 = v90;
      *(v19 + 8) = v20;
      *(v19 + 16) = v91;
      *(v19 + 24) = v18;
      v21 = v96;
      *(v19 + 40) = v67;
      *(v19 + 48) = v21;
      *(v19 + 56) = v69;
      sub_BDEA0(v7, *(v10 + 56) + v92 * v17);
      ++*(v10 + 16);
      v16 = v82;
      v15 = v93;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v81[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v88 & 1) == 0)
    {

      v3 = v80;
      goto LABEL_60;
    }

    v78 = 1 << *(v8 + 32);
    v3 = v80;
    if (v78 >= 64)
    {
      bzero(v81, ((v78 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v81 = -1 << v78;
    }

    *(v8 + 16) = 0;
  }

LABEL_60:
  *v3 = v10;
}

void sub_BC0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_BA668(v16, a4 & 1);
      v11 = sub_51FEC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_F126C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_BC984();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_BC254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_51FEC(a3, a4);
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_BA3A8(v24, a5 & 1);
      v13 = sub_51FEC(a3, a4);
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_18:
        sub_F126C();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_BC80C();
      v13 = v27;
    }
  }

  v28 = *v6;
  if (v25)
  {
    v29 = (v28[7] + 16 * v13);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    v30, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v28[(v13 >> 6) + 8] |= 1 << v13;
  v31 = (v28[6] + 16 * v13);
  *v31 = a3;
  v31[1] = a4;
  v32 = (v28[7] + 16 * v13);
  *v32 = a1;
  v32[1] = a2;
  v33 = v28[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

unint64_t sub_BC3F4()
{
  result = qword_1286A0;
  if (!qword_1286A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1286A0);
  }

  return result;
}

uint64_t sub_BC440(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_BB46C(v16, a4 & 1);
      v11 = sub_51FEC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_F126C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_BCF64();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_BC5B8(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_E759C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_BD0D0();
      goto LABEL_7;
    }

    sub_BB9B8(v13, a3 & 1);
    v20 = sub_E759C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_BC760(v10, a2, a1, v16);
      return sub_38910(a2, &v22);
    }

LABEL_15:
    result = sub_F126C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = v17 + *(*(type metadata accessor for TypingIndicator(0) - 8) + 72) * v10;

  return sub_BDF04(a1, v18);
}

unint64_t sub_BC710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_BC760(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + (a1 << 6));
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  v7[2] = a2[2];
  *(v7 + 41) = *(a2 + 41);
  v9 = a4[7];
  v10 = type metadata accessor for TypingIndicator(0);
  result = sub_BDEA0(a3, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void sub_BC80C()
{
  v1 = v0;
  sub_388C8(&qword_129710, &qword_F52D0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BC984()
{
  v1 = v0;
  sub_388C8(&qword_1296F0, &qword_F5B90);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BCAF4()
{
  v1 = v0;
  sub_388C8(&qword_129718, &qword_F52D8);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        v19 = (*(v2 + 48) + (v17 << 6));
        v21 = v19[1];
        v20 = v19[2];
        v22 = *v19;
        *&v30[9] = *(v19 + 41);
        v29[1] = v21;
        *v30 = v20;
        v29[0] = v22;
        v23 = 16 * v17;
        v24 = (*(v2 + 56) + 16 * v17);
        v26 = *v24;
        v25 = v24[1];
        memmove((*(v4 + 48) + v18), v19, 0x39uLL);
        v27 = (*(v4 + 56) + v23);
        *v27 = v26;
        v27[1] = v25;
        sub_38910(v29, &v28);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BCCA4()
{
  v1 = v0;
  sub_388C8(&qword_129720, qword_F52E0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BCE08()
{
  v1 = v0;
  sub_388C8(&qword_129708, &qword_F52B8);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BCF64()
{
  v1 = v0;
  sub_388C8(&qword_129700, &qword_F52B0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_BD0D0()
{
  v1 = v0;
  v2 = type metadata accessor for TypingIndicator(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_388C8(&qword_1296E8, &qword_F5298);
  v6 = *v0;
  v7 = sub_F10EC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v21 << 6;
        v23 = (*(v6 + 48) + (v21 << 6));
        v25 = v23[1];
        v24 = v23[2];
        v26 = *v23;
        *&v37[9] = *(v23 + 41);
        v36 = v25;
        *v37 = v24;
        v35 = v26;
        v27 = *(v3 + 72) * v21;
        sub_BDE3C(*(v6 + 56) + v27, v5);
        v28 = (*(v8 + 48) + v22);
        v29 = *&v37[9];
        v31 = v36;
        v30 = *v37;
        *v28 = v35;
        v28[1] = v31;
        v28[2] = v30;
        *(v28 + 41) = v29;
        sub_BDEA0(v5, *(v8 + 56) + v27);
        sub_38910(&v35, v34);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_BD31C()
{
  v1 = v0;
  sub_388C8(&qword_1296F8, &unk_F52A0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_BD48C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 12) | (v17 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v21 = *v18;
      *&v26[9] = *(v18 + 41);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x39uLL);
      if (v14 == v10)
      {
        sub_38910(v25, v24);
        goto LABEL_24;
      }

      v11 += 64;
      sub_38910(v25, v24);
      result = v14;
      v22 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_BD61C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_BD7B0(uint64_t a1)
{
  sub_F035C();
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      type metadata accessor for RCSParticipantChange.ChangeType(319, v3, *(a1 + 24), v4);
      if (v6 <= 0x3F)
      {
        sub_BDD90();
        if (v7 <= 0x3F)
        {
          sub_BDDEC();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_BD898(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_F035C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = (((((((v14 & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 <= 3)
  {
    v16 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = &a1[v14] & ~v11;
    if (v10 == v13)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *(((v24 + v12) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_BDAE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_F035C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = ((((((((v12 + v13) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 >= a3)
  {
    v20 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v23 = *(v8 + 56);

        v23(a1, a2);
      }

      else
      {
        v24 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v25 = *(v10 + 56);

          v25(v24, a2, v11);
        }

        else
        {
          v26 = (v24 + v14) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = (a2 - 1);
          }

          *(v26 + 8) = v27;
        }
      }

      return;
    }
  }

  v21 = ~v15 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

void sub_BDD90()
{
  if (!qword_129658)
  {
    v0 = sub_F078C();
    if (!v1)
    {
      atomic_store(v0, &qword_129658);
    }
  }
}

void sub_BDDEC()
{
  if (!qword_129660[0])
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, qword_129660);
    }
  }
}

uint64_t sub_BDE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BDEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BDF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t RCSDestination.description.getter()
{
  sub_551C8(v0, v49);
  if (v51)
  {
    sub_55248(v49, &v52);
    sub_F0F9C(46);
    0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
    v8 = *(&v53 + 1);
    v9 = *&v54[0];
    sub_373E8(&v52, *(&v53 + 1));
    v10._countAndFlagsBits = (*(v9 + 8))(v8, v9);
    if (v10._object)
    {
      object = v10._object;
    }

    else
    {
      v10._countAndFlagsBits = 0x3E6C696E3CLL;
      object = 0xE500000000000000;
    }

    v10._object = object;
    sub_F08CC(v10);
    object, v12, v13, v14, v15, v16, v17, v18;
    v55._object = 0x8000000000100170;
    v55._countAndFlagsBits = 0xD000000000000011;
    sub_F08CC(v55);
    v19 = *(&v53 + 1);
    v20 = *&v54[0];
    sub_373E8(&v52, *(&v53 + 1));
    v21._countAndFlagsBits = (*(v20 + 16))(v19, v20);
    if (v21._object)
    {
      v22 = v21._object;
    }

    else
    {
      v21._countAndFlagsBits = 0x3E6C696E3CLL;
      v22 = 0xE500000000000000;
    }

    v21._object = v22;
    sub_F08CC(v21);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = 0xD000000000000019;
    sub_1EDC(&v52);
  }

  else
  {
    v52 = v49[0];
    v53 = v49[1];
    v54[0] = *v50;
    *(v54 + 9) = *&v50[9];
    sub_F0F9C(25);
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    v38 = RCSHandle.rawValue.getter();
    v40 = v39;
    sub_3CAB8(&v52);
    v56._countAndFlagsBits = v38;
    v56._object = v40;
    sub_F08CC(v56);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v57._countAndFlagsBits = 41;
    v57._object = 0xE100000000000000;
    sub_F08CC(v57);
    return 0xD000000000000016;
  }

  return v30;
}

__n128 sub_BE174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_BE190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_BE1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_BE21C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t sub_BE258()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_129728);
  v1 = sub_3C96C(v0, qword_129728);
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.rcs);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_BE320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for RCSSpamReportOperation(0, a4, v9, v10);
  v12 = (a5 + *(result + 28));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

void (*RCSSpamReportingController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_12B2C;
}

uint64_t sub_BE430()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 32))
  {
    sub_F0F9C(18);
    0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
    v12 = 0x53746F6274616863;
  }

  else
  {
    v12 = 0x286D617053703270;
  }

  v14 = v12;
  v15._countAndFlagsBits = v1;
  v15._object = v2;
  sub_F08CC(v15);
  v16._countAndFlagsBits = 44;
  v16._object = 0xE100000000000000;
  sub_F08CC(v16);
  v17._countAndFlagsBits = v3;
  v17._object = v4;
  sub_F08CC(v17);
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  sub_F08CC(v18);
  return v14;
}

uint64_t sub_BE514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t RCSSpamReportingController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_BF770(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t RCSSpamReportingController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_BF770(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t RCSSpamReportingController.SpamReportOperationError.errorDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000018;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 0xD000000000000020;
    }

    v32 = 47;
    return v32 | 0xD000000000000010;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v2 + 8))(v5, a1);
    v32 = 34;
    return v32 | 0xD000000000000010;
  }

  v7 = *v5;
  if (EnumCaseMultiPayload == 1)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_F0F9C(45);
    v43, v8, v9, v10, v11, v12, v13, v14;
    v42 = 0xD00000000000002BLL;
    v43 = 0x80000000001001B0;
    v15 = sub_F0A0C();
    v17 = v16;
    v7, v16, v18, v19, v20, v21, v22, v23;
    v44._countAndFlagsBits = v15;
    v44._object = v17;
    sub_F08CC(v44);
    v31 = v17;
  }

  else
  {
    v34 = *(v5 + 1);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_F0F9C(18);
    v43, v35, v36, v37, v38, v39, v40, v41;
    v42 = 0xD000000000000010;
    v43 = 0x80000000000FFF30;
    v45._countAndFlagsBits = v7;
    v45._object = v34;
    sub_F08CC(v45);
    v31 = v34;
  }

  v31, v24, v25, v26, v27, v28, v29, v30;
  return v42;
}

uint64_t RCSSpamReportingController.spamReportCompleted(operationResult:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_373E8(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_373E8(a1, v13);
  LODWORD(v14) = (*(v14 + 16))(v13, v14);
  if (v14)
  {
    if (qword_128F68 != -1)
    {
      swift_once();
    }

    v15 = sub_F06CC();
    sub_3C96C(v15, qword_129728);

    v16 = sub_F06AC();
    v17 = sub_F0CDC();
    v12, v18, v19, v20, v21, v22, v23, v24;
    if (os_log_type_enabled(v16, v17))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_3E850(v10, v12, v59);
      _os_log_impl(&dword_0, v16, v17, "Spam report operation completed with ID %s", v25, 0xCu);
      sub_1EDC(v26);
    }

    v27 = a1[3];
    v28 = a1[4];
    sub_373E8(a1, v27);
    v29 = (*(v28 + 16))(v27, v28);
    v59[3] = &type metadata for Bool;
    LOBYTE(v59[0]) = v29 & 1;
  }

  else
  {
    v30 = a1[3];
    v31 = a1[4];
    sub_373E8(a1, v30);
    v32 = (*(v31 + 24))(v30, v31);
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      type metadata accessor for RCSSpamReportingController.SpamReportOperationError(0, *(v4 + 80), *(v4 + 88), v33);
      swift_getWitnessTable();
      v34 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    if (qword_128F68 != -1)
    {
      swift_once();
    }

    v35 = sub_F06CC();
    sub_3C96C(v35, qword_129728);

    swift_errorRetain();
    v36 = sub_F06AC();
    v37 = sub_F0CEC();
    v12, v38, v39, v40, v41, v42, v43, v44;

    if (os_log_type_enabled(v36, v37))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v14;
      v14 = v10;
      v48 = v47;
      v59[0] = v47;
      *v45 = 136315394;
      *(v45 + 4) = sub_3E850(v14, v12, v59);
      *(v45 + 12) = 2112;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v49;
      *v46 = v49;
      _os_log_impl(&dword_0, v36, v37, "Spam report operation failed with ID %s error %@", v45, 0x16u);
      sub_372B0(v46, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v48);
      v10 = v14;
      LOBYTE(v14) = v56;
    }

    v59[0] = v34;
  }

  v60 = (v14 & 1) == 0;
  sub_F0AFC();
  v50 = sub_F0B1C();
  (*(*(v50 - 8) + 56))(v7, 0, 1, v50);
  v51 = v2[3];
  sub_99040(v59, v57);
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v51;
  *(v52 + 40) = v10;
  *(v52 + 48) = v12;
  v53 = v57[1];
  *(v52 + 56) = v57[0];
  *(v52 + 72) = v53;
  *(v52 + 88) = v58;

  sub_3CC0C(0, 0, v7, &unk_F53B8, v52);

  return sub_372B0(v59, &qword_128B88, &qword_F3F30);
}

uint64_t sub_BEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_149F8;

  return sub_E1100(a5, a6, a7);
}

double RCSSpamReportingController.spamReportFailed(with:operationID:)(uint64_t a1, uint64_t a2, RCSServiceSession *a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v11 = sub_F06CC();
  sub_3C96C(v11, qword_129728);

  swift_errorRetain();
  v12 = sub_F06AC();
  v13 = sub_F0CEC();
  a3, v14, v15, v16, v17, v18, v19, v20;

  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_3E850(a2, a3, &v30);
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v24;
    *v22 = v24;
    _os_log_impl(&dword_0, v12, v13, "Spam report operation failed with ID %s error %@", v21, 0x16u);
    sub_372B0(v22, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v23);
  }

  sub_F0AFC();
  v25 = sub_F0B1C();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = *(v4 + 24);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a1;

  swift_errorRetain();

  sub_3CC0C(0, 0, v10, &unk_F53D0, v27);

  return result;
}

uint64_t sub_BF15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_12BAC;

  return sub_E10D8(a5, a6, a7, 1);
}

uint64_t RCSSpamReportingController.reportSpam(to:forDestination:withSpamReportInfo:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = *v6;
  v9 = *(*v6 + 88);
  v7[21] = v9;
  v10 = *(v8 + 80);
  v7[22] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[23] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v7[24] = v12;
  v7[25] = *(v12 + 64);
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for RCSSpamReportingController.OperationID(0, v10, v9, v13);
  v7[27] = v14;
  v7[28] = *(v14 - 8);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_12CA0, 0, 0);
}

uint64_t sub_BF3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v8[12] = *(AssociatedTypeWitness - 8);
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for RCSSpamReportOperation(0, AssociatedTypeWitness, v10, v11);
  v8[14] = v12;
  v8[15] = *(v12 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_13350, 0, 0);
}

uint64_t RCSSpamReportingController.reportChatbotSpam(to:forChatbot:withSpamReportInfo:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = *v6;
  v7[21] = *(*v6 + 88);
  v7[22] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[23] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[24] = v10;
  v7[25] = *(v10 + 64);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_13714, 0, 0);
}

uint64_t sub_BF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v8[12] = *(AssociatedTypeWitness - 8);
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for RCSSpamReportOperation(0, AssociatedTypeWitness, v10, v11);
  v8[14] = v12;
  v8[15] = *(v12 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_13D00, 0, 0);
}

uint64_t sub_BF770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  *(v3 + 24) = RCSOperationController.init(configuration:)(a2);
  return v3;
}

void sub_BF8CC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_BFCD4();
    if (v2 <= 0x3F)
    {
      sub_B7350();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_BF968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 16;
  if (v5 > 0x10)
  {
    v6 = v5;
  }

  v7 = 252 - (2u >> (8 * v6));
  if (v6 >= 4)
  {
    v7 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 < 2)
    {
LABEL_27:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + v7 + 1;
}

void sub_BFAE0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = 252 - (2u >> (8 * v7));
  if (v7 >= 4)
  {
    v8 = 252;
  }

  v9 = v7 + 1;
  if (v8 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v7] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v10 = 1;
  if (v9 <= 3)
  {
    v11 = ((~(-1 << (8 * v9)) + a3 - v8) >> (8 * v9)) + 1;
    v12 = HIWORD(v11);
    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v11 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = v14;
    }
  }

  if (v8 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v15 = ~v8 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v15;
    v16 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v16 = (v15 >> (8 * v9)) + 1;
  if (v7 == -1)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v17 = v15 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v17;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v16;
      }

      else
      {
        *&a1[v9] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v16;
  }
}

void sub_BFCD4()
{
  if (!qword_129150)
  {
    v0 = sub_F0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_129150);
    }
  }
}

uint64_t sub_BFD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RCSSpamReportingController.OperationType(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_F035C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_BFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_BFE34(uint64_t a1, unsigned int a2)
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

uint64_t sub_BFE7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_BFED0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_BFF0C()
{
  v0 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v0 setFormatOptions:3955];
  v1 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v1 setFormatOptions:1907];
  sub_388C8(&qword_128BB8, &unk_F41E0);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_F56F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  qword_12FCB8 = v2;
  return result;
}

uint64_t sub_BFFB4@<X0>(uint64_t a1@<X0>, RCSServiceSession *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a1;
  v40 = a2;
  if (qword_128F70 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = qword_12FCB8;
    v37 = a9;
    if (qword_12FCB8 >> 62)
    {
      break;
    }

    v11 = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      goto LABEL_18;
    }

LABEL_4:
    v12 = 0;
    v38 = v10 & 0xC000000000000001;
    a9 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v38)
      {
        v13 = sub_F0FCC();
      }

      else
      {
        if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = sub_F07BC();
      v17 = [v14 dateFromString:v16];

      v18 = sub_F030C();
      v19 = *(v18 - 8);
      __chkstk_darwin(v18);
      v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v17)
      {
        v30 = v20;
        v40, v21, v22, v23, v24, v25, v26, v27;
        sub_F02CC();

        v31 = v37;
        (*(v19 + 32))(v37, v29, v30);
        return (*(v19 + 56))(v31, 0, 1, v30);
      }

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v11 = sub_F10DC();
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_18:
  v40, a2, a3, a4, a5, a6, a7, a8;
  v33 = sub_F030C();
  v34 = *(*(v33 - 8) + 56);
  v35 = v33;
  v36 = v37;

  return v34(v36, 1, 1, v35);
}

uint64_t RCSFile.ThumbnailInformation.init(thumbnail:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  __chkstk_darwin(v4 - 8);
  v40 = &v40 - v5;
  v6 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v7 = &a2[*(v6 + 32)];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v41 = v7;
  v8 = [a1 fileSizeInBytes];
  v9 = [v8 integerValue];

  *a2 = v9;
  v10 = [a1 untrustedContentType];
  v11 = sub_F07EC();
  v13 = v12;

  *(a2 + 1) = v11;
  *(a2 + 2) = v13;
  v14 = [a1 dataUrl];
  sub_F01AC();

  v15 = sub_F030C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_388C8(&qword_127B20, &unk_F74E0);
  *&v20 = __chkstk_darwin(v19 - 8).n128_u64[0];
  v22 = &v40 - v21;
  v23 = [a1 validUntil];
  v24 = sub_F07EC();
  v26 = v25;

  sub_BFFB4(v24, v26, v27, v28, v29, v30, v31, v32, v22);
  v33 = *(v16 + 48);
  if (v33(v22, 1, v15) == 1)
  {
    sub_F02DC();
    if (v33(v22, 1, v15) != 1)
    {
      sub_372B0(v22, &qword_127B20, &unk_F74E0);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v22, v15);
  }

  (*(v16 + 32))(&a2[*(v6 + 28)], v18, v15);
  v34 = [a1 cryptoMaterial];
  v35 = v40;
  sub_C0650(v34, v40);
  v36 = sub_F050C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {

    sub_372B0(v35, &qword_1299C0, &unk_F74D0);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  else
  {
    *(&v43 + 1) = v36;
    v44 = &protocol witness table for FileCryptoMaterial;
    v38 = sub_37474(&v42);
    (*(v37 + 32))(v38, v35, v36);
  }

  return sub_14A04(&v42, v41, &qword_1299C8, &qword_F5700);
}

uint64_t sub_C0650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 key];
    sub_F025C();

    v5 = [v3 nonce];
    if (v5)
    {
      v6 = v5;
      sub_F025C();
    }

    v8 = [v3 aad];
    if (v8)
    {
      v9 = v8;
      sub_F025C();
    }

    v10 = [v3 authTag];
    sub_F025C();

    v11 = [v3 originalFileSizeInBytes];
    [v11 unsignedIntValue];

    sub_F04DC();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v12 = sub_F050C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v7, 1, v12);
}

uint64_t RCSFile.DispositionInformation.init(disposition:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  __chkstk_darwin(v4 - 8);
  v52 = v51 - v5;
  v6 = type metadata accessor for RCSFile.DispositionInformation(0);
  v7 = a2 + v6[10];
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6[11];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v53 = v8;
  v9 = [a1 fileSizeInBytes];
  v10 = [v9 integerValue];

  *a2 = v10;
  v11 = [a1 originalFileName];
  v12 = sub_F07EC();
  v14 = v13;

  a2[1] = v12;
  a2[2] = v14;
  v15 = [a1 untrustedContentType];
  v16 = sub_F07EC();
  v18 = v17;

  a2[3] = v16;
  a2[4] = v18;
  v19 = [a1 dataUrl];
  sub_F01AC();

  v20 = [a1 disposition];
  v21 = v20 + 1;
  if (v20 + 1 >= 3)
  {
    v21 = 1;
  }

  *(a2 + v6[9]) = v21;
  v22 = [a1 playingLengthInSeconds];
  if (v22)
  {
    v23 = v22;
    [v22 doubleValue];
    v25 = v24;

    *v7 = v25;
    v7[8] = 0;
  }

  v26 = sub_F030C();
  v51[1] = v51;
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_388C8(&qword_127B20, &unk_F74E0);
  v51[0] = v51;
  *&v31 = __chkstk_darwin(v30 - 8).n128_u64[0];
  v33 = v51 - v32;
  v34 = [a1 validUntil];
  v35 = sub_F07EC();
  v37 = v36;

  sub_BFFB4(v35, v37, v38, v39, v40, v41, v42, v43, v33);
  v44 = *(v27 + 48);
  if (v44(v33, 1, v26) == 1)
  {
    sub_F02DC();
    if (v44(v33, 1, v26) != 1)
    {
      sub_372B0(v33, &qword_127B20, &unk_F74E0);
    }
  }

  else
  {
    (*(v27 + 32))(v29, v33, v26);
  }

  (*(v27 + 32))(a2 + v6[8], v29, v26);
  v45 = [a1 cryptoMaterial];
  v46 = v52;
  sub_C0650(v45, v52);
  v47 = sub_F050C();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {

    sub_372B0(v46, &qword_1299C0, &unk_F74D0);
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
  }

  else
  {
    *(&v55 + 1) = v47;
    v56 = &protocol witness table for FileCryptoMaterial;
    v49 = sub_37474(&v54);
    (*(v48 + 32))(v49, v46, v47);
  }

  return sub_14A04(&v54, v53, &qword_1299C8, &qword_F5700);
}

void RCSFile.init(descriptor:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v8 = *(*(v7 - 8) + 56);
  v8(a2, 1, 1, v7);
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v9 = sub_F06CC();
  sub_3C96C(v9, static Logger.rcs);
  v10 = a1;
  v11 = sub_F06AC();
  v12 = sub_F0CCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "Converting %@ to RCSFile", v13, 0xCu);
    sub_372B0(v14, &qword_127AF0, &qword_F28E0);
  }

  v16 = [v10 thumbnail];
  if (v16)
  {
    RCSFile.ThumbnailInformation.init(thumbnail:)(v16, v6);
    v8(v6, 0, 1, v7);
    sub_14A04(v6, a2, &qword_1299D0, &qword_F6890);
  }

  v17 = [v10 file];
  v18 = type metadata accessor for RCSFile(0);
  RCSFile.DispositionInformation.init(disposition:)(v17, (a2 + *(v18 + 20)));
}

uint64_t RCSMessage.Coordinates.init(coordinates:)(void *a1)
{
  v2 = [a1 latitude];
  [v2 doubleValue];

  v3 = [a1 longitude];
  [v3 doubleValue];

  return 0;
}

id RCSMessage.Coordinates.toCTCoordinates()(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = [objc_allocWithZone(CTLazuliLocationCoordinates) init];
  v6 = sub_F0BEC();
  [v5 setLatitude:v6];

  v7 = sub_F0BEC();
  [v5 setLongitude:v7];

  v8 = [objc_allocWithZone(CTLazuliMessageGeoLocationPush) init];
  [v8 setCoordinates:v5];
  if (a2)
  {
    v9 = sub_F07BC();
  }

  else
  {
    v9 = 0;
  }

  [v8 setAdditionalDescription:v9];

  return v8;
}

unint64_t RCSGroup.ParseError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[4] >> 62;
  if (!v2)
  {
    sub_F0F9C(38);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
    v29 = 0xD000000000000023;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[1];
    sub_F0F9C(43);
    0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
    v29 = 0x2070756F7247;
    v30._countAndFlagsBits = v1;
    v30._object = v5;
    sub_F08CC(v30);
    v31._object = 0x8000000000100290;
    v31._countAndFlagsBits = 0xD00000000000001BLL;
    sub_F08CC(v31);
    v32._countAndFlagsBits = v4;
    v32._object = v3;
    sub_F08CC(v32);
    v33._countAndFlagsBits = 2629690;
    v33._object = 0xE300000000000000;
    sub_F08CC(v33);
    swift_getErrorValue();
LABEL_5:
    v34._countAndFlagsBits = sub_F12AC();
    object = v34._object;
    sub_F08CC(v34);
    object, v21, v22, v23, v24, v25, v26, v27;
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    sub_F08CC(v35);
    return v29;
  }

  return 0xD00000000000001ELL;
}

void RCSGroup.init(group:identity:)(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a3;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[4] = 0u;
  v69 = a2;
  sub_1F28(a2, a3);
  v5 = [a1 participants];
  v6 = [v5 memberList];

  sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
  v7 = sub_F09FC();

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  v71 = a1;
  v72 = v4;
  if (v15)
  {
    while (1)
    {
      v16 = v7;
      v77 = _swiftEmptyArrayStorage;
      sub_B6864(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        break;
      }

      v17 = 0;
      v7 = v77;
      v18 = v16;
      v74 = v16;
      v75 = v16 & 0xC000000000000001;
      v73 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v75)
        {
          v19 = sub_F0FCC();
        }

        else
        {
          if (v17 >= *(v73 + 16))
          {
            goto LABEL_17;
          }

          v19 = *&v18[2].IMDTelephonyServiceSession_opaque[8 * v17];
        }

        v20 = v19;
        v21 = [v19 member];
        v4 = sub_F07EC();
        v23 = v22;

        v24._countAndFlagsBits = v4;
        v24._object = v23;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v76, v24, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v25)
        {
          sub_1EDC(v69);

          v74, v38, v39, v40, v41, v42, v43, v44;
          sub_1EDC(v72);
          sub_C24C8(v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v45, v46);
          return;
        }

        v77 = v7;
        v33 = *(v7 + 16);
        v32 = *(v7 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_B6864((v32 > 1), v33 + 1, 1);
          v7 = v77;
        }

        *(v7 + 16) = v33 + 1;
        v34 = (v7 + (v33 << 6));
        scheme = v76.scheme;
        id = v76.id;
        v37 = *&v76.attributes._rawValue;
        *(v34 + 73) = *(&v76.alternateHandle + 1);
        v34[3] = id;
        v34[4] = v37;
        v34[2] = scheme;
        ++v17;
        v18 = v74;
        if (a1 == v15)
        {
          v74, v74, v26, v27, v28, v29, v30, v31;
          a1 = v71;
          v4 = v72;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v15 = sub_F10DC();
      v71 = a1;
      v72 = v4;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v7, v8, v9, v10, v11, v12, v13, v14;
    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    v4[5] = v7;
    v47 = [a1 subject];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 displayString];

      v50 = sub_F07EC();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v4[6] = v50;
    v4[7] = v52;
    v53 = [a1 icon];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 name];
      v56 = sub_F07EC();
      v58 = v57;

      v59 = [v54 data];
      v60 = sub_F025C();
      v62 = v61;

      v63 = [v54 type];
      v64 = sub_F07EC();
      v66 = v65;

      sub_1EDC(v70);
    }

    else
    {

      sub_1EDC(v70);
      v56 = 0;
      v58 = 0;
      v60 = 0;
      v62 = 0;
      v64 = 0;
      v66 = 0;
    }

    sub_C24C8(v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v67, v68);
    v72[8] = v56;
    v72[9] = v58;
    v72[10] = v60;
    v72[11] = v62;
    v72[12] = v64;
    v72[13] = v66;
  }
}

void RCSGroup.Icon.init(icon:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_F07EC();
  v7 = v6;

  v8 = [a1 data];
  v9 = sub_F025C();
  v11 = v10;

  v12 = [a1 type];
  v13 = sub_F07EC();
  v15 = v14;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
  a2[5] = v15;
}

void RCSGroup.removing(participants:)(RCSServiceSession *a1@<X0>, uint64_t a2@<X8>)
{
  sub_54C4C(v2, a2);

  v5 = sub_C2680((a2 + 40), a1);
  a1, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(*(a2 + 40) + 16);
  if (v13 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_C29F8(v5, v13);
  }
}

id RCSMessage.Typing.init(indication:)(void *a1)
{
  v2 = [a1 active];

  return v2;
}

id CTLazuliDestination.init(handle:countryCode:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_E7F70(a1, a2, v17);
  sub_3CAB8(a1);
  RCSHandle.rawValue.getter();
  v7 = v6;
  sub_3CAB8(v17);
  v8 = sub_F07BC();
  v7, v9, v10, v11, v12, v13, v14, v15;
  [v5 setUri:v8];

  return v5;
}

id CTLazuliGroupChatConversationID.init(conversationID:)(uint64_t a1, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  a2, a2, a3, a4, a5, a6, a7, a8;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 init];
}

id CTLazuliFileDispositionInformation.init(file:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = a1 + *(type metadata accessor for RCSFile(0) + 20);
  v4 = v2;
  v5 = sub_F0C5C();
  [v4 setFileSizeInBytes:v5];

  v6 = sub_F07BC();
  [v4 setContentType:v6];

  v7 = sub_F07BC();
  [v4 setOriginalFileName:v7];

  v8 = type metadata accessor for RCSFile.DispositionInformation(0);
  v9 = sub_F019C();
  [v4 setDataUrl:v9];

  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v10 = qword_12FCB8;
  if (qword_12FCB8 >> 62)
  {
    result = sub_F10DC();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v17 = 0xE000000000000000;
    goto LABEL_11;
  }

  result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;
  v14 = sub_F028C();
  v15 = [v13 stringFromDate:v14];

  sub_F07EC();
  v17 = v16;

LABEL_11:
  v18 = sub_F07BC();
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v4 setValidUntil:v18];

  [v4 setDisposition:*(v3 + v8[9]) - 1];
  if ((RCSFile.isAudio.getter() & 1) != 0 || (RCSFile.isMovie.getter()) && (*(v3 + v8[10] + 8) & 1) == 0)
  {
    v26 = sub_F0BEC();
    [v4 setPlayingLengthInSeconds:v26];
  }

  sub_37310(0, &qword_1299D8, CTLazuliFileCryptoMaterial_ptr);
  sub_37380(v3 + v8[11], v28, &qword_1299C8, &qword_F5700);
  v27 = sub_C1C74(v28);
  [v4 setCryptoMaterial:v27];

  sub_14A6C(a1, type metadata accessor for RCSFile);
  return v4;
}

id sub_C1C74(uint64_t a1)
{
  sub_37380(a1, &v37, &qword_1299C8, &qword_F5700);
  if (v38)
  {
    sub_3928(&v37, v39);
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = v40;
    v4 = v41;
    sub_373E8(v39, v40);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    v9 = v8;
    v10 = sub_F024C();
    [v6 setKey:{v10, sub_5F048(v7, v9)}];

    v11 = v40;
    v12 = v41;
    sub_373E8(v39, v40);
    v13 = (*(v12 + 16))(v11, v12);
    if (v14 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v17 = v13;
      v18 = v14;
      v16 = sub_F024C();
      v15 = sub_66124(v17, v18);
    }

    [v6 setNonce:{v16, v15}];

    v19 = v40;
    v20 = v41;
    sub_373E8(v39, v40);
    v21 = (*(v20 + 24))(v19, v20);
    if (v22 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v25 = v21;
      v26 = v22;
      v24 = sub_F024C();
      v23 = sub_66124(v25, v26);
    }

    [v6 setAad:{v24, v23}];

    v27 = v40;
    v28 = v41;
    sub_373E8(v39, v40);
    v29 = (*(v28 + 32))(v27, v28);
    v31 = v30;
    v32 = sub_F024C();
    [v6 setAuthTag:{v32, sub_5F048(v29, v31)}];

    v33 = v40;
    v34 = v41;
    sub_373E8(v39, v40);
    v35 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:{(*(v34 + 40))(v33, v34)}];
    [v6 setOriginalFileSizeInBytes:v35];

    sub_372B0(a1, &qword_1299C8, &qword_F5700);
    sub_1EDC(v39);
  }

  else
  {
    sub_372B0(a1, &qword_1299C8, &qword_F5700);
    sub_372B0(&v37, &qword_1299C8, &qword_F5700);
    return 0;
  }

  return v6;
}

id CTLazuliFileThumbnailInformation.init(file:)(uint64_t a1)
{
  v2 = sub_388C8(&qword_1299D0, &qword_F6890);
  __chkstk_darwin(v2 - 8);
  v4 = &v31[-v3 - 8];
  v5 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_37380(a1, v4, &qword_1299D0, &qword_F6890);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_14A6C(a1, type metadata accessor for RCSFile);
    sub_372B0(v4, &qword_1299D0, &qword_F6890);
    return 0;
  }

  sub_C2AB8(v4, v8);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = sub_F07BC();
  [v9 setContentType:v10];

  v11 = sub_F0C5C();
  [v9 setFileSizeInBytes:v11];

  v12 = sub_F019C();
  [v9 setDataUrl:v12];

  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v13 = qword_12FCB8;
  if (!(qword_12FCB8 >> 62))
  {
    result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v20 = 0xE000000000000000;
    goto LABEL_13;
  }

  result = sub_F10DC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = sub_F0FCC();
    goto LABEL_10;
  }

  if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
    v15 = *(v13 + 32);
LABEL_10:
    v16 = v15;
    v17 = sub_F028C();
    v18 = [v16 stringFromDate:v17];

    sub_F07EC();
    v20 = v19;

LABEL_13:
    v21 = sub_F07BC();
    v20, v22, v23, v24, v25, v26, v27, v28;
    [v9 setValidUntil:v21];

    sub_37310(0, &qword_1299D8, CTLazuliFileCryptoMaterial_ptr);
    sub_37380(&v8[*(v5 + 32)], v31, &qword_1299C8, &qword_F5700);
    v29 = sub_C1C74(v31);
    [v9 setCryptoMaterial:v29];

    sub_14A6C(a1, type metadata accessor for RCSFile);
    sub_14A6C(v8, type metadata accessor for RCSFile.ThumbnailInformation);
    return v9;
  }

  __break(1u);
  return result;
}

id CTLazuliFileTransferDescriptor.init(file:)(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_37310(0, &qword_1299E0, CTLazuliFileDispositionInformation_ptr);
  sub_C2B1C(a1, v4);
  v6 = v5;
  v7 = CTLazuliFileDispositionInformation.init(file:)(v4);
  [v6 setFile:v7];

  sub_37310(0, &qword_1299E8, CTLazuliFileThumbnailInformation_ptr);
  sub_C2B1C(a1, v4);
  v8 = CTLazuliFileThumbnailInformation.init(file:)(v4);
  [v6 setThumbnail:v8];

  sub_14A6C(a1, type metadata accessor for RCSFile);
  return v6;
}

void sub_C24C8(uint64_t a1, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, RCSServiceSession *a6, void *a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    sub_5F048(a3, a4);

    a6, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t sub_C253C(uint64_t a1, uint64_t a2)
{
  v39 = *(a1 + 16);
  v40 = a2;
  v2 = 0;
  if (v39)
  {
    for (i = (a1 + 80); ; i += 8)
    {
      v41[3] = &v39;
      v4 = *(i - 5);
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *i;
      v41[0] = *(i - 4);
      v41[1] = v5;
      __chkstk_darwin(a1);
      v38[2] = v41;

      v8 = sub_400F0(sub_14AEC, v38, v40);
      v7, v9, v10, v11, v12, v13, v14, v15;
      v6, v16, v17, v18, v19, v20, v21, v22;
      v5, v23, v24, v25, v26, v27, v28, v29;
      v4, v30, v31, v32, v33, v34, v35, v36;
      if (v8)
      {
        break;
      }

      if (v39 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_C2680(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_C253C(*a1, a2);
  v64 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    if (v9 == v10)
    {
      return v2;
    }

    v50 = a1;
    v51 = a2;
    v12 = (result << 6) + 96;
    while (v9 < v10)
    {
      v13 = (v6 + v12);
      v15 = *(v6 + v12 + 16);
      v14 = *(v6 + v12 + 32);
      v16 = *(v6 + v12);
      *(v63 + 9) = *(v6 + v12 + 41);
      v62[1] = v15;
      v63[0] = v14;
      v62[0] = v16;
      v56 = v15;
      __chkstk_darwin(result);
      v49[2] = &v56;
      sub_38910(v62, &v59);
      v17 = v64;
      v18 = sub_400F0(sub_14ACC, v49, v51);
      v64 = v17;
      result = sub_3CAB8(v62);
      if ((v18 & 1) == 0)
      {
        if (v9 != v2)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }

          v19 = *v11;
          if (v2 >= *v11)
          {
            goto LABEL_23;
          }

          v20 = v2 << 6;
          v21 = (v6 + 32 + (v2 << 6));
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[2];
          *(v58 + 9) = *(v21 + 41);
          v57 = v23;
          v58[0] = v24;
          v56 = v22;
          if (v9 >= v19)
          {
            goto LABEL_24;
          }

          v25 = *v13;
          v26 = v13[1];
          v27 = v13[2];
          *(v61 + 9) = *(v13 + 41);
          v60 = v26;
          v61[0] = v27;
          v59 = v25;
          sub_38910(&v56, v54);
          sub_38910(&v59, v54);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_C2528(v6, v28, v29, v30, v31, v32, v33, v34);
            v6 = result;
          }

          if (v2 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v35 = (v6 + v20);
          v36 = *(v6 + v20 + 32);
          v37 = *(v6 + v20 + 48);
          v38 = *(v6 + v20 + 64);
          *(v53 + 9) = *(v6 + v20 + 73);
          v52[1] = v37;
          v53[0] = v38;
          v52[0] = v36;
          v39 = v59;
          v40 = v60;
          v41 = v61[0];
          *(v35 + 73) = *(v61 + 9);
          v35[3] = v40;
          v35[4] = v41;
          v35[2] = v39;
          result = sub_3CAB8(v52);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v42 = (v6 + v12);
          v43 = *(v6 + v12);
          v44 = *(v6 + v12 + 16);
          v45 = *(v6 + v12 + 32);
          *(v55 + 9) = *(v6 + v12 + 41);
          v54[1] = v44;
          v55[0] = v45;
          v54[0] = v43;
          v46 = v56;
          v47 = v57;
          v48 = v58[0];
          *(v42 + 41) = *(v58 + 9);
          v42[1] = v47;
          v42[2] = v48;
          *v42 = v46;
          result = sub_3CAB8(v54);
          *v50 = v6;
        }

        ++v2;
      }

      ++v9;
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      v12 += 64;
      if (v9 == v10)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_C2938(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = v13 + 64 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_C29F8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2)[1].IMDTelephonyServiceSession_opaque;
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *v4[1].state >> 1)
  {
    if (v5 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v5;
    }

    v4 = sub_D8C60(isUniquelyReferenced_nonNull_native, v14, 1, v4, v10, v11, v12, v13);
    *v2 = v4;
  }

  result = sub_C2938(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_C2AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C2B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C2B84()
{
  result = qword_1299F0;
  if (!qword_1299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1299F0);
  }

  return result;
}

unint64_t sub_C2BD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_C2BF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 32) >> 57) >> 5) | (4 * ((*(a1 + 32) >> 57) & 0x18 | *(a1 + 32) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_C2C50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_C2CC4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
  }

  return result;
}

uint64_t RCSChipList.attributes.getter()
{
  v1 = v0;
  if (qword_128F48 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.chatbot);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = [v6 chipList];
      sub_F0DBC();
      v8 = sub_F09FC();

      if (v8 >> 62)
      {
        v16 = sub_F10DC();
      }

      else
      {
        v16 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }

      v8, v9, v10, v11, v12, v13, v14, v15;
    }

    else
    {
      v16 = 0;
    }

    *(v5 + 4) = v16;

    _os_log_impl(&dword_0, v3, v4, "Apply %ld chip list attributes", v5, 0xCu);

    v17 = *(v1 + 16);
    if (!v17)
    {
      return 0;
    }
  }

  else
  {

    v17 = *(v1 + 16);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = [v17 dictionaryRepresentation];
  v19 = sub_F076C();

  return v19;
}

uint64_t RCSChipList.__allocating_init(_:originalID:)(void *a1, uint64_t a2, RCSServiceSession *a3)
{
  v5 = swift_allocObject();
  v6 = objc_opt_self();
  v7 = sub_F07BC();
  a3, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v6 IMChipListFromCTChipList:a1 originalID:v7];

  *(v5 + 16) = v15;
  return v5;
}

uint64_t RCSChipList.init(_:originalID:)(void *a1, uint64_t a2, RCSServiceSession *a3)
{
  v6 = objc_opt_self();
  v7 = sub_F07BC();
  a3, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v6 IMChipListFromCTChipList:a1 originalID:v7];

  *(v3 + 16) = v15;
  return v3;
}

uint64_t RCSSuggestedReply.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_C30A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1282F0, &qword_F3450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSConvergenceContext.subscriptionInfo.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RCSConvergenceContext.init(sender:subscriptionInfo:chat:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v11;
  *(a8 + 32) = a1[2];
  *(a8 + 41) = *(a1 + 41);
  *(a8 + 64) = a2;
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  v12 = type metadata accessor for RCSConvergenceContext(0, a7, a3, a4);
  v13 = *(*(a7 - 8) + 32);
  v14 = a8 + *(v12 + 32);

  return v13(v14, a6, a7);
}

void sub_C3250(uint64_t a1)
{
  sub_C36EC();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_C32E0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 96) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 96) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_C3478(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 96) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 96) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 41) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 8) = a2;
  }
}

void sub_C36EC()
{
  if (!qword_129B20)
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_129B20);
    }
  }
}

uint64_t RCSOperationController.OperationID.description.getter(uint64_t a1, uint64_t a2)
{
  sub_F0F9C(48);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  v42[0] = 0xD000000000000016;
  v42[1] = 0x8000000000100330;
  v11 = sub_F035C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v13);
  sub_5F9D4();
  v43._countAndFlagsBits = sub_F11EC();
  object = v43._object;
  sub_F08CC(v43);
  object, v17, v18, v19, v20, v21, v22, v23;
  (*(v12 + 8))(v15, v11);
  v44._countAndFlagsBits = 0x4965707564656420;
  v44._object = 0xEA00000000003D44;
  sub_F08CC(v44);
  v45._countAndFlagsBits = (*(a2 + 24))(a1, a2);
  v24 = v45._object;
  sub_F08CC(v45);
  v24, v25, v26, v27, v28, v29, v30, v31;
  v46._countAndFlagsBits = 0x4449657565757120;
  v46._object = 0xE90000000000003DLL;
  sub_F08CC(v46);
  v32._countAndFlagsBits = (*(a2 + 32))(a1, a2);
  if (v32._object)
  {
    v33 = v32._object;
  }

  else
  {
    v32._countAndFlagsBits = 0x296C696E28;
    v33 = 0xE500000000000000;
  }

  v32._object = v33;
  sub_F08CC(v32);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v47._countAndFlagsBits = 62;
  v47._object = 0xE100000000000000;
  sub_F08CC(v47);
  return v42[0];
}

uint64_t RCSOperationController.Configuration.init(maxOperationDuration:operationExpirationWatchdogInterval:untrackedFulfillmentHandler:verifiesUniqueOperationIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t RCSOperationController.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RCSOperationController.init(configuration:)(a1);
  return v2;
}

uint64_t sub_C39B4()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_129B28);
  v1 = sub_3C96C(v0, qword_129B28);
  if (qword_128F58 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.operations);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RCSOperationController.OperationError.errorDescription.getter()
{
  sub_C7240(v0, &v43);
  if (v46)
  {
    v1 = v45;
    sub_54F88(&v43, &v36);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_F0F9C(61);
    v41 = v39;
    v42 = v40;
    v47._countAndFlagsBits = 0xD000000000000019;
    v47._object = 0x8000000000100350;
    sub_F08CC(v47);
    sub_3FE38(&v36, &v39);
    v48._countAndFlagsBits = sub_F085C();
    object = v48._object;
    sub_F08CC(v48);
    object, v3, v4, v5, v6, v7, v8, v9;
    v49._object = 0x8000000000100370;
    v49._countAndFlagsBits = 0xD000000000000020;
    sub_F08CC(v49);
    v39 = v1;
    sub_388C8(&qword_128BE0, &qword_F58B0);
    v50._countAndFlagsBits = sub_F083C();
    v10 = v50._object;
    sub_F08CC(v50);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = v41;
  }

  else
  {
    sub_3928(&v44, &v36);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_F0F9C(83);
    v51._object = 0x80000000001003A0;
    v51._countAndFlagsBits = 0xD000000000000020;
    sub_F08CC(v51);
    v19 = v37;
    v20 = v38;
    sub_373E8(&v36, v37);
    v21 = sub_F035C();
    v22 = *(v21 - 8);
    v23 = __chkstk_darwin(v21);
    v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19, v20, v23);
    sub_5F9D4();
    v52._countAndFlagsBits = sub_F11EC();
    v26 = v52._object;
    sub_F08CC(v52);
    v26, v27, v28, v29, v30, v31, v32, v33;
    (*(v22 + 8))(v25, v21);
    v53._countAndFlagsBits = 0xD000000000000016;
    v53._object = 0x80000000001003D0;
    sub_F08CC(v53);
    sub_F0BFC();
    v54._object = 0xEF2064657375202CLL;
    v54._countAndFlagsBits = 0x73646E6F63657320;
    sub_F08CC(v54);
    sub_F0BFC();
    v55._countAndFlagsBits = 0x73646E6F63657320;
    v55._object = 0xE800000000000000;
    sub_F08CC(v55);
    v18 = v39;
  }

  sub_1EDC(&v36);
  return v18;
}

void sub_C3D90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_F06EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_F071C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v14 = sub_F06CC();
  sub_3C96C(v14, qword_129B28);
  swift_retain_n();
  v15 = sub_F06AC();
  LODWORD(v69) = sub_F0D0C();
  v16 = os_log_type_enabled(v15, v69);
  v67 = v10;
  v68 = v9;
  v66 = v13;
  v65 = v6;
  v70 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v18 = sub_F035C();
    v64 = a1;
    v61 = v59;
    v19 = v18;
    v20 = *(v18 - 8);
    __chkstk_darwin(v18);
    v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v23 = v7;
    v24 = a2;
    v25 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v26 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v25);
    v27 = *(v26 + 16);
    v62 = v15;
    v28 = v26;
    a2 = v24;
    v7 = v23;
    v27(v25, v28);
    sub_5F9D4();
    v29 = sub_F11EC();
    v31 = v30;
    (*(v20 + 8))(v22, v19);
    a1 = v64;
    v32 = sub_3E850(v29, v31, aBlock);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v17 + 14) = v32;
    *(v17 + 22) = 2048;
    swift_beginAccess();
    v40 = *(*(v3 + 152) + 16);

    *(v17 + 24) = v40;

    v41 = v62;
    _os_log_impl(&dword_0, v62, v69, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v17, 0x20u);
    sub_1EDC(v63);

    if ((a2 & 1) == 0)
    {
LABEL_5:
      v74 = &type metadata for Never;
      LOBYTE(v75) = 0;
      goto LABEL_8;
    }
  }

  else
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  aBlock[0] = a1;
  LOBYTE(v75) = 1;
  swift_errorRetain();
LABEL_8:
  swift_beginAccess();
  sub_C817C(aBlock, v3 + 112);
  swift_endAccess();
  swift_beginAccess();
  v69 = *(v3 + 152);
  v42 = *v69[1].IMDTelephonyServiceSession_opaque;
  if (v42)
  {
    v64 = sub_C81EC();
    v63 = &v73;
    v62 = v7 + 1;
    v61 = (v70 + 8);

    v60 = a2;
    v43 = 2;
    v44 = v66;
    v45 = v68;
    do
    {
      v46 = swift_allocObject();
      v46[1] = v69[v43];

      v70 = sub_F0D4C();
      v47 = v60 & 1;
      v77 = v60 & 1;
      v48 = swift_allocObject();
      *(v48 + 16) = a1;
      *(v48 + 24) = v77;
      *(v48 + 32) = sub_173D8;
      *(v48 + 40) = v46;
      v75 = sub_17444;
      v76 = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v73 = sub_9400C;
      v74 = &unk_120E88;
      v49 = _Block_copy(aBlock);

      sub_C8244(a1, v47);

      sub_F06FC();
      v71 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v50 = v65;
      sub_F0E8C();
      v51 = v70;
      sub_F0D5C();
      _Block_release(v49);

      (v62->isa)(v45, v50);
      (*v61)(v44, v67);

      ++v43;
      --v42;
    }

    while (v42);
    v69, v52, v53, v54, v55, v56, v57, v58;
  }
}

void sub_C4498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F06EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F071C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v12 = sub_F06CC();
  sub_3C96C(v12, qword_129B28);
  swift_retain_n();
  v13 = sub_F06AC();
  v14 = sub_F0D0C();
  v15 = os_log_type_enabled(v13, v14);
  v69 = v7;
  v68 = v8;
  v67 = v11;
  v66 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v17 = sub_F035C();
    v71 = a1;
    v18 = v17;
    v63 = &v62;
    v19 = *(v17 - 8);
    __chkstk_darwin(v17);
    v21 = v9;
    v22 = v5;
    v23 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(v65) = v14;
    v24 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v25 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v24);
    v26 = *(v25 + 16);
    v64 = v13;
    v26(v24, v25);
    sub_5F9D4();
    v27 = sub_F11EC();
    v29 = v28;
    v30 = v23;
    v5 = v22;
    v9 = v21;
    v31 = v18;
    a1 = v71;
    (*(v19 + 8))(v30, v31);
    v32 = sub_3E850(v27, v29, aBlock);
    v29, v33, v34, v35, v36, v37, v38, v39;
    *(v16 + 14) = v32;
    *(v16 + 22) = 2048;
    swift_beginAccess();
    v40 = *(*(v2 + 152) + 16);

    *(v16 + 24) = v40;

    v41 = v64;
    _os_log_impl(&dword_0, v64, v65, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v16, 0x20u);
    sub_1EDC(v70);
  }

  else
  {
  }

  sub_37380(a1, v79, &qword_128B88, &qword_F3F30);
  v42 = v80;
  if (v80)
  {
    aBlock[0] = *&v79[0];
  }

  else
  {
    sub_54F88(v79, v72);
    v76 = &type metadata for Any + 8;
    aBlock[0] = swift_allocObject();
    sub_54F88(v72, (aBlock[0] + 16));
  }

  LOBYTE(v77) = v42;
  swift_beginAccess();
  sub_C817C(aBlock, v2 + 112);
  swift_endAccess();
  swift_beginAccess();
  v70 = *(v2 + 152);
  v43 = *v70[1].IMDTelephonyServiceSession_opaque;
  if (v43)
  {
    v65 = sub_C81EC();
    v64 = &v75;
    v63 = (v5 + 8);
    v62 = (v9 + 8);

    v44 = 2;
    v45 = v69;
    do
    {
      v46 = swift_allocObject();
      *(v46 + 16) = v70[v44];

      v71 = sub_F0D4C();
      sub_37380(a1, v79, &qword_128B88, &qword_F3F30);
      v47 = swift_allocObject();
      v48 = v79[1];
      *(v47 + 16) = v79[0];
      *(v47 + 32) = v48;
      *(v47 + 48) = v80;
      *(v47 + 56) = sub_17C54;
      *(v47 + 64) = v46;
      v77 = sub_17BCC;
      v78 = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v75 = sub_9400C;
      v76 = &unk_1210A8;
      v49 = a1;
      v50 = _Block_copy(aBlock);
      swift_retain_n();
      v51 = v67;
      sub_F06FC();
      v73 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v52 = v66;
      sub_F0E8C();
      v53 = v71;
      sub_F0D5C();
      v54 = v50;
      a1 = v49;
      _Block_release(v54);

      (*v63)(v45, v52);
      (*v62)(v51, v68);

      ++v44;
      --v43;
    }

    while (v43);
    v70, v55, v56, v57, v58, v59, v60, v61;
  }
}

void sub_C4C18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F06EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F071C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v12 = sub_F06CC();
  sub_3C96C(v12, qword_129B28);
  swift_retain_n();
  v13 = sub_F06AC();
  v14 = sub_F0D0C();
  v15 = os_log_type_enabled(v13, v14);
  v69 = v7;
  v68 = v8;
  v67 = v11;
  v66 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&aBlock = v70;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v17 = sub_F035C();
    v71 = a1;
    v18 = v17;
    v63 = &v62;
    v19 = *(v17 - 8);
    __chkstk_darwin(v17);
    v21 = v9;
    v22 = v5;
    v23 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(v65) = v14;
    v24 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v25 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v24);
    v26 = *(v25 + 16);
    v64 = v13;
    v26(v24, v25);
    sub_5F9D4();
    v27 = sub_F11EC();
    v29 = v28;
    v30 = v23;
    v5 = v22;
    v9 = v21;
    v31 = v18;
    a1 = v71;
    (*(v19 + 8))(v30, v31);
    v32 = sub_3E850(v27, v29, &aBlock);
    v29, v33, v34, v35, v36, v37, v38, v39;
    *(v16 + 14) = v32;
    *(v16 + 22) = 2048;
    swift_beginAccess();
    v40 = *(*(v2 + 152) + 16);

    *(v16 + 24) = v40;

    v41 = v64;
    _os_log_impl(&dword_0, v64, v65, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v16, 0x20u);
    sub_1EDC(v70);
  }

  else
  {
  }

  sub_37380(a1, &aBlock, &qword_127EC0, &qword_F2C90);
  v42 = v75;
  if (v75)
  {
    v78[0] = aBlock;
  }

  else
  {
    sub_3928(&aBlock, &v76);
    v78[3] = sub_388C8(&qword_129378, &qword_F49E0);
    v78[0] = swift_allocObject();
    sub_3928(&v76, v78[0] + 16);
  }

  v79 = v42;
  swift_beginAccess();
  sub_C817C(v78, v2 + 112);
  swift_endAccess();
  swift_beginAccess();
  v70 = *(v2 + 152);
  v43 = *v70[1].IMDTelephonyServiceSession_opaque;
  if (v43)
  {
    v65 = sub_C81EC();
    v64 = v74;
    v63 = (v5 + 8);
    v62 = (v9 + 8);

    v44 = 2;
    v45 = v69;
    do
    {
      v46 = swift_allocObject();
      *(v46 + 16) = v70[v44];

      v71 = sub_F0D4C();
      sub_37380(a1, &v76, &qword_127EC0, &qword_F2C90);
      v47 = swift_allocObject();
      v48 = v77[0];
      *(v47 + 16) = v76;
      *(v47 + 32) = v48;
      *(v47 + 41) = *(v77 + 9);
      *(v47 + 64) = sub_17C4C;
      *(v47 + 72) = v46;
      v74[2] = sub_174C0;
      v75 = v47;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v74[0] = sub_9400C;
      v74[1] = &unk_120F18;
      v49 = a1;
      v50 = _Block_copy(&aBlock);
      swift_retain_n();
      v51 = v67;
      sub_F06FC();
      v72 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v52 = v66;
      sub_F0E8C();
      v53 = v71;
      sub_F0D5C();
      v54 = v50;
      a1 = v49;
      _Block_release(v54);

      (*v63)(v45, v52);
      (*v62)(v51, v68);

      ++v44;
      --v43;
    }

    while (v43);
    v70, v55, v56, v57, v58, v59, v60, v61;
  }
}

void sub_C53A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_F06EC();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F071C();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v12 = sub_F133C();
  v81 = *(v12 - 1);
  isa = v81[8].isa;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v15 = sub_F06CC();
  sub_3C96C(v15, qword_129B28);
  swift_retain_n();
  v16 = sub_F06AC();
  LODWORD(v82) = sub_F0D0C();
  v17 = os_log_type_enabled(v16, v82);
  v78 = v9;
  v79 = v8;
  v77 = v11;
  v76 = v6;
  v75 = v14;
  v80 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = sub_F035C();
    v73 = &v65;
    v20 = *(v19 - 8);
    __chkstk_darwin(v19);
    v22 = v12;
    v23 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v25 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v24);
    v26 = *(v25 + 16);
    v71 = v16;
    v26(v24, v25);
    sub_5F9D4();
    v27 = sub_F11EC();
    v29 = v28;
    v30 = v23;
    v12 = v22;
    a2 = v80;
    (*(v20 + 8))(v30, v19);
    v31 = sub_3E850(v27, v29, aBlock);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v18 + 14) = v31;
    *(v18 + 22) = 2048;
    swift_beginAccess();
    v39 = *(*(v3 + 152) + 16);

    *(v18 + 24) = v39;

    v40 = v71;
    _os_log_impl(&dword_0, v71, v82, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v18, 0x20u);
    sub_1EDC(v74);
  }

  else
  {
  }

  __chkstk_darwin(v41);
  *(&v65 - 2) = a2;
  sub_C5C14(sub_176B0, v12, aBlock);
  swift_beginAccess();
  sub_C817C(aBlock, v3 + 112);
  swift_endAccess();
  swift_beginAccess();
  v82 = *(v3 + 152);
  v42 = *v82[1].IMDTelephonyServiceSession_opaque;
  if (v42)
  {
    v74 = sub_C81EC();
    v73 = v81 + 2;
    isa = (isa + 7);
    v71 = v81 + 4;
    v70 = v85;
    ++v69;
    ++v68;

    v43 = 2;
    v66 = v12;
    v67 = a1;
    do
    {
      v44 = swift_allocObject();
      v44[1] = v82[v43];

      v45 = sub_F0D4C();
      v46 = v81;
      v47 = v75;
      v48 = v66;
      (v81[2].isa)(v75, a1, v66);
      v49 = (LOBYTE(v46[10].isa) + 24) & ~LOBYTE(v46[10].isa);
      v50 = (isa + v49) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v80;
      (v46[4].isa)(v51 + v49, v47, v48);
      v52 = (v51 + v50);
      *v52 = sub_17C50;
      v52[1] = v44;
      v85[2] = sub_17850;
      v85[3] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v85[0] = sub_9400C;
      v85[1] = &unk_120FE0;
      v53 = _Block_copy(aBlock);
      swift_retain_n();
      v54 = v77;
      sub_F06FC();
      v83 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v55 = v79;
      v56 = v76;
      sub_F0E8C();
      sub_F0D5C();
      v57 = v53;
      a1 = v67;
      _Block_release(v57);

      (*v69)(v55, v56);
      (*v68)(v54, v78);

      ++v43;
      --v42;
    }

    while (v42);
    v82, v58, v59, v60, v61, v62, v63, v64;
  }
}

uint64_t sub_C5C14@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  sub_F133C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_C5E28(uint64_t a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v5[0] = a1;
    v6 = 1;
    swift_errorRetain();
  }

  else
  {
    v5[3] = &type metadata for Never;
    v6 = 0;
  }

  a3(v5);
  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C5EA0(uint64_t a1, void (*a2)(void *))
{
  sub_37380(a1, v7, &qword_128B88, &qword_F3F30);
  if (v8)
  {
    v5[0] = *&v7[0];
    v6 = 1;
    swift_errorRetain();
    a2(v5);
  }

  else
  {
    sub_54F88(v7, v4);
    v5[3] = &type metadata for Any + 8;
    v5[0] = swift_allocObject();
    sub_3FE38(v4, v5[0] + 16);
    v6 = 0;
    a2(v5);
    sub_1EDC(v4);
  }

  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C5F98(uint64_t a1, void (*a2)(void *))
{
  sub_37380(a1, v9, &qword_127EC0, &qword_F2C90);
  if (v10)
  {
    v7[0] = *&v9[0];
    v8 = 1;
    swift_errorRetain();
    a2(v7);

    v3 = v7;
  }

  else
  {
    sub_3928(v9, v7);
    v5[3] = sub_388C8(&qword_129378, &qword_F49E0);
    v5[0] = swift_allocObject();
    sub_1F28(v7, v5[0] + 16);
    v6 = 0;
    a2(v5);
    sub_1EDC(v7);
    v3 = v5;
  }

  return sub_372B0(v3, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C60AC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v10 = sub_F133C();
  v11 = __chkstk_darwin(v10);
  v13 = (&v18[-1] - v12);
  (*(v14 + 16))(&v18[-1] - v12, a1, v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18[0] = *v13;
    v19 = 1;
    swift_errorRetain();
    a2(v18);
  }

  else
  {
    (*(v7 + 32))(v9, v13, a4);
    v18[3] = a4;
    v15 = sub_37474(v18);
    (*(v7 + 16))(v15, v9, a4);
    v19 = 0;
    a2(v18);
    (*(v7 + 8))(v9, a4);
  }

  return sub_372B0(v18, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C62E4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_3CB70(&qword_127B88, &qword_F3680);
  v3[19] = sub_F133C();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_14B08, v2, 0);
}

uint64_t sub_C63A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37380(v8, v15, &qword_128B88, &qword_F3F30);
  if (v16)
  {
    *a3 = *&v15[0];
  }

  else
  {
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(a3, v7, a2);
      sub_3CB70(&qword_127B88, &qword_F3680);
      sub_F133C();
      swift_storeEnumTagMultiPayload();
      return sub_1EDC(v15);
    }

    sub_54F88(v15, v14);
    sub_B777C();
    v10 = swift_allocError();
    v12 = v11;
    sub_3FE38(v14, v11);
    *(v12 + 32) = a2;
    *(v12 + 56) = 1;
    sub_1EDC(v14);
    *a3 = v10;
  }

  sub_3CB70(&qword_127B88, &qword_F3680);
  sub_F133C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_C6584@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_C6654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3CB70(&qword_127B88, &qword_F3680);
  v6 = sub_F0A9C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - v9;
  (*(v7 + 16))(&v23 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  swift_beginAccess();
  v13 = *(a2 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 152) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_D8A20(0, (*v13[1].IMDTelephonyServiceSession_opaque + 1), &dword_0 + 1, v13, v15, v16, v17, v18);
    *(a2 + 152) = v13;
  }

  v20 = *v13[1].IMDTelephonyServiceSession_opaque;
  v19 = *v13[1].state;
  if (v20 >= v19 >> 1)
  {
    v13 = sub_D8A20((v19 > 1), (v20 + 1), &dword_0 + 1, v13, v15, v16, v17, v18);
  }

  *v13[1].IMDTelephonyServiceSession_opaque = v20 + 1;
  v21 = &v13[v20];
  *v21[2].IMDTelephonyServiceSession_opaque = sub_17604;
  *v21[2].state = v12;
  *(a2 + 152) = v13;
  return swift_endAccess();
}

uint64_t sub_C6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3CB70(&qword_127B88, &qword_F3680);
  v5 = sub_F133C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_C63A4(a1, a3, (&v11 - v7));
  v9 = sub_F0A9C();
  sub_C696C(v8, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_C696C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_F133C();
  v14 = __chkstk_darwin(v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_F0A7C();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_F0A8C();
  }
}

uint64_t sub_C6BA8()
{
  sub_372B0(v0 + 112, &qword_129368, &unk_F5B80);
  *(v0 + 152), v1, v2, v3, v4, v5, v6, v7;
  v8 = OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_creationDate;
  v9 = sub_F030C();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_1EDC((v0 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_C6C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_F030C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F02EC();
  v9 = sub_F029C();
  (*(v6 + 8))(v8, v5);
  return v9 & 1;
}

uint64_t RCSOperationController.Configuration.untrackedFulfillmentHandler.getter()
{
  v1 = *(v0 + 16);
  sub_C7278(v1, *(v0 + 24));
  return v1;
}

void RCSOperationController.Configuration.untrackedFulfillmentHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_776C8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RCSOperationController.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F0B1C();
  v25 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_388C8(&qword_128A58, &qword_F3D30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  swift_defaultActor_initialize();
  sub_F039C();
  sub_F0AFC();
  v26 = *(v5 + 56);
  v26(v13, 0, 1, v4);
  (*(v8 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);
  *(v2 + 112) = sub_F038C();
  *(v2 + 160) = sub_E7BB0(_swiftEmptyArrayStorage);
  *(v2 + 168) = sub_E7CB4(_swiftEmptyArrayStorage);
  v14 = *(a1 + 16);
  *(v2 + 120) = *a1;
  *(v2 + 136) = v14;
  *(v2 + 152) = *(a1 + 32);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_C7278(*(a1 + 16), *(a1 + 24));
  v16 = v27;
  sub_F0AFC();
  v17 = *(a1 + 8);
  type metadata accessor for AsyncPersistentTimer();
  v18 = swift_allocObject();

  swift_defaultActor_initialize();
  v19 = v5;
  v20 = *(v5 + 16);
  v21 = v25;
  v20(v13, v16, v25);
  v26(v13, 0, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v17;
  v22[5] = &unk_F58C0;
  v22[6] = v15;

  v23 = sub_C7510(0, 0, v13, &unk_F58C8, v22);
  sub_977C0(a1);

  sub_372B0(v13, &qword_127EB0, &unk_F2B30);
  (*(v19 + 8))(v16, v21);
  *(v18 + 112) = v23;
  *(v2 + 176) = v18;
  swift_beginAccess();
  swift_weakAssign();

  return v2;
}

uint64_t sub_C7278(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t RCSOperationController.operation<A>(id:completedWithResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return _swift_task_switch(sub_15304, v4, 0);
}

uint64_t RCSOperationController.perform<A>(operation:runTask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a3;
  v6[55] = a4;
  v6[52] = a1;
  v6[53] = a2;
  return _swift_task_switch(sub_158DC, v5, 0);
}

uint64_t sub_C72F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v7 = static RCSActor.shared;
  v6[13] = static RCSActor.shared;

  return _swift_task_switch(sub_16778, v7, 0);
}

uint64_t RCSOperationController.perform(operation:runTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_16D78;

  return sub_B64F0(v4 + 16, a1, a2, a3);
}

uint64_t RCSOperationController.deinit()
{

  sub_776C8(*(v0 + 136), *(v0 + 144));
  *(v0 + 160), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 168), v8, v9, v10, v11, v12, v13, v14;

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RCSOperationController.__deallocating_deinit()
{

  sub_776C8(*(v0 + 136), *(v0 + 144));
  *(v0 + 160), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 168), v8, v9, v10, v11, v12, v13, v14;

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_C7510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_37380(a3, v25 - v10, &qword_127EB0, &unk_F2B30);
  v12 = sub_F0B1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_372B0(v11, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_F0A6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_F087C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C77D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_51FEC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v18 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_BC80C();
    v15 = v18;
  }

  *(*(v15 + 48) + 16 * v6 + 8), v8, v9, v10, v11, v12, v13, v14;
  v16 = *(*(v15 + 56) + 16 * v6);
  sub_ECE64(v6, v15);
  *v3 = v15;
  return v16;
}

uint64_t sub_C7880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_51FEC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v18 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_BC984();
    v15 = v18;
  }

  *(*(v15 + 48) + 16 * v6 + 8), v8, v9, v10, v11, v12, v13, v14;
  v16 = *(*(v15 + 56) + 8 * v6);
  sub_EE478();
  *v3 = v15;
  return v16;
}

double sub_C7918@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_51FEC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76D70();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_54F88((*(v17 + 56) + 32 * v8), a3);
    sub_ED448(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_C79BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_E759C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_BD0D0();
      v9 = v22;
    }

    v10 = (*(v9 + 48) + (v7 << 6));
    v11 = *(v10 + 41);
    v12 = v10[2];
    v13 = *v10;
    v20[1] = v10[1];
    v21[0] = v12;
    v20[0] = v13;
    *(v21 + 9) = v11;
    sub_3CAB8(v20);
    v14 = *(v9 + 56);
    v15 = type metadata accessor for TypingIndicator(0);
    v16 = *(v15 - 8);
    sub_BDEA0(v14 + *(v16 + 72) * v7, a2);
    sub_ED5F8(v7, v9);
    *v3 = v9;
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = type metadata accessor for TypingIndicator(0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

unint64_t *sub_C7B54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_33EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t type metadata accessor for RCSOperationController.Operation(uint64_t a1)
{
  result = qword_129C98;
  if (!qword_129C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C7C30(__int128 *a1, __n128 a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -1;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v5 = sub_F06CC();
  sub_3C96C(v5, qword_129B28);
  sub_1F28(a1, v27);
  v6 = sub_F06AC();
  v7 = sub_F0CDC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_373E8(v27, v27[3]);
    v10 = sub_F11EC();
    v12 = v11;
    sub_1EDC(v27);
    v13 = sub_3E850(v10, v12, &v26);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 14) = v13;
    _os_log_impl(&dword_0, v6, v7, "New operation created with ID %{private,mask.hash}s", v8, 0x16u);
    sub_1EDC(v9);
  }

  else
  {

    sub_1EDC(v27);
  }

  v21 = sub_F030C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v27[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F02DC();
  (*(v22 + 32))(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_creationDate, v24, v21);
  sub_3928(a1, v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id);
  return v3;
}

__n128 sub_C7EF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_C7F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C7F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_C7FA0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_C7FE4(uint64_t a1)
{
  result = sub_F030C();
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

uint64_t sub_C80A0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C80B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_C8114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_C817C(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129368, &unk_F5B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_C81EC()
{
  result = qword_127F80;
  if (!qword_127F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127F80);
  }

  return result;
}

uint64_t sub_C8238(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_C8244(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_C829C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_129D80);
  sub_3C96C(v3, qword_129D80);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_C83C4()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_129D98);
  sub_3C96C(v3, qword_129D98);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t RCSGroup.identity.setter(__int128 *a1)
{
  sub_1EDC(v1);

  return sub_55248(a1, v1);
}

uint64_t RCSGroup.displayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void RCSGroup.displayName.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

uint64_t sub_C8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129DB0, &qword_F5BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C86B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129DB0, &qword_F5BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void RCSHandle.scheme.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 8), a2, a3, a4, a5, a6, a7, a8;
  *v8 = a1;
  *(v8 + 8) = a2;
}

uint64_t RCSGroup.Icon.data.getter()
{
  v1 = *(v0 + 16);
  sub_660D0(v1, *(v0 + 24));
  return v1;
}

void RCSGroup.Icon.data.setter(uint64_t a1, uint64_t a2)
{
  sub_5F048(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RCSGroup.Icon.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void RCSGroup.Icon.type.setter(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

Swift::Int sub_C88B4()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1);
  return sub_F132C();
}

Swift::Int sub_C8928(uint64_t a1)
{
  v2 = *v1;
  sub_F12FC();
  sub_F130C(v2);
  return sub_F132C();
}

uint64_t sub_C8984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, RCSServiceSession *a3@<X1>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_C8D68(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_C89B8(uint64_t a1)
{
  v2 = sub_C8BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C89F4(uint64_t a1)
{
  v2 = sub_C8BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSGroup.Icon.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_388C8(&qword_129DB8, &qword_F5BB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_373E8(a1, a1[3]);
  sub_C8BEC();
  sub_F136C();
  LOBYTE(v12) = 0;
  sub_F119C();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 1;
    sub_C8C40(&v13, v11);
    sub_C8C9C();
    sub_F11CC();
    sub_5F048(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    sub_F119C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C8BEC()
{
  result = qword_129DC0;
  if (!qword_129DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DC0);
  }

  return result;
}

unint64_t sub_C8C9C()
{
  result = qword_129DC8;
  if (!qword_129DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DC8);
  }

  return result;
}

double RCSGroup.Icon.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_C8E80(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_C8D68(uint64_t a1, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (sub_F122C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_F122C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_F122C();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_C8E80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_388C8(&qword_129DE8, &qword_F5EA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_373E8(a1, a1[3]);
  sub_C8BEC();
  sub_F135C();
  if (v2)
  {
    sub_1EDC(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    v9 = sub_F114C();
    v11 = v10;
    v35 = v9;
    v38 = 1;
    sub_C9508();
    sub_F117C();
    v33 = v36;
    v34 = v37;
    LOBYTE(v36) = 2;
    v12 = sub_F114C();
    v14 = v13;
    v15 = v12;
    (*(v6 + 8))(v8, v5);

    v17 = v33;
    v16 = v34;
    sub_660D0(v33, v34);

    sub_1EDC(a1);
    v11, v18, v19, v20, v21, v22, v23, v24;
    sub_5F048(v17, v16);
    v14, v25, v26, v27, v28, v29, v30, v31;
    *a2 = v35;
    a2[1] = v11;
    a2[2] = v17;
    a2[3] = v16;
    a2[4] = v15;
    a2[5] = v14;
  }
}

__n128 sub_C9120(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_C9144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_C918C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_C91F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_C920C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_C9254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSHandle.BotStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSHandle.BotStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C9404()
{
  result = qword_129DD0;
  if (!qword_129DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DD0);
  }

  return result;
}

unint64_t sub_C945C()
{
  result = qword_129DD8;
  if (!qword_129DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DD8);
  }

  return result;
}

unint64_t sub_C94B4()
{
  result = qword_129DE0;
  if (!qword_129DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DE0);
  }

  return result;
}

unint64_t sub_C9508()
{
  result = qword_129DF0;
  if (!qword_129DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DF0);
  }

  return result;
}

uint64_t CTLazuliMessageText.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v19 - v5);
  if (RCSMessage.fromChatBot.getter())
  {
    v7 = [v2 chipList];
    type metadata accessor for RCSChipList();
    v8 = swift_allocObject();
    v9 = objc_opt_self();
    v10 = sub_F07BC();
    v11 = [v9 IMChipListFromCTChipList:v7 originalID:v10];

    *(v8 + 16) = v11;
  }

  else
  {
    v8 = 0;
  }

  v12 = [v2 content];
  v13 = sub_F07EC();
  v15 = v14;

  *v6 = v13;
  v6[1] = v15;
  v6[2] = v8;
  v16 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  v17 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v17 + 32));
}

uint64_t sub_C9724(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CTLazuliMessageGroupText.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = (&v15 - v6);
  v8 = [v2 content];
  v9 = sub_F07EC();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  v7[2] = 0;
  v12 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v13 + 32));
}

uint64_t sub_C98E4(uint64_t a1)
{
  v3 = sub_388C8(&unk_127FA0, &qword_F34C0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = (&v14 - v5);
  v7 = [*v1 content];
  v8 = sub_F07EC();
  v10 = v9;

  *v6 = v8;
  v6[1] = v10;
  v6[2] = 0;
  v11 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v12 + 32));
}

uint64_t CTLazuliMessageGeoLocationPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v22 - v5);
  if (RCSMessage.fromChatBot.getter())
  {
    v7 = [v2 chipList];
    type metadata accessor for RCSChipList();
    v8 = swift_allocObject();
    v9 = objc_opt_self();
    v10 = sub_F07BC();
    v11 = [v9 IMChipListFromCTChipList:v7 originalID:v10];

    *(v8 + 16) = v11;
  }

  else
  {
    v8 = 0;
  }

  v12 = [v2 coordinates];
  v13 = [v12 latitude];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v12 longitude];
  [v16 doubleValue];
  v18 = v17;

  *v6 = v15;
  v6[1] = v18;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v8;
  v19 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  v20 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v20 + 32));
}

uint64_t CTLazuliMessageGroupGeoLocationPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = (&v18 - v6);
  v8 = [v2 coordinates];
  v9 = [v8 latitude];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 longitude];
  [v12 doubleValue];
  v14 = v13;

  *v7 = v11;
  v7[1] = v14;
  v15 = type metadata accessor for RCSMessage.Content(0);
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v16 + 32));
}

uint64_t CTLazuliMessageFileTransferPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (RCSMessage.fromChatBot.getter())
  {
    v7 = [v2 chipList];
    type metadata accessor for RCSChipList();
    v8 = swift_allocObject();
    v9 = objc_opt_self();
    v10 = sub_F07BC();
    v11 = [v9 IMChipListFromCTChipList:v7 originalID:v10];

    *(v8 + 16) = v11;
  }

  else
  {
    v8 = 0;
  }

  v12 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v2 descriptor], v6);
  *&v6[v12] = v8;
  v13 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v14 + 32));
}

uint64_t CTLazuliMessageGroupFileTransferPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v2 descriptor], v6);
  *&v6[v7] = 0;
  v8 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v9 + 32));
}

uint64_t sub_CA138(uint64_t a1)
{
  v3 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v6 descriptor], v5);
  *&v5[v7] = 0;
  v8 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v5, a1 + *(v9 + 32));
}

uint64_t CTLazuliMessageIncomingGroupChat.populate(message:)(uint64_t a1)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v11 - v5);
  v7 = type metadata accessor for RCSMessage(0);
  sub_CA4D0(a1 + *(v7 + 36), &v11);
  if (v12)
  {
    sub_55248(&v11, v13);
    v8 = [v1 chat];
    sub_1F28(v13, &v11);
    RCSGroup.init(group:identity:)(v8, &v11, v6);
    result = sub_1EDC(v13);
    if (!v2)
    {
      v10 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      return sub_C9724(v6, a1 + *(v7 + 32));
    }
  }

  else
  {
    sub_39C18(&v11);
    sub_CA540();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_CA4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B08, &qword_F29A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_CA540()
{
  result = qword_129DF8;
  if (!qword_129DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DF8);
  }

  return result;
}

unint64_t sub_CA5AC()
{
  result = qword_129E00[0];
  if (!qword_129E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_129E00);
  }

  return result;
}

uint64_t sub_CA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = *(type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage(0, a3, a4, v11) + 36);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a2, v13);
}

char *RCSMessageProcessingQueue.__allocating_init(delegate:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_CB950(a1);
  swift_unknownObjectRelease();
  return v2;
}

char *RCSMessageProcessingQueue.init(delegate:)(uint64_t a1)
{
  v1 = sub_CB950(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_CA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob(255, a3, a4, a4);
  v6 = sub_F0B5C();
  v7 = sub_F0DEC();
  (*(*(v7 - 8) + 8))(a2, v7);
  v10 = *(v6 - 8);
  (*(v10 + 16))(a2, a1, v6);
  v8 = *(v10 + 56);

  return v8(a2, 0, 1, v6);
}

uint64_t sub_CA88C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1800C;

  return sub_CADCC(v1, v2, v3, v4);
}

uint64_t RCSMessageProcessingQueue.enqueue(_:subscription:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = *v2;
  v3 = v26[11];
  v4 = v26[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v21 - v6;
  v22 = v3;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v13 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob(0, v4, v3, v12);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v23 = sub_F0B2C();
  v16 = *(v23 - 8);
  v17 = __chkstk_darwin(v23);
  v19 = &v21 - v18;
  v26 = v26[14];
  (*(v9 + 16))(v11, v27, v8, v17);
  (*(v24 + 16))(v7, v28, v25);
  sub_CA600(v11, v7, v4, v22, v15);
  swift_storeEnumTagMultiPayload();
  sub_F0B5C();
  sub_F0B4C();
  return (*(v16 + 8))(v19, v23);
}

uint64_t RCSMessageProcessingQueue.enqueueRelayBlock(_:timeout:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob(0, *(*v5 + 80), *(*v5 + 88), a5);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = sub_F0B2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - v14;
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  sub_F0B5C();

  sub_F0B4C();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_CADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[3] = v7;
  v8 = *(v6 + 88);
  v5[4] = v8;
  v9 = type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage(0, v7, v8, a4);
  v5[5] = v9;
  v5[6] = *(v9 - 8);
  v5[7] = swift_task_alloc();
  v11 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob(0, v7, v8, v10);
  v5[8] = v11;
  v5[9] = *(v11 - 8);
  v5[10] = swift_task_alloc();
  sub_F0DEC();
  v5[11] = swift_task_alloc();
  v12 = sub_F0B8C();
  v5[12] = v12;
  v5[13] = *(v12 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_18100, 0, 0);
}

void sub_CAFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v34 = a3;
  v35 = a4;
  v8 = sub_F06EC();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_F071C();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_388C8(&qword_129F98, &qword_F62E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v30 - v15;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v31 = *(a2 + *(*a2 + 120));
  (*(v14 + 16))(v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = a5;
  (*(v14 + 32))(v19 + v18, v16, v13);
  v43 = sub_18A80;
  v44 = v19;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v32 = &v41;
  v41 = sub_9400C;
  v42 = &unk_121730;
  v20 = _Block_copy(&aBlock);
  v21 = v17;
  sub_F06FC();
  v38 = _swiftEmptyArrayStorage;
  v30[1] = sub_18BA4(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v30[0] = sub_388C8(&qword_127F90, &qword_F2EC0);
  sub_18BEC(&qword_127F98, &qword_127F90, &qword_F2EC0);
  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v20);
  v22 = *(v37 + 8);
  v37 += 8;
  v31 = v22;
  v22(v10, v8);
  v23 = *(v36 + 8);
  v36 += 8;
  v24 = v33;
  v23(v12, v33);

  sub_C81EC();
  v25 = sub_F0D4C();
  sub_F070C();
  v26 = swift_allocObject();
  v27 = v35;
  v26[2] = v34;
  v26[3] = v27;
  v26[4] = v21;
  v43 = sub_18B4C;
  v44 = v26;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_9400C;
  v42 = &unk_121788;
  v28 = _Block_copy(&aBlock);
  v38 = _swiftEmptyArrayStorage;
  v29 = v21;

  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v28);

  v31(v10, v8);
  v23(v12, v24);
}

uint64_t sub_CB4E4(double a1)
{
  v2 = sub_F06DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_F074C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  result = sub_F072C();
  v14 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    *v5 = v14;
    (*(v3 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    sub_F073C();
    (*(v3 + 8))(v5, v2);
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_F0D1C();
    v15(v12, v6);
    sub_388C8(&qword_129F98, &qword_F62E8);
    return sub_F0A8C();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_CB750(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_18B90, v5);

  return result;
}

uint64_t *RCSMessageProcessingQueue.deinit(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_unknownObjectUnownedDestroy();
  v4 = *(*v2 + 104);
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob(255, *(v3 + 80), *(v3 + 88), v5);
  v6 = sub_F0B9C();
  (*(*(v6 - 8) + 8))(v2 + v4, v6);
  v7 = *(*v2 + 112);
  v8 = sub_F0B5C();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return v2;
}

uint64_t RCSMessageProcessingQueue.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  RCSMessageProcessingQueue.deinit(a1, a2);

  return swift_deallocClassInstance();
}

char *sub_CB950(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v4 - 8);
  v36 = v30 - v5;
  v6 = sub_F0D3C();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_F0D2C();
  __chkstk_darwin(v31);
  v32 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F071C();
  __chkstk_darwin(v9 - 8);
  v30[1] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v3 + 80);
  v40 = *(v3 + 88);
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob(255, v41, v40, v11);
  v38 = sub_F0B3C();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = v30 - v13;
  v39 = sub_F0B9C();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = v30 - v15;
  v17 = sub_F0B5C();
  v18 = sub_F0DEC();
  v42 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v30 - v22;
  swift_unknownObjectUnownedInit();
  v24 = *(v17 - 8);
  (*(v24 + 56))(v23, 1, 1, v17);
  (*(v12 + 104))(v14, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v38);
  v43 = v41;
  v44 = v40;
  v45 = v23;
  sub_F0BAC();
  (*(v37 + 32))(&v2[*(*v2 + 104)], v16, v39);
  v25 = *(v42 + 16);
  v41 = v23;
  v25(v20, v23, v18);
  result = (*(v24 + 48))(v20, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(&v2[*(*v2 + 112)], v20, v17);
    sub_C81EC();
    sub_F070C();
    v46 = _swiftEmptyArrayStorage;
    sub_18BA4(&qword_129FA0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_388C8(&qword_129FA8, &qword_F62F0);
    sub_18BEC(qword_129FB0, &qword_129FA8, &qword_F62F0);
    sub_F0E8C();
    (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
    *&v2[*(*v2 + 120)] = sub_F0D6C();
    v27 = v36;
    sub_F0AFC();
    v28 = sub_F0B1C();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v2;

    sub_3CC0C(0, 0, v27, &unk_F6300, v29);

    (*(v42 + 8))(v41, v18);
    return v2;
  }

  return result;
}

uint64_t sub_CC038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_F0B9C();
  if (v5 <= 0x3F)
  {
    result = sub_F0B5C();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_CC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_CC60C(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_CC1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = 24;
  if (v7 > 0x18)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_25:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 255;
}

void sub_CC39C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_CC60C(uint64_t a1)
{
  if (!qword_129F08)
  {
    sub_3CB70(qword_129F10, qword_F62A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_129F08);
    }
  }
}

uint64_t sub_CC680(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_CC740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_CCA00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v8 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_CCD3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  v3 = sub_3C96C(v2, static Logger.rcs);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id RCSMessageCreator.MessageCreationError.errorDescription.getter(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a4 >> 61;
  if ((a4 >> 61) <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_F0F9C(57);
        v84._countAndFlagsBits = 0xD000000000000028;
        v84._object = 0x8000000000100620;
        sub_F08CC(v84);
        result = [a1 guid];
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      sub_F0F9C(29);
      0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
      v83[0] = 0xD00000000000001BLL;
      v83[1] = 0x8000000000100600;
      v46._countAndFlagsBits = a1;
      v46._object = a2;
LABEL_17:
      sub_F08CC(v46);
      return v83[0];
    }

    v83[0] = 0;
    v83[1] = 0xE000000000000000;
    sub_F0F9C(53);
    v90._countAndFlagsBits = 0xD000000000000028;
    v90._object = 0x8000000000100650;
    sub_F08CC(v90);
    result = [a1 guid];
    if (result)
    {
      v35 = result;
      v36 = sub_F07EC();
      v38 = v37;

      v91._countAndFlagsBits = v36;
      v91._object = v38;
      sub_F08CC(v91);
      v38, v39, v40, v41, v42, v43, v44, v45;
      v92._countAndFlagsBits = 0x74616863206E6920;
      v92._object = 0xE900000000000020;
      sub_F08CC(v92);
      v46._countAndFlagsBits = a2;
      v46._object = a3;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 3)
  {
    sub_F0F9C(48);
    0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
    strcpy(v83, "Can't process ");
    HIBYTE(v83[1]) = -18;
    result = [a1 guid];
    if (result)
    {
      v54 = result;
      v55 = sub_F07EC();
      v57 = v56;

      v93._countAndFlagsBits = v55;
      v93._object = v57;
      sub_F08CC(v93);
      v57, v58, v59, v60, v61, v62, v63, v64;
      v94._countAndFlagsBits = 0xD00000000000001DLL;
      v94._object = 0x80000000001005E0;
      sub_F08CC(v94);
      v95._countAndFlagsBits = a2;
      v95._object = a3;
      sub_F08CC(v95);
      v46._countAndFlagsBits = 33;
      v46._object = 0xE100000000000000;
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v7 == 4)
  {
    sub_F0F9C(48);
    0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
    v83[0] = 0xD00000000000001FLL;
    v83[1] = 0x80000000001005C0;
    result = [a1 guid];
    if (result)
    {
LABEL_9:
      v16 = result;
      v17 = sub_F07EC();
      v19 = v18;

      v85._countAndFlagsBits = v17;
      v85._object = v19;
      sub_F08CC(v85);
      v19, v20, v21, v22, v23, v24, v25, v26;
      v86._countAndFlagsBits = 0x74616863206E6920;
      v86._object = 0xE900000000000020;
      sub_F08CC(v86);
      v87._countAndFlagsBits = a2;
      v87._object = a3;
      sub_F08CC(v87);
      v88._countAndFlagsBits = 8250;
      v88._object = 0xE200000000000000;
      sub_F08CC(v88);
      swift_getErrorValue();
      v89._countAndFlagsBits = sub_F12AC();
      object = v89._object;
      sub_F08CC(v89);
      object, v28, v29, v30, v31, v32, v33, v34;
      return v83[0];
    }

    goto LABEL_22;
  }

  v83[0] = 0;
  v83[1] = 0xE000000000000000;
  sub_F0F9C(54);
  v96._countAndFlagsBits = 0x72702074276E6143;
  v96._object = 0xEE0020737365636FLL;
  sub_F08CC(v96);
  result = [a1 guid];
  if (result)
  {
    v72 = result;
    v73 = sub_F07EC();
    v75 = v74;

    v97._countAndFlagsBits = v73;
    v97._object = v75;
    sub_F08CC(v97);
    v75, v76, v77, v78, v79, v80, v81, v82;
    v98._countAndFlagsBits = 0x74616863206E6920;
    v98._object = 0xE900000000000020;
    sub_F08CC(v98);
    v99._countAndFlagsBits = a2;
    v99._object = a3;
    sub_F08CC(v99);
    v46._object = 0x80000000001005A0;
    v46._countAndFlagsBits = 0xD00000000000001BLL;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t RCSMessageCreator.__allocating_init(delegate:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t RCSMessageCreator.init(delegate:)(uint64_t a1)
{
  v1 = sub_CE450(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t RCSMessageCreator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_CD3D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_F06CC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_F0AEC();
  v2[8] = sub_F0ADC();
  v5 = sub_F0A6C();

  return _swift_task_switch(sub_18E30, v5, v4);
}

uint64_t sub_CD4F0(void *a1)
{
  v2 = sub_F06CC();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v78 - v6;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v78 - v10;
  v12 = [a1 localURL];
  v13 = sub_F01EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v12)
  {
    goto LABEL_34;
  }

  sub_F01AC();

  v24 = sub_F020C();
  v26 = v25;
  (*(v14 + 8))(v16, v13);
  v27 = objc_opt_self();
  v28 = sub_F024C();
  v81 = 0;
  v29 = [v27 contactsWithData:v28 error:&v81];

  v30 = v81;
  v31 = v26;
  v32 = v24;
  if (!v29)
  {
    v69 = v81;
    sub_F015C();

    swift_willThrow();
    sub_5F048(v24, v31);
    sub_CCD3C(v4);
    swift_errorRetain();
    v17 = sub_F06AC();
    v18 = sub_F0CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v81 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v81);
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&dword_0, v17, v18, "%{public}s error reading vlocation data: %@", v19, 0x16u);
      sub_372B0(v20, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v21);
    }

    else
    {
    }

    (*(v79 + 8))(v4, v80);
    return 0;
  }

  sub_37310(0, &qword_12A0B8, CNContact_ptr);
  v33 = sub_F09FC();
  v34 = v30;

  if (v33 >> 62)
  {
    if (sub_F10DC())
    {
      goto LABEL_12;
    }

LABEL_23:
    v33, v35, v36, v37, v38, v39, v40, v41;
    sub_CCD3C(v7);
    v70 = sub_F06AC();
    v71 = sub_F0CFC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81 = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v81);
      _os_log_impl(&dword_0, v70, v71, "%{public}s error extracting contact from current location vcard", v72, 0xCu);
      sub_1EDC(v73);
    }

    sub_5F048(v24, v31);

    (*(v79 + 8))(v7, v80);
    return 0;
  }

  if (!*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v42 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_32;
    }

    v42 = *(v33 + 32);
  }

  v29 = v42;
  v33, v43, v44, v45, v46, v47, v48, v49;
  v50 = [v29 urlAddresses];
  sub_388C8(qword_12A0C0, &qword_F65B8);
  v33 = sub_F09FC();

  if (v33 >> 62)
  {
    if (sub_F10DC())
    {
LABEL_17:
      if ((v33 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
        {
          v58 = *(v33 + 32);
LABEL_20:
          v66 = v58;
          v33, v59, v60, v61, v62, v63, v64, v65;
          v67 = [v66 value];
          v68 = sub_F07EC();

          sub_5F048(v32, v31);
          return v68;
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

LABEL_32:
      v58 = sub_F0FCC();
      goto LABEL_20;
    }
  }

  else if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  v33, v51, v52, v53, v54, v55, v56, v57;
  sub_CCD3C(v11);
  v74 = sub_F06AC();
  v75 = sub_F0CFC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v81 = v77;
    *v76 = 136446210;
    *(v76 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v81);
    _os_log_impl(&dword_0, v74, v75, "%{public}s current location VCF was missing a URL address to extract a location from", v76, 0xCu);
    sub_1EDC(v77);
  }

  sub_5F048(v24, v31);
  (*(v79 + 8))(v11, v80);
  return 0;
}

uint64_t sub_CDC84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v2[4] = static RCSActor.shared;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_191C4;

  return sub_CD3D4(a1);
}

uint64_t sub_CDD5C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v2[13] = static RCSActor.shared;
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_195AC;

  return sub_CDC84(a2);
}

uint64_t sub_CDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_F06CC();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v4[14] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v6 = static RCSActor.shared;
  v4[15] = static RCSActor.shared;

  return _swift_task_switch(sub_19AB8, v6, 0);
}

uint64_t sub_CDFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = *v4;
  v5[36] = *(*v4 + 88);
  v5[37] = *(v6 + 80);
  v5[38] = swift_getAssociatedTypeWitness();
  v7 = sub_F0DEC();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v8 = static RCSActor.shared;
  v5[42] = static RCSActor.shared;

  return _swift_task_switch(sub_1B370, v8, 0);
}

uint64_t RCSMessageCreator.createSenderInfo(with:for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v5 = static RCSActor.shared;

  return _swift_task_switch(sub_1BD4C, v5, 0);
}

uint64_t RCSMessageCreator.createRCSMessage(with:originalItem:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a3;
  v6[37] = a4;
  v6[38] = a5;
  v6[39] = v5;
  v6[34] = a1;
  v6[35] = a2;
  v6[40] = *v5;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v6[41] = static RCSActor.shared;
  v10 = swift_task_alloc();
  v6[42] = v10;
  *v10 = v6;
  v10[1] = sub_1BED0;

  return sub_CDFF8((v6 + 18), a2, a4, a5);
}

uint64_t RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[52] = a5;
  v6[53] = v5;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  v6[54] = *v5;
  v6[55] = type metadata accessor for RCSMessage(0);
  v6[56] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v6[57] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v7 = static RCSActor.shared;
  v6[58] = static RCSActor.shared;

  return _swift_task_switch(sub_1C508, v7, 0);
}

void sub_CE48C(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_CE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_CE55C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 32))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_CE5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t RCSMessageReceiver.__allocating_init(delegate:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t RCSMessageReceiver.MessageProcessingError.errorDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RCSMessage(0);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v53 - v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = &v13[*(sub_388C8(&qword_128308, &qword_F3480) + 48)];
    v26 = *v25;
    object = v25[1];
    sub_22B7C(v13, v9, type metadata accessor for RCSMessage);
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_F0F9C(41);
    v54, v27, v28, v29, v30, v31, v32, v33;
    v34 = 0x8000000000100770;
    v35 = 0xD000000000000023;
LABEL_6:
    v53 = v35;
    v54 = v34;
    sub_F08CC(v9[8]);
    v55._countAndFlagsBits = 8250;
    v55._object = 0xE200000000000000;
    sub_F08CC(v55);
    v23._countAndFlagsBits = v26;
    v23._object = object;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v36 = &v13[*(sub_388C8(&qword_128C20, &unk_F65C0) + 48)];
    v26 = *v36;
    object = v36[1];
    sub_22B7C(v13, v9, type metadata accessor for RCSMessage);
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_F0F9C(37);
    v54, v37, v38, v39, v40, v41, v42, v43;
    v34 = 0x8000000000100720;
    v35 = 0xD00000000000001FLL;
    goto LABEL_6;
  }

  sub_22B7C(v13, v9, type metadata accessor for RCSMessage);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_F0F9C(41);
  v54, v16, v17, v18, v19, v20, v21, v22;
  v53 = 0xD000000000000027;
  v54 = 0x8000000000100740;
  sub_23624(v9, v6, type metadata accessor for RCSMessage);
  v23._countAndFlagsBits = sub_F083C();
  object = v23._object;
LABEL_7:
  sub_F08CC(v23);
  object, v44, v45, v46, v47, v48, v49, v50;
  v51 = v53;
  sub_37640(v9, type metadata accessor for RCSMessage);
  return v51;
}

uint64_t sub_CE990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = type metadata accessor for RCSMessageReceiver.MessageProcessingContext(0, a4, a5, a4);
  *(a6 + v10[13]) = 256;
  *a6 = a1;
  v11 = objc_allocWithZone(IMToSuperParserContext);
  v12 = a1;
  v13 = [v11 init];
  a6[1] = v13;
  [v13 reset];
  sub_23624(a2, a6 + v10[10], type metadata accessor for RCSMessage);

  *(a6 + v10[11]) = a3;
  result = sub_37640(a2, type metadata accessor for RCSMessage);
  *(a6 + v10[12]) = 0;
  return result;
}

void sub_CEA7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v5 + 8);
  v9 = sub_F07BC();
  [v8 appendString:v9];

  if (a3)
  {
    v10 = RCSChipList.attributes.getter();
    if (v10)
    {
      v11 = v10;
      v12 = sub_51844(v10);
      v11, v13, v14, v15, v16, v17, v18, v19;
      a3 = sub_F075C();
      v12, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      a3 = 0;
    }
  }

  [v8 appendChipList:a3];

  v27 = *(a4 + 48);
  v28 = *(v5 + v27);
  if ((v28 & 1) == 0)
  {
    *(v5 + v27) = v28 | 1;
  }

  *(v5 + *(a4 + 52)) = 1;
}

uint64_t sub_CEB68(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(v2 + v3);
  v5 = 8;
  if (((v4 | a1) & 1) == 0)
  {
    v5 = 9;
  }

  v6 = v5 | v4;
  if ((v4 & 8) == 0 || ((v4 | a1) & 1) == 0)
  {
    *(v2 + v3) = v6;
  }

  v7 = v2 + *(a2 + 40);
  v8 = type metadata accessor for RCSMessage(0);
  sub_37380(v7 + *(v8 + 36), v11, &qword_127B08, &qword_F29A0);
  v9 = v12;
  result = sub_372B0(v11, &qword_127B08, &qword_F29A0);
  if (v9)
  {
    if ((v4 & 0x40000000) == 0)
    {
      *(v2 + v3) = v6 | 0x40000000;
    }
  }

  return result;
}

uint64_t sub_CEC28(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for RCSFile(0);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1CE50, 0, 0);
}

uint64_t sub_CECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for RCSFile(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1E0A4, 0, 0);
}

void sub_CED90(int *a1)
{
  v3 = *(v1 + a1[12]);
  v4 = *v1;
  v5 = v1[1];
  if ((v3 & 8) == 0)
  {
    v6 = [v1[1] body];
    [v4 setBody:v6];
  }

  v7 = [v5 fileTransferGUIDs];
  [v4 setFileTransferGUIDs:v7];

  [v4 setFlags:v3];
  v8 = sub_F07BC();
  [v4 setFallbackHash:v8];

  type metadata accessor for RCSMessage(0);
  v9 = sub_F07BC();
  [v4 setRcsAdvisedAction:v9];

  v10 = v1 + a1[13];
  if ((v10[1] & 1) == 0)
  {
    v11 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:*v10];
    [v4 setMessageContentType:v11];
  }
}

uint64_t sub_CEF28(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = *v2;
  v3[21] = type metadata accessor for RCSFile(0);
  v3[22] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for RCSMessage(0);
  v3[25] = swift_task_alloc();
  v5 = *(v4 + 80);
  v3[26] = v5;
  v6 = *(v4 + 88);
  v3[27] = v6;
  v8 = type metadata accessor for RCSMessageReceiver.MessageProcessingContext(0, v5, v6, v7);
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1EE0C, 0, 0);
}

uint64_t sub_CF0B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v4 = *v2;
  v5 = type metadata accessor for RCSMessage(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v142 - v9;
  __chkstk_darwin(v11);
  v148 = (&v142 - v12);
  if (a1[19])
  {
    v13 = a1[18];
    v14 = a1[19];
  }

  else
  {
    v13 = a1[16];
    v14 = a1[17];
  }

  v17 = v4 + 80;
  v15 = *(v4 + 80);
  v16 = *(v17 + 8);
  v18 = *(v16 + 128);

  if (v18(v13, v14, v15, v16))
  {
    v14, v19, v20, v21, v22, v23, v24, v25;
    v26 = sub_F035C();
    v149 = &v142;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    __chkstk_darwin(v26);
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
    v30 = &v142 - v29;
    sub_F034C();
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v31 = sub_F06CC();
    v32 = sub_3C96C(v31, static Logger.rcs);
    v148 = &v142;
    v33 = __chkstk_darwin(v32);
    v34 = &v142 - v29;
    (*(v27 + 16))(&v142 - v29, &v142 - v29, v26, v33);
    sub_23624(a1, v7, type metadata accessor for RCSMessage);
    v35 = sub_F06AC();
    v36 = sub_F0D0C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v151 = v147;
      *v37 = 136315394;
      v38 = sub_F032C();
      v40 = v39;
      (*(v27 + 8))(v34, v26);
      v41 = sub_3E850(v38, v40, &v151);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v49 = *(v7 + 16);
      v50 = *(v7 + 17);

      sub_37640(v7, type metadata accessor for RCSMessage);
      v51 = sub_3E850(v49, v50, &v151);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v37 + 14) = v51;
      _os_log_impl(&dword_0, v35, v36, "Assigning a random GUID %s to RCS message %s due to database collision", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_37640(v7, type metadata accessor for RCSMessage);
      (*(v27 + 8))(&v142 - v29, v26);
    }

    return (*(v27 + 32))(v150, v30, v26);
  }

  else
  {
    v147 = v10;
    v59 = sub_F035C();
    v149 = &v142;
    v60 = *(v59 - 8);
    v61 = *(v60 + 64);
    __chkstk_darwin(v59);
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
    v63 = &v142 - v62;
    v64 = sub_388C8(&qword_128020, &qword_F2F08);
    __chkstk_darwin(v64 - 8);
    v66 = &v142 - v65;
    sub_F031C();
    v67 = v14;
    v68 = v60;
    v67, v69, v70, v71, v72, v73, v74, v75;
    if ((*(v60 + 48))(v66, 1, v59) == 1)
    {
      v148 = v59;
      v76 = sub_372B0(v66, &qword_128020, &qword_F2F08);
      __chkstk_darwin(v76);
      v77 = &v142 - v62;
      sub_F034C();
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v78 = sub_F06CC();
      v79 = sub_3C96C(v78, static Logger.rcs);
      v80 = __chkstk_darwin(v79);
      v81 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = v148;
      (*(v60 + 16))(v81, v77, v148, v80);
      v83 = v147;
      sub_23624(a1, v147, type metadata accessor for RCSMessage);
      v84 = sub_F06AC();
      v85 = sub_F0D0C();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v149 = &v142;
        v87 = v86;
        v151 = swift_slowAlloc();
        *v87 = 136315394;
        v88 = sub_F032C();
        v144 = v60;
        v89 = v88;
        v91 = v90;
        (*(v60 + 8))(v81, v148);
        v92 = sub_3E850(v89, v91, &v151);
        v91, v93, v94, v95, v96, v97, v98, v99;
        *(v87 + 4) = v92;
        *(v87 + 12) = 2080;
        v100 = *(v83 + 16);
        v101 = *(v83 + 17);

        sub_37640(v83, type metadata accessor for RCSMessage);
        v102 = sub_3E850(v100, v101, &v151);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v87 + 14) = v102;
        _os_log_impl(&dword_0, v84, v85, "Assigning a random GUID %s to RCS message %s due to non-UUID network ID", v87, 0x16u);
        swift_arrayDestroy();

        v82 = v148;

        v110 = v144;
      }

      else
      {

        sub_37640(v83, type metadata accessor for RCSMessage);
        (*(v60 + 8))(v81, v82);
        v110 = v60;
      }

      return (*(v110 + 32))(v150, v77, v82);
    }

    else
    {
      v147 = *(v60 + 32);
      v147(&v142 - v62, v66, v59);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v112 = sub_F06CC();
      v113 = sub_3C96C(v112, static Logger.rcs);
      v146 = &v142;
      v114 = __chkstk_darwin(v113);
      v115 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v115, v63, v59, v114);
      v116 = v148;
      sub_23624(a1, v148, type metadata accessor for RCSMessage);
      v117 = sub_F06AC();
      v118 = v68;
      v119 = sub_F0D0C();
      if (os_log_type_enabled(v117, v119))
      {
        v120 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v151 = v143;
        *v120 = 136315394;
        v121 = sub_F032C();
        v145 = v63;
        v123 = v122;
        (*(v118 + 8))(v115, v59);
        v124 = sub_3E850(v121, v123, &v151);
        v123, v125, v126, v127, v128, v129, v130, v131;
        *(v120 + 4) = v124;
        *(v120 + 12) = 2080;
        v132 = *(v116 + 128);
        v133 = *(v116 + 136);

        sub_37640(v116, type metadata accessor for RCSMessage);
        v134 = sub_3E850(v132, v133, &v151);
        v133, v135, v136, v137, v138, v139, v140, v141;
        *(v120 + 14) = v134;
        v63 = v145;
        _os_log_impl(&dword_0, v117, v119, "Assigning GUID %s to RCS message %s as the network ID was a valid, unique UUID", v120, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_37640(v116, type metadata accessor for RCSMessage);
        (*(v118 + 8))(v115, v59);
      }

      return (v147)(v150, v63, v59);
    }
  }
}

uint64_t sub_CFBA4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v2[35] = type metadata accessor for RCSMessage(0);
  v2[36] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_20438, 0, 0);
}