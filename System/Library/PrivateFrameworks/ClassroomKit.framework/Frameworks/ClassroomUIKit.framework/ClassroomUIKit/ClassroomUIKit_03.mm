uint64_t sub_2436B7830(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v76 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v77 = (&v70 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v75 = &v70 - v14;
  MEMORY[0x28223BE20](v13);
  v74 = (&v70 - v15);
  v16 = sub_2436CAD38();
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v80 = &v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v73 = (&v70 - v21);
  MEMORY[0x28223BE20](v20);
  v79 = &v70 - v24;
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v26 >= v27 >> 3)
  {
    v79 = v22;
    if (a4 != a2 || &a2[8 * v28] <= a4)
    {
      v48 = v23;
      memmove(a4, a2, 8 * v28);
      v23 = v48;
    }

    v83 = &a4[8 * v28];
    v49 = v77;
    if (a3 - a2 < 8)
    {
      v47 = a2;
    }

    else
    {
      v47 = a2;
      if (a2 > a1)
      {
        v50 = (v23 + 48);
        v72 = (v23 + 8);
        v73 = (v23 + 32);
        v74 = (v23 + 48);
        v82 = a4;
        v71 = a1;
LABEL_34:
        v78 = v47;
        v51 = v47 - 8;
        v52 = a3 - 8;
        v53 = v83;
        v75 = v47 - 8;
        do
        {
          v54 = *(v53 - 1);
          v53 -= 8;
          v55 = *v51;
          v56 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          sub_2436714A8(v54 + v56, v49, &qword_27ED7E4F0, &qword_2436CF910);
          v57 = *v50;
          v58 = (*v50)(v49, 1, v16);
          v81 = v52;
          if (v58 == 1)
          {

            sub_2436CACC8();
            if (v57(v49, 1, v16) != 1)
            {
              sub_243671AC8(v49, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v73)(v80, v49, v16);
          }

          v59 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v60 = v55 + v59;
          v61 = v76;
          sub_2436714A8(v60, v76, &qword_27ED7E4F0, &qword_2436CF910);
          if (v57(v61, 1, v16) == 1)
          {
            v62 = v79;
            sub_2436CACC8();
            if (v57(v61, 1, v16) != 1)
            {
              sub_243671AC8(v61, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            v62 = v79;
            (*v73)(v79, v61, v16);
          }

          v63 = v80;
          v64 = sub_2436CACE8();
          v65 = *v72;
          (*v72)(v62, v16);
          v65(v63, v16);

          if (v64)
          {
            a3 = v81;
            a4 = v82;
            v49 = v77;
            v67 = v71;
            v68 = v75;
            if (v81 + 8 != v78)
            {
              *v81 = *v75;
            }

            v50 = v74;
            if (v83 <= a4 || (v47 = v68, v68 <= v67))
            {
              v47 = v68;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v66 = v81;
          a4 = v82;
          v49 = v77;
          if (v81 + 8 != v83)
          {
            *v81 = *v53;
          }

          v52 = v66 - 8;
          v83 = v53;
          v50 = v74;
          v51 = v75;
        }

        while (v53 > a4);
        v83 = v53;
        v47 = v78;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v26] <= a4)
    {
      v29 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v29;
    }

    v83 = &a4[8 * v26];
    if (a2 - a1 >= 8)
    {
      v30 = a2;
      if (a2 < a3)
      {
        v31 = (v23 + 48);
        v76 = (v23 + 8);
        v77 = (v23 + 32);
        v80 = (v23 + 48);
        v81 = a3;
        while (1)
        {
          v78 = v30;
          v32 = *v30;
          v33 = *a4;
          v34 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v35 = v74;
          sub_2436714A8(v32 + v34, v74, &qword_27ED7E4F0, &qword_2436CF910);
          v36 = *v31;
          v37 = (*v31)(v35, 1, v16);
          v82 = a4;
          if (v37 == 1)
          {

            sub_2436CACC8();
            if (v36(v35, 1, v16) != 1)
            {
              sub_243671AC8(v35, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v77)(v79, v35, v16);
          }

          v38 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v39 = v33 + v38;
          v40 = v75;
          sub_2436714A8(v39, v75, &qword_27ED7E4F0, &qword_2436CF910);
          v41 = v36(v40, 1, v16);
          v42 = v73;
          if (v41 == 1)
          {
            sub_2436CACC8();
            if (v36(v40, 1, v16) != 1)
            {
              sub_243671AC8(v40, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v77)(v73, v40, v16);
          }

          v43 = v79;
          v44 = sub_2436CACE8();
          v45 = *v76;
          (*v76)(v42, v16);
          v45(v43, v16);

          if ((v44 & 1) == 0)
          {
            break;
          }

          v46 = v78;
          v30 = v78 + 8;
          a4 = v82;
          if (a1 != v78)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v31 = v80;
          if (a4 >= v83 || v30 >= v81)
          {
            goto LABEL_27;
          }
        }

        v46 = v82;
        a4 = v82 + 8;
        v30 = v78;
        if (a1 == v82)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v46;
        goto LABEL_25;
      }
    }

LABEL_27:
    v47 = a1;
  }

LABEL_54:
  if (v47 != a4 || v47 >= &a4[(v83 - a4 + (v83 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v47, a4, 8 * ((v83 - a4) / 8));
  }

  return 1;
}

uint64_t sub_2436B80A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
  result = sub_2436CC218();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      }

      result = sub_2436CBF08();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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
        return result;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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
  return result;
}

uint64_t sub_2436B8318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
  v34 = v4;
  result = sub_2436CC218();
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

      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
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

uint64_t sub_2436B85CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2436CC218();
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

      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
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

uint64_t sub_2436B886C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24366FE3C(a2, a3);
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
      sub_2436B85CC(v16, a4 & 1, &qword_27ED800F8, &unk_2436D2160);
      v11 = sub_24366FE3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2436CC318();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2436B8CEC(&qword_27ED800F8, &unk_2436D2160);
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

void *sub_2436B8A0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
  v2 = *v0;
  v3 = sub_2436CC208();
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

void *sub_2436B8B70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
  v2 = *v0;
  v3 = sub_2436CC208();
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

  return result;
}

void *sub_2436B8CEC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2436CC208();
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

uint64_t sub_2436B8E4C(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_2436CC368();
  sub_2436933F8(v16, a2);
  v6 = sub_2436CC398();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v2;
    sub_243675744(a2);
    sub_2436B99EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v16[0];
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  v10 = a2 & 0xC000000000000000;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v8);
    v12 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      break;
    }

    if (v12 == 2)
    {
      if (v10 != 0x8000000000000000)
      {
        goto LABEL_4;
      }
    }

    else if (a2 >> 62 != 3)
    {
      goto LABEL_4;
    }

LABEL_3:
    if (((v11 ^ a2) & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v12)
  {
    if (v10 != 0x4000000000000000)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2 >> 62 || v11 != a2)
  {
    goto LABEL_4;
  }

LABEL_18:
  sub_2436755D8(a2);
  v15 = *(*(v5 + 48) + 8 * v8);
  *a1 = v15;
  sub_243675744(v15);
  return 0;
}

uint64_t sub_2436B8FCC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2436CC368();
  sub_2436CBD88();
  v8 = sub_2436CC398();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2436CC2E8() & 1) != 0)
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

    sub_2436B9B9C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2436B911C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2436CC368();
  sub_2436CC388();
  if (a3)
  {
    sub_2436CBD88();
  }

  v8 = sub_2436CC398();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2436B9D1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_2436CC2E8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_2436B92A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  result = sub_2436CC058();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2436CC368();
      v18 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v17 >> 62))
      {
        v18 = v17;
      }

      if ((v17 >> 62) <= 1)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      }

      MEMORY[0x245D3C5D0](v19);
      result = sub_2436CC398();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2436B9510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  result = sub_2436CC058();
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
      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
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

uint64_t sub_2436B9770(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  result = sub_2436CC058();
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
      v20 = *v18;
      v19 = v18[1];
      sub_2436CC368();
      sub_2436CC388();
      if (v19)
      {
        sub_2436CBD88();
      }

      result = sub_2436CC398();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

unint64_t sub_2436B99EC(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2436B92A4(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_2436B9ED8();
        a2 = v7;
        goto LABEL_24;
      }

      sub_2436BA2DC(v5 + 1);
    }

    v8 = *v3;
    sub_2436CC368();
    sub_2436933F8(v18, v4);
    result = sub_2436CC398();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      v11 = v4 & 0xC000000000000000;
      do
      {
        v12 = *(*(v8 + 48) + 8 * a2);
        v13 = v12 >> 62;
        if ((v12 >> 62) > 1)
        {
          if (v13 == 2)
          {
            if (v11 == 0x8000000000000000)
            {
              goto LABEL_10;
            }
          }

          else if (v4 >> 62 == 3)
          {
LABEL_10:
            if (((v12 ^ v4) & 0x3FFFFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v13)
        {
          if (v11 == 0x4000000000000000)
          {
            goto LABEL_10;
          }
        }

        else if (!(v4 >> 62) && v12 == v4)
        {
          goto LABEL_27;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_24:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_27:
    result = sub_2436CC308();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_2436B9B9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2436B9510(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2436BA028();
      goto LABEL_16;
    }

    sub_2436BA520(v8 + 1);
  }

  v10 = *v4;
  sub_2436CC368();
  sub_2436CBD88();
  result = sub_2436CC398();
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

      result = sub_2436CC2E8();
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
  result = sub_2436CC308();
  __break(1u);
  return result;
}

uint64_t sub_2436B9D1C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_2436B9770(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2436BA184();
      goto LABEL_22;
    }

    sub_2436BA758(v9 + 1);
  }

  v11 = *v4;
  sub_2436CC368();
  sub_2436CC388();
  if (a2)
  {
    sub_2436CBD88();
  }

  result = sub_2436CC398();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_2436CC2E8(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
            result = sub_2436CC308();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_2436B9ED8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  v2 = *v0;
  v3 = sub_2436CC048();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_243675744(v18);
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

void *sub_2436BA028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  v2 = *v0;
  v3 = sub_2436CC048();
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

void *sub_2436BA184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  v2 = *v0;
  v3 = sub_2436CC048();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_2436BA2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  result = sub_2436CC058();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_2436CC368();
      v17 = v16 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v16 >> 62))
      {
        v17 = v16;
      }

      if ((v16 >> 62) <= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16 & 0x3FFFFFFFFFFFFFFFLL;
      }

      MEMORY[0x245D3C5D0](v18);
      result = sub_2436CC398();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
      result = sub_243675744(v16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_31;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2436BA520(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  result = sub_2436CC058();
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
      sub_2436CC368();

      sub_2436CBD88();
      result = sub_2436CC398();
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

uint64_t sub_2436BA758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  result = sub_2436CC058();
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
      v19 = *v17;
      v18 = v17[1];
      sub_2436CC368();
      sub_2436CC388();
      if (v18)
      {

        sub_2436CBD88();
      }

      result = sub_2436CC398();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

void *sub_2436BA9B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2436BAB04(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2436BAC60(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2436CC008();
  }

  return sub_2436CC0A8();
}

uint64_t sub_2436BACC4(void *a1)
{
  v2 = v1;
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80130, &unk_2436D2360);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v69 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  v96 = *(v102 - 8);
  v5 = MEMORY[0x28223BE20](v102);
  v97 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80120, &qword_2436D2348);
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v69 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v69 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v69 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v88 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v85 = &v69 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80118, &qword_2436D2340);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v69 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v14 = MEMORY[0x28223BE20](v76);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v69 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v82 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v80 = &v69 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80110, &qword_2436D2338);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v19 = &v69 - v18;
  v20 = sub_2436CAC58();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - v29;
  v31 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__allHistoryItemsCount;
  *&v105 = 0;
  sub_2436CAE98();
  v32 = *(v28 + 32);
  v75 = v30;
  v78 = v27;
  v77 = v28 + 32;
  v72 = v32;
  v32(v2 + v31, v30, v27);
  v33 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__title;
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  v34 = qword_27ED83B58;
  v35 = *(v21 + 16);
  v35(v26, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_title, v20);
  v35(v24, v26, v20);
  sub_2436CAE98();
  (*(v21 + 8))(v26, v20);
  (*(v70 + 32))(v2 + v33, v19, v71);
  v36 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__subtitle;
  v105 = 0uLL;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  v37 = v80;
  sub_2436CAE98();
  v82 = *(v82 + 32);
  (v82)(v2 + v36, v37, v103);
  v35((v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle), v34 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_populatedDescription, v20);
  v38 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__content;
  v39 = v73;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v39, v74, &qword_27ED7F128, &qword_2436D1EF0);
  v40 = v79;
  sub_2436CAE98();
  sub_243671AC8(v39, &qword_27ED7F128, &qword_2436D1EF0);
  (*(v81 + 32))(v2 + v38, v40, v83);
  v41 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerIsVisible;
  LOBYTE(v105) = 1;
  v42 = v85;
  sub_2436CAE98();
  v43 = *(v88 + 32);
  v44 = v104;
  v43(v2 + v41, v42, v104);
  v45 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerEntriesNumberTitle;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v46 = v84;
  sub_2436CAE98();
  (*(v86 + 32))(v2 + v45, v46, v87);
  v47 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerTitle;
  v105 = 0uLL;
  sub_2436CAE98();
  (v82)(v2 + v47, v37, v103);
  v48 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__isEditing;
  LOBYTE(v105) = 0;
  sub_2436CAE98();
  v43(v2 + v48, v42, v44);
  v49 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__selectedItems;
  v50 = MEMORY[0x277D84FA0];
  *&v105 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80060, &qword_2436D1EF8);
  v51 = v89;
  sub_2436CAE98();
  (*(v90 + 32))(v2 + v49, v51, v91);
  v52 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__animationGeneration;
  *&v105 = 0;
  v53 = v75;
  sub_2436CAE98();
  v72(v2 + v52, v53, v78);
  v54 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__toolbar;
  *&v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80070, &qword_2436D1F00);
  v55 = v92;
  sub_2436CAE98();
  (*(v93 + 32))(v2 + v54, v55, v94);
  v56 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert;
  type metadata accessor for EMSAlertViewModel(0);
  v57 = swift_allocObject();
  LOBYTE(v105) = 0;
  sub_2436CAE98();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v109 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  sub_2436CAE98();
  *(v2 + v56) = v57;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_cancellables) = v50;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel____lazy_storage___nameFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel____lazy_storage___itemDateFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier) = MEMORY[0x277D84F98];
  v58 = v95;
  *(v2 + 16) = v95;
  v59 = v58[5];
  v60 = v58[6];
  __swift_project_boxed_opaque_existential_0(v58 + 2, v59);
  v61 = *(v60 + 16);

  *&v105 = v61(v59, v60);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB40, &qword_2436D1538);
  sub_243671838(qword_27ED7FB48, &qword_27ED7FB40, &qword_2436D1538, MEMORY[0x277CBCD90]);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  v62 = v98;
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0, MEMORY[0x277CBCEC8]);
  v63 = v102;
  sub_2436CAF68();

  v64 = v96;
  v65 = *(v96 + 8);
  v65(v62, v63);
  v103 = v65;
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  v66 = v99;
  sub_2436CAF38();
  v65(v62, v63);
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  sub_243671838(&qword_27ED80138, &qword_27ED80130, &unk_2436D2360, MEMORY[0x277CBCC08]);
  v67 = v101;
  sub_2436CAF78();
  (*(v100 + 8))(v66, v67);
  (*(v64 + 16))(v97, v62, v63);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  v103(v62, v63);
  return v2;
}

uint64_t sub_2436BBCCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24367546C();
  result = MEMORY[0x245D3C100](v2, &type metadata for EMSNavigationStackItem, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_243675744(v6);
      sub_2436B8E4C(&v7, v6);
      sub_2436755D8(v7);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2436BBD54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  v4 = sub_2436BC0C4();
  result = MEMORY[0x245D3C100](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_2436B911C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2436BBE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D3C100](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2436B8FCC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2436BBE98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2436BC0C4()
{
  result = qword_27ED80100;
  if (!qword_27ED80100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80380, &qword_2436CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80100);
  }

  return result;
}

void Error.crkui_verboseDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_2436CC2C8();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_2436CAC18();

  v11 = [v10 verboseDescription];
  if (v11)
  {
    sub_2436CBD38();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2436BC380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2436CBB38();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80180, &qword_2436D2468);
  return sub_2436BC3E0(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_2436BC3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80188, &qword_2436D2470);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80190, &qword_2436D2478);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = *(sub_2436CB168() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2436CB318();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #8.0 }

  *v18 = _Q0;
  swift_getKeyPath(byte_2436D2480, v37);
  swift_getKeyPath(byte_2436D24A8);
  sub_2436CAED8();

  sub_2436892F0(v38);
  sub_2436CBB98();
  sub_2436CBBA8();
  sub_2436CB088();
  v27 = &v18[*(v13 + 44)];
  *v27 = v38;
  v28 = v40;
  *(v27 + 8) = v39;
  *(v27 + 24) = v28;
  *v11 = sub_2436CB368();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80198, &qword_2436D24C8);
  sub_2436BC72C(a2, &v11[*(v29 + 44)]);
  LOBYTE(v20) = sub_2436CB538();
  sub_2436CAF88();
  v30 = &v11[*(v6 + 44)];
  *v30 = v20;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_2436BD490(v18, v16);
  sub_2436714A8(v11, v9, &qword_27ED80188, &qword_2436D2470);
  sub_2436BD490(v16, a3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801A0, &qword_2436D24D0);
  sub_2436714A8(v9, a3 + *(v35 + 48), &qword_27ED80188, &qword_2436D2470);
  sub_243671AC8(v11, &qword_27ED80188, &qword_2436D2470);
  sub_243671AC8(v18, &qword_27ED80190, &qword_2436D2478);
  sub_243671AC8(v9, &qword_27ED80188, &qword_2436D2470);
  return sub_243671AC8(v16, &qword_27ED80190, &qword_2436D2478);
}

uint64_t sub_2436BC72C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801A8, &qword_2436D24D8);
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v54 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801B0, &qword_2436D24E0);
  MEMORY[0x28223BE20](v63);
  v11 = &v54 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801B8, &qword_2436D24E8) - 8;
  v12 = MEMORY[0x28223BE20](v64);
  v75 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v54 - v14;
  sub_2436CBB48();
  sub_2436CB068();
  v74 = v86;
  v73 = v88;
  v72 = v90;
  v71 = v91;
  v94 = 1;
  v93 = v87;
  v92 = v89;
  v70 = sub_2436CB2F8();
  v62 = a2;
  sub_2436BCF04(&v81);
  v69 = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v68 = v85;
  v96 = 1;
  v95 = v82;
  swift_getKeyPath(byte_2436D24F0);
  swift_getKeyPath("x\bk;");
  sub_2436CAED8();

  v61 = sub_2436732AC();
  v15 = sub_2436CB698();
  v17 = v16;
  LODWORD(v55) = v18;
  v20 = v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801C0, &qword_2436D2568);
  v22 = &v11[*(v60 + 36)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801C8, &qword_2436D2570);
  v23 = *(v59 + 28);
  v57 = *MEMORY[0x277CE0B28];
  v24 = v57;
  v25 = sub_2436CB638();
  v26 = *(v25 - 8);
  v56 = *(v26 + 104);
  v58 = v26 + 104;
  v56(&v22[v23], v24, v25);
  *v22 = swift_getKeyPath("(\bk;");
  *v11 = v15;
  *(v11 + 1) = v17;
  v11[16] = v55 & 1;
  *(v11 + 3) = v20;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = 2;
  v11[48] = 0;
  v27 = sub_2436CB598();
  v28 = swift_getKeyPath(byte_2436D25A8);
  v29 = v63;
  v30 = &v11[*(v63 + 36)];
  *v30 = v28;
  v30[1] = v27;
  sub_2436CB5B8();
  v55 = sub_2436BD770();
  v31 = v80;
  sub_2436CB6C8();
  sub_243671AC8(v11, &qword_27ED801B0, &qword_2436D24E0);
  *(v31 + *(v64 + 44)) = 0x3FF0000000000000;
  swift_getKeyPath(byte_2436D25F0);
  swift_getKeyPath(byte_2436D2618);
  sub_2436CAED8();

  v32 = sub_2436CB698();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  v39 = &v11[*(v60 + 36)];
  v56(&v39[*(v59 + 28)], v57, v25);
  *v39 = swift_getKeyPath("(\bk;");
  *v11 = v32;
  *(v11 + 1) = v34;
  v11[16] = v24 & 1;
  *(v11 + 3) = v37;
  *(v11 + 4) = v38;
  *(v11 + 5) = 2;
  v11[48] = 0;
  v40 = sub_2436CB5D8();
  v41 = swift_getKeyPath(byte_2436D25A8);
  v42 = &v11[*(v29 + 36)];
  *v42 = v41;
  v42[1] = v40;
  sub_2436CB5B8();
  v43 = v77;
  sub_2436CB6C8();
  sub_243671AC8(v11, &qword_27ED801B0, &qword_2436D24E0);
  LOBYTE(v40) = v94;
  LOBYTE(v24) = v93;
  LOBYTE(v25) = v92;
  v44 = v75;
  sub_2436714A8(v80, v75, &qword_27ED801B8, &qword_2436D24E8);
  v64 = *(v79 + 16);
  v45 = v76;
  (v64)(v76, v43, v78);
  *a3 = 0;
  *(a3 + 8) = v40;
  *(a3 + 16) = v74;
  *(a3 + 24) = v24;
  *(a3 + 32) = v73;
  *(a3 + 40) = v25;
  v46 = v71;
  *(a3 + 48) = v72;
  *(a3 + 56) = v46;
  *(a3 + 64) = v70;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 88) = v69;
  *(a3 + 96) = v65;
  v47 = v67;
  *(a3 + 104) = v66;
  *(a3 + 112) = v47;
  *(a3 + 120) = v68;
  *(a3 + 128) = 0;
  *(a3 + 136) = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80218, &qword_2436D2638);
  sub_2436714A8(v44, a3 + v48[20], &qword_27ED801B8, &qword_2436D24E8);
  v49 = a3 + v48[24];
  *v49 = 0x4000000000000000;
  *(v49 + 8) = 0;
  *(v49 + 9) = 257;
  v50 = a3 + v48[28];
  v51 = v78;
  (v64)(v50, v45, v78);
  v52 = *(v79 + 8);

  v52(v77, v51);
  sub_243671AC8(v80, &qword_27ED801B8, &qword_2436D24E8);
  v52(v45, v51);
  sub_243671AC8(v44, &qword_27ED801B8, &qword_2436D24E8);
}

uint64_t sub_2436BCF04@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  swift_getKeyPath("x\ak;");
  swift_getKeyPath("X\ak;");
  sub_2436CAED8();

  v6 = sub_24368CCEC(v10[1]);
  v7 = sub_2436CB5A8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_2436CB5C8();
  sub_243671AC8(v5, &qword_27ED7F790, &qword_2436D2640);
  result = swift_getKeyPath(byte_2436D25A8);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2436BD074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80148, &qword_2436D2418);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v5 = *v0;
  v4 = v0[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v12 = v5;
  v13 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80150, &qword_2436D2420);
  sub_243671838(&qword_27ED80158, &qword_27ED80150, &qword_2436D2420, MEMORY[0x277CE11A8]);
  sub_2436CBA38();
  v7 = sub_2436CB948();
  KeyPath = swift_getKeyPath("H\tk;");
  v9 = &v3[*(v1 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_2436BD350();
  sub_2436BD434();
  sub_2436CB6F8();
  return sub_243671AC8(v3, &qword_27ED80148, &qword_2436D2418);
}

uint64_t sub_2436BD228()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436BD2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB208();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB208();
  *a1 = result;
  return result;
}

unint64_t sub_2436BD350()
{
  result = qword_27ED80160;
  if (!qword_27ED80160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80148, &qword_2436D2418);
    sub_243671838(&qword_27ED80168, &qword_27ED80170, &qword_2436D2458, MEMORY[0x277CDF028]);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80160);
  }

  return result;
}

unint64_t sub_2436BD434()
{
  result = qword_27ED80178;
  if (!qword_27ED80178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80178);
  }

  return result;
}

uint64_t sub_2436BD490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80190, &qword_2436D2478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436BD508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB248();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD560@<X0>(uint64_t a1@<X8>)
{
  result = sub_2436CB2A8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2436BD594@<X0>(uint64_t a1@<X8>)
{
  result = sub_2436CB2A8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2436BD64C(uint64_t a1)
{
  v2 = sub_2436CB638();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2436CB1F8();
}

uint64_t sub_2436BD718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB248();
  *a1 = result;
  return result;
}

unint64_t sub_2436BD770()
{
  result = qword_27ED801D0;
  if (!qword_27ED801D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801B0, &qword_2436D24E0);
    sub_2436BD828();
    sub_243671838(&qword_27ED80208, &qword_27ED80210, &qword_2436D25E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801D0);
  }

  return result;
}

unint64_t sub_2436BD828()
{
  result = qword_27ED801D8;
  if (!qword_27ED801D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801C0, &qword_2436D2568);
    sub_2436BD8E0();
    sub_243671838(&qword_27ED80200, &qword_27ED801C8, &qword_2436D2570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801D8);
  }

  return result;
}

unint64_t sub_2436BD8E0()
{
  result = qword_27ED801E0;
  if (!qword_27ED801E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801E8, &qword_2436D25D8);
    sub_243671838(&qword_27ED801F0, &qword_27ED801F8, &qword_2436D25E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801E0);
  }

  return result;
}

uint64_t sub_2436BD9A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80148, &qword_2436D2418);
  sub_2436BD350();
  sub_2436BD434();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BDA4C@<X0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80238, &qword_2436D2728);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - v7;
  swift_getKeyPath(" \ak;");
  swift_getKeyPath(byte_2436D2758);
  sub_2436CAED8();

  type metadata accessor for EMSFacePortalViewModel(0);
  sub_2436BE8C0();
  v8 = sub_2436CB098();
  v48 = v9;
  v49 = v8;
  sub_2436CBB48();
  sub_2436CB068();
  v45 = v56;
  v46 = v54;
  v43 = v59;
  v44 = v58;
  v61 = v55;
  v60 = v57;
  v47 = sub_2436CB368();
  LOBYTE(v65[0]) = 0;
  v41 = a2;
  sub_2436BE038(v72);
  memcpy(v62, v72, 0x121uLL);
  memcpy(v63, v72, sizeof(v63));
  sub_2436714A8(v62, v71, &qword_27ED80248, &qword_2436D2778);
  sub_243671AC8(v63, &qword_27ED80248, &qword_2436D2778);
  memcpy(&v53[7], v62, 0x121uLL);
  v42 = LOBYTE(v65[0]);
  swift_getKeyPath(byte_2436D2780);
  swift_getKeyPath(byte_2436D27A8);
  sub_2436CAED8();

  sub_2436732AC();
  v10 = sub_2436CB698();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath(byte_2436D27C8);
  v18 = sub_2436CB978();
  v19 = swift_getKeyPath(byte_2436D27F8);
  v20 = v14 & 1;
  LOBYTE(v72[0]) = v14 & 1;
  v21 = sub_2436CB568();
  sub_2436CAF88();
  LOBYTE(v67) = 0;
  *&v72[0] = v10;
  *(&v72[0] + 1) = v12;
  LOBYTE(v72[1]) = v20;
  *(&v72[1] + 1) = v16;
  *&v72[2] = KeyPath;
  BYTE8(v72[2]) = 2;
  *&v72[3] = v19;
  *(&v72[3] + 1) = v18;
  LOBYTE(v72[4]) = v21;
  *(&v72[4] + 1) = *v64;
  DWORD1(v72[4]) = *&v64[3];
  *(&v72[4] + 1) = v22;
  *&v72[5] = v23;
  *(&v72[5] + 1) = v24;
  *&v72[6] = v25;
  BYTE8(v72[6]) = 0;
  swift_getKeyPath(aX_5);
  swift_getKeyPath(a8_3);
  sub_2436CAED8();

  v26 = sub_2436CB698();
  v28 = v27;
  LOBYTE(v12) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80250, &qword_2436D2870);
  sub_2436BE984();
  v30 = v52;
  sub_2436CB768();
  sub_243679F68(v26, v28, v12 & 1);

  v65[4] = v72[4];
  v66[0] = v72[5];
  *(v66 + 9) = *(&v72[5] + 9);
  v65[0] = v72[0];
  v65[1] = v72[1];
  v65[3] = v72[3];
  v65[2] = v72[2];
  sub_243671AC8(v65, &qword_27ED80250, &qword_2436D2870);
  LOBYTE(v19) = v61;
  v31 = v60;
  v32 = v50;
  sub_2436714A8(v30, v50, &qword_27ED80238, &qword_2436D2728);
  *&v67 = v49;
  *(&v67 + 1) = v48;
  *&v68 = v46;
  BYTE8(v68) = v19;
  *&v69 = v45;
  BYTE8(v69) = v31;
  *&v70 = v44;
  *(&v70 + 1) = v43;
  v33 = v68;
  v34 = v51;
  *v51 = v67;
  v34[1] = v33;
  v35 = v70;
  v34[2] = v69;
  v34[3] = v35;
  *(v34 + 8) = 0x4034000000000000;
  *(v34 + 72) = 0;
  v36 = v34;
  v37 = v47;
  v71[0] = v47;
  v71[1] = 0x4010000000000000;
  v38 = v42;
  LOBYTE(v71[2]) = v42;
  memcpy(&v71[2] + 1, v53, 0x128uLL);
  memcpy(v36 + 5, v71, 0x139uLL);
  *(v36 + 50) = 0;
  *(v36 + 408) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80290, &qword_2436D2898);
  sub_2436714A8(v32, v36 + *(v39 + 96), &qword_27ED80238, &qword_2436D2728);
  sub_2436714A8(&v67, v72, &qword_27ED80298, &qword_2436D28A0);
  sub_2436714A8(v71, v72, &qword_27ED802A0, &qword_2436D28A8);
  sub_243671AC8(v52, &qword_27ED80238, &qword_2436D2728);
  sub_243671AC8(v32, &qword_27ED80238, &qword_2436D2728);
  *&v72[0] = v37;
  *(&v72[0] + 1) = 0x4010000000000000;
  LOBYTE(v72[1]) = v38;
  memcpy(&v72[1] + 1, v53, 0x128uLL);
  sub_243671AC8(v72, &qword_27ED802A0, &qword_2436D28A8);
}

uint64_t sub_2436BE038@<X0>(void *a3@<X8>)
{
  v3 = sub_2436CB2F8();
  LOBYTE(v47[0]) = 1;
  sub_2436BE3E0(&v60);
  v32 = *&v61[2];
  v33[0] = *&v61[4];
  *(v33 + 9) = *(&v61[5] + 1);
  v30 = v60;
  v31 = *v61;
  v34[2] = *&v61[2];
  v35[0] = *&v61[4];
  *(v35 + 9) = *(&v61[5] + 1);
  v34[0] = v60;
  v34[1] = *v61;
  sub_2436714A8(&v30, &v38, &qword_27ED802A8, &qword_2436D28B0);
  sub_243671AC8(v34, &qword_27ED802A8, &qword_2436D28B0);
  *(&v29[1] + 7) = v31;
  *(&v29[2] + 7) = v32;
  *(&v29[3] + 7) = v33[0];
  v29[4] = *(v33 + 9);
  *(v29 + 7) = v30;
  v4 = v47[0];
  v5 = sub_2436CB548();
  sub_2436CAF88();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2436CB2F8();
  LOBYTE(v60) = 1;
  sub_2436BE51C(v36);
  *&v28[23] = v36[1];
  *&v28[39] = v36[2];
  *&v28[55] = v36[3];
  v28[71] = v37;
  *&v28[7] = v36[0];
  v15 = v60;
  v16 = sub_2436CB558();
  sub_2436CAF88();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v38 = v3;
  v39[0] = v4;
  *&v39[1] = v29[0];
  *&v39[17] = v29[1];
  *&v39[33] = v29[2];
  *&v39[49] = v29[3];
  *&v39[65] = v29[4];
  v39[88] = v5;
  *&v40 = v7;
  *(&v40 + 1) = v9;
  *&v41 = v11;
  *(&v41 + 1) = v13;
  v42 = 0;
  *__src = v3;
  *&__src[16] = *v39;
  __src[144] = 0;
  *&__src[112] = v40;
  *&__src[128] = v41;
  *&__src[80] = *&v39[64];
  *&__src[96] = *&v39[80];
  *&__src[48] = *&v39[32];
  *&__src[64] = *&v39[48];
  *&__src[32] = *&v39[16];
  v43[0] = v14;
  v43[1] = 0;
  LOBYTE(v44[0]) = v15;
  *(&v44[4] + 1) = *&v28[64];
  *(&v44[3] + 1) = *&v28[48];
  *(v44 + 1) = *v28;
  *(&v44[2] + 1) = *&v28[32];
  *(&v44[1] + 1) = *&v28[16];
  LOBYTE(v45) = v16;
  *(&v45 + 1) = v17;
  *v46 = v19;
  *&v46[8] = v21;
  *&v46[16] = v23;
  v46[24] = 0;
  *&__src[273] = *&v46[9];
  *&__src[264] = *v46;
  *&__src[152] = v14;
  *&__src[216] = v44[3];
  *&__src[200] = v44[2];
  *&__src[184] = v44[1];
  *&__src[168] = v44[0];
  *&__src[248] = v45;
  *&__src[232] = v44[4];
  memcpy(a3, __src, 0x121uLL);
  v50 = *&v28[16];
  v51 = *&v28[32];
  v52 = *&v28[48];
  v47[0] = v14;
  v47[1] = 0;
  v48 = v15;
  v53 = *&v28[64];
  v49 = *v28;
  v54 = v16;
  v55 = v18;
  v56 = v20;
  v57 = v22;
  v58 = v24;
  v59 = 0;
  sub_2436714A8(&v38, &v60, &qword_27ED802B0, &qword_2436D28B8);
  sub_2436714A8(v43, &v60, &qword_27ED802B8, &qword_2436D28C0);
  sub_243671AC8(v47, &qword_27ED802B8, &qword_2436D28C0);
  *(&v61[2] + 1) = v29[1];
  *(&v61[4] + 1) = v29[2];
  *(&v61[6] + 1) = v29[3];
  *(&v61[8] + 1) = v29[4];
  v60 = v3;
  LOBYTE(v61[0]) = v4;
  *(v61 + 1) = v29[0];
  v62 = v5;
  v63 = v7;
  v64 = v9;
  v65 = v11;
  v66 = v13;
  v67 = 0;
  return sub_243671AC8(&v60, &qword_27ED802B0, &qword_2436D28B8);
}

uint64_t sub_2436BE3E0@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(aH_6);
  swift_getKeyPath(aH_7);
  sub_2436CAED8();

  sub_2436C63B4(v11[0], v12, v13, v11, 17.0);
  v3 = v11[0];
  v4 = v11[1];
  v5 = v12;
  v6 = v13;
  v7 = v14;

  v8 = sub_2436CB488();
  KeyPath = swift_getKeyPath(byte_2436D2910);
  v16 = v7;
  v15 = 0;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 36) = v8;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  sub_2436BEB98(v3, v4, v5, v6);

  sub_2436BEBD4(v3, v4, v5, v6);
}

double sub_2436BE51C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436D28C8);
  swift_getKeyPath(byte_2436D28F0);
  sub_2436CAED8();

  sub_2436732AC();
  v3 = sub_2436CB698();
  v5 = v4;
  v7 = v6;
  sub_2436CB588();
  v8 = sub_2436CB658();
  v10 = v9;
  v12 = v11;

  sub_243679F68(v3, v5, v7 & 1);

  sub_2436CB978();
  v13 = sub_2436CB648();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_243679F68(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath(byte_2436D2910);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_24366C090(v13, v15, v17 & 1);

  sub_243679F68(v13, v15, v17 & 1);

  return result;
}

uint64_t sub_2436BE6F4()
{
  v1 = sub_2436CB508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80220, &qword_2436D2718);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = *(v0 + 8);
  *v7 = sub_2436CB2F8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80228, &qword_2436D2720);
  sub_2436BDA4C(v8, &v7[*(v9 + 44)]);
  sub_2436CB4F8();
  sub_243671838(&qword_27ED80230, &qword_27ED80220, &qword_2436D2718, MEMORY[0x277CE1138]);
  sub_2436CB7A8();
  (*(v2 + 8))(v4, v1);
  return sub_243671AC8(v7, &qword_27ED80220, &qword_2436D2718);
}

unint64_t sub_2436BE8C0()
{
  result = qword_27ED80240;
  if (!qword_27ED80240)
  {
    type metadata accessor for EMSFacePortalViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80240);
  }

  return result;
}

uint64_t sub_2436BE920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2436CB228();
  *a1 = result;
  return result;
}

unint64_t sub_2436BE984()
{
  result = qword_27ED80258;
  if (!qword_27ED80258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80250, &qword_2436D2870);
    sub_2436BEA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80258);
  }

  return result;
}

unint64_t sub_2436BEA10()
{
  result = qword_27ED80260;
  if (!qword_27ED80260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80268, &qword_2436D2878);
    sub_2436BEAC8();
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80260);
  }

  return result;
}

unint64_t sub_2436BEAC8()
{
  result = qword_27ED80270;
  if (!qword_27ED80270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80278, &qword_2436D2880);
    sub_243671838(&qword_27ED80280, &qword_27ED80288, &unk_2436D2888, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80270);
  }

  return result;
}

uint64_t sub_2436BEB98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_24366C090(a1, a2, a3 & 1);
}

double sub_2436BEBD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_243679F68(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_2436BEC10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80220, &qword_2436D2718);
  sub_243671838(&qword_27ED80230, &qword_27ED80220, &qword_2436D2718, MEMORY[0x277CE1138]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BECD4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_2436CB8C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D0, &qword_2436D2A48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  if (v1[8])
  {
    v12 = v1[6];
    v28 = v1[7];
    v26[2] = v12;
    v15 = v1 + 4;
    v13 = v1[4];
    v14 = v15[1];
    v33 = v8;
    v34 = v9;
    sub_2436732AC();

    v16 = sub_2436CB698();
    v30 = v17;
    v31 = v16;
    v27 = v18;
    v29 = v19;
    v33 = v11;
    v34 = v10;
    v26[1] = sub_2436CB698();
    v33 = v13;
    v34 = v14;
    v20 = sub_2436CB698();
    v22 = v21;
    v24 = v23;
    sub_2436CB8A8();
    sub_243679F68(v20, v22, v24 & 1);

    sub_2436CB8B8();
    return sub_2436CB898();
  }

  else
  {
    v33 = *v1;
    v34 = v9;
    sub_2436732AC();

    v31 = sub_2436CB698();
    v33 = v11;
    v34 = v10;
    sub_2436CB698();
    (*(v3 + 56))(v7, 1, 1, v2);
    return sub_2436CB888();
  }
}

uint64_t sub_2436BEFDC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D0, &qword_2436D2A48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D8, &qword_2436D2A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  swift_getKeyPath(byte_2436D2A58);
  swift_getKeyPath(byte_2436D2A80);
  sub_2436CAED8();

  v25 = v20;
  v24 = v19;
  v22 = v17;
  v23 = v18;
  v21 = v16;
  if (v20 == 255)
  {
    v12 = sub_2436CB8D8();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v8, 1, 1, v12);
    sub_2436CB308();
    sub_2436CB668();
    v14 = sub_2436CB8C8();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_2436CB888();
    result = (*(v13 + 48))(v8, 1, v12);
    if (result != 1)
    {
      return sub_243671AC8(v8, &qword_27ED802D8, &qword_2436D2A50);
    }
  }

  else
  {
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_2436BECD4(v8);
    sub_243671AC8(&v21, &unk_27ED7F770, &qword_2436D2370);
    v9 = sub_2436CB8D8();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v8, 0, 1, v9);
    return (*(v10 + 32))(a2, v8, v9);
  }

  return result;
}

uint64_t sub_2436BF36C()
{
  type metadata accessor for EMSAlertViewModel(0);
  sub_2436BF480();
  sub_2436CB0A8();
  swift_getKeyPath(asc_2436D2A18);
  sub_2436CB0B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802C0, &qword_2436D2A40);
  sub_2436BF4E8();
  sub_2436CB818();
}

unint64_t sub_2436BF480()
{
  result = qword_27ED7F0F0;
  if (!qword_27ED7F0F0)
  {
    type metadata accessor for EMSAlertViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0F0);
  }

  return result;
}

unint64_t sub_2436BF4E8()
{
  result = qword_27ED802C8;
  if (!qword_27ED802C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED802C0, &qword_2436D2A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED802C8);
  }

  return result;
}

uint64_t sub_2436BF554()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED802C0, &qword_2436D2A40);
  sub_2436BF4E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BF5B8()
{
  swift_getKeyPath(aH_8);
  swift_getKeyPath(aH_9);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436BF62C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436BF69C(v2, v3, v5);
  }

  return result;
}

char *sub_2436BF69C(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return sub_2436CAE68();
  }

  sub_2436CBD78();
  v5 = [*(v3 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_course) trustedUsers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
  v6 = sub_2436CBE08();

  v25 = MEMORY[0x277D84F90];
  v22 = v3;
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = 0;
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D3C2F0](v8, v6);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          return sub_2436CAE68();
        }

LABEL_12:
        v23 = v11;
        v12 = [objc_msgSend(v10 nameComponents];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        sub_2436CBD78();

        sub_2436732AC();
        v13 = sub_2436CBFA8();

        if (v13 & 1) != 0 || (v14 = [v10 appleID], sub_2436CBD38(), v14, sub_2436CBD78(), , LOBYTE(v14) = sub_2436CBFA8(), v9 = v6 & 0xFFFFFFFFFFFFFF8, , (v14))
        {
          sub_2436CC0C8();
          sub_2436CC0F8();
          sub_2436CC108();
          sub_2436CC0D8();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v8;
        if (v23 == v7)
        {
          goto LABEL_21;
        }
      }

      if (v8 < *(v9 + 16))
      {
        break;
      }

      __break(1u);
LABEL_20:
      v7 = sub_2436CC008();
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    v10 = *(v6 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_21:

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v15 = *(v25 + 16);
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_34:

    return sub_2436CAE68();
  }

  v15 = sub_2436CC008();
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_24:
  v24 = MEMORY[0x277D84F90];
  result = sub_2436C1A08(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x245D3C2F0](v17, v25);
      }

      else
      {
        v18 = *(v25 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2436C1A08((v19 > 1), v20 + 1, 1);
      }

      ++v17;
      *(v24 + 16) = v20 + 1;
      v21 = v24 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = 1;
    }

    while (v15 != v17);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436BFAC4()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider__query;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for EMSCourseStudentsResultProvider(uint64_t a1)
{
  result = qword_27ED80300;
  if (!qword_27ED80300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436BFBF0(uint64_t a1)
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2436BFCA4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(aH_8);
  swift_getKeyPath(aH_9);

  return sub_2436CAEE8();
}

uint64_t sub_2436BFD38@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aH_8);
  swift_getKeyPath(aH_9);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2436BFDBC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_8);
  swift_getKeyPath(aH_9);

  return sub_2436CAEE8();
}

uint64_t sub_2436BFE44(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80320, &unk_2436D2B40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider__query;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2436CAE98();
  (*(v9 + 32))(v2 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject;
  v16 = 0;
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  swift_allocObject();
  *(v2 + v13) = sub_2436CAE78();
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_cancellables) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_course) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_2436C0150();
  sub_2436CAF68();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v2;
}

uint64_t sub_2436C0110()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2436C0150()
{
  result = qword_27ED80330;
  if (!qword_27ED80330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80320, &unk_2436D2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80330);
  }

  return result;
}

uint64_t sub_2436C01B4()
{
  v1 = sub_2436CAD98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v9 = *(v0 + 40);
  }

  else
  {
    if (qword_27ED7DEF0 != -1)
    {
      swift_once();
    }

    (*(v6 + 16))(v8, qword_27ED83B60 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings11DoneStrings_buttonTitle, v5);
    v10 = sub_2436CBD58();
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();

    sub_2436CAD88();
    v14 = v0;
    v15 = sub_2436CAD58();
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    type metadata accessor for CRKUIButtonViewModel(0);
    v9 = swift_allocObject();
    v22 = 0;
    sub_2436CAE98();
    *(v9 + 16) = v15;
    *(v9 + 24) = v17;
    swift_beginAccess();
    v20[0] = v10;
    v20[1] = v12;
    v21 = 0;
    sub_2436CAE98();
    swift_endAccess();
    v18 = (v9 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
    *v18 = sub_2436C05B4;
    v18[1] = v13;

    *(v14 + 40) = v9;
  }

  return v9;
}

uint64_t sub_2436C0490(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_unownedRetainStrong();

    sub_243683B98();
  }

  return result;
}

uint64_t sub_2436C0510()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2436C057C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_2436C05BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      sub_2436744F8(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_0(v7, v8);
      (*(v5 + 32))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v7);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
      sub_24368B2B8();
      sub_2436CAF68();

      swift_beginAccess();
      sub_2436CAE08();
      swift_endAccess();

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

double sub_2436C0730(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2436C07B4();
    sub_2436CAE48();
  }

  return result;
}

void sub_2436C07B4()
{
  v1 = v0[5];
  v2 = v0[4] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    return;
  }

  v3 = v0[2];
  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v3 + 32;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2436744F8(v5, v20);
    v9 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v20);
    sub_2436CAE58();

    if (!v18)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_32;
      }

      goto LABEL_7;
    }

    v11 = *(v18 + 16);
    v12 = *(v7 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= *(v7 + 3) >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v17 = v12 + v11;
      }

      else
      {
        v17 = v12;
      }

      v7 = sub_2436C1394(isUniquelyReferenced_nonNull_native, v17, 1, v7);
      if (!*(v18 + 16))
      {
LABEL_21:

        if (v11)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }
    }

    if ((*(v7 + 3) >> 1) - *(v7 + 2) < v11)
    {
      goto LABEL_31;
    }

    swift_arrayInitWithCopy();

    if (v11)
    {
      v15 = *(v7 + 2);
      v8 = __OFADD__(v15, v11);
      v16 = v15 + v11;
      if (v8)
      {
        goto LABEL_33;
      }

      *(v7 + 2) = v16;
    }

LABEL_22:
    if (v19)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        __break(1u);
LABEL_26:

        return;
      }
    }

LABEL_7:
    v5 += 40;
    if (!--v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

double sub_2436C09B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = a1;
  v2[5] = a2;

  v5 = v2[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_2436744F8(v7, v13);
      v8 = v3[4];
      v9 = v3[5];
      v10 = v14;
      v11 = v15;
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      v12 = *(v11 + 16);

      v12(v8, v9, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_2436C0A94(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = v3 + 32;

    do
    {
      sub_2436744F8(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_0(v11, v12);
      (*(v9 + 40))(a1, a2 & 1, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v11);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2436C0B50()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2436C0C1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436C0C5C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C41F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2436C2228(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436C0CD8(void *a1)
{
  v2 = v1;
  *(v1 + 56) = xmmword_2436D2BE0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  swift_allocObject();
  *(v1 + 88) = sub_2436CAE78();
  sub_2436744F8(a1, v1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  (*(v5 + 8))(v4, v5);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0, MEMORY[0x277CBCD90]);
  v6 = sub_2436CAF68();

  *(v2 + 56) = v6;

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2436C0E6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 64);
    *(result + 64) = v2;
    sub_243688800(v2, v4);
    v7 = sub_2436887F0(v5, v6);
    sub_2436C0EE8(v9, v7, v8);
  }

  return result;
}

char *sub_2436C0EE8(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = v3[10];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return sub_2436CAE68();
  }

  v7 = v3[8];
  if (v7 == 1)
  {
    return sub_2436CAE68();
  }

  sub_243688800(v3[8], a3);

  v9 = sub_2436C4204(v7, v4, v5);

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_18:

    sub_2436CAE68();
    return sub_2436887F0(v7, v16);
  }

  v10 = sub_2436CC008();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = MEMORY[0x277D84F90];
  result = sub_2436C1A08(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x245D3C2F0](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2436C1A08((v13 > 1), v14 + 1, 1);
      }

      ++v11;
      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = 0;
    }

    while (v10 != v11);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436C10C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_2436887F0(*(v0 + 64), v1);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *sub_2436C1144(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return sub_2436C0EE8(v6, v4, v5);
}

char *sub_2436C1184(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803A8, &unk_2436D2CB8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2436C1290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80368, &unk_2436D2C70);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2436C1394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80340, &unk_2436D2C50);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2436C14A0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2436C1690(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80398, qword_2436D2C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2436C17AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2436C18BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_2436C1944(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2436C19C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C1A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C19E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C1BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C1A08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C1CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2436C1A28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C1DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2436C1A48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C1FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C1A68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2436C211C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2436C1A88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C0, &qword_2436D2CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C8, &qword_2436D2CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C1BD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80398, qword_2436D2C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2436C1CEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80340, &unk_2436D2C50);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2436C1DF8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2436C1FE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80378, &unk_2436D2C88);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C211C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_2436C2228(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2436CC2A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2436C266C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2436C2338(0, v2, 1, a1);
  }
}

void sub_2436C2338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v38 - v9;
  v39 = a2;
  if (a3 != a2)
  {
    v49 = *a4;
    v10 = v49 + 8 * a3 - 8;
    v11 = a1 - a3;
LABEL_5:
    v41 = v10;
    v42 = a3;
    v12 = *(v49 + 8 * a3);
    v40 = v11;
    while (1)
    {
      v13 = *v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = [v12 name];
      v15 = sub_2436CBD38();
      v17 = v16;

      v18 = [v13 name];
      v19 = sub_2436CBD38();
      v21 = v20;

      v47 = v15;
      v48 = v17;
      v45 = v19;
      v46 = v21;
      sub_2436732AC();
      v22 = sub_2436CBF58();

      if (v22)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v22 != -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = [v12 identifier];
        v44 = v13;
        v24 = [v23 stringValue];

        v25 = sub_2436CBD38();
        v27 = v26;

        v28 = [v13 identifier];
        v29 = [v28 stringValue];

        v30 = sub_2436CBD38();
        v32 = v31;

        v47 = v25;
        v48 = v27;
        v45 = v30;
        v46 = v32;
        v33 = sub_2436CADB8();
        v34 = v43;
        (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
        v35 = sub_2436CBF98();
        sub_2436C45C0(v34);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v35 != -1)
        {
          goto LABEL_4;
        }
      }

      if (!v49)
      {
        break;
      }

      v36 = *v10;
      v12 = *(v10 + 8);
      *v10 = v12;
      *(v10 + 8) = v36;
      v10 -= 8;
      if (__CFADD__(v11++, 1))
      {
LABEL_4:
        a3 = v42 + 1;
        v10 = v41 + 8;
        v11 = v40 - 1;
        if (v42 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2436C266C(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v154 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v150 - v9;
  v10 = a3[1];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v156 = a3;
    v153 = a4;
    while (1)
    {
      v13 = v11 + 1;
      v157 = v12;
      if (v11 + 1 < v10)
      {
        v159 = v10;
        v151 = v5;
        v152 = v11;
        v14 = *(*a3 + 8 * v13);
        v160 = *a3;
        v15 = *(v160 + 8 * v11);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v16 = [v14 name];
        v17 = sub_2436CBD38();
        v19 = v18;

        v20 = [v15 name];
        v21 = sub_2436CBD38();
        v23 = v22;

        v166 = v17;
        v167 = v19;
        v164 = v21;
        v165 = v23;
        v162 = sub_2436732AC();
        v24 = sub_2436CBF58();

        v163 = v24;
        if (v24)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = [v14 identifier];
          v26 = [v25 stringValue];

          v27 = sub_2436CBD38();
          v29 = v28;

          v30 = [v15 identifier];
          v31 = [v30 stringValue];

          v32 = sub_2436CBD38();
          v34 = v33;

          v166 = v27;
          v167 = v29;
          v164 = v32;
          v165 = v34;
          v35 = sub_2436CADB8();
          v36 = v161;
          (*(*(v35 - 8) + 56))(v161, 1, 1, v35);
          v163 = sub_2436CBF98();
          sub_2436C45C0(v36);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v11 = v152;
        v13 = v152 + 2;
        v12 = v157;
        if (v152 + 2 >= v159)
        {
          v5 = v151;
          a4 = v153;
        }

        else
        {
          v37 = (v160 + 8 * v152 + 16);
          do
          {
            v160 = v13;
            v52 = *(v37 - 1);
            v51 = *v37;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v53 = [v51 name];
            v54 = sub_2436CBD38();
            v56 = v55;

            v57 = [v52 name];
            v58 = sub_2436CBD38();
            v60 = v59;

            v166 = v54;
            v167 = v56;
            v164 = v58;
            v165 = v60;
            v61 = sub_2436CBF58();

            if (v61)
            {
              v62 = v163 == -1;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              a3 = v156;
              v12 = v157;
              if (v62 == (v61 != -1))
              {
LABEL_14:
                v5 = v151;
                a4 = v153;
                v13 = v160;
                goto LABEL_17;
              }
            }

            else
            {
              LODWORD(v158) = v163 == -1;
              v38 = [v51 identifier];
              v39 = [v38 stringValue];

              v40 = sub_2436CBD38();
              v42 = v41;

              v43 = [v52 identifier];
              v44 = [v43 stringValue];

              v45 = sub_2436CBD38();
              v47 = v46;

              v166 = v40;
              v167 = v42;
              v164 = v45;
              v165 = v47;
              v48 = sub_2436CADB8();
              v49 = v161;
              (*(*(v48 - 8) + 56))(v161, 1, 1, v48);
              v50 = sub_2436CBF98();
              sub_2436C45C0(v49);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              a3 = v156;
              v12 = v157;
              if (((v158 ^ (v50 != -1)) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v13 = v160 + 1;
            ++v37;
          }

          while (v159 != v160 + 1);
          v13 = v159;
          v5 = v151;
          a4 = v153;
LABEL_17:
          v11 = v152;
        }

        if (v163 == -1)
        {
          if (v13 < v11)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            return;
          }

          if (v11 < v13)
          {
            v63 = 8 * v13 - 8;
            v64 = 8 * v11;
            v65 = v13;
            v66 = v11;
            do
            {
              if (v66 != --v65)
              {
                v68 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v67 = *(v68 + v64);
                *(v68 + v64) = *(v68 + v63);
                *(v68 + v63) = v67;
              }

              ++v66;
              v63 -= 8;
              v64 += 8;
            }

            while (v66 < v65);
          }
        }
      }

      v69 = a3[1];
      if (v13 < v69)
      {
        if (__OFSUB__(v13, v11))
        {
          goto LABEL_127;
        }

        if (v13 - v11 < a4)
        {
          v70 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_128;
          }

          if (v70 >= v69)
          {
            v70 = a3[1];
          }

          if (v70 < v11)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (v13 != v70)
          {
            v151 = v5;
            v152 = v11;
            v163 = *a3;
            v71 = v163 + 8 * v13 - 8;
            v72 = v11 - v13;
            v155 = v70;
            do
            {
              v159 = v71;
              v160 = v13;
              v73 = *(v163 + 8 * v13);
              v158 = v72;
              do
              {
                v74 = *v71;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v75 = [v73 name];
                v76 = sub_2436CBD38();
                v78 = v77;

                v79 = v74;
                v80 = [v74 name];
                v81 = sub_2436CBD38();
                v83 = v82;

                v166 = v76;
                v167 = v78;
                v164 = v81;
                v165 = v83;
                sub_2436732AC();
                v84 = sub_2436CBF58();

                if (v84)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  if (v84 != -1)
                  {
                    break;
                  }
                }

                else
                {
                  v85 = [v73 identifier];
                  v86 = [v85 stringValue];

                  v87 = sub_2436CBD38();
                  v89 = v88;

                  v162 = v79;
                  v90 = [v79 identifier];
                  v91 = [v90 stringValue];

                  v92 = sub_2436CBD38();
                  v94 = v93;

                  v166 = v87;
                  v167 = v89;
                  v164 = v92;
                  v165 = v94;
                  v95 = sub_2436CADB8();
                  v96 = v161;
                  (*(*(v95 - 8) + 56))(v161, 1, 1, v95);
                  v97 = sub_2436CBF98();
                  sub_2436C45C0(v96);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (v97 != -1)
                  {
                    break;
                  }
                }

                if (!v163)
                {
                  goto LABEL_132;
                }

                v98 = *v71;
                v73 = *(v71 + 8);
                *v71 = v73;
                *(v71 + 8) = v98;
                v71 -= 8;
              }

              while (!__CFADD__(v72++, 1));
              v13 = v160 + 1;
              v71 = v159 + 8;
              v72 = v158 - 1;
            }

            while (v160 + 1 != v155);
            v13 = v155;
            v5 = v151;
            v11 = v152;
            a3 = v156;
            v12 = v157;
          }
        }
      }

      if (v13 < v11)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2436C1290(0, *(v12 + 2) + 1, 1, v12);
      }

      v101 = *(v12 + 2);
      v100 = *(v12 + 3);
      v102 = v101 + 1;
      if (v101 >= v100 >> 1)
      {
        v12 = sub_2436C1290((v100 > 1), v101 + 1, 1, v12);
      }

      *(v12 + 2) = v102;
      v103 = &v12[16 * v101];
      *(v103 + 4) = v11;
      *(v103 + 5) = v13;
      v104 = *v154;
      if (!*v154)
      {
        goto LABEL_136;
      }

      v11 = v13;
      if (v101)
      {
        while (1)
        {
          v13 = v102 - 1;
          if (v102 >= 4)
          {
            break;
          }

          if (v102 == 3)
          {
            v105 = *(v12 + 4);
            v106 = *(v12 + 5);
            v115 = __OFSUB__(v106, v105);
            v107 = v106 - v105;
            v108 = v115;
LABEL_67:
            if (v108)
            {
              goto LABEL_115;
            }

            v121 = &v12[16 * v102];
            v123 = *v121;
            v122 = *(v121 + 1);
            v124 = __OFSUB__(v122, v123);
            v125 = v122 - v123;
            v126 = v124;
            if (v124)
            {
              goto LABEL_118;
            }

            v127 = &v12[16 * v13 + 32];
            v129 = *v127;
            v128 = *(v127 + 1);
            v115 = __OFSUB__(v128, v129);
            v130 = v128 - v129;
            if (v115)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v125, v130))
            {
              goto LABEL_122;
            }

            if (v125 + v130 >= v107)
            {
              if (v107 < v130)
              {
                v13 = v102 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v131 = &v12[16 * v102];
          v133 = *v131;
          v132 = *(v131 + 1);
          v115 = __OFSUB__(v132, v133);
          v125 = v132 - v133;
          v126 = v115;
LABEL_81:
          if (v126)
          {
            goto LABEL_117;
          }

          v134 = &v12[16 * v13];
          v136 = *(v134 + 4);
          v135 = *(v134 + 5);
          v115 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v115)
          {
            goto LABEL_120;
          }

          if (v137 < v125)
          {
            goto LABEL_3;
          }

LABEL_88:
          v142 = v13 - 1;
          if (v13 - 1 >= v102)
          {
            __break(1u);
LABEL_111:
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
            goto LABEL_129;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v143 = *&v12[16 * v142 + 32];
          v144 = *&v12[16 * v13 + 40];
          sub_2436C3304((*a3 + 8 * v143), (*a3 + 8 * *&v12[16 * v13 + 32]), (*a3 + 8 * v144), v104);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v144 < v143)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_2436C3A7C(v12);
          }

          if (v142 >= *(v12 + 2))
          {
            goto LABEL_112;
          }

          v145 = &v12[16 * v142];
          *(v145 + 4) = v143;
          *(v145 + 5) = v144;
          v168 = v12;
          sub_2436C39F0(v13);
          v12 = v168;
          v102 = *(v168 + 2);
          if (v102 <= 1)
          {
            goto LABEL_3;
          }
        }

        v109 = &v12[16 * v102 + 32];
        v110 = *(v109 - 64);
        v111 = *(v109 - 56);
        v115 = __OFSUB__(v111, v110);
        v112 = v111 - v110;
        if (v115)
        {
          goto LABEL_113;
        }

        v114 = *(v109 - 48);
        v113 = *(v109 - 40);
        v115 = __OFSUB__(v113, v114);
        v107 = v113 - v114;
        v108 = v115;
        if (v115)
        {
          goto LABEL_114;
        }

        v116 = &v12[16 * v102];
        v118 = *v116;
        v117 = *(v116 + 1);
        v115 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v115)
        {
          goto LABEL_116;
        }

        v115 = __OFADD__(v107, v119);
        v120 = v107 + v119;
        if (v115)
        {
          goto LABEL_119;
        }

        if (v120 >= v112)
        {
          v138 = &v12[16 * v13 + 32];
          v140 = *v138;
          v139 = *(v138 + 1);
          v115 = __OFSUB__(v139, v140);
          v141 = v139 - v140;
          if (v115)
          {
            goto LABEL_123;
          }

          if (v107 < v141)
          {
            v13 = v102 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v10 = a3[1];
      a4 = v153;
      if (v11 >= v10)
      {
        goto LABEL_98;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_98:
  v13 = *v154;
  if (!*v154)
  {
    goto LABEL_137;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_130:
    v12 = sub_2436C3A7C(v12);
  }

  v146 = v5;
  v168 = v12;
  v147 = *(v12 + 2);
  if (v147 >= 2)
  {
    while (*a3)
    {
      v148 = *&v12[16 * v147];
      v5 = *&v12[16 * v147 + 24];
      sub_2436C3304((*a3 + 8 * v148), (*a3 + 8 * *&v12[16 * v147 + 16]), (*a3 + 8 * v5), v13);
      if (v146)
      {
        goto LABEL_108;
      }

      if (v5 < v148)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2436C3A7C(v12);
      }

      if (v147 - 2 >= *(v12 + 2))
      {
        goto LABEL_125;
      }

      v149 = &v12[16 * v147];
      *v149 = v148;
      *(v149 + 1) = v5;
      v168 = v12;
      sub_2436C39F0(v147 - 1);
      v12 = v168;
      v147 = *(v168 + 2);
      if (v147 <= 1)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_134;
  }

LABEL_108:
}

uint64_t sub_2436C3304(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v68 - v9;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 >= v12 >> 3)
  {
    v68 = a1;
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
    }

    v79 = &a4[v13];
    if (a3 - a2 >= 8 && a2 > v68)
    {
      v74 = a4;
LABEL_28:
      v73 = a2;
      v41 = a2 - 1;
      a3 -= 8;
      v42 = v79;
      v71 = a2 - 1;
      do
      {
        v43 = *(v42 - 8);
        v72 = (v42 - 8);
        v44 = *v41;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v45 = [v43 name];
        v46 = sub_2436CBD38();
        v48 = v47;

        v49 = [v44 name];
        v50 = sub_2436CBD38();
        v52 = v51;

        v77 = v46;
        v78 = v48;
        v75 = v50;
        v76 = v52;
        sub_2436732AC();
        v53 = sub_2436CBF58();

        if (v53)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = [v43 identifier];
          v55 = [v54 stringValue];

          v69 = sub_2436CBD38();
          v57 = v56;

          v58 = [v44 identifier];
          v59 = [v58 stringValue];

          v60 = sub_2436CBD38();
          v62 = v61;

          v77 = v69;
          v78 = v57;
          v75 = v60;
          v76 = v62;
          v63 = sub_2436CADB8();
          v64 = v70;
          (*(*(v63 - 8) + 56))(v70, 1, 1, v63);
          v53 = sub_2436CBF98();
          sub_2436C45C0(v64);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v65 = a3 + 8;
        if (v53 == -1)
        {
          a4 = v74;
          v66 = v71;
          if (v65 != v73)
          {
            *a3 = *v71;
          }

          if (v79 <= a4 || (a2 = v66, v66 <= v68))
          {
            a2 = v66;
            goto LABEL_44;
          }

          goto LABEL_28;
        }

        a4 = v74;
        v42 = v72;
        if (v65 != v79)
        {
          *a3 = *v72;
        }

        a3 -= 8;
        v79 = v42;
        v41 = v71;
      }

      while (v42 > a4);
      v79 = v42;
      a2 = v73;
    }
  }

  else
  {
    v72 = a3;
    if (a4 != a1 || &a1[v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v14 = a1;
    v79 = &a4[v11];
    if (a2 - a1 >= 8 && a2 < v72)
    {
      v15 = MEMORY[0x277D837D0];
      while (1)
      {
        v73 = a2;
        v74 = a4;
        v16 = *a2;
        v17 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 name];
        v19 = v15;
        v20 = sub_2436CBD38();
        v22 = v21;

        v23 = [v17 name];
        v24 = sub_2436CBD38();
        v26 = v25;

        v77 = v20;
        v78 = v22;
        v15 = v19;
        v75 = v24;
        v76 = v26;
        sub_2436732AC();
        v27 = sub_2436CBF58();

        if (v27)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v27 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v29 = [v16 identifier];
          v30 = [v29 stringValue];

          v71 = sub_2436CBD38();
          v32 = v31;

          v33 = [v17 identifier];
          v34 = [v33 stringValue];

          v35 = sub_2436CBD38();
          v37 = v36;

          v77 = v71;
          v78 = v32;
          v75 = v35;
          v76 = v37;
          v38 = sub_2436CADB8();
          v39 = v70;
          (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
          v40 = sub_2436CBF98();
          sub_2436C45C0(v39);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v15 = v19;

          if (v40 != -1)
          {
LABEL_14:
            v28 = v74;
            a4 = v74 + 1;
            if (v14 == v74)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v14 = *v28;
            goto LABEL_16;
          }
        }

        a4 = v74;
        v28 = v73++;
        if (v14 != v28)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v14;
        if (a4 < v79)
        {
          a2 = v73;
          if (v73 < v72)
          {
            continue;
          }
        }

        break;
      }
    }

    a2 = v14;
  }

LABEL_44:
  if (a2 != a4 || a2 >= (a4 + ((v79 - a4 + (v79 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v79 - a4));
  }

  return 1;
}

uint64_t sub_2436C39F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2436C3A7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2436C3AC0(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_2436CC008();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_2436C18BC(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2436C3B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&qword_27ED803B8, &qword_27ED803B0, &qword_2436CE510, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803B0, &qword_2436CE510);
            v9 = sub_2436C40E8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EMSCourseTileViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2436C3D00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&qword_27ED80358, &qword_27ED80350, &unk_2436D2C60, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80350, &unk_2436D2C60);
            v9 = sub_2436C4060(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2436C3EB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&unk_27ED7F600, &qword_27ED7F5F8, &qword_2436D2CB0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F8, &qword_2436D2CB0);
            v9 = sub_2436C4170(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2436C4060(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D3C2F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_2436C40E0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2436C40E8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D3C2F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2436C4168;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2436C4170(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D3C2F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_2436C4668;
  }

  __break(1u);
  return result;
}

void *sub_2436C4204(id a1, unint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = v27 - v7;
  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    v9 = [swift_unknownObjectRetain() courses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
    v10 = sub_2436CBE08();

    v35 = v8;
    if (v10 >> 62)
    {
      goto LABEL_26;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      while (1)
      {
        v12 = 0;
        v29 = v10 & 0xFFFFFFFFFFFFFF8;
        v30 = v10 & 0xC000000000000001;
        v13 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v13 = a2;
        }

        v14 = 7;
        if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
        {
          v14 = 11;
        }

        v27[1] = a1;
        v27[2] = v14 | (v13 << 16);
        while (v30)
        {
          v15 = MEMORY[0x245D3C2F0](v12, v10);
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_14:
          v17 = v11;
          a1 = [v15 name];
          v18 = sub_2436CBD38();
          v20 = v19;

          if (sub_2436CBD98() == 1 && (a1 = sub_2436CBD98(), sub_2436CBD98() >= a1))
          {
            v33 = v18;
            v34 = v20;
            v31 = a2;
            v32 = a3;
            a1 = v28;
            sub_2436CADA8();
            v22 = sub_2436CADB8();
            (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
            sub_2436732AC();
            sub_2436CBF88();
            v24 = v23;
            sub_2436C45C0(a1);

            if ((v24 & 1) == 0)
            {
LABEL_19:
              sub_2436CC0C8();
              a1 = *(v35 + 16);
              sub_2436CC0F8();
              sub_2436CC108();
              sub_2436CC0D8();
              goto LABEL_10;
            }
          }

          else
          {
            v33 = v18;
            v34 = v20;
            v31 = a2;
            v32 = a3;
            sub_2436732AC();
            v21 = sub_2436CBF78();

            if (v21)
            {
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
LABEL_10:
          v11 = v17;
          ++v12;
          if (v16 == v17)
          {
            goto LABEL_23;
          }
        }

        if (v12 < *(v29 + 16))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v11 = sub_2436CC008();
        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v15 = *(v10 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_23:

    v33 = sub_2436C3AC0(v25, sub_2436C3D00);
    sub_2436C0C5C(&v33);

    swift_unknownObjectRelease();
    return v33;
  }

  return v8;
}

uint64_t sub_2436C45C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2436C4628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436C4674@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D2CD8);
  swift_getKeyPath(aP_8);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2436C46F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath(byte_2436D2CD8, a2, a3);
  swift_getKeyPath(aP_8);

  sub_2436CAEE8();
  return sub_243689750();
}

uint64_t sub_2436C4784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803D0, &qword_2436D2D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED803D8, &qword_2436D2D28);
  v8 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v10 = v14 - v9;
  v14[1] = (*(a2 + 8))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0, MEMORY[0x277CBCD90]);
  sub_2436CAF38();

  sub_243671838(&qword_27ED803E8, &qword_27ED803D0, &qword_2436D2D20, MEMORY[0x277CBCC08]);
  sub_2436C4AE8();
  sub_2436CAF58();
  (*(v5 + 8))(v7, v4);
  sub_243671838(&qword_27ED803F8, &unk_27ED803D8, &qword_2436D2D28, MEMORY[0x277CBCBE0]);
  v11 = v14[0];
  v12 = sub_2436CAF08();
  (*(v8 + 8))(v10, v11);
  return v12;
}

void sub_2436C4A58(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (v2 > 1)
  {
    v4 = [objc_msgSend(v2 organization)];
    swift_unknownObjectRelease();
    v5 = sub_2436CBD38();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t sub_2436C4AE8()
{
  result = qword_27ED803F0;
  if (!qword_27ED803F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80380, &qword_2436CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED803F0);
  }

  return result;
}

double sub_2436C4B90@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_2436CB2F8();
  v33 = 0;
  sub_2436C4DA4(&v17);
  v46 = v29;
  v47 = v30;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v49[12] = v29;
  v49[13] = v30;
  v49[8] = v25;
  v49[9] = v26;
  v49[11] = v28;
  v49[10] = v27;
  v49[4] = v21;
  v49[5] = v22;
  v49[7] = v24;
  v49[6] = v23;
  v49[0] = v17;
  v49[1] = v18;
  v48 = v31;
  v50 = v31;
  v49[2] = v19;
  v49[3] = v20;
  sub_2436714A8(&v34, &v16, &qword_27ED80400, &qword_2436D2DC0);
  sub_243671AC8(v49, &qword_27ED80400, &qword_2436D2DC0);
  *&v32[183] = v45;
  *&v32[199] = v46;
  *&v32[215] = v47;
  *&v32[119] = v41;
  *&v32[135] = v42;
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[55] = v37;
  *&v32[71] = v38;
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[7] = v34;
  *&v32[23] = v35;
  v32[231] = v48;
  *&v32[39] = v36;
  v5 = v33;
  v6 = sub_2436CB948();
  KeyPath = swift_getKeyPath(a8_4);
  v8 = *&v32[160];
  *(a3 + 193) = *&v32[176];
  v9 = *&v32[208];
  *(a3 + 209) = *&v32[192];
  *(a3 + 225) = v9;
  v10 = *&v32[96];
  *(a3 + 129) = *&v32[112];
  v11 = *&v32[144];
  *(a3 + 145) = *&v32[128];
  *(a3 + 161) = v11;
  *(a3 + 177) = v8;
  v12 = *&v32[32];
  *(a3 + 65) = *&v32[48];
  v13 = *&v32[80];
  *(a3 + 81) = *&v32[64];
  *(a3 + 97) = v13;
  *(a3 + 113) = v10;
  result = *v32;
  v15 = *&v32[16];
  *(a3 + 17) = *v32;
  *(a3 + 33) = v15;
  *a3 = v4;
  *(a3 + 8) = 0x4034000000000000;
  *(a3 + 16) = v5;
  *(a3 + 241) = *&v32[224];
  *(a3 + 49) = v12;
  *(a3 + 256) = KeyPath;
  *(a3 + 264) = v6;
  return result;
}

uint64_t sub_2436C4DA4@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_2436CBB48();
  v50 = v8;
  v51 = v7;
  sub_2436C52C8(&v87);
  v58 = v89;
  v59 = v90;
  v60 = v91;
  v56 = v87;
  v57 = v88;
  v61[2] = v89;
  v61[3] = v90;
  v62 = v91;
  v61[0] = v87;
  v61[1] = v88;
  sub_2436714A8(&v56, v69, &qword_27ED80408, &qword_2436D2E00);
  sub_243671AC8(v61, &qword_27ED80408, &qword_2436D2E00);
  v65 = v58;
  v66 = v59;
  v67 = v60;
  v63 = v56;
  v64 = v57;
  swift_getKeyPath(byte_2436D2E08);
  swift_getKeyPath(byte_2436D2E30);
  sub_2436CAED8();

  sub_2436732AC();
  v9 = sub_2436CB698();
  v11 = v10;
  v13 = v12;
  v14 = sub_2436CB5A8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_2436CB5C8();
  sub_243671AC8(v6, &qword_27ED7F790, &qword_2436D2640);
  v15 = sub_2436CB658();
  v17 = v16;
  LOBYTE(v6) = v18;
  KeyPath = v19;

  sub_243679F68(v9, v11, v13 & 1);

  sub_2436CB968();
  v20 = sub_2436CB648();
  v46 = v21;
  v47 = v20;
  v49 = v22;
  v24 = v23;

  sub_243679F68(v15, v17, v6 & 1);

  KeyPath = swift_getKeyPath(byte_2436D2E50);
  v25 = sub_2436CB9B8();
  v26 = [objc_opt_self() lightGrayColor];
  v27 = sub_2436CB8E8();
  v28 = swift_getKeyPath(a8_4);
  LOBYTE(v15) = sub_2436CB578();
  sub_2436CAF88();
  LOBYTE(v87) = 0;
  *&v69[0] = v51;
  *(&v69[0] + 1) = v50;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  *&v74 = v25;
  v69[1] = v63;
  v70 = v64;
  v24 &= 1u;
  v55 = v24;
  v54 = 0;
  v53 = 1;
  v29 = v25;
  *(&v74 + 1) = v28;
  *&v75 = v27;
  BYTE8(v75) = v15;
  HIDWORD(v75) = *&v68[3];
  *(&v75 + 9) = *v68;
  *&v76 = v30;
  *(&v76 + 1) = v31;
  *&v77 = v32;
  *(&v77 + 1) = v33;
  v78 = 0;
  *&v52[7] = v74;
  v52[71] = 0;
  *&v52[55] = v77;
  *&v52[39] = v76;
  *&v52[23] = v75;
  v34 = v63;
  *a3 = v69[0];
  *(a3 + 16) = v34;
  v35 = v70;
  v36 = v72;
  v37 = v73;
  *(a3 + 48) = v71;
  *(a3 + 64) = v36;
  *(a3 + 32) = v35;
  v38 = v46;
  v39 = v47;
  *(a3 + 80) = v37;
  *(a3 + 88) = v39;
  v41 = KeyPath;
  v40 = v49;
  *(a3 + 96) = v49;
  *(a3 + 104) = v24;
  *(a3 + 112) = v38;
  *(a3 + 120) = v41;
  *(a3 + 128) = 1;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v42 = *&v52[16];
  *(a3 + 153) = *v52;
  v43 = *&v52[32];
  v44 = *&v52[48];
  *(a3 + 217) = *&v52[64];
  *(a3 + 201) = v44;
  *(a3 + 185) = v43;
  *(a3 + 169) = v42;
  v79[0] = v29;
  v79[1] = v28;
  v79[2] = v27;
  v80 = v15;
  *&v81[3] = *&v68[3];
  *v81 = *v68;
  v82 = v30;
  v83 = v31;
  v84 = v32;
  v85 = v33;
  v86 = 0;
  sub_2436714A8(v69, &v87, &qword_27ED80410, &qword_2436D2E80);
  sub_24366C090(v39, v40, v24);

  sub_2436714A8(&v74, &v87, &qword_27ED80418, &qword_2436D2E88);
  sub_243671AC8(v79, &qword_27ED80418, &qword_2436D2E88);
  sub_243679F68(v39, v40, v24);

  *&v87 = v51;
  *(&v87 + 1) = v50;
  v90 = v65;
  v91 = v66;
  v92 = v67;
  v88 = v63;
  v89 = v64;
  return sub_243671AC8(&v87, &qword_27ED80410, &qword_2436D2E80);
}

uint64_t sub_2436C52C8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436D2E90);
  swift_getKeyPath(aP_9);
  sub_2436CAED8();

  sub_243689174(v13);
  v3 = sub_2436CB8E8();
  sub_2436CBB48();
  sub_2436CB068();
  *&v8[6] = v9;
  *&v8[22] = v10;
  *&v8[38] = v11;
  swift_getKeyPath(aX_6);
  swift_getKeyPath(a8_5);
  sub_2436CAED8();

  v4 = sub_24368CCEC(v13);
  *v12 = v3;
  *&v12[8] = 256;
  *&v12[10] = *v8;
  *&v12[26] = *&v8[16];
  *&v12[42] = *&v8[32];
  *&v12[56] = *(&v11 + 1);
  v5 = *&v12[16];
  *a2 = *v12;
  *(a2 + 16) = v5;
  v6 = *&v12[48];
  *(a2 + 32) = *&v12[32];
  *(a2 + 48) = v6;
  *(a2 + 64) = v4;
  sub_2436714A8(v12, &v13, &qword_27ED80420, &qword_2436D2F20);
  v13 = v3;
  v14 = 256;
  v15 = *v8;
  v16 = *&v8[16];
  *v17 = *&v8[32];
  *&v17[14] = *(&v11 + 1);
  return sub_243671AC8(&v13, &qword_27ED80420, &qword_2436D2F20);
}

unint64_t sub_2436C54B4()
{
  result = qword_27ED80428;
  if (!qword_27ED80428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80430, &qword_2436D2F28);
    sub_243671838(&qword_27ED80438, &qword_27ED80440, &qword_2436D2F30, MEMORY[0x277CE1138]);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80428);
  }

  return result;
}

uint64_t sub_2436C5598()
{
  swift_getKeyPath(byte_2436D2F80);
  swift_getKeyPath(byte_2436D2FA8);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C5610()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for EMSSearcher(uint64_t a1)
{
  result = qword_27ED80458;
  if (!qword_27ED80458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C5730(uint64_t a1)
{
  sub_2436C57D4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2436C57D4()
{
  if (!qword_27ED80468)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED80468);
    }
  }
}

uint64_t sub_2436C5824@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436D2F80);
  swift_getKeyPath(byte_2436D2FA8);
  sub_2436CAED8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2436C58B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D2F80);
  swift_getKeyPath(byte_2436D2FA8);

  return sub_2436CAEE8();
}

uint64_t sub_2436C5940(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C0, &qword_2436D2CC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CF4C0;
  sub_2436744F8(a1, &v18);
  v3 = type metadata accessor for EMSCourseResultProvider();
  swift_allocObject();
  v4 = sub_2436C0CD8(&v18);
  *(inited + 56) = v3;
  *(inited + 64) = &off_285676E68;
  *(inited + 32) = v4;
  sub_2436744F8(a1, &v18);
  v5 = type metadata accessor for EMSStudentResultProvider();
  swift_allocObject();
  *(inited + 72) = sub_243684204(&v18, 100, 25);
  *(inited + 96) = v5;
  *(inited + 104) = &off_285675BA0;
  v17 = MEMORY[0x277D84F90];
  sub_2436C19C8(0, 2, 0);
  v6 = v17;
  sub_2436744F8(inited + 32, &v18);
  sub_2436744F8(&v18, v16);
  v7 = type metadata accessor for EMSPreviousResultCachingResultProvider();
  swift_allocObject();
  v8 = sub_24368AD74(v16);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_2436C19C8((v9 > 1), v10 + 1, 1);
    v6 = v17;
  }

  v19 = v7;
  v20 = &off_285675F20;
  *&v18 = v8;
  *(v6 + 16) = v10 + 1;
  sub_2436854AC(&v18, v6 + 40 * v10 + 32);
  sub_2436744F8(inited + 72, &v18);

  sub_2436744F8(&v18, v16);
  swift_allocObject();
  v11 = sub_24368AD74(v16);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_2436C19C8((v12 > 1), v13 + 1, 1);
  }

  v19 = v7;
  v20 = &off_285675F20;
  *&v18 = v11;
  v14 = v17;
  *(v17 + 16) = v13 + 1;
  sub_2436854AC(&v18, v14 + 40 * v13 + 32);
  return v14;
}

uint64_t sub_2436C5BA4(void *a1)
{
  v2 = sub_2436C5940(a1);
  type metadata accessor for EMSUnionedResultProvider();
  v3 = swift_allocObject();
  v3[3] = MEMORY[0x277D84FA0];
  v3[4] = 0;
  v3[5] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  swift_allocObject();
  v3[6] = sub_2436CAE78();
  v3[2] = v2;
  sub_2436C05BC();
  type metadata accessor for EMSSearcher(0);
  v4 = swift_allocObject();
  v5 = sub_2436B0F14(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

double sub_2436C5CA8@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath("\b");
  swift_getKeyPath(byte_2436D3108);
  sub_2436CAED8();

  if (v5 < 0)
  {
    sub_2436CB9B8();
  }

  else
  {
    sub_2436732AC();
    sub_2436CB698();
    if (v5)
    {
      sub_2436CB918();
    }

    else
    {
      sub_2436CB8F8();
    }

    swift_getKeyPath(byte_2436D3128);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80488, &qword_2436D3058);
  sub_2436C6070();
  sub_2436CB398();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_2436C5E0C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80470, &qword_2436D3050);
  sub_2436C5FE4();
  sub_2436CBA38();
  swift_getKeyPath("p");
  swift_getKeyPath("P");
  sub_2436CAED8();

  KeyPath = swift_getKeyPath("8");
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80490, &qword_2436D30D8);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_2436C6198;
  v9[2] = v7;
  return result;
}

uint64_t sub_2436C5F6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2436C5FE4()
{
  result = qword_27ED80478;
  if (!qword_27ED80478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80470, &qword_2436D3050);
    sub_2436C6070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80478);
  }

  return result;
}

unint64_t sub_2436C6070()
{
  result = qword_27ED80480;
  if (!qword_27ED80480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80488, &qword_2436D3058);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80480);
  }

  return result;
}

uint64_t sub_2436C6130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2436CB288();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2436C61B8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D3B420]();
  *a1 = result;
  return result;
}

unint64_t sub_2436C6214()
{
  result = qword_27ED80498;
  if (!qword_27ED80498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80490, &qword_2436D30D8);
    sub_243671838(&qword_27ED804A0, &qword_27ED804A8, &qword_2436D3158, MEMORY[0x277CDF028]);
    sub_243671838(&qword_27ED804B0, &qword_27ED804B8, &unk_2436D3160, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80498);
  }

  return result;
}

unint64_t sub_2436C6334()
{
  result = qword_27ED804C0;
  if (!qword_27ED804C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED804C0);
  }

  return result;
}

double sub_2436C63B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_2436CAB78();
  MEMORY[0x28223BE20](v10 - 8);
  if (v11)
  {
    sub_243688FE8(a1, v11, a2, a3, a5);
    sub_2436CB678();
  }

  else
  {
    sub_2436CB308();
    sub_2436CB668();
  }

  sub_2436CB398();
  result = *&v13;
  *a4 = v13;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  return result;
}

uint64_t sub_2436C6508@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2436CB508();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804C8, &qword_2436D32D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  *v12 = sub_2436CB2F8();
  *(v12 + 1) = 0x4034000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804D0, &qword_2436D32E0);
  sub_2436C675C(a1, a2, &v12[*(v13 + 44)]);
  v14 = sub_2436CB948();
  KeyPath = swift_getKeyPath(byte_2436D32E8);
  v16 = &v12[*(v10 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_2436CB4F8();
  sub_2436C752C();
  sub_2436CB7A8();
  (*(v7 + 8))(v9, v6);
  sub_243671AC8(v12, &qword_27ED804C8, &qword_2436D32D8);
  type metadata accessor for EMSAlertViewModel(0);
  sub_2436C76B8(&qword_27ED7F0F0, type metadata accessor for EMSAlertViewModel, &unk_2436D3890);

  v17 = sub_2436CB098();
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804F0, &qword_2436D3320);
  v21 = (a3 + *(result + 36));
  *v21 = v17;
  v21[1] = v19;
  return result;
}

uint64_t sub_2436C675C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804F8, &qword_2436D3328);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  swift_getKeyPath(byte_2436D3330);
  swift_getKeyPath(byte_2436D3358);
  sub_2436CAED8();

  type metadata accessor for EMSFacePortalViewModel(0);
  sub_2436C76B8(&qword_27ED80240, type metadata accessor for EMSFacePortalViewModel, &unk_2436CF1CC);
  v24 = sub_2436CB098();
  v12 = v11;
  sub_2436CBB48();
  sub_2436CB068();
  v13 = v26;
  v14 = v30;
  v22 = v31;
  v23 = v28;
  v33 = v27;
  v32 = v29;
  *v10 = sub_2436CB368();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80500, &qword_2436D3378);
  sub_2436C69F0(v25, a2, &v10[*(v15 + 44)]);
  LOBYTE(a2) = v33;
  v16 = v32;
  sub_2436714A8(v10, v8, &qword_27ED804F8, &qword_2436D3328);
  v17 = v23;
  *a3 = v24;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = a2;
  *(a3 + 32) = v17;
  *(a3 + 40) = v16;
  v18 = v22;
  *(a3 + 48) = v14;
  *(a3 + 56) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80508, &qword_2436D3380);
  sub_2436714A8(v8, a3 + *(v19 + 48), &qword_27ED804F8, &qword_2436D3328);
  v20 = a3 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;

  sub_243671AC8(v10, &qword_27ED804F8, &qword_2436D3328);
  sub_243671AC8(v8, &qword_27ED804F8, &qword_2436D3328);
}

uint64_t sub_2436C69F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v40 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80510, &qword_2436D3388);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  swift_getKeyPath(byte_2436D3390);
  swift_getKeyPath(aH_10);
  sub_2436CAED8();

  sub_2436C63B4(v47[0], v48, v49, v62, 17.0);
  v13 = v62[0];
  v39 = v62[1];
  v38 = v62[2];
  v37 = v62[3];
  v14 = v63;

  v15 = sub_2436CB5A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v41 = sub_2436CB5C8();
  sub_243671AC8(v12, &qword_27ED7F790, &qword_2436D2640);
  KeyPath = swift_getKeyPath(aP_12);
  swift_getKeyPath(asc_2436D3408);
  swift_getKeyPath(asc_2436D3430);
  sub_2436CAED8();

  if (LOBYTE(v47[0]) == 1)
  {
    v16 = [objc_opt_self() lightGrayColor];
    v17 = sub_2436CB8E8();
  }

  else
  {
    v17 = sub_2436CB968();
  }

  v34 = v17;
  v18 = swift_getKeyPath(byte_2436D32E8);
  v33 = v18;
  v60 = v14;
  v19 = swift_getKeyPath(byte_2436D3450);
  v32 = v19;
  v61 = 0;
  *v9 = sub_2436CB2F8();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80518, &qword_2436D3480);
  sub_2436C6EF0(a2, &v9[*(v20 + 44)]);
  sub_2436714A8(v9, v7, &qword_27ED80510, &qword_2436D3388);
  *&v42 = v13;
  v21 = v39;
  *(&v42 + 1) = v39;
  v22 = v38;
  *&v43 = v38;
  v40 = v9;
  v23 = v14;
  v24 = v37;
  *(&v43 + 1) = v37;
  LOBYTE(v44) = v23;
  *(&v44 + 1) = *v59;
  DWORD1(v44) = *&v59[3];
  v25 = KeyPath;
  *(&v44 + 1) = KeyPath;
  *&v45 = v41;
  *(&v45 + 1) = v18;
  v26 = v34;
  *v46 = v34;
  *&v46[8] = v19;
  *&v46[16] = 1;
  v46[24] = 0;
  v27 = v36;
  v36[4] = *v46;
  *(v27 + 73) = *&v46[9];
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  v29 = v45;
  v27[2] = v44;
  v27[3] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80520, &qword_2436D3488);
  sub_2436714A8(v7, v27 + *(v30 + 48), &qword_27ED80510, &qword_2436D3388);
  sub_2436C7638(&v42, v47);
  sub_243671AC8(v40, &qword_27ED80510, &qword_2436D3388);
  sub_243671AC8(v7, &qword_27ED80510, &qword_2436D3388);
  v47[0] = v13;
  v47[1] = v21;
  v48 = v22;
  v49 = v24;
  v50 = v23;
  *v51 = *v59;
  *&v51[3] = *&v59[3];
  v52 = v25;
  v53 = v41;
  v54 = v33;
  v55 = v26;
  v56 = v32;
  v57 = 1;
  v58 = 0;
  return sub_243671AC8(v47, &qword_27ED80528, &qword_2436D3490);
}

double sub_2436C6EF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v3 = sub_2436CB158();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80530, &qword_2436D3498);
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x28223BE20](v5);
  v51 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80538, &qword_2436D34A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  swift_getKeyPath(byte_2436D34A8);
  swift_getKeyPath(byte_2436D34D0);
  sub_2436CAED8();

  sub_2436732AC();
  v15 = sub_2436CB698();
  v17 = v16;
  v19 = v18;
  v20 = sub_2436CB5A8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_2436CB5C8();
  sub_243671AC8(v14, &qword_27ED7F790, &qword_2436D2640);
  v21 = sub_2436CB658();
  v23 = v22;
  v25 = v24;

  sub_243679F68(v15, v17, v19 & 1);

  sub_2436CB978();
  v26 = sub_2436CB648();
  v58 = v27;
  v56 = v28;
  v30 = v29;

  sub_243679F68(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath(byte_2436D3450);
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_2436CAED8();

  if (v63)
  {
    type metadata accessor for CRKUIButtonViewModel(0);
    sub_2436C76B8(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel, &unk_2436D03CC);

    v63 = sub_2436CB098();
    v64 = v31;
    v32 = v52;
    sub_2436CB148();
    sub_24367A178();
    sub_2436C76B8(&qword_27ED80548, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v33 = v26;
    v34 = v30;
    v35 = v51;
    v36 = v54;
    sub_2436CB6E8();
    (*(v53 + 8))(v32, v36);

    v37 = sub_2436CB928();

    v38 = swift_getKeyPath(byte_2436D32E8);
    v39 = v60;
    v40 = &v35[*(v60 + 36)];
    *v40 = v38;
    v40[1] = v37;
    v41 = v35;
    v30 = v34;
    v26 = v33;
    v42 = v59;
    sub_2436C7700(v41, v59);
    v43 = 0;
    v44 = v39;
  }

  else
  {
    v42 = v59;
    v44 = v60;
    v43 = 1;
  }

  (*(v61 + 56))(v42, v43, 1, v44);
  v45 = v62;
  sub_2436714A8(v42, v62, &qword_27ED80538, &qword_2436D34A0);
  v47 = KeyPath;
  v46 = v58;
  *a2 = v26;
  *(a2 + 8) = v46;
  v48 = v56 & 1;
  *(a2 + 16) = v56 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v47;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80540, &qword_2436D3538);
  sub_2436714A8(v45, a2 + *(v49 + 48), &qword_27ED80538, &qword_2436D34A0);
  sub_24366C090(v26, v46, v48);

  sub_243671AC8(v42, &qword_27ED80538, &qword_2436D34A0);
  sub_243671AC8(v45, &qword_27ED80538, &qword_2436D34A0);
  sub_243679F68(v26, v46, v48);

  return result;
}

unint64_t sub_2436C752C()
{
  result = qword_27ED804D8;
  if (!qword_27ED804D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804C8, &qword_2436D32D8);
    sub_243671838(&qword_27ED804E0, &qword_27ED804E8, &qword_2436D3318, MEMORY[0x277CE1138]);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED804D8);
  }

  return result;
}

uint64_t sub_2436C7638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80528, &qword_2436D3490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436C76B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2436C7700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80530, &qword_2436D3498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2436C7774()
{
  result = qword_27ED80550;
  if (!qword_27ED80550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804F0, &qword_2436D3320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804C8, &qword_2436D32D8);
    sub_2436C752C();
    swift_getOpaqueTypeConformance2();
    sub_2436932A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80550);
  }

  return result;
}

uint64_t sub_2436C7868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CB358();
  v19 = 0;
  sub_2436C7960(a1, v15);
  v5 = v15[0];
  v6 = v15[1];
  v7 = v16;
  v14 = v17;
  v8 = v18;
  LOBYTE(v15[0]) = v16;
  v9 = v19;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = 0x4028000000000000;
  *(v10 + 32) = v9;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v14;
  *(v10 + 80) = v8;
  v11 = [objc_opt_self() systemBackgroundColor];
  v12 = sub_2436CB8E8();
  result = sub_2436CB538();
  *a2 = sub_2436C7B08;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = result;
  return result;
}

double sub_2436C7960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27ED7DEF0 != -1)
  {
    swift_once();
  }

  sub_24369B50C(*(a1 + 24), *(a1 + 32));
  v5 = sub_2436CB688();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_2436C01B4();
  type metadata accessor for CRKUIButtonViewModel(0);
  sub_2436C7BC4();
  v12 = sub_2436CB098();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  sub_24366C090(v5, v7, v9 & 1);

  sub_243679F68(v5, v7, v9 & 1);

  return result;
}

uint64_t sub_2436C7ABC()
{
  sub_243679F68(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2436C7B08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_2436C7B54(v8, v7);
}

uint64_t sub_2436C7B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80558, &qword_2436D35C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2436C7BC4()
{
  result = qword_27ED7E878;
  if (!qword_27ED7E878)
  {
    type metadata accessor for CRKUIButtonViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E878);
  }

  return result;
}

unint64_t sub_2436C7C20()
{
  result = qword_27ED80560;
  if (!qword_27ED80560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80568, &qword_2436D35D0);
    sub_243671838(&qword_27ED80570, &qword_27ED80578, &qword_2436D35D8, &unk_2436D1E70);
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80560);
  }

  return result;
}

uint64_t sub_2436C7D04()
{
  swift_getKeyPath(aP_13);
  swift_getKeyPath(aP_14);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath(aP_13);
  swift_getKeyPath(aP_14);
  sub_2436CAED8();

  if (v11 == a1 && v14 == a2)
  {
  }

  else
  {
    v9 = sub_2436CC2E8();

    if ((v9 & 1) == 0)
    {
      swift_getKeyPath(aP_13);
      swift_getKeyPath(aP_14);
      v11 = a1;
      v14 = a2;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath(a8_7, v11, v14);
  swift_getKeyPath(byte_2436D36F0);
  sub_2436CAED8();

  if (v12 != a3)
  {
    swift_getKeyPath(a8_7);
    swift_getKeyPath(byte_2436D36F0);
    v12 = a3;

    sub_2436CAEE8();
  }

  swift_getKeyPath(byte_2436D3710, v12);
  swift_getKeyPath(byte_2436D3738);
  sub_2436CAED8();

  if (v13 != a4)
  {
    swift_getKeyPath(byte_2436D3710);
    swift_getKeyPath(byte_2436D3738);

    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_2436C7FD8()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__mascot;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for EMSCourseSearchResultViewModel(uint64_t a1)
{
  result = qword_27ED805A0;
  if (!qword_27ED805A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C8188(uint64_t a1)
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    sub_24367BB28(319, &qword_27ED7EAC0, type metadata accessor for CRKCourseColorType);
    if (v2 <= 0x3F)
    {
      sub_24367BB28(319, &qword_27ED7EAC8, type metadata accessor for CRKCourseMascotType);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2436C82E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSCourseSearchResultViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436C8320@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aP_13);
  swift_getKeyPath(aP_14);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2436C83A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aP_13);
  swift_getKeyPath(aP_14);

  return sub_2436CAEE8();
}

uint64_t EasyMAIDSignInTesterApp.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805B0, &qword_2436D3760);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_2436C86EC();
  sub_2436CAFF8();
  sub_2436C8740();
  sub_2436CB018();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2436C8648@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSConfigurationPickerViewModel(0);
  swift_allocObject();
  sub_24368E240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805C8, "<e");
  sub_2436CB9E8();
  sub_2436C88FC();
  result = sub_2436CB098();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

unint64_t sub_2436C86EC()
{
  result = qword_27ED805B8;
  if (!qword_27ED805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED805B8);
  }

  return result;
}

unint64_t sub_2436C8740()
{
  result = qword_27ED805C0;
  if (!qword_27ED805C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED805B0, &qword_2436D3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED805C0);
  }

  return result;
}

uint64_t sub_2436C87C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805B0, &qword_2436D3760);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_2436C86EC();
  sub_2436CAFF8();
  sub_2436C8740();
  sub_2436CB018();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_2436C88FC()
{
  result = qword_27ED7E568;
  if (!qword_27ED7E568)
  {
    type metadata accessor for EMSConfigurationPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E568);
  }

  return result;
}

uint64_t sub_2436C8954@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(asc_2436D3910);
  swift_getKeyPath(byte_2436D3938);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436C89D4(char *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_2436D3910);
  swift_getKeyPath(byte_2436D3938);

  sub_2436CAEE8();
  return sub_2436C8A4C();
}

uint64_t sub_2436C8A4C()
{
  swift_getKeyPath(asc_2436D3910);
  swift_getKeyPath(byte_2436D3938);
  sub_2436CAED8();

  if ((v1 & 1) == 0)
  {
    swift_getKeyPath(aX_7);
    swift_getKeyPath(a8_8);

    sub_2436CAEE8();
    swift_getKeyPath(aX_7);
    swift_getKeyPath(a8_8);
    sub_2436CAED8();

    v5 = -1;
    v3 = 0u;
    v4 = 0u;
    v1 = 0u;
    v2 = 0u;
    swift_getKeyPath(asc_2436D3910);
    swift_getKeyPath(byte_2436D3938);
    sub_2436CAED8();
  }

  return result;
}

uint64_t sub_2436C8C2C()
{
  swift_getKeyPath(asc_2436D3910);
  swift_getKeyPath(byte_2436D3938);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C8CA0()
{
  swift_getKeyPath(aX_7);
  swift_getKeyPath(a8_8);
  sub_2436CAED8();

  v7 = v5;
  v6[2] = v3;
  v6[3] = v4;
  v6[0] = v1;
  v6[1] = v2;
  if (v5 != 255)
  {
    sub_2436C9410(v6);
  }

  swift_getKeyPath(asc_2436D3910);
  swift_getKeyPath(byte_2436D3938);
  sub_2436CAED8();

  if ((v5 != 255) != v1)
  {
    swift_getKeyPath(asc_2436D3910);
    swift_getKeyPath(byte_2436D3938);

    sub_2436CAEE8();
    return sub_2436C8A4C();
  }

  return result;
}

__n128 sub_2436C8DEC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aX_7);
  swift_getKeyPath(a8_8);
  sub_2436CAED8();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2436C8E8C()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit17EMSAlertViewModel__isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit17EMSAlertViewModel__contents;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805F8, &unk_2436D3960);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSAlertViewModel(uint64_t a1)
{
  result = qword_27ED805E0;
  if (!qword_27ED805E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C8FD4(uint64_t a1)
{
  sub_2436803AC();
  if (v1 <= 0x3F)
  {
    sub_2436C90A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2436C90A0(uint64_t a1)
{
  if (!qword_27ED805F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7F770, &qword_2436D2370);
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED805F0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2436C9134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_2436C917C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_2436C91F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSAlertViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

__n128 sub_2436C9230@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(aX_7);
  swift_getKeyPath(a8_8);
  sub_2436CAED8();

  result = v7;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2436C92D8(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v14[2] = a1[2];
  v14[3] = v3;
  v15 = *(a1 + 64);
  v4 = a1[1];
  v14[0] = *a1;
  v14[1] = v4;
  swift_getKeyPath(aX_7);
  swift_getKeyPath(a8_8);
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = *(a1 + 64);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;

  sub_2436C9398(v14, v8);
  sub_2436CAEE8();
  return sub_2436C8CA0();
}

uint64_t sub_2436C9398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436C9410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EMSMonotonicTimestamp.bootIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

ClassroomUIKit::EMSMonotonicTimestamp __swiftcall EMSMonotonicTimestamp.init(bootIdentifier:uptime:)(Swift::String bootIdentifier, Swift::Double uptime)
{
  *v2 = bootIdentifier;
  *(v2 + 16) = uptime;
  result.bootIdentifier = bootIdentifier;
  result.uptime = uptime;
  return result;
}

uint64_t EMSMonotonicTimestamp.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2436CC078();
  MEMORY[0x245D3C000](60, 0xE100000000000000);
  MEMORY[0x245D3C000](0xD000000000000015, 0x80000002436D3950);
  MEMORY[0x245D3C000](0xD000000000000014, 0x80000002436E8710);
  MEMORY[0x245D3C000](v1, v2);
  MEMORY[0x245D3C000](0x656D69747075202CLL, 0xEB00000000203D20);
  sub_2436CBE78();
  MEMORY[0x245D3C000](4095264, 0xE300000000000000);
  return 0;
}

uint64_t sub_2436C95E8()
{
  if (*v0)
  {
    return 0x656D69747075;
  }

  else
  {
    return 0x6E656449746F6F62;
  }
}

void sub_2436C962C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656449746F6F62 && a2 == 0xEE00726569666974;
  if (v6 || (sub_2436CC2E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D69747075 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2436CC2E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2436C9724(uint64_t a1)
{
  v2 = sub_2436C9934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2436C9760(uint64_t a1)
{
  v2 = sub_2436C9934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EMSMonotonicTimestamp.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80600, &qword_2436D3988);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2436C9934();
  sub_2436CC3B8();
  v10 = 0;
  v6 = v8;
  sub_2436CC278();
  if (!v6)
  {
    v9 = 1;
    sub_2436CC288();
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2436C9934()
{
  result = qword_27ED80608;
  if (!qword_27ED80608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80608);
  }

  return result;
}

void EMSMonotonicTimestamp.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80610, &qword_2436D3990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2436C9934();
  sub_2436CC3A8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v15[15] = 0;
    v9 = sub_2436CC258();
    v11 = v10;
    v12 = v9;
    v15[14] = 1;
    sub_2436CC268();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v14;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2436C9BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2436C9C00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2436C9C64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2436CAD38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2436C9D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2436CAD38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EMSUserInterfaceRecord(uint64_t a1)
{
  result = qword_27ED80618;
  if (!qword_27ED80618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2436C9E14(uint64_t a1)
{
  result = sub_24367A54C();
  if (v2 <= 0x3F)
  {
    result = sub_2436CAD38();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436C9EA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2436C9EE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2436C9F40(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2436C9F9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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

char *sub_2436CA11C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
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

uint64_t getEnumTagSinglePayload for EMSMonotonicTimestamp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EMSMonotonicTimestamp.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2436CA4C0()
{
  result = qword_27ED806A8;
  if (!qword_27ED806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806A8);
  }

  return result;
}

unint64_t sub_2436CA518()
{
  result = qword_27ED806B0;
  if (!qword_27ED806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806B0);
  }

  return result;
}

unint64_t sub_2436CA570()
{
  result = qword_27ED806B8;
  if (!qword_27ED806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806B8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27ED83A58 == -1)
  {
    if (qword_27ED83A60)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27ED83A60)
    {
      return _availability_version_check();
    }
  }

  if (qword_27ED83A50 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27ED83A44 > a3)
      {
        return 1;
      }

      if (dword_27ED83A44 >= a3)
      {
        return dword_27ED83A48 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27ED83A60;
  if (qword_27ED83A60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27ED83A60 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245D3C740](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27ED83A44, &dword_27ED83A48);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}