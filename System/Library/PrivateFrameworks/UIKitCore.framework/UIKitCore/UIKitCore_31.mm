__n128 sub_188E67058@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 168) = *(a1 + 21);
  *(a2 + 184) = *(a1 + 23);
  *(a2 + 200) = *(a1 + 25);
  *(a2 + 216) = a1[27];
  *(a2 + 104) = *(a1 + 13);
  *(a2 + 120) = *(a1 + 15);
  *(a2 + 136) = *(a1 + 17);
  *(a2 + 152) = *(a1 + 19);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 56) = *(a1 + 7);
  *(a2 + 72) = *(a1 + 9);
  *(a2 + 88) = *(a1 + 11);
  *(a2 + 8) = *(a1 + 1);
  result = *(a1 + 3);
  *(a2 + 24) = result;
  *a2 = v2;
  return result;
}

double sub_188E670D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (a2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v6 = v5[19];
  if (a1 <= 2)
  {
    if (a1 != 1 && (a1 != 2 || !v6))
    {
      goto LABEL_10;
    }

LABEL_12:

    v7 = sub_188EA320C(v8);
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = v5[7];
    goto LABEL_11;
  }

  if (a1 != 4)
  {
    goto LABEL_10;
  }

  v7 = v5[20];
LABEL_11:

LABEL_13:
  v9 = 0;
  v13 = 0;
  v10 = *(v7 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    if (v9 >= *(v7 + 16))
    {
      __break(1u);
    }

    v11 = v9 + 1;
    (*(a3 + 16))(a3, *(v7 + 8 * v9 + 32), &v13);
    v9 = v11;
  }

  while (v13 != 1);

  return result;
}

void sub_188E67218(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v5 = *(v4 + 80);
  v21 = *(v5 + 16);
  if (v21)
  {
    v6 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
    v20 = v5 + 32;

    v8 = 0;
    v19 = v7;
    while (v8 < *(v7 + 16))
    {
      v9 = *(v20 + 8 * v8);
      v10 = *(v9 + 16);
      if (v10)
      {

        for (i = 0; i != v10; ++i)
        {
          v12 = *(v9 + 8 * i + 32);
          (*(a2 + 16))(a2, v12, 0);
        }

        v13 = 32;
        do
        {
          v14 = *(v9 + v13);
          swift_beginAccess();
          v15 = *(a1 + v6);
          if (*(v15 + 16) && (v16 = sub_188B85570(v14), (v17 & 1) != 0))
          {
            v18 = *(*(v15 + 56) + 160 * v16 + 112);
            swift_endAccess();
            if (v18 == 1)
            {
              (*(a2 + 16))(a2, v14, 1);
            }
          }

          else
          {
            swift_endAccess();
          }

          v13 += 8;
          --v10;
        }

        while (v10);

        v7 = v19;
      }

      if (++v8 == v21)
      {

        return;
      }
    }

    __break(1u);
  }
}

