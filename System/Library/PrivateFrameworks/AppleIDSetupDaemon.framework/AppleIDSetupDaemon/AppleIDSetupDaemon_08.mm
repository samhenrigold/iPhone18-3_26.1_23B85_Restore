uint64_t sub_2408C89B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2408D38D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
  v44 = v4;
  result = sub_2408D51C0();
  v10 = result;
  if (*(v8 + 16))
  {
    v49 = v5;
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
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v8;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = result + 64;
    v18 = v45;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v43 + 72) * v25;
      v27 = 16 * v25;
      v47 = *(v43 + 72);
      v48 = v22;
      if (v44)
      {
        (*v46)(v18, v26, v49);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v30 = *(v28 + 8);
      }

      else
      {
        (*v41)(v18, v26, v49);
        v31 = *(v8 + 56) + v27;
        v29 = *v31;
        v30 = *(v31 + 8);
        sub_240875D9C(*v31, v30);
      }

      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
      result = sub_2408D4CE0();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v45;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v10 + 48) + v47 * v19, v18, v49);
      v20 = *(v10 + 56) + 16 * v19;
      *v20 = v29;
      *(v20 + 8) = v30;
      ++*(v10 + 16);
      v8 = v42;
      v15 = v48;
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
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_2408C8DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2408D3770();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D38D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
  v47 = v4;
  result = sub_2408D51C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
      result = sub_2408D4CE0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2408C9250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
  v34 = v4;
  result = sub_2408D51C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2408D5300();
      sub_2408D4D60();
      result = sub_2408D5320();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2408C94F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  v37 = v4;
  result = sub_2408D51C0();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = v21 + 16 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        v26 = v22;
        sub_2407D256C(v24, v25);
      }

      v38 = v25;
      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v27 = sub_2408D5320();

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

LABEL_34:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
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
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_2408C97DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
  v35 = v4;
  result = sub_2408D51C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2407F6498(v22, v36);
      }

      else
      {
        sub_2407EEB40(v22, v36);
        v23 = v21;
      }

      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v24 = sub_2408D5320();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
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
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_2407F6498(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_2408C9AAC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_2408CCC7C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_2408C5870();
      goto LABEL_7;
    }

    sub_2408C81A4(v12, a3 & 1);
    v23 = sub_2408CCC7C(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AIDAServiceType(0);
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_2408D38D0();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2408CA6C8(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_2408C9C1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D38D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2408CCBA8(a2);
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
      sub_2408C5ADC();
      goto LABEL_7;
    }

    sub_2408C8544(v17, a3 & 1);
    v24 = sub_2408CCBA8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2408CA774(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640) - 8) + 72) * v14;

  return sub_2408CABC8(a1, v22);
}

void sub_2408C9E10(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v29 = a2;
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_2408CCBA8(a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_2408C5DE8();
      goto LABEL_9;
    }

    sub_2408C89B0(v18, a4 & 1);
    v21 = sub_2408CCBA8(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_2408D5280();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v29;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    v26 = *v25;
    v27 = *(v25 + 8);
    *v25 = a1;
    *(v25 + 8) = v23 & 1;

    sub_24080F564(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_2408CA85C(v15, v12, a1, v23 & 1, v24);
  }
}

uint64_t sub_2408C9FF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D38D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2408CCBA8(a2);
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
      sub_2408C607C();
      goto LABEL_7;
    }

    sub_2408C8DA8(v17, a3 & 1);
    v28 = sub_2408CCBA8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2408CA924(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_2408D3770();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2408CA1FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2408CCB30(a2, a3);
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
      sub_2408C9250(v16, a4 & 1);
      v11 = sub_2408CCB30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2408D5280();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2408C63D0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2408CA378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D4260();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2408CCD10(a2);
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
      sub_2408C53A4();
      goto LABEL_7;
    }

    sub_2408C7A4C(v17, a3 & 1);
    v28 = sub_2408CCD10(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2408CAA18(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_2408CA588(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2408CCC7C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2408C66C4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2408C97DC(v13, a3 & 1);
    v8 = sub_2408CCC7C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AIDAServiceType(0);
      result = sub_2408D5280();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);

    return sub_2407F6498(a1, v19);
  }

  else
  {
    sub_2408CAB18(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_2408CA6C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2408D38D0();
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

uint64_t sub_2408CA774(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D38D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  result = sub_2407F64A8(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_2408CA85C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2408D38D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
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

uint64_t sub_2408CA924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D38D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2408D3770();
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

uint64_t sub_2408CAA18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D4260();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
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

_OWORD *sub_2408CAB18(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2407F6498(a3, (a4[7] + 32 * a1));
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

uint64_t sub_2408CAB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2408CABC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408CAC38(uint64_t a1)
{
  v3 = sub_2408D38D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    v9[1] = *(v1 + 16);
    sub_2408CC144(v9, &v10);
  }

  else
  {
    v10 = 0;
  }

  (*(v4 + 16))(v6, a1, v3);
  return sub_2408D3750();
}

uint64_t IdMSAccount.SRPResults.into()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v84 - v1;
  v3 = sub_2408D38D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D4B20();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v84 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - v15;
  v17 = sub_2408D3730();
  v90 = v18;
  if (v18 >> 60 == 15)
  {
    sub_2408D3760();
    type metadata accessor for AuthenticationReport(0);
    v19 = swift_allocObject();
    v20 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
    v21 = *(v4 + 56);
    v21(v19 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, 1, 1, v3);
    *(v19 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context) = 0;
    *(v19 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = 0;
    (*(v4 + 32))(v2, v6, v3);
    v21(v2, 0, 1, v3);
    swift_beginAccess();
    sub_2408CB94C(v2, v19 + v20);
    swift_endAccess();
    result = v19;
    *(v19 + 16) = 0;
    return result;
  }

  v23 = v17;
  v84 = v3;
  sub_2408D4910();
  v24 = v90;
  sub_24087827C(v23, v90);
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F20();
  sub_240875A6C(v23, v24);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v85 = v8;
    v29 = v28;
    *&v95[0] = v28;
    *v27 = 136315138;
    v30 = v90;
    sub_24087827C(v23, v90);
    v31 = sub_2408D3400();
    v32 = v30;
    v33 = v31;
    v86 = v7;
    v35 = v34;
    sub_240875A6C(v23, v32);
    v36 = sub_2408CC504(v33, v35, v95);
    v7 = v86;

    *(v27 + 4) = v36;
    _os_log_impl(&dword_2407CF000, v25, v26, "Attempting to unarchive SRP results: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v37 = v29;
    v8 = v85;
    MEMORY[0x245CC9F60](v37, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  v38 = *(v8 + 8);
  v38(v16, v7);
  sub_2407EEDBC(0, &qword_27E507F10, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F18, qword_2408D9CB8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2408D9CA0;
  *(v39 + 32) = sub_2407EEDBC(0, &qword_27E507F20, 0x277CBEA60);
  *(v39 + 40) = sub_2407EEDBC(0, &qword_27E507F28, 0x277CBEA90);
  *(v39 + 48) = sub_2407EEDBC(0, &qword_27E507F30, 0x277CBEAA8);
  *(v39 + 56) = sub_2407EEDBC(0, &unk_27E507F38, 0x277CBEAC0);
  *(v39 + 64) = sub_2407EEDBC(0, &qword_27E507210, 0x277CCA9B8);
  *(v39 + 72) = sub_2407EEDBC(0, &qword_27E507F48, 0x277CBEB68);
  *(v39 + 80) = sub_2407EEDBC(0, &qword_27E507F50, 0x277CCABB0);
  *(v39 + 88) = sub_2407EEDBC(0, &qword_27E507F58, 0x277CBEB70);
  *(v39 + 96) = sub_2407EEDBC(0, &qword_27E507F60, 0x277CBEB98);
  *(v39 + 104) = sub_2407EEDBC(0, &qword_27E507F68, 0x277CCACA8);
  *(v39 + 112) = sub_2407EEDBC(0, &qword_27E507F70, 0x277CBEBC0);
  *(v39 + 120) = sub_2407EEDBC(0, &qword_27E507F78, 0x277CF01F0);
  *(v39 + 128) = sub_2407EEDBC(0, &qword_27E507F80, 0x277CF01F8);
  *(v39 + 136) = sub_2407EEDBC(0, &qword_27E507F88, 0x277D22B00);
  v40 = v91;
  sub_2408D4FB0();
  v91 = v40;
  if (v40)
  {

    sub_2408D4910();
    v41 = v91;
    v42 = v91;
    v43 = sub_2408D4B10();
    v44 = sub_2408D4F30();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v7;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v91;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_2407CF000, v43, v44, "Failed to unarchive SRP results: %@", v46, 0xCu);
      sub_2407D9440(v47, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v47, -1, -1);
      v50 = v46;
      v7 = v45;
      MEMORY[0x245CC9F60](v50, -1, -1);
    }

    v38(v89, v7);
    sub_2408CB9BC();
    v51 = swift_allocError();
    *v52 = v91;
    swift_willThrow();
    result = sub_240875A6C(v23, v90);
    v91 = v51;
    return result;
  }

  v95[0] = v93;
  v95[1] = v94;
  sub_2407EEE04(v95, &v93, &qword_27E507FA0, &qword_2408D7FB0);
  if (*(&v94 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507FA8, &unk_2408D9CD0);
    v53 = swift_dynamicCast();
    v54 = v88;
    if (v53)
    {
      v89 = v23;
      v55 = v92[0];
      v56 = v87;
      sub_2408D4910();

      v57 = sub_2408D4B10();
      v58 = sub_2408D4F20();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v93 = v60;
        *v59 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
        v61 = sub_2408D4CC0();
        v86 = v7;
        v63 = sub_2408CC504(v61, v62, &v93);
        v85 = v8;
        v64 = v63;

        *(v59 + 4) = v64;
        _os_log_impl(&dword_2407CF000, v57, v58, "Unarchived SRP results: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x245CC9F60](v60, -1, -1);
        MEMORY[0x245CC9F60](v59, -1, -1);

        v65 = v86;
        v66 = v87;
      }

      else
      {

        v66 = v56;
        v65 = v7;
      }

      v38(v66, v65);
      v80 = v84;
      type metadata accessor for AuthenticationReport(0);
      v81 = swift_allocObject();
      (*(v4 + 56))(v81 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, 1, 1, v80);
      v82 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context;
      v83 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
      *(v81 + 16) = v55;
      *(v81 + v82) = 0;
      *(v81 + v83) = 0;
      sub_240875A6C(v89, v90);
      sub_2407D9440(v95, &qword_27E507FA0, &qword_2408D7FB0);
      return v81;
    }
  }

  else
  {
    sub_2407D9440(&v93, &qword_27E507FA0, &qword_2408D7FB0);
    v54 = v88;
  }

  sub_2408D4910();
  sub_2407EEE04(v95, &v93, &qword_27E507FA0, &qword_2408D7FB0);
  v67 = sub_2408D4B10();
  v68 = sub_2408D4F30();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v89 = v23;
    v71 = v70;
    v96 = v70;
    *v69 = 136315138;
    v85 = v8;
    v86 = v7;
    sub_2407EEE04(&v93, v92, &qword_27E507FA0, &qword_2408D7FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507FA0, &qword_2408D7FB0);
    v72 = sub_2408D4D40();
    v91 = v38;
    v73 = v72;
    v75 = v74;
    sub_2407D9440(&v93, &qword_27E507FA0, &qword_2408D7FB0);
    v76 = sub_2408CC504(v73, v75, &v96);

    *(v69 + 4) = v76;
    _os_log_impl(&dword_2407CF000, v67, v68, "Unarchived SRP results were not of the expected type: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    v77 = v71;
    v23 = v89;
    MEMORY[0x245CC9F60](v77, -1, -1);
    MEMORY[0x245CC9F60](v69, -1, -1);

    v91(v54, v86);
  }

  else
  {

    sub_2407D9440(&v93, &qword_27E507FA0, &qword_2408D7FB0);
    v38(v54, v7);
  }

  sub_2408CB9BC();
  v78 = swift_allocError();
  *v79 = 1;
  v91 = v78;
  swift_willThrow();
  sub_240875A6C(v23, v90);
  return sub_2407D9440(v95, &qword_27E507FA0, &qword_2408D7FB0);
}

uint64_t sub_2408CB94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2408CB9BC()
{
  result = qword_27E507F90;
  if (!qword_27E507F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507F90);
  }

  return result;
}

uint64_t sub_2408CBA10@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v32 - v4;
  v6 = sub_2408D38D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
  swift_beginAccess();
  sub_2407EEE04(v1 + v10, v5, &qword_27E507F00, &qword_2408D6D50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2407D9440(v5, &qword_27E507F00, &qword_2408D6D50);
    v11 = *(v1 + 16);
    if (v11)
    {
      v12 = sub_2408D4D30();
      if (*(v11 + 16))
      {
        v14 = sub_2408CCB30(v12, v13);
        v16 = v15;

        if (v16)
        {
          v33 = *(*(v11 + 56) + 8 * v14);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
          if (swift_dynamicCast())
          {
            v17 = v32[3];
            v18 = sub_2408D4D30();
            if (*(v11 + 16))
            {
              v20 = sub_2408CCB30(v18, v19);
              v22 = v21;

              if (v22)
              {
                v33 = *(*(v11 + 56) + 8 * v20);
                swift_unknownObjectRetain();
                swift_dynamicCast();
              }
            }

            else
            {
            }

            v26 = sub_2408D4D30();
            if (*(v11 + 16))
            {
              v32[1] = v17;
              sub_2408CCB30(v26, v27);
              v29 = v28;

              if (v29)
              {
                objc_opt_self();
                v30 = swift_dynamicCastObjCClass();
                if (v30)
                {
                  v31 = [v30 stringValue];
                  sub_2408D4D30();
                }
              }
            }

            else
            {
            }

            sub_2408D38A0();
            goto LABEL_10;
          }
        }
      }

      else
      {
      }
    }

    v24 = 1;
    return (*(v7 + 56))(a1, v24, 1, v6);
  }

  v23 = *(v7 + 32);
  v23(v9, v5, v6);
  v23(a1, v9, v6);
LABEL_10:
  v24 = 0;
  return (*(v7 + 56))(a1, v24, 1, v6);
}

uint64_t sub_2408CBE10(void *a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_2408D4D30();
  if (!*(v2 + 16))
  {

    return 0;
  }

  sub_2408CCB30(v3, v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2408CBED4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_2408D4D30();
  if (*(v1 + 16))
  {
    sub_2408CCB30(v2, v3);
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507FF0, &qword_2408D9E88);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v6 = sub_2408D4D30();
    if (*(v13 + 16))
    {
      v8 = sub_2408CCB30(v6, v7);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v13 + 56) + 16 * v8);

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t AuthenticationReport.deinit()
{

  sub_2407D9440(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, &qword_27E507F00, &qword_2408D6D50);

  v1 = *(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
  *(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t AuthenticationReport.__deallocating_deinit()
{
  AuthenticationReport.deinit();

  return swift_deallocClassInstance();
}

void sub_2408CC144(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2408D4B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v10 = sub_2408D4C90();
  v25[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v25];

  v12 = v25[0];
  if (v11)
  {
    v13 = sub_2408D3410();
    v15 = v14;

    *a3 = v13;
    a3[1] = v15;
  }

  else
  {
    v16 = v12;
    v17 = sub_2408D33F0();

    swift_willThrow();
    sub_2408D4910();
    v18 = v17;
    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_2407CF000, v19, v20, "Failed to unarchive SRP results: %@", v21, 0xCu);
      sub_2407D9440(v22, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v22, -1, -1);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    swift_willThrow();
    *a2 = v17;
  }
}

uint64_t sub_2408CC3FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2408CC448(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2408CC4A8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2408CC504(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2408CC504(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2408CC5D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2407EEB40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2408CC5D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2408CC6DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2408D5140();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2408CC6DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2408CC728(a1, a2);
  sub_2408CC858(&unk_285283150);
  return v3;
}

void *sub_2408CC728(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2408CC944(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2408D5140();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2408D4D90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2408CC944(v10, 0);
        result = sub_2408D5110();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2408CC858(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2408CC9B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2408CC944(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E508018, qword_2408D9E90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2408CC9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E508018, qword_2408D9E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2408CCAAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2408CCABC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_2408CCB30(uint64_t a1, uint64_t a2)
{
  sub_2408D5300();
  sub_2408D4D60();
  v4 = sub_2408D5320();

  return sub_2408CCE28(a1, a2, v4);
}

unint64_t sub_2408CCBA8(uint64_t a1)
{
  sub_2408D38D0();
  v2 = MEMORY[0x277CED3D8];
  sub_2408CE39C(qword_27E507E70, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
  v3 = sub_2408D4CE0();
  return sub_2408CCFE4(a1, v3, MEMORY[0x277CED3D8], &qword_27E508010, v2, MEMORY[0x277CED3E8]);
}

unint64_t sub_2408CCC7C(uint64_t a1)
{
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v2 = sub_2408D5320();

  return sub_2408CCEE0(a1, v2);
}

unint64_t sub_2408CCD10(uint64_t a1)
{
  sub_2408D4260();
  v2 = MEMORY[0x277CED8B0];
  sub_2408CE39C(&qword_27E507E68, MEMORY[0x277CED8B0], MEMORY[0x277CED8B8]);
  v3 = sub_2408D4CE0();
  return sub_2408CCFE4(a1, v3, MEMORY[0x277CED8B0], &unk_27E508000, v2, MEMORY[0x277CED8C0]);
}

unint64_t sub_2408CCDE4(uint64_t a1)
{
  v2 = sub_2408D50B0();

  return sub_2408CD184(a1, v2);
}

unint64_t sub_2408CCE28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2408D5240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2408CCEE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2408D4D30();
      v8 = v7;
      if (v6 == sub_2408D4D30() && v8 == v9)
      {
        break;
      }

      v11 = sub_2408D5240();

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

unint64_t sub_2408CCFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2408CE39C(v23, v24, v25);
      v19 = sub_2408D4CF0();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2408CD184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2408CE340(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CC9500](v9, a1);
      sub_240812CC8(v9);
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

uint64_t _s18AppleIDSetupDaemon20AuthenticationReportC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v3 = sub_2408D4C90();
    v4 = v3;
    if (!*(a2 + 16))
    {
      if (!v3)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v5 = sub_2408D4C90();
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v7 = 0;
      goto LABEL_14;
    }

LABEL_15:
    v7 = 1;
    return v7 & 1;
  }

  if (!v5)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  sub_2407EEDBC(0, &unk_27E507F38, 0x277CBEAC0);
  v7 = sub_2408D5010();

LABEL_11:
  v6 = v4;
LABEL_14:

  return v7 & 1;
}

uint64_t sub_2408CD374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2408CD4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240813744;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CD5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2408CD704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240813A08;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CD82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407DB6F0;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2408CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407DB6F0;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CDBAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_2408CDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407DB6F0;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CDE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

void sub_2408CDF4C(uint64_t a1)
{
  sub_2408CE028(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2408CE028(uint64_t a1)
{
  if (!qword_27E507FC0)
  {
    sub_2408D38D0();
    v1 = sub_2408D5060();
    if (!v2)
    {
      atomic_store(v1, &qword_27E507FC0);
    }
  }
}

uint64_t sub_2408CE0C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2408CE100(uint64_t a1)
{
  sub_2408D38D0();
  if (v1 <= 0x3F)
  {
    sub_2408CE184(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2408CE184(uint64_t a1)
{
  if (!qword_27E507FE0)
  {
    type metadata accessor for AIDAServiceType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5071A0, &qword_2408D7610);
    sub_2408CE39C(&qword_28130EF80, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v1 = sub_2408D4CD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E507FE0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10SRPResultsV0aB6DaemonE17ConversionFailureO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2408CE260(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2408CE2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2408CE310(void *result, int a2)
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

uint64_t sub_2408CE39C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2408CE3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2408CE518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240813744;

  return v9(a1, a2, a3);
}

uint64_t sub_2408CE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2408CE780(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2408CE7C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2408CE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2408D3EC0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = sub_2408D48A0();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = sub_2408D38D0();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408CEA18, 0, 0);
}

uint64_t sub_2408CEA18()
{
  v25 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[4];
  v5 = sub_2408D4B20();
  v0[25] = __swift_project_value_buffer(v5, qword_27E508020);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Generating symptom report for account with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[2] = MEMORY[0x277D84FA0];
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_2408CECA0;
  v20 = v0[14];
  v21 = v0[6];
  v22 = v0[4];

  return sub_2408CFAA0(v20, v22, v18, v21);
}

uint64_t sub_2408CECA0()
{

  if (v0)
  {

    v1 = sub_2408CF610;
  }

  else
  {
    v1 = sub_2408CEDB8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408CEDB8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v2 + 32))(v4, v3, v1);
    (*(v2 + 16))(v6, v4, v1);
    sub_240869F04(v5, v6);
    v7 = *(v2 + 8);
    v7(v5, v1);
    v7(v4, v1);
  }

  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_2408CEF34;
  v11 = v0[13];
  v12 = v0[7];
  v13 = v0[4];

  return sub_2408D042C(v11, v13, v8, v9, v12);
}

uint64_t sub_2408CEF34()
{

  if (v0)
  {

    v1 = sub_2408CF6E4;
  }

  else
  {
    v1 = sub_2408CF04C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408CF04C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_2408CF1C0;
  v9 = v0[12];

  return sub_2408D1220(v9);
}

uint64_t sub_2408CF1C0()
{

  if (v0)
  {

    v1 = sub_2408CF7B0;
  }

  else
  {
    v1 = sub_2408CF2D8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408CF2D8()
{
  v27 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[3];
  sub_2408D38B0();
  sub_2408D3E90();
  (*(v9 + 16))(v8, v11, v10);
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F10();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610], MEMORY[0x277CED618]);
    v20 = sub_2408D5220();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_2408CC504(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2407CF000, v12, v13, "Generated symptom report: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2408CF610()
{
  (*(v0[16] + 56))(v0[14], 1, 1, v0[15]);
  sub_2407D9440(v0[14], &qword_27E5074C0, &qword_2408D9F60);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_2408CEF34;
  v4 = v0[13];
  v5 = v0[7];
  v6 = v0[4];

  return sub_2408D042C(v4, v6, v1, v2, v5);
}

uint64_t sub_2408CF6E4()
{
  (*(v0[16] + 56))(v0[13], 1, 1, v0[15]);
  sub_2407D9440(v0[13], &qword_27E5074C0, &qword_2408D9F60);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_2408CF1C0;
  v2 = v0[12];

  return sub_2408D1220(v2);
}

uint64_t sub_2408CF7B0()
{
  v20 = v0;
  (*(v0[16] + 56))(v0[12], 1, 1, v0[15]);
  sub_2407D9440(v0[12], &qword_27E5074C0, &qword_2408D9F60);
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  sub_2408D38B0();
  sub_2408D3E90();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610], MEMORY[0x277CED618]);
    v13 = sub_2408D5220();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_2408CC504(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v5, v6, "Generated symptom report: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2408CFA54()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E508020);
  __swift_project_value_buffer(v0, qword_27E508020);
  return sub_2408D4940();
}

uint64_t sub_2408CFAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_2408D4870();
  v4[5] = swift_task_alloc();
  v5 = sub_2408D4850();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D4830();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408CFC60, 0, 0);
}

uint64_t sub_2408CFC60()
{
  v69 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 24);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v9)
  {
    v13 = swift_slowAlloc();
    log = swift_slowAlloc();
    v68[0] = log;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v14 = sub_2408D5220();
    v65 = v6;
    v16 = v15;
    v63 = *(v11 + 8);
    v63(v10, v12);
    v17 = sub_2408CC504(v14, v16, v68);
    v6 = v65;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking IdMS-CK symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(log);
    MEMORY[0x245CC9F60](log, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v63 = *(v11 + 8);
    v63(v10, v12);
  }

  sub_24081399C();
  v18 = sub_2408D5040();
  v19 = [*(v0 + 32) continuationTokenForAccount_];
  if (v19)
  {
    v20 = v19;
    v67 = sub_2408D4D30();
    v22 = v21;
  }

  else
  {
    v67 = 0;
    v22 = 0;
  }

  v23 = v18;
  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_2407CF000, v24, v25, "Checking for CK loss symptom using account: %@", v26, 0xCu);
    sub_2407D9440(v27, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  if (v22)
  {
    v6(*(v0 + 120), *(v0 + 24), *(v0 + 96));

    v29 = sub_2408D4B10();
    v30 = sub_2408D4F20();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 120);
    v33 = *(v0 + 96);
    if (v31)
    {
      v34 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v34 = 136315395;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      loga = v29;
      v35 = sub_2408D5220();
      v37 = v36;
      v63(v32, v33);
      v38 = sub_2408CC504(v35, v37, v68);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2085;
      v39 = sub_2408CC504(v67, v22, v68);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_2407CF000, loga, v30, "Found a valid CK, IdMS account for altDSID: %s is good: %{sensitive}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v66, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);
    }

    else
    {

      v63(v32, v33);
    }

    v55 = 1;
  }

  else
  {
    v40 = v23;
    v41 = sub_2408D4B10();
    v42 = sub_2408D4F30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_2407CF000, v41, v42, "Detected CK loss symptom, account will not be able to silent auth: %@", v43, 0xCu);
      sub_2407D9440(v44, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v44, -1, -1);
      MEMORY[0x245CC9F60](v43, -1, -1);
    }

    v46 = *(v0 + 112);
    v48 = *(v0 + 88);
    v47 = *(v0 + 96);
    v64 = v40;
    v50 = *(v0 + 72);
    v49 = *(v0 + 80);
    v52 = *(v0 + 56);
    v51 = *(v0 + 64);
    v53 = v41;
    v54 = *(v0 + 24);
    v60 = *(v0 + 48);

    v6(v46, v54, v47);
    (*(v49 + 104))(v48, *MEMORY[0x277CEDD90], v50);
    (*(v52 + 104))(v51, *MEMORY[0x277CEDDB8], v60);
    sub_2408D4860();
    sub_2408D4880();

    v55 = 0;
  }

  v56 = *(v0 + 16);
  v57 = sub_2408D48A0();
  (*(*(v57 - 8) + 56))(v56, v55, 1, v57);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2408D042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  sub_2408D4870();
  v5[21] = swift_task_alloc();
  v6 = sub_2408D4850();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = sub_2408D4830();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D05F8, 0, 0);
}

uint64_t sub_2408D05F8()
{
  v50 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[19];
  v5 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v12 = v0[28];
  v11 = v0[29];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49[0] = v48;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 8);
    v19(v10, v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_2408CC504(v20, v17, v49);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking CDP symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x245CC9F60](v48, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v22 = v12;
    v19 = *(v11 + 8);
    v19(v10, v22);
  }

  v0[37] = v19;
  sub_2408D38B0();
  v23 = sub_2408D4D00();

  v24 = [objc_opt_self() contextForAccountWithAltDSID_];
  v0[38] = v24;

  if (v24)
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
    v0[39] = v25;
    if (v25)
    {
      v26 = [objc_allocWithZone(AISDCloudDataProtectionHelper) initWithStateController:v25 queue:v0[20]];
      v0[40] = v26;
      v0[2] = v0;
      v0[7] = v0 + 42;
      v0[3] = sub_2408D0C98;
      v27 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24085F49C;
      v0[13] = &block_descriptor_7;
      v0[14] = v27;
      [v26 checkAvailabilityWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v41 = sub_2408D4B10();
    v42 = sub_2408D4F30();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2407CF000, v41, v42, "Failed to init CDPStateController", v43, 2u);
      MEMORY[0x245CC9F60](v43, -1, -1);
    }

    sub_2408D2FBC();
    swift_allocError();
    *v44 = 0xD000000000000012;
    v44[1] = 0x80000002408DA380;
    swift_willThrow();
  }

  else
  {
    v6(v0[30], v0[19], v0[28]);
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F30();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[30];
    v32 = v0[28];
    if (v30)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49[0] = v34;
      *v33 = 136315138;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v35 = sub_2408D5220();
      v36 = v19;
      v37 = v35;
      v39 = v38;
      v36(v31, v32);
      v40 = sub_2408CC504(v37, v39, v49);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_2407CF000, v28, v29, "Failed to build CDP context for account with altDSID: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x245CC9F60](v34, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    else
    {

      v19(v31, v32);
    }

    sub_2408D2FBC();
    swift_allocError();
    *v45 = xmmword_2408D7D10;
    swift_willThrow();
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_2408D0C98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_2408D114C;
  }

  else
  {
    v2 = sub_2408D0DA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408D0DA8(uint64_t a1)
{
  v32 = v1;
  if (*(v1 + 336) == 1)
  {
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Account has access to manatee, no symptom.", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = 1;
  }

  else
  {
    (*(v1 + 280))(*(v1 + 256), *(v1 + 152), *(v1 + 224));
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F30();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 296);
    v10 = *(v1 + 256);
    v11 = *(v1 + 224);
    if (v8)
    {
      v30 = *(v1 + 296);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v14 = sub_2408D5220();
      v16 = v15;
      v30(v10, v11);
      v17 = sub_2408CC504(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2407CF000, v6, v7, "Detected CDP state symptom, account does not have access to manatee: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    else
    {

      v9(v10, v11);
    }

    v18 = *(v1 + 216);
    v19 = *(v1 + 200);
    v20 = *(v1 + 208);
    v22 = *(v1 + 184);
    v21 = *(v1 + 192);
    v23 = *(v1 + 176);
    (*(v1 + 280))(*(v1 + 248), *(v1 + 152), *(v1 + 224));
    (*(v20 + 104))(v18, *MEMORY[0x277CEDD88], v19);
    (*(v22 + 104))(v21, *MEMORY[0x277CEDDB0], v23);
    sub_2408D4860();
    sub_2408D4880();
    v5 = 0;
  }

  v24 = *(v1 + 312);
  v25 = *(v1 + 320);
  v26 = *(v1 + 144);

  v27 = sub_2408D48A0();
  (*(*(v27 - 8) + 56))(v26, v5, 1, v27);

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_2408D114C(uint64_t a1)
{
  v2 = v1[40];
  v4 = v1[38];
  v3 = v1[39];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_2408D1240()
{
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E508020);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Skipping missing services check for this platform", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_2408D48A0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408D139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2408D3EC0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = sub_2408D48A0();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = sub_2408D38D0();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D159C, 0, 0);
}

uint64_t sub_2408D159C()
{
  v25 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[4];
  v5 = sub_2408D4B20();
  v0[25] = __swift_project_value_buffer(v5, qword_27E508020);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Generating Preflight Setup symptom report for account with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[2] = MEMORY[0x277D84FA0];
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_2408D1824;
  v20 = v0[14];
  v21 = v0[6];
  v22 = v0[4];

  return sub_2408CFAA0(v20, v22, v18, v21);
}

uint64_t sub_2408D1824()
{

  if (v0)
  {

    v1 = sub_2408D219C;
  }

  else
  {
    v1 = sub_2408D193C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408D193C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v2 + 32))(v4, v3, v1);
    (*(v2 + 16))(v6, v4, v1);
    sub_240869F04(v5, v6);
    v7 = *(v2 + 8);
    v7(v5, v1);
    v7(v4, v1);
  }

  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_2408D1AB8;
  v10 = v0[13];
  v11 = v0[6];
  v12 = v0[4];

  return sub_2408D25E8(v10, v12, v8, v11);
}

uint64_t sub_2408D1AB8()
{

  if (v0)
  {

    v1 = sub_2408D2270;
  }

  else
  {
    v1 = sub_2408D1BD0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408D1BD0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_2408D1D4C;
  v11 = v0[12];
  v12 = v0[7];
  v13 = v0[4];

  return sub_2408D042C(v11, v13, v8, v9, v12);
}

uint64_t sub_2408D1D4C()
{

  if (v0)
  {

    v1 = sub_2408D2344;
  }

  else
  {
    v1 = sub_2408D1E64;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2408D1E64()
{
  v27 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[3];
  sub_2408D38B0();
  sub_2408D3E90();
  (*(v9 + 16))(v8, v11, v10);
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F10();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610], MEMORY[0x277CED618]);
    v20 = sub_2408D5220();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_2408CC504(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2407CF000, v12, v13, "Generated Preflight Setup symptom report: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2408D219C()
{
  (*(v0[16] + 56))(v0[14], 1, 1, v0[15]);
  sub_2407D9440(v0[14], &qword_27E5074C0, &qword_2408D9F60);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_2408D1AB8;
  v3 = v0[13];
  v4 = v0[6];
  v5 = v0[4];

  return sub_2408D25E8(v3, v5, v1, v4);
}

uint64_t sub_2408D2270()
{
  (*(v0[16] + 56))(v0[13], 1, 1, v0[15]);
  sub_2407D9440(v0[13], &qword_27E5074C0, &qword_2408D9F60);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_2408D1D4C;
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[4];

  return sub_2408D042C(v4, v6, v1, v2, v5);
}

uint64_t sub_2408D2344()
{
  v20 = v0;
  (*(v0[16] + 56))(v0[12], 1, 1, v0[15]);
  sub_2407D9440(v0[12], &qword_27E5074C0, &qword_2408D9F60);
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  sub_2408D38B0();
  sub_2408D3E90();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610], MEMORY[0x277CED618]);
    v13 = sub_2408D5220();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_2408CC504(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v5, v6, "Generated Preflight Setup symptom report: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2408D25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_2408D4870();
  v4[5] = swift_task_alloc();
  v5 = sub_2408D4850();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D4830();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D27A8, 0, 0);
}

uint64_t sub_2408D27A8()
{
  v69 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 24);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v9)
  {
    v13 = swift_slowAlloc();
    log = swift_slowAlloc();
    v68[0] = log;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v14 = sub_2408D5220();
    v65 = v6;
    v16 = v15;
    v63 = *(v11 + 8);
    v63(v10, v12);
    v17 = sub_2408CC504(v14, v16, v68);
    v6 = v65;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking IdMS-PRK symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(log);
    MEMORY[0x245CC9F60](log, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v63 = *(v11 + 8);
    v63(v10, v12);
  }

  sub_24081399C();
  v18 = sub_2408D5040();
  v19 = [*(v0 + 32) passwordResetTokenForAccount_];
  if (v19)
  {
    v20 = v19;
    v67 = sub_2408D4D30();
    v22 = v21;
  }

  else
  {
    v67 = 0;
    v22 = 0;
  }

  v23 = v18;
  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_2407CF000, v24, v25, "Checking for PRK loss symptom using account: %@", v26, 0xCu);
    sub_2407D9440(v27, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  if (v22)
  {
    v6(*(v0 + 120), *(v0 + 24), *(v0 + 96));

    v29 = sub_2408D4B10();
    v30 = sub_2408D4F20();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 120);
    v33 = *(v0 + 96);
    if (v31)
    {
      v34 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v34 = 136315395;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      loga = v29;
      v35 = sub_2408D5220();
      v37 = v36;
      v63(v32, v33);
      v38 = sub_2408CC504(v35, v37, v68);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2085;
      v39 = sub_2408CC504(v67, v22, v68);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_2407CF000, loga, v30, "Found a valid PRK, IdMS account for altDSID: %s is good: %{sensitive}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v66, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);
    }

    else
    {

      v63(v32, v33);
    }

    v55 = 1;
  }

  else
  {
    v40 = v23;
    v41 = sub_2408D4B10();
    v42 = sub_2408D4F30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_2407CF000, v41, v42, "Detected PRK loss symptom, account will not be able to magic auth: %@", v43, 0xCu);
      sub_2407D9440(v44, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v44, -1, -1);
      MEMORY[0x245CC9F60](v43, -1, -1);
    }

    v46 = *(v0 + 112);
    v48 = *(v0 + 88);
    v47 = *(v0 + 96);
    v64 = v40;
    v50 = *(v0 + 72);
    v49 = *(v0 + 80);
    v52 = *(v0 + 56);
    v51 = *(v0 + 64);
    v53 = v41;
    v54 = *(v0 + 24);
    v60 = *(v0 + 48);

    v6(v46, v54, v47);
    (*(v49 + 104))(v48, *MEMORY[0x277CEDD98], v50);
    (*(v52 + 104))(v51, *MEMORY[0x277CEDDB8], v60);
    sub_2408D4860();
    sub_2408D4880();

    v55 = 0;
  }

  v56 = *(v0 + 16);
  v57 = sub_2408D48A0();
  (*(*(v57 - 8) + 56))(v56, v55, 1, v57);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2408D2F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2408D2FBC()
{
  result = qword_27E508038;
  if (!qword_27E508038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E508038);
  }

  return result;
}

uint64_t sub_2408D30C0(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  sub_2407D2588(v4, *a2);
  return v4;
}

uint64_t sub_2408D3128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a3;
  v9 = *a4;
  *a3 = a1;
  *a4 = a2;
  return sub_2407D1854(v8, v9);
}

uint64_t sub_2408D31E4@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  if (*a1)
  {
    v8 = *a2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
  return sub_2407D2588(v6, v7);
}

uint64_t sub_2408D3248(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  v11 = *a5;
  v12 = *a6;
  *a5 = v8;
  *a6 = v10;
  sub_2407D2588(v8, v9);
  return sub_2407D1854(v11, v12);
}

uint64_t sub_2408D32F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a3;
  v9 = *a4;
  *a3 = a1;
  *a4 = a2;
  sub_2407D1854(v8, v9);
}