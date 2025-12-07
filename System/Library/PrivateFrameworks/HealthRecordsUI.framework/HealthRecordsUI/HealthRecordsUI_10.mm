void sub_1D1137234(int64_t a1)
{
  v3 = sub_1D138ED5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D139105C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1D1138D0C(&qword_1EC60A930, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
        v23 = sub_1D139006C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_1D113753C(uint64_t a1)
{
  sub_1D1138C8C(0, &qword_1EC60B5A8, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1D138ED5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1D11368AC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1D1138EDC(v5, &qword_1EC60B5A8, MEMORY[0x1E69A3910]);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1137788(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  sub_1D1138C8C(0, &qword_1EC60B5A8, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v65 - v8);
  v10 = sub_1D138ED5C();
  MEMORY[0x1EEE9AC00](v10);
  v85 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v65 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v80 = (&v65 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v9;
  v68 = v6;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v79 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v87 = (v21 & v18);
  v72 = (63 - v20) >> 6;
  v86 = v16 + 16;
  v77 = (v16 + 48);
  v78 = (v16 + 56);
  v76 = (v16 + 32);
  v82 = (a2 + 56);
  v67 = v16;
  v88 = (v16 + 8);

  v23 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v19 = i)
  {
    v24 = v87;
    v25 = v23;
    if (v87)
    {
LABEL_14:
      v6 = (v24 - 1) & v24;
      v29 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
      v30 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v72 <= (v23 + 1) ? v23 + 1 : v72;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v72)
        {
          break;
        }

        v24 = *(v19 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      v6 = 0;
      v30 = 1;
      v29 = v66;
    }

    v74 = *v78;
    v74(v29, v30, 1, v10);
    v89 = a1;
    v90 = v19;
    v91 = v79;
    v92 = v27;
    v93 = v6;
    v73 = *v77;
    if (v73(v29, 1, v10) == 1)
    {
      sub_1D1138EDC(v29, &qword_1EC60B5A8, MEMORY[0x1E69A3910]);
      v58 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v29, v10);
    v70 = sub_1D1138D0C(&qword_1EC60A930, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
    v31 = sub_1D139006C();
    v32 = -1 << *(a2 + 32);
    v23 = v31 & ~v32;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v82[v23 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v10);
LABEL_22:
    v23 = v27;
    v87 = v6;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v32;
  v33 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v33;
  while (1)
  {
    v83(v14, *(a2 + 48) + v84 * v23, v10);
    v34 = sub_1D1138D0C(&qword_1EC60A938, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
    v35 = sub_1D139011C();
    v87 = *v88;
    v87(v14, v10);
    if (v35)
    {
      break;
    }

    v23 = (v23 + 1) & v81;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v82[v23 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v10);
      goto LABEL_22;
    }
  }

  v81 = v34;
  v36 = (v87)(v80, v10);
  v37 = *(a2 + 32);
  v65 = ((1 << v37) + 63) >> 6;
  v22 = 8 * v65;
  a1 = v69;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v65 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v82, v38);
    v40 = *&v39[8 * v25] & ~v19;
    v41 = *(a2 + 16);
    v80 = v39;
    *&v39[8 * v25] = v40;
    v42 = v41 - 1;
    v43 = v68;
    v25 = i;
    v44 = v72;
LABEL_26:
    v67 = v42;
    while (v6)
    {
      v45 = v27;
LABEL_38:
      v48 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v83(v43, *(a1 + 48) + (v48 | (v45 << 6)) * v84, v10);
      v49 = 0;
LABEL_39:
      v74(v43, v49, 1, v10);
      v89 = a1;
      v90 = v25;
      v91 = v79;
      v92 = v27;
      v93 = v6;
      if (v73(v43, 1, v10) == 1)
      {
        sub_1D1138EDC(v43, &qword_1EC60B5A8, MEMORY[0x1E69A3910]);
        a2 = sub_1D1103E28(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v43, v10);
      v50 = sub_1D139006C();
      v51 = a2;
      v52 = -1 << *(a2 + 32);
      v23 = v50 & ~v52;
      v53 = v23 >> 6;
      v19 = 1 << v23;
      if (((1 << v23) & v82[v23 >> 6]) != 0)
      {
        v83(v14, *(v51 + 48) + v23 * v84, v10);
        v54 = sub_1D139011C();
        v87(v14, v10);
        if ((v54 & 1) == 0)
        {
          v55 = ~v52;
          do
          {
            v23 = (v23 + 1) & v55;
            v53 = v23 >> 6;
            v19 = 1 << v23;
            if (((1 << v23) & v82[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v14, *(v51 + 48) + v23 * v84, v10);
            v56 = sub_1D139011C();
            v87(v14, v10);
          }

          while ((v56 & 1) == 0);
        }

        v87(v85, v10);
        v57 = v80[v53];
        v80[v53] = v57 & ~v19;
        a2 = v51;
        a1 = v69;
        v43 = v68;
        v25 = i;
        v44 = v72;
        if ((v57 & v19) != 0)
        {
          v42 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v10);
        a2 = v51;
        a1 = v69;
        v43 = v68;
        v25 = i;
        v44 = v72;
      }
    }

    if (v44 <= (v27 + 1))
    {
      v46 = v27 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v6 = 0;
        v49 = 1;
        v27 = v47;
        goto LABEL_39;
      }

      v6 = *(v25 + 8 * v45);
      ++v27;
      if (v6)
      {
        v27 = v45;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v60 = v22;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1D113822C(v63, v65, v80, v23, &v89);
  a2 = v64;

  MEMORY[0x1D38882F0](v63, -1, -1);
LABEL_52:
  v58 = v89;
LABEL_53:
  sub_1D102CC30(v58);
  return a2;
}

void sub_1D113822C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_1D1138C8C(0, &qword_1EC60B5A8, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D138ED5C();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D1138EDC(v11, &qword_1EC60B5A8, MEMORY[0x1E69A3910]);
          v45 = v61;

          sub_1D1103E28(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D1138D0C(&qword_1EC60A930, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
        v35 = sub_1D139006C();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D1138D0C(&qword_1EC60A938, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
        v43 = sub_1D139011C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D1138730(uint64_t a1, uint64_t a2)
{

  v3 = sub_1D12DEBC4(v2);

  v5 = sub_1D12DEBC4(v4);

  if (*(v5 + 16) <= *(v3 + 16) >> 3)
  {
    goto LABEL_5;
  }

  v6 = sub_1D1137788(v5, v3);

  v3 = *(v6 + 16);
  if (v3)
  {
    while (1)
    {
      v5 = sub_1D129F918(v3, 0);
      v7 = *(sub_1D138ED5C() - 8);
      sub_1D12A1BB0(&v11, (v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v3, v6);
      v9 = v8;
      sub_1D102CC30(v11);
      if (v9 == v3)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v11 = v3;
      sub_1D113753C(v5);

      v6 = v11;
      v3 = *(v11 + 16);
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

unint64_t sub_1D11388C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D11389DC();
    v3 = sub_1D139144C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1138A40(v4, &v13, sub_1D1138AA8);
      v5 = v13;
      v6 = v14;
      result = sub_1D11362EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D109E39C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D11389DC()
{
  if (!qword_1EC609F28)
  {
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F28);
    }
  }
}

uint64_t sub_1D1138A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1138AA8()
{
  if (!qword_1EC609F30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609F30);
    }
  }
}

uint64_t objectdestroyTm_2()
{
  sub_1D11360B8(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1138BEC(char a1, void *a2)
{
  sub_1D11360B8(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_1D11355A4(a1, a2, v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D1138C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D1138D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_32Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t sub_1D1138DC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D11331F8(a1, v4, v5, v7, v6);
}

void sub_1D1138E80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D1390F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1138EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1138C8C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static Deferred.createAutoreleasingDeferredPublisher(createPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_1D138F75C();
}

void sub_1D1139018()
{
  v1 = *(v0 + 32);
  v2 = objc_autoreleasePoolPush();
  v1();

  objc_autoreleasePoolPop(v2);
}

uint64_t type metadata accessor for RecordSourceDataSource(uint64_t a1)
{
  result = qword_1EC60B5D8;
  if (!qword_1EC60B5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1139118(void *a1)
{
  v2 = v1;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D138FF5C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = qword_1EC60B5C0;
  v10 = *(v2 + qword_1EC60B5C0);
  if (!v10)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_6:
    v14 = *(v2 + qword_1EC60B5B0);
    v15 = *(v2 + qword_1EC60B5C8);
    v16 = type metadata accessor for RecordSourceItem();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v10;
    v17[4] = 0;
    v17[5] = v15;
    sub_1D113AABC(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
    sub_1D138E52C();
    v18 = swift_allocObject();
    v23 = xmmword_1D139E700;
    *(v18 + 16) = xmmword_1D139E700;
    sub_1D10C68DC(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 56) = v16;
    *(v19 + 64) = sub_1D113AA74(&qword_1EC60B608, v20, type metadata accessor for RecordSourceItem, &unk_1D13A29A4);
    *(v19 + 32) = v17;
    swift_unknownObjectRetain();
    v21 = v15;

    v22 = v10;
    sub_1D138E4DC();
    sub_1D138E58C();

    return;
  }

  sub_1D106F934(0, &unk_1EC60B630, 0x1E696BEB8);
  v11 = v10;
  v12 = a1;
  v13 = sub_1D1390D8C();

  if ((v13 & 1) == 0)
  {
    v10 = *(v2 + v9);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D138E58C();
  }
}

uint64_t sub_1D113949C(void *a1, void *a2)
{
  *(v2 + qword_1EC60B5B0) = 0;
  *(v2 + qword_1EC60B5C0) = 0;
  *(v2 + qword_1EC60B5D0) = 0;
  *(v2 + qword_1EC60B5B8) = a1;
  *(v2 + qword_1EC60B5C8) = a2;
  v4 = a1;
  v5 = a2;
  v6 = sub_1D138EA8C();
  v7 = *(v6 + qword_1EC60B5C8);
  v8 = *(v6 + qword_1EC60B5B8);
  v12[4] = sub_1D113AA4C;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D1139D74;
  v12[3] = &block_descriptor_20;
  v9 = _Block_copy(v12);
  swift_retain_n();
  v10 = v8;

  [v7 fetchAccountOwnerForSource:v10 completion:v9];
  _Block_release(v9);

  return v6;
}

uint64_t sub_1D1139620(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v6 = sub_1D138E6AC();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_1D11396F4()
{
  v1 = v0;
  v2 = sub_1D138FF3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + qword_1EC60B5B0);
  v7 = *(v1 + qword_1EC60B5D0);
  v8 = *(v1 + qword_1EC60B5C8);
  v9 = type metadata accessor for RecordSourceItem();
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v8;
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v11 = v7;
  v12 = v8;
  swift_unknownObjectRetain();
  *v5 = sub_1D1390A7C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  LOBYTE(v6) = sub_1D138FF5C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1D10C68DC(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E700;
    *(v13 + 56) = v9;
    *(v13 + 64) = sub_1D113AA74(&qword_1EC60B608, v14, type metadata accessor for RecordSourceItem, &unk_1D13A29A4);
    *(v13 + 32) = v10;

    sub_1D138E5AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D113993C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138FECC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138FF0C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v11 = sub_1D1390A7C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1D113AA6C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_21_0;
  v13 = _Block_copy(aBlock);

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D113AA74(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D113AABC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void sub_1D1139C38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v7 = a2;
    v3 = sub_1D13910DC();
    a2 = v7;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_3:
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(a2 + 8 * v5 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v3 = MEMORY[0x1D3886B70](v5, a2);
    goto LABEL_8;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_8:
  v8 = *(a1 + qword_1EC60B5C0);
  *(a1 + qword_1EC60B5C0) = v3;
  v6 = v3;
  sub_1D1139118(v8);
}

double sub_1D1139D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1D106F934(0, &unk_1EC60B630, 0x1E696BEB8);
  v3 = sub_1D139045C();

  v2(v3);

  return result;
}

void sub_1D1139DF8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_1EC60B5D0);
}

uint64_t sub_1D1139E68()
{
  v0 = sub_1D138EABC();

  swift_unknownObjectRelease();

  v1 = *(v0 + qword_1EC60B5D0);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1139F10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F36C();
  v3 = sub_1D138DE3C();
  swift_allocObject();
  v4 = sub_1D138DE1C();
  a1[3] = v3;
  result = sub_1D113AA74(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8], MEMORY[0x1E69A34C0]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1D113A0B8()
{
  v2 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  sub_1D113AABC(0, &qword_1EC60B648, sub_1D113AB20, MEMORY[0x1E69E6720]);
  swift_unknownObjectRetain();
  v0 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v0);

  return v2;
}

uint64_t sub_1D113A194()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D113A208()
{
  type metadata accessor for RecordSourceCell();
  sub_1D113AA74(&unk_1EC60F710, v0, type metadata accessor for RecordSourceCell, &unk_1D13A2944);
  return sub_1D138DECC();
}

uint64_t sub_1D113A290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D113A2F4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell____lazy_storage___brandView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell____lazy_storage___brandView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell____lazy_storage___brandView);
  }

  else
  {
    v4 = [objc_allocWithZone(WDMedicalRecordBrandView) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D113A3AC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v16);
  if (v17)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0, MEMORY[0x1E69A3348]);
    type metadata accessor for RecordSourceItem();
    if (swift_dynamicCast())
    {
      v2 = v15[3];
      if (v2)
      {
        v3 = v15[5];
        v4 = v2;
        v5 = [v3 nameAndFormattedBirthDateForAccountOwner_];
        v6 = sub_1D113A2F4();
        v7 = [v6 brandDetailLabel];

        [v7 setText_];
      }

      v8 = v15[4];
      if (v8)
      {
        v9 = v15[5];
        v10 = v8;
        v11 = [v9 nameAndFormattedBirthDateForSignedClinicalDataSubject_];
        v12 = sub_1D113A2F4();
        v13 = [v12 brandDetailLabel];

        [v13 setText_];
      }

      v14 = sub_1D113A2F4();
      [v14 setBrandable:v15[2] dataProvider:v15[5]];
    }
  }

  else
  {
    sub_1D10A72B8(v16);
  }
}

char *sub_1D113A574(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell____lazy_storage___brandView] = 0;
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell_item];
  v10 = type metadata accessor for RecordSourceCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v21.receiver = v4;
  v21.super_class = v10;
  v11 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D113A2F4();
  [v12 addSubview_];

  v14 = *&v11[OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell____lazy_storage___brandView];
  v15 = [v11 contentView];

  [v14 hk:v15 alignConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];
  sub_1D1086E1C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E710;
  *(v16 + 32) = sub_1D139016C();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0xD000000000000010;
  *(v16 + 56) = 0x80000001D13A2910;
  v18 = sub_1D139044C();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  [v11 setAccessibilityIdentifier_];
  return v11;
}

id sub_1D113A804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordSourceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D113A8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D113A900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI16RecordSourceCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D113A3AC();
  return sub_1D10A72B8(a1);
}

void (*sub_1D113A96C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D113A9D0;
}

void sub_1D113A9D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D113A3AC();
  }
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D113AA74(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1D113AABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D113AB20()
{
  result = qword_1EC60B650;
  if (!qword_1EC60B650)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60B650);
  }

  return result;
}

id sub_1D113AB8C()
{
  v1 = OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel;
  v2 = *(v0 + OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setLineBreakMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D113AC3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HRExpandedRangeValueView_viewData;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  *&v17[13] = *(v3 + 93);
  v16[4] = v7;
  *v17 = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 93) = *(v3 + 93);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_1D113AE4C(v16, &v15);
}

void sub_1D113ACE4(__int128 *a1, void *a2)
{
  v2 = a1[5];
  v21 = a1[4];
  v22[0] = v2;
  *(v22 + 13) = *(a1 + 93);
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v4 = a1[3];
  v5 = *a2 + OBJC_IVAR___HRExpandedRangeValueView_viewData;
  v19 = a1[2];
  v20 = v4;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 32);
  v23[1] = *(v5 + 16);
  v23[2] = v7;
  v23[0] = v6;
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 80);
  *(v24 + 13) = *(v5 + 93);
  v23[4] = v9;
  v24[0] = v10;
  v23[3] = v8;
  v12 = v21;
  v11 = v22[0];
  v13 = v20;
  *(v5 + 93) = *(v22 + 13);
  *(v5 + 64) = v12;
  *(v5 + 80) = v11;
  *(v5 + 48) = v13;
  v14 = v17;
  v15 = v19;
  *(v5 + 16) = v18;
  *(v5 + 32) = v15;
  *v5 = v14;
  sub_1D113AE4C(&v17, &v16);
  sub_1D1128AD0(v23);
  sub_1D113B838();
}

uint64_t sub_1D113ADC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___HRExpandedRangeValueView_viewData;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16[0] = v5;
  *(v16 + 13) = *(v3 + 93);
  v6 = *(v16 + 13);
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 93) = v6;
  return sub_1D113AE4C(v12, &v11);
}

uint64_t sub_1D113AE4C(uint64_t a1, uint64_t a2)
{
  sub_1D1082CC4(0, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D113AED4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___HRExpandedRangeValueView_viewData;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v11[0] = v4;
  *(v11 + 13) = *(v3 + 93);
  v5 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v5;
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 93) = *(a1 + 93);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1D1128AD0(v10);
  sub_1D113B838();
}

void (*sub_1D113AF70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D113AFD4;
}

void sub_1D113AFD4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D113B838();
  }
}

id ExpandedRangeValueView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1D113B094(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_1D113AB8C();
    sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    v4 = sub_1D1390C6C();
    v5 = sub_1D1390C6C();
    v6 = sub_1D106E7E8(v4, v5);

    [v3 setAttributedText_];
    v7 = v2;
    sub_1D1271D64(a1);
  }

  sub_1D113B2C0();
}

void sub_1D113B2C0()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR___HRExpandedRangeValueView_activeConstraints;
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);

  v3 = sub_1D139044C();

  [v1 deactivateConstraints_];

  v4 = *&v0[OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView];
  v5 = [v4 isHidden];
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139F5B0;
    v7 = sub_1D113AB8C();
    v8 = [v7 leadingAnchor];

    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v6 + 32) = v10;
    v11 = OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel;
    v12 = [*&v0[OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel] trailingAnchor];
    v13 = [v0 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v6 + 40) = v14;
    v15 = [*&v0[v11] topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v6 + 48) = v17;
    v18 = (v6 + 56);
    v4 = *&v0[v11];
    v19 = &selRef_hasSectionLocalizedContent;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D13A0750;
    v20 = sub_1D113AB8C();
    v21 = [v20 leadingAnchor];

    v22 = [v0 &selRef_hrui_insurance + 1];
    v44 = v1;
    v23 = [v21 constraintEqualToAnchor_];

    *(v6 + 32) = v23;
    v24 = OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel;
    v25 = [*&v0[OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel] trailingAnchor];
    v26 = [v0 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v6 + 40) = v27;
    v28 = [*&v0[v24] topAnchor];
    v29 = [v0 topAnchor];
    v30 = [v28 constraintEqualToAnchor_];

    *(v6 + 48) = v30;
    v31 = *&v0[v24];
    v19 = &selRef_hasSectionLocalizedContent;
    v32 = [v31 bottomAnchor];
    v33 = [v4 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-6.0];

    *(v6 + 56) = v34;
    v35 = [v4 leadingAnchor];
    v36 = [v0 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v6 + 64) = v37;
    v38 = [v4 trailingAnchor];
    v39 = [v0 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v6 + 72) = v40;
    v1 = v44;
    v18 = (v6 + 80);
  }

  v41 = [v4 v19[361]];
  v42 = [v0 v19[361]];
  v43 = [v41 constraintEqualToAnchor_];

  *v18 = v43;
  *&v0[v2] = v6;

  v45 = sub_1D139044C();

  [v1 activateConstraints_];
}

void sub_1D113B838()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    v4 = &v0[OBJC_IVAR___HRExpandedRangeValueView_viewData];
    swift_beginAccess();
    v5 = *(v4 + 5);
    v28 = *(v4 + 4);
    *v29 = v5;
    *&v29[13] = *(v4 + 93);
    v6 = *(v4 + 1);
    v26[0] = *v4;
    v26[1] = v6;
    v7 = *(v4 + 3);
    v26[2] = *(v4 + 2);
    v27 = v7;
    if (*(&v26[0] + 1))
    {
      v8 = v27;
      v9 = v29[19];
      v30 = v26[0];
      *&v35[11] = *(v4 + 83);
      *v35 = *(v4 + 72);
      v34 = *(v4 + 56);
      v10 = *v4;
      v11 = *(v4 + 2);
      v12 = *(v4 + 3);
      v31 = *(v4 + 1);
      v32 = v11;
      v33 = v27;
      v36 = v29[19];
      v37 = v29[20];
      v24[0] = v10;
      v24[1] = v31;
      v13 = *(v4 + 4);
      v14 = *(v4 + 5);
      *&v25[13] = *(v4 + 93);
      v24[4] = v13;
      *v25 = v14;
      v24[2] = v11;
      v24[3] = v12;
      sub_1D1128A74(v24, v23);
      [v3 bounds];
      Width = CGRectGetWidth(v38);
      sub_1D1271D64(v8);
      v16 = sub_1D11C1BA0(Width);
      v17 = sub_1D113AB8C();
      [v17 setAttributedText_];

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v18 = 3;
      }

      [*&v1[OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel] setNumberOfLines_];
      sub_1D113B2C0();

      sub_1D1128AD0(v26);
    }

    else
    {
      v19 = *&v0[OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView];
      [*&v1[OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView] setHidden_];
      *(v19 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_rangeContext) = 2;
      sub_1D12708E0();
      *(v19 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_state) = 3;
      sub_1D1270DF4();
      v20 = v19 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotMultiplier;
      *v20 = 0;
      *(v20 + 8) = 1;
      v21 = *(v19 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint);
      *(v19 + OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_dotConstraint) = 0;

      v22 = sub_1D113AB8C();
      [v22 setAttributedText_];

      sub_1D113B2C0();
    }
  }
}

id ExpandedRangeValueView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExpandedRangeValueView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *_s15HealthRecordsUI22ExpandedRangeValueViewC5frameACSo6CGRectV_tcfc_0()
{
  *&v0[OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel] = 0;
  v1 = OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView;
  v9 = 2;
  v2 = objc_allocWithZone(type metadata accessor for RecordRangeView());
  *&v0[v1] = RecordRangeView.init(style:)(&v9);
  v3 = &v0[OBJC_IVAR___HRExpandedRangeValueView_viewData];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 93) = 0;
  *&v0[OBJC_IVAR___HRExpandedRangeValueView_activeConstraints] = MEMORY[0x1E69E7CC0];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ExpandedRangeValueView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView;
  [*&v4[OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];
  v6 = sub_1D113AB8C();
  [v4 addSubview_];

  return v4;
}

void sub_1D113BDA4()
{
  *(v0 + OBJC_IVAR___HRExpandedRangeValueView____lazy_storage___valueLabel) = 0;
  v1 = OBJC_IVAR___HRExpandedRangeValueView_referenceRangeView;
  v4 = 2;
  v2 = objc_allocWithZone(type metadata accessor for RecordRangeView());
  *(v0 + v1) = RecordRangeView.init(style:)(&v4);
  v3 = v0 + OBJC_IVAR___HRExpandedRangeValueView_viewData;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 93) = 0;
  *(v0 + OBJC_IVAR___HRExpandedRangeValueView_activeConstraints) = MEMORY[0x1E69E7CC0];
  sub_1D13913BC();
  __break(1u);
}

double sub_1D113BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingTurnOnAllDataTypesDataSource(uint64_t a1)
{
  result = qword_1EC60B6A0;
  if (!qword_1EC60B6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D113BF88()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60B680 = v1;
  *algn_1EC60B688 = v3;
}

void sub_1D113C060()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60B690 = v1;
  *algn_1EC60B698 = v3;
}

uint64_t sub_1D113C138()
{
  v18 = sub_1D138D5EC();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6F90];
  sub_1D113D400(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  v4 = *(sub_1D138E52C() - 8);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v5 = swift_allocObject();
  v16 = xmmword_1D139E700;
  *(v5 + 16) = xmmword_1D139E700;
  sub_1D10C68DC(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], v3);
  v6 = swift_allocObject();
  *(v6 + 16) = v16;
  if (qword_1EC608BE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC60B680;
  v8 = *algn_1EC60B688;
  v9 = qword_1EC608BF0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC60B690;
  v11 = *algn_1EC60B698;
  v12 = type metadata accessor for TurnOnAllDataTypesItem();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = v11;
  *(v6 + 56) = v12;
  *(v6 + 64) = sub_1D113D0C8(&qword_1EC60B6C0, v14, type metadata accessor for TurnOnAllDataTypesItem, &unk_1D13A2C18);
  *(v6 + 32) = v13;

  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v0 + 8))(v2, v18);
  sub_1D138E50C();
  return sub_1D138EA8C();
}

uint64_t sub_1D113C44C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v6 = sub_1D138E6AC();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1D113C580()
{
  sub_1D138EABC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D113C5B8(uint64_t a1)
{
  type metadata accessor for TurnOnAllDataTypesCell();
  sub_1D113D0C8(&qword_1EC609C68, v1, type metadata accessor for TurnOnAllDataTypesCell, &unk_1D13A2BB8);
  sub_1D13908AC();
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D113D0C8(&qword_1EC609BC8, 255, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell, &unk_1D13A0FBC);
  sub_1D13908AC();
  sub_1D138E71C();
  sub_1D13908CC();
  sub_1D138E08C();
  return sub_1D13908AC();
}

uint64_t sub_1D113C6A8()
{
  v1 = v0;
  v3 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  MEMORY[0x1D3885C10](v1[2], v1[3]);
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  MEMORY[0x1D3885C10](v1[4], v1[5]);
  return v3;
}

uint64_t sub_1D113C764(uint64_t a1)
{
  type metadata accessor for TurnOnAllDataTypesCell();
  sub_1D113D0C8(&qword_1EC609C68, v1, type metadata accessor for TurnOnAllDataTypesCell, &unk_1D13A2BB8);
  return sub_1D138DECC();
}

uint64_t sub_1D113C7EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D113C99C()
{
  v1 = v0;
  sub_1D113D400(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1D138F27C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138F3FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v13, v40);
  if (!v41)
  {
    return sub_1D10A72B8(v40);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0, MEMORY[0x1E69A3348]);
  type metadata accessor for TurnOnAllDataTypesItem();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = v8;
    v15 = v39;
    MEMORY[0x1D38864F0]();
    v33 = objc_opt_self();
    v16 = [v33 systemBlueColor];
    v38 = v6;
    v17 = sub_1D138F2FC();
    v18 = v38;
    sub_1D138F2DC();
    v17(v40, 0);
    v35 = v15;
    v19 = v34;

    sub_1D138F3BC();
    v41 = v9;
    v42 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    v36 = v9;
    v37 = v10;
    (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
    MEMORY[0x1D3886480](v40);
    sub_1D138F26C();
    v21 = [v33 secondarySystemBackgroundColor];
    sub_1D138F23C();
    (*(v18 + 16))(v4, v19, v5);
    (*(v18 + 56))(v4, 0, 1, v5);
    MEMORY[0x1D38864A0](v4);
    sub_1D1086E1C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D139EAB0;
    *(v22 + 32) = sub_1D139016C();
    *(v22 + 40) = v23;
    strcpy((v22 + 48), "ChooseTopics");
    *(v22 + 61) = 0;
    *(v22 + 62) = -5120;
    sub_1D138F3AC();
    if (v24)
    {
      v25 = sub_1D139012C();

      v26 = [v25 removeSpecialCharactersAndWhiteSpaces];

      v27 = sub_1D139016C();
      v29 = v28;

      v18 = v38;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    *(v22 + 64) = v27;
    *(v22 + 72) = v29;
    v30 = sub_1D139044C();

    v31 = HKUIJoinStringsForAutomationIdentifier();

    [v1 setAccessibilityIdentifier_];

    (*(v18 + 8))(v19, v5);
    return (*(v37 + 8))(v12, v36);
  }

  return result;
}

id sub_1D113CE80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TurnOnAllDataTypesCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D113CEFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D113CF54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D113C99C();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D113CFC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D113D024;
}

uint64_t sub_1D113D024(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D113C99C();
  }

  return result;
}

uint64_t sub_1D113D0C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1D113D110(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && a1)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_allSwitchesOn;
    v12 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_allSwitchesOn);
    v13 = *(v9 + 8);
    v29 = a1;
    v13(v12, ObjectType, v9);
    *(v2 + v11) = (*(v2 + v11) & 1) == 0;
    sub_1D113C99C();
    v14 = v29;
  }

  else
  {
    sub_1D138F06C();
    v15 = a1;
    v16 = sub_1D138F0AC();
    v17 = sub_1D13907FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v18 = 136315394;
      v19 = sub_1D139184C();
      v21 = sub_1D11DF718(v19, v20, &v30);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = v15;
      v23 = [v22 description];
      v24 = sub_1D139016C();
      v26 = v25;

      v27 = sub_1D11DF718(v24, v26, &v30);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_1D101F000, v16, v17, "[%s] Presenting view controller %s does not conform to SelectAllItemsDelegate", v18, 0x16u);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v28, -1, -1);
      MEMORY[0x1D38882F0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1D113D400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D113D464(uint64_t a1, uint64_t a2)
{
  sub_1D113E794(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  v13 = a2;
  sub_1D113E580(0, &qword_1EC60B708, sub_1D113E844, MEMORY[0x1E69E6720]);
  sub_1D113E968();
  sub_1D138FC5C();
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D138D1CC();
  v15 = v9;
  sub_1D113EAD4(&qword_1EC60B748, sub_1D113E794, MEMORY[0x1E697CD20]);
  sub_1D10940C8();
  sub_1D138FD4C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D113D684@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D113E844(0);
  v7 = v6;
  v21 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 mainRecord];
  if (v11)
  {
    v12 = v11;
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D138D1CC();
    v23 = v13;
    sub_1D10940C8();
    v22 = sub_1D138FCEC();
    v23 = v14;
    v24 = v15 & 1;
    v25 = v16;
    MEMORY[0x1EEE9AC00](v22);
    *(&v20 - 4) = v12;
    *(&v20 - 3) = a1;
    v19 = a2;
    sub_1D113E8AC(0);
    sub_1D113EAD4(&qword_1EC60B740, sub_1D113E8AC, MEMORY[0x1E6981F48]);
    sub_1D138FE8C();

    (*(v21 + 32))(a3, v10, v7);
    return (*(v21 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v18 = *(v21 + 56);

    return v18(a3, 1, 1, v7);
  }
}

double sub_1D113D944@<D0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v65 = a2;
  v5 = sub_1D138D57C();
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC60C0D0;
  v61 = sub_1D138D1CC();
  v64 = v13;
  v14 = [a1 recordIssuerDisplayName];
  v59 = sub_1D139016C();
  v63 = v15;

  v57 = sub_1D138D1CC();
  v62 = v16;
  v17 = sub_1D1331228();
  v18 = [v17 string];

  v56 = sub_1D139016C();
  v60 = v19;

  v50 = v12;
  v54 = sub_1D138D1CC();
  v58 = v20;
  v21 = [a1 issuedDate];
  sub_1D138D52C();

  v22 = sub_1D138D4EC();
  v23 = v55;
  v48 = *(v55 + 8);
  v48(v11, v5);
  v24 = v5;
  v25 = [v65 stringFromDate_];

  v52 = sub_1D139016C();
  v53 = v26;

  v27 = [a1 expirationDate];
  if (v27)
  {
    v28 = v51;
    v29 = v27;
    sub_1D138D52C();

    v30 = v49;
    (*(v23 + 32))(v49, v28, v24);
    v55 = sub_1D138D1CC();
    v51 = v31;
    v32 = sub_1D138D4EC();
    v33 = [v65 &selRef:v32 setEstimatedRowHeight:?];

    v65 = sub_1D139016C();
    v50 = v34;

    v48(v30, v24);
  }

  else
  {
    v55 = 0;
    v50 = 0;
    v51 = 0;
    v65 = 0;
  }

  v35 = v62;
  v37 = v63;
  v36 = v64;
  *a3 = v61;
  a3[1] = v36;
  v38 = v60;
  a3[2] = v59;
  a3[3] = v37;
  v39 = v56;
  a3[4] = v57;
  a3[5] = v35;
  a3[6] = v39;
  a3[7] = v38;
  v40 = v53;
  v41 = v58;
  a3[8] = v54;
  a3[9] = v41;
  v42 = v51;
  a3[10] = v52;
  a3[11] = v40;
  v43 = v55;
  a3[12] = v55;
  a3[13] = v42;
  v44 = v65;
  a3[14] = v65;
  v45 = a3;
  v46 = v50;
  v45[15] = v50;

  sub_1D113EB28(v43, v42, v44, v46);
  sub_1D113EB6C(v43, v42, v44, v46);

  return result;
}

double sub_1D113DE48@<D0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  if (a2)
  {
    sub_1D10940C8();

    v5 = sub_1D138FCEC();
    v7 = v6;
    v9 = v8;
    sub_1D138FBFC();
    v10 = sub_1D138FC9C();
    v12 = v11;
    v14 = v13;

    sub_1D113EE84(v5, v7, v9 & 1);

    sub_1D138FD6C();
    v15 = sub_1D138FC8C();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1D113EE84(v10, v12, v14 & 1);

    sub_1D113EED8(v15, v17, v19 & 1);

    sub_1D113EE84(v15, v17, v19 & 1);

    v45 = v17;
    v46 = v15;
    v43 = v19 & 1;
    sub_1D113EED8(v15, v17, v19 & 1);
    v44 = v21;

    v22 = 0x4020000000000000;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v22 = 0;
  }

  sub_1D10940C8();

  v23 = sub_1D138FCEC();
  v25 = v24;
  v27 = v26;
  sub_1D138FBFC();
  v28 = sub_1D138FC9C();
  v30 = v29;
  v32 = v31;

  sub_1D113EE84(v23, v25, v27 & 1);

  sub_1D138FD5C();
  v33 = sub_1D138FC8C();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1D113EE84(v28, v30, v32 & 1);

  sub_1D113EE94(v46, v45, v43, v44, v40);
  sub_1D113EED8(v33, v35, v37 & 1);

  sub_1D113EEE8(v46, v45, v43, v44);
  *a5 = v46;
  *(a5 + 8) = v45;
  *(a5 + 16) = v43;
  *(a5 + 24) = v44;
  *(a5 + 32) = v22;
  *(a5 + 40) = 0;
  *(a5 + 48) = v33;
  *(a5 + 56) = v35;
  *(a5 + 64) = v37 & 1;
  *(a5 + 72) = v39;
  sub_1D113EE84(v33, v35, v37 & 1);

  return sub_1D113EEE8(v46, v45, v43, v44);
}

double sub_1D113E16C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1D138FACC();
  v16 = 1;
  sub_1D113DE48(v3, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_1D113EC64(&v17, &v9);
  sub_1D113EE28(v22);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 96) = *&v15[79];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_1D113E26C(void *a1)
{
  sub_1D113E580(0, &qword_1EC60B6D8, sub_1D113E54C, MEMORY[0x1E69E6720]);
  sub_1D138FDAC();
  sub_1D112F2A8(0, &qword_1EE06A660, MEMORY[0x1E69E6158]);
  sub_1D138FDAC();
  sub_1D113E630(0, &qword_1EC60B6F0, sub_1D113E690, &type metadata for SignedClinicalDataQRCodeView);
  v3 = objc_allocWithZone(v2);
  v4 = a1;
  return sub_1D138FB6C();
}

id sub_1D113E370(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v2 setDateStyle_];
  [v2 setTimeStyle_];

  sub_1D113E630(0, &qword_1EC60B6C8, sub_1D113E4F8, &type metadata for SignedClinicalDataIssuerDetailView);
  v4 = objc_allocWithZone(v3);
  v5 = a1;
  v6 = sub_1D138FB6C();
  v7 = [v6 navigationItem];
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  return v6;
}

unint64_t sub_1D113E4F8()
{
  result = qword_1EC60B6D0;
  if (!qword_1EC60B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B6D0);
  }

  return result;
}

void sub_1D113E580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D113E5E4()
{
  result = qword_1EC60B6E8;
  if (!qword_1EC60B6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B6E8);
  }

  return result;
}

void sub_1D113E630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D138FB7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D113E690()
{
  result = qword_1EC60B6F8;
  if (!qword_1EC60B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B6F8);
  }

  return result;
}

uint64_t sub_1D113E6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D113E72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D113E794(uint64_t a1)
{
  if (!qword_1EC60B700)
  {
    sub_1D113E580(255, &qword_1EC60B708, sub_1D113E844, MEMORY[0x1E69E6720]);
    sub_1D113E968();
    v1 = sub_1D138FC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B700);
    }
  }
}

void sub_1D113E844(uint64_t a1)
{
  if (!qword_1EC60B710)
  {
    sub_1D113E8AC(255);
    v1 = sub_1D138FE9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B710);
    }
  }
}

void sub_1D113E8E0(uint64_t a1)
{
  if (!qword_1EC60B720)
  {
    sub_1D112F2A8(255, &qword_1EC60B728, &type metadata for BylineCell);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC60B720);
    }
  }
}

unint64_t sub_1D113E968()
{
  result = qword_1EC60B730;
  if (!qword_1EC60B730)
  {
    sub_1D113E580(255, &qword_1EC60B708, sub_1D113E844, MEMORY[0x1E69E6720]);
    sub_1D113EA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B730);
  }

  return result;
}

unint64_t sub_1D113EA10()
{
  result = qword_1EC60B738;
  if (!qword_1EC60B738)
  {
    sub_1D113E844(255);
    sub_1D113EAD4(&qword_1EC60B740, sub_1D113E8AC, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B738);
  }

  return result;
}

uint64_t sub_1D113EAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D113EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

double sub_1D113EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D113EBB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D113EBF8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D113EC64(uint64_t a1, uint64_t a2)
{
  sub_1D113ECC8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D113ECFC(uint64_t a1)
{
  if (!qword_1EC60B758)
  {
    sub_1D113E580(255, &qword_1EC60B760, sub_1D113ED94, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60B758);
    }
  }
}

void sub_1D113EDC8()
{
  if (!qword_1EC60B770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60B770);
    }
  }
}

uint64_t sub_1D113EE28(uint64_t a1)
{
  sub_1D113ECC8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D113EE84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D113EE94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a4)
  {
    sub_1D113EED8(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1D113EED8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1D113EEE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D113EE84(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1D113EF2C(uint64_t a1)
{
  if (!qword_1EC60B780)
  {
    sub_1D113ECC8(255);
    sub_1D113EAD4(&qword_1EC60B788, sub_1D113ECC8, MEMORY[0x1E6981F48]);
    v1 = sub_1D138FDFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B780);
    }
  }
}

uint64_t static NavigationFeedItemIdentifierFactory.make(navigationType:categoryKind:profile:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139EAB0;
  v12 = sub_1D138D98C();
  if (v12)
  {
    v29 = 0x656C69666F72505BLL;
    v30 = 0xE90000000000003ALL;
    v13 = v12;
    v14 = [v13 identifier];
    sub_1D138D5CC();

    v15 = sub_1D138D59C();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    MEMORY[0x1D3885C10](v15, v17);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v19 = v29;
    v18 = v30;
  }

  else
  {
    v13 = 0;
    v18 = 0x80000001D13BBE40;
    v19 = 0xD000000000000013;
  }

  v29 = v19;
  v30 = v18;
  MEMORY[0x1D3885C10](0xD000000000000021, 0x80000001D13BDE40);

  v20 = v30;
  *(v11 + 32) = v29;
  *(v11 + 40) = v20;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D13911EC();

  v29 = 0xD000000000000010;
  v30 = 0x80000001D13BDE70;
  v28 = v9;
  v21 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v21);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v22 = v30;
  *(v11 + 48) = v29;
  *(v11 + 56) = v22;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D13911EC();

  v29 = 0xD000000000000014;
  v30 = 0x80000001D13BDE90;
  v28 = v10;
  v23 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v23);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v24 = v30;
  *(v11 + 64) = v29;
  *(v11 + 72) = v24;
  v29 = v11;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v25 = sub_1D139008C();

  return v25;
}

unint64_t static NavigationFeedItemIdentifierFactory.makePrefixComponent(feedItemKind:)()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t static NavigationFeedItemIdentifierFactory.makeComponent(navigationType:)()
{
  sub_1D13911EC();

  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t static NavigationFeedItemIdentifierFactory.makeComponent(categoryKind:)()
{
  sub_1D13911EC();

  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000014;
}

void sub_1D113F4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D113F558()
{
  v1 = v0;
  v2 = sub_1D138F3FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v24);
  if (!v25)
  {
    return sub_1D10A72B8(v24);
  }

  sub_1D10A7254();
  type metadata accessor for TitleSubtitleDetailItem(0);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v23[1];
    MEMORY[0x1D38864F0]();

    sub_1D138F3BC();

    sub_1D138F29C();
    v9 = *(v8 + 48);
    sub_1D138F33C();
    v10 = objc_opt_self();
    v11 = [v10 secondaryLabelColor];
    v23[0] = v3;
    v12 = sub_1D138F2FC();
    sub_1D138F2DC();
    v12(v24, 0);
    v13 = objc_opt_self();
    v14 = [v13 preferredFontForTextStyle_];
    v15 = sub_1D138F2FC();
    sub_1D138F2CC();
    v15(v24, 0);
    v16 = [v10 labelColor];
    v17 = sub_1D138F34C();
    sub_1D138F2DC();
    v17(v24, 0);
    v18 = [v13 preferredFontForTextStyle_];
    v19 = sub_1D138F34C();
    sub_1D138F2CC();
    v19(v24, 0);
    v20 = v23[0];
    v25 = v2;
    v26 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v20 + 16))(boxed_opaque_existential_1, v5, v2);
    MEMORY[0x1D3886480](v24);

    sub_1D1390B8C();
    if (*(v8 + 72))
    {

      v22 = sub_1D139012C();

      [v1 setAccessibilityIdentifier_];

      return (*(v20 + 8))(v5, v2);
    }

    else
    {
      (*(v20 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t (*sub_1D113FAB0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D113FB14;
}

uint64_t sub_1D113FB2C()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailItem_uuid;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D113FC18(uint64_t a1)
{
  result = sub_1D138D5EC();
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

uint64_t sub_1D113FD44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D113FDB4()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI34TitleSubtitleDetailItemWithSpinner_uuid;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D113FE90(uint64_t a1)
{
  result = sub_1D138D5EC();
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

uint64_t sub_1D113FF80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(a1, a2);
  sub_1D1140F60(a4, v9, a5, a6);
  return sub_1D138DECC();
}

uint64_t sub_1D1140000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D114009C(uint64_t *a1, SEL *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    v10 = [objc_opt_self() *a2];
    [v9 setTextColor_];

    v11 = [objc_opt_self() preferredFontForTextStyle_];
    [v9 setFont_];

    v12 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_1D11401BC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D1140248()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v20);
  if (v21)
  {
    sub_1D10A7254();
    type metadata accessor for TitleSubtitleDetailItemWithSpinner(0);
    if (swift_dynamicCast())
    {
      v2 = sub_1D1140064();

      v3 = sub_1D139012C();

      [v2 setText_];

      v4 = sub_1D1140080();

      v5 = sub_1D139012C();

      [v4 setText_];

      v6 = *(v19 + 56);
      if (v6)
      {
        v7 = *(v19 + 48);
        v8 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___titleLabel);
        sub_1D1086E1C();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D139E710;
        *(v9 + 32) = v7;
        *(v9 + 40) = v6;
        *(v9 + 48) = 0x656C746954;
        *(v9 + 56) = 0xE500000000000000;
        swift_bridgeObjectRetain_n();
        v10 = v8;
        v11 = sub_1D139044C();

        v12 = HKUIJoinStringsForAutomationIdentifier();

        [v10 setAccessibilityIdentifier_];
        v13 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___subtitleLabel);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D139E710;
        *(v14 + 32) = v7;
        *(v14 + 40) = v6;
        *(v14 + 48) = 0x656C746974627553;
        *(v14 + 56) = 0xE800000000000000;
        v15 = v13;
        v16 = sub_1D139044C();

        v17 = HKUIJoinStringsForAutomationIdentifier();

        [v15 setAccessibilityIdentifier_];
      }

      v18 = sub_1D11401BC();
      [v18 startAnimating];
    }
  }

  else
  {
    sub_1D10A72B8(v20);
  }
}

id sub_1D1140500(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner] = 0;
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell_item];
  v10 = type metadata accessor for TitleSubtitleDetailSpinnerCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v22.receiver = v4;
  v22.super_class = v10;
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 secondarySystemGroupedBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v13 contentView];
  v16 = sub_1D1140064();
  [v15 addSubview_];

  v17 = [v13 contentView];
  v18 = sub_1D11401BC();
  [v17 addSubview_];

  v19 = [v13 contentView];
  v20 = sub_1D1140080();
  [v19 addSubview_];

  sub_1D1140790();
  return v13;
}

void sub_1D1140790()
{
  v1 = sub_1D1140064();
  v2 = [v0 contentView];
  [v1 hk:v2 alignHorizontalConstraintsWithView:16.0 margin:?];

  v38 = OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___titleLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___titleLabel) firstBaselineAnchor];
  v4 = [v0 &selRef_batches];
  v5 = [v4 topAnchor];

  v37 = objc_opt_self();
  v6 = [v37 preferredFontForTextStyle_];
  [v6 _scaledValueForValue_];
  v8 = v7;

  v9 = [v3 constraintEqualToAnchor:v5 constant:v8];
  [v9 setActive_];

  v10 = sub_1D11401BC();
  v11 = [v10 leadingAnchor];

  v12 = [v0 &selRef_batches];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  [v14 setActive_];

  v15 = OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner;
  v16 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___spinner) centerYAnchor];
  v17 = sub_1D1140080();
  v18 = [v17 centerYAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  [v19 setActive_];

  v20 = OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___subtitleLabel;
  v21 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30TitleSubtitleDetailSpinnerCell____lazy_storage___subtitleLabel) leadingAnchor];
  v22 = [*(v0 + v15) trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:4.0];

  [v23 setActive_];
  v24 = [*(v0 + v20) firstBaselineAnchor];
  v25 = [*&v38[v0] lastBaselineAnchor];
  v26 = *MEMORY[0x1E69DDCF8];
  v27 = [v37 preferredFontForTextStyle_];
  [v27 _scaledValueForValue_];
  v29 = v28;

  v30 = [v24 constraintEqualToAnchor:v25 constant:v29];
  [v30 setActive_];

  v31 = [*(v0 + v20) lastBaselineAnchor];
  v32 = [v0 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v37 preferredFontForTextStyle_];
  [v34 _scaledValueForValue_];
  v36 = v35;

  v39 = [v31 constraintEqualToAnchor:v33 constant:-v36];
  [v39 &selRef:1 setShouldCancelDataCollection:?];
}

id sub_1D1140C50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D1140D24@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1D10A71C0(v2 + v4, a2);
}

uint64_t sub_1D1140D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *a4;
  swift_beginAccess();
  sub_1D10B1300(a1, v5 + v8);
  v9 = swift_endAccess();
  a5(v9);
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D1140E08(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1140E6C;
}

uint64_t sub_1D1140E84(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1D1140F60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D1140FAC()
{
  v1 = [*v0 dosages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D1141010();
  v3 = sub_1D139045C();

  return v3;
}

unint64_t sub_1D1141010()
{
  result = qword_1EC60B110;
  if (!qword_1EC60B110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B110);
  }

  return result;
}

void sub_1D1141060()
{
  sub_1D1145C84(0);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v44 - v4);
  v6 = *(v0 + 88);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v45 = v11;
  v46 = v6 + 64;
  v44 = v6;
  v47 = v5;
  while (v10)
  {
    v50 = v13;
LABEL_12:
    v15 = __clz(__rbit64(v10)) | (v12 << 6);
    v16 = *(v6 + 56);
    v17 = (*(v6 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = sub_1D138E52C();
    v21 = *(v20 - 8);
    v22 = v16 + *(v21 + 72) * v15;
    v23 = v49;
    (*(v21 + 16))(v5 + *(v49 + 48), v22, v20);
    *v5 = v19;
    v5[1] = v18;
    v24 = v48;
    sub_1D1145CF0(v5, v48);

    v25 = *(v23 + 48);
    v26 = sub_1D138E4EC();
    (*(v21 + 8))(v24 + v25, v20);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 32;
      v29 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D1072E70(v28, v51);
        __swift_project_boxed_opaque_existential_1Tm(v51, v51[3]);
        v30 = sub_1D138DC3C();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D10F7284(0, *(v29 + 2) + 1, 1, v29);
        }

        v34 = *(v29 + 2);
        v33 = *(v29 + 3);
        if (v34 >= v33 >> 1)
        {
          v29 = sub_1D10F7284((v33 > 1), v34 + 1, 1, v29);
        }

        *(v29 + 2) = v34 + 1;
        v35 = &v29[16 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        v28 += 40;
        --v27;
      }

      while (v27);

      v6 = v44;
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v29 + 2);
    v13 = v50;
    v37 = *(v50 + 2);
    v38 = v37 + v36;
    v5 = v47;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v38 <= *(v13 + 3) >> 1)
    {
      if (*(v29 + 2))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v13 = sub_1D10F7284(isUniquelyReferenced_nonNull_native, v40, 1, v13);
      if (*(v29 + 2))
      {
LABEL_30:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v36)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v41 = *(v13 + 2);
          v42 = __OFADD__(v41, v36);
          v43 = v41 + v36;
          if (v42)
          {
            goto LABEL_39;
          }

          *(v13 + 2) = v43;
        }

        goto LABEL_5;
      }
    }

    if (v36)
    {
      goto LABEL_37;
    }

LABEL_5:
    v10 &= v10 - 1;
    sub_1D1145D54(v5);
    v11 = v45;
    v7 = v46;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v50 = v13;
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1D114145C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1D138E52C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = v11;
  *(v3 + 56) = v11;
  *(v3 + 64) = sub_1D109B6E8(v11);
  *(v3 + 72) = sub_1D109AD94(v11);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  swift_bridgeObjectRetain_n();
  sub_1D138E50C();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC15HealthRecordsUI29TimelineViewDataDayCollection_dataSourceSection, v10, v7);
  *(v3 + 80) = v11;
  *(v3 + 88) = sub_1D109B7D4(v11);
  *(v3 + 96) = sub_1D109B9EC(v11);
  return v3;
}

void sub_1D11415B4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = [v6 sourceRevision];

  v8 = [v7 source];
  swift_beginAccess();
  v9 = v2[5];
  *&v121 = v8;
  v113[2] = &v121;

  LOBYTE(v5) = sub_1D10F289C(sub_1D1145BFC, v113, v9);

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v10 = v8;
    MEMORY[0x1D3885D90]();
    if (*((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    swift_endAccess();
  }

  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v3, v11);
  (*(v12 + 24))(v115, v11, v12);
  if (qword_1EE069F78 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v14 = sub_1D12A2F78(), (v15 & 1) != 0))
    {
      v16 = v13[7] + 72 * v14;
      v121 = *v16;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 64);
      v122 = *(v16 + 16);
      v123 = v18;
      v125 = v19;
      v124 = v17;
      swift_endAccess();
      v118 = v123;
      v119 = v124;
      v120 = v125;
      v116 = v121;
      v117 = v122;
      sub_1D1082914(&v121, v114);
    }

    else
    {
      swift_endAccess();
      v20 = [objc_opt_self() unknownRecordCategory];
      if (!v20)
      {
        goto LABEL_88;
      }

      sub_1D123E1C4(v20, &v116);
    }

    v123 = v118;
    v124 = v119;
    v125 = v120;
    v121 = v116;
    v122 = v117;
    v21 = swift_beginAccess();
    v22 = &v105;
    v23 = v2[6];
    v118 = v123;
    v119 = v124;
    v120 = v125;
    v116 = v121;
    v117 = v122;
    MEMORY[0x1EEE9AC00](v21);
    v104[2] = &v116;

    v24 = sub_1D10F1AE8(sub_1D1145C64, v104, v23);

    if ((v24 & 1) == 0)
    {
      swift_beginAccess();
      v25 = v2[6];
      sub_1D1082914(&v121, &v116);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[6] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D10F74B4(0, *(v25 + 2) + 1, 1, v25);
        v2[6] = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D10F74B4((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[72 * v28];
      *(v29 + 2) = v121;
      v30 = v122;
      v31 = v123;
      v32 = v124;
      *(v29 + 12) = v125;
      *(v29 + 4) = v31;
      *(v29 + 5) = v32;
      *(v29 + 3) = v30;
      v2[6] = v25;
      swift_endAccess();
    }

    sub_1D1072E70(v3, v114);
    swift_beginAccess();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v2[8];
    v34 = v116;
    v2[8] = 0x8000000000000000;
    v36 = sub_1D129E04C(v8);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v34 = sub_1D10F7434(0, v34[2] + 1, 1, v34);
      *(v33 + 8 * v22) = v34;
      goto LABEL_34;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if (v33)
      {
        v2[8] = v34;
        if (v35)
        {
          goto LABEL_25;
        }

LABEL_24:
        v43 = sub_1D109DBCC(MEMORY[0x1E69E7CC0]);
        sub_1D13385A0(v36, v8, v43, v34);
        v44 = v8;
        goto LABEL_25;
      }

      sub_1D1181070();
      v34 = v116;
      v2[8] = v116;
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_1D1179FF0(v39, v33);
      v34 = v116;
      v41 = sub_1D129E04C(v8);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_90;
      }

      v36 = v41;
      v2[8] = v34;
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v106 = v8;
    v45 = v34[7];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = *(v45 + 8 * v36);
    v34 = v116;
    *(v45 + 8 * v36) = 0x8000000000000000;
    v22 = sub_1D129DF64(&v121);
    v47 = v34[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_61;
    }

    v50 = v46;
    if (v34[3] >= v49)
    {
      if ((v33 & 1) == 0)
      {
        sub_1D1180E98();
        v34 = v116;
      }
    }

    else
    {
      sub_1D1179A7C(v49, v33);
      v34 = v116;
      v51 = sub_1D129DF64(&v121);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_91;
      }

      v22 = v51;
    }

    *(v45 + 8 * v36) = v34;

    v53 = *(v45 + 8 * v36);
    if ((v50 & 1) == 0)
    {
      sub_1D1338540(v22, &v121, MEMORY[0x1E69E7CC0], *(v45 + 8 * v36));
      sub_1D1082914(&v121, &v116);
    }

    v33 = *(v53 + 56);
    v34 = *(v33 + 8 * v22);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v22) = v34;
    if ((v54 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_34:
    v56 = v34[2];
    v55 = v34[3];
    if (v56 >= v55 >> 1)
    {
      v34 = sub_1D10F7434((v55 > 1), v56 + 1, 1, v34);
      *(v33 + 8 * v22) = v34;
    }

    v34[2] = v56 + 1;
    sub_1D102CC18(v114, &v34[5 * v56 + 4]);
    swift_endAccess();
    v57 = *(v3 + 24);
    v58 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1Tm(v3, v57);
    v107 = (*(v58 + 56))(v57, v58);
    if (!v107)
    {

      sub_1D1080D98(&v121);
      return;
    }

    v59 = [v107 FHIRIdentifier];
    if (!v59)
    {

      sub_1D1080D98(&v121);
      v79 = v107;
LABEL_84:

      return;
    }

    v60 = v59;
    v61 = [v59 identifier];

    v111 = sub_1D139016C();
    v112 = v62;

    v63 = [v107 results];
    if (!v63)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_68;
    }

    v64 = v63;
    sub_1D106F934(0, &qword_1EC60B898, 0x1E696C138);
    v3 = sub_1D139045C();

    if (v3 >> 62)
    {
      break;
    }

    v65 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v65)
    {
      goto LABEL_66;
    }

LABEL_41:
    v66 = 0;
    v109 = v3 & 0xFFFFFFFFFFFFFF8;
    v110 = v3 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC0];
    v108 = v2;
    while (1)
    {
      if (v110)
      {
        v67 = MEMORY[0x1D3886B70](v66, v3);
      }

      else
      {
        if (v66 >= *(v109 + 16))
        {
          goto LABEL_58;
        }

        v67 = *(v3 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      v70 = v65;
      v71 = [v67 identifier];
      v72 = sub_1D139016C();
      v74 = v73;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D10F7284(0, *(v8 + 2) + 1, 1, v8);
      }

      v76 = *(v8 + 2);
      v75 = *(v8 + 3);
      if (v76 >= v75 >> 1)
      {
        v8 = sub_1D10F7284((v75 > 1), v76 + 1, 1, v8);
      }

      *(v8 + 2) = v76 + 1;
      v77 = &v8[16 * v76];
      *(v77 + 4) = v72;
      *(v77 + 5) = v74;
      ++v66;
      v65 = v70;
      v78 = v69 == v70;
      v2 = v108;
      if (v78)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v65 = sub_1D13910DC();
  if (v65)
  {
    goto LABEL_41;
  }

LABEL_66:
  v8 = MEMORY[0x1E69E7CC0];
LABEL_67:

LABEL_68:
  v110 = *(v8 + 2);
  if (!v110)
  {
LABEL_83:

    sub_1D1080D98(&v121);
    v79 = v106;
    goto LABEL_84;
  }

  v80 = 0;
  v81 = (v8 + 40);
  while (2)
  {
    if (v80 < *(v8 + 2))
    {
      v87 = *(v81 - 1);
      v86 = *v81;
      swift_beginAccess();

      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v114[0] = v2[9];
      v89 = *&v114[0];
      v2[9] = 0x8000000000000000;
      v90 = sub_1D11362EC(v87, v86);
      v92 = *(v89 + 16);
      v93 = (v91 & 1) == 0;
      v94 = __OFADD__(v92, v93);
      v95 = v92 + v93;
      if (v94)
      {
        goto LABEL_86;
      }

      v96 = v91;
      if (*(v89 + 24) >= v95)
      {
        if (v88)
        {
          goto LABEL_78;
        }

        v103 = v90;
        sub_1D1180D10();
        v90 = v103;
        if (v96)
        {
          goto LABEL_70;
        }

LABEL_79:
        v83 = *&v114[0];
        *(*&v114[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v98 = (v83[6] + 16 * v90);
        *v98 = v87;
        v98[1] = v86;
        v99 = (v83[7] + 16 * v90);
        v100 = v112;
        *v99 = v111;
        v99[1] = v100;
        v101 = v83[2];
        v94 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v94)
        {
          goto LABEL_87;
        }

        v83[2] = v102;
      }

      else
      {
        sub_1D11797AC(v95, v88);
        v90 = sub_1D11362EC(v87, v86);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_89;
        }

LABEL_78:
        if ((v96 & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_70:
        v82 = v90;

        v83 = *&v114[0];
        v84 = (*(*&v114[0] + 56) + 16 * v82);
        v85 = v112;
        *v84 = v111;
        v84[1] = v85;
      }

      ++v80;
      v2[9] = v83;
      swift_endAccess();
      v81 += 2;
      if (v110 == v80)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  sub_1D13916CC();
  __break(1u);
LABEL_90:
  sub_1D106F934(0, &qword_1EC609E10, 0x1E696C4A0);
  sub_1D13916CC();
  __break(1u);
LABEL_91:
  sub_1D13916CC();
  __break(1u);
}

void sub_1D1142090()
{
  sub_1D1145B30(0, &qword_1EC60B800, type metadata accessor for MedicalRecordTimelineChartValueItemCell, type metadata accessor for MedicalRecordTimelineChartValueItem);
  v238 = v1;
  *&v265 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v237 = &v208 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v236 = &v208 - v4;
  sub_1D1145B30(0, &qword_1EC60B808, type metadata accessor for MedicalRecordTimelineItemCell, type metadata accessor for MedicalRecordTimelineItem);
  v224 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v223 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v222 = &v208 - v9;
  sub_1D1145B30(0, &qword_1EC60B810, type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell, type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItem);
  v221 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v220 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v208 - v14;
  v256 = sub_1D138DC8C();
  MEMORY[0x1EEE9AC00](v256);
  v253 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1145B30(0, &qword_1EC60B818, type metadata accessor for MedicalRecordTimelineUnknownItemCell, type metadata accessor for MedicalRecordTimelineUnknownItem);
  v235 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v233 = &v208 - v20;
  sub_1D1145B30(0, &qword_1EC60B820, type metadata accessor for MedicalRecordTimelineHeaderItemCell, type metadata accessor for MedicalRecordTimelineHeaderItem);
  v246 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v245 = &v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v244 = &v208 - v25;
  v26 = MEMORY[0x1E69E7CC0];
  v299 = MEMORY[0x1E69E7CC0];
  v27 = sub_1D109B7D4(MEMORY[0x1E69E7CC0]);
  v298 = v27;
  isUniquelyReferenced_nonNull_native = sub_1D109B9EC(v26);
  v297 = isUniquelyReferenced_nonNull_native;
  swift_beginAccess();
  v266 = v0;
  v29 = *(v0 + 40);
  if (v29 >> 62)
  {
    goto LABEL_120;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  swift_beginAccess();
  swift_beginAccess();
  v227 = v30;
  if (!v30)
  {
    v207 = v266;
    v206 = MEMORY[0x1E69E7CC0];
    goto LABEL_112;
  }

  v31 = 0;
  v248 = v29 + 32;
  v249 = v29 & 0xFFFFFFFFFFFFFF8;
  v242 = (v22 + 8);
  v243 = (v22 + 16);
  v231 = (v265 + 8);
  v232 = (v265 + 16);
  v217 = (v6 + 8);
  v218 = (v6 + 16);
  v6 = v29 & 0xC000000000000001;
  v215 = (v11 + 8);
  v216 = (v11 + 16);
  v229 = (v17 + 8);
  v230 = (v17 + 16);
  v17 = &v268;
  v247 = xmmword_1D13A3120;
  v241 = xmmword_1D13A3110;
  v240 = xmmword_1D139EAB0;
  v252 = xmmword_1D139E700;
  isUniquelyReferenced_nonNull_native = v266;
  v11 = v227;
  v225 = v29 & 0xC000000000000001;
  v226 = v29;
  while (v6)
  {
    v32 = MEMORY[0x1D3886B70](v31, v29);
    v33 = __OFADD__(v31++, 1);
    if (v33)
    {
      goto LABEL_109;
    }

LABEL_11:
    v27 = *(isUniquelyReferenced_nonNull_native + 64);
    if (*(v27 + 16))
    {
      v22 = v32;

      v258 = v22;
      v34 = sub_1D129E04C(v22);
      if (v35)
      {
        v239 = v31;
        v36 = *(*(v27 + 56) + 8 * v34);

        v11 = *(*(isUniquelyReferenced_nonNull_native + 48) + 16);
        v263 = *(isUniquelyReferenced_nonNull_native + 48);

        v262 = v11;
        if (v11)
        {
          v37 = 0;
          v228 = v263 + 32;
          v213 = v262 - 1;
          v214 = v36;
          LODWORD(v257) = 1;
LABEL_15:
          v6 = v228 + 72 * v37;
          while (v37 < *(v263 + 16))
          {
            v295[0] = *v6;
            v38 = *(v6 + 16);
            v39 = *(v6 + 32);
            v40 = *(v6 + 48);
            v296 = *(v6 + 64);
            v295[2] = v39;
            v295[3] = v40;
            v295[1] = v38;
            memmove(__dst, v6, 0x48uLL);
            if (*(v36 + 16))
            {
              sub_1D1082914(v295, &v276);
              v41 = sub_1D129DF64(__dst);
              if (v42)
              {
                v11 = *(*(v36 + 56) + 8 * v41);

                v43 = MEMORY[0x1E69E7CC0];
                v259 = sub_1D109BB00(MEMORY[0x1E69E7CC0]);
                v254 = sub_1D109BC14(v43);
                v294 = v254;
                v293 = v43;
                v260 = *(v11 + 16);
                swift_beginAccess();
                v44 = 0;
                v261 = v11;
                v255 = v11 + 32;
                v212 = v37 + 1;
                while (1)
                {
                  v45 = 0uLL;
                  v46 = v260;
                  v47 = 0uLL;
                  v48 = 0uLL;
                  if (v44 != v260)
                  {
                    if (v44 >= *(v261 + 16))
                    {
                      goto LABEL_114;
                    }

                    v46 = v44 + 1;
                    *&v276 = v44;
                    sub_1D1072E70(v255 + 40 * v44, &v276 + 8);
                    v45 = v276;
                    v47 = v277;
                    v48 = v278;
                  }

                  v292[0] = v45;
                  v292[1] = v47;
                  v292[2] = v48;
                  if (!v48)
                  {

                    sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
                    v197 = swift_allocObject();
                    *(v197 + 16) = v247;
                    *(v197 + 32) = 0x746E65746E6F63;
                    *(v197 + 40) = 0xE700000000000000;
                    v198 = *(isUniquelyReferenced_nonNull_native + 24);
                    *(v197 + 48) = *(isUniquelyReferenced_nonNull_native + 16);
                    *(v197 + 56) = v198;

                    v199 = [v258 name];
                    v200 = sub_1D139016C();
                    v202 = v201;

                    *(v197 + 64) = v200;
                    *(v197 + 72) = v202;
                    v17 = &v268;
                    isUniquelyReferenced_nonNull_native = v266;
                    v302 = v301;
                    *(v197 + 80) = v301;
                    *&v268 = v197;
                    sub_1D1144324(&v302, &v276);
                    sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
                    sub_1D10F73A8();
                    v203 = sub_1D139008C();
                    v11 = v204;

                    sub_1D1144380(v203, v11, v293, &v299, &v298, &v297);
                    sub_1D1080D98(__dst);
                    v36 = v214;

                    v205 = v213 == v37;
                    v37 = v212;
                    if (v205)
                    {
                      goto LABEL_106;
                    }

                    goto LABEL_15;
                  }

                  v265 = v45;
                  sub_1D102CC18((v292 + 8), v289);
                  v264 = v46;
                  if (!v265)
                  {
                    if (v257)
                    {
                      if (*(isUniquelyReferenced_nonNull_native + 32) == 1)
                      {
                        v50 = 0;
                        v52 = 0;
                      }

                      else
                      {
                        v49 = [v258 name];
                        v50 = sub_1D139016C();
                        v52 = v51;
                      }

                      v250 = v52;
                      v53 = *(isUniquelyReferenced_nonNull_native + 16);
                      v54 = *(isUniquelyReferenced_nonNull_native + 24);
                      v29 = type metadata accessor for MedicalRecordTimelineHeaderItem(0);
                      v55 = swift_allocObject();
                      sub_1D138D5DC();
                      v56 = (v55 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordTimelineHeaderItem_reuseIdentifier);
                      type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
                      sub_1D114596C(&qword_1EC60B860, type metadata accessor for MedicalRecordTimelineHeaderItemCell, &unk_1D13AF688);
                      *v56 = sub_1D138DECC();
                      v56[1] = v57;
                      v251 = v53;
                      *(v55 + 16) = v53;
                      *(v55 + 24) = v54;
                      *(v55 + 32) = v50;
                      *(v55 + 40) = v52;
                      *(v55 + 48) = 0;
                      *(v55 + 56) = 0;
                      *(v55 + 64) = 0;
                      *(v55 + 72) = v53;
                      *(v55 + 80) = v54;
                      *(v55 + 88) = 0x6C74695465746144;
                      *(v55 + 96) = 0xE900000000000065;
                      *(v55 + 104) = v241;

                      swift_bridgeObjectRetain_n();
                      v58 = v244;
                      sub_1D13908EC();
                      v27 = v246;
                      (*v243)(v245, v58, v246);
                      v257 = sub_1D114596C(&qword_1EC60B858, type metadata accessor for MedicalRecordTimelineHeaderItem, &unk_1D13AF6D8);
                      sub_1D138DCAC();
                      (*v242)(v58, v27);
                      v59 = v266;
                      swift_storeEnumTagMultiPayload();

                      sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
                      v60 = swift_allocObject();
                      *(v60 + 16) = v240;
                      *(v60 + 32) = 0x726564616568;
                      v61 = v251;
                      *(v60 + 40) = 0xE600000000000000;
                      *(v60 + 48) = v61;
                      *(v60 + 56) = v54;

                      v62 = [v258 name];
                      v63 = sub_1D139016C();
                      v65 = v64;

                      *(v60 + 64) = v63;
                      *(v60 + 72) = v65;
                      *&v276 = v60;
                      sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
                      sub_1D10F73A8();
                      v66 = sub_1D139008C();
                      v68 = v67;

                      sub_1D1145AC0(0, &qword_1EC60B640, MEMORY[0x1E69E6F90]);
                      v69 = swift_allocObject();
                      *(v69 + 16) = v252;
                      v70 = v257;
                      *(v69 + 56) = v29;
                      *(v69 + 64) = v70;
                      *(v69 + 32) = v55;

                      sub_1D1144380(v66, v68, v69, &v299, &v298, &v297);

                      isUniquelyReferenced_nonNull_native = v59;

                      v17 = &v268;
                    }

                    if (*(isUniquelyReferenced_nonNull_native + 32) <= 1u)
                    {
                      v71 = v290;
                      v72 = v291;
                      __swift_project_boxed_opaque_existential_1Tm(v289, v290);
                      (*(v72 + 24))(&v276, v71, v72);
                      v73 = *(isUniquelyReferenced_nonNull_native + 16);
                      v74 = *(isUniquelyReferenced_nonNull_native + 24);
                      v75 = sub_1D11449F0(&v276, v73, v74);
                      sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
                      v76 = swift_allocObject();
                      *(v76 + 16) = v247;
                      *(v76 + 32) = 0x726564616568;
                      *(v76 + 40) = 0xE600000000000000;
                      *(v76 + 48) = v73;
                      *(v76 + 56) = v74;

                      v77 = [v258 name];
                      v78 = sub_1D139016C();
                      v80 = v79;

                      *(v76 + 64) = v78;
                      *(v76 + 72) = v80;
                      v81 = v75[3];
                      *(v76 + 80) = v75[2];
                      *(v76 + 88) = v81;
                      *&v276 = v76;
                      sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
                      sub_1D10F73A8();

                      v27 = sub_1D139008C();
                      v83 = v82;

                      sub_1D1145AC0(0, &qword_1EC60B640, MEMORY[0x1E69E6F90]);
                      v84 = swift_allocObject();
                      *(v84 + 16) = v252;
                      *(v84 + 56) = type metadata accessor for MedicalRecordTimelineHeaderItem(0);
                      *(v84 + 64) = sub_1D114596C(&qword_1EC60B858, type metadata accessor for MedicalRecordTimelineHeaderItem, &unk_1D13AF6D8);
                      *(v84 + 32) = v75;

                      sub_1D1144380(v27, v83, v84, &v299, &v298, &v297);
                    }

                    LODWORD(v257) = 0;
                  }

                  v85 = v290;
                  v6 = v291;
                  __swift_project_boxed_opaque_existential_1Tm(v289, v290);
                  v86 = (*(v6 + 56))(v85, v6);
                  if (!v86 || (v86, v11 = v290, v6 = v291, __swift_project_boxed_opaque_existential_1Tm(v289, v290), v87 = (*(v6 + 64))(v11, v6), !v88))
                  {
                    isUniquelyReferenced_nonNull_native = v266;
                    v22 = *(v266 + 32);
                    sub_1D1072E70(v289, v284);
                    sub_1D1080EA4(0, &qword_1EC609E28, &protocol descriptor for TimelineViewData);
                    if (swift_dynamicCast())
                    {
                      v273 = v281;
                      v274 = v282;
                      v268 = v276;
                      v269 = v277;
                      v270 = v278;
                      v275 = v283;
                      v271 = v279;
                      v272 = v280;
                      v95 = v290;
                      v96 = v291;
                      __swift_project_boxed_opaque_existential_1Tm(v289, v290);
                      (*(v96 + 24))(v267, v95, v96);
                      if (LOBYTE(v267[0]) == 8)
                      {
                        v97 = type metadata accessor for MedicalRecordTimelineUnknownItem(0);
                        v98 = swift_allocObject();
                        v99 = (v98 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_reuseIdentifier);
                        type metadata accessor for MedicalRecordTimelineUnknownItemCell(0);
                        sub_1D1116114(&v268, v267);
                        sub_1D114596C(&qword_1EC60A920, type metadata accessor for MedicalRecordTimelineUnknownItemCell, &unk_1D13B4A28);
                        *v99 = sub_1D138DECC();
                        v99[1] = v100;
                        v101 = v98 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData;
                        v102 = v269;
                        v103 = v271;
                        v104 = v272;
                        *(v101 + 32) = v270;
                        *(v101 + 48) = v103;
                        *v101 = v268;
                        *(v101 + 16) = v102;
                        v105 = v274;
                        *(v101 + 80) = v273;
                        *(v101 + 96) = v105;
                        *(v101 + 112) = v275;
                        *(v101 + 64) = v104;
                        v29 = v233;
                        sub_1D13908EC();
                        v17 = v235;
                        (*v230)(v234, v29, v235);
                        v106 = sub_1D114596C(&qword_1EC60B850, type metadata accessor for MedicalRecordTimelineUnknownItem, &unk_1D13B4A78);
                        v27 = v253;
                        v107 = v266;
                        sub_1D138DCAC();
                        (*v229)(v29, v17);
                        swift_storeEnumTagMultiPayload();
                        v108 = v98 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_cellResolution;
                        v109 = v27;
                        goto LABEL_53;
                      }

                      if (v22 == 3)
                      {
                        v97 = type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItem(0);
                        v98 = swift_allocObject();
                        v121 = (v98 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_reuseIdentifier);
                        type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell(0);
                        sub_1D1116114(&v268, v267);
                        sub_1D114596C(&qword_1EC60B840, type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell, &unk_1D13A6120);
                        *v121 = sub_1D138DECC();
                        v121[1] = v122;
                        v123 = v98 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData;
                        v124 = v269;
                        v125 = v271;
                        v126 = v272;
                        *(v123 + 32) = v270;
                        *(v123 + 48) = v125;
                        *v123 = v268;
                        *(v123 + 16) = v124;
                        v127 = v274;
                        *(v123 + 80) = v273;
                        *(v123 + 96) = v127;
                        *(v123 + 112) = v275;
                        *(v123 + 64) = v126;
                        v29 = v219;
                        sub_1D13908EC();
                        v27 = v221;
                        (*v216)(v220, v29, v221);
                        v106 = sub_1D114596C(&qword_1EC60B848, type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItem, &unk_1D13A6170);
                        v17 = v253;
                        v107 = v266;
                        sub_1D138DCAC();
                        (*v215)(v29, v27);
                        swift_storeEnumTagMultiPayload();
                        v108 = v98 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_cellResolution;
                        v109 = v17;
LABEL_53:
                        sub_1D11459B4(v109, v108);
                        *(&v286 + 1) = v97;
                        v287 = v106;
                        sub_1D1145A6C(&v268);
                        *&v285 = v98;
                      }

                      else
                      {
                        v128 = type metadata accessor for MedicalRecordTimelineItem(0);
                        v129 = swift_allocObject();
                        v130 = v129 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData;
                        v131 = v273;
                        v132 = v274;
                        v133 = v271;
                        *(v130 + 64) = v272;
                        *(v130 + 80) = v131;
                        *(v130 + 96) = v132;
                        v134 = v269;
                        v135 = v270;
                        *v130 = v268;
                        *(v130 + 16) = v134;
                        *(v130 + 112) = v275;
                        *(v130 + 32) = v135;
                        *(v130 + 48) = v133;
                        sub_1D1116114(&v268, v267);
                        type metadata accessor for MedicalRecordTimelineItemCell(0);
                        v29 = v222;
                        sub_1D13908EC();
                        v17 = OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_cellResolution;
                        v27 = v224;
                        (*v218)(v223, v29, v224);
                        v136 = sub_1D114596C(&qword_1EC60B838, type metadata accessor for MedicalRecordTimelineItem, &unk_1D13ACCAC);
                        sub_1D138DCAC();
                        (*v217)(v29, v27);
                        v107 = v266;
                        swift_storeEnumTagMultiPayload();
                        *(&v286 + 1) = v128;
                        v287 = v136;
                        sub_1D1145A6C(&v268);
                        *&v285 = v129;
                      }

LABEL_56:
                      sub_1D102CC18(&v285, v288);
                      v137 = v290;
                      v138 = v291;
                      __swift_project_boxed_opaque_existential_1Tm(v289, v290);
                      v139 = (*(v138 + 64))(v137, v138);
                      if (v140)
                      {
                        v141 = v140;
                        v142 = *(v107 + 72);
                        if (*(v142 + 16))
                        {
                          v143 = v139;

                          v144 = sub_1D11362EC(v143, v141);
                          v11 = v145;

                          if (v11)
                          {
                            v146 = (*(v142 + 56) + 16 * v144);
                            v22 = *v146;
                            v6 = v146[1];

                            sub_1D1072E70(v288, &v276);
                            v147 = v259;
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *&v268 = v147;
                            v148 = sub_1D11362EC(v22, v6);
                            v150 = v147[2];
                            v151 = (v149 & 1) == 0;
                            v33 = __OFADD__(v150, v151);
                            v152 = v150 + v151;
                            if (v33)
                            {
                              goto LABEL_118;
                            }

                            v27 = v149;
                            if (v147[3] >= v152)
                            {
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                v11 = v148;
                                sub_1D1181618();
                                v148 = v11;
                              }
                            }

                            else
                            {
                              sub_1D117A8DC(v152, isUniquelyReferenced_nonNull_native);
                              v148 = sub_1D11362EC(v22, v6);
                              if ((v27 & 1) != (v153 & 1))
                              {
                                goto LABEL_122;
                              }
                            }

                            v259 = v268;
                            if (v27)
                            {
                              v162 = v148;

                              v163 = v259;
                              v148 = v162;
                            }

                            else
                            {
                              *(v268 + 8 * (v148 >> 6) + 64) |= 1 << v148;
                              v164 = (v259[6] + 16 * v148);
                              *v164 = v22;
                              v164[1] = v6;
                              *(v259[7] + 8 * v148) = MEMORY[0x1E69E7CC0];
                              v163 = v259;
                              v165 = v259[2];
                              v33 = __OFADD__(v165, 1);
                              v166 = v165 + 1;
                              if (v33)
                              {
                                goto LABEL_119;
                              }

                              v259[2] = v166;
                            }

                            v167 = (v163[7] + 8 * v148);
                            v168 = *v167;
                            v169 = swift_isUniquelyReferenced_nonNull_native();
                            *v167 = v168;
                            if ((v169 & 1) == 0)
                            {
                              v168 = sub_1D10F75F4(0, v168[2] + 1, 1, v168);
                              *v167 = v168;
                            }

                            v6 = v168[2];
                            v170 = v168[3];
                            if (v6 >= v170 >> 1)
                            {
                              *v167 = sub_1D10F75F4((v170 > 1), v6 + 1, 1, v168);
                            }

                            __swift_destroy_boxed_opaque_existential_1Tm(v288);
                            v171 = *(&v277 + 1);
                            v22 = v278;
                            v172 = __swift_mutable_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
                            v173 = MEMORY[0x1EEE9AC00](v172);
                            v27 = &v208 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
                            (*(v175 + 16))(v27, v173);
                            sub_1D125DA54(v6, v27, v167, v171, v22);
                            __swift_destroy_boxed_opaque_existential_1Tm(&v276);
LABEL_69:
                            isUniquelyReferenced_nonNull_native = v266;
                            v17 = &v268;
LABEL_70:
                            v11 = v264;
                            v161 = v265;
                            goto LABEL_102;
                          }
                        }
                      }

                      sub_1D1072E70(v288, &v276);
                      v154 = v293;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v154 = sub_1D10F75F4(0, v154[2] + 1, 1, v154);
                        v293 = v154;
                      }

                      v6 = v154[2];
                      v155 = v154[3];
                      if (v6 >= v155 >> 1)
                      {
                        v154 = sub_1D10F75F4((v155 > 1), v6 + 1, 1, v154);
                        v293 = v154;
                      }

                      __swift_destroy_boxed_opaque_existential_1Tm(v288);
                      v156 = *(&v277 + 1);
                      v22 = v278;
                      v157 = __swift_mutable_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
                      v158 = MEMORY[0x1EEE9AC00](v157);
                      v27 = &v208 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
                      (*(v160 + 16))(v27, v158);
                      sub_1D125DA54(v6, v27, &v293, v156, v22);
                      __swift_destroy_boxed_opaque_existential_1Tm(&v276);
                      v293 = v154;
                      goto LABEL_69;
                    }

                    sub_1D1072E70(v289, v284);
                    if (swift_dynamicCast())
                    {
                      v271 = v279;
                      v272 = v280;
                      v273 = v281;
                      v268 = v276;
                      v269 = v277;
                      v270 = v278;
                      v110 = type metadata accessor for MedicalRecordTimelineChartValueItem(0);
                      v111 = swift_allocObject();
                      v112 = (v111 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_reuseIdentifier);
                      type metadata accessor for MedicalRecordTimelineChartValueItemCell(0);
                      sub_1D1145910(&v268, v267);
                      sub_1D114596C(&qword_1EC60B828, type metadata accessor for MedicalRecordTimelineChartValueItemCell, &unk_1D13A8324);
                      *v112 = sub_1D138DECC();
                      v112[1] = v113;
                      v114 = (v111 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_viewData);
                      v115 = v269;
                      v116 = v270;
                      *v114 = v268;
                      v114[1] = v115;
                      v117 = v273;
                      v118 = v271;
                      v114[4] = v272;
                      v114[5] = v117;
                      v114[2] = v116;
                      v114[3] = v118;
                      v29 = v236;
                      sub_1D13908EC();
                      v27 = v238;
                      (*v232)(v237, v29, v238);
                      v119 = sub_1D114596C(&qword_1EC60B830, type metadata accessor for MedicalRecordTimelineChartValueItem, &unk_1D13A83B4);
                      v17 = v253;
                      v107 = v266;
                      sub_1D138DCAC();
                      (*v231)(v29, v27);
                      swift_storeEnumTagMultiPayload();
                      sub_1D11459B4(v17, v111 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineChartValueItem_cellResolution);
                      *(&v286 + 1) = v110;
                      v287 = v119;
                      sub_1D1145A18(&v268);
                      *&v285 = v111;
                      goto LABEL_56;
                    }

                    v285 = 0u;
                    v286 = 0u;
                    v287 = 0;
                    sub_1D1144978(&v285, 0);
                    goto LABEL_70;
                  }

                  v29 = v87;
                  isUniquelyReferenced_nonNull_native = v88;
                  sub_1D1072E70(v289, &v276);
                  v22 = v294;
                  v17 = swift_isUniquelyReferenced_nonNull_native();
                  v267[0] = v22;
                  v27 = sub_1D11362EC(v29, isUniquelyReferenced_nonNull_native);
                  v90 = *(v22 + 16);
                  v91 = (v89 & 1) == 0;
                  v92 = v90 + v91;
                  if (__OFADD__(v90, v91))
                  {
                    goto LABEL_115;
                  }

                  v6 = v89;
                  if (*(v22 + 24) >= v92)
                  {
                    v11 = v264;
                    if (v17)
                    {
                      v17 = &v268;
                      if ((v89 & 1) == 0)
                      {
                        goto LABEL_99;
                      }
                    }

                    else
                    {
                      sub_1D109F58C(0);
                      v254 = sub_1D139141C();
                      v17 = &v268;
                      if (*(v22 + 16))
                      {
                        v176 = (v254 + 64);
                        v177 = (v22 + 64);
                        v178 = ((1 << *(v254 + 32)) + 63) >> 6;
                        v209 = v22 + 64;
                        if (v254 != v22 || v176 >= &v177[8 * v178])
                        {
                          memmove(v176, v177, 8 * v178);
                        }

                        v179 = 0;
                        *(v254 + 16) = *(v22 + 16);
                        v180 = 1 << *(v22 + 32);
                        if (v180 < 64)
                        {
                          v181 = ~(-1 << v180);
                        }

                        else
                        {
                          v181 = -1;
                        }

                        v182 = v181 & *(v22 + 64);
                        v183 = (v180 + 63) >> 6;
                        v210 = v183;
                        if (v182)
                        {
                          do
                          {
                            v184 = __clz(__rbit64(v182));
                            v251 = (v182 - 1) & v182;
LABEL_96:
                            v187 = v184 | (v179 << 6);
                            v211 = 16 * v187;
                            v188 = *(v22 + 56);
                            v189 = (*(v22 + 48) + 16 * v187);
                            v190 = v189[1];
                            v250 = *v189;
                            v191 = 40 * v187;
                            sub_1D1072E70(v188 + 40 * v187, &v268);
                            v192 = v254;
                            v193 = (*(v254 + 48) + v211);
                            *v193 = v250;
                            v193[1] = v190;
                            sub_1D102CC18(&v268, *(v192 + 56) + v191);

                            v17 = &v268;
                            v11 = v264;
                            v183 = v210;
                            v182 = v251;
                          }

                          while (v251);
                        }

                        v185 = v179;
                        while (1)
                        {
                          v179 = v185 + 1;
                          if (__OFADD__(v185, 1))
                          {
                            break;
                          }

                          if (v179 >= v183)
                          {
                            goto LABEL_98;
                          }

                          v186 = *(v209 + 8 * v179);
                          ++v185;
                          if (v186)
                          {
                            v184 = __clz(__rbit64(v186));
                            v251 = (v186 - 1) & v186;
                            goto LABEL_96;
                          }
                        }

                        __break(1u);
LABEL_122:
                        sub_1D13916CC();
                        __break(1u);
                        return;
                      }

LABEL_98:

                      v22 = v254;
                      if ((v6 & 1) == 0)
                      {
LABEL_99:
                        *(v22 + 8 * (v27 >> 6) + 64) |= 1 << v27;
                        v194 = (*(v22 + 48) + 16 * v27);
                        *v194 = v29;
                        v194[1] = isUniquelyReferenced_nonNull_native;
                        sub_1D102CC18(&v276, *(v22 + 56) + 40 * v27);
                        v195 = *(v22 + 16);
                        v33 = __OFADD__(v195, 1);
                        v196 = v195 + 1;
                        if (v33)
                        {
                          goto LABEL_117;
                        }

                        *(v22 + 16) = v196;
                        goto LABEL_101;
                      }
                    }
                  }

                  else
                  {
                    sub_1D117A8F4(v92, v17);
                    v22 = v267[0];
                    v93 = sub_1D11362EC(v29, isUniquelyReferenced_nonNull_native);
                    v11 = v264;
                    if ((v6 & 1) != (v94 & 1))
                    {
                      goto LABEL_122;
                    }

                    v27 = v93;
                    v17 = &v268;
                    if ((v6 & 1) == 0)
                    {
                      goto LABEL_99;
                    }
                  }

                  v120 = (*(v22 + 56) + 40 * v27);
                  __swift_destroy_boxed_opaque_existential_1Tm(v120);
                  sub_1D102CC18(&v276, v120);
LABEL_101:
                  v254 = v22;
                  v294 = v22;
                  v161 = v265;
                  isUniquelyReferenced_nonNull_native = v266;
LABEL_102:
                  if (v161 == *(v261 + 16) - 1)
                  {
                    sub_1D1144E0C(v259, &v294, &v293);
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(v289);
                  v44 = v11;
                }
              }
            }

            else
            {
              sub_1D1082914(v295, &v276);
            }

            ++v37;
            sub_1D1080D98(__dst);
            v6 += 72;
            if (v262 == v37)
            {
              goto LABEL_106;
            }
          }

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
          v30 = sub_1D13910DC();
          goto LABEL_3;
        }

LABEL_106:

        v29 = v226;
        v11 = v227;
        v31 = v239;
        v6 = v225;
      }

      else
      {
      }

      v32 = v258;
    }

    if (v31 == v11)
    {
      goto LABEL_110;
    }
  }

  if (v31 >= *(v249 + 16))
  {
    goto LABEL_116;
  }

  v32 = *(v248 + 8 * v31);
  v33 = __OFADD__(v31++, 1);
  if (!v33)
  {
    goto LABEL_11;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  v27 = v298;
  v206 = v299;
  v207 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = v297;
LABEL_112:

  v207[10] = v206;

  v207[11] = v27;

  v207[12] = isUniquelyReferenced_nonNull_native;
}

char *sub_1D1144018()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI29TimelineViewDataDayCollection_dataSourceSection;
  v2 = sub_1D138E52C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D11440C0()
{
  sub_1D1144018();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimelineViewDataDayCollection(uint64_t a1)
{
  result = qword_1EC60B7E8;
  if (!qword_1EC60B7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D114416C(uint64_t a1)
{
  result = sub_1D138E52C();
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

uint64_t sub_1D114422C()
{
  sub_1D139177C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D1144280(uint64_t a1)
{
  sub_1D139177C();

  sub_1D139027C();

  return sub_1D13917CC();
}

void sub_1D1144380(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, void *a5, void *a6)
{
  v61 = a6;
  sub_1D1145BA4(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138E52C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v60 = a5;
  v21 = *a5;
  if (*(v21 + 16))
  {
    v22 = sub_1D11362EC(a1, a2);
    if (v23)
    {
      (*(v15 + 16))(v17, *(v21 + 56) + *(v15 + 72) * v22, v14);
      (*(v15 + 32))(v20, v17, v14);
      v58 = v20;
      v62 = sub_1D138E4EC();

      sub_1D11220B8(v24);
      swift_bridgeObjectRetain_n();
      sub_1D138E50C();
      (*(v15 + 56))(v13, 0, 1, v14);
      sub_1D121FEF0(v13, a1, a2);
      v25 = *(a3 + 16);
      v59 = v14;
      if (v25)
      {
        v20 = a3 + 32;
        v26 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D1072E70(v20, v63);
          __swift_project_boxed_opaque_existential_1Tm(v63, v64);
          v27 = sub_1D138DC3C();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1D10F7284(0, *(v26 + 2) + 1, 1, v26);
          }

          v31 = *(v26 + 2);
          v30 = *(v26 + 3);
          if (v31 >= v30 >> 1)
          {
            v26 = sub_1D10F7284((v30 > 1), v31 + 1, 1, v26);
          }

          *(v26 + 2) = v31 + 1;
          v32 = &v26[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          v20 += 40;
          --v25;
        }

        while (v25);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      v49 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = *v49;
      v51 = v63[0];
      sub_1D11362EC(a1, a2);
      v53 = *(v51 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v20) = v52;
        if (*(v51 + 24) < v56)
        {
          sub_1D117A51C(v56, isUniquelyReferenced_nonNull_native);
          v51 = v63[0];
          sub_1D11362EC(a1, a2);
          if ((v20 & 1) == (v57 & 1))
          {
            goto LABEL_31;
          }

          sub_1D13916CC();
          __break(1u);
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_31:
          *v49 = v51;
          if (v20)
          {
LABEL_33:
            sub_1D1121FC4(v26);
            (*(v15 + 8))(v58, v59);
            return;
          }

LABEL_32:
          sub_1D133945C();

          goto LABEL_33;
        }
      }

      sub_1D1181358();
      *v49 = v63[0];
      if (v20)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v33 = *a4;

  v34 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1D10F7284(0, *(v33 + 2) + 1, 1, v33);
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    v33 = sub_1D10F7284((v35 > 1), v36 + 1, 1, v33);
  }

  *(v33 + 2) = v36 + 1;
  v37 = &v33[16 * v36];
  *(v37 + 4) = a1;
  *(v37 + 5) = a2;
  *a4 = v33;
  swift_bridgeObjectRetain_n();

  sub_1D138E50C();
  (*(v15 + 56))(v13, 0, 1, v34);
  sub_1D121FEF0(v13, a1, a2);
  v38 = *(a3 + 16);
  if (v38)
  {
    v39 = a3 + 32;
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v61;
    do
    {
      sub_1D1072E70(v39, v63);
      __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      v42 = sub_1D138DC3C();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1D10F7284(0, *(v40 + 2) + 1, 1, v40);
      }

      v46 = *(v40 + 2);
      v45 = *(v40 + 3);
      if (v46 >= v45 >> 1)
      {
        v40 = sub_1D10F7284((v45 > 1), v46 + 1, 1, v40);
      }

      *(v40 + 2) = v46 + 1;
      v47 = &v40[16 * v46];
      *(v47 + 4) = v42;
      *(v47 + 5) = v44;
      v39 += 40;
      --v38;
    }

    while (v38);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v61;
  }

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = *v41;
  sub_1D11DA164(v40, a1, a2, v48);

  *v41 = v63[0];
}

uint64_t sub_1D1144978(uint64_t a1, __n128 a2)
{
  sub_1D1145AC0(0, &qword_1EC60AA38, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D11449F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D1145B30(0, &qword_1EC60B820, type metadata accessor for MedicalRecordTimelineHeaderItemCell, type metadata accessor for MedicalRecordTimelineHeaderItem);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_1EE069F80;
  v14 = *(off_1EE069F80 + 2);
  v30 = v6;
  v29 = a2;
  if (v14)
  {
    v15 = sub_1D12A2F78();
    if (v16)
    {
      v17 = a3;
      v18 = v13[7] + 72 * v15;
      v32 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      v33 = *(v18 + 16);
      v34 = v20;
      v36 = v21;
      v35 = v19;
      swift_endAccess();
      v39 = v34;
      v40 = v35;
      v41 = v36;
      v37 = v32;
      v38 = v33;
      sub_1D1082914(&v32, v31);
LABEL_8:
      v34 = v39;
      v35 = v40;
      v36 = v41;
      v32 = v37;
      v33 = v38;
      v23 = v39;
      type metadata accessor for MedicalRecordTimelineHeaderItem(0);
      v24 = swift_allocObject();

      sub_1D138D5DC();
      v25 = (v24 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordTimelineHeaderItem_reuseIdentifier);
      type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
      sub_1D114596C(&qword_1EC60B860, type metadata accessor for MedicalRecordTimelineHeaderItemCell, &unk_1D13AF688);
      *v25 = sub_1D138DECC();
      v25[1] = v26;
      *(v24 + 16) = v23;
      *(v24 + 56) = 0;
      *(v24 + 48) = 0;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0;
      *(v24 + 64) = 1;
      *(v24 + 72) = v29;
      *(v24 + 80) = v17;
      strcpy((v24 + 88), "CategoryTitle");
      *(v24 + 102) = -4864;
      *(v24 + 104) = 0;
      *(v24 + 112) = 0;

      sub_1D13908EC();
      v27 = v30;
      (*(v7 + 16))(v9, v12, v30);
      sub_1D114596C(&qword_1EC60B858, type metadata accessor for MedicalRecordTimelineHeaderItem, &unk_1D13AF6D8);
      sub_1D138DCAC();
      sub_1D1080D98(&v32);
      (*(v7 + 8))(v12, v27);
      sub_1D138DC8C();
      swift_storeEnumTagMultiPayload();
      return v24;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    v17 = a3;
    sub_1D123E1C4(result, &v37);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D1144E0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v107 = a2;
  sub_1D1145B30(0, &qword_1EC60B868, type metadata accessor for MedicalRecordTimelinePanelItemCell, type metadata accessor for MedicalRecordTimelinePanelItem);
  v91 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - v9;
  v105 = sub_1D138DC8C();
  MEMORY[0x1EEE9AC00](v105 - 8);
  v104 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1145B30(0, &qword_1EC60B870, type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell, type metadata accessor for MedicalRecordTimelinePanelHeaderItem);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v84 - v15;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v99 = (v14 + 16);
  v100 = "dataSourceSection";
  v98 = (v14 + 8);
  v88 = (v6 + 16);
  v87 = (v6 + 8);

  v21 = 0;
  if (v19)
  {
    while (1)
    {
LABEL_11:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v21 << 6);
      v25 = (*(a1 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *v107;
      v29 = *(*v107 + 16);
      v108 = *(*(a1 + 56) + 8 * v24);

      if (!v29)
      {
        goto LABEL_30;
      }

      v30 = sub_1D11362EC(v26, v27);
      if ((v31 & 1) == 0)
      {
        goto LABEL_29;
      }

      v106 = v27;
      sub_1D1072E70(*(v28 + 56) + 40 * v30, &v109);
      sub_1D102CC18(&v109, v112);
      v32 = v113;
      v33 = v114;
      __swift_project_boxed_opaque_existential_1Tm(v112, v113);
      v34 = (*(v33 + 16))(v32, v33);
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (!v35)
      {
        break;
      }

      v36 = v35;
      v94 = v20;
      v96 = a3;
      v97 = a1;
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v95 = sub_1D138D1CC();
      v93 = v37;
      v38 = v113;
      v39 = v114;
      __swift_project_boxed_opaque_existential_1Tm(v112, v113);
      v40 = (*(v39 + 32))(v38, v39);
      v92 = v41;
      v42 = type metadata accessor for MedicalRecordTimelinePanelHeaderItem(0);
      v43 = swift_allocObject();
      v44 = (v43 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelinePanelHeaderItem_reuseIdentifier);
      type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell(0);
      sub_1D114596C(&qword_1EC60B878, type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell, &unk_1D13B0180);
      *v44 = sub_1D138DECC();
      v44[1] = v45;
      v46 = v93;
      v43[2] = v95;
      v43[3] = v46;
      v47 = v92;
      v43[4] = v40;
      v43[5] = v47;
      v43[6] = v36;
      v95 = v34;
      v48 = v101;
      sub_1D13908EC();
      v49 = v103;
      (*v99)(v102, v48, v103);
      v50 = sub_1D114596C(&qword_1EC60B880, type metadata accessor for MedicalRecordTimelinePanelHeaderItem, &unk_1D13B01D0);
      v51 = v104;
      v93 = v42;
      v92 = v50;
      sub_1D138DCAC();

      (*v98)(v48, v49);
      swift_storeEnumTagMultiPayload();
      v95 = v43;
      sub_1D11459B4(v51, v43 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelinePanelHeaderItem_cellResolution);
      v52 = v113;
      v53 = v114;
      __swift_project_boxed_opaque_existential_1Tm(v112, v113);
      v54 = (*(v53 + 16))(v52, v53);
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        v57 = type metadata accessor for MedicalRecordTimelinePanelItem(0);
        v58 = swift_allocObject();
        v59 = (v58 + OBJC_IVAR____TtC15HealthRecordsUI30MedicalRecordTimelinePanelItem_reuseIdentifier);
        type metadata accessor for MedicalRecordTimelinePanelItemCell(0);
        sub_1D114596C(&qword_1EC60B888, type metadata accessor for MedicalRecordTimelinePanelItemCell, &unk_1D13AD0A8);
        *v59 = sub_1D138DECC();
        v59[1] = v60;
        v58[2] = v56;
        v85 = v54;
        v61 = v89;
        sub_1D13908EC();
        v62 = v91;
        (*v88)(v90, v61, v91);
        v63 = sub_1D114596C(&qword_1EC60B890, type metadata accessor for MedicalRecordTimelinePanelItem, &unk_1D13AD0F8);
        v64 = v104;
        v86 = v57;
        v84 = v63;
        sub_1D138DCAC();

        (*v87)(v61, v62);
        swift_storeEnumTagMultiPayload();
        v85 = v58;
        sub_1D11459B4(v64, v58 + OBJC_IVAR____TtC15HealthRecordsUI30MedicalRecordTimelinePanelItem_cellResolution);
        a3 = v96;
        v65 = *v96;
        v66 = v95;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = sub_1D10F75F4(0, v65[2] + 1, 1, v65);
        }

        v69 = v65[2];
        v68 = v65[3];
        if (v69 >= v68 >> 1)
        {
          v65 = sub_1D10F75F4((v68 > 1), v69 + 1, 1, v65);
        }

        v110 = v93;
        v111 = v92;
        *&v109 = v66;
        v65[2] = v69 + 1;
        sub_1D102CC18(&v109, &v65[5 * v69 + 4]);

        *a3 = v65;
        sub_1D11220B8(v108);
        v70 = *a3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1D10F75F4(0, v70[2] + 1, 1, v70);
        }

        v71 = v86;
        v73 = v70[2];
        v72 = v70[3];
        if (v73 >= v72 >> 1)
        {
          v70 = sub_1D10F75F4((v72 > 1), v73 + 1, 1, v70);
        }

        v110 = v71;
        v111 = v84;
        *&v109 = v85;
        v70[2] = v73 + 1;
        sub_1D102CC18(&v109, &v70[5 * v73 + 4]);
        *a3 = v70;
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
        a1 = v97;
        if (!v19)
        {
          goto LABEL_7;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v112);

        a1 = v97;
        a3 = v96;
        v20 = v94;
LABEL_30:
        v74 = *(v108 + 16);
        v75 = *a3;
        v76 = *(*a3 + 16);
        v77 = v76 + v74;
        if (__OFADD__(v76, v74))
        {
          goto LABEL_45;
        }

        v78 = swift_isUniquelyReferenced_nonNull_native();
        if (!v78 || (v79 = v75[3] >> 1, v79 < v77))
        {
          if (v76 <= v77)
          {
            v80 = v76 + v74;
          }

          else
          {
            v80 = v76;
          }

          v75 = sub_1D10F75F4(v78, v80, 1, v75);
          v79 = v75[3] >> 1;
        }

        if (*(v108 + 16))
        {
          if (v79 - v75[2] < v74)
          {
            goto LABEL_47;
          }

          sub_1D1080EA4(0, &qword_1EC60F6A0, MEMORY[0x1E69A3310]);
          swift_arrayInitWithCopy();

          if (v74)
          {
            v81 = v75[2];
            v82 = __OFADD__(v81, v74);
            v83 = v81 + v74;
            if (v82)
            {
              goto LABEL_48;
            }

            v75[2] = v83;
          }
        }

        else
        {

          if (v74)
          {
            goto LABEL_46;
          }
        }

        *a3 = v75;
        if (!v19)
        {
          goto LABEL_7;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v112);
LABEL_29:

    goto LABEL_30;
  }

LABEL_7:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1D114596C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D11459B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138DC8C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D1145AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1080EA4(255, &qword_1EC60F6A0, MEMORY[0x1E69A3310]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D1145B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D13908FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1145BA4(uint64_t a1)
{
  if (!qword_1EC60A900)
  {
    sub_1D138E52C();
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A900);
    }
  }
}

void sub_1D1145C84(uint64_t a1)
{
  if (!qword_1EC60B8A0)
  {
    sub_1D138E52C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60B8A0);
    }
  }
}

uint64_t sub_1D1145CF0(uint64_t a1, uint64_t a2)
{
  sub_1D1145C84(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1145D54(uint64_t a1)
{
  sub_1D1145C84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AccountUpgradeTileView(uint64_t a1)
{
  result = qword_1EC60B8D8;
  if (!qword_1EC60B8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1145E58(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40))(a1))
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D1145F64(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40))(a1))
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

id sub_1D1146070()
{
  v1 = qword_1EC60B8C8;
  v2 = *(v0 + qword_1EC60B8C8);
  if (v2)
  {
    v3 = *(v0 + qword_1EC60B8C8);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() buttonWithType_];
    sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    v6 = sub_1D1390C6C();
    sub_1D106F934(0, &qword_1EE06A540, 0x1E69DCAB8);
    v7 = [objc_opt_self() tertiaryLabelColor];
    v8 = MEMORY[0x1D3886670](v6, v7);

    if (v8)
    {
      [v5 setImage:v8 forState:0];
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = qword_1EE06AD00;
    v10 = v5;
    if (v9 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v11 = sub_1D139012C();

    [v10 setAccessibilityLabel_];

    [v10 addTarget:v4 action:sel_dismissAction forControlEvents:64];
    v12 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_1D11462A0(uint64_t a1)
{
  *(a1 + qword_1EC60B8B0) = 0;
  *(a1 + qword_1EC60B8B8) = 0;
  *(a1 + qword_1EC60B8C0) = 0;
  *(a1 + qword_1EC60B8C8) = 0;
  *(a1 + qword_1EC60B8D0) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1146338()
{
  v1 = sub_1D138DD4C();
  [v0 addSubview_];

  v2 = sub_1D138DD3C();
  [v0 addSubview_];

  v3 = sub_1D138DD4C();
  v4 = [v3 leadingAnchor];

  v5 = sub_1D138DD3C();
  v6 = [v5 trailingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  v8 = *&v0[qword_1EC60B8B8];
  *&v0[qword_1EC60B8B8] = v7;
  v9 = v7;

  v10 = sub_1D138DD4C();
  v11 = [v10 topAnchor];

  v12 = [v0 topAnchor];
  v13 = [v11 &selRef:v12 deactivateConstraints:16.0 + 6];

  v14 = *&v0[qword_1EC60B8B0];
  *&v0[qword_1EC60B8B0] = v13;
  v15 = v13;

  v16 = sub_1D138DD3C();
  v17 = [v16 leadingAnchor];

  v18 = [v0 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 &selRef:v19 deactivateConstraints:16.0 + 6];
  v21 = *&v0[qword_1EC60B8C0];
  *&v0[qword_1EC60B8C0] = v20;
  v22 = v20;

  v53 = objc_opt_self();
  sub_1D106F424();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D139E7C0;
  v24 = sub_1D138DD3C();
  v25 = [v24 widthAnchor];

  v26 = [v25 constraintEqualToConstant_];
  *(v23 + 32) = v26;
  v27 = sub_1D138DD3C();
  v28 = [v27 heightAnchor];

  v29 = [v28 constraintEqualToConstant_];
  *(v23 + 40) = v29;
  *(v23 + 48) = v22;
  v30 = v22;
  v31 = sub_1D138DD3C();
  v32 = [v31 topAnchor];

  v33 = [v0 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];

  *(v23 + 56) = v34;
  v35 = [v0 bottomAnchor];
  v36 = sub_1D138DD3C();
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintGreaterThanOrEqualToAnchor:v37 constant:14.0];
  *(v23 + 64) = v38;
  *(v23 + 72) = v9;
  *(v23 + 80) = v15;
  v39 = v9;
  v40 = v15;
  v41 = [v0 trailingAnchor];
  v42 = sub_1D138DD4C();
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v23 + 88) = v44;
  v45 = [v0 bottomAnchor];
  v46 = sub_1D138DD4C();
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v23 + 96) = v48;
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
  v49 = sub_1D139044C();

  [v53 activateConstraints_];

  v50 = sub_1D138DD3C();
  LODWORD(v51) = 1144750080;
  [v50 setContentHuggingPriority:0 forAxis:v51];

  v54 = sub_1D138DD4C();
  LODWORD(v52) = 1144750080;
  [v54 setContentCompressionResistancePriority:0 forAxis:v52];
}

id sub_1D11468AC()
{
  v1 = qword_1EC60B8B8;
  v2 = *&v0[qword_1EC60B8B8];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = qword_1EC60B8B0;
  v4 = *&v0[qword_1EC60B8B0];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = qword_1EC60B8C0;
  v6 = *&v0[qword_1EC60B8C0];
  if (v6)
  {
    [v6 setActive_];
  }

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v8 = sub_1D138DD4C();
  v9 = [v8 leadingAnchor];

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    v13 = *&v0[v1];
    *&v0[v1] = v12;

    v14 = sub_1D138DD4C();
    v15 = [v14 topAnchor];

    v16 = sub_1D138DD3C();
    v17 = [v16 bottomAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:14.0];
  }

  else
  {
    v19 = sub_1D138DD3C();
    v20 = [v19 trailingAnchor];

    v21 = [v9 constraintEqualToAnchor:v20 constant:16.0];
    v22 = *&v0[v1];
    *&v0[v1] = v21;

    v23 = sub_1D138DD4C();
    v15 = [v23 topAnchor];

    v17 = [v0 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  }

  v24 = v18;

  v25 = *&v0[v3];
  *&v0[v3] = v24;

  v26 = sub_1D138DD3C();
  v27 = [v26 leadingAnchor];

  v28 = [v0 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
  v31 = *&v0[v5];
  *&v0[v5] = v30;

  v32 = *&v0[v1];
  if (v32)
  {
    [v32 setActive_];
  }

  v33 = *&v0[v3];
  if (v33)
  {
    [v33 setActive_];
  }

  result = *&v0[v5];
  if (result)
  {

    return [result setActive_];
  }

  return result;
}

void sub_1D1146BE0()
{
  v1 = v0;
  v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v1 layer];
  [v3 setCornerRadius_];

  v4 = [v1 layer];
  [v4 setCornerCurve_];

  [v1 setOpaque_];
  [v1 setClipsToBounds_];
  [v1 setAlpha_];
  v5 = sub_1D138DD4C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D138E7BC();

  v6 = *&v1[qword_1EC60B8A8 + 24];
  v7 = *&v1[qword_1EC60B8A8 + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v1[qword_1EC60B8A8], v6);
  if (((*(v7 + 32))(v6, v7) & 1) == 0)
  {
    v8 = sub_1D1146070();
    [v1 addSubview_];

    v9 = objc_opt_self();
    sub_1D106F424();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D139E6E0;
    v11 = qword_1EC60B8C8;
    v12 = [*&v1[qword_1EC60B8C8] topAnchor];
    v13 = [v1 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:13.0];

    *(v10 + 32) = v14;
    v15 = [*&v1[v11] trailingAnchor];
    v16 = [v1 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-13.0];

    *(v10 + 40) = v17;
    sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
    v18 = sub_1D139044C();

    [v9 activateConstraints_];
  }
}

void sub_1D1146F3C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + qword_1EC60B8A8 + 24);
    v3 = *(Strong + qword_1EC60B8A8 + 32);
    v4 = Strong;
    __swift_project_boxed_opaque_existential_1Tm((Strong + qword_1EC60B8A8), v2);
    (*(v3 + 56))(v2, v3);
  }
}

void sub_1D1146FD0()
{
  v1 = sub_1D138DD6C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D11480E4();
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v16 = sub_1D138D1CC();
  v4 = (v0 + qword_1EC60B8A8);
  v5 = *(v0 + qword_1EC60B8A8 + 24);
  v6 = *(v0 + qword_1EC60B8A8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + qword_1EC60B8A8), v5);
  (*(v6 + 8))(v5, v6);
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v7);
  (*(v8 + 16))(v7, v8);
  v9 = objc_opt_self();
  v10 = v17;
  [v9 clearColor];
  sub_1D138DD5C();
  sub_1D138DDAC();
  v11 = sub_1D138DDBC();
  v11(v3);
  v12 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v12);
  if ((*(v13 + 24))(v12, v13))
  {
    v14 = sub_1D138DD4C();
    v15 = sub_1D138E7CC();

    [v15 setEnabled_];
    (*(v18 + 8))(v3, v19);
  }

  else
  {
    (*(v18 + 8))(v3, v19);
  }
}

uint64_t sub_1D11472E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[20] = sub_1D13905AC();
  v5[21] = sub_1D139059C();
  v7 = sub_1D139055C();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1147384, v7, v6);
}

uint64_t sub_1D1147384()
{
  if (qword_1EC608DC0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC60E248);
  *(v0 + 192) = qword_1EC60E250;

  os_unfair_lock_unlock(&dword_1EC60E248);
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1D1147494;
  v2 = *(v0 + 144);

  return AccountIconProvider.fetchIcon(for:size:)(v0 + 64, v2, v0 + 112);
}

uint64_t sub_1D1147494()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D11475D8, v3, v2);
}

uint64_t sub_1D11475D8()
{
  v1 = *(v0 + 104);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 64) & 1;
    *(v0 + 24) = *(v0 + 72);
    *(v0 + 40) = v3;
    *(v0 + 48) = v2 & 1;
    *(v0 + 56) = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D11476A8, 0, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D11476A8(uint64_t a1)
{
  *(v1 + 216) = sub_1D139059C();
  v3 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1147734, v3, v2);
}

uint64_t sub_1D1147734()
{
  v1 = v0[19];

  sub_1D1147848((v0 + 2), v1);
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x1EEE6DFA0](sub_1D11477E0, v2, v3);
}

uint64_t sub_1D11477E0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1147848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138DD6C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 40);
  v20 = a1;
  sub_1D114852C(a1, &v23);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v18[1] = sub_1D138D1CC();
  v7 = (a2 + qword_1EC60B8A8);
  v8 = *(a2 + qword_1EC60B8A8 + 24);
  v9 = *(a2 + qword_1EC60B8A8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((a2 + qword_1EC60B8A8), v8);
  (*(v9 + 8))(v8, v9);
  v10 = v7[3];
  v11 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v10);
  (*(v11 + 16))(v10, v11);
  [objc_opt_self() clearColor];
  v12 = v19;
  sub_1D138DD5C();
  sub_1D138DDAC();
  v13 = sub_1D138DDBC();
  v13(v6);
  if ((*v20 & 1) == 0)
  {
    v14 = [v12 scaledToTargetSize:28.0 padding:{28.0, 6.0, 6.0}];
    v15 = sub_1D138DD3C();
    v16 = v14;
    [v15 setImage_];
    v23 = 0x4024000000000000;
    v24 = 0;
    UIImageView.applyStyle(_:)(&v23);
    sub_1D10A4C44(0x4024000000000000, 0);
  }

  return (*(v21 + 8))(v6, v22);
}

uint64_t sub_1D1147B64()
{
  v1 = sub_1D138DD6C();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11485AC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v31 - v4;
  sub_1D11485AC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v36 = v0;
  v15 = &v0[qword_1EC60B8A8];
  v16 = *&v0[qword_1EC60B8A8 + 24];
  v17 = *&v0[qword_1EC60B8A8 + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[qword_1EC60B8A8], v16);
  (*(v17 + 48))(v16, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D10F27F4(v7);
    sub_1D11480E4();
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v15, v18);
    (*(v19 + 8))(v18, v19);
    v20 = *(v15 + 3);
    v21 = *(v15 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v15, v20);
    (*(v21 + 16))(v20, v21);
    [objc_opt_self() clearColor];
    v22 = v32;
    sub_1D138DD5C();
    sub_1D138DDAC();
    v23 = sub_1D138DDBC();
    v23(v22);
    return (*(v33 + 8))(v22, v34);
  }

  else
  {
    v34 = *(v9 + 32);
    v34(v14, v7, v8);
    v25 = sub_1D13905DC();
    (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
    (*(v9 + 16))(v11, v14, v8);
    sub_1D13905AC();
    v26 = v36;
    v27 = sub_1D139059C();
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    *(v29 + 16) = v27;
    *(v29 + 24) = v30;
    v34((v29 + v28), v11, v8);
    *(v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    sub_1D107877C(0, 0, v35, &unk_1D13A32C0, v29);

    return (*(v9 + 8))(v14, v8);
  }
}

id sub_1D11480E4()
{
  v1 = qword_1EC60B8D0;
  v2 = *(v0 + qword_1EC60B8D0);
  if (v2)
  {
    v3 = *(v0 + qword_1EC60B8D0);
  }

  else
  {
    v4 = sub_1D1148144();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1148144()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:5 weight:38.0];
  v2 = sub_1D139012C();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (!v3 || (v4 = [v0 configurationPreferringMulticolor], v5 = objc_msgSend(v3, sel_imageByApplyingSymbolConfiguration_, v4), v3, v4, !v5))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  return v5;
}

void sub_1D1148268(char *a1)
{
  v2 = &a1[qword_1EC60B8A8];
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v4 + 56);
  v6 = a1;
  v5(v3, v4);
}

void sub_1D11482F4(char *a1)
{
  v2 = &a1[qword_1EC60B8A8];
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v4 + 64);
  v6 = a1;
  v5(v3, v4);
}

void sub_1D11483E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EC60B8A8));

  v1 = *(v0 + qword_1EC60B8D0);
}

id sub_1D1148460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountUpgradeTileView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1148498(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + qword_1EC60B8A8));

  v2 = *(a1 + qword_1EC60B8D0);
}

void sub_1D11485AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1148600(uint64_t a1)
{
  v4 = *(sub_1D138D5EC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D11472E8(a1, v6, v7, v1 + v5, v8);
}

uint64_t static UserDomainConceptFeedItemIdentifierFactory.make(for:feedItemKind:categoryKind:listType:sortHint:profile:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v49 = a7;
  v50 = a6;
  v47 = a5;
  v48 = a4;
  v46 = a1;
  v10 = 0xD000000000000013;
  v11 = sub_1D138D5EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *a3;
  v17 = sub_1D138D98C();
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1D13911EC();

  v52[0] = 0xD000000000000016;
  v52[1] = 0x80000001D13BBE20;
  LOBYTE(v51) = v15;
  v18 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v20 = v52[0];
  v19 = v52[1];
  if (v17)
  {
    strcpy(v52, "[Profile:");
    WORD1(v52[1]) = 0;
    HIDWORD(v52[1]) = -385875968;
    v17 = v17;
    v21 = [v17 identifier];
    sub_1D138D5CC();

    v22 = sub_1D138D59C();
    v24 = v23;
    (*(v12 + 8))(v14, v11);
    MEMORY[0x1D3885C10](v22, v24);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v10 = v52[0];
    v25 = v52[1];
  }

  else
  {
    v25 = 0x80000001D13BBE40;
  }

  v52[0] = v10;
  v52[1] = v25;
  MEMORY[0x1D3885C10](v20, v19);

  v52[6] = v52[0];
  v52[7] = v52[1];
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v52, "[UDCCategory:");
  HIWORD(v52[1]) = -4864;
  v51 = v16;
  v26 = MEMORY[0x1E69E6530];
  v27 = MEMORY[0x1E69E6590];
  v28 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v28);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v52[8] = v52[0];
  v52[9] = v52[1];
  v52[10] = _s15HealthRecordsUI42UserDomainConceptFeedItemIdentifierFactoryV13makeComponent9conceptIdSSSg10Foundation4UUIDVSg_tFZ_0(v46);
  v52[11] = v29;
  v52[12] = sub_1D1149380(v48, v47 & 1, 0x7473694C4344555BLL, 0xED00003A65707954, MEMORY[0x1E69E6810], MEMORY[0x1E69E6860]);
  v52[13] = v30;
  result = sub_1D1149380(v50, v49 & 1, 0x74726F534344555BLL, 0xED00003A746E6948, v26, v27);
  v32 = 0;
  v52[14] = result;
  v52[15] = v33;
  v34 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v32 <= 5)
  {
    v35 = 5;
  }

  else
  {
    v35 = v32;
  }

  v36 = v35 + 1;
  v37 = 16 * v32 + 40;
  while (1)
  {
    if (v32 == 5)
    {
      sub_1D1149438(0, &qword_1EE06A660, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v52[0] = v34;
      sub_1D1149438(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
      sub_1D10F73A8();
      v44 = sub_1D139008C();

      return v44;
    }

    if (v36 == ++v32)
    {
      break;
    }

    v38 = v37 + 16;
    v39 = *(&v52[2] + v37);
    v37 += 16;
    if (v39)
    {
      v40 = *(&v52[-1] + v38);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F7284(0, *(v34 + 16) + 1, 1, v34);
        v34 = result;
      }

      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_1D10F7284((v41 > 1), v42 + 1, 1, v34);
        v34 = result;
      }

      *(v34 + 16) = v42 + 1;
      v43 = v34 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t static UserDomainConceptFeedItemIdentifierFactory.makePrefixComponent(feedItemKind:)()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t static UserDomainConceptFeedItemIdentifierFactory.makeComponent(categoryKind:)()
{
  sub_1D13911EC();

  strcpy(v2, "[UDCCategory:");
  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return v2[0];
}

uint64_t static UserDomainConceptFeedItemIdentifierFactory.make(for:feedItemKind:profile:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v7 = 0xD000000000000013;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v12 = sub_1D138D98C();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D13911EC();

  v35 = 0xD000000000000016;
  v36 = 0x80000001D13BBE20;
  v34 = a3;
  v13 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v13);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v14 = v35;
  v15 = v36;
  if (v12)
  {
    v35 = 0x656C69666F72505BLL;
    v36 = 0xE90000000000003ALL;
    v33 = v14;
    v12 = v12;
    v16 = [v12 identifier];
    sub_1D138D5CC();

    v17 = sub_1D138D59C();
    v18 = a2;
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    MEMORY[0x1D3885C10](v17, v20);
    a2 = v18;

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v14 = v33;
    v7 = v35;
    v21 = v36;
  }

  else
  {
    v21 = 0x80000001D13BBE40;
  }

  v35 = v7;
  v36 = v21;
  MEMORY[0x1D3885C10](v14, v15);

  v37 = v35;
  v38[0] = v36;
  v35 = 0x3A64494344555BLL;
  v36 = 0xE700000000000000;
  MEMORY[0x1D3885C10](a1, a2);
  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v22 = 0;
  v38[1] = v35;
  v38[2] = v36;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v24 = &v38[2 * v22];
  while (++v22 != 3)
  {
    v25 = v24 + 2;
    v26 = *v24;
    v24 += 2;
    if (v26)
    {
      v27 = *(v25 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D10F7284(0, *(v23 + 2) + 1, 1, v23);
      }

      v29 = *(v23 + 2);
      v28 = *(v23 + 3);
      if (v29 >= v28 >> 1)
      {
        v23 = sub_1D10F7284((v28 > 1), v29 + 1, 1, v23);
      }

      *(v23 + 2) = v29 + 1;
      v30 = &v23[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_5;
    }
  }

  sub_1D1149438(0, &qword_1EE06A660, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v35 = v23;
  sub_1D1149438(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v31 = sub_1D139008C();

  return v31;
}

uint64_t static UserDomainConceptFeedItemIdentifierFactory.makeComponent(conceptIdString:)()
{
  MEMORY[0x1D3885C10]();
  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0x3A64494344555BLL;
}

uint64_t _s15HealthRecordsUI42UserDomainConceptFeedItemIdentifierFactoryV13makeComponent9conceptIdSSSg10Foundation4UUIDVSg_tFZ_0(uint64_t a1)
{
  sub_1D10F26FC(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1127E2C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D10F27F4(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12[0] = 0x3A64494344555BLL;
    v12[1] = 0xE700000000000000;
    v10 = sub_1D138D59C();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v9 = v12[0];
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_1D1149380(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    return 0;
  }

  sub_1D13911EC();

  v8 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v8);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return a3;
}

void sub_1D1149438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D114949C(uint64_t a1)
{
  result = 0x6E4974704F524849;
  switch(a1)
  {
    case 0:
      result = 0xD000000000000012;
      break;
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
    case 7:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x41646574656C6544;
      break;
    case 12:
      result = 0x6465646172677055;
      break;
    default:
      result = sub_1D139169C();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1D11496A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1149878(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D11496D4(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 0x6D6D75536D6F7246;
      }

      if (a1 == 2)
      {
        return 0x776F72426D6F7246;
      }

      return 0x436E776F6E6B6E55;
    }

    if (a1 == 3)
    {
      return 0x666F72506D6F7246;
    }

    else
    {
      return 0x70416E496D6F7246;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 0xD000000000000014;
        case 8:
          return 0xD000000000000012;
        case 9:
          return 0xD000000000000013;
      }

      return 0x436E776F6E6B6E55;
    }

    if (a1 == 5)
    {
      return 0x706565446D6F7246;
    }

    else
    {
      return 0x726168536D6F7246;
    }
  }
}

unint64_t sub_1D1149878(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D114988C()
{
  result = qword_1EC60B8E8;
  if (!qword_1EC60B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B8E8);
  }

  return result;
}

uint64_t ChartType.hashValue.getter()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

void *ChartItem.__allocating_init(chartDefining:chartPoints:overlayViewController:healthStore:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for ChartCell();
  sub_1D114B520(&qword_1EC60B8F0, 255, type metadata accessor for ChartCell, &unk_1D13ADA0C);
  v8[10] = sub_1D138DECC();
  v8[11] = v9;
  sub_1D102CC18(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *ChartItem.init(chartDefining:chartPoints:overlayViewController:healthStore:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ChartCell();
  sub_1D114B520(&qword_1EC60B8F0, 255, type metadata accessor for ChartCell, &unk_1D13ADA0C);
  v4[10] = sub_1D138DECC();
  v4[11] = v9;
  sub_1D102CC18(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t ChartItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1D1149B14()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v6 = v5;

  MEMORY[0x1D3885C10](v4, v6);

  return v1;
}

uint64_t ChartItem.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t ChartItem.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1149C44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 16), v2);
  v4 = (*(v3 + 32))(v2, v3);
  v6 = v5;

  MEMORY[0x1D3885C10](v4, v6);

  return v1;
}

uint64_t sub_1D1149CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void *ChartDataSource.__allocating_init(chartDefining:chartType:chartPointPublisher:chartSetSize:healthStore:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v16 = sub_1D114AF2C(v15, a2, a3, a4, a5 & 1, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

void *ChartDataSource.init(chartDefining:chartType:chartPointPublisher:chartSetSize:healthStore:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_1D114AA04(v18, a2, a3, a4, a5 & 1, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

void sub_1D1149F08(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [*(Strong + 88) CHRRoomApplicationItems];
    MEMORY[0x1EEE9AC00](v11);
    v16[2] = v10;
    v17 = a5 & 1;
    v18 = v12;
    v19 = v8;
    v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
    v15 = v13;
    v14(v10 + 40, v8, a3, a4 & 1, sub_1D114B23C, v16);
  }
}

void sub_1D114A058(char *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  sub_1D114B3D8(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  if (!a1)
  {
    sub_1D1287820(1);
    return;
  }

  v16 = a3;
  v17 = a3 & 1;
  v42 = a5;
  v40 = a4;
  if (v16)
  {
    goto LABEL_10;
  }

  if (*&a1[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource] || *&a1[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource])
  {
    goto LABEL_7;
  }

  v18 = *&a1[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources];
  if (v18 >> 62)
  {
    if (sub_1D13910DC() >= 2)
    {
      goto LABEL_7;
    }

LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_10;
  }

LABEL_7:
  v39 = 1;
LABEL_11:
  v41 = a2;
  sub_1D1072E70(a2 + 40, v44);
  sub_1D106A1D8(&a1[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_latestChartableDate], v15);
  v19 = type metadata accessor for ChartOverlayViewController();
  v20 = objc_allocWithZone(v19);
  sub_1D1072E70(v44, &v20[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartDefining]);
  v20[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartType] = v17;
  *&v20[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_chartabilityResult] = a1;
  sub_1D106F424();
  v21 = swift_allocObject();
  v38 = xmmword_1D139E810;
  *(v21 + 16) = xmmword_1D139E810;
  v22 = *&a1[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_masterDataSource];
  v23 = objc_opt_self();
  v24 = a1;
  v25 = v22;
  v26 = [v23 standardNumericYAxisWithConfigurationOverrides_];
  v27 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0x160))();

  *(v21 + 32) = v27;
  *&v20[OBJC_IVAR____TtC15HealthRecordsUI26ChartOverlayViewController_displayTypes] = v21;
  sub_1D106A1D8(v15, v12);
  v28 = sub_1D138D57C();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v12, 1, v28) != 1)
  {
    v30 = sub_1D138D4EC();
    (*(v29 + 8))(v12, v28);
  }

  v43.receiver = v20;
  v43.super_class = v19;
  v31 = v40;
  v32 = objc_msgSendSuper2(&v43, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v30, v40, 0, v39);

  sub_1D114B4A0(v15, &qword_1EE06B500, MEMORY[0x1E6969530]);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  inited = swift_initStackObject();
  *(inited + 16) = v38;
  sub_1D1072E70(v41 + 40, v44);
  v34 = v32;
  v35 = [v31 healthStore];
  type metadata accessor for ChartItem();
  v36 = swift_allocObject();
  type metadata accessor for ChartCell();
  sub_1D114B520(&qword_1EC60B8F0, 255, type metadata accessor for ChartCell, &unk_1D13ADA0C);
  v36[10] = sub_1D138DECC();
  v36[11] = v37;
  sub_1D102CC18(v44, (v36 + 2));
  v36[7] = v42;
  v36[8] = v34;
  v36[9] = v35;
  *(inited + 32) = v36;

  sub_1D138E0FC();
  sub_1D138E55C();

  sub_1D138E0FC();
  sub_1D114B3D8(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110AF78(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D138E50C();
  sub_1D138E58C();

  sub_1D1287820(0);
}

uint64_t sub_1D114A66C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
}

uint64_t ChartDataSource.deinit()
{
  if (*(v0 + 112))
  {

    sub_1D138F64C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t ChartDataSource.__deallocating_deinit()
{
  if (*(v0 + 112))
  {

    sub_1D138F64C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D114A7B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D138E35C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E32C();
  v6 = sub_1D138E28C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

Swift::Void __swiftcall ChartDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ChartCell();
  sub_1D114B520(&qword_1EC60B8F0, 255, type metadata accessor for ChartCell, &unk_1D13ADA0C);
  sub_1D13908AC();
}

uint64_t sub_1D114A990()
{
  type metadata accessor for ChartCell();
  sub_1D114B520(&qword_1EC60B8F0, 255, type metadata accessor for ChartCell, &unk_1D13ADA0C);
  return sub_1D13908AC();
}

void *sub_1D114AA04(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v40 = a3;
  v37 = MEMORY[0x1E69E8050];
  sub_1D114B3D8(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - v17;
  sub_1D114B24C(0);
  v20 = *(v19 - 8);
  v38 = v19;
  v39 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = a8;
  v43[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  v36 = *a2;
  *(a7 + 112) = 0;
  sub_1D1072E70(v43, a7 + 40);
  *(a7 + 80) = [objc_allocWithZone(type metadata accessor for MedicalRecordChartabilityDeterminer()) init];
  *(a7 + 88) = [objc_allocWithZone(MEMORY[0x1E69A43C0]) initWithHealthStore_];
  *(a7 + 96) = a4;
  v24 = a5 & 1;
  *(a7 + 104) = a5 & 1;
  sub_1D114B3D8(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D139E700;
  sub_1D138E50C();
  v26 = ConceptsDataSource.init(arrangedSections:isHidden:)(v25, 0);
  swift_retain_n();
  sub_1D1287820(1);
  v42 = v40;
  sub_1D108310C();
  v27 = sub_1D1390A7C();
  v41 = v27;
  v28 = sub_1D1390A2C();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  sub_1D114B340(0);
  sub_1D114B520(&qword_1EC60B920, 255, sub_1D114B340, MEMORY[0x1E695BED8]);
  sub_1D114B520(&qword_1EE06A610, 255, sub_1D108310C, MEMORY[0x1E69E8028]);
  sub_1D138F8BC();
  sub_1D114B4A0(v18, &qword_1EE06A620, v37);

  v29 = swift_allocObject();
  swift_weakInit();

  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = a4;
  *(v30 + 32) = v24;
  *(v30 + 33) = v36;
  sub_1D114B520(&qword_1EC60B928, 255, sub_1D114B24C, MEMORY[0x1E695BE98]);
  v31 = v38;
  v32 = sub_1D138F90C();

  (*(v39 + 8))(v22, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  v26[14] = v32;

  return v26;
}

void *sub_1D114AF2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartDataSource();
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a8);
  return sub_1D114AA04(v17, a2, a3, a4, a5 & 1, v21, v18, a8, a9);
}

unint64_t sub_1D114B05C()
{
  result = qword_1EC60B8F8;
  if (!qword_1EC60B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B8F8);
  }

  return result;
}

void sub_1D114B24C(uint64_t a1)
{
  if (!qword_1EC60B908)
  {
    sub_1D114B340(255);
    sub_1D108310C();
    sub_1D114B520(&qword_1EC60B920, 255, sub_1D114B340, MEMORY[0x1E695BED8]);
    sub_1D114B520(&qword_1EE06A610, 255, sub_1D108310C, MEMORY[0x1E69E8028]);
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B908);
    }
  }
}

void sub_1D114B340(uint64_t a1)
{
  if (!qword_1EC60B910)
  {
    sub_1D114B3D8(255, &qword_1EC60B918, sub_1D114B43C, MEMORY[0x1E69E62F8]);
    v1 = sub_1D138F62C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B910);
    }
  }
}

void sub_1D114B3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D114B43C()
{
  result = qword_1EC60AEA0;
  if (!qword_1EC60AEA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60AEA0);
  }

  return result;
}

uint64_t sub_1D114B4A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D114B3D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D114B520(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id BloodPressureChartConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D114B5EC()
{
  result = qword_1EC60B930;
  if (!qword_1EC60B930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B930);
  }

  return result;
}

uint64_t sub_1D114B67C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BloodPressureDataTransformer();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

id BloodPressureChartConfiguration.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BloodPressureChartConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

id BloodPressureChartConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureChartConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D114B828(void *a1)
{
  v3 = v1;
  sub_1D1155034(0, &qword_1EC60BA90, sub_1D11533F8, &_s13FormattedDataV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11533F8();
  sub_1D139181C();
  LOBYTE(v13) = 0;
  sub_1D139155C();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D139155C();
    LOBYTE(v13) = 2;
    sub_1D139153C();
    v13 = *(v3 + 48);
    v12 = 3;
    sub_1D1154880(0, &qword_1EC60BA78, &_s16FormattedSectionVN);
    sub_1D1153590();
    sub_1D139158C();
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1D10FA6A8();
    sub_1D115314C(&qword_1EC60B9D8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D114BAA0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x676E615265746164;
  v4 = 0x736E6F6974636573;
  if (v1 != 3)
  {
    v4 = 0x72656469766F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6942664F65746164;
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

uint64_t sub_1D114BB40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D11504AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114BB68(uint64_t a1)
{
  v2 = sub_1D11533F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114BBA4(uint64_t a1)
{
  v2 = sub_1D11533F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D114BBE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D115066C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1D114BC3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1D114F1C8(v7, v8) & 1;
}

uint64_t sub_1D114BC88(void *a1)
{
  v3 = v1;
  sub_1D1155034(0, &qword_1EC60B9A8, sub_1D1150E54, &_s16FormattedSectionV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1150E54();
  sub_1D139181C();
  v15 = 0;
  sub_1D139155C();
  if (!v2)
  {
    v14 = 1;
    sub_1D139155C();
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    v13 = 2;
    sub_1D1150EFC();
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D114BE68()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x7364726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496567616D69;
  }
}

uint64_t sub_1D114BEC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1150AA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114BEE8(uint64_t a1)
{
  v2 = sub_1D1150E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114BF24(uint64_t a1)
{
  v2 = sub_1D1150E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D114BF60@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D1150BB4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

void sub_1D114BFBC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1D139162C()) && (v2 == v6 && v4 == v7 || (sub_1D139162C()))
  {

    sub_1D114F140(v3, v5, v8, v9);
  }
}

uint64_t sub_1D114C09C(void *a1, uint64_t a2, int a3)
{
  v51 = a3;
  v52 = a2;
  v4 = MEMORY[0x1E69E6F58];
  sub_1D1155034(0, &qword_1EC60BC60, sub_1D1154084, &_s16FormattedRecordsO18MetadataCodingKeysON, MEMORY[0x1E69E6F58]);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - v6;
  sub_1D1155034(0, &qword_1EC60BC68, sub_1D11540D8, &_s16FormattedRecordsO21ThreeValuesCodingKeysON, v4);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  sub_1D1155034(0, &qword_1EC60BC70, sub_1D115412C, &_s16FormattedRecordsO22ValueInRangeCodingKeysON, v4);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - v10;
  sub_1D1155034(0, &qword_1EC60BC78, sub_1D1154180, &_s16FormattedRecordsO15ValueCodingKeysON, v4);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1D1155034(0, &qword_1EC60BC80, sub_1D11541D4, &_s16FormattedRecordsO15PlainCodingKeysON, v4);
  v15 = v14;
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  sub_1D1155034(0, &qword_1EC60BC88, sub_1D1154228, &_s16FormattedRecordsO10CodingKeysON, v4);
  v50 = v18;
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1154228();
  v21 = v20;
  sub_1D139181C();
  if (v51 <= 1u)
  {
    v27 = v17;
    v29 = v47;
    v28 = v48;
    v30 = v49;
    if (v51)
    {
      LOBYTE(v54) = 1;
      sub_1D1154180();
      v36 = v50;
      sub_1D139152C();
      v54 = v52;
      sub_1D11544AC(0, &qword_1EC60BC30, &qword_1EC609CF8, &_s20FormattedRecordValueVN);
      sub_1D1154DA0();
      sub_1D139158C();
      (*(v28 + 8))(v13, v30);
      return (*(v53 + 8))(v21, v36);
    }

    LOBYTE(v54) = 0;
    sub_1D11541D4();
    v31 = v50;
    v32 = v21;
    sub_1D139152C();
    v54 = v52;
    sub_1D11544AC(0, &qword_1EC60BC48, &qword_1EC609CD8, &_s15FormattedRecordVN);
    sub_1D1154EC0();
    sub_1D139158C();
    (*(v29 + 8))(v27, v15);
    return (*(v53 + 8))(v32, v31);
  }

  if (v51 == 2)
  {
    LOBYTE(v54) = 2;
    sub_1D115412C();
    v33 = v38;
    v31 = v50;
    v32 = v20;
    sub_1D139152C();
    v54 = v52;
    sub_1D11544AC(0, &qword_1EC60BC18, &qword_1EC609D20, &_s27FormattedRecordValueInRangeVN);
    sub_1D1154C80();
    v34 = v40;
    sub_1D139158C();
    (*(v39 + 8))(v33, v34);
    return (*(v53 + 8))(v32, v31);
  }

  v22 = v50;
  v23 = v20;
  if (v51 == 3)
  {
    LOBYTE(v54) = 3;
    sub_1D11540D8();
    v24 = v41;
    sub_1D139152C();
    v54 = v52;
    sub_1D11544AC(0, &qword_1EC60BC00, &qword_1EC609CB0, &_s22FormattedRecord3ValuesVN);
    sub_1D1154B60();
    v25 = v43;
    sub_1D139158C();
    v26 = v42;
  }

  else
  {
    LOBYTE(v54) = 4;
    sub_1D1154084();
    v24 = v44;
    sub_1D139152C();
    v54 = v52;
    sub_1D11544AC(0, &qword_1EC60BBE0, &qword_1EC609D50, &_s23FormattedRecordMetadataVN);
    sub_1D11549EC();
    v25 = v46;
    sub_1D139158C();
    v26 = v45;
  }

  (*(v26 + 8))(v24, v25);
  return (*(v53 + 8))(v23, v22);
}

uint64_t sub_1D114C87C()
{
  v1 = *v0;
  v2 = 0x6E69616C70;
  v3 = 0x526E4965756C6176;
  v4 = 0x6C61566565726874;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1D114C920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1150F50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114C948(uint64_t a1)
{
  v2 = sub_1D1154228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114C984(uint64_t a1)
{
  v2 = sub_1D1154228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114C9CC(uint64_t a1)
{
  v2 = sub_1D1154084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CA08(uint64_t a1)
{
  v2 = sub_1D1154084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114CA44(uint64_t a1)
{
  v2 = sub_1D11541D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CA80(uint64_t a1)
{
  v2 = sub_1D11541D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114CABC(uint64_t a1)
{
  v2 = sub_1D11540D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CAF8(uint64_t a1)
{
  v2 = sub_1D11540D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114CB34(uint64_t a1)
{
  v2 = sub_1D1154180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CB70(uint64_t a1)
{
  v2 = sub_1D1154180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D114CBAC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D139162C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D114CC2C(uint64_t a1)
{
  v2 = sub_1D115412C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CC68(uint64_t a1)
{
  v2 = sub_1D115412C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114CCA4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1151100(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1D114CD0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v12[1] = a3;
  sub_1D1155034(0, &qword_1EC60BCF8, sub_1D1154FE0, &_s22FormattedRecordKeyDateV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1154FE0();
  sub_1D139181C();
  v15 = 0;
  sub_1D139157C();
  if (!v4)
  {
    v14 = 1;
    sub_1D139157C();
    v13 = 2;
    sub_1D139157C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D114CEC0()
{
  v1 = 0x68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 7954788;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1D114CF08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1151A80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114CF30(uint64_t a1)
{
  v2 = sub_1D1154FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114CF6C(uint64_t a1)
{
  v2 = sub_1D1154FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114CFA8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1151B94(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D114D028(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v3 == v4 && a1[2] < a2[2];
  v7 = v3 < v4 || v6;
  if (*a1 == *a2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D114D06C(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 != *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v5 == v3)
  {
    v8 = __OFSUB__(v6, v4);
    v7 = v6 - v4 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = v7 == v8;
  return v5 >= v3 && v9;
}

BOOL sub_1D114D0B0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3 == v5)
  {
    v8 = __OFSUB__(v4, v6);
    v7 = v4 - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = v7 == v8;
  return v3 >= v5 && v9;
}

uint64_t sub_1D114D0F4(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 == v3 && a2[2] < a1[2];
  v7 = v4 < v3 || v6;
  if (*a2 == *a1)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D114D138(uint64_t a1, uint64_t a2)
{
  sub_1D114D324(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      if (*v2 < *a1)
      {
        return 1;
      }

      if (*v2 == *a1)
      {
        v15 = *(v2 + 8);
        v16 = *(a1 + 8);
        if (v15 >= v16)
        {
          v17 = *(v2 + 16);
          v18 = *(a1 + 16);
          if (v15 != v16 || v17 >= v18)
          {
            v20 = v15 == v16 && v18 < v17;
            result = -1;
            if (v16 < v15 || v20)
            {
              return result;
            }

            goto LABEL_3;
          }
        }

        return 1;
      }

      if (*a1 >= *v2)
      {
        goto LABEL_3;
      }
    }

    return -1;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    return 1;
  }

LABEL_3:
  v8 = *(v2 + 40);
  v9 = *(a1 + 40);
  if (v8)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v21[2] = *(v2 + 32);
      v21[3] = v8;
      v21[0] = v10;
      v21[1] = v9;
      v11 = sub_1D138D67C();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v7, a2, v11);
      (*(v12 + 56))(v7, 0, 1, v11);
      sub_1D10940C8();
      v13 = sub_1D1390FFC();
      sub_1D10CD608(v7);
      return v13;
    }

    return -1;
  }

  return v9 != 0;
}

void sub_1D114D324(uint64_t a1)
{
  if (!qword_1EC60DF40)
  {
    sub_1D138D67C();
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60DF40);
    }
  }
}

uint64_t sub_1D114D37C(void *a1)
{
  v3 = v1;
  sub_1D1155034(0, &qword_1EC60BA40, sub_1D11532A8, &_s18FormattedRecordKeyV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11532A8();
  sub_1D139181C();
  v11[0] = *v3;
  *(v11 + 9) = *(v3 + 9);
  v12 = 0;
  sub_1D1153350();
  sub_1D139154C();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_1D139153C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D114D52C()
{
  sub_1D139177C();
  if ((v0[3] & 1) == 0)
  {
    v2 = v0[1];
    v1 = v0[2];
    v3 = *v0;
    sub_1D139179C();
    MEMORY[0x1D38870E0](v3);
    MEMORY[0x1D38870E0](v2);
    MEMORY[0x1D38870E0](v1);
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D139179C();
    return sub_1D13917CC();
  }

  sub_1D139179C();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D139179C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D114D604()
{
  if (*v0)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 1702125924;
  }
}

void sub_1D114D638(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D139162C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D139162C();

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

uint64_t sub_1D114D714(uint64_t a1)
{
  v2 = sub_1D11532A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114D750(uint64_t a1)
{
  v2 = sub_1D11532A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114D790(uint64_t a1)
{
  v2 = v1[5];
  if ((v1[3] & 1) == 0)
  {
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1;
    sub_1D139179C();
    MEMORY[0x1D38870E0](v6);
    MEMORY[0x1D38870E0](v5);
    MEMORY[0x1D38870E0](v4);
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1D139179C();
  }

  sub_1D139179C();
  if (!v2)
  {
    return sub_1D139179C();
  }

LABEL_3:
  sub_1D139179C();

  return sub_1D139027C();
}

uint64_t sub_1D114D848(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[5];
  sub_1D139177C();
  if ((v5 & 1) == 0)
  {
    sub_1D139179C();
    MEMORY[0x1D38870E0](v3);
    MEMORY[0x1D38870E0](v2);
    MEMORY[0x1D38870E0](v4);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D139179C();
    return sub_1D13917CC();
  }

  sub_1D139179C();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D139179C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D114D914(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1D114F2A4(v7, v8) & 1;
}

double sub_1D114D95C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D1151D98(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D114D9B8(void *a1)
{
  sub_1D1155034(0, &qword_1EC60BA20, sub_1D1153254, &_s20FormattedRecordValueV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1153254();
  sub_1D139181C();
  v12 = 0;
  sub_1D139155C();
  if (!v1)
  {
    v11 = 1;
    sub_1D139155C();
    v10 = 2;
    sub_1D139155C();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D114DB78(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D139162C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D114DBFC(uint64_t a1)
{
  v2 = sub_1D11533A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114DC38(uint64_t a1)
{
  v2 = sub_1D11533A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114DC74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1D1155034(0, &qword_1EC60BA50, sub_1D11533A4, &_s15FormattedRecordV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11533A4();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v15;
  v10 = sub_1D13914CC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1D114DE24(void *a1)
{
  sub_1D1155034(0, &qword_1EC60BA60, sub_1D11533A4, &_s15FormattedRecordV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11533A4();
  sub_1D139181C();
  sub_1D139155C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D114DF8C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D139162C();
  }
}

uint64_t sub_1D114DFBC()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D114E008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1151FBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114E030(uint64_t a1)
{
  v2 = sub_1D1153254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114E06C(uint64_t a1)
{
  v2 = sub_1D1153254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D114E0A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D11520CC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D114E104(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D139162C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1D139162C();
}

uint64_t sub_1D114E1FC(__int128 *a1, uint64_t a2)
{
  sub_1D114D324(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D139028C();
  result = sub_1D139028C();
  if (__OFADD__(v8, result))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v8 + result < 15)
  {
    goto LABEL_5;
  }

  v10 = *(v2 + 7);
  if ((v10 & 0x2000000000000000) != 0)
  {
    if ((v10 & 0xF00000000000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v2[3] & 0xFFFFFFFFFFFFLL) != 0)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = *(v2 + 64);
LABEL_6:
  v12 = sub_1D139028C();
  result = sub_1D139028C();
  if (__OFADD__(v12, result))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v12 + result < 15)
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 7);
  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((a1[3] & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    if (v11)
    {
      if ((a1[4] & 1) == 0)
      {
        return 1;
      }
    }

    else if (a1[4])
    {
      return -1;
    }

    goto LABEL_20;
  }

  if ((v13 & 0xF00000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v11)
  {
    return 1;
  }

LABEL_20:
  v14 = *v2;
  v15 = *v2;
  v22 = *a1;
  v23 = v14;
  v20 = *a1;
  v21 = v15;
  v16 = sub_1D138D67C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v7, a2, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  sub_1D1144324(&v23, v19);
  sub_1D1144324(&v22, v19);
  sub_1D10940C8();
  v18 = sub_1D1390FFC();
  sub_1D10CD608(v7);
  sub_1D114E434(&v22);
  sub_1D114E434(&v23);
  return v18;
}

uint64_t sub_1D114E488(void *a1)
{
  sub_1D1155034(0, &qword_1EC60BA08, sub_1D1153200, &_s27FormattedRecordValueInRangeV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1153200();
  sub_1D139181C();
  v14 = 0;
  sub_1D139155C();
  if (!v1)
  {
    v13 = 1;
    sub_1D139155C();
    v12 = 2;
    sub_1D139155C();
    v11 = 3;
    sub_1D139155C();
    v10 = 4;
    sub_1D139156C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D114E674()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1953066613;
  v4 = 0x65676E6172;
  if (v1 != 3)
  {
    v4 = 0x65676E61526E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1D114E6FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1152350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114E724(uint64_t a1)
{
  v2 = sub_1D1153200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114E760(uint64_t a1)
{
  v2 = sub_1D1153200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D114E79C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D11524F4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D114E808(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a1 + 64);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1D139162C()) && (v2 == v6 && v4 == v7 || (sub_1D139162C()) && (v3 == v8 && v5 == v9 || (sub_1D139162C()) && (v15 == v11 && v16 == v10 || (sub_1D139162C()))
  {
    return v14 ^ v13 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D114E938(void *a1)
{
  sub_1D1155034(0, &qword_1EC60B9F0, sub_1D11531AC, &_s22FormattedRecord3ValuesV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11531AC();
  sub_1D139181C();
  v14 = 0;
  sub_1D139155C();
  if (!v1)
  {
    v13 = 1;
    sub_1D139155C();
    v12 = 2;
    sub_1D139155C();
    v11 = 3;
    sub_1D139155C();
    v10 = 4;
    sub_1D139153C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D114EB24()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x3265756C6176;
  v4 = 0x3365756C6176;
  if (v1 != 3)
  {
    v4 = 0x72656469766F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x3165756C6176;
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

uint64_t sub_1D114EBB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D11528E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D114EBD8(uint64_t a1)
{
  v2 = sub_1D11531AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114EC14(uint64_t a1)
{
  v2 = sub_1D11531AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D114EC50@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D1152A88(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D114ECB4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1D114F354(v8, v9) & 1;
}

uint64_t sub_1D114ED10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  sub_1D1155034(0, &qword_1EC60B9D0, sub_1D11530F8, &_s23FormattedRecordMetadataV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11530F8();
  sub_1D139181C();
  v17 = 0;
  v10 = v14;
  sub_1D139155C();
  if (!v10)
  {
    v15 = v13;
    v16 = 1;
    sub_1D10FA6A8();
    sub_1D115314C(&qword_1EC60B9D8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D114EEF4()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1D114EF2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D139162C();

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

uint64_t sub_1D114F004(uint64_t a1)
{
  v2 = sub_1D11530F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D114F040(uint64_t a1)
{
  v2 = sub_1D11530F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D114F07C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1152EA4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D114F0CC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D10E26D8(v2, v3);
}

void sub_1D114F140(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 == 1)
      {
        sub_1D10E2A40(a1, a3);
      }
    }

    else if (!a4)
    {
      sub_1D10E287C(a1, a3);
    }
  }

  else if (a2 == 2)
  {
    if (a4 == 2)
    {
      sub_1D10E2CA0(a1, a3);
    }
  }

  else if (a2 == 3)
  {
    if (a4 == 3)
    {
      sub_1D10E2F5C(a1, a3);
    }
  }

  else if (a4 == 4)
  {
    sub_1D10E3240(a1, a3);
  }
}

uint64_t sub_1D114F1C8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1D1334AC0(a1[6], a2[6]);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = a1[7];
  v10 = a2[7];

  return sub_1D10E26D8(v9, v10);
}

uint64_t sub_1D114F2A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }

LABEL_13:
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    if (v6)
    {
      if (v7)
      {
        if (*(a1 + 32) == *(a2 + 32) && v6 == v7)
        {
          return 1;
        }

        if (sub_1D139162C())
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
    if (v4 && *(a1 + 16) == *(a2 + 16))
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_1D114F354(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D139162C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1D139162C()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_1D139162C()) && (a1[6] == a2[6] && a1[7] == a2[7] || (sub_1D139162C()))
    {
      v6 = a1[9];
      v7 = a2[9];
      if (v6)
      {
        if (v7 && (a1[8] == a2[8] && v6 == v7 || (sub_1D139162C() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D114F448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v30 = a5;
  v31 = a6;
  v27 = a3;
  v11 = sub_1D138CF3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1D138CF2C();
  sub_1D10940C8();
  v15 = sub_1D1390FAC();
  v28 = v16;
  v29 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);

  v32 = v27;
  v33 = a4;
  sub_1D138CF2C();
  v18 = sub_1D1390FAC();
  v20 = v19;
  v17(v14, v11);

  v32 = v30;
  v33 = v31;
  sub_1D138CF2C();
  v21 = sub_1D1390FAC();
  v23 = v22;
  result = (v17)(v14, v11);
  v25 = v28;
  *a7 = v29;
  a7[1] = v25;
  a7[2] = v18;
  a7[3] = v20;
  a7[4] = v21;
  a7[5] = v23;
  return result;
}

uint64_t sub_1D114F604@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138CF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v29 = a1[1];
  v9 = a1[2];
  v27 = v8;
  v28 = v9;
  sub_1D138CF2C();
  sub_1D10940C8();
  v10 = sub_1D1390FAC();
  v25 = v11;
  v26 = v10;
  v12 = *(v5 + 8);
  v12(v7, v4);
  v27 = v29;
  sub_1D138CF2C();
  v24 = sub_1D1390FAC();
  v14 = v13;
  v12(v7, v4);
  v27 = v28;
  sub_1D138CF2C();
  v15 = sub_1D1390FAC();
  v17 = v16;
  v12(v7, v4);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_1D138CF2C();
  v18 = sub_1D1390FAC();
  v20 = v19;
  result = (v12)(v7, v4);
  v22 = v25;
  *a2 = v26;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = 1;
  return result;
}

void sub_1D114F7F8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a3;
  v9 = sub_1D138CF3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  sub_1D138CF2C();
  sub_1D10940C8();
  v13 = sub_1D1390FAC();
  v34 = v14;
  v35 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1D138CF2C();
  v16 = sub_1D1390FAC();
  v32 = v17;
  v33 = v16;
  v15(v12, v9);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1D138CF2C();
  v18 = sub_1D1390FAC();
  v30 = v19;
  v31 = v18;
  v15(v12, v9);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1D138CF2C();
  v20 = sub_1D1390FAC();
  v22 = v21;
  v15(v12, v9);
  if (a4)
  {
    v37 = v36;
    v38 = a4;

    sub_1D138CF2C();
    v23 = sub_1D1390FAC();
    v25 = v24;

    v15(v12, v9);
  }

  else
  {
    v25 = 0;
    v23 = v36;
  }

  v26 = v34;
  *a5 = v35;
  a5[1] = v26;
  v27 = v32;
  a5[2] = v33;
  a5[3] = v27;
  v28 = v30;
  a5[4] = v31;
  a5[5] = v28;
  a5[6] = v20;
  a5[7] = v22;
  a5[8] = v23;
  a5[9] = v25;
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