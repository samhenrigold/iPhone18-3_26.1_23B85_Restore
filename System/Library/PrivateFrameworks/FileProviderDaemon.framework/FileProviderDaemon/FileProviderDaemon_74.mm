void sub_1CF7CB290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD8, &qword_1CFA07B80);
  v38 = v4;
  v6 = sub_1CF9E7BD8();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      sub_1CF9E81D8();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v23);
        }

        else
        {
          if (v23)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          MEMORY[0x1D386A470](v27);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v28 = sub_1CF9E8228();
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

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_41;
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

LABEL_41:
  *v3 = v7;
}

void sub_1CF7CB578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE0, &qword_1CFA07C70);
  v41 = v4;
  v10 = sub_1CF9E7BD8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 4 * v24);
      sub_1CF7D5264(&unk_1EDEAB3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v28 = sub_1CF9E6748();
      v29 = -1 << *(v11 + 32);
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
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 4 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1CF7CB938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD0, &qword_1CFA07C60);
  v6 = sub_1CF9E7BD8();
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
      v21 = *(*(v5 + 56) + 4 * v19);
      v22 = sub_1CF9E81C8();
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
      *(*(v7 + 56) + 4 * v15) = v21;
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

void sub_1CF7CBBA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B88, &unk_1CFA07A20);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v22 = v20;
      }

      v23 = sub_1CF9E7558();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CBE18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B90, &unk_1CFA17110);
  v46 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
    v45 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v46 & 1) == 0)
      {
      }

      v47 = v22;
      sub_1CF9E81D8();
      v23 = *(v21 + 16);
      if (*(v21 + 25))
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v25 = v24;
        sub_1CF9E69C8();
        v25, v26, v27, v28, v29, v30, v31, v32;
      }

      else
      {
        v33 = *(v21 + 24);
        MEMORY[0x1D386A470](0);
        if (v33)
        {
          if (v33 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v23);
            v5 = v45;
          }

          else
          {
            v5 = v45;
            if (v23)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            MEMORY[0x1D386A470](v34);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
          v5 = v45;
        }
      }

      v35 = sub_1CF9E8228();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v16 = v47;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_45;
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

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_43;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
}

void sub_1CF7CC16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B80, &qword_1CFA07A18);
  v45 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
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
      v46 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v45 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v27 = sub_1CF9E8228();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = -1 << *(v7 + 32);
      v36 = v27 & ~v35;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v44;
      v12 = v46;
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
        v46 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
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

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CC430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC8, &unk_1CFA07B60);
  v43 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v44 = *(v20 + 8 * v19);
      if ((v43 & 1) == 0)
      {
        v22 = v21;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v24, v26, v27, v28, v29, v30, v31, v32;
      v33 = -1 << *(v7 + 32);
      v34 = v25 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v44;
      ++*(v7 + 16);
      v5 = v42;
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

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CC6EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
  v6 = sub_1CF9E7BD8();
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
      v21 = *(v5 + 56) + 16 * v19;
      if (v4)
      {
        sub_1CEFF701C(v21, v32);
      }

      else
      {
        sub_1CEFF6FC0(v21, v32);
      }

      v22 = sub_1CF9E81C8();
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
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_1CEFF701C(v32, *(v7 + 56) + 16 * v15);
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

void sub_1CF7CC98C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v44 = v4;
    v45 = v7;
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
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = (v22 + 32 * v21);
      if (v46)
      {
        sub_1CEFE9EB8(v24, v47);
      }

      else
      {
        sub_1CEFD1104(v24, v47);
        v25 = v23;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v28 = sub_1CF9E8228();
      v27, v29, v30, v31, v32, v33, v34, v35;
      v36 = -1 << *(v9 + 32);
      v37 = v28 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v16 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v16 + 8 * v38);
          if (v42 != -1)
          {
            v17 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v37) & ~*(v16 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      sub_1CEFE9EB8(v47, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
      v7 = v45;
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

    if ((v46 & 1) == 0)
    {

      v5 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v44;
    if (v43 >= 64)
    {
      bzero(v11, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
}

void sub_1CF7CCC54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B70, &unk_1CFA17100);
  v45 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
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
      v46 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v45 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v27 = sub_1CF9E8228();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = -1 << *(v7 + 32);
      v36 = v27 & ~v35;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v44;
      v12 = v46;
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
        v46 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
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

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CCF1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D78, &qword_1CFA07C08);
  v51 = v4;
  v15 = sub_1CF9E7BD8();
  v16 = v15;
  if (*(v14 + 16))
  {
    v45 = v2;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v15 + 64;
    v55 = v13;
    v48 = v14;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v26 = (v21 - 1) & v21;
LABEL_15:
      v29 = v25 | (v17 << 6);
      v30 = *(v14 + 48);
      v53 = *(v49 + 72);
      v54 = v26;
      v31 = v30 + v53 * v29;
      v32 = v55;
      if (v51)
      {
        sub_1CEFE55D0(v31, v55, &unk_1EC4BF650, &unk_1CF9FCB40);
        v52 = *(*(v14 + 56) + 8 * v29);
      }

      else
      {
        sub_1CEFCCBDC(v31, v55, &unk_1EC4BF650, &unk_1CF9FCB40);
        v52 = *(*(v14 + 56) + 8 * v29);
      }

      sub_1CF9E81D8();
      sub_1CEFCCBDC(v32, v56, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v47;
        v34 = &unk_1EC4BFD70;
        v35 = &qword_1CFA12AC0;
        sub_1CEFE55D0(v56, v47, &unk_1EC4BFD70, &qword_1CFA12AC0);
        MEMORY[0x1D386A470](1);
        sub_1CF1CE0C8(v57);
      }

      else
      {
        v33 = v46;
        v34 = &unk_1EC4BFCC0;
        v35 = &unk_1CF9FCB50;
        sub_1CEFE55D0(v56, v46, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        MEMORY[0x1D386A470](0);
        sub_1CF1CDC08(v57);
      }

      sub_1CEFCCC44(v33, v34, v35);
      v36 = sub_1CF9E8228();
      v37 = -1 << *(v16 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1CEFE55D0(v55, *(v16 + 48) + v53 * v24, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(*(v16 + 56) + 8 * v24) = v52;
      ++*(v16 + 16);
      v14 = v48;
      v21 = v54;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_37;
    }

    v44 = 1 << *(v14 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_37:
  *v3 = v16;
}

void sub_1CF7CD440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v12;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D60, &qword_1CFA07BF0);
  v56 = v4;
  v14 = sub_1CF9E7BD8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v50 = v2;
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
    v22 = v14 + 64;
    v23 = v57;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v29 = v25 | (v16 << 6);
      v30 = *(v13 + 48);
      v59 = *(v54 + 72);
      v60 = v26;
      v31 = v30 + v59 * v29;
      if (v56)
      {
        sub_1CEFE55D0(v31, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v58 = *(*(v13 + 56) + 8 * v29);
      }

      else
      {
        sub_1CEFCCBDC(v31, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v58 = *(*(v13 + 56) + 8 * v29);
        v32 = v58;
      }

      v33 = v23;
      v34 = v13;
      sub_1CF9E81D8();
      v35 = v33;
      v36 = v53;
      sub_1CEFCCBDC(v35, v53, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = v52;
        v38 = &unk_1EC4BFD70;
        v39 = &qword_1CFA12AC0;
        sub_1CEFE55D0(v36, v52, &unk_1EC4BFD70, &qword_1CFA12AC0);
        MEMORY[0x1D386A470](1);
        sub_1CF1CE0C8(v61);
      }

      else
      {
        v37 = v51;
        v38 = &unk_1EC4BFCC0;
        v39 = &unk_1CF9FCB50;
        sub_1CEFE55D0(v36, v51, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        MEMORY[0x1D386A470](0);
        sub_1CF1CDC08(v61);
      }

      sub_1CEFCCC44(v37, v38, v39);
      v40 = sub_1CF9E8228();
      v41 = -1 << *(v15 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v13 = v34;
      if (((-1 << v42) & ~*(v22 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v23 = v57;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v22 + 8 * v43);
          if (v47 != -1)
          {
            v24 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v42) & ~*(v22 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v23 = v57;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1CEFE55D0(v23, *(v15 + 48) + v59 * v24, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(*(v15 + 56) + 8 * v24) = v58;
      ++*(v15 + 16);
      v20 = v60;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_37;
    }

    v48 = 1 << *(v13 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v17, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v48;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
}

void sub_1CF7CD964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v48 - v12;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C40, &unk_1CFA07AD8);
  v55 = v4;
  v14 = sub_1CF9E7BD8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v49 = v2;
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
    v22 = v14 + 64;
    v23 = v56;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v29 = v25 | (v16 << 6);
      v30 = *(v13 + 48);
      v58 = *(v53 + 72);
      v59 = v26;
      v31 = v30 + v58 * v29;
      if (v55)
      {
        sub_1CEFE55D0(v31, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v57 = *(*(v13 + 56) + 8 * v29);
      }

      else
      {
        sub_1CEFCCBDC(v31, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v57 = *(*(v13 + 56) + 8 * v29);
      }

      v32 = v23;
      v33 = v13;
      sub_1CF9E81D8();
      v34 = v32;
      v35 = v52;
      sub_1CEFCCBDC(v34, v52, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v51;
        v37 = &unk_1EC4BFD70;
        v38 = &qword_1CFA12AC0;
        sub_1CEFE55D0(v35, v51, &unk_1EC4BFD70, &qword_1CFA12AC0);
        MEMORY[0x1D386A470](1);
        sub_1CF1CE0C8(v60);
      }

      else
      {
        v36 = v50;
        v37 = &unk_1EC4BFCC0;
        v38 = &unk_1CF9FCB50;
        sub_1CEFE55D0(v35, v50, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        MEMORY[0x1D386A470](0);
        sub_1CF1CDC08(v60);
      }

      sub_1CEFCCC44(v36, v37, v38);
      v39 = sub_1CF9E8228();
      v40 = -1 << *(v15 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v13 = v33;
      if (((-1 << v41) & ~*(v22 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v23 = v56;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v22 + 8 * v42);
          if (v46 != -1)
          {
            v24 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v41) & ~*(v22 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v23 = v56;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1CEFE55D0(v23, *(v15 + 48) + v58 * v24, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(*(v15 + 56) + 8 * v24) = v57;
      ++*(v15 + 16);
      v20 = v59;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_37;
    }

    v47 = 1 << *(v13 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v17, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v47;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
}

void sub_1CF7CDE88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D68, &qword_1CFA07BF8);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1CF9E7558();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CE0F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1CEFE9EB8((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1CF0272BC(v23, &v37);
        sub_1CEFD1104(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1CF9E7878();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1CEFE9EB8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1CF7CE3D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0BC8, &unk_1CFA07A70);
  v38 = v4;
  v9 = sub_1CF9E7BD8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
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
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1CEFE55D0(v25, v7, &unk_1EC4C04B0, &unk_1CF9FCB20);
      }

      else
      {
        sub_1CEFCCBDC(v25, v7, &unk_1EC4C04B0, &unk_1CF9FCB20);
      }

      v26 = sub_1CF9E81C8();
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
      sub_1CEFE55D0(v7, *(v10 + 56) + v24 * v18, &unk_1EC4C04B0, &unk_1CF9FCB20);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
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

void sub_1CF7CE72C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v23 + 8 * v22);
      if ((v39 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v25);
        }

        else
        {
          if (v25)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          MEMORY[0x1D386A470](v28);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v29 = sub_1CF9E8228();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(*(v9 + 56) + 8 * v17) = v27;
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_43;
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

      v5 = v4;
      goto LABEL_41;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_41:
  *v5 = v9;
}

void sub_1CF7CEA10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB0, &unk_1CFA07C40);
  v45 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      v49 = *v23;
      v48 = *(v23 + 8);
      v47 = v23[2];
      v46 = *(v23 + 24);
      if ((v45 & 1) == 0)
      {
        v24 = v22;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v27 = sub_1CF9E8228();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = -1 << *(v7 + 32);
      v36 = v27 & ~v35;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v49;
      *(v16 + 8) = v48;
      *(v16 + 16) = v47;
      *(v16 + 24) = v46;
      ++*(v7 + 16);
      v5 = v44;
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

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
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

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CED04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB8, &unk_1CFA17190);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
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
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *(v22 + 8);
      v25 = *v22;
      v40 = *(v23 + 24);
      v39 = *(v23 + 16);
      v38 = *(v23 + 8);
      v37 = *v23;
      sub_1CF9E81D8();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v25);
        }

        else
        {
          if (v25)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          MEMORY[0x1D386A470](v26);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v27 = sub_1CF9E8228();
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
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v37;
      *(v17 + 8) = v38;
      *(v17 + 16) = v39;
      *(v17 + 24) = v40;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1CF7CF080(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 56) + 32 * v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = *v20;
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        v24 = *(v6 + 56) + 32 * v19;
        *v24 = v23;
        *(v24 + 16) = v22;
        *(v24 + 24) = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7CF1E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1CEFD1104(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1CEFE9EB8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1CF7CF398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + 48 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v26[0] = *v19;
        v26[1] = v21;
        v26[2] = v20;
        *&v20 = *(v18 + 8 * v17);
        v22 = (*(v4 + 48) + 48 * v17);
        v23 = *v19;
        v24 = v19[2];
        v22[1] = v19[1];
        v22[2] = v24;
        *v22 = v23;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1CF1A8F60(v26, &v25);
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

void sub_1CF7CF52C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_1CEFE42D4(v22, *(&v22 + 1));
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

void sub_1CF7CF6B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE8, &qword_1CFA07A90);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
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

void sub_1CF7CF854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void sub_1CF7CFA08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B60, &qword_1CFA170F0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v25 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 48) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 9);
      v21 = 888 * v16;
      v22 = *(v18 + 8);
      memcpy(__dst, (*(v2 + 56) + 888 * v16), 0x378uLL);
      v23 = *(v25 + 48) + v17;
      *v23 = v19;
      *(v23 + 8) = v22;
      *(v23 + 9) = v20;
      memcpy((*(v25 + 56) + v21), __dst, 0x378uLL);
      sub_1CEFD0988(v19, v22, v20);
      sub_1CEFF4514(__dst, v26);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v24;
        v4 = v25;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1CF7CFBE4()
{
  v1 = v0;
  v2 = type metadata accessor for SyncState(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE0, &qword_1CFA07A88);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1CEFE4F24(*(v4 + 56) + v23, v26, type metadata accessor for SyncState);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        sub_1CEFE4BF8(v22, *(v24 + 56) + v23, type metadata accessor for SyncState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7CFE1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B28, &unk_1CFA079C0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        v17 *= 32;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        v26 = *(v4 + 48) + v18;
        *v26 = v20;
        *(v26 + 8) = v19;
        v27 = *(v4 + 56) + v17;
        *v27 = v22;
        *(v27 + 8) = v23;
        *(v27 + 16) = v25;
        *(v27 + 24) = v24;
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

void sub_1CF7CFFA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DF0, &unk_1CFA07C80);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
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

void sub_1CF7D0140()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB0, &unk_1CFA17140);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 26);
        v23 = *(v2 + 56) + v17;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        LOBYTE(v23) = *(v23 + 24);
        v27 = *(v4 + 48) + v17;
        *v27 = v20;
        *(v27 + 8) = v19;
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 26) = v18;
        v28 = *(v4 + 56) + v17;
        *v28 = v24;
        *(v28 + 8) = v25;
        *(v28 + 16) = v26;
        *(v28 + 24) = v23;
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

void sub_1CF7D02E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void sub_1CF7D0464()
{
  v1 = v0;
  v35 = sub_1CF9E5A58();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D88, &qword_1CFA17240);
  v3 = *v0;
  v4 = sub_1CF9E7BC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1CF7D06E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B38, &qword_1CFA079D0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v31 = v19[2];
        v32 = v22;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v29;
        v25 = v30;
        v26 = v32;
        v23[2] = v31;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        v27 = v18;
        sub_1CEFCCBDC(&v29, &v28, &unk_1EC4BF250, &unk_1CFA01B50);
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

void sub_1CF7D08E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D0A44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE8, &qword_1CFA07C78);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1CF7D0C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D0D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4980, &qword_1CFA17208);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void sub_1CF7D0F08(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1CF9E7BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1CF1A91AC(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_1CF7D10C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D127C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        v23 = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D13CC()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4960, &qword_1CFA171C8);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    v32 = v4;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 16 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v33;
        v27 = *(v34 + 72) * v20;
        sub_1CEFE4F24(v22 + v27, v33, type metadata accessor for VFSItem);
        v28 = v35;
        v29 = *(v35 + 48) + v21;
        *v29 = v24;
        v4 = v32;
        *(v29 + 8) = v25;
        sub_1CEFE4BF8(v26, *(v28 + 56) + v27, type metadata accessor for VFSItem);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v31;
        v6 = v35;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D1648(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        sub_1CEFD1104(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        sub_1CEFE9EB8(v21, (*(v6 + 56) + 32 * v19));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D17F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D192C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BA0, &qword_1CFA07A48);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = *(v20 + 27);
        v22 = v20[1];
        v31 = *v20;
        v32[0] = v22;
        *(v32 + 11) = v21;
        v23 = 8 * v17;
        v24 = (v19 + 8 * v17);
        v26 = *v24;
        v25 = v24[1];
        v27 = v24[2];
        memmove((*(v4 + 48) + v18), v20, 0x2BuLL);
        v28 = (*(v4 + 56) + v23);
        *v28 = v26;
        v28[1] = v25;
        v28[2] = v27;
        sub_1CEFCCBDC(&v31, v30, &qword_1EC4BE1A0, &unk_1CFA17130);
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

        v1 = v29;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1CF7D1B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 9);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 8);
        *v24 = *v18;
        *(v24 + 8) = v25;
        *(v24 + 9) = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        sub_1CEFD0988(v19, v25, v20);
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

void sub_1CF7D1C90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49C0, &qword_1CFA17268);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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

void sub_1CF7D1E04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C00, &unk_1CFA171F0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        v20 = v18;
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

void sub_1CF7D1F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF0, &qword_1CFA07A98);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        v22 = v18;
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

void sub_1CF7D20D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF8, &unk_1CFA07AA0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

        v24 = v18;
        v25 = v20;
        v26 = v21;
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

void sub_1CF7D2258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB8, &qword_1CFA07A60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_1CF7D23B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C30, &qword_1CFA17200);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1CF7D2514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C10, &qword_1CFA07AB8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v23 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v2 + 56) + v17;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = *(v4 + 56) + v17;
      *v23 = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1CF7D26A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;

        v20 = v18;
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

void sub_1CF7D2808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C60, &qword_1CFA07AF8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_1CF7D2980()
{
  v1 = v0;
  v31 = sub_1CF9E5A58();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4958, &qword_1CFA171C0);
  v3 = *v0;
  v4 = sub_1CF9E7BC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1CF7D2C14(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v40 = a1;
  v41 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1CF9E7BC8();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = (v10 + 64);
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, v37, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v10 + 48) + 16 * v25;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v38;
        v31 = *(v39 + 72) * v25;
        v33 = v40;
        v32 = v41;
        sub_1CEFCCBDC(*(v10 + 56) + v31, v38, v40, v41);
        v34 = v42;
        v35 = *(v42 + 48) + v26;
        *v35 = v28;
        *(v35 + 8) = v29;
        sub_1CEFE55D0(v30, *(v34 + 56) + v31, v33, v32);
        v20 = v43;
      }

      while (v43);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v42;
        goto LABEL_21;
      }

      v24 = *(v37 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_1CF7D2E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD8, &qword_1CFA07B80);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
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

void sub_1CF7D2FD0()
{
  v1 = v0;
  v31 = sub_1CF9E5CF8();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE0, &qword_1CFA07C70);
  v3 = *v0;
  v4 = sub_1CF9E7BC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 4 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 4 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1CF7D3240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD0, &qword_1CFA07C60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1CF7D338C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B88, &unk_1CFA07A20);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_1CF7D34F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B90, &unk_1CFA17110);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_1CF7D3654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B80, &qword_1CFA07A18);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_1CF7D37B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC8, &unk_1CFA07B60);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_1CF7D3910()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1CEFF6FC0(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1CEFF701C(v19, *(v4 + 56) + 16 * v17);
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

void sub_1CF7D3AB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_1CEFD1104(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_1CEFE9EB8(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D3C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B70, &unk_1CFA17100);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_1CF7D3D88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D78, &qword_1CFA07C08);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v29;
        v22 = *(v30 + 72) * v20;
        sub_1CEFCCBDC(*(v4 + 48) + v22, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v31;
        sub_1CEFE55D0(v21, *(v31 + 48) + v22, &unk_1EC4BF650, &unk_1CF9FCB40);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        v27 = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v28;
        v6 = v31;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D3FDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D60, &qword_1CFA07BF0);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v29;
        v22 = *(v30 + 72) * v20;
        sub_1CEFCCBDC(*(v4 + 48) + v22, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v31;
        sub_1CEFE55D0(v21, *(v31 + 48) + v22, &unk_1EC4BF650, &unk_1CF9FCB40);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        v27 = v23;
      }

      while (v15);
    }

    v18 = v10;
    v6 = v31;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D4234()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C40, &unk_1CFA07AD8);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1CEFCCBDC(*(v4 + 48) + v22, v28, &unk_1EC4BF650, &unk_1CF9FCB40);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        sub_1CEFE55D0(v21, *(v30 + 48) + v22, &unk_1EC4BF650, &unk_1CF9FCB40);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    v6 = v30;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D448C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D68, &qword_1CFA07BF8);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_1CF7D45F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = 40 * v17;
        sub_1CF0272BC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1CEFD1104(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_1CEFE9EB8(v22, (*(v4 + 56) + v17));
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

void sub_1CF7D4794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C70, &unk_1CFA17170);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    v33 = v4;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 16 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v34;
        v27 = *(v35 + 72) * v20;
        sub_1CEFCCBDC(v22 + v27, v34, &unk_1EC4C04C0, &qword_1CFA07B10);
        v28 = v36;
        v29 = *(v36 + 48) + v21;
        *v29 = v24;
        *(v29 + 8) = v25;
        v30 = *(v28 + 56) + v27;
        v4 = v33;
        sub_1CEFE55D0(v26, v30, &unk_1EC4C04C0, &qword_1CFA07B10);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v32;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D49F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0BC8, &unk_1CFA07A70);
  v4 = *v0;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_1CEFCCBDC(*(v4 + 56) + v22, v27, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v23 = v29;
        *(*(v29 + 48) + 8 * v19) = v20;
        sub_1CEFE55D0(v21, *(v23 + 56) + v22, &unk_1EC4C04B0, &unk_1CF9FCB20);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1CF7D4C54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E7BC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        LOBYTE(v20) = *(v20 + 8);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF7D4DB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB0, &unk_1CFA07C40);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v21;
        *(v23 + 16) = v22;
        *(v23 + 24) = v19;
        v24 = v18;
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

void sub_1CF7D4F34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB8, &unk_1CFA17190);
  v2 = *v0;
  v3 = sub_1CF9E7BC8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v26 + 24) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 32 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      LOBYTE(v21) = *(v21 + 24);
      v25 = *(v4 + 48) + v17;
      *v25 = v19;
      *(v25 + 8) = v18;
      v26 = *(v4 + 56) + v20;
      *v26 = v22;
      *(v26 + 8) = v23;
      *(v26 + 16) = v24;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1CF7D50B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF7D5160()
{
  result = qword_1EC4C4908;
  if (!qword_1EC4C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4908);
  }

  return result;
}

unint64_t sub_1CF7D51B8()
{
  result = qword_1EDEA3570;
  if (!qword_1EDEA3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3570);
  }

  return result;
}

unint64_t sub_1CF7D5210()
{
  result = qword_1EDEA3578;
  if (!qword_1EDEA3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3578);
  }

  return result;
}

uint64_t sub_1CF7D5264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CF7D5670(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  aBlock[4] = a6;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = a7;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v15 = [a3 fetchSwift:v14 error:aBlock];
  _Block_release(v14);
  v16 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v15)
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v15;
}

id sub_1CF7D5820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1CF9E5928();
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v18[4] = a7;
    v18[5] = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1CF7D5540;
    v18[3] = a8;
    v15 = _Block_copy(v18);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a4 backupToURL:v13 progress:v15];
  _Block_release(v15);

  return v16;
}

void sub_1CF7D5920(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  aBlock[4] = sub_1CEFE75B8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_44;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v8 = [a3 executeSwift:v7 error:aBlock];
  _Block_release(v7);
  v9 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v8)
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF7D5BAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1CF7D5BF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF7D5C58()
{
  result = qword_1EC4C49C8;
  if (!qword_1EC4C49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C49C8);
  }

  return result;
}

uint64_t sub_1CF7D5D90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1CF067780();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_1CF7D5E20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v106 = a2;
  v107 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v100 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v105 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  v16 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FPFSSyncEngine(0);
  v20 = v114;
  sub_1CF7D645C(a3, a4, v19, a5, a6);
  if (v20)
  {
    return;
  }

  v100 = v12;
  v101 = v13;
  v103 = v19;
  v104 = v15;
  v102 = a3;
  v114 = 0;
  v21 = v107;
  sub_1CEFF54BC(v18);
  v22 = *v18;
  sub_1CF007D18(v18, type metadata accessor for ItemMetadata);
  v23 = v21;
  if (v22 != 1)
  {
    goto LABEL_15;
  }

  v24 = [v21 containerDisplayName];
  if (v24)
  {
    v25 = v24;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v29 = v103;
  v28 = v104;
  v30 = sub_1CF9E69D8();
  v27, v31, v32, v33, v34, v35, v36, v37;
  v23 = v107;
  if (v30 < 1)
  {
LABEL_15:
    v69 = v23;
    return;
  }

  v38 = [v107 filename];
  v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v40;

  v112 = v39;
  v113 = v41;
  v110 = 58;
  v111 = 0xE100000000000000;
  v108 = 47;
  v109 = 0xE100000000000000;
  sub_1CEFE4E68();
  v42 = sub_1CF9E7668();
  v44 = v43;
  v41, v43, v45, v46, v47, v48, v49, v50;
  if (v42 == 0x746E656D75636F44 && v44 == 0xE900000000000073)
  {
    0xE900000000000073, v51, v52, v53, v54, v55, v56, v57;
    v59 = v105;
    v58 = v106;
  }

  else
  {
    v60 = sub_1CF9E8048();
    v44, v61, v62, v63, v64, v65, v66, v67;
    v59 = v105;
    v58 = v106;
    if ((v60 & 1) == 0)
    {
LABEL_14:
      v23 = v107;
      goto LABEL_15;
    }
  }

  v68 = v100;
  sub_1CEFCCBDC(v58, v100, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v59 + 48))(v68, 1, v101) == 1)
  {
    sub_1CEFCCC44(v68, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_14;
  }

  sub_1CEFE55D0(v68, v28, &unk_1EC4BE360, &qword_1CF9FE650);
  type metadata accessor for FPFileTree(0);
  v70 = *(swift_dynamicCastClassUnconditional() + 280);
  v71 = [v70 pathComponents];
  v72 = sub_1CF9E6D48();

  v73 = *v72->tree;
  v72, v74, v75, v76, v77, v78, v79, v80;
  v81 = v70;
  v82 = v73 >= 2;
  v83 = v107;
  v84 = a6;
  if (v82)
  {
    v81 = [v70 stringByDeletingLastPathComponent];
    if (!v81)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v86 = v85;
      v81 = sub_1CF9E6888();
      v87 = v86;
      v84 = a6;
      v87, v88, v89, v90, v91, v92, v93, v94;
    }
  }

  v95 = sub_1CF7D9A78();
  v96 = sub_1CF7D9AD0();
  v97 = v114;
  sub_1CF7D6FCC(v28, v102, v81, v83, a4, v29, v101, a5, v95, &off_1F4BF8588, v96, v84);
  v99 = v98;
  sub_1CEFCCC44(v28, &unk_1EC4BE360, &qword_1CF9FE650);

  if (!v97 && !v99)
  {
    v114 = 0;
    v23 = v83;
    goto LABEL_15;
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF7D633C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  v20 = *(a1 + 40);
  v16 = a1[6];
  v21 = v14;
  v22 = v16;
  v17 = type metadata accessor for FPFSSyncEngine(0);
  result = sub_1CF7D645C(a2, a4, v17, a5, a6);
  if (!v6)
  {
    v23 = v12;
    v24 = v11;
    v25 = v13 & 1;
    v26 = v21;
    v27 = v15;
    v28 = v20 & 1;
    v29 = v22;
    MEMORY[0x1EEE9AC00](result);
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = a2;
    v19[5] = a4;
    v19[6] = v30;
    return sub_1CF7F0654(sub_1CF7D9B34, v19);
  }

  return result;
}

uint64_t sub_1CF7D645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(a5 + 8))(a4, a5, v10);
  v14 = *(a1 + 16);
  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_7;
    }

    v15 = &qword_1EC4EBCD0;
  }

  else
  {
    v15 = &qword_1EC4EBCD8;
  }

  v16 = v14 + *v15;
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 8);
    sub_1CF1FD6B8(*v16, v18);
    v19 = v18;
    sub_1CF1FD6F8(v17, v18);
    goto LABEL_8;
  }

LABEL_7:
  v19 = *(v14 + 64);
LABEL_8:
  *v12 = v19;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v20 = sub_1CF9E64D8();
  result = (*(v9 + 8))(v12, v8);
  if ((v20 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1CF7D6604(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v170 = a1;
  v160 = a7;
  v161 = a8;
  v167 = a2;
  v174 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v162 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v18 = *(v17 - 8);
  v165 = v17;
  v166 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v163 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v151 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v169 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v151 - v32;
  v168 = a3;
  v34 = v171;
  sub_1CF7D645C(a3, a4, a5, a6, v174);
  if (!v34)
  {
    v158 = v27;
    v152 = v30;
    v156 = a4;
    v157 = v28;
    v153 = v24;
    v154 = v33;
    v35 = a5;
    v155 = a6;
    v171 = 0;
    v36 = v170;
    v37 = [v170 filename];
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;

    v41 = [v36 providerID];
    if (![v41 fp_isiCloudDriveIdentifier])
    {

      v40, v52, v53, v54, v55, v56, v57, v58;
      return;
    }

    if (v38 == 0x746E656D75636F44 && v40 == 0xE900000000000073)
    {

      0xE900000000000073, v42, v43, v44, v45, v46, v47, v48;
      v49 = v174;
      v50 = v169;
      v51 = v158;
    }

    else
    {
      v59 = sub_1CF9E8048();

      v40, v60, v61, v62, v63, v64, v65, v66;
      v49 = v174;
      v50 = v169;
      v51 = v158;
      if ((v59 & 1) == 0)
      {
        return;
      }
    }

    v67 = v167;
    v68 = v168[2];
    sub_1CEFCCBDC(v167, v51, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v69 = *(v50 + 48);
    if (v69(v51, 1, v157) == 1)
    {
      sub_1CEFCCC44(v51, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v70 = type metadata accessor for PendingIndexingItemRow(0);
      v71 = v164;
      sub_1CEFCCBDC(v67 + *(v70 + 20), v164, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v72 = v166 + 48;
      v73 = *(v166 + 48);
      if (v73(v71, 1, v165) == 1)
      {
        sub_1CEFCCC44(v71, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      v166 = v72;
      v81 = v163;
      sub_1CEFE55D0(v71, v163, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v82 = *(v68 + 40);
      v172 = *(v81 + 8);
      v83 = *(*v82 + 240);
      v84 = v172;
      v85 = v162;
      v86 = v171;
      v83(&v172, 1, v156, v155, v49);

      if (v86)
      {
        sub_1CEFCCC44(v81, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        return;
      }

      if (v73(v85, 1, v165) == 1)
      {
        sub_1CEFCCC44(v81, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        sub_1CEFCCC44(v85, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      v103 = sub_1CEFE55D0(v85, v159, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v104 = *(*v168 + 192);
      v172 = v104(v103);
      v105 = v161;
      v106 = *(v35 + 104);
      v107 = (*(v161 + 16))(v106, v161);

      v172 = v104(v108);
      v109 = (*(v105 + 8))(v106, v105);

      v110 = v159;
      v92 = sub_1CF2CEBFC(v159, v109, v107, 1);

      sub_1CEFCCC44(v110, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v100 = v163;
      v101 = &unk_1EC4BFBD0;
      v102 = &unk_1CF9FCBC0;
    }

    else
    {
      v74 = v154;
      sub_1CEFE55D0(v51, v154, &unk_1EC4BE360, &qword_1CF9FE650);
      v75 = *(v68 + 32);
      v76 = *(v74 + 24);
      v172 = *(v74 + 16);
      v173 = v76;
      v77 = v49;
      v78 = v153;
      v79 = v155;
      v80 = v171;
      (*(*v75 + 240))(&v172, 1, v156, v155, v77);
      if (v80)
      {
        sub_1CEFCCC44(v74, &unk_1EC4BE360, &qword_1CF9FE650);
        return;
      }

      v87 = v157;
      if (v69(v78, 1, v157) == 1)
      {
        sub_1CEFCCC44(v74, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v78, &qword_1EC4C1B40, &unk_1CF9FCB70);
        return;
      }

      v88 = v79;
      v89 = v152;
      sub_1CEFE55D0(v78, v152, &unk_1EC4BE360, &qword_1CF9FE650);
      v90 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v91 = sub_1CF7D9AD0();
      v92 = sub_1CF76BB00(v89, 1, 0, v90, v156, v87, v88, v160, v161, v91, v174);
      v90, v93, v94, v95, v96, v97, v98, v99;
      sub_1CEFCCC44(v89, &unk_1EC4BE360, &qword_1CF9FE650);
      v100 = v74;
      v101 = &unk_1EC4BE360;
      v102 = &qword_1CF9FE650;
    }

    sub_1CEFCCC44(v100, v101, v102);
    v111 = v92;
    v112 = sub_1CF0689E4();

    v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v115 = v114;
    v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v118 = v117;
    if (v113 == v116 && v115 == v117)
    {

      v115, v119, v120, v121, v122, v123, v124, v125;
      v118, v126, v127, v128, v129, v130, v131, v132;
    }

    else
    {
      v133 = sub_1CF9E8048();

      v115, v134, v135, v136, v137, v138, v139, v140;
      v118, v141, v142, v143, v144, v145, v146, v147;
      if ((v133 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_1CF763B18(v111, 1, v156, v155, v160, v161, v174);
    v148 = [objc_opt_self() appLibraryFromContainerItem:v111 documentsItem:v170];
    if (v148)
    {
      v149 = v148;
      v150 = [v148 isValidAppLibrary];

      if ((v150 & 1) == 0)
      {
      }

      return;
    }

LABEL_29:
  }
}

void sub_1CF7D6FCC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  v127 = a3;
  v128 = a7;
  v126 = a4;
  v129 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v116 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v125 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v116 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v116 - v23;
  v25 = v134;
  sub_1CF7D645C(a2, a5, a6, a8, a12);
  if (!v25)
  {
    v121 = v18;
    v122 = a12;
    v119 = v19;
    v120 = v21;
    v123 = a5;
    v124 = a2;
    v134 = 0;
    v26 = v128;
    v27 = v129;
    sub_1CF937E0C(v128, a11, v24);
    v29 = *(v24 + 2);
    v28 = *(v24 + 3);

    sub_1CEFCCC44(v24, &unk_1EC4BFD90, &unk_1CFA134F0);
    if ([v127 fp_isiCloudDriveIdentifier])
    {
      if (v29 == 0x746E656D75636F44 && v28 == 0xE900000000000073)
      {
        v28, v30, 0x746E656D75636F44, v32, v33, v34, v35, v36;
        v46 = v124;
      }

      else
      {
        v38 = sub_1CF9E8048();
        v28, v39, v40, v41, v42, v43, v44, v45;
        v46 = v124;
        if ((v38 & 1) == 0)
        {
          return;
        }
      }

      v47 = v126;
      v117 = a9;
      v118 = a10;
      if (v126)
      {
        v127 = v126;
        v49 = v122;
        v48 = v123;
      }

      else
      {
        v50 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
        v49 = v122;
        v51 = v27;
        v48 = v123;
        v127 = sub_1CF76BB00(v51, 1, 0, v50, v123, v26, a8, a9, a10, a11, v122);
        v50, v52, v53, v54, v55, v56, v57, v58;
        v47 = v126;
      }

      v59 = *(*(v46 + 16) + 32);
      v60 = *(a11 + 72);
      v61 = v47;

      v60(&v132, v26, a11);
      v130 = v132;
      v131 = v133;
      v62 = v121;
      v63 = v134;
      (*(*v59 + 240))(&v130, 1, v48, a8, v49);
      if (v63)
      {

        return;
      }

      v64 = v119;
      if ((*(v125 + 48))(v62, 1, v119) == 1)
      {

        sub_1CEFCCC44(v62, &qword_1EC4C1B40, &unk_1CF9FCB70);
        return;
      }

      v65 = v120;
      sub_1CEFE55D0(v62, v120, &unk_1EC4BE360, &qword_1CF9FE650);
      v66 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v67 = sub_1CF7D9AD0();
      v68 = sub_1CF76BB00(v65, 1, 0, v66, v48, v64, a8, v117, v118, v67, v49);
      v66, v69, v70, v71, v72, v73, v74, v75;
      v76 = sub_1CF0689E4();
      v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v79 = v78;
      v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v82 = v81;
      if (v77 == v80 && v79 == v81)
      {

        v79, v83, v84, v85, v86, v87, v88, v89;
        v82, v90, v91, v92, v93, v94, v95, v96;
      }

      else
      {
        v97 = sub_1CF9E8048();

        v79, v98, v99, v100, v101, v102, v103, v104;
        v82, v105, v106, v107, v108, v109, v110, v111;
        if ((v97 & 1) == 0)
        {
          sub_1CEFCCC44(v120, &unk_1EC4BE360, &qword_1CF9FE650);

          return;
        }
      }

      sub_1CF763B18(v68, 1, v123, a8, v117, v118, v122);
      v112 = v127;
      v113 = [objc_opt_self() appLibraryFromContainerItem:v68 documentsItem:v127];
      if (v113)
      {
        v114 = v113;
        v115 = [v113 isValidAppLibrary];

        sub_1CEFCCC44(v120, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v115 & 1) == 0)
        {
        }
      }

      else
      {
        sub_1CEFCCC44(v120, &unk_1EC4BE360, &qword_1CF9FE650);
      }
    }

    else
    {
      v28, v30, v31, v32, v33, v34, v35, v36;
    }
  }
}

void *sub_1CF7D7600(void (*a1)(), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, id a7)
{
  v209 = a7;
  v210 = a6;
  v211 = a5;
  v188 = a4;
  v207 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v197 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v204 = &v175 - v12;
  v195 = sub_1CF9E6068();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v189 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v175 - v17;
  v190 = type metadata accessor for Signpost(0);
  v191 = *(v190 - 8);
  v18 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v196 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v175 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v198 = &v175 - v24;
  v200 = sub_1CF9E63D8();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v185 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v186 = &v175 - v27;
  v206 = sub_1CF9E6448();
  v203 = *(v206 - 8);
  v28 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v187 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v205 = &v175 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v175 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v175 - v36;
  v38 = *a3;
  v39 = *(a3 + 8);
  v40 = type metadata accessor for FPFSSyncEngine(0);
  v41 = v208;
  sub_1CF7D645C(a2, v211, v40, v210, v209);
  if (!v41)
  {
    v179 = v35;
    v183 = v33;
    v180 = v34;
    v178 = v37;
    v184 = v39;
    v208 = v38;
    v181 = v28;
    v182 = v18;
    v43 = v207;
    if ((sub_1CEFF96D0(v207) & 1) == 0)
    {
      return 0;
    }

    v44 = *(a2 + 16);
    v45 = *(v44 + 32);
    v222 = v184;
    *&aBlock = 0x746E656D75636F44;
    *(&aBlock + 1) = 0xE900000000000073;
    v218 = 0xE100000000000000;
    v219 = 58;
    v220 = 0xE100000000000000;
    v221 = v208;
    v217 = 47;
    sub_1CEFE4E68();

    *&aBlock = sub_1CF9E7668();
    *(&aBlock + 1) = v46;
    v219 = 0;
    LOBYTE(v220) = -1;
    v47 = v210;
    v48 = v209;
    v49 = (*(*v45 + 256))(&v221, &aBlock, &v219, v211, v210, v209);
    v50 = *(&aBlock + 1);

    v50, v51, v52, v53, v54, v55, v56, v57;
    v177 = 0;
    if (*v49->tree)
    {
      isa = v49[1].super.isa;
      v66 = v49[1]._anon_8[0];
      v49, v58, v59, v60, v61, v62, v63, v64;
      v38 = *(v44 + 32);
      *&aBlock = isa;
      BYTE8(aBlock) = v66;
      v67 = *(*v38 + 240);

      v68 = v183;
      v69 = v177;
      v67(&aBlock, 1, v211, v47, v48);

      if (v69)
      {
        return v38;
      }

      v177 = 0;
      v70 = v180;
      v71 = (*(v179 + 48))(v68, 1, v180) == 1;
      v72 = v68;
      v73 = v198;
      if (!v71)
      {
        v159 = v178;
        sub_1CEFE55D0(v72, v178, &unk_1EC4BE360, &qword_1CF9FE650);
        v160 = v48;
        v161 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
        v162 = v70;
        v163 = sub_1CF7D9A78();
        v164 = sub_1CF7D9AD0();
        v165 = sub_1CF76BB00(v159, 0, 0, v161, v211, v162, v47, v163, &off_1F4BF8588, v164, v160);
        v161, v166, v167, v168, v169, v170, v171, v172;
        v173 = [objc_opt_self() appLibraryFromContainerItem:v43 documentsItem:v165];
        v38 = v173;
        if (!v173)
        {
          sub_1CEFCCC44(v159, &unk_1EC4BE360, &qword_1CF9FE650);

          return v38;
        }

        v174 = [v173 isValidAppLibrary];

        sub_1CEFCCC44(v159, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v174)
        {
          return v38;
        }

        return 0;
      }

      v74 = v44;
      sub_1CEFCCC44(v72, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v74 = v44;
      v49, v58, v59, v60, v61, v62, v63, v64;
      v73 = v198;
    }

    qos_class_self();
    sub_1CF9E63B8();
    v75 = v199;
    v76 = *(v199 + 48);
    v77 = v200;
    v78 = v76(v73, 1, v200);
    v79 = v208;
    v80 = v184;
    if (v78 == 1)
    {
      (*(v75 + 104))(v186, *MEMORY[0x1E69E7FA0], v77);
      if (v76(v73, 1, v77) != 1)
      {
        sub_1CEFCCC44(v73, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v75 + 32))(v186, v73, v77);
    }

    sub_1CF9E6428();
    v81 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v81 setCancellable_];
    v82 = swift_allocObject();
    v83 = v74;
    swift_weakInit();
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = swift_allocObject();
    *(v85 + 16) = v82;
    *(v85 + 24) = v84;
    *(v85 + 32) = v79;
    *(v85 + 40) = v80;
    v215 = sub_1CF481424;
    v216 = v85;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v213 = sub_1CEFCA444;
    v214 = &block_descriptor_30_1;
    v86 = v79;
    v87 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF481424, v85);

    [v81 setCancellationHandler_];
    _Block_release(v87);

    v88 = v203;
    v89 = v187;
    v90 = v206;
    (*(v203 + 16))(v187, v205, v206);
    v91 = (*(v88 + 80) + 80) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = nullsub_1;
    *(v92 + 24) = 0;
    *(v92 + 32) = v83;
    *(v92 + 40) = v86;
    *(v92 + 48) = v184;
    v93 = v188;
    *(v92 + 56) = v188;
    *(v92 + 64) = 0;
    *(v92 + 72) = v81;
    v94 = *(v88 + 32);
    v211 = v92;
    v94(v92 + v91, v89, v90);
    v176 = v83;

    sub_1CEFD09A0(v93);
    v210 = v81;
    v209 = fpfs_adopt_log();
    v95 = v195;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v96 = qword_1EDEBBE40;
    v97 = v194;
    v98 = v201;
    (*(v194 + 56))(v201, 1, 1, v95);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v99 = sub_1CF9E7988();
    v101 = v100;
    MEMORY[0x1D3868CC0](v99);
    v101, v102, v103, v104, v105, v106, v107, v108;
    v207 = *(&aBlock + 1);
    v208 = aBlock;
    v109 = v189;
    sub_1CEFCCBDC(v98, v189, &unk_1EC4BED20, &unk_1CFA00700);
    v110 = *(v97 + 48);
    v111 = v110(v109, 1, v95);
    v112 = v202;
    v113 = v193;
    v114 = v190;
    if (v111 == 1)
    {
      v115 = v96;
      sub_1CF9E6048();
      if (v110(v109, 1, v95) != 1)
      {
        sub_1CEFCCC44(v109, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v97 + 32))(v193, v109, v95);
    }

    (*(v97 + 16))(v112, v113, v95);
    *(v112 + *(v114 + 20)) = v96;
    v116 = v112 + *(v114 + 24);
    *v116 = "DB queue wait";
    *(v116 + 8) = 13;
    *(v116 + 16) = 2;
    v117 = v96;
    v118 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v119 = v113;
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1CF9FA450;
    *(v120 + 56) = MEMORY[0x1E69E6158];
    *(v120 + 64) = sub_1CEFD51C4();
    v121 = v207;
    *(v120 + 32) = v208;
    *(v120 + 40) = v121;
    sub_1CF9E6028(v118, &dword_1CEFC7000, v117, "DB queue wait", 13, 2, v112, "%s", 2);
    v120, v122, v123, v124, v125, v126, v127, v128;
    (*(v97 + 8))(v119, v95);
    sub_1CEFCCC44(v201, &unk_1EC4BED20, &unk_1CFA00700);
    v201 = *(v176 + 168);
    v208 = *(v176 + 64);
    (*(v203 + 56))(v204, 1, 1, v206);
    v129 = v192;
    sub_1CF00167C(v112, v192, type metadata accessor for Signpost);
    v130 = (*(v191 + 80) + 16) & ~*(v191 + 80);
    v131 = (v182 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
    v132 = swift_allocObject();
    sub_1CF042EE8(v129, v132 + v130);
    v133 = (v132 + v131);
    v207 = nullsub_1;
    *v133 = nullsub_1;
    v133[1] = 0;
    v134 = v196;
    sub_1CF00167C(v112, v196, type metadata accessor for Signpost);
    v135 = (v131 + 23) & 0xFFFFFFFFFFFFFFF8;
    v136 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v136 + 25) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 23) & 0xFFFFFFFFFFFFFFF8;
    v139 = swift_allocObject();
    sub_1CF042EE8(v134, v139 + v130);
    v140 = (v139 + v131);
    *v140 = sub_1CF045408;
    v140[1] = 0;
    *(v139 + v135) = v176;
    v141 = v139 + v136;
    *v141 = "materialize(_:request:options:qos:completion:)";
    *(v141 + 8) = 46;
    *(v141 + 16) = 2;
    v142 = (v139 + v137);
    v143 = v203;
    v144 = v206;
    *v142 = v207;
    v142[1] = 0;
    v145 = (v139 + v138);
    v146 = v211;
    *v145 = sub_1CF481430;
    v145[1] = v146;
    v147 = swift_allocObject();
    v147[2] = sub_1CF55301C;
    v147[3] = v132;
    v148 = v201;
    v147[4] = v201;

    v207 = v132;

    v149 = fpfs_current_log();
    v201 = *(v148 + 2);
    v150 = v197;
    sub_1CEFCCBDC(v204, v197, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v143 + 48))(v150, 1, v144) == 1)
    {
      sub_1CEFCCC44(v150, &unk_1EC4BE370, qword_1CFA01B30);
      v151 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v152 = v185;
      sub_1CF9E6438();
      (*(v143 + 8))(v150, v144);
      v151 = sub_1CF9E63C8();
      (*(v199 + 8))(v152, v200);
    }

    v153 = swift_allocObject();
    v153[2] = v149;
    v153[3] = sub_1CF48160C;
    v153[4] = v139;
    v215 = sub_1CEFCA438;
    v216 = v153;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v213 = sub_1CEFCA444;
    v214 = &block_descriptor_45;
    v154 = _Block_copy(&aBlock);
    v155 = v149;

    v215 = sub_1CF2AF9E8;
    v216 = v147;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v213 = sub_1CEFCA444;
    v214 = &block_descriptor_27_2;
    v156 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v201, v208, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v151, v154, v156);
    _Block_release(v156);
    _Block_release(v154);

    sub_1CEFCCC44(v204, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007D18(v202, type metadata accessor for Signpost);
    v157 = v209;
    v158 = fpfs_adopt_log();

    (*(v143 + 8))(v205, v206);
    return 0;
  }

  return v38;
}

void sub_1CF7D89E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v89 = a6;
  v90 = a3;
  v91 = a5;
  v86 = a4;
  v87 = a7;
  v88 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v83[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83[-v17];
  sub_1CEFCCBDC(a1, &v83[-v17], &qword_1EC4C48B8, &unk_1CFA180E0);
  v85 = *v18;
  v84 = v18[8];
  sub_1CEFCCC44(&v18[*(v16 + 56)], &unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFCCBDC(a1, v18, &qword_1EC4C48B8, &unk_1CFA180E0);
  v19 = *(v16 + 56);
  v20 = v12;
  sub_1CEFE55D0(&v18[v19], v14, &unk_1EC4BE360, &qword_1CF9FE650);
  v21 = *(v14 + 2);
  LOBYTE(a1) = v14[24];
  v23 = *(v14 + 16);
  v22 = *(v14 + 17);
  sub_1CF00167C(&v14[*(v20 + 48)], &v11[*(v9 + 48)], type metadata accessor for ItemMetadata);
  *v11 = v21;
  v11[8] = a1;
  *(v11 + 2) = v23;
  *(v11 + 3) = v22;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(v11, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (v23 == 0x746E656D75636F44 && v22 == 0xE900000000000073)
  {
    v22, v24, 0x746E656D75636F44, v25, v26, v27, v28, v29;
  }

  else
  {
    v31 = sub_1CF9E8048();
    v22, v32, v33, v34, v35, v36, v37, v38;
    if ((v31 & 1) == 0)
    {
      v39 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v40 = sub_1CF7D9A78();
      v41 = sub_1CF7D9AD0();
      v42 = v89;
      v44 = v90;
      v43 = v91;
      v45 = v88;
      v46 = sub_1CF76BB00(v14, 1, 0, v39, v90, v20, v91, v40, &off_1F4BF8588, v41, v89);
      v39, v47, v48, v49, v50, v51, v52, v53;
      v92 = v85;
      v93 = v84;
      v54 = v94;
      v55 = sub_1CF7D7600(v46, v45, &v92, v86, v44, v43, v42);
      sub_1CEFCCC44(v14, &unk_1EC4BE360, &qword_1CF9FE650);

      if (v54)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  v56 = v88;
  type metadata accessor for FPFileTree(0);
  v57 = *(swift_dynamicCastClassUnconditional() + 280);
  v58 = [v57 pathComponents];
  v59 = sub_1CF9E6D48();

  v60 = *v59->tree;
  v59, v61, v62, v63, v64, v65, v66, v67;
  v68 = v57;
  if (v60 >= 2)
  {
    v68 = [v57 stringByDeletingLastPathComponent];
    if (!v68)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v70 = v69;
      v68 = sub_1CF9E6888();
      v70, v71, v72, v73, v74, v75, v76, v77;
    }
  }

  v78 = type metadata accessor for FPFSSyncEngine(0);
  v79 = sub_1CF7D9A78();
  v80 = sub_1CF7D9AD0();
  v81 = v94;
  sub_1CF7D6FCC(v14, v56, v68, 0, v90, v78, v20, v91, v79, &off_1F4BF8588, v80, v89);
  v55 = v82;
  sub_1CEFCCC44(v14, &unk_1EC4BE360, &qword_1CF9FE650);

  if (!v81)
  {
LABEL_14:
    *v87 = v55;
  }
}

uint64_t sub_1CF7D8E9C(void *a1, char a2, void *a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  if (a2)
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = a3;
    sub_1CF0BA8A4(a1);
    sub_1CEFD09A0(a4);
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    sub_1CF2F6594(a1);
    sub_1CEFD0A98(a4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v73 = a5;
      v23 = v11;
      v24 = v22;
      v25 = swift_slowAlloc();
      v72 = v10;
      v26 = v25;
      v74 = v25;
      *v21 = 138412802;
      *(v21 + 4) = v18;
      *v24 = v18;
      *(v21 + 12) = 2112;
      v27 = v18;
      sub_1CF0BA8A4(a1);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      v24[1] = v28;
      *(v21 + 22) = 2082;
      v29 = sub_1CEFD11AC(a4);
      v31 = v30;
      v32 = sub_1CEFD0DF0(v29, v30, &v74);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v21 + 24) = v32;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "[patchAppLibrary] Error while trying to find the container for: %@, error: %@ (request: %{public}s)", v21, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);

      (*(v23 + 8))(v16, v72);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v74 = a1;
    v49 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
    return sub_1CF9E6ED8();
  }

  else
  {
    v40 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0BA8A4(a1);
    sub_1CEFD09A0(a4);
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E7298();
    sub_1CF2F6594(a1);
    sub_1CEFD0A98(a4);
    if (os_log_type_enabled(v41, v42))
    {
      v71 = v11;
      v72 = v10;
      v73 = a5;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74 = v44;
      *v43 = 136446466;
      if (a1)
      {
        v45 = [a1 description];
        v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v48 = v47;
      }

      else
      {
        v48 = 0xE500000000000000;
        v46 = 0x3E6C696E3CLL;
      }

      v51 = sub_1CEFD0DF0(v46, v48, &v74);
      v48, v52, v53, v54, v55, v56, v57, v58;
      *(v43 + 4) = v51;
      *(v43 + 12) = 2082;
      v59 = sub_1CEFD11AC(a4);
      v61 = v60;
      v62 = sub_1CEFD0DF0(v59, v60, &v74);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v43 + 14) = v62;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "[pathAppLibrary] Found possible container %{public}s (request: %{public}s)", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v44, -1, -1);
      MEMORY[0x1D386CDC0](v43, -1, -1);

      (*(v71 + 8))(v13, v72);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v74 = a1;
    v70 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
    return sub_1CF9E6EE8();
  }
}

void sub_1CF7D9384(unint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1CF9E7818();
    v6 = v5 - 3;
    if (v5 < 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5 - 3;
    if (v5 < 3)
    {
LABEL_11:

      return;
    }
  }

  v7 = v5 - 1;
  v8 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1D3869C30](v5 - 1, v3);
  }

  else
  {
    if (v5 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_82;
    }

    v9 = *(v3 + 8 * v7 + 32);

    v10 = v9;
  }

  v11 = v10;
  v1 = [v10 providerID];

  v7 = [v1 fp_isiCloudDriveIdentifier];
  if (!v7)
  {
    v3, v12, v13, v14, v15, v16, v17, v18;
    goto LABEL_11;
  }

  v19 = v5 - 2;
  if (v8)
  {

    v20 = MEMORY[0x1D3869C30](v19, v3);
  }

  else
  {
    if (v19 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v21 = *(v3 + 8 * v19 + 32);

    v20 = v21;
  }

  v22 = v20;
  v1 = [v20 filename];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v23;

  if (v2 == 0xD000000000000013 && 0x80000001CFA5A930 == v7)
  {
    v3, v24, v25, 0x80000001CFA5A930, v26, v27, v28, v29;
    goto LABEL_18;
  }

  v1 = sub_1CF9E8048();
  v7, v37, v38, v39, v40, v41, v42, v43;
  v7 = v3;
  if (v1)
  {
LABEL_18:
    v7, v30, v31, v32, v33, v34, v35, v36;
    if (v4)
    {
      v44 = sub_1CF9E7818();
    }

    else
    {
      v44 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = __OFSUB__(v44, 2);
    v46 = v44 - 2;
    if (!v45)
    {

      if (!(v3 >> 62))
      {
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v6 = v19 - 2;
        if (!__OFSUB__(v19, 2))
        {
          goto LABEL_24;
        }

        goto LABEL_85;
      }

LABEL_83:
      v19 = sub_1CF9E7818();
      v6 = v19 - 2;
      if (!__OFSUB__(v19, 2))
      {
LABEL_24:
        if ((v3 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 < v47)
            {
              if (v19 - 1 < v47)
              {
                v48 = *(v3 + 32 + 8 * v6);
                v49 = *(v3 + 32 + 8 * (v19 - 1));

                v50 = v48;
                v51 = v49;
LABEL_29:
                v52 = v51;
                v53 = [v51 itemIdentifier];

                [v50 setParentItemIdentifier_];
                v3, v54, v55, v56, v57, v58, v59, v60;

                return;
              }

              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_86:

        v50 = MEMORY[0x1D3869C30](v6, v3);
        v51 = MEMORY[0x1D3869C30](v19 - 1, v3);
        goto LABEL_29;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v4)
  {
    v61 = sub_1CF9E7818();
  }

  else
  {
    v61 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v61 < 4)
  {
    goto LABEL_49;
  }

  if (v8)
  {
    v62 = MEMORY[0x1D3869C30](v19, v3);
  }

  else
  {
    if (v19 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v62 = *(v3 + 8 * v19 + 32);
  }

  v63 = v62;
  v64 = [v62 isContainer];

  if (!v64)
  {
    goto LABEL_49;
  }

  if (v8)
  {
    v65 = MEMORY[0x1D3869C30](v6, v3);
    goto LABEL_43;
  }

  if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v65 = *(v3 + 8 * v6 + 32);
LABEL_43:
    v66 = v65;
    v2 = 0xE900000000000073;
    v6 = 0x746E656D75636F44;
    v7 = [v65 filename];

    v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v67;

    if (v1 == 0x746E656D75636F44 && v19 == 0xE900000000000073)
    {
      0xE900000000000073, v68, v69, v70, v71, v72, v73, v74;
      goto LABEL_47;
    }

    v6 = sub_1CF9E8048();
    v19, v75, v76, v77, v78, v79, v80, v81;
    if (v6)
    {
LABEL_47:
      if (v4)
      {
        v82 = sub_1CF9E7818();
      }

      else
      {
        v82 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = __OFSUB__(v82, 3);
      v83 = v82 - 3;
      if (!v45)
      {
        v6 = sub_1CF7D5D90(v83);
        v19 = v3;
        v2 = v3 >> 62;
        if (!(v3 >> 62))
        {
          v84 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v45 = __OFSUB__(v84, 2);
          v85 = v84 - 2;
          if (!v45)
          {
            goto LABEL_54;
          }

          goto LABEL_95;
        }

LABEL_93:
        v116 = sub_1CF9E7818();
        v45 = __OFSUB__(v116, 2);
        v85 = v116 - 2;
        if (!v45)
        {
LABEL_54:
          if ((v19 & 0xC000000000000001) == 0)
          {
            if ((v85 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v85 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v86 = *(v19 + 8 * v85 + 32);
              goto LABEL_58;
            }

            __break(1u);
            goto LABEL_99;
          }

LABEL_96:
          v86 = MEMORY[0x1D3869C30](v85, v19);
LABEL_58:
          v7 = v86;
          v87 = [objc_opt_self() appLibraryFromContainerItem:v86 documentsItem:v6];
          if (!v87)
          {
            v19, v88, v89, v90, v91, v92, v93, v94;

            return;
          }

          v1 = v87;
          v3, v88, v89, v90, v91, v92, v93, v94;
          if (v2)
          {
            v95 = sub_1CF9E7818();
          }

          else
          {
            v95 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v96 = v95 - 2;
          if (!__OFSUB__(v95, 2))
          {
            v1 = v1;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (v2 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
            {
              v3 = sub_1CF067780();
              v19 = v3;
            }

            else
            {
              v3 = v19;
            }

            if ((v96 & 0x8000000000000000) == 0)
            {
              v8 = v3 & 0xFFFFFFFFFFFFFF8;
              if (v96 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v98 = v8 + 8 * v96;
                v99 = *(v98 + 32);
                *(v98 + 32) = v1;

                if (!(v19 >> 62))
                {
                  v100 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v101 = v100 - 3;
                  if (!__OFSUB__(v100, 3))
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_104;
                }

LABEL_102:
                v100 = sub_1CF9E7818();
                v101 = v100 - 3;
                if (!__OFSUB__(v100, 3))
                {
LABEL_72:
                  if ((v3 & 0xC000000000000001) == 0)
                  {
                    if ((v101 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v102 = *(v8 + 16);
                      if (v101 < v102)
                      {
                        if (v100 - 2 < v102)
                        {
                          v103 = *(v19 + 32 + 8 * v101);
                          v104 = *(v19 + 32 + 8 * (v100 - 2));

                          v105 = v103;
                          v106 = v104;
LABEL_77:
                          v107 = v106;
                          v108 = [v106 itemIdentifier];

                          [v105 setParentItemIdentifier_];
                          v19, v109, v110, v111, v112, v113, v114, v115;

                          return;
                        }

                        goto LABEL_108;
                      }
                    }

                    __break(1u);
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

LABEL_105:
                  v117 = v100;

                  v105 = MEMORY[0x1D3869C30](v101, v19);
                  v106 = MEMORY[0x1D3869C30](v117 - 2, v19);
                  goto LABEL_77;
                }

LABEL_104:
                __break(1u);
                goto LABEL_105;
              }

LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_49:
    v3, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

LABEL_109:
  __break(1u);
}