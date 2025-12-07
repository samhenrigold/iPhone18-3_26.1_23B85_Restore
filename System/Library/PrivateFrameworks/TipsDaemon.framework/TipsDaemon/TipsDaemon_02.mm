uint64_t sub_232DCFFE8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x238395D50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x238395D50](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_232E01830();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_232E01830();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_232E019C0();
  }

  result = sub_232E019C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_232DD0238(id result, void *a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void sub_232DD0264(void *a1, void *a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_232DD0290(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_232E01BB0();
  sub_232E01530();
  v8 = sub_232E01BE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_232E01AD0() & 1) != 0)
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

    sub_232DD172C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t *sub_232DD03E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_232E01BB0();

    sub_232E01530();
    v11 = sub_232E01BE0();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_232E01AD0() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_232DD1508(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_232E01BB0();

        sub_232E01530();
        v33 = sub_232E01BE0();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_232DD10EC(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x238396AF0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x238396AF0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_232DD088C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_232E01BB0();

    sub_232E01530();
    v23 = sub_232E01BE0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_232E01AD0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_232DD1508(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_232E01BB0();

            sub_232E01530();
            v41 = sub_232E01BE0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_232E01AD0() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_232DD12D0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x238396AF0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_232D734F4(v13);
    return v5;
  }

  result = MEMORY[0x238396AF0](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_232DD0DFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v8 = sub_232DD1CE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232DD0E8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018D0();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_232DD10EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_232DD1508(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_232E01BB0();

        sub_232E01530();
        v16 = sub_232E01BE0();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

unint64_t *sub_232DD12D0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_232DD1508(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_232E01BB0();

        sub_232E01530();
        v19 = sub_232E01BE0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_232E01AD0() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_232DD1508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018E0();
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
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_232DD172C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_232DD0E8C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_232DD18AC();
      goto LABEL_16;
    }

    sub_232DD1A08(v8 + 1);
  }

  v10 = *v4;
  sub_232E01BB0();
  sub_232E01530();
  result = sub_232E01BE0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_232E01AD0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_232E01B30();
  __break(1u);
  return result;
}

void *sub_232DD18AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  v2 = *v0;
  v3 = sub_232E018C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_232DD1A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7660, &unk_232E07540);
  result = sub_232E018D0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_232E01BB0();

      sub_232E01530();
      result = sub_232E01BE0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_232DD1C40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x238395B40](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_232DD0290(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_232DD1CE0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_232DFA0E4(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_232DFA0E4(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232DD1E60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_232DD1CE0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_232DD0DFC(v10, v6, v4, a2);
  result = MEMORY[0x238396AF0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_232DD1FF8()
{
  result = qword_2814E8218;
  if (!qword_2814E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8218);
  }

  return result;
}

unint64_t sub_232DD204C()
{
  result = qword_2814E8188[0];
  if (!qword_2814E8188[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7670, &qword_232E07580);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8188);
  }

  return result;
}

uint64_t sub_232DD20B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DD2114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DD2178(uint64_t a1)
{
  type metadata accessor for UserGuideIndexItem(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v11 = *(v1 + 64);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA72F4;

  return sub_232DCF130(a1, v3, v4, v5, v6, v7, v8, v11);
}

uint64_t sub_232DD22B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232DD2314(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA7C78;

  return sub_232DCF4F4(a1, v5, v4);
}

unint64_t sub_232DD23DC()
{
  result = qword_27DDD7678;
  if (!qword_27DDD7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7678);
  }

  return result;
}

unint64_t sub_232DD2430()
{
  result = qword_27DDD7688;
  if (!qword_27DDD7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7688);
  }

  return result;
}

unint64_t sub_232DD2484()
{
  result = qword_2814E8458;
  if (!qword_2814E8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8458);
  }

  return result;
}

unint64_t sub_232DD24D8()
{
  result = qword_2814E8450;
  if (!qword_2814E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8450);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TipsDaemon26UserGuideItemIndexingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_232DD255C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_232DD25A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_232DD25E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id TPSCollection.indexHash.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = sub_232E01410();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_232E01500();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E01440();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E076B0;
  *(inited + 32) = swift_getKeyPath();
  v22[1] = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  v8 = 0;
  *(inited + 48) = swift_getKeyPath();
  v32 = inited & 0xC000000000000001;
  v33 = inited;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v28 = v4;
  v27 = v6;
  do
  {
    if (v32)
    {
      MEMORY[0x238395D50](v8, v33);
    }

    else
    {
      if (v8 >= *(v29 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }
    }

    v34 = v31;
    v9 = v31;
    swift_getAtKeyPath();

    sub_232E014F0();
    v10 = sub_232E014E0();
    v12 = v11;

    (*(v1 + 8))(v3, v30);
    if (v12 >> 60 == 15)
    {

      goto LABEL_3;
    }

    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        memset(v35, 0, 14);
        goto LABEL_22;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (sub_232E00A30() && __OFSUB__(v15, sub_232E00A60()))
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v14, v15))
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (v13)
    {
      if (v10 >> 32 < v10)
      {
        goto LABEL_25;
      }

      if (sub_232E00A30() && __OFSUB__(v10, sub_232E00A60()))
      {
        goto LABEL_28;
      }

LABEL_20:
      sub_232E00A50();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v6 = v27;
      v4 = v28;
      goto LABEL_22;
    }

    v35[0] = v10;
    LOWORD(v35[1]) = v12;
    BYTE2(v35[1]) = BYTE2(v12);
    BYTE3(v35[1]) = BYTE3(v12);
    BYTE4(v35[1]) = BYTE4(v12);
    BYTE5(v35[1]) = BYTE5(v12);
    sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
LABEL_22:
    sub_232E01400();
    sub_232DB0E28(v10, v12);

    sub_232DB0E28(v10, v12);
LABEL_3:
    ++v8;
  }

  while (v8 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = v24;
  sub_232E01420();
  v17 = v26;
  v36 = v26;
  v37 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v19 = v25;
  (*(v25 + 16))(boxed_opaque_existential_1, v16, v17);
  __swift_project_boxed_opaque_existential_1(v35, v36);
  sub_232E00A80();
  (*(v19 + 8))(v16, v17);
  v20 = v34;
  __swift_destroy_boxed_opaque_existential_1(v35);
  (*(v23 + 8))(v6, v4);
  return v20;
}

void sub_232DD2DB4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_232E014D0();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void keypath_setTm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_232E014C0();
  [v6 *a5];
}

uint64_t sub_232DD2E78@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 lastModifiedDate];
  result = sub_232E01AB0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL TPSCollection.indexable.getter()
{
  v1 = [v0 supportID];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id TPSCollection.csAttributeSet.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_232E01180();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 supportID];
  if (!v9)
  {
    return 0;
  }

  sub_232E012B0();
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_232E01160();
  v10 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v11 = sub_232E01170();
  v12 = [v10 initWithContentType_];

  (*(v6 + 8))(v8, v5);
  v13 = sub_232DD3F14(v12);

  return v13;
}

CSSearchableItemAttributeSet __swiftcall TPSCollection.addAttributes(to:)(CSSearchableItemAttributeSet to)
{
  v1 = sub_232DD3F14(to.super.isa);

  return v1;
}

id TPSCollection.csSearchableItem.getter()
{
  v1 = sub_232E00CE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E008A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 supportID];
  if (result)
  {

    result = TPSCollection.csAttributeSet.getter();
    if (result)
    {
      v10 = result;
      v11 = [v0 identifier];
      v34 = v1;
      v12 = v11;
      sub_232E014D0();
      v33 = v2;

      v13 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v14 = v10;
      v32 = v14;
      v15 = sub_232E014C0();

      v16 = sub_232E014C0();
      v17 = [v13 initWithUniqueIdentifier:v15 domainIdentifier:v16 attributeSet:v14];

      v18 = [v17 uniqueIdentifier];
      v19 = sub_232E014D0();
      v31 = v5;
      v20 = v19;
      v22 = v21;

      v23 = [v17 attributeSet];
      v24 = [v0 language];
      v25 = sub_232E014D0();
      v27 = v26;

      *&v38 = v20;
      *(&v38 + 1) = v22;
      *&v39 = v23;
      *(&v39 + 1) = v25;
      v40 = v27;
      v28 = [v17 attributeSet];
      sub_232DC5598(v8);
      sub_232E017B0();

      (*(v6 + 8))(v8, v31);
      v29 = [v17 attributeSet];
      v35 = v38;
      v36 = v39;
      v37 = v40;
      sub_232DAB238();
      sub_232E017A0();

      sub_232E00C80();
      v30 = sub_232E00CA0();
      (*(v33 + 8))(v4, v34);
      [v17 setExpirationDate_];

      return v17;
    }
  }

  return result;
}

uint64_t Array<A>.searchableItems.getter(unint64_t a1)
{
  v53 = sub_232E00CE0();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_232E008A0();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v38 - v7;
  v55 = sub_232E01180();
  i = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_21:
  v10 = sub_232E019C0();
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v11 = 0;
  v45 = (i + 56);
  v44 = (i + 8);
  v43 = v4 + 1;
  v42 = (v2 + 8);
  v2 = MEMORY[0x277D84F90];
  do
  {
    for (i = v11; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x238395D50](i, a1);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * i + 32);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      v4 = v12;
      v13 = [v4 supportID];
      if (v13)
      {

        v14 = [v4 supportID];
        if (v14)
        {
          break;
        }
      }

      if (v11 == v10)
      {
        return v2;
      }
    }

    sub_232E012B0();
    v54 = v15;
    (*v45)(v49, 1, 1, v55);
    v16 = v48;
    sub_232E01160();
    v17 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v18 = sub_232E01170();
    v19 = [v17 initWithContentType_];

    (*v44)(v16, v55);
    v54 = sub_232DD3F14(v19);

    v20 = [v4 identifier];
    sub_232E014D0();

    v47 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v21 = v54;
    v22 = sub_232E014C0();

    v23 = sub_232E014C0();
    v41 = v21;
    v54 = [v47 initWithUniqueIdentifier:v22 domainIdentifier:v23 attributeSet:v21];

    v24 = v54;
    v25 = [v54 uniqueIdentifier];
    v39 = sub_232E014D0();
    v47 = v26;

    v46 = [v24 attributeSet];
    v27 = [v4 language];
    v28 = sub_232E014D0();
    v30 = v29;
    v40 = v29;

    *&v60 = v39;
    *(&v60 + 1) = v47;
    *&v61 = v46;
    *(&v61 + 1) = v28;
    v62 = v30;
    v31 = [v54 attributeSet];
    v32 = v50;
    sub_232DC5598(v50);
    sub_232E017B0();

    (*v43)(v32, v51);
    v33 = v54;
    v34 = [v54 attributeSet];
    v56 = v60;
    v57 = v61;
    v58 = v62;
    sub_232DAB238();
    sub_232E017A0();

    v35 = v52;
    sub_232E00C80();
    v36 = sub_232E00CA0();
    (*v42)(v35, v53);
    [v33 setExpirationDate_];

    MEMORY[0x2383959E0]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_232E015F0();
    }

    sub_232E01610();
    v2 = v59;
  }

  while (v11 != v10);
  return v2;
}