char *sub_188E673AC(void *a1)
{
  v44 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v3 = a1[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    swift_beginAccess();
    v6 = v2;
    do
    {
      --v4;
      v7 = *(v5 + 8 * v4);
      v8 = v44;
      if (*(v44 + 16) && (sub_18A4A8888(), MEMORY[0x18CFE37E0](v7), v9 = sub_18A4A88E8(), v10 = -1 << *(v8 + 32), v11 = v9 & ~v10, ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (*(*(v8 + 48) + 8 * v11) != v7)
        {
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v13 = *a1;
        if (!*(*a1 + 16) || (v14 = sub_188B85570(v7), (v15 & 1) == 0))
        {
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
          v39[0] = v7;
          type metadata accessor for Column(0);
          goto LABEL_48;
        }

        if (*(*(v13 + 56) + (v14 << 8) + 88) == 1)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_188B9DE3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v17 = *(v2 + 2);
          v16 = *(v2 + 3);
          if (v17 >= v16 >> 1)
          {
            v2 = sub_188B9DE3C((v16 > 1), v17 + 1, 1, v2);
          }

          *(v2 + 2) = v17 + 1;
          *&v2[8 * v17 + 32] = v7;
          v43 = v2;
        }

        else
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_188B9DE3C(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = sub_188B9DE3C((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          *&v6[8 * v19 + 32] = v7;
          v42 = v6;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_188CC38D8(v39, v7);
        swift_endAccess();
      }
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v20 = a1[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    swift_beginAccess();
    for (i = 0; i != v21; ++i)
    {
      v7 = *(v22 + 8 * i);
      v24 = v44;
      if (*(v44 + 16) && (sub_18A4A8888(), MEMORY[0x18CFE37E0](v7), v25 = sub_18A4A88E8(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        while (*(*(v24 + 48) + 8 * v27) != v7)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        v29 = *a1;
        if (!*(*a1 + 16) || (v30 = sub_188B85570(v7), (v31 & 1) == 0))
        {
          while (1)
          {
            v40 = 0;
            v41 = 0xE000000000000000;
            sub_18A4A80E8();
            MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
            v38 = v7;
            type metadata accessor for Column(0);
LABEL_48:
            sub_18A4A82D8();
            MEMORY[0x18CFE22D0](41, 0xE100000000000000);
            sub_18A4A8398();
            __break(1u);
          }
        }

        if (*(*(v29 + 56) + (v30 << 8) + 88) == 1)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_188B9DE3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v33 = *(v2 + 2);
          v32 = *(v2 + 3);
          if (v33 >= v32 >> 1)
          {
            v2 = sub_188B9DE3C((v32 > 1), v33 + 1, 1, v2);
          }

          *(v2 + 2) = v33 + 1;
          *&v2[8 * v33 + 32] = v7;
          v43 = v2;
        }

        else
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_188B9DE3C(0, *(v6 + 2) + 1, 1, v6);
          }

          v35 = *(v6 + 2);
          v34 = *(v6 + 3);
          if (v35 >= v34 >> 1)
          {
            v6 = sub_188B9DE3C((v34 > 1), v35 + 1, 1, v6);
          }

          *(v6 + 2) = v35 + 1;
          *&v6[8 * v35 + 32] = v7;
          v42 = v6;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_188CC38D8(&v38, v7);
        swift_endAccess();
      }
    }
  }

  v40 = v6;

  sub_18920B87C(v36);

  return v40;
}

void sub_188E679A4(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, int a4, void *a5)
{
  LODWORD(v58) = a4;
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

  v11 = 0;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v39 = (v13 - 1) & v13;
    v18 = __clz(__rbit64(v13)) | (v14 << 6);
    v19 = *(*(a1 + 48) + 8 * v18);
    v20 = *(a1 + 56) + 216 * v18;
    *&v54[168] = *(v20 + 160);
    *&v54[184] = *(v20 + 176);
    *&v54[200] = *(v20 + 192);
    *&v54[216] = *(v20 + 208);
    *&v54[104] = *(v20 + 96);
    *&v54[120] = *(v20 + 112);
    *&v54[136] = *(v20 + 128);
    *&v54[152] = *(v20 + 144);
    *&v54[40] = *(v20 + 32);
    *&v54[56] = *(v20 + 48);
    *&v54[72] = *(v20 + 64);
    *&v54[88] = *(v20 + 80);
    *&v54[8] = *v20;
    *&v54[24] = *(v20 + 16);
    *v54 = v19;
    a2(v56, v54);
    sub_188E67F4C(v56);
    v16 = v14;
LABEL_15:
    *&v54[192] = *&v56[192];
    *&v54[208] = *&v56[208];
    v55 = v57;
    *&v54[128] = *&v56[128];
    *&v54[144] = *&v56[144];
    *&v54[160] = *&v56[160];
    *&v54[176] = *&v56[176];
    *&v54[64] = *&v56[64];
    *&v54[80] = *&v56[80];
    *&v54[96] = *&v56[96];
    *&v54[112] = *&v56[112];
    *v54 = *v56;
    *&v54[16] = *&v56[16];
    *&v54[32] = *&v56[32];
    *&v54[48] = *&v56[48];
    if (sub_188E67F54(v54) == 1)
    {
      sub_188E036A4(a1);

      return;
    }

    v21 = v16;
    v22 = *v56;
    v50 = *&v56[168];
    v51 = *&v56[184];
    v52 = *&v56[200];
    v53 = *&v56[216];
    v46 = *&v56[104];
    v47 = *&v56[120];
    v48 = *&v56[136];
    v49 = *&v56[152];
    v42 = *&v56[40];
    v43 = *&v56[56];
    v44 = *&v56[72];
    v45 = *&v56[88];
    v40 = *&v56[8];
    v41 = *&v56[24];
    v23 = *a5;
    v24 = sub_188B85570(*v56);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_29;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (v58)
      {
        goto LABEL_21;
      }

      v58 = v24;
      sub_188FA1728();
      v32 = v21;
      v24 = v58;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_22:
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v22;
      v34 = v33[7] + 216 * v24;
      *(v34 + 64) = v44;
      *(v34 + 80) = v45;
      *(v34 + 32) = v42;
      *(v34 + 48) = v43;
      *(v34 + 128) = v48;
      *(v34 + 144) = v49;
      *(v34 + 96) = v46;
      *(v34 + 112) = v47;
      *(v34 + 208) = v53;
      *(v34 + 176) = v51;
      *(v34 + 192) = v52;
      *(v34 + 160) = v50;
      *v34 = v40;
      *(v34 + 16) = v41;
      v35 = v33[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v33[2] = v36;
      LODWORD(v58) = 1;
      v11 = v32;
      v9 = v39;
    }

    else
    {
      sub_1890BB7D4(v29, v58 & 1);
      v24 = sub_188B85570(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      v32 = v21;
      v33 = *a5;
      if ((v30 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v12 = v33[7] + 216 * v24;
      *(v12 + 160) = v50;
      *(v12 + 176) = v51;
      *(v12 + 192) = v52;
      *(v12 + 208) = v53;
      *(v12 + 96) = v46;
      *(v12 + 112) = v47;
      *(v12 + 128) = v48;
      *(v12 + 144) = v49;
      *(v12 + 32) = v42;
      *(v12 + 48) = v43;
      *(v12 + 64) = v44;
      *(v12 + 80) = v45;
      LODWORD(v58) = 1;
      v11 = v32;
      v9 = v39;
      *v12 = v40;
      *(v12 + 16) = v41;
    }
  }

  if (v10 <= v11 + 1)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 - 1;
  v17 = v11;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_188E67F70(v54);
      v39 = 0;
      v57 = v55;
      *&v56[192] = *&v54[192];
      *&v56[208] = *&v54[208];
      *&v56[128] = *&v54[128];
      *&v56[144] = *&v54[144];
      *&v56[160] = *&v54[160];
      *&v56[176] = *&v54[176];
      *&v56[64] = *&v54[64];
      *&v56[80] = *&v54[80];
      *&v56[96] = *&v54[96];
      *&v56[112] = *&v54[112];
      *v56 = *v54;
      *&v56[16] = *&v54[16];
      *&v56[32] = *&v54[32];
      *&v56[48] = *&v54[48];
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v14);
    ++v17;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  type metadata accessor for Column(0);
  sub_18A4A87A8();
  __break(1u);
}

double sub_188E67E20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t _UIRectEdgeFromDirectionalRectEdge(uint64_t a1, int a2)
{
  v2 = 2;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 2;
  }

  if (!a2)
  {
    v2 = 8;
  }

  return v3 & (a1 << 62 >> 63) | a1 & 5 | v2 & (a1 << 60 >> 63);
}

uint64_t sub_188E67F54(uint64_t a1)
{
  if (*(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_188E67F70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 224) = 1;
  return result;
}

double sub_188E67FD4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_188E68054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 249))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E680A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 248) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_188E68180(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E681A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 216) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E6822C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_188E682AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_188E682F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E68358(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E683AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_188E68464(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_188E684AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188E68530()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B9F8(&type metadata for GlassUserInterfaceStyleTrait, sub_188EB2D0C, 0);
  os_unfair_lock_unlock(v1[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v2 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = [v0 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_188E6867C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_18A4A56B8();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = type metadata accessor for MaterialBackdropContext(0);
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
  v7 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  v4(&v6[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v3);
  swift_beginAccess();
  sub_188E69B8C(v2, &v6[v7]);
  swift_endAccess();
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_188A3F5FC(v2, &qword_1EA935CD0, &qword_18A64FA60);
  qword_1EA995060 = v8;
  return result;
}

id sub_188E687F4@<X0>(void *a1@<X8>)
{
  if (qword_1ED490180 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EA995060;
  *a1 = qword_1EA995060;

  return v2;
}

unint64_t *sub_188E688E0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_188E68934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  __swift_allocate_value_buffer(v0, qword_1EA994F18);
  v1 = __swift_project_value_buffer(v0, qword_1EA994F18);
  v2 = sub_18A4A30C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id sub_188E689D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_188E69938(a2);
  *a1 = result;
  return result;
}

uint64_t sub_188E689FC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
    v5 = sub_18A4A30C8();
    v6 = *(v5 - 8);
    (*(v6 + 16))(a2, &v3[v4], v5);
    (*(v6 + 56))(a2, 0, 1, v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t sub_188E68B30@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED48FC48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  v3 = __swift_project_value_buffer(v2, qword_1EA994F18);
  return sub_188A3F29C(v3, a1, &unk_1EA9334A0, &unk_18A648DA0);
}

uint64_t sub_188E68D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_188A3F29C(a1, &v10 - v7, &unk_1EA9334A0, &unk_18A648DA0);
  (*(a3 + 208))(v8, &type metadata for GlassPocketContainerTrait, &type metadata for GlassPocketContainerTrait, &off_1EE43A6C0, a2, a3);
  return sub_188A3F5FC(a1, &unk_1EA9334A0, &unk_18A648DA0);
}

uint64_t sub_188E68E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188E69BFC(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle, &unk_18A648CC8);
  return v5(&v8, &type metadata for GlassUserInterfaceStyleTrait, &type metadata for GlassUserInterfaceStyleTrait, &off_1EE439CE8, v6, a2, a3);
}

BOOL sub_188E68F78(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_188E68FA8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_188E68FD4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void sub_188E690B0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1891FB60C(a1);

  *a2 = v3;
}

uint64_t sub_188E690F0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_18A4A56B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850, &unk_18A64FD60);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_188A3F29C(a1, v34, &qword_1EA934050, qword_18A64CA10);
  if (!v35)
  {
    v23 = &qword_1EA934050;
    v24 = qword_18A64CA10;
    v25 = v34;
LABEL_8:
    sub_188A3F5FC(v25, v23, v24);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v32 = v5;
  v17 = v33;
  if (v33[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] != *(v2 + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags))
  {

    goto LABEL_10;
  }

  v18 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v17 + v18, v16, &qword_1EA935CD0, &qword_18A64FA60);
  v19 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v20 = *(v8 + 48);
  sub_188A3F29C(v16, v10, &qword_1EA935CD0, &qword_18A64FA60);
  v31 = v20;
  sub_188A3F29C(v2 + v19, &v10[v20], &qword_1EA935CD0, &qword_18A64FA60);
  v21 = *(v32 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    sub_188A3F29C(v10, v13, &qword_1EA935CD0, &qword_18A64FA60);
    v27 = v31;
    if (v21(&v10[v31], 1, v4) != 1)
    {
      v28 = v32;
      (*(v32 + 32))(v7, &v10[v27], v4);
      sub_188E69BFC(&qword_1EA930AA0, MEMORY[0x1E697FC78], MEMORY[0x1E697FC80]);
      v22 = sub_18A4A7248();

      v29 = *(v28 + 8);
      v29(v7, v4);
      sub_188A3F5FC(v16, &qword_1EA935CD0, &qword_18A64FA60);
      v29(v13, v4);
      sub_188A3F5FC(v10, &qword_1EA935CD0, &qword_18A64FA60);
      return v22 & 1;
    }

    sub_188A3F5FC(v16, &qword_1EA935CD0, &qword_18A64FA60);
    (*(v32 + 8))(v13, v4);
    goto LABEL_14;
  }

  sub_188A3F5FC(v16, &qword_1EA935CD0, &qword_18A64FA60);
  if (v21(&v10[v31], 1, v4) != 1)
  {
LABEL_14:
    v23 = &unk_1EA934850;
    v24 = &unk_18A64FD60;
    v25 = v10;
    goto LABEL_8;
  }

  sub_188A3F5FC(v10, &qword_1EA935CD0, &qword_18A64FA60);
  v22 = 1;
  return v22 & 1;
}

uint64_t type metadata accessor for MaterialBackdropContext(uint64_t a1)
{
  result = qword_1EA934800;
  if (!qword_1EA934800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_188E696D0(uint64_t a1)
{
  sub_188E69770(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_188E69770(uint64_t a1)
{
  if (!qword_1ED490240)
  {
    sub_18A4A56B8();
    v1 = sub_18A4A7D38();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED490240);
    }
  }
}

unint64_t sub_188E697DC()
{
  result = qword_1EA934818;
  if (!qword_1EA934818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934818);
  }

  return result;
}

unint64_t sub_188E69834()
{
  result = qword_1EA934820;
  if (!qword_1EA934820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934820);
  }

  return result;
}

unint64_t sub_188E6988C()
{
  result = qword_1EA934828;
  if (!qword_1EA934828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934828);
  }

  return result;
}

unint64_t sub_188E698E4()
{
  result = qword_1EA934830;
  if (!qword_1EA934830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934830);
  }

  return result;
}

id sub_188E69938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  sub_188A3F29C(a1, &v19 - v3, &unk_1EA9334A0, &unk_18A648DA0);
  v5 = sub_18A4A30C8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  result = 0;
  if (v7 != 1)
  {
    v9 = *(v6 + 64);
    v10 = MEMORY[0x1EEE9AC00](0);
    v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = (*(v6 + 32))(v11, v4, v5, v10);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = *(v6 + 16);
    v14(v11, v11, v5, v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934840, &qword_18A64CA08);
    v16 = objc_allocWithZone(v15);
    (v14)(v16 + *((*MEMORY[0x1E69E7D40] & *v16) + 0x60), v11, v5);
    v19.receiver = v16;
    v19.super_class = v15;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    v18 = *(v6 + 8);
    v18(v11, v5);
    v18(v11, v5);
    return v17;
  }

  return result;
}

uint64_t sub_188E69B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_188E69BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_188E69C9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
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

  return v5 + (v8 | v12) + 1;
}

char *sub_188E69DEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_188E6A004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(_s15InstantlyStableVMa(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

uint64_t static UICornerRadius.containerConcentric(minimum:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a3 = v3;
  *(a3 + 8) = 1;
  return result;
}

double UICornerRadius.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = a1;
  *a2 = a1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_188E6A11C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x18CFE37E0](a3 & 1);
  return MEMORY[0x18CFE3810](v3);
}

uint64_t sub_188E6A154(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_188E6A1A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188E6A11C(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t sub_188E6A204()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188E6A11C(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t UICornerRadius.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A80E8();

  v3 = sub_188E6B000(v1, v2);
  MEMORY[0x18CFE22D0](v3);

  return 0x72656E726F434955;
}

{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68C720);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x20656C797473203BLL, 0xEA0000000000203DLL);
  v1 = sub_188E6B000(*(v0 + OBJC_IVAR___UICornerRadius_impl), *(v0 + OBJC_IVAR___UICornerRadius_impl + 8));
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t static UICornerRadius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t UICornerRadius.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x18CFE37E0](*(v0 + 8));
  return MEMORY[0x18CFE3810](v1);
}

