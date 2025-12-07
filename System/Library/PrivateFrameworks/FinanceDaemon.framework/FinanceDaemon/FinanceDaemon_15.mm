uint64_t sub_226C35390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8278, &qword_226D77F20);
  v49 = v4;
  v6 = sub_226D6F0EC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v45 = v3;
    v46 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v47 = v5;
    v48 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v50 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v27 = (*(v5 + 56) + 80 * v24);
      v28 = v27[1];
      v51 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v32 = v27[4];
      v31 = v27[5];
      v33 = v27[6];
      v55 = v27[7];
      v56 = *v25;
      v53 = v27[9];
      v54 = v27[8];
      if ((v49 & 1) == 0)
      {

        sub_226ACD178(v30, v29);
        sub_226ACD178(v32, v31);
        sub_226ACD178(v33, v55);
        sub_226ACD178(v54, v53);
      }

      v52 = v32;
      v34 = v29;
      v35 = v30;
      v36 = v28;
      sub_226D6F2FC();
      sub_226D6E42C();
      result = sub_226D6F35C();
      v7 = v48;
      v37 = -1 << *(v48 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v13 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v16 = v33;
        v15 = v52;
        v17 = v31;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v13 + 8 * v39);
          if (v43 != -1)
          {
            v14 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v38) & ~*(v13 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
      v15 = v52;
      v17 = v31;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v48 + 48) + 16 * v14);
      *v18 = v56;
      v18[1] = v26;
      v19 = (*(v48 + 56) + 80 * v14);
      v11 = v50;
      *v19 = v51;
      v19[1] = v36;
      v19[2] = v35;
      v19[3] = v34;
      v19[4] = v15;
      v19[5] = v17;
      v19[6] = v16;
      v19[7] = v55;
      v19[8] = v54;
      v19[9] = v53;
      ++*(v48 + 16);
      v5 = v47;
    }

    v21 = v8;
    result = v46;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v46[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v50 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_33;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226C35704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_226D6F0EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
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
      if ((v36 & 1) == 0)
      {
      }

      sub_226D6F2FC();
      sub_226D6E42C();
      result = sub_226D6F35C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_226C3599C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
  v41 = v4;
  result = sub_226D6F0EC();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v25 = v22 | (v11 << 6);
      v26 = *(v8 + 48) + 40 * v25;
      if (v41)
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v44 = *(v26 + 32);
        v42 = v27;
        v43 = v28;
        v29 = *(v40 + 72);
        sub_226C40318(*(v8 + 56) + v29 * v25, v7, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
      }

      else
      {
        sub_226AE4FD4(v26, &v42);
        v29 = *(v40 + 72);
        sub_226C402B0(*(v8 + 56) + v29 * v25, v7, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
      }

      result = sub_226D6EE6C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 40 * v18;
      v20 = v42;
      v21 = v43;
      *(v19 + 32) = v44;
      *v19 = v20;
      *(v19 + 16) = v21;
      result = sub_226C40318(v7, *(v10 + 56) + v29 * v18, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
      ++*(v10 + 16);
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_226C35D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_226D6F0EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
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
      if ((v36 & 1) == 0)
      {
      }

      sub_226D6F2FC();
      sub_226D6E42C();
      result = sub_226D6F35C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_226C35FDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
  result = sub_226D6F0EC();
  v7 = result;
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
    v14 = result + 64;
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

      result = sub_226D6EC2C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
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
        return result;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_226C36244(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_226C36294(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  result = sub_226C40318(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for XPCActivityScheduler.ActivityInfo);
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

uint64_t sub_226C3633C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_226D6D52C();
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

unint64_t sub_226C363E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_226C36430(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_226B24A98(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_226C36498(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_226B24A98(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_226C36530(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_226B24A98(a3, (a4[7] + 32 * a1));
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

uint64_t sub_226C365F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_226C366F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_226C367AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 40 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = a4[7];
  v10 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  result = sub_226C40318(a3, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
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

unint64_t sub_226C36868(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_226D6F21C() & 1) != 0)
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

unint64_t sub_226C36934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_226D6F21C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226C369EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_226AE4FD4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA8AF20](v9, a1);
      sub_226AE5030(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226C36AB4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_226C36B20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = type metadata accessor for PermissionIdentifier(0);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v3 + 32);
  v9 = a2 & ~v8;
  if ((*(v3 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_226C402B0(*(v3 + 48) + v11 * v9, v7, type metadata accessor for PermissionIdentifier);
      sub_226D67F1C();
      sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
      sub_226D6E53C();
      sub_226D6E53C();
      if (v19 == v17 && v20 == v18)
      {
      }

      else
      {
        v12 = sub_226D6F21C();

        if ((v12 & 1) == 0)
        {
          sub_226C4075C(v7, type metadata accessor for PermissionIdentifier);
          goto LABEL_4;
        }
      }

      v13 = sub_226D6D4EC();
      sub_226C4075C(v7, type metadata accessor for PermissionIdentifier);
      if (v13)
      {
        return v9;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v3 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_226C36D84(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000025;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v5 = 0xD000000000000024;
        v6 = "ed.bankconnect.reboot";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD00000000000001FLL;
      v8 = *(*(v2 + 48) + v4) ? v6 : "com.apple.springboard";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD000000000000025 : 0xD000000000000024;
        v10 = a1 == 1 ? "com.apple.financed.orders.tasks" : "ed.bankconnect.reboot";
      }

      else
      {
        v9 = 0xD00000000000001FLL;
        v10 = "com.apple.springboard";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_226D6F21C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226C36F08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_226BCA440();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_226D6EC3C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226C36FCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_226C40248(&qword_27D7A82C0, 255, type metadata accessor for CFString, &unk_226D709FC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_226D6D77C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226C370DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_226D6E39C();
      v8 = v7;
      if (v6 == sub_226D6E39C() && v8 == v9)
      {
        break;
      }

      v11 = sub_226D6F21C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226C371E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_226C40248(v24, 255, v25, v26);
      v20 = sub_226D6E35C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void sub_226C37384()
{
  v1 = v0;
  v35 = sub_226D684AC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B30, &qword_226D72630);
  v3 = *v0;
  v4 = sub_226D6F0DC();
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

void sub_226C37604()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A28, &qword_226D72598);
  v3 = *v0;
  v4 = sub_226D6F0DC();
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

void sub_226C3788C()
{
  v1 = v0;
  v2 = _s7ChangesV11FulfillmentVMa(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A40, &unk_226D77E00);
  v4 = *v0;
  v5 = sub_226D6F0DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
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
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_226C402B0(*(v4 + 56) + v26, v30, _s7ChangesV11FulfillmentVMa);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_226C40318(v25, *(v27 + 56) + v26, _s7ChangesV11FulfillmentVMa);
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

        v1 = v29;
        v6 = v32;
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

void *sub_226C37AE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A90, &qword_226D725D0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

  return result;
}

char *sub_226C37C30()
{
  v1 = v0;
  v2 = sub_226D689EC();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA0, &unk_226D77EE0);
  v5 = *v0;
  v6 = sub_226D6F0DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_226B11B44(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_226C37EBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A18, &qword_226D77DD0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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

void *sub_226C38034()
{
  v1 = v0;
  v2 = type metadata accessor for Permission(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PermissionIdentifier(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C40, &unk_226D7AE70);
  v8 = *v0;
  v9 = sub_226D6F0DC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_226C402B0(*(v8 + 48) + v24, v7, type metadata accessor for PermissionIdentifier);
        v25 = *(v29 + 72) * v23;
        sub_226C402B0(*(v8 + 56) + v25, v4, type metadata accessor for Permission);
        sub_226C40318(v7, *(v10 + 48) + v24, type metadata accessor for PermissionIdentifier);
        result = sub_226C40318(v4, *(v10 + 56) + v25, type metadata accessor for Permission);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void sub_226C38320()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B20, &unk_226D77FC0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_226C38488()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B18, &qword_226D77EC0);
  v5 = *v0;
  v6 = sub_226D6F0DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_226C402B0(*(v5 + 56) + v22, v4, type metadata accessor for XPCActivityScheduler.ActivityInfo);
        *(*(v7 + 48) + v20) = v21;
        result = sub_226C40318(v4, *(v7 + 56) + v22, type metadata accessor for XPCActivityScheduler.ActivityInfo);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

id sub_226C386BC()
{
  v1 = v0;
  v29 = sub_226D6D52C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8260, &qword_226D77F00);
  v3 = *v0;
  v4 = sub_226D6F0DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
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

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

  return result;
}

void sub_226C38928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8268, &unk_226D77F08);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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

id sub_226C38A98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC0, &qword_226D77F60);
  v2 = *v0;
  v3 = sub_226D6F0DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_226AC4708(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_226B24A98(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

void sub_226C38C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A88, &unk_226D77ED0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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

void sub_226C38D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
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
        sub_226AC4708(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_226B24A98(v25, (*(v4 + 56) + v22));
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

void *sub_226C38F70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA8, &qword_226D725E0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_226AE4FD4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_226AC4708(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_226B24A98(v22, (*(v4 + 56) + v17));
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

  return result;
}

id sub_226C39128(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226D6F0DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

        result = v22;
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

  return result;
}

char *sub_226C392FC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v49 = a1(0);
  v52 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v38 - v10;
  v47 = (a2)(0, v9);
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_226D6F0DC();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v8;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v8 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v14;
  }

  return result;
}

void sub_226C39658(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_226D6F0DC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void *sub_226C398D4()
{
  v1 = v0;
  v29 = sub_226D6867C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A81A8, &unk_226D77E60);
  v3 = *v0;
  v4 = sub_226D6F0DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_226C39B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8278, &qword_226D77F20);
  v30 = v0;
  v1 = *v0;
  v34 = sub_226D6F0DC();
  v35 = v1;
  if (*(v1 + 16))
  {
    result = (v34 + 64);
    v3 = ((1 << *(v34 + 32)) + 63) >> 6;
    __src = (v1 + 64);
    if (v34 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, __src, 8 * v3);
    }

    v5 = 0;
    *(v34 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v1 + 64);
    v9 = (v6 + 63) >> 6;
    if (v8)
    {
      do
      {
        v10 = __clz(__rbit64(v8));
        v33 = (v8 - 1) & v8;
LABEL_17:
        v13 = v10 | (v5 << 6);
        v14 = 16 * v13;
        v15 = (*(v35 + 48) + 16 * v13);
        v17 = *v15;
        v16 = v15[1];
        v13 *= 80;
        v18 = (*(v35 + 56) + v13);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        v26 = v18[6];
        v25 = v18[7];
        v27 = v18[9];
        v32 = v18[8];
        v28 = (*(v34 + 48) + v14);
        *v28 = v17;
        v28[1] = v16;
        v29 = (*(v34 + 56) + v13);
        *v29 = v19;
        v29[1] = v20;
        v29[2] = v21;
        v29[3] = v22;
        v29[4] = v23;
        v29[5] = v24;
        v29[6] = v26;
        v29[7] = v25;
        v29[8] = v32;
        v29[9] = v27;

        sub_226ACD178(v21, v22);
        sub_226ACD178(v23, v24);
        sub_226ACD178(v26, v25);
        result = sub_226ACD178(v32, v27);
        v8 = v33;
      }

      while (v33);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_19;
      }

      v12 = *(__src + v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v34;
  }

  return result;
}

void sub_226C39D60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226D6F0DC();
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

void *sub_226C39EB8()
{
  v1 = v0;
  v2 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
  v6 = *v0;
  v7 = sub_226D6F0DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
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
        v22 = 40 * v21;
        sub_226AE4FD4(*(v6 + 48) + 40 * v21, v28);
        v23 = *(v3 + 72) * v21;
        sub_226C402B0(*(v6 + 56) + v23, v5, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
        v24 = *(v8 + 48) + v22;
        v25 = v28[0];
        v26 = v28[1];
        *(v24 + 32) = v29;
        *v24 = v25;
        *(v24 + 16) = v26;
        result = sub_226C40318(v5, *(v8 + 56) + v23, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
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

        v1 = v27;
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

  return result;
}

id sub_226C3A110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
  v2 = *v0;
  v3 = sub_226D6F0DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        result = v19;
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

  return result;
}

void sub_226C3A270(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_226C3A770(v10, v7, a3, v5);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_226C3A3F0(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_226C3A3F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v29 = a2;
  v30 = a1;
  v5 = type metadata accessor for Permission(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PermissionIdentifier(0);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = 0;
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v37 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v38 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v37;
    v22 = v32;
    sub_226C402B0(*(v37 + 48) + *(v33 + 72) * v20, v32, type metadata accessor for PermissionIdentifier);
    v23 = v20;
    v24 = *(v21 + 56) + *(v35 + 72) * v20;
    v25 = v34;
    sub_226C402B0(v24, v34, type metadata accessor for Permission);
    v26 = v39;
    v27 = v36(v22, v25);
    sub_226C4075C(v25, type metadata accessor for Permission);
    sub_226C4075C(v22, type metadata accessor for PermissionIdentifier);
    v39 = v26;
    if (v26)
    {
      return;
    }

    v15 = v38;
    if (v27)
    {
      *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_226CBC15C(v30, v29, v31, v37);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v38 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_226C3A6D4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_226C3BD60(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_226C3A770(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
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

    sub_226C3A3F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void (*sub_226C3A800(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_226C3A880;
  }

  __break(1u);
  return result;
}

void (*sub_226C3A888(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_226C40E68;
  }

  __break(1u);
  return result;
}

void *sub_226C3A908(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = 1;
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
      if (__OFADD__(v14++, 1))
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

uint64_t *sub_226C3AA60(uint64_t *result, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_226D6EDBC();
  sub_226D69D3C();
  sub_226C40248(&qword_27D7A6090, 255, MEMORY[0x277CC7A58], MEMORY[0x277D85378]);
  result = sub_226D6E8DC();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      v7 = a3;
      if (!sub_226D6EE2C())
      {
        goto LABEL_30;
      }

      sub_226D69D3C();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v15 = v10;
    if (!v11)
    {
      break;
    }

    v16 = v10;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v14 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

uint64_t sub_226C3ACD0(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8148, &qword_226D77DE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8150, &unk_226D77DF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_226C40318(v4, v16, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v28 = v8;
  v20 = *(v8 + 56);
  v20(v16, 0, 1, v7);
  v27 = v20;
  v20(v19, 1, 1, v7);
  result = sub_226AFD680(v16, v19, &qword_27D7A8148, &qword_226D77DE8);
  if (!a2)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_13;
  }

  v22 = v26;
  if (!v26)
  {
LABEL_13:
    sub_226AFD80C(v19, a1, &qword_27D7A8150, &unk_226D77DF0);
    return v22;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    a1 = (v28 + 48);
    v23 = 1;
    while (1)
    {
      sub_226AFD80C(v19, v13, &qword_27D7A8148, &qword_226D77DE8);
      v27(v19, 1, 1, v7);
      if ((*a1)(v13, 1, v7) == 1)
      {
        break;
      }

      sub_226C40318(v13, v10, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226C40318(v10, a2, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if (v22 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_226AC47B0(v13, &qword_27D7A8148, &qword_226D77DE8);
    v22 = v23 - 1;
LABEL_12:
    a1 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C3B000(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8170, &qword_226D77E28);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8178, &qword_226D77E30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_226C40318(v4, v16, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v28 = v8;
  v20 = *(v8 + 56);
  v20(v16, 0, 1, v7);
  v27 = v20;
  v20(v19, 1, 1, v7);
  result = sub_226AFD680(v16, v19, &qword_27D7A8170, &qword_226D77E28);
  if (!a2)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_13;
  }

  v22 = v26;
  if (!v26)
  {
LABEL_13:
    sub_226AFD80C(v19, a1, &qword_27D7A8178, &qword_226D77E30);
    return v22;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    a1 = (v28 + 48);
    v23 = 1;
    while (1)
    {
      sub_226AFD80C(v19, v13, &qword_27D7A8170, &qword_226D77E28);
      v27(v19, 1, 1, v7);
      if ((*a1)(v13, 1, v7) == 1)
      {
        break;
      }

      sub_226C40318(v13, v10, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226C40318(v10, a2, _s8MetadataV9CloudItemV6ObjectVMa_2);
      if (v22 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_226AC47B0(v13, &qword_27D7A8170, &qword_226D77E28);
    v22 = v23 - 1;
LABEL_12:
    a1 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_226C3B330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Permission(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_226C402B0(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for Permission);
      v23 = v22;
      v24 = v30;
      sub_226C40318(v23, v30, type metadata accessor for Permission);
      sub_226C40318(v24, a2, type metadata accessor for Permission);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_226C3B594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_226D6867C();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_226C3B850(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_226C3BAF8(uint64_t a1, uint64_t a2)
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_226D6F21C();

    if ((v5 & 1) == 0)
    {
LABEL_11:
      v7 = 0;
      return v7 & 1;
    }
  }

  v6 = type metadata accessor for Permission(0);
  if ((sub_226D6D4EC() & 1) == 0 || (MEMORY[0x22AA87A30](a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = MEMORY[0x22AA83EE0](a1 + *(v6 + 28), a2 + *(v6 + 28));
  return v7 & 1;
}

uint64_t sub_226C3BC44(uint64_t a1, uint64_t a2)
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v8 == v6 && v9 == v7)
  {
  }

  else
  {
    v3 = sub_226D6F21C();

    v4 = 0;
    if ((v3 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  type metadata accessor for PermissionIdentifier(0);
  v4 = sub_226D6D4EC();
  return v4 & 1;
}

void sub_226C3BD60(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v36 - v7;
  v8 = sub_226D6D52C();
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v47 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v42 = 0;
  v43 = v9 + 16;
  v44 = v9;
  v45 = (v9 + 8);
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_12:
    v26 = v23 | (v13 << 6);
    v27 = v8;
    (*(v44 + 16))(v12, v47[6] + *(v44 + 72) * v26, v8, v10);
    if (*(a4 + 16) && (v28 = sub_226C3049C(v12), (v29 & 1) != 0))
    {
      v30 = v28;
      v39 = *(a4 + 56);
      v31 = sub_226D67C0C();
      v32 = *(v31 - 8);
      v37 = v31;
      v38 = v32;
      v33 = v39 + *(v32 + 72) * v30;
      v34 = v46;
      (*(v32 + 16))(v46, v33, v31);
      (*(v38 + 56))(v34, 0, 1, v37);
      sub_226AC47B0(v34, &qword_27D7A6D50, &unk_226D75230);
      v8 = v27;
      (*v45)(v12, v27);
      *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_17:
        sub_226CBBCB8(v41, v40, v42, v47);
        return;
      }
    }

    else
    {
      v21 = sub_226D67C0C();
      v22 = v46;
      (*(*(v21 - 8) + 56))(v46, 1, 1, v21);
      sub_226AC47B0(v22, &qword_27D7A6D50, &unk_226D75230);
      v8 = v27;
      (*v45)(v12, v27);
    }
  }

  v24 = v13;
  while (1)
  {
    v13 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_17;
    }

    v25 = v15[v13];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v19 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_226C3C108(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_226C3A6D4(v13, v7, a1, a2);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_226C3BD60((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_226C3C2C8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v353 = a4;
  v333 = a3;
  v381 = a2;
  v359 = a1;
  v379 = sub_226D67E5C();
  v7 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v338 = &v331 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v335 = &v331 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v343 = &v331 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v357 = &v331 - v14;
  MEMORY[0x28223BE20](v15);
  v349 = &v331 - v16;
  MEMORY[0x28223BE20](v17);
  v356 = &v331 - v18;
  MEMORY[0x28223BE20](v19);
  v342 = &v331 - v20;
  MEMORY[0x28223BE20](v21);
  v339 = &v331 - v22;
  v360 = sub_226D67F1C();
  v337 = *(v360 - 8);
  MEMORY[0x28223BE20](v360 - 8);
  v344 = &v331 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v348 = &v331 - v25;
  MEMORY[0x28223BE20](v26);
  v341 = &v331 - v27;
  MEMORY[0x28223BE20](v28);
  v347 = &v331 - v29;
  MEMORY[0x28223BE20](v30);
  v350 = &v331 - v31;
  v367 = sub_226D6B9BC();
  v364 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v332 = &v331 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v334 = &v331 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v331 - v36;
  MEMORY[0x28223BE20](v38);
  v352 = &v331 - v39;
  MEMORY[0x28223BE20](v40);
  v366 = &v331 - v41;
  MEMORY[0x28223BE20](v42);
  v363 = &v331 - v43;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8110, &qword_226D77B20);
  MEMORY[0x28223BE20](v378);
  v377 = &v331 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v376 = &v331 - v46;
  MEMORY[0x28223BE20](v47);
  v375 = &v331 - v48;
  MEMORY[0x28223BE20](v49);
  v374 = &v331 - v50;
  v51 = sub_226D6D52C();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v355 = &v331 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v345 = &v331 - v55;
  MEMORY[0x28223BE20](v56);
  v346 = &v331 - v57;
  MEMORY[0x28223BE20](v58);
  v354 = &v331 - v59;
  MEMORY[0x28223BE20](v60);
  v340 = &v331 - v61;
  MEMORY[0x28223BE20](v62);
  v358 = &v331 - v63;
  MEMORY[0x28223BE20](v64);
  v361 = &v331 - v65;
  MEMORY[0x28223BE20](v66);
  v351 = &v331 - v67;
  MEMORY[0x28223BE20](v68);
  v368 = &v331 - v69;
  MEMORY[0x28223BE20](v70);
  v393 = &v331 - v71;
  v72 = *(a2 + 16);
  v383 = v73;
  v380 = v7;
  v365 = v37;
  v382 = v52;
  if (v72)
  {
    v336 = v4;
    v396 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v72, 0);
    v74 = v381;
    v394 = v396;
    v75 = v381 + 64;
    v76 = sub_226D6ED6C();
    v77 = 0;
    v395 = *(v74 + 36);
    v392 = v52 + 16;
    v373 = v7 + 16;
    v372 = v52 + 32;
    v371 = v7 + 32;
    v362 = v74 + 72;
    v369 = v72;
    v370 = v75;
    while ((v76 & 0x8000000000000000) == 0 && v76 < 1 << *(v74 + 32))
    {
      if ((*(v75 + 8 * (v76 >> 6)) & (1 << v76)) == 0)
      {
        goto LABEL_160;
      }

      if (v395 != *(v74 + 36))
      {
        goto LABEL_161;
      }

      v384 = v77;
      *&v385 = 1 << v76;
      *&v386 = v76 >> 6;
      v79 = v378;
      isa_low = SLODWORD(v378[6].isa);
      v81 = *(v74 + 48);
      v82 = *(v52 + 72);
      v389 = isa_low;
      v390 = v82;
      v388 = *(v52 + 16);
      v83 = v374;
      v84 = v76;
      v85 = v383;
      (v388)(v374, v81 + v82 * v76, v383);
      v86 = *(v74 + 56);
      v87 = *(v7 + 72);
      v391 = v84;
      v88 = v86 + v87 * v84;
      v89 = *(v7 + 16);
      v90 = v52;
      v91 = v7;
      v7 = v379;
      v89(isa_low + v83, v88, v379);
      v92 = *(v90 + 32);
      v93 = v375;
      v92(v375, v83, v85);
      v94 = SLODWORD(v79[6].isa);
      v387 = *(v91 + 32);
      (v387)(v93 + v94, v389 + v83, v7);
      v95 = v376;
      sub_226AC40E8(v93, v376, &qword_27D7A8110, &qword_226D77B20);
      v96 = SLODWORD(v79[6].isa);
      v97 = v377;
      v389 = v92;
      v92(v377, v95, v85);
      (v387)(&v97[v96], &v95[v96], v7);
      (v388)(v393, v97, v85);
      sub_226AC47B0(v97, &qword_27D7A8110, &qword_226D77B20);
      sub_226AC47B0(v93, &qword_27D7A8110, &qword_226D77B20);
      v98 = v394;
      v396 = v394;
      isa = v394[2].isa;
      v99 = v394[3].isa;
      if (isa >= v99 >> 1)
      {
        sub_226AE20D4((v99 > 1), isa + 1, 1);
        v98 = v396;
      }

      v98[2].isa = (isa + 1);
      v52 = v382;
      v101 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v394 = v98;
      v389(v98 + v101 + isa * v390, v393, v85);
      v74 = v381;
      v78 = 1 << *(v381 + 32);
      if (v391 >= v78)
      {
        goto LABEL_162;
      }

      v75 = v370;
      v102 = *(v370 + 8 * v386);
      if ((v102 & v385) == 0)
      {
        goto LABEL_163;
      }

      if (v395 != *(v381 + 36))
      {
        goto LABEL_164;
      }

      v103 = v102 & (-2 << (v391 & 0x3F));
      if (v103)
      {
        v78 = __clz(__rbit64(v103)) | v391 & 0x7FFFFFFFFFFFFFC0;
        v7 = v380;
      }

      else
      {
        v104 = v386 << 6;
        v105 = v386 + 1;
        v106 = (v362 + 8 * v386);
        v7 = v380;
        while (v105 < (v78 + 63) >> 6)
        {
          v108 = *v106++;
          v107 = v108;
          v104 += 64;
          ++v105;
          if (v108)
          {
            sub_226AE5444(v391, v395, 0);
            v78 = __clz(__rbit64(v107)) + v104;
            goto LABEL_4;
          }
        }

        sub_226AE5444(v391, v395, 0);
      }

LABEL_4:
      v77 = (&v384->isa + 1);
      v76 = v78;
      if ((&v384->isa + 1) == v369)
      {
        v7 = v365;
        v5 = v336;
        goto LABEL_22;
      }
    }

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
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v394 = MEMORY[0x277D84F90];
  v7 = v37;
LABEL_22:
  sub_226D69F0C();
  sub_226AE45DC(v394);

  v4 = v5;
  v109 = sub_226D69E3C();

  if (!v5)
  {
    v111 = v109;
    v389 = v109;
    if (!(v109 >> 62))
    {
      v112 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
      v375 = v4;
      if (v112)
      {
        v113 = 0;
        v392 = v111 & 0xFFFFFFFFFFFFFF8;
        v393 = v111 & 0xC000000000000001;
        v394 = v364 + 4;
        v388 = (v52 + 16);
        v391 = v52 + 8;
        v52 = MEMORY[0x277D84F98];
        v387 = v364 + 5;
        v390 = v112;
        while (1)
        {
          if (v393)
          {
            v115 = MEMORY[0x22AA8AFD0](v113, v111);
            v114 = v367;
            v116 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              goto LABEL_167;
            }
          }

          else
          {
            v114 = v367;
            if (v113 >= *(v392 + 16))
            {
              goto LABEL_168;
            }

            v115 = *(v111 + 8 * v113 + 32);
            v116 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              goto LABEL_167;
            }
          }

          v395 = v116;
          v7 = v368;
          sub_226D69EBC();
          v117 = v363;
          sub_226D69D5C();
          v118 = v394->isa;
          (v394->isa)(v366, v117, v114);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v396 = v52;
          v120 = sub_226C3049C(v7);
          v122 = *(v52 + 16);
          v123 = (v121 & 1) == 0;
          v124 = __OFADD__(v122, v123);
          v125 = v122 + v123;
          if (v124)
          {
            goto LABEL_169;
          }

          v126 = v121;
          if (*(v52 + 24) >= v125)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v134 = v120;
              sub_226C392FC(MEMORY[0x277CC8058], MEMORY[0x277CC95F0], &qword_27D7A82E0, &unk_226D77F78);
              v120 = v134;
            }
          }

          else
          {
            sub_226C33D10(v125, isUniquelyReferenced_nonNull_native, MEMORY[0x277CC8058], &qword_27D7A82E0, &unk_226D77F78);
            v120 = sub_226C3049C(v368);
            if ((v126 & 1) != (v127 & 1))
            {
              goto LABEL_178;
            }
          }

          v128 = v383;
          v7 = v365;
          v52 = v396;
          if (v126)
          {
            (v364[5].isa)(v396[7].isa + v364[9].isa * v120, v366, v367);

            (*v391)(v368, v128);
          }

          else
          {
            v129 = v365;
            v396[(v120 >> 6) + 8].isa = (v396[(v120 >> 6) + 8].isa | (1 << v120));
            v130 = v382;
            v131 = v120;
            v7 = v368;
            (*(v382 + 16))(*(v52 + 48) + *(v382 + 72) * v120, v368, v128);
            v118(*(v52 + 56) + v364[9].isa * v131, v366, v367);

            (*(v130 + 8))(v7, v128);
            v132 = *(v52 + 16);
            v124 = __OFADD__(v132, 1);
            v133 = v132 + 1;
            if (v124)
            {
              goto LABEL_171;
            }

            *(v52 + 16) = v133;
            v7 = v129;
            v111 = v389;
          }

          ++v113;
          if (v395 == v390)
          {
            goto LABEL_45;
          }
        }
      }

      v52 = MEMORY[0x277D84F98];
LABEL_45:

      v396 = MEMORY[0x277D84FA0];
      v135 = *(v52 + 64);
      v393 = v52 + 64;
      v136 = 1 << *(v52 + 32);
      v137 = -1;
      if (v136 < 64)
      {
        v137 = ~(-1 << v136);
      }

      v138 = v137 & v135;
      v139 = (v136 + 63) >> 6;
      v389 = (v382 + 16);
      v390 = v52;
      v395 = v382 + 8;
      swift_bridgeObjectRetain_n();
      v140 = 0;
      for (i = v382; v138; v7 = v365)
      {
        v142 = v140;
        v52 = v390;
LABEL_54:
        v144 = __clz(__rbit64(v138));
        v138 &= v138 - 1;
        v145 = *(v52 + 48) + i[9] * (v144 | (v142 << 6));
        v146 = i[2];
        v147 = v351;
        v148 = v383;
        v146(v351, v145, v383);
        v149 = v358;
        v146(v358, v147, v148);
        v150 = v361;
        sub_226C2514C(v361, v149);
        v151 = i[1];
        v151(v150, v148);
        v151(v147, v148);
      }

      v143 = v383;
      v52 = v390;
      while (1)
      {
        v142 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
          goto LABEL_165;
        }

        if (v142 >= v139)
        {
          break;
        }

        v138 = *(v393 + 8 * v142);
        ++v140;
        if (v138)
        {
          v140 = v142;
          goto LABEL_54;
        }
      }

      v377 = v396;
      v152 = 1 << *(v52 + 32);
      v153 = -1;
      if (v152 < 64)
      {
        v153 = ~(-1 << v152);
      }

      v154 = v153 & *(v52 + 64);
      v4 = (v152 + 63) >> 6;
      v387 = v364 + 2;
      v394 = v337 + 2;
      *&v385 = v364 + 4;
      v388 = v364 + 1;
      v391 = &v337[1];

      v155 = 0;
      *&v156 = 136315394;
      v386 = v156;
      v392 = v4;
      v157 = v360;
      while (1)
      {
        v158 = v352;
        if (!v154)
        {
          break;
        }

        v159 = v155;
LABEL_66:
        v160 = v143;
        v161 = *(v52 + 56) + v364[9].isa * (__clz(__rbit64(v154)) | (v159 << 6));
        v162 = v367;
        (v364[2].isa)(v352, v161, v367);
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v154 &= v154 - 1;
        v163 = sub_226D6E07C();
        __swift_project_value_buffer(v163, qword_27D7A7CF8);
        v164 = v350;
        (v394->isa)(v350, v359, v157);
        (*v385)(v7, v158, v162);
        v165 = sub_226D6E05C();
        v166 = sub_226D6E9EC();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v396 = v168;
          *v167 = v386;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
          v384 = v165;
          v169 = sub_226D6F1CC();
          LODWORD(v378) = v166;
          v171 = v170;
          (*v391)(v164, v157);
          v172 = sub_226AC4530(v169, v171, &v396);

          *(v167 + 4) = v172;
          *(v167 + 12) = 2080;
          sub_226C40248(&qword_27D7A6E40, 255, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          v173 = sub_226D6F1CC();
          v175 = v174;
          (v388->isa)(v365, v162);
          v176 = sub_226AC4530(v173, v175, &v396);

          *(v167 + 14) = v176;
          v177 = v384;
          _os_log_impl(&dword_226AB4000, v384, v378, "Upserting association between app (%s) with account: %s", v167, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v168, -1, -1);
          v7 = v365;
          v143 = v383;
          MEMORY[0x22AA8BEE0](v167, -1, -1);

          v155 = v159;
        }

        else
        {

          (v388->isa)(v7, v162);
          (*v391)(v164, v157);
          v155 = v159;
          v143 = v160;
        }

        v4 = v392;
        v52 = v390;
      }

      while (1)
      {
        v159 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_166;
        }

        if (v159 >= v4)
        {
          break;
        }

        v154 = *(v393 + 8 * v159);
        ++v155;
        if (v154)
        {
          goto LABEL_66;
        }
      }

      v178 = v143;

      v179 = sub_226D683BC();
      v4 = v375;
      v180 = sub_226D6836C();
      if (v4)
      {
      }

      v181 = v180;
      v375 = 0;
      v396 = MEMORY[0x277D84FA0];
      if (v180 >> 62)
      {
        v182 = sub_226D6EDFC();
      }

      else
      {
        v182 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v183 = v380;
      v7 = v355;
      v372 = v179;
      v392 = v182;
      v393 = v181;
      if (v182)
      {
        v184 = 0;
        v185 = v181 & 0xC000000000000001;
        v186 = v181 & 0xFFFFFFFFFFFFFF8;
        v187 = v361;
        do
        {
          if (v185)
          {
            v188 = MEMORY[0x22AA8AFD0](v184, v181);
          }

          else
          {
            if (v184 >= *(v186 + 16))
            {
              goto LABEL_173;
            }

            v188 = *(v181 + 8 * v184 + 32);
          }

          v189 = v188;
          v190 = v184 + 1;
          if (__OFADD__(v184, 1))
          {
            goto LABEL_172;
          }

          v191 = [v188 accountID];
          v7 = v358;
          sub_226D6D4FC();

          sub_226C2514C(v187, v7);
          v181 = v393;
          (*v395)(v187, v383);
          ++v184;
        }

        while (v190 != v392);
        v192 = v396;
        v193 = v383;
        v183 = v380;
        v7 = v355;
      }

      else
      {
        v192 = MEMORY[0x277D84FA0];
        v193 = v178;
      }

      if (*(v192 + 16) <= *(v377 + 2) >> 3)
      {
        v396 = v377;
        sub_226D53B1C(v192);

        v195 = v396;
      }

      else
      {
        v194 = sub_226D53F8C(v192, v377);

        v195 = v194;
      }

      v196 = 0;
      v197 = v195 + 56;
      v198 = 1 << *(v195 + 32);
      v199 = -1;
      if (v198 < 64)
      {
        v199 = ~(-1 << v198);
      }

      v200 = v199 & *(v195 + 56);
      v201 = (v198 + 63) >> 6;
      v202 = v381;
      v368 = v382 + 32;
      v374 = (v183 + 16);
      v373 = v183 + 8;
      v370 = v195 + 56;
      v369 = v201;
      v371 = v195;
      while (v200)
      {
        v204 = v196;
LABEL_97:
        v205 = v382;
        v206 = *(v382 + 16);
        v207 = v340;
        v206(v340, *(v195 + 48) + *(v382 + 72) * (__clz(__rbit64(v200)) | (v204 << 6)), v193);
        v208 = v354;
        (*(v205 + 32))(v354, v207, v193);
        *&v385 = v394->isa;
        (v385)(v347, v359, v360);
        v376 = v206;
        v206(v346, v208, v193);
        v52 = v390;
        if (!*(v390 + 16))
        {
          v384 = 0;
          v377 = 0;
          v378 = 0;
          if (!*(v202 + 16))
          {
            goto LABEL_111;
          }

          goto LABEL_108;
        }

        v209 = sub_226C3049C(v208);
        v210 = v367;
        if (v211)
        {
          v212 = v364;
          v213 = v334;
          (v364[2].isa)(v334, *(v52 + 56) + v364[9].isa * v209, v367);
          v378 = sub_226D6B97C();
          v384 = v214;
          (v212[1].isa)(v213, v210);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }
        }

        else
        {
          v378 = 0;
          v384 = 0;
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }
        }

        v215 = sub_226C3049C(v208);
        if (v216)
        {
          v217 = v364;
          v218 = v332;
          (v364[2].isa)(v332, *(v52 + 56) + v364[9].isa * v215, v210);
          v377 = sub_226D6B9AC();
          (v217[1].isa)(v218, v210);
          goto LABEL_107;
        }

LABEL_106:
        v377 = 0;
LABEL_107:
        if (!*(v381 + 16))
        {
          goto LABEL_111;
        }

LABEL_108:
        v219 = sub_226C3049C(v354);
        if ((v220 & 1) == 0)
        {
LABEL_111:
          v225 = sub_226D6D4AC();
          v224 = v342;
          (*(*(v225 - 8) + 56))(v342, 1, 1, v225);
          goto LABEL_112;
        }

        v221 = v379;
        v222 = v380;
        v223 = v335;
        (*(v380 + 16))(v335, *(v381 + 56) + *(v380 + 72) * v219, v379);
        v224 = v342;
        sub_226D67E1C();
        (*(v222 + 8))(v223, v221);
        v225 = sub_226D6D4AC();
        v226 = *(v225 - 8);
        if ((*(v226 + 48))(v224, 1, v225) != 1)
        {
          v228 = v339;
          (*(v226 + 32))(v339, v224, v225);
          (*(v226 + 56))(v228, 0, 1, v225);
          goto LABEL_115;
        }

LABEL_112:
        sub_226D6D4AC();
        v227 = *(v225 - 8);
        (*(v227 + 56))(v339, 1, 1, v225);
        if ((*(v227 + 48))(v224, 1, v225) != 1)
        {
          sub_226AC47B0(v224, &qword_27D7A8BE0, &unk_226D718F0);
        }

LABEL_115:
        v229 = v353;

        v230 = v341;
        v231 = v345;
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v200 &= v200 - 1;
        v232 = sub_226D6E07C();
        __swift_project_value_buffer(v232, qword_27D7A7CF8);
        v233 = v360;
        (v385)(v230, v359, v360);
        v234 = v383;
        (v376)(v231, v354, v383);
        v235 = sub_226D6E05C();
        v236 = sub_226D6E9EC();
        if (os_log_type_enabled(v235, v236))
        {
          v237 = swift_slowAlloc();
          *&v385 = swift_slowAlloc();
          v396 = v385;
          *v237 = v386;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
          LODWORD(v384) = v236;
          v238 = v230;
          v239 = sub_226D6F1CC();
          v378 = v235;
          v240 = v239;
          v242 = v241;
          (*v391)(v238, v233);
          v243 = sub_226AC4530(v240, v242, &v396);

          *(v237 + 4) = v243;
          *(v237 + 12) = 2080;
          sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v244 = v345;
          v245 = sub_226D6F1CC();
          v247 = v246;
          v377 = *v395;
          (v377)(v244, v234);
          v248 = sub_226AC4530(v245, v247, &v396);

          *(v237 + 14) = v248;
          v249 = v378;
          _os_log_impl(&dword_226AB4000, v378, v384, "Adding association between app (%s) with account: %s", v237, 0x16u);
          v250 = v385;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v250, -1, -1);
          MEMORY[0x22AA8BEE0](v237, -1, -1);

          (v377)(v354, v234);
        }

        else
        {

          v203 = *v395;
          (*v395)(v231, v234);
          (*v391)(v230, v233);
          (v203)(v354, v234);
        }

        v196 = v204;
        v193 = v234;
        v202 = v381;
        v7 = v355;
        v195 = v371;
        v197 = v370;
        v201 = v369;
      }

      while (1)
      {
        v204 = v196 + 1;
        if (__OFADD__(v196, 1))
        {
          goto LABEL_170;
        }

        if (v204 >= v201)
        {
          break;
        }

        v200 = *(v197 + 8 * v204);
        ++v196;
        if (v200)
        {
          goto LABEL_97;
        }
      }

      if (v333)
      {
        v252 = v393;
        if (v392)
        {
          if (v392 >= 1)
          {
            v253 = 0;
            v388 = (v393 & 0xC000000000000001);
            v254 = &qword_27D7A8BE0;
            *&v251 = 136315650;
            v385 = v251;
            while (1)
            {
              if (v388)
              {
                v256 = MEMORY[0x22AA8AFD0](v253, v252);
              }

              else
              {
                v256 = *(v252 + 8 * v253 + 32);
              }

              v257 = v256;
              v258 = v254;
              v259 = [v256 accountID];
              sub_226D6D4FC();

              if (*(v381 + 16) && (v260 = sub_226C3049C(v7), (v261 & 1) != 0))
              {
                v262 = v379;
                v263 = v380;
                v264 = v338;
                (*(v380 + 16))(v338, *(v381 + 56) + *(v380 + 72) * v260, v379);
                v389 = *v395;
                (v389)(v7, v193);
                v265 = v349;
                sub_226D67E1C();
                (*(v263 + 8))(v264, v262);
                v266 = sub_226D6D4AC();
                v267 = *(v266 - 8);
                if ((*(v267 + 48))(v265, 1, v266) != 1)
                {
                  v270 = v356;
                  (*(v267 + 32))(v356, v265, v266);
                  (*(v267 + 56))(v270, 0, 1, v266);
                  v269 = v357;
                  goto LABEL_137;
                }
              }

              else
              {
                v389 = *v395;
                (v389)(v7, v193);
                v266 = sub_226D6D4AC();
                v265 = v349;
                (*(*(v266 - 8) + 56))(v349, 1, 1, v266);
              }

              sub_226D6D4AC();
              v268 = *(v266 - 8);
              (*(v268 + 56))(v356, 1, 1, v266);
              if ((*(v268 + 48))(v265, 1, v266) == 1)
              {
                v269 = v357;
                v270 = v356;
LABEL_137:
                v272 = v348;
                v254 = v258;
                goto LABEL_138;
              }

              v271 = v265;
              v254 = v258;
              sub_226AC47B0(v271, v258, &unk_226D718F0);
              v269 = v357;
              v270 = v356;
              v272 = v348;
LABEL_138:
              sub_226D6837C();
              if (qword_27D7A5F58 != -1)
              {
                swift_once();
              }

              v273 = sub_226D6E07C();
              __swift_project_value_buffer(v273, qword_27D7A7CF8);
              v274 = v360;
              (v394->isa)(v272, v359, v360);
              sub_226AC40E8(v270, v269, v254, &unk_226D718F0);
              v275 = v257;
              v276 = sub_226D6E05C();
              v277 = sub_226D6E9EC();

              LODWORD(v390) = v277;
              if (os_log_type_enabled(v276, v277))
              {
                v387 = v276;
                v278 = v254;
                v279 = swift_slowAlloc();
                *&v386 = swift_slowAlloc();
                v396 = v386;
                *v279 = v385;
                sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
                v280 = sub_226D6F1CC();
                v282 = v281;
                (*v391)(v272, v274);
                v283 = sub_226AC4530(v280, v282, &v396);

                *(v279 + 4) = v283;
                *(v279 + 12) = 2080;
                v284 = [v275 accountID];
                v285 = v361;
                sub_226D6D4FC();

                sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v286 = v383;
                v287 = sub_226D6F1CC();
                v289 = v288;
                (v389)(v285, v286);
                v290 = sub_226AC4530(v287, v289, &v396);

                *(v279 + 14) = v290;
                *(v279 + 22) = 2080;
                v291 = v343;
                sub_226AC40E8(v357, v343, v278, &unk_226D718F0);
                v292 = sub_226D6D4AC();
                v293 = *(v292 - 8);
                if ((*(v293 + 48))(v291, 1, v292) == 1)
                {
                  sub_226AC47B0(v291, v278, &unk_226D718F0);
                  v294 = 0xE300000000000000;
                  v295 = 7104878;
                  v296 = v278;
                  v255 = v392;
                  v252 = v393;
                }

                else
                {
                  v389 = v275;
                  v297 = v278;
                  v298 = v291;
                  v295 = sub_226D6D38C();
                  v294 = v299;
                  (*(v293 + 8))(v298, v292);
                  v255 = v392;
                  v252 = v393;
                  v296 = v297;
                  v275 = v389;
                }

                sub_226AC47B0(v357, v296, &unk_226D718F0);
                v300 = sub_226AC4530(v295, v294, &v396);
                v301 = v296;
                v302 = v300;

                *(v279 + 24) = v302;
                v303 = v387;
                _os_log_impl(&dword_226AB4000, v387, v390, "Updating association between app (%s) with account: %s to %s", v279, 0x20u);
                v304 = v386;
                swift_arrayDestroy();
                MEMORY[0x22AA8BEE0](v304, -1, -1);
                MEMORY[0x22AA8BEE0](v279, -1, -1);

                sub_226AC47B0(v356, v301, &unk_226D718F0);
                v254 = v301;
              }

              else
              {

                sub_226AC47B0(v357, v254, &unk_226D718F0);
                (*v391)(v272, v274);
                sub_226AC47B0(v270, v254, &unk_226D718F0);
                v255 = v392;
                v252 = v393;
              }

              ++v253;
              v193 = v383;
              v7 = v355;
              if (v255 == v253)
              {
              }
            }
          }

          __break(1u);
          goto LABEL_177;
        }
      }

      else
      {
        v305 = v344;
        v306 = v393;
        v307 = v359;
        if (v392)
        {
          if (v392 < 1)
          {
LABEL_177:
            __break(1u);
LABEL_178:
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v308 = 0;
          v390 = v393 & 0xC000000000000001;
          do
          {
            if (v390)
            {
              v323 = MEMORY[0x22AA8AFD0](v308, v306);
            }

            else
            {
              v323 = *(v306 + 8 * v308 + 32);
            }

            v324 = v323;
            if (qword_27D7A5F58 != -1)
            {
              swift_once();
            }

            v325 = sub_226D6E07C();
            __swift_project_value_buffer(v325, qword_27D7A7CF8);
            v326 = v360;
            (v394->isa)(v305, v307, v360);
            v327 = v324;
            v328 = sub_226D6E05C();
            v329 = sub_226D6E9EC();

            if (os_log_type_enabled(v328, v329))
            {
              v309 = swift_slowAlloc();
              v389 = swift_slowAlloc();
              v396 = v389;
              *v309 = v386;
              sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
              v310 = sub_226D6F1CC();
              v312 = v311;
              (*v391)(v305, v326);
              v313 = sub_226AC4530(v310, v312, &v396);

              *(v309 + 4) = v313;
              *(v309 + 12) = 2080;
              v314 = [v327 accountID];
              v315 = v361;
              sub_226D6D4FC();

              sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v316 = v383;
              v317 = sub_226D6F1CC();
              v319 = v318;
              v320 = v315;
              v305 = v344;
              (*v395)(v320, v316);
              v321 = sub_226AC4530(v317, v319, &v396);

              *(v309 + 14) = v321;
              _os_log_impl(&dword_226AB4000, v328, v329, "App (%s) can already access account: %s. Ignoring", v309, 0x16u);
              v322 = v389;
              swift_arrayDestroy();
              v307 = v359;
              MEMORY[0x22AA8BEE0](v322, -1, -1);
              MEMORY[0x22AA8BEE0](v309, -1, -1);
            }

            else
            {

              (*v391)(v305, v326);
            }

            ++v308;
            v306 = v393;
          }

          while (v392 != v308);
        }
      }
    }

LABEL_174:
    v330 = sub_226D6EDFC();
    v111 = v389;
    v112 = v330;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_226C3ECD8()
{
  v1 = v0[5];
  sub_226C1FE0C(v0[2], v0[3], v0[4]);
  return sub_226C21460(v1 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL);
}

uint64_t sub_226C3ED28(uint64_t a1, void *a2, unint64_t a3)
{
  v74 = a3;
  v58 = sub_226D6D52C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v9 = sub_226D67F1C();
  v72 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6B9BC();
  v73 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  sub_226D69F0C();
  v18 = v75;
  v19 = sub_226D69E3C();
  if (!v18)
  {
    v21 = v19;
    v22 = v72;
    v75 = v19;
    v76 = v17;
    v69 = v14;
    v70 = v9;
    v71 = v12;
    if (v19 >> 62)
    {
      goto LABEL_29;
    }

    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v24 = v11;
      v25 = v70;
      v26 = v71;
      v27 = v69;
      if (!result)
      {
        break;
      }

      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v56 = 0;
      v28 = 0;
      v74 = v21 & 0xC000000000000001;
      v66 = (v73 + 16);
      v67 = (v22 + 2);
      v64 = (v22 + 1);
      v65 = (v73 + 8);
      *&v20 = 136315394;
      v60 = v20;
      v73 = result;
      v61 = a2;
      v62 = v5;
      v68 = v8;
      v59 = v24;
      do
      {
        if (v74)
        {
          v31 = MEMORY[0x22AA8AFD0](v28, v21);
        }

        else
        {
          v31 = *(v21 + 8 * v28 + 32);
        }

        v32 = v76;
        v72 = v31;
        sub_226D69D5C();
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v33 = sub_226D6E07C();
        __swift_project_value_buffer(v33, qword_27D7A7CF8);
        (*v67)(v24, a2, v25);
        (*v66)(v27, v32, v26);
        v34 = sub_226D6E05C();
        v35 = v24;
        v36 = sub_226D6E9EC();
        if (os_log_type_enabled(v34, v36))
        {
          v37 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v77 = v63;
          *v37 = v60;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
          v38 = v35;
          v39 = sub_226D6F1CC();
          v41 = v40;
          (*v64)(v38, v25);
          v42 = sub_226AC4530(v39, v41, &v77);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2080;
          sub_226C40248(&qword_27D7A6E40, 255, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          v43 = v71;
          v44 = sub_226D6F1CC();
          v46 = v45;
          v47 = v27;
          v48 = *v65;
          (*v65)(v47, v43);
          v49 = sub_226AC4530(v44, v46, &v77);
          a2 = v61;

          *(v37 + 14) = v49;
          _os_log_impl(&dword_226AB4000, v34, v36, "Trying to delete association between app (%s) with account: %s", v37, 0x16u);
          v22 = v63;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v22, -1, -1);
          v50 = v37;
          v5 = v62;
          MEMORY[0x22AA8BEE0](v50, -1, -1);

          v48(v76, v43);
          v24 = v59;
        }

        else
        {

          v29 = v35;
          v22 = v25;
          v30 = *v65;
          (*v65)(v27, v26);
          (*v64)(v29, v22);
          v30(v76, v26);
          v24 = v29;
        }

        ++v28;
        v8 = v68;
        v27 = v69;
        v21 = v75;
        v25 = v70;
        v26 = v71;
      }

      while (v73 != v28);
      v51 = 0;
      v77 = MEMORY[0x277D84FA0];
      v52 = v75 & 0xFFFFFFFFFFFFFF8;
      v53 = (v57 + 8);
      v11 = v58;
      while (1)
      {
        if (v74)
        {
          v54 = MEMORY[0x22AA8AFD0](v51, v21);
        }

        else
        {
          if (v51 >= *(v52 + 16))
          {
            goto LABEL_28;
          }

          v54 = *(v21 + 8 * v51 + 32);
        }

        a2 = v54;
        v55 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        sub_226D69EBC();
        v22 = &v77;
        sub_226C2514C(v8, v5);

        (*v53)(v8, v11);
        ++v51;
        v21 = v75;
        if (v55 == v73)
        {
          v17 = v77;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_226D6EDFC();
      v21 = v75;
    }

    v17 = MEMORY[0x277D84FA0];
LABEL_25:
  }

  return v17;
}

uint64_t sub_226C3F420(void *a1, uint64_t a2, char a3, int64_t a4)
{
  v5 = v4;
  v97 = sub_226D6D52C();
  v83 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v88 = &v76 - v15;
  v89 = sub_226D67F1C();
  v80 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  if ((a3 & 1) == 0)
  {

    v78 = a2;
    v21 = a2;
    goto LABEL_5;
  }

  result = sub_226C3ED28(a2, a1, a4);
  if (!v4)
  {
    v21 = result;
    v78 = a2;
LABEL_5:
    sub_226D683BC();
    v22 = sub_226D6836C();
    if (v4)
    {
    }

    v24 = v22;
    v77 = v21;
    if (v22 >> 62)
    {
      goto LABEL_42;
    }

    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v87 = a1;
      v79 = v11;
      v76 = v5;
      if (result)
      {
        v25 = v89;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        v93 = (v80 + 16);
        v94 = v24 & 0xC000000000000001;
        v92 = (v80 + 8);
        v85 = (v83 + 8);
        *&v23 = 136315394;
        v84 = v23;
        v95 = result;
        v96 = v24;
        v86 = a4;
        do
        {
          if (v94)
          {
            v40 = MEMORY[0x22AA8AFD0](v5);
          }

          else
          {
            v40 = *(v24 + 8 * v5 + 32);
          }

          v41 = v40;
          [a4 deleteObject_];
          if (qword_27D7A5F58 != -1)
          {
            swift_once();
          }

          v42 = sub_226D6E07C();
          __swift_project_value_buffer(v42, qword_27D7A7CF8);
          (*v93)(v19, a1, v25);
          v43 = v41;
          v44 = sub_226D6E05C();
          v45 = sub_226D6E9EC();

          if (os_log_type_enabled(v44, v45))
          {
            v26 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v98 = v91;
            *v26 = v84;
            sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
            LODWORD(v90) = v45;
            v27 = sub_226D6F1CC();
            v29 = v28;
            (*v92)(v19, v25);
            v30 = sub_226AC4530(v27, v29, &v98);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2080;
            v31 = [v43 accountID];
            v32 = v88;
            sub_226D6D4FC();

            sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v33 = v97;
            v34 = sub_226D6F1CC();
            v36 = v35;
            v37 = v33;
            v25 = v89;
            (v85->isa)(v32, v37);
            v38 = sub_226AC4530(v34, v36, &v98);
            a4 = v86;

            *(v26 + 14) = v38;
            _os_log_impl(&dword_226AB4000, v44, v90, "Removing association between app (%s) with account: %s", v26, 0x16u);
            v39 = v91;
            swift_arrayDestroy();
            a1 = v87;
            MEMORY[0x22AA8BEE0](v39, -1, -1);
            MEMORY[0x22AA8BEE0](v26, -1, -1);
          }

          else
          {

            (*v92)(v19, v25);
          }

          v24 = v96;
          ++v5;
        }

        while (v95 != v5);
      }

      v46 = v77;
      v47 = v78;
      if (*(v77 + 16) <= *(v78 + 16) >> 3)
      {
        v98 = v78;

        sub_226D53B1C(v46);

        v96 = v98;
      }

      else
      {

        v96 = sub_226D53F8C(v46, v47);
      }

      v49 = v97;
      v50 = 0;
      v11 = (v96 + 56);
      v51 = 1 << *(v96 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v19 = v52 & *(v96 + 56);
      v53 = (v51 + 63) >> 6;
      v94 = v83 + 16;
      v54 = v81;
      v92 = (v83 + 32);
      v93 = (v80 + 16);
      v91 = (v83 + 8);
      v90 = (v80 + 8);
      *&v48 = 136315394;
      v84 = v48;
      v95 = v53;
      while (v19)
      {
        a4 = v50;
        v56 = v82;
LABEL_35:
        (*(v83 + 16))(v54, *(v96 + 48) + *(v83 + 72) * (__clz(__rbit64(v19)) | (a4 << 6)), v49);
        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v19 &= v19 - 1;
        v57 = sub_226D6E07C();
        __swift_project_value_buffer(v57, qword_27D7A7CF8);
        v5 = v89;
        (*v93)(v56, a1, v89);
        v58 = v79;
        (*v92)(v79, v54, v97);
        v59 = sub_226D6E05C();
        v60 = sub_226D6E9EC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v98 = v88;
          *v61 = v84;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
          LODWORD(v86) = v60;
          v62 = v56;
          v63 = sub_226D6F1CC();
          v85 = v59;
          v64 = v63;
          v66 = v65;
          (*v90)(v62, v5);
          v67 = sub_226AC4530(v64, v66, &v98);

          *(v61 + 4) = v67;
          *(v61 + 12) = 2080;
          sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v5 = v97;
          v68 = sub_226D6F1CC();
          v70 = v69;
          (*v91)(v58, v5);
          v71 = sub_226AC4530(v68, v70, &v98);

          *(v61 + 14) = v71;
          v72 = v85;
          _os_log_impl(&dword_226AB4000, v85, v86, "App with bundleId %s cannot already access account: %s. Ignoring deletion", v61, 0x16u);
          v73 = v88;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v73, -1, -1);
          v74 = v61;
          a1 = v87;
          MEMORY[0x22AA8BEE0](v74, -1, -1);

          v50 = a4;
          v49 = v5;
        }

        else
        {

          v55 = v58;
          v49 = v97;
          (*v91)(v55, v97);
          (*v90)(v56, v5);
          v50 = a4;
        }

        v54 = v81;
        v53 = v95;
      }

      v56 = v82;
      while (1)
      {
        a4 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (a4 >= v53)
        {
        }

        v19 = *&v11[8 * a4];
        ++v50;
        if (v19)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_42:
      v75 = v24;
      result = sub_226D6EDFC();
      v24 = v75;
    }
  }

  return result;
}

void sub_226C3FE48(unint64_t a1, void *a2)
{
  v40 = sub_226D6D52C();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v7 = sub_226D6EDFC();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v34 = (v4 + 8);
    *&v5 = 136315394;
    v33 = v5;
    v37 = a1;
    v38 = a2;
    v35 = a1 & 0xC000000000000001;
    v36 = v7;
    do
    {
      if (v9)
      {
        v10 = MEMORY[0x22AA8AFD0](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      [a2 deleteObject_];
      if (qword_27D7A5F58 != -1)
      {
        swift_once();
      }

      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_27D7A7CF8);
      v13 = v11;
      v14 = sub_226D6E05C();
      v15 = sub_226D6E9EC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v16 = v33;
        v17 = [v13 bundleID];
        v18 = sub_226D6E39C();
        v20 = v19;

        v21 = sub_226AC4530(v18, v20, &v42);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        v22 = [v13 accountID];
        v23 = v39;
        sub_226D6D4FC();

        sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v24 = v40;
        v25 = sub_226D6F1CC();
        v27 = v26;
        v28 = v24;
        v9 = v35;
        (*v34)(v23, v28);
        v29 = sub_226AC4530(v25, v27, &v42);
        v7 = v36;

        *(v16 + 14) = v29;
        _os_log_impl(&dword_226AB4000, v14, v15, "Removing association between app (%s) with account: %s", v16, 0x16u);
        v30 = v41;
        swift_arrayDestroy();
        a1 = v37;
        MEMORY[0x22AA8BEE0](v30, -1, -1);
        v31 = v16;
        a2 = v38;
        MEMORY[0x22AA8BEE0](v31, -1, -1);
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

uint64_t sub_226C40248(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226C402B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C40318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C403AC(uint64_t a1)
{
  result = sub_226D6D1AC();
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

uint64_t sub_226C404C4(uint64_t a1)
{
  result = sub_226D67F1C();
  if (v2 <= 0x3F)
  {
    result = sub_226D6D52C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226C40570(uint64_t a1)
{
  result = sub_226D67F1C();
  if (v2 <= 0x3F)
  {
    result = sub_226D6D52C();
    if (v3 <= 0x3F)
    {
      result = sub_226D6B9BC();
      if (v4 <= 0x3F)
      {
        result = sub_226D67E5C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_226C40708()
{
  result = qword_281062550;
  if (!qword_281062550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062550);
  }

  return result;
}

uint64_t sub_226C4075C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C407BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Permission(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C40820(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8188, &unk_226D77E40);
    sub_226C40248(a2, 255, type metadata accessor for Permission, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226C408C0()
{
  result = qword_27D7A81C8;
  if (!qword_27D7A81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A81C8);
  }

  return result;
}

uint64_t sub_226C40914(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for Permission(0);
  return MEMORY[0x22AA87A30](a1 + *(v4 + 24), v3) & 1;
}

uint64_t getEnumTagSinglePayload for Permission.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Permission.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226C40AD8()
{
  result = qword_27D7A8318;
  if (!qword_27D7A8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8318);
  }

  return result;
}

unint64_t sub_226C40B30()
{
  result = qword_27D7A8320;
  if (!qword_27D7A8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8320);
  }

  return result;
}

unint64_t sub_226C40B88()
{
  result = qword_27D7A8328;
  if (!qword_27D7A8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8328);
  }

  return result;
}

unint64_t sub_226C40BE0()
{
  result = qword_27D7A8330;
  if (!qword_27D7A8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8330);
  }

  return result;
}

unint64_t sub_226C40C38()
{
  result = qword_281062540;
  if (!qword_281062540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062540);
  }

  return result;
}

unint64_t sub_226C40C90()
{
  result = qword_281062548;
  if (!qword_281062548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062548);
  }

  return result;
}

uint64_t sub_226C40CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_226D6F21C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x634163696C627570 && a2 == 0xEF4449746E756F63 || (sub_226D6F21C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000226D83A90 == a2 || (sub_226D6F21C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000226D83AB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_226D6F21C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_226C40EA4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_226D6BE1C();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_226AE200C(0, v9, 0);
  v10 = v22;
  v11 = *(sub_226D6CD7C() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_226AE200C((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_226C410A8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for OfflineLabAccountInfo(0);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v24 = MEMORY[0x277D84F90];
    sub_226AE21A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x22AA8AFD0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226AE21A0((v14 > 1), v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_226B51660(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_226C412CC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v24 = MEMORY[0x277D84F90];
    sub_226AE22DC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x22AA8AFD0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226AE22DC((v14 > 1), v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_226AFD80C(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, &qword_27D7A6110, &qword_226D70B18);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_226C41508(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = MEMORY[0x277D84F90];
  sub_226AE26A0(0, v5, 0);
  v6 = v27;
  v8 = *(sub_226D6904C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v22(v24, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v27 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_226AE26A0((v11 > 1), v12 + 1, 1);
    }

    v13 = v25;
    v14 = v26;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    sub_226C45924(v12, v18, &v27, v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v6 = v27;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_226C41750(void (*a1)(id *), unint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v27);
  v12 = &v21 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v14 = a3;
    v31 = MEMORY[0x277D84F90];
    a3 = &v31;
    (a5)(0, i & ~(i >> 63), 0, v10);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v31;
    v17 = v14;
    v25 = v14;
    v26 = v14 & 0xC000000000000001;
    v21 = a5;
    v22 = v14 & 0xFFFFFFFFFFFFFF8;
    v23 = v9 + 32;
    v24 = i;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26)
      {
        v19 = MEMORY[0x22AA8AFD0](v15, v17);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * v15 + 32);
      }

      i = v19;
      v30 = v19;
      a3 = v29;
      v28(&v30);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v31 = v16;
      a5 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (a5 >= v20 >> 1)
      {
        a3 = &v31;
        v21(v20 > 1, a5 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = a5 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v12, v27);
      ++v15;
      v17 = v25;
      if (v18 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_226C419A8(void (*a1)(void *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v24 = a1;
  v25 = a2;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v30 = MEMORY[0x277D84F90];
    sub_226AE26A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v30;
    v22 = v6;
    v23 = v6 & 0xC000000000000001;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v23)
      {
        v11 = MEMORY[0x22AA8AFD0](v8, v6);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v4 = v11;
      v26 = v11;
      v24(v27, &v26);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v30 = v9;
      v4 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v4 >= v12 >> 1)
      {
        sub_226AE26A0((v12 > 1), v4 + 1, 1);
      }

      v13 = v28;
      v14 = v29;
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v16 = MEMORY[0x28223BE20](v15);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18, v16);
      sub_226C45924(v4, v18, &v30, v13, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v9 = v30;
      ++v8;
      v6 = v22;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_226C41BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_226AC40E8(a3, v22 - v9, &unk_27D7A8BA0, &qword_226D734E0);
  v11 = sub_226D6E79C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_226AC47B0(v10, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_226D6E6CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_226D6E40C() + 32;
      sub_226D68FEC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
  sub_226D68FEC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_226C41EA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 248))
  {
    v4 = *(v0 + 248);
  }

  else
  {
    v5 = sub_226D6E79C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    v4 = sub_226C41BF0(0, 0, v3, &unk_226D78328, v6);
    *(v0 + 248) = v4;
  }

  return v4;
}

uint64_t sub_226C41FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_226C41FFC, 0, 0);
}

uint64_t sub_226C41FFC()
{
  v1 = *(v0 + 64);
  sub_226D68FEC();
  sub_226AE532C(v1 + 120, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_226B04A34;

  return MEMORY[0x2821185B0](v0 + 16);
}

uint64_t sub_226C420B0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_226C420D8, v3, 0);
}

uint64_t sub_226C420D8(uint64_t a1)
{
  v2 = sub_226D676AC();
  *(v1 + 40) = v2;
  *(swift_task_alloc() + 16) = v2;
  sub_226D6EB8C();
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 72);

  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  v7 = swift_task_alloc();
  *(v1 + 56) = v7;
  *v7 = v1;
  v7[1] = sub_226C42260;
  v8 = *(v1 + 16);

  return sub_226C42D18(v8, &unk_226D782D8, v6);
}

uint64_t sub_226C42260()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_226C423EC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_226C42388;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226C42388()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C423EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C42458(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 120) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x2822009F8](sub_226C4247C, a2, 0);
}

uint64_t sub_226C4247C()
{
  v1 = sub_226C42A88(*(v0 + 24), *(v0 + 120), *(v0 + 40));
  *(v0 + 56) = v1;
  if (*(v1 + 16))
  {
    v3 = sub_226C41EA8();
    *(v0 + 64) = v3;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    v5 = sub_226D68FEC();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    *v4 = v0;
    v4[1] = sub_226C425D0;
    v7 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 16, v3, v5, v6, v7);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_226C425D0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_226C42A00;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 32);

    v4 = sub_226C42728;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_226C42728()
{
  v0[11] = v0[2];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_226C427C8;
  v2 = v0[7];

  return MEMORY[0x2821185A8](v2);
}

uint64_t sub_226C427C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_226C42A18;
  }

  else
  {
    v6 = sub_226C428FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226C428FC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 120);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v1;
  *(v7 + 56) = v3;
  sub_226D6EB7C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226C42A18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C42A88(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v3;
  v22 = a3;
  v21 = a2;
  v20 = a1;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8350, &qword_226D78330);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1((v3 + 200), *(v3 + 224));
  sub_226D6D46C();
  sub_226D6C00C();
  if (v4)
  {

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  (*(v7 + 8))(v9, v6);
  v14 = sub_226D6B40C();
  v15 = (*(*(v14 - 8) + 56))(v12, v13, 1, v14);
  MEMORY[0x28223BE20](v15);
  v16 = v20;
  *(&v19 - 6) = v5;
  *(&v19 - 5) = v16;
  *(&v19 - 32) = v21 & 1;
  *(&v19 - 3) = v22;
  *(&v19 - 2) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8358, &qword_226D78338);
  sub_226D6EB8C();
  v17 = v23;
  sub_226AC47B0(v12, &qword_27D7A8350, &qword_226D78330);
  return v17;
}

uint64_t sub_226C42D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](sub_226C42D3C, v3, 0);
}

uint64_t sub_226C42D3C()
{
  v1 = v0[17];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v1 + 240);
  v4 = *(v2 + 16);
  v5 = v0[14];
  if (*(v3 + 16) <= v4 >> 3)
  {
    v13 = v0[14];

    sub_226D53B1C(v3);

    v6 = v13;
  }

  else
  {

    v6 = sub_226D53F8C(v3, v5);
  }

  v0[18] = v6;
  if (*(v6 + 16))
  {
    v7 = v0[15];
    swift_beginAccess();

    sub_226B04508(v8);
    swift_endAccess();
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_226C42F44;

    return v12(v6);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_226C42F44()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_226C43100;
  }

  else
  {
    v4 = sub_226C43070;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226C43070()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C43100()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C43190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v26 = a6;
  v25 = a5;
  v7 = a3;
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226B23E98(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1((a1 + 160), *(a1 + 184));
  sub_226D6D46C();
  v14 = a2;
  v15 = a4;
  v16 = v27;
  v17 = sub_226D47648(v14, 1, v7, v13, a4);
  if (v16)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = v17;
    (*(v11 + 8))(v13, v10);
    v19 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
    MEMORY[0x28223BE20](v19);
    *(&v24 - 6) = &v28;
    *(&v24 - 5) = a1;
    *(&v24 - 4) = v20;
    *(&v24 - 3) = v15;
    *(&v24 - 2) = v25;
    sub_226C41750(sub_226C45AEC, (&v24 - 8), v18, MEMORY[0x277CC7DD0], sub_226AE2878);
    v22 = v21;

    *v26 = v22;
  }
}

uint64_t sub_226C433BC@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27 = a6;
  v25 = a4;
  v26 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8350, &qword_226D78330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_226D6B9BC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 accountObject];
  sub_226D69D5C();

  if (*(*a2 + 16) && (sub_226C3064C(v16), (v19 & 1) != 0))
  {
  }

  else
  {
    v20 = [v17 accountObject];
    v28 = a3;
    v21 = sub_226C45B14(v20, &v28, v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a2;
    *a2 = 0x8000000000000000;
    sub_226BE676C(v21, v16, isUniquelyReferenced_nonNull_native);
    *a2 = v28;
  }

  sub_226AC40E8(v26, v11, &qword_27D7A8350, &qword_226D78330);
  v23 = v17;
  sub_226D6AFDC();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_226C435E8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v125 = a6;
  v124 = a5;
  v127 = a4;
  v144 = *MEMORY[0x277D85DE8];
  v119 = sub_226D6B32C();
  v104 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v103 - v11;
  v117 = sub_226D69FAC();
  v103 = *(v117 - 8);
  MEMORY[0x28223BE20](v117 - 8);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8338, &qword_226D782F8);
  MEMORY[0x28223BE20](v13 - 8);
  v126 = &v103 - v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8340, &unk_226D78300);
  MEMORY[0x28223BE20](v122);
  v121 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v103 - v17;
  v138 = sub_226D68E0C();
  v18 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_226D6AFEC();
  v20 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  *&v135 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_226D6D52C();
  v22 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v128 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v103 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  MEMORY[0x28223BE20](v27 - 8);
  v106 = &v103 - v28;
  v109 = sub_226D680EC();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_226D6D4AC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v31 = (&v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = a1;
  sub_226AE532C(a1 + 160, &v141);
  v110 = __swift_project_boxed_opaque_existential_1(&v141, v142);
  v32 = *(a2 + 16);
  v114 = v31;
  if (v32)
  {
    v105 = a3;
    v140 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v32, 0);
    v33 = v140;
    v35 = *(v20 + 16);
    v34 = v20 + 16;
    v133 = v35;
    v36 = v18;
    v37 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v132 = *(v34 + 56);
    v131 = (v36 + 8);
    v134 = v34;
    v130 = (v34 - 8);
    v129 = (v22 + 4);
    do
    {
      v38 = v22;
      v39 = v135;
      v40 = v136;
      (v133)(v135, v37, v136);
      v41 = v137;
      sub_226D6AFCC();
      sub_226D68DFC();
      (*v131)(v41, v138);
      (*v130)(v39, v40);
      v140 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_226AE20D4((v42 > 1), v43 + 1, 1);
        v33 = v140;
      }

      *(v33 + 16) = v43 + 1;
      v22 = v38;
      v38[4](v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v43, v26, v139);
      v37 += v132;
      --v32;
    }

    while (v32);
    v31 = v114;
    LOBYTE(a3) = v105;
    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
  }

  v45 = sub_226AE45DC(v33);

  v46 = *v110;
  sub_226D6D46C();
  v140 = v44;
  v137 = v45;
  if ((a3 & 1) == 0)
  {
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D72B90;
    *(inited + 32) = sub_226D47C8C();
    *(inited + 40) = sub_226D48234();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v138 = v46;
    v134 = "ClassificationDataLoader";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v48 = swift_allocObject();
    v135 = xmmword_226D70840;
    *(v48 + 16) = xmmword_226D70840;
    v49 = v108;
    v50 = v107;
    v51 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x277CC7158], v109);
    v52 = sub_226D680DC();
    (*(v49 + 8))(v50, v51);
    v53 = MEMORY[0x277D849A0];
    *(v48 + 56) = MEMORY[0x277D84958];
    *(v48 + 64) = v53;
    *(v48 + 32) = v52;
    v31 = v114;
    v46 = v138;
    *(inited + 48) = sub_226D6E91C();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_226D71F40;
    *(v54 + 32) = sub_226D6E91C();
    v55 = swift_allocObject();
    *(v55 + 16) = v135;
    v56 = sub_226D6D3EC();
    *(v55 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v55 + 64) = sub_226C19454();
    *(v55 + 32) = v56;
    *(v54 + 40) = sub_226D6E91C();
    v57 = sub_226D6E5CC();

    v58 = [objc_opt_self() orPredicateWithSubpredicates_];

    *(inited + 56) = v58;
    sub_226CEE1A0(inited);
  }

  sub_226D6AC0C();
  sub_226D6ABAC();
  MEMORY[0x22AA8A610]();
  v59 = v126;
  if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    sub_226D6E65C();
    v60 = sub_226D6AAFC();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v61 = sub_226D6E5CC();

    v62 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v60 setPredicate_];
    sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    v63 = sub_226D6E5CC();
    [v60 setSortDescriptors_];

    [v60 setReturnsObjectsAsFaults_];
    if (*(v46 + 48))
    {
      v64 = sub_226D6E5CC();
    }

    else
    {
      v64 = 0;
    }

    [v60 setRelationshipKeyPathsForPrefetching_];

    if ((*(v46 + 40) & 1) == 0)
    {
      [v60 setFetchLimit_];
    }

    v65 = v113;
    v66 = sub_226D6EBBC();
    v138 = v65;
    if (v65)
    {

      (*(v111 + 8))(v31, v112);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v141);
    }

    v68 = v66;

    (*(v111 + 8))(v31, v112);
    __swift_destroy_boxed_opaque_existential_0Tm(&v141);
    v69 = sub_226D6974C();
    (*(*(v69 - 8) + 56))(v106, 1, 1, v69);
    v70 = sub_226D6973C();
    swift_allocObject();
    v71 = sub_226D6972C();
    v142 = v70;
    v143 = MEMORY[0x277CC78A8];
    v141 = v71;
    sub_226D6C49C();
    swift_allocObject();
    v136 = sub_226D6C48C();
    v72 = v68 >> 62 ? sub_226D6EDFC() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v120;
    if (!v72)
    {
      break;
    }

    v73 = 0;
    *&v135 = v68 & 0xC000000000000001;
    v114 = v68 & 0xFFFFFFFFFFFFFF8;
    v130 = (v103 + 32);
    v132 = (v103 + 8);
    v134 = (v22 + 1);
    v129 = (v104 + 32);
    v131 = (v104 + 8);
    v31 = &qword_226D782F0;
    v133 = v72;
    while (1)
    {
      if (v135)
      {
        v74 = MEMORY[0x22AA8AFD0](v73, v68);
      }

      else
      {
        if (v73 >= *(v114 + 16))
        {
          goto LABEL_47;
        }

        v74 = *(v68 + 8 * v73 + 32);
      }

      v22 = v74;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v137 = (v73 + 1);
      v75 = [v74 publicTransactionObject];
      v76 = [v75 id];

      v77 = v128;
      sub_226D6D4FC();

      v78 = v124;
      if (*(v124 + 16))
      {
        v79 = sub_226C3049C(v77);
        if (v80)
        {
          v81 = v79;
          v82 = *(v78 + 56);
          v83 = sub_226D6B33C();
          v84 = *(v83 - 8);
          v85 = v84;
          v86 = v82 + *(v84 + 72) * v81;
          v59 = v126;
          (*(v84 + 16))(v126, v86, v83);
          (*(v85 + 56))(v59, 0, 1, v83);
          v46 = v120;
        }

        else
        {
          v88 = sub_226D6B33C();
          (*(*(v88 - 8) + 56))(v59, 1, 1, v88);
        }

        v77 = v128;
      }

      else
      {
        v87 = sub_226D6B33C();
        (*(*(v87 - 8) + 56))(v59, 1, 1, v87);
      }

      sub_226C44964(v59, v77, v46);
      sub_226AC47B0(v59, &qword_27D7A8338, &qword_226D782F8);
      v89 = v121;
      sub_226AC40E8(v46, v121, &qword_27D7A8340, &unk_226D78300);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v90 = v118;
        v91 = v119;
        (*v129)(v118, v89, v119);
        v92 = v138;
        sub_226D6C45C();
        v138 = v92;
        if (v92)
        {

          (*v131)(v90, v91);
          v102 = v46;
LABEL_45:
          sub_226AC47B0(v102, &qword_27D7A8340, &unk_226D78300);
          return (*v134)(v128, v139);
        }

        (*v131)(v90, v91);
      }

      else
      {
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8348, &unk_226D78310) + 48);
        v94 = v115;
        v95 = v117;
        (*v130)(v115, v89, v117);
        v96 = v89 + v93;
        v97 = v116;
        sub_226AFD80C(v96, v116, &qword_27D7A6828, &qword_226D782F0);
        v98 = v138;
        sub_226D6C47C();
        v138 = v98;
        if (v98)
        {

          sub_226AC47B0(v97, &qword_27D7A6828, &qword_226D782F0);
          (*v132)(v94, v95);
          v102 = v120;
          goto LABEL_45;
        }

        sub_226AC47B0(v97, &qword_27D7A6828, &qword_226D782F0);
        (*v132)(v94, v95);
        v46 = v120;
        v59 = v126;
      }

      sub_226AC47B0(v46, &qword_27D7A8340, &unk_226D78300);
      (*v134)(v128, v139);
      ++v73;
      if (v137 == v133)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    sub_226D6E61C();
  }

LABEL_39:

  v141 = 0;
  if ([v127 save_])
  {
    v99 = v141;
  }

  else
  {
    v100 = v141;
    v101 = sub_226D6D04C();

    v138 = v101;
    swift_willThrow();
  }
}

uint64_t sub_226C44964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v88 = a2;
  v91 = a3;
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  MEMORY[0x28223BE20](v4);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  MEMORY[0x28223BE20](v10);
  v85 = &v85 - v11;
  MEMORY[0x28223BE20](v12);
  v87 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v85 - v15;
  v17 = sub_226D69FAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8338, &qword_226D782F8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  sub_226AC40E8(a1, &v85 - v25, &qword_27D7A8338, &qword_226D782F8);
  v27 = sub_226D6B33C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v29 = sub_226D6E07C();
    __swift_project_value_buffer(v29, qword_28105F710);
    v31 = v89;
    v30 = v90;
    (*(v90 + 16))(v9, v88, v89);
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9CC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v92 = v35;
      *v34 = 136315138;
      sub_226C459BC();
      v36 = sub_226D6F1CC();
      v38 = v37;
      (*(v30 + 8))(v9, v31);
      v39 = sub_226AC4530(v36, v38, &v92);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_226AB4000, v32, v33, "Classification for transaction %s missing.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
      MEMORY[0x22AA8BEE0](v34, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v9, v31);
    }

    v46 = v91;
    v47 = MEMORY[0x277CC7E80];
LABEL_10:
    v48 = *v47;
    v49 = sub_226D6B32C();
    (*(*(v49 - 8) + 104))(v46, v48, v49);
    goto LABEL_11;
  }

  sub_226AC40E8(v26, v23, &qword_27D7A8338, &qword_226D782F8);
  v40 = (*(v28 + 88))(v23, v27);
  if (v40 != *MEMORY[0x277CC7EA0])
  {
    if (v40 == *MEMORY[0x277CC7EA8])
    {
      v52 = v89;
      v51 = v90;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v53 = sub_226D6E07C();
      __swift_project_value_buffer(v53, qword_28105F710);
      v54 = v87;
      (*(v51 + 16))(v87, v88, v52);
      v55 = sub_226D6E05C();
      v56 = sub_226D6E9CC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v92 = v58;
        *v57 = 136315138;
        sub_226C459BC();
        v59 = sub_226D6F1CC();
        v61 = v60;
        (*(v51 + 8))(v54, v52);
        v62 = sub_226AC4530(v59, v61, &v92);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_226AB4000, v55, v56, "Classification for transaction %s was throttled.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x22AA8BEE0](v58, -1, -1);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v54, v52);
      }

      v46 = v91;
      v47 = MEMORY[0x277CC7E90];
    }

    else
    {
      v64 = v89;
      v63 = v90;
      if (v40 == *MEMORY[0x277CC7E98])
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v65 = sub_226D6E07C();
        __swift_project_value_buffer(v65, qword_28105F710);
        v66 = v85;
        (*(v63 + 16))(v85, v88, v64);
        v67 = sub_226D6E05C();
        v68 = sub_226D6E9CC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v92 = v70;
          *v69 = 136315138;
          sub_226C459BC();
          v71 = sub_226D6F1CC();
          v73 = v72;
          (*(v63 + 8))(v66, v64);
          v74 = sub_226AC4530(v71, v73, &v92);

          *(v69 + 4) = v74;
          _os_log_impl(&dword_226AB4000, v67, v68, "Classification for transaction %s failed.", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          MEMORY[0x22AA8BEE0](v70, -1, -1);
          MEMORY[0x22AA8BEE0](v69, -1, -1);
        }

        else
        {

          (*(v63 + 8))(v66, v64);
        }

        v46 = v91;
        v47 = MEMORY[0x277CC7E78];
      }

      else
      {
        (*(v28 + 8))(v23, v27);
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v75 = sub_226D6E07C();
        __swift_project_value_buffer(v75, qword_28105F710);
        v76 = v86;
        (*(v63 + 16))(v86, v88, v64);
        v77 = sub_226D6E05C();
        v78 = sub_226D6E9CC();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v92 = v80;
          *v79 = 136315138;
          sub_226C459BC();
          v81 = sub_226D6F1CC();
          v83 = v82;
          (*(v63 + 8))(v76, v64);
          v84 = sub_226AC4530(v81, v83, &v92);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_226AB4000, v77, v78, "Classification for transaction %s returned with unknown result.", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          MEMORY[0x22AA8BEE0](v80, -1, -1);
          MEMORY[0x22AA8BEE0](v79, -1, -1);
        }

        else
        {

          (*(v63 + 8))(v76, v64);
        }

        v46 = v91;
        v47 = MEMORY[0x277CC7E88];
      }
    }

    goto LABEL_10;
  }

  (*(v28 + 96))(v23, v27);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8348, &unk_226D78310);
  v42 = *(v41 + 48);
  v43 = *(v18 + 32);
  v43(v20, v23, v17);
  sub_226AFD80C(&v23[v42], v16, &qword_27D7A6828, &qword_226D782F0);
  v44 = *(v41 + 48);
  v45 = v91;
  v43(v91, v20, v17);
  sub_226AFD80C(v16, &v45[v44], &qword_27D7A6828, &qword_226D782F0);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8340, &unk_226D78300);
  swift_storeEnumTagMultiPayload();
  return sub_226AC47B0(v26, &qword_27D7A8338, &qword_226D782F8);
}

uint64_t sub_226C45444()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226C454C8(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  v4 = sub_226D6D4AC();
  *(v3 + 24) = v4;
  *(v3 + 32) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;

  return MEMORY[0x2822009F8](sub_226C4558C, v6, 0);
}

uint64_t sub_226C4558C(uint64_t a1)
{
  sub_226D6D46C();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_226C45630;
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v5 = *(v1 + 16);

  return sub_226C420B0(v5, v4, v3);
}

uint64_t sub_226C45630()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  v5[8] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[6];

    return MEMORY[0x2822009F8](sub_226C457D8, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_226C457D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C4583C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226C42458(a1, v4, v5, v7, v6);
}

uint64_t sub_226C45924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226B6B030(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_226C459BC()
{
  result = qword_27D7A6648;
  if (!qword_27D7A6648)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6648);
  }

  return result;
}

uint64_t sub_226C45A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226C41FDC(a1, v4, v5, v6);
}

uint64_t sub_226C45B14(void *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  sub_226D6842C();
  v5 = [a1 institutionId];
  sub_226D6E39C();

  v6 = sub_226D683EC();

  v7 = v6;
  if (v6 && (v8 = v7, v9 = [v7 piiRedactionConfiguration], v8, v9))
  {
    v10 = [v9 countryCodes];

    v11 = sub_226D6E89C();
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v22 = v11;
  v12 = [a1 externalAccountId];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v4 passWithFPANIdentifier_];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [v14 issuerCountryCode];
  if (!v15)
  {

LABEL_10:
    return v11;
  }

  v16 = v15;
  v17 = sub_226D6E39C();
  v19 = v18;

  sub_226C24D14(&v21, v17, v19);

  return v22;
}

uint64_t sub_226C45EE0(void *a1)
{
  v27 = a1;
  v2 = sub_226D6DF7C();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D66DBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277CC64F0];
  v10 = *(v5 + 104);
  v10(v8, v9, v4, v6);
  v11 = sub_226D66D6C();
  v12 = *(v5 + 8);
  result = v12(v8, v4);
  if (v11)
  {
    v22 = v1;
    v14 = [v27 trackedOrderIdentifier];
    v21 = sub_226D6E39C();
    v16 = v15;

    (v10)(v8, v9, v4);
    LOBYTE(v14) = sub_226D66D6C();
    v12(v8, v4);
    if ((v14 & 1) != 0 && (v17 = __swift_project_boxed_opaque_existential_1(v26, v26[3]), MEMORY[0x28223BE20](v17), v18 = v22, *(&v21 - 2) = v21, *(&v21 - 1) = v16, sub_226C470C0(sub_226C471B8, (&v21 - 4)), v18))
    {
    }

    else
    {

      v19 = v27;
      v20 = v23;
      sub_226C461D4(v19, v23);
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      sub_226C47028(v20);
      return (*(v24 + 8))(v20, v25);
    }
  }

  return result;
}

void *sub_226C461D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = sub_226D6DD0C();
  v4 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D677FC();
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8368, &unk_226D783C8);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = (&v88 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = &v88 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8370, &qword_226D783D8);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8378, &qword_226D783E0);
  MEMORY[0x28223BE20](v19 - 8);
  v88 = &v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8380, &qword_226D783E8);
  MEMORY[0x28223BE20](v21 - 8);
  v109 = &v88 - v22;
  v108 = sub_226D6D24C();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_226D6D26C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226D6D61C();
  v101 = *(v25 - 8);
  v102 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v28 - 8);
  v100 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v88 - v31;
  v92 = sub_226D6CEAC();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DF6C();
  v35 = [a1 orderContent];
  v98 = a1;
  v99 = v35;
  v36 = [a1 trackedOrderIdentifier];
  sub_226D6E39C();

  sub_226D6DA3C();
  v37 = [v35 orderNumber];
  sub_226D6E39C();

  v110 = a2;
  sub_226D6DB3C();
  v38 = sub_226D6D6DC();
  v39 = *(*(v38 - 8) + 56);
  v39(v32, 1, 1, v38);
  v40 = sub_226D6D71C();
  (*(*(v40 - 8) + 56))(v100, 1, 1, v40);
  sub_226D6CE8C();
  v42 = v101;
  v41 = v102;
  (*(v101 + 104))(v27, *MEMORY[0x277CC9810], v102);
  sub_226D6D62C();
  (*(v42 + 8))(v27, v41);
  v39(v32, 0, 1, v38);
  v43 = v99;
  sub_226D6CE9C();
  v44 = [v43 orderDateYear];
  v45 = v44;
  if (v44)
  {
    [v44 integerValue];
  }

  sub_226D6CE3C();
  v46 = [v43 orderDateMonth];
  v47 = v46;
  if (v46)
  {
    [v46 integerValue];
  }

  sub_226D6CE5C();
  v48 = [v43 orderDateDay];
  v49 = v48;
  if (v48)
  {
    [v48 integerValue];
  }

  sub_226D6CDFC();
  v50 = [v43 orderTimeHours];
  v51 = v50;
  if (v50)
  {
    [v50 integerValue];
  }

  sub_226D6CE1C();
  v52 = [v43 orderTimeMinutes];
  v53 = v52;
  if (v52)
  {
    [v52 integerValue];
  }

  sub_226D6CE6C();
  v54 = [v43 orderTimeSeconds];
  v55 = v54;
  if (v54)
  {
    [v54 integerValue];
  }

  sub_226D6CE7C();
  (*(v106 + 104))(v104, *MEMORY[0x277CC85C8], v108);
  v56 = v103;
  sub_226D6D27C();
  sub_226D6D25C();
  (*(v105 + 8))(v56, v107);
  sub_226D6DF5C();
  v57 = v43;
  v58 = v109;
  sub_226C471C0(v57);
  v59 = sub_226D6DF2C();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  sub_226D6DF4C();
  v60 = sub_226D6B30C();
  v61 = v60;
  if (v60 >> 62)
  {
    v62 = sub_226D6EDFC();
  }

  else
  {
    v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v34;
  if (v62)
  {
    v112 = MEMORY[0x277D84F90];
    result = sub_226AE1F84(0, v62 & ~(v62 >> 63), 0);
    if (v62 < 0)
    {
      __break(1u);
      return result;
    }

    v109 = v57;
    v64 = 0;
    v65 = v112;
    do
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x22AA8AFD0](v64, v61);
      }

      else
      {
        v66 = *(v61 + 8 * v64 + 32);
      }

      sub_226C47374(v66, v6);
      v112 = v65;
      v68 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_226AE1F84((v67 > 1), v68 + 1, 1);
        v65 = v112;
      }

      ++v64;
      *(v65 + 16) = v68 + 1;
      (*(v4 + 32))(v65 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v68, v6, v111);
    }

    while (v62 != v64);

    v57 = v109;
  }

  else
  {
  }

  sub_226D6DD1C();
  v69 = v57;
  sub_226C49208(v69, v88);
  sub_226D6DF3C();
  v70 = v69;
  sub_226C49590(v70, v89);
  sub_226D6DE3C();
  v71 = [v70 orderUpdateDate];
  v72 = v93;
  sub_226D6D45C();

  v73 = sub_226D6D4AC();
  v74 = *(*(v73 - 8) + 56);
  v75 = 1;
  v74(v72, 0, 1, v73);
  sub_226D6DB5C();
  v76 = v94;
  sub_226D6B2EC();
  v77 = v95;
  sub_226C49B64(v76, v95);
  v78 = sub_226D6DA4C();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_226D6DB4C();
  v79 = [v70 orderStatusUpdateDate];
  v81 = v96;
  v80 = v97;
  if (v79)
  {
    v82 = v79;
    sub_226D6D45C();

    v75 = 0;
  }

  v83 = 1;
  v74(v81, v75, 1, v73);
  sub_226D6DD3C();
  v84 = [v70 earliestEmailDateSent];
  if (v84)
  {
    v85 = v84;
    sub_226D6D45C();

    v83 = 0;
  }

  v86 = v98;
  v87 = v92;
  v74(v80, v83, 1, v73);
  sub_226D6DD2C();

  return (*(v91 + 8))(v90, v87);
}

uint64_t sub_226C46FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_226D6DA2C();
  if (v7)
  {
    if (v6 == a3 && v7 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_226D6F21C();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_226C47028(uint64_t a1)
{
  sub_226D6D7FC();
  sub_226C47160();
  result = sub_226D6D81C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_226D6DF9C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

void *sub_226C470C0(uint64_t a1, uint64_t a2)
{
  sub_226D6D7FC();
  sub_226C47160();
  result = sub_226D6D80C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_226D6DF8C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return result;
}

unint64_t sub_226C47160()
{
  result = qword_27D7A8360;
  if (!qword_27D7A8360)
  {
    sub_226D6D7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8360);
  }

  return result;
}

void sub_226C471C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_226D6DF1C();
  v5 = [a1 merchantDisplayName];
  sub_226D6E39C();

  sub_226D6DEFC();
  v6 = [a1 merchantDisplayNameUpdateDate];
  if (v6)
  {
    v7 = v6;
    sub_226D6D45C();

    v8 = sub_226D6D4AC();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = sub_226D6D4AC();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_226D6DF0C();
  v10 = [a1 merchantDomain];
  if (v10)
  {
    v11 = v10;
    sub_226D6E39C();
  }

  sub_226D6DC6C();
}

uint64_t sub_226C47374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v140 = &v135 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8398, &qword_226D78400);
  MEMORY[0x28223BE20](v6 - 8);
  v139 = &v135 - v7;
  v164 = sub_226D6D24C();
  v167 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_226D6D26C();
  v166 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_226D6D61C();
  v165 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v143 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v135 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v135 - v16;
  v138 = sub_226D6CEAC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v150 = &v135 - v20;
  MEMORY[0x28223BE20](v21);
  v149 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v148 = &v135 - v24;
  MEMORY[0x28223BE20](v25);
  v147 = &v135 - v26;
  MEMORY[0x28223BE20](v27);
  v146 = &v135 - v28;
  MEMORY[0x28223BE20](v29);
  v145 = &v135 - v30;
  MEMORY[0x28223BE20](v31);
  v144 = &v135 - v32;
  v33 = sub_226D6C69C();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A83A0, &qword_226D78408);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = (&v135 - v37);
  sub_226D6DCFC();
  sub_226D6C6AC();
  sub_226C49DF0(v35, v38);
  v39 = sub_226D6DCDC();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v168 = a2;
  sub_226D6DCEC();
  v40 = [a1 trackingNumber];
  if (v40)
  {
    v41 = v40;
    sub_226D6E39C();
  }

  sub_226D6DC6C();
  v42 = [a1 carrierName];
  if (v42)
  {
    v43 = v42;
    sub_226D6E39C();
  }

  sub_226D6DC0C();
  v44 = [a1 shippingMethod];
  v135 = v10;
  if (v44)
  {
    v45 = v44;
    sub_226D6E39C();
  }

  sub_226D6DC5C();
  v46 = sub_226D6D6DC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v49 = v47 + 56;
  v48(v17, 1, 1, v46);
  v50 = sub_226D6D71C();
  v51 = *(v50 - 8);
  v158 = *(v51 + 56);
  v159 = v50;
  v157 = v51 + 56;
  v158(v14, 1, 1);
  v52 = v14;
  sub_226D6CE8C();
  v53 = v165;
  v54 = *(v165 + 104);
  v55 = v143;
  v155 = *MEMORY[0x277CC9810];
  v56 = v161;
  v156 = v165 + 104;
  v154 = v54;
  v54(v143);
  sub_226D6D62C();
  v57 = *(v53 + 8);
  v165 = v53 + 8;
  v153 = v57;
  v57(v55, v56);
  v58 = v46;
  v59 = v46;
  v60 = v48;
  v160 = v49;
  v48(v17, 0, 1, v59);
  sub_226D6CE9C();
  v61 = [a1 shippingDateYear];
  v62 = v61;
  if (v61)
  {
    [v61 integerValue];
  }

  sub_226D6CE3C();
  v63 = [a1 shippingDateMonth];
  v64 = v63;
  v65 = v52;
  if (v63)
  {
    [v63 &selRef_dealloc];
  }

  v66 = v58;
  v67 = v135;
  sub_226D6CE5C();
  v68 = [a1 shippingDateDay];
  v69 = v68;
  v70 = v143;
  if (v68)
  {
    [v68 integerValue];
  }

  sub_226D6CDFC();
  v71 = *(v167 + 104);
  v142 = *MEMORY[0x277CC85D0];
  v167 += 104;
  v152 = v71;
  v71(v162);
  sub_226D6D27C();
  sub_226D6D25C();
  v72 = *(v166 + 8);
  v166 += 8;
  v151 = v72;
  v72(v67, v163);
  sub_226D6DC3C();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v73 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v73);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v74 = [a1 shippingTimeHours];
  v75 = v74;
  if (v74)
  {
    [v74 integerValue];
  }

  sub_226D6CE1C();
  v76 = [a1 shippingTimeMinutes];
  v77 = v76;
  if (v76)
  {
    [v76 integerValue];
  }

  sub_226D6CE6C();
  v78 = [a1 shippingTimeSeconds];
  v79 = v78;
  if (v78)
  {
    [v78 integerValue];
  }

  sub_226D6CE7C();
  v141 = *MEMORY[0x277CC85D8];
  v152(v162);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DC4C();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v80 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v80);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v81 = [a1 estimatedDeliveryStartDateYear];
  v82 = v81;
  if (v81)
  {
    [v81 integerValue];
  }

  sub_226D6CE3C();
  v83 = [a1 estimatedDeliveryStartDateMonth];
  v84 = v83;
  if (v83)
  {
    [v83 integerValue];
  }

  sub_226D6CE5C();
  v85 = [a1 estimatedDeliveryStartDateDay];
  v86 = v85;
  if (v85)
  {
    [v85 integerValue];
  }

  sub_226D6CDFC();
  (v152)(v162, v142, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DCBC();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v87 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v87);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v88 = [a1 estimatedDeliveryStartTimeHours];
  v89 = v88;
  if (v88)
  {
    [v88 integerValue];
  }

  sub_226D6CE1C();
  v90 = [a1 estimatedDeliveryStartTimeMinutes];
  v91 = v90;
  if (v90)
  {
    [v90 integerValue];
  }

  sub_226D6CE6C();
  v92 = [a1 estimatedDeliveryStartTimeSeconds];
  v93 = v92;
  if (v92)
  {
    [v92 integerValue];
  }

  sub_226D6CE7C();
  (v152)(v162, v141, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DCCC();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v94 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v94);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v95 = [a1 estimatedDeliveryEndDateYear];
  v96 = v95;
  if (v95)
  {
    [v95 integerValue];
  }

  sub_226D6CE3C();
  v97 = [a1 estimatedDeliveryEndDateMonth];
  v98 = v97;
  if (v97)
  {
    [v97 integerValue];
  }

  sub_226D6CE5C();
  v99 = [a1 estimatedDeliveryEndDateDay];
  v100 = v99;
  if (v99)
  {
    [v99 integerValue];
  }

  sub_226D6CDFC();
  (v152)(v162, v142, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DC9C();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v101 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v101);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v102 = [a1 estimatedDeliveryEndTimeHours];
  v103 = v102;
  if (v102)
  {
    [v102 integerValue];
  }

  sub_226D6CE1C();
  v104 = [a1 estimatedDeliveryEndTimeMinutes];
  v105 = v104;
  if (v104)
  {
    [v104 integerValue];
  }

  sub_226D6CE6C();
  v106 = [a1 estimatedDeliveryEndTimeSeconds];
  v107 = v106;
  if (v106)
  {
    [v106 integerValue];
  }

  sub_226D6CE7C();
  (v152)(v162, v141, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DCAC();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  sub_226D6CE8C();
  v108 = v161;
  v154(v70, v155, v161);
  sub_226D6D62C();
  v153(v70, v108);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v109 = [a1 deliveryDateYear];
  v110 = v109;
  if (v109)
  {
    [v109 integerValue];
  }

  sub_226D6CE3C();
  v111 = [a1 deliveryDateMonth];
  v112 = v111;
  if (v111)
  {
    [v111 integerValue];
  }

  sub_226D6CE5C();
  v113 = [a1 deliveryDateDay];
  v114 = v113;
  if (v113)
  {
    [v113 integerValue];
  }

  sub_226D6CDFC();
  (v152)(v162, v142, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DC1C();
  v60(v17, 1, 1, v66);
  (v158)(v65, 1, 1, v159);
  v115 = v136;
  sub_226D6CE8C();
  v116 = v143;
  v117 = v161;
  v154(v143, v155, v161);
  sub_226D6D62C();
  v118 = v116;
  v119 = v115;
  v153(v118, v117);
  v60(v17, 0, 1, v66);
  sub_226D6CE9C();
  v120 = [a1 deliveryTimeHours];
  v121 = v120;
  if (v120)
  {
    [v120 integerValue];
  }

  sub_226D6CE1C();
  v122 = [a1 deliveryTimeMinutes];
  v123 = v122;
  if (v122)
  {
    [v122 integerValue];
  }

  sub_226D6CE6C();
  v124 = [a1 deliveryTimeSeconds];
  v125 = v124;
  if (v124)
  {
    [v124 integerValue];
  }

  sub_226D6CE7C();
  (v152)(v162, v141, v164);
  sub_226D6D27C();
  sub_226D6D25C();
  v151(v67, v163);
  sub_226D6DC2C();
  v126 = a1;
  sub_226C4A194(v126, v139);
  sub_226D6DC7C();
  v127 = [v126 fulfillmentUpdateDate];
  if (v127)
  {
    v128 = v140;
    v129 = v127;
    sub_226D6D45C();

    v130 = 0;
  }

  else
  {
    v130 = 1;
    v128 = v140;
  }

  v131 = sub_226D6D4AC();
  (*(*(v131 - 8) + 56))(v128, v130, 1, v131);
  sub_226D6DC8C();

  v132 = *(v137 + 8);
  v133 = v138;
  v132(v119, v138);
  v132(v150, v133);
  v132(v149, v133);
  v132(v148, v133);
  v132(v147, v133);
  v132(v146, v133);
  v132(v145, v133);
  return (v132)(v144, v133);
}

uint64_t sub_226C49208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8390, &qword_226D783F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_226D6DEDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AA89F70](v12);
  v15 = [a1 customerFullName];
  if (v15)
  {
    v16 = v15;
    sub_226D6E39C();
  }

  sub_226D6DBDC();
  v17 = [a1 customerEmailAddress];
  if (v17)
  {
    v18 = v17;
    sub_226D6E39C();
  }

  sub_226D6DB9C();
  v19 = [a1 customerPhoneNumber];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
  }

  sub_226D6DB7C();
  v21 = [a1 customerBillingAddress];
  if (v21)
  {
    sub_226C4A51C(v21);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_226D6DDAC();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v9, v22, 1, v23);
  sub_226D6DBBC();
  sub_226D6DBCC();
  if (v25 || (sub_226D6DB8C(), v26) || (v27 = sub_226D6DB6C(), v28))
  {
  }

  else
  {
    MEMORY[0x22AA89F30](v27);

    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      (*(v11 + 8))(v14, v10);
      sub_226C4A884(v6);
      v29 = 1;
      return (*(v11 + 56))(a2, v29, 1, v10);
    }

    sub_226C4A884(v6);
  }

  (*(v11 + 32))(a2, v14, v10);
  v29 = 0;
  return (*(v11 + 56))(a2, v29, 1, v10);
}

void *sub_226C49590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8388, &qword_226D783F0);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v46 - v5;
  v52 = sub_226D6DB2C();
  v57 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v46 - v9;
  v10 = sub_226D6DE2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6DE1C();
  v14 = [a1 paymentTotalAmount];
  if (v14)
  {
    v15 = v14;
    [v14 decimalValue];

    sub_226D6EC6C();
  }

  sub_226D6DDCC();
  v16 = [a1 paymentTotalCurrencyCode];
  if (v16)
  {
    v17 = v16;
    sub_226D6E39C();
  }

  sub_226D6DE0C();
  v18 = sub_226D6B2FC();
  v19 = v18;
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v11;
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_23:

    goto LABEL_24;
  }

  v20 = sub_226D6EDFC();
  v51 = v11;
  if (!v20)
  {
    goto LABEL_23;
  }

LABEL_7:
  v58 = MEMORY[0x277D84F90];
  result = sub_226AE1F40(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v54 = v20;
    v47 = v13;
    v48 = v10;
    v49 = a1;
    v50 = a2;
    v22 = 0;
    v53 = v19 & 0xC000000000000001;
    v23 = v58;
    v24 = (v57 + 32);
    v25 = v52;
    do
    {
      if (v53)
      {
        v26 = MEMORY[0x22AA8AFD0](v22, v19);
      }

      else
      {
        v26 = *(v19 + 8 * v22 + 32);
      }

      v27 = v26;
      v28 = v19;
      sub_226D6DB1C();
      v29 = [v27 amount];
      if (v29)
      {
        v30 = v29;
        [v29 decimalValue];

        v25 = v52;
        sub_226D6EC6C();
      }

      sub_226D6DB0C();
      v31 = [v27 currencyCode];
      if (v31)
      {
        v32 = v31;
        sub_226D6E39C();
      }

      sub_226D6DAEC();
      v33 = v27;
      sub_226C4A680(v33, v55);
      sub_226D6DADC();
      v34 = [v33 transactionIdentifier];
      if (v34)
      {
        v35 = v34;
        sub_226D6E39C();
      }

      sub_226D6DAFC();

      v36 = *v24;
      v37 = v56;
      (*v24)(v56, v7, v25);
      v58 = v23;
      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226AE1F40((v38 > 1), v39 + 1, 1);
        v37 = v56;
        v23 = v58;
      }

      ++v22;
      *(v23 + 16) = v39 + 1;
      v36((v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v39), v37, v25);
      v19 = v28;
    }

    while (v54 != v22);

    a1 = v49;
    a2 = v50;
    v13 = v47;
    v10 = v48;
LABEL_24:
    sub_226D6DDEC();
    sub_226D6DDBC();
    if (v40)
    {
      v41 = v51;
    }

    else
    {
      sub_226D6DDFC();
      v41 = v51;
      if (!v42)
      {
        v44 = sub_226D6DDDC();

        v45 = *(v44 + 16);

        if (!v45)
        {
          (*(v41 + 8))(v13, v10);
          v43 = 1;
          return (*(v41 + 56))(a2, v43, 1, v10);
        }

LABEL_28:
        (*(v41 + 32))(a2, v13, v10);
        v43 = 0;
        return (*(v41 + 56))(a2, v43, 1, v10);
      }
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}