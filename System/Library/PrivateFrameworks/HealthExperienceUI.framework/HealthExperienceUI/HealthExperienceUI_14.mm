uint64_t sub_1BA08B658(void *a1, int a2)
{
  LODWORD(v2) = a2;
  sub_1BA0909B8(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v15 = a1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v2;
    v2 = v18;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v2 = 136446466;
    *(v2 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v35);
    *(v2 + 12) = 2080;
    v34 = a1;
    v19 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v20 = sub_1BA4A6828();
    v22 = sub_1B9F0B82C(v20, v21, &v35);
    v31 = v10;
    v23 = v6;
    v24 = v5;
    v25 = v22;

    *(v2 + 14) = v25;
    v5 = v24;
    v6 = v23;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s] Received an error when attempting to commit a transaction: %s", v2, 0x16u);
    v26 = v32;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v2;
    LOBYTE(v2) = v33;
    MEMORY[0x1BFAF43A0](v27, -1, -1);

    (*(v11 + 8))(v14, v31);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  LOBYTE(v35) = v2 & 1;
  sub_1BA4A4E78();
  sub_1BA08FC30();
  v28 = sub_1BA4A4F98();
  (*(v6 + 8))(v9, v5);
  return v28;
}

void sub_1BA08B990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1BA08FE28();
        v29 = sub_1BA4A6698();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1BA08FE5C();
          v34 = sub_1BA4A6728();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BA08BD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), void (*a5)(char *))
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  sub_1B9F3D488(0, a2, a3, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = v25 - v11;
  v13 = (a4)(0, v10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v25 - v16;
  if (*(*v5 + 16))
  {
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v14 + 8;
    v25[2] = v14 + 16;

    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v14 + 16))(v17, *(a1 + 48) + *(v14 + 72) * (v24 | (v23 << 6)), v13);
      v28(v17);
      (*(v14 + 8))(v17, v13);
      sub_1BA091A88(v12, v26, v27);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return;
      }

      v20 = *(a1 + 56 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BA08BF54(uint64_t a1, uint64_t a2)
{
  v103 = *MEMORY[0x1E69E9840];
  sub_1B9F3D488(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v74 - v10);
  v12 = sub_1BA4A3A28();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v94 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v74 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v89 = (&v74 - v22);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v75 = v11;
  v77 = v7;
  v24 = a1 + 56;
  v23 = *(a1 + 56);
  v25 = -1 << *(a1 + 32);
  v88 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v96 = (v26 & v23);
  v80 = (63 - v25) >> 6;
  v95 = v13 + 2;
  v85 = (v13 + 6);
  v86 = (v13 + 7);
  v84 = (v13 + 4);
  v91 = (a2 + 56);
  v97 = (v13 + 1);
  v87 = a1;

  v28 = 0;
  v76 = v13;
  for (i = a1 + 56; ; v24 = i)
  {
    v29 = v96;
    v30 = v28;
    if (v96)
    {
LABEL_14:
      v7 = (v29 - 1) & v29;
      v34 = v87;
      v35 = *(v87 + 48) + v13[9] * (__clz(__rbit64(v29)) | (v30 << 6));
      v36 = v13[2];
      v37 = v75;
      v36(v75, v35, v12);
      v38 = 0;
      v32 = v30;
    }

    else
    {
      v31 = v80 <= (v28 + 1) ? v28 + 1 : v80;
      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        if (v30 >= v80)
        {
          break;
        }

        v29 = *(v24 + 8 * v30);
        ++v33;
        if (v29)
        {
          goto LABEL_14;
        }
      }

      v7 = 0;
      v38 = 1;
      v37 = v75;
      v34 = v87;
    }

    v82 = *v86;
    v82(v37, v38, 1, v12);
    v98 = v34;
    v99 = v24;
    v100 = v88;
    v101 = v32;
    v102 = v7;
    v81 = *v85;
    if (v81(v37, 1, v12) == 1)
    {
      sub_1BA091A88(v37, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
      v67 = v34;
      goto LABEL_53;
    }

    v79 = *v84;
    v79(v89, v37, v12);
    v78 = sub_1BA08FE28();
    v39 = sub_1BA4A6698();
    v40 = -1 << *(a2 + 32);
    v28 = v39 & ~v40;
    v30 = v28 >> 6;
    v24 = 1 << v28;
    if (((1 << v28) & v91[v28 >> 6]) != 0)
    {
      break;
    }

    v13 = v76;
    (*v97)(v89, v12);
LABEL_22:
    v28 = v32;
    v96 = v7;
  }

  v74 = v97 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v90 = ~v40;
  v41 = v76[9];
  v92 = v76[2];
  v93 = v41;
  while (1)
  {
    v92(v19, *(a2 + 48) + v93 * v28, v12);
    v42 = sub_1BA08FE5C();
    v43 = sub_1BA4A6728();
    v96 = *v97;
    v96(v19, v12);
    if (v43)
    {
      break;
    }

    v28 = (v28 + 1) & v90;
    v30 = v28 >> 6;
    v24 = 1 << v28;
    if (((1 << v28) & v91[v28 >> 6]) == 0)
    {
      v13 = v76;
      v96(v89, v12);
      goto LABEL_22;
    }
  }

  v90 = v42;
  v44 = (v96)(v89, v12);
  v46 = *(a2 + 32);
  v74 = ((1 << v46) + 63) >> 6;
  v27 = 8 * v74;
  v13 = v87;
  if ((v46 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v75 = &v74;
    MEMORY[0x1EEE9AC00](v44, v45);
    v48 = &v74 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v48, v91, v47);
    v49 = *&v48[8 * v30] & ~v24;
    v50 = *(a2 + 16);
    v89 = v48;
    *&v48[8 * v30] = v49;
    v51 = v50 - 1;
    v52 = v77;
    v30 = i;
    v53 = v80;
LABEL_26:
    v76 = v51;
    while (v7)
    {
      v54 = v32;
LABEL_38:
      v57 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v92(v52, v13[6] + (v57 | (v54 << 6)) * v93, v12);
      v58 = 0;
LABEL_39:
      v82(v52, v58, 1, v12);
      v98 = v13;
      v99 = v30;
      v100 = v88;
      v101 = v32;
      v102 = v7;
      if (v81(v52, 1, v12) == 1)
      {
        sub_1BA091A88(v52, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
        a2 = sub_1BA3070E4(v89, v74, v76, a2);
        goto LABEL_52;
      }

      v79(v94, v52, v12);
      v59 = sub_1BA4A6698();
      v60 = a2;
      v61 = -1 << *(a2 + 32);
      v28 = v59 & ~v61;
      v62 = v28 >> 6;
      v24 = 1 << v28;
      if (((1 << v28) & v91[v28 >> 6]) != 0)
      {
        v92(v19, *(v60 + 48) + v28 * v93, v12);
        v63 = sub_1BA4A6728();
        v96(v19, v12);
        if ((v63 & 1) == 0)
        {
          v64 = ~v61;
          do
          {
            v28 = (v28 + 1) & v64;
            v62 = v28 >> 6;
            v24 = 1 << v28;
            if (((1 << v28) & v91[v28 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v92(v19, *(v60 + 48) + v28 * v93, v12);
            v65 = sub_1BA4A6728();
            v96(v19, v12);
          }

          while ((v65 & 1) == 0);
        }

        v96(v94, v12);
        v66 = v89[v62];
        v89[v62] = v66 & ~v24;
        a2 = v60;
        v13 = v87;
        v52 = v77;
        v30 = i;
        v53 = v80;
        if ((v66 & v24) != 0)
        {
          v51 = v76 - 1;
          if (__OFSUB__(v76, 1))
          {
            __break(1u);
          }

          if (v76 == 1)
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
        v96(v94, v12);
        a2 = v60;
        v13 = v87;
        v52 = v77;
        v30 = i;
        v53 = v80;
      }
    }

    if (v53 <= (v32 + 1))
    {
      v55 = v32 + 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v54 >= v53)
      {
        v7 = 0;
        v58 = 1;
        v32 = v56;
        goto LABEL_39;
      }

      v7 = *(v30 + 8 * v54);
      ++v32;
      if (v7)
      {
        v32 = v54;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v69 = v27;

    v89 = a2;
    v70 = v69;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v71 = v89;

      a2 = v71;
      continue;
    }

    break;
  }

  v72 = swift_slowAlloc();
  memcpy(v72, v91, v70);
  sub_1BA08E838(v72, v74, v89, v28, &v98);
  a2 = v73;

  MEMORY[0x1BFAF43A0](v72, -1, -1);
LABEL_52:
  v67 = v98;
LABEL_53:
  sub_1B9F52E48(v67);
  return a2;
}

uint64_t sub_1BA08C9A4(uint64_t a1, uint64_t a2)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  i = v53 - v14;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67[0] = a1;
  v15 = *(a1 + 16);

  v55 = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = *(v17 + 64);
  v57 = a1;
  v58 = a1 + ((v19 + 32) & ~v19);
  v64 = *(v17 + 56);
  v65 = v18;
  v62 = (a2 + 56);
  v63 = a2;
  v66 = v17;
  v20 = (v17 - 8);
  v54 = ((v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v59 = v16 + 1;
    v67[1] = v16 + 1;
    v65(i, v58 + v64 * v16, v4);
    v56 = sub_1BA08FE28();
    v21 = sub_1BA4A6698();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) != 0)
    {
      break;
    }

    v28 = *v20;
LABEL_10:
    v28(i, v4);
    v16 = v59;
    if (v59 == v55)
    {
      goto LABEL_30;
    }
  }

  v26 = ~v22;
  while (1)
  {
    v65(v11, *(v63 + 48) + v23 * v64, v4);
    sub_1BA08FE5C();
    v27 = sub_1BA4A6728();
    v28 = *v20;
    (*v20)(v11, v4);
    if (v27)
    {
      break;
    }

    v23 = (v23 + 1) & v26;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) == 0)
    {
      a2 = v63;
      goto LABEL_10;
    }
  }

  v29 = (v28)(i, v4);
  v31 = v63;
  v32 = *(v63 + 32);
  v53[0] = ((1 << v32) + 63) >> 6;
  v33 = 8 * v53[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v29, v30);
    v35 = v53 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v62, v34);
    v36 = *(v31 + 16);
    *&v35[8 * v24] &= ~v25;
    v54 = v35;
    v55 = (v36 - 1);
    v37 = *(v57 + 16);
    v38 = v59;
    for (i = v37; ; v37 = i)
    {
      if (v38 == v37)
      {
        a2 = sub_1BA3070E4(v54, v53[0], v55, v31);
        goto LABEL_30;
      }

      if (v38 >= *(v57 + 16))
      {
        break;
      }

      v59 = v38;
      v65(v61, v58 + v38 * v64, v4);
      v40 = sub_1BA4A6698();
      v41 = -1 << *(v31 + 32);
      v23 = v40 & ~v41;
      v25 = v23 >> 6;
      v24 = 1 << v23;
      if (((1 << v23) & v62[v23 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v65(v11, *(v63 + 48) + v23 * v64, v4);
      v42 = sub_1BA4A6728();
      v28(v11, v4);
      if ((v42 & 1) == 0)
      {
        v43 = ~v41;
        while (1)
        {
          v23 = (v23 + 1) & v43;
          v25 = v23 >> 6;
          v24 = 1 << v23;
          if (((1 << v23) & v62[v23 >> 6]) == 0)
          {
            break;
          }

          v65(v11, *(v63 + 48) + v23 * v64, v4);
          v44 = sub_1BA4A6728();
          v28(v11, v4);
          if (v44)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v28(v61, v4);
        v31 = v63;
LABEL_16:
        v39 = v59;
        goto LABEL_17;
      }

LABEL_25:
      v28(v61, v4);
      v45 = v54[v25];
      v54[v25] = v45 & ~v24;
      v31 = v63;
      if ((v45 & v24) == 0)
      {
        goto LABEL_16;
      }

      v46 = v55 - 1;
      v39 = v59;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_33;
      }

      --v55;
      if (!v46)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v38 = v39 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v33;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v63;

      v31 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v49);
  sub_1BA08F464(v51, v53[0], v63, v23, v67, MEMORY[0x1E69A3910], sub_1BA08FE28, sub_1BA3070E4, sub_1BA08FE5C);
  a2 = v52;

  MEMORY[0x1BFAF43A0](v51, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_1BA08D058(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x1E69E9840];
  sub_1B9F3D488(0, &qword_1EBBEB198, MEMORY[0x1E69A3C80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v71 - v10);
  v12 = sub_1BA4A1E88();
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v71 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = (&v71 - v22);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v72 = v11;
  v74 = v7;
  v24 = a1 + 56;
  v23 = *(a1 + 56);
  v25 = -1 << *(a1 + 32);
  v85 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v93 = (v26 & v23);
  v78 = (63 - v25) >> 6;
  v92 = v21 + 16;
  v83 = (v21 + 48);
  v84 = (v21 + 56);
  v82 = (v21 + 32);
  v88 = (a2 + 56);
  v73 = v21;
  v94 = (v21 + 8);

  v28 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v24 = i)
  {
    v29 = v93;
    v30 = v28;
    if (v93)
    {
LABEL_14:
      v7 = (v29 - 1) & v29;
      v34 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v12);
      v35 = 0;
      v32 = v30;
    }

    else
    {
      v31 = v78 <= (v28 + 1) ? v28 + 1 : v78;
      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        if (v30 >= v78)
        {
          break;
        }

        v29 = *(v24 + 8 * v30);
        ++v33;
        if (v29)
        {
          goto LABEL_14;
        }
      }

      v7 = 0;
      v35 = 1;
      v34 = v72;
    }

    v80 = *v84;
    v80(v34, v35, 1, v12);
    v95 = a1;
    v96 = v24;
    v97 = v85;
    v98 = v32;
    v99 = v7;
    v79 = *v83;
    if (v79(v34, 1, v12) == 1)
    {
      sub_1BA091A88(v34, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
      v64 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v34, v12);
    v76 = sub_1BA091AF8(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
    v36 = sub_1BA4A6698();
    v37 = -1 << *(a2 + 32);
    v28 = v36 & ~v37;
    v30 = v28 >> 6;
    v24 = 1 << v28;
    if (((1 << v28) & v88[v28 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v12);
LABEL_22:
    v28 = v32;
    v93 = v7;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v37;
  v38 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v38;
  while (1)
  {
    v89(v18, *(a2 + 48) + v90 * v28, v12);
    v39 = sub_1BA091AF8(&unk_1EBBEA658, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C90]);
    v40 = sub_1BA4A6728();
    v93 = *v94;
    v93(v18, v12);
    if (v40)
    {
      break;
    }

    v28 = (v28 + 1) & v87;
    v30 = v28 >> 6;
    v24 = 1 << v28;
    if (((1 << v28) & v88[v28 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v12);
      goto LABEL_22;
    }
  }

  v87 = v39;
  v41 = (v93)(v86, v12);
  v43 = *(a2 + 32);
  v71 = ((1 << v43) + 63) >> 6;
  v27 = 8 * v71;
  a1 = v75;
  if ((v43 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x1EEE9AC00](v41, v42);
    v45 = &v71 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v45, v88, v44);
    v46 = *&v45[8 * v30] & ~v24;
    v47 = *(a2 + 16);
    v86 = v45;
    *&v45[8 * v30] = v46;
    v48 = v47 - 1;
    v49 = v74;
    v30 = i;
    v50 = v78;
LABEL_26:
    v73 = v48;
    while (v7)
    {
      v51 = v32;
LABEL_38:
      v54 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v89(v49, *(a1 + 48) + (v54 | (v51 << 6)) * v90, v12);
      v55 = 0;
LABEL_39:
      v80(v49, v55, 1, v12);
      v95 = a1;
      v96 = v30;
      v97 = v85;
      v98 = v32;
      v99 = v7;
      if (v79(v49, 1, v12) == 1)
      {
        sub_1BA091A88(v49, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
        a2 = sub_1BA30762C(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v49, v12);
      v56 = sub_1BA4A6698();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v28 = v56 & ~v58;
      v59 = v28 >> 6;
      v24 = 1 << v28;
      if (((1 << v28) & v88[v28 >> 6]) != 0)
      {
        v89(v18, *(v57 + 48) + v28 * v90, v12);
        v60 = sub_1BA4A6728();
        v93(v18, v12);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v28 = (v28 + 1) & v61;
            v59 = v28 >> 6;
            v24 = 1 << v28;
            if (((1 << v28) & v88[v28 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v18, *(v57 + 48) + v28 * v90, v12);
            v62 = sub_1BA4A6728();
            v93(v18, v12);
          }

          while ((v62 & 1) == 0);
        }

        v93(v91, v12);
        v63 = v86[v59];
        v86[v59] = v63 & ~v24;
        a2 = v57;
        a1 = v75;
        v49 = v74;
        v30 = i;
        v50 = v78;
        if ((v63 & v24) != 0)
        {
          v48 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
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
        v93(v91, v12);
        a2 = v57;
        a1 = v75;
        v49 = v74;
        v30 = i;
        v50 = v78;
      }
    }

    if (v50 <= (v32 + 1))
    {
      v52 = v32 + 1;
    }

    else
    {
      v52 = v50;
    }

    v53 = v52 - 1;
    while (1)
    {
      v51 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v51 >= v50)
      {
        v7 = 0;
        v55 = 1;
        v32 = v53;
        goto LABEL_39;
      }

      v7 = *(v30 + 8 * v51);
      ++v32;
      if (v7)
      {
        v32 = v51;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v66 = v27;

    v86 = a2;
    v67 = v66;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v68 = v86;

      a2 = v68;
      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();
  memcpy(v69, v88, v67);
  sub_1BA08ECDC(v69, v71, v86, v28, &v95);
  a2 = v70;

  MEMORY[0x1BFAF43A0](v69, -1, -1);
LABEL_52:
  v64 = v95;
LABEL_53:
  sub_1B9F52E48(v64);
  return a2;
}

uint64_t sub_1BA08DAFC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1BA091AF8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    sub_1BA4A6DA8();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_1BA4A7CF8();
      if (!v22)
      {
        goto LABEL_65;
      }

      v73 = v22;
      sub_1BA4A27B8();
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
LABEL_65:
        v55 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_1BA4A7788();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v25;
  v26 = sub_1BA4A27B8();
  v27 = *(*(v4 + 48) + 8 * v7);
  v71 = v26;
  while (1)
  {
    v28 = sub_1BA4A7798();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x1EEE9AC00](v29, v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v35 = *&v33[8 * v5] & ~v16;
    v36 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v35;
    v5 = v36 - 1;
    v38 = v68;
    v37 = v69;
LABEL_33:
    v67 = v5;
    while (v37 < 0)
    {
      v39 = sub_1BA4A7CF8();
      if (!v39)
      {
        goto LABEL_61;
      }

      v73 = v39;
      swift_dynamicCast();
      v40 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = sub_1BA4A7788();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_1BA4A7798();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v38 = v68;
        v37 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v38 = v68;
        v37 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v37 + 48) + ((v16 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v16;
LABEL_49:
      v75 = v37;
      v76 = v38;
      v77 = v66;
      v78 = v42;
      v18 = v42;
      v79 = v2;
      if (!v40)
      {
LABEL_61:
        v4 = sub_1BA307B44(v65, v63, v5, v4, v34);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v41 = v18 + 1;
    }

    else
    {
      v41 = v3;
    }

    v42 = v41 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v38 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_1BA08F1E0(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x1BFAF43A0](v59, -1, -1);
  v4 = v61;
LABEL_62:
  v55 = v75;
LABEL_63:
  sub_1B9F52E48(v55);
  return v4;
}

uint64_t sub_1BA08E184(uint64_t a1, uint64_t a2)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  i = v53 - v14;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67[0] = a1;
  v15 = *(a1 + 16);

  v55 = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = *(v17 + 64);
  v57 = a1;
  v58 = a1 + ((v19 + 32) & ~v19);
  v64 = *(v17 + 56);
  v65 = v18;
  v62 = (a2 + 56);
  v63 = a2;
  v66 = v17;
  v20 = (v17 - 8);
  v54 = ((v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v59 = v16 + 1;
    v67[1] = v16 + 1;
    v65(i, v58 + v64 * v16, v4);
    v56 = sub_1BA091A20();
    v21 = sub_1BA4A6698();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) != 0)
    {
      break;
    }

    v28 = *v20;
LABEL_10:
    v28(i, v4);
    v16 = v59;
    if (v59 == v55)
    {
      goto LABEL_30;
    }
  }

  v26 = ~v22;
  while (1)
  {
    v65(v11, *(v63 + 48) + v23 * v64, v4);
    sub_1BA091A54();
    v27 = sub_1BA4A6728();
    v28 = *v20;
    (*v20)(v11, v4);
    if (v27)
    {
      break;
    }

    v23 = (v23 + 1) & v26;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v62[v23 >> 6]) == 0)
    {
      a2 = v63;
      goto LABEL_10;
    }
  }

  v29 = (v28)(i, v4);
  v31 = v63;
  v32 = *(v63 + 32);
  v53[0] = ((1 << v32) + 63) >> 6;
  v33 = 8 * v53[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v29, v30);
    v35 = v53 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v62, v34);
    v36 = *(v31 + 16);
    *&v35[8 * v24] &= ~v25;
    v54 = v35;
    v55 = (v36 - 1);
    v37 = *(v57 + 16);
    v38 = v59;
    for (i = v37; ; v37 = i)
    {
      if (v38 == v37)
      {
        a2 = sub_1BA307D70(v54, v53[0], v55, v31);
        goto LABEL_30;
      }

      if (v38 >= *(v57 + 16))
      {
        break;
      }

      v59 = v38;
      v65(v61, v58 + v38 * v64, v4);
      v40 = sub_1BA4A6698();
      v41 = -1 << *(v31 + 32);
      v23 = v40 & ~v41;
      v25 = v23 >> 6;
      v24 = 1 << v23;
      if (((1 << v23) & v62[v23 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v65(v11, *(v63 + 48) + v23 * v64, v4);
      v42 = sub_1BA4A6728();
      v28(v11, v4);
      if ((v42 & 1) == 0)
      {
        v43 = ~v41;
        while (1)
        {
          v23 = (v23 + 1) & v43;
          v25 = v23 >> 6;
          v24 = 1 << v23;
          if (((1 << v23) & v62[v23 >> 6]) == 0)
          {
            break;
          }

          v65(v11, *(v63 + 48) + v23 * v64, v4);
          v44 = sub_1BA4A6728();
          v28(v11, v4);
          if (v44)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v28(v61, v4);
        v31 = v63;
LABEL_16:
        v39 = v59;
        goto LABEL_17;
      }

LABEL_25:
      v28(v61, v4);
      v45 = v54[v25];
      v54[v25] = v45 & ~v24;
      v31 = v63;
      if ((v45 & v24) == 0)
      {
        goto LABEL_16;
      }

      v46 = v55 - 1;
      v39 = v59;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_33;
      }

      --v55;
      if (!v46)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v38 = v39 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v33;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v63;

      v31 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v49);
  sub_1BA08F464(v51, v53[0], v63, v23, v67, MEMORY[0x1E69A3E18], sub_1BA091A20, sub_1BA307D70, sub_1BA091A54);
  a2 = v52;

  MEMORY[0x1BFAF43A0](v51, -1, -1);
LABEL_30:

  return a2;
}

void sub_1BA08E838(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  sub_1B9F3D488(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1BA4A3A28();
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v27 = *a5;
        v26 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v26 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v27 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v27;
        a5[1] = v26;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1BA091A88(v12, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
          v48 = v64;

          sub_1BA3070E4(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1BA08FE28();
        v38 = sub_1BA4A6698();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1BA08FE5C();
        v46 = sub_1BA4A6728();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1BA08ECDC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  sub_1B9F3D488(0, &qword_1EBBEB198, MEMORY[0x1E69A3C80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1BA4A1E88();
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1BA091A88(v12, &qword_1EBBEB198, MEMORY[0x1E69A3C80]);
          v48 = v64;

          sub_1BA30762C(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1BA091AF8(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
        v38 = sub_1BA4A6698();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1BA091AF8(&unk_1EBBEA658, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C90]);
        v46 = sub_1BA4A6728();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1BA08F1E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1BA4A7CF8())
          {
            goto LABEL_29;
          }

          sub_1BA4A27B8();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1BA307B44(a1, a2, v31, a3, v29);
            return;
          }
        }

        v18 = sub_1BA4A7788();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v34 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1BA4A27B8();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1BA4A7798();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v34 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1BA4A7798();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1BA08F464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a9)(uint64_t))
{
  v47 = a8;
  v55 = a7;
  v46 = a2;
  v13 = a6(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v54 = &v45 - v20;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v62 = &v45 - v24;
  v25 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v48 = a1;
  v49 = v25 - 1;
  v26 = *a5;
  v27 = a5[1];
  v28 = *(*a5 + 16);
  if (v27 == v28)
  {
LABEL_2:

    (v47)(v48, v46, v49, a3);
    return;
  }

  v29 = a5;
  v60 = v14 + 16;
  v52 = v14 + 32;
  v53 = v14;
  v56 = a9;
  v57 = a3 + 56;
  v61 = (v14 + 8);
  v50 = a5;
  while (v27 < v28)
  {
    v31 = *(v14 + 80);
    v59 = *(v14 + 72);
    v32 = v54;
    v58 = *(v14 + 16);
    v58(v54, v26 + ((v31 + 32) & ~v31) + v59 * v27, v13, v23);
    v29[1] = v27 + 1;
    v33 = (*(v14 + 32))(v62, v32, v13);
    v55(v33);
    v34 = sub_1BA4A6698();
    v35 = -1 << *(a3 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    v38 = 1 << v36;
    if (((1 << v36) & *(v57 + 8 * (v36 >> 6))) == 0)
    {
      v30 = *v61;
LABEL_5:
      v30(v62, v13);
      goto LABEL_6;
    }

    v51 = v61 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39 = a3;
    v40 = ~v35;
    while (1)
    {
      v41 = (v58)(v17, *(v39 + 48) + v36 * v59, v13);
      v56(v41);
      v42 = sub_1BA4A6728();
      v30 = *v61;
      (*v61)(v17, v13);
      if (v42)
      {
        break;
      }

      v36 = (v36 + 1) & v40;
      v37 = v36 >> 6;
      v38 = 1 << v36;
      if (((1 << v36) & *(v57 + 8 * (v36 >> 6))) == 0)
      {
        a3 = v39;
        v29 = v50;
        goto LABEL_5;
      }
    }

    v30(v62, v13);
    v43 = *(v48 + 8 * v37);
    *(v48 + 8 * v37) = v43 & ~v38;
    if ((v43 & v38) == 0)
    {
      a3 = v39;
      v29 = v50;
LABEL_6:
      v14 = v53;
      goto LABEL_7;
    }

    v44 = v49 - 1;
    v14 = v53;
    if (__OFSUB__(v49, 1))
    {
      goto LABEL_20;
    }

    a3 = v39;
    v29 = v50;
    --v49;
    if (!v44)
    {
      return;
    }

LABEL_7:
    v26 = *v29;
    v27 = v29[1];
    v28 = *(*v29 + 16);
    if (v27 == v28)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1BA08F824(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1BA4A1798() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_1BA08AE08(a1, a2, v6, v7, v8, v9);
}

void sub_1BA08F8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v7 = a3(a1, MEMORY[0x1E69E6370], v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA08F944()
{
  result = qword_1EBBEB038;
  if (!qword_1EBBEB038)
  {
    sub_1BA091330(255, &qword_1EBBEB018, sub_1BA08B238, sub_1BA08B468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB038);
  }

  return result;
}

void sub_1BA08FA0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA08FA74(uint64_t a1)
{
  if (!qword_1EBBEB040)
  {
    v1 = MEMORY[0x1E695C028];
    sub_1BA08F8AC(255, &qword_1EBBEB028, MEMORY[0x1E695C028]);
    sub_1BA08B424(&qword_1EBBEB030, &qword_1EBBEB028, v1, MEMORY[0x1E695C038]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEB040);
    }
  }
}

void sub_1BA08FB30(uint64_t a1)
{
  if (!qword_1EBBEB048)
  {
    sub_1BA08FA74(255);
    v1 = MEMORY[0x1E69E6370];
    sub_1BA091C38(255, &qword_1EDC5F4A0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1BA091AF8(&qword_1EBBEB050, sub_1BA08FA74, MEMORY[0x1E695BD60]);
    sub_1BA091CA0(&qword_1EDC5F4A8, &qword_1EDC5F4A0, v1);
    v2 = sub_1BA4A4BB8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEB048);
    }
  }
}

unint64_t sub_1BA08FC30()
{
  result = qword_1EDC5F440;
  if (!qword_1EDC5F440)
  {
    sub_1BA0909B8(255, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F440);
  }

  return result;
}

uint64_t sub_1BA08FCAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA083F00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BA08FCD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BA08B49C(*a1, *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BA08FD0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA08B658(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1BA08FD94(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D488(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA08FE90(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = sub_1BA4A3A28();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - v9;
  v11 = sub_1BA4A3EA8();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  sub_1BA4154C8();
  v19 = v64;
  v20 = v65;
  v21 = sub_1BA4A3B58();
  v65 = v20;
  if (v20)
  {
  }

  else
  {
    v23 = v21;
    v59 = v6;
    v61 = v18;
    v64 = v11;

    v24 = sub_1BA1B05F0(v23);
    if (v24)
    {
      v26 = v24;
      v27 = v25;
      v60 = v23;
      ObjectType = swift_getObjectType();
      v29 = a1;
      v30 = (*(v27 + 16))(a1, ObjectType, v27);
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        v34 = v61;
        sub_1BA4A3D88();

        v35 = sub_1BA4A3E88();
        v36 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v66 = v38;
          *v37 = 136315394;
          *(v37 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v66);
          *(v37 + 12) = 2080;

          v39 = sub_1B9F0B82C(v32, v33, &v66);

          *(v37 + 14) = v39;
          _os_log_impl(&dword_1B9F07000, v35, v36, "[%s] Fetched feed item identifier: %s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v38, -1, -1);
          MEMORY[0x1BFAF43A0](v37, -1, -1);
        }

        (*(v63 + 8))(v34, v64);
        sub_1BA4A27B8();
        v19 = sub_1BA4A26A8();
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = v26;
        v40 = v14;
        sub_1BA4A3D88();
        v41 = v62;
        v42 = *(v62 + 16);
        v43 = v3;
        v42(v10, v29, v3);
        v58 = v40;
        v44 = sub_1BA4A3E88();
        v45 = sub_1BA4A6FA8();
        v57 = v44;
        v46 = os_log_type_enabled(v44, v45);
        v47 = v63;
        if (v46)
        {
          v48 = v10;
          v49 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v66 = v56;
          *v49 = 136315394;
          *(v49 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4BACE0, &v66);
          *(v49 + 12) = 2080;
          v42(v59, v10, v43);
          v50 = sub_1BA4A6808();
          v52 = v51;
          (*(v41 + 8))(v48, v43);
          v53 = sub_1B9F0B82C(v50, v52, &v66);

          *(v49 + 14) = v53;
          v54 = v57;
          _os_log_impl(&dword_1B9F07000, v57, v45, "[%s] Did not receive a feed item identifier for auth identifier: %s", v49, 0x16u);
          v55 = v56;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v55, -1, -1);
          MEMORY[0x1BFAF43A0](v49, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v41 + 8))(v10, v43);
        }

        (*(v47 + 8))(v58, v64);
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v19;
}

uint64_t sub_1BA090428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v21 - v12;
  v22 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v4, v11);
      sub_1BA0E2238(v13, v8);
      (*(v15 - 8))(v13, v4);
      v18 += v19;
      --v14;
    }

    while (v14);
    return v22;
  }

  return a2;
}

void sub_1BA090588(uint64_t a1)
{
  if (!qword_1EBBEB068)
  {
    sub_1BA090874(255, &unk_1EBBEDFE0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E695BED0]);
    sub_1BA08FA0C(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
    sub_1BA090668();
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB068);
    }
  }
}

unint64_t sub_1BA090668()
{
  result = qword_1EBBEDFF0;
  if (!qword_1EBBEDFF0)
  {
    sub_1BA090874(255, &unk_1EBBEDFE0, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDFF0);
  }

  return result;
}

void sub_1BA0906F8(uint64_t a1)
{
  if (!qword_1EBBEB078)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA090874(255, &unk_1EBBEE000, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BED0]);
    sub_1B9F3D488(255, &qword_1EBBEB070, MEMORY[0x1E69A3340], MEMORY[0x1E69E6720]);
    sub_1BA090810(&qword_1EBBEE010, &unk_1EBBEE000, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEB078);
    }
  }
}

uint64_t sub_1BA090810(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA090874(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA090874(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3D488(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA09091C(uint64_t a1)
{
  if (!qword_1EBBEB090)
  {
    sub_1BA090984(255);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB090);
    }
  }
}

void sub_1BA0909B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA090A08(uint64_t a1)
{
  if (!qword_1EBBEB0A0)
  {
    sub_1BA090AF4(255, &qword_1EBBEB0A8, sub_1BA090B9C, sub_1BA090C60);
    sub_1BA090C94(255);
    sub_1BA090D44();
    sub_1BA091AF8(&qword_1EBBEB0D0, sub_1BA090C94, MEMORY[0x1E695C038]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB0A0);
    }
  }
}

void sub_1BA090AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    a4();
    v6 = sub_1BA4A4B38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1BA090BD8()
{
  result = qword_1EBBEA908;
  if (!qword_1EBBEA908)
  {
    sub_1B9F3D488(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA908);
  }

  return result;
}

void sub_1BA090C94(uint64_t a1)
{
  if (!qword_1EBBEB0C0)
  {
    sub_1B9F3D488(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB0C0);
    }
  }
}

unint64_t sub_1BA090D44()
{
  result = qword_1EBBEB0C8;
  if (!qword_1EBBEB0C8)
  {
    sub_1BA090AF4(255, &qword_1EBBEB0A8, sub_1BA090B9C, sub_1BA090C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB0C8);
  }

  return result;
}

void sub_1BA090DCC(uint64_t a1)
{
  if (!qword_1EBBEB0D8)
  {
    sub_1BA090A08(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B630, 0x1E696AE18);
    sub_1BA091AF8(&qword_1EBBEB0E0, sub_1BA090A08, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4B18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB0D8);
    }
  }
}

void sub_1BA090EBC(uint64_t a1)
{
  if (!qword_1EBBEB0F8)
  {
    sub_1BA091540(255, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
    sub_1B9F3D488(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    sub_1BA090F98();
    v1 = sub_1BA4A4C08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB0F8);
    }
  }
}

unint64_t sub_1BA090F98()
{
  result = qword_1EBBEB100;
  if (!qword_1EBBEB100)
  {
    sub_1BA091540(255, &qword_1EBBEB0E8, sub_1BA090DCC, sub_1BA090E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB100);
  }

  return result;
}

void sub_1BA091020(uint64_t a1)
{
  if (!qword_1EBBEB108)
  {
    sub_1BA090AF4(255, &qword_1EBBEB110, sub_1BA09110C, sub_1BA091274);
    sub_1BA090EBC(255);
    sub_1BA0912A8();
    sub_1BA091AF8(&qword_1EBBEB130, sub_1BA090EBC, MEMORY[0x1E695BE28]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB108);
    }
  }
}

void sub_1BA091148(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1B9F3D488(255, a3, a4, MEMORY[0x1E69E62F8]);
    a5();
    v7 = sub_1BA4A4C98();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA0911EC()
{
  result = qword_1EBBEA8F8;
  if (!qword_1EBBEA8F8)
  {
    sub_1B9F3D488(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8F8);
  }

  return result;
}

unint64_t sub_1BA0912A8()
{
  result = qword_1EBBEB128;
  if (!qword_1EBBEB128)
  {
    sub_1BA090AF4(255, &qword_1EBBEB110, sub_1BA09110C, sub_1BA091274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB128);
  }

  return result;
}

void sub_1BA091330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    a4();
    sub_1B9F3DC80();
    v6 = sub_1BA4A4CC8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA09140C(uint64_t a1)
{
  if (!qword_1EBBEB148)
  {
    sub_1BA091330(255, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    sub_1BA0914B8();
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB148);
    }
  }
}

unint64_t sub_1BA0914B8()
{
  result = qword_1EBBEB150;
  if (!qword_1EBBEB150)
  {
    sub_1BA091330(255, &qword_1EBBEB138, sub_1BA091020, sub_1BA0913D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB150);
  }

  return result;
}

void sub_1BA091540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1BA4A4C18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0915E4(uint64_t a1)
{
  if (!qword_1EBBEB168)
  {
    sub_1BA091540(255, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
    sub_1BA09091C(255);
    sub_1BA0916D0();
    sub_1BA091AF8(&qword_1EBBEB098, sub_1BA09091C, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB168);
    }
  }
}

unint64_t sub_1BA0916D0()
{
  result = qword_1EBBEB170;
  if (!qword_1EBBEB170)
  {
    sub_1BA091540(255, &qword_1EBBEB158, sub_1BA09140C, sub_1BA0915B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB170);
  }

  return result;
}

uint64_t sub_1BA091758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA08FE90(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA0917A4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v6 = *a1;
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BA08397C(v6, v7, a2);
}

unint64_t sub_1BA091828()
{
  result = qword_1EBBEB188;
  if (!qword_1EBBEB188)
  {
    sub_1B9F3D488(255, &qword_1EBBEB180, sub_1BA090984, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB188);
  }

  return result;
}

uint64_t sub_1BA0918B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA091918()
{
  result = qword_1EBBE9DF8;
  if (!qword_1EBBE9DF8)
  {
    type metadata accessor for SummarySharingSelectableDataTypeCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DF8);
  }

  return result;
}

void sub_1BA091960()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_pausedStateChanged) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController____lazy_storage___activitySpinnerItem) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_updateAuthorizationsCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_currentAuthorizations) = MEMORY[0x1E69E7CD0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA091A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D488(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA091AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA091B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA091BA8()
{
  result = qword_1EBBEB1A8;
  if (!qword_1EBBEB1A8)
  {
    sub_1BA091C38(255, &qword_1EBBEB1A0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB1A8);
  }

  return result;
}

void sub_1BA091C38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA091CA0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA091C38(255, a2, a3, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA091D04()
{
  result = qword_1EDC5E6B8;
  if (!qword_1EDC5E6B8)
  {
    sub_1B9F3D488(255, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E6B8);
  }

  return result;
}

uint64_t sub_1BA091D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float64x2_t static NSDirectionalEdgeInsets.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  a4.f64[1] = a5;
  v6 = vaddq_f64(a1[1], a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void UIViewController.presentPDF(provider:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v2 hk:v6 presentModalCardViewController:1 fullScreen:1 animated:0 completion:?];
}

uint64_t sub_1BA091F1C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA091F8C();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA091F8C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v7], v29);
  if (v29[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    sub_1B9F0D9AC(0, &unk_1EBBEB1D0, &protocol descriptor for PickerTableViewCellSource, 0);
    if (swift_dynamicCast())
    {
      v8 = v28[0];
      v9 = v28[1];
      v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView];
      ObjectType = swift_getObjectType();
      [v10 setDelegate_];
      [v10 setDataSource_];
      [v10 reloadAllComponents];
      v12 = (*(v9 + 8))(ObjectType, v9);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (v12 + 40);
        do
        {
          [v10 selectRow:*(v14 - 1) inComponent:*v14 animated:0];
          v14 += 2;
          --v13;
        }

        while (v13);
      }

      if (([v8 respondsToSelector_] & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRetain();
      [v8 pickerView:v10 didSelectRow:objc_msgSend(v10 inComponent:{sel_selectedRowInComponent_, 0), 0}];
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_1B9F7B644(v29);
  }

  sub_1BA4A3DE8();
  v16 = v1;
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136446722;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v29);
    *(v19 + 22) = 2082;
    sub_1B9F7B6F8(0);
    v28[0] = v24;
    sub_1BA0928CC();
    v25 = sub_1BA4A6808();
    v27 = sub_1B9F0B82C(v25, v26, v29);

    *(v19 + 24) = v27;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to PickerTableViewCellSource", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA092364@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA0923BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA091F8C();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA092428(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA09248C;
}

uint64_t sub_1BA09248C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA091F8C();
  }

  return result;
}

id PickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA092678(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView] = v5;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for PickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, 0, v6);

  v8 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView;
  v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_pickerView];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = *&v7[v8];
  v13 = [v10 contentView];

  [v12 hk:v13 alignConstraintsWithView:?];
  return v10;
}

unint64_t sub_1BA0928CC()
{
  result = qword_1EBBEFBD0;
  if (!qword_1EBBEFBD0)
  {
    sub_1B9F7B6F8(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEFBD0);
  }

  return result;
}

uint64_t SharableModelVersionCoding.modelVersion.setter(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  sub_1BA081E08(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A2338();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA092B34(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA092B98(v9);
    a3[2](0, a2, a3);
    a3[8](0, a2, a3);
    return sub_1BA092B98(a1);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = sub_1BA4A2318();
    a3[5](v16, a2, a3);
    v17 = sub_1BA4A2328();
    a3[11](v17, a2, a3);
    sub_1BA092B98(a1);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1BA092B34(uint64_t a1, uint64_t a2)
{
  sub_1BA081E08(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA092B98(uint64_t a1)
{
  sub_1BA081E08(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SharableModelVersionCoding.modelVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 8))() & 1) != 0 && ((*(a2 + 32))(a1, a2), ((*(a2 + 56))(a1, a2)))
  {
    (*(a2 + 80))(a1, a2);
    sub_1BA4A2308();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1BA4A2338();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1BA092D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  sub_1BA081E08(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA092B34(a1, v10);
  return SharableModelVersionCoding.modelVersion.setter(v10, v5, v6);
}

void (*SharableModelVersionCoding.modelVersion.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  sub_1BA081E08(0);
  v11 = *(*(v10 - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v11);
    v12 = malloc(v11);
  }

  v9[4] = v12;
  SharableModelVersionCoding.modelVersion.getter(a2, a3, v12);
  return sub_1BA092EA0;
}

void sub_1BA092EA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_1BA092B34(v4, v3);
    SharableModelVersionCoding.modelVersion.setter(v3, v6, v5);
    sub_1BA092B98(v4);
  }

  else
  {
    SharableModelVersionCoding.modelVersion.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BA093068()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingPreviewButtonDataSource(uint64_t a1)
{
  result = qword_1EBBEB1E0;
  if (!qword_1EBBEB1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA0931F8(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1B9F37E38(v8, v6);
  *(v6 + 8) = 0x403E000000000000;
  v9 = ListLayoutConfiguration.layout(for:)(v7);
  sub_1BA047354(v6);
  return v9;
}

uint64_t *sub_1BA093310(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SummarySharingPreviewSummariesCell();
  sub_1BA093894();
  a4[4] = sub_1BA4A6808();
  a4[5] = v13;
  a4[8] = 0;
  *(a4 + 136) = 1;
  a4[19] = 0;
  swift_unknownObjectWeakInit();
  a4[20] = 0;
  a4[21] = 0;
  v23 = sub_1BA4A85D8();
  v24 = v14;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1BA0938DC(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v15 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v15);

  (*(v9 + 8))(v12, v8);
  v16 = v24;
  a4[2] = v23;
  a4[3] = v16;
  if (qword_1EBBE84A8 != -1)
  {
    swift_once();
  }

  v17 = unk_1EBBED760;
  a4[6] = qword_1EBBED758;
  a4[7] = v17;
  v18 = qword_1EBBE84B0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBBED768;
  v20 = a4[8];
  a4[8] = qword_1EBBED768;
  v21 = v19;

  a4[14] = a2;
  sub_1B9F25598(a1, (a4 + 9));
  a4[15] = a3;
  a4[16] = &protocol witness table for CellRegistering<A>;
  return a4;
}

uint64_t sub_1BA093594(void *a1, void *a2)
{
  v3 = v2;
  v30 = a1;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v32);
  sub_1B9F0A534(v32, v31);
  v11 = a2;
  v12 = sub_1BA2603BC(v11);
  v13 = type metadata accessor for SummarySharingPreviewSummariesItem();
  v14 = swift_allocObject();
  v15 = sub_1BA093310(v31, v11, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(v32);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) = v15;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v29 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v29;
  *(v17 + 56) = v13;
  *(v17 + 64) = sub_1BA0938DC(&qword_1EBBEB1F0, type metadata accessor for SummarySharingPreviewSummariesItem, &unk_1BA4C3768);
  *(v17 + 32) = v15;

  sub_1BA4A1788();
  v18 = sub_1BA4A1748();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v10, v6);
  v22 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v22);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v17;
  v23 = Array<A>.identifierToIndexDict()(v17);

  *(inited + 56) = v23;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v32, "MutableArray<");
  HIWORD(v32[1]) = -4864;
  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  v21(v10, v6);
  MEMORY[0x1BFAF1350](v24, v26);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v27 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v32[0], v32[1]);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v27;
}

unint64_t sub_1BA093894()
{
  result = qword_1EBBE9D28;
  if (!qword_1EBBE9D28)
  {
    type metadata accessor for SummarySharingPreviewSummariesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D28);
  }

  return result;
}

uint64_t sub_1BA0938DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DataTypeDetailConfiguration.standardWithChart(hkType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B9F1B3E0(0, &qword_1EDC5DC68, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5460;
  *(v3 + 56) = &type metadata for DataTypeDetailConfiguration.ChartComponent;
  *(v3 + 64) = sub_1BA093DC8();
  *(v3 + 32) = a1;
  *(v3 + 40) = 0;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 hk_chartBackgroundColor];
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v7 = sub_1BA4A7068();
  *(v3 + 96) = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
  *(v3 + 104) = sub_1BA093E1C();
  *(v3 + 72) = v5;
  *(v3 + 80) = v6;
  *(v3 + 88) = v7;
  v29 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4BAF00;
  *(inited + 56) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  v27 = sub_1BA093E70();
  *(inited + 64) = v27;
  v9 = v5;
  DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(v9, 1, (inited + 32));
  *(inited + 96) = &type metadata for DataTypeDetailConfiguration.GetMoreFromHealthComponent;
  *(inited + 104) = sub_1BA093EC4();
  *(inited + 72) = v9;
  *(inited + 80) = 0;
  *(inited + 136) = &type metadata for DataTypeDetailConfiguration.TrendsComponent;
  *(inited + 144) = sub_1BA094F08();
  *(inited + 112) = v9;
  *(inited + 120) = 3;
  v10 = v9;
  v11 = sub_1B9FDCB68(&unk_1F37FBCB8);
  *(inited + 176) = &type metadata for DataTypeDetailConfiguration.HighlightsComponent;
  *(inited + 184) = sub_1BA094F5C();
  *(inited + 152) = v9;
  *(inited + 160) = v11;
  *(inited + 216) = &type metadata for DataTypeDetailConfiguration.DescriptionComponent;
  *(inited + 224) = sub_1BA094FB0();
  *(inited + 208) = 3;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(inited + 192) = sub_1BA095004;
  *(inited + 200) = v12;
  *(inited + 256) = &type metadata for DataTypeDetailConfiguration.ArticlesComponent;
  *(inited + 264) = sub_1BA09500C();
  v13 = swift_allocObject();
  *(inited + 232) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = 0;
  *(v13 + 32) = 3;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 56) = &type metadata for DataTypeDetailConfiguration.AppsComponent;
  *(v14 + 64) = sub_1BA095060();
  *(v14 + 32) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B9FD0;
  type metadata accessor for DataTypeDetailViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = v10;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 bundleForClass_];
  v21 = sub_1BA4A1318();
  v23 = v22;

  *(v15 + 56) = &type metadata for DataTypeDetailConfiguration.FavoriteToggleComponent;
  *(v15 + 64) = sub_1BA0950B4();
  v24 = swift_allocObject();
  *(v15 + 32) = v24;
  v24[2] = v19;
  v24[3] = v21;
  v24[4] = v23;
  v24[5] = 3;
  *(v15 + 96) = &type metadata for DataTypeDetailConfiguration.DataManagementComponent;
  *(v15 + 104) = sub_1BA095108();
  v25 = swift_allocObject();
  *(v15 + 72) = v25;
  *(v25 + 16) = v19;
  *(v25 + 24) = 1;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 3;
  *(v15 + 136) = &type metadata for DataTypeDetailConfiguration.FeatureStatusComponent;
  *(v15 + 144) = sub_1BA09515C();
  *(v15 + 112) = v19;
  *(v15 + 120) = 0;
  *(v14 + 96) = &type metadata for DataTypeDetailConfiguration.VerticalGroupComponent;
  *(v14 + 104) = sub_1BA0951B0();
  *(v14 + 72) = 0x736E6F6974704FLL;
  *(v14 + 80) = 0xE700000000000000;
  *(v14 + 88) = v15;
  *(inited + 296) = &type metadata for DataTypeDetailConfiguration.HorizontalGroupComponent;
  *(inited + 304) = sub_1BA095204();
  strcpy((inited + 272), "AppsAndOptions");
  *(inited + 287) = -18;
  *(inited + 288) = v14;
  *(inited + 336) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  *(inited + 344) = v27;
  DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(v19, 0, (inited + 312));
  result = sub_1B9FE1E74(inited);
  *a2 = v29;
  return result;
}

unint64_t sub_1BA093DC8()
{
  result = qword_1EDC64F08;
  if (!qword_1EDC64F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F08);
  }

  return result;
}

unint64_t sub_1BA093E1C()
{
  result = qword_1EDC64ED0;
  if (!qword_1EDC64ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64ED0);
  }

  return result;
}

unint64_t sub_1BA093E70()
{
  result = qword_1EDC64EF8;
  if (!qword_1EDC64EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EF8);
  }

  return result;
}

unint64_t sub_1BA093EC4()
{
  result = qword_1EDC64F48;
  if (!qword_1EDC64F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F48);
  }

  return result;
}

uint64_t static DataTypeDetailConfiguration.standardWithSampleList(sampleType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  static DataTypeDetailConfiguration.standardWithChart(hkType:)(v3, a2);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v16 = &type metadata for DataTypeDetailConfiguration.SampleListComponent;
  v17 = sub_1BA095258();
  v4 = swift_allocObject();
  v15[0] = v4;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0u;
  v5 = v4 + 24;
  v6 = v3;
  sub_1BA0952AC(&v12, v5);
  sub_1BA0940EC(0x7472616843, 0xE500000000000000, v15);
  sub_1BA09533C(v15);
  v7 = [objc_opt_self() clearColor];
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v8 = sub_1BA4A7068();
  v16 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
  v9 = sub_1BA093E1C();
  v15[0] = v6;
  v15[1] = v7;
  v17 = v9;
  v15[2] = v8;
  sub_1BA0940EC(0x426567617373654DLL, 0xED00006E6F747475, v15);
  sub_1BA09533C(v15);
  v16 = &type metadata for DataTypeDetailConfiguration.DataManagementComponent;
  v17 = sub_1BA095108();
  v10 = swift_allocObject();
  v15[0] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 3;
  sub_1BA0940EC(0x616E614D61746144, 0xEE00746E656D6567, v15);
  return sub_1BA09533C(v15);
}

uint64_t sub_1BA0940EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4 + 32;
  while (1)
  {
    v11 = v9;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v7 != v9)
    {
      if (v7 >= v8[2])
      {
        __break(1u);
LABEL_31:
        v8 = sub_1BA2F67AC(v8);
        *v9 = v8;
LABEL_19:
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v32 < v8[2])
        {
          v23 = &v8[5 * v32];
          __swift_destroy_boxed_opaque_existential_1(v23 + 4);
          sub_1B9F1134C(&v40, (v23 + 4));
          *v9 = v8;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_34;
      }

      v11 = (v7 + 1);
      *&v40 = v7;
      sub_1B9F0A534(v10 + 40 * v7, &v40 + 8);
      v12 = v40;
      v13 = v41;
      v14 = v42;
    }

    v43[0] = v12;
    v43[1] = v13;
    v3 = v14;
    v43[2] = v14;
    if (!v14)
    {
      return v3 != 0;
    }

    v32 = v12;
    sub_1B9F1134C((v43 + 8), v37);
    sub_1B9F0A534(v37, v36);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA095560();
    if (swift_dynamicCast())
    {
      break;
    }

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    sub_1BA0955CC(&v33);
LABEL_10:
    v17 = v38;
    v18 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if ((*(v18 + 24))(v17, v18) == a1 && v19 == a2)
    {

LABEL_17:
      sub_1BA095658(a3, &v33);
      if (*(&v34 + 1))
      {
        sub_1B9F1134C(&v33, &v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = v30;
        *v30 = v8;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_1BA09533C(&v33);
      sub_1BA0F0A1C(v32, &v40);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(&v40);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v3 != 0;
    }

    v21 = sub_1BA4A8338();

    if (v21)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v7 = v11;
  }

  sub_1BA0956E8(&v33, &v40);
  v15 = *(&v41 + 1);
  v16 = v42;
  __swift_mutable_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  if (((*(v16 + 32))(a1, a2, a3, v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v40);
    goto LABEL_10;
  }

  v24 = *(&v41 + 1);
  v25 = *(&v42 + 1);
  v26 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  *(&v34 + 1) = v24;
  *&v35 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = v30;
  *v30 = v8;
  if (result)
  {
    goto LABEL_24;
  }

LABEL_34:
  result = sub_1BA2F67AC(v8);
  v8 = result;
  *v9 = result;
LABEL_24:
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < v8[2])
  {
    v29 = &v8[5 * v32];
    __swift_destroy_boxed_opaque_existential_1(v29 + 4);
    sub_1B9F1134C(&v33, (v29 + 4));
    *v9 = v8;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA094470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = *(v4 + 16);
  v28 = (v4 + 16);
  v9 = v8[2];
  while (1)
  {
    v10 = v9;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    if (v7 != v9)
    {
      if (v7 >= v8[2])
      {
        __break(1u);
LABEL_31:
        v8 = sub_1BA2F67AC(v8);
LABEL_19:
        if ((v30 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v30 < v8[2])
        {
          v21 = &v8[5 * v30];
          __swift_destroy_boxed_opaque_existential_1(v21 + 4);
          sub_1B9F1134C(&v38, (v21 + 4));
          *v28 = v8;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_34;
      }

      v10 = v7 + 1;
      *&v38 = v7;
      sub_1B9F0A534(&v8[5 * v7 + 4], &v38 + 8);
      v11 = v38;
      v12 = v39;
      v13 = v40;
    }

    v41[0] = v11;
    v41[1] = v12;
    v3 = v13;
    v41[2] = v13;
    if (!v13)
    {
      return v3 != 0;
    }

    v30 = v11;
    sub_1B9F1134C((v41 + 8), v35);
    sub_1B9F0A534(v35, v34);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA095560();
    if (swift_dynamicCast())
    {
      break;
    }

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    sub_1BA0955CC(&v31);
LABEL_10:
    v16 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((*(v17 + 24))(v16, v17) == a1 && v18 == a2)
    {

LABEL_17:
      sub_1BA095658(a3, &v31);
      if (*(&v32 + 1))
      {
        sub_1B9F1134C(&v31, &v38);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_1BA09533C(&v31);
      sub_1BA0F0A1C(v30, &v38);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v35);
      return v3 != 0;
    }

    v20 = sub_1BA4A8338();

    if (v20)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v7 = v10;
  }

  sub_1BA0956E8(&v31, &v38);
  v14 = *(&v39 + 1);
  v15 = v40;
  __swift_mutable_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  if (((*(v15 + 32))(a1, a2, a3, v14, v15) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_10;
  }

  v22 = *(&v39 + 1);
  v23 = *(&v40 + 1);
  v24 = __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  *(&v32 + 1) = v22;
  *&v33 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_24;
  }

LABEL_34:
  result = sub_1BA2F67AC(v8);
  v8 = result;
LABEL_24:
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < v8[2])
  {
    v27 = &v8[5 * v30];
    __swift_destroy_boxed_opaque_existential_1(v27 + 4);
    sub_1B9F1134C(&v31, (v27 + 4));
    *v28 = v8;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = sub_1BA4A1A48();
  v4 = *(v3 - 8);
  v60 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B3E0(0, &qword_1EDC5DC68, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  v68 = xmmword_1BA4B5480;
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 56) = &type metadata for DataTypeDetailConfiguration.MeasureChartComponent;
  *(v8 + 64) = sub_1BA0953C4();
  v69 = v8;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9A90;
  v52 = v4;
  v10 = *(v4 + 16);
  v51 = v3;
  v10(v7, a1, v3);
  v11 = v4 + 16;
  v12 = v10;
  v53 = v10;
  *(inited + 56) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  v61 = sub_1BA093E70();
  *(inited + 64) = v61;
  v13 = sub_1BA4A27B8();
  sub_1BA095418(0, &qword_1EBBEB208, MEMORY[0x1E69A30D0], MEMORY[0x1E69E6F90]);
  v64 = v14;
  v65 = *(v4 + 72);
  v15 = *(v4 + 80);
  v55 = (v15 + 32) & ~v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v68;
  v12(v16 + ((v15 + 32) & ~v15), v7, v3);
  v54 = v13;
  v17 = sub_1BA4A2618();

  sub_1BA4A2118();
  v18 = sub_1BA4A2628();

  sub_1B9F109F8();
  v59 = v19;
  v20 = swift_allocObject();
  v58 = xmmword_1BA4B7510;
  *(v20 + 16) = xmmword_1BA4B7510;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  v57 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v21 = v17;
  v22 = v18;
  v23 = sub_1BA4A6AE8();

  v56 = objc_opt_self();
  v24 = [v56 andPredicateWithSubpredicates_];

  v25 = v52;
  v26 = *(v52 + 8);
  v66 = v52 + 8;
  v67 = v26;
  v27 = v51;
  v26(v7, v51);
  *(inited + 32) = v24;
  *(inited + 96) = &type metadata for DataTypeDetailConfiguration.ContributingFactorsComponent;
  *(inited + 104) = sub_1BA09547C();
  v28 = v63;
  v29 = v53;
  v53(v7, v63, v27);
  *(inited + 136) = &type metadata for DataTypeDetailConfiguration.DescriptionComponent;
  *(inited + 144) = sub_1BA094FB0();
  *(inited + 128) = 3;
  v50 = v15;
  v30 = swift_allocObject();
  v31 = *(v25 + 32);
  v49 = v7;
  v31(v30 + ((v15 + 16) & ~v15), v7, v27);
  *(inited + 112) = sub_1BA0954D0;
  *(inited + 120) = v30;
  v29(v7, v28, v27);
  v48 = v11;
  *(inited + 176) = &type metadata for DataTypeDetailConfiguration.ArticlesComponent;
  *(inited + 184) = sub_1BA09500C();
  v32 = swift_allocObject();
  *(inited + 152) = v32;
  v33 = v55;
  v34 = swift_allocObject();
  *(v34 + 16) = v68;
  v35 = v49;
  v36 = v27;
  v29((v34 + v33), v49, v27);
  v37 = sub_1BA4A2618();

  v67(v35, v27);
  *(v32 + 16) = v37;
  *(v32 + 24) = 1;
  *(v32 + 40) = 0;
  *(v32 + 48) = 0;
  *(v32 + 32) = 3;
  v29(v35, v63, v27);
  v38 = v61;
  *(inited + 216) = &type metadata for DataTypeDetailConfiguration.PromptsComponent;
  *(inited + 224) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v68;
  v29((v39 + v33), v35, v27);
  v40 = sub_1BA4A2618();

  sub_1BA4A2108();
  v41 = sub_1BA4A2628();

  v42 = swift_allocObject();
  *(v42 + 16) = v58;
  *(v42 + 32) = v40;
  *(v42 + 40) = v41;
  v43 = v40;
  v44 = v41;
  v45 = sub_1BA4A6AE8();

  v46 = [v56 andPredicateWithSubpredicates_];

  v67(v35, v36);
  *(inited + 192) = v46;
  result = sub_1B9FE1E74(inited);
  *v62 = v69;
  return result;
}

unint64_t sub_1BA094F08()
{
  result = qword_1EDC64F00;
  if (!qword_1EDC64F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F00);
  }

  return result;
}

unint64_t sub_1BA094F5C()
{
  result = qword_1EDC64EE8;
  if (!qword_1EDC64EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EE8);
  }

  return result;
}

unint64_t sub_1BA094FB0()
{
  result = qword_1EDC64EE0;
  if (!qword_1EDC64EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EE0);
  }

  return result;
}

unint64_t sub_1BA09500C()
{
  result = qword_1EDC64EF0;
  if (!qword_1EDC64EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EF0);
  }

  return result;
}

unint64_t sub_1BA095060()
{
  result = qword_1EDC64F38;
  if (!qword_1EDC64F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F38);
  }

  return result;
}

unint64_t sub_1BA0950B4()
{
  result = qword_1EDC64EC0;
  if (!qword_1EDC64EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EC0);
  }

  return result;
}

unint64_t sub_1BA095108()
{
  result = qword_1EDC64F40;
  if (!qword_1EDC64F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F40);
  }

  return result;
}

unint64_t sub_1BA09515C()
{
  result = qword_1EDC64ED8;
  if (!qword_1EDC64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64ED8);
  }

  return result;
}

unint64_t sub_1BA0951B0()
{
  result = qword_1EDC64EC8;
  if (!qword_1EDC64EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EC8);
  }

  return result;
}

unint64_t sub_1BA095204()
{
  result = qword_1EDC64EB8;
  if (!qword_1EDC64EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64EB8);
  }

  return result;
}

unint64_t sub_1BA095258()
{
  result = qword_1EBBEB1F8;
  if (!qword_1EBBEB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB1F8);
  }

  return result;
}

uint64_t sub_1BA0952AC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA09533C(uint64_t a1)
{
  sub_1B9F1B3E0(0, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0953C4()
{
  result = qword_1EBBEB200;
  if (!qword_1EBBEB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB200);
  }

  return result;
}

void sub_1BA095418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA09547C()
{
  result = qword_1EBBEB210;
  if (!qword_1EBBEB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB210);
  }

  return result;
}

uint64_t sub_1BA0954D0@<X0>(uint64_t *x8_0@<X8>)
{
  sub_1BA4A1A48();

  return sub_1BA42B38C(x8_0);
}

unint64_t sub_1BA095560()
{
  result = qword_1EDC60ED0;
  if (!qword_1EDC60ED0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC60ED0);
  }

  return result;
}

uint64_t sub_1BA0955CC(uint64_t a1)
{
  sub_1BA095418(0, &qword_1EDC60EC8, sub_1BA095560, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA095658(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BA0956E8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1BA095704()
{
  result = sub_1BA4A6758();
  qword_1EDC5E458 = result;
  return result;
}

id static NSNotificationName.emergencyOnboardingCompleted.getter()
{
  if (qword_1EDC5E450 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E458;

  return v1;
}

double sub_1BA095798()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA0957DC(double a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong font];
    if (v6)
    {
      v7 = v6;
      [v6 _scaledValueForValue_];
      v9 = v8;

      [v1 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_1BA0958B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA095938;
}

void sub_1BA095938(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong font];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = v3[3];
      [v6 _scaledValueForValue_];
      v10 = v9;

      [v8 setConstant_];
    }
  }

  free(v3);
}

void sub_1BA095B10(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA095B6C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_referenceLabel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA095C04;
}

void sub_1BA095C04(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1BA095D78()
{
  [v0 constant];
  v2 = v1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  *&v0[v3] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;
  v6 = [Strong font];
  if (v6)
  {
    v7 = v6;
    [v6 _scaledValueForValue_];
    v9 = v8;

    [v0 setConstant_];
LABEL_4:
    v10 = [objc_opt_self() defaultCenter];
    [v10 addObserver:v0 selector:sel_textSizeChanged name:*MEMORY[0x1E69DDC48] object:0];

    return;
  }

  __break(1u);
}

void sub_1BA095EAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong font];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
      swift_beginAccess();
      [v4 _scaledValueForValue_];
      v7 = v6;

      [v0 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

id ScaledLabelConstraint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScaledLabelConstraint.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScaledLabelConstraint();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ScaledLabelConstraint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScaledLabelConstraint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIViewController.resolve<A>(providerBlock:resolverBlock:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, unint64_t a6@<X8>)
{
  v74 = a4;
  v75 = a3;
  v76 = a6;
  v10 = sub_1BA4A7AA8();
  v84 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v73 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v66 - v22;
  v24 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v25, v26);
  v69 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v70 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v72 = &v66 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v66 - v36;
  v79 = sub_1B9F21ADC();
  v86 = v79;
  v85[0] = v6;
  v38 = v6;
  v80 = a1;
  v81 = a2;
  a1(v85);
  __swift_destroy_boxed_opaque_existential_1(v85);
  v82 = v24[6];
  v83 = v24 + 6;
  if (v82(v23, 1, a5) == 1)
  {
    v39 = v84 + 8;
    v78 = *(v84 + 8);
    v78(v23, v10);
    v67 = v38;
    v40 = sub_1BA096838();
    v41 = v40;
    v68 = v24;
    v84 = v39;
    if (v40 >> 62)
    {
      goto LABEL_17;
    }

    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      while (1)
      {
        v37 = 0;
        v77 = v41 & 0xC000000000000001;
        while (v77)
        {
          v43 = MEMORY[0x1BFAF2860](v37, v41);
          v24 = (v37 + 1);
          if (__OFADD__(v37, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

LABEL_8:
          v86 = v79;
          v85[0] = v43;
          v23 = a5;
          v44 = v43;
          v80(v85);

          a5 = v23;
          __swift_destroy_boxed_opaque_existential_1(v85);
          if (v82(v19, 1, v23) != 1)
          {

            v49 = v68;
            v50 = v68[4];
            v51 = v72;
            v50(v72, v19, v23);
            v52 = v76;
            v50(v76, v51, v23);
            return (v49[7])(v52, 0, 1, v23);
          }

          v78(v19, v10);
          ++v37;
          if (v24 == v42)
          {
            goto LABEL_18;
          }
        }

        if (v37 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v42 = sub_1BA4A7CC8();
        if (!v42)
        {
          goto LABEL_18;
        }
      }

      v43 = *(v41 + 8 * v37 + 32);
      v24 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_18:

    v54 = v67;
    v55 = [v67 parentViewController];
    v57 = v75;
    v56 = v76;
    v58 = v68;
    if (v55)
    {
      v59 = v73;
      v60 = v55;
      v75();

      if (v82(v59, 1, a5) != 1)
      {
        v64 = v58[4];
        v65 = v70;
        v64(v70, v59, a5);
LABEL_27:
        v64(v56, v65, a5);
        v47 = v58[7];
        v48 = v56;
        return v47(v48, 0, 1, a5);
      }

      v78(v59, v10);
    }

    v61 = [v54 presentingViewController];
    if (!v61)
    {
      return (v58[7])(v56, 1, 1, a5);
    }

    v62 = v71;
    v63 = v61;
    v57();

    if (v82(v62, 1, a5) == 1)
    {
      v78(v62, v10);
      return (v58[7])(v56, 1, 1, a5);
    }

    v64 = v58[4];
    v65 = v69;
    v64(v69, v62, a5);
    goto LABEL_27;
  }

LABEL_14:
  v45 = v24[4];
  v45(v37, v23, a5);
  v46 = v76;
  v45(v76, v37, a5);
  v47 = v24[7];
  v48 = v46;
  return v47(v48, 0, 1, a5);
}

unint64_t sub_1BA096838()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v2;
  v3 = [v2 viewControllers];
  v4 = sub_1B9F21ADC();
  v5 = sub_1BA4A6B08();

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_45:
    v8 = sub_1BA4A7CC8();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  while (v8 != v9)
  {
    if (v10)
    {
      v11 = MEMORY[0x1BFAF2860](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = sub_1BA4A7798();

    if (v13)
    {
      v8 = v9;
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_44;
    }
  }

  if (v7)
  {
    if (v5 < 0)
    {
      v1 = v5;
    }

    else
    {
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1BA4A7CC8() < 0)
    {
      goto LABEL_47;
    }

    v16 = sub_1BA4A7CC8();
  }

  else
  {
    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < v8)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v10)
  {

    if (v8)
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_1BA4A7E08();
        v17 = v18;
      }

      while (v8 != v18);
    }
  }

  else
  {
  }

  if (v7)
  {
    v6 = sub_1BA4A8058();
    v1 = v19;
    v4 = v20;
    v8 = v21;

    if (v8)
    {
      goto LABEL_35;
    }

LABEL_34:
    sub_1BA2A11C0(v6, v1, v4, v8);
    v23 = v22;
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v4 = 0;
  v1 = v6 + 32;
  v8 = (2 * v8) | 1;
  if ((v8 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_1BA4A8368();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v8 >> 1, v4))
  {
    goto LABEL_48;
  }

  if (v25 != (v8 >> 1) - v4)
  {
LABEL_49:
    swift_unknownObjectRelease_n();
    goto LABEL_34;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

LABEL_42:
  v26 = sub_1BA3265F4(v23);

  return v26;
}

char *UIViewController.resolutionDebugDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA4E76A0);
  swift_getMetatypeMetadata();
  v2 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](0x7461676976614E0ALL, 0xED0000203A6E6F69);
  v3 = sub_1BA096838();
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v12 = sub_1BA096F44(0, &qword_1EDC5E4C0, sub_1B9F21ADC);
    v13 = MEMORY[0x1BFAF1560](v8, v12);
    v15 = v14;

    MEMORY[0x1BFAF1350](v13, v15);

    MEMORY[0x1BFAF1350](0x3A746E657261500ALL, 0xE900000000000020);
    v16 = [v1 parentViewController];
    sub_1BA096EEC(0);
    v17 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v17);

    MEMORY[0x1BFAF1350](0x203A65707974202CLL, 0xE800000000000000);

    sub_1BA096F44(0, &unk_1EDC5E4C8, sub_1BA096EEC);
    v18 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v18);

    MEMORY[0x1BFAF1350](0x746E65736572500ALL, 0xED0000203A676E69);
    v19 = [v1 presentingViewController];
    v20 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v20);

    MEMORY[0x1BFAF1350](0x203A65707974202CLL, 0xE800000000000000);

    v21 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v21);

    return 0;
  }

  v5 = sub_1BA4A7CC8();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066F90(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v22;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFAF2860](v7, v4);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRelease();
      }

      else
      {
        ObjectType = swift_getObjectType();
      }

      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BA066F90((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v22 + 16) = v11 + 1;
      *(v22 + 8 * v11 + 32) = ObjectType;
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1BA096EEC(uint64_t a1)
{
  if (!qword_1EDC5E4D8)
  {
    sub_1B9F21ADC();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E4D8);
    }
  }
}

uint64_t sub_1BA096F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t PlatformCellHostingConfiguration.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_1B9F7CE88(a1, a2);

  return swift_unknownObjectRelease();
}

void (*PlatformCellHostingConfiguration.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1BA0970B4;
}

void sub_1BA0970B4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformCellHostingConfiguration.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t PlatformCellHostingConfiguration.makeBackgroundConfiguration(cellState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A4168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PlatformCellHostingConfiguration.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_1BA097250(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PlatformCellHostingConfiguration.delegate.modify(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA097308(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void CollectionViewHeaderItem.init(text:makeConfiguration:respectsSuperviewXLayoutMargins:iconConfig:accessories:automationIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a6[2];
  v31 = a6[3];
  v32 = *(a6 + 64);
  v28 = *a6;
  v29 = a6[1];
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA09A120(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  v18 = sub_1BA4A6808();
  *(a9 + 72) = v29;
  *(a9 + 88) = v30;
  *(a9 + 104) = v31;
  *a9 = v18;
  *(a9 + 8) = v19;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 120) = v32;
  *(a9 + 56) = v28;
  *(a9 + 128) = a7;
  if (a10)
  {

    v20 = a10;
  }

  else
  {
    sub_1B9F252FC();

    a8 = sub_1BA4A7B58();
    v20 = v21;
  }

  sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  *(v22 + 32) = a8;
  *(v22 + 40) = v20;

  v23 = sub_1BA4A6AE8();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {

    v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;

    *(a9 + 136) = v25;
    *(a9 + 144) = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CollectionViewHeaderCell.defaultMaximumIconSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *&xmmword_1EBBEB228 = a1;
  *(&xmmword_1EBBEB228 + 1) = a2;
  return result;
}

uint64_t static CollectionViewHeaderCell.defaultImageHorizontalPadding.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB238 = *&a1;
  return result;
}

uint64_t static CollectionViewHeaderCell.leadingTrailingMargin.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB240 = *&a1;
  return result;
}

uint64_t sub_1BA097994(uint64_t a1, void **a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1BA097B20(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  v6 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))(v6);
  return sub_1BA09AD18(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA097A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_1BA097B20(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA097B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA097B94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v4);
  return sub_1BA09AD18(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA097C5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA097CC0;
}

uint64_t sub_1BA097CC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x78))(result);
  }

  return result;
}

void *CollectionViewHeaderCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item];
  v10 = type metadata accessor for CollectionViewHeaderCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
  v13 = v11;
  v12();

  return v13;
}

uint64_t sub_1BA097F40()
{
  sub_1B9F6621C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12[-1] - v2;
  v4 = sub_1BA4A4168();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = sub_1BA4A4428();
  v12[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v12);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  MEMORY[0x1BFAF1EF0](v12);
  sub_1BA4A40F8();
  v9 = [objc_opt_self() clearColor];
  sub_1BA4A4118();
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  MEMORY[0x1BFAF1F10](v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA098110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A4428();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1BA097B20(v1 + v12, v59, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (v60)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBEB278, &protocol descriptor for CollectionViewHeaderProviding);
    if (swift_dynamicCast())
    {
      if (*(&v66 + 1))
      {
        sub_1B9F1134C(&v65, v71);
        v13 = v72;
        v14 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v15 = (*(v14 + 16))(v13, v14);
        v15();

        v16 = v72;
        v17 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(v17 + 8))(v16, v17);
        sub_1BA4A43B8();
        v18 = v72;
        v19 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(v19 + 40))(v18, v19);
        sub_1BA4A75F8();
        v20 = v72;
        v21 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(v21 + 32))(&v65, v20, v21);
        if (v65 != 1)
        {
          v22 = *(&v65 + 1);
          v23 = BYTE8(v66);
          v24 = v69;
          v56 = v68;
          v57 = v70;
          v25 = v72;
          v26 = v73;
          __swift_project_boxed_opaque_existential_1(v71, v72);
          (*(v26 + 32))(v59, v25, v26);
          v27 = v59[0];
          if (v59[0] != 1)
          {
            v28 = v59[0];
            sub_1BA09AD18(v59, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
            if (v27)
            {
              v55 = v28;
              sub_1BA4A43D8();
              v29 = v22;
              v30 = sub_1BA4A42D8();
              sub_1BA4A42B8();
              v30(v64, 0);
              if (v23)
              {
                swift_beginAccess();
              }

              sub_1BA4A42F8();
              if (v56)
              {
                swift_beginAccess();
              }

              v31 = sub_1BA4A42D8();
              sub_1BA4A4268();
              v31(v64, 0);
              if (v57)
              {
                swift_beginAccess();
                v24 = qword_1EBBEB238;
              }

              v32 = sub_1BA4A4328();
              *(v33 + 8) = v24;
              v32(v64, 0);

              sub_1BA09AD18(&v65, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
              goto LABEL_21;
            }
          }

          sub_1BA09AD18(&v65, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
        }

        swift_beginAccess();
        v42 = qword_1EBBEB240;
        v43 = sub_1BA4A4328();
        *(v44 + 8) = v42;
        v43(v59, 0);
LABEL_21:
        v45 = v72;
        v46 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        if (((*(v46 + 24))(v45, v46) & 1) == 0)
        {
          v47 = sub_1BA4A4388();
          *v48 &= ~1uLL;
          v47(v59, 0);
        }

        v60 = v8;
        v61 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
        v50 = v58;
        (*(v58 + 16))(boxed_opaque_existential_1, v11, v8);
        MEMORY[0x1BFAF1EF0](v59);
        sub_1B9F0A534(v71, v64);
        sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v62, v59);
          v51 = v60;
          v52 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          (*(v52 + 8))(v51, v52);
          if (v53)
          {
            v54 = sub_1BA4A6758();
            [v1 setAccessibilityIdentifier_];
          }

          (*(v50 + 8))(v11, v8);
          __swift_destroy_boxed_opaque_existential_1(v59);
        }

        else
        {
          (*(v50 + 8))(v11, v8);
          v63 = 0;
          memset(v62, 0, sizeof(v62));
          sub_1BA09AD18(v62, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
        }

        return __swift_destroy_boxed_opaque_existential_1(v71);
      }
    }

    else
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }
  }

  else
  {
    sub_1BA09AD18(v59, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  sub_1BA09AD18(&v65, &unk_1EBBEB270, &qword_1EBBEB278, &protocol descriptor for CollectionViewHeaderProviding, sub_1B9F0CDE8);
  sub_1BA4A3E48();
  v34 = sub_1BA4A3E88();
  v35 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59[0] = v37;
    *v36 = 136446210;
    *&v65 = ObjectType;
    swift_getMetatypeMetadata();
    v38 = sub_1BA4A6808();
    v40 = sub_1B9F0B82C(v38, v39, v59);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s] item is not an CollectionViewHeaderItem", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1BA098A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];
  }
}

uint64_t (*sub_1BA098B08(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA09AE28;
}

uint64_t sub_1BA098B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_1BA097B20(v3 + v4, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA098BF4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(v5);
  return sub_1BA09AD18(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA098CC0(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA098D28;
}

void sub_1BA098D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *v2;
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];
  }
}

uint64_t CollectionViewHeaderItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void CollectionViewHeaderItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CollectionViewHeaderItem.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewHeaderItem.makeConfiguration.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CollectionViewHeaderItem.iconConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t CollectionViewHeaderItem.baseIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void CollectionViewHeaderItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t sub_1BA09903C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA099074@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t sub_1BA099108()
{
  v1 = *(v0 + 136);

  return v1;
}

void sub_1BA099138(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t sub_1BA0991E4(uint64_t a1)
{
  v2 = sub_1BA09ADCC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t CollectionViewHeaderItem.IconConfiguration.init(icon:tintColor:imageToTextPadding:maximumIconSize:imageLeadingPadding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

uint64_t static CollectionViewHeaderWithLinkCell.textToSecondaryTextHorizontalPadding.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EBBEB248 = *&a1;
  return result;
}

void sub_1BA09934C()
{
  sub_1BA097F40();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_linkWasTapped];
  [v0 addGestureRecognizer_];
}

uint64_t sub_1BA0993C8()
{
  v1 = v0;
  sub_1B9F6621C(0, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34[-v4];
  v6 = sub_1BA4A4428();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA098110();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_1BA097B20(&v1[v11], v55, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v56)
  {
    return sub_1BA09AD18(v55, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v38[9] = v51;
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v38[5] = v47;
  v38[6] = v48;
  v38[7] = v49;
  v38[8] = v50;
  v38[3] = v45;
  v38[4] = v46;
  v38[1] = v43;
  v38[2] = v44;
  v38[0] = v42;
  MEMORY[0x1BFAF1EE0](v35);
  if (!v36)
  {
    sub_1BA09AC70(v38);
    sub_1BA09AD18(v35, &qword_1EBBEA750, &unk_1EDC5F8B0, MEMORY[0x1E69DC068], sub_1B9F0CDE8);
    (*(v7 + 56))(v5, 1, 1, v6);
    return sub_1BA09ACA0(v5);
  }

  sub_1B9F0D950(0, &unk_1EDC5F8B0, MEMORY[0x1E69DC068]);
  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA09AC70(v38);
    return sub_1BA09ACA0(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1BA4A4188();

  sub_1BA4A41A8();
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v15(v35, 0);
  v16 = BYTE8(v39);
  v17 = objc_opt_self();
  if (v16 == 1)
  {
    v18 = [v17 systemBlueColor];
    v19 = sub_1BA4A4318();
    sub_1BA4A41F8();
    v19(v35, 0);
    v20 = *(&v40 + 1);
    v21 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v23 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink + 8];
    *v21 = v40;
    *(v21 + 1) = v20;

    v24 = v22;
    v25 = v23;
  }

  else
  {
    v26 = [v17 hk_appInteractionDisabledColor];
    v27 = sub_1BA4A4318();
    sub_1BA4A41F8();
    v27(v35, 0);
    v28 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
    v25 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink + 8];
    *v28 = 0;
    *(v28 + 1) = 0;
  }

  sub_1B9F0E310(v24, v25);
  swift_beginAccess();
  sub_1BA4A4398();
  swift_beginAccess();
  v29 = qword_1EBBEB240;
  v30 = sub_1BA4A4328();
  *(v31 + 24) = v29;
  v30(v35, 0);
  v36 = v6;
  v37 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
  MEMORY[0x1BFAF1EF0](v35);
  if (*(&v41 + 1))
  {
    v33 = sub_1BA4A6758();
    [v1 setAccessibilityIdentifier_];
  }

  sub_1BA09AC70(v38);
  return (*(v7 + 8))(v10, v6);
}

id CollectionViewHeaderWithLinkCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink];
  v10 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1BA099C1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t CollectionViewHeaderWithLinkItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void CollectionViewHeaderWithLinkItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CollectionViewHeaderWithLinkItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.makeConfiguration.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.iconConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t CollectionViewHeaderWithLinkItem.linkText.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.didTapLink.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t CollectionViewHeaderWithLinkItem.baseIdentifier.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

void CollectionViewHeaderWithLinkItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
}

double CollectionViewHeaderWithLinkItem.init(text:makeConfiguration:respectsSuperviewXLayoutMargins:iconConfig:accessories:linkText:linkEnabled:uniqueIdentifier:didTapLink:automationIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a13;
  v35 = a6[3];
  v36 = *(a6 + 64);
  v33 = a6[1];
  v34 = a6[2];
  v32 = *a6;
  type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA09A120(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v22 = sub_1BA4A6808();
  v24 = v23;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *&v31[55] = v35;
  v31[71] = v36;
  *&v31[7] = v32;
  if (!a13)
  {

    sub_1BA4A7DF8();

    MEMORY[0x1BFAF1350](a1, a2);

    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](a8, a10);

    a12 = 0xD000000000000013;
    v21 = 0x80000001BA4E76C0;
  }

  *(a9 + 81) = *&v31[16];
  result = *&v31[32];
  *(a9 + 97) = *&v31[32];
  *(a9 + 113) = *&v31[48];
  *a9 = v22;
  *(a9 + 8) = v24;
  *(a9 + 16) = a12;
  *(a9 + 24) = v21;
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 129) = *&v31[64];
  *(a9 + 65) = *v31;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = a10;
  *(a9 + 168) = a11 & 1;
  *(a9 + 176) = a14;
  *(a9 + 184) = a15;
  *(a9 + 192) = a16;
  *(a9 + 200) = a17;
  return result;
}

uint64_t sub_1BA09A120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a2;
  if (!*a2)
  {
    a3();
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA09A168()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1BA09A1A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1BA097B20(v8, v7, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
}

uint64_t sub_1BA09A234()
{
  v1 = *(v0 + 192);

  return v1;
}

void sub_1BA09A264(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
}

uint64_t sub_1BA09A2BC(uint64_t a1)
{
  v2 = sub_1BA09AD78();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void static CollectionViewHeaderItem.forSummarySharingSelection(text:iconConfig:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[3];
  v25 = a3[2];
  v26 = v7;
  v27 = *(a3 + 64);
  v8 = a3[1];
  v23 = *a3;
  v24 = v8;
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA097B20(&v23, v22, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
  sub_1BA09A120(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *a4 = sub_1BA4A6808();
  *(a4 + 8) = v9;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v10 = v23;
  *(a4 + 72) = v24;
  v11 = v26;
  *(a4 + 88) = v25;
  *(a4 + 104) = v11;
  *(a4 + 32) = sub_1BA09AE24;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 120) = v27;
  *(a4 + 56) = v10;
  *(a4 + 128) = 0;
  v22[0] = a1;
  v22[1] = a2;
  sub_1B9F252FC();

  v12 = MEMORY[0x1E69E6158];
  v13 = sub_1BA4A7B58();
  v15 = v14;
  sub_1B9F216C8(0, &qword_1EDC6E330, v12, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {

    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;

    *(a4 + 136) = v19;
    *(a4 + 144) = v21;
  }

  else
  {
    __break(1u);
  }
}

double static CollectionViewHeaderWithLinkItem.forSummarySharingSelection(text:iconConfig:linkText:linkEnabled:uniqueIdentifier:didTapLink:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a3;
  v34 = a3[1];
  v18 = a3[3];
  v35 = a3[2];
  v36 = v18;
  v37 = *(a3 + 64);
  v33 = v17;
  v31 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA097B20(&v33, &v29, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720], sub_1B9F216C8);
  sub_1BA09A120(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v19 = sub_1BA4A6808();
  v21 = v20;
  *&v32[23] = v34;
  *&v32[39] = v35;
  *&v32[55] = v36;
  v32[71] = v37;
  *&v32[7] = v33;
  if (a8)
  {

    v22 = a8;
    v23 = a1;
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;

    sub_1BA4A7DF8();

    v29 = 0xD000000000000013;
    v30 = 0x80000001BA4E76C0;
    v23 = a1;
    MEMORY[0x1BFAF1350](a1, a2);
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](a4, a5);
    a7 = v29;
    v22 = v30;
  }

  *a9 = v19;
  *(a9 + 8) = v21;
  *(a9 + 16) = a7;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 40) = a2;
  v24 = *v32;
  *(a9 + 81) = *&v32[16];
  v25 = *&v32[48];
  *(a9 + 97) = *&v32[32];
  *(a9 + 113) = v25;
  *(a9 + 48) = sub_1BA09AE24;
  *(a9 + 56) = 0;
  *(a9 + 64) = 1;
  *(a9 + 129) = *&v32[64];
  *(a9 + 65) = v24;
  *(a9 + 144) = 0;
  *(a9 + 152) = a4;
  *(a9 + 160) = a5;
  *(a9 + 168) = a6 & 1;
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = 0;
  *(a9 + 200) = 0;

  return result;
}

unint64_t sub_1BA09A7A4()
{
  result = qword_1EBBEB268;
  if (!qword_1EBBEB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB268);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI24CollectionViewHeaderItemV17IconConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1BA09A99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1BA09A9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1BA09AA7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BA09AAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1BA09ABA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1BA09ABEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA09ACA0(uint64_t a1)
{
  sub_1B9F6621C(0, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA09AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1BA09AD78()
{
  result = qword_1EBBEB280;
  if (!qword_1EBBEB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB280);
  }

  return result;
}

unint64_t sub_1BA09ADCC()
{
  result = qword_1EBBEB288;
  if (!qword_1EBBEB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB288);
  }

  return result;
}

uint64_t sub_1BA09AE2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1BA066EC0(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1BA066EC0((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t PrimarySecondaryDataSource.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2)
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v10 + 1);
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1B9F3BB6C(&v9);
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_1B9F3BB6C(&v9);
  }
}

uint64_t _ConditionalDataSource.observedTraits.getter()
{
  sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    v0 = *(&v5 + 1);
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v4);
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F3BB6C(&v4);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _ConditionalDataSource.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2)
{
  sub_1BA2499F8();
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 16))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1B9F3BB6C(&v7);
  }
}

uint64_t HideableDataSource<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B9F437D0();
  v8 = *(a3 + 16);
  v9 = *(v7 + 80);
  swift_unknownObjectRetain();
  v8(a1, a2, v9, a3);
  return swift_unknownObjectRelease();
}

uint64_t MappedDataSourceWithContext<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(*v3 + 472);
  swift_unknownObjectRetain();
  v7(a1, a2, v8, a3);
  return swift_unknownObjectRelease();
}

uint64_t DataSourceWrapper<>.observedTraits.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 32))();
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v4(AssociatedTypeWitness, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 32))(a3, a4);
  v8 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8(a1, a2, AssociatedTypeWitness, a5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA09B760(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B830(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B900(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraits.getter(a1, WitnessTable, v3);
}

uint64_t sub_1BA09B95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return DataSourceWrapper<>.observedTraitsDidChange(traitEnvironment:previousTraitCollection:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA09B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA09BDD0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16[-v12];
  v17 = a3 + *(type metadata accessor for SummarySharingProfileHeaderCell.Item(0) + 20);
  sub_1BA09BE4C();
  sub_1BA4A59B8();
  sub_1BA4A5B68();
  sub_1BA4A59A8();
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_1BA4A5BD8();
  v18[3] = v5;
  v18[4] = sub_1BA09BEF4();
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BA4A59A8();
  v14(v13, v5);
  return MEMORY[0x1BFAF1EF0](v18);
}

uint64_t *sub_1BA09BBAC@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = sub_1BA4A33C8();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  type metadata accessor for SummarySharingProfileHeaderView.ViewModel();
  swift_allocObject();
  result = sub_1BA31FFA0(v8);
  *a2 = result;
  return result;
}

id sub_1BA09BD78(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SummarySharingProfileHeaderCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA09BDD0(uint64_t a1)
{
  if (!qword_1EBBEB290)
  {
    sub_1BA09BE4C();
    v1 = sub_1BA4A59C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB290);
    }
  }
}

unint64_t sub_1BA09BE4C()
{
  result = qword_1EBBEB298;
  if (!qword_1EBBEB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB298);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingProfileHeaderCell.Item(uint64_t a1)
{
  result = qword_1EBBEB2A8;
  if (!qword_1EBBEB2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA09BEF4()
{
  result = qword_1EBBEB2A0;
  if (!qword_1EBBEB2A0)
  {
    sub_1BA09BDD0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB2A0);
  }

  return result;
}

uint64_t sub_1BA09BF74(uint64_t a1)
{
  result = sub_1BA4A33C8();
  if (v2 <= 0x3F)
  {
    result = sub_1BA4A3428();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SummaryAlertDataModel.hkType.getter()
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);

  return sub_1BA4A65C8();
}

uint64_t SummaryAlertDataModel.hkType.setter(uint64_t a1)
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);

  return sub_1BA4A65D8();
}

void (*SummaryAlertDataModel.hkType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  *(v3 + 32) = sub_1BA4A65B8();
  return sub_1BA09E1C0;
}

uint64_t SummaryAlertDataModel.alertTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SummaryAlertDataModel(uint64_t a1)
{
  result = qword_1EDC67318;
  if (!qword_1EDC67318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryAlertDataModel.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel(0) + 24);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.alertDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel(0) + 28);
  v4 = sub_1BA4A1728();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.imageRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryAlertDataModel(0) + 32);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryAlertDataModel.imageAccentColor.getter()
{
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  return sub_1BA4A65C8();
}

void sub_1BA09C38C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3, a4);
    v5 = sub_1BA4A65E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA09C3E4(void **a1)
{
  v1 = *a1;
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  v2 = v1;
  return sub_1BA4A65D8();
}

uint64_t SummaryAlertDataModel.imageAccentColor.setter(uint64_t a1)
{
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  return sub_1BA4A65D8();
}

void (*SummaryAlertDataModel.imageAccentColor.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  *(v3 + 32) = sub_1BA4A65B8();
  return sub_1BA09C55C;
}

uint64_t SummaryAlertDataModel.headerText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel(0) + 40));

  return v1;
}

uint64_t SummaryAlertDataModel.bodyMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummaryAlertDataModel(0) + 44));

  return v1;
}

uint64_t SummaryAlertDataModel.init(hkType:alertTitle:startDate:alertDate:imageRepresentation:imageAccentColor:bodyMessage:headerText:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
  v18 = a1;
  sub_1BA4A65F8();
  v19 = type metadata accessor for SummaryAlertDataModel(0);
  v20 = (a9 + v19[5]);
  *v20 = a2;
  v20[1] = a3;
  v21 = v19[6];
  v22 = sub_1BA4A1728();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(a9 + v21, a4, v22);
  v24(a9 + v19[7], a5, v22);
  v25 = v19[8];
  v26 = sub_1BA4A2BF8();
  v27 = *(v26 - 8);
  (*(v27 + 16))(a9 + v25, a6, v26);
  sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  sub_1BA4A65F8();

  (*(v27 + 8))(a6, v26);
  v28 = *(v23 + 8);
  v28(a5, v22);
  result = (v28)(a4, v22);
  v30 = (a9 + v19[10]);
  *v30 = a11;
  v30[1] = a12;
  v31 = (a9 + v19[11]);
  *v31 = a8;
  v31[1] = a10;
  return result;
}

uint64_t SummaryAlertDataModel.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09DA54(&qword_1EBBEB2B8, type metadata accessor for SummaryAlertDataModel, &protocol conformance descriptor for SummaryAlertDataModel);
  sub_1BA4A0E98();

  return sub_1B9F2BB4C(a1, a2);
}

uint64_t SummaryAlertDataModel.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09DA54(&qword_1EDC67328, type metadata accessor for SummaryAlertDataModel, &protocol conformance descriptor for SummaryAlertDataModel);
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA09C9A4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6554726564616568;
    if (v1 != 6)
    {
      v5 = 0x7373654D79646F62;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x657079546B68;
    v3 = 0x7461447472617473;
    if (v1 != 2)
    {
      v3 = 0x7461447472656C61;
    }

    if (*v0)
    {
      v2 = 0x7469547472656C61;
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

uint64_t sub_1BA09CAC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA09DF10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA09CAEC(uint64_t a1)
{
  v2 = sub_1BA09CF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA09CB28(uint64_t a1)
{
  v2 = sub_1BA09CF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummaryAlertDataModel.encode(to:)(void *a1)
{
  sub_1BA09D994(0, &qword_1EDC5DD90, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA09CF34();
  sub_1BA4A8548();
  v18 = 0;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  sub_1BA09D9F8(&qword_1EDC5E8C8, MEMORY[0x1E696B378]);
  sub_1BA4A8288();
  if (!v1)
  {
    type metadata accessor for SummaryAlertDataModel(0);
    v17 = 1;
    sub_1BA4A8248();
    v16 = 2;
    sub_1BA4A1728();
    sub_1BA09DA54(&qword_1EDC6AE80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BA4A8288();
    v15 = 3;
    sub_1BA4A8288();
    v14 = 4;
    sub_1BA4A2BF8();
    sub_1BA09DA54(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
    sub_1BA4A8288();
    v13 = 5;
    sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
    sub_1BA09CF88(&unk_1EDC5E8A0, MEMORY[0x1E696B378]);
    sub_1BA4A8288();
    v12 = 6;
    sub_1BA4A8208();
    v11 = 7;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA09CF34()
{
  result = qword_1EDC67340;
  if (!qword_1EDC67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67340);
  }

  return result;
}

uint64_t sub_1BA09CF88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA09C38C(255, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SummaryAlertDataModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  v64 = v3;
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v59 = v55 - v5;
  v65 = sub_1BA4A2BF8();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v6);
  v60 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v55 - v14;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  v17 = v16;
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v69 = v55 - v19;
  sub_1BA09D994(0, &qword_1EBBEB2C0, MEMORY[0x1E69E6F48]);
  v70 = *(v20 - 8);
  v71 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v55 - v22;
  v24 = type metadata accessor for SummaryAlertDataModel(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA09CF34();
  v72 = v23;
  v28 = v73;
  sub_1BA4A8528();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v73 = v24;
    v29 = v27;
    v81 = 0;
    sub_1BA09D9F8(&qword_1EBBEB2C8, MEMORY[0x1E696B390]);
    v30 = v69;
    sub_1BA4A81C8();
    (*(v68 + 32))(v29, v30, v17);
    v80 = 1;
    v31 = sub_1BA4A8188();
    v57 = v17;
    v32 = v73;
    v33 = &v29[*(v73 + 20)];
    *v33 = v31;
    v33[1] = v34;
    v79 = 2;
    sub_1BA09DA54(&qword_1EDC6AE70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v35 = v15;
    v69 = v29;
    v36 = v66;
    v55[1] = 0;
    sub_1BA4A81C8();
    v56 = a1;
    v37 = v32;
    v38 = *(v67 + 32);
    v38(&v69[v32[6]], v35, v36);
    v78 = 3;
    v39 = v61;
    sub_1BA4A81C8();
    v40 = v36;
    v41 = v69;
    v38(&v69[v32[7]], v39, v40);
    v77 = 4;
    sub_1BA09DA54(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
    v42 = v60;
    v43 = v65;
    sub_1BA4A81C8();
    (*(v63 + 32))(v41 + v37[8], v42, v43);
    v76 = 5;
    sub_1BA09CF88(&qword_1EBBEB2D0, MEMORY[0x1E696B390]);
    v44 = v59;
    v45 = v64;
    sub_1BA4A81C8();
    v46 = v70;
    (*(v62 + 32))(v41 + v37[9], v44, v45);
    v75 = 6;
    v47 = v71;
    v48 = sub_1BA4A8138();
    v49 = (v41 + v37[10]);
    *v49 = v48;
    v49[1] = v50;
    v74 = 7;
    v51 = sub_1BA4A8138();
    v53 = v52;
    (*(v46 + 8))(v72, v47);
    v54 = (v41 + v37[11]);
    *v54 = v51;
    v54[1] = v53;
    sub_1BA09DA9C(v41, v58);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_1BA09DB00(v41);
  }
}

void sub_1BA09D994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA09CF34();
    v7 = a3(a1, &type metadata for SummaryAlertDataModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA09D9F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA09C38C(255, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA09DA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA09DA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryAlertDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA09DB00(uint64_t a1)
{
  v2 = type metadata accessor for SummaryAlertDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA09DBB4(uint64_t a1)
{
  sub_1BA09C38C(319, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  if (v1 <= 0x3F)
  {
    sub_1BA4A1728();
    if (v2 <= 0x3F)
    {
      sub_1BA4A2BF8();
      if (v3 <= 0x3F)
      {
        sub_1BA09C38C(319, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
        if (v4 <= 0x3F)
        {
          sub_1B9F2F388();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SummaryAlertDataModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryAlertDataModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BA09DE0C()
{
  result = qword_1EBBEB2D8;
  if (!qword_1EBBEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB2D8);
  }

  return result;
}

unint64_t sub_1BA09DE64()
{
  result = qword_1EDC67330;
  if (!qword_1EDC67330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67330);
  }

  return result;
}

unint64_t sub_1BA09DEBC()
{
  result = qword_1EDC67338;
  if (!qword_1EDC67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67338);
  }

  return result;
}

uint64_t sub_1BA09DF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B68 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469547472656C61 && a2 == 0xEA0000000000656CLL || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472656C61 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4E77F0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6554726564616568 && a2 == 0xEA00000000007478 || (sub_1BA4A8338() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7373654D79646F62 && a2 == 0xEB00000000656761)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t GridLayoutEngine.WidthConfiguration.init(defaultWidth:widthsPerWidthDesignation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    *a2 = a3;
    *(a2 + 8) = result;
  }

  return result;
}

unint64_t sub_1BA09E24C()
{
  result = sub_1B9FDBA04(&unk_1F37FC138);
  qword_1EBBEB2E0 = 1;
  *algn_1EBBEB2E8 = result;
  return result;
}

HealthExperienceUI::GridLayoutEngine::AccessibilityConfiguration __swiftcall GridLayoutEngine.AccessibilityConfiguration.init(defaultRowItems:rowItemsPerWidth:)(Swift::Int defaultRowItems, Swift::OpaquePointer rowItemsPerWidth)
{
  v2->_rawValue = (defaultRowItems & ~(defaultRowItems >> 63));
  v2[1]._rawValue = rowItemsPerWidth._rawValue;
  result.rowItemsPerWidth = rowItemsPerWidth;
  result.defaultRowItems = defaultRowItems;
  return result;
}

double static GridLayoutEngine.AccessibilityConfiguration.defaultConfig.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE82C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EBBEB2E8;
  *a1 = qword_1EBBEB2E0;
  a1[1] = v2;

  return result;
}

uint64_t GridLayoutEngine.AccessibilityConfiguration.rowItems(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (*(v3 + 16))
  {
    v4 = sub_1B9F82C68(a1);
    if (v5)
    {
      return *(*(v3 + 56) + 8 * v4);
    }
  }

  return v2;
}

double GridLayoutEngine.minWidthsOfItem.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double GridLayoutEngine.maxWidthsOfItem.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t GridLayoutEngine.init(minWidthOfItem:maxWidthOfItem:estimatedHeight:interItemSpacingProvider:interSectionSpacing:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v16 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (a7 > 0.0)
  {
    v17 = v16;
    if (a2)
    {
      a1 = 0.0;
      result = 0;
LABEL_5:
      *a6 = a7;
      *(a6 + 8) = v17;
      *(a6 + 16) = a1;
      *(a6 + 24) = result;
      *(a6 + 32) = a8;
      *(a6 + 40) = a5;
      *(a6 + 48) = 0;
      *(a6 + 56) = 0;
      *(a6 + 64) = a3;
      *(a6 + 72) = a4;
      return result;
    }

    result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
    if (a1 > 0.0)
    {
      goto LABEL_5;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

__n128 GridLayoutEngine.init(minWidthsOfItem:maxWidthsOfItem:estimatedHeight:interItemSpacingProvider:interSectionSpacing:accessibilityRowItems:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 8) = v8;
  *(a7 + 16) = *a2;
  *(a7 + 32) = a8;
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 40) = a5;
  result = *a6;
  *(a7 + 48) = *a6;
  return result;
}

uint64_t static GridLayoutEngine.standardMinimumWidth.setter(double a1)
{
  result = swift_beginAccess();
  qword_1EDC68DF0[0] = a1;
  return result;
}

uint64_t static GridLayoutEngine.smallCard.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EDC68DF0[0];
  v3 = sub_1B9F58798(&unk_1F37FC1F8);
  if (v2 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v4 = v3;
    sub_1B9F5869C();
    result = sub_1BA4A7648();
    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x4049000000000000;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = result;
  }

  return result;
}

uint64_t static GridLayoutEngine.maximumOfTwoItemsLayout.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EDC68DF0[0];
  sub_1B9F5869C();
  v3 = sub_1BA4A7648();
  v4 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (v2 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v5 = v4;
    result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
    *a1 = v2;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0x4082C00000000000;
    *(a1 + 24) = result;
    *(a1 + 32) = 0x4062C00000000000;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = v3;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
  }

  return result;
}

void sub_1BA09E7C8(uint64_t a1)
{
  if (!qword_1EDC5E460)
  {
    type metadata accessor for HKWidthDesignation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E460);
    }
  }
}

uint64_t sub_1BA09E830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BA09E878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PDFTable.Configuration.init(columnSpacings:rowSpacing:minimumRowHeight:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t PDFTable.__allocating_init(_:configuration:pageContinuationRenderables:)(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a1();
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  swift_allocObject();
  v11 = sub_1BA0A1410(v10, v13, a4, a5);
  sub_1B9F0E310(a4, a5);

  return v11;
}

uint64_t PDFTable.__allocating_init(_:configuration:pageContinuationRenderables:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA0A1410(a1, a2, a3, a4);
  sub_1B9F0E310(a3, a4);

  return v8;
}

uint64_t PDFTable.init(_:configuration:pageContinuationRenderables:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA0A1410(a1, a2, a3, a4);
  sub_1B9F0E310(a3, a4);

  return v6;
}

uint64_t sub_1BA09EA80@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + 40 * v3;
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v9[0] = v6;
  result = sub_1B9F0A534(v5 + 32, v9 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = v9[2];
  return result;
}

void sub_1BA09EB20(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 48 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
}

void PDFTable.render(context:document:)(objc_class *a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 96);
  if (v5 == 1)
  {
    v6 = sub_1BA09F214(a3, a2);
  }

  else
  {
    sub_1BA09F420(a2);
  }

  v71 = v6;
  v7 = *(v3 + 16);
  v87 = 0;
  v88 = 0;
  v86 = v7;
  v66 = v7;

  sub_1BA09EA80(&v80);
  v84 = v81;
  v85 = v82;
  v83 = v80;
  if (v82)
  {
    v68 = v3;
    do
    {
      v67 = v83;
      sub_1B9F1134C((&v83 + 8), v77);
      v8 = v78;
      v9 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v10 = (*(v9 + 8))(v8, v9);
      sub_1BA09F568(v10, a2);
      v12 = v11;

      v13.n128_f64[0] = v12;
      v14.super.super.isa = a1;
      sub_1BA09FD84(a2, v14, v13);
      v15 = v78;
      v16 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v17 = (*(v16 + 8))(v15, v16);
      v18 = *(v17 + 16);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v19 = 0;
      v69 = v17 + 32;
      v70 = v17;
      while (1)
      {
        v33 = 0uLL;
        v34 = v18;
        v35 = 0uLL;
        v36 = 0uLL;
        if (v19 != v18)
        {
          if (v19 >= *(v70 + 16))
          {
            goto LABEL_26;
          }

          v34 = v19 + 1;
          *&v74 = v19;
          sub_1B9F0A534(v69 + 40 * v19, &v74 + 8);
          v33 = v74;
          v35 = v75;
          v36 = v76;
        }

        v80 = v33;
        v81 = v35;
        v82 = v36;
        if (!v36)
        {
          break;
        }

        v73 = v33;
        sub_1B9F1134C((&v80 + 8), &v74);
        if ((v73 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v73 >= *(v71 + 2))
        {
          goto LABEL_25;
        }

        v37 = *&v71[8 * v73 + 32];
        type metadata accessor for PDFBuilder.Document();
        v38 = swift_allocObject();
        *(v38 + 104) = 1;
        *(v38 + 112) = 1;
        *(v38 + 120) = 0u;
        *(v38 + 136) = 0u;
        *(v38 + 152) = 256;
        *(v38 + 160) = 1;
        *(v38 + 168) = 0u;
        *(v38 + 184) = 0u;
        *(v38 + 200) = 257;
        v39 = *(a2 + 64);
        *(v38 + 48) = *(a2 + 48);
        *(v38 + 64) = v39;
        *(v38 + 80) = *(a2 + 80);
        v40 = *(a2 + 32);
        *(v38 + 16) = *(a2 + 16);
        *(v38 + 32) = v40;
        v41 = *(a2 + 201);
        swift_beginAccess();
        *(v38 + 201) = v41;
        *(v38 + 96) = v5;
        v42 = *(a2 + 216);
        *(v38 + 208) = *(a2 + 208);
        *(v38 + 216) = v42;
        *(v38 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v38 + 176) = v43;
        *(v38 + 184) = v44;
        *(v38 + 192) = v45;
        *(v38 + 200) = 0;
        *(v38 + 104) = *(a2 + 104);
        *(v38 + 120) = *(a2 + 120);
        v46 = *(a2 + 160);
        swift_beginAccess();
        *(v38 + 160) = v46;
        if (!v5)
        {
          v20 = PDFBuilder.Document.drawingContext.getter();
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v89.origin.x = v20;
          v89.origin.y = v22;
          v89.size.width = v24;
          v89.size.height = v26;
          v27 = v37 + CGRectGetMinX(v89);
          v90.origin.x = v20;
          v90.origin.y = v22;
          v90.size.width = v24;
          v90.size.height = v26;
          v28 = CGRectGetMinY(v90) + 0.0;
          v91.origin.x = v20;
          v91.origin.y = v22;
          v91.size.width = v24;
          v91.size.height = v26;
          v29 = CGRectGetWidth(v91) - v37;
          v92.origin.x = v20;
          v92.origin.y = v22;
          v92.size.width = v24;
          v92.size.height = v26;
          Height = CGRectGetHeight(v92);
          *(v38 + 168) = v27;
          *(v38 + 176) = v28;
          *(v38 + 184) = v29;
          *(v38 + 192) = Height;
LABEL_9:
          *(v38 + 200) = 0;
          goto LABEL_10;
        }

        if (v73 < *(*(v68 + 24) + 16))
        {

          v48 = sub_1BA0A0BDC(v47, v38);

          v49 = *(&v75 + 1);
          v50 = v76;
          __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
          v93.origin.x = (*(v50 + 24))(v38, v49, v50);
          v51 = v37 + v48 - CGRectGetWidth(v93);
          PDFBuilder.Document.drawingContext.getter();
          *(v38 + 168) = v51;
          *(v38 + 176) = v52;
          goto LABEL_9;
        }

LABEL_10:
        v31 = *(&v75 + 1);
        v32 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        (*(v32 + 16))(a1, v38, v31, v32);

        __swift_destroy_boxed_opaque_existential_1(&v74);
        v19 = v34;
      }

      v94.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v94.origin.x;
      y = v94.origin.y;
      width = v94.size.width;
      v56 = v94.size.height;
      v57 = CGRectGetMinX(v94) + 0.0;
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = v56;
      v58 = v12 + CGRectGetMinY(v95);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = width;
      v96.size.height = v56;
      v59 = CGRectGetWidth(v96);
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = width;
      v97.size.height = v56;
      v60 = CGRectGetHeight(v97) - v12;
      *(a2 + 168) = v57;
      *(a2 + 176) = v58;
      *(a2 + 184) = v59;
      *(a2 + 192) = v60;
      *(a2 + 200) = 0;
      if (v67 < *(v66 + 16) - 1)
      {
        v61 = *(v68 + 56);
        v98.origin.x = v57;
        v98.origin.y = v58;
        v98.size.width = v59;
        v98.size.height = v60;
        v62 = CGRectGetMinX(v98) + 0.0;
        v99.origin.x = v57;
        v99.origin.y = v58;
        v99.size.width = v59;
        v99.size.height = v60;
        v63 = v61 + CGRectGetMinY(v99);
        v100.origin.x = v57;
        v100.origin.y = v58;
        v100.size.width = v59;
        v100.size.height = v60;
        v64 = CGRectGetWidth(v100);
        v101.origin.x = v57;
        v101.origin.y = v58;
        v101.size.width = v59;
        v101.size.height = v60;
        v65 = CGRectGetHeight(v101);
        *(a2 + 168) = v62;
        *(a2 + 176) = v63;
        *(a2 + 184) = v64;
        *(a2 + 192) = v65 - v61;
        *(a2 + 200) = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v77);
      sub_1BA09EA80(&v80);
      v84 = v81;
      v85 = v82;
      v83 = v80;
    }

    while (v82);
  }
}

char *sub_1BA09F214(__n128 a1, uint64_t *a2)
{
  v7 = v2;
  v8 = *(v2 + 24);
  if (!*(v8 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25.origin.x = PDFBuilder.Document.drawingContext.getter();
  MaxX = CGRectGetMaxX(v25);
  v11 = *(v8 + 16);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = MaxX;

  v14 = sub_1BA0A0BDC(v13, a2);

  v6 = v12 - v14;
  v3 = sub_1BA27FB08(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v11 = *(v3 + 3);
  v4 = v5 + 1;
  if (v5 >= v11 >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *(v3 + 2) = v4;
    *&v3[8 * v5 + 32] = v6;
    v4 = *(v8 + 16);

    if (v4 < 2)
    {
      break;
    }

    v5 = 0;
    v18 = v4 - 1;
    while (v18 != v5)
    {
      v19 = *(v7 + 48);
      if (v5 >= *(v19 + 16))
      {
        v20 = v6 + -10.0;
      }

      else
      {
        v20 = v6 - *(v19 + 8 * v5 + 32);
      }

      v22 = sub_1BA0A0BDC(v21, a2);

      v24 = *(v3 + 2);
      v23 = *(v3 + 3);
      v4 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v3 = sub_1BA27FB08((v23 > 1), v24 + 1, 1, v3);
      }

      ++v5;
      v6 = v20 - v22;
      *(v3 + 2) = v4;
      v11 = &v3[8 * v24];
      *(v11 + 32) = v6;
      if (v18 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v3 = sub_1BA27FB08((v11 > 1), v4, 1, v3);
  }

LABEL_5:

  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_1BA27FB08((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  *&v3[8 * v16 + 32] = 0;
  return v3;
}

void sub_1BA09F420(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = 0.0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      v8 = *(v2 + 32 + 8 * v5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BA27FB08(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1BA27FB08((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v6;
      v11 = sub_1BA0A0BDC(v8, a1);

      v12 = *(v1 + 48);
      v13 = 10.0;
      if (v5 < *(v12 + 16))
      {
        v13 = *(v12 + 8 * v5 + 32);
      }

      ++v5;
      v6 = v6 + v11 + v13;
      if (v3 == v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BA09F568(uint64_t result, uint64_t a2)
{
  v80 = *(result + 16);
  if (v80)
  {
    v2 = 0;
    v79 = result + 32;
    v3 = 0.0;
    do
    {
      sub_1B9F0A534(v79 + 40 * v2, v94);
      type metadata accessor for PDFBuilder.Document();
      swift_allocObject();
      v7 = sub_1BA20F244(a2);
      swift_beginAccess();
      v8 = *(v7 + 208);
      v9 = *(v8 + 16);
      if (v9)
      {
        v93 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v9, 0);
        v10 = v93;
        v11 = v8 + 32;
        swift_beginAccess();
        swift_beginAccess();
        do
        {
          v88 = v10;
          sub_1B9F0A534(v11, v90);
          v12 = v92;
          v86 = v91;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          v13 = swift_allocObject();
          *(v13 + 104) = 1;
          *(v13 + 112) = 1;
          *(v13 + 120) = 0u;
          *(v13 + 136) = 0u;
          *(v13 + 152) = 256;
          *(v13 + 160) = 1;
          *(v13 + 168) = 0u;
          *(v13 + 184) = 0u;
          *(v13 + 200) = 257;
          memmove((v13 + 16), (v7 + 16), 0x50uLL);
          v14 = *(v7 + 201);
          swift_beginAccess();
          *(v13 + 201) = v14;
          *(v13 + 96) = *(v7 + 96);
          *(v13 + 208) = *(v7 + 208);
          *(v13 + 216) = *(v7 + 216);
          *(v13 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v13 + 176) = v15;
          *(v13 + 184) = v16;
          *(v13 + 192) = v17;
          *(v13 + 200) = 0;
          *(v13 + 104) = *(v7 + 104);
          *(v13 + 120) = *(v7 + 120);
          swift_beginAccess();
          v18 = *(v7 + 160);
          swift_beginAccess();
          *(v13 + 160) = v18;
          v19 = *(v13 + 48);
          *(v13 + 168) = *(v13 + 32);
          *(v13 + 184) = v19;
          *(v13 + 200) = 0;
          v20 = *(v12 + 24);

          v10 = v88;
          v21 = v20(v13, v86, v12);
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v98.origin.x = v21;
          v98.origin.y = v23;
          v98.size.width = v25;
          v98.size.height = v27;
          Height = CGRectGetHeight(v98);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v93 = v88;
          v30 = *(v88 + 16);
          v29 = *(v88 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1BA066F50((v29 > 1), v30 + 1, 1);
            v10 = v93;
          }

          *(v10 + 16) = v30 + 1;
          *(v10 + 8 * v30 + 32) = Height;
          v11 += 40;
          --v9;
        }

        while (v9);

        v31 = *(v10 + 16);
        if (!v31)
        {
LABEL_15:

          v34 = 11.0;
          goto LABEL_24;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v31)
        {
          goto LABEL_15;
        }
      }

      if (v31 > 3)
      {
        v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = (v10 + 48);
        v33 = 0.0;
        v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = v33 + *(v35 - 2) + *(v35 - 1) + *v35 + v35[1];
          v35 += 4;
          v36 -= 4;
        }

        while (v36);
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0.0;
      }

      v37 = v31 - v32;
      v38 = (v10 + 8 * v32 + 32);
      do
      {
        v39 = *v38++;
        v33 = v33 + v39;
        --v37;
      }

      while (v37);
LABEL_21:

      v40 = 0.0;
      if (v33 + 1.0 > 0.0)
      {
        v40 = 10.0;
      }

      v34 = v33 + 1.0 + v40;
LABEL_24:
      v41 = 0.0;
      if ((*(v7 + 153) & 1) == 0 && *(v7 + 152) != 1)
      {
        v41 = *(v7 + 144);
      }

      v85 = v41;
      v43 = *(v7 + 32);
      v42 = *(v7 + 40);
      v44 = *(v7 + 48);
      v45 = *(v7 + 56);
      v99.origin.x = v43;
      v99.origin.y = v42;
      v99.size.width = v44;
      v99.size.height = v45;
      v84 = CGRectGetHeight(v99);
      swift_beginAccess();
      v46 = *(v7 + 216);
      v47 = *(v46 + 16);
      if (v47)
      {
        v82 = v34;
        v83 = v3;
        v93 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v47, 0);
        v48 = v93;
        v49 = v46 + 32;
        swift_beginAccess();
        do
        {
          v89 = v48;
          sub_1B9F0A534(v49, v90);
          v50 = v92;
          v87 = v91;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          v51 = swift_allocObject();
          *(v51 + 104) = 1;
          *(v51 + 112) = 1;
          *(v51 + 120) = 0u;
          *(v51 + 136) = 0u;
          *(v51 + 152) = 256;
          *(v51 + 160) = 1;
          *(v51 + 168) = 0u;
          *(v51 + 184) = 0u;
          *(v51 + 200) = 257;
          memmove((v51 + 16), (v7 + 16), 0x50uLL);
          v52 = *(v7 + 201);
          swift_beginAccess();
          *(v51 + 201) = v52;
          *(v51 + 96) = *(v7 + 96);
          *(v51 + 208) = *(v7 + 208);
          *(v51 + 216) = *(v7 + 216);
          *(v51 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v51 + 176) = v53;
          *(v51 + 184) = v54;
          *(v51 + 192) = v55;
          *(v51 + 200) = 0;
          *(v51 + 104) = *(v7 + 104);
          *(v51 + 120) = *(v7 + 120);
          swift_beginAccess();
          v56 = *(v7 + 160);
          swift_beginAccess();
          *(v51 + 160) = v56;
          v57 = *(v51 + 48);
          *(v51 + 168) = *(v51 + 32);
          *(v51 + 184) = v57;
          *(v51 + 200) = 0;
          v58 = *(v50 + 24);

          v48 = v89;
          v59 = v58(v51, v87, v50);
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v100.origin.x = v59;
          v100.origin.y = v61;
          v100.size.width = v63;
          v100.size.height = v65;
          v66 = CGRectGetHeight(v100);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v93 = v89;
          v68 = *(v89 + 16);
          v67 = *(v89 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1BA066F50((v67 > 1), v68 + 1, 1);
            v48 = v93;
          }

          *(v48 + 16) = v68 + 1;
          *(v48 + 8 * v68 + 32) = v66;
          v49 += 40;
          --v47;
        }

        while (v47);

        v34 = v82;
        v3 = v83;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v48 + 16);
      if (v69)
      {
        if (v69 > 3)
        {
          v70 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          v72 = (v48 + 48);
          v71 = 0.0;
          v73 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v71 = v71 + *(v72 - 2) + *(v72 - 1) + *v72 + v72[1];
            v72 += 4;
            v73 -= 4;
          }

          while (v73);
          if (v69 == v70)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v70 = 0;
          v71 = 0.0;
        }

        v74 = v69 - v70;
        v75 = (v48 + 8 * v70 + 32);
        do
        {
          v76 = *v75++;
          v71 = v71 + v76;
          --v74;
        }

        while (v74);
      }

      else
      {
        v71 = 0.0;
      }

LABEL_43:

      if ((*(v7 + 153) & 1) != 0 || *(v7 + 136) == 1)
      {
        v101.origin.x = v43;
        v101.origin.y = v42;
        v101.size.width = v44;
        v101.size.height = v45;
        Width = CGRectGetWidth(v101);
      }

      else
      {
        Width = *(v7 + 128);
      }

      v102.origin.x = v43;
      v102.origin.y = v42;
      v102.size.width = v44;
      v102.size.height = v45;
      v78 = CGRectGetWidth(v102);
      if (Width >= v78)
      {
        Width = v78;
      }

      if (*(v7 + 96) == 1)
      {
        v103.origin.x = v43;
        v103.origin.y = v42;
        v103.size.width = v44;
        v103.size.height = v45;
        v43 = CGRectGetMaxX(v103) - Width;
      }

      ++v2;
      *(v7 + 168) = v43;
      *(v7 + 176) = v85 + v34 + v42;
      *(v7 + 184) = Width;
      *(v7 + 192) = v84 - v34 - v85 - v71 + -10.0;
      *(v7 + 200) = 0;
      v4 = v95;
      v5 = v96;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v97.origin.x = (*(v5 + 24))(v7, v4, v5);
      v6 = CGRectGetHeight(v97);

      if (v6 > v3)
      {
        v3 = v6;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v94);
    }

    while (v2 != v80);
  }

  return result;
}

void sub_1BA09FD84(uint64_t a1, UIGraphicsPDFRendererContext a2, __n128 a3)
{
  v5 = a3.n128_f64[0];
  v7 = PDFBuilder.Document.drawingContext.getter();
  v9 = v8;
  v20.size.width = CGRectGetWidth(*(a1 + 168));
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.height = v5;
  if (!CGRectContainsRect(*(a1 + 168), v20))
  {
    swift_beginAccess();
    v10 = *(a1 + 160);
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a2);
    if (v10 != *(a1 + 160))
    {
      v11 = *(v3 + 32);
      if (v11)
      {
        v12 = v11(a1);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12 + 32;
          do
          {
            sub_1B9F0A534(v14, v17);
            v15 = v18;
            v16 = v19;
            __swift_project_boxed_opaque_existential_1(v17, v18);
            (*(v16 + 16))(a2.super.super.isa, a1, v15, v16);
            __swift_destroy_boxed_opaque_existential_1(v17);
            v14 += 40;
            --v13;
          }

          while (v13);
        }
      }
    }
  }
}

void sub_1BA09FEE0(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v97 = *(a1 + 16);
    v98 = a1 + 32;
    v101 = 0.0;
    v102 = 0.0;
    v96 = v4 - 1;
    do
    {
      v7 = *(v98 + 8 * v5);
      v99 = v5;
      v100 = v5 + 1;
      v106 = *(v7 + 16);
      v103 = v7 + 32;
      v108 = v7;

      v8 = 0;
      v9 = 0.0;
      while (1)
      {
        v10 = 0uLL;
        v11 = v106;
        v12 = 0uLL;
        v13 = 0uLL;
        if (v8 != v106)
        {
          if (v8 >= *(v108 + 16))
          {
            __break(1u);
            return;
          }

          v11 = v8 + 1;
          v123.n128_u64[0] = v8;
          sub_1B9F0A534(v103 + 40 * v8, &v123.n128_i64[1]);
          v10 = v123;
          v12 = v124;
          v13 = v125;
        }

        v126[0] = v10;
        v126[1] = v12;
        v126[2] = v13;
        if (!v13.n128_u64[0])
        {
          break;
        }

        v112 = v10.n128_u64[0];
        v113 = v11;
        sub_1B9F1134C(&v126[0].n128_i8[8], &v123);
        type metadata accessor for PDFBuilder.Document();
        swift_allocObject();
        v14 = sub_1BA20F244(a2);
        swift_beginAccess();
        v15 = *(v14 + 208);
        v16 = *(v15 + 16);
        if (v16)
        {
          v122 = MEMORY[0x1E69E7CC0];

          sub_1BA066F50(0, v16, 0);
          v17 = v122;
          v18 = v15 + 32;
          swift_beginAccess();
          swift_beginAccess();
          do
          {
            v117 = v17;
            sub_1B9F0A534(v18, v119);
            v19 = v121;
            v115 = v120;
            __swift_project_boxed_opaque_existential_1(v119, v120);
            v20 = swift_allocObject();
            *(v20 + 104) = 1;
            *(v20 + 112) = 1;
            *(v20 + 120) = 0u;
            *(v20 + 136) = 0u;
            *(v20 + 152) = 256;
            *(v20 + 160) = 1;
            *(v20 + 168) = 0u;
            *(v20 + 184) = 0u;
            *(v20 + 200) = 257;
            memmove((v20 + 16), (v14 + 16), 0x50uLL);
            v21 = *(v14 + 201);
            swift_beginAccess();
            *(v20 + 201) = v21;
            *(v20 + 96) = *(v14 + 96);
            *(v20 + 208) = *(v14 + 208);
            *(v20 + 216) = *(v14 + 216);
            *(v20 + 168) = PDFBuilder.Document.drawingContext.getter();
            *(v20 + 176) = v22;
            *(v20 + 184) = v23;
            *(v20 + 192) = v24;
            *(v20 + 200) = 0;
            *(v20 + 104) = *(v14 + 104);
            *(v20 + 120) = *(v14 + 120);
            swift_beginAccess();
            v25 = *(v14 + 160);
            swift_beginAccess();
            *(v20 + 160) = v25;
            v26 = *(v20 + 48);
            *(v20 + 168) = *(v20 + 32);
            *(v20 + 184) = v26;
            *(v20 + 200) = 0;
            v27 = *(v19 + 24);

            v17 = v117;
            v28 = v27(v20, v115, v19);
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v127.origin.x = v28;
            v127.origin.y = v30;
            v127.size.width = v32;
            v127.size.height = v34;
            Height = CGRectGetHeight(v127);
            __swift_destroy_boxed_opaque_existential_1(v119);
            v122 = v117;
            v37 = *(v117 + 16);
            v36 = *(v117 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1BA066F50((v36 > 1), v37 + 1, 1);
              v17 = v122;
            }

            *(v17 + 16) = v37 + 1;
            *(v17 + 8 * v37 + 32) = Height;
            v18 += 40;
            --v16;
          }

          while (v16);

          v38 = *(v17 + 16);
          if (!v38)
          {
LABEL_20:

            v41 = 1.0;
            v42 = 10.0;
            goto LABEL_28;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E7CC0];
          v38 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v38)
          {
            goto LABEL_20;
          }
        }

        if (v38 <= 3)
        {
          v39 = 0;
          v40 = 0.0;
LABEL_24:
          v45 = v38 - v39;
          v46 = (v17 + 8 * v39 + 32);
          do
          {
            v47 = *v46++;
            v40 = v40 + v47;
            --v45;
          }

          while (v45);
          goto LABEL_26;
        }

        v39 = v38 & 0x7FFFFFFFFFFFFFFCLL;
        v43 = (v17 + 48);
        v40 = 0.0;
        v44 = v38 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v40 = v40 + *(v43 - 2) + *(v43 - 1) + *v43 + v43[1];
          v43 += 4;
          v44 -= 4;
        }

        while (v44);
        if (v38 != v39)
        {
          goto LABEL_24;
        }

LABEL_26:

        v41 = v40 + 1.0;
        v42 = 10.0;
        if (v40 + 1.0 <= 0.0)
        {
          v42 = 0.0;
        }

LABEL_28:
        v48 = 0.0;
        v114 = v9;
        v111 = v42;
        if ((*(v14 + 153) & 1) == 0 && *(v14 + 152) != 1)
        {
          v48 = *(v14 + 144);
        }

        v110 = v48;
        v50 = *(v14 + 32);
        v49 = *(v14 + 40);
        v51 = *(v14 + 48);
        v52 = *(v14 + 56);
        v128.origin.x = v50;
        v128.origin.y = v49;
        v128.size.width = v51;
        v128.size.height = v52;
        v109 = CGRectGetHeight(v128);
        swift_beginAccess();
        v53 = *(v14 + 216);
        v54 = *(v53 + 16);
        if (v54)
        {
          v107 = v41;
          v122 = MEMORY[0x1E69E7CC0];

          sub_1BA066F50(0, v54, 0);
          v55 = v122;
          v56 = v53 + 32;
          swift_beginAccess();
          do
          {
            v118 = v55;
            sub_1B9F0A534(v56, v119);
            v57 = v121;
            v116 = v120;
            __swift_project_boxed_opaque_existential_1(v119, v120);
            v58 = swift_allocObject();
            *(v58 + 104) = 1;
            *(v58 + 112) = 1;
            *(v58 + 120) = 0u;
            *(v58 + 136) = 0u;
            *(v58 + 152) = 256;
            *(v58 + 160) = 1;
            *(v58 + 168) = 0u;
            *(v58 + 184) = 0u;
            *(v58 + 200) = 257;
            memmove((v58 + 16), (v14 + 16), 0x50uLL);
            v59 = *(v14 + 201);
            swift_beginAccess();
            *(v58 + 201) = v59;
            *(v58 + 96) = *(v14 + 96);
            *(v58 + 208) = *(v14 + 208);
            *(v58 + 216) = *(v14 + 216);
            *(v58 + 168) = PDFBuilder.Document.drawingContext.getter();
            *(v58 + 176) = v60;
            *(v58 + 184) = v61;
            *(v58 + 192) = v62;
            *(v58 + 200) = 0;
            *(v58 + 104) = *(v14 + 104);
            *(v58 + 120) = *(v14 + 120);
            swift_beginAccess();
            v63 = *(v14 + 160);
            swift_beginAccess();
            *(v58 + 160) = v63;
            v64 = *(v58 + 48);
            *(v58 + 168) = *(v58 + 32);
            *(v58 + 184) = v64;
            *(v58 + 200) = 0;
            v65 = *(v57 + 24);

            v55 = v118;
            v66 = v65(v58, v116, v57);
            v68 = v67;
            v70 = v69;
            v72 = v71;

            v129.origin.x = v66;
            v129.origin.y = v68;
            v129.size.width = v70;
            v129.size.height = v72;
            v73 = CGRectGetHeight(v129);
            __swift_destroy_boxed_opaque_existential_1(v119);
            v122 = v118;
            v75 = *(v118 + 16);
            v74 = *(v118 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_1BA066F50((v74 > 1), v75 + 1, 1);
              v55 = v122;
            }

            *(v55 + 16) = v75 + 1;
            *(v55 + 8 * v75 + 32) = v73;
            v56 += 40;
            --v54;
          }

          while (v54);

          v41 = v107;
          v76 = *(v55 + 16);
          if (!v76)
          {
LABEL_40:
            v78 = 0.0;
            goto LABEL_46;
          }
        }

        else
        {
          v55 = MEMORY[0x1E69E7CC0];
          v76 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v76)
          {
            goto LABEL_40;
          }
        }

        if (v76 <= 3)
        {
          v77 = 0;
          v78 = 0.0;
LABEL_44:
          v81 = v76 - v77;
          v82 = (v55 + 8 * v77 + 32);
          do
          {
            v83 = *v82++;
            v78 = v78 + v83;
            --v81;
          }

          while (v81);
          goto LABEL_46;
        }

        v77 = v76 & 0x7FFFFFFFFFFFFFFCLL;
        v79 = (v55 + 48);
        v78 = 0.0;
        v80 = v76 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v78 = v78 + *(v79 - 2) + *(v79 - 1) + *v79 + v79[1];
          v79 += 4;
          v80 -= 4;
        }

        while (v80);
        if (v76 != v77)
        {
          goto LABEL_44;
        }

LABEL_46:

        if ((*(v14 + 153) & 1) != 0 || *(v14 + 136) == 1)
        {
          v130.origin.x = v50;
          v130.origin.y = v49;
          v130.size.width = v51;
          v130.size.height = v52;
          Width = CGRectGetWidth(v130);
        }

        else
        {
          Width = *(v14 + 128);
        }

        v131.origin.x = v50;
        v131.origin.y = v49;
        v131.size.width = v51;
        v131.size.height = v52;
        v85 = CGRectGetWidth(v131);
        if (Width >= v85)
        {
          v86 = v85;
        }

        else
        {
          v86 = Width;
        }

        if (*(v14 + 96) == 1)
        {
          v132.origin.x = v50;
          v132.origin.y = v49;
          v132.size.width = v51;
          v132.size.height = v52;
          v50 = CGRectGetMaxX(v132) - v86;
        }

        *(v14 + 168) = v50;
        *(v14 + 176) = v110 + v111 + v41 + v49;
        *(v14 + 184) = v86;
        *(v14 + 192) = v109 - (v111 + v41) - v110 - v78 + -10.0;
        *(v14 + 200) = 0;
        v87 = v124.n128_u64[1];
        v88 = v125.n128_u64[0];
        __swift_project_boxed_opaque_existential_1(&v123, v124.n128_i64[1]);
        v133.origin.x = (*(v88 + 24))(v14, v87, v88);
        v89 = CGRectGetHeight(v133);

        v3 = v104;
        v90 = *(v104 + 64);
        if (v89 > v90)
        {
          v90 = v89;
        }

        v9 = v114 + v90;
        if (v112 < *(v108 + 16) - 1)
        {
          v9 = v9 + *(v104 + 56);
        }

        __swift_destroy_boxed_opaque_existential_1(&v123);
        v8 = v113;
      }

      v91 = v101;
      if (v9 > v101)
      {
        v91 = v9;
      }

      v101 = v91;
      v92 = sub_1BA0A0BDC(v108, a2);

      v93 = v102 + v92;
      if (v99 >= v96)
      {
        v6 = v97;
        v5 = v100;
      }

      else
      {
        v94 = *(v3 + 48);
        v5 = v100;
        if (v99 >= *(v94 + 16))
        {
          v95 = 10.0;
        }

        else
        {
          v95 = *(v94 + 8 * v99 + 32);
        }

        v93 = v93 + v95;
        v6 = v97;
      }

      v102 = v93;
    }

    while (v5 != v6);
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t PDFTable.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v23 = a1;
  sub_1BA0A1808(0, &qword_1EBBEB2F0, sub_1BA0A17D4, MEMORY[0x1E69E6F90]);
  result = swift_initStackObject();
  v3 = xmmword_1BA4B5480;
  v22 = result;
  *(result + 16) = xmmword_1BA4B5480;
  v24 = v1;
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v4 + 16))
    {
      v15 = *(v4 + 32 + 8 * v6);
      if (*(v15 + 16))
      {
        sub_1B9F0A534(v15 + 32, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1BA27FAAC(0, v7[2] + 1, 1, v7);
          v28 = v7;
        }

        v18 = v7[2];
        v17 = v7[3];
        if (v18 >= v17 >> 1)
        {
          v7 = sub_1BA27FAAC((v17 > 1), v18 + 1, 1, v7);
          v28 = v7;
        }

        v8 = v26;
        v9 = v27;
        v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v11 = MEMORY[0x1EEE9AC00](v10, v10);
        v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v13, v11);
        sub_1B9F1C4F4(v18, v13, &v28, v8, v9);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v20 = v22;
    v19 = v23;
    v21 = v22;
    *(v22 + 32) = v7;
    sub_1BA09FEE0(v20, v19, v3);
    swift_setDeallocating();
    return sub_1BA0A18D0(v21 + 32);
  }

  return result;
}

void *PDFTable.deinit()
{

  sub_1B9F0E310(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t PDFTable.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_1BA0A0BDC(uint64_t a1, uint64_t *a2)
{
  v82 = *(a1 + 16);
  if (v82)
  {
    v2 = 0;
    v81 = a1 + 32;
    v3 = 0.0;
    while (1)
    {
      sub_1B9F0A534(v81 + 40 * v2, v96);
      swift_allocObject();
      v7 = sub_1BA20F244(a2);
      swift_beginAccess();
      v8 = *(v7 + 208);
      v9 = *(v8 + 16);
      if (v9)
      {
        v95 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v9, 0);
        v10 = v95;
        v11 = v8 + 32;
        swift_beginAccess();
        swift_beginAccess();
        do
        {
          v90 = v10;
          sub_1B9F0A534(v11, v92);
          v12 = v94;
          v88 = v93;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v13 = swift_allocObject();
          *(v13 + 104) = 1;
          *(v13 + 112) = 1;
          *(v13 + 120) = 0u;
          *(v13 + 136) = 0u;
          *(v13 + 152) = 256;
          *(v13 + 160) = 1;
          *(v13 + 168) = 0u;
          *(v13 + 184) = 0u;
          *(v13 + 200) = 257;
          memmove((v13 + 16), (v7 + 16), 0x50uLL);
          v14 = *(v7 + 201);
          swift_beginAccess();
          *(v13 + 201) = v14;
          *(v13 + 96) = *(v7 + 96);
          *(v13 + 208) = *(v7 + 208);
          *(v13 + 216) = *(v7 + 216);
          *(v13 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v13 + 176) = v15;
          *(v13 + 184) = v16;
          *(v13 + 192) = v17;
          *(v13 + 200) = 0;
          *(v13 + 104) = *(v7 + 104);
          *(v13 + 120) = *(v7 + 120);
          swift_beginAccess();
          v18 = *(v7 + 160);
          swift_beginAccess();
          *(v13 + 160) = v18;
          v19 = *(v13 + 48);
          *(v13 + 168) = *(v13 + 32);
          *(v13 + 184) = v19;
          *(v13 + 200) = 0;
          v20 = *(v12 + 24);

          v10 = v90;
          v21 = v20(v13, v88, v12);
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v100.origin.x = v21;
          v100.origin.y = v23;
          v100.size.width = v25;
          v100.size.height = v27;
          Height = CGRectGetHeight(v100);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v95 = v90;
          v30 = *(v90 + 16);
          v29 = *(v90 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1BA066F50((v29 > 1), v30 + 1, 1);
            v10 = v95;
          }

          *(v10 + 16) = v30 + 1;
          *(v10 + 8 * v30 + 32) = Height;
          v11 += 40;
          --v9;
        }

        while (v9);

        v31 = *(v10 + 16);
        if (!v31)
        {
LABEL_15:

          v34 = 11.0;
          goto LABEL_24;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v31)
        {
          goto LABEL_15;
        }
      }

      if (v31 > 3)
      {
        v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = (v10 + 48);
        v33 = 0.0;
        v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = v33 + *(v35 - 2) + *(v35 - 1) + *v35 + v35[1];
          v35 += 4;
          v36 -= 4;
        }

        while (v36);
        if (v31 == v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0.0;
      }

      v37 = v31 - v32;
      v38 = (v10 + 8 * v32 + 32);
      do
      {
        v39 = *v38++;
        v33 = v33 + v39;
        --v37;
      }

      while (v37);
LABEL_21:

      v40 = 0.0;
      if (v33 + 1.0 > 0.0)
      {
        v40 = 10.0;
      }

      v34 = v33 + 1.0 + v40;
LABEL_24:
      v41 = 0.0;
      v87 = v34;
      if ((*(v7 + 153) & 1) == 0 && *(v7 + 152) != 1)
      {
        v41 = *(v7 + 144);
      }

      v86 = v41;
      v43 = *(v7 + 32);
      v42 = *(v7 + 40);
      v44 = *(v7 + 48);
      v45 = *(v7 + 56);
      v101.origin.x = v43;
      v101.origin.y = v42;
      v101.size.width = v44;
      v101.size.height = v45;
      v85 = CGRectGetHeight(v101);
      swift_beginAccess();
      v46 = *(v7 + 216);
      v47 = *(v46 + 16);
      if (v47)
      {
        v84 = v3;
        v95 = MEMORY[0x1E69E7CC0];

        sub_1BA066F50(0, v47, 0);
        v48 = v95;
        v49 = v46 + 32;
        swift_beginAccess();
        do
        {
          v91 = v48;
          sub_1B9F0A534(v49, v92);
          v50 = v94;
          v89 = v93;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v51 = swift_allocObject();
          *(v51 + 104) = 1;
          *(v51 + 112) = 1;
          *(v51 + 120) = 0u;
          *(v51 + 136) = 0u;
          *(v51 + 152) = 256;
          *(v51 + 160) = 1;
          *(v51 + 168) = 0u;
          *(v51 + 184) = 0u;
          *(v51 + 200) = 257;
          memmove((v51 + 16), (v7 + 16), 0x50uLL);
          v52 = *(v7 + 201);
          swift_beginAccess();
          *(v51 + 201) = v52;
          *(v51 + 96) = *(v7 + 96);
          *(v51 + 208) = *(v7 + 208);
          *(v51 + 216) = *(v7 + 216);
          *(v51 + 168) = PDFBuilder.Document.drawingContext.getter();
          *(v51 + 176) = v53;
          *(v51 + 184) = v54;
          *(v51 + 192) = v55;
          *(v51 + 200) = 0;
          *(v51 + 104) = *(v7 + 104);
          *(v51 + 120) = *(v7 + 120);
          swift_beginAccess();
          v56 = *(v7 + 160);
          swift_beginAccess();
          *(v51 + 160) = v56;
          v57 = *(v51 + 48);
          *(v51 + 168) = *(v51 + 32);
          *(v51 + 184) = v57;
          *(v51 + 200) = 0;
          v58 = *(v50 + 24);

          v48 = v91;
          v59 = v58(v51, v89, v50);
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v102.origin.x = v59;
          v102.origin.y = v61;
          v102.size.width = v63;
          v102.size.height = v65;
          v66 = CGRectGetHeight(v102);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v95 = v91;
          v68 = *(v91 + 16);
          v67 = *(v91 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1BA066F50((v67 > 1), v68 + 1, 1);
            v48 = v95;
          }

          *(v48 + 16) = v68 + 1;
          *(v48 + 8 * v68 + 32) = v66;
          v49 += 40;
          --v47;
        }

        while (v47);

        v3 = v84;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v48 + 16);
      if (v69)
      {
        if (v69 > 3)
        {
          v70 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          v72 = (v48 + 48);
          v71 = 0.0;
          v73 = v69 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v71 = v71 + *(v72 - 2) + *(v72 - 1) + *v72 + v72[1];
            v72 += 4;
            v73 -= 4;
          }

          while (v73);
          if (v69 == v70)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v70 = 0;
          v71 = 0.0;
        }

        v74 = v69 - v70;
        v75 = (v48 + 8 * v70 + 32);
        do
        {
          v76 = *v75++;
          v71 = v71 + v76;
          --v74;
        }

        while (v74);
      }

      else
      {
        v71 = 0.0;
      }

LABEL_43:

      if ((*(v7 + 153) & 1) != 0 || *(v7 + 136) == 1)
      {
        v103.origin.x = v43;
        v103.origin.y = v42;
        v103.size.width = v44;
        v103.size.height = v45;
        Width = CGRectGetWidth(v103);
      }

      else
      {
        Width = *(v7 + 128);
      }

      v104.origin.x = v43;
      v104.origin.y = v42;
      v104.size.width = v44;
      v104.size.height = v45;
      v78 = CGRectGetWidth(v104);
      if (Width >= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = Width;
      }

      if (*(v7 + 96) == 1)
      {
        v105.origin.x = v43;
        v105.origin.y = v42;
        v105.size.width = v44;
        v105.size.height = v45;
        v43 = CGRectGetMaxX(v105) - v79;
      }

      ++v2;
      *(v7 + 168) = v43;
      *(v7 + 176) = v86 + v87 + v42;
      *(v7 + 184) = v79;
      *(v7 + 192) = v85 - v87 - v86 - v71 + -10.0;
      *(v7 + 200) = 0;
      v4 = v97;
      v5 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      v99.origin.x = (*(v5 + 24))(v7, v4, v5);
      v6 = CGRectGetWidth(v99);

      if (v6 > v3)
      {
        v3 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v96);
      if (v2 == v82)
      {
        return v3;
      }
    }
  }

  return 0.0;
}