uint64_t UICornerRadius.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x18CFE37E0](v2);
  MEMORY[0x18CFE3810](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188E6A3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if (v2 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_188E6A40C()
{
  sub_18A4A8888();
  UICornerRadius.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_188E6A464()
{
  sub_18A4A8888();
  UICornerRadius.hash(into:)();
  return sub_18A4A88E8();
}

double sub_188E6A4B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_188E6A4C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A80E8();

  v3 = sub_188E6B000(v1, v2);
  MEMORY[0x18CFE22D0](v3);

  return 0x72656E726F434955;
}

id sub_188E6A5AC()
{
  v0 = [swift_getObjCClassFromMetadata() containerConcentricRadiusWithMinimum_];

  return v0;
}

uint64_t sub_188E6A624(char a1, double a2)
{
  v4 = [objc_allocWithZone(UICornerRadius) init];
  v5 = &v4[OBJC_IVAR___UICornerRadius_impl];
  *v5 = a2;
  *(v5 + 8) = a1;

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_188E6A79C(void *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR___UICornerRadius_impl;
  *v4 = 0;
  *(v4 + 8) = 0;
  sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
  v5 = sub_18A4A7C18();
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v6 = v5;
    sub_18A4A7278();
  }

  type metadata accessor for UICornerRadius(v7);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_188E6A958(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = sub_18A4A7258();
  v5 = sub_18A4A7258();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_18A4A7258();
  [a1 encodeDouble:v3 forKey:?];
}

uint64_t UICornerRadius.hash.getter()
{
  v1 = v0 + OBJC_IVAR___UICornerRadius_impl;
  v2 = *(v0 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(v1 + 8);
  sub_18A4A8888();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x18CFE37E0](v3);
  MEMORY[0x18CFE3810](v4);
  return sub_18A4A88E8();
}

BOOL UICornerRadius.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v11);
  if (!v12)
  {
    sub_188A553EC(v11);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = *(v1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v5 = *&v10[OBJC_IVAR___UICornerRadius_impl];
  v6 = v10[OBJC_IVAR___UICornerRadius_impl + 8];

  if ((v4 & 1) == 0)
  {
    if (v3 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    return (v9 & 1) == 0;
  }

  if (v3 == v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

void sub_188E6AEB4(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 >> 62;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = *a1;
LABEL_16:
      sub_188A79914(v8);
      sub_188A74020(v3);
      v9 = 0;
      v7 = 0x7FEFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    if (v4 == 0xC000000000000000)
    {
      v8 = 0xC000000000000000;
      goto LABEL_16;
    }

    if (v4 != 0xC000000000000008)
    {
      v8 = 0xC000000000000010;
      goto LABEL_16;
    }

    if ((~v3 & 0xF000000000000007) != 0)
    {
      if (v3 >> 62 == 1)
      {
        v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        goto LABEL_20;
      }

      if (!(v3 >> 62))
      {
        v7 = *(v3 + 16);
LABEL_20:
        sub_188A79914(0xC000000000000008);
        sub_188A74020(v3);
        v9 = 1;
        goto LABEL_17;
      }
    }

    sub_188A79914(0xC000000000000008);
    sub_188A74020(v3);
    v7 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  if (v5)
  {

    sub_188A79914(v4);
    sub_188A74020(v3);
    v7 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {

    sub_188A79914(v6);
    sub_188A74020(v3);
    v7 = *(v4 + 16);
  }

  sub_188A79914(v4);
  v9 = 0;
LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v9;
}

uint64_t sub_188E6B000(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_18A4A80E8();
    v2 = 0x800000018A68C790;
    v3 = 0xD000000000000023;
  }

  else
  {
    if (*&a1 == 1.79769313e308)
    {
      return 0x656C7573706163;
    }

    sub_18A4A80E8();
    v3 = 0x6172286465786966;
    v2 = 0xEE00203A73756964;
  }

  MEMORY[0x18CFE22D0](v3, v2);
  sub_18A4A7718();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_188E6B11C()
{
  result = qword_1EA934880;
  if (!qword_1EA934880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934880);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UILatencyLightView.Duration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _UILatencyLightView.Duration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_188E6B268()
{
  result = qword_1EA9348F8;
  if (!qword_1EA9348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9348F8);
  }

  return result;
}

void (*UICollectionViewListCell.accessories.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UICollectionViewListCell.accessories.getter();
  return sub_188E6B310;
}

void sub_188E6B310(uint64_t *a1, char a2)
{
  if (a2)
  {

    UICollectionViewListCell.accessories.setter(v2);
  }

  else
  {
    UICollectionViewListCell.accessories.setter(*a1);
  }
}

void UICellAccessory.DetailOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.DetailOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.DetailOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_188E6B5F4()
{
  result = [objc_allocWithZone(UICellAccessoryCheckmark) init];
  qword_1EA934900 = result;
  return result;
}

void UICellAccessory.DeleteOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.DeleteOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.DeleteOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UICellAccessory.DeleteOptions.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_188E6B894()
{
  result = [objc_allocWithZone(UICellAccessoryInsert) init];
  qword_1EA92ED88 = result;
  return result;
}

void UICellAccessory.ReorderOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.ReorderOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.ReorderOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t (*UICellAccessory.OutlineDisclosureOptions._customImage.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_188E6F100;
}

void sub_188E6BC90()
{
  v0 = objc_allocWithZone(UIMenu);
  v1 = sub_18A4A7258();
  sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
  v2 = sub_18A4A7518();
  v3 = [v0 initWithTitle:v1 image:0 imageName:0 identifier:0 options:0 children:v2];

  v4 = v3;
  [v4 setSubtitle_];

  [v4 setPreferredElementSize_];
  v5 = [objc_allocWithZone(UICellAccessoryPopUpMenu) initWithMenu_];

  qword_1EA934908 = v5;
}

id static UICellAccessory.popUpMenu(_:displayed:options:selectedElementDidChangeHandler:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = a3[16];
  v13 = *(a3 + 3);
  v14 = a3[32];
  v15 = [objc_allocWithZone(UICellAccessoryPopUpMenu) initWithMenu_];
  if (a4)
  {
    v21 = a4;
    v22 = a5;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188BFF280;
    v20 = &block_descriptor_16;
    a4 = _Block_copy(&aBlock);
  }

  [v15 setSelectedElementDidChangeHandler_];
  _Block_release(a4);
  LOBYTE(aBlock) = v10;
  v18 = v11;
  LOBYTE(v19) = v12;
  v20 = v13;
  LOBYTE(v21) = v14;
  v23 = v9;
  result = sub_188CDA188(&aBlock, &v23);
  *a6 = 9;
  a6[1] = v15;
  return result;
}

void UICellAccessory.LabelOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.LabelOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.LabelOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UICellAccessory.LabelOptions.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t (*UICellAccessory.LabelOptions.backgroundColor.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_188E6C0A0;
}

void sub_188E6C0A4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 32) = v4;
  }

  else
  {

    *(v2 + 32) = v4;
  }
}

uint64_t (*static UICellAccessory.Placement.position(before:)(uint64_t a1))(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_188CF9DE4(v1);
  v4 = v2;
  return sub_188E6D194;
}

uint64_t sub_188E6C244(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 > 4)
      {
        if (v6 <= 6)
        {
          if (v6 == 5)
          {
            if (a2 == 5)
            {
              return v4;
            }
          }

          else if (a2 == 6)
          {
            return v4;
          }

          goto LABEL_4;
        }

        switch(v6)
        {
          case 7:
            if (a2 == 7)
            {
              return v4;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v4;
            }

            goto LABEL_4;
          case 9:
            if (a2 == 9)
            {
              return v4;
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            if (a2 == 2)
            {
              return v4;
            }
          }

          else if (v6 == 3)
          {
            if (a2 == 3)
            {
              return v4;
            }
          }

          else if (a2 == 4)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (!v6)
        {
          if (!a2)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v6 == 1)
        {
          if (a2 == 1)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 0xA)
      {
        sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
        sub_188CF9DE4(v6);
        v8 = v7;
        sub_188CF9DE4(v6);
        sub_188CF9DE4(a2);
        v9 = sub_18A4A7C88();
        sub_188E6F008(v6);
        sub_188E6F008(v6);

        sub_188E6F008(a2);
        if (v9)
        {
          return v4;
        }
      }

LABEL_4:
      ++v4;
      v5 += 2;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t (*static UICellAccessory.Placement.position(after:)(uint64_t a1))(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_188CF9DE4(v1);
  v4 = v2;
  return sub_188E6E8B8;
}

uint64_t sub_188E6C478(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 16 * v2 + 24);
    v5 = *(a1 + 16);
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      if (v6 > 4)
      {
        if (v6 <= 6)
        {
          if (v6 == 5)
          {
            if (a2 == 5)
            {
              return v5;
            }
          }

          else if (a2 == 6)
          {
            return v5;
          }
        }

        else
        {
          switch(v6)
          {
            case 7:
              if (a2 == 7)
              {
                return v5;
              }

              break;
            case 8:
              if (a2 == 8)
              {
                return v5;
              }

              break;
            case 9:
              if (a2 == 9)
              {
                return v5;
              }

              break;
            default:
              goto LABEL_34;
          }
        }
      }

      else if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
LABEL_34:
            if (a2 >= 0xA)
            {
              sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
              sub_188CF9DE4(v6);
              v8 = v7;
              sub_188CF9DE4(v6);
              sub_188CF9DE4(a2);
              v9 = sub_18A4A7C88();
              sub_188E6F008(v6);
              sub_188E6F008(v6);

              sub_188E6F008(a2);
              if (v9)
              {
                return v5;
              }
            }

            goto LABEL_4;
          }

          if (a2 == 1)
          {
            return v5;
          }
        }

        else if (!a2)
        {
          return v5;
        }
      }

      else if (v6 == 2)
      {
        if (a2 == 2)
        {
          return v5;
        }
      }

      else if (v6 == 3)
      {
        if (a2 == 3)
        {
          return v5;
        }
      }

      else if (a2 == 4)
      {
        return v5;
      }

LABEL_4:
      v4 -= 2;
      if (!--v5)
      {
        return v2;
      }
    }
  }

  return 0;
}

double UICellAccessory.CustomViewConfiguration.placement.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_188E6E8C0(v2, v3, v4);
}

void UICellAccessory.CustomViewConfiguration.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.CustomViewConfiguration.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void *UICellAccessory.CustomViewConfiguration.tintColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)(uint64_t a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X8>)
{
  v9 = a3;
  v12 = a3;
  v13 = *a2;
  v26 = a2[2];
  v27 = a2[1];
  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 9);
  v17 = [objc_allocWithZone(UICellAccessoryCustomView) initWithCustomView:a1 placement:*a2 >> 63];
  v18 = v17;
  if (v12 == 2)
  {
    v9 = [v17 isHidden];
  }

  if (v16)
  {
    [v18 reservedLayoutWidth];
    if (v19 == 0.0)
    {
      v15 = 1;
      v14 = 0.0;
    }

    else
    {
      if (v19 == -1.79769313e308)
      {
        v14 = COERCE_DOUBLE(1);
      }

      else
      {
        v14 = v19;
      }

      v15 = v19 == -1.79769313e308;
    }
  }

  v28 = v15 & 1;
  if (a5)
  {
    v20 = a5;
    if (a6 == 2)
    {
LABEL_12:
      v21 = a5;
      a6 = [v18 maintainsFixedSize];
      goto LABEL_15;
    }
  }

  else
  {
    v20 = [v18 tintColor];
    if (a6 == 2)
    {
      goto LABEL_12;
    }
  }

  v21 = a5;
LABEL_15:
  v22 = v9 & 1;
  v23 = a6 & 1;
  v24 = [v18 _monochromaticTreatment];

  v25 = v24 == 0;
  if (v24 == 1)
  {
    v25 = 2;
  }

  *a7 = a1;
  *(a7 + 8) = v13;
  *(a7 + 16) = v27;
  *(a7 + 24) = v26;
  *(a7 + 32) = v22;
  *(a7 + 40) = v14;
  *(a7 + 48) = v28;
  *(a7 + 56) = v20;
  *(a7 + 64) = v23;
  *(a7 + 65) = v25;
}

id static UICellAccessory.customView(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v5;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v6 = objc_allocWithZone(UICellAccessoryCustomView);
  v7 = v3;
  v8 = [v6 initWithCustomView:v7 placement:v4 >> 63];
  v10[0] = v7;
  v10[1] = v4;
  result = sub_188E6CA2C(v10);
  *a2 = v7;
  a2[1] = v8;
  return result;
}

id sub_188E6CA2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v15 = *(a1 + 65);
  [v1 setDisplayedState_];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  aBlock[4] = sub_188E6F000;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188E6CD70;
  aBlock[3] = &block_descriptor_131;
  v10 = _Block_copy(aBlock);
  sub_188E6E8C0(v2, v3, v4);

  [v1 setPosition_];
  _Block_release(v10);
  [v1 setTintColor_];
  [v1 setMaintainsFixedSize_];
  [v1 setHidden_];
  v11 = v6;
  v12 = -1.79769313e308;
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  if (v14)
  {
    v11 = v12;
  }

  [v1 setReservedLayoutWidth_];
  return [v1 _setMonochromaticTreatment_];
}

uint64_t UICellAccessory.AccessoryType.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      goto LABEL_22;
    }

    if (!v1)
    {
      v2 = 0;
      goto LABEL_22;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_22;
    }

LABEL_24:
    MEMORY[0x18CFE37E0](8);
    sub_18A4A7C98();
    return sub_18A4A88E8();
  }

  if (v1 <= 6)
  {
    if (v1 == 5)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_22;
  }

  if (v1 == 7)
  {
    v2 = 7;
    goto LABEL_22;
  }

  if (v1 == 8)
  {
    v2 = 9;
    goto LABEL_22;
  }

  if (v1 != 9)
  {
    goto LABEL_24;
  }

  v2 = 10;
LABEL_22:
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_188E6CD20()
{
  v2[9] = *v0;
  sub_18A4A8888();
  UICellAccessory.AccessoryType.hash(into:)(v2);
  return sub_18A4A88E8();
}

uint64_t sub_188E6CD70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_188A34624(0, &qword_1ED48BEB8, off_1E70E9568);
  v3 = sub_18A4A7548();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_188E6CDF0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_37:
      v14 = (a2)(v5);

      return v14;
    }

    v17 = MEMORY[0x1E69E7CC0];
    sub_188CFB090(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = a2;
    v6 = 0;
    v5 = v17;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_188E49A80(v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v10 = 0;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = 8;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v10 = 2;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v10 = 3;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v10 = 4;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v10 = 5;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v10 = 6;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v10 = 7;
                    }

                    else
                    {
                      objc_opt_self();
                      v11 = swift_dynamicCastObjCClass();
                      if (v11)
                      {
                        v10 = [v11 customView];
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v10 = 1;
                        }

                        else
                        {
                          objc_opt_self();
                          if (!swift_dynamicCastObjCClass())
                          {
                            goto LABEL_42;
                          }

                          v10 = 9;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      a2 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (a2 >= v12 >> 1)
      {
        sub_188CFB090((v12 > 1), a2 + 1, 1);
      }

      *(v17 + 16) = a2 + 1;
      v13 = v17 + 16 * a2;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      ++v6;
      if (v7 == i)
      {
        a2 = v16;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  __break(1u);
LABEL_42:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

char *sub_188E6D154(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6D500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6D60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D19C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DFEC(a1, a2, a3, *v3, &qword_1EA934440, &qword_18A6521F0, &qword_1EA934448, &qword_18A64D4F0);
  *v3 = result;
  return result;
}

char *sub_188E6D1DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6D854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D1FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6D958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D21C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D23C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DCA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D27C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D29C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &qword_1EA934418, &unk_18A64D4C0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_188E6D2E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &unk_1EA934420, &qword_18A64BF40, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
  *v3 = result;
  return result;
}

char *sub_188E6D324(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DEE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D344(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6DFEC(a1, a2, a3, *v3, &qword_1EA934968, &qword_18A64D478, &qword_1EA934970, &qword_18A64D480);
  *v3 = result;
  return result;
}

void *sub_188E6D384(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E134(a1, a2, a3, *v3, &qword_1EA934990, &qword_18A64D4B8, type metadata accessor for MarkerFormat);
  *v3 = result;
  return result;
}

void *sub_188E6D3C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E134(a1, a2, a3, *v3, &qword_1EA934378, &qword_18A64D4B0, type metadata accessor for TextList);
  *v3 = result;
  return result;
}

char *sub_188E6D40C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E264(a1, a2, a3, *v3, &qword_1EA934988, &qword_18A64D4A8, &type metadata for UIScene.DestructionCondition);
  *v3 = result;
  return result;
}

char *sub_188E6D444(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E264(a1, a2, a3, *v3, &qword_1EA934980, &qword_18A64D4A0, &type metadata for UIScene._DestructionCondition);
  *v3 = result;
  return result;
}

void *sub_188E6D47C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &qword_1EA934930, &unk_18A64D3D0, MEMORY[0x1E69DBD08]);
  *v3 = result;
  return result;
}

char *sub_188E6D4C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D4E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_188E6E7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D500(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660, &unk_18A64D440);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_188E6D60C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934938, &qword_18A64D3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934940, &qword_18A64D3F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6D750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0, &qword_18A64BE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_188E6D854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934130, &unk_18A64D3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188E6D958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934128, &unk_18A64D420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_188E6DA74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934950, &qword_18A64D438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6DB94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9342B0, &qword_18A64BEB8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_188E6DCA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349A0, &qword_18A64D4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349A8, &unk_18A64D4E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934998, &qword_18A64D4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6DEE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934290, &qword_18A64BEA8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_188E6DFEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_188E6E134(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_188E6E264(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_188E6E398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934978, &qword_18A64D488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C320, &unk_18A64D490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_188E6E4CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_188E6E6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934310, &qword_18A64BF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6E7B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934960, &qword_18A64D470);
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

unint64_t sub_188E6E8CC()
{
  result = qword_1EA934910;
  if (!qword_1EA934910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934910);
  }

  return result;
}

unint64_t sub_188E6E924()
{
  result = qword_1EA934918;
  if (!qword_1EA934918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934918);
  }

  return result;
}

unint64_t sub_188E6E97C()
{
  result = qword_1EA934920;
  if (!qword_1EA934920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UICellAccessory.LayoutDimension(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6E9F0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6EA0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_188E6EA88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_188E6EAE4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_188E6EB3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_188E6EB98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_188E6EBF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_188E6EC54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E6ECD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E6ED20(uint64_t result, int a2, int a3)
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
      *(result + 50) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E6ED7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_188E6EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 4 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_188E6EE6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_188E6EEB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E6EF18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6EF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_188E6EFC0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_188E6F008(id a1)
{
  if (a1 >= 0xA)
  {
  }
}

id UISplitViewController._intelligenceCollectSubelements(in:using:transformToRoot:)(double (*a1)(void, double, double, double, double), void (*a2)(id, double, double, double, double), double (*a3)(void, double, double, double, double), double a4, double a5, double a6, double a7)
{
  v145 = a3;
  v13 = sub_18A4A3BA8();
  v140 = *(v13 - 8);
  v141 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v139 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18A4A3CC8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v142 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18A4A3908();
  v133 = *(v18 - 8);
  v134 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v132 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v131 = v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040, &qword_18A64BCC8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v130 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v130 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v130 - v32;
  v34 = sub_18A4A3938();
  v137 = *(v34 - 8);
  v138 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v16;
  v38 = *(v16 + 56);
  v38(v33, 1, 1, v15, v35);
  (v38)(v30, 1, 1, v15);
  (v38)(v27, 1, 1, v15);
  v136 = v15;
  (v38)(v24, 1, 1, v15);
  v39 = a1;
  v40 = a2;
  v144 = v37;
  v130[1] = v33;
  v41 = v143;
  sub_18A4A3918();
  v42 = [v41 isCollapsed];
  v43 = &selRef_verticalMenuCornerRadius;
  if (v42)
  {
    goto LABEL_32;
  }

  v44 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  v45 = &selRef_verticalMenuCornerRadius;
  if (v44)
  {
    v46 = v44;
    v47 = [v44 viewIfLoaded];
    if (v47)
    {
      v48 = v47;
      result = [v41 view];
      if (!result)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v50 = result;
      v51 = [(UIView *)result _containsView:v48];

      if (v51)
      {
        MEMORY[0x1EEE9AC00](v52);
        v130[-10] = v41;
        v130[-9] = v48;
        *&v130[-8] = a4;
        *&v130[-7] = a5;
        *&v130[-6] = a6;
        *&v130[-5] = a7;
        v130[-4] = v39;
        v130[-3] = a2;
        v130[-2] = v145;
        sub_18A4A33C8();
        sub_18A4A38E8();
        v54 = v133;
        v53 = v134;
        v55 = v132;
        (*(v133 + 104))(v132, *MEMORY[0x1E69DBAD8], v134);
        v56 = v39;
        v57 = sub_18A4A3928();
        v58 = v131;
        sub_188E70AC4(v131, v55, v59);
        v60 = v54;
        v45 = &selRef_verticalMenuCornerRadius;
        v61 = v53;
        v43 = &selRef_verticalMenuCornerRadius;
        (*(v60 + 8))(v58, v61);
        v57(v146, 0);
        v39 = v56;
        v40 = a2;
      }
    }

    else
    {
      v48 = v46;
    }
  }

  v62 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 v45[105]];
    if (v64)
    {
      v65 = v64;
      result = [v41 v43[41]];
      if (!result)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v66 = result;
      v67 = [(UIView *)result _containsView:v65];

      if (v67)
      {
        MEMORY[0x1EEE9AC00](v68);
        v130[-10] = v41;
        v130[-9] = v65;
        *&v130[-8] = a4;
        *&v130[-7] = a5;
        *&v130[-6] = a6;
        *&v130[-5] = a7;
        v130[-4] = v39;
        v130[-3] = v40;
        v130[-2] = v145;
        sub_18A4A33C8();
        sub_18A4A38D8();
        v69 = v133;
        v70 = v132;
        v71 = v43;
        v72 = v134;
        (*(v133 + 104))(v132, *MEMORY[0x1E69DBAD0], v134);
        v130[0] = v40;
        v73 = v39;
        v74 = sub_18A4A3928();
        v75 = v131;
        sub_188E70AC4(v131, v70, v76);
        v77 = v69;
        v45 = &selRef_verticalMenuCornerRadius;
        v78 = v72;
        v43 = v71;
        (*(v77 + 8))(v75, v78);
        v74(v146, 0);
        v39 = v73;
        v40 = v130[0];
      }
    }

    else
    {
      v65 = v63;
    }
  }

  v79 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 v45[105]];
    if (v81)
    {
      v82 = v81;
      result = [v41 v43[41]];
      if (!result)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v83 = result;
      v84 = [(UIView *)result _containsView:v82];

      if (v84)
      {
        MEMORY[0x1EEE9AC00](v85);
        v130[-10] = v41;
        v130[-9] = v82;
        *&v130[-8] = a4;
        *&v130[-7] = a5;
        *&v130[-6] = a6;
        *&v130[-5] = a7;
        v130[-4] = v39;
        v130[-3] = v40;
        v130[-2] = v145;
        sub_18A4A33C8();
        sub_18A4A38C8();
        v86 = v133;
        v87 = v132;
        v88 = v43;
        v89 = v134;
        (*(v133 + 104))(v132, *MEMORY[0x1E69DBAC8], v134);
        v130[0] = v40;
        v90 = v39;
        v91 = sub_18A4A3928();
        v92 = v131;
        sub_188E70AC4(v131, v87, v93);
        v94 = v86;
        v45 = &selRef_verticalMenuCornerRadius;
        v95 = v89;
        v43 = v88;
        (*(v94 + 8))(v92, v95);
        v91(v146, 0);
        v39 = v90;
        v40 = v130[0];
      }
    }

    else
    {
      v82 = v80;
    }
  }

  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  v42 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (!v42)
  {
LABEL_32:
    MEMORY[0x1EEE9AC00](v42);
    v130[-8] = v41;
    *&v130[-7] = a4;
    *&v130[-6] = a5;
    *&v130[-5] = a6;
    *&v130[-4] = a7;
    v130[-3] = v39;
    v130[-2] = v40;
    v130[-1] = v145;
    sub_18A4A33D8();
    result = [v41 v43[41]];
    if (result)
    {
      v111 = result;
      result = [v41 v43[41]];
      if (result)
      {
        v112 = result;
        [result bounds];
        v114 = v113;
        v116 = v115;
        v118 = v117;
        v120 = v119;

        v40(v111, v114, v116, v118, v120);
        v122 = v137;
        v121 = v138;
        v123 = v139;
        v124 = v144;
        (*(v137 + 16))(v139, v144, v138);
        (*(v140 + 104))(v123, *MEMORY[0x1E69DBBB8], v141);
        v125 = v142;
        sub_18A4A3748();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
        v126 = v135;
        v127 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_18A64BFB0;
        v129 = v136;
        (*(v126 + 16))(v128 + v127, v125, v136);
        sub_18A4A3438();

        (*(v126 + 8))(v125, v129);
        return (*(v122 + 8))(v124, v121);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v96 = v42;
  v97 = [v42 v45[105]];
  if (!v97)
  {
    v98 = v96;
LABEL_31:

    goto LABEL_32;
  }

  v98 = v97;
  result = [v41 v43[41]];
  if (result)
  {
    v99 = result;
    v100 = [(UIView *)result _containsView:v98];

    if (v100)
    {
      MEMORY[0x1EEE9AC00](v101);
      v130[-10] = v41;
      v130[-9] = v98;
      *&v130[-8] = a4;
      *&v130[-7] = a5;
      *&v130[-6] = a6;
      *&v130[-5] = a7;
      v130[-4] = v39;
      v130[-3] = v40;
      v130[-2] = v145;
      sub_18A4A33C8();
      sub_18A4A38F8();
      v102 = v133;
      v103 = v132;
      v104 = v43;
      v105 = v134;
      (*(v133 + 104))(v132, *MEMORY[0x1E69DBAE0], v134);
      v130[0] = v40;
      v106 = v39;
      v107 = sub_18A4A3928();
      v108 = v131;
      sub_188E70AC4(v131, v103, v109);
      v110 = v105;
      v43 = v104;
      (*(v102 + 8))(v108, v110);
      v107(v146, 0);
      v39 = v106;
      v40 = v130[0];
    }

    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_188E6FDE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA1F8;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_6;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_188E6FF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_12_0;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_188E700EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_19;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_188E70270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_26;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_188E703F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = [a1 view];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v20[4] = sub_188DFA228;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_188DFA16C;
    v20[3] = &block_descriptor_33_0;
    v18 = _Block_copy(v20);

    [v16 _intelligenceCollectSubelementsIn_using_transformToRoot_];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_188E70648(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18A4A7F88();

    if (v9)
    {

      type metadata accessor for PlatterItemView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_188E72EFC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_188E764A4(v20 + 1, &qword_1EA934A00, &qword_18A64D548);
    }

    v18 = v8;
    sub_188E7706C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PlatterItemView();
  v11 = sub_18A4A7C78();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_188E77194(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18A4A7C88();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_188E70870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = ~a4;
  v9 = *v4;
  sub_18A4A8888();
  sub_18A4A88A8();
  if (v8)
  {
    sub_188C18FD0(v27, a2, a3, v5);
  }

  v10 = sub_18A4A88E8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v25;
    sub_188C46860(a2, a3, v5);
    sub_188E77324(a2, a3, v5, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v9 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    v16 = *(v15 + 16);
    if (v16 == 255)
    {
      if (v5 == 0xFF)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    if (v5 == 0xFF)
    {
      goto LABEL_6;
    }

    v17 = *v15;
    if (*(v15 + 16) <= 2u)
    {
      if (*(v15 + 16))
      {
        if (v16 == 1)
        {
          if (v5 != 1)
          {
            goto LABEL_6;
          }
        }

        else if (v5 != 2)
        {
          goto LABEL_6;
        }

LABEL_30:
        if (v17 == a2)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

      if (!v5)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    if (v5 == 4)
    {
      goto LABEL_21;
    }

LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v5 != 3)
  {
    goto LABEL_6;
  }

LABEL_21:
  v18 = v17 == a2 && v15[1] == a3;
  if (!v18 && (sub_18A4A86C8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_31:
  sub_188C46874(a2, a3, v16);
LABEL_32:
  v19 = *(v9 + 48) + 24 * v12;
  v20 = *v19;
  v21 = *(v19 + 8);
  *a1 = *v19;
  *(a1 + 8) = v21;
  v22 = *(v19 + 16);
  *(a1 + 16) = v22;
  sub_188C46860(v20, v21, v22);
  return 0;
}

uint64_t sub_188E70AC4(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v7 = sub_18A4A3908();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8], MEMORY[0x1E69DBAF0]);
  v35 = a2;
  v12 = sub_18A4A7198();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      sub_188E7EBE8(&qword_1EA934B08, MEMORY[0x1E69DBAE8], MEMORY[0x1E69DBAF8]);
      v22 = sub_18A4A7248();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26 = (v16)(v10, v35, v7);
    v36 = *v4;
    sub_188E77598(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

uint64_t sub_188E70E54(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  sub_18A4A8888();
  sub_18A4A7348();
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x18CFE3810](*&v10);
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      v17 = *(v16 + 16);
      v18 = *v16 == a2 && *(v16 + 8) == a3;
      if (v18 || (sub_18A4A86C8()) && v17 == a4)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = *(v9 + 48) + 24 * v13;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 1) = v22;
    *(a1 + 2) = v23;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_188E779F0(a2, a3, v13, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v24;
    *a1 = a2;
    *(a1 + 1) = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_188E70FFC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_18A4A7F88();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0, &qword_18A659590);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_188E73320(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_188E74244(v17 + 1);
    }

    sub_188E76FB4(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0, &qword_18A659590);
  v10 = sub_18A4A7198();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_188E77BB4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_18A4A7248() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_188E71278(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E77D58(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71370(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_18A4A7198();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_188E7EBE8(&qword_1EA930B00, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_18A4A7248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_188E77EA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_188E71698(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E7816C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71794(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18A4A7F88();

    if (v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0, &qword_18A64D608);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_188E7352C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_188E764A4(v20 + 1, &qword_1EA934AC8, &qword_18A64D610);
    }

    v18 = v8;
    sub_188E7706C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0, &qword_18A64D608);
  v11 = sub_18A4A7C78();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_188E782CC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18A4A7C88();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_188E719F8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18A4A8888();
  sub_18A4A7348();
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_188E78470(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_188E71BC0(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void, __n128))
{
  v6 = v5;
  v9 = *v5;
  sub_18A4A7288();
  sub_18A4A8888();
  sub_18A4A7348();
  v10 = sub_18A4A88E8();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_18A4A7288();
      v16 = v15;
      if (v14 == sub_18A4A7288() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_18A4A86C8();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_188E785F0(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_188E71DA4(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E787FC(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71E98(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E78928(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71FEC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v18 = a5;
  v10 = *v5;
  sub_18A4A8888();
  sub_18A4A7C98();
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (([*(*(*(v10 + 48) + 8 * v13) + 16) isEqual_] & 1) == 0)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v10 + 48) + 8 * v13);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;

    sub_188E78A98(v16, v13, isUniquelyReferenced_nonNull_native, a3, a4, v18);
    *v5 = v19;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_188E72160(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_18A4A7F88();

    if (v17)
    {

      sub_188A34624(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_18A4A7F68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_188E73120(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_188E764A4(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_188E7706C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_188A34624(0, a3, a4);
    v19 = sub_18A4A7C78();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_18A4A7C88();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_188E77860(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_188E723D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18A4A2B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  v33 = a2;
  v11 = sub_18A4A7198();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_188E7EBE8(&qword_1EA92F710, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v21 = sub_18A4A7248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_188E78C1C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_188E726B4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  v30 = v2;
  v10 = *v2;
  sub_18A4A8888();
  v33 = *(a2 + 32);
  sub_18A4A7C98();
  v38 = 0;
  v39 = 0xE000000000000000;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v34 = *a2;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v31 = a2;
  sub_18A4A7348();
  v17 = sub_18A4A88E8();
  v18 = -1 << *(v10 + 32);
  v19 = v17 & ~v18;
  if (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_11:
    v23 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v31;
    v26 = v29;
    sub_188E7EAB8(v31, v29, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v40 = *v23;
    sub_188E78EE4(v26, v19, isUniquelyReferenced_nonNull_native);
    *v23 = v40;
    sub_188E7EB80(v25, v32, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    return 1;
  }

  v20 = ~v18;
  v21 = *(v5 + 72);
  while (1)
  {
    sub_188E7EAB8(*(v10 + 48) + v21 * v19, v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v41.origin.x = v11;
    v41.origin.y = v12;
    v41.size.width = v13;
    v41.size.height = v14;
    if (!CGRectEqualToRect(*v7, v41) || ![v7[4] isEqualToTextRange_])
    {
      sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      goto LABEL_4;
    }

    if (v7[5] == v15 && v7[6] == v16)
    {
      break;
    }

    v22 = sub_18A4A86C8();
    sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_4:
    v19 = (v19 + 1) & v20;
    if (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_13:
  sub_188E7EB20(v31, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  sub_188E7EAB8(*(v10 + 48) + v21 * v19, v32, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  return 0;
}

uint64_t sub_188E72A40(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v22 - v9;
  v23 = v2;
  v10 = *v2;
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18A4A71A8();
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_188E7EAB8(*(v10 + 48) + v15 * v13, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v16 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
      sub_188E7EB20(v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_188E7EB20(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    sub_188E7EAB8(*(v10 + 48) + v15 * v13, v24, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v22;
    sub_188E7EAB8(a2, v22, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v25 = *v17;
    sub_188E79284(v19, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_188E7EB80(a2, v20, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return 1;
  }
}

uint64_t sub_188E72CCC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E79544(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E72DAC(uint64_t a1, void *a2)
{
  v5 = *v2;
  sub_18A4A8888();
  v6 = *a2;
  MEMORY[0x18CFE37E0](*a2);
  v7 = sub_18A4A88E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_188E7DC94(*(v5 + 48) + 16 * v9, v15);
      v11 = v15[0];
      sub_188E7DD4C(v15);
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_188E7DD4C(a2);
    sub_188E7DC94(*(v5 + 48) + 16 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188E7DC94(a2, v15);
    v14 = *v2;
    sub_188E79678(v15, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    sub_188E7DCF0(a2, a1);
    return 1;
  }
}

uint64_t sub_188E72EFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A00, &qword_18A64D548);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      type metadata accessor for PlatterItemView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_188E764A4(v9 + 1, &qword_1EA934A00, &qword_18A64D548);
        }

        v2 = v15;
        result = sub_18A4A7C78();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E73120(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_18A4A8078();
    v23 = v10;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      sub_188A34624(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_188E764A4(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_18A4A7C78();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_188E73320(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF8, &qword_18A64D638);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    for (; sub_18A4A7FB8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0, &qword_18A659590);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_188E74244(v9 + 1);
        v2 = v15;
      }

      result = sub_18A4A7198();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E7352C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC8, &qword_18A64D610);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    for (; sub_18A4A7FB8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0, &qword_18A64D608);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_188E764A4(v9 + 1, &qword_1EA934AC8, &qword_18A64D610);
        v2 = v15;
      }

      result = sub_18A4A7C78();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E7375C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C8, &qword_18A64D510);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      type metadata accessor for InProcessAnimationManager();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_188E76D64(v9 + 1);
        }

        v2 = v15;
        sub_18A4A8888();
        MEMORY[0x18CFE37E0]();
        result = sub_18A4A88E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_188E7395C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A08, &qword_18A64D550);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v32;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_18A4A8888();
      if (v21 == 255)
      {
        sub_18A4A88A8();
        goto LABEL_30;
      }

      sub_18A4A88A8();
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v23 = 3;
          goto LABEL_26;
        }

        if (v21 == 4)
        {
          v23 = 4;
LABEL_26:
          MEMORY[0x18CFE37E0](v23);
          sub_18A4A7348();
          goto LABEL_30;
        }

        v22 = 5;
      }

      else
      {
        if (!v21)
        {
          v23 = 0;
          goto LABEL_26;
        }

        if (v21 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }
      }

      MEMORY[0x18CFE37E0](v22);
      MEMORY[0x18CFE37E0](v19);
LABEL_30:
      v24 = sub_18A4A88E8();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v33;
    }
  }

  *v2 = v5;
}

void sub_188E73C58(uint64_t a1, double a2)
{
  v3 = v2;
  v38 = sub_18A4A3908();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934B10, &qword_18A64D640);
  v7 = sub_18A4A8068();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v2;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v4 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v34 = *(v4 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8], MEMORY[0x1E69DBAF0]);
      v22 = sub_18A4A7198();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v3 = v32;
    *(v6 + 16) = 0;
  }

  *v3 = v8;
}

void sub_188E73FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A18, &qword_18A64D560);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_18A4A8888();
      sub_18A4A7348();
      if (v21 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v21;
      }

      MEMORY[0x18CFE3810](*&v22);
      v23 = sub_18A4A88E8();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E74244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF8, &qword_18A64D638);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0, &qword_18A659590);
      v18 = sub_18A4A7198();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E744AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AE0, &qword_18A64D628);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE3810](v17);
      v18 = sub_18A4A88E8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E746FC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_18A4A29D8();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AD8, &qword_18A64D620);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_18A4A7198();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_188E74A58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A28, &qword_18A64D570);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v17);
      v18 = sub_18A4A88E8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E74CA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F0, &qword_18A64D538);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_18A4A8888();
      sub_18A4A7348();
      v21 = sub_18A4A88E8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E74F08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v20 = sub_18A4A88E8();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_188E7517C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v19);
      v20 = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_188E753C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA8, &qword_18A64D5F0);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_18A4A8878();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E755F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA0, &qword_18A64D5E8);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v17);
      v18 = sub_18A4A88E8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_188E75848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_18A4A8888();
      sub_18A4A7C98();
      v20 = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_188E75A90(uint64_t a1)
{
  v2 = v1;
  v37 = sub_18A4A2B48();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A68, &qword_18A64D5B0);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
      v21 = sub_18A4A7198();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_188E75DEC(uint64_t a1)
{
  v2 = v1;
  v3 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A60, &qword_18A64D5A8);
  v7 = sub_18A4A8068();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      sub_188E7EB80(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      sub_18A4A8888();
      sub_18A4A7C98();
      v35 = 0;
      v36 = 0xE000000000000000;
      v21 = v5[1];
      v33 = *v5;
      v34 = v21;
      type metadata accessor for CGRect(0);
      sub_18A4A82D8();
      sub_18A4A7348();

      sub_18A4A7348();
      v22 = sub_18A4A88E8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_188E7EB80(v5, *(v8 + 48) + v16 * v20, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_188E76150(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A58, &qword_18A64D5A0);
  v7 = sub_18A4A8068();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_188E7EB80(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_18A4A71A8();
      v22 = sub_18A4A88E8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_188E7EB80(v5, *(v8 + 48) + v16 * v21, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_188E764A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18A4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_18A4A7C78();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_188E766C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A50, &qword_18A64D598);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_18A4A8878();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}