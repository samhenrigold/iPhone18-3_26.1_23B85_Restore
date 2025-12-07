uint64_t sub_15B30C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_1B4CF4();

  swift_getWitnessTable();
  return sub_1B43C4();
}

uint64_t sub_15B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  (*(v7 + 16))(v10, a2, AssociatedTypeWitness);
  sub_1B4CF4();
  sub_1B4CE4();
  return (*(v7 + 8))(v12, AssociatedTypeWitness);
}

unint64_t sub_15B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1B4784();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_15B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4744();

  return sub_15B608(a1, v6, a2, a3);
}

uint64_t sub_15B7EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B4204();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1B41D4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_15B8E0(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 384 * a1), __src, 0x179uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15B958(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + (result << 6));
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_15B9AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_15BA68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1B40F4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_15BB28(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_15BB6C(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 568 * a1), a2, 0x231uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_15BBE8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_15BC2C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BC84(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BCE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_15BD28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

void *sub_15BD78(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 568 * a1), __src, 0x231uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BDE8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_15BE48(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159818(v4, v2, v10);
}

uint64_t sub_15BE9C(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v90 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v51 = (v90 + 144 * v5);
    v52 = v51[5];
    v53 = v51[7];
    v87 = v51[6];
    v88[0] = v53;
    *(v88 + 9) = *(v51 + 121);
    v54 = v51[1];
    v55 = v51[3];
    v83 = v51[2];
    v84 = v55;
    v56 = v51[3];
    v57 = v51[5];
    v85 = v51[4];
    v86 = v57;
    v58 = v51[1];
    v81 = *v51;
    v82 = v58;
    v59 = v51[7];
    *&v89[96] = v87;
    *&v89[112] = v59;
    *&v89[121] = *(v51 + 121);
    *&v89[32] = v83;
    *&v89[48] = v56;
    *&v89[64] = v85;
    *&v89[80] = v52;
    *v89 = v81;
    *&v89[16] = v54;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      AuthorRecommendationSource.id.getter();
      sub_43050(&v81, &v72, &qword_229248, &qword_1BC328);
      while (1)
      {
        v87 = *&v89[96];
        v88[0] = *&v89[112];
        *(v88 + 9) = *&v89[121];
        v83 = *&v89[32];
        v84 = *&v89[48];
        v85 = *&v89[64];
        v86 = *&v89[80];
        v81 = *v89;
        v82 = *&v89[16];
        result = sub_15C2A4(&v81);
        if (result == 1)
        {
          return result;
        }

        v8 = *v89;
        v78 = *&v89[104];
        v79 = *&v89[120];
        v80 = v89[136];
        v74 = *&v89[40];
        v75 = *&v89[56];
        v76 = *&v89[72];
        v77 = *&v89[88];
        v72 = *&v89[8];
        v73 = *&v89[24];
        v9 = *a3;
        v10 = sub_43124(*v89);
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v40 = v10;
        sub_1856D0();
        v10 = v40;
        if (v16)
        {
LABEL_9:
          v18 = *a3;
          v19 = 136 * v10;
          v20 = *(*a3 + 56) + 136 * v10;
          v61 = *v20;
          v21 = *(v20 + 64);
          v23 = *(v20 + 16);
          v22 = *(v20 + 32);
          v64 = *(v20 + 48);
          v65 = v21;
          v62 = v23;
          v63 = v22;
          v25 = *(v20 + 96);
          v24 = *(v20 + 112);
          v26 = *(v20 + 80);
          v69 = *(v20 + 128);
          v67 = v25;
          v68 = v24;
          v66 = v26;
          sub_429F8(&v61, v70);
          sub_5C740(&v72);
          v27 = *(v18 + 56) + v19;
          v28 = *(v27 + 80);
          v29 = *(v27 + 96);
          v30 = *(v27 + 112);
          v71 = *(v27 + 128);
          v70[6] = v29;
          v70[7] = v30;
          v70[5] = v28;
          v32 = *(v27 + 16);
          v31 = *(v27 + 32);
          v33 = *(v27 + 64);
          v70[3] = *(v27 + 48);
          v70[4] = v33;
          v70[0] = *v27;
          v70[1] = v32;
          v70[2] = v31;
          *v27 = v61;
          v34 = v62;
          v35 = v63;
          v36 = v65;
          *(v27 + 48) = v64;
          *(v27 + 64) = v36;
          *(v27 + 16) = v34;
          *(v27 + 32) = v35;
          v37 = v66;
          v38 = v67;
          v39 = v68;
          *(v27 + 128) = v69;
          *(v27 + 96) = v38;
          *(v27 + 112) = v39;
          *(v27 + 80) = v37;
          sub_5C740(v70);
          goto LABEL_13;
        }

LABEL_11:
        v41 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v41[6] + 8 * v10) = v8;
        v42 = v41[7] + 136 * v10;
        *v42 = v72;
        v43 = v73;
        v44 = v74;
        v45 = v76;
        *(v42 + 48) = v75;
        *(v42 + 64) = v45;
        *(v42 + 16) = v43;
        *(v42 + 32) = v44;
        v46 = v77;
        v47 = v78;
        v48 = v79;
        *(v42 + 128) = v80;
        *(v42 + 96) = v47;
        *(v42 + 112) = v48;
        *(v42 + 80) = v46;
        v49 = v41[2];
        v14 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v41[2] = v50;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_15C2BC(&v81);
        *&v89[96] = v87;
        *&v89[112] = v88[0];
        *&v89[121] = *(v88 + 9);
        *&v89[32] = v83;
        *&v89[48] = v84;
        *&v89[64] = v85;
        *&v89[80] = v86;
        v5 = v6;
        *v89 = v81;
        *&v89[16] = v82;
      }

      sub_17DB74(v15, a2 & 1);
      v10 = sub_43124(v8);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15C250(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159A3C(v4, v2, v10);
}

uint64_t sub_15C2A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_15C2BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_15C2D8(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 32;
  v8 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v8)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    memcpy(v30, (v7 + 576 * v5), 0x239uLL);
    memcpy(v31, (v7 + 576 * v5), 0x239uLL);
    v15 = __OFADD__(v5++, 1);
    if (!v15)
    {
      AuthorRecommendationSource.id.getter();
      sub_43050(v30, __dst, &qword_229288, &qword_1BC350);
      while (1)
      {
        memcpy(v30, v31, 0x239uLL);
        result = sub_72A74(v30);
        if (result == 1)
        {
          return result;
        }

        v9 = v31[0];
        memcpy(__dst, &v31[1], 0x231uLL);
        v10 = *a3;
        v11 = sub_43124(v31[0]);
        v13 = *(v10 + 16);
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          __break(1u);
          goto LABEL_21;
        }

        v17 = v12;
        if (*(v10 + 24) < v16)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v22 = v11;
        sub_187328();
        v11 = v22;
        if (v17)
        {
LABEL_9:
          v19 = *a3;
          v20 = 568 * v11;
          memcpy(__src, (*(*a3 + 56) + 568 * v11), 0x231uLL);
          sub_4299C(__src, v28);
          sub_2601C(__dst);
          v21 = *(v19 + 56);
          memcpy(v28, (v21 + v20), 0x231uLL);
          memcpy((v21 + v20), __src, 0x231uLL);
          sub_2601C(v28);
          goto LABEL_13;
        }

LABEL_11:
        v23 = *a3;
        *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        *(v23[6] + 8 * v11) = v9;
        memcpy((v23[7] + 568 * v11), __dst, 0x231uLL);
        v24 = v23[2];
        v15 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        v23[2] = v25;
LABEL_13:
        a2 = 1;
        v8 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_15C54C(v30);
        memcpy(v31, v30, 0x239uLL);
        v5 = v6;
      }

      sub_17D114(v16, a2 & 1);
      v11 = sub_43124(v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15C554(char *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  memcpy(__dst, v2, 0x231uLL);
  return sub_15ADDC(v4, v3, __dst);
}

uint64_t sub_15C60C()
{
  swift_getAssociatedTypeWitness();

  return sub_1B4684();
}

uint64_t sub_15C6A4()
{
  swift_getAssociatedTypeWitness();

  return sub_1B4B24();
}

uint64_t sub_15C718(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x6000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

void *sub_15C760(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v19 = _swiftEmptySetSingleton;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_5EE90(v18))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * v14)));
    LOBYTE(v14) = *(a2 + 8);
    __src[0] = v15;
    LOBYTE(__src[1]) = v14 & 1;
    a3(__src);
    memcpy(__dst, __src, 0x231uLL);
    sub_1127B0(v16, __dst);
    memcpy(v18, v16, 0x231uLL);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v19;
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_15C8AC(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x8000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

__n128 WorkServiceConfiguration.init(version:packageBaseURLString:packageAssetIDs:mlComputeUnits:eventAggregationConfiguration:genreRecommendationConfiguration:bookSuggestionsConfiguration:bookScoringConfiguration:seedBookRecommendationConfiguration:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, _OWORD *a12, uint64_t a13)
{
  v13 = _swiftEmptyArrayStorage;
  v14 = 0x4649434550534E55;
  if (a2)
  {
    v14 = a1;
  }

  v15 = 0xEB00000000444549;
  if (a2)
  {
    v15 = a2;
  }

  *a9 = v14;
  *(a9 + 8) = v15;
  v16 = 0x80000000001D5A20;
  v17 = 0xD000000000000023;
  if (a4)
  {
    v17 = a3;
    v16 = a4;
  }

  *(a9 + 16) = v17;
  *(a9 + 24) = v16;
  if (a5)
  {
    v13 = a5;
  }

  if (a7)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  *(a9 + 32) = v13;
  *(a9 + 40) = v18;
  v19 = *(a8 + 144);
  *(a9 + 176) = *(a8 + 128);
  *(a9 + 192) = v19;
  *(a9 + 208) = *(a8 + 160);
  *(a9 + 224) = *(a8 + 176);
  v20 = *(a8 + 80);
  *(a9 + 112) = *(a8 + 64);
  *(a9 + 128) = v20;
  v21 = *(a8 + 112);
  *(a9 + 144) = *(a8 + 96);
  *(a9 + 160) = v21;
  v22 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v22;
  v23 = *(a8 + 48);
  *(a9 + 80) = *(a8 + 32);
  *(a9 + 96) = v23;
  v24 = a10[1];
  *(a9 + 232) = *a10;
  *(a9 + 248) = v24;
  v25 = *a11;
  v26 = a11[1];
  *(a9 + 264) = a10[2];
  *(a9 + 280) = v25;
  v27 = a11[2];
  *(a9 + 296) = v26;
  *(a9 + 312) = v27;
  v28 = a12[1];
  *(a9 + 328) = *a12;
  *(a9 + 344) = v28;
  result = *a13;
  v30 = *(a13 + 16);
  v31 = *(a13 + 32);
  v32 = *(a13 + 48);
  *(a9 + 424) = *(a13 + 64);
  *(a9 + 392) = v31;
  *(a9 + 408) = v32;
  *(a9 + 360) = result;
  *(a9 + 376) = v30;
  return result;
}

uint64_t WorkServiceConfiguration.init(with:)(uint64_t a1)
{

  sub_15CA70();
  swift_allocError();
  *v1 = 1;
  return swift_willThrow();
}

unint64_t sub_15CA70()
{
  result = qword_22E270;
  if (!qword_22E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E270);
  }

  return result;
}

uint64_t sub_15CAC4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x416567616B636170;
    if (a1 != 2)
    {
      v6 = 0x7475706D6F436C6DLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 0xD000000000000023;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000020;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_15CC14()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1269AC(v3, v1);
  return sub_1B5844();
}

Swift::Int sub_15CC64(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_1269AC(v4, v2);
  return sub_1B5844();
}

unint64_t sub_15CCA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_15E51C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_15CCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_15CAC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_15CD20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15E51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15CD54(uint64_t a1)
{
  v2 = sub_15D4F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15CD90(uint64_t a1)
{
  v2 = sub_15D4F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22E278, &unk_1CF5B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = *v1;
  v46 = v1[1];
  v47 = v7;
  v8 = v1[2];
  v44 = v1[3];
  v45 = v8;
  v9 = v1[4];
  v42 = v1[5];
  v43 = v9;
  v10 = *(v1 + 12);
  v78 = *(v1 + 11);
  v79 = v10;
  v80 = *(v1 + 13);
  v11 = v1[29];
  v81 = v1[28];
  v12 = *(v1 + 8);
  v74 = *(v1 + 7);
  v75 = v12;
  v13 = *(v1 + 10);
  v76 = *(v1 + 9);
  v77 = v13;
  v14 = *(v1 + 4);
  v70 = *(v1 + 3);
  v71 = v14;
  v15 = *(v1 + 6);
  v72 = *(v1 + 5);
  v73 = v15;
  v16 = v1[30];
  v17 = v1[31];
  *&v36 = v11;
  *(&v36 + 1) = v16;
  v18 = v1[33];
  v39 = v1[32];
  v40 = v17;
  v19 = v1[35];
  v37 = v1[34];
  v38 = v18;
  v41 = v19;
  v20 = v1[37];
  v32 = v1[36];
  v33 = v20;
  v21 = v1[38];
  v34 = v1[39];
  v35 = v21;
  v22 = v1[40];
  v23 = *(v1 + 43);
  v30 = *(v1 + 41);
  v31 = v23;
  v24 = *(v1 + 51);
  v84 = *(v1 + 49);
  v85 = v24;
  v86 = v1[53];
  v25 = *(v1 + 47);
  v82 = *(v1 + 45);
  v83 = v25;
  sub_2698(a1, a1[3]);
  sub_15D4F0();
  sub_1B5884();
  LOBYTE(v58) = 0;
  v26 = v48;
  sub_1B54F4();
  if (!v26)
  {
    v27 = v43;
    v48 = v22;
    v28 = v41;
    LOBYTE(v58) = 1;
    sub_1B54F4();
    *&v58 = v27;
    LOBYTE(v56[0]) = 2;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_122D64(&qword_228598, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1B5544();
    LOBYTE(v58) = 3;
    sub_1B5534();
    v66 = v78;
    v67 = v79;
    v68 = v80;
    v69 = v81;
    v62 = v74;
    v63 = v75;
    v64 = v76;
    v65 = v77;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v88 = 4;
    sub_43050(&v70, v56, &qword_22A610, &qword_1CF5C0);
    sub_2B0C(&qword_22A610, &qword_1CF5C0);
    sub_15D694(&qword_22E288, &qword_22A610, &qword_1CF5C0, sub_15D544);
    sub_1B5544();
    v56[8] = v66;
    v56[9] = v67;
    v56[10] = v68;
    v57 = v69;
    v56[4] = v62;
    v56[5] = v63;
    v56[6] = v64;
    v56[7] = v65;
    v56[0] = v58;
    v56[1] = v59;
    v56[2] = v60;
    v56[3] = v61;
    sub_42F48(v56, &qword_22A610, &qword_1CF5C0);
    v51 = v36;
    *&v52 = v40;
    *(&v52 + 1) = v39;
    *&v53 = v38;
    *(&v53 + 1) = v37;
    LOBYTE(v49[0]) = 5;
    sub_E7E30(v36, *(&v36 + 1), v40, v39, v38, v37);
    sub_2B0C(&qword_22E298, &qword_1CF5C8);
    sub_15D694(&qword_22E2A0, &qword_22E298, &qword_1CF5C8, sub_15D598);
    sub_1B5544();
    sub_E7ED4(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1));
    *&v51 = v28;
    *(&v51 + 1) = v32;
    *&v52 = v33;
    *(&v52 + 1) = v35;
    *&v53 = v34;
    *(&v53 + 1) = v48;
    LOBYTE(v49[0]) = 6;
    sub_9ADC4(v28, v32, v33, v35, v34, v48);
    sub_2B0C(&qword_22E2B0, &qword_1CF5D0);
    sub_15D694(&qword_22E2B8, &qword_22E2B0, &qword_1CF5D0, sub_15D5EC);
    sub_1B5544();
    sub_9AE5C(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1));
    v51 = v30;
    v52 = v31;
    LOBYTE(v49[0]) = 7;

    sub_2B0C(&qword_22E2C8, &unk_1CF5D8);
    sub_15D694(&qword_22E2D0, &qword_22E2C8, &unk_1CF5D8, sub_15D640);
    sub_1B5544();

    v53 = v84;
    v54 = v85;
    v55 = v86;
    v51 = v82;
    v52 = v83;
    v87 = 8;
    sub_43050(&v82, v49, &qword_22A4E8, &unk_1C01E0);
    sub_2B0C(&qword_22A4E8, &unk_1C01E0);
    sub_15D694(&qword_22E2E0, &qword_22A4E8, &unk_1C01E0, sub_15D710);
    sub_1B5544();
    v49[2] = v53;
    v49[3] = v54;
    v50 = v55;
    v49[0] = v51;
    v49[1] = v52;
    sub_42F48(v49, &qword_22A4E8, &unk_1C01E0);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_15D4F0()
{
  result = qword_22E280;
  if (!qword_22E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E280);
  }

  return result;
}

unint64_t sub_15D544()
{
  result = qword_22E290;
  if (!qword_22E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E290);
  }

  return result;
}

unint64_t sub_15D598()
{
  result = qword_22E2A8;
  if (!qword_22E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2A8);
  }

  return result;
}

unint64_t sub_15D5EC()
{
  result = qword_22E2C0;
  if (!qword_22E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2C0);
  }

  return result;
}

unint64_t sub_15D640()
{
  result = qword_22E2D8;
  if (!qword_22E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2D8);
  }

  return result;
}

uint64_t sub_15D694(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_15D710()
{
  result = qword_22E2E8;
  if (!qword_22E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2E8);
  }

  return result;
}

uint64_t WorkServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E2F0, &qword_1CF5E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - v7;
  v9 = a1[3];
  v70 = a1;
  sub_2698(a1, v9);
  sub_15D4F0();
  sub_1B5864();
  if (!v2)
  {
    v10 = v6;
    v69 = a2;
    LOBYTE(v109) = 0;
    v11 = v5;
    v12 = sub_1B5324();
    v14 = v13;
    LOBYTE(v109) = 1;
    v15 = sub_1B5324();
    v17 = v16;
    v68 = v15;
    sub_2B0C(&qword_228590, &qword_1B6590);
    LOBYTE(v109) = 2;
    sub_122D64(&qword_2285C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1B5374();
    v67 = v17;
    v18 = v121;
    LOBYTE(v109) = 3;
    v19 = sub_1B5364();
    v64 = v21;
    v65 = v19;
    v66 = v18;
    v108 = 4;
    sub_15DE00();
    sub_1B5374();
    v104 = v117;
    v105 = v118;
    v106 = v119;
    v107 = v120;
    v100 = v113;
    v101 = v114;
    v102 = v115;
    v103 = v116;
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    LOBYTE(v77) = 5;
    sub_15DE54();
    sub_1B5374();
    v22 = v67;
    v58 = v90;
    v59 = v91;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v63 = v95;
    LOBYTE(v77) = 6;
    sub_15DEA8();
    sub_1B5374();
    v52 = v84;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v57 = v89;
    LOBYTE(v77) = 7;
    sub_15DEFC();
    sub_1B5374();
    v50 = v82;
    v51 = v83;
    v76 = 8;
    sub_15DF50();
    sub_1B5374();
    v73 = v79;
    v74 = v80;
    v75 = v81;
    v71 = v77;
    v72 = v78;
    if (v14)
    {
      v23 = v12;
    }

    else
    {
      v23 = 0x4649434550534E55;
    }

    v24 = 0xEB00000000444549;
    if (v14)
    {
      v24 = v14;
    }

    v48 = v24;
    v49 = v23;
    if (v22)
    {
      v25 = v68;
    }

    else
    {
      v25 = 0xD000000000000023;
    }

    if (v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = 0x80000000001D5A20;
    }

    v27 = v11;
    if (v66)
    {
      v28 = v66;
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    (*(v10 + 8))(v8, v27);
    v29 = v65;
    if (v64)
    {
      v29 = 0;
    }

    v30 = v69;
    v31 = v48;
    *v69 = v49;
    v30[1] = v31;
    v30[2] = v25;
    v30[3] = v26;
    v30[4] = v28;
    v30[5] = v29;
    v32 = v105;
    *(v30 + 11) = v104;
    *(v30 + 12) = v32;
    *(v30 + 13) = v106;
    v33 = v107;
    v34 = v101;
    *(v30 + 7) = v100;
    *(v30 + 8) = v34;
    v35 = v103;
    *(v30 + 9) = v102;
    *(v30 + 10) = v35;
    v36 = v97;
    *(v30 + 3) = v96;
    *(v30 + 4) = v36;
    v37 = v99;
    *(v30 + 5) = v98;
    *(v30 + 6) = v37;
    v39 = v58;
    v38 = v59;
    v30[28] = v33;
    v30[29] = v39;
    v30[30] = v38;
    v40 = v61;
    v30[31] = v60;
    v30[32] = v40;
    v41 = v63;
    v30[33] = v62;
    v30[34] = v41;
    v42 = v53;
    v30[35] = v52;
    v30[36] = v42;
    v43 = v55;
    v30[37] = v54;
    v30[38] = v43;
    v44 = v57;
    v30[39] = v56;
    v30[40] = v44;
    v45 = v51;
    *(v30 + 41) = v50;
    *(v30 + 43) = v45;
    v46 = v74;
    *(v30 + 49) = v73;
    *(v30 + 51) = v46;
    v30[53] = v75;
    v47 = v72;
    *(v30 + 45) = v71;
    *(v30 + 47) = v47;
  }

  return sub_2BF8(v70);
}

unint64_t sub_15DE00()
{
  result = qword_22E2F8;
  if (!qword_22E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2F8);
  }

  return result;
}

unint64_t sub_15DE54()
{
  result = qword_22E300;
  if (!qword_22E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E300);
  }

  return result;
}

unint64_t sub_15DEA8()
{
  result = qword_22E308;
  if (!qword_22E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E308);
  }

  return result;
}

unint64_t sub_15DEFC()
{
  result = qword_22E310;
  if (!qword_22E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E310);
  }

  return result;
}

unint64_t sub_15DF50()
{
  result = qword_22E318;
  if (!qword_22E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E318);
  }

  return result;
}

uint64_t WorkServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_1B4424();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = &enum case for ComputeUnits.cpuOnly(_:);
  }

  else
  {
    v6 = *(&off_220710 + v3 - 1);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t WorkServiceConfiguration.mlComputeUnits.getter()
{
  if ((*(v0 + 40) - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

unint64_t sub_15E084()
{
  result = qword_22E320;
  if (!qword_22E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E320);
  }

  return result;
}

unint64_t sub_15E0DC()
{
  result = qword_22E328;
  if (!qword_22E328)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E328);
  }

  return result;
}

uint64_t sub_15E154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_15E19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkServiceConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkServiceConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_15E3C0()
{
  result = qword_22E330;
  if (!qword_22E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E330);
  }

  return result;
}

unint64_t sub_15E418()
{
  result = qword_22E338;
  if (!qword_22E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E338);
  }

  return result;
}

unint64_t sub_15E470()
{
  result = qword_22E340;
  if (!qword_22E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E340);
  }

  return result;
}

unint64_t sub_15E4C8()
{
  result = qword_22E348;
  if (!qword_22E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E348);
  }

  return result;
}

unint64_t sub_15E51C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_213A58;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_15E56C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E350 = result;
  return result;
}

uint64_t sub_15E644()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E358 = result;
  return result;
}

uint64_t sub_15E71C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E360 = result;
  return result;
}

uint64_t sub_15E7F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E368 = result;
  return result;
}

uint64_t sub_15E8CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E370 = result;
  return result;
}

uint64_t sub_15E9A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E378 = result;
  return result;
}

BooksPersonalization::CollectionSource_optional __swiftcall CollectionSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213B50;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t CollectionSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x495041616964656DLL;
  v3 = 0x747369486B6F6F62;
  v4 = 0xD000000000000022;
  if (v1 != 3)
  {
    v4 = 1768055156;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

unint64_t sub_15EB9C()
{
  result = qword_22E380;
  if (!qword_22E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E380);
  }

  return result;
}

Swift::Int sub_15EBF0()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_15ECE0(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_15EDBC(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_15EEB4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x495041616964656DLL;
  v5 = 0xEB0000000079726FLL;
  v6 = 0x747369486B6F6F62;
  v7 = 0x80000000001D4700;
  v8 = 0xD000000000000022;
  if (v2 != 3)
  {
    v8 = 1768055156;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_15EF64()
{
  result = qword_22E388;
  if (!qword_22E388)
  {
    sub_1CC1C(&qword_22E390, &qword_1CFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E388);
  }

  return result;
}

unint64_t sub_15EFDC()
{
  result = qword_22E398;
  if (!qword_22E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E398);
  }

  return result;
}

uint64_t sub_15F0F0(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 2704) = v4;
  *(v5 + 2696) = a3;
  *(v5 + 2688) = a1;
  v6 = *a2;
  *(v5 + 2720) = *(a2 + 8);
  *(v5 + 2736) = *(a2 + 24);
  *(v5 + 2752) = *(a2 + 40);
  v7 = *(a2 + 56);
  v10 = *(a2 + 1);
  v8 = a2 + 1;
  v9 = v10;
  LOWORD(v10) = *(v8 + 2);
  *(v5 + 2953) = v6;
  *(v5 + 2712) = v9;
  *(v5 + 2716) = v10;
  *(v5 + 2718) = v8[6];
  *(v5 + 2768) = v7;
  *(v5 + 2954) = *(a3 + 32);
  *(v5 + 2962) = *(a3 + 40);
  *(v5 + 2963) = *(a3 + 48);
  *(v5 + 2964) = *(a3 + 64);
  *(v5 + 2965) = *a4;
  return _swift_task_switch(sub_15F184, 0, 0);
}

uint64_t sub_15F184()
{
  v1 = swift_task_alloc();
  *(v0 + 2784) = v1;
  *v1 = v0;
  v1[1] = sub_15F234;

  return sub_EC9EC(v0 + 2952);
}

uint64_t sub_15F234()
{
  *(*v1 + 2792) = v0;

  if (v0)
  {
    v2 = sub_1608AC;
  }

  else
  {
    v2 = sub_15F348;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15F348()
{
  v107 = v0;
  v1 = *(v0 + 2952);
  if (v1 != 4)
  {
    sub_1610A4();
    swift_allocError();
    *v15 = v1;
    swift_willThrow();
    goto LABEL_45;
  }

  v2 = *(v0 + 2760);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        LODWORD(v16) = *(v0 + 2965);
        if (v16 == 5)
        {
          v16 = 0x401030200uLL >> (8 * *(v0 + 2954));
        }

        v17 = *(v0 + 2720);
        *(v0 + 2966) = v16;
        v18 = *(v0 + 2792);
        v19 = *(v0 + 2704);
        v106[0] = v16;
        sub_160B1C(v106, v19, v0 + 2528);
        if (v18)
        {
          goto LABEL_45;
        }

        v20 = *(v0 + 2954);
        v21 = *(v0 + 2728);
        v22 = *(v0 + 2953);
        v23 = *(v0 + 2552);
        v24 = *(v0 + 2560);
        sub_2698((v0 + 2528), v23);
        *(v0 + 2648) = v22 & 1;
        *(v0 + 2656) = v17;
        *(v0 + 2664) = v21;
        *(v0 + 2950) = v20;
        v96 = (*(v24 + 8) + **(v24 + 8));
        v25 = swift_task_alloc();
        *(v0 + 2800) = v25;
        *v25 = v0;
        v25[1] = sub_15FF04;

        return v96(v0 + 2648, v0 + 2950, v23, v24);
      }

      else
      {
        LODWORD(v46) = *(v0 + 2965);
        if (v46 == 5)
        {
          v46 = 0x401030200uLL >> (8 * *(v0 + 2957));
        }

        v47 = *(v0 + 2720);
        *(v0 + 2967) = v46;
        v48 = *(v0 + 2792);
        v49 = *(v0 + 2704);
        v105 = v46;
        sub_160BE8(&v105, v49, v0 + 2488);
        if (v48)
        {
          goto LABEL_45;
        }

        v50 = *(v0 + 2957);
        v51 = *(v0 + 2728);
        v52 = *(v0 + 2953);
        v53 = *(v0 + 2512);
        v54 = *(v0 + 2520);
        sub_2698((v0 + 2488), v53);
        *(v0 + 2624) = v52 & 1;
        *(v0 + 2632) = v47;
        *(v0 + 2640) = v51;
        *(v0 + 2948) = v50;
        v98 = (*(v54 + 8) + **(v54 + 8));
        v55 = swift_task_alloc();
        *(v0 + 2824) = v55;
        *v55 = v0;
        v55[1] = sub_1600A0;

        return v98(v0 + 2624, v0 + 2948, v53, v54);
      }
    }

    else
    {
      v43 = *(v0 + 2688);
      v44 = Array<A>.positionScored()((*(v0 + 2712) << 8) | ((*(v0 + 2716) | (*(v0 + 2718) << 16)) << 40) | *(v0 + 2953));
      *v43 = 2;
      v45 = *(v0 + 8);

      return v45(v44);
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        LODWORD(v4) = *(v0 + 2965);
        if (v4 == 5)
        {
          v4 = 0x401030200uLL >> (8 * *(v0 + 2959));
        }

        v5 = *(v0 + 2720);
        *(v0 + 2968) = v4;
        v6 = *(v0 + 2792);
        v7 = *(v0 + 2704);
        v104 = v4;
        sub_160CB8(&v104, v7, v0 + 2448);
        if (!v6)
        {
          v8 = *(v0 + 2959);
          v9 = *(v0 + 2728);
          v10 = *(v0 + 2953);
          v11 = *(v0 + 2472);
          v12 = *(v0 + 2480);
          sub_2698((v0 + 2448), v11);
          *(v0 + 2600) = v10 & 1;
          *(v0 + 2608) = v5;
          *(v0 + 2616) = v9;
          *(v0 + 2946) = v8;
          v95 = (*(v12 + 8) + **(v12 + 8));
          v13 = swift_task_alloc();
          *(v0 + 2848) = v13;
          *v13 = v0;
          v13[1] = sub_16023C;

          return v95(v0 + 2600, v0 + 2946, v11, v12);
        }

        goto LABEL_45;
      }

      LODWORD(v56) = *(v0 + 2965);
      if (v56 == 5)
      {
        v56 = 0x401030200uLL >> (8 * *(v0 + 2961));
      }

      v57 = *(v0 + 2718);
      v58 = *(v0 + 2716);
      v59 = *(v0 + 2712);
      v60 = *(v0 + 2953);
      *(v0 + 2969) = v56;
      v61 = *(v0 + 2792);
      v62 = *(v0 + 2704);
      v103 = v56;
      sub_160D88(&v103, v62, v0 + 2408);
      if (!v61)
      {
        v63 = v60 | ((v59 | ((v58 | (v57 << 16)) << 32)) << 8);
        v64 = *(v0 + 2961);
        v65 = *(v0 + 2720);
        v66 = *(v0 + 2432);
        v67 = *(v0 + 2440);
        sub_2698((v0 + 2408), v66);
        *(v0 + 2672) = v63;
        *(v0 + 2680) = v65;
        *(v0 + 2944) = v64;
        v99 = (*(v67 + 8) + **(v67 + 8));
        v68 = swift_task_alloc();
        *(v0 + 2872) = v68;
        *v68 = v0;
        v68[1] = sub_1603D8;

        return v99(v0 + 2672, v0 + 2944, v66, v67);
      }

LABEL_45:
      v72 = *(v0 + 8);

      return v72();
    }

    if (v3 == 5)
    {
      LODWORD(v26) = *(v0 + 2965);
      if (v26 == 5)
      {
        v26 = 0x401030200uLL >> (8 * *(v0 + 2963));
      }

      v27 = *(v0 + 2728);
      *(v0 + 2970) = v26;
      v28 = *(v0 + 2792);
      v29 = *(v0 + 2704);
      v102 = v26;
      sub_160E58(&v102, v29, v0 + 2368);
      if (v28)
      {
        goto LABEL_45;
      }

      v30 = *(v0 + 2964);
      v31 = *(v0 + 2963);
      v32 = *(v0 + 2962);
      v33 = *(v0 + 2736);
      v34 = *(v0 + 2720);
      v35 = *(v0 + 2696);
      v97 = *(v0 + 2392);
      v36 = *(v0 + 2400);
      v37 = *(v0 + 2953) & 1;
      v38 = *(v0 + 2954);
      sub_2698((v0 + 2368), v97);
      *(v0 + 2568) = v37;
      *(v0 + 2576) = v34;
      *(v0 + 2584) = v27;
      *(v0 + 2592) = v33;
      v39 = *(v35 + 16);
      *(v0 + 1136) = *v35;
      *(v0 + 1152) = v39;
      *(v0 + 1168) = v38;
      *(v0 + 1176) = v32;
      v40 = *(v35 + 41);
      *(v0 + 1180) = *(v35 + 44);
      *(v0 + 1177) = v40;
      *(v0 + 1184) = v31;
      v41 = *(v35 + 56);
      *(v0 + 1185) = *(v35 + 49);
      *(v0 + 1192) = v41;
      *(v0 + 1200) = v30;
      memcpy((v0 + 1201), (v35 + 65), 0x41FuLL);
      v92 = (*(v36 + 8) + **(v36 + 8));
      v42 = swift_task_alloc();
      *(v0 + 2896) = v42;
      *v42 = v0;
      v42[1] = sub_160574;

      return v92(v0 + 2568, v0 + 1136, v97, v36);
    }

    else
    {
      LODWORD(v69) = *(v0 + 2965);
      if (v69 == 5)
      {
        v69 = 0x401030200uLL >> (8 * *(v0 + 2964));
      }

      *(v0 + 2971) = v69;
      v70 = *(v0 + 2792);
      v71 = *(v0 + 2704);
      v101 = v69;
      sub_160F28(&v101, v71, v0 + 2328);
      if (v70)
      {
        goto LABEL_45;
      }

      v88 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v93 = *(v0 + 2964);
      v91 = *(v0 + 2963);
      v89 = *(v0 + 2962);
      v73 = *(v0 + 2776);
      v74 = *(v0 + 2768);
      v75 = *(v0 + 2752);
      v76 = *(v0 + 2712);
      v77 = *(v0 + 2716);
      v78 = *(v0 + 2953);
      v79 = *(v0 + 2696);
      v80 = *(v0 + 2718);
      v100 = *(v0 + 2352);
      v90 = *(v0 + 2360);
      v81 = *(v0 + 2954);
      v86 = *(v0 + 2736);
      v87 = *(v0 + 2720);
      sub_2698((v0 + 2328), v100);
      *(v0 + 2256) = v78;
      *(v0 + 2263) = v80;
      *(v0 + 2261) = v77;
      *(v0 + 2257) = v76;
      *(v0 + 2280) = v86;
      *(v0 + 2264) = v87;
      *(v0 + 2296) = v75;
      *(v0 + 2304) = v88;
      *(v0 + 2312) = v74;
      *(v0 + 2320) = v73;
      v82 = *(v79 + 16);
      *(v0 + 16) = *v79;
      *(v0 + 32) = v82;
      *(v0 + 48) = v81;
      *(v0 + 56) = v89;
      v83 = *(v79 + 41);
      *(v0 + 60) = *(v79 + 44);
      *(v0 + 57) = v83;
      *(v0 + 64) = v91;
      v84 = *(v79 + 56);
      *(v0 + 65) = *(v79 + 49);
      *(v0 + 72) = v84;
      *(v0 + 80) = v93;
      memcpy((v0 + 81), (v79 + 65), 0x41FuLL);
      v94 = (*(v90 + 8) + **(v90 + 8));
      v85 = swift_task_alloc();
      *(v0 + 2920) = v85;
      *v85 = v0;
      v85[1] = sub_160710;

      return v94(v0 + 2256, v0 + 16, v100, v90);
    }
  }
}

uint64_t sub_15FF04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2808) = v1;

  if (v1)
  {
    v5 = sub_1608C4;
  }

  else
  {
    *(v4 + 2816) = a1;
    v5 = sub_16002C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_16002C()
{
  **(v0 + 2688) = *(v0 + 2966);
  sub_2BF8((v0 + 2528));
  v1 = *(v0 + 2816);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1600A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2832) = v1;

  if (v1)
  {
    v5 = sub_160928;
  }

  else
  {
    *(v4 + 2840) = a1;
    v5 = sub_1601C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1601C8()
{
  **(v0 + 2688) = *(v0 + 2967);
  sub_2BF8((v0 + 2488));
  v1 = *(v0 + 2840);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_16023C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2856) = v1;

  if (v1)
  {
    v5 = sub_16098C;
  }

  else
  {
    *(v4 + 2864) = a1;
    v5 = sub_160364;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_160364()
{
  **(v0 + 2688) = *(v0 + 2968);
  sub_2BF8((v0 + 2448));
  v1 = *(v0 + 2864);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1603D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2880) = v1;

  if (v1)
  {
    v5 = sub_1609F0;
  }

  else
  {
    *(v4 + 2888) = a1;
    v5 = sub_160500;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_160500()
{
  **(v0 + 2688) = *(v0 + 2969);
  sub_2BF8((v0 + 2408));
  v1 = *(v0 + 2888);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_160574(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2904) = v1;

  if (v1)
  {
    v5 = sub_160A54;
  }

  else
  {
    *(v4 + 2912) = a1;
    v5 = sub_16069C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_16069C()
{
  **(v0 + 2688) = *(v0 + 2970);
  sub_2BF8((v0 + 2368));
  v1 = *(v0 + 2912);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_160710(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2928) = v1;

  if (v1)
  {
    v5 = sub_160AB8;
  }

  else
  {
    *(v4 + 2936) = a1;
    v5 = sub_160838;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_160838()
{
  **(v0 + 2688) = *(v0 + 2971);
  sub_2BF8((v0 + 2328));
  v1 = *(v0 + 2936);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1608C4()
{
  sub_2BF8((v0 + 2528));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_160928()
{
  sub_2BF8((v0 + 2488));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16098C()
{
  sub_2BF8((v0 + 2448));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1609F0()
{
  sub_2BF8((v0 + 2408));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_160A54()
{
  sub_2BF8((v0 + 2368));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_160AB8()
{
  sub_2BF8((v0 + 2328));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_160B1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5;
    return swift_willThrow();
  }
}

uint64_t sub_160BE8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 32);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x20;
    return swift_willThrow();
  }
}

uint64_t sub_160CB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 40);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x40;
    return swift_willThrow();
  }
}

uint64_t sub_160D88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 48);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x60;
    return swift_willThrow();
  }
}

uint64_t sub_160E58@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 56);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x80;
    return swift_willThrow();
  }
}

uint64_t sub_160F28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 64);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0xA0;
    return swift_willThrow();
  }
}

void *sub_160FFC()
{

  return v0;
}

uint64_t sub_16104C()
{
  sub_160FFC();

  return swift_deallocClassInstance();
}

unint64_t sub_1610A4()
{
  result = qword_22E470;
  if (!qword_22E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E470);
  }

  return result;
}

unint64_t sub_1610F8()
{
  result = qword_22E478;
  if (!qword_22E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E478);
  }

  return result;
}

unint64_t sub_16114C()
{
  result = qword_22E480;
  if (!qword_22E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E480);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelegatingCollectionService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1B)
  {
    goto LABEL_17;
  }

  if (a2 + 229 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 229) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 229;
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

      return (*a1 | (v4 << 8)) - 229;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 229;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DelegatingCollectionService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 229 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 229) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1B)
  {
    v4 = 0;
  }

  if (a2 > 0x1A)
  {
    v5 = ((a2 - 27) >> 8) + 1;
    *result = a2 - 27;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_161338(__int128 *a1, const void *a2)
{
  v4 = *a1;
  *(v3 + 2272) = a1[1];
  v5 = a1[3];
  *(v3 + 2288) = a1[2];
  *(v3 + 2304) = v5;
  *(v3 + 2440) = v2;
  *(v3 + 2320) = *(a1 + 8);
  *(v3 + 2256) = v4;
  memcpy((v3 + 16), a2, 0x460uLL);

  return _swift_task_switch(sub_1613C8, 0, 0);
}

void sub_1613C8()
{
  v1 = *(*(v0 + 2440) + 16);
  *(v0 + 2448) = v1;
  v2 = *(v1 + 16);
  *(v0 + 2456) = v2;
  if (v2)
  {
    *(v0 + 2464) = 0;
    if (*(v1 + 16))
    {
      sub_404C4(v1 + 32, v0 + 2400);
      v3 = *(v0 + 2424);
      v4 = *(v0 + 2432);
      sub_2698((v0 + 2400), v3);
      v5 = *(v0 + 2304);
      *(v0 + 2360) = *(v0 + 2288);
      *(v0 + 2376) = v5;
      *(v0 + 2392) = *(v0 + 2320);
      v6 = *(v0 + 2272);
      *(v0 + 2328) = *(v0 + 2256);
      *(v0 + 2344) = v6;
      memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
      v9 = (*(v4 + 8) + **(v4 + 8));
      v7 = swift_task_alloc();
      *(v0 + 2472) = v7;
      *v7 = v0;
      v7[1] = sub_1615AC;

      v9(v0 + 2328, v0 + 1136, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(v0 + 8);

    v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1615AC(uint64_t a1)
{
  v3 = *v2;
  v3[310] = a1;
  v3[311] = v1;

  sub_2BF8(v3 + 300);
  if (v1)
  {
    v4 = sub_1618D8;
  }

  else
  {
    v4 = sub_1616D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1616D0()
{
  v1 = *(v0 + 2480);
  if (v1[2])
  {
LABEL_4:
    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);

  if (v2 + 1 == v3)
  {
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  v6 = *(v0 + 2464) + 1;
  *(v0 + 2464) = v6;
  v7 = *(v0 + 2448);
  if (v6 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_404C4(v7 + 40 * v6 + 32, v0 + 2400);
    v8 = *(v0 + 2424);
    v9 = *(v0 + 2432);
    sub_2698((v0 + 2400), v8);
    v10 = *(v0 + 2304);
    *(v0 + 2360) = *(v0 + 2288);
    *(v0 + 2376) = v10;
    *(v0 + 2392) = *(v0 + 2320);
    v11 = *(v0 + 2272);
    *(v0 + 2328) = *(v0 + 2256);
    *(v0 + 2344) = v11;
    memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v12 = swift_task_alloc();
    *(v0 + 2472) = v12;
    *v12 = v0;
    v12[1] = sub_1615AC;

    return v13(v0 + 2328, v0 + 1136, v8, v9);
  }

  return result;
}

uint64_t sub_161914(__int128 *a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_161338(a1, a2);
}

uint64_t sub_1619BC(void *a1)
{
  v2 = sub_1B44C4();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1B44B4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1B4524();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41[0] = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4544();
  __chkstk_darwin(v6 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B44D4();
  __chkstk_darwin(v8 - 8);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_22E5E0, &qword_1CFD58);
  __chkstk_darwin(v10 - 8);
  v44 = v41 - v11;
  v12 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v41 - v17;
  __chkstk_darwin(v16);
  v20 = v41 - v19;
  v21 = sub_1B3F34();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v52 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v54 = v41 - v26;
  __chkstk_darwin(v25);
  v55 = v41 - v27;
  sub_2698(a1, a1[3]);
  v28 = type metadata accessor for WorkServiceConfigurationManager();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = result;
  v63 = v28;
  v64 = sub_163E94(&qword_22E5E8, type metadata accessor for WorkServiceConfigurationManager, &unk_1D0B78);
  v62 = v30;
  v31 = a1[3];
  v53 = a1;
  sub_2698(a1, v31);
  v32 = type metadata accessor for UserFeaturesFeatureResolver();
  result = sub_1B4254();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = result;
  v60 = v32;
  v61 = sub_163E94(&qword_22E5F0, type metadata accessor for UserFeaturesFeatureResolver, &unk_1CCDEC);
  v59 = v33;
  v34 = type metadata accessor for PackageService();
  sub_170BA0(v20);
  v35 = *(v22 + 48);
  result = v35(v20, 1, v21);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B3EC4();
  v36 = *(v22 + 8);
  v36(v20, v21);
  sub_170BA0(v18);
  result = v35(v18, 1, v21);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B3EC4();
  v36(v18, v21);
  sub_170BA0(v15);
  result = v35(v15, 1, v21);
  v37 = v53;
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1B3EC4();
  v36(v15, v21);
  sub_2B0C(&qword_22E5F8, &qword_1CFD68);
  swift_allocObject();
  sub_1B4604();
  sub_2698(v37, v37[3]);
  result = sub_1B4254();
  if (result)
  {
    v38 = result;
    v57 = v34;
    v58 = sub_163E94(&qword_22E600, type metadata accessor for PackageService, &protocol conformance descriptor for PackageService);
    v56 = v38;
    v39 = sub_1B4494();
    (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
    v40 = v41[0];
    *v41[0] = 50;
    (*(v42 + 104))(v40, enum case for ComputeServiceDataSettings.RequestDataPolicy.include(_:), v43);
    sub_1B4534();
    (*(v46 + 104))(v47, enum case for ComputeServiceSettings.StorageMode.readWrite(_:), v48);
    (*(v50 + 104))(v49, enum case for ComputeServiceSettings.UnloadPolicy.immediate(_:), v51);
    sub_1B44A4();
    sub_1B4564();
    swift_allocObject();
    sub_1B4554();
    sub_2B0C(&qword_22E5C0, &unk_1CFD20);
    swift_allocObject();
    return sub_1B4434();
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_162268(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
  result = sub_1B4264();
  if (v16)
  {
    v2 = sub_40474(v15, v16);
    __chkstk_darwin(v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for UserEncodingInputFeaturesService(0);
    v14[3] = v7;
    v14[4] = &off_218EB0;
    v14[0] = v6;
    type metadata accessor for UserFeaturesFeatureResolver();
    v8 = swift_allocObject();
    v9 = sub_40474(v14, v7);
    __chkstk_darwin(v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_218EB0;
    v8[2] = v13;
    sub_2BF8(v14);
    sub_2BF8(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_162470@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WorkServiceGenreRecommendationService();
    v6 = objc_allocWithZone(v5);
    if (qword_228320 != -1)
    {
      swift_once();
    }

    v7 = qword_22E368;
    v8 = sub_1B4D84();
    sub_1B4614("Initializing WorkServiceGenreRecommendationService", 50, 2, &dword_0, v7, v8, _swiftEmptyArrayStorage);
    *&v6[OBJC_IVAR____TtC20BooksPersonalization37WorkServiceGenreRecommendationService_computeService] = v4;
    v9.receiver = v6;
    v9.super_class = v5;
    result = objc_msgSendSuper2(&v9, "init");
    a2[3] = v5;
    a2[4] = &protocol witness table for WorkServiceGenreRecommendationService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_162594@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v12[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = type metadata accessor for WorkServiceSuggestionsService();
  v7 = objc_allocWithZone(v6);
  if (qword_228310 != -1)
  {
    swift_once();
  }

  v8 = qword_22E358;
  v9 = sub_1B4DB4();
  sub_1B4614("Initializing WorkServiceSuggestionsService", 42, 2, &dword_0, v8, v9, _swiftEmptyArrayStorage);
  *&v7[OBJC_IVAR____TtC20BooksPersonalization29WorkServiceSuggestionsService_computeService] = v5;
  sub_404C4(v12, &v7[OBJC_IVAR____TtC20BooksPersonalization29WorkServiceSuggestionsService_bookMetadataService]);
  v11.receiver = v7;
  v11.super_class = v6;
  v10 = objc_msgSendSuper2(&v11, "init");
  result = sub_2BF8(v12);
  a2[3] = v6;
  a2[4] = &protocol witness table for WorkServiceSuggestionsService;
  *a2 = v10;
  return result;
}

void *sub_162724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  v4 = type metadata accessor for WorkServiceSeedBasedRecommendationService();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = v4;
  v14 = &protocol witness table for WorkServiceSeedBasedRecommendationService;
  *&v12 = result;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v9)
  {
    v6 = type metadata accessor for CombinedSeedBasedRecommendationService();
    v7 = swift_allocObject();
    sub_264B8(&v12, v7 + 16);
    sub_264B8(&v10, v7 + 56);
    result = sub_264B8(&v8, v7 + 96);
    a2[3] = v6;
    a2[4] = &off_221340;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1628A0(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  type metadata accessor for WorkServiceBookScorer();
  v4 = swift_allocObject();
  if (qword_228310 != -1)
  {
    swift_once();
  }

  v5 = qword_22E358;
  v6 = sub_1B4DB4();
  sub_1B4614("Initializing WorkServiceBookScorer", 34, 2, &dword_0, v5, v6, _swiftEmptyArrayStorage);
  sub_264B8(&v7, v4 + 24);
  *(v4 + 16) = v3;
  return v4;
}

uint64_t sub_1629EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  v3 = type metadata accessor for WorkServiceBookScorer();
  result = sub_1B4254();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for WorkServiceBookScorer;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_162A60(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v4)
  {
    type metadata accessor for WorkServiceConfigurationManager();
    v2 = swift_allocObject();
    sub_264B8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162AF8(void *a1)
{
  sub_2698(a1, a1[3]);
  type metadata accessor for WorkServiceConfigurationManager();
  result = sub_1B4254();
  if (result)
  {
    v2 = result;
    type metadata accessor for PackageService();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_162B68(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for WorkServiceSeedBasedRecommendationService();
  v4 = swift_allocObject();
  if (qword_228318 != -1)
  {
    swift_once();
  }

  v5 = qword_22E360;
  v6 = sub_1B4DB4();
  sub_1B4614("Initializing WorkServiceSeedBasedRecommendationService", 54, 2, &dword_0, v5, v6, _swiftEmptyArrayStorage);
  *(v4 + 16) = v3;
  sub_264B8(&v9, v4 + 24);
  sub_264B8(&v7, v4 + 64);
  return v4;
}

uint64_t sub_162D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v22 = sub_1B3E84();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D0, &qword_1C05D0);
  sub_1B4264();
  if (!v29[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  sub_1B4264();
  if (!v28[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  sub_1B4264();
  if (!v27[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  sub_1B4264();
  if (!v26[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = type metadata accessor for UserEncodingInputFeaturesService(0);
  v14 = swift_allocObject();
  sub_404C4(v29, v14 + 16);
  sub_404C4(v28, v14 + 56);
  sub_404C4(v27, v14 + 96);
  sub_404C4(v26, v14 + 136);
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:13 inDomains:1];

  v17 = sub_1B4AC4();
  if (*(v17 + 16))
  {

    if (*(v17 + 16))
    {
      (*(v7 + 16))(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      v24 = 0xD00000000000001ALL;
      v25 = 0x80000000001D8700;
      v18 = v22;
      (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
      sub_402F4();
      sub_1B3F24();
      (*(v3 + 8))(v5, v18);
      (*(v7 + 8))(v10, v6);
      sub_2BF8(v26);
      sub_2BF8(v27);
      sub_2BF8(v28);
      sub_2BF8(v29);
      result = (*(v7 + 32))(v14 + OBJC_IVAR____TtC20BooksPersonalization32UserEncodingInputFeaturesService_cachePath, v12, v6);
      v20 = v23;
      v23[3] = v13;
      v20[4] = &off_218EB0;
      *v20 = v14;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_13:

  __break(1u);
  return result;
}

void *sub_1631A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    v5 = result;
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
    result = sub_1B4264();
    if (v21)
    {
      v6 = sub_40474(v20, v21);
      __chkstk_darwin(v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for UserEncodingInputFeaturesService(0);
      v19[3] = v11;
      v19[4] = &off_218EB0;
      v19[0] = v10;
      v12 = type metadata accessor for UserEncodingService();
      v13 = swift_allocObject();
      v14 = sub_40474(v19, v11);
      __chkstk_darwin(v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_218EB0;
      v13[2] = v5;
      v13[3] = v18;
      sub_2BF8(v19);
      result = sub_2BF8(v20);
      a2[3] = v12;
      a2[4] = &protocol witness table for UserEncodingService;
      *a2 = v13;
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

uint64_t sub_163414(uint64_t a1)
{
  sub_404C4(a1, v3);
  type metadata accessor for BooksWorkServiceStartupTask();
  v1 = swift_allocObject();
  sub_264B8(v3, v1 + 16);
  return v1;
}

uint64_t sub_163468(uint64_t a1, void *a2)
{
  sub_2698(a2, a2[3]);
  v2 = type metadata accessor for BooksWorkServiceStartupTask();
  result = sub_1B4254();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_163E94(&qword_22E5D8, type metadata accessor for BooksWorkServiceStartupTask, &unk_1D0B2C);
    v5[0] = v4;
    sub_1B42D4();
    return sub_2BF8(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_163558()
{
  v0 = sub_1B4274();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v13 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B4344();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  sub_1B42F4();

  v6 = enum case for Scope.singleton(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Scope.singleton(_:), v2);
  sub_1B4214();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1B4284();
  type metadata accessor for UserFeaturesFeatureResolver();
  sub_1B42F4();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  sub_2B0C(&qword_22A778, &unk_1C0560);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  type metadata accessor for WorkServiceBookScorer();
  sub_1B42F4();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  sub_2B0C(&qword_22A790, &qword_1C0580);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4294();
  type metadata accessor for WorkServiceConfigurationManager();
  sub_1B42F4();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4294();
  type metadata accessor for PackageService();
  sub_1B42F4();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4294();
  type metadata accessor for WorkServiceSeedBasedRecommendationService();
  sub_1B42F4();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4294();
  sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4284();
  sub_2B0C(&qword_22E5D0, &unk_1CFD40);
  sub_1B4304();

  v7(v5, v6, v2);
  sub_1B4214();

  v8(v5, v2);
  sub_1B4294();
  type metadata accessor for BooksWorkServiceStartupTask();
  sub_1B42F4();

  sub_1B42A4();
  sub_2698(v16, v16[3]);
  sub_1B42E4();
  v10 = v13;
  v9 = v14;
  v11 = v15;
  (*(v14 + 104))(v13, enum case for CallbackScope.any(_:), v15);
  sub_1B4314();
  (*(v9 + 8))(v10, v11);
  return sub_2BF8(v16);
}

uint64_t sub_163E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ClientCurrency.Response.init(statusCode:headers:body:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  a5[1] = v5;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ClientCurrency.Request.init(url:method:headers:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for ClientCurrency.Request(0);
  v15 = a7 + v14[7];
  *v15 = xmmword_1C6AD0;
  v16 = sub_1B3F34();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = (a7 + v14[5]);
  *v17 = a2;
  v17[1] = a3;
  *(a7 + v14[6]) = v13;
  result = sub_85D94(*v15, *(v15 + 8));
  *v15 = a5;
  *(v15 + 8) = a6;
  return result;
}

uint64_t type metadata accessor for ClientCurrency.Request(uint64_t a1)
{
  result = qword_22E678;
  if (!qword_22E678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B3F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Package.fileURL.setter(uint64_t a1)
{
  v3 = sub_1B3F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClientCurrency.Request.method.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientCurrency.Request(0) + 20));

  return v1;
}

uint64_t ClientCurrency.Request.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClientCurrency.Request(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClientCurrency.Request.headers.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ClientCurrency.Request(0) + 24));
}

uint64_t ClientCurrency.Request.headers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ClientCurrency.Request(0) + 24);

  *(v1 + v3) = v2;
  return result;
}

uint64_t ClientCurrency.Request.body.getter()
{
  v1 = v0 + *(type metadata accessor for ClientCurrency.Request(0) + 28);
  v2 = *v1;
  sub_1642BC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1642BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4161C(result, a2);
  }

  return result;
}

uint64_t ClientCurrency.Request.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ClientCurrency.Request(0) + 28);
  result = sub_85D94(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void ClientCurrency.Request.hash(into:)(uint64_t a1)
{
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1B4754();
  v2 = type metadata accessor for ClientCurrency.Request(0);
  sub_1B4884();
  v3 = *(v1 + *(v2 + 24));
  v4 = *(v3 + 16);
  sub_1B5804(v4);
  if (v4)
  {
    v5 = v3 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  if (*(v1 + *(v2 + 28) + 8) >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);

    sub_1B3FA4();
  }
}

Swift::Int ClientCurrency.Request.hashValue.getter()
{
  sub_1B57F4();
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1B4754();
  v1 = type metadata accessor for ClientCurrency.Request(0);
  sub_1B4884();
  v2 = *(v0 + *(v1 + 24));
  v3 = *(v2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  if (*(v0 + *(v1 + 28) + 8) >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B3FA4();
  }

  return sub_1B5844();
}

void sub_16467C(uint64_t a1, int *a2)
{
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1B4754();
  sub_1B4884();
  sub_1BA44(a1, *(v2 + a2[6]));
  if (*(v2 + a2[7] + 8) >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);

    sub_1B3FA4();
  }
}

Swift::Int sub_16477C(uint64_t a1, int *a2)
{
  sub_1B57F4();
  sub_1B3F34();
  sub_165434(&qword_22E608, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1B4754();
  sub_1B4884();
  sub_1BA44(v5, *(v2 + a2[6]));
  if (*(v2 + a2[7] + 8) >> 60 == 15)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B3FA4();
  }

  return sub_1B5844();
}

uint64_t ClientCurrency.Response.headers.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ClientCurrency.Response.body.getter()
{
  v1 = *(v0 + 16);
  sub_4161C(v1, *(v0 + 24));
  return v1;
}

uint64_t ClientCurrency.Response.body.setter(uint64_t a1, uint64_t a2)
{
  result = sub_41670(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

BOOL static ClientCurrency.Response.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_9210(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_165110(v3, v2, v5, v4);
}

uint64_t ClientCurrency.Response.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  sub_1B5804(*v1);
  v3 = *(v2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return sub_1B3FA4();
}

Swift::Int ClientCurrency.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5804(v1);
  v3 = *(v2 + 16);
  sub_1B5804(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_1B4884();
      sub_1B4884();

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  sub_1B3FA4();
  return sub_1B5844();
}

Swift::Int sub_164B44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1BA44(v4, v2);
  sub_1B3FA4();
  return sub_1B5844();
}

uint64_t sub_164BBC(uint64_t a1)
{
  v3 = v1[1];
  sub_1B5804(*v1);
  sub_1BA44(a1, v3);

  return sub_1B3FA4();
}

Swift::Int sub_164C24(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B57F4();
  sub_1B5804(v2);
  sub_1BA44(v5, v3);
  sub_1B3FA4();
  return sub_1B5844();
}

uint64_t sub_164C98@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B3D84();
    if (v10)
    {
      v11 = sub_1B3DA4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B3D94();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B3D84();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B3DA4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B3D94();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_164EC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_165058(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_41670(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_164C98(v13, a3, a4, &v12);
  v10 = v4;
  sub_41670(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_165058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B3D84();
  v11 = result;
  if (result)
  {
    result = sub_1B3DA4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B3D94();
  sub_164C98(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_165110(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_4161C(a3, a4);
          return sub_164EC8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s20BooksPersonalization14ClientCurrencyO7RequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B3ED4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClientCurrency.Request(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1B5604() & 1) == 0 || (sub_9210(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_1642BC(v12, v11);
      sub_1642BC(v15, v14);
      sub_85D94(v12, v11);
      return 1;
    }

    goto LABEL_12;
  }

  if (v14 >> 60 == 15)
  {
LABEL_12:
    sub_1642BC(v12, v11);
    sub_1642BC(v15, v14);
    sub_85D94(v12, v11);
    sub_85D94(v15, v14);
    return 0;
  }

  sub_1642BC(v12, v11);
  sub_1642BC(v15, v14);
  v17 = sub_165110(v12, v11, v15, v14);
  sub_85D94(v15, v14);
  sub_85D94(v12, v11);
  return v17;
}

uint64_t sub_165434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_165480()
{
  result = qword_22E618;
  if (!qword_22E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E618);
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.makeCall(with:operationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_226C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_165644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_165718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B3F34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1657D4(uint64_t a1)
{
  sub_1B3F34();
  if (v1 <= 0x3F)
  {
    sub_165870();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_165870()
{
  if (!qword_22E688)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22E688);
    }
  }
}

BooksPersonalization::BookHistoryFeature_optional __swiftcall BookHistoryFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5754();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BookHistoryFeature.rawValue.getter()
{
  result = 0x6E49776569766572;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v2 = 11;
      goto LABEL_16;
    case 3:
      return result;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000002BLL;
      break;
    case 0xA:
    case 0xD:
      v2 = 9;
LABEL_16:
      result = v2 | 0xD000000000000014;
      break;
    case 0xB:
    case 0x11:
      result = 0xD000000000000021;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

unint64_t sub_165BA0@<X0>(unint64_t *a1@<X8>)
{
  result = BookHistoryFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_165BCC()
{
  result = qword_22E6C0;
  if (!qword_22E6C0)
  {
    sub_1CC1C(&qword_22E6C8, &qword_1CFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6C0);
  }

  return result;
}

uint64_t sub_165CF0()
{
  v0 = BookHistoryFeature.rawValue.getter();
  v2 = v1;
  if (v0 == BookHistoryFeature.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B5604();
  }

  return v5 & 1;
}

unint64_t sub_165D90()
{
  result = qword_22E6D0;
  if (!qword_22E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6D0);
  }

  return result;
}

Swift::Int sub_165DE4()
{
  sub_1B57F4();
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_165E4C(uint64_t a1)
{
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();
}

Swift::Int sub_165EB0(uint64_t a1)
{
  sub_1B57F4();
  BookHistoryFeature.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

unint64_t sub_165F24()
{
  result = qword_22E6D8;
  if (!qword_22E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6D8);
  }

  return result;
}

uint64_t sub_165F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[146] = v4;
  v5[145] = a4;
  v5[144] = a3;
  v5[143] = a2;
  v5[142] = a1;
  return _swift_task_switch(sub_165FA8, 0, 0);
}

uint64_t sub_165FA8()
{
  v11 = v0[145];
  v1 = v0[143];
  v2 = v0[142];
  sub_2B0C(&qword_2292F0, &qword_1D0320);
  v3 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[147] = v5;
  *(v5 + 16) = xmmword_1BCA80;
  sub_8478C(v2, v5 + v4);
  memcpy(v0 + 2, v1, 0x460uLL);
  v10 = (*(v11 + 8) + **(v11 + 8));
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_166188;
  v7 = v0[145];
  v8 = v0[144];

  return v10(v5, v0 + 2, v8, v7);
}

uint64_t sub_166188(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1192) = a1;
  *(v3 + 1200) = v1;

  if (v1)
  {
    v4 = sub_16642C;
  }

  else
  {
    v4 = sub_1662B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1662B0()
{
  if (*(v0[149] + 16) && (v1 = sub_3AC78(v0[142]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[149] + 56) + 8 * v1);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[142];

    type metadata accessor for Errors(0);
    sub_1675CC(&qword_22E7E0, type metadata accessor for Errors, &unk_1D0338);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B40F4();
    (*(*(v9 - 8) + 16))(v8, v6, v9);
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

int *SeedBasedRecommendationRequest.init(uuid:seedBooks:userInfo:storeInfo:mediaType:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:bookCandidateLimitPerSeedBook:bookCandidateLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *a4;
  v18 = a4[1];
  v19 = *a5;
  v20 = *a7;
  v21 = sub_1B40F4();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(a9 + result[5]) = a2;
  v23 = (a9 + result[6]);
  *v23 = v15;
  v23[1] = v16;
  v24 = (a9 + result[7]);
  *v24 = v17;
  v24[1] = v18;
  *(a9 + result[8]) = v19;
  *(a9 + result[9]) = a6;
  *(a9 + result[10]) = v20;
  *(a9 + result[11]) = a8;
  *(a9 + result[12]) = a10;
  *(a9 + result[13]) = a11;
  *(a9 + result[14]) = a12;
  return result;
}

uint64_t SeedBasedRecommendationRequest.seedBooks.getter()
{
  type metadata accessor for SeedBasedRecommendationRequest(0);
}

uint64_t SeedBasedRecommendationRequest.userInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SeedBasedRecommendationRequest.storeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SeedBasedRecommendationRequest.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SeedBasedRecommendationRequest.allowedSales.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t SeedBasedRecommendationRequest.excludedStoreIDs.getter()
{
  type metadata accessor for SeedBasedRecommendationRequest(0);
}

unint64_t sub_16677C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684632949;
    v7 = 0x6F666E4972657375;
    v8 = 0x666E4965726F7473;
    if (a1 != 3)
    {
      v8 = 0x707954616964656DLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6B6F6F4264656573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x536465776F6C6C61;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_166908@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_167D24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_16693C(uint64_t a1)
{
  v2 = sub_166E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_166978(uint64_t a1)
{
  v2 = sub_166E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeedBasedRecommendationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2B0C(&qword_22E6E0, &qword_1D00F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_2698(a1, a1[3]);
  sub_166E44();
  sub_1B5884();
  LOBYTE(v16) = 0;
  sub_1B40F4();
  sub_1675CC(&qword_22C878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1B5544();
  if (!v2)
  {
    v9 = type metadata accessor for SeedBasedRecommendationRequest(0);
    v16 = *(v3 + v9[5]);
    v18 = 1;
    sub_2B0C(&qword_229300, &qword_1BC3B8);
    sub_167614(&qword_22E6F0, sub_90C14, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 2;
    sub_1008F0();

    sub_1B5544();

    v12 = (v3 + v9[7]);
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 3;
    sub_100944();

    sub_1B5544();

    LOBYTE(v16) = *(v3 + v9[8]);
    v18 = 4;
    sub_8E75C();
    sub_1B5544();
    LOBYTE(v16) = 5;
    sub_1B5504();
    v16 = *(v3 + v9[10]);
    v18 = 6;
    sub_100998();
    sub_1B5544();
    LOBYTE(v16) = 7;
    sub_1B5504();
    v16 = *(v3 + v9[12]);
    v18 = 8;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    LOBYTE(v16) = 9;
    sub_1B5534();
    LOBYTE(v16) = 10;
    sub_1B5534();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_166E44()
{
  result = qword_22E6E8;
  if (!qword_22E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E6E8);
  }

  return result;
}

uint64_t SeedBasedRecommendationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1B40F4();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_22E6F8, &qword_1D00F8);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SeedBasedRecommendationRequest(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698(a1, a1[3]);
  sub_166E44();
  v29 = v8;
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v22 = v11;
  v23 = a1;
  v21 = v9;
  LOBYTE(v30) = 0;
  sub_1675CC(&qword_22C8C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v12 = v26;
  sub_1B5404();
  v13 = v22;
  (*(v25 + 32))(v22, v12, v4);
  sub_2B0C(&qword_229300, &qword_1BC3B8);
  v31 = 1;
  sub_167614(&qword_22E700, sub_90CE0, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v20 = v4;
  v14 = v21;
  *&v13[v21[5]] = v30;
  v31 = 2;
  sub_101570();
  v26 = 0;
  sub_1B5404();
  *&v13[v14[6]] = v30;
  v31 = 3;
  sub_1015C4();
  sub_1B5404();
  v15 = *(&v30 + 1);
  v16 = &v13[v14[7]];
  *v16 = v30;
  *(v16 + 1) = v15;
  v31 = 4;
  sub_8E8C4();
  sub_1B5404();
  v13[v14[8]] = v30;
  LOBYTE(v30) = 5;
  v13[v14[9]] = sub_1B53C4() & 1;
  v31 = 6;
  sub_101618();
  sub_1B5404();
  *&v13[v14[10]] = v30;
  LOBYTE(v30) = 7;
  v13[v14[11]] = sub_1B53C4() & 1;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v31 = 8;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  *&v13[v14[12]] = v30;
  LOBYTE(v30) = 9;
  *&v22[v21[13]] = sub_1B53F4();
  LOBYTE(v30) = 10;
  v17 = sub_1B53F4();
  (*(v27 + 8))(v29, v28);
  v18 = v22;
  *&v22[v21[14]] = v17;
  sub_8478C(v18, v24);
  sub_2BF8(v23);
  return sub_155848(v18);
}

uint64_t sub_1675CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_167614(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229300, &qword_1BC3B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1676D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1677A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B40F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_167858(uint64_t a1)
{
  sub_1B40F4();
  if (v1 <= 0x3F)
  {
    sub_167940(319);
    if (v2 <= 0x3F)
    {
      sub_B90C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_167940(uint64_t a1)
{
  if (!qword_22E770)
  {
    sub_42AA8();
    v1 = sub_1B4CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_22E770);
    }
  }
}

uint64_t dispatch thunk of SeedBasedRecommendationServiceType.fetchBooks(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for SeedBasedRecommendationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedBasedRecommendationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_167C20()
{
  result = qword_22E7C8;
  if (!qword_22E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7C8);
  }

  return result;
}

unint64_t sub_167C78()
{
  result = qword_22E7D0;
  if (!qword_22E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7D0);
  }

  return result;
}

unint64_t sub_167CD0()
{
  result = qword_22E7D8;
  if (!qword_22E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E7D8);
  }

  return result;
}

uint64_t sub_167D24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E4965726F7473 && a2 == 0xE90000000000006FLL || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7AF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x536465776F6C6C61 && a2 == 0xEC00000073656C61 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7B10 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D4CC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D4CE0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1680D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22E7E8, &qword_1D0328);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_168148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22E7E8, &qword_1D0328);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1681D0(uint64_t a1)
{
  sub_168288();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1B40F4();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_168288()
{
  if (!qword_22E870)
  {
    v0 = sub_1B40F4();
    if (!v1)
    {
      atomic_store(v0, &qword_22E870);
    }
  }
}

Swift::Int sub_1682D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1686D4(v5);
  *a1 = v2;
  return result;
}

void *Dictionary<>.primarySeed.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  sub_1683E0(v5, a1, __src);
  if (sub_6153C(__src) == 1)
  {
    sub_15C54C(v5);
  }

  else
  {
    memcpy(&v4[7], __src, 0x231uLL);
    v5[0] = 0;
    memcpy(&v5[1], v4, 0x238uLL);
    AuthorRecommendationSource.id.getter();
  }

  return memcpy(a2, v5, 0x239uLL);
}

void sub_1683E0(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = sub_3AB0C(*a1);
    if (v6)
    {
      __dst[0] = *(*(a2 + 56) + 8 * v5);
      swift_bridgeObjectRetain_n();
      sub_1682D0(__dst);

      v7 = *(__dst[0] + 2);
      if (v7)
      {
        memcpy(__dst, &__dst[0][568 * v7 - 536], 0x231uLL);
        sub_4299C(__dst, v8);

        memcpy(a3, __dst, 0x231uLL);
        AuthorRecommendationSource.id.getter();
        return;
      }
    }
  }

  sub_61554(__dst);
  memcpy(a3, __dst, 0x231uLL);
}

BOOL sub_1684E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v34 = *(a1 + 128);
  v35 = v3;
  v36 = *(a1 + 160);
  v4 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v4;
  v5 = v35;
  v6 = 0.0;
  v7 = 0.0;
  if (v35 >> 1 != 0xFFFFFFFF)
  {
    v8 = v32;
    v9 = v33;
    v10 = v34;
    if ((v35 >> 62) > 2)
    {
      v11 = v32;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BCA80;
      *(v11 + 32) = v8;
      *(v11 + 48) = v9;
      *(v11 + 64) = v10;
      *(v11 + 80) = v5 & 1;
    }

    sub_42CD4(&v32, &v27);
    v12 = Array<A>.affinity.getter(v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      v7 = *&v12;
    }
  }

  v15 = *(a2 + 144);
  v29 = *(a2 + 128);
  v30 = v15;
  v31 = *(a2 + 160);
  v16 = *(a2 + 112);
  v27 = *(a2 + 96);
  v28 = v16;
  v17 = v30;
  if (v30 >> 1 != 0xFFFFFFFF)
  {
    v18 = v27;
    v19 = v28;
    v20 = v29;
    if ((v30 >> 62) > 2)
    {
      v21 = v27;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BCA80;
      *(v21 + 32) = v18;
      *(v21 + 48) = v19;
      *(v21 + 64) = v20;
      *(v21 + 80) = v17 & 1;
    }

    sub_42CD4(&v27, v26);
    v22 = Array<A>.affinity.getter(v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v6 = *&v22;
    }
  }

  return v7 < v6;
}

Swift::Int sub_1686D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      if (v2 <= 1)
      {
        v4 = _swiftEmptyArrayStorage;
      }

      else
      {
        v4 = sub_1B4B34();
        v4[2] = v2 / 2;
      }

      v6[0] = v4 + 4;
      v6[1] = v2 / 2;
      v5 = v4;
      sub_168AE0(v6);
      v5[2] = 0;
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
    return sub_1687CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1687CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v31 = *a4;
    v4 = *a4 + 568 * a3 - 568;
    v5 = result - a3 + 1;
LABEL_5:
    v29 = v4;
    v30 = a3;
    v28 = v5;
    for (i = v5; ; ++i)
    {
      memcpy(__dst, (v4 + 568), 0x231uLL);
      memcpy(v40, v4, 0x231uLL);
      v7 = __dst[18];
      v32 = i;
      if (__dst[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dst, __src);
        sub_4299C(v40, __src);
        v8 = 0.0;
      }

      else
      {
        v9 = __dst[12];
        v10 = __dst[13];
        v11 = __dst[14];
        v12 = __dst[15];
        v13 = __dst[16];
        v14 = __dst[17];
        if ((__dst[18] >> 62) > 2)
        {
          v15 = __dst[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BCA80;
          *(v15 + 32) = v9;
          *(v15 + 40) = v10;
          *(v15 + 48) = v11;
          *(v15 + 56) = v12;
          *(v15 + 64) = v13;
          *(v15 + 72) = v14;
          *(v15 + 80) = v7 & 1;
        }

        sub_4299C(__dst, __src);
        sub_4299C(v40, __src);
        sub_169DD8(&__dst[12], __src);
        v16 = Array<A>.affinity.getter(v15);
        v18 = v17;

        v8 = 0.0;
        i = v32;
        if ((v18 & 1) == 0)
        {
          v8 = *&v16;
        }
      }

      v35 = v40[8];
      v36 = v40[9];
      v37 = *&v40[10];
      v33 = v40[6];
      v34 = v40[7];
      v19 = v40[9];
      if (*&v40[9] >> 1 == 0xFFFFFFFFLL)
      {
        break;
      }

      v20 = v33;
      v21 = v34;
      v22 = v35;
      if ((*&v40[9] >> 62) > 2)
      {
        v23 = v33;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BCA80;
        *(v23 + 32) = v20;
        *(v23 + 48) = v21;
        *(v23 + 64) = v22;
        *(v23 + 80) = v19 & 1;
      }

      sub_42CD4(&v33, __src);
      v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
      v26 = v25;

      sub_2601C(v40);
      result = sub_2601C(__dst);
      i = v32;
      if (v26)
      {
        goto LABEL_19;
      }

      if (v8 >= v24)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (!v31)
      {
        __break(1u);
        return result;
      }

      memcpy(__src, (v4 + 568), 0x231uLL);
      memcpy((v4 + 568), v4, 0x238uLL);
      result = memcpy(v4, __src, 0x231uLL);
      if (!i)
      {
LABEL_4:
        a3 = v30 + 1;
        v4 = v29 + 568;
        v5 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v4 -= 568;
    }

    sub_2601C(v40);
    result = sub_2601C(__dst);
LABEL_19:
    if (v8 >= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_168AE0(uint64_t a1)
{
  *&result = COERCE_DOUBLE(__chkstk_darwin(a1));
  v111 = result;
  v117 = v5;
  v6 = v5[1];
  if (v6 < 1)
  {
    *&v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
LABEL_123:
    v2 = *v111;
    if (!*v111)
    {
      goto LABEL_166;
    }

    i = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    result = i;
LABEL_126:
    v138 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      i = 568;
      while (*v117)
      {
        v106 = *(result + 16 * v105);
        v107 = result;
        v108 = *(result + 16 * (v105 - 1) + 40);
        sub_169690((*v117 + 568 * v106), (*v117 + 568 * *(result + 16 * (v105 - 1) + 32)), (*v117 + 568 * v108), *&v2);
        if (v1)
        {
          goto LABEL_138;
        }

        if (v108 < v106)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v107 = COERCE_DOUBLE(sub_52E40(v107));
        }

        if (v105 - 2 >= *(v107 + 2))
        {
          goto LABEL_154;
        }

        v109 = &v107[16 * v105];
        *v109 = v106;
        *(v109 + 1) = v108;
        v138 = v107;
        sub_52DB4(v105 - 1);
        result = v138;
        v105 = *(v138 + 16);
        if (v105 <= 1)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_164;
    }

LABEL_138:
    *&result = COERCE_DOUBLE();
    return result;
  }

  v110 = v4;
  v7 = 0.0;
  *&v8 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  while (1)
  {
    i = *&v7 + 1;
    v113 = v7;
    v114 = v8;
    if (*&v7 + 1 >= v6)
    {
      v13 = *&v7 + 1;
      goto LABEL_34;
    }

    v10 = v7;
    v11 = *v117;
    v12 = (*v117 + 568 * i);
    memcpy(v136, v12, 0x231uLL);
    memcpy(__dst, v12, 0x231uLL);
    *&v2 = v11 + 568 * *&v10;
    memcpy(v137, *&v2, sizeof(v137));
    memcpy(__src, *&v2, 0x231uLL);
    sub_4299C(v136, v133);
    sub_4299C(v137, v133);
    v122 = sub_1684E0(__dst, __src);
    if (v1)
    {
      memcpy(v132, __src, 0x231uLL);
      sub_2601C(v132);
      memcpy(v133, __dst, 0x231uLL);
      sub_2601C(v133);
      goto LABEL_138;
    }

    memcpy(v132, __src, 0x231uLL);
    sub_2601C(v132);
    memcpy(v133, __dst, 0x231uLL);
    *&result = COERCE_DOUBLE(sub_2601C(v133));
    v13 = *&v10 + 2;
    if (*&v10 + 2 >= v6)
    {
      goto LABEL_31;
    }

    v14 = v11 + 568 * *&v10 + 568;
    v120 = v6;
    while (1)
    {
      memcpy(v130, (v14 + 568), 0x231uLL);
      memcpy(v131, v14, sizeof(v131));
      v15 = v130[18];
      v118 = v13;
      if (v130[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(v130, &v125);
        sub_4299C(v131, &v125);
        v16 = 0.0;
      }

      else
      {
        v17 = v130[12];
        v18 = v130[13];
        v19 = v130[14];
        v20 = v130[15];
        v21 = v130[16];
        v22 = v130[17];
        if ((v130[18] >> 62) > 2)
        {
          v23 = v130[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1BCA80;
          *(v23 + 32) = v17;
          *(v23 + 40) = v18;
          *(v23 + 48) = v19;
          *(v23 + 56) = v20;
          *(v23 + 64) = v21;
          *(v23 + 72) = v22;
          *(v23 + 80) = v15 & 1;
        }

        sub_4299C(v130, &v125);
        sub_4299C(v131, &v125);
        sub_169DD8(&v130[12], &v125);
        v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
        v25 = v24;

        v16 = 0.0;
        v13 = v118;
        v6 = v120;
        if ((v25 & 1) == 0)
        {
          v16 = v2;
        }
      }

      v127 = *&v131[128];
      v128 = *&v131[144];
      v129 = *&v131[160];
      v125 = *&v131[96];
      v126 = *&v131[112];
      v26 = v131[144];
      if (*&v131[144] >> 1 == 0xFFFFFFFFLL)
      {
        sub_2601C(v131);
        *&result = COERCE_DOUBLE(sub_2601C(v130));
LABEL_21:
        v33 = v16 < 0.0;
        goto LABEL_23;
      }

      v27 = v125;
      v28 = v126;
      v29 = v127;
      if ((*&v131[144] >> 62) > 2)
      {
        v30 = v125;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1BCA80;
        *(v30 + 32) = v27;
        *(v30 + 48) = v28;
        *(v30 + 64) = v29;
        *(v30 + 80) = v26 & 1;
      }

      sub_42CD4(&v125, v124);
      v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v30));
      v32 = v31;

      sub_2601C(v131);
      *&result = COERCE_DOUBLE(sub_2601C(v130));
      v13 = v118;
      v6 = v120;
      if (v32)
      {
        goto LABEL_21;
      }

      v33 = v16 < v2;
LABEL_23:
      v34 = !v33;
      if (((v122 ^ v34) & 1) == 0)
      {
        break;
      }

      ++v13;
      v14 += 568;
      if (v6 == v13)
      {
        i = v13 - 1;
        v13 = v6;
        goto LABEL_31;
      }
    }

    i = v13 - 1;
LABEL_31:
    if (v122)
    {
      v2 = v113;
      if (v13 >= *&v113)
      {
        if (*&v113 <= i)
        {
          i = 568 * v13 - 568;
          v102 = 568 * *&v113;
          v103 = v13;
          do
          {
            if (*&v2 != --v103)
            {
              v104 = *v117;
              if (!*v117)
              {
                goto LABEL_163;
              }

              memcpy(v131, (v104 + v102), sizeof(v131));
              memmove((v104 + v102), (v104 + i), 0x238uLL);
              *&result = COERCE_DOUBLE(memcpy((v104 + i), v131, 0x231uLL));
            }

            ++*&v2;
            i -= 568;
            v102 += 568;
          }

          while (*&v2 < v103);
        }

        goto LABEL_34;
      }

LABEL_159:
      __break(1u);
LABEL_160:
      *&result = COERCE_DOUBLE(sub_52E40(i));
      goto LABEL_126;
    }

LABEL_34:
    v35 = v117[1];
    if (v13 < v35)
    {
      if (__OFSUB__(v13, *&v113))
      {
        goto LABEL_156;
      }

      if (v13 - *&v113 < v110)
      {
        v36 = *&v113 + v110;
        if (__OFADD__(*&v113, v110))
        {
          goto LABEL_157;
        }

        if (v36 >= v35)
        {
          v36 = v117[1];
        }

        if (v36 < *&v113)
        {
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (v13 != v36)
        {
          break;
        }
      }
    }

LABEL_65:
    if (v13 < *&v113)
    {
      goto LABEL_155;
    }

    *&result = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
    if (result)
    {
      v8 = v114;
    }

    else
    {
      *&result = COERCE_DOUBLE(sub_32F04(0, *(v114 + 2) + 1, 1, v114));
      v8 = result;
    }

    i = *(v8 + 2);
    v57 = *(v8 + 3);
    v58 = i + 1;
    if (i >= v57 >> 1)
    {
      *&result = COERCE_DOUBLE(sub_32F04((v57 > 1), i + 1, 1, v8));
      v8 = result;
    }

    *(v8 + 2) = v58;
    v59 = &v8[16 * i];
    v59[4] = v113;
    v59[5] = *&v13;
    v60 = *v111;
    if (!*v111)
    {
      goto LABEL_165;
    }

    if (*&i != 0.0)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v8 + 4);
          v63 = *(v8 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_85:
          if (v65)
          {
            goto LABEL_144;
          }

          v78 = &v8[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_147;
          }

          v84 = &v8[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_151;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v88 = &v8[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_99:
        if (v83)
        {
          goto LABEL_146;
        }

        v91 = &v8[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_149;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_106:
        i = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (!*v117)
        {
          goto LABEL_162;
        }

        v2 = *&v8;
        v99 = *&v8[16 * i + 32];
        v100 = *&v8[16 * v61 + 40];
        sub_169690((*v117 + 568 * v99), (*v117 + 568 * *&v8[16 * v61 + 32]), (*v117 + 568 * v100), v60);
        if (v1)
        {
          goto LABEL_138;
        }

        if (v100 < v99)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = COERCE_DOUBLE(sub_52E40(*&v2));
        }

        if (i >= *(*&v2 + 16))
        {
          goto LABEL_141;
        }

        v101 = *&v2 + 16 * i;
        *(v101 + 32) = v99;
        *(v101 + 40) = v100;
        *&v138 = v2;
        *&result = COERCE_DOUBLE(sub_52DB4(v61));
        v8 = v138;
        v58 = *(v138 + 16);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v8[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_142;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_143;
      }

      v73 = &v8[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_145;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_148;
      }

      if (v77 >= v69)
      {
        v95 = &v8[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_152;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

LABEL_3:
    v7 = *&v13;
    v6 = v117[1];
    if (v13 >= v6)
    {
      goto LABEL_123;
    }
  }

  v121 = *v117;
  v37 = *v117 + 568 * v13 - 568;
  v38 = *&v113 - v13 + 1;
  v112 = v36;
LABEL_44:
  v119 = v13;
  v115 = v38;
  v116 = v37;
  for (i = v38; ; ++i)
  {
    memcpy(v136, (v37 + 568), 0x231uLL);
    memcpy(v137, v37, sizeof(v137));
    v39 = v136[18];
    v123 = i;
    if (v136[18] >> 1 == 0xFFFFFFFFLL)
    {
      sub_4299C(v136, __dst);
      sub_4299C(v137, __dst);
      v40 = 0.0;
    }

    else
    {
      v41 = v136[12];
      v42 = v136[13];
      v43 = v136[14];
      v44 = v136[15];
      v45 = v136[16];
      v46 = v136[17];
      if ((v136[18] >> 62) > 2)
      {
        v47 = v136[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1BCA80;
        *(v47 + 32) = v41;
        *(v47 + 40) = v42;
        *(v47 + 48) = v43;
        *(v47 + 56) = v44;
        *(v47 + 64) = v45;
        *(v47 + 72) = v46;
        *(v47 + 80) = v39 & 1;
      }

      sub_4299C(v136, __dst);
      sub_4299C(v137, __dst);
      sub_169DD8(&v136[12], __dst);
      v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v47));
      v49 = v48;

      v40 = 0.0;
      i = v123;
      if ((v49 & 1) == 0)
      {
        v40 = v2;
      }
    }

    __src[2] = *&v137[128];
    __src[3] = *&v137[144];
    *&__src[4] = *&v137[160];
    __src[0] = *&v137[96];
    __src[1] = *&v137[112];
    v50 = v137[144];
    if (*&v137[144] >> 1 == 0xFFFFFFFFLL)
    {
      sub_2601C(v137);
      *&result = COERCE_DOUBLE(sub_2601C(v136));
LABEL_58:
      if (v40 >= 0.0)
      {
        goto LABEL_43;
      }

      goto LABEL_61;
    }

    v51 = __src[0];
    v52 = __src[1];
    v53 = __src[2];
    if ((*&v137[144] >> 62) > 2)
    {
      v54 = *&__src[0];
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BCA80;
      *(v54 + 32) = v51;
      *(v54 + 48) = v52;
      *(v54 + 64) = v53;
      *(v54 + 80) = v50 & 1;
    }

    sub_42CD4(__src, __dst);
    v2 = COERCE_DOUBLE(Array<A>.affinity.getter(v54));
    v56 = v55;

    sub_2601C(v137);
    *&result = COERCE_DOUBLE(sub_2601C(v136));
    i = v123;
    if (v56)
    {
      goto LABEL_58;
    }

    if (v40 >= v2)
    {
      goto LABEL_43;
    }

LABEL_61:
    if (!v121)
    {
      break;
    }

    memcpy(__dst, (v37 + 568), 0x231uLL);
    memcpy((v37 + 568), v37, 0x238uLL);
    memcpy(v37, __dst, 0x231uLL);
    if (*&i == 0.0)
    {
LABEL_43:
      v13 = v119 + 1;
      v37 = v116 + 568;
      v38 = v115 - 1;
      if (v119 + 1 == v112)
      {
        v13 = v112;
        goto LABEL_65;
      }

      goto LABEL_44;
    }

    v37 -= 568;
  }

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
  return result;
}

uint64_t sub_169690(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v37 = 568 * v11;
    if (a4 != __src || &__src[v37] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v37];
    if (v10 < 568 || v6 <= v7)
    {
      goto LABEL_75;
    }

    v72 = v4;
    v66 = v7;
LABEL_36:
    v68 = v6;
    v38 = v6 - 568;
    v5 -= 568;
    v39 = v13;
    v64 = v6 - 568;
    while (1)
    {
      v13 = v39;
      v39 -= 568;
      memcpy(__dsta, v39, 0x231uLL);
      memcpy(v80, v38, 0x231uLL);
      v40 = __dsta[18];
      v70 = v13;
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        v41 = 0.0;
        goto LABEL_49;
      }

      v42 = __dsta[12];
      v43 = __dsta[13];
      v44 = __dsta[14];
      v45 = __dsta[16];
      v46 = __dsta[17];
      if ((__dsta[18] >> 62) <= 1)
      {
        break;
      }

      if (__dsta[18] >> 62 == 2)
      {
        v62 = __dsta[15];
        goto LABEL_45;
      }

      v47 = __dsta[12];
LABEL_47:
      sub_4299C(__dsta, &v74);
      sub_4299C(v80, &v74);
      sub_169DD8(&__dsta[12], &v74);
      v48 = Array<A>.affinity.getter(v47);
      v50 = v49;

      v41 = 0.0;
      v13 = v70;
      v38 = v64;
      if ((v50 & 1) == 0)
      {
        v41 = *&v48;
      }

LABEL_49:
      v76 = v80[8];
      v77 = v80[9];
      v78 = *&v80[10];
      v74 = v80[6];
      v75 = v80[7];
      v51 = v80[9];
      if (*&v80[9] >> 1 != 0xFFFFFFFFLL)
      {
        v52 = v74;
        v53 = v75;
        v54 = v76;
        if ((*&v80[9] >> 62) <= 1)
        {
          v63 = *(&v76 + 1);
          goto LABEL_56;
        }

        if (*&v80[9] >> 62 == 2)
        {
          v63 = *(&v76 + 1);
LABEL_56:
          sub_2B0C(&qword_229488, &qword_1BC520);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1BCA80;
          *(v55 + 32) = v52;
          *(v55 + 48) = v53;
          *(v55 + 64) = v54;
          *(v55 + 72) = v63;
          *(v55 + 80) = v51 & 1;
        }

        else
        {
          v55 = v74;
        }

        sub_42CD4(&v74, v73);
        v56 = COERCE_DOUBLE(Array<A>.affinity.getter(v55));
        v58 = v57;

        sub_2601C(v80);
        sub_2601C(__dsta);
        v38 = v64;
        if (v58)
        {
          v13 = v70;
          if (v41 < 0.0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v13 = v70;
          if (v41 < v56)
          {
LABEL_66:
            v4 = v72;
            if ((v5 + 568) < v68 || v5 >= v68)
            {
              memmove(v5, v38, 0x238uLL);
              v59 = v66;
            }

            else
            {
              v59 = v66;
              if (v5 + 568 != v68)
              {
                memmove(v5, v38, 0x238uLL);
              }
            }

            if (v13 <= v72 || (v6 = v38, v38 <= v59))
            {
              v6 = v38;
              goto LABEL_75;
            }

            goto LABEL_36;
          }
        }

        goto LABEL_62;
      }

      sub_2601C(v80);
      sub_2601C(__dsta);
      if (v41 < 0.0)
      {
        goto LABEL_66;
      }

LABEL_62:
      v4 = v72;
      if ((v5 + 568) < v13 || v5 >= v13 || v5 + 568 != v13)
      {
        memmove(v5, v39, 0x238uLL);
      }

      v5 -= 568;
      if (v39 <= v72)
      {
        v13 = v39;
        v6 = v68;
        goto LABEL_75;
      }
    }

    v62 = __dsta[15];
LABEL_45:
    sub_2B0C(&qword_229488, &qword_1BC520);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BCA80;
    *(v47 + 32) = v42;
    *(v47 + 40) = v43;
    *(v47 + 48) = v44;
    *(v47 + 56) = v62;
    *(v47 + 64) = v45;
    *(v47 + 72) = v46;
    *(v47 + 80) = v40 & 1;
    goto LABEL_47;
  }

  v12 = 568 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 568 && v6 < v5)
  {
    v69 = v13;
    while (1)
    {
      v65 = v7;
      v67 = v6;
      memcpy(__dsta, v6, 0x231uLL);
      memcpy(v80, v4, 0x231uLL);
      v14 = __dsta[18];
      v71 = v4;
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        v15 = 0.0;
      }

      else
      {
        v16 = __dsta[12];
        v17 = __dsta[13];
        v18 = __dsta[14];
        v19 = __dsta[15];
        v20 = __dsta[16];
        v21 = __dsta[17];
        if ((__dsta[18] >> 62) > 2)
        {
          v22 = __dsta[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1BCA80;
          *(v22 + 32) = v16;
          *(v22 + 40) = v17;
          *(v22 + 48) = v18;
          *(v22 + 56) = v19;
          *(v22 + 64) = v20;
          *(v22 + 72) = v21;
          *(v22 + 80) = v14 & 1;
        }

        sub_4299C(__dsta, &v74);
        sub_4299C(v80, &v74);
        sub_169DD8(&__dsta[12], &v74);
        v23 = Array<A>.affinity.getter(v22);
        v25 = v24;

        v15 = 0.0;
        v4 = v71;
        if ((v25 & 1) == 0)
        {
          v15 = *&v23;
        }
      }

      v76 = v80[8];
      v77 = v80[9];
      v78 = *&v80[10];
      v74 = v80[6];
      v75 = v80[7];
      v26 = v80[9];
      if (*&v80[9] >> 1 == 0xFFFFFFFFLL)
      {
        break;
      }

      v27 = v74;
      v28 = v75;
      v29 = v76;
      if ((*&v80[9] >> 62) > 2)
      {
        v30 = v74;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1BCA80;
        *(v30 + 32) = v27;
        *(v30 + 48) = v28;
        *(v30 + 64) = v29;
        *(v30 + 80) = v26 & 1;
      }

      sub_42CD4(&v74, v73);
      v31 = COERCE_DOUBLE(Array<A>.affinity.getter(v30));
      v33 = v32;

      sub_2601C(v80);
      sub_2601C(__dsta);
      v4 = v71;
      if (v33)
      {
        goto LABEL_21;
      }

      v13 = v69;
      if (v15 >= v31)
      {
LABEL_25:
        v35 = v4;
        v34 = v65;
        v6 = v67;
        v36 = v65 == v4;
        v4 += 568;
        if (v36)
        {
          goto LABEL_27;
        }

LABEL_26:
        memmove(v34, v35, 0x238uLL);
        goto LABEL_27;
      }

LABEL_22:
      v34 = v65;
      v35 = v67;
      v6 = v67 + 568;
      if (v65 != v67)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 = v34 + 568;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_29;
      }
    }

    sub_2601C(v80);
    sub_2601C(__dsta);
LABEL_21:
    v13 = v69;
    if (v15 >= 0.0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_29:
  v6 = v7;
LABEL_75:
  v60 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v60])
  {
    memmove(v6, v4, v60);
  }

  return 1;
}

uint64_t sub_169DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22A4E0, &unk_1C01D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169E48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_264B8(a1, a7);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AccessManager.RequirementEntry(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t AccessManager.register(requirement:for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - v7;
  v10 = *(v9 + 88);
  *&v18.val[0].f64[0] = v5;
  *&v18.val[0].f64[1] = v10;
  v18.val[1] = v18.val[0];
  v11 = v17;
  vst2q_f64(v11, v18);
  v12 = type metadata accessor for AccessManager.RequirementEntry(0, v17);
  __chkstk_darwin(v12);
  v14 = &v16 - v13;
  sub_404C4(a1, v17);
  (*(v6 + 16))(v8, a2, v5);
  sub_169E48(v17, v8, v5, v5, v10, v10, v14);
  swift_beginAccess();
  sub_1B4B94();
  sub_1B4B64();
  return swift_endAccess();
}

uint64_t dispatch thunk of AccessRequirementType.isSatisfied()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_441B4;

  return v7(a1, a2);
}

uint64_t sub_16A280(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_16A2DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_16A45C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_16A6A0(uint64_t a1)
{
  result = sub_16AB08();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16A728(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_16A8AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
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
        a1[2] = BYTE2(v18);
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
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

unint64_t sub_16AB08()
{
  result = qword_22EA18;
  if (!qword_22EA18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_22EA18);
  }

  return result;
}

uint64_t sub_16AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_79E9C(a3, v25 - v10);
  v12 = sub_1B4C54();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_79E34(v11);
  }

  else
  {
    sub_1B4C44();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B4BC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B4854() + 32;
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

      sub_79E34(a3);

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

  sub_79E34(a3);
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

uint64_t sub_16AE2C()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22EA20);
  sub_50E58(v0, qword_22EA20);
  return sub_1B4634();
}

uint64_t static Logger.historyServiceStress.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_228338 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4644();
  v3 = sub_50E58(v2, qword_22EA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall BookHistoryServiceStressTest.fetchBookHistoryForStressTesting()()
{
  v1 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1B4C54();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_16AB6C(0, 0, v3, &unk_1D0420, v5);
}

uint64_t sub_16B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[426] = a4;
  v5 = sub_1B40C4();
  v4[427] = v5;
  v4[428] = *(v5 - 8);
  v4[429] = swift_task_alloc();
  v4[430] = swift_task_alloc();
  v4[431] = swift_task_alloc();

  return _swift_task_switch(sub_16B134, 0, 0);
}

uint64_t sub_16B134()
{
  if (qword_228338 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4644();
  v0[432] = sub_50E58(v1, qword_22EA20);
  v2 = sub_1B4624();
  v3 = sub_1B4DB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Beginning to fetch book histories", v4, 2u);
  }

  v5 = v0[426];

  v6 = v5[10];
  v7 = v5[11];
  sub_2698(v5 + 7, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[433] = v8;
  *v8 = v0;
  v8[1] = sub_16B324;

  return v10(v0 + 2, v6, v7);
}

uint64_t sub_16B324()
{
  *(*v1 + 3472) = v0;

  if (v0)
  {
    v2 = sub_16B860;
  }

  else
  {
    v2 = sub_16B438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_16B438()
{
  v1 = v0[426];
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  sub_1B40B4();
  v3 = v1[5];
  v2 = v1[6];
  sub_2698(v1 + 2, v3);
  v4 = sub_40228(&off_20E7A8);
  v0[435] = v4;
  memcpy(v0 + 282, v0 + 142, 0x460uLL);
  v5 = swift_task_alloc();
  v0[436] = v5;
  *v5 = v0;
  v5[1] = sub_16B540;

  return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v4, 0x7FFFFFFFFFFFFFFFLL, v0 + 282, v3, v2);
}

uint64_t sub_16B540(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 3496) = v1;

  if (v1)
  {
    v4 = sub_16B9FC;
  }

  else
  {

    sub_2B54(v3 + 1136);
    v4 = sub_16B698;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_16B698()
{
  (*(v0[428] + 16))(v0[430], v0[431], v0[427]);
  v1 = sub_1B4624();
  v2 = sub_1B4DB4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[430];
  if (v3)
  {
    v5 = v0[429];
    v6 = v0[428];
    v7 = v0[427];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_1B40B4();
    sub_1B3FF4();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v5, v7);
    v11(v4, v7);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "Finished fetching book histories.  Total time=%f", v8, 0xCu);
  }

  else
  {
    v12 = v0[428];
    v13 = v0[427];

    v11 = *(v12 + 8);
    v11(v4, v13);
  }

  v11(v0[431], v0[427]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_16B860()
{
  v11 = v0;
  swift_errorRetain();
  v1 = sub_1B4624();
  v2 = sub_1B4D94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_1B5794();
    v7 = sub_60FF4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "Error fetching book history: %s", v3, 0xCu);
    sub_2BF8(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_16B9FC()
{
  v11 = v0;
  (*(v0[428] + 8))(v0[431], v0[427]);
  sub_2B54((v0 + 142));
  swift_errorRetain();
  v1 = sub_1B4624();
  v2 = sub_1B4D94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_1B5794();
    v7 = sub_60FF4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "Error fetching book history: %s", v3, 0xCu);
    sub_2BF8(v4);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_16BBC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7A038;

  return sub_16B05C(a1, v4, v5, v6);
}

uint64_t BookHistoryServiceStressTest.deinit()
{
  sub_2BF8((v0 + 16));
  sub_2BF8((v0 + 56));
  return v0;
}

uint64_t sub_16BC9C()
{
  v1 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = sub_1B4C54();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_16AB6C(0, 0, v3, &unk_1D04B0, v6);
}

uint64_t sub_16BDF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_16BE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226C;

  return sub_16B05C(a1, v4, v5, v6);
}

uint64_t sub_16BEEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16BF24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7A038;

  return sub_797FC(a1, v4);
}

uint64_t sub_16BFDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_797FC(a1, v4);
}

id FrameworkAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___BPAssembly_assemblies;
  sub_2B0C(&qword_22EAE8, &qword_1D04E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D04D0;
  v4 = type metadata accessor for Assembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_16C41C(&qword_22EAF0, type metadata accessor for Assembly, &unk_1C6560);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for AuthorRecommendationServiceAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_16C41C(&qword_22EAF8, type metadata accessor for AuthorRecommendationServiceAssembly, &unk_1BB394);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for CollectionServiceAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_16C41C(&qword_22EB00, type metadata accessor for CollectionServiceAssembly, &unk_1D136C);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for GenreRecommendationServiceAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_16C41C(&qword_22EB08, type metadata accessor for GenreRecommendationServiceAssembly, &unk_1CEBC4);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for MediaTypeRecommendationServiceAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_16C41C(&qword_22EB10, type metadata accessor for MediaTypeRecommendationServiceAssembly, &unk_1C0048);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for MediaTypesRecommendationServiceAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_16C41C(&qword_22EB18, type metadata accessor for MediaTypesRecommendationServiceAssembly, &unk_1BFCB8);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for ScorerAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_16C41C(&qword_22EB20, type metadata accessor for ScorerAssembly, &unk_1C0514);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for WorkServiceAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_16C41C(&qword_22EB28, type metadata accessor for WorkServiceAssembly, &unk_1CFCF4);
  *(v3 + 312) = v19;
  *&v0[v2] = v3;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_16C41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BooksPersonalization::SeedBasedRecommendationSource_optional __swiftcall SeedBasedRecommendationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213E40;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

unint64_t sub_16C544()
{
  result = qword_22EB58;
  if (!qword_22EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB58);
  }

  return result;
}

uint64_t sub_16C598@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_213E40;
  v8._object = v3;
  v5 = sub_1B52E4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_16C5FC()
{
  result = qword_22EB60;
  if (!qword_22EB60)
  {
    sub_1CC1C(&qword_22EB68, &qword_1D05E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB60);
  }

  return result;
}

unint64_t sub_16C674()
{
  result = qword_22EB70;
  if (!qword_22EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EB70);
  }

  return result;
}

uint64_t sub_16C6D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_3B0C8(v4), (v7 & 1) != 0))
  {
    sub_404C4(*(v5 + 56) + 40 * v6, v10);
    sub_264B8(v10, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_16C7C4();
    swift_allocError();
    *v9 = v4;
    return swift_willThrow();
  }
}

unint64_t sub_16C7C4()
{
  result = qword_22EC18;
  if (!qword_22EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22EC18);
  }

  return result;
}

Swift::Int sub_16C828(uint64_t *a1)
{
  v2 = *(sub_2B0C(&qword_2293C8, &qword_1D07B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_56B1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_16CE50(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_16C8DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_16C9A8, 0, 0);
}

uint64_t sub_16C9A8()
{
  v33 = v0;
  v1 = v0[8];
  v2 = *(v1 + 64);
  v32 = _swiftEmptyArrayStorage;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v6 = (63 - v4) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        result = sub_5EF0C(v10);
      }

      while (v5);
      continue;
    }
  }

  v11 = v0[9];

  v12 = v32;
  v13 = v11[5];
  v14 = v11[6];
  sub_2698(v11 + 2, v13);
  v15 = *(v14 + 8);
  v16 = sub_42B50();
  v17 = v15(sub_16CD28, 0, v32, &type metadata for Book.MediaType, v16, v13, v14);
  v18 = *(v17 + 16);
  if (!v18)
  {

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v31 = v32;
  v19 = v0[11];
  v20 = sub_350D4(v18, 0);
  v21 = sub_3EC90(&v32, v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18, v17);
  v22 = v32;

  result = sub_417B8(v22);
  if (v21 != v18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v12 = v31;
LABEL_15:
  v32 = v20;
  sub_16C828(&v32);
  v23 = v32[2];
  if (v23)
  {
    v24 = v0[12];
    v25 = v0[10];
    sub_16E298(v32 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * (v23 - 1), v24);

    v26 = *v24;
    sub_EBB90(&v24[*(v25 + 48)]);
    sub_2B0C(&qword_22ECC0, &qword_1D07B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCA80;
    *(inited + 32) = v26;
    v28 = sub_40D04(v12);

    *(inited + 40) = v28;
    v29 = sub_12D970(inited);
    swift_setDeallocating();
    sub_42F48(inited + 32, &qword_22ECC8, &unk_1D07C0);
  }

  else
  {

    v29 = sub_12D970(_swiftEmptyArrayStorage);
  }

  v30 = v0[1];

  return v30(v29);
}

Swift::Int sub_16CD28(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2B0C(&qword_2293B8, &qword_1BC458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCA80;
  *(inited + 32) = v1;
  v3 = sub_9EABC(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t sub_16CDB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return sub_16C8DC(a1);
}

Swift::Int sub_16CE50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2B0C(&qword_2293C8, &qword_1D07B0);
        v6 = sub_1B4B34();
        v6[2] = v5;
      }

      v7 = *(sub_2B0C(&qword_2293C8, &qword_1D07B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_16D24C(v8, v9, a1, v4);
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
    return sub_16CF94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_16CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v9 = __chkstk_darwin(v8);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v47 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  result = __chkstk_darwin(v16);
  v22 = &v37 - v21;
  v39 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v44 = -v24;
    v45 = v23;
    v26 = a1 - a3;
    v38 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v42 = v25;
    v43 = a3;
    v40 = v27;
    v41 = v26;
    v28 = v26;
    v29 = v25;
    while (1)
    {
      sub_16E298(v27, v22);
      sub_16E298(v29, v18);
      sub_16E298(v22, v15);
      v30 = *(v8 + 48);
      v31 = *&v15[v30];
      sub_EBB90(&v15[v30]);
      v32 = v47;
      sub_16E298(v18, v47);
      v33 = *(v8 + 48);
      v34 = *(v32 + v33);
      sub_EBB90(v32 + v33);
      sub_42F48(v18, &qword_2293C8, &qword_1D07B0);
      result = sub_42F48(v22, &qword_2293C8, &qword_1D07B0);
      if (v31 >= v34)
      {
LABEL_4:
        a3 = v43 + 1;
        v25 = v42 + v38;
        v26 = v41 - 1;
        v27 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_42C64(v27, v46);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_42C64(v35, v29);
      v29 += v44;
      v27 += v44;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_16D24C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v114 = a1;
  v6 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v121 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v117 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v126 = &v111 - v10;
  v11 = __chkstk_darwin(v9);
  v128 = &v111 - v12;
  v13 = __chkstk_darwin(v11);
  v127 = &v111 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v111 - v16;
  result = __chkstk_darwin(v15);
  v20 = &v111 - v19;
  v123 = a3;
  v21 = *(a3 + 8);
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_99:
    a3 = *v114;
    if (!*v114)
    {
      goto LABEL_138;
    }

    v4 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
    }

    else
    {
LABEL_132:
      result = sub_52E40(v4);
    }

    v130 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*v123)
      {
        v107 = *(result + 16 * v4);
        v108 = result;
        v109 = *(result + 16 * (v4 - 1) + 40);
        sub_16DC10(*v123 + *(v121 + 72) * v107, *v123 + *(v121 + 72) * *(result + 16 * (v4 - 1) + 32), *v123 + *(v121 + 72) * v109, a3);
        if (v22)
        {
        }

        if (v109 < v107)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_52E40(v108);
        }

        if (v4 - 2 >= *(v108 + 2))
        {
          goto LABEL_126;
        }

        v110 = &v108[16 * v4];
        *v110 = v107;
        *(v110 + 1) = v109;
        v130 = v108;
        sub_52DB4(v4 - 1);
        result = v130;
        v4 = *(v130 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_136;
    }
  }

  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v129 = v6;
  while (1)
  {
    v24 = v22;
    v118 = v23;
    if (v22 + 1 >= v21)
    {
      v40 = (v22 + 1);
      v41 = v113;
    }

    else
    {
      v125 = v21;
      v25 = *v123;
      v26 = *(v121 + 72);
      a3 = *v123 + v26 * (v22 + 1);
      sub_16E298(a3, v20);
      sub_16E298(v25 + v26 * v22, v17);
      v27 = v127;
      sub_16E298(v20, v127);
      v28 = *(v6 + 48);
      v29 = *(v27 + v28);
      sub_EBB90(v27 + v28);
      v30 = v128;
      sub_16E298(v17, v128);
      v31 = *(v6 + 48);
      v32 = *(v30 + v31);
      sub_EBB90(v30 + v31);
      sub_42F48(v17, &qword_2293C8, &qword_1D07B0);
      result = sub_42F48(v20, &qword_2293C8, &qword_1D07B0);
      v112 = v22;
      v4 = v22 + 2;
      v122 = v26;
      v33 = v25 + v26 * (v22 + 2);
      while (v125 != v4)
      {
        sub_16E298(v33, v20);
        sub_16E298(a3, v17);
        v34 = v127;
        sub_16E298(v20, v127);
        v35 = *(v6 + 48);
        v36 = *(v34 + v35);
        sub_EBB90(v34 + v35);
        v37 = v128;
        sub_16E298(v17, v128);
        v38 = *(v6 + 48);
        v39 = *(v37 + v38);
        sub_EBB90(v37 + v38);
        v22 = &qword_1D07B0;
        sub_42F48(v17, &qword_2293C8, &qword_1D07B0);
        result = sub_42F48(v20, &qword_2293C8, &qword_1D07B0);
        ++v4;
        v33 += v122;
        a3 += v122;
        if (v29 < v32 == v36 >= v39)
        {
          v40 = (v4 - 1);
          goto LABEL_11;
        }
      }

      v40 = v125;
LABEL_11:
      v41 = v113;
      v24 = v112;
      if (v29 < v32)
      {
        if (v40 < v112)
        {
          goto LABEL_129;
        }

        if (v112 < v40)
        {
          v4 = v122 * (v40 - 1);
          v42 = v40 * v122;
          v125 = v40;
          v22 = v40;
          v43 = v112;
          a3 = v112 * v122;
          do
          {
            v22 = (v22 - 1);
            if (v43 != v22)
            {
              v44 = *v123;
              if (!*v123)
              {
                goto LABEL_135;
              }

              sub_42C64(v44 + a3, v117);
              if (a3 < v4 || v44 + a3 >= v44 + v42)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_42C64(v117, v44 + v4);
            }

            v43 = (v43 + 1);
            v4 -= v122;
            v42 -= v122;
            a3 += v122;
          }

          while (v43 < v22);
          v41 = v113;
          v6 = v129;
          v24 = v112;
          v40 = v125;
        }
      }
    }

    v45 = v123[1];
    if (v40 < v45)
    {
      if (__OFSUB__(v40, v24))
      {
        goto LABEL_128;
      }

      if (v40 - v24 < v41)
      {
        if (__OFADD__(v24, v41))
        {
          goto LABEL_130;
        }

        if (v24 + v41 >= v45)
        {
          v22 = v123[1];
        }

        else
        {
          v22 = (v24 + v41);
        }

        if (v22 < v24)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v40 != v22)
        {
          break;
        }
      }
    }

    v22 = v40;
    if (v40 < v24)
    {
      goto LABEL_127;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v118;
    }

    else
    {
      result = sub_32F04(0, *(v118 + 2) + 1, 1, v118);
      v23 = result;
    }

    v4 = *(v23 + 2);
    v46 = *(v23 + 3);
    a3 = v4 + 1;
    if (v4 >= v46 >> 1)
    {
      result = sub_32F04((v46 > 1), v4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = a3;
    v47 = &v23[16 * v4];
    *(v47 + 4) = v24;
    *(v47 + 5) = v22;
    if (!*v114)
    {
      goto LABEL_137;
    }

    if (v4)
    {
      v48 = *v114;
      while (1)
      {
        v49 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v50 = *(v23 + 4);
          v51 = *(v23 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_55:
          if (v53)
          {
            goto LABEL_116;
          }

          v66 = &v23[16 * a3];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_119;
          }

          v72 = &v23[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_123;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = a3 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v76 = &v23[16 * a3];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_69:
        if (v71)
        {
          goto LABEL_118;
        }

        v79 = &v23[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v49 - 1;
        if (v49 - 1 >= a3)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*v123)
        {
          goto LABEL_134;
        }

        v87 = v23;
        a3 = *&v23[16 * v4 + 32];
        v88 = *&v23[16 * v49 + 40];
        v89 = v124;
        sub_16DC10(*v123 + *(v121 + 72) * a3, *v123 + *(v121 + 72) * *&v23[16 * v49 + 32], *v123 + *(v121 + 72) * v88, v48);
        v124 = v89;
        if (v89)
        {
        }

        if (v88 < a3)
        {
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v87;
        }

        else
        {
          v90 = sub_52E40(v87);
        }

        v6 = v129;
        if (v4 >= *(v90 + 2))
        {
          goto LABEL_113;
        }

        v91 = &v90[16 * v4];
        *(v91 + 4) = a3;
        *(v91 + 5) = v88;
        v130 = v90;
        v4 = &v130;
        result = sub_52DB4(v49);
        v23 = v130;
        a3 = *(v130 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v23[16 * a3 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_114;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_115;
      }

      v61 = &v23[16 * a3];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_117;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_120;
      }

      if (v65 >= v57)
      {
        v83 = &v23[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_124;
        }

        if (v52 < v86)
        {
          v49 = a3 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v21 = v123[1];
    if (v22 >= v21)
    {
      goto LABEL_99;
    }
  }

  v4 = *v123;
  v92 = *(v121 + 72);
  v93 = *v123 + v92 * (v40 - 1);
  v94 = -v92;
  v112 = v24;
  v95 = v24 - v40;
  v115 = v92;
  v116 = v22;
  a3 = v4 + v40 * v92;
LABEL_88:
  v125 = v40;
  v119 = a3;
  v120 = v95;
  v122 = v93;
  v96 = v93;
  v97 = v129;
  while (1)
  {
    sub_16E298(a3, v20);
    sub_16E298(v96, v17);
    v98 = v127;
    sub_16E298(v20, v127);
    v99 = *(v97 + 48);
    v100 = *(v98 + v99);
    sub_EBB90(v98 + v99);
    v101 = v128;
    sub_16E298(v17, v128);
    v102 = *(v97 + 48);
    v103 = *(v101 + v102);
    sub_EBB90(v101 + v102);
    sub_42F48(v17, &qword_2293C8, &qword_1D07B0);
    result = sub_42F48(v20, &qword_2293C8, &qword_1D07B0);
    if (v100 >= v103)
    {
LABEL_87:
      v40 = (v125 + 1);
      v22 = v116;
      v93 = v122 + v115;
      v95 = v120 - 1;
      a3 = v119 + v115;
      if ((v125 + 1) != v116)
      {
        goto LABEL_88;
      }

      v6 = v129;
      v24 = v112;
      if (v116 < v112)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v4)
    {
      break;
    }

    v104 = v126;
    sub_42C64(a3, v126);
    v97 = v129;
    swift_arrayInitWithTakeFrontToBack();
    sub_42C64(v104, v96);
    v96 += v94;
    a3 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_16DC10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a3;
  v57 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v7 = __chkstk_darwin(v57);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = __chkstk_darwin(v9);
  v55 = &v48 - v13;
  result = __chkstk_darwin(v12);
  v54 = &v48 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_59;
  }

  v18 = v58 - a2;
  if (v58 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v19 = (a2 - a1) / v17;
  v61 = a1;
  v60 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v21;
    if (v21 >= 1)
    {
      v32 = -v17;
      v33 = a4 + v21;
      v51 = a1;
      v52 = a4;
      v50 = v32;
      do
      {
        v48 = v31;
        v34 = a2 + v32;
        v53 = a2;
        while (1)
        {
          v36 = v58;
          if (a2 <= a1)
          {
            v61 = a2;
            v59 = v48;
            goto LABEL_57;
          }

          v49 = v31;
          v58 += v32;
          v37 = v33 + v32;
          v38 = v54;
          sub_16E298(v37, v54);
          v39 = v34;
          v40 = v55;
          sub_16E298(v34, v55);
          sub_16E298(v38, v11);
          v41 = v57;
          v42 = *(v57 + 48);
          v43 = *&v11[v42];
          v44 = v11;
          sub_EBB90(&v11[v42]);
          v45 = v56;
          sub_16E298(v40, v56);
          v46 = *(v41 + 48);
          v47 = *(v45 + v46);
          sub_EBB90(v45 + v46);
          sub_42F48(v40, &qword_2293C8, &qword_1D07B0);
          sub_42F48(v38, &qword_2293C8, &qword_1D07B0);
          if (v43 < v47)
          {
            break;
          }

          v31 = v37;
          if (v36 < v33 || v58 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v11 = v44;
            v34 = v39;
            a1 = v51;
          }

          else
          {
            v11 = v44;
            v34 = v39;
            a1 = v51;
            if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v37;
          a2 = v53;
          v35 = v37 > v52;
          v32 = v50;
          if (!v35)
          {
            goto LABEL_55;
          }
        }

        if (v36 < v53 || v58 >= v53)
        {
          a2 = v39;
          swift_arrayInitWithTakeFrontToBack();
          v11 = v44;
          v32 = v50;
          a1 = v51;
          v31 = v49;
        }

        else
        {
          v11 = v44;
          a2 = v39;
          v32 = v50;
          a1 = v51;
          v31 = v49;
          if (v36 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v52);
    }

LABEL_55:
    v61 = a2;
    v59 = v31;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v20;
    v59 = a4 + v20;
    if (v20 >= 1 && a2 < v58)
    {
      do
      {
        v23 = v54;
        sub_16E298(a2, v54);
        v24 = v55;
        sub_16E298(a4, v55);
        sub_16E298(v23, v11);
        v25 = v57;
        v26 = *(v57 + 48);
        v27 = *&v11[v26];
        sub_EBB90(&v11[v26]);
        v28 = v56;
        sub_16E298(v24, v56);
        v29 = *(v25 + 48);
        v30 = *(v28 + v29);
        sub_EBB90(v28 + v29);
        sub_42F48(v24, &qword_2293C8, &qword_1D07B0);
        sub_42F48(v23, &qword_2293C8, &qword_1D07B0);
        if (v27 >= v30)
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = a4 + v17;
          a4 += v17;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        a1 += v17;
        v61 = a1;
      }

      while (a4 < v53 && a2 < v58);
    }
  }

LABEL_57:
  sub_16E1A8(&v61, &v60, &v59);
  return 1;
}