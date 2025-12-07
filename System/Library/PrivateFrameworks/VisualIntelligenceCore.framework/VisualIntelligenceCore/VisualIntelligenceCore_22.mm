void sub_1D8970C98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0, &qword_1D8B2C100);
  v34 = v4;
  v6 = sub_1D8B16900();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1D8943B68(v24, v35);
      }

      else
      {
        sub_1D87D3E4C(v24, v35);
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      v25 = sub_1D8B16D80();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1D8943B68(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D8970F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D8B13CF0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v47 - v10;
  v11 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70, &unk_1D8B2BEF0);
  v58 = v4;
  v14 = sub_1D8B16900();
  v15 = v14;
  if (*(v13 + 16))
  {
    v47 = v2;
    v16 = 0;
    v17 = *(v13 + 64);
    v48 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v51 = v6 + 16;
    v49 = v6;
    v22 = (v6 + 8);
    v52 = v14 + 64;
    v54 = v13;
    v23 = v59;
    v50 = v21;
    v53 = v14;
    while (v20)
    {
      v62 = (v20 - 1) & v20;
      v63 = v16;
      v25 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_15:
      v29 = *(v13 + 48);
      v61 = *(v55 + 72);
      v30 = v29 + v61 * v25;
      if (v58)
      {
        sub_1D897999C(v30, v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v31 = *(v13 + 56);
        v60 = *(v57 + 72);
        sub_1D881F6FC(v31 + v60 * v25, v64, &qword_1ECA65B78, &unk_1D8B2D550);
      }

      else
      {
        sub_1D89798EC(v30, v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v32 = *(v13 + 56);
        v60 = *(v57 + 72);
        sub_1D87A0E38(v32 + v60 * v25, v64, &qword_1ECA65B78, &unk_1D8B2D550);
      }

      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v33 = *(v23 + *(v56 + 20));
      MEMORY[0x1DA720210](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v33 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v36 = *(v49 + 72);
        v37 = *(v49 + 16);
        do
        {
          v37(v8, v35, v5);
          sub_1D8979954(&qword_1ECA65FD0, MEMORY[0x1E69E0420], MEMORY[0x1E69E0430]);
          sub_1D8B157A0();
          (*v22)(v8, v5);
          v35 += v36;
          --v34;
        }

        while (v34);
      }

      v38 = sub_1D8B16D80();
      v15 = v53;
      v39 = -1 << *(v53 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v52 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v13 = v54;
        v23 = v59;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v52 + 8 * v41);
          if (v45 != -1)
          {
            v24 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v40) & ~*(v52 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v13 = v54;
      v23 = v59;
LABEL_7:
      *(v52 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1D897999C(v23, v15[6] + v61 * v24, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D881F6FC(v64, v15[7] + v60 * v24, &qword_1ECA65B78, &unk_1D8B2D550);
      ++v15[2];
      v21 = v50;
      v20 = v62;
      v16 = v63;
    }

    v26 = v16;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v27 >= v21)
      {
        break;
      }

      v28 = v48[v27];
      ++v26;
      if (v28)
      {
        v62 = (v28 - 1) & v28;
        v63 = v27;
        v25 = __clz(__rbit64(v28)) | (v27 << 6);
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v46 = 1 << *(v13 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
}

void sub_1D89715C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70, &qword_1D8B2C090);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
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
      v21 = *(v5 + 56) + 8 * v20;
      v22 = *(*(v5 + 48) + v20);
      v23 = *(v21 + 4);
      v24 = *v21;
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v22);
      v25 = sub_1D8B16D80();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 8 * v15;
      *v16 = v24;
      *(v16 + 4) = v23;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

void sub_1D8971854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      v22 = sub_1D8B16D80();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

void sub_1D8971AFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - v12;
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v53 = v10;
  v17 = sub_1D8B16900();
  v18 = v17;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v49 = (v23 + 16);
    v50 = v23;
    v47 = v6;
    v48 = v11 + 16;
    v51 = v16;
    v52 = v11;
    v54 = (v11 + 32);
    v55 = (v23 + 32);
    v26 = v17 + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v56 = *(v23 + 72);
      v33 = v32 + v56 * v31;
      if (v53)
      {
        (*v55)(v59, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 32))(v57, v34 + v35 * v31, v58);
      }

      else
      {
        (*v49)(v59, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 16))(v57, v36 + v35 * v31, v58);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v37 = sub_1D8B15790();
      v38 = -1 << *(v18 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
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
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v55)((*(v18 + 48) + v56 * v27), v59, v13);
      (*v54)(*(v18 + 56) + v35 * v27, v57, v58);
      ++*(v18 + 16);
      v23 = v50;
      v16 = v51;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v16 + 32);
    v9 = v47;
    if (v45 >= 64)
    {
      bzero(v20, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v45;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
}

void sub_1D8971FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FE8, &unk_1D8B2D580);
  v31 = v4;
  v6 = sub_1D8B16900();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      v22 = sub_1D8B16D80();
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
      *(*(v7 + 48) + v15) = v20;
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

void sub_1D8972230(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB0, &unk_1D8B2D520);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v46 = v2;
    v47 = v5;
    v8 = 0;
    v11 = *(v5 + 64);
    v10 = (v5 + 64);
    v9 = v11;
    v12 = 1 << *(v10 - 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v16 = v6 + 64;
    while (v14)
    {
      v23 = __clz(__rbit64(v14));
      v24 = (v14 - 1) & v14;
LABEL_15:
      v27 = v23 | (v8 << 6);
      v48 = v24;
      if (v4)
      {
        v28 = *(v47 + 48) + 88 * v27;
        sub_1D88C5438(v28, &v51);
        v30 = *(v28 + 72);
        v29 = *(v28 + 80);
        v31 = *(*(v47 + 56) + 8 * v27);
      }

      else
      {
        v32 = *(v47 + 48) + 88 * v27;
        v33 = *(v32 + 32);
        v34 = *(v32 + 48);
        v35 = *(v32 + 64);
        v29 = *(v32 + 80);
        v56 = v29;
        v54 = v34;
        v55 = v35;
        v36 = *(v32 + 16);
        v51 = *v32;
        v52 = v36;
        v53 = v33;
        v31 = *(*(v47 + 56) + 8 * v27);
        v30 = *(&v35 + 1);
        sub_1D881F59C(&v51, v49);
      }

      sub_1D88C5438(&v51, v57);
      sub_1D88C5438(v57, &v51);
      *(&v55 + 1) = v30;
      v56 = v29;
      v49[2] = v53;
      v49[3] = v54;
      v49[4] = v55;
      v50 = v29;
      v49[0] = v51;
      v49[1] = v52;
      sub_1D8B16D20();
      sub_1D881F548();
      sub_1D8B157A0();
      v37 = sub_1D8B16D80();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
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
          v44 = *(v16 + 8 * v40);
          if (v44 != -1)
          {
            v17 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v7 + 48) + 88 * v17;
      v19 = v52;
      *v18 = v51;
      v20 = v53;
      v21 = v54;
      v22 = v55;
      *(v18 + 80) = v56;
      *(v18 + 48) = v21;
      *(v18 + 64) = v22;
      *(v18 + 16) = v19;
      *(v18 + 32) = v20;
      *(*(v7 + 56) + 8 * v17) = v31;
      ++*(v7 + 16);
      v14 = v48;
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v15)
      {
        break;
      }

      v26 = v10[v8];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_35;
    }

    v3 = v46;
    v45 = 1 << *(v47 + 32);
    if (v45 >= 64)
    {
      bzero(v10, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v45;
    }

    *(v47 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
}

void sub_1D8972614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38, &qword_1D8B2C058);
  v45 = v4;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v42 = v2;
    v43 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v20 = (v14 - 1) & v14;
LABEL_15:
      v23 = v19 | (v10 << 6);
      v46 = v20;
      v24 = *(v44 + 72);
      v25 = *(v7 + 48) + v24 * v23;
      if (v45)
      {
        sub_1D897999C(v25, v51, type metadata accessor for BundleClassification.ClassificationType);
        v26 = (*(v7 + 56) + 48 * v23);
        v50 = *v26;
        v49 = *(v26 + 1);
        v48 = v26[16];
        v27 = *(v26 + 4);
        v47 = *(v26 + 3);
        v28 = *(v26 + 5);
      }

      else
      {
        sub_1D89798EC(v25, v51, type metadata accessor for BundleClassification.ClassificationType);
        v29 = (*(v7 + 56) + 48 * v23);
        v50 = *v29;
        v49 = *(v29 + 1);
        v48 = v29[16];
        v30 = v24;
        v32 = *(v29 + 3);
        v31 = *(v29 + 4);
        v28 = *(v29 + 5);

        v47 = v32;
        v27 = v31;
        v24 = v30;
      }

      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v52);
      v33 = sub_1D8B16D80();
      v34 = -1 << *(v9 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v16 + 8 * v36);
          if (v40 != -1)
          {
            v17 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_1D897999C(v51, *(v9 + 48) + v24 * v17, type metadata accessor for BundleClassification.ClassificationType);
      v18 = *(v9 + 56) + 48 * v17;
      *v18 = v50;
      *(v18 + 8) = v49;
      *(v18 + 16) = v48;
      v14 = v46;
      *(v18 + 24) = v47;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      ++*(v9 + 16);
      v7 = v43;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v7 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v11, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v41;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1D8972A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66018, &unk_1D8B2D5F0);
  v37 = v4;
  v6 = sub_1D8B16900();
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
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      if (v23)
      {
        MEMORY[0x1DA720210](1);
        sub_1D8B15A60();
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x1DA720250](v26);
      }

      else
      {
        MEMORY[0x1DA720210](0);
      }

      v27 = sub_1D8B16D80();
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

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v38;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
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
        goto LABEL_41;
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
      goto LABEL_39;
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

LABEL_39:
  *v3 = v7;
}

void sub_1D8972D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10, &unk_1D8B2D5C0);
  v34 = v4;
  v6 = sub_1D8B16900();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      v25 = sub_1D8B16D80();
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
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1D8972FC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80, &qword_1D8B2BF08);
  v35 = v4;
  v6 = sub_1D8B16900();
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

      sub_1D8B16D20();
      sub_1D8B15A60();
      v25 = sub_1D8B16D80();
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

void sub_1D8973264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58, &qword_1D8B2D4E0);
  v41 = v4;
  v9 = sub_1D8B16900();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v39 = v3;
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
    v42 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v40 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v41)
      {
        sub_1D897999C(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
      }

      v26 = v7;
      v27 = *(*(v42 + 56) + 8 * v23);
      sub_1D8B16D20();
      v28 = v26;
      BundleClassification.ClassificationType.hash(into:)(v43);
      v29 = sub_1D8B16D80();
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

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D897999C(v28, *(v11 + 48) + v24 * v19, type metadata accessor for BundleClassification.ClassificationType);
      *(*(v11 + 56) + 8 * v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v42;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D89735DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48, &qword_1D8B2C068);
  v44 = v4;
  v9 = sub_1D8B16900();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v41 = v3;
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
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v43 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_1D897999C(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1D8B16D20();
      v30 = v27;
      BundleClassification.ClassificationType.hash(into:)(v45);
      v31 = sub_1D8B16D80();
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
      sub_1D897999C(v30, *(v11 + 48) + v24 * v19, type metadata accessor for BundleClassification.ClassificationType);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v42;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D8973960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RefinementState(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
  v48 = v4;
  v11 = sub_1D8B16900();
  v12 = v10;
  v13 = v11;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = v11 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v46 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v48)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v47 + 72);
        sub_1D897999C(v29 + v31 * v26, v49, type metadata accessor for RefinementState);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v47 + 72);
        sub_1D89798EC(v32 + v31 * v26, v49, type metadata accessor for RefinementState);
      }

      sub_1D8B16D20();
      v33 = v30;
      BundleClassification.ClassificationType.hash(into:)(v50);
      v34 = sub_1D8B16D80();
      v35 = -1 << *(v13 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BundleClassification.ClassificationType);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      sub_1D897999C(v49, v22, type metadata accessor for RefinementState);
      ++*(v13 + 16);
      v12 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
}

void sub_1D8973DB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CVBundle(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8, &qword_1D8B2AC08);
  v40 = v4;
  v9 = sub_1D8B16900();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v2;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v38 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v40)
      {
        sub_1D897999C(v24, v7, type metadata accessor for CVBundle);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for CVBundle);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      sub_1D8B16D20();
      sub_1D891CA54(v41);
      v26 = v39;
      sub_1D87CF97C(v41, *&v7[*(v39 + 20)]);
      sub_1D87CF97C(v41, *&v7[*(v26 + 24)]);
      sub_1D893983C(v41, *&v7[*(v26 + 28)]);
      v27 = sub_1D8B16D80();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1D897999C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for CVBundle);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
      v8 = v37;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D8974160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F88, &qword_1D8B2D4F8);
  v48 = v4;
  v11 = sub_1D8B16900();
  v12 = v10;
  v13 = v11;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = v11 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v46 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v48)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v47 + 72);
        sub_1D897999C(v29 + v31 * v26, v49, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v47 + 72);
        sub_1D89798EC(v32 + v31 * v26, v49, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      sub_1D8B16D20();
      v33 = v30;
      BundleClassification.ClassificationType.hash(into:)(v50);
      v34 = sub_1D8B16D80();
      v35 = -1 << *(v13 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BundleClassification.ClassificationType);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      sub_1D897999C(v49, v22, type metadata accessor for BundleClassifier.ClassificationInfo);
      ++*(v13 + 16);
      v12 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
}

void sub_1D89745C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1D8B13240();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38, &qword_1D8B2BEA0);
  v39 = v4;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = *(v7 + 56);
      v23 = v5;
      v24 = *(v5 + 72);
      v25 = v22 + v24 * (v19 | (v10 << 6));
      if (v39)
      {
        (*v16)(v40, v25, v41);
      }

      else
      {
        (*v37)(v40, v25, v41);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](0);
      v26 = sub_1D8B16D80();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v16)((*(v9 + 56) + v24 * v18), v40, v41);
      ++*(v9 + 16);
      v5 = v23;
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1D8974920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40, &unk_1D8B2BEA8);
  v6 = sub_1D8B16900();
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

      sub_1D8B16D20();
      MEMORY[0x1DA720210](0);
      v20 = sub_1D8B16D80();
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

void sub_1D8974BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F90, &qword_1D8B2D500);
  v37 = v4;
  v9 = sub_1D8B16900();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v37)
      {
        sub_1D897999C(v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8788F40((*(v8 + 56) + 40 * v22), v39);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D87C1470(*(v8 + 56) + 40 * v22, v39);
      }

      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v38);
      v25 = sub_1D8B16D80();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1D897999C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8788F40(v39, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D8974F38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      v27 = sub_1D8B16D80();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1D89751D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0, &qword_1D8B2BF28);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v24 = *v22;
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v21);
      v25 = sub_1D8B16D80();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1D8975484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = sub_1D8B16900();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1D8B15790();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_1D8975860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F78, &qword_1D8B2D4E8);
  v36 = v4;
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      v26 = sub_1D8B16D80();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1D8975B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66020, &qword_1D8B2D608);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1D8B16D10();
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

    if (v4)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D8975D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66000, &unk_1D8B2D5A0);
  v9 = sub_1D8B16900();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v4)
      {
        sub_1D897999C(v25, v7, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      v26 = sub_1D8B16D10();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1D897999C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CVDebugArtifactManager.BoresightState);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D89760D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968, &qword_1D8B25E78);
  v44 = v4;
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      if (v44)
      {
        v26 = *(v5 + 56) + 88 * v24;
        sub_1D88C5438(v26, &v46);
        v27 = *(v26 + 72);
        v28 = *(v26 + 80);
      }

      else
      {
        v29 = *(v5 + 56) + 88 * v24;
        v28 = *(v29 + 80);
        v31 = *(v29 + 32);
        v30 = *(v29 + 48);
        v50 = *(v29 + 64);
        v32 = *(v29 + 16);
        v46 = *v29;
        v47 = v32;
        v48 = v31;
        v51 = v28;
        v49 = v30;
        v27 = *(&v50 + 1);
        sub_1D881F59C(&v46, v45);
      }

      sub_1D88C5438(&v46, v45);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v25);
      v33 = sub_1D8B16D80();
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
      sub_1D88C5438(v45, &v46);
      *(&v50 + 1) = v27;
      v51 = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v25;
      v16 = *(v7 + 56) + 88 * v15;
      v17 = v47;
      *v16 = v46;
      v18 = v48;
      v19 = v49;
      v20 = v50;
      *(v16 + 80) = v51;
      *(v16 + 48) = v19;
      *(v16 + 64) = v20;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      ++*(v7 + 16);
      v5 = v43;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_1D89763FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF0, &qword_1D8B2D590);
  v6 = sub_1D8B16900();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_1D8788F40(v21, v31);
      }

      else
      {
        sub_1D87C1470(v21, v31);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      v22 = sub_1D8B16D80();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1D8788F40(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_1D897669C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0, &qword_1D8B2BE50);
  v38 = v4;
  v6 = sub_1D8B16900();
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      v28 = sub_1D8B16D80();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
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

void sub_1D897695C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8, &unk_1D8B2BE20);
  v6 = sub_1D8B16900();
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
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1D8B16D10();
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

void sub_1D8976BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v22);
      v24 = sub_1D8B16D80();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1D8976E70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = sub_1D8B16900();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1D8B15790();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_1D897724C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8, &qword_1D8B2C0D0);
  v48 = v4;
  v10 = sub_1D8B16900();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v2;
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
    v44 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v50 = *(v45 + 72);
      v25 = v24 + v50 * v23;
      if (v48)
      {
        sub_1D897999C(v25, v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v26 = *(v9 + 56);
        v49 = *(v47 + 72);
        sub_1D897999C(v26 + v49 * v23, v51, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      else
      {
        sub_1D89798EC(v25, v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v27 = *(v9 + 56);
        v49 = *(v47 + 72);
        sub_1D89798EC(v27 + v49 * v23, v51, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      sub_1D8B16D20();
      v28 = v8[3];
      v54 = v8[2];
      v55 = v28;
      v56 = v8[4];
      v29 = v8[1];
      v52 = *v8;
      v53 = v29;
      CameraSourceFrameMetadata.hash(into:)(v57);
      v30 = v8 + *(v46 + 20);
      MEMORY[0x1DA720210](*v30);
      v31 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v57);
      sub_1D8818BD0(v57, *&v30[v31[6]]);
      sub_1D88911A0(*&v30[v31[7]], *&v30[v31[7] + 8], *&v30[v31[7] + 16], *&v30[v31[7] + 24]);
      v32 = *&v30[v31[8]];
      if (v32 == 0.0)
      {
        v32 = 0.0;
      }

      MEMORY[0x1DA720250](*&v32);
      v33 = sub_1D8B16D80();
      v34 = -1 << *(v11 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v9 = v44;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v9 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D897999C(v8, *(v11 + 48) + v50 * v19, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D897999C(v51, *(v11 + 56) + v49 * v19, type metadata accessor for TrackManager.TrackedProcessorState);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
}

void sub_1D89777B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      v22 = sub_1D8B16D80();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

void sub_1D8977A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F70, &unk_1D8B2D4D0);
  v36 = v4;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1D897999C(v24, v37, type metadata accessor for CVTrackSnapshot);
      }

      else
      {
        sub_1D89798EC(v24, v37, type metadata accessor for CVTrackSnapshot);
      }

      v39 = v22;
      sub_1D8B16D20();
      CVDetection.hash(into:)(v38);
      v25 = sub_1D8B16D80();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      sub_1D897999C(v37, *(v9 + 56) + v23 * v17, type metadata accessor for CVTrackSnapshot);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1D8977D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90, &qword_1D8B2BF18);
  v37 = v4;
  v8 = sub_1D8B16900();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1D881F6FC(v24, v38, &qword_1ECA65B98, &qword_1D8B2BF20);
      }

      else
      {
        sub_1D87A0E38(v24, v38, &qword_1ECA65B98, &qword_1D8B2BF20);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v22);
      v25 = sub_1D8B16D80();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_1D881F6FC(v38, *(v9 + 56) + v23 * v17, &qword_1ECA65B98, &qword_1D8B2BF20);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1D89780FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8, &qword_1D8B2BE10);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
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
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 48) + v21;
      v23 = *(v22 + 4);
      v24 = *v22;
      v36 = *(*(v5 + 56) + v21);
      sub_1D8B16D20();
      if (v23 == 1)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }
        }

        else
        {
          v25 = 0;
        }

        MEMORY[0x1DA720210](v25);
      }

      else
      {
        MEMORY[0x1DA720210](3);
        sub_1D8B16D60();
      }

      v26 = sub_1D8B16D80();
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

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v23;
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
        goto LABEL_41;
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

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_1D89783D8(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

unint64_t sub_1D8978448(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_1D89784A0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8943B68(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1D897850C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  result = sub_1D881F6FC(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_1ECA65B78, &unk_1D8B2D550);
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

unint64_t sub_1D8978600(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 8 * result;
  *v4 = a3;
  *(v4 + 4) = BYTE4(a3);
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1D8978650(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1D89786E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1D8B13240();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_1D89787EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1D8978834(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BundleClassification.ClassificationType(0);
  result = sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BundleClassification.ClassificationType);
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

uint64_t sub_1D8978914(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D897999C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1D89789C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D8B13240();
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

uint64_t sub_1D8978A78(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BundleClassification.ClassificationType(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BundleClassification.ClassificationType);
  result = sub_1D8788F40(a3, a4[7] + 40 * a1);
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

uint64_t sub_1D8978B38(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  v7 = a3[7];
  v8 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  result = sub_1D897999C(a2, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CVDebugArtifactManager.BoresightState);
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

unint64_t sub_1D8978BE0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 88 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a3 + 80);
  v6 = *(a3 + 64);
  *(v4 + 48) = *(a3 + 48);
  *(v4 + 64) = v6;
  *(v4 + 32) = *(a3 + 32);
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

uint64_t sub_1D8978C48(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1D8788F40(a3, a4[7] + 40 * a1);
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

uint64_t sub_1D8978CB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  v10 = a4[7];
  v11 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  result = sub_1D897999C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TrackManager.TrackedProcessorState);
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

uint64_t sub_1D8978DA0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  result = sub_1D881F6FC(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_1ECA65B98, &qword_1D8B2BF20);
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

unint64_t sub_1D8978E58(unint64_t result, char a2, uint64_t a3, void *a4)
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

unint64_t sub_1D8978E9C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2) & 1;
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1D8978EF0()
{
  result = qword_1ECA65F38;
  if (!qword_1ECA65F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65F38);
  }

  return result;
}

void *sub_1D8978F44(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 6)
  {
    v9 = i[4];
    v41 = i[3];
    *v42 = v9;
    *&v42[9] = *(i + 73);
    v10 = i[2];
    v39 = i[1];
    v40 = v10;
    v38 = *i;
    v11 = *&v42[8];
    if (*&v42[8])
    {
      if (v42[24])
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
      }

      else
      {
        v12 = *v42;
        v13 = *&v42[16];
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    sub_1D88E0F34(&v38, v37);
    v15 = sub_1D87F0454(v12, v11, v13);
    v16 = v1[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      break;
    }

    v19 = v14;
    if (v1[3] < v18)
    {
      sub_1D8972A20(v18, 1);
      v1 = v43;
      v20 = sub_1D87F0454(v12, v11, v13);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

      v15 = v20;
    }

    if (v19)
    {

      v22 = v1[7];
      v23 = *(v22 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v15) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1D87C8AEC(0, *(v23 + 2) + 1, 1, v23);
        *(v22 + 8 * v15) = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1D87C8AEC((v25 > 1), v26 + 1, 1, v23);
        *(v22 + 8 * v15) = v23;
      }

      *(v23 + 2) = v26 + 1;
      v4 = &v23[96 * v26];
      v5 = v39;
      *(v4 + 2) = v38;
      *(v4 + 3) = v5;
      v6 = v40;
      v7 = v41;
      v8 = *v42;
      *(v4 + 105) = *&v42[9];
      *(v4 + 5) = v7;
      *(v4 + 6) = v8;
      *(v4 + 4) = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632E8, &qword_1D8B22E10);
      v27 = swift_allocObject();
      v28 = v40;
      v29 = *v42;
      v27[5] = v41;
      v27[6] = v29;
      *(v27 + 105) = *&v42[9];
      v30 = v38;
      v31 = v39;
      v27[1] = xmmword_1D8B1AB90;
      v27[2] = v30;
      v27[3] = v31;
      v27[4] = v28;
      v1[(v15 >> 6) + 8] |= 1 << v15;
      v32 = (v1[6] + 24 * v15);
      *v32 = v12;
      v32[1] = v11;
      v32[2] = v13;
      *(v1[7] + 8 * v15) = v27;
      v33 = v1[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v1[2] = v35;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

CGPathRef sub_1D89792A0(__CVBuffer *a1, CGPathRef a2)
{
  imageOut[1] = *MEMORY[0x1E69E9840];
  imageOut[0] = 0;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v6 = IOSurface;
    viCore_lockUnlockWithFence(v6);
  }

  VTCreateCGImageFromCVPixelBuffer(a1, 0, imageOut);
  if (imageOut[0])
  {
    v7 = imageOut[0];
    Width = CGImageGetWidth(v7);
    Height = CGImageGetHeight(v7);
    v10 = sub_1D8979C44();

    if (v2)
    {
    }

    else
    {
      v13 = *(a2 + 2);
      if (v13)
      {
        v14 = Width;
        v15 = Height;
        if (Height >= Width)
        {
          v16 = Width;
        }

        else
        {
          v16 = Height;
        }

        v44 = *MEMORY[0x1E69DB648];
        v43 = *MEMORY[0x1E69DB650];
        v42 = *MEMORY[0x1E69DB600];
        v17 = a2 + 56;
        context = v10;
        do
        {
          v18 = *(v17 + 2);
          a2 = *(v17 + 4);
          v19 = *(v17 - 3) * v14;
          v20 = *(v17 - 1) * v14;
          v21 = *v17 * v15;
          v22 = v16 * *(v17 + 1);
          v23 = v15 - *(v17 - 2) * v15 - v21;

          v24 = v18;

          CGContextSetStrokeColorWithColor(v10, v24);
          CGContextSetLineWidth(v10, v22);
          v52.origin.x = v19;
          v52.origin.y = v23;
          v52.size.width = v20;
          v52.size.height = v21;
          CGContextStrokeRect(v10, v52);
          if (a2)
          {

            GenericGray = CGColorCreateGenericGray(1.0, 1.0);
            CGContextSaveGState(v10);
            v47 = sub_1D8B15940();
            v26 = CTFontCreateWithName(v47, v14 * 0.03, 0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66010, &qword_1D8B2D5D8);
            v48 = v13;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D8B1AB70;
            *(inited + 32) = v44;
            type metadata accessor for CTFont(0);
            *(inited + 40) = v26;
            *(inited + 64) = v28;
            *(inited + 72) = v43;
            type metadata accessor for CGColor(0);
            *(inited + 80) = GenericGray;
            *(inited + 104) = v29;
            *(inited + 112) = v42;
            *(inited + 144) = v29;
            *(inited + 120) = v24;
            v30 = v44;
            v45 = v26;
            v31 = v43;
            v46 = GenericGray;
            v32 = v42;
            v33 = v24;
            sub_1D893E5E4(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C28, &unk_1D8B2D5E0);
            swift_arrayDestroy();
            v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v35 = sub_1D8B15940();

            type metadata accessor for Key(0);
            sub_1D8979954(&qword_1ECA62478, type metadata accessor for Key, &unk_1D8B19DEC);
            v36 = sub_1D8B15710();

            v37 = [v34 initWithString:v35 attributes:v36];

            v38 = CTFramesetterCreateWithAttributedString(v37);
            v53.origin.x = v19;
            v53.origin.y = v23;
            v53.size.width = v20;
            v53.size.height = v21;
            v54 = CGRectInset(v53, 10.0, 10.0);
            a2 = CGPathCreateWithRect(v54, 0);
            v51.location = 0;
            v51.length = 0;
            Frame = CTFramesetterCreateFrame(v38, v51, a2, 0);

            CTFrameDraw(Frame, context);
            CGContextRestoreGState(context);

            v13 = v48;
            v10 = context;
          }

          v17 += 96;

          --v13;
        }

        while (v13);
      }

      Image = CGBitmapContextCreateImage(v10);
      if (Image)
      {
        a2 = Image;
      }

      else
      {
        sub_1D89797D4();
        swift_allocError();
        *v41 = 3;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1D89797D4();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

unint64_t sub_1D89797D4()
{
  result = qword_1ECA65F40;
  if (!qword_1ECA65F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65F40);
  }

  return result;
}

uint64_t sub_1D897988C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D89798EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8979954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D897999C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8979A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8979A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1D8979AAC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1D8979AE4()
{
  result = qword_1ECA66058;
  if (!qword_1ECA66058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66058);
  }

  return result;
}

uint64_t DebugImageAnnotator.AnnotatorError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8979BD0()
{
  result = qword_1ECA66060;
  if (!qword_1ECA66060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66060);
  }

  return result;
}

CGColorSpaceRef sub_1D8979C44()
{
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v0);
  BitsPerComponent = CGImageGetBitsPerComponent(v0);
  BytesPerRow = CGImageGetBytesPerRow(v0);
  result = CGImageGetColorSpace(v0);
  if (result)
  {
    v6 = result;
    BitmapInfo = CGImageGetBitmapInfo(v0);
    v8 = __CGBitmapContextCreate_0(Width, Height, BitsPerComponent, BytesPerRow, v6, BitmapInfo);

    if (v8)
    {
      v9 = CGImageGetWidth(v0);
      v10 = CGImageGetHeight(v0);
      sub_1D8B161D0(0.0, 0.0, v9, v10);
    }

    else
    {
      sub_1D89797D4();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BCSActionPickerItem.logDescription.getter()
{
  v1 = [v0 label];
  v2 = sub_1D8B15970();

  return v2;
}

void sub_1D8979FB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void __swiftcall TapToRadarDraft.Component.init(componentID:componentName:componentVersion:)(VisualIntelligenceCore::TapToRadarDraft::Component *__return_ptr retstr, Swift::Int componentID, Swift::String componentName, Swift::String componentVersion)
{
  retstr->componentID = componentID;
  retstr->componentName = componentName;
  retstr->componentVersion = componentVersion;
}

uint64_t TapToRadarDraft.init(bundleID:component:classification:reproducibility:title:problemDescription:keywords:timeOfIssue:attachments:remoteAttachments:extensionIdentifiers:deleteOnAttach:deviceIDs:deviceClasses:deviceModels:remoteDeviceSelections:includeDevicePrefixInTitle:autoDiagnostics:collaborationContactHandles:collaborationGroupChatID:callbackIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, char a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v53 = *(a3 + 4);
  v51 = *a5;
  v52 = *a4;
  v56 = *a20;
  v57 = *a22;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *a9 = 0x4449656C646E7542;
  *(a9 + 8) = 0xE800000000000000;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  strcpy((a9 + 72), "Classification");
  *(a9 + 87) = -18;
  *(a9 + 112) = 6;
  *(a9 + 96) = 0x6375646F72706552;
  *(a9 + 104) = 0xEF7974696C696269;
  *(a9 + 120) = 0x656C746954;
  *(a9 + 128) = 0xE500000000000000;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0x7470697263736544;
  *(a9 + 88) = 10;
  *(a9 + 136) = 0;
  *(a9 + 168) = 0;
  *(a9 + 176) = 0;
  *(a9 + 160) = 0xEB000000006E6F69;
  *(a9 + 192) = 0xE800000000000000;
  *(a9 + 200) = 0;
  *(a9 + 184) = 0x7364726F7779654BLL;
  v29 = type metadata accessor for TapToRadarDraft(0);
  v30 = (a9 + v29[11]);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110) + 36);
  v50 = v31;
  v32 = sub_1D8B131D0();
  v48 = a3[1];
  v49 = *a3;
  (*(*(v32 - 8) + 56))(&v30[v31], 1, 1, v32);
  *v30 = 0x7349664F656D6954;
  *(v30 + 1) = 0xEB00000000657573;
  v46 = (a9 + v29[12]);
  v47 = v30;
  *v46 = 0x656D686361747441;
  v46[1] = 0xEB0000000073746ELL;
  v46[2] = 0;
  v45 = (a9 + v29[13]);
  v45[1] = 0x80000001D8B43250;
  v45[2] = 0;
  *v45 = 0xD000000000000011;
  v44 = (a9 + v29[14]);
  v44[1] = 0x80000001D8B43270;
  v44[2] = 0;
  *v44 = 0xD000000000000014;
  v43 = (a9 + v29[15]);
  v43[16] = 2;
  strcpy(v43, "DeleteOnAttach");
  v43[15] = -18;
  v33 = (a9 + v29[16]);
  *v33 = 0x4449656369766544;
  v33[1] = 0xE900000000000073;
  v33[2] = 0;
  v34 = a9 + v29[17];
  strcpy(v34, "DeviceClasses");
  *(v34 + 14) = -4864;
  *(v34 + 16) = 0;
  v35 = a9 + v29[18];
  strcpy(v35, "DeviceModels");
  *(v35 + 13) = 0;
  *(v35 + 14) = -5120;
  *(v35 + 16) = 0;
  v36 = a9 + v29[19];
  *(v36 + 24) = 1;
  *v36 = 0xD000000000000016;
  *(v36 + 8) = 0x80000001D8B2D870;
  *(v36 + 16) = 0;
  v37 = a9 + v29[20];
  *(v37 + 16) = 2;
  *v37 = 0xD00000000000001ALL;
  *(v37 + 8) = 0x80000001D8B432B0;
  v38 = a9 + v29[21];
  *(v38 + 16) = 7;
  *v38 = 0x676169446F747541;
  *(v38 + 8) = 0xEF73636974736F6ELL;
  v39 = (a9 + v29[22]);
  *v39 = 0xD00000000000001BLL;
  v39[1] = 0x80000001D8B432D0;
  v39[2] = 0;
  v40 = (a9 + v29[23]);
  v40[2] = 0;
  v40[3] = 0;
  *v40 = 0xD000000000000018;
  v40[1] = 0x80000001D8B432F0;
  v41 = (a9 + v29[24]);
  v41[2] = 0;
  v41[3] = 0;
  *v41 = 0xD000000000000012;
  v41[1] = 0x80000001D8B43310;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  sub_1D8883F0C(*(a9 + 32), *(a9 + 40), *(a9 + 48), *(a9 + 56), *(a9 + 64));
  *(a9 + 32) = v49;
  *(a9 + 48) = v48;
  *(a9 + 64) = v53;
  *(a9 + 88) = v52;
  *(a9 + 112) = v51;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  *(a9 + 200) = a11;
  result = sub_1D87B6EFC(a12, &v47[v50], &qword_1ECA631A8, &qword_1D8B1E6D0);
  v46[2] = a13;
  v45[2] = a14;
  v44[2] = a15;
  v43[16] = a16;
  v33[2] = a17;
  *(v34 + 16) = a18;
  *(v35 + 16) = a19;
  *(v36 + 16) = v56;
  *(v36 + 24) = 0;
  *(v37 + 16) = a21;
  *(v38 + 16) = v57;
  v39[2] = a23;
  v40[2] = a24;
  v40[3] = a25;
  v41[2] = a26;
  v41[3] = a27;
  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_1ECA66270;
  if (!qword_1ECA66270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1D8B12CE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B12CD0();
  sub_1D8B12CC0();
  MEMORY[0x1DA71C190](7824750, 0xE300000000000000);
  sub_1D897AE2C();
  sub_1D8B12C90();
  sub_1D8B12CA0();
  v9 = sub_1D8B13000();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA630C0, &qword_1D8B24530);
    sub_1D897DF04();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

uint64_t TapToRadarDraft.timeOfIssue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  return sub_1D87A0E38(v3 + *(v4 + 36), a1, &qword_1ECA631A8, &qword_1D8B1E6D0);
}

uint64_t sub_1D897A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  return sub_1D87A0E38(v3 + *(v4 + 36), a2, &qword_1ECA631A8, &qword_1D8B1E6D0);
}

uint64_t sub_1D897A918(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110) + 36);

  return sub_1D8986BA0(a1, v4);
}

uint64_t TapToRadarDraft.timeOfIssue.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  return sub_1D87B6EFC(a1, v3 + *(v4 + 36), &qword_1ECA631A8, &qword_1D8B1E6D0);
}

void (*TapToRadarDraft.timeOfIssue.modify())()
{
  type metadata accessor for TapToRadarDraft(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  return nullsub_3;
}

double TapToRadarDraft.attachments.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

void sub_1D897AAF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 48);

  *(v3 + 16) = v2;
}

void TapToRadarDraft.attachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 48);

  *(v3 + 16) = a1;
}

double TapToRadarDraft.$attachments.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 48));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 60) + 16) = a1;
  return result;
}

double TapToRadarDraft.$deleteOnAttach.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a1 = *(v1 + *(result + 84) + 16);
  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 84) + 16) = v2;
  return result;
}

double TapToRadarDraft.$autoDiagnostics.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 84));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

char *sub_1D897AE2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66540, &qword_1D8B2E7F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v373 = &v323 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v372 = &v323 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v371 = &v323 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v375 = &v323 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v370 = &v323 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v369 = &v323 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v368 = &v323 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v323 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v376 = &v323 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v367 = &v323 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v323 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v365 = &v323 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v364 = &v323 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v382 = (&v323 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v363 = &v323 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v377 = &v323 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v361 = &v323 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v381 = (&v323 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v379 = (&v323 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v323 - v43;
  v45 = sub_1D8B12C80();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v326 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v325 = &v323 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v357 = &v323 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v356 = &v323 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v355 = &v323 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v354 = &v323 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v336 = &v323 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v335 = &v323 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v334 = &v323 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v333 = &v323 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v332 = &v323 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v331 = &v323 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v353 = &v323 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v352 = &v323 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v324 = &v323 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v351 = &v323 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v350 = &v323 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v349 = &v323 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v330 = &v323 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v329 = &v323 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v348 = &v323 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v347 = &v323 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v346 = &v323 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v345 = &v323 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v344 = &v323 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v343 = &v323 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v328 = &v323 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v362 = &v323 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v342 = &v323 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v341 = &v323 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v340 = &v323 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v339 = &v323 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v338 = &v323 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v337 = &v323 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v327 = &v323 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v360 = &v323 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v359 = &v323 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v358 = &v323 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v125 = &v323 - v124;
  MEMORY[0x1EEE9AC00](v123);
  v127 = &v323 - v126;
  v387 = MEMORY[0x1E69E7CC0];
  v128 = *(v1 + 24);
  v378 = v1;
  v380 = v46;
  v374 = v19;
  v366 = v26;
  if (!v128)
  {
    v130 = *(v46 + 56);
    v130(v44, 1, 1, v45);
    goto LABEL_7;
  }

  swift_bridgeObjectRetain_n();

  sub_1D8B12C70();

  v129 = v46;
  v130 = *(v46 + 56);
  v130(v44, 0, 1, v45);

  if ((*(v129 + 48))(v44, 1, v45) == 1)
  {
LABEL_7:
    sub_1D87A14E4(v44, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_8;
  }

  v131 = *(v129 + 32);
  v131(v127, v44, v45);
  (*(v129 + 16))(v125, v127, v45);
  v132 = sub_1D87C8770(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v134 = *(v132 + 2);
  v133 = *(v132 + 3);
  if (v134 >= v133 >> 1)
  {
    v132 = sub_1D87C8770((v133 > 1), v134 + 1, 1, v132);
  }

  v135 = v380 + 8;
  (*(v380 + 8))(v127, v45);
  *(v132 + 2) = v134 + 1;
  v131(&v132[((*(v135 + 72) + 32) & ~*(v135 + 72)) + *(v135 + 64) * v134], v125, v45);
  v387 = v132;
  v1 = v378;
LABEL_8:
  v136 = v381;
  v137 = *(v1 + 48);
  if (v137)
  {
    v139 = *(v1 + 56);
    v138 = *(v1 + 64);
    v383 = *(v1 + 32);
    v384 = v137;
    v385 = v139;
    v386 = v138;
    v140 = sub_1D8980318();
    sub_1D88F47E0(v140);
  }

  v141 = *(v1 + 88);

  v142 = v379;
  sub_1D898272C(v141, v379);
  v143 = v142;

  v144 = v380;
  v145 = (v380 + 48);
  v381 = *(v380 + 48);
  if (v381(v142, 1, v45) == 1)
  {
    sub_1D87A14E4(v142, &qword_1ECA66540, &qword_1D8B2E7F0);
  }

  else
  {
    v146 = *(v144 + 32);
    v147 = v358;
    v146(v358, v143, v45);
    (*(v144 + 16))(v359, v147, v45);
    v148 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v148 = sub_1D87C8770(0, *(v148 + 2) + 1, 1, v148);
    }

    v150 = *(v148 + 2);
    v149 = *(v148 + 3);
    if (v150 >= v149 >> 1)
    {
      v148 = sub_1D87C8770((v149 > 1), v150 + 1, 1, v148);
    }

    v151 = v380 + 8;
    (*(v380 + 8))(v358, v45);
    *(v148 + 2) = v150 + 1;
    v146(&v148[((*(v151 + 72) + 32) & ~*(v151 + 72)) + *(v151 + 64) * v150], v359, v45);
    v387 = v148;
    v1 = v378;
  }

  v152 = *(v1 + 112);

  sub_1D8982920(v152, v136);

  v153 = v381(v136, 1, v45);
  v379 = v130;
  if (v153 == 1)
  {
    sub_1D87A14E4(v136, &qword_1ECA66540, &qword_1D8B2E7F0);
    if (*(v1 + 144))
    {
      goto LABEL_19;
    }

LABEL_31:
    v155 = v380;
    v154 = v361;
    v130(v361, 1, 1, v45);
    goto LABEL_32;
  }

  v163 = v380;
  v164 = *(v380 + 32);
  v165 = v360;
  v164(v360, v136, v45);
  v166 = v327;
  (*(v163 + 16))(v327, v165, v45);
  v167 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v167 = sub_1D87C8770(0, *(v167 + 2) + 1, 1, v167);
  }

  v169 = *(v167 + 2);
  v168 = *(v167 + 3);
  if (v169 >= v168 >> 1)
  {
    v167 = sub_1D87C8770((v168 > 1), v169 + 1, 1, v167);
  }

  v170 = v380 + 8;
  (*(v380 + 8))(v360, v45);
  *(v167 + 2) = v169 + 1;
  v164(&v167[((*(v170 + 72) + 32) & ~*(v170 + 72)) + *(v170 + 64) * v169], v166, v45);
  v387 = v167;
  v130 = v379;
  if (!*(v1 + 144))
  {
    goto LABEL_31;
  }

LABEL_19:
  swift_bridgeObjectRetain_n();

  v154 = v361;
  sub_1D8B12C70();

  v155 = v380;
  v130(v154, 0, 1, v45);

  if (v381(v154, 1, v45) != 1)
  {
    v156 = *(v155 + 32);
    v157 = v337;
    v156(v337, v154, v45);
    (*(v155 + 16))(v338, v157, v45);
    v158 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_1D87C8770(0, *(v158 + 2) + 1, 1, v158);
    }

    v160 = *(v158 + 2);
    v159 = *(v158 + 3);
    if (v160 >= v159 >> 1)
    {
      v158 = sub_1D87C8770((v159 > 1), v160 + 1, 1, v158);
    }

    v155 = v380;
    v161 = v380 + 8;
    (*(v380 + 8))(v337, v45);
    *(v158 + 2) = v160 + 1;
    v156(&v158[((*(v161 + 72) + 32) & ~*(v161 + 72)) + *(v161 + 64) * v160], v338, v45);
    v387 = v158;
    v130 = v379;
    if (!*(v1 + 176))
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D87A14E4(v154, &qword_1ECA66540, &qword_1D8B2E7F0);
  if (!*(v1 + 176))
  {
LABEL_25:
    v162 = v377;
    v130(v377, 1, 1, v45);
LABEL_34:
    sub_1D87A14E4(v162, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_40;
  }

LABEL_33:
  swift_bridgeObjectRetain_n();

  v162 = v377;
  sub_1D8B12C70();

  v130(v162, 0, 1, v45);

  if (v381(v162, 1, v45) == 1)
  {
    goto LABEL_34;
  }

  v171 = *(v155 + 32);
  v172 = v339;
  v171(v339, v162, v45);
  (*(v155 + 16))(v340, v172, v45);
  v173 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v173 = sub_1D87C8770(0, *(v173 + 2) + 1, 1, v173);
  }

  v175 = *(v173 + 2);
  v174 = *(v173 + 3);
  if (v175 >= v174 >> 1)
  {
    v173 = sub_1D87C8770((v174 > 1), v175 + 1, 1, v173);
  }

  v155 = v380;
  v176 = v380 + 8;
  (*(v380 + 8))(v339, v45);
  *(v173 + 2) = v175 + 1;
  v171(&v173[((*(v176 + 72) + 32) & ~*(v176 + 72)) + *(v176 + 64) * v175], v340, v45);
  v387 = v173;
  v130 = v379;
LABEL_40:
  v377 = v145;
  if (!*(v1 + 200))
  {
    v179 = v363;
    v130(v363, 1, 1, v45);
LABEL_46:
    sub_1D87A14E4(v179, &qword_1ECA66540, &qword_1D8B2E7F0);
    v181 = v382;
    goto LABEL_52;
  }

  sub_1D89834AC(v177);
  if (v178)
  {
    v179 = v363;
    sub_1D8B12C70();

    v180 = 0;
  }

  else
  {
    v180 = 1;
    v179 = v363;
  }

  v130(v179, v180, 1, v45);

  if (v381(v179, 1, v45) == 1)
  {
    goto LABEL_46;
  }

  v182 = *(v155 + 32);
  v183 = v341;
  v182(v341, v179, v45);
  (*(v155 + 16))(v342, v183, v45);
  v184 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v184 = sub_1D87C8770(0, *(v184 + 2) + 1, 1, v184);
  }

  v186 = *(v184 + 2);
  v185 = *(v184 + 3);
  v181 = v382;
  if (v186 >= v185 >> 1)
  {
    v184 = sub_1D87C8770((v185 > 1), v186 + 1, 1, v184);
  }

  v187 = v380 + 8;
  (*(v380 + 8))(v341, v45);
  *(v184 + 2) = v186 + 1;
  v182(&v184[((*(v187 + 72) + 32) & ~*(v187 + 72)) + *(v187 + 64) * v186], v342, v45);
  v387 = v184;
  v130 = v379;
LABEL_52:
  v382 = type metadata accessor for TapToRadarDraft(0);
  sub_1D8982A78(v181);
  if (v381(v181, 1, v45) == 1)
  {
    sub_1D87A14E4(v181, &qword_1ECA66540, &qword_1D8B2E7F0);
  }

  else
  {
    v188 = v380;
    v189 = *(v380 + 32);
    v190 = v362;
    v189(v362, v181, v45);
    v191 = v328;
    (*(v188 + 16))(v328, v190, v45);
    v192 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1D87C8770(0, *(v192 + 2) + 1, 1, v192);
    }

    v194 = *(v192 + 2);
    v193 = *(v192 + 3);
    if (v194 >= v193 >> 1)
    {
      v192 = sub_1D87C8770((v193 > 1), v194 + 1, 1, v192);
    }

    v195 = v380 + 8;
    (*(v380 + 8))(v362, v45);
    *(v192 + 2) = v194 + 1;
    v189(&v192[((*(v195 + 72) + 32) & ~*(v195 + 72)) + *(v195 + 64) * v194], v191, v45);
    v387 = v192;
    v1 = v378;
    v130 = v379;
  }

  if (!*(v1 + v382[12] + 16))
  {
    v197 = v380;
    v199 = v364;
    v130(v364, 1, 1, v45);
LABEL_65:
    sub_1D87A14E4(v199, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_71;
  }

  sub_1D898326C(v196);
  v197 = v380;
  if (v198)
  {
    v199 = v364;
    sub_1D8B12C70();

    v200 = 0;
  }

  else
  {
    v200 = 1;
    v199 = v364;
  }

  v130(v199, v200, 1, v45);

  if (v381(v199, 1, v45) == 1)
  {
    goto LABEL_65;
  }

  v201 = *(v197 + 32);
  v202 = v343;
  v201(v343, v199, v45);
  (*(v197 + 16))(v344, v202, v45);
  v203 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v203 = sub_1D87C8770(0, *(v203 + 2) + 1, 1, v203);
  }

  v205 = *(v203 + 2);
  v204 = *(v203 + 3);
  if (v205 >= v204 >> 1)
  {
    v203 = sub_1D87C8770((v204 > 1), v205 + 1, 1, v203);
  }

  v197 = v380;
  v206 = v380 + 8;
  (*(v380 + 8))(v343, v45);
  *(v203 + 2) = v205 + 1;
  v201(&v203[((*(v206 + 72) + 32) & ~*(v206 + 72)) + *(v206 + 64) * v205], v344, v45);
  v387 = v203;
  v1 = v378;
  v130 = v379;
LABEL_71:
  if (!*(v1 + v382[13] + 16))
  {
    v209 = v365;
    v130(v365, 1, 1, v45);
LABEL_77:
    sub_1D87A14E4(v209, &qword_1ECA66540, &qword_1D8B2E7F0);
    v211 = v366;
    goto LABEL_83;
  }

  sub_1D898326C(v207);
  if (v208)
  {
    v209 = v365;
    sub_1D8B12C70();

    v210 = 0;
  }

  else
  {
    v210 = 1;
    v209 = v365;
  }

  v130(v209, v210, 1, v45);

  if (v381(v209, 1, v45) == 1)
  {
    goto LABEL_77;
  }

  v212 = *(v197 + 32);
  v213 = v345;
  v212(v345, v209, v45);
  (*(v197 + 16))(v346, v213, v45);
  v214 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v214 = sub_1D87C8770(0, *(v214 + 2) + 1, 1, v214);
  }

  v216 = *(v214 + 2);
  v215 = *(v214 + 3);
  v211 = v366;
  if (v216 >= v215 >> 1)
  {
    v214 = sub_1D87C8770((v215 > 1), v216 + 1, 1, v214);
  }

  v197 = v380;
  v217 = v380 + 8;
  (*(v380 + 8))(v345, v45);
  *(v214 + 2) = v216 + 1;
  v212(&v214[((*(v217 + 72) + 32) & ~*(v217 + 72)) + *(v217 + 64) * v216], v346, v45);
  v387 = v214;
  v1 = v378;
  v130 = v379;
LABEL_83:
  if (!*(v1 + v382[14] + 16))
  {
    v130(v211, 1, 1, v45);
LABEL_89:
    sub_1D87A14E4(v211, &qword_1ECA66540, &qword_1D8B2E7F0);
    v221 = v374;
    goto LABEL_95;
  }

  sub_1D8983110(v218);
  if (v219)
  {
    sub_1D8B12C70();

    v220 = 0;
  }

  else
  {
    v220 = 1;
  }

  v130(v211, v220, 1, v45);

  if (v381(v211, 1, v45) == 1)
  {
    goto LABEL_89;
  }

  v222 = *(v197 + 32);
  v223 = v347;
  v222(v347, v211, v45);
  (*(v197 + 16))(v348, v223, v45);
  v224 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v224 = sub_1D87C8770(0, *(v224 + 2) + 1, 1, v224);
  }

  v221 = v374;
  v226 = *(v224 + 2);
  v225 = *(v224 + 3);
  if (v226 >= v225 >> 1)
  {
    v224 = sub_1D87C8770((v225 > 1), v226 + 1, 1, v224);
  }

  v197 = v380;
  v227 = v380 + 8;
  (*(v380 + 8))(v347, v45);
  *(v224 + 2) = v226 + 1;
  v222(&v224[((*(v227 + 72) + 32) & ~*(v227 + 72)) + *(v227 + 64) * v226], v348, v45);
  v387 = v224;
  v1 = v378;
  v130 = v379;
LABEL_95:
  if (*(v1 + v382[15] + 16) == 2)
  {
    v228 = v367;
    v130(v367, 1, 1, v45);
    v229 = v376;
LABEL_98:
    sub_1D87A14E4(v228, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_104;
  }

  v228 = v367;
  sub_1D8B12C70();

  v130(v228, 0, 1, v45);

  v230 = v381(v228, 1, v45);
  v229 = v376;
  if (v230 == 1)
  {
    goto LABEL_98;
  }

  v231 = *(v197 + 32);
  v232 = v329;
  v231(v329, v228, v45);
  (*(v197 + 16))(v330, v232, v45);
  v233 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v233 = sub_1D87C8770(0, *(v233 + 2) + 1, 1, v233);
  }

  v235 = *(v233 + 2);
  v234 = *(v233 + 3);
  if (v235 >= v234 >> 1)
  {
    v233 = sub_1D87C8770((v234 > 1), v235 + 1, 1, v233);
  }

  v197 = v380;
  v236 = v380 + 8;
  (*(v380 + 8))(v329, v45);
  *(v233 + 2) = v235 + 1;
  v231(&v233[((*(v236 + 72) + 32) & ~*(v236 + 72)) + *(v236 + 64) * v235], v330, v45);
  v387 = v233;
  v1 = v378;
  v130 = v379;
  v229 = v376;
LABEL_104:
  if (!*(v1 + v382[16] + 16))
  {
    v130(v229, 1, 1, v45);
LABEL_110:
    sub_1D87A14E4(v229, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_116;
  }

  sub_1D8983110(v237);
  if (v238)
  {
    v229 = v376;
    sub_1D8B12C70();

    v239 = 0;
  }

  else
  {
    v239 = 1;
    v229 = v376;
  }

  v130(v229, v239, 1, v45);

  v240 = v381(v229, 1, v45);
  v221 = v374;
  if (v240 == 1)
  {
    goto LABEL_110;
  }

  v241 = *(v197 + 32);
  v242 = v349;
  v241(v349, v229, v45);
  (*(v197 + 16))(v350, v242, v45);
  v243 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v243 = sub_1D87C8770(0, *(v243 + 2) + 1, 1, v243);
  }

  v245 = *(v243 + 2);
  v244 = *(v243 + 3);
  if (v245 >= v244 >> 1)
  {
    v243 = sub_1D87C8770((v244 > 1), v245 + 1, 1, v243);
  }

  v197 = v380;
  v246 = v380 + 8;
  (*(v380 + 8))(v349, v45);
  *(v243 + 2) = v245 + 1;
  v241(&v243[((*(v246 + 72) + 32) & ~*(v246 + 72)) + *(v246 + 64) * v245], v350, v45);
  v387 = v243;
  v1 = v378;
  v130 = v379;
LABEL_116:
  if (!*(v1 + v382[17] + 16))
  {
    v130(v221, 1, 1, v45);
LABEL_122:
    sub_1D87A14E4(v221, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_128;
  }

  sub_1D8982F0C(v247);
  if (v248)
  {
    sub_1D8B12C70();

    v249 = 0;
  }

  else
  {
    v249 = 1;
  }

  v130(v221, v249, 1, v45);

  if (v381(v221, 1, v45) == 1)
  {
    goto LABEL_122;
  }

  v250 = *(v197 + 32);
  v251 = v351;
  v250(v351, v221, v45);
  v252 = v324;
  (*(v197 + 16))(v324, v251, v45);
  v253 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v253 = sub_1D87C8770(0, *(v253 + 2) + 1, 1, v253);
  }

  v255 = *(v253 + 2);
  v254 = *(v253 + 3);
  if (v255 >= v254 >> 1)
  {
    v253 = sub_1D87C8770((v254 > 1), v255 + 1, 1, v253);
  }

  v197 = v380;
  v256 = v380 + 8;
  (*(v380 + 8))(v351, v45);
  *(v253 + 2) = v255 + 1;
  v250(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v252, v45);
  v387 = v253;
  v1 = v378;
  v130 = v379;
LABEL_128:
  if (!*(v1 + v382[18] + 16))
  {
    v259 = v368;
    v130(v368, 1, 1, v45);
LABEL_134:
    sub_1D87A14E4(v259, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_140;
  }

  sub_1D8983110(v257);
  if (v258)
  {
    v259 = v368;
    sub_1D8B12C70();

    v260 = 0;
  }

  else
  {
    v260 = 1;
    v259 = v368;
  }

  v130(v259, v260, 1, v45);

  if (v381(v259, 1, v45) == 1)
  {
    goto LABEL_134;
  }

  v261 = *(v197 + 32);
  v262 = v352;
  v261(v352, v259, v45);
  (*(v197 + 16))(v353, v262, v45);
  v263 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v263 = sub_1D87C8770(0, *(v263 + 2) + 1, 1, v263);
  }

  v265 = *(v263 + 2);
  v264 = *(v263 + 3);
  if (v265 >= v264 >> 1)
  {
    v263 = sub_1D87C8770((v264 > 1), v265 + 1, 1, v263);
  }

  v197 = v380;
  v266 = v380 + 8;
  (*(v380 + 8))(v352, v45);
  *(v263 + 2) = v265 + 1;
  v261(&v263[((*(v266 + 72) + 32) & ~*(v266 + 72)) + *(v266 + 64) * v265], v353, v45);
  v387 = v263;
  v1 = v378;
  v130 = v379;
LABEL_140:
  v267 = v1 + v382[19];
  if (*(v267 + 24))
  {
    v268 = v369;
    v130(v369, 1, 1, v45);
LABEL_146:
    sub_1D87A14E4(v268, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_152;
  }

  *&v383 = *(v267 + 16);

  TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter();
  if (v269)
  {
    v268 = v369;
    sub_1D8B12C70();

    v270 = 0;
  }

  else
  {
    v270 = 1;
    v268 = v369;
  }

  v130(v268, v270, 1, v45);

  if (v381(v268, 1, v45) == 1)
  {
    goto LABEL_146;
  }

  v271 = *(v197 + 32);
  v272 = v331;
  v271(v331, v268, v45);
  (*(v197 + 16))(v332, v272, v45);
  v273 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v273 = sub_1D87C8770(0, *(v273 + 2) + 1, 1, v273);
  }

  v275 = *(v273 + 2);
  v274 = *(v273 + 3);
  if (v275 >= v274 >> 1)
  {
    v273 = sub_1D87C8770((v274 > 1), v275 + 1, 1, v273);
  }

  v197 = v380;
  v276 = v380 + 8;
  (*(v380 + 8))(v331, v45);
  *(v273 + 2) = v275 + 1;
  v271(&v273[((*(v276 + 72) + 32) & ~*(v276 + 72)) + *(v276 + 64) * v275], v332, v45);
  v387 = v273;
  v1 = v378;
  v130 = v379;
LABEL_152:
  if (*(v1 + v382[20] + 16) == 2)
  {
    v277 = v370;
    v130(v370, 1, 1, v45);
    v278 = v375;
LABEL_155:
    sub_1D87A14E4(v277, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_161;
  }

  v277 = v370;
  sub_1D8B12C70();

  v130(v277, 0, 1, v45);

  v279 = v381(v277, 1, v45);
  v278 = v375;
  if (v279 == 1)
  {
    goto LABEL_155;
  }

  v280 = *(v197 + 32);
  v281 = v333;
  v280(v333, v277, v45);
  (*(v197 + 16))(v334, v281, v45);
  v282 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v282 = sub_1D87C8770(0, *(v282 + 2) + 1, 1, v282);
  }

  v284 = *(v282 + 2);
  v283 = *(v282 + 3);
  if (v284 >= v283 >> 1)
  {
    v282 = sub_1D87C8770((v283 > 1), v284 + 1, 1, v282);
  }

  v197 = v380;
  v285 = v380 + 8;
  (*(v380 + 8))(v333, v45);
  *(v282 + 2) = v284 + 1;
  v280(&v282[((*(v285 + 72) + 32) & ~*(v285 + 72)) + *(v285 + 64) * v284], v334, v45);
  v387 = v282;
  v1 = v378;
  v130 = v379;
  v278 = v375;
LABEL_161:
  if (*(v1 + v382[21] + 16) == 7)
  {
    v130(v278, 1, 1, v45);
LABEL_167:
    sub_1D87A14E4(v278, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_173;
  }

  LOBYTE(v383) = *(v1 + v382[21] + 16);

  TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter();
  if (v286)
  {
    v287 = v375;
    sub_1D8B12C70();

    v288 = 0;
  }

  else
  {
    v288 = 1;
    v287 = v375;
  }

  v130(v287, v288, 1, v45);

  v278 = v287;
  if (v381(v287, 1, v45) == 1)
  {
    goto LABEL_167;
  }

  v289 = *(v197 + 32);
  v290 = v335;
  v289(v335, v278, v45);
  (*(v197 + 16))(v336, v290, v45);
  v291 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_1D87C8770(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_1D87C8770((v292 > 1), v293 + 1, 1, v291);
  }

  v197 = v380;
  v294 = v380 + 8;
  (*(v380 + 8))(v335, v45);
  *(v291 + 2) = v293 + 1;
  v289(&v291[((*(v294 + 72) + 32) & ~*(v294 + 72)) + *(v294 + 64) * v293], v336, v45);
  v387 = v291;
  v1 = v378;
  v130 = v379;
LABEL_173:
  if (!*(v1 + v382[22] + 16))
  {
    v299 = v130;
    v297 = v371;
    v299(v371, 1, 1, v45);
LABEL_179:
    sub_1D87A14E4(v297, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_185;
  }

  sub_1D8983110(v295);
  if (v296)
  {
    v297 = v371;
    sub_1D8B12C70();

    v298 = 0;
  }

  else
  {
    v298 = 1;
    v297 = v371;
  }

  v379(v297, v298, 1, v45);

  if (v381(v297, 1, v45) == 1)
  {
    goto LABEL_179;
  }

  v300 = *(v197 + 32);
  v301 = v354;
  v300(v354, v297, v45);
  (*(v197 + 16))(v355, v301, v45);
  v302 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v302 = sub_1D87C8770(0, *(v302 + 2) + 1, 1, v302);
  }

  v304 = *(v302 + 2);
  v303 = *(v302 + 3);
  if (v304 >= v303 >> 1)
  {
    v302 = sub_1D87C8770((v303 > 1), v304 + 1, 1, v302);
  }

  v197 = v380;
  v305 = v380 + 8;
  (*(v380 + 8))(v354, v45);
  *(v302 + 2) = v304 + 1;
  v300(&v302[((*(v305 + 72) + 32) & ~*(v305 + 72)) + *(v305 + 64) * v304], v355, v45);
  v387 = v302;
  v1 = v378;
LABEL_185:
  v306 = v379;
  if (!*(v1 + v382[23] + 24))
  {
    v307 = v372;
    v379(v372, 1, 1, v45);
    goto LABEL_193;
  }

  swift_bridgeObjectRetain_n();

  v307 = v372;
  sub_1D8B12C70();

  v306(v307, 0, 1, v45);

  if (v381(v307, 1, v45) == 1)
  {
LABEL_193:
    sub_1D87A14E4(v307, &qword_1ECA66540, &qword_1D8B2E7F0);
    goto LABEL_194;
  }

  v308 = *(v197 + 32);
  v309 = v356;
  v308(v356, v307, v45);
  (*(v197 + 16))(v357, v309, v45);
  v310 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v310 = sub_1D87C8770(0, *(v310 + 2) + 1, 1, v310);
  }

  v312 = *(v310 + 2);
  v311 = *(v310 + 3);
  if (v312 >= v311 >> 1)
  {
    v310 = sub_1D87C8770((v311 > 1), v312 + 1, 1, v310);
  }

  v197 = v380;
  v313 = v380 + 8;
  (*(v380 + 8))(v356, v45);
  *(v310 + 2) = v312 + 1;
  v308(&v310[((*(v313 + 72) + 32) & ~*(v313 + 72)) + *(v313 + 64) * v312], v357, v45);
  v387 = v310;
  v1 = v378;
  v306 = v379;
LABEL_194:
  if (!*(v1 + v382[24] + 24))
  {
    v314 = v373;
    v306(v373, 1, 1, v45);
    goto LABEL_202;
  }

  swift_bridgeObjectRetain_n();

  v314 = v373;
  sub_1D8B12C70();

  v306(v314, 0, 1, v45);

  if (v381(v314, 1, v45) == 1)
  {
LABEL_202:
    sub_1D87A14E4(v314, &qword_1ECA66540, &qword_1D8B2E7F0);
    return v387;
  }

  v315 = *(v197 + 32);
  v316 = v325;
  v315(v325, v314, v45);
  v317 = v326;
  (*(v197 + 16))(v326, v316, v45);
  v318 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v318 = sub_1D87C8770(0, *(v318 + 2) + 1, 1, v318);
  }

  v320 = *(v318 + 2);
  v319 = *(v318 + 3);
  if (v320 >= v319 >> 1)
  {
    v318 = sub_1D87C8770((v319 > 1), v320 + 1, 1, v318);
  }

  v321 = v380 + 8;
  (*(v380 + 8))(v316, v45);
  *(v318 + 2) = v320 + 1;
  v315(&v318[((*(v321 + 72) + 32) & ~*(v321 + 72)) + *(v321 + 64) * v320], v317, v45);
  return v318;
}

unint64_t sub_1D897DF04()
{
  result = qword_1ECA66068;
  if (!qword_1ECA66068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66068);
  }

  return result;
}

unint64_t sub_1D897DF58(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0x6966697373616C63;
      break;
    case 3:
      result = 0x6375646F72706572;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7364726F7779656BLL;
      break;
    case 7:
      result = 0x7349664F656D6974;
      break;
    case 8:
      result = 0x656D686361747461;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6E4F6574656C6564;
      break;
    case 12:
      result = 0x4449656369766564;
      break;
    case 13:
      result = 0x6C43656369766564;
      break;
    case 14:
      result = 0x6F4D656369766564;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0x676169446F747561;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D897E208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D89863D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D897E23C(uint64_t a1)
{
  v2 = sub_1D897EF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D897E278(uint64_t a1)
{
  v2 = sub_1D897EF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TapToRadarDraft.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66070, &qword_1D8B2D8A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v75 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D897EF18();
  sub_1D8B16DD0();
  v10 = *(v4 + 8);
  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v78 = *v4;
  v79 = v10;
  v80 = v12;
  v81 = v11;
  v83 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66080, &qword_1D8B2D8B0);
  sub_1D881CF20(&qword_1ECA66088, &qword_1ECA66080, &qword_1D8B2D8B0, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  if (v3)
  {
    return (*(v7 + 8))(v9, v6, v13);
  }

  v14 = *(v4 + 40);
  v15 = *(v4 + 48);
  v16 = *(v4 + 56);
  v17 = *(v4 + 64);
  v78 = *(v4 + 32);
  v79 = v14;
  v80 = v15;
  v81 = v16;
  v82 = v17;
  v83 = 1;
  sub_1D897EF6C(v78, v14, v15, v16, v17);
  sub_1D897EFB0();
  sub_1D8B16A80();
  v77 = v7;
  sub_1D8883F0C(v78, v79, v80, v81, v82);
  v19 = *(v4 + 80);
  v20 = *(v4 + 88);
  v78 = *(v4 + 72);
  v79 = v19;
  LOBYTE(v80) = v20;
  v83 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66098, &qword_1D8B2D8B8);
  sub_1D881CF20(&qword_1ECA660A0, &qword_1ECA66098, &qword_1D8B2D8B8, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v21 = *(v4 + 104);
  v22 = *(v4 + 112);
  v78 = *(v4 + 96);
  v79 = v21;
  LOBYTE(v80) = v22;
  v83 = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660A8, &qword_1D8B2D8C0);
  sub_1D881CF20(&qword_1ECA660B0, &qword_1ECA660A8, &qword_1D8B2D8C0, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v23 = *(v4 + 128);
  v25 = *(v4 + 136);
  v24 = *(v4 + 144);
  v78 = *(v4 + 120);
  v79 = v23;
  v80 = v25;
  v81 = v24;
  v83 = 4;

  sub_1D8B16AE0();

  v26 = *(v4 + 160);
  v28 = *(v4 + 168);
  v27 = *(v4 + 176);
  v78 = *(v4 + 152);
  v79 = v26;
  v80 = v28;
  v81 = v27;
  v83 = 5;

  sub_1D8B16AE0();

  v29 = *(v4 + 192);
  v30 = *(v4 + 200);
  v78 = *(v4 + 184);
  v79 = v29;
  v80 = v30;
  v83 = 6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660B8, &qword_1D8B2D8C8);
  sub_1D881CF20(&qword_1ECA660C0, &qword_1ECA660B8, &qword_1D8B2D8C8, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v76 = type metadata accessor for TapToRadarDraft(0);
  LOBYTE(v78) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  sub_1D881CF20(&qword_1ECA660C8, &qword_1ECA64450, &qword_1D8B24110, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();
  v31 = (v4 + v76[12]);
  v32 = v31[1];
  v33 = v31[2];
  v78 = *v31;
  v79 = v32;
  v80 = v33;
  v83 = 8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660D0, &qword_1D8B2D8D0);
  sub_1D881CF20(&qword_1ECA660D8, &qword_1ECA660D0, &qword_1D8B2D8D0, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v34 = (v4 + v76[13]);
  v35 = v34[1];
  v36 = v34[2];
  v78 = *v34;
  v79 = v35;
  v80 = v36;
  v83 = 9;

  sub_1D8B16AE0();

  v37 = (v4 + v76[14]);
  v38 = v37[1];
  v39 = v37[2];
  v78 = *v37;
  v79 = v38;
  v80 = v39;
  v83 = 10;

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660E0, &qword_1D8B2D8D8);
  v75[3] = sub_1D881CF20(&qword_1ECA660E8, &qword_1ECA660E0, &qword_1D8B2D8D8, &protocol conformance descriptor for URLParameter<A>);
  v75[4] = v40;
  sub_1D8B16AE0();

  v41 = v4 + v76[15];
  v43 = *v41;
  v42 = *(v41 + 8);
  LOBYTE(v41) = *(v41 + 16);
  v78 = v43;
  v79 = v42;
  LOBYTE(v80) = v41;
  v83 = 11;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660F0, &qword_1D8B2D8E0);
  v75[1] = sub_1D881CF20(&qword_1ECA660F8, &qword_1ECA660F0, &qword_1D8B2D8E0, &protocol conformance descriptor for URLParameter<A>);
  v75[2] = v44;
  sub_1D8B16AE0();

  v45 = (v4 + v76[16]);
  v46 = v45[1];
  v47 = v45[2];
  v78 = *v45;
  v79 = v46;
  v80 = v47;
  v83 = 12;

  sub_1D8B16AE0();

  v48 = (v4 + v76[17]);
  v49 = v48[1];
  v50 = v48[2];
  v78 = *v48;
  v79 = v49;
  v80 = v50;
  v83 = 13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66100, &qword_1D8B2D8E8);
  sub_1D881CF20(&qword_1ECA66108, &qword_1ECA66100, &qword_1D8B2D8E8, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v51 = (v4 + v76[18]);
  v52 = v51[1];
  v53 = v51[2];
  v78 = *v51;
  v79 = v52;
  v80 = v53;
  v83 = 14;

  sub_1D8B16AE0();

  v54 = v4 + v76[19];
  v56 = *v54;
  v55 = *(v54 + 8);
  v57 = *(v54 + 16);
  LOBYTE(v54) = *(v54 + 24);
  v78 = v56;
  v79 = v55;
  v80 = v57;
  LOBYTE(v81) = v54;
  v83 = 15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66110, &qword_1D8B2D8F0);
  sub_1D881CF20(&qword_1ECA66118, &qword_1ECA66110, &qword_1D8B2D8F0, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v58 = v4 + v76[20];
  v60 = *v58;
  v59 = *(v58 + 8);
  LOBYTE(v58) = *(v58 + 16);
  v78 = v60;
  v79 = v59;
  LOBYTE(v80) = v58;
  v83 = 16;

  sub_1D8B16AE0();

  v61 = v4 + v76[21];
  v63 = *v61;
  v62 = *(v61 + 8);
  LOBYTE(v61) = *(v61 + 16);
  v78 = v63;
  v79 = v62;
  LOBYTE(v80) = v61;
  v83 = 17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66120, &qword_1D8B2D8F8);
  sub_1D881CF20(&qword_1ECA66128, &qword_1ECA66120, &qword_1D8B2D8F8, &protocol conformance descriptor for URLParameter<A>);
  sub_1D8B16AE0();

  v64 = (v4 + v76[22]);
  v65 = v64[1];
  v66 = v64[2];
  v78 = *v64;
  v79 = v65;
  v80 = v66;
  v83 = 18;

  sub_1D8B16AE0();

  v67 = (v4 + v76[23]);
  v68 = v67[1];
  v70 = v67[2];
  v69 = v67[3];
  v78 = *v67;
  v79 = v68;
  v80 = v70;
  v81 = v69;
  v83 = 19;

  sub_1D8B16AE0();

  v71 = (v4 + v76[24]);
  v72 = v71[1];
  v74 = v71[2];
  v73 = v71[3];
  v78 = *v71;
  v79 = v72;
  v80 = v74;
  v81 = v73;
  v83 = 20;

  sub_1D8B16AE0();

  return (*(v77 + 8))(v9, v6);
}

unint64_t sub_1D897EF18()
{
  result = qword_1ECA66078;
  if (!qword_1ECA66078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66078);
  }

  return result;
}

double sub_1D897EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D897EFB0()
{
  result = qword_1ECA66090;
  if (!qword_1ECA66090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66090);
  }

  return result;
}

uint64_t TapToRadarDraft.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v85 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  MEMORY[0x1EEE9AC00](v2);
  *&v95 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66130, &qword_1D8B2D900);
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  *&v100 = &v79 - v5;
  v6 = type metadata accessor for TapToRadarDraft(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *v9 = 0x4449656C646E7542;
  *(v9 + 1) = 0xE800000000000000;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  v9[88] = 10;
  *(v9 + 8) = 0;
  strcpy(v9 + 72, "Classification");
  v9[87] = -18;
  v9[112] = 6;
  *(v9 + 12) = 0x6375646F72706552;
  *(v9 + 13) = 0xEF7974696C696269;
  *(v9 + 17) = 0;
  *(v9 + 18) = 0;
  *(v9 + 15) = 0x656C746954;
  *(v9 + 16) = 0xE500000000000000;
  *(v9 + 21) = 0;
  *(v9 + 22) = 0;
  *(v9 + 19) = 0x7470697263736544;
  *(v9 + 20) = 0xEB000000006E6F69;
  *(v9 + 24) = 0xE800000000000000;
  *(v9 + 25) = 0;
  *(v9 + 23) = 0x7364726F7779654BLL;
  v10 = &v9[v7[13]];
  v94 = v2;
  v11 = *(v2 + 36);
  v12 = sub_1D8B131D0();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = 0x7349664F656D6954;
  *(v10 + 1) = 0xEB00000000657573;
  v93 = v10;
  v13 = &v9[v7[14]];
  *v13 = 0x656D686361747441;
  *&v92 = v13;
  *(v13 + 1) = 0xEB0000000073746ELL;
  *(v13 + 2) = 0;
  v14 = &v9[v7[15]];
  *(v14 + 1) = 0x80000001D8B43250;
  *(v14 + 2) = 0;
  *v14 = 0xD000000000000011;
  v91 = v14;
  v15 = &v9[v7[16]];
  *(v15 + 1) = 0x80000001D8B43270;
  *(v15 + 2) = 0;
  *v15 = 0xD000000000000014;
  v90 = v15;
  v16 = &v9[v7[17]];
  v16[16] = 2;
  strcpy(v16, "DeleteOnAttach");
  v16[15] = -18;
  v89 = v16;
  v17 = &v9[v7[18]];
  *v17 = 0x4449656369766544;
  v88 = v17;
  *(v17 + 1) = 0xE900000000000073;
  *(v17 + 2) = 0;
  v18 = &v9[v7[19]];
  strcpy(v18, "DeviceClasses");
  v87 = v18;
  *(v18 + 7) = -4864;
  *(v18 + 2) = 0;
  v19 = &v9[v7[20]];
  strcpy(v19, "DeviceModels");
  v86 = v19;
  v19[13] = 0;
  *(v19 + 7) = -5120;
  *(v19 + 2) = 0;
  v20 = &v9[v7[21]];
  *(v20 + 1) = 0x80000001D8B2D870;
  *(v20 + 2) = 0;
  v20[24] = 1;
  *v20 = 0xD000000000000016;
  v21 = &v9[v7[22]];
  v21[16] = 2;
  *v21 = 0xD00000000000001ALL;
  *(v21 + 1) = 0x80000001D8B432B0;
  v22 = &v9[v7[23]];
  v22[16] = 7;
  *v22 = 0x676169446F747541;
  *(v22 + 1) = 0xEF73636974736F6ELL;
  v23 = &v9[v7[24]];
  *(v23 + 1) = 0x80000001D8B432D0;
  *(v23 + 2) = 0;
  *v23 = 0xD00000000000001BLL;
  v24 = &v9[v7[25]];
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *v24 = 0xD000000000000018;
  *(v24 + 1) = 0x80000001D8B432F0;
  v25 = v7[26];
  v99 = v9;
  v26 = &v9[v25];
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *v26 = 0xD000000000000012;
  *(v26 + 1) = 0x80000001D8B43310;
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  sub_1D897EF18();
  v27 = v98;
  sub_1D8B16DB0();
  if (v27)
  {
    v29 = v99;
    __swift_destroy_boxed_opaque_existential_1(v101);
    v78 = v29;
  }

  else
  {
    *&v98 = v20;
    v84 = v21;
    v81 = v22;
    v82 = v23;
    v83 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66080, &qword_1D8B2D8B0);
    v105 = 0;
    v28 = sub_1D881CF20(&qword_1ECA66138, &qword_1ECA66080, &qword_1D8B2D8B0, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v80 = v102;
    v31 = v103;
    v32 = v99;

    *v32 = v80;
    *(v32 + 16) = v31;
    v105 = 1;
    sub_1D8980230();
    sub_1D8B169B0();
    v33 = v104;
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    v36 = *(v32 + 48);
    v37 = *(v32 + 56);
    v38 = *(v32 + 64);
    v80 = v102;
    v79 = v103;
    sub_1D8883F0C(v34, v35, v36, v37, v38);
    v39 = v79;
    *(v32 + 32) = v80;
    *(v32 + 48) = v39;
    *(v32 + 64) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66098, &qword_1D8B2D8B8);
    v105 = 2;
    sub_1D881CF20(&qword_1ECA66148, &qword_1ECA66098, &qword_1D8B2D8B8, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v40 = v102;
    v41 = v103;

    *(v32 + 72) = v40;
    *(v32 + 88) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660A8, &qword_1D8B2D8C0);
    v105 = 3;
    sub_1D881CF20(&qword_1ECA66150, &qword_1ECA660A8, &qword_1D8B2D8C0, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v42 = v102;
    v43 = v103;

    *(v32 + 96) = v42;
    *(v32 + 112) = v43;
    v105 = 4;
    sub_1D8B16A10();
    v80 = v102;
    v44 = v103;

    *(v32 + 120) = v80;
    *(v32 + 136) = v44;
    v105 = 5;
    sub_1D8B16A10();
    v80 = v102;
    v45 = v103;

    *(v32 + 152) = v80;
    *(v32 + 168) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660B8, &qword_1D8B2D8C8);
    v105 = 6;
    sub_1D881CF20(&qword_1ECA66158, &qword_1ECA660B8, &qword_1D8B2D8C8, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v80 = v102;
    v46 = v103;

    *(v32 + 184) = v80;
    *(v32 + 200) = v46;
    LOBYTE(v102) = 7;
    sub_1D881CF20(&qword_1ECA66160, &qword_1ECA64450, &qword_1D8B24110, &protocol conformance descriptor for URLParameter<A>);
    v47 = v95;
    sub_1D8B16A10();
    v94 = v28;
    sub_1D87B6EFC(v47, v93, &qword_1ECA64450, &qword_1D8B24110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660D0, &qword_1D8B2D8D0);
    v105 = 8;
    sub_1D881CF20(&qword_1ECA66168, &qword_1ECA660D0, &qword_1D8B2D8D0, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v95 = v102;
    v48 = v103;
    v49 = v92;

    *v49 = v95;
    *(v49 + 16) = v48;
    v105 = 9;
    sub_1D8B16A10();
    v95 = v102;
    v50 = v103;
    v51 = v91;

    *v51 = v95;
    *(v51 + 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660E0, &qword_1D8B2D8D8);
    v105 = 10;
    sub_1D881CF20(&qword_1ECA66170, &qword_1ECA660E0, &qword_1D8B2D8D8, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v95 = v102;
    v52 = v103;
    v53 = v90;

    *v53 = v95;
    *(v53 + 2) = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660F0, &qword_1D8B2D8E0);
    v105 = 11;
    v55 = sub_1D881CF20(&qword_1ECA66178, &qword_1ECA660F0, &qword_1D8B2D8E0, &protocol conformance descriptor for URLParameter<A>);
    *&v95 = v54;
    v93 = v55;
    sub_1D8B16A10();
    v56 = v102;
    LOBYTE(v50) = v103;
    v57 = v89;

    *v57 = v56;
    v57[16] = v50;
    v105 = 12;
    sub_1D8B16A10();
    v92 = v102;
    v58 = v103;
    v59 = v88;

    *v59 = v92;
    *(v59 + 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66100, &qword_1D8B2D8E8);
    v105 = 13;
    sub_1D881CF20(&qword_1ECA66180, &qword_1ECA66100, &qword_1D8B2D8E8, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v92 = v102;
    v60 = v103;
    v61 = v87;

    *v61 = v92;
    *(v61 + 2) = v60;
    v105 = 14;
    sub_1D8B16A10();
    v92 = v102;
    v62 = v103;
    v63 = v86;

    *v63 = v92;
    *(v63 + 2) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66110, &qword_1D8B2D8F0);
    v105 = 15;
    sub_1D881CF20(&qword_1ECA66188, &qword_1ECA66110, &qword_1D8B2D8F0, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v92 = v102;
    v64 = v103;
    LOBYTE(v33) = BYTE8(v103);
    v65 = v98;

    *v65 = v92;
    *(v65 + 16) = v64;
    *(v65 + 24) = v33;
    v105 = 16;
    sub_1D8B16A10();
    v66 = v102;
    LOBYTE(v50) = v103;
    v67 = v84;

    *v67 = v66;
    v67[16] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66120, &qword_1D8B2D8F8);
    v105 = 17;
    sub_1D881CF20(&qword_1ECA66190, &qword_1ECA66120, &qword_1D8B2D8F8, &protocol conformance descriptor for URLParameter<A>);
    sub_1D8B16A10();
    v68 = v102;
    LOBYTE(v50) = v103;
    v69 = v81;

    *v69 = v68;
    v69[16] = v50;
    v105 = 18;
    sub_1D8B16A10();
    v98 = v102;
    v70 = v103;
    v71 = v82;

    *v71 = v98;
    *(v71 + 2) = v70;
    v105 = 19;
    sub_1D8B16A10();
    v98 = v102;
    v72 = v103;
    v73 = v83;

    *v73 = v98;
    *(v73 + 1) = v72;
    v105 = 20;
    v74 = v97;
    v75 = v100;
    sub_1D8B16A10();
    (*(v96 + 8))(v75, v74);
    v100 = v102;
    v76 = v103;

    *v26 = v100;
    *(v26 + 1) = v76;
    v77 = v99;
    sub_1D8980284(v99, v85);
    __swift_destroy_boxed_opaque_existential_1(v101);
    v78 = v77;
  }

  return sub_1D89801D4(v78);
}

uint64_t sub_1D89801D4(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8980230()
{
  result = qword_1ECA66140;
  if (!qword_1ECA66140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66140);
  }

  return result;
}

uint64_t sub_1D8980284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8980318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63480, &qword_1D8B1EA68);
  sub_1D8B12C80();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D8B1AB70;
  sub_1D8B16B50();
  sub_1D8B12C70();

  sub_1D8B12C70();
  sub_1D8B12C70();
  return v0;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

unint64_t sub_1D898055C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D89805C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8986A6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D89805E8(uint64_t a1)
{
  v2 = sub_1D8980820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8980624(uint64_t a1)
{
  v2 = sub_1D8980820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TapToRadarDraft.Component.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66198, &qword_1D8B2D908);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8980820();
  sub_1D8B16DD0();
  v14 = 0;
  sub_1D8B16AD0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1D8B16A90();
  v12 = 2;
  sub_1D8B16A90();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D8980820()
{
  result = qword_1ECA661A0;
  if (!qword_1ECA661A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661A0);
  }

  return result;
}

uint64_t TapToRadarDraft.Component.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA720210](*v1);
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

void TapToRadarDraft.Component.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA661A8, &unk_1D8B2D910);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8980820();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = 0;
    v9 = sub_1D8B16A00();
    v22 = 1;
    v10 = sub_1D8B169C0();
    v12 = v11;
    v20 = v10;
    v21 = 2;
    v13 = sub_1D8B169C0();
    v15 = v14;
    v16 = *(v6 + 8);
    v19 = v13;
    v16(v8, v5);
    v17 = v19;
    v18 = v20;
    *a2 = v9;
    a2[1] = v18;
    a2[2] = v12;
    a2[3] = v17;
    a2[4] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D8980BC0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8980C40(uint64_t a1)
{
  MEMORY[0x1DA720210](*v1);
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t sub_1D8980CB0(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v2);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8980D2C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

unint64_t TapToRadarDraft.Classification.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

VisualIntelligenceCore::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8981110()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8A97CC4(v3, v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8981160(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  sub_1D8A97CC4(v4, v2);
  return sub_1D8B16D80();
}

unint64_t sub_1D89811B0@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

VisualIntelligenceCore::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_1D89813E4(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

void sub_1D89814F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 6512973;
  if (v1 != 5)
  {
    v3 = 0x6E6F69736956;
  }

  v4 = 0x5654656C707041;
  if (v1 != 3)
  {
    v4 = 0x646F50656D6F48;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

VisualIntelligenceCore::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_1D89817E4(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

void sub_1D89818EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1D87C8284(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1D87C8284((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x79616C50726941;
      *(v6 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1D87C8284((v10 > 1), v11 + 1, 1, v2);
          }

          *(v2 + 2) = v11 + 1;
          v12 = &v2[16 * v11];
          strcpy(v12 + 32, "MediaSystems");
          v12[45] = 0;
          *(v12 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v14 = *(v2 + 2);
          v13 = *(v2 + 3);
          if (v14 >= v13 >> 1)
          {
            v2 = sub_1D87C8284((v13 > 1), v14 + 1, 1, v2);
          }

          *(v2 + 2) = v14 + 1;
          v15 = &v2[16 * v14];
          *(v15 + 4) = 0x616C506572616853;
          *(v15 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v17 = *(v2 + 2);
        v16 = *(v2 + 3);
        if (v17 >= v16 >> 1)
        {
          v2 = sub_1D87C8284((v16 > 1), v17 + 1, 1, v2);
        }

        *(v2 + 2) = v17 + 1;
        v18 = &v2[16 * v17];
        *(v18 + 4) = 0x79627261654ELL;
        *(v18 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v20 = *(v2 + 2);
        v19 = *(v2 + 3);
        if (v20 >= v19 >> 1)
        {
          v2 = sub_1D87C8284((v19 > 1), v20 + 1, 1, v2);
        }

        *(v2 + 2) = v20 + 1;
        v21 = &v2[16 * v20];
        *(v21 + 4) = 0x657463656E6E6F43;
        *(v21 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
            sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
            v3 = sub_1D8B15810();

            return v3;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v26 = *(v2 + 2);
          v25 = *(v2 + 3);
          if (v26 >= v25 >> 1)
          {
            v2 = sub_1D87C8284((v25 > 1), v26 + 1, 1, v2);
          }

          *(v2 + 2) = v26 + 1;
          v27 = &v2[16 * v26];
          *(v27 + 4) = 0xD000000000000016;
          *(v27 + 5) = 0x80000001D8B44E70;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v23 = *(v2 + 2);
        v22 = *(v2 + 3);
        if (v23 >= v22 >> 1)
        {
          v2 = sub_1D87C8284((v22 > 1), v23 + 1, 1, v2);
        }

        *(v2 + 2) = v23 + 1;
        v24 = &v2[16 * v23];
        *(v24 + 4) = 0x61656854656D6F48;
        *(v24 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1D87C8284((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x4874694B656D6F48;
    *(v9 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return 0;
}

uint64_t TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_1D8B16BA0();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

VisualIntelligenceCore::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_1D8982360(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

void sub_1D8982470(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D8B400C0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001D8B400E0;
    }

    v5 = 0x80000001D8B40080;
    if (v2 != 3)
    {
      v5 = 0x80000001D8B400A0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D89826D4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1D898272C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v6 = 1;
  }

  else
  {
    sub_1D8B12C70();

    v6 = 0;
  }

  v7 = sub_1D8B12C80();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_1D8982920@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v6 = 1;
  }

  else
  {
    sub_1D8B12C70();

    v6 = 0;
  }

  v7 = sub_1D8B12C80();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_1D8982A78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1D8B131D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450, &qword_1D8B24110);
  sub_1D87A0E38(v2 + *(v11 + 36), v6, &qword_1ECA631A8, &qword_1D8B1E6D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA631A8, &qword_1D8B1E6D0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = sub_1D8B15940();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_1D8B13120();
    v16 = [v13 stringFromDate_];

    sub_1D8B15970();
    (*(v8 + 8))(v10, v7);
    sub_1D8B12C70();

    v12 = 0;
  }

  v17 = sub_1D8B12C80();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t Bool.urlParameterValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_1D8982E08()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Date.urlParameterValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1D8B15940();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_1D8B13120();
  v3 = [v0 stringFromDate_];

  v4 = sub_1D8B15970();
  return v4;
}

uint64_t sub_1D8982F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_1D87C8284((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v17 = sub_1D8B15810();

  return v17;
}

uint64_t sub_1D8983110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C8284((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v9 = sub_1D8B15810();

  return v9;
}

uint64_t sub_1D898326C(uint64_t a1)
{
  v23 = sub_1D8B13000();
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_1D8B12FC0();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D87C8284(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_1D87C8284((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v19 = sub_1D8B15810();

  return v19;
}