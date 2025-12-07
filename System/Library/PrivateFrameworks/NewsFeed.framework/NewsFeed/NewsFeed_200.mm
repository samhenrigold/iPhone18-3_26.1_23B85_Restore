void sub_1D6D6FA00(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, __n128 a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_1D6D891B8(0, a3, a4, a5, a6);
  v39 = v8;
  v10 = sub_1D726410C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = (*(v9 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v9 + 56) + 8 * v24);
      if ((v39 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v9 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_33;
    }

    v37 = 1 << *(v9 + 32);
    v7 = v6;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
}

void sub_1D6D6FCA8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1D6D8A2A8(0, a3, a4, a5);
  v38 = v7;
  v9 = sub_1D726410C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v28 = sub_1D7264A5C();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
}

void sub_1D6D6FF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D5BCFD1C(0, &qword_1EC895950, type metadata accessor for DebugFormatWorkspaceCanvasSection, sub_1D6D8A3FC, &type metadata for DebugFormatWorkspaceCanvasSectionKey);
  v43 = v4;
  v9 = sub_1D726410C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = *(v8 + 48) + 16 * v23;
      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = *(v25 + 8);
      v44 = *(v42 + 72);
      v29 = v24 + v44 * v23;
      if (v43)
      {
        sub_1D6D8C85C(v29, v45, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      }

      else
      {
        sub_1D6D8C7DC(v29, v45, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      }

      sub_1D7264A0C();
      sub_1D6E23ADC(v26);
      sub_1D72621EC();

      sub_1D72621EC();

      MEMORY[0x1DA6FC0B0](v28);
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 16 * v18;
      *v19 = v26;
      *(v19 + 1) = v27;
      *(v19 + 8) = v28;
      sub_1D6D8C85C(v45, *(v10 + 56) + v44 * v18, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D6D70384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895760, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatViewNodeStyle.Selector);
  v44 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 160 * v21);
      if (v44)
      {
        v48 = *v26;
        v45 = v26[1];
        v46 = *(v26 + 1);
        v47 = *(v26 + 2);
        v49 = *(v26 + 48);
        v54 = *(v26 + 11);
        v55 = *(v26 + 13);
        v56 = *(v26 + 15);
        v57 = *(v26 + 136);
        v52 = *(v26 + 7);
        v53 = *(v26 + 9);
        v50 = v26[18];
        v51 = *(v26 + 152);
      }

      else
      {
        v27 = *(v26 + 1);
        *v58 = *v26;
        *&v58[16] = v27;
        v28 = *(v26 + 5);
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        *&v58[64] = *(v26 + 4);
        *&v58[80] = v28;
        *&v58[32] = v30;
        *&v58[48] = v29;
        v32 = *(v26 + 7);
        v31 = *(v26 + 8);
        v33 = *(v26 + 6);
        *&v58[137] = *(v26 + 137);
        *&v58[112] = v32;
        *&v58[128] = v31;
        *&v58[96] = v33;
        v51 = v58[152];
        v50 = *&v58[144];
        v49 = v58[48];
        v46 = *&v58[16];
        v47 = *&v58[32];
        v45 = *&v58[8];
        v48 = *v58;

        sub_1D5D044D4(v58, &v52);
        v54 = *&v58[88];
        v55 = *&v58[104];
        v56 = *&v58[120];
        v57 = v58[136];
        v52 = *&v58[56];
        v53 = *&v58[72];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v34 = sub_1D7264A5C();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v58[7] = v52;
      *&v58[23] = v53;
      v58[87] = v57;
      *&v58[55] = v55;
      *&v58[71] = v56;
      *&v58[39] = v54;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 160 * v15;
      *v17 = v48;
      *(v17 + 8) = v45;
      *(v17 + 16) = v46;
      *(v17 + 32) = v47;
      *(v17 + 48) = v49;
      *(v17 + 65) = *&v58[16];
      *(v17 + 49) = *v58;
      *(v17 + 129) = *&v58[80];
      *(v17 + 113) = *&v58[64];
      *(v17 + 97) = *&v58[48];
      *(v17 + 81) = *&v58[32];
      *(v17 + 144) = v50;
      *(v17 + 152) = v51;
      ++*(v7 + 16);
      v5 = v43;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D707D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957B8, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatLayeredMediaNodeStyle.Selector);
  v47 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v46 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 208 * v21);
      if (v47)
      {
        v51 = *v26;
        v48 = v26[1];
        v49 = *(v26 + 1);
        v50 = *(v26 + 2);
        v54 = v26[6];
        v27 = *(v26 + 56);
        v64 = *(v26 + 6);
        v65 = *(v26 + 7);
        v66 = *(v26 + 8);
        v67 = *(v26 + 144);
        v62 = *(v26 + 4);
        v63 = *(v26 + 5);
        v56 = v26[20];
        v52 = v27;
        v53 = *(v26 + 168);
        v57 = v26[23];
        v58 = v26[19];
        v55 = *(v26 + 192);
        v59 = *(v26 + 193);
        v60 = v26[25];
        v61 = v26[22];
      }

      else
      {
        *v68 = *v26;
        v28 = *(v26 + 4);
        v30 = *(v26 + 1);
        v29 = *(v26 + 2);
        *&v68[48] = *(v26 + 3);
        *&v68[64] = v28;
        *&v68[16] = v30;
        *&v68[32] = v29;
        v31 = *(v26 + 8);
        v33 = *(v26 + 5);
        v32 = *(v26 + 6);
        v70 = *(v26 + 7);
        v71 = v31;
        *&v68[80] = v33;
        v69 = v32;
        v34 = *(v26 + 12);
        v36 = *(v26 + 9);
        v35 = *(v26 + 10);
        v74 = *(v26 + 11);
        v75 = v34;
        v72 = v36;
        v73 = v35;
        v59 = BYTE1(v34);
        v60 = *(&v34 + 1);
        v61 = v74;
        v55 = v34;
        v57 = *(&v74 + 1);
        v58 = *(&v36 + 1);
        v56 = v35;
        v54 = *&v68[48];
        v52 = v68[56];
        v53 = BYTE8(v35);
        v49 = *&v68[16];
        v50 = *&v68[32];
        v48 = *&v68[8];
        v51 = *v68;

        sub_1D5D0B3B8(v68, &v62);
        v64 = v69;
        v65 = v70;
        v66 = v71;
        v67 = v72;
        v62 = *&v68[64];
        v63 = *&v68[80];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v37 = sub_1D7264A5C();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v68[39] = v64;
      *&v68[55] = v65;
      *&v68[71] = v66;
      v68[87] = v67;
      *&v68[7] = v62;
      *&v68[23] = v63;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 208 * v15;
      *v17 = v51;
      *(v17 + 8) = v48;
      *(v17 + 16) = v49;
      *(v17 + 32) = v50;
      *(v17 + 48) = v54;
      *(v17 + 56) = v52;
      *(v17 + 73) = *&v68[16];
      *(v17 + 57) = *v68;
      *(v17 + 137) = *&v68[80];
      *(v17 + 121) = *&v68[64];
      *(v17 + 105) = *&v68[48];
      *(v17 + 89) = *&v68[32];
      *(v17 + 152) = v58;
      *(v17 + 160) = v56;
      *(v17 + 168) = v53;
      *(v17 + 176) = v61;
      *(v17 + 184) = v57;
      *(v17 + 192) = v55;
      *(v17 + 193) = v59;
      *(v17 + 200) = v60;
      ++*(v7 + 16);
      v5 = v46;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v2;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D70CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895840, sub_1D6D89AB0, &type metadata for FormatDerivedDataFileKey, &type metadata for FormatDerivedDataFile);
  v37 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        sub_1D5F7D230(*v22, *(v22 + 8), *(v22 + 16));
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v25);
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D70FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EC895740, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatTextNodeStyle.Selector);
  v70 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v69 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v34 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v37 = v34 | (v8 << 6);
      v38 = *(v5 + 56);
      v39 = (*(v5 + 48) + 16 * v37);
      v40 = *v39;
      v41 = v39[1];
      if (v70)
      {
        v42 = (v38 + 528 * v37);
        v72 = v42[1];
        v73 = v42[2];
        v74 = *v42;
        v43 = *(v42 + 13);
        v89 = *(v42 + 11);
        v90 = v43;
        v44 = *(v42 + 17);
        v91 = *(v42 + 15);
        v92 = v44;
        v45 = *(v42 + 5);
        v85 = *(v42 + 3);
        v86 = v45;
        v46 = *(v42 + 9);
        v87 = *(v42 + 7);
        v88 = v46;
        v47 = v42[19];
        v48 = *(v42 + 13);
        v95 = *(v42 + 12);
        v96 = v48;
        v97 = *(v42 + 14);
        v98 = *(v42 + 240);
        v49 = *(v42 + 11);
        v93 = *(v42 + 10);
        v94 = v49;
        v75 = v47;
        v76 = v42[31];
        v50 = *(v42 + 16);
        v51 = *(v42 + 17);
        v52 = *(v42 + 18);
        v102 = *(v42 + 19);
        v101 = v52;
        v99 = v50;
        v100 = v51;
        v53 = *(v42 + 20);
        v54 = *(v42 + 21);
        v55 = *(v42 + 22);
        v106 = *(v42 + 23);
        v105 = v55;
        v103 = v53;
        v104 = v54;
        v56 = *(v42 + 24);
        v57 = *(v42 + 25);
        v58 = *(v42 + 26);
        v59 = *(v42 + 27);
        v111 = *(v42 + 224);
        v110 = v59;
        v109 = v58;
        v107 = v56;
        v108 = v57;
        v77 = v42[57];
        v71 = *(v42 + 464);
        v78 = *(v42 + 59);
        v79 = *(v42 + 61);
        v80 = v42[63];
        v81 = *(v42 + 512);
        v82 = v42[65];
      }

      else
      {
        memcpy(__dst, (v38 + 528 * v37), sizeof(__dst));
        v82 = *(&__dst[32] + 1);
        v81 = __dst[32];
        v80 = *(&__dst[31] + 1);
        v78 = *(&__dst[29] + 8);
        v79 = *(&__dst[30] + 8);
        v71 = __dst[29];
        v76 = *(&__dst[15] + 1);
        v77 = *(&__dst[28] + 1);
        v74 = *&__dst[0];
        v75 = *(&__dst[9] + 1);
        v72 = *(&__dst[0] + 1);
        v73 = *&__dst[1];

        sub_1D5CFDDA0(__dst, v83);
        v89 = *(&__dst[5] + 8);
        v90 = *(&__dst[6] + 8);
        v91 = *(&__dst[7] + 8);
        v92 = *(&__dst[8] + 8);
        v85 = *(&__dst[1] + 8);
        v86 = *(&__dst[2] + 8);
        v87 = *(&__dst[3] + 8);
        v88 = *(&__dst[4] + 8);
        v94 = __dst[11];
        v93 = __dst[10];
        v98 = __dst[15];
        v97 = __dst[14];
        v96 = __dst[13];
        v95 = __dst[12];
        v102 = __dst[19];
        v101 = __dst[18];
        v99 = __dst[16];
        v100 = __dst[17];
        v106 = __dst[23];
        v105 = __dst[22];
        v103 = __dst[20];
        v104 = __dst[21];
        v111 = __dst[28];
        v110 = __dst[27];
        v109 = __dst[26];
        v107 = __dst[24];
        v108 = __dst[25];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v60 = sub_1D7264A5C();
      v61 = -1 << *(v7 + 32);
      v62 = v60 & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*(v14 + 8 * (v62 >> 6))) == 0)
      {
        v64 = 0;
        v65 = (63 - v61) >> 6;
        while (++v63 != v65 || (v64 & 1) == 0)
        {
          v66 = v63 == v65;
          if (v63 == v65)
          {
            v63 = 0;
          }

          v64 |= v66;
          v67 = *(v14 + 8 * v63);
          if (v67 != -1)
          {
            v15 = __clz(__rbit64(~v67)) + (v63 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v62) & ~*(v14 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(__dst[0]) = v71;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v41;
      v17 = *(v7 + 56) + 528 * v15;
      *v17 = v74;
      *(v17 + 8) = v72;
      *(v17 + 16) = v73;
      v18 = v87;
      *(v17 + 72) = v88;
      *(v17 + 56) = v18;
      v19 = v85;
      *(v17 + 40) = v86;
      *(v17 + 24) = v19;
      v20 = v91;
      *(v17 + 136) = v92;
      *(v17 + 120) = v20;
      v21 = v89;
      *(v17 + 104) = v90;
      *(v17 + 88) = v21;
      *(v17 + 152) = v75;
      v22 = v96;
      *(v17 + 192) = v95;
      *(v17 + 208) = v22;
      *(v17 + 224) = v97;
      *(v17 + 240) = v98;
      v23 = v94;
      *(v17 + 160) = v93;
      *(v17 + 176) = v23;
      *(v17 + 248) = v76;
      v24 = v99;
      v25 = v100;
      v26 = v102;
      *(v17 + 288) = v101;
      *(v17 + 304) = v26;
      *(v17 + 256) = v24;
      *(v17 + 272) = v25;
      v27 = v103;
      v28 = v104;
      v29 = v106;
      *(v17 + 352) = v105;
      *(v17 + 368) = v29;
      *(v17 + 320) = v27;
      *(v17 + 336) = v28;
      v30 = v107;
      v31 = v108;
      v32 = v109;
      v33 = v110;
      *(v17 + 448) = v111;
      *(v17 + 416) = v32;
      *(v17 + 432) = v33;
      *(v17 + 384) = v30;
      *(v17 + 400) = v31;
      *(v17 + 456) = v77;
      *(v17 + 464) = __dst[0];
      *(v17 + 472) = v78;
      *(v17 + 488) = v79;
      *(v17 + 504) = v80;
      *(v17 + 512) = v81;
      *(v17 + 520) = v82;
      ++*(v7 + 16);
      v5 = v69;
    }

    v35 = v8;
    while (1)
    {
      v8 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v36 = v9[v8];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v12 = (v36 - 1) & v36;
        goto LABEL_15;
      }
    }

    if ((v70 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v68 = 1 << *(v5 + 32);
    v3 = v2;
    if (v68 >= 64)
    {
      bzero(v9, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v68;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D7161C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895750, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatImageNodeStyle.Selector);
  v47 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v46 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 216 * v21);
      if (v47)
      {
        v51 = *v26;
        v48 = v26[1];
        v49 = *(v26 + 1);
        v50 = *(v26 + 2);
        v52 = *(v26 + 48);
        v63 = *(v26 + 11);
        v64 = *(v26 + 13);
        v65 = *(v26 + 15);
        v66 = *(v26 + 136);
        v61 = *(v26 + 7);
        v62 = *(v26 + 9);
        v53 = v26[18];
        v54 = *(v26 + 152);
        v55 = *(v26 + 153);
        v56 = v26[20];
        v58 = *(v26 + 168);
        v59 = *(v26 + 12);
        v57 = *(v26 + 11);
        v60 = v26[26];
      }

      else
      {
        v27 = *(v26 + 1);
        *v67 = *v26;
        *&v67[16] = v27;
        v28 = *(v26 + 5);
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        *&v67[64] = *(v26 + 4);
        *&v67[80] = v28;
        *&v67[32] = v30;
        *&v67[48] = v29;
        v31 = *(v26 + 9);
        v33 = *(v26 + 6);
        v32 = *(v26 + 7);
        *&v67[128] = *(v26 + 8);
        v68 = v31;
        *&v67[96] = v33;
        *&v67[112] = v32;
        v35 = *(v26 + 11);
        v34 = *(v26 + 12);
        v36 = *(v26 + 10);
        v72 = v26[26];
        v70 = v35;
        v71 = v34;
        v69 = v36;
        v60 = v72;
        v59 = v34;
        v57 = v35;
        v58 = BYTE8(v36);
        v56 = v36;
        v54 = BYTE8(v68);
        v55 = BYTE9(v68);
        v53 = v68;
        v52 = v67[48];
        v49 = *&v67[16];
        v50 = *&v67[32];
        v48 = *&v67[8];
        v51 = *v67;

        sub_1D5D0B0E4(v67, &v61);
        v63 = *&v67[88];
        v64 = *&v67[104];
        v65 = *&v67[120];
        v66 = v67[136];
        v61 = *&v67[56];
        v62 = *&v67[72];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v37 = sub_1D7264A5C();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v67[39] = v63;
      *&v67[55] = v64;
      *&v67[71] = v65;
      v67[87] = v66;
      *&v67[7] = v61;
      *&v67[23] = v62;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 216 * v15;
      *v17 = v51;
      *(v17 + 8) = v48;
      *(v17 + 16) = v49;
      *(v17 + 32) = v50;
      *(v17 + 48) = v52;
      *(v17 + 65) = *&v67[16];
      *(v17 + 49) = *v67;
      *(v17 + 129) = *&v67[80];
      *(v17 + 113) = *&v67[64];
      *(v17 + 97) = *&v67[48];
      *(v17 + 81) = *&v67[32];
      *(v17 + 144) = v53;
      *(v17 + 152) = v54;
      *(v17 + 153) = v55;
      *(v17 + 160) = v56;
      *(v17 + 168) = v58;
      *(v17 + 176) = v57;
      *(v17 + 192) = v59;
      *(v17 + 208) = v60;
      ++*(v7 + 16);
      v5 = v46;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v2;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D71AF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D5BCFD1C(0, &unk_1EC895768, type metadata accessor for FormatItemNodeStyle.Selector, sub_1D601014C, &type metadata for FormatSelector);
  v42 = v4;
  v9 = sub_1D726410C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v41 + 72);
      v29 = v24 + v28 * v23;
      if (v42)
      {
        sub_1D6D8C85C(v29, v43, type metadata accessor for FormatItemNodeStyle.Selector);
      }

      else
      {
        sub_1D6D8C7DC(v29, v43, type metadata accessor for FormatItemNodeStyle.Selector);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      sub_1D6D8C85C(v43, *(v10 + 56) + v28 * v18, type metadata accessor for FormatItemNodeStyle.Selector);
      ++*(v10 + 16);
      v8 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D6D71E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895778, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatSupplementaryNodeStyle.Selector);
  v39 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 40 * v21;
      v25 = *(v24 + 8);
      v43 = *v24;
      v44 = *v22;
      v42 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32) | (*(v24 + 34) << 16);
      v40 = *(v24 + 35);
      if ((v39 & 1) == 0)
      {

        sub_1D62B7DCC(v26, v27);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v28 = sub_1D7264A5C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v23;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v43;
      *(v17 + 8) = v25;
      *(v17 + 16) = v42;
      *(v17 + 24) = v26;
      *(v17 + 34) = BYTE2(v27);
      *(v17 + 32) = v27;
      *(v17 + 35) = v40;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D721D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957B0, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatMicaNodeStyle.Selector);
  v44 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 144 * v21);
      if (v44)
      {
        v48 = *v26;
        v45 = v26[1];
        v46 = *(v26 + 1);
        v47 = *(v26 + 2);
        v27 = *(v26 + 48);
        v53 = *(v26 + 11);
        v54 = *(v26 + 13);
        v55 = *(v26 + 15);
        v56 = *(v26 + 136);
        v51 = *(v26 + 7);
        v52 = *(v26 + 9);
        v49 = v27;
        v50 = *(v26 + 137);
      }

      else
      {
        *v57 = *v26;
        v28 = *(v26 + 4);
        v30 = *(v26 + 1);
        v29 = *(v26 + 2);
        *&v57[48] = *(v26 + 3);
        *&v57[64] = v28;
        *&v57[16] = v30;
        *&v57[32] = v29;
        v32 = *(v26 + 6);
        v31 = *(v26 + 7);
        v33 = *(v26 + 5);
        *&v57[122] = *(v26 + 122);
        *&v57[96] = v32;
        *&v57[112] = v31;
        *&v57[80] = v33;
        v49 = v57[48];
        v50 = v57[137];
        v46 = *&v57[16];
        v47 = *&v57[32];
        v45 = *&v57[8];
        v48 = *v57;

        sub_1D62B7998(v57, &v51);
        v53 = *&v57[88];
        v54 = *&v57[104];
        v55 = *&v57[120];
        v56 = v57[136];
        v51 = *&v57[56];
        v52 = *&v57[72];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v34 = sub_1D7264A5C();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v57[7] = v51;
      *&v57[23] = v52;
      v57[87] = v56;
      *&v57[55] = v54;
      *&v57[71] = v55;
      *&v57[39] = v53;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 144 * v15;
      *v17 = v48;
      *(v17 + 8) = v45;
      *(v17 + 16) = v46;
      *(v17 + 32) = v47;
      *(v17 + 48) = v49;
      *(v17 + 65) = *&v57[16];
      *(v17 + 49) = *v57;
      *(v17 + 129) = *&v57[80];
      *(v17 + 113) = *&v57[64];
      *(v17 + 97) = *&v57[48];
      *(v17 + 81) = *&v57[32];
      *(v17 + 137) = v50;
      ++*(v7 + 16);
      v5 = v43;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D72630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895758, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatAnimationNodeStyle.Selector);
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v44 = *v22;
      v24 = *(v5 + 56) + 56 * v21;
      v25 = *(v24 + 8);
      v42 = *v24;
      v43 = *(v24 + 16);
      v41 = *(v24 + 32);
      v26 = *(v24 + 40);
      v39 = *(v24 + 48);
      v40 = *(v24 + 52);
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v23;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v43;
      *(v17 + 32) = v41;
      *(v17 + 40) = v26;
      *(v17 + 52) = (v39 | (v40 << 32)) >> 32;
      *(v17 + 48) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D72994(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void (*a5)(_BYTE *, __int128 *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1D6D8BCF0(0, a3, sub_1D601014C, &type metadata for FormatSelector, a4);
  v50 = v7;
  v9 = sub_1D726410C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v49 = v8;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = (v25 + 168 * v24);
      if (v50)
      {
        v54 = *v29;
        v51 = v29[1];
        v52 = *(v29 + 1);
        v53 = *(v29 + 2);
        v30 = v29[6];
        v55 = *(v29 + 56);
        v61 = *(v29 + 6);
        v62 = *(v29 + 7);
        v63 = *(v29 + 8);
        v64 = *(v29 + 144);
        v59 = *(v29 + 4);
        v60 = *(v29 + 5);
        v56 = v29[19];
        v57 = v30;
        v58 = *(v29 + 160);
      }

      else
      {
        v32 = *(v29 + 1);
        v31 = *(v29 + 2);
        *v65 = *v29;
        *&v65[16] = v32;
        *&v65[32] = v31;
        v33 = *(v29 + 6);
        v35 = *(v29 + 3);
        v34 = *(v29 + 4);
        *&v65[80] = *(v29 + 5);
        v66 = v33;
        *&v65[48] = v35;
        *&v65[64] = v34;
        v37 = *(v29 + 8);
        v36 = *(v29 + 9);
        v38 = *(v29 + 7);
        v70 = *(v29 + 160);
        v68 = v37;
        v69 = v36;
        v67 = v38;
        v58 = v70;
        v56 = *(&v36 + 1);
        v57 = v35;
        v55 = BYTE8(v35);
        v52 = *&v65[16];
        v53 = *&v65[32];
        v51 = *&v65[8];
        v54 = *v65;

        a5(v65, &v59);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v64 = v69;
        v59 = *&v65[64];
        v60 = *&v65[80];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v39 = sub_1D7264A5C();
      v40 = -1 << *(v10 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v17 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v17 + 8 * v42);
          if (v46 != -1)
          {
            v18 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v41) & ~*(v17 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v65[7] = v59;
      *&v65[23] = v60;
      v65[87] = v64;
      *&v65[55] = v62;
      *&v65[71] = v63;
      *&v65[39] = v61;
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v28;
      v20 = *(v10 + 56) + 168 * v18;
      *v20 = v54;
      *(v20 + 8) = v51;
      *(v20 + 16) = v52;
      *(v20 + 32) = v53;
      *(v20 + 48) = v57;
      *(v20 + 56) = v55;
      *(v20 + 73) = *&v65[16];
      *(v20 + 57) = *v65;
      *(v20 + 137) = *&v65[80];
      *(v20 + 121) = *&v65[64];
      *(v20 + 105) = *&v65[48];
      *(v20 + 89) = *&v65[32];
      *(v20 + 152) = v56;
      *(v20 + 160) = v58;
      ++*(v10 + 16);
      v8 = v49;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v47 = 1 << *(v8 + 32);
    v6 = v5;
    if (v47 >= 64)
    {
      bzero(v12, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v47;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_1D6D72DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957E8, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatPuzzleEmbedNodeStyle.Selector);
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
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
    v14 = v6 + 64;
    v44 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v50 = *v24;
      v26 = *(v5 + 56) + 40 * v23;
      v27 = *(v26 + 8);
      v48 = *v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = *(v26 + 32);
      v46 = *(v26 + 33);
      if ((v45 & 1) == 0)
      {

        sub_1D5ED34B0(v29, v28, v30);
      }

      v49 = v28;
      v31 = v29;
      v32 = v27;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v7 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v49;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v49;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v50;
      v18[1] = v25;
      v19 = *(v44 + 56) + 40 * v15;
      v12 = v47;
      *v19 = v48;
      *(v19 + 8) = v32;
      *(v19 + 16) = v31;
      *(v19 + 24) = v16;
      *(v19 + 32) = v17;
      *(v19 + 33) = v46;
      ++*(v44 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D73148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957F0, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatSponsoredBannerNodeStyle.Selector);
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
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
    v14 = v6 + 64;
    v44 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v50 = *v24;
      v26 = *(v5 + 56) + 48 * v23;
      v27 = *(v26 + 8);
      v48 = *v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v46 = *(v26 + 32);
      v30 = *(v26 + 40);
      if ((v45 & 1) == 0)
      {

        sub_1D5CFCFAC(v29);
        sub_1D5CFCFAC(v28);
        sub_1D62B8658(v30);
      }

      v49 = v28;
      v31 = v29;
      v32 = v27;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v7 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v49;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v49;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v50;
      v18[1] = v25;
      v19 = *(v44 + 56) + 48 * v15;
      v12 = v47;
      *v19 = v48;
      *(v19 + 8) = v32;
      *(v19 + 16) = v31;
      *(v19 + 24) = v16;
      *(v19 + 32) = v46;
      *(v19 + 40) = v17;
      ++*(v44 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D734E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8A694();
  v40 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      v44 = *v25;
      v45 = *(v25 + 8);
      v43 = *(v25 + 24);
      v42 = *(v25 + 32);
      v41 = *(v25 + 40);
      v26 = *(v25 + 48);
      if ((v40 & 1) == 0)
      {
        v27 = v26;

        v28 = v44;
        v29 = v45;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v44;
      *(v17 + 8) = v45;
      *(v17 + 24) = v43;
      *(v17 + 32) = v42;
      *(v17 + 40) = v41;
      *(v17 + 48) = v26;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D737F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v43 = sub_1D72585BC();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D5BCFD1C(0, &qword_1EC895700, MEMORY[0x1E6968FB0], sub_1D6D88A80, &type metadata for DebugFormatCacheDirectory);
  v41 = v4;
  v9 = sub_1D726410C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = (v5 + 16);
    v39 = v5;
    v17 = (v5 + 32);
    v18 = v9 + 64;
    v40 = v8;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = *(*(v8 + 48) + v23);
      v26 = *(v5 + 72);
      v27 = v24 + v26 * v23;
      if (v41)
      {
        (*v17)(v42, v27, v43);
      }

      else
      {
        (*v38)(v42, v27, v43);
      }

      sub_1D7264A0C();
      sub_1D72621EC();

      v28 = sub_1D7264A5C();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + v19) = v25;
      (*v17)((*(v10 + 56) + v26 * v19), v42, v43);
      ++*(v10 + 16);
      v5 = v39;
      v8 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D6D73CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D88B3C();
  v35 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D73F64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_1D5B7C390(v23, v37);
      }

      else
      {
        sub_1D5B76B10(v23, v37);
        v24 = v22;
      }

      sub_1D726207C();
      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      sub_1D5B7C390(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
}

void sub_1D6D7422C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8AE68();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v26 = v24[3];
      v39 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v39;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D744F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5BCFD1C(0, &qword_1EC882DC0, sub_1D6A1CF64, sub_1D605FA4C, &type metadata for FileBasedDismissalStorage.Key);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v20 = sub_1D7264A5C();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D747D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + v21);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1D6D74A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D88948(0);
  v35 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        swift_unknownObjectRetain();
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D74D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8956D8, sub_1D6007964, &type metadata for FormatSourceMap, &type metadata for FormatDebuggerBreakpoint);
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 32 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v25 = v23[2];
      v41 = v23[3];
      v42 = *v23;
      v26 = *(v5 + 56) + v22;
      v27 = *(v26 + 8);
      v39 = *v26;
      v40 = *(v26 + 16);
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      MEMORY[0x1DA6FC0B0](v25);
      MEMORY[0x1DA6FC0B0](v41);
      v28 = sub_1D7264A5C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 32 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v42;
      v17[1] = v24;
      v17[2] = v25;
      v17[3] = v41;
      v18 = *(v7 + 56) + v16;
      *v18 = v39;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D7503C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8A06C();
  v42 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 7);
      if (v42)
      {
        v47 = *v25;
        v26 = *(v25 + 16);
        v43 = *(v25 + 24);
        v44 = *(v25 + 8);
        v45 = *(v25 + 40);
        v48 = *(v25 + 64);
        v46 = *(v25 + 48);
        v49 = *(v25 + 32);
        v50 = *(v25 + 80);
        v52 = *(v25 + 88);
        v53 = *(v25 + 104);
        v51 = *(v25 + 120);
      }

      else
      {
        v28 = *(v25 + 32);
        v27 = *(v25 + 48);
        v29 = *v25;
        v56 = *(v25 + 16);
        v57 = v28;
        v55 = v29;
        v30 = *(v25 + 112);
        v32 = *(v25 + 64);
        v31 = *(v25 + 80);
        *&v60[16] = *(v25 + 96);
        *&v60[32] = v30;
        v59 = v32;
        *v60 = v31;
        v58 = v27;
        v52 = *&v60[8];
        v53 = *&v60[24];
        v50 = v31;
        v51 = *(&v30 + 1);
        v48 = v32;
        v46 = v27;
        v49 = v28;
        v44 = *(&v55 + 1);
        v47 = v55;
        v45 = *(&v28 + 1);
        v26 = v56;
        v43 = BYTE8(v56);

        sub_1D691C7D8(&v55, v54);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 7);
      *v17 = v47;
      *(v17 + 8) = v44;
      *(v17 + 16) = v26;
      *(v17 + 24) = v43;
      *(v17 + 32) = v49;
      *(v17 + 40) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v48;
      *(v17 + 80) = v50;
      *(v17 + 104) = v53;
      *(v17 + 88) = v52;
      *(v17 + 120) = v51;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D753EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DebugFormatCacheFile(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D5BCFD1C(0, &qword_1EC8958F8, type metadata accessor for DebugFormatCacheFile, sub_1D60076AC, &type metadata for FormatFileKey);
  v44 = v4;
  v9 = sub_1D726410C();
  v11 = v9;
  if (*(v8 + 16))
  {
    v41 = v2;
    v42 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v8 + 56);
      v26 = *(v8 + 48) + 24 * v24;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = v25 + *(v43 + 72) * v24;
      v45 = *(v43 + 72);
      if (v44)
      {
        sub_1D61554B0(v30, v46);
      }

      else
      {
        sub_1D6D89B6C(v30, v46, v10);
        sub_1D600767C(v28, v27, v29);
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v29);
      sub_1D72621EC();
      v31 = sub_1D7264A5C();
      v32 = -1 << *(v11 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v11 + 48) + 24 * v19;
      *v20 = v28;
      *(v20 + 8) = v27;
      *(v20 + 16) = v29;
      sub_1D61554B0(v46, *(v11 + 56) + v45 * v19);
      ++*(v11 + 16);
      v8 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D6D75778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EDF04150, sub_1D6D89898, &type metadata for FormatDisplayLinkObject.Key, MEMORY[0x1E69E7CA0] + 8);
  v37 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1D5B7C390(v26, v38);
      }

      else
      {
        sub_1D5B76B10(v26, v38);
        sub_1D6821B94();
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v25);
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      sub_1D5B7C390(v38, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D75AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8A180();
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      v22 = sub_1D72649FC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D75D1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v5 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = sub_1D72636FC();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v5 & 1) == 0)
    {

      v4 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v33;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1D6D76008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8A76C();
  v40 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v42 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[2];
      if ((v40 & 1) == 0)
      {
        v28 = v27;

        swift_unknownObjectRetain();
        v29 = v25;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v26;
      v17[1] = v25;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v39;
      v12 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D762D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8AA28(0);
  v31 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v20);
      v22 = sub_1D7264A5C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D7655C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8A0CC(0, &qword_1EC895908, type metadata accessor for CGRect, sub_1D6D8A14C, MEMORY[0x1E69E6530]);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v39 = *(v21 + 16);
      v40 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      sub_1D7264A0C();
      v41.size.width = v39.x;
      v41.origin = v40;
      v41.size.height = v39.y;
      v42 = CGRectStandardize(v41);
      y = v42.origin.y;
      width = v42.size.width;
      height = v42.size.height;
      if (v42.origin.x == 0.0)
      {
        v42.origin.x = 0.0;
      }

      MEMORY[0x1DA6FC0E0](*&v42.origin.x);
      if (y == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = y;
      }

      MEMORY[0x1DA6FC0E0](*&v26);
      if (width == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = width;
      }

      MEMORY[0x1DA6FC0E0](*&v27);
      if (height == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = height;
      }

      MEMORY[0x1DA6FC0E0](*&v28);
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v40;
      v16[1] = v39;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v38)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1D6D7689C(char a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  sub_1D5D25CF8(v6, v7, a3);
  return 1;
}

uint64_t sub_1D6D76900(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_1D6D7D9AC(sub_1D6D8C4DC);
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1D6D663A8(v4, v5, sub_1D6D8C4DC);
  return 1;
}

void sub_1D6D769CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D66058(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D7D550();
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

void sub_1D6D76D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D6D666FC(v18, a5 & 1);
      v13 = sub_1D5B69D90(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7DE64();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_1D6D76ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D6D629A8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1D6D66D04(v20, a6 & 1);
      v15 = sub_1D6D629A8(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1D6D7E1CC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

uint64_t sub_1D6D77084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1D6D7F450(MEMORY[0x1E6969530], sub_1D605F600);
      goto LABEL_7;
    }

    sub_1D6D68594(v15, a4 & 1, MEMORY[0x1E6969530], sub_1D605F600);
    v26 = sub_1D5B69D90(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1D725891C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1D6D7CE44(v12, a2, a3, a1, v18);
}

void sub_1D6D77270(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D5B69D90(a2, a3);
  v20 = *(v16 + 16);
  v21 = (v18 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v18;
  v25 = *(v16 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      sub_1D6D6FA00(v23, a4 & 1, a5, a6, a7, v19);
      v17 = sub_1D5B69D90(a2, a3);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v26 = v17;
      sub_1D6D83438(a5, a6, a7, v19);
      v17 = v26;
    }
  }

  v28 = *v11;
  if (v24)
  {
    *(v28[7] + 8 * v17) = a1;

    return;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v28[6] + 16 * v17);
  *v29 = a2;
  v29[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v30 = v28[2];
  v22 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v31;
}

uint64_t sub_1D6D77438(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D675BC(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D7EBD8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1D6D8B61C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_1D6D775C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FormatSourceMapContext(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FormatSourceMapContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for FormatSourceMapContext, sub_1D6D8924C, sub_1D60683F4, sub_1D6D89234);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for FormatSourceMapContext, sub_1D6D8924C, sub_1D6D89234, sub_1D60683F4);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for FormatSourceMapContext, sub_1D6D89234);
}

uint64_t sub_1D6D777FC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D6D62A1C(a2, a3);
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
      sub_1D6D67924(v16, a4 & 1);
      v11 = sub_1D6D62A1C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D7EDE4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 7);

    return sub_1D6D8B764(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = v21[6] + 16 * v11;
  *v24 = a2;
  *(v24 + 8) = a3;
  v25 = (v21[7] + (v11 << 7));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[6];
  *(v25 + 105) = *(a1 + 105);
  v25[5] = v30;
  v25[6] = v31;
  v25[4] = v29;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

uint64_t sub_1D6D779B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FormatNodeStateData.Data(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FormatNodeStateData.Data);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for FormatNodeStateData.Data, sub_1D6D89334, sub_1D69B74F8, sub_1D6D8931C);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for FormatNodeStateData.Data, sub_1D6D89334, sub_1D6D8931C, sub_1D69B74F8);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for FormatNodeStateData.Data, sub_1D6D8931C);
}

void sub_1D6D77BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1D5B69D90(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1D6D67F24(v20, a6 & 1);
      v15 = sub_1D5B69D90(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1D6D7F03C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_1D6D77DC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1D5B69D90(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1D5D25CF8(v20, a4 & 1, a6);
      v15 = sub_1D5B69D90(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1D6D77F5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D6D62AD4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D6D681F0(v14, a3 & 1);
      v9 = sub_1D6D62AD4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D7F1E0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

uint64_t sub_1D6D780BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D68914(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D7F6D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 88 * v11;

    return sub_1D6D8B3C8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 88 * v11;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  v29 = *(a1 + 64);
  *(v25 + 80) = *(a1 + 80);
  *(v25 + 48) = v28;
  *(v25 + 64) = v29;
  *(v25 + 32) = v27;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

void sub_1D6D78298(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D6D62C14(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1D6D69250(v13, a3 & 1);
      v8 = sub_1D6D62C14(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1D6D7FDCC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_1D6D78410(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D6D62F20(a2, MEMORY[0x1E6968FB0], sub_1D6716B68, sub_1D6D63F5C);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D6D7FF3C();
      goto LABEL_7;
    }

    sub_1D6D694C8(v18, a3 & 1);
    v22 = sub_1D6D62F20(a2, MEMORY[0x1E6968FB0], sub_1D6716B68, sub_1D6D63F5C);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1D6D7CFE8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1D726493C();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_1D6D78684(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D6D69E34(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D80514();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    return sub_1D6D88C1C(a1, v21[7] + 104 * v11, sub_1D6D8B54C);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 104 * v11;
  v25 = *a1;
  v26 = a1[2];
  *(v24 + 16) = a1[1];
  *(v24 + 32) = v26;
  *v24 = v25;
  v27 = a1[3];
  v28 = a1[4];
  v29 = a1[5];
  *(v24 + 96) = *(a1 + 12);
  *(v24 + 64) = v28;
  *(v24 + 80) = v29;
  *(v24 + 48) = v27;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v31;
}

unint64_t sub_1D6D78834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D5B69D90(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D6D6A144(v18, a5 & 1);
      result = sub_1D5B69D90(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D6D806EC();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

void sub_1D6D789C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D6D62E0C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D6D6A3FC(v14, a3 & 1);
      v9 = sub_1D6D62E0C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for GroupLayoutKey(0);
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D80860();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

unint64_t sub_1D6D78B1C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D5B69D90(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1D6D69858(v16, a3 & 1);
      result = sub_1D5B69D90(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D6D801A8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1D6D78C78(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D69AF0(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D80330();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_1D6D89094(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[2];
  v25[1] = a1[1];
  v25[2] = v27;
  *v25 = v26;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1D6D78E08(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D5B69D90(a2, a3);
  v14 = *(v10 + 16);
  v15 = (v12 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v12;
  v19 = *(v10 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 < v17 || (a4 & 1) != 0)
    {
      sub_1D6D6A69C(v17, a4 & 1, v13);
      result = sub_1D5B69D90(a2, a3);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_1D6D809B4(v13);
      result = v20;
    }
  }

  v22 = *v5;
  if (v18)
  {
    v23 = (v22[7] + 144 * result);
    v24 = a1[7];
    v23[6] = a1[6];
    v23[7] = v24;
    *(v23 + 122) = *(a1 + 122);
    v25 = a1[3];
    v23[2] = a1[2];
    v23[3] = v25;
    v26 = a1[5];
    v23[4] = a1[4];
    v23[5] = v26;
    v27 = a1[1];
    *v23 = *a1;
    v23[1] = v27;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v28 = (v22[6] + 16 * result);
  *v28 = a2;
  v28[1] = a3;
  v29 = (v22[7] + 144 * result);
  v30 = a1[3];
  v29[2] = a1[2];
  v29[3] = v30;
  *(v29 + 122) = *(a1 + 122);
  v31 = a1[7];
  v29[6] = a1[6];
  v29[7] = v31;
  v32 = a1[5];
  v29[4] = a1[4];
  v29[5] = v32;
  v33 = a1[1];
  *v29 = *a1;
  v29[1] = v33;
  v34 = v22[2];
  v16 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v35;
}

void sub_1D6D78FC4(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D6D62C64(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      sub_1D6D6A98C(v16, a2 & 1);
      v11 = sub_1D6D62C64(a3, a4);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for CGSize(0);
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D80B70();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = a3;
    v22[1] = a4;
    *(v21[7] + 8 * v11) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * v11) = a1;
}

unint64_t sub_1D6D79124(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D5B69D90(a1, a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_1D6D6AC40(v18, a3 & 1);
      result = sub_1D5B69D90(a1, a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D6D80CC4();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a4;
    v24[1] = a5;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a1;
  v25[1] = a2;
  v26 = (v23[7] + 16 * result);
  *v26 = a4;
  v26[1] = a5;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_1D6D79290(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D5B91830(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1D6D80FFC();
    result = v17;
    goto LABEL_8;
  }

  sub_1D6D6B780(v14, a2 & 1);
  result = sub_1D5B91830(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

unint64_t sub_1D6D793B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D5B91830(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D6D8113C();
    result = v17;
    goto LABEL_8;
  }

  sub_1D6D6B9D8(v14, a3 & 1);
  result = sub_1D5B91830(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6D79528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D6D663A8(v18, a4 & 1, a5);
      v13 = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7D9AC(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void sub_1D6D796B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D5BEFBA0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D5BEFC78(v14, a3 & 1, sub_1D605F8C0);
      v9 = sub_1D5BEFBA0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D8729C(sub_1D605F8C0);
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_1D6D79824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FormatDerivedDataOption(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FormatDerivedDataOption);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for FormatDerivedDataOption, sub_1D6D89DEC, sub_1D5EB9A4C, sub_1D60E27A4);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for FormatDerivedDataOption, sub_1D6D89DEC, sub_1D60E27A4, sub_1D5EB9A4C);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for FormatDerivedDataOption, sub_1D60E27A4);
}

uint64_t sub_1D6D79A58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D6C8D4(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D81BD8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_1D6D89E54(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

void sub_1D6D79C14(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D6D62FB0(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D6D6CC10(v18, a5 & 1);
      v13 = sub_1D6D62FB0(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D81D90();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 48 * v13);
    v25 = a1[1];
    *v24 = *a1;
    v24[1] = v25;
    v24[2] = a1[2];

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = v23[6] + 24 * v13;
  *v26 = a2;
  *(v26 + 8) = a3;
  *(v26 + 16) = a4;
  v27 = (v23[7] + 48 * v13);
  v28 = a1[1];
  *v27 = *a1;
  v27[1] = v28;
  v27[2] = a1[2];
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;

  sub_1D5F7D230(a2, a3, a4);
}

uint64_t sub_1D6D79E18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FormatDerivedDataBindingSlotResult(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FormatDerivedDataBindingSlotResult);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for FormatDerivedDataBindingSlotResult, sub_1D6D89F10, sub_1D6D89F78, sub_1D6D89F90);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for FormatDerivedDataBindingSlotResult, sub_1D6D89F10, sub_1D6D89F90, sub_1D6D89F78);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for FormatDerivedDataBindingSlotResult, sub_1D6D89F90);
}

void sub_1D6D7A064(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D6D6303C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D6D82048();
      goto LABEL_7;
    }

    sub_1D6D6D03C(v17, a3 & 1);
    v21 = sub_1D6D6303C(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D6D8C7DC(a2, v11, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D6D7D0A0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1D726493C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_1D6D7A220(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D6D62B40(a2);
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
      sub_1D6D8285C();
      goto LABEL_7;
    }

    sub_1D6D6E4FC(v13, a3 & 1);
    v19 = sub_1D6D62B40(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D5F42518(a2, v21);
      return sub_1D6D7D154(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1D726493C();
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
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1D5B7C390(a1, v17);
}

void sub_1D6D7A384(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D6D631FC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_1D6D6EA78(v14, a2 & 1);
      v9 = sub_1D6D631FC(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D82B8C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a3;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_1D6D7A4D4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D6D631FC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_1D6D6ECE4(v14, a2 & 1);
      v9 = sub_1D6D631FC(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D82CDC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a3;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1D6D7A628(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D6D629A8(a2, a3);
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
      sub_1D6D6E7A8(v16, a4 & 1);
      v11 = sub_1D6D629A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D829F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1D6D7A7E8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D6D62820(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D6D6EF54(v16, a4 & 1);
      v11 = sub_1D6D62820(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D82E44();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v24 = v21[7] + 16 * v11;
    *v24 = a1;
    *(v24 + 8) = a2;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_1D6D7A99C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D5B91830(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D6D6F2D8(v14, a3 & 1);
      v9 = sub_1D5B91830(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D82FEC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_1D6D7AAE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SharedItem(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SharedItem);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for SharedItem, sub_1D6D8B210, sub_1D6761CC4, sub_1D5F2676C);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for SharedItem, sub_1D6D8B210, sub_1D5F2676C, sub_1D6761CC4);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for SharedItem, sub_1D5F2676C);
}

uint64_t sub_1D6D7AD38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DebugFormatCompilingPackage(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DebugFormatCompilingPackage);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for DebugFormatCompilingPackage, sub_1D6D89A18, sub_1D6D89A80, sub_1D6D89A98);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for DebugFormatCompilingPackage, sub_1D6D89A18, sub_1D6D89A98, sub_1D6D89A80);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for DebugFormatCompilingPackage, sub_1D6D89A98);
}

void sub_1D6D7AFBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D5B69D90(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_1D6D6FCA8(v22, a4 & 1, a5, a6, a7);
      v17 = sub_1D5B69D90(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1D6D835FC(a5, a6, a7);
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

uint64_t sub_1D6D7B19C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DebugFormatCacheFile(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DebugFormatCacheFile);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for DebugFormatCacheFile, sub_1D6D89B04, sub_1D6D89B6C, sub_1D61554B0);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for DebugFormatCacheFile, sub_1D6D89B04, sub_1D61554B0, sub_1D6D89B6C);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for DebugFormatCacheFile, sub_1D61554B0);
}

void sub_1D6D7B3D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D734E4(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D85338();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;
    v23 = *v22;
    v24 = *(v22 + 8);
    v31 = *(v22 + 48);
    v25 = *(a1 + 32);
    *(v22 + 16) = *(a1 + 16);
    *(v22 + 32) = v25;
    *v22 = *a1;
    *(v22 + 48) = *(a1 + 48);

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v21[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  v27 = v21[7] + 56 * v11;
  v28 = *(a1 + 16);
  *v27 = *a1;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a1 + 32);
  *(v27 + 48) = *(a1 + 48);
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1D6D7B5A0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D6D63370(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D6D854E8();
      goto LABEL_7;
    }

    sub_1D6D737F0(v13, a3 & 1);
    v24 = sub_1D6D63370(a2 & 1);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D6D7D1D0(v10, a2 & 1, a1, v16);
}

uint64_t sub_1D6D7B720(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SportsRoster(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SportsRoster);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for SportsRoster, sub_1D6D88B9C, sub_1D6D88C04, sub_1D6CA3814);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for SportsRoster, sub_1D6D88B9C, sub_1D6CA3814, sub_1D6D88C04);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for SportsRoster, sub_1D6CA3814);
}

_OWORD *sub_1D6D7B980(_OWORD *a1, void *a2, char a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1D5BAA7DC(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = v12;
      sub_1D6D859E8(a4);
      v12 = v20;
      goto LABEL_8;
    }

    sub_1D6D73F64(v17, a3 & 1, a4);
    v12 = sub_1D5BAA7DC(a2);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_16:
      a5(0);
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v8;
  if (v18)
  {
    v23 = (v22[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1D5B7C390(a1, v23);
  }

  else
  {
    sub_1D6D7D280(v12, a2, a1, v22);

    return a2;
  }
}

void sub_1D6D7BAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D6D88EB4();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_1D6D744F4(v12, a2 & 1);
      v7 = sub_1D6D88EB4();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v15 = v7;
      sub_1D6D85CEC();
      v7 = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (v7 >> 6) + 64) |= 1 << v7;
    *(*(v17 + 56) + 8 * v7) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return;
    }

    goto LABEL_15;
  }

  *(*(v17 + 56) + 8 * v7) = a1;
}

uint64_t sub_1D6D7BC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FeedItemDismissalRecord(0);
      return sub_1D6D88C1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FeedItemDismissalRecord);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D6D7E474(type metadata accessor for FeedItemDismissalRecord, sub_1D6D88F1C, sub_1D60663A8, sub_1D6A1CE94);
    goto LABEL_7;
  }

  sub_1D5D5DF18(v15, a4 & 1, type metadata accessor for FeedItemDismissalRecord, sub_1D6D88F1C, sub_1D6A1CE94, sub_1D60663A8);
  v22 = sub_1D5B69D90(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D6D7CEF4(v12, a2, a3, a1, v18, type metadata accessor for FeedItemDismissalRecord, sub_1D6A1CE94);
}

unint64_t sub_1D6D7BE64(char a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  result = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D6D747D8(v18, a4 & 1, a5);
      result = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D6D85E98(a5);
      result = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + result) = a1 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + result) = a1 & 1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
}

void sub_1D6D7BFF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D5C416B4(v18, a4 & 1, a5);
      v13 = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7D3E8(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_1D6D7C178(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
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
      sub_1D6D7503C(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D6D86324();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 7);

    return sub_1D6D8A010(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 7));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[7];
  v25[6] = a1[6];
  v25[7] = v31;
  v25[4] = v29;
  v25[5] = v30;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

_OWORD *sub_1D6D7C310(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D6D63460(a2, a3, a4 & 1);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1D6D86750();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1D6D75778(v18, a5 & 1);
    v13 = sub_1D6D63460(a2, a3, a4 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 32 * v13);
    __swift_destroy_boxed_opaque_existential_1(v24);

    return sub_1D5B7C390(a1, v24);
  }

  else
  {
    sub_1D6D7D2E8(v13, a2, a3, a4 & 1, a1, v23);

    return sub_1D6821B94();
  }
}

uint64_t sub_1D6D7C478(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D6D81980(sub_1D6D8ACE0, sub_1D5B63F14);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D5D656AC(v16, a4 & 1, sub_1D6D8ACE0, sub_1D5B63F14);
    v11 = sub_1D5B69D90(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D5B63F14(a1, v22);
  }

  else
  {
    sub_1D6D7D360(v11, a2, a3, a1, v21);
  }
}

void sub_1D6D7C638(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D5D25CF8(v18, a4 & 1, a5);
      v13 = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7D714(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

void sub_1D6D7C7FC(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), unint64_t *a6, void *a7)
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      sub_1D6D75D1C(v21, a3 & 1, a5);
      v16 = a4(a2);
      if ((v22 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1D5B5A498(0, a6, a7);
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      a7 = v16;
      sub_1D6D86F10(a5);
      v16 = a7;
    }
  }

  v25 = *v12;
  if (v22)
  {
    *(v25[7] + 8 * v16) = a1;

    return;
  }

  v25[(v16 >> 6) + 8] |= 1 << v16;
  *(v25[6] + 8 * v16) = a2;
  *(v25[7] + 8 * v16) = a1;
  v26 = v25[2];
  v20 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v27;

  v28 = a2;
}

void sub_1D6D7C9DC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), unint64_t a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = a4(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_1D6D6BC30(v19, a3 & 1, a5);
      v14 = a4(a2);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_16:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_1D6D8127C(a5);
      v14 = v22;
    }
  }

  v24 = *v9;
  if ((v20 & 1) == 0)
  {
    v24[(v14 >> 6) + 8] |= 1 << v14;
    *(v24[6] + 8 * v14) = a2;
    *(v24[7] + 8 * v14) = a1;
    v25 = v24[2];
    v18 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v18)
    {
      v24[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  *(v24[7] + 8 * v14) = a1;
}

void sub_1D6D7CB58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D6D63544(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D6D762D8(v14, a3 & 1);
      v9 = sub_1D6D63544(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for UIUserInterfaceStyle(0);
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1D6D873F4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1D6D7CCBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D5C4BEE0(v18, a4 & 1, a5);
      v13 = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D726493C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7DCF8(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

uint64_t sub_1D6D7CE44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D725891C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1D6D7CEF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = a7(a4, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_1D6D7CFA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1D6D7CFE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D72585BC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D6D7D0A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  result = sub_1D6D8C85C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for WebEmbedDatastoreCacheKey);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1D6D7D154(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D5B7C390(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1D6D7D1D0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_1D72585BC();
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

_OWORD *sub_1D6D7D280(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D5B7C390(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1D6D7D2E8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a6[6] + 24 * a1;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  result = sub_1D5B7C390(a5, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1D6D7D360(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D5B63F14(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1D6D7D3E8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D72640FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        v23 = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_1D6D7D550()
{
  v1 = v0;
  sub_1D6D8CAF4();
  v2 = *v0;
  v3 = sub_1D72640FC();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void sub_1D6D7D714(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D72640FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_1D6D7D9AC(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D72640FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        swift_unknownObjectRetain();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_1D6D7DB60()
{
  v1 = v0;
  sub_1D5CEB078();
  v2 = *v0;
  v3 = sub_1D72640FC();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void sub_1D6D7DCF8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D72640FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}