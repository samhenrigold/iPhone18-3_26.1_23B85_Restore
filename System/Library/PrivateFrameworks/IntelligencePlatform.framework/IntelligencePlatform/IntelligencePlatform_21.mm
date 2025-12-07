void sub_1ABC05D38()
{
  sub_1ABA8963C();
  sub_1ABA9F348();
  sub_1ABA840E0();
  sub_1ABA9F5B8(v5, v6, v7, v8);
  v9 = sub_1ABA8A5C4();
  sub_1ABA8950C(v9, v10);
  sub_1ABAB2B08();
  if (!v11)
  {
LABEL_27:

    *v0 = v2;
    sub_1ABA9EE7C();
    return;
  }

  v31 = v3;
  v12 = 0;
  sub_1ABA8D3C0();
  if (!v3)
  {
LABEL_4:
    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v12 >= v4)
      {
        break;
      }

      ++v14;
      if (*(v1 + 64 + 8 * v12))
      {
        sub_1ABA96BF4();
        v3 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      sub_1ABA9A404();
      if (v27 != v28)
      {
        sub_1ABAA2C8C(v26);
      }

      else
      {
        v29 = sub_1ABAA5318();
        sub_1ABB18078(v29, v30, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v17 = *(*(v1 + 56) + 8 * (v13 | (v12 << 6)));
    sub_1ABA9ED2C();
    sub_1ABF25264();
    v18 = sub_1ABF25294() & ~(-1 << *(v2 + 32));
    if (((-1 << v18) & ~v0[v18 >> 6]) == 0)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8AD60(v23);
    *(v25 + 8 * v24) = v17;
    sub_1ABAA4528();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v22)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (v0[v19] != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1ABC05F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v11 = a1;
  v51 = sub_1ABA9F5B8(a1, a2, a3, a4);
  sub_1ABA7BB64();
  v13 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v50 = v15;
  v16 = *v9;
  if (*(*v9 + 24) > v11)
  {
    v11 = *(*v9 + 24);
  }

  sub_1ABAD219C(a5, a6);
  v48 = v10;
  v17 = sub_1ABA8950C(v16, v11);
  if (!v16[2])
  {
LABEL_30:

LABEL_31:
    *v9 = v17;
    return;
  }

  v18 = 0;
  v19 = v16 + 8;
  sub_1ABA7F040();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v46 = v9;
  v47 = v16;
  v49 = (v13 + 32);
  if ((v21 & v20) == 0)
  {
LABEL_6:
    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v18 >= v24)
      {
        break;
      }

      ++v26;
      if (v19[v18])
      {
        sub_1ABA96BF4();
        v22 = v28 & v27;
        goto LABEL_11;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_31;
    }

    sub_1ABAA57D0();
    v9 = v46;
    if (v42 != v43)
    {
      *v19 = -1 << v41;
    }

    else
    {
      v44 = sub_1ABAA5318();
      sub_1ABB18078(v44, v45, v19);
    }

    v16[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA9E81C();
LABEL_11:
    v29 = v25 | (v18 << 6);
    v30 = v16[7];
    v31 = (v16[6] + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(v13 + 72);
    v35 = v30 + v34 * v29;
    if (v48)
    {
      (*v49)(v50, v35, v51);
    }

    else
    {
      (*(v13 + 16))(v50, v35, v51);
    }

    sub_1ABF25234();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v36)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    v40 = (v39 + 16 * v38);
    *v40 = v33;
    v40[1] = v32;
    (*v49)(*(v17 + 56) + v34 * v38, v50, v51);
    sub_1ABAA4528();
    v16 = v47;
    if (!v22)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v36)
    {
      if (v37)
      {
        break;
      }
    }

    sub_1ABA9F7BC();
    if (!v36)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1ABC06200()
{
  sub_1ABA8BA68();
  sub_1ABA9F348();
  sub_1ABA840E0();
  sub_1ABAD219C(&qword_1EB4D5638, &unk_1ABF4AC30);
  v7 = sub_1ABA8A5C4();
  sub_1ABA8950C(v7, v8);
  sub_1ABAB2B08();
  if (!v9)
  {

LABEL_28:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  v24 = v0;
  v10 = 0;
  sub_1ABA7D6D4();
  sub_1ABA88D3C();
  if (!v0)
  {
LABEL_4:
    v11 = v10;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v6)
      {
        break;
      }

      ++v11;
      if (*(v2 + 8 * v10))
      {
        sub_1ABA96BF4();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      sub_1ABA9A404();
      if (v20 != v21)
      {
        sub_1ABAA2C8C(v19);
      }

      else
      {
        v22 = sub_1ABAA5318();
        sub_1ABB18078(v22, v23, v2);
      }

      *(v2 + 16) = 0;
    }

    v0 = v24;
    goto LABEL_28;
  }

  while (1)
  {
    sub_1ABA9DF8C();
LABEL_9:
    sub_1ABA9DE54();
    if ((v4 & 1) == 0)
    {
      v14 = v1;
    }

    sub_1ABF247A4();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v15)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    *(v18 + 8 * v17) = v1;
    *(*(v3 + 56) + 8 * v17) = v5;
    sub_1ABAA4528();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v15)
    {
      if (v16)
      {
        break;
      }
    }

    sub_1ABA9F7BC();
    if (!v15)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABC06384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  v33 = v32;
  v34 = *v32;
  v65 = v38;
  sub_1ABA9F5B8(v35, v38, v36, v37);
  v39 = sub_1ABF24D34();
  if (!*(v34 + 16))
  {
LABEL_29:

LABEL_30:
    *v33 = v39;
    sub_1ABA89EC8();
    return;
  }

  v64 = v34;
  v40 = 0;
  v41 = v34;
  sub_1ABA7D6D4();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  if ((v43 & v42) == 0)
  {
LABEL_4:
    v48 = v40;
    while (1)
    {
      v40 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v40 >= v46)
      {
        break;
      }

      ++v48;
      if (*(v41 + 8 * v40))
      {
        sub_1ABA96BF4();
        v44 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v65 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    sub_1ABAA57D0();
    v33 = v32;
    if (v60 != v61)
    {
      sub_1ABAA2C8C(v59);
    }

    else
    {
      v62 = sub_1ABAA5318();
      sub_1ABB18078(v62, v63, v41);
    }

    *(v34 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v47 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
LABEL_9:
    v51 = *(*(v34 + 56) + 8 * (v47 | (v40 << 6)));
    if ((v65 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v52)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABA8B2A0(v56);
    *(v58 + 8 * v57) = v51;
    sub_1ABAA4528();
    v34 = v64;
    if (!v44)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v52)
    {
      if (v54)
      {
        break;
      }
    }

    if (v53 == v55)
    {
      v53 = 0;
    }

    if (*(v39 + 64 + 8 * v53) != -1)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1ABC06554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1ABAD219C(&qword_1EB4D5528, &qword_1ABF4AAE8);
  result = sub_1ABF24D34();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v32 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_1ABB18078(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    if (v4)
    {
      v20 = *(v5 + 56) + 72 * v18;
      v33 = *v20;
      v34 = *(v20 + 16);
      v35 = *(v20 + 32);
      v36 = *(v20 + 48);
      v21 = *(v20 + 64);
    }

    else
    {
      memcpy(__dst, (*(v5 + 56) + 72 * v18), 0x48uLL);
      v21 = *&__dst[4];
      v35 = __dst[2];
      v36 = __dst[3];
      v33 = __dst[0];
      v34 = __dst[1];
      sub_1ABC106B0(__dst, v37);
    }

    result = sub_1ABF25224();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    v30 = *(v7 + 56) + 72 * v25;
    *v30 = v33;
    *(v30 + 16) = v34;
    *(v30 + 32) = v35;
    *(v30 + 48) = v36;
    *(v30 + 64) = v21;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1ABC06820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1ABA8A8E4();
  v15 = v12;
  v17 = v16;
  sub_1ABA840E0();
  sub_1ABA9F5B8(v18, v19, v20, v21);
  v22 = sub_1ABA8A5C4();
  sub_1ABA9FC04(v22, v23);
  sub_1ABAB2B08();
  if (!v24)
  {
LABEL_27:

LABEL_28:
    *v15 = v17;
    sub_1ABA89EC8();
    return;
  }

  v25 = 0;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v14)
  {
LABEL_4:
    v27 = v25;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v25 >= v12)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v28)
      {
        sub_1ABA96BF4();
        v14 = v30 & v29;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v15 = v12;
      goto LABEL_28;
    }

    sub_1ABA9A404();
    v15 = v12;
    if (v39 != v40)
    {
      sub_1ABAA2C8C(v38);
    }

    else
    {
      v41 = sub_1ABAA5318();
      sub_1ABB18078(v41, v42, v13);
    }

    v13[2] = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v31 = v26 | (v25 << 6);
    v32 = *(v13[6] + 8 * v31);
    v33 = *(v13[7] + 8 * v31);
    if ((a12 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    MEMORY[0x1AC5AA8D0](v32);
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v34)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    *(v37 + 8 * v36) = v32;
    *(*(v17 + 56) + 8 * v36) = v33;
    sub_1ABAA4528();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v34)
    {
      if (v35)
      {
        break;
      }
    }

    sub_1ABAA0A94();
    if (!v34)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABC069AC()
{
  sub_1ABA8BA68();
  sub_1ABA9F348();
  sub_1ABA840E0();
  sub_1ABA9F5B8(v7, v8, v9, v10);
  v11 = sub_1ABA8A5C4();
  sub_1ABA8950C(v11, v12);
  sub_1ABAB2B08();
  if (!v13)
  {

LABEL_28:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  v29 = v0;
  v14 = 0;
  sub_1ABA7D6D4();
  sub_1ABA88D3C();
  if (!v0)
  {
LABEL_4:
    v15 = v14;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v14 >= v6)
      {
        break;
      }

      ++v15;
      if (*(v2 + 8 * v14))
      {
        sub_1ABA96BF4();
        v0 = (v17 & v16);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      sub_1ABA9A404();
      if (v25 != v26)
      {
        sub_1ABAA2C8C(v24);
      }

      else
      {
        v27 = sub_1ABAA5318();
        sub_1ABB18078(v27, v28, v2);
      }

      *(v2 + 16) = 0;
    }

    v0 = v29;
    goto LABEL_28;
  }

  while (1)
  {
    sub_1ABA9DF8C();
LABEL_9:
    sub_1ABA9DE54();
    if ((v4 & 1) == 0)
    {
      v18 = v1;
      v19 = v5;
    }

    sub_1ABF247A4();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v20)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    *(v23 + 8 * v22) = v1;
    *(*(v3 + 56) + 8 * v22) = v5;
    sub_1ABAA4528();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v20)
    {
      if (v21)
      {
        break;
      }
    }

    sub_1ABA9F7BC();
    if (!v20)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABC06AFC(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = v12;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = a1;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D19B8, &qword_1ABF4AD20);
    v17 = *v16;
    v49 = *v16;
    v18 = *v44;
    v19 = v9;
    (*v44)(v9, &v16[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAF81A8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5710, &qword_1ABF4AD28);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + 8 * v22) = v17;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v19;
    v6 = v39;
    v18(v30, v19, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    v12 = v37;
    a1 = v38;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC04270(v25, a2 & 1);
  v27 = sub_1ABAF81A8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();
  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v19, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC06F78(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *i;
    v9 = *(i - 1);
    v10 = *a3;
    v12 = sub_1ABAF81A8();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5700, &qword_1ABF4AD08);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v9;
    *(v19[7] + 8 * v12) = v8;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1ABC045D8(v15, a2 & 1);
  v17 = sub_1ABAF81A8();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_20;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0722C(uint64_t a1, char a2, void *a3)
{
  v40 = a3;
  v3 = a1;
  v4 = 0;
  v27 = *(a1 + 16);
  v5 = 32;
  while (1)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (v3 + v5), 0x50uLL);
    v29 = *(&__dst[3] + 1);
    v30 = *&__dst[4];
    v31 = *&__dst[3];
    v32 = *(&__dst[4] + 1);
    v6 = __dst[2];
    v7 = __dst[1];
    v8 = __dst[0];
    sub_1ABC1070C(__dst, v34, &qword_1EB4D19F8, &qword_1ABF33B88);
    if (!*(&v8 + 1))
    {
      goto LABEL_17;
    }

    v28 = v5;
    __dst[0] = v8;
    __dst[1] = v7;
    LOWORD(__dst[2]) = v6;
    v9 = *v40;
    v37 = v8;
    v38 = v7;
    v39 = v6;
    v11 = sub_1ABAF8684();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5720, &unk_1ABF4AD40);
      sub_1ABF24C74();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *v40;
    v18[(v11 >> 6) + 8] |= 1 << v11;
    v19 = v18[6] + 40 * v11;
    *v19 = v8;
    *(v19 + 16) = v7;
    *(v19 + 32) = v6;
    v20 = (v18[7] + 40 * v11);
    *v20 = *(&v6 + 1);
    v20[1] = v31;
    v20[2] = v29;
    v20[3] = v30;
    v20[4] = v32;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v18[2] = v23;
    v5 = v28 + 80;
    ++v4;
    a2 = 1;
    v3 = a1;
  }

  sub_1ABC04858(v14, a2 & 1);
  __dst[5] = __dst[0];
  __dst[6] = __dst[1];
  v36 = __dst[2];
  v16 = sub_1ABAF8684();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC075DC(uint64_t a1, char a2, void *a3)
{
  v41 = *(a1 + 16);
  v42 = a3;
  if (!v41)
  {

    return;
  }

  v40 = v3;
  v6 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    sub_1ABC1070C(i, &v49, &qword_1EB4D1160, &qword_1ABF4AA00);
    v9 = v49;
    v8 = v50;
    v47 = v49;
    v48 = v50;
    sub_1ABA946C0(v51, &v45);
    v10 = *v42;
    v18 = sub_1ABA94FC8(v9, v8, v11, v12, v13, v14, v15, v16, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46);
    v19 = v10[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v10[3] < v21)
    {
      break;
    }

    if (a2)
    {
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D54E8, &unk_1ABF4AA08);
      sub_1ABF24C74();
      if (v22)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = *v42;
    *(*v42 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v32 = (v31[6] + 16 * v18);
    *v32 = v9;
    v32[1] = v8;
    sub_1ABA946C0(&v45, v31[7] + 40 * v18);
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v6;
    v31[2] = v35;
    a2 = 1;
    if (v41 == v6)
    {

      return;
    }
  }

  sub_1ABC051B4(v21, a2 & 1, &unk_1EB4D54E0, &unk_1ABF4A9F8, sub_1ABAFF5C4);
  v29 = sub_1ABA94FC8(v9, v8, v23, v24, v25, v26, v27, v28, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46);
  if ((v22 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v18 = v29;
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v52 = v36;
  v37 = v36;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1ABA84B54(&v45);

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0791C(uint64_t a1, char a2, void *a3)
{
  v41 = *(a1 + 16);
  v42 = a3;
  if (!v41)
  {

    return;
  }

  v40 = v3;
  v6 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    sub_1ABC1070C(i, &v49, &qword_1EB4D1170, &qword_1ABF4AA20);
    v9 = v49;
    v8 = v50;
    v47 = v49;
    v48 = v50;
    sub_1ABA946C0(v51, &v45);
    v10 = *v42;
    v18 = sub_1ABA94FC8(v9, v8, v11, v12, v13, v14, v15, v16, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46);
    v19 = v10[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v10[3] < v21)
    {
      break;
    }

    if (a2)
    {
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D54F8, &qword_1ABF4AA28);
      sub_1ABF24C74();
      if (v22)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = *v42;
    *(*v42 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v32 = (v31[6] + 16 * v18);
    *v32 = v9;
    v32[1] = v8;
    sub_1ABA946C0(&v45, v31[7] + 40 * v18);
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v6;
    v31[2] = v35;
    a2 = 1;
    if (v41 == v6)
    {

      return;
    }
  }

  sub_1ABC051B4(v21, a2 & 1, &unk_1EB4D54F0, &unk_1ABF4AA18, sub_1ABAFF5C4);
  v29 = sub_1ABA94FC8(v9, v8, v23, v24, v25, v26, v27, v28, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46);
  if ((v22 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v18 = v29;
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v52 = v36;
  v37 = v36;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1ABA84B54(&v45);

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC07C5C(uint64_t a1, char a2, void *a3)
{
  v38 = a3;
  v6 = type metadata accessor for CodableLocation(0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&qword_1EB4D1740, &qword_1ABF338D0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - v11;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_13:

    return;
  }

  v33[0] = v6;
  v33[1] = v3;
  v13 = 0;
  v14 = *(v9 + 48);
  v34 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v35 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v10;
    sub_1ABC1070C(v34 + *(v10 + 72) * v13, v12, &qword_1EB4D1740, &qword_1ABF338D0);
    sub_1ABB5E1C0(v12, v39);
    v16 = *&v12[v35];
    v17 = *v38;
    v19 = sub_1ABAF83B4();
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_19;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a2)
    {
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D56B8, &qword_1ABF4ACB8);
      sub_1ABF24C74();
      if (v23)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v26 = v39;
    v27 = *v38;
    *(*v38 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    sub_1ABB5E1C0(v26, v27[6] + *(v37 + 72) * v19);
    *(v27[7] + 8 * v19) = v16;
    v28 = v27[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    ++v13;
    v27[2] = v30;
    a2 = 1;
    v10 = v15;
    if (v36 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC053B0(v22, a2 & 1);
  v24 = sub_1ABAF83B4();
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v31 = swift_allocError();
  swift_willThrow();
  v42 = v31;
  v32 = v31;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABAFEF58(v39);

    return;
  }

LABEL_22:
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08078(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 7)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5678, &qword_1ABF4AC70);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08344(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 9)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5698, &qword_1ABF4AC90);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08610(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5688, &unk_1ABF4AC80);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC088DC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 5)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5668, &qword_1ABF4AC60);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08BA8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 8)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5658, &unk_1ABF4AC50);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08E74(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5648, &qword_1ABF4AC40);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09140(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D13B8, &qword_1ABF33540);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5560, &unk_1ABF618F0);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5558, &unk_1ABF4AB20);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC095D8(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D13C8, &qword_1ABF33550);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5570, &qword_1ABF4AB40);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5568, &unk_1ABF4AB30);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09A70(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D13D8, &qword_1ABF33560);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5580, &qword_1ABF4AB58);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5578, &unk_1ABF4AB48);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09F08(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D13E8, &qword_1ABF33570);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5590, &qword_1ABF4AB68);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5588, &qword_1ABF4AB60);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0A3A0(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D13F8, &qword_1ABF33580);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55A0, &qword_1ABF4AB80);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5598, &unk_1ABF4AB70);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0A838(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1408, &qword_1ABF33590);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55B0, &qword_1ABF4AB98);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55A8, &unk_1ABF4AB88);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0ACD0(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1418, &qword_1ABF335A0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55D0, &qword_1ABF4ABC0);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D55C8, &unk_1ABF4ABB0);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0B168(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1428, &qword_1ABF335B0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55E0, &qword_1ABF617F0);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55D8, &qword_1ABF4ABC8);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0B600(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1438, &qword_1ABF335C0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55F0, &qword_1ABF4ABE0);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D55E8, &unk_1ABF4ABD0);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0BA98(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1448, &qword_1ABF335D0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5600, &qword_1ABF4ABF8);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55F8, &unk_1ABF4ABE8);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0BF30(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1458, &qword_1ABF335E0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5610, &qword_1ABF4AC10);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5608, &unk_1ABF4AC00);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0C3C8(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v36 - v13;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v6;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_1ABC1070C(v41 + *(v12 + 72) * v14, v43, &qword_1EB4D1468, &qword_1ABF335F0);
    v18 = *v17;
    v49 = *v17;
    v19 = *v44;
    (*v44)(v9, &v17[v40], v6);
    v20 = *v45;
    v22 = sub_1ABAFF5B8();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5620, &unk_1ABF61980);
      sub_1ABF24C74();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    *(v29[6] + v22) = v18;
    v30 = v29[7] + *(v7 + 72) * v22;
    v9 = v38;
    v6 = v39;
    v19(v30, v38, v39);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1ABC05A50(v25, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5618, &qword_1ABF4AC18);
  v27 = sub_1ABAFF5B8();
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v38, v39);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0C860(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v9 = *a3;
    v11 = sub_1ABAFF5B8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5630, &qword_1ABF4AC28);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + v11) = v7;
    *(v17[7] + 8 * v11) = v8;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05874();
  v15 = sub_1ABAFF5B8();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();

  v22 = v21;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0CB1C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    sub_1ABAF89FC();
    v13 = v12;
    v14 = v8[2];
    v15 = (v11 & 1) == 0;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v14 + v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5540, &qword_1ABF4AB08);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v19[6] + 8 * v13) = v9;
    *(v19[7] + 8 * v13) = v10;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1ABC069AC();
  sub_1ABAF89FC();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v13 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0CE18(uint64_t a1, char a2, void *a3)
{
  v6 = 0;
  v31 = *(a1 + 16);
  for (i = 32; ; i += 80)
  {
    if (v31 == v6)
    {
LABEL_17:

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    v8 = *(&__dst[4] + 1);
    v26 = *(&__dst[2] + 8);
    v27 = *(&__dst[3] + 8);
    v28 = *(&__dst[1] + 8);
    v25 = *(__dst + 8);
    v9 = *&__dst[0];
    sub_1ABC1070C(__dst, v29, &qword_1EB4D12B0, &qword_1ABF4AAF0);
    if (v28 == 1)
    {
      goto LABEL_17;
    }

    __dst[0] = v25;
    __dst[1] = v28;
    __dst[2] = v26;
    __dst[3] = v27;
    *&__dst[4] = v8;
    v10 = *a3;
    v12 = sub_1ABAFF5A4(v9);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5530, &qword_1ABF4AAF8);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v9;
    memcpy((v19[7] + 72 * v12), __dst, 0x48uLL);
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v19[2] = v22;
    ++v6;
    a2 = 1;
  }

  sub_1ABC06554(v15, a2 & 1);
  v17 = sub_1ABAFF5A4(v9);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABC1065C(__dst);

    return;
  }

LABEL_23:
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0D158(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v31 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v31 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(i - 1);
    v7 = *i;

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v15 = sub_1ABAF81A8();
    v16 = v9[2];
    v17 = (v10 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_20;
    }

    v19 = v10;
    if (v9[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5520, &qword_1ABF4AAE0);
      sub_1ABF24C74();
      if (v19)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v22[6] + 8 * v15) = v8;
    *(v22[7] + 8 * v15) = v7;
    v23 = v22[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v22[2] = v25;
    ++v5;
    a2 = 1;
  }

  sub_1ABC06820(v18, a2 & 1, &unk_1EB4D5518, &unk_1ABF4AAD8, v11, v12, v13, v14, v28, v29, *v30, v30[4]);
  v20 = sub_1ABAF81A8();
  if ((v19 & 1) != (v21 & 1))
  {
    goto LABEL_22;
  }

  v15 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

unint64_t sub_1ABC0D42C()
{
  result = qword_1EB4D52E8;
  if (!qword_1EB4D52E8)
  {
    sub_1ABAFF390(255, &qword_1ED86B920, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D52E8);
  }

  return result;
}

unint64_t sub_1ABC0D494()
{
  result = qword_1EB4D5328;
  if (!qword_1EB4D5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5328);
  }

  return result;
}

unint64_t sub_1ABC0D4E8()
{
  result = qword_1EB4D5330;
  if (!qword_1EB4D5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5330);
  }

  return result;
}

unint64_t sub_1ABC0D53C()
{
  result = qword_1EB4D5338;
  if (!qword_1EB4D5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5338);
  }

  return result;
}

unint64_t sub_1ABC0D590()
{
  result = qword_1EB4D5340;
  if (!qword_1EB4D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5340);
  }

  return result;
}

unint64_t sub_1ABC0D5E4()
{
  result = qword_1EB4D5348;
  if (!qword_1EB4D5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5348);
  }

  return result;
}

unint64_t sub_1ABC0D638()
{
  result = qword_1EB4D5350;
  if (!qword_1EB4D5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5350);
  }

  return result;
}

uint64_t sub_1ABC0D68C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC0D6F8()
{
  result = qword_1EB4D5390;
  if (!qword_1EB4D5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5390);
  }

  return result;
}

unint64_t sub_1ABC0D74C()
{
  result = qword_1EB4D5398;
  if (!qword_1EB4D5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5398);
  }

  return result;
}

unint64_t sub_1ABC0D7A0()
{
  result = qword_1EB4D53A8;
  if (!qword_1EB4D53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53A8);
  }

  return result;
}

unint64_t sub_1ABC0D818()
{
  result = qword_1EB4D53C8;
  if (!qword_1EB4D53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53C8);
  }

  return result;
}

unint64_t sub_1ABC0D86C()
{
  result = qword_1EB4D53D0;
  if (!qword_1EB4D53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53D0);
  }

  return result;
}

unint64_t sub_1ABC0D8C0()
{
  result = qword_1EB4D53D8;
  if (!qword_1EB4D53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53D8);
  }

  return result;
}

unint64_t sub_1ABC0D914()
{
  result = qword_1EB4D53E8;
  if (!qword_1EB4D53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53E8);
  }

  return result;
}

unint64_t sub_1ABC0D968()
{
  result = qword_1EB4D53F0;
  if (!qword_1EB4D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53F0);
  }

  return result;
}

unint64_t sub_1ABC0D9C0()
{
  result = qword_1ED86D3D0;
  if (!qword_1ED86D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D3D0);
  }

  return result;
}

unint64_t sub_1ABC0DA18()
{
  result = qword_1EB4D53F8;
  if (!qword_1EB4D53F8)
  {
    sub_1ABAE2850(&qword_1EB4D5400, &qword_1ABF498E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53F8);
  }

  return result;
}

uint64_t sub_1ABC0DA7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABC0DB00(&qword_1EB4D5408, a2, type metadata accessor for EntityTaggingStatefulFeedback);
  result = sub_1ABC0DB00(&qword_1EB4D2B78, v3, type metadata accessor for EntityTaggingStatefulFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC0DB00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC0DB48()
{
  result = qword_1EB4D5410;
  if (!qword_1EB4D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5410);
  }

  return result;
}

uint64_t sub_1ABC0DB9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABC0DB00(&qword_1EB4D5418, a2, type metadata accessor for EntityTaggingDirectFeedback);
  result = sub_1ABC0DB00(&qword_1EB4D2B40, v3, type metadata accessor for EntityTaggingDirectFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonEntityTagType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonEntityTagType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA8E850(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PersonEntityTaggingService.peopleEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PersonEntityTaggingService.entitiesForTag(gdEntityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntities(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

{
  sub_1ABA8C008();
  sub_1ABA954A8();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntities(tags:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PersonEntityTaggingService.recordStatefulFeedbackForObjC(gdFeedback:)()
{
  sub_1ABA7BC04();
  v1 = v0;
  sub_1ABA7ABF0();
  v7 = (*(v2 + 160) + **(v2 + 160));
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v4[1] = sub_1ABAB2788;

  return v7(v1);
}

uint64_t dispatch thunk of PersonEntityTaggingService.recordDirectFeedbackForObjC(gradedTrue:gradedFalse:ignored:neverPresented:)()
{
  sub_1ABA906D0();
  sub_1ABA88C5C();
  sub_1ABA7ABF0();
  v6 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v2[1] = sub_1ABAB2788;
  v4 = sub_1ABA805B4();

  return v6(v4);
}

uint64_t dispatch thunk of EntityTaggingService.entityTags(identifier:options:)()
{
  sub_1ABA906D0();
  sub_1ABA88C5C();
  v9 = (*(*v1 + 104) + **(*v1 + 104));
  v5 = swift_task_alloc();
  v6 = sub_1ABA8864C(v5);
  *v6 = v7;
  v6[1] = sub_1ABA7FDA0;

  return v9(v4, v3, v2, v0);
}

uint64_t dispatch thunk of EntityTaggingService.personEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA8E850(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityTaggingService.peopleEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t sub_1ABC0EDB4()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;

  sub_1ABA82A20();

  return v4(v0);
}

uint64_t dispatch thunk of EntityTaggingService.entitiesForTag(entityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  v8 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v5[1] = sub_1ABAB2788;

  return v8(v3, v2, v0);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityTaggingService.entitiesForTag(gdEntityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(tags:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(gdEntityTagTypes:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA7E680(v1);

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for EntityTaggingService.RankedPersonEntityTags.ScoredPersonEntityTagType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE3 && a1[16])
    {
      v2 = *a1 + 226;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x1E;
      v2 = v3 - 30;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityTaggingService.RankedPersonEntityTags.ScoredPersonEntityTagType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 29;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingDirectFeedback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABC0F7C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABC0F8E4(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA814E4();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1ABC0F930(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC0F9E0()
{
  result = qword_1EB4D5420;
  if (!qword_1EB4D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5420);
  }

  return result;
}

unint64_t sub_1ABC0FA38()
{
  result = qword_1EB4D5428;
  if (!qword_1EB4D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5428);
  }

  return result;
}

unint64_t sub_1ABC0FA90()
{
  result = qword_1EB4D5430;
  if (!qword_1EB4D5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5430);
  }

  return result;
}

unint64_t sub_1ABC0FAE8()
{
  result = qword_1EB4D5438;
  if (!qword_1EB4D5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5438);
  }

  return result;
}

unint64_t sub_1ABC0FB40()
{
  result = qword_1EB4D5440;
  if (!qword_1EB4D5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5440);
  }

  return result;
}

unint64_t sub_1ABC0FB98()
{
  result = qword_1EB4D5448;
  if (!qword_1EB4D5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5448);
  }

  return result;
}

unint64_t sub_1ABC0FBF0()
{
  result = qword_1EB4D5450;
  if (!qword_1EB4D5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5450);
  }

  return result;
}

unint64_t sub_1ABC0FC48()
{
  result = qword_1EB4D5458;
  if (!qword_1EB4D5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5458);
  }

  return result;
}

unint64_t sub_1ABC0FCA0()
{
  result = qword_1EB4D5460;
  if (!qword_1EB4D5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5460);
  }

  return result;
}

unint64_t sub_1ABC0FCF8()
{
  result = qword_1EB4D5468;
  if (!qword_1EB4D5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5468);
  }

  return result;
}

unint64_t sub_1ABC0FD50()
{
  result = qword_1EB4D5470;
  if (!qword_1EB4D5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5470);
  }

  return result;
}

unint64_t sub_1ABC0FDA8()
{
  result = qword_1EB4D5478;
  if (!qword_1EB4D5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5478);
  }

  return result;
}

unint64_t sub_1ABC0FE00()
{
  result = qword_1EB4D5480;
  if (!qword_1EB4D5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5480);
  }

  return result;
}

unint64_t sub_1ABC0FE58()
{
  result = qword_1EB4D5488;
  if (!qword_1EB4D5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5488);
  }

  return result;
}

unint64_t sub_1ABC0FEB0()
{
  result = qword_1EB4D5490;
  if (!qword_1EB4D5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5490);
  }

  return result;
}

unint64_t sub_1ABC0FF08()
{
  result = qword_1EB4D5498;
  if (!qword_1EB4D5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5498);
  }

  return result;
}

unint64_t sub_1ABC0FF60()
{
  result = qword_1EB4D54A0;
  if (!qword_1EB4D54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54A0);
  }

  return result;
}

unint64_t sub_1ABC0FFB8()
{
  result = qword_1EB4D54A8;
  if (!qword_1EB4D54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54A8);
  }

  return result;
}

unint64_t sub_1ABC10010()
{
  result = qword_1EB4D54B0;
  if (!qword_1EB4D54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54B0);
  }

  return result;
}

unint64_t sub_1ABC10068()
{
  result = qword_1EB4D54B8;
  if (!qword_1EB4D54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54B8);
  }

  return result;
}

unint64_t sub_1ABC100C0()
{
  result = qword_1EB4D54C0;
  if (!qword_1EB4D54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54C0);
  }

  return result;
}

unint64_t sub_1ABC10118()
{
  result = qword_1EB4D54C8;
  if (!qword_1EB4D54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54C8);
  }

  return result;
}

unint64_t sub_1ABC10170()
{
  result = qword_1EB4D54D0;
  if (!qword_1EB4D54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54D0);
  }

  return result;
}

unint64_t sub_1ABC101C8()
{
  result = qword_1EB4D54D8;
  if (!qword_1EB4D54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54D8);
  }

  return result;
}

uint64_t sub_1ABC1021C()
{
  sub_1ABA906D0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v1[1] = sub_1ABAB2788;
  v3 = sub_1ABAA25B0();

  return v4(v3);
}

uint64_t sub_1ABC102E0()
{
  swift_unknownObjectRelease();

  v0 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABC10318()
{
  sub_1ABA7BC04();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v1[1] = sub_1ABAB2788;
  v3 = sub_1ABAA25B0();

  return v4(v3);
}

uint64_t sub_1ABC103BC()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC1044C()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC104DC()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC1056C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1ABC105B4()
{
  result = qword_1EB4D5500;
  if (!qword_1EB4D5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5500);
  }

  return result;
}

unint64_t sub_1ABC10608()
{
  result = qword_1EB4D5508;
  if (!qword_1EB4D5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5508);
  }

  return result;
}

uint64_t sub_1ABC1070C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABA9F5B8(a1, a2, a3, a4);
  sub_1ABA7D08C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

id sub_1ABC107F4()
{

  return objc_allocWithZone(v0);
}

uint64_t sub_1ABC10838(uint64_t a1, void *a2, double a3)
{
  v5 = a1 + 56;
  sub_1ABA7E5E8();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v27 = v11;

  v12 = 0;
  v25 = v5;
  v26 = a2;
  if (v8)
  {
LABEL_6:
    while (1)
    {
      v14 = *(*(v27 + 48) + (__clz(__rbit64(v8)) | (v12 << 6)));
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *a2;
      v15 = sub_1ABAAFEB4();
      if (__OFADD__(v28[2], (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
      if (sub_1ABF24C64())
      {
        v19 = sub_1ABAAFEB4();
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_20;
        }

        v17 = v19;
      }

      if (v18)
      {
        *(v28[7] + 8 * v17) = a3;
      }

      else
      {
        v28[(v17 >> 6) + 8] |= 1 << v17;
        *(v28[6] + v17) = v14;
        *(v28[7] + 8 * v17) = a3;
        v21 = v28[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_19;
        }

        v28[2] = v23;
      }

      v8 &= v8 - 1;
      v5 = v25;
      a2 = v26;
      *v26 = v28;
      if (!v8)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v8 = *(v5 + 8 * v13);
      ++v12;
      if (v8)
      {
        v12 = v13;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABC10A34(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

void sub_1ABC10A90(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v6 = sub_1ABA8180C();
  if ((v7 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (sub_1ABA7C154(v6) >= 0.95)
  {
    goto LABEL_31;
  }

  sub_1ABC1289C(v3, &v46);
  v8 = v46;
  v9 = sub_1ABE8B4D4(&unk_1F2091958);
  sub_1ABA8C048(v9);
  sub_1ABA946E0();
  if (v4)
  {
    goto LABEL_31;
  }

  v10 = sub_1ABE8B4D4(&unk_1F2091928);
  sub_1ABA8C048(v10);
  sub_1ABA946E0();
  v11 = sub_1ABE8B4D4(&unk_1F2091980);
  sub_1ABA8C048(v11);
  sub_1ABAA38A4();
  if (v8)
  {
    goto LABEL_31;
  }

  sub_1ABC12A7C(&v45);
  v12 = v45;
  v13 = sub_1ABE8B4D4(&unk_1F2091958);
  sub_1ABA8C048(v13);
  sub_1ABAA38A4();
  if (v12)
  {
    goto LABEL_31;
  }

  v14 = sub_1ABF239C4();
  v15 = sub_1ABF23BD4();
  v16 = sub_1ABAA605C();
  v18 = [v16 v17];

  v19 = 0.0;
  if (v18)
  {
    [v18 doubleValue];
    v19 = v20;
  }

  sub_1ABAD5944(v14, v19);

  v21 = sub_1ABA8E89C();
  v22 = sub_1ABAA605C();
  v24 = [v22 v23];

  if (v24)
  {
    [v24 doubleValue];
    v5 = v25;
  }

  sub_1ABA8F2F8();
  if (!(v27 ^ v28 | v26))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 <= -9.22337204e18)
  {
    goto LABEL_33;
  }

  sub_1ABA80A94();
  if (!v27)
  {
    goto LABEL_34;
  }

  AgeDifferenceCategory.init(rawValue:)(v5);
  v29 = sub_1ABF23BD4();
  v30 = sub_1ABAA605C();
  v32 = [v30 v31];

  if (v32)
  {
    [v32 doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v27 ^ v28 | v26))
  {
    goto LABEL_35;
  }

  if (v34 > -9.22337204e18)
  {
    sub_1ABA80A94();
    if (!v27)
    {
      goto LABEL_37;
    }

    AgeDifferenceCategory.init(rawValue:)(v34);
    v35 = sub_1ABF23BD4();
    v36 = sub_1ABAA605C();
    v38 = [v36 v37];

    if (v38)
    {
      [v38 doubleValue];
    }

    v39 = sub_1ABF23BD4();
    v40 = sub_1ABAA605C();
    v42 = [v40 v41];

    if (v42)
    {
      [v42 doubleValue];
    }

    sub_1ABAD58F0(4, v2);
    if ((v43 & 1) == 0)
    {
      sub_1ABAA34D0();

      goto LABEL_31;
    }

LABEL_30:
    v44 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v44);
    sub_1ABA8E210();
LABEL_31:
    sub_1ABA99400();
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1ABC10F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v29;
  a25 = v30;
  if (!*(v31 + 16) || (sub_1ABA907B0(), sub_1ABAA2C9C(), v32 = sub_1ABAAFEB4(), (v33 & 1) == 0))
  {
    v41 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v41);
    sub_1ABA8E210();
    goto LABEL_10;
  }

  if (sub_1ABA7C154(v32) >= 0.95)
  {
LABEL_10:
    sub_1ABA99400();
    sub_1ABAA25C0();
    return;
  }

  v34 = sub_1ABF23BD4();
  v35 = sub_1ABA949C4();
  v37 = [v35 v36];

  if (!v37)
  {
    v37 = [objc_opt_self() featureValueWithDouble_];
  }

  [v37 doubleValue];
  sub_1ABAA3108();
  if (v38 || (sub_1ABC1289C(v26, &a15), v39 = a15, v40 = sub_1ABE8B4D4(&unk_1F2091D40), sub_1ABA7E698(v40), sub_1ABAA407C(), (v28 & 1) != 0) || (v42 = sub_1ABE8B4D4(&unk_1F2091928), sub_1ABA7E698(v42), sub_1ABAA407C(), v43 = sub_1ABE8B4D4(&unk_1F2091980), sub_1ABA7E698(v43), sub_1ABAA4E00(), (v39 & 1) != 0) || (sub_1ABC12A7C(&a14), v44 = a14, v45 = sub_1ABE8B4D4(&unk_1F2091D40), sub_1ABA7E698(v45), sub_1ABAA4E00(), (v44 & 1) != 0))
  {

    goto LABEL_10;
  }

  v46 = sub_1ABA8E89C();
  v47 = sub_1ABA934B0(v46);

  if (v47)
  {
    sub_1ABAA3CBC();
    v49 = v48;
  }

  else
  {
    v49 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v50 ^ v51 | v38))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v49 <= -9.22337204e18)
  {
    goto LABEL_33;
  }

  sub_1ABA80A94();
  if (!v50)
  {
    goto LABEL_34;
  }

  AgeDifferenceCategory.init(rawValue:)(v49);
  v52 = sub_1ABF23BD4();
  v53 = sub_1ABA949C4();
  v55 = [v53 v54];

  if (v55)
  {
    [v55 doubleValue];
    v57 = v56;
  }

  else
  {
    v57 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v50 ^ v51 | v38))
  {
    goto LABEL_35;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1ABA80A94();
  if (v50)
  {
    AgeDifferenceCategory.init(rawValue:)(v57);
    sub_1ABAD58F0(4, v25);
    if (v58)
    {
      v59 = sub_1ABC136C0();
      sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v59);
      sub_1ABA8E210();
    }

    else
    {

      sub_1ABAA34D0();
    }

    goto LABEL_10;
  }

LABEL_37:
  __break(1u);
}

void sub_1ABC11240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v27;
  a25 = v29;
  if (!*(v28 + 16) || (v30 = v28, sub_1ABAA2C9C(), v31 = sub_1ABAAFEB4(), (v32 & 1) == 0))
  {
    v39 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v39);
    sub_1ABA8E210();
    goto LABEL_10;
  }

  if (*(*(v30 + 56) + 8 * v31) >= 0.95)
  {
LABEL_10:
    sub_1ABA99400();
    sub_1ABAA25C0();
    return;
  }

  v33 = sub_1ABF23BD4();
  v34 = sub_1ABAA5328();
  v36 = [v34 v35];

  if (!v36)
  {
    v36 = [objc_opt_self() featureValueWithDouble_];
  }

  [v36 doubleValue];
  sub_1ABAA3108();
  if (v53 || (sub_1ABC1289C(v25, &a15), v37 = a15, v38 = sub_1ABE8B4D4(&unk_1F2091D68), sub_1ABA7E698(v38), sub_1ABAA407C(), (v26 & 1) != 0) || (v40 = sub_1ABE8B4D4(&unk_1F2091928), sub_1ABA7E698(v40), sub_1ABAA407C(), v41 = sub_1ABE8B4D4(&unk_1F2091980), sub_1ABA7E698(v41), sub_1ABAA4E00(), (v37 & 1) != 0) || (sub_1ABC12A7C(&a14), v42 = a14, v43 = sub_1ABE8B4D4(&unk_1F2091D68), sub_1ABA7E698(v43), sub_1ABAA4E00(), (v42 & 1) != 0))
  {
LABEL_8:

    goto LABEL_10;
  }

  v44 = sub_1ABF23BD4();
  v45 = sub_1ABAA5328();
  v47 = [v45 v46];

  if (v47)
  {
    v48 = [v47 stringValue];

    v49 = sub_1ABF23C04();
    v51 = v50;

    v52 = v51 == 0xE500000000000000;
    v53 = v49 == 0x544C554441 && v51 == 0xE500000000000000;
    if (v53)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v52 = 0;
    v49 = 0x4E574F4E4B4E55;
    v51 = 0xE700000000000000;
  }

  if (sub_1ABAA4538(0x544C554441, 0xE500000000000000))
  {
LABEL_22:

    goto LABEL_8;
  }

  v54 = v49 == 1313162580 && v51 == 0xE400000000000000;
  if (v54 || (sub_1ABAA4538(1313162580, 0xE400000000000000) & 1) != 0)
  {

    goto LABEL_8;
  }

  if (v49 == 0x444C494843 && v52)
  {

    goto LABEL_10;
  }

  sub_1ABAA4538(0x444C494843, 0xE500000000000000);
  sub_1ABA946E0();
  if (v52)
  {
    goto LABEL_8;
  }

  v55 = sub_1ABA8E89C();
  v56 = sub_1ABAA5328();
  v58 = [v56 v57];

  if (v58)
  {
    [v58 doubleValue];
    v60 = v59;
  }

  else
  {
    v60 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v61 ^ v62 | v53))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v60 <= -9.22337204e18)
  {
    goto LABEL_55;
  }

  sub_1ABA80A94();
  if (!v61)
  {
    goto LABEL_56;
  }

  AgeDifferenceCategory.init(rawValue:)(v60);
  v63 = sub_1ABF23BD4();
  v64 = sub_1ABAA5328();
  v66 = [v64 v65];

  if (v66)
  {
    [v66 doubleValue];
    v68 = v67;
  }

  else
  {
    v68 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v61 ^ v62 | v53))
  {
    goto LABEL_57;
  }

  if (v68 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1ABA80A94();
  if (v61)
  {
    AgeDifferenceCategory.init(rawValue:)(v68);
    v69 = sub_1ABF23BD4();
    v70 = sub_1ABAA5328();
    v72 = [v70 v71];

    if (v72)
    {
      [v72 doubleValue];
    }

    sub_1ABAD58F0(4, v30);
    if (v73)
    {
      v74 = sub_1ABC136C0();
      sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v74);
      sub_1ABA8E210();
    }

    else
    {

      sub_1ABAA34D0();
    }

    goto LABEL_10;
  }

LABEL_59:
  __break(1u);
}

void sub_1ABC1174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 16) || (sub_1ABA907B0(), v8 = v7, v9 = sub_1ABAAFEB4(), (v10 & 1) == 0) || sub_1ABA7C154(v9) < 0.95 && (sub_1ABC1289C(v8, &v20), v11 = v20, (sub_1ABAB0550(v20, a3) & 1) == 0) && (v12 = sub_1ABE8B4D4(&unk_1F2091928), v13 = sub_1ABB13550(v11, v12), , (v13 & 1) == 0) && (v14 = sub_1ABE8B4D4(&unk_1F2091980), v15 = sub_1ABB13550(v11, v14), , (v15 & 1) == 0) && (sub_1ABC12A7C(&v19), v16 = v19, (sub_1ABAB0550(v19, a3) & 1) == 0) && (sub_1ABAB0550(v16, 1) & 1) != 0 && (sub_1ABAD58F0(a4, v4), (v17 & 1) != 0))
  {
    v18 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v18);
    sub_1ABA8E210();
  }

  sub_1ABA99400();
}

void sub_1ABC118B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v5 = sub_1ABA8180C(), (v6 & 1) != 0))
  {
    if (sub_1ABA7C154(v5) < 0.95)
    {
      sub_1ABC1289C(v3, &v13);
      v7 = v13;
      if ((sub_1ABAB0550(v13, 17) & 1) == 0)
      {
        v9 = sub_1ABE8B4D4(&unk_1F2091928);
        sub_1ABA8C048(v9);
        sub_1ABA946E0();
        if ((v4 & 1) == 0)
        {
          v10 = sub_1ABE8B4D4(&unk_1F2091980);
          sub_1ABA8C048(v10);
          sub_1ABAA38A4();
          if ((v7 & 1) == 0)
          {
            sub_1ABC12A7C(&v12);
            v11 = v12;
            if (sub_1ABAB0550(v12, 17) & 1) == 0 && (sub_1ABAB0550(v11, 1))
            {
              sub_1ABAD58F0(15, v2);
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v8);
    sub_1ABA8E210();
  }

  sub_1ABA99400();
}

void sub_1ABC119E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1ABA907B0(), sub_1ABAA2C9C(), v6 = sub_1ABAAFEB4(), (v7 & 1) != 0))
  {
    if (*(*(v2 + 56) + 8 * v6) < 0.95)
    {
      v8 = sub_1ABF23BD4();
      v9 = sub_1ABA949C4();
      v11 = [v9 v10];

      if (!v11)
      {
        v11 = [objc_opt_self() featureValueWithDouble_];
      }

      [v11 doubleValue];
      if (v12 == 1.0 || (sub_1ABC1289C(v3, &v41), v13 = v41, v14 = sub_1ABE8B4D4(&unk_1F2091980), sub_1ABA7E698(v14), sub_1ABAA407C(), (v5 & 1) != 0) || (v16 = sub_1ABE8B4D4(&unk_1F2091928), sub_1ABA7E698(v16), sub_1ABAA4E00(), (v13 & 1) != 0))
      {

        return;
      }

      sub_1ABC12A7C(&v40);
      v17 = v40;
      v18 = sub_1ABE8B4D4(&unk_1F2091980);
      sub_1ABA7E698(v18);
      sub_1ABAA4E00();
      if (v17)
      {

        return;
      }

      v19 = sub_1ABA8E89C();
      v20 = sub_1ABA934B0(v19);

      if (v20)
      {
        sub_1ABAA3CBC();
        v22 = v21;
      }

      else
      {
        v22 = 0.0;
      }

      sub_1ABA8F2F8();
      if (!(v24 ^ v25 | v23))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      sub_1ABA80A94();
      if (!v24)
      {
        goto LABEL_41;
      }

      AgeDifferenceCategory.init(rawValue:)(v22);
      v26 = sub_1ABF23BD4();
      v27 = sub_1ABA934B0(v26);

      if (v27)
      {
        sub_1ABAA3CBC();
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      sub_1ABA8F2F8();
      if (!(v24 ^ v25 | v23))
      {
        goto LABEL_42;
      }

      if (v29 <= -9.22337204e18)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      sub_1ABA80A94();
      if (!v24)
      {
        goto LABEL_44;
      }

      AgeDifferenceCategory.init(rawValue:)(v29);
      v30 = sub_1ABF23BD4();
      v31 = sub_1ABA934B0(v30);

      if (v31)
      {
        sub_1ABAA3CBC();
      }

      v32 = sub_1ABF23BD4();
      v33 = sub_1ABA934B0(v32);

      if (v33)
      {
        sub_1ABAA3CBC();
      }

      v34 = sub_1ABF23BD4();
      v35 = sub_1ABA949C4();
      v37 = [v35 v36];

      if (v37)
      {
        [v37 doubleValue];
      }

      sub_1ABAD58F0(4, v2);
      if (v38)
      {
        v39 = sub_1ABC136C0();
        sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v39);
        sub_1ABA8E210();
      }

      else
      {

        sub_1ABAA34D0();
      }
    }
  }

  else
  {
    v15 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v15);
    sub_1ABA8E210();
  }
}

void sub_1ABC11E20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_5;
  }

  sub_1ABA907B0();
  sub_1ABAA2C9C();
  v4 = sub_1ABAAFEB4();
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (sub_1ABA7C154(v4) < 0.95)
  {
    v6 = COERCE_DOUBLE(sub_1ABAD58F0(15, v2));
    if (v7)
    {
LABEL_5:
      v8 = sub_1ABC136C0();
      sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v8);
      sub_1ABA8E210();
      goto LABEL_6;
    }

    if (v6 < 0.8)
    {
      sub_1ABC1289C(v3, &v56);
      if ((sub_1ABAB0550(v56, 21) & 1) == 0)
      {
        sub_1ABC12A7C(&v56);
        if ((sub_1ABAB0550(v56, 21) & 1) == 0)
        {
          v9 = sub_1ABF23BD4();
          v10 = sub_1ABA949C4();
          v12 = [v10 v11];

          if (v12)
          {
            sub_1ABAA2298();
          }

          v13 = sub_1ABF23BD4();
          v14 = sub_1ABA949C4();
          v16 = [v14 v15];

          if (v16)
          {
            sub_1ABAA2298();
          }

          v17 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v18 = sub_1ABF23BD4();
          v19 = sub_1ABA934B0(v18);

          v20 = 0.0;
          v21 = 0.0;
          if (v19)
          {
            [v19 doubleValue];
            v21 = v22;
          }

          v23 = sub_1ABAD5944(v17, v21);
          v25 = v24;

          if (v25)
          {
            v26 = v23;
          }

          else
          {
            v26 = 0;
          }

          v55 = v26;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          v58 = v27;
          v28 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v29 = sub_1ABF23BD4();
          v30 = sub_1ABA949C4();
          v32 = [v30 v31];

          if (v32)
          {
            [v32 doubleValue];
            v20 = v33;
          }

          v34 = sub_1ABAD5944(v28, v20);
          v36 = v35;

          if (v36)
          {
            v37 = v34;
          }

          else
          {
            v37 = 0;
          }

          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0xE000000000000000;
          }

          v39 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v40 = sub_1ABF23BD4();
          v41 = sub_1ABA949C4();
          v43 = [v41 v42];

          if (v43)
          {
            [v43 doubleValue];
            v45 = v44;
          }

          else
          {
            v45 = 0.0;
          }

          v46 = sub_1ABAD5944(v39, v45);
          v48 = v47;

          if (v48)
          {
            v49 = v46;
          }

          else
          {
            v49 = 0;
          }

          if (v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0xE000000000000000;
          }

          sub_1ABAD58F0(22, v2);
          if (v51)
          {

            goto LABEL_5;
          }

          v56 = v55;
          v57 = v58;
          sub_1ABAE28EC();
          sub_1ABA7D6F8();
          if (sub_1ABF248D4())
          {
          }

          else
          {
            v56 = v37;
            v57 = v38;
            sub_1ABA7D6F8();
            v52 = sub_1ABF248D4();

            if (v52)
            {
            }

            else
            {
              v56 = v49;
              v57 = v50;
              sub_1ABA7D6F8();
              v53 = sub_1ABF248D4();

              v54 = v58;
              if (v53 & 1) != 0 || (v56 = v55, v57 = v58, sub_1ABA7D6F8(), (sub_1ABF248D4()))
              {
              }

              else
              {
                v56 = v55;
                v57 = v54;
                sub_1ABA7D6F8();
                sub_1ABF248D4();
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  sub_1ABA99400();
}

void sub_1ABC12400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v27;
  a25 = v28;
  if (*(v29 + 16) && (v30 = sub_1ABA8180C(), (v31 & 1) != 0))
  {
    if (sub_1ABA7C154(v30) < 0.95)
    {
      v32 = sub_1ABF23BD4();
      v33 = sub_1ABA838A0();
      v35 = [v33 v34];

      if (!v35)
      {
        v35 = [objc_opt_self() featureValueWithDouble_];
      }

      [v35 doubleValue];
      sub_1ABAA3108();
      if (!v36)
      {
        sub_1ABC1289C(v25, &a15);
        if ((sub_1ABAB0550(a15, 23) & 1) == 0)
        {
          sub_1ABC12A7C(&a14);
          if ((sub_1ABAB0550(a14, 23) & 1) == 0)
          {
            v38 = sub_1ABF23BD4();
            v39 = sub_1ABA7F1D8(v38);

            if (v39)
            {
              sub_1ABA97B18();
            }

            sub_1ABA7F0D0();
            v40 = sub_1ABF23BD4();
            v41 = sub_1ABA7F1D8(v40);

            if (v41)
            {
              sub_1ABA97B18();
            }

            v42 = sub_1ABF23BD4();
            v43 = sub_1ABA7F1D8(v42);

            if (v43)
            {
              sub_1ABA97B18();
            }

            sub_1ABC12C20(v25);
            v44 = sub_1ABF23BD4();
            v45 = sub_1ABA7F1D8(v44);

            if (v45)
            {
              sub_1ABA97B18();
            }

            sub_1ABA7F0D0();
            v46 = sub_1ABF23BD4();
            v47 = sub_1ABA7F1D8(v46);

            if (v47)
            {
              sub_1ABA97B18();
            }

            v48 = sub_1ABF23BD4();
            v49 = sub_1ABA838A0();
            v51 = [v49 v50];

            if (v51)
            {
              sub_1ABAA2298();
            }
          }
        }
      }
    }
  }

  else
  {
    v37 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v37);
    sub_1ABA8E210();
  }

  sub_1ABA99400();
  sub_1ABAA25C0();
}

void sub_1ABC12778(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1ABA8180C(), (v4 & 1) != 0))
  {
    if (sub_1ABA7C154(v3) < 0.95)
    {
      sub_1ABC1289C(v2, &v9);
      if ((sub_1ABAB0550(v9, 26) & 1) == 0)
      {
        sub_1ABC12A7C(&v8);
        if ((sub_1ABAB0550(v8, 26) & 1) == 0)
        {
          v6 = sub_1ABA8E89C();
          v7 = [v2 featureValueForName_];

          if (v7)
          {
            [v7 doubleValue];
          }
        }
      }
    }
  }

  else
  {
    v5 = sub_1ABC136C0();
    sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v5);
    sub_1ABA8E210();
  }

  sub_1ABA99400();
}

void sub_1ABC1289C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1ABF23BD4();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
LABEL_7:
    sub_1ABA7F0D0();
    v12 = sub_1ABF23BD4();
    v13 = [a1 featureValueForName_];

    if (v13)
    {
      v14 = [v13 stringValue];
      v15 = sub_1ABF23C04();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)(v15, v17, a2);

        goto LABEL_12;
      }
    }

    *a2 = 1;
    return;
  }

  v6 = v5;
  v7 = [v6 stringValue];
  v8 = sub_1ABF23C04();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)(v8, v10, a2);

LABEL_12:
}

void sub_1ABC12A7C(char *a1@<X8>)
{
  sub_1ABA7F0D0();
  v2 = sub_1ABF23BD4();
  v3 = sub_1ABAA605C();
  v5 = [v3 v4];

  if (v5)
  {
    v6 = [v5 stringValue];

    v5 = sub_1ABF23C04();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1ABF23BD4();
  v10 = sub_1ABAA605C();
  v12 = [v10 v11];

  if (v12)
  {
    v13 = [v12 stringValue];

    v14 = sub_1ABF23C04();
    v12 = v15;

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v16._countAndFlagsBits = v5;
  v16._object = v8;
  PersonEntityTagType.init(qid:)(v16);
  v17 = v19;
  if ((sub_1ABAB0550(v19, 1) & 1) == 0)
  {

    goto LABEL_13;
  }

LABEL_9:
  if (!v12 || (v18._countAndFlagsBits = v14, v18._object = v12, PersonEntityTagType.init(qid:)(v18), v17 = v20, (sub_1ABAB0550(v20, 1) & 1) != 0))
  {
    v17 = 1;
  }

LABEL_13:
  *a1 = v17;
}

uint64_t sub_1ABC12C20(void *a1)
{
  v3 = sub_1ABF239C4();
  v4 = sub_1ABF23BD4();
  v5 = [a1 featureValueForName_];

  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    [v5 doubleValue];
    v7 = v8;
  }

  sub_1ABAD5944(v3, v7);

  v9 = sub_1ABF239C4();
  v10 = sub_1ABAA49B8();
  v11 = sub_1ABA95838(v10);

  if (v11)
  {
    [v11 doubleValue];
    v6 = v12;
  }

  sub_1ABAD5944(v9, v6);
  v14 = v13;

  v15 = sub_1ABF239C4();
  v16 = sub_1ABAA49B8();
  v17 = sub_1ABA95838(v16);

  if (v17)
  {
    [v17 doubleValue];
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  sub_1ABAD5944(v15, v19);

  sub_1ABAE28EC();
  sub_1ABA7D6F8();
  if (sub_1ABF248D4() & 1) != 0 || (sub_1ABAA57E0(), sub_1ABA7D6F8(), (sub_1ABF248D4()))
  {
  }

  sub_1ABA7D6F8();
  if (sub_1ABF248D4())
  {

LABEL_14:
  }

  sub_1ABAA57E0();
  sub_1ABA7D6F8();
  v21 = sub_1ABF248D4();

  if (v21)
  {
    goto LABEL_14;
  }

  sub_1ABA7D6F8();
  if (sub_1ABF248D4())
  {
  }

  sub_1ABAA57E0();
  sub_1ABA7D6F8();
  v22 = sub_1ABF248D4();

  if (v22)
  {
  }

  sub_1ABA7D6F8();
  sub_1ABF248D4();
}

uint64_t sub_1ABC13030(void *a1)
{
  sub_1ABC1289C(a1, &v13);
  v1 = v13;
  if ((sub_1ABAB0550(v13, 1) & 1) == 0 && (sub_1ABAB0550(v1, 0) & 1) == 0)
  {
    LOBYTE(v13) = v1;
    v3 = PersonEntityTagType.allParentTagTypes.getter();
    v4 = sub_1ABE8B4D4(&unk_1F2091928);
    v5 = sub_1ABB13550(v1, v4);

    v6 = sub_1ABE8B4D4(&unk_1F2091980);
    if (v5)
    {
      v7 = &unk_1F2091928;
    }

    else
    {
      v8 = sub_1ABB13550(v1, v6);

      if ((v8 & 1) == 0)
      {
        if ((sub_1ABAB0550(v1, 2) & 1) == 0)
        {
          v12 = MEMORY[0x1E69E7CD0];
          goto LABEL_12;
        }

        v11 = sub_1ABE8B4D4(&unk_1F20918F0);
LABEL_11:
        v12 = v11;
LABEL_12:
        v13 = MEMORY[0x1E69E7CC8];
        sub_1ABC10838(v12, &v13, 0.0);

        sub_1ABC10838(v3, &v13, 1.0);

        return v13;
      }

      v6 = sub_1ABE8B4D4(&unk_1F2091928);
      v7 = &unk_1F2091980;
    }

    v9 = sub_1ABE8B4D4(v7);
    v10 = sub_1ABC10A34(v3, v9, sub_1ABC13C64, sub_1ABC14228);
    sub_1ABD92014(v10, v6);
    goto LABEL_11;
  }

  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

uint64_t PersonEntityTagType.allParentTagTypes.getter()
{
  v1 = *v0;
  switch(*v0)
  {
    case 4:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 5636;
      goto LABEL_26;
    case 5:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1029;
      goto LABEL_19;
    case 6:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362182;
      goto LABEL_22;
    case 7:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362183;
      goto LABEL_22;
    case 8:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1032;
      goto LABEL_19;
    case 9:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362953;
      goto LABEL_22;
    case 10:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362954;
      goto LABEL_22;
    case 11:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1035;
      goto LABEL_19;
    case 12:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369363724;
      goto LABEL_22;
    case 13:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369363725;
      goto LABEL_22;
    case 14:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364750;
      goto LABEL_22;
    case 15:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1039;
      goto LABEL_19;
    case 16:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364752;
      goto LABEL_22;
    case 17:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364753;
      goto LABEL_22;
    case 18:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1042;
LABEL_19:
      *(inited + 32) = v3;
      v6 = 22;
      goto LABEL_20;
    case 19:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369365523;
      goto LABEL_22;
    case 20:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369365524;
LABEL_22:
      *(inited + 32) = v4;
      return sub_1ABE8B4D4(inited);
    case 21:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 5653;
      goto LABEL_26;
    case 27:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      *(inited + 32) = 7195;
      v6 = 29;
LABEL_20:
      *(inited + 34) = v6;
      return sub_1ABE8B4D4(inited);
    case 28:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 7195;
      goto LABEL_26;
    case 29:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 7451;
LABEL_26:
      *(inited + 32) = v5;
      break;
    default:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v1;
      break;
  }

  return sub_1ABE8B4D4(inited);
}

unint64_t sub_1ABC136C0()
{
  result = qword_1EB4D5738;
  if (!qword_1EB4D5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5738);
  }

  return result;
}

uint64_t sub_1ABC13714(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1ABF25234();

    sub_1ABF23D34();
    result = sub_1ABF25294();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABC13930(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1ABF25234();
    PersonEntityTagType.rawValue.getter();
    sub_1ABF23D34();

    result = sub_1ABF25294();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABC13B50(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result + 56;
    sub_1ABA7E5E8();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;

    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v5 &= v5 - 1;

      sub_1ABB22428();
    }

    while (v5);
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_1ABC13C64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_10:
          v5 &= v5 - 1;
          sub_1ABB2252C();
        }

        while (v5);
        continue;
      }
    }
  }
}

uint64_t sub_1ABC13D68(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      sub_1ABA80858();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      sub_1ABF25234();

      sub_1ABF23D34();
      v23 = sub_1ABF25294();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (*(v5 + 48) + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (sub_1ABF25054() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v56 = v50;
      v57 = v16;
      v58 = v11;
      v3 = v53;
      v12 = v54;
      v55[0] = v54;
      v55[1] = v53;

      v28 = *(v5 + 32);
      v47 = ((1 << v28) + 63) >> 6;
      v2 = 8 * v47;
      if ((v28 & 0x3Fu) > 0xD)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v48 = &v46;
        MEMORY[0x1EEE9AC00](v27);
        v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, (v5 + 56), v2);
        v29 = *(v7 + 8 * v4) & ~v8;
        v30 = *(v5 + 16);
        v51 = v7;
        *(v7 + 8 * v4) = v29;
        v31 = v30 - 1;
        v32 = v52;
        while (1)
        {
          v49 = v31;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          sub_1ABA80858();
          v35 = (*(v12 + 48) + ((v16 << 10) | (16 * v34)));
          v2 = *v35;
          v36 = v35[1];
          sub_1ABF25234();

          sub_1ABF23D34();
          v37 = sub_1ABF25294();
          v38 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v37 & v38;
            v7 = (v37 & v38) >> 6;
            v8 = 1 << (v37 & v38);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v53;
              v12 = v54;
              v32 = v52;
              goto LABEL_23;
            }

            v39 = (*(v5 + 48) + 16 * v4);
            if (*v39 == v2 && v39[1] == v36)
            {
              break;
            }

            v41 = sub_1ABF25054();
            v37 = v4 + 1;
          }

          while ((v41 & 1) == 0);

          v42 = v51[v7];
          v51[v7] = v42 & ~v8;
          v3 = v53;
          v12 = v54;
          v32 = v52;
          if ((v42 & v8) == 0)
          {
            goto LABEL_23;
          }

          v31 = v49 - 1;
          if (__OFSUB__(v49, 1))
          {
            __break(1u);
          }

          if (v49 == 1)
          {

            v5 = MEMORY[0x1E69E7CD0];
            goto LABEL_42;
          }
        }

        while (1)
        {
          v33 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            v5 = sub_1ABC13714(v51, v47, v49, v5);
            goto LABEL_42;
          }

          v11 = *(v3 + 8 * v33);
          ++v16;
          if (v11)
          {
            v16 = v33;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v44 = swift_slowAlloc();
      v45 = sub_1ABC16280(v44, v47, (v5 + 56), v47, v5, v7, v55);

      MEMORY[0x1AC5AB8B0](v44, -1, -1);
      v12 = v55[0];
      v50 = v56;
      v5 = v45;
LABEL_42:
      v14 = v12;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_47;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    sub_1ABAB4C48(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1ABC14228(size_t a1, uint64_t a2)
{
  v5 = a2;
  v92 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v6 = a1;
    v75 = 0;
    v7 = *(a1 + 56);
    v83 = a1 + 56;
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v80 = ~v9;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v7;
    v81 = (63 - v9) >> 6;
    v82 = 0x80000001ABF81E70;
    v86 = (a2 + 56);

    v11 = 0;
    do
    {
LABEL_5:
      if (!v10)
      {
        v12 = v11;
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_200;
          }

          if (v13 >= v81)
          {
            break;
          }

          v10 = *(v83 + 8 * v13);
          ++v12;
          if (v10)
          {
            v11 = v13;
            goto LABEL_11;
          }
        }

        v37 = v6;
        goto LABEL_197;
      }

LABEL_11:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v6 + 48) + (v14 | (v11 << 6)));
      sub_1ABF25234();
      sub_1ABF23D34();

      v16 = sub_1ABF25294();
      v17 = -1 << *(v5 + 32);
      v2 = v16 & ~v17;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v86[v2 >> 6]) == 0);
    v84 = v6;
    v85 = ~v17;
    while (1)
    {
      v18 = 0xE500000000000000;
      v19 = 0x7465736E75;
      switch(*(*(v5 + 48) + v2))
      {
        case 1:
          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v19 = 0x726568746FLL;
          break;
        case 3:
          v18 = 0xE600000000000000;
          v19 = 0x666C6573796DLL;
          break;
        case 4:
          v18 = 0xE600000000000000;
          v19 = 0x796C696D6166;
          break;
        case 5:
          v18 = 0xE600000000000000;
          v19 = 0x746E65726170;
          break;
        case 6:
          v19 = 0x726568746F6DLL;
          v18 = 0xE600000000000000;
          break;
        case 7:
          v18 = 0xE600000000000000;
          v24 = 1752457574;
          goto LABEL_40;
        case 8:
          v18 = 0xE700000000000000;
          v19 = 0x676E696C626973;
          break;
        case 9:
          v18 = 0xE700000000000000;
          v23 = 0x6568746F7262;
          goto LABEL_38;
        case 0xA:
          v18 = 0xE600000000000000;
          v24 = 1953720691;
LABEL_40:
          v19 = v24 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v19 = 0x726150646E617267;
          v22 = 7630437;
          goto LABEL_35;
        case 0xC:
          v19 = 0x746F6D646E617267;
          goto LABEL_34;
        case 0xD:
          v19 = 0x746166646E617267;
LABEL_34:
          v22 = 7497064;
LABEL_35:
          v18 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v18 = 0xE700000000000000;
          v21 = 0x6C696843796DLL;
          goto LABEL_30;
        case 0xF:
          v19 = 0x646C696863;
          break;
        case 0x10:
          v18 = 0xE300000000000000;
          v19 = 7237491;
          break;
        case 0x11:
          v18 = 0xE800000000000000;
          v25 = 0x746867756164;
          goto LABEL_45;
        case 0x12:
          v18 = 0xE700000000000000;
          v23 = 0x656E74726170;
LABEL_38:
          v19 = v23 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v18 = 0xE400000000000000;
          v19 = 1701210487;
          break;
        case 0x14:
          v18 = 0xE700000000000000;
          v21 = 0x6E6162737568;
LABEL_30:
          v19 = v21 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v18 = 0xE600000000000000;
          v19 = 0x646E65697266;
          break;
        case 0x16:
          v19 = 0xD000000000000010;
          v18 = v82;
          break;
        case 0x17:
          v18 = 0xE800000000000000;
          v25 = 0x6B726F776F63;
LABEL_45:
          v19 = v25 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v18 = 0xE800000000000000;
          v19 = 0x726F62686769656ELL;
          break;
        case 0x19:
          v19 = 0x74616D6573756F68;
          v18 = 0xE900000000000065;
          break;
        case 0x1A:
          v18 = 0xE600000000000000;
          v19 = 0x696E6D756C61;
          break;
        case 0x1B:
          v20 = 1699772781;
          goto LABEL_48;
        case 0x1C:
          v19 = 0x676F44796DLL;
          break;
        case 0x1D:
          v20 = 1631811949;
LABEL_48:
          v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v26 = 0xE500000000000000;
      v27 = 0x7465736E75;
      switch(v15)
      {
        case 1:
          v26 = 0xE700000000000000;
          v27 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v27 = 0x726568746FLL;
          break;
        case 3:
          v26 = 0xE600000000000000;
          v27 = 0x666C6573796DLL;
          break;
        case 4:
          v26 = 0xE600000000000000;
          v27 = 0x796C696D6166;
          break;
        case 5:
          v26 = 0xE600000000000000;
          v27 = 0x746E65726170;
          break;
        case 6:
          v27 = 0x726568746F6DLL;
          v26 = 0xE600000000000000;
          break;
        case 7:
          v26 = 0xE600000000000000;
          v32 = 1752457574;
          goto LABEL_77;
        case 8:
          v26 = 0xE700000000000000;
          v27 = 0x676E696C626973;
          break;
        case 9:
          v26 = 0xE700000000000000;
          v31 = 0x6568746F7262;
          goto LABEL_75;
        case 10:
          v26 = 0xE600000000000000;
          v32 = 1953720691;
LABEL_77:
          v27 = v32 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          v27 = 0x726150646E617267;
          v30 = 7630437;
          goto LABEL_72;
        case 12:
          v27 = 0x746F6D646E617267;
          goto LABEL_71;
        case 13:
          v27 = 0x746166646E617267;
LABEL_71:
          v30 = 7497064;
LABEL_72:
          v26 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v26 = 0xE700000000000000;
          v29 = 0x6C696843796DLL;
          goto LABEL_67;
        case 15:
          v27 = 0x646C696863;
          break;
        case 16:
          v26 = 0xE300000000000000;
          v27 = 7237491;
          break;
        case 17:
          v26 = 0xE800000000000000;
          v33 = 0x746867756164;
          goto LABEL_82;
        case 18:
          v26 = 0xE700000000000000;
          v31 = 0x656E74726170;
LABEL_75:
          v27 = v31 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v26 = 0xE400000000000000;
          v27 = 1701210487;
          break;
        case 20:
          v26 = 0xE700000000000000;
          v29 = 0x6E6162737568;
LABEL_67:
          v27 = v29 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v26 = 0xE600000000000000;
          v27 = 0x646E65697266;
          break;
        case 22:
          v27 = 0xD000000000000010;
          v26 = v82;
          break;
        case 23:
          v26 = 0xE800000000000000;
          v33 = 0x6B726F776F63;
LABEL_82:
          v27 = v33 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v26 = 0xE800000000000000;
          v27 = 0x726F62686769656ELL;
          break;
        case 25:
          v27 = 0x74616D6573756F68;
          v26 = 0xE900000000000065;
          break;
        case 26:
          v26 = 0xE600000000000000;
          v27 = 0x696E6D756C61;
          break;
        case 27:
          v28 = 1699772781;
          goto LABEL_85;
        case 28:
          v27 = 0x676F44796DLL;
          break;
        case 29:
          v28 = 1631811949;
LABEL_85:
          v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v19 == v27 && v18 == v26)
      {
        v89 = v80;
        v90 = v11;
        v91 = v10;
        v87 = v84;
        v88 = v83;

        goto LABEL_98;
      }

      v35 = sub_1ABF25054();

      if (v35)
      {
        break;
      }

      v2 = (v2 + 1) & v85;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v86[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v84;
        goto LABEL_5;
      }
    }

    v89 = v80;
    v90 = v11;
    v91 = v10;
    v87 = v84;
    v88 = v83;
LABEL_98:
    v38 = *(v5 + 32);
    v76 = ((1 << v38) + 63) >> 6;
    v6 = 8 * v76;
    if ((v38 & 0x3Fu) > 0xD)
    {
      goto LABEL_201;
    }

    while (1)
    {
      v77 = &v74;
      MEMORY[0x1EEE9AC00](v36);
      v39 = &v74 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v39, v86, v6);
      v40 = *(v5 + 16);
      v41 = *&v39[8 * v3] & ~v4;
      v79 = v39;
      *&v39[8 * v3] = v41;
      v42 = v40 - 1;
      v6 = v84;
LABEL_100:
      v78 = v42;
LABEL_101:
      while (v10)
      {
LABEL_107:
        v44 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v45 = *(*(v6 + 48) + (v44 | (v11 << 6)));
        sub_1ABF25234();
        v85 = v45;
        sub_1ABF23D34();

        v46 = sub_1ABF25294();
        v47 = -1 << *(v5 + 32);
        v4 = v46 & ~v47;
        v48 = v4 >> 6;
        v3 = 1 << v4;
        if (((1 << v4) & v86[v4 >> 6]) != 0)
        {
          v49 = ~v47;
          while (1)
          {
            v50 = 0xE500000000000000;
            v51 = 0x7465736E75;
            switch(*(*(v5 + 48) + v4))
            {
              case 1:
                v50 = 0xE700000000000000;
                v51 = 0x6E776F6E6B6E75;
                break;
              case 2:
                v51 = 0x726568746FLL;
                break;
              case 3:
                v50 = 0xE600000000000000;
                v51 = 0x666C6573796DLL;
                break;
              case 4:
                v50 = 0xE600000000000000;
                v51 = 0x796C696D6166;
                break;
              case 5:
                v50 = 0xE600000000000000;
                v51 = 0x746E65726170;
                break;
              case 6:
                v51 = 0x726568746F6DLL;
                v50 = 0xE600000000000000;
                break;
              case 7:
                v50 = 0xE600000000000000;
                v56 = 1752457574;
                goto LABEL_136;
              case 8:
                v50 = 0xE700000000000000;
                v51 = 0x676E696C626973;
                break;
              case 9:
                v50 = 0xE700000000000000;
                v55 = 0x6568746F7262;
                goto LABEL_134;
              case 0xA:
                v50 = 0xE600000000000000;
                v56 = 1953720691;
LABEL_136:
                v51 = v56 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                break;
              case 0xB:
                v51 = 0x726150646E617267;
                v54 = 7630437;
                goto LABEL_131;
              case 0xC:
                v51 = 0x746F6D646E617267;
                goto LABEL_130;
              case 0xD:
                v51 = 0x746166646E617267;
LABEL_130:
                v54 = 7497064;
LABEL_131:
                v50 = v54 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0xE:
                v50 = 0xE700000000000000;
                v53 = 0x6C696843796DLL;
                goto LABEL_126;
              case 0xF:
                v51 = 0x646C696863;
                break;
              case 0x10:
                v50 = 0xE300000000000000;
                v51 = 7237491;
                break;
              case 0x11:
                v50 = 0xE800000000000000;
                v57 = 0x746867756164;
                goto LABEL_141;
              case 0x12:
                v50 = 0xE700000000000000;
                v55 = 0x656E74726170;
LABEL_134:
                v51 = v55 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                break;
              case 0x13:
                v50 = 0xE400000000000000;
                v51 = 1701210487;
                break;
              case 0x14:
                v50 = 0xE700000000000000;
                v53 = 0x6E6162737568;
LABEL_126:
                v51 = v53 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                break;
              case 0x15:
                v50 = 0xE600000000000000;
                v51 = 0x646E65697266;
                break;
              case 0x16:
                v51 = 0xD000000000000010;
                v50 = v82;
                break;
              case 0x17:
                v50 = 0xE800000000000000;
                v57 = 0x6B726F776F63;
LABEL_141:
                v51 = v57 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                break;
              case 0x18:
                v50 = 0xE800000000000000;
                v51 = 0x726F62686769656ELL;
                break;
              case 0x19:
                v51 = 0x74616D6573756F68;
                v50 = 0xE900000000000065;
                break;
              case 0x1A:
                v50 = 0xE600000000000000;
                v51 = 0x696E6D756C61;
                break;
              case 0x1B:
                v52 = 1699772781;
                goto LABEL_144;
              case 0x1C:
                v51 = 0x676F44796DLL;
                break;
              case 0x1D:
                v52 = 1631811949;
LABEL_144:
                v51 = v52 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
                break;
              default:
                break;
            }

            v58 = 0xE500000000000000;
            v59 = 0x7465736E75;
            switch(v85)
            {
              case 1:
                v58 = 0xE700000000000000;
                v59 = 0x6E776F6E6B6E75;
                break;
              case 2:
                v59 = 0x726568746FLL;
                break;
              case 3:
                v58 = 0xE600000000000000;
                v59 = 0x666C6573796DLL;
                break;
              case 4:
                v58 = 0xE600000000000000;
                v59 = 0x796C696D6166;
                break;
              case 5:
                v58 = 0xE600000000000000;
                v59 = 0x746E65726170;
                break;
              case 6:
                v59 = 0x726568746F6DLL;
                v58 = 0xE600000000000000;
                break;
              case 7:
                v58 = 0xE600000000000000;
                v64 = 1752457574;
                goto LABEL_173;
              case 8:
                v58 = 0xE700000000000000;
                v59 = 0x676E696C626973;
                break;
              case 9:
                v58 = 0xE700000000000000;
                v63 = 0x6568746F7262;
                goto LABEL_171;
              case 10:
                v58 = 0xE600000000000000;
                v64 = 1953720691;
LABEL_173:
                v59 = v64 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                break;
              case 11:
                v59 = 0x726150646E617267;
                v62 = 7630437;
                goto LABEL_168;
              case 12:
                v59 = 0x746F6D646E617267;
                goto LABEL_167;
              case 13:
                v59 = 0x746166646E617267;
LABEL_167:
                v62 = 7497064;
LABEL_168:
                v58 = v62 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 14:
                v58 = 0xE700000000000000;
                v61 = 0x6C696843796DLL;
                goto LABEL_163;
              case 15:
                v59 = 0x646C696863;
                break;
              case 16:
                v58 = 0xE300000000000000;
                v59 = 7237491;
                break;
              case 17:
                v58 = 0xE800000000000000;
                v65 = 0x746867756164;
                goto LABEL_178;
              case 18:
                v58 = 0xE700000000000000;
                v63 = 0x656E74726170;
LABEL_171:
                v59 = v63 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                break;
              case 19:
                v58 = 0xE400000000000000;
                v59 = 1701210487;
                break;
              case 20:
                v58 = 0xE700000000000000;
                v61 = 0x6E6162737568;
LABEL_163:
                v59 = v61 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                break;
              case 21:
                v58 = 0xE600000000000000;
                v59 = 0x646E65697266;
                break;
              case 22:
                v59 = 0xD000000000000010;
                v58 = v82;
                break;
              case 23:
                v58 = 0xE800000000000000;
                v65 = 0x6B726F776F63;
LABEL_178:
                v59 = v65 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                break;
              case 24:
                v58 = 0xE800000000000000;
                v59 = 0x726F62686769656ELL;
                break;
              case 25:
                v59 = 0x74616D6573756F68;
                v58 = 0xE900000000000065;
                break;
              case 26:
                v58 = 0xE600000000000000;
                v59 = 0x696E6D756C61;
                break;
              case 27:
                v60 = 1699772781;
                goto LABEL_181;
              case 28:
                v59 = 0x676F44796DLL;
                break;
              case 29:
                v60 = 1631811949;
LABEL_181:
                v59 = v60 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
                break;
              default:
                break;
            }

            if (v51 == v59 && v50 == v58)
            {
              break;
            }

            v67 = sub_1ABF25054();

            if (v67)
            {
              goto LABEL_191;
            }

            v4 = (v4 + 1) & v49;
            v48 = v4 >> 6;
            v3 = 1 << v4;
            if ((v86[v4 >> 6] & (1 << v4)) == 0)
            {
              v6 = v84;
              goto LABEL_101;
            }
          }

LABEL_191:
          v68 = v79[v48];
          v79[v48] = v68 & ~v3;
          v6 = v84;
          if ((v68 & v3) != 0)
          {
            v42 = v78 - 1;
            if (__OFSUB__(v78, 1))
            {
              __break(1u);
            }

            if (v78 == 1)
            {

              v5 = MEMORY[0x1E69E7CD0];
              goto LABEL_196;
            }

            goto LABEL_100;
          }
        }
      }

      v2 = v83;
      while (1)
      {
        v43 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v43 >= v81)
        {
          v5 = sub_1ABC13930(v79, v76, v78, v5);
          goto LABEL_196;
        }

        v10 = *(v83 + 8 * v43);
        ++v11;
        if (v10)
        {
          v11 = v43;
          goto LABEL_107;
        }
      }

      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v70 = swift_slowAlloc();
    v71 = v75;
    v72 = sub_1ABC16308(v70, v76, v86, v76, v5, v2, &v87);
    if (!v71)
    {
      v73 = v72;

      MEMORY[0x1AC5AB8B0](v70, -1, -1);
      v6 = v87;
      v80 = v89;
      v5 = v73;
LABEL_196:
      v37 = v6;
LABEL_197:
      sub_1ABAB4C48(v37);
      return v5;
    }

    result = MEMORY[0x1AC5AB8B0](v70, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t *sub_1ABC156E4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1ABF25234();

    sub_1ABF23D34();
    v16 = sub_1ABF25294();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1ABF25054();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1ABC13714(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1ABC158D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = result;
  v5 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v39 = a3 + 56;
  while (2)
  {
    v36 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v7;
            a5[4] = 0;

            return sub_1ABC13930(v37, a2, v36, a3);
          }

          v8 = *(a5[1] + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_98;
      }

      v9 = a5[3];
LABEL_8:
      v10 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      sub_1ABF25234();
      sub_1ABF23D34();

      result = sub_1ABF25294();
      v11 = -1 << *(a3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = 1 << v12;
      if (((1 << v12) & *(v39 + 8 * (v12 >> 6))) != 0)
      {
        v15 = ~v11;
        while (1)
        {
          v16 = 0xE500000000000000;
          v17 = 0x7465736E75;
          switch(*(*(a3 + 48) + v12))
          {
            case 1:
              v16 = 0xE700000000000000;
              v17 = 0x6E776F6E6B6E75;
              break;
            case 2:
              v17 = 0x726568746FLL;
              break;
            case 3:
              v16 = 0xE600000000000000;
              v17 = 0x666C6573796DLL;
              break;
            case 4:
              v16 = 0xE600000000000000;
              v17 = 0x796C696D6166;
              break;
            case 5:
              v16 = 0xE600000000000000;
              v17 = 0x746E65726170;
              break;
            case 6:
              v17 = 0x726568746F6DLL;
              v16 = 0xE600000000000000;
              break;
            case 7:
              v16 = 0xE600000000000000;
              v22 = 1752457574;
              goto LABEL_37;
            case 8:
              v16 = 0xE700000000000000;
              v17 = 0x676E696C626973;
              break;
            case 9:
              v16 = 0xE700000000000000;
              v21 = 0x6568746F7262;
              goto LABEL_35;
            case 0xA:
              v16 = 0xE600000000000000;
              v22 = 1953720691;
LABEL_37:
              v17 = v22 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              break;
            case 0xB:
              v17 = 0x726150646E617267;
              v20 = 7630437;
              goto LABEL_32;
            case 0xC:
              v17 = 0x746F6D646E617267;
              goto LABEL_31;
            case 0xD:
              v17 = 0x746166646E617267;
LABEL_31:
              v20 = 7497064;
LABEL_32:
              v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 0xE:
              v16 = 0xE700000000000000;
              v19 = 0x6C696843796DLL;
              goto LABEL_27;
            case 0xF:
              v17 = 0x646C696863;
              break;
            case 0x10:
              v16 = 0xE300000000000000;
              v17 = 7237491;
              break;
            case 0x11:
              v16 = 0xE800000000000000;
              v23 = 0x746867756164;
              goto LABEL_42;
            case 0x12:
              v16 = 0xE700000000000000;
              v21 = 0x656E74726170;
LABEL_35:
              v17 = v21 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              break;
            case 0x13:
              v16 = 0xE400000000000000;
              v17 = 1701210487;
              break;
            case 0x14:
              v16 = 0xE700000000000000;
              v19 = 0x6E6162737568;
LABEL_27:
              v17 = v19 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              break;
            case 0x15:
              v16 = 0xE600000000000000;
              v17 = 0x646E65697266;
              break;
            case 0x16:
              v17 = 0xD000000000000010;
              v16 = 0x80000001ABF81E70;
              break;
            case 0x17:
              v16 = 0xE800000000000000;
              v23 = 0x6B726F776F63;
LABEL_42:
              v17 = v23 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              break;
            case 0x18:
              v16 = 0xE800000000000000;
              v17 = 0x726F62686769656ELL;
              break;
            case 0x19:
              v17 = 0x74616D6573756F68;
              v16 = 0xE900000000000065;
              break;
            case 0x1A:
              v16 = 0xE600000000000000;
              v17 = 0x696E6D756C61;
              break;
            case 0x1B:
              v18 = 1699772781;
              goto LABEL_45;
            case 0x1C:
              v17 = 0x676F44796DLL;
              break;
            case 0x1D:
              v18 = 1631811949;
LABEL_45:
              v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
              break;
            default:
              break;
          }

          v24 = 0xE500000000000000;
          v25 = 0x7465736E75;
          switch(v10)
          {
            case 1:
              v24 = 0xE700000000000000;
              v25 = 0x6E776F6E6B6E75;
              break;
            case 2:
              v25 = 0x726568746FLL;
              break;
            case 3:
              v24 = 0xE600000000000000;
              v25 = 0x666C6573796DLL;
              break;
            case 4:
              v24 = 0xE600000000000000;
              v25 = 0x796C696D6166;
              break;
            case 5:
              v24 = 0xE600000000000000;
              v25 = 0x746E65726170;
              break;
            case 6:
              v25 = 0x726568746F6DLL;
              v24 = 0xE600000000000000;
              break;
            case 7:
              v24 = 0xE600000000000000;
              v30 = 1752457574;
              goto LABEL_74;
            case 8:
              v24 = 0xE700000000000000;
              v25 = 0x676E696C626973;
              break;
            case 9:
              v24 = 0xE700000000000000;
              v29 = 0x6568746F7262;
              goto LABEL_72;
            case 10:
              v24 = 0xE600000000000000;
              v30 = 1953720691;
LABEL_74:
              v25 = v30 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              break;
            case 11:
              v25 = 0x726150646E617267;
              v28 = 7630437;
              goto LABEL_69;
            case 12:
              v25 = 0x746F6D646E617267;
              goto LABEL_68;
            case 13:
              v25 = 0x746166646E617267;
LABEL_68:
              v28 = 7497064;
LABEL_69:
              v24 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 14:
              v24 = 0xE700000000000000;
              v27 = 0x6C696843796DLL;
              goto LABEL_64;
            case 15:
              v25 = 0x646C696863;
              break;
            case 16:
              v24 = 0xE300000000000000;
              v25 = 7237491;
              break;
            case 17:
              v24 = 0xE800000000000000;
              v31 = 0x746867756164;
              goto LABEL_79;
            case 18:
              v24 = 0xE700000000000000;
              v29 = 0x656E74726170;
LABEL_72:
              v25 = v29 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              break;
            case 19:
              v24 = 0xE400000000000000;
              v25 = 1701210487;
              break;
            case 20:
              v24 = 0xE700000000000000;
              v27 = 0x6E6162737568;
LABEL_64:
              v25 = v27 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              break;
            case 21:
              v24 = 0xE600000000000000;
              v25 = 0x646E65697266;
              break;
            case 22:
              v25 = 0xD000000000000010;
              v24 = 0x80000001ABF81E70;
              break;
            case 23:
              v24 = 0xE800000000000000;
              v31 = 0x6B726F776F63;
LABEL_79:
              v25 = v31 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              break;
            case 24:
              v24 = 0xE800000000000000;
              v25 = 0x726F62686769656ELL;
              break;
            case 25:
              v25 = 0x74616D6573756F68;
              v24 = 0xE900000000000065;
              break;
            case 26:
              v24 = 0xE600000000000000;
              v25 = 0x696E6D756C61;
              break;
            case 27:
              v26 = 1699772781;
              goto LABEL_82;
            case 28:
              v25 = 0x676F44796DLL;
              break;
            case 29:
              v26 = 1631811949;
LABEL_82:
              v25 = v26 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
              break;
            default:
              break;
          }

          if (v17 == v25 && v16 == v24)
          {
            break;
          }

          v33 = sub_1ABF25054();

          if (v33)
          {
            goto LABEL_92;
          }

          v12 = (v12 + 1) & v15;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if ((*(v39 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_92:
        v34 = v37[v13];
        v37[v13] = v34 & ~v14;
        if ((v34 & v14) != 0)
        {
          break;
        }
      }
    }

    v6 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
LABEL_98:
      __break(1u);
      return result;
    }

    if (v36 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

unint64_t *sub_1ABC16280(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1ABC156E4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1ABC16308(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1ABC158D0(a1, a2, a5, a6, a7);

  return v12;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingHeuristicModel.ETHeuristicError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC16440()
{
  result = qword_1EB4D5740;
  if (!qword_1EB4D5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5740);
  }

  return result;
}

uint64_t sub_1ABC164B0(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D57A8, &qword_1ABF4B3D8);
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC1B464();
  sub_1ABF252E4();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1ABC165E0(uint64_t a1)
{
  v2 = sub_1ABC1B464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1661C(uint64_t a1)
{
  v2 = sub_1ABC1B464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC16688(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8F224(sub_1ABC166A4, 0);
}

uint64_t sub_1ABC166A4()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC16718, v1, 0);
}

uint64_t sub_1ABC16718()
{
  sub_1ABA7BBF8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 24);

  return v1(v2);
}