_BYTE *sub_232DD3BA8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_232DB0B68(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_232DB0CA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_232DB0C20(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_232DD3C3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_232E01400();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_232DD3E1C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_232DD3E1C(v5, v6);
  }

  sub_232E01440();
  sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_232E01400();
}

uint64_t sub_232DD3E1C(uint64_t a1, uint64_t a2)
{
  result = sub_232E00A30();
  if (!result || (result = sub_232E00A60(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_232E00A50();
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_232E01400();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232DD3F14(void *a1)
{
  v2 = v1;
  v4 = [v1 tileContent];
  v5 = [v4 title];

  [a1 setDisplayName_];
  v6 = [v2 identifier];
  if (!v6)
  {
    sub_232E014D0();
    v6 = sub_232E014C0();
  }

  [a1 setUniqueIdentifier_];

  v7 = sub_232E014C0();
  [a1 setDomainIdentifier_];

  v8 = [v2 identifier];
  sub_232E014D0();

  sub_232E017C0();
  v9 = [v2 keywords];
  [a1 setKeywords_];

  v10 = [v2 tileContent];
  v11 = [v10 bodyText];

  if (v11)
  {
    sub_232E014D0();

    v11 = sub_232E014C0();
  }

  [a1 setContentDescription_];

  v12 = [v2 tileContent];
  v13 = [v12 bodyText];

  [a1 setTextContent_];
  sub_232DD4214();
  v14 = sub_232E01810();
  [a1 setDisableSearchInSpotlight_];

  v15 = [v2 correlationID];
  if (v15)
  {
    v16 = v15;
    sub_232E014D0();
  }

  sub_232E017D0();
  v17 = [v2 supportID];
  if (v17)
  {
    v18 = v17;
    [a1 setIdentifier_];
  }

  return a1;
}

unint64_t sub_232DD4214()
{
  result = qword_2814E7BB8;
  if (!qword_2814E7BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BB8);
  }

  return result;
}

uint64_t sub_232DD4260(uint64_t a1, uint64_t a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v27 = sub_232E01500();
  result = MEMORY[0x28223BE20](v27);
  v26 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v24[1] = a2;
    v25 = (v5 + 8);
    for (i = (a1 + 56); ; i += 4)
    {
      v28 = v7;
      v10 = *(i - 1);
      v9 = *i;
      v11 = *(i - 2);

      sub_232DB0970(v10, v9);
      v12 = v26;
      sub_232E014F0();
      v29 = v11;
      v13 = sub_232E014E0();
      v15 = v14;
      (*v25)(v12, v27);
      v16 = v15 >> 60 == 15 ? 0 : v13;
      v17 = v15 >> 60 == 15 ? 0xC000000000000000 : v15;
      v18 = v17 >> 62;
      if ((v17 >> 62) <= 1)
      {
        break;
      }

      if (v18 == 2)
      {
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);

        if (sub_232E00A30() && __OFSUB__(v19, sub_232E00A60()))
        {
          goto LABEL_42;
        }

        if (__OFSUB__(v20, v19))
        {
          goto LABEL_39;
        }

LABEL_23:
        sub_232E00A50();
        sub_232E01440();
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        goto LABEL_25;
      }

      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      memset(v30, 0, 14);
LABEL_25:
      sub_232E01400();
      sub_232DB091C(v16, v17);
      sub_232DB091C(v16, v17);
      v21 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v21 != 2)
        {
          sub_232E01440();
          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          memset(v30, 0, 14);
          goto LABEL_4;
        }

        v22 = *(v10 + 16);
        v23 = *(v10 + 24);

        if (sub_232E00A30() && __OFSUB__(v22, sub_232E00A60()))
        {
          goto LABEL_43;
        }

        if (__OFSUB__(v23, v22))
        {
          goto LABEL_41;
        }

        goto LABEL_35;
      }

      if (v21)
      {
        if (v10 >> 32 < v10)
        {
          goto LABEL_40;
        }

        if (sub_232E00A30() && __OFSUB__(v10, sub_232E00A60()))
        {
          goto LABEL_45;
        }

LABEL_35:
        sub_232E00A50();
        sub_232E01440();
        sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        goto LABEL_4;
      }

      v30[0] = v10;
      LOWORD(v30[1]) = v9;
      BYTE2(v30[1]) = BYTE2(v9);
      BYTE3(v30[1]) = BYTE3(v9);
      BYTE4(v30[1]) = BYTE4(v9);
      BYTE5(v30[1]) = BYTE5(v9);
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
LABEL_4:
      sub_232E01400();
      sub_232DB091C(v10, v9);

      result = sub_232DB091C(v10, v9);
      v7 = v28 - 1;
      if (v28 == 1)
      {
        return result;
      }
    }

    if (!v18)
    {
      v30[0] = v16;
      LOWORD(v30[1]) = v17;
      BYTE2(v30[1]) = BYTE2(v17);
      BYTE3(v30[1]) = BYTE3(v17);
      BYTE4(v30[1]) = BYTE4(v17);
      BYTE5(v30[1]) = BYTE5(v17);
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      goto LABEL_25;
    }

    if (v16 >> 32 < v16)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    if (sub_232E00A30() && __OFSUB__(v16, sub_232E00A60()))
    {
      goto LABEL_44;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_232DD48BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232DB1790(a1, a2);
  v14 = v13;
  v16 = v15;
  if (v12 == v5)
  {
    v17 = sub_232DD6BA4(v5, a4);
    v19 = v18;
    sub_232DB0970(v14, v16);
    v20 = sub_232DB07B4(v17, v19, v14, v16);
    sub_232DB091C(v14, v16);
    sub_232DB091C(v17, v19);
    if (v20)
    {
      sub_232DB091C(v14, v16);
      return 1;
    }

    sub_232E01270();
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000003BLL, 0x8000000232E0C8C0);
    sub_232DB0970(v14, v16);
    v25 = sub_232E00C10();
    MEMORY[0x238395970](v25);

    sub_232DB091C(v14, v16);
    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v26 = sub_232DD6BA4(v5, a4);
    v28 = v27;
    v29 = sub_232E00C10();
    MEMORY[0x238395970](v29);

    sub_232DB091C(v26, v28);
  }

  else
  {
    v22 = v12;
    sub_232E01270();
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0C850);
    v31 = v22;
    v23 = sub_232E01AB0();
    MEMORY[0x238395970](v23);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v31 = v5;
    v24 = sub_232E01AB0();
    MEMORY[0x238395970](v24);
  }

  MEMORY[0x238395970](41, 0xE100000000000000);
  sub_232E01360();

  sub_232DB091C(v14, v16);
  (*(v9 + 8))(v11, v8);
  return 0;
}

uint64_t sub_232DD4BF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76A0, &qword_232E07908);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DD8E20();
  sub_232E01C10();
  v13 = 0;
  sub_232E01A90();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    sub_232DD90E4(&qword_2814E7C50, sub_232DD8E74, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_232E01A80();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_232DD4DC4()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_232DD4E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_232E01AD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000232E0D7B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_232DD4EE8(uint64_t a1)
{
  v2 = sub_232DD8E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DD4F24(uint64_t a1)
{
  v2 = sub_232DD8E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DD4F60@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_232DD8EC8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_232DD4FB0()
{
  v1 = *(v0 + 8);
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB0348(v3, v1);
  return sub_232E01BE0();
}

uint64_t sub_232DD5010(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_232E01BD0();

  return sub_232DB0348(a1, v3);
}

uint64_t sub_232DD5060(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB0348(v4, v2);
  return sub_232E01BE0();
}

BOOL sub_232DD50BC(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_232DB0970(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_232DD5634(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_232DB091C(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_232DB0970(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_232DB0970(v26, v25);
      v40 = sub_232E00A30();
      if (v40)
      {
        v41 = v40;
        v42 = sub_232E00A60();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_232E00A50();
      v48 = v50;
LABEL_70:
      sub_232DAD698(v48, v19, v18, v58);
      sub_232DB091C(v26, v25);
      sub_232DB091C(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_232DB0970(v26, v25);
      v44 = sub_232E00A30();
      if (v44)
      {
        v52 = v44;
        v45 = sub_232E00A60();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_232E00A50();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_232DB0970(v26, v25);
LABEL_64:
    sub_232DAD698(v58, v19, v18, &v57);
    sub_232DB091C(v26, v25);
    sub_232DB091C(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_232DB091C(v19, v18);
  return 0;
}

unint64_t sub_232DD55E0()
{
  result = qword_27DDD7698;
  if (!qword_27DDD7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7698);
  }

  return result;
}

unint64_t sub_232DD5634(uint64_t a1, uint64_t a2)
{
  sub_232E01BB0();
  sub_232E01530();
  v4 = sub_232E01BE0();

  return sub_232DD56F0(a1, a2, v4);
}

unint64_t sub_232DD56AC(uint64_t a1)
{
  v2 = sub_232E01890();

  return sub_232DD57A8(a1, v2);
}

unint64_t sub_232DD56F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_232E01AD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_232DD57A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_232DD6F24(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x238395CD0](v9, a1);
      sub_232DBD2E0(v9);
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

uint64_t sub_232DD5870(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232DB028C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_232DD58DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_232DD58DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_232E01AA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7380, &qword_232E06208);
        v5 = sub_232E01600();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_232DD5AB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_232DD59E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_232DD59E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_232E01AD0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DD5AB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_232DAFB5C(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_232DAF8A8((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_232E01AD0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_232E01AD0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_232DADA58(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_232DADA58((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_232DAF8A8((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_232DAFB5C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_232DAFAD0(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_232E01AD0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

unint64_t *sub_232DD6090(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_232DD64C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_232DD6120(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v11 = sub_232DD7C7C(v10, a2, a3, a4, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_232DD61D8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_232DD68A4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
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

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t *sub_232DD6304(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_232DD64C8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_232DD6090(v11, v6, a2, a1);

    MEMORY[0x238396AF0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_232DD64C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_232E01BB0();

      sub_232E01530();
      v26 = sub_232E01BE0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_232E01AD0() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_232DD1508(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_232E01BB0();

      sub_232E01530();
      v39 = sub_232E01BE0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_232E01AD0() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DD68A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_232E01BB0();
  sub_232E01530();
  v6 = sub_232E01BE0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_232E01AD0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_232DD18AC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_232DD69E0(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_232DD69E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_232E01880();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_232E01BB0();

        sub_232E01530();
        v10 = sub_232E01BE0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_232DD6BA4(__int16 a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = sub_232E01410();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232E01440();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01430();
  LOWORD(v33) = a1;
  v11 = sub_232DABC9C(&v33, &v33 + 2);
  v13 = v12;
  sub_232DB0970(v11, v12);
  v28 = v10;
  sub_232DD3C3C(v11, v13, v10);
  v29 = v13;
  v30 = v11;
  sub_232DB091C(v11, v13);
  v14 = *(a2 + 16);
  if (v14)
  {
    v24 = v8;
    v25 = v7;
    v26 = v5;
    v27 = v4;
    v15 = sub_232DADF74(v14, 0);
    v16 = sub_232DAFB70(&v33, (v15 + 4), v14, a2);
    v17 = v33;

    sub_232D734F4(v17);
    if (v16 != v14)
    {
      __break(1u);
    }

    v5 = v26;
    v4 = v27;
    v8 = v24;
    v7 = v25;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v33 = v15;
  sub_232DD5870(&v33);
  v18 = v28;
  sub_232DD4260(v33, v28);

  v19 = v31;
  sub_232E01420();
  v34 = v4;
  v35 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(v5 + 16))(boxed_opaque_existential_1, v19, v4);
  __swift_project_boxed_opaque_existential_1(&v33, v34);
  sub_232E00A80();
  sub_232DB091C(v30, v29);
  (*(v5 + 8))(v19, v4);
  v21 = v32;
  __swift_destroy_boxed_opaque_existential_1(&v33);
  (*(v8 + 8))(v18, v7);
  return v21;
}

unint64_t sub_232DD6F80(unint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v47 = sub_232E01410();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E01500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_232E01440();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v64 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v55 = v7;
    if (!v10)
    {
      v15 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v59 = v8;
    v60 = v5;
    v61 = v2;
    v8 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x238395D50](v8, a1);
      v12 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      v13 = v11;
      v14 = [v13 supportID];

      if (v14)
      {

        sub_232E01950();
        v5 = *(v64 + 16);
        sub_232E01980();
        sub_232E01990();
        sub_232E01960();
      }

      else
      {
      }

      ++v8;
      v7 = v55;
      if (v12 == v10)
      {
        goto LABEL_15;
      }
    }

    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    v11 = *(a1 + 8 * v8 + 32);
    v12 = (v8 + 1);
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v15 = v64;
    v5 = v60;
    v2 = v61;
    v8 = v59;
LABEL_17:
    v16 = sub_232DB3120(MEMORY[0x277D84F90]);
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v17 = sub_232E019C0();
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v17 = *(v15 + 16);
      if (v17)
      {
LABEL_20:
        if (v17 < 1)
        {
          __break(1u);
        }

        v18 = 0;
        v53 = 0;
        v45 = v15 & 0xC000000000000001;
        v39 = v15;
        v38 = v15 + 32;
        v59 = (v5 + 8);
        v42 = (v2 + 16);
        v41 = (v2 + 8);
        v40 = (v8 + 8);
        v44 = xmmword_232E076B0;
        v54 = v4;
        v43 = v17;
LABEL_23:
        v52 = v16;
        if (v45)
        {
          v25 = MEMORY[0x238395D50](v18, v39);
        }

        else
        {
          v25 = *(v38 + 8 * v18);
        }

        v26 = v25;
        v51 = v18 + 1;
        v27 = [v25 identifier];
        v49 = sub_232E014D0();
        v50 = v28;

        sub_232E01430();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
        inited = swift_initStackObject();
        *(inited + 16) = v44;
        *(inited + 32) = swift_getKeyPath();
        v48 = inited + 32;
        *(inited + 40) = swift_getKeyPath();
        v30 = 0;
        *(inited + 48) = swift_getKeyPath();
        v60 = inited & 0xC000000000000001;
        v61 = inited;
        v56 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_29:
        if (v60)
        {
          v2 = MEMORY[0x238395D50](v30, v61);
        }

        else
        {
          if (v30 >= *(v56 + 16))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            v10 = sub_232E019C0();
            continue;
          }

          v2 = *(v61 + 8 * v30 + 32);
        }

        v62 = v26;
        v8 = v26;
        swift_getAtKeyPath();

        v5 = *(&v64 + 1);
        sub_232E014F0();
        v31 = sub_232E014E0();
        a1 = v32;

        (*v59)(v7, v4);
        if (a1 >> 60 == 15)
        {
        }

        else
        {
          v33 = a1 >> 62;
          if ((a1 >> 62) > 1)
          {
            if (v33 == 2)
            {
              v7 = *(v31 + 16);
              v4 = *(v31 + 24);

              v5 = sub_232E00A30();
              if (v5)
              {
                v34 = sub_232E00A60();
                if (__OFSUB__(v7, v34))
                {
                  goto LABEL_54;
                }

                v5 += v7 - v34;
              }

              v35 = __OFSUB__(v4, v7);
              v4 -= v7;
              if (v35)
              {
                goto LABEL_53;
              }

              goto LABEL_47;
            }

            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            *&v64 = 0;
            *(&v64 + 6) = 0;
LABEL_49:
            sub_232E01400();
            sub_232DB0E28(v31, a1);

            sub_232DB0E28(v31, a1);
          }

          else
          {
            if (!v33)
            {
              *&v64 = v31;
              WORD4(v64) = a1;
              BYTE10(v64) = BYTE2(a1);
              BYTE11(v64) = BYTE3(a1);
              BYTE12(v64) = BYTE4(a1);
              BYTE13(v64) = BYTE5(a1);
              sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
              goto LABEL_49;
            }

            v4 = v31;
            v7 = (v31 >> 32) - v31;
            if (v31 >> 32 < v31)
            {
              goto LABEL_52;
            }

            v5 = sub_232E00A30();
            if (v5)
            {
              v36 = sub_232E00A60();
              if (__OFSUB__(v31, v36))
              {
                goto LABEL_55;
              }

              v5 += v31 - v36;
            }

LABEL_47:
            sub_232E00A50();
            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            sub_232E01400();
            sub_232DB0E28(v31, a1);

            sub_232DB0E28(v31, a1);
            v4 = v54;
            v7 = v55;
          }
        }

        if (++v30 == 3)
        {
          swift_setDeallocating();
          swift_arrayDestroy();
          v5 = v46;
          a1 = v58;
          sub_232E01420();
          v2 = v47;
          v65 = v47;
          v66 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
          (*v42)(boxed_opaque_existential_1, v5, v2);
          __swift_project_boxed_opaque_existential_1(&v64, v65);
          v20 = v53;
          sub_232E00A80();
          v53 = v20;
          (*v41)(v5, v2);
          v21 = v62;
          v22 = v63;
          __swift_destroy_boxed_opaque_existential_1(&v64);
          (*v40)(a1, v57);
          v23 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v64 = v23;
          sub_232DF4500(v21, v22, v49, v50, isUniquelyReferenced_nonNull_native);

          v16 = v64;
          v18 = v51;
          if (v51 == v43)
          {
            break;
          }

          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    break;
  }

  return v16;
}

uint64_t sub_232DD7960(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232E012A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2)
    {
      return 0;
    }

    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
LABEL_8:
    if (v12 != v13)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v11)
  {
    v12 = a2;
    v13 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v14 = v8;
  v15 = sub_232DB1790(a2, a3);
  v17 = v16;
  v19 = v18;
  if (v15 != 2)
  {
    v25 = v15;
    sub_232E01270();
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000039, 0x8000000232E0D730);
    v29 = v25;
    v26 = sub_232E01AB0();
    MEMORY[0x238395970](v26);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v29 = 2;
    v27 = sub_232E01AB0();
    MEMORY[0x238395970](v27);

    MEMORY[0x238395970](41, 0xE100000000000000);
    sub_232E01360();

    sub_232DB091C(v17, v19);
    (*(v7 + 8))(v10, v14);
    return 0;
  }

  sub_232DB3120(MEMORY[0x277D84F90]);

  v20 = sub_232DD6F80(a1);
  sub_232DB0970(v17, v19);
  v21 = sub_232DD6BA4(2, v20);
  v23 = v22;

  LOBYTE(v20) = sub_232DB07B4(v17, v19, v21, v23);
  sub_232DB091C(v21, v23);
  sub_232DB091C(v17, v19);
  if (v20)
  {
    sub_232DB091C(v17, v19);
    return 2;
  }

  else
  {
    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v17, v19);
    (*(v7 + 8))(v10, v14);
    return 1;
  }
}

uint64_t sub_232DD7C7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = 0;
  v70[2] = *MEMORY[0x277D85DE8];
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v11)
        {
          v14 = v7;
          while (1)
          {
            v7 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_81;
            }

            v15 = *(v8 + 8 * v7);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
        }

        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_13:
        v65 = v13 | (v7 << 6);
        v16 = (*(a3 + 48) + 16 * v65);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 16);

        if (v19 && (v20 = sub_232DD5634(v17, v18), (v21 & 1) != 0))
        {
          v22 = (*(v6 + 56) + 16 * v20);
          v23 = *v22;
          v24 = v22[1];
          sub_232DB0970(*v22, v24);
          if (!*(v5 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0xF000000000000000;
          if (!*(v5 + 16))
          {
LABEL_16:
            v25 = 0;
            v26 = 0xF000000000000000;
            goto LABEL_22;
          }
        }

        v27 = v18;
        v28 = v11;
        v29 = v23;
        v30 = sub_232DD5634(v17, v27);
        if (v31)
        {
          v32 = (*(v5 + 56) + 16 * v30);
          v33 = *v32;
          v26 = v32[1];
          sub_232DB0970(*v32, v26);
          v25 = v33;
        }

        else
        {
          v25 = 0;
          v26 = 0xF000000000000000;
        }

        v23 = v29;
        v11 = v28;
LABEL_22:
        if (v24 >> 60 == 15)
        {
          if (v26 >> 60 == 15)
          {
            goto LABEL_5;
          }

LABEL_68:
          v52 = v25;
          sub_232DB0E28(v23, v24);
          v53 = v52;
          v54 = v26;
          goto LABEL_77;
        }

        if (v26 >> 60 == 15)
        {
          goto LABEL_68;
        }

        v34 = v24 >> 62;
        v35 = v26 >> 62;
        if (v24 >> 62 == 3)
        {
          v36 = 0;
          if (!v23 && v24 == 0xC000000000000000 && v26 >> 62 == 3)
          {
            v36 = 0;
            if (!v25 && v26 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_5;
            }
          }

LABEL_41:
          if (v35 <= 1)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (v34 <= 1)
        {
          if (!v34)
          {
            v36 = BYTE6(v24);
            if (v35 <= 1)
            {
              goto LABEL_42;
            }

            goto LABEL_47;
          }

          LODWORD(v36) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
            goto LABEL_85;
          }

          v36 = v36;
          goto LABEL_41;
        }

        if (v34 == 2)
        {
          v38 = *(v23 + 16);
          v37 = *(v23 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_86;
          }

          goto LABEL_41;
        }

        v36 = 0;
        if (v35 <= 1)
        {
LABEL_42:
          if (v35)
          {
            LODWORD(v40) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_83;
            }

            v40 = v40;
          }

          else
          {
            v40 = BYTE6(v26);
          }

          goto LABEL_49;
        }

LABEL_47:
        if (v35 != 2)
        {
          if (!v36)
          {
            goto LABEL_55;
          }

LABEL_76:
          sub_232DB0E28(v25, v26);
          v53 = v23;
          v54 = v24;
LABEL_77:
          sub_232DB0E28(v53, v54);

          v6 = a4;
          v5 = a5;
          goto LABEL_78;
        }

        v42 = *(v25 + 16);
        v41 = *(v25 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_84;
        }

LABEL_49:
        if (v36 != v40)
        {
          goto LABEL_76;
        }

        if (v36 >= 1)
        {
          break;
        }

LABEL_55:
        sub_232DB0E28(v25, v26);
LABEL_5:
        sub_232DB0E28(v23, v24);

        v6 = a4;
        v5 = a5;
      }

      if (v34 > 1)
      {
        v60 = v25;
        if (v34 != 2)
        {
          memset(v70, 0, 14);
          sub_232DD8DCC(v23, v24);
          v43 = v60;
          sub_232DD8DCC(v60, v26);
          sub_232DD8DCC(v60, v26);
          goto LABEL_66;
        }

        v57 = *(v23 + 24);
        v58 = *(v23 + 16);
        v59 = v23;
        sub_232DD8DCC(v23, v24);
        sub_232DD8DCC(v60, v26);
        sub_232DD8DCC(v60, v26);
        v44 = sub_232E00A30();
        if (v44)
        {
          v45 = v44;
          v46 = sub_232E00A60();
          v47 = v58;
          if (__OFSUB__(v58, v46))
          {
            goto LABEL_89;
          }

          v56 = v58 - v46 + v45;
        }

        else
        {
          v56 = 0;
          v47 = v58;
        }

        if (__OFSUB__(v57, v47))
        {
          goto LABEL_88;
        }

        sub_232E00A50();
        v50 = v56;
      }

      else
      {
        if (!v34)
        {
          v70[0] = v23;
          LOWORD(v70[1]) = v24;
          BYTE2(v70[1]) = BYTE2(v24);
          BYTE3(v70[1]) = BYTE3(v24);
          BYTE4(v70[1]) = BYTE4(v24);
          BYTE5(v70[1]) = BYTE5(v24);
          v43 = v25;
          sub_232DD8DCC(v23, v24);
          sub_232DD8DCC(v43, v26);
          sub_232DD8DCC(v43, v26);
LABEL_66:
          sub_232DAD698(v70, v43, v26, &v69);
          if (v64)
          {
            goto LABEL_91;
          }

          sub_232DB0E28(v43, v26);
          sub_232DB0E28(v43, v26);
          sub_232DB0E28(v23, v24);
          sub_232DB0E28(v43, v26);
          v51 = v69;
          goto LABEL_74;
        }

        v60 = v25;
        if (v23 >> 32 < v23)
        {
          goto LABEL_87;
        }

        v59 = v23;
        sub_232DD8DCC(v23, v24);
        sub_232DD8DCC(v60, v26);
        sub_232DD8DCC(v60, v26);
        v48 = sub_232E00A30();
        if (v48)
        {
          v49 = sub_232E00A60();
          if (__OFSUB__(v23, v49))
          {
            goto LABEL_90;
          }

          v48 += v23 - v49;
        }

        sub_232E00A50();
        v50 = v48;
      }

      v43 = v60;
      sub_232DAD698(v50, v60, v26, v70);
      if (v64)
      {
LABEL_91:
        result = sub_232DB0E28(v43, v26);
        __break(1u);
        return result;
      }

      sub_232DB0E28(v60, v26);
      sub_232DB0E28(v60, v26);
      v23 = v59;
      sub_232DB0E28(v59, v24);
      sub_232DB0E28(v60, v26);
      v51 = v70[0];
LABEL_74:
      sub_232DB0E28(v23, v24);

      v6 = a4;
      v5 = a5;
    }

    while ((v51 & 1) != 0);
LABEL_78:
    *(a1 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
    v39 = __OFADD__(v63++, 1);
  }

  while (!v39);
  __break(1u);
LABEL_81:

  return sub_232DD1508(a1, a2, v63, a3);
}

uint64_t sub_232DD8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v83[2] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v77 = v5;
    v73 = &v68;
    v74 = v12;
    MEMORY[0x28223BE20](v14);
    v75 = &v68 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v75, v13);
    v76 = 0;
    v13 = 0;
    v5 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    v12 = (v15 + 63) >> 6;
    v80 = a4;
    v81 = a2;
    v79 = v9;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v21 = v18 | (v13 << 6);
      v22 = *(v9 + 48);
      v78 = v21;
      v23 = (v22 + 16 * v21);
      a3 = *v23;
      v24 = v23[1];
      v25 = *(a2 + 16);

      if (v25 && (v26 = sub_232DD5634(a3, v24), (v27 & 1) != 0))
      {
        v28 = (*(a2 + 56) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
        sub_232DB0970(*v28, v30);
        if (!*(a4 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0xF000000000000000;
        if (!*(a4 + 16))
        {
LABEL_17:
          v31 = 0;
          v32 = 0xF000000000000000;
          goto LABEL_23;
        }
      }

      v33 = v24;
      v34 = v17;
      v35 = v29;
      v36 = a3;
      a3 = v33;
      v37 = sub_232DD5634(v36, v33);
      if (v38)
      {
        v39 = (*(a4 + 56) + 16 * v37);
        v40 = *v39;
        v32 = v39[1];
        sub_232DB0970(*v39, v32);
        v31 = v40;
      }

      else
      {
        v31 = 0;
        v32 = 0xF000000000000000;
      }

      v29 = v35;
      v17 = v34;
LABEL_23:
      if (v30 >> 60 == 15)
      {
        if (v32 >> 60 == 15)
        {
          goto LABEL_6;
        }

        goto LABEL_69;
      }

      if (v32 >> 60 == 15)
      {
LABEL_69:
        a3 = v31;
        sub_232DB0E28(v29, v30);
        v62 = a3;
        v63 = v32;
LABEL_78:
        sub_232DB0E28(v62, v63);

        a4 = v80;
        a2 = v81;
        v9 = v79;
LABEL_79:
        *&v75[(v78 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v78;
        v46 = __OFADD__(v76++, 1);
        if (v46)
        {
          __break(1u);
LABEL_82:
          v65 = sub_232DD1508(v75, v74, v76, v9);

          return v65;
        }
      }

      else
      {
        v41 = v30 >> 62;
        v42 = v32 >> 62;
        if (v30 >> 62 == 3)
        {
          v43 = 0;
          if (!v29 && v30 == 0xC000000000000000 && v32 >> 62 == 3)
          {
            v43 = 0;
            if (!v31 && v32 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_6;
            }
          }

LABEL_42:
          if (v42 <= 1)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v41 <= 1)
        {
          if (!v41)
          {
            v43 = BYTE6(v30);
            if (v42 <= 1)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }

          LODWORD(v43) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_90;
          }

          v43 = v43;
          goto LABEL_42;
        }

        if (v41 == 2)
        {
          v45 = *(v29 + 16);
          v44 = *(v29 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v46)
          {
            goto LABEL_91;
          }

          goto LABEL_42;
        }

        v43 = 0;
        if (v42 <= 1)
        {
LABEL_43:
          if (v42)
          {
            LODWORD(v47) = HIDWORD(v31) - v31;
            if (__OFSUB__(HIDWORD(v31), v31))
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v47 = v47;
          }

          else
          {
            v47 = BYTE6(v32);
          }

          goto LABEL_50;
        }

LABEL_48:
        if (v42 != 2)
        {
          if (!v43)
          {
            goto LABEL_56;
          }

LABEL_77:
          sub_232DB0E28(v31, v32);
          v62 = v29;
          v63 = v30;
          goto LABEL_78;
        }

        v49 = *(v31 + 16);
        v48 = *(v31 + 24);
        v46 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (v46)
        {
          goto LABEL_89;
        }

LABEL_50:
        if (v43 != v47)
        {
          goto LABEL_77;
        }

        if (v43 < 1)
        {
LABEL_56:
          sub_232DB0E28(v31, v32);
LABEL_6:
          sub_232DB0E28(v29, v30);

          a4 = v80;
          a2 = v81;
          v9 = v79;
        }

        else
        {
          if (v41 > 1)
          {
            v72 = v31;
            if (v41 == 2)
            {
              v51 = *(v29 + 16);
              v69 = *(v29 + 24);
              v70 = v51;
              v71 = v29;
              sub_232DD8DCC(v29, v30);
              v52 = v72;
              sub_232DD8DCC(v72, v32);
              sub_232DD8DCC(v52, v32);
              v53 = sub_232E00A30();
              if (v53)
              {
                v54 = v53;
                v55 = sub_232E00A60();
                v56 = v70;
                if (__OFSUB__(v70, v55))
                {
                  goto LABEL_94;
                }

                v68 = v70 - v55 + v54;
              }

              else
              {
                v68 = 0;
                v56 = v70;
              }

              if (__OFSUB__(v69, v56))
              {
                goto LABEL_93;
              }

              sub_232E00A50();
              v60 = v68;
              goto LABEL_73;
            }

            memset(v83, 0, 14);
            sub_232DD8DCC(v29, v30);
            v50 = v72;
            sub_232DD8DCC(v72, v32);
            sub_232DD8DCC(v50, v32);
          }

          else
          {
            if (v41)
            {
              v72 = v31;
              v69 = v29;
              v70 = (v29 >> 32) - v29;
              if (v29 >> 32 < v29)
              {
                goto LABEL_92;
              }

              v71 = v29;
              sub_232DD8DCC(v29, v30);
              v57 = v72;
              sub_232DD8DCC(v72, v32);
              sub_232DD8DCC(v57, v32);
              v58 = sub_232E00A30();
              if (v58)
              {
                v59 = sub_232E00A60();
                if (__OFSUB__(v69, v59))
                {
                  goto LABEL_95;
                }

                v58 += v69 - v59;
              }

              sub_232E00A50();
              v60 = v58;
LABEL_73:
              v50 = v72;
              v64 = v77;
              sub_232DAD698(v60, v72, v32, v83);
              v77 = v64;
              if (v64)
              {
LABEL_96:
                result = sub_232DB0E28(v50, v32);
                __break(1u);
                return result;
              }

              sub_232DB0E28(v50, v32);
              sub_232DB0E28(v50, v32);
              v29 = v71;
              sub_232DB0E28(v71, v30);
              sub_232DB0E28(v50, v32);
              a3 = LOBYTE(v83[0]);
              goto LABEL_75;
            }

            v83[0] = v29;
            LOWORD(v83[1]) = v30;
            BYTE2(v83[1]) = BYTE2(v30);
            BYTE3(v83[1]) = BYTE3(v30);
            BYTE4(v83[1]) = BYTE4(v30);
            BYTE5(v83[1]) = BYTE5(v30);
            v72 = v83 + BYTE6(v30);
            v50 = v31;
            sub_232DD8DCC(v29, v30);
            sub_232DD8DCC(v50, v32);
            sub_232DD8DCC(v50, v32);
          }

          v61 = v77;
          sub_232DAD698(v83, v50, v32, &v82);
          v77 = v61;
          if (v61)
          {
            goto LABEL_96;
          }

          sub_232DB0E28(v50, v32);
          sub_232DB0E28(v50, v32);
          sub_232DB0E28(v29, v30);
          sub_232DB0E28(v50, v32);
          a3 = v82;
LABEL_75:
          sub_232DB0E28(v29, v30);

          a4 = v80;
          a2 = v81;
          v9 = v79;
          if ((a3 & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_82;
      }

      v20 = *(v5 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();

  v65 = sub_232DD6120(v67, v12, v9, a2, a3, a4);

  MEMORY[0x238396AF0](v67, -1, -1);

  return v65;
}

void *sub_232DD8B40(uint64_t a1, unint64_t a2)
{
  sub_232DB3120(MEMORY[0x277D84F90]);

  v4 = sub_232DD6F80(a2);

  v6 = sub_232DCA018(v5);
  v7 = sub_232DCA018(v4);
  v8 = v7;
  if (*(v6 + 16) <= *(v7 + 16) >> 3)
  {
    v22 = v7;

    sub_232DD61D8(v6);
    v9 = v22;
  }

  else
  {

    v9 = sub_232DD088C(v6, v8);
  }

  if (*(v8 + 16) <= *(v6 + 16) >> 3)
  {
    v22 = v6;

    sub_232DD61D8(v8);
    v10 = v6;
  }

  else
  {

    v10 = sub_232DD088C(v8, v6);
  }

  v11 = sub_232DD6304(v8, v6);

  v12 = sub_232DD8344(v11, a1, 2, v4);

  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = sub_232DAE004(*(v9 + 16), 0);
  v15 = sub_232DAFE80(&v22, v14 + 4, v13, v9);
  result = sub_232D734F4(v22);
  if (v15 != v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = *(v12 + 16);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_10:
  v18 = sub_232DAE004(v17, 0);
  v19 = sub_232DAFE80(&v22, v18 + 4, v17, v12);
  result = sub_232D734F4(v22);
  if (v19 != v17)
  {
    goto LABEL_19;
  }

  v20 = *(v10 + 16);
  if (v20)
  {
    while (1)
    {
      v21 = sub_232DAE004(v20, 0);
      v10 = sub_232DAFE80(&v22, v21 + 4, v20, v10);
      sub_232D734F4(v22);
      if (v10 == v20)
      {
        break;
      }

      __break(1u);
LABEL_14:

      v14 = MEMORY[0x277D84F90];
      v17 = *(v12 + 16);
      if (v17)
      {
        goto LABEL_10;
      }

LABEL_15:

      v20 = *(v10 + 16);
      if (!v20)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
  }

  return v14;
}

uint64_t sub_232DD8DCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232DB0970(result, a2);
  }

  return result;
}

unint64_t sub_232DD8DF0(uint64_t a1)
{
  *(a1 + 8) = sub_232DD2430();
  result = sub_232DD23DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_232DD8E20()
{
  result = qword_27DDD76A8;
  if (!qword_27DDD76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76A8);
  }

  return result;
}

unint64_t sub_232DD8E74()
{
  result = qword_2814E8488;
  if (!qword_2814E8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8488);
  }

  return result;
}

uint64_t sub_232DD8EC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B8, &qword_232E07918);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_232DB3120(MEMORY[0x277D84F90]);

  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_232DD8E20();
  sub_232E01C00();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_232E01A40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    v9[15] = 1;
    sub_232DD90E4(&qword_2814E7C48, sub_232DD9168, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_232E01A30();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_232DD90E4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD76B0, &qword_232E07910);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232DD9168()
{
  result = qword_2814E8480;
  if (!qword_2814E8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8480);
  }

  return result;
}

unint64_t sub_232DD91D0()
{
  result = qword_27DDD76C0;
  if (!qword_27DDD76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76C0);
  }

  return result;
}

unint64_t sub_232DD9228()
{
  result = qword_27DDD76C8;
  if (!qword_27DDD76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76C8);
  }

  return result;
}

unint64_t sub_232DD9280()
{
  result = qword_27DDD76D0;
  if (!qword_27DDD76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD76D0);
  }

  return result;
}

id sub_232DD92D4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_232E012A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E00BE0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() defaultManager];
  result = [objc_opt_self() appGroupIdentifier];
  if (result)
  {
    v14 = result;
    v15 = [v12 containerURLForSecurityApplicationGroupIdentifier_];

    if (v15)
    {
      sub_232E00BB0();

      (*(v6 + 32))(v11, v9, v5);
      v16 = v19;
      sub_232E00B80();
      (*(v6 + 8))(v11, v5);
      v17 = 0;
    }

    else
    {
      sub_232E01270();
      sub_232E01380();
      (*(v2 + 8))(v4, v1);
      v17 = 1;
      v16 = v19;
    }

    return (*(v6 + 56))(v16, v17, 1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232DD9590(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 242) = a2;
  *(v4 + 32) = a1;
  v5 = sub_232E012A0();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DD9658, v3, 0);
}

uint64_t sub_232DD9658()
{
  v1 = v0[4];
  sub_232DDA970();
  v17 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_232E019C0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v16 = v0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = (v0[4] + 32);
      v0 = &selRef_productId;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x238395D50](v3, v16[4]);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v0 = v16;
            v10 = v17;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v6 + 8 * v3);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v1 = v7;
        v9 = [v1 supportID];

        if (v9)
        {

          sub_232E01950();
          sub_232E01980();
          sub_232E01990();
          sub_232E01960();
        }

        else
        {
        }

        ++v3;
        if (v8 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:
  v11 = v0[5];
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v0[10] = v10;
  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  *(v12 + 1) = sub_232DD984C;
  v13 = *(v0 + 242);
  v14 = v0[4];

  return sub_232DDAE38(v14, v13);
}

uint64_t sub_232DD984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;
  v6[16] = a4;
  v6[17] = v4;

  if (v4)
  {

    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[6];

    return MEMORY[0x2822009F8](sub_232DD99AC, v10, 0);
  }
}

uint64_t sub_232DD99AC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 168) = v2;
      *v2 = v0;
      v2[1] = sub_232DD9F54;
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);

      return sub_232DDB624(v4, v3);
    }

    else
    {
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);
      v12 = *(v0 + 56);
      v13 = *(v0 + 32);
      v43 = *(v0 + 104);
      sub_232DB0970(*(v0 + 120), *(v0 + 128));
      v14 = sub_232DD8B40(v1, v13);
      v16 = v15;
      v18 = v17;
      *(v0 + 144) = v14;
      *(v0 + 152) = v15;
      *(v0 + 160) = v17;
      sub_232E01270();
      sub_232E018F0();
      MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
      v19 = MEMORY[0x277D837D0];
      v20 = MEMORY[0x238395A10](v14, MEMORY[0x277D837D0]);
      MEMORY[0x238395970](v20);

      MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
      v21 = MEMORY[0x238395A10](v16, v19);
      MEMORY[0x238395970](v21);

      MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
      v22 = MEMORY[0x238395A10](v18, v19);
      MEMORY[0x238395970](v22);

      sub_232E01360();

      (*(v10 + 8))(v11, v12);
      if (*(v18 + 16))
      {
        v23 = swift_task_alloc();
        *(v0 + 184) = v23;
        *v23 = v0;
        v23[1] = sub_232DDA098;

        return sub_232DDBA14(v18, v43, v1);
      }

      else
      {
        *(v0 + 200) = v1;
        v24 = *(v0 + 152);
        v25 = *(v0 + 144);
        v26 = *(v0 + 80);

        sub_232DC2F90(v24);

        v46 = v25;
        v47 = MEMORY[0x277D84F90];
        v27 = *(v0 + 80);
        if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v28 = *(v27 + 16);
        for (i = v43; v28; i = v43)
        {
          v42 = v1;
          v30 = 0;
          v45 = v26 & 0xC000000000000001;
          v44 = v27 + 32;
          while (1)
          {
            if (v45)
            {
              v31 = MEMORY[0x238395D50](v30, *(v0 + 80));
            }

            else
            {
              if (v30 >= *(v27 + 16))
              {
                goto LABEL_28;
              }

              v31 = *(v44 + 8 * v30);
            }

            v32 = v31;
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            v34 = v27;
            v35 = [v31 identifier];
            v36 = sub_232E014D0();
            v26 = v37;

            *(v0 + 16) = v36;
            *(v0 + 24) = v26;
            v38 = swift_task_alloc();
            *(v38 + 16) = v0 + 16;
            v1 = sub_232DF7F9C(sub_232DB0E78, v38, v46);

            if (v1)
            {
              sub_232E01950();
              v26 = *(v47 + 16);
              sub_232E01980();
              sub_232E01990();
              sub_232E01960();
            }

            else
            {
            }

            v27 = v34;
            ++v30;
            if (v33 == v28)
            {
              v39 = v47;
              v1 = v42;
              i = v43;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v28 = sub_232E019C0();
          v27 = *(v0 + 80);
        }

        v39 = MEMORY[0x277D84F90];
LABEL_31:
        *(v0 + 208) = v39;

        v40 = swift_task_alloc();
        *(v0 + 216) = v40;
        *v40 = v0;
        v40[1] = sub_232DDA1E8;
        v41 = *(v0 + 88);

        return sub_232DDC020(v39, v41, i, v1);
      }
    }
  }

  else
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    sub_232E01270();
    sub_232E01360();
    (*(v8 + 8))(v6, v7);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_232DD9F54()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_232DDA7A8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_232DDA098(__int16 a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = *(v6 + 48);

    v8 = sub_232DDA6F0;
    v9 = v7;
  }

  else
  {
    v9 = *(v6 + 48);
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v8 = sub_232DDA460;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_232DDA1E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v5 = *(v4 + 48);
    v6 = sub_232DDA3B4;
  }

  else
  {
    v7 = *(v4 + 48);

    v6 = sub_232DDA330;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DDA330()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_232DDD2E0(v0[13], v0[14], v1, v2);
  sub_232DB091C(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_232DDA3B4()
{

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_232DB091C(v2, v1);
  sub_232DDD2E0(v4, v3, v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DDA460()
{
  LOWORD(v1) = *(v0 + 240);
  v2 = *(v0 + 232);
  *(v0 + 200) = v2;
  v3 = *(v0 + 80);
  v23 = *(v0 + 144);
  sub_232DC2F90(*(v0 + 152));

  v22 = v23;
  v24 = MEMORY[0x277D84F90];
  v4 = *(v0 + 80);
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_17;
  }

  for (i = *(v4 + 16); i; v4 = *(v0 + 80))
  {
    v18 = v2;
    v19 = v1;
    v6 = 0;
    v21 = v3 & 0xC000000000000001;
    v20 = v4 + 32;
    while (1)
    {
      if (v21)
      {
        v7 = MEMORY[0x238395D50](v6, *(v0 + 80));
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v20 + 8 * v6);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v2 = v4;
      v10 = [v7 identifier];
      v11 = sub_232E014D0();
      v1 = v12;

      *(v0 + 16) = v11;
      *(v0 + 24) = v1;
      v13 = swift_task_alloc();
      *(v13 + 16) = v0 + 16;
      v3 = sub_232DF7F9C(sub_232DB0E78, v13, v22);

      if (v3)
      {
        sub_232E01950();
        v3 = *(v24 + 16);
        sub_232E01980();
        sub_232E01990();
        sub_232E01960();
      }

      else
      {
      }

      v4 = v2;
      ++v6;
      if (v9 == i)
      {
        v14 = v24;
        LOWORD(v1) = v19;
        v2 = v18;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    i = sub_232E019C0();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 208) = v14;

  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_232DDA1E8;
  v16 = *(v0 + 88);

  return sub_232DDC020(v14, v16, v1, v2);
}

uint64_t sub_232DDA6F0()
{

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_232DB091C(v2, v1);
  sub_232DDD2E0(v4, v3, v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DDA7A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DDA834()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_6;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDA970()
{
  v27[3] = *MEMORY[0x277D85DE8];
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E00AB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_232E00BE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DD92D4(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_232DDD784(v10);
    sub_232E01270();
    sub_232E01380();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v24 = v5;
    v25 = v0;
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_opt_self() defaultManager];
    v17 = sub_232E00B70();
    v27[0] = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v27];

    if (v18)
    {
      v19 = v27[0];
      sub_232E00AA0();
      sub_232E00A90();
      sub_232E00B60();
      (*(v24 + 8))(v7, v4);
    }

    else
    {
      v20 = v27[0];
      v21 = sub_232E00AE0();

      swift_willThrow();
      sub_232E01270();
      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      sub_232E018F0();
      MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0D970);
      v22 = sub_232E00BC0();
      MEMORY[0x238395970](v22);

      MEMORY[0x238395970](0x6162206D6F726620, 0xEE00203A70756B63);
      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      sub_232E019A0();
      sub_232E01380();

      (*(v1 + 8))(v3, v25);
    }

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_232DDAE38(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = sub_232E012A0();
  *(v3 + 184) = v4;
  *(v3 + 192) = *(v4 - 8);
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDAEFC, v2, 0);
}

uint64_t sub_232DDAEFC()
{
  if (*(v0 + 224) == 1)
  {
    v1 = sub_232DE833C();
    *(v0 + 208) = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_232DDB218;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_232DCDB54;
    *(v0 + 104) = &block_descriptor_26;
    *(v0 + 112) = v2;
    [v1 fetchLastClientStateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v3 = sub_232DD7960(*(v0 + 168), 0, 0xC000000000000000);
  if (v3 != 2)
  {
    v7 = v3;
    sub_232E01270();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    *(v0 + 160) = 0;
    v11 = sub_232E01AB0();
    MEMORY[0x238395970](v11);

    MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
    sub_232E01370();

    (*(v9 + 8))(v8, v10);
    if (v7 && (v12 = *(v0 + 176), v14 = *(v12 + 112), v13 = *(v12 + 120), , v15 = sub_232DC9660(v14, v13), v16))
    {
      LOWORD(v4) = v15;
      v5 = v16;
      if (sub_232DD48BC(0, 0xC000000000000000, v15, v16))
      {
        v4 = v4;
        v6 = 0xC000000000000000;
        goto LABEL_14;
      }

      sub_232DB091C(0, 0xC000000000000000);
    }

    else
    {
      sub_232DB091C(0, 0xC000000000000000);
    }

    v4 = 0;
    v6 = 0;
    v5 = 1;
    goto LABEL_14;
  }

  sub_232DB091C(0, 0xC000000000000000);
  v4 = 0;
  v5 = 0;
  v6 = 0;
LABEL_14:

  v17 = *(v0 + 8);

  return v17(v4, v5, 0, v6);
}

uint64_t sub_232DDB218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_232DDB5A8;
  }

  else
  {
    v4 = sub_232DDB338;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DDB338()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = sub_232DD7960(*(v0 + 168), v1, v2);
  if (v3 != 2)
  {
    v6 = v3;
    sub_232E01270();
    sub_232E018F0();
    result = MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
    v8 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      v9 = 0;
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      v12 = __OFSUB__(v10, v11);
      v9 = v10 - v11;
      if (!v12)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v9 = BYTE6(v2);
      goto LABEL_12;
    }

    LODWORD(v9) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return result;
    }

    v9 = v9;
LABEL_12:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);
    *(v0 + 160) = v9;
    v16 = sub_232E01AB0();
    MEMORY[0x238395970](v16);

    MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
    sub_232E01370();

    (*(v14 + 8))(v13, v15);
    if (v6 && (v17 = *(v0 + 176), v18 = *(v17 + 112), v19 = *(v17 + 120), , v20 = sub_232DC9660(v18, v19), v21))
    {
      LOWORD(v4) = v20;
      v5 = v21;
      if (sub_232DD48BC(v1, v2, v20, v21))
      {
        v4 = v4;
        goto LABEL_19;
      }

      sub_232DB091C(v1, v2);
    }

    else
    {
      sub_232DB091C(v1, v2);
    }

    v4 = 0;
    v1 = 0;
    v2 = 0;
    v5 = 1;
    goto LABEL_19;
  }

  sub_232DB091C(v1, v2);
  v4 = 0;
  v5 = 0;
  v1 = 0;
  v2 = 0;
LABEL_19:

  v22 = *(v0 + 8);

  return v22(v4, v5, v1, v2);
}

uint64_t sub_232DDB5A8(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232DDB624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDB6E8, v2, 0);
}

uint64_t sub_232DDB6E8(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v5(v2, v4);
  sub_232E01270();
  sub_232E01360();
  v5(v2, v4);
  v6 = sub_232DE833C();
  v1[8] = v6;
  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = sub_232DDB838;

  return sub_232DC7248(0, 0xC000000000000000, v6);
}

uint64_t sub_232DDB838()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_232DCE198;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_232DDB960;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DDB960()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_232DCE030;
  v3 = v0[3];
  v4 = v0[2];

  return sub_232DDC020(v4, v3, 2, v1);
}

uint64_t sub_232DDBA14(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 120) = a2;
  *(v4 + 16) = a1;
  v5 = sub_232E012A0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDBADC, v3, 0);
}

uint64_t sub_232DDBADC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  sub_232E01270();
  sub_232E018F0();

  v6 = MEMORY[0x238395A10](v5, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v6);

  sub_232E01360();

  (*(v3 + 8))(v2, v4);
  v7 = *(v5 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = *(v1 + 24);
    v11 = *(v1 + 16) + 40;
    do
    {
      v12 = (v11 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

        v14 = *(v12 - 1);
        v15 = *v12;

        v16 = sub_232DD5634(v14, v15);
        if (v17)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      v18 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232DC2ADC();
      }

      v19 = v18;

      v20 = (*(v10 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      sub_232DC2630(v19, v10);
      sub_232DB091C(v21, v22);
    }

    while (v9 != v7);
  }

  else
  {
    v10 = *(v1 + 24);
  }

LABEL_14:
  *(v1 + 64) = v10;
  v23 = *(v1 + 16);
  v24 = *(v1 + 120);
  *(v1 + 72) = sub_232DE833C();
  v25 = sub_232DD2640(v24, v10);
  v27 = v26;
  *(v1 + 80) = v25;
  *(v1 + 88) = v26;
  v28 = swift_task_alloc();
  *(v1 + 96) = v28;
  *(v28 + 16) = v23;
  v29 = swift_task_alloc();
  *(v1 + 104) = v29;
  *v29 = v1;
  v29[1] = sub_232DDBD80;

  return sub_232DC7F98(v25, v27, &unk_232E07A80, v28);
}

uint64_t sub_232DDBD80()
{
  v2 = *v1;
  v2[14] = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {
    v6 = v2[4];

    sub_232DB091C(v4, v3);

    v7 = sub_232DDBFBC;
  }

  else
  {
    v6 = v2[4];
    sub_232DB091C(v2[10], v2[11]);

    v7 = sub_232DDBF3C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_232DDBF3C()
{
  sub_232DC9AC4(*(*(v0 + 32) + 112), *(*(v0 + 32) + 120), *(v0 + 120), *(v0 + 64));

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 120);

  return v1(v3, v2);
}

uint64_t sub_232DDBFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DDC020(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 200) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_232E012A0();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DDC0E8, v4, 0);
}

void sub_232DDC0E8()
{
  v33 = v0;
  v1 = *(v0 + 56);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_22:
  v2 = sub_232E019C0();
  v3 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = *(v0 + 56);

  v5 = sub_232DDD054(0, v2, v3, v4, v3);
  *(v0 + 112) = v5;
  v6 = *(v5 + 16);
  *(v0 + 120) = v6;
  if (v6)
  {
    v31 = *(v0 + 72);

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v7;
      v8 = *(v0 + 112);
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v8 + 8 * v7 + 32);

      sub_232E01270();
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      sub_232E018F0();

      *(v0 + 16) = 0xD000000000000012;
      *(v0 + 24) = 0x8000000232E0D6B0;
      if (v9 >> 62)
      {
        v10 = sub_232E019C0();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);
      *(v0 + 48) = v10;
      v14 = sub_232E01AB0();
      MEMORY[0x238395970](v14);

      MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0D8A0);
      sub_232E01370();

      (*(v11 + 8))(v12, v13);
      v15 = Array<A>.searchableItems.getter(v9);
      *(v0 + 136) = v15;
      if (v15 >> 62)
      {
        v16 = v15;
        v17 = sub_232E019C0();
        v15 = v16;
        if (v17)
        {
LABEL_14:
          v18 = *(v0 + 200);
          v19 = v15;
          v20 = sub_232DD6F80(v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v31;
          sub_232DDD348(v20, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v32);

          v22 = v32;
          *(v0 + 144) = v32;
          *(v0 + 152) = sub_232DE833C();
          v23 = sub_232DD2640(v18, v22);
          v25 = v24;
          *(v0 + 160) = v23;
          *(v0 + 168) = v24;
          v26 = swift_task_alloc();
          *(v0 + 176) = v26;
          *(v26 + 16) = v19;
          v27 = swift_task_alloc();
          *(v0 + 184) = v27;
          *v27 = v0;
          v27[1] = sub_232DDC4E4;

          sub_232DC7F98(v23, v25, &unk_232E07A70, v26);
          return;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v0 + 128) + 1;
      if (v7 == *(v0 + 120))
      {

        v28 = v31;
        goto LABEL_18;
      }
    }
  }

  v28 = *(v0 + 72);
LABEL_18:

  v29 = *(v0 + 8);
  v30 = *(v0 + 200);

  v29(v30, v28);
}

uint64_t sub_232DDC4E4()
{
  v2 = *v1;
  v2[24] = v0;

  v3 = v2[21];
  v4 = v2[20];
  v5 = v2[19];
  if (v0)
  {
    v6 = v2[10];

    sub_232DB091C(v4, v3);

    v7 = sub_232DDCA4C;
    v8 = v6;
  }

  else
  {
    v9 = v2[10];

    sub_232DB091C(v4, v3);

    v7 = sub_232DDC6C8;
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_232DDC6C8()
{
  v27 = v0;
  result = sub_232DC9AC4(*(*(v0 + 80) + 112), *(*(v0 + 80) + 120), *(v0 + 200), *(v0 + 144));
  v25 = *(v0 + 144);
  v2 = *(v0 + 128) + 1;
  if (v2 == *(v0 + 120))
  {
LABEL_2:

    v3 = *(v0 + 8);
    v4 = *(v0 + 200);

    return v3(v4, v25);
  }

  while (1)
  {
    *(v0 + 128) = v2;
    v5 = *(v0 + 112);
    if (v2 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v5 + 8 * v2 + 32);

    sub_232E01270();
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    sub_232E018F0();

    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x8000000232E0D6B0;
    v7 = v6 >> 62 ? sub_232E019C0() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    *(v0 + 48) = v7;
    v11 = sub_232E01AB0();
    MEMORY[0x238395970](v11);

    MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0D8A0);
    sub_232E01370();

    (*(v8 + 8))(v9, v10);
    v12 = Array<A>.searchableItems.getter(v6);
    *(v0 + 136) = v12;
    if (v12 >> 62)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_10:

    v2 = *(v0 + 128) + 1;
    if (v2 == *(v0 + 120))
    {
      goto LABEL_2;
    }
  }

  v13 = v12;
  v14 = sub_232E019C0();
  v12 = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_14:
  v15 = *(v0 + 200);
  v16 = v12;
  v17 = sub_232DD6F80(v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v25;
  sub_232DDD348(v17, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v26);

  v19 = v26;
  *(v0 + 144) = v26;
  *(v0 + 152) = sub_232DE833C();
  v20 = sub_232DD2640(v15, v19);
  v22 = v21;
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *(v23 + 16) = v16;
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_232DDC4E4;

  return sub_232DC7F98(v20, v22, &unk_232E07A70, v23);
}

uint64_t sub_232DDCA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DDCAB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DDCAD0, 0, 0);
}

uint64_t sub_232DDCAD0()
{
  v1 = v0[18];
  sub_232DDD69C();
  v2 = sub_232E015C0();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_232DDCC0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_15_0;
  v0[14] = v3;
  [v1 indexSearchableItems:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDCC0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_232DDD804;
  }

  else
  {
    v2 = sub_232DDD808;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DDCD1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DDCD3C, 0, 0);
}

uint64_t sub_232DDCD3C()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_232DDCE70;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_22;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DDCE70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_232DDCFE4;
  }

  else
  {
    v2 = sub_232DDCF80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DDCF80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DDCFE4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232DDD054(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_232DF8FF0(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_232DCFA8C(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF8FF0((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_232DCFA8C(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF8FF0((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t sub_232DDD294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  a2[2] = v4;
  a2[3] = v5;
  *a2 = v3;
  a2[1] = v2;

  return sub_232DB0970(v4, v5);
}

void sub_232DDD2E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 2)
  {

    sub_232DB091C(a3, a4);
  }
}

uint64_t sub_232DDD348(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v43 = v9;
  v44 = v5;
  while (1)
  {
    v14 = v8;
    v15 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 << 10) | (16 * __clz(__rbit64(v14)));
    v18 = *(a1 + 56);
    v19 = (*(a1 + 48) + v17);
    v20 = v19[1];
    v49[0] = *v19;
    v49[1] = v20;
    v50 = *(v18 + v17);
    v47 = v50;

    sub_232DB0970(v47, *(&v47 + 1));
    a2(&v51, v49);
    v21 = v50;

    sub_232DB091C(v21, *(&v21 + 1));
    v22 = v52;
    if (!v52)
    {
LABEL_22:
      sub_232DD2638(a1);
    }

    v23 = v51;
    v25 = v53;
    v24 = v54;
    v26 = *v55;
    v28 = sub_232DD5634(v51, v52);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_232DC2ADC();
      }
    }

    else
    {
      sub_232DC1A88(v31, a4 & 1);
      v33 = sub_232DD5634(v23, v22);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v28 = v33;
    }

    v35 = (v14 - 1) & v14;
    v36 = *v55;
    if (v32)
    {

      v11 = (v36[7] + 16 * v28);
      v12 = *v11;
      v13 = v11[1];
      *v11 = v25;
      v11[1] = v24;
      sub_232DB091C(v12, v13);
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v23;
      v37[1] = v22;
      v38 = (v36[7] + 16 * v28);
      *v38 = v25;
      v38[1] = v24;
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v36[2] = v41;
    }

    a4 = 1;
    v10 = v15;
    v9 = v43;
    v5 = v44;
    v8 = v35;
  }

  v16 = v10;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v16;
    if (v14)
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
  result = sub_232E01B40();
  __break(1u);
  return result;
}

uint64_t sub_232DDD600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DDCAB0(a1, v4);
}

unint64_t sub_232DDD69C()
{
  result = qword_2814E7C10;
  if (!qword_2814E7C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7C10);
  }

  return result;
}

uint64_t sub_232DDD6E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DDCD1C(a1, v4);
}

uint64_t sub_232DDD784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TPSAppleTVPlusSubscriptionValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id TPSAppleTVPlusSubscriptionValidation.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TPSAppleTVPlusSubscriptionValidation();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_232DDD99C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = *(a1 + 32);
  if (a2)
  {
    v12 = sub_232E014D0();
    v14 = v13;
    if (a3)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v23 = a3;
      sub_232D734CC(&v23, v25);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(v25, 0, sizeof(v25));
LABEL_6:

  swift_unknownObjectRetain();
  if (!a4)
  {
    v17 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v15 = a4;
  a4 = sub_232E00C60();
  v17 = v16;

  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = sub_232E014D0();
  a6 = v19;
LABEL_11:
  v20 = a7;
  v22(v12, v14, v25, a4, v17, a5, v18, a6, a7);

  sub_232DB0E28(a4, v17);

  return sub_232DAB434(v25, &qword_27DDD74C0, &qword_232E07DF0);
}

uint64_t sub_232DDDB90()
{
  v1 = (v0 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_232DDDC54(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_232DDDE14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  return sub_232DAB3CC(v1 + v3, a1, &qword_27DDD7300, &qword_232E06830);
}

uint64_t sub_232DDDFBC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_232DAB3CC(a1, &v10 - v5, &qword_27DDD7300, &qword_232E06830);
  v7 = *a2;
  v8 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  sub_232DDEBE0(v6, v7 + v8);
  return swift_endAccess();
}

id AssetsDownloadOperation.__allocating_init(_:assetURLPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v11 = sub_232E00BE0();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *&v9[OBJC_IVAR___TPSAssetsDownloadOperation_priority] = *MEMORY[0x277CCA790];
  *&v9[OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem] = 0;
  v12 = &v9[OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath];
  *v13 = a3;
  *(v13 + 1) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id AssetsDownloadOperation.init(_:assetURLPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v10 = sub_232E00BE0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR___TPSAssetsDownloadOperation_priority] = *MEMORY[0x277CCA790];
  *&v4[OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem] = 0;
  v11 = &v4[OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AssetsDownloadOperation(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for AssetsDownloadOperation(uint64_t a1)
{
  result = qword_27DDD76F8;
  if (!qword_27DDD76F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232DDE3C8()
{
  sub_232DB52EC();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v1)
  {
    v2 = v1;

    v3 = sub_232E014C0();

    swift_beginAccess();

    v4 = sub_232E014C0();

    v5 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_priority);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_232DDE8B8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_7;
    v7 = _Block_copy(aBlock);

    LODWORD(v8) = v5;
    v9 = [v2 formattedDataForPath:v3 identifier:v4 attributionIdentifier:0 priority:v7 completionHandler:v8];
    _Block_release(v7);

    v10 = *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem);
    *(v0 + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_232DDE598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-v15 - 8];
  v17 = sub_232E00BE0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_232DAB3CC(a3, v28, &qword_27DDD74C0, &qword_232E07DF0);
    if (v29)
    {
      v23 = swift_dynamicCast();
      v24 = *(v18 + 56);
      v24(v16, v23 ^ 1u, 1, v17);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v20, v16, v17);
        (*(v18 + 16))(v14, v20, v17);
        v24(v14, 0, 1, v17);
        v25 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
        swift_beginAccess();
        sub_232DDEBE0(v14, v22 + v25);
        swift_endAccess();
        [v22 finishWithError_];

        (*(v18 + 8))(v20, v17);
        return;
      }
    }

    else
    {
      sub_232DAB434(v28, &qword_27DDD74C0, &qword_232E07DF0);
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    v26 = a9;
    sub_232DAB434(v16, &qword_27DDD7300, &qword_232E06830);
    if (a9)
    {
      v26 = sub_232E00AD0();
    }

    [v22 finishWithError_];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AssetsDownloadOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetsDownloadOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetsDownloadOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232DDEA98(uint64_t a1)
{
  sub_232DBD72C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_232DDEBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_232DDEC50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements);
  v6 = *(v2 + OBJC_IVAR___TPSAppleSubscriptionValidation_segment);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_232DDF118;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_232DDF124;
  v10[3] = &block_descriptor_8;
  v9 = _Block_copy(v10);

  [v5 getSubscriptionEntitlementsForSegment:v6 ignoreCaches:0 isBackground:1 requestingBundleId:0 withCacheInfoResultHandler:v9];
  _Block_release(v9);
}

void sub_232DDED8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void))
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  if (!a1)
  {

LABEL_7:
    a6(0, 0);
    return;
  }

  if (a1 >> 62)
  {
    v15 = Strong;
    v16 = sub_232E019C0();
    Strong = v15;
    if (v16 >= 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13 = Strong;
  v14 = (*((*MEMORY[0x277D85000] & *Strong) + 0x78))(a1);
  Strong = v13;
LABEL_10:
  v17 = Strong;
  v18 = v14 ^ [v17 BOOLValue];
  sub_232E01290();
  v19 = 0xE000000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_232E018F0();
  v20 = [v17 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_232E014D0();
    v19 = v23;
  }

  else
  {
    v22 = 0;
  }

  HIDWORD(v30) = v18 ^ 1;
  MEMORY[0x238395970](v22, v19);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v24 = [v17 targetContext];

  if (v24)
  {
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v25 = sub_232E01480();
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v18)
  {
    v28 = 0x65736C6166;
  }

  else
  {
    v28 = 1702195828;
  }

  if (v18)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v28, v29);

  sub_232E01350();

  (*(v9 + 8))(v11, v8);
  a6(BYTE4(v30) & 1, 0);
}

uint64_t sub_232DDF124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_232DDF694();
    v8 = sub_232E015D0();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AppleSubscriptionValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id AppleSubscriptionValidation.init(targetContext:)(uint64_t a1)
{
  v2 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *&v1[v2] = [objc_opt_self() sharedInstance];
  *&v1[OBJC_IVAR___TPSAppleSubscriptionValidation_segment] = 1;
  v3 = sub_232E01450();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for AppleSubscriptionValidation();
  v4 = objc_msgSendSuper2(&v6, sel_initWithTargetContext_, v3);

  return v4;
}

id AppleSubscriptionValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleSubscriptionValidation.init()()
{
  v1 = OBJC_IVAR___TPSAppleSubscriptionValidation_subscriptionEntitlements;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___TPSAppleSubscriptionValidation_segment] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppleSubscriptionValidation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AppleSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232DDF694()
{
  result = qword_27DDD7718;
  if (!qword_27DDD7718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD7718);
  }

  return result;
}

id sub_232DDF6E0()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
LABEL_5:
    v9 = v1;
    return v2;
  }

  result = [objc_opt_self() spotlightBundleIdentifier];
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v6 = sub_232E014C0();
    v7 = [v5 initWithName:v6 protectionClass:0 bundleIdentifier:v4];

    v8 = *(v0 + 136);
    *(v0 + 136) = v7;
    v2 = v7;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t SearchItemIndexer.IndexItemType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_232DDF7E4()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v3 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
    v2 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDF89C()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v5 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](1936746868, 0xE400000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v4;
    *(v2 + 120) = v5;
    *(v2 + 128) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDF99C()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v5 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](0x4674726F70707573, 0xEB00000000776F6CLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7770, &qword_232E07D18);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v4;
    *(v2 + 120) = v5;
    *(v2 + 128) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_232DDFAAC()
{
  v1 = OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer;
  if (*(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer))
  {
    v2 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name);
    v5 = *(v0 + OBJC_IVAR___TPSSearchItemIndexer_name + 8);

    MEMORY[0x238395970](95, 0xE100000000000000);

    MEMORY[0x238395970](0x6469754772657375, 0xE900000000000065);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7670, &qword_232E07580);
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 136) = 0;
    *(v2 + 112) = v4;
    *(v2 + 120) = v5;
    *(v2 + 128) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_232DDFBB8()
{
  sub_232DB3688(0, &qword_2814E7BC8, 0x277D717B0);
  v0 = sub_232E017E0();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for SearchItemIndexer());
  result = SearchItemIndexer.init(name:)(v0, v2);
  qword_2814E82E8 = result;
  return result;
}

id static SearchItemIndexer.default.getter()
{
  if (qword_2814E82E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814E82E8;

  return v1;
}

id SearchItemIndexer.init(name:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TPSSearchItemIndexer_queue;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v8 = sub_232E014C0();
  [v7 setName_];

  [v7 setMaxConcurrentOperationCount_];
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer] = 0;
  v9 = &v2[OBJC_IVAR___TPSSearchItemIndexer_name];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id SearchItemIndexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchItemIndexer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SearchItemIndexer.indexTips(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDF89C();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD00000000000001ELL;
    v11[5] = 0x8000000232E0DBA0;
    v11[6] = &unk_232E07B68;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824AE8);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

void SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_232DDF89C();
  v8 = sub_232DDF99C();
  v9 = sub_232DDFAAC();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DBC0;
  v11[6] = &unk_232E07B78;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v17 = sub_232E01330();
  v14 = sub_232E014C0();
  [v17 setName_];

  [v17 setQualityOfService_];
  sub_232DE76B8(v17, a3, a4);
}

uint64_t sub_232DE03A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_232DE04A0;

  return sub_232DE9C78(a2, 1, 20);
}

uint64_t sub_232DE04A0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE05EC, 0, 0);
  }
}

uint64_t sub_232DE05EC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_232DE06A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA72F4;

  return sub_232DE03A0(v2, v3);
}

void sub_232DE0820(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_232E00AD0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void SearchItemIndexer.indexSupportFlows(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDF99C();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD000000000000025;
    v11[5] = 0x8000000232E0DBF0;
    v11[6] = &unk_232E07B88;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824B10);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

uint64_t sub_232DE0AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_232DE0BA0;

  return sub_232DD9590(a2, 1, 20);
}

uint64_t sub_232DE0BA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE0CEC, 0, 0);
  }
}

uint64_t sub_232DE0CEC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

void SearchItemIndexer.indexUserGuides(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDFAAC();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD000000000000020;
    v11[5] = 0x8000000232E0DC20;
    v11[6] = &unk_232E07B98;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824B38);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

uint64_t sub_232DE10A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_232DE11A0;

  return sub_232DCA1E0(a2, 50);
}

uint64_t sub_232DE11A0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE12EC, 0, 0);
  }
}

uint64_t sub_232DE12EC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

void SearchItemIndexer.reindexTips(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDF89C();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000020;
  v11[5] = 0x8000000232E0DC50;
  v11[6] = &unk_232E07BA8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE1618(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_232DE1718;

  return sub_232DE9C78(a2, 0, 20);
}

uint64_t sub_232DE1718()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE1864, 0, 0);
  }
}

uint64_t sub_232DE1864(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

void SearchItemIndexer.reindexCollections(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDF99C();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DC80;
  v11[6] = &unk_232E07BB8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE1BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_232DE1CA0;

  return sub_232DD9590(a2, 0, 20);
}

uint64_t sub_232DE1CA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE1DEC, 0, 0);
  }
}

uint64_t sub_232DE1DEC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

void SearchItemIndexer.reindexUserGuides(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDFAAC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DCB0;
  v11[6] = &unk_232E07BC8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE2128(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_232E012A0();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE21EC, a1, 0);
}

uint64_t sub_232DE21EC(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v1[7] = v5;
  v1[8] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = sub_232DDF6E0();
  v1[9] = v6;
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = sub_232DE2308;

  return sub_232DC68A8(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE2308()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_232DE25D0, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v2 + 96) = v4;
    *v4 = v2;
    v4[1] = sub_232DE2484;
    v5 = *(v2 + 24);

    return sub_232DCA1E0(v5, 50);
  }
}

uint64_t sub_232DE2484()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE263C, 0, 0);
  }
}

uint64_t sub_232DE25D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE263C(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[4];
  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

void SearchItemIndexer.deleteAllItems(qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232DDF89C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = 0xD00000000000001FLL;
  v8[5] = 0x8000000232E0DCE0;
  v8[6] = &unk_232E07BD8;
  v8[7] = v7;
  v9 = objc_allocWithZone(sub_232E01340());
  swift_retain_n();
  v10 = v3;
  v12 = sub_232E01330();
  v11 = sub_232E014C0();
  [v12 setName_];

  [v12 setQualityOfService_];
  sub_232DE76B8(v12, a2, a3);
}

uint64_t sub_232DE2930()
{
  v1 = sub_232E012A0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_232DE2A30;

  return sub_232DE2C30();
}

uint64_t sub_232DE2A30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE2B7C, 0, 0);
  }
}

uint64_t sub_232DE2B7C(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_232E01270();
  sub_232E01370();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_232DE2C30()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_232E00BE0();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_232E012A0();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE2D80, v0, 0);
}

uint64_t sub_232DE2D80(uint64_t a1)
{
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[24];
  sub_232E01270();
  sub_232E01360();
  (*(v3 + 8))(v2, v4);
  v5 = sub_232DDF6E0();
  v1[27] = v5;
  v1[2] = v1;
  v1[3] = sub_232DE2EF0;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_232DCA134;
  v1[13] = &block_descriptor_9;
  v1[14] = v6;
  [v5 deleteAllSearchableItemsWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_232DE2EF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_232DE310C;
  }

  else
  {
    v4 = sub_232DE3010;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DE3010()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  sub_232DE9A58();
  sub_232E00B80();
  v5 = *(v4 + 8);
  v5(v2, v3);
  sub_232DB5818();
  v5(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_232DE310C(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232DE3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[111] = a4;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v5 = sub_232E00BE0();
  v4[112] = v5;
  v4[113] = *(v5 - 8);
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v6 = sub_232E012A0();
  v4[116] = v6;
  v4[117] = *(v6 - 8);
  v4[118] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE33C0, 0, 0);
}

uint64_t sub_232DE33C0()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v4 + 32);
  *(v0 + 1184) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);

  if (v8)
  {
    v10 = 0;
LABEL_8:
    *(v0 + 960) = v10;
    *(v0 + 952) = v8;
    v12 = *(*(v9 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    switch(v12)
    {
      case 0:
        v13 = sub_232DE3E80;
        v14 = v2;
        goto LABEL_14;
      case 1:
        v13 = sub_232DE3640;
        v14 = v3;
        goto LABEL_14;
      case 2:
        v13 = sub_232DE4DB0;
        v14 = v1;
LABEL_14:

        return MEMORY[0x2822009F8](v13, v14, 0);
    }

    *(v0 + 832) = v12;
    v15 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v15);
  }

  else
  {
    v11 = 0;
    while (((63 - v7) >> 6) - 1 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 8 * v11++ + 64);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_232DE3640(uint64_t a1)
{
  v2 = v1[118];
  v3 = v1[117];
  v4 = v1[116];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v1[121] = v5;
  v1[122] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = sub_232DDF6E0();
  v1[123] = v6;
  v7 = swift_task_alloc();
  v1[124] = v7;
  *v7 = v1;
  v7[1] = sub_232DE378C;

  return sub_232DC7A00(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE378C()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);
    v4 = sub_232DE3D28;
  }

  else
  {
    v5 = *(v2 + 872);

    v4 = sub_232DE3900;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DE3900()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
  sub_232DE9A58();
  sub_232E00B80();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_232E00B70();
  v0[107] = 0;
  v7 = [v5 removeItemAtURL:v6 error:v0 + 107];

  v8 = v0[107];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = v8;
    v11 = sub_232E00AE0();

    swift_willThrow();
  }

  v4(v0[115], v0[112]);

  return MEMORY[0x2822009F8](sub_232DE3AB8, 0, 0);
}

uint64_t sub_232DE3AB8(uint64_t a1)
{
  v2 = *(v1 + 968);
  v3 = *(v1 + 944);
  v4 = *(v1 + 928);
  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);
  v5 = *(v1 + 960);
  v6 = (*(v1 + 952) - 1) & *(v1 + 952);
  if (v6)
  {
    v7 = *(v1 + 864);
LABEL_7:
    *(v1 + 960) = v5;
    *(v1 + 952) = v6;
    v9 = *(*(v7 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    switch(v9)
    {
      case 0:
        v10 = *(v1 + 880);
        v11 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v10 = *(v1 + 872);
        v11 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v10 = *(v1 + 888);
        v11 = sub_232DE4DB0;
LABEL_13:

        return MEMORY[0x2822009F8](v11, v10, 0);
    }

    *(v1 + 832) = v9;
    v12 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v1 + 832, &type metadata for SearchItemIndexer.IndexItemType, v12);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      if (v8 >= (((1 << *(v1 + 1184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v1 + 864);
      v6 = *(v7 + 8 * v8 + 56);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v13 = *(v1 + 8);

    return v13();
  }
}

uint64_t sub_232DE3D28()
{

  return MEMORY[0x2822009F8](sub_232DE3DBC, 0, 0);
}

uint64_t sub_232DE3DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE3E80(uint64_t a1)
{
  v2 = v1[118];
  v3 = v1[117];
  v4 = v1[116];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v1[126] = v5;
  v1[127] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v1[128] = sub_232DDF6E0();

  return MEMORY[0x2822009F8](sub_232DE3F84, 0, 0);
}

uint64_t sub_232DE3F84()
{
  v1 = v0[128];
  [v1 beginIndexBatch];
  v2 = sub_232E015C0();
  v0[129] = v2;
  v0[26] = v0;
  v0[27] = sub_232DE410C;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[130] = v4;
  v0[81] = v4;
  v0[78] = v3;
  v0[74] = MEMORY[0x277D85DD0];
  v0[75] = 1107296256;
  v0[76] = sub_232DCA134;
  v0[77] = &block_descriptor_118;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 74];

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_232DE410C()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1048) = v1;
  if (v1)
  {
    v2 = sub_232DE44E4;
  }

  else
  {
    v2 = sub_232DE4248;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE4248()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1024);

  v3 = sub_232E00C50();
  *(v0 + 1056) = v3;
  *(v0 + 336) = v0;
  *(v0 + 344) = sub_232DE43A8;
  v4 = swift_continuation_init();
  *(v0 + 776) = v1;
  *(v0 + 752) = v4;
  *(v0 + 720) = MEMORY[0x277D85DD0];
  *(v0 + 728) = 1107296256;
  *(v0 + 736) = sub_232DCA134;
  *(v0 + 744) = &block_descriptor_124;
  [v2 endIndexBatchWithClientState:v3 completionHandler:v0 + 720];

  return MEMORY[0x282200938](v0 + 336);
}