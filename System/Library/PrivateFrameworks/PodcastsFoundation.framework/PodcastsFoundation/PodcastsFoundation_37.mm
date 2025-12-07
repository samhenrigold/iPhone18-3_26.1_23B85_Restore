void sub_1D90A6A58(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1D917938C())
          {
            goto LABEL_29;
          }

          sub_1D8D6B2FC();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
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

            sub_1D90A7EE8(a1, a2, v30, a3, &unk_1ECAB6740, &qword_1D91936F0);
            return;
          }
        }

        v18 = sub_1D917913C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1D8D6B2FC();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1D917914C();

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
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1D917914C();

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
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_1D90A6CEC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v39 = a3 + 56;
  v33 = a5;
LABEL_2:
  v31 = v6;
  while (1)
  {
    v7 = a5[1];
    v8 = *(*a5 + 16);
    if (v7 == v8)
    {

      return sub_1D90A80D4(v32, a2, v31, a3);
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = *a5 + 24 * v7;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    a5[1] = v7 + 1;
    sub_1D9179DBC();
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = 8;
      }

      else if (v10 > 1)
      {
        if (v10 ^ 2 | v11)
        {
          v13 = 6;
        }

        else
        {
          v13 = 4;
        }
      }

      else if (v10 | v11)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      if (v12)
      {

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        goto LABEL_14;
      }

      v13 = 3;
    }

    MEMORY[0x1DA72B390](v13);
LABEL_14:
    v14 = sub_1D9179E1C();
    v15 = -1 << *(a3 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v39 + 8 * (v16 >> 6))) == 0)
    {
LABEL_3:
      result = sub_1D8D02FCC(v10, v11, v12);
      goto LABEL_4;
    }

    v38 = ~v15;
    v19 = v10 != 3;
    v20 = v10 != 2;
    v21 = v10 != 1;
    if (v11)
    {
      v19 = 1;
      v20 = 1;
      v21 = 1;
    }

    if (v12 != 3)
    {
      v19 = 1;
    }

    v37 = v19;
    v22 = v12 != 3 || v20;
    v36 = v22;
    v23 = v12 != 3 || v21;
    if (v11 | v10)
    {
      v24 = 0;
    }

    else
    {
      v24 = v12 == 3;
    }

    v34 = v24;
    v35 = v23;
    while (1)
    {
      v25 = *(a3 + 48) + 24 * v16;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if (v28 <= 1)
      {
        if (*(v25 + 16))
        {
        }

        else if (!v12)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      if (v28 == 2)
      {
        if (v12 == 2)
        {
          goto LABEL_48;
        }

        goto LABEL_30;
      }

      if (v26 > 1)
      {
        break;
      }

      if (v26 | v27)
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v34)
      {
        goto LABEL_48;
      }

LABEL_30:
      sub_1D8D02FE4(v10, v11, v12);
      sub_1D8D02FCC(v26, v27, v28);
      sub_1D8D02FCC(v10, v11, v12);
      v16 = (v16 + 1) & v38;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if ((*(v39 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!(v26 ^ 2 | v27))
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    if (v37)
    {
      goto LABEL_30;
    }

LABEL_48:
    sub_1D8D02FE4(v10, v11, v12);
    sub_1D8D02FCC(v26, v27, v28);
    result = sub_1D8D02FCC(v10, v11, v12);
    v29 = v32[v17];
    v32[v17] = v29 & ~v18;
    if ((v29 & v18) != 0)
    {
      v6 = v31 - 1;
      a5 = v33;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_62;
      }

      if (v31 == 1)
      {
        return MEMORY[0x1E69E7CD0];
      }

      goto LABEL_2;
    }

LABEL_4:
    a5 = v33;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_1D90A707C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v40 = a3 + 56;
LABEL_2:
  v37 = v7;
LABEL_3:
  while (2)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (v10)
    {
      v11 = a5[3];
LABEL_9:
      v14 = *(*a5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v10))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 9);
      a5[3] = v11;
      a5[4] = (v10 - 1) & v10;
      sub_1D9179DBC();
      v42 = v16;
      sub_1D9179DDC();
      if (v16 != 1)
      {
        MEMORY[0x1DA72B3C0](v15);
      }

      v41 = v15;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v18 = sub_1D9179E1C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v8 + 8 * (v20 >> 6))) == 0)
      {
        continue;
      }

      v23 = ~v19;
      while (1)
      {
        v25 = *(v5 + 48) + 16 * v20;
        v26 = *(v25 + 9);
        if (*(v25 + 8))
        {
          if (!v42)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v27 = *v25 == v41;
          v28 = v42;
          if (!v27)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_14;
          }
        }

        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v29 = 0x657469726F766166;
            v30 = 0xE900000000000064;
          }

          else
          {
            v30 = 0xE700000000000000;
            v29 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v29 = 0x4C74736567677573;
          v30 = 0xEB00000000737365;
          if (v26)
          {
            v30 = 0xE700000000000000;
            v29 = 0x6C61727475656ELL;
          }
        }

        v31 = v5;
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v32 = 0x657469726F766166;
          }

          else
          {
            v32 = 0x6E776F6E6B6E75;
          }

          if (v17 == 2)
          {
            v33 = 0xE900000000000064;
          }

          else
          {
            v33 = 0xE700000000000000;
          }
        }

        else
        {
          v32 = 0x4C74736567677573;
          v33 = 0xEB00000000737365;
          if (v17)
          {
            v33 = 0xE700000000000000;
            v32 = 0x6C61727475656ELL;
          }
        }

        if (v29 == v32 && v30 == v33)
        {

          v5 = v31;
          v8 = v40;
LABEL_39:
          v34 = a1[v21];
          a1[v21] = v34 & ~v22;
          if ((v34 & v22) != 0)
          {
            v7 = v37 - 1;
            if (__OFSUB__(v37, 1))
            {
              goto LABEL_48;
            }

            if (v37 == 1)
            {
              return;
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

        v24 = sub_1D9179ACC();

        v5 = v31;
        v8 = v40;
        if (v24)
        {
          goto LABEL_39;
        }

LABEL_14:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v8 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (v12 <= v9 + 1)
  {
    v35 = v9 + 1;
  }

  else
  {
    v35 = (a5[2] + 64) >> 6;
  }

  a5[3] = v35 - 1;
  a5[4] = 0;

  sub_1D90A83A4(a1, a2, v37, v5);
}

unint64_t *sub_1D90A748C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = *(a3 + 16);
  v56 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v69 = a3 + 56;
  while (2)
  {
    v55 = v8;
    while (1)
    {
LABEL_4:
      v9 = v5[3];
      v10 = v5[4];
      if (!v10)
      {
        v12 = (v5[2] + 64) >> 6;
        v13 = v5[3];
        while (1)
        {
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v11 >= v12)
          {
            break;
          }

          v10 = *(v5[1] + 8 * v11);
          ++v13;
          if (v10)
          {
            goto LABEL_10;
          }
        }

        if (v12 <= v9 + 1)
        {
          v53 = v9 + 1;
        }

        else
        {
          v53 = (v5[2] + 64) >> 6;
        }

        v5[3] = v53 - 1;
        v5[4] = 0;

        return sub_1D90A8694(v56, a2, v55, v6);
      }

      v11 = v5[3];
LABEL_10:
      v14 = *(*v5 + 48) + 72 * (__clz(__rbit64(v10)) | (v11 << 6));
      v71 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v75 = *(v14 + 64);
      v73 = v16;
      v74 = v17;
      v72 = v15;
      v5[3] = v11;
      v5[4] = (v10 - 1) & v10;
      sub_1D9179DBC();
      v18 = v71;
      sub_1D8D1808C(&v71, v70);
      v76 = v18;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v19 = v72;
      v65 = BYTE8(v72);
      if (BYTE8(v72) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v19);
      }

      v20 = *(&v73 + 1);
      v21 = v74;
      v61 = DWORD2(v74);
      v62 = v73;
      v22 = v75;
      v60 = v75;
      switch(v74)
      {
        case 0:
          v23 = 0;
          goto LABEL_19;
        case 1:
          v23 = 1;
          goto LABEL_19;
        case 2:
          v23 = 3;
LABEL_19:
          MEMORY[0x1DA72B390](v23);
          goto LABEL_21;
      }

      MEMORY[0x1DA72B390](2);
      sub_1D9179DDC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v22);
LABEL_21:
      v24 = sub_1D9179E1C();
      v25 = -1 << *(v6 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = 1 << v26;
      if (((1 << v26) & *(v69 + 8 * (v26 >> 6))) != 0)
      {
        break;
      }

      result = sub_1D8D183D4(&v71);
    }

    v63 = v19;
    v64 = v21;
    v59 = v20;
    v29 = ~v25;
    v30 = *(v6 + 48);
    v31 = v76;
    v32 = *(&v18 + 1);
    while (1)
    {
      v33 = v30 + 72 * v26;
      v34 = *(v33 + 16);
      v35 = *(v33 + 24);
      v36 = *(v33 + 32);
      v37 = *(v33 + 40);
      v38 = *(v33 + 48);
      v39 = *(v33 + 56);
      v40 = *(v33 + 64);
      if (*v33 != v31 || *(v33 + 8) != v32)
      {
        v42 = v29;
        v67 = v28;
        v68 = *(v33 + 56);
        v39 = *(v33 + 64);
        v43 = v30;
        v66 = v27;
        v44 = *(v33 + 48);
        v45 = *(v33 + 24);
        v46 = sub_1D9179ACC();
        v35 = v45;
        v38 = v44;
        v27 = v66;
        v28 = v67;
        v30 = v43;
        v40 = v39;
        LODWORD(v39) = v68;
        v29 = v42;
        v32 = *(&v18 + 1);
        v31 = v76;
        if ((v46 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v35)
      {
        if (!v65)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v47 = v65;
        if (v34 != v63)
        {
          v47 = 1;
        }

        if (v47)
        {
          goto LABEL_24;
        }
      }

      if (v38)
      {
        break;
      }

      if (!v64)
      {
        goto LABEL_52;
      }

LABEL_24:
      v26 = (v26 + 1) & v29;
      v27 = v26 >> 6;
      v28 = 1 << v26;
      if ((*(v69 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        result = sub_1D8D183D4(&v71);
        v5 = a5;
        v6 = a3;
        goto LABEL_4;
      }
    }

    if (v38 == 1)
    {
      if (v64 == 1)
      {
        goto LABEL_52;
      }

      goto LABEL_24;
    }

    if (v38 == 2)
    {
      if (v64 == 2)
      {
        goto LABEL_52;
      }

      goto LABEL_24;
    }

    if (v64 < 3 || ((v36 ^ v62) & 1) != 0)
    {
      goto LABEL_24;
    }

    if (v37 != v59 || v38 != v64)
    {
      v49 = v29;
      v50 = v30;
      v51 = sub_1D9179ACC();
      v30 = v50;
      v29 = v49;
      v32 = *(&v18 + 1);
      v31 = v76;
      if ((v51 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (((v61 ^ v39) & 1) != 0 || v40 != v60)
    {
      goto LABEL_24;
    }

LABEL_52:
    result = sub_1D8D183D4(&v71);
    v5 = a5;
    v52 = v56[v27];
    v56[v27] = v52 & ~v28;
    if ((v52 & v28) == 0)
    {
      v6 = a3;
      goto LABEL_4;
    }

    v8 = v55 - 1;
    v6 = a3;
    if (__OFSUB__(v55, 1))
    {
LABEL_63:
      __break(1u);
    }

    else
    {
      if (v55 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1D90A78EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v17);
    result = sub_1D9179E1C();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1D90A89E0(v7, a2, v9, a3);
}

uint64_t sub_1D90A7AD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  result = sub_1D917942C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D9179DAC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1D90A7CC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917942C();
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
    sub_1D9179DBC();

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    result = sub_1D9179E1C();
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

uint64_t sub_1D90A7EE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D917942C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D917913C();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_1D90A80D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
  result = sub_1D917942C();
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
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1D9179DBC();
    v34 = v18;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = v17;
        v21 = 8;
      }

      else
      {
        v32 = v18;
        v20 = v17;
        if (v17 > 1)
        {
          if (v17 ^ 2 | v32)
          {
            v21 = 6;
          }

          else
          {
            v21 = 4;
          }
        }

        else if (v17 | v32)
        {
          v21 = 2;
        }

        else
        {
          v21 = 1;
        }
      }

      goto LABEL_22;
    }

    if (!v19)
    {
      v20 = v17;
      v21 = 3;
LABEL_22:
      MEMORY[0x1DA72B390](v21);
      goto LABEL_24;
    }

    v20 = v17;
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_24:
    result = sub_1D9179E1C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_34;
        }
      }

      goto LABEL_45;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_34:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 24 * v25;
    *v30 = v20;
    *(v30 + 8) = v34;
    *(v30 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_46;
    }

    v4 = v33;
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D90A83A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  result = sub_1D917942C();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    sub_1D9179DBC();
    sub_1D9179DDC();
    if (v18 != 1)
    {
      MEMORY[0x1DA72B3C0](v17);
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    result = sub_1D9179E1C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v20) >> 6;
      v24 = v17;
      while (++v22 != v26 || (v25 & 1) == 0)
      {
        v27 = v22 == v26;
        if (v22 == v26)
        {
          v22 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v22);
        if (v28 != -1)
        {
          v23 = __clz(__rbit64(~v28)) + (v22 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    v24 = v17;
LABEL_29:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v29 = *(v9 + 48) + 16 * v23;
    *v29 = v24;
    *(v29 + 8) = v18;
    *(v29 + 9) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v31;
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
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D90A8694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  result = sub_1D917942C();
  v6 = result;
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 72 * (v13 | (v11 << 6));
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v42 = *(v16 + 64);
    v40 = v18;
    v41 = v19;
    v38 = *v16;
    v39 = v17;
    sub_1D9179DBC();
    sub_1D8D1808C(&v38, v37);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    if (BYTE8(v39) == 1)
    {
      sub_1D9179DDC();
      v20 = v41;
      if (!v41)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = v39;
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v22);
      v20 = v41;
      if (!v41)
      {
LABEL_22:
        v21 = 0;
        goto LABEL_24;
      }
    }

    if (v20 == 1)
    {
      v21 = 1;
      goto LABEL_24;
    }

    if (v20 == 2)
    {
      v21 = 3;
LABEL_24:
      MEMORY[0x1DA72B390](v21);
      goto LABEL_26;
    }

    v36 = v42;
    MEMORY[0x1DA72B390](2);
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v36);
LABEL_26:
    result = sub_1D9179E1C();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v6 + 48) + 72 * v26;
    *v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    *(v31 + 64) = v42;
    *(v31 + 32) = v33;
    *(v31 + 48) = v34;
    *(v31 + 16) = v32;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_42;
    }

    if (!v5)
    {
LABEL_38:

      return v6;
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
      goto LABEL_38;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D90A89E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917942C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v16);
    result = sub_1D9179E1C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t _s18PodcastsFoundation14PlaybackIntentV16PlayerConstraintO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F0, &qword_1D91B3668);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PlaybackIntent.PlayerConstraint(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F8, &unk_1D91B3670);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v19 = *(v18 + 56);
  sub_1D90AB088(a1, &v29 - v16, type metadata accessor for PlaybackIntent.PlayerConstraint);
  sub_1D90AB088(a2, &v17[v19], type metadata accessor for PlaybackIntent.PlayerConstraint);
  v20 = *(v7 + 48);
  v21 = v20(v17, 3, v6);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v19], 3, v6) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v20(&v17[v19], 3, v6) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1D90AA0F0(v17, type metadata accessor for PlaybackIntent.PlayerConstraint);
    return 1;
  }

  if (v21)
  {
    if (v20(&v17[v19], 3, v6) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1D90AB088(v17, v14, type metadata accessor for PlaybackIntent.PlayerConstraint);
  if (!v20(&v17[v19], 3, v6))
  {
    v23 = *(v9 + 48);
    sub_1D90AA150(v14, v11);
    sub_1D90AA150(&v17[v19], &v11[v23]);
    v24 = v32;
    v25 = *(v31 + 48);
    if (v25(v11, 1, v32) == 1)
    {
      if (v25(&v11[v23], 1, v24) == 1)
      {
        sub_1D8D08A50(v11, &qword_1ECAB9F70, qword_1D91B1680);
        goto LABEL_11;
      }
    }

    else
    {
      v26 = v30;
      sub_1D8D088B4(v11, v30, &qword_1ECAB9F70, qword_1D91B1680);
      if (v25(&v11[v23], 1, v24) != 1)
      {
        v27 = v29;
        sub_1D90AB210(&v11[v23], v29, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v28 = static PodcastsMediaLibrary.MediaItem.== infix(_:_:)(v26, v27);
        sub_1D90AA0F0(v27, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        sub_1D90AA0F0(v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        sub_1D8D08A50(v11, &qword_1ECAB9F70, qword_1D91B1680);
        if (v28)
        {
          goto LABEL_11;
        }

LABEL_20:
        sub_1D90AA0F0(v17, type metadata accessor for PlaybackIntent.PlayerConstraint);
        return 0;
      }

      sub_1D90AA0F0(v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    sub_1D8D08A50(v11, &qword_1ECABA1F0, &qword_1D91B3668);
    goto LABEL_20;
  }

  sub_1D8D08A50(v14, &qword_1ECAB9F70, qword_1D91B1680);
LABEL_12:
  sub_1D8D08A50(v17, &qword_1ECABA1F8, &unk_1D91B3670);
  return 0;
}

uint64_t _s18PodcastsFoundation14PlaybackIntentV7ContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = a1[40];
  v8 = *(a1 + 6);
  v57 = *(a1 + 5);
  v58 = v8;
  *v59 = *(a1 + 7);
  *&v59[13] = *(a1 + 125);
  v9 = *(a1 + 4);
  v55 = *(a1 + 3);
  v56 = v9;
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v14 = *(a2 + 3);
  v13 = *(a2 + 4);
  v15 = a2[40];
  v16 = *(a2 + 6);
  v62 = *(a2 + 5);
  v63 = v16;
  *v64 = *(a2 + 7);
  *&v64[13] = *(a2 + 125);
  v17 = *(a2 + 4);
  v60 = *(a2 + 3);
  v61 = v17;
  if (v2 != v10)
  {
    goto LABEL_5;
  }

  if (v7 == 255)
  {
    sub_1D8D0B37C(v4, v3, v6, v5, 0xFFu);
    if (v15 == 255)
    {
      sub_1D8D0B37C(v12, v11, v14, v13, 0xFFu);
      sub_1D8CFF364(v4, v3, v6, v5, 0xFFu);
LABEL_11:
      v52 = v57;
      v53 = v58;
      v54 = *v59;
      v50 = v55;
      v51 = v56;
      *&v49[19] = v61;
      *&v49[35] = v62;
      *&v49[51] = v63;
      *&v49[67] = *v64;
      v20 = *&v59[16] | (v59[20] << 32);
      v21 = *&v64[16] | (v64[20] << 32);
      *&v49[3] = v60;
      if (v59[16] == 2)
      {
        if (v64[16] == 2)
        {
          v39 = v57;
          v40 = v58;
          *v41 = *v59;
          v37 = v55;
          v38 = v56;
          *&v41[16] = *&v59[16];
          v41[20] = BYTE4(v20);
          sub_1D8D088B4(&v55, &v32, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v60, &v32, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D08A50(&v37, &qword_1ECAB9F78, qword_1D91B16D0);
          v19 = 1;
          return v19 & 1;
        }

        sub_1D8D088B4(&v55, &v37, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v60, &v37, &qword_1ECAB9F78, qword_1D91B16D0);
      }

      else
      {
        v40 = v58;
        *v41 = *v59;
        v38 = v56;
        v39 = v57;
        v37 = v55;
        *&v41[16] = *&v59[16];
        v41[20] = BYTE4(v20);
        v34 = v57;
        v35 = v58;
        v36[0] = *v59;
        v32 = v55;
        v33 = v56;
        *(v36 + 13) = *&v41[13];
        if (v64[16] != 2)
        {
          v29 = v62;
          v30 = v63;
          *v31 = *v64;
          v27 = v60;
          v28 = v61;
          v31[20] = BYTE4(v21);
          *&v31[16] = *&v64[16];
          sub_1D8D088B4(&v55, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v60, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          sub_1D8D088B4(&v37, v25, &qword_1ECAB9F78, qword_1D91B16D0);
          v19 = _s18PodcastsFoundation19EpisodeListSettingsV2eeoiySbAC_ACtFZ_0(&v32, &v27);
          v23[2] = v29;
          v23[3] = v30;
          v24[0] = *v31;
          *(v24 + 13) = *&v31[13];
          v23[0] = v27;
          v23[1] = v28;
          sub_1D8F3D204(v23);
          v25[2] = v34;
          v25[3] = v35;
          v26[0] = v36[0];
          *(v26 + 13) = *(v36 + 13);
          v25[0] = v32;
          v25[1] = v33;
          sub_1D8F3D204(v25);
          v29 = v52;
          v30 = v53;
          *v31 = v54;
          v27 = v50;
          v28 = v51;
          v31[20] = BYTE4(v20);
          *&v31[16] = v20;
          sub_1D8D08A50(&v27, &qword_1ECAB9F78, qword_1D91B16D0);
          return v19 & 1;
        }

        v29 = v39;
        v30 = v40;
        *v31 = *v41;
        *&v31[13] = *&v41[13];
        v27 = v37;
        v28 = v38;
        sub_1D8D088B4(&v55, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v60, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8D088B4(&v37, v25, &qword_1ECAB9F78, qword_1D91B16D0);
        sub_1D8F3D204(&v27);
      }

      v39 = v52;
      v40 = v53;
      *v41 = v54;
      v37 = v50;
      v38 = v51;
      v44 = *&v49[32];
      v45 = *&v49[48];
      *v46 = *&v49[64];
      v42 = *v49;
      *&v41[16] = v20;
      v41[20] = BYTE4(v20);
      v43 = *&v49[16];
      v48 = BYTE4(v21);
      *&v46[15] = *&v49[79];
      v47 = v21;
      sub_1D8D08A50(&v37, &qword_1ECABA1E8, &qword_1D91B3660);
      v19 = 0;
      return v19 & 1;
    }

    sub_1D8D0B37C(v12, v11, v14, v13, v15);
LABEL_9:
    sub_1D8CFF364(v4, v3, v6, v5, v7);
    sub_1D8CFF364(v12, v11, v14, v13, v15);
    v19 = 0;
    return v19 & 1;
  }

  v37.i64[0] = v4;
  v37.i64[1] = v3;
  *&v38 = v6;
  *(&v38 + 1) = v5;
  LOBYTE(v39) = v7;
  if (v15 == 255)
  {
    sub_1D8D0B37C(v4, v3, v6, v5, v7);
    sub_1D8D0B37C(v12, v11, v14, v13, 0xFFu);
    sub_1D8D0B37C(v4, v3, v6, v5, v7);
    sub_1D8CFEACC(v4, v3, v6, v5, v7);
    goto LABEL_9;
  }

  v32.i64[0] = v12;
  v32.i64[1] = v11;
  *&v33 = v14;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v15;
  sub_1D8D0B37C(v4, v3, v6, v5, v7);
  sub_1D8D0B37C(v12, v11, v14, v13, v15);
  sub_1D8D0B37C(v4, v3, v6, v5, v7);
  v18 = static MediaIdentifier.== infix(_:_:)(&v37, &v32);
  sub_1D8CFEACC(v32.i64[0], v32.i64[1], v33, *(&v33 + 1), v34);
  sub_1D8CFEACC(v37.i64[0], v37.i64[1], v38, *(&v38 + 1), v39);
  sub_1D8CFF364(v4, v3, v6, v5, v7);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s18PodcastsFoundation14PlaybackIntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1F0, &qword_1D91B3668);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *&v99 = *a1;
  *(&v99 + 1) = v11;
  *&v100 = v12;
  *(&v100 + 1) = v13;
  LOBYTE(v101) = v14;
  v16 = *(a2 + 8);
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v19 = *(a2 + 32);
  *&v91 = *a2;
  v15 = v91;
  *(&v91 + 1) = v16;
  *&v92 = v18;
  *(&v92 + 1) = v17;
  LOBYTE(v93) = v19;
  sub_1D8D092C0(v99, v11, v12, v13, v14);
  sub_1D8D092C0(v15, v16, v18, v17, v19);
  LOBYTE(v17) = _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(&v99, &v91);
  sub_1D8CFEACC(v91, *(&v91 + 1), v92, *(&v92 + 1), v93);
  sub_1D8CFEACC(v99, *(&v99 + 1), v100, *(&v100 + 1), v101);
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  v20 = type metadata accessor for PlaybackIntent(0);
  v21 = v20[5];
  v22 = *(v8 + 48);
  sub_1D8D088B4(a1 + v21, v10, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D088B4(a2 + v21, &v10[v22], &qword_1ECAB9F70, qword_1D91B1680);
  v23 = v59;
  v24 = *(v58 + 48);
  v25 = a2;
  if (v24(v10, 1, v59) == 1)
  {
    if (v24(&v10[v22], 1, v23) == 1)
    {
      sub_1D8D08A50(v10, &qword_1ECAB9F70, qword_1D91B1680);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v26 = v57;
  sub_1D8D088B4(v10, v57, &qword_1ECAB9F70, qword_1D91B1680);
  if (v24(&v10[v22], 1, v23) == 1)
  {
    sub_1D90AA0F0(v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_7:
    sub_1D8D08A50(v10, &qword_1ECABA1F0, &qword_1D91B3668);
LABEL_15:
    v53 = 0;
    return v53 & 1;
  }

  v27 = &v10[v22];
  v28 = v56;
  sub_1D90AB210(v27, v56, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  v29 = static PodcastsMediaLibrary.MediaItem.== infix(_:_:)(v26, v28);
  sub_1D90AA0F0(v28, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  sub_1D90AA0F0(v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  sub_1D8D08A50(v10, &qword_1ECAB9F70, qword_1D91B1680);
  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v30 = a1 + v20[6];
  v31 = *(v30 + 64);
  v32 = *(v30 + 96);
  v81 = *(v30 + 80);
  v82 = v32;
  v33 = *(v30 + 96);
  v83[0] = *(v30 + 112);
  *(v83 + 13) = *(v30 + 125);
  v34 = *(v30 + 48);
  v35 = *(v30 + 16);
  v78 = *(v30 + 32);
  v79 = v34;
  v36 = *(v30 + 48);
  v80 = *(v30 + 64);
  v37 = *(v30 + 16);
  v77[0] = *v30;
  v77[1] = v37;
  v72 = v36;
  v73 = v31;
  v70 = v35;
  v71 = v78;
  *(v76 + 13) = *(v30 + 125);
  v38 = *(v30 + 112);
  v75 = v33;
  v76[0] = v38;
  v74 = v81;
  v69 = v77[0];
  v39 = v25 + v20[6];
  v40 = *(v39 + 96);
  v41 = *(v39 + 64);
  v88 = *(v39 + 80);
  v89 = v40;
  v42 = *(v39 + 96);
  v90[0] = *(v39 + 112);
  v43 = *(v39 + 16);
  v44 = *(v39 + 48);
  v85 = *(v39 + 32);
  v86 = v44;
  v45 = *(v39 + 48);
  v87 = *(v39 + 64);
  v46 = *(v39 + 16);
  v84[0] = *v39;
  v84[1] = v46;
  v47 = *(v39 + 112);
  v67 = v42;
  v68[0] = v47;
  v63 = v85;
  v64 = v45;
  v65 = v41;
  v66 = v88;
  *(v90 + 13) = *(v39 + 125);
  *(v68 + 13) = *(v39 + 125);
  v61 = v84[0];
  v62 = v43;
  sub_1D8CFEB60(v77, v60);
  sub_1D8CFEB60(v84, v60);
  v48 = _s18PodcastsFoundation14PlaybackIntentV7ContextV2eeoiySbAE_AEtFZ_0(&v69, &v61);
  v96 = v66;
  v97 = v67;
  v98[0] = v68[0];
  *(v98 + 13) = *(v68 + 13);
  v93 = v63;
  v94 = v64;
  v95 = v65;
  v91 = v61;
  v92 = v62;
  sub_1D8D0DB70(&v91);
  v104 = v74;
  v105 = v75;
  v106[0] = v76[0];
  *(v106 + 13) = *(v76 + 13);
  v101 = v71;
  v102 = v72;
  v103 = v73;
  v99 = v69;
  v100 = v70;
  sub_1D8D0DB70(&v99);
  if ((v48 & 1) == 0 || (sub_1D8F66674(*(a1 + v20[7]), *(v25 + v20[7])) & 1) == 0)
  {
    goto LABEL_15;
  }

  v49 = v20[8];
  v50 = *(a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (v25 + v49);
  if ((v50 != *v52 || v51 != v52[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v53 = *(a1 + v20[9]) ^ *(v25 + v20[9]) ^ 1;
  return v53 & 1;
}

unint64_t sub_1D90A9C58()
{
  result = qword_1ECAB2548;
  if (!qword_1ECAB2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2548);
  }

  return result;
}

unint64_t sub_1D90A9CAC()
{
  result = qword_1ECABA060;
  if (!qword_1ECABA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA060);
  }

  return result;
}

unint64_t sub_1D90A9D00()
{
  result = qword_1ECABA068;
  if (!qword_1ECABA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA068);
  }

  return result;
}

unint64_t sub_1D90A9D54()
{
  result = qword_1ECAB2500;
  if (!qword_1ECAB2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2500);
  }

  return result;
}

unint64_t sub_1D90A9DA8()
{
  result = qword_1ECAB2288;
  if (!qword_1ECAB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2288);
  }

  return result;
}

unint64_t sub_1D90A9DFC()
{
  result = qword_1ECAB1E58;
  if (!qword_1ECAB1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E58);
  }

  return result;
}

unint64_t sub_1D90A9E50()
{
  result = qword_1ECAB25E8;
  if (!qword_1ECAB25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25E8);
  }

  return result;
}

unint64_t sub_1D90A9EA4()
{
  result = qword_1ECAB24F8;
  if (!qword_1ECAB24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24F8);
  }

  return result;
}

unint64_t sub_1D90A9EF8()
{
  result = qword_1ECABA0E8;
  if (!qword_1ECABA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0E8);
  }

  return result;
}

unint64_t sub_1D90A9F4C()
{
  result = qword_1ECABA0F0;
  if (!qword_1ECABA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0F0);
  }

  return result;
}

unint64_t sub_1D90A9FA0()
{
  result = qword_1ECABA0F8;
  if (!qword_1ECABA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA0F8);
  }

  return result;
}

unint64_t sub_1D90A9FF4()
{
  result = qword_1ECABA100;
  if (!qword_1ECABA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA100);
  }

  return result;
}

unint64_t sub_1D90AA048()
{
  result = qword_1ECABA108;
  if (!qword_1ECABA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA108);
  }

  return result;
}

unint64_t sub_1D90AA09C()
{
  result = qword_1ECAB24E8;
  if (!qword_1ECAB24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24E8);
  }

  return result;
}

uint64_t sub_1D90AA0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90AA150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D90AA1C0()
{
  result = qword_1ECAB24C0;
  if (!qword_1ECAB24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24C0);
  }

  return result;
}

unint64_t sub_1D90AA214()
{
  result = qword_1ECAB2578;
  if (!qword_1ECAB2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2578);
  }

  return result;
}

unint64_t sub_1D90AA2DC()
{
  result = qword_1ECABA170;
  if (!qword_1ECABA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA170);
  }

  return result;
}

unint64_t sub_1D90AA334()
{
  result = qword_1ECABA178;
  if (!qword_1ECABA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA178);
  }

  return result;
}

unint64_t sub_1D90AA38C()
{
  result = qword_1ECABA180;
  if (!qword_1ECABA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA180);
  }

  return result;
}

__n128 __swift_memcpy133_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D90AA444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 133))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 128);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D90AA4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 133) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 133) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D90AA520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D90AA5B0(uint64_t a1)
{
  sub_1D8CEF9DC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1D90AA61C()
{
  result = qword_1ECABA198;
  if (!qword_1ECABA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA198);
  }

  return result;
}

unint64_t sub_1D90AA674()
{
  result = qword_1ECABA1A0;
  if (!qword_1ECABA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1A0);
  }

  return result;
}

unint64_t sub_1D90AA6CC()
{
  result = qword_1ECABA1A8;
  if (!qword_1ECABA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1A8);
  }

  return result;
}

unint64_t sub_1D90AA724()
{
  result = qword_1ECABA1B0;
  if (!qword_1ECABA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1B0);
  }

  return result;
}

unint64_t sub_1D90AA77C()
{
  result = qword_1ECABA1B8;
  if (!qword_1ECABA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1B8);
  }

  return result;
}

unint64_t sub_1D90AA7D4()
{
  result = qword_1ECABA1C0;
  if (!qword_1ECABA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1C0);
  }

  return result;
}

unint64_t sub_1D90AA82C()
{
  result = qword_1ECABA1C8;
  if (!qword_1ECABA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA1C8);
  }

  return result;
}

unint64_t sub_1D90AA884()
{
  result = qword_1ECAB25D8;
  if (!qword_1ECAB25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25D8);
  }

  return result;
}

unint64_t sub_1D90AA8DC()
{
  result = qword_1ECAB25E0;
  if (!qword_1ECAB25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25E0);
  }

  return result;
}

uint64_t sub_1D90AA930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7478654E7075 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657551664F646E65 && a2 == 0xEA00000000006575 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C507472616D73 && a2 == 0xE900000000000079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90AAAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D5400 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D90AABBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C507472617473 && a2 == 0xED00006B63616279;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D91D5420 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x51746E6576657270 && a2 == 0xEF676E6965756575 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5440 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D91D5460 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEF746E756F636341 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEE00656372756F53)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D90AAE2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C616974696E69 && a2 == 0xEB000000006D6574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5480 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766C6F7365527369 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D90AB034()
{
  result = qword_1ECAB24F0;
  if (!qword_1ECAB24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24F0);
  }

  return result;
}

uint64_t sub_1D90AB088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D90AB0F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_1D8F95794(a3, a4);
}

uint64_t sub_1D90AB210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90AB278()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D90A0F90(v5, v6, v7, v0 + v2, v8);
}

uint64_t sub_1D90AB358(uint64_t a1, uint64_t a2)
{

  return sub_1D8DD4394(a1, a2);
}

uint64_t sub_1D90AB3B0()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1ECAAFD28 = result;
  return result;
}

id static NSNotificationName.pfPerShowSettingsChanged.getter()
{
  if (qword_1ECAAFD20 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFD28;

  return v1;
}

uint64_t Notification.pfPerShowSettingData.getter@<X0>(void *a1@<X8>)
{
  result = sub_1D917669C();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  sub_1D91793EC();
  if (!*(v3 + 16) || (v4 = sub_1D8D6550C(v6), (v5 & 1) == 0))
  {

    result = sub_1D8D9A308(v6);
    goto LABEL_7;
  }

  sub_1D8CFAD1C(*(v3 + 56) + 32 * v4, v7);
  sub_1D8D9A308(v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t PerShowSettingNotificationData.uuid.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void PerShowSettingNotificationData.playbackRate.getter()
{
  if (*(v0 + 4) == 2)
  {
    type metadata accessor for PodcastsPlaybackSettingsHelper();
    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECAB1990;
    sub_1D90AB800(0, v1);
  }
}

unint64_t PerShowSettingNotificationData.enhanceDialogueEnabled.getter()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  if ((v1 & 0xFF00000000) != 0x200000000)
  {
    return HIDWORD(v1) & 1;
  }

  v2 = type metadata accessor for PodcastsPlaybackSettingsHelper();
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1990;
  v4 = sub_1D90ABB94(0, 0, v3, v2);

  return v4 & 1;
}

uint64_t PerShowSettingNotificationData.pafPlaybackSettingSource.getter()
{
  if (*(v0 + 4) << 32 == 0x200000000)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

void sub_1D90AB6FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uuid];
  if (!v4)
  {

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [a1 advancedPlaybackSettings];
  if (v9)
  {
    v10 = v9;
    if ([v9 hasCustomSettings])
    {
      [v10 playbackRate];
      v12 = v11;
      v13 = [v10 enhanceDialogueEnabled];

      v14 = 0x100000000;
      if (!v13)
      {
        v14 = 0;
      }

      v15 = v14 | LODWORD(v12);
      goto LABEL_10;
    }
  }

  v15 = 0x200000000;
LABEL_10:
  *a2 = v15;
  a2[1] = v6;
  a2[2] = v8;
}

float sub_1D90AB800(void *a1, id a2)
{
  if (!a1)
  {
    [a2 playbackRateGlobalValue];
    v20 = v19;
    v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v19);
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v22 = sub_1D9178CDC();
    if (os_log_type_enabled(v7, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315650;
      nullsub_1();
      v25 = sub_1D9179FEC();
      v27 = sub_1D8CFA924(v25, v26, &v30);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v20;
      *(v23 + 22) = 2048;
      *(v23 + 24) = v4;
      _os_log_impl(&dword_1D8CEC000, v7, v22, "[%s] No podcast provided, will use global value %f, clamped to %f", v23, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);

      return v4;
    }

LABEL_12:

    return v4;
  }

  v2 = a1;
  sub_1D90B2210();
  v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v3);
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0D98);
  v6 = v2;
  v7 = sub_1D917741C();
  v8 = sub_1D9178CDC();

  if (!os_log_type_enabled(v7, v8))
  {

    goto LABEL_12;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v30 = v10;
  *v9 = 136315907;
  nullsub_1();
  v11 = sub_1D9179FEC();
  v13 = sub_1D8CFA924(v11, v12, &v30);

  *(v9 + 4) = v13;
  *(v9 + 12) = 2048;
  *(v9 + 14) = v4;
  *(v9 + 22) = 2160;
  *(v9 + 24) = 1752392040;
  *(v9 + 32) = 2081;
  v14 = [v6 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D917820C();
    v18 = v17;
  }

  else
  {
    v18 = 0xEA00000000002965;
    v16 = 0x6C746974206F6E28;
  }

  v28 = sub_1D8CFA924(v16, v18, &v30);

  *(v9 + 34) = v28;
  _os_log_impl(&dword_1D8CEC000, v7, v8, "[%s] Retrieved resolved playback rate %f for podcast: %{private,mask.hash}s]", v9, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1DA72CB90](v10, -1, -1);
  MEMORY[0x1DA72CB90](v9, -1, -1);

  return v4;
}

uint64_t sub_1D90ABB94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1D90ABE3C(a1, a2, a3, a4);
  v6 = sub_1D90B3824(v5);

  if (v6 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      nullsub_1();
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] No valid enhance dialogue enabled setting found when retrieving for uuid, will use global value", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v6 = [a3 enhanceDialogueEnabledGlobalValue];
  }

  return v6 & 1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PerShowSettingNotificationData.PlayerSetting(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PerShowSettingNotificationData.PlayerSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D90ABDE8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90ABE04(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 4) = a2 + 1;
  }

  return result;
}

unint64_t sub_1D90ABE3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && [objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v24[2] = v9;
    v24[3] = a1;
    v24[4] = a2;
    v24[5] = a4;
    v24[6] = a4;
    v11 = sub_1D90ACF98(sub_1D90AC11C, v24);

    return v11;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CDC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315650;
      nullsub_1();
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v21 = 0x6C696E2D6E6F6ELL;
      }

      else
      {
        v21 = 7104878;
      }

      if (a2)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_1D8CFA924(v21, v22, &v25);

      *(v16 + 14) = v23;
      *(v16 + 22) = 1024;
      *(v16 + 24) = [objc_opt_self() supportsLocalLibrary];
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will retrieve global settings", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return sub_1D90B52F0(a3);
  }
}

void sub_1D90AC134()
{
  v2[3] = &type metadata for Podcasts;
  v2[4] = sub_1D8CF0F2C();
  LOBYTE(v2[0]) = 39;
  v0 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v0)
  {
    v1 = &unk_1F545D2B8;
  }

  else
  {
    if (qword_1ECAB1FE8 != -1)
    {
      swift_once();
    }
  }

  off_1ECAB1FD8 = v1;
}

uint64_t sub_1D90AC200()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if (v0)
  {
    if (qword_1ECAB1FD0 != -1)
    {
      result = swift_once();
    }

    v2 = off_1ECAB1FD8;
    if (*(off_1ECAB1FD8 + 2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (qword_1ECAB1FE8 != -1)
  {
    result = swift_once();
  }

  v2 = off_1ECAB1FF0;
  if (*(off_1ECAB1FF0 + 2))
  {
LABEL_9:
    dword_1ECAB1FC0 = v2[8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AC310()
{
  v4[3] = &type metadata for Podcasts;
  v4[4] = sub_1D8CF0F2C();
  LOBYTE(v4[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if (v0)
  {
    if (qword_1ECAB1FD0 != -1)
    {
      result = swift_once();
    }

    v2 = off_1ECAB1FD8;
    v3 = *(off_1ECAB1FD8 + 2);
    if (v3)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (qword_1ECAB1FE8 != -1)
  {
    result = swift_once();
  }

  v2 = off_1ECAB1FF0;
  v3 = *(off_1ECAB1FF0 + 2);
  if (v3)
  {
LABEL_9:
    dword_1ECAB1FAC = v2[v3 + 7];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AC424()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v2 = 0.1;
  if ((v0 & 1) == 0)
  {
    v2 = 0.25;
  }

  dword_1ECABA200 = LODWORD(v2);
  return result;
}

float sub_1D90AC4BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t static PlaybackRateHelper.localizedWithX(_:alwaysShowTenthsDigit:)(char a1, float a2)
{
  if (a1)
  {
    if (qword_1ECAB36F8 != -1)
    {
      swift_once();
    }

    v3 = qword_1ECABA208;
    v4 = sub_1D9178A6C();
    v5 = [v3 stringForObjectValue_];

    if (v5)
    {
      v6 = sub_1D917820C();
      v8 = v7;
    }

    else
    {
      sub_1D90ACC64();
      v6 = sub_1D917801C();
      v8 = v10;
    }

    v11 = [objc_opt_self() mainBundle];
    sub_1D917693C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9189080;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D8D34978();
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    v13 = sub_1D91781DC();

    return v13;
  }

  else
  {

    return _s18PodcastsFoundation18PlaybackRateHelperC14localizedWithXySSSfFZ_0(a2);
  }
}

uint64_t static PlaybackRateHelper.localizedPlain(_:)(float a1)
{
  if (qword_1ECAAFDC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFDC8;
  v2 = sub_1D9178A6C();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1D917820C();

    return v4;
  }

  else
  {
    sub_1D90ACC64();
    return sub_1D917801C();
  }
}

id PlaybackRateHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackRateHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlaybackRateHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D90AC8EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  result = [v5 setNumberStyle_];
  *a3 = v5;
  return result;
}

float _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(float a1)
{
  if (qword_1ECAB1FB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *&dword_1ECAB1FC0;
  if (qword_1ECAB1FA0 == -1)
  {
    if (*&dword_1ECAB1FC0 >= a1)
    {
      return v1;
    }
  }

  else
  {
    v8 = a1;
    swift_once();
    a1 = v8;
    if (v1 >= v8)
    {
      return v1;
    }
  }

  v2 = dword_1ECAB1FAC;
  if (qword_1ECAB1FD0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = *(off_1ECAB1FD8 + 2);
  v4 = (off_1ECAB1FD8 + 32);
  while (v3)
  {
    v5 = *v4++;
    v1 = v5;
    --v3;
    if (v5 >= a1)
    {
      return v1;
    }
  }

  return *&v2;
}

uint64_t _s18PodcastsFoundation18PlaybackRateHelperC14localizedWithXySSSfFZ_0(float a1)
{
  if (qword_1ECAAFDC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAAFDC8;
  v2 = sub_1D9178A6C();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    sub_1D90ACC64();
    v4 = sub_1D917801C();
    v6 = v7;
  }

  v8 = [objc_opt_self() mainBundle];
  sub_1D917693C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9189080;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D8D34978();
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  v10 = sub_1D91781DC();

  return v10;
}

unint64_t sub_1D90ACC64()
{
  result = qword_1ECABA210;
  if (!qword_1ECABA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA210);
  }

  return result;
}

uint64_t sub_1D90ACCB8(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C0C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_47_0;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90ACE28(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_57_1;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90ACF98(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1C74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_27_2;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90AD108(uint64_t a1, uint64_t a2)
{
  v12 = 2;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D90B1B74;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_37_1;
  v7 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12 != 2)
    {

      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

id sub_1D90AD280()
{
  result = [objc_opt_self() defaultCenter];
  qword_1ECABA218 = result;
  return result;
}

uint64_t sub_1D90AD2BC()
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v0 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  result = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  dword_1ECABA220 = LODWORD(v0);
  byte_1ECABA224 = result & 1;
  return result;
}

void sub_1D90AD33C()
{
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1ECAB0D98);
  oslog = sub_1D917741C();
  v1 = sub_1D9178D1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315650;
    v4 = sub_1D9179FEC();
    v6 = sub_1D8CFA924(v4, v5, &v8);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    if (qword_1ECAB3708 != -1)
    {
      swift_once();
    }

    *(v2 + 14) = *&dword_1ECABA220;
    *(v2 + 22) = 1024;
    *(v2 + 24) = byte_1ECABA224;
    _os_log_impl(&dword_1D8CEC000, oslog, v1, "[%s] Took snapshot of global playback settings. Playback rate: %f, Enhance Dialogue enabled: %{BOOL}d", v2, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1DA72CB90](v3, -1, -1);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

void static PlayerPerShowSettingsHelper.takeGlobalSnapshot()()
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v0 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  v1 = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  if (qword_1ECAB3708 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  dword_1ECABA220 = LODWORD(v0);
  byte_1ECABA224 = v1 & 1;

  sub_1D90AD33C();
}

void sub_1D90AD5E4(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v10 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (v10)
  {
    v11 = v10;
    oslog = a2;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1ECAB0D98);
    v13 = v11;
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();

    v16 = &selRef_setParent_;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v91[0] = v19;
      *v17 = 136316163;
      v20 = sub_1D9179FEC();
      v22 = sub_1D8CFA924(v20, v21, v91);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v23 = [v13 title];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D917820C();
        v27 = v26;
      }

      else
      {
        v25 = 0x6C746974206F6E28;
        v27 = 0xEA00000000002965;
      }

      v38 = sub_1D8CFA924(v25, v27, v91);

      *(v17 + 34) = v38;
      *(v17 + 42) = 2112;
      v16 = &selRef_setParent_;
      v39 = [v13 advancedPlaybackSettings];
      *(v17 + 44) = v39;
      *v18 = v39;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] [%s] Attempting to save custom show settings for podcast: %{private,mask.hash}s. Current custom playback settings: %@", v17, 0x34u);
      sub_1D8D08A50(v18, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v40 = [v13 v16[172]];
    v41 = qword_1ECAB0FE8 + 24;
    if (v40)
    {
      v42 = v40;
      if (qword_1ECAB0C18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v12, qword_1ECAB0C20);
      v43 = sub_1D917741C();
      v44 = sub_1D9178CEC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v91[0] = v46;
        *v45 = 136315394;
        v47 = sub_1D9179FEC();
        v49 = sub_1D8CFA924(v47, v48, v91);
        v41 = &qword_1ECAB0FE8[3];

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
        _os_log_impl(&dword_1D8CEC000, v43, v44, "[%s] [%s] advancedPlaybackSettings already existed, modifying existing record", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v46, -1, -1);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      v50 = oslog;
      [v42 setHasCustomSettings_];
      if (v41[305] != -1)
      {
        swift_once();
      }

      [v42 setPlaybackRate_];
      [v42 setEnhanceDialogueEnabled_];
      [v42 setSettingsAdjustedCount_];
    }

    else
    {
      if (qword_1ECAB0C18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v12, qword_1ECAB0C20);
      v51 = sub_1D917741C();
      v52 = sub_1D9178CEC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v91[0] = v54;
        *v53 = 136315394;
        v55 = sub_1D9179FEC();
        v57 = sub_1D8CFA924(v55, v56, v91);
        v41 = &qword_1ECAB0FE8[3];

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
        _os_log_impl(&dword_1D8CEC000, v51, v52, "[%s] [%s] advancedPlaybackSettings did not already exist, inserting new record", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v54, -1, -1);
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      v50 = oslog;
      v58 = objc_opt_self();
      if (v41[305] != -1)
      {
        swift_once();
      }

      v59 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      v42 = [v58 insertNewAdvancedPlaybackSettingsOnPodcast:v13 hasCustomSettings:1 playbackRate:PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1 enhanceDialogueEnabled:v59];
    }

    [v50 saveInCurrentBlock];
    osloga = v13;
    v60 = sub_1D917741C();
    v61 = sub_1D9178D1C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = 0x6C746974206F6E28;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v91[0] = v65;
      *v63 = 136316163;
      v66 = sub_1D9179FEC();
      v68 = sub_1D8CFA924(v66, v67, v91);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
      *(v63 + 22) = 2160;
      *(v63 + 24) = 1752392040;
      *(v63 + 32) = 2081;
      v69 = [osloga title];
      if (v69)
      {
        v70 = v69;
        v62 = sub_1D917820C();
        v72 = v71;
      }

      else
      {
        v72 = 0xEA00000000002965;
      }

      v73 = sub_1D8CFA924(v62, v72, v91);

      *(v63 + 34) = v73;
      *(v63 + 42) = 2112;
      v74 = [osloga advancedPlaybackSettings];
      *(v63 + 44) = v74;
      *v64 = v74;
      _os_log_impl(&dword_1D8CEC000, v60, v61, "[%s] [%s] Saved custom show settings for podcast: %{private,mask.hash}s. Current custom playback settings: %@", v63, 0x34u);
      sub_1D8D08A50(v64, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v64, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v65, -1, -1);
      MEMORY[0x1DA72CB90](v63, -1, -1);

      v41 = qword_1ECAB0FE8 + 24;
    }

    else
    {
    }

    static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(osloga);
    v75 = sub_1D917741C();
    v76 = sub_1D9178D1C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v91[0] = v78;
      *v77 = 136315906;
      v79 = sub_1D9179FEC();
      v81 = sub_1D8CFA924(v79, v80, v91);

      *(v77 + 4) = v81;
      v41 = &qword_1ECAB0FE8[3];
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
      *(v77 + 22) = 2048;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v77 + 24) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      *(v77 + 32) = 1024;
      *(v77 + 34) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v75, v76, "[%s] [%s] Attempting to restore global playback settings from snapshot. Current global playback settings, playback rate: %f, enhanced dialogue enabled: %{BOOL}d", v77, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v78, -1, -1);
      MEMORY[0x1DA72CB90](v77, -1, -1);
    }

    if (v41[305] != -1)
    {
      swift_once();
    }

    if (qword_1ECAB3708 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.setter(*&dword_1ECABA220);
    PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(byte_1ECABA224);
    v82 = sub_1D917741C();
    v83 = sub_1D9178D1C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v91[0] = v85;
      *v84 = 136315906;
      v86 = sub_1D9179FEC();
      v88 = sub_1D8CFA924(v86, v87, v91);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, v91);
      *(v84 + 22) = 2048;
      *(v84 + 24) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      *(v84 + 32) = 1024;
      *(v84 + 34) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v82, v83, "[%s] [%s] Restored global playback settings from snapshot. Current global playback settings, playback rate: %f, enhanced dialogue enabled: %{BOOL}d", v84, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v85, -1, -1);
      MEMORY[0x1DA72CB90](v84, -1, -1);

      goto LABEL_44;
    }
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, v6);
    osloga = sub_1D917741C();
    v29 = sub_1D9178CFC();
    sub_1D8FE1298(a3, a4, v6);
    if (os_log_type_enabled(osloga, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v93 = v31;
      *v30 = 136315650;
      v32 = sub_1D9179FEC();
      v34 = sub_1D8CFA924(v32, v33, &v93);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56F0, &v93);
      *(v30 + 22) = 2080;
      v91[0] = a3;
      v91[1] = a4;
      v92 = v6;
      sub_1D8FE1240(a3, a4, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v35 = sub_1D917826C();
      v37 = sub_1D8CFA924(v35, v36, &v93);

      *(v30 + 24) = v37;
      _os_log_impl(&dword_1D8CEC000, osloga, v29, "[%s] [%s] Failed to find podcast for contentID: %s, did not set custom show settings", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      goto LABEL_44;
    }
  }

LABEL_44:
}

id sub_1D90AE3E4(void *a1, void *a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      sub_1D8D5055C(a2, a3, 2);
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0D98);
      sub_1D8D5055C(a2, a3, 2);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CDC();
      sub_1D8FE1298(a2, a3, 2);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v49 = v18;
        *v17 = 136315394;
        v19 = sub_1D9179FEC();
        v21 = sub_1D8CFA924(v19, v20, &v49);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1D8CFA924(a2, a3, &v49);
        _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] Trying to find podcast with UUID %s.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v23 = [a1 podcastForUuid_];

      if (v23)
      {
        sub_1D8FE1298(a2, a3, 2);
        return v23;
      }

      sub_1D8D5055C(a2, a3, 2);
      v38 = sub_1D917741C();
      v39 = sub_1D9178D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v49 = v41;
        *v40 = 136315394;
        v42 = sub_1D9179FEC();
        v44 = sub_1D8CFA924(v42, v43, &v49);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = a3;
        v46 = sub_1D8CFA924(a2, a3, &v49);
        sub_1D8FE1298(a2, a3, 2);
        *(v40 + 14) = v46;
        _os_log_impl(&dword_1D8CEC000, v38, v39, "[%s] Failed to find podcast with UUID: %s.", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v41, -1, -1);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      else
      {

        v45 = a3;
        sub_1D8FE1298(a2, a3, 2);
      }

      sub_1D8FE1298(a2, v45, 2);
      return 0;
    }

    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (!os_log_type_enabled(v7, v34))
    {
LABEL_24:

      return 0;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315394;
    v35 = sub_1D9179FEC();
    v37 = sub_1D8CFA924(v35, v36, &v49);

    *(v9 + 4) = v37;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D8CFA924(0xD00000000000001ELL, 0x80000001D91D5670, &v49);
    _os_log_impl(&dword_1D8CEC000, v7, v34, "[%s] [%s] Cannot get podcast since no ContentID was provided.", v9, 0x16u);
    swift_arrayDestroy();
LABEL_23:
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    goto LABEL_24;
  }

  if (!a4)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = sub_1D9179FEC();
    v13 = sub_1D8CFA924(v11, v12, &v49);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "[%s] Fetching podcast by adam id is unexpected.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    goto LABEL_23;
  }

  sub_1D8D5055C(a2, a3, 1);
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1ECAB0D98);
  v26 = sub_1D917741C();
  v27 = sub_1D9178CDC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315138;
    v30 = sub_1D9179FEC();
    v32 = sub_1D8CFA924(v30, v31, &v49);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "[%s] Trying to find podcast with managed object ID.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v47 = NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(a2, 0, 1, MEMORY[0x1E69E7CC0]);
  sub_1D8FE1298(a2, a3, 1);
  return v47;
}

void static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  sub_1D90AB6FC(a1, &v31);
  v7 = v33;
  if (v33)
  {
    v9 = v31;
    v8 = v32;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1ECAB0D98);

    v11 = sub_1D917741C();
    v12 = sub_1D9178D1C();

    v13 = HIDWORD(v9);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      v29 = v9;
      v9 = v14;
      v15 = swift_slowAlloc();
      v28 = v13;
      v13 = v15;
      v30 = v15;
      *v9 = 136315394;
      v16 = sub_1D9179FEC();
      v18 = sub_1D8CFA924(v16, v17, &v30);

      *(v9 + 4) = v18;
      *(v9 + 12) = 2080;
      BYTE4(v31) = v28;
      LODWORD(v31) = v29;
      v32 = v8;
      v33 = v7;

      v19 = sub_1D917826C();
      v21 = sub_1D8CFA924(v19, v20, &v30);

      *(v9 + 14) = v21;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "[%s] Sending notification for per show settings: %s.", v9, 0x16u);
      swift_arrayDestroy();
      v22 = v13;
      LOBYTE(v13) = v28;
      MEMORY[0x1DA72CB90](v22, -1, -1);
      v23 = v9;
      LODWORD(v9) = v29;
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    v24 = sub_1D917886C();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    sub_1D91787EC();
    v25 = sub_1D91787DC();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v2;
    *(v26 + 44) = v13;
    *(v26 + 40) = v9;
    *(v26 + 48) = v8;
    *(v26 + 56) = v7;
    sub_1D8E91268(0, 0, v6, &unk_1D91B37C0, v26);
  }
}

void sub_1D90AEFAC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 playbackContext];

  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = v6;
  v17[4] = a5;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = a6;
  v15 = _Block_copy(v17);
  v16 = v13;
  sub_1D8FE1240(a1, a2, a3);

  [v16 performBlock_];
  _Block_release(v15);
}

void sub_1D90AF0F8(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 advancedPlaybackSettings];
    if (v12)
    {
      v13 = v12;
      [v12 setHasCustomSettings_];
    }

    [a2 saveInCurrentBlock];
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0D98);
    v38 = v11;
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39[0] = v18;
      *v17 = 136315907;
      v19 = sub_1D9179FEC();
      v21 = sub_1D8CFA924(v19, v20, v39);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56C0, v39);
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v22 = [v38 title];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D917820C();
        v26 = v25;
      }

      else
      {
        v26 = 0xEA00000000002965;
        v24 = 0x6C746974206F6E28;
      }

      v37 = sub_1D8CFA924(v24, v26, v39);

      *(v17 + 34) = v37;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] [%s] Set podcast: %{private,mask.hash}s to global settings", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(v38);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, a5);
    v38 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    sub_1D8FE1298(a3, a4, a5);
    if (os_log_type_enabled(v38, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315650;
      v31 = sub_1D9179FEC();
      v33 = sub_1D8CFA924(v31, v32, &v41);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56C0, &v41);
      *(v29 + 22) = 2080;
      v39[0] = a3;
      v39[1] = a4;
      v40 = a5;
      sub_1D8FE1240(a3, a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v34 = sub_1D917826C();
      v36 = sub_1D8CFA924(v34, v35, &v41);

      *(v29 + 24) = v36;
      _os_log_impl(&dword_1D8CEC000, v38, v28, "[%s] [%s] Failed to find podcast for contentID: %s, did not reset show settings", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);

      return;
    }
  }
}

void static PlayerPerShowSettingsHelper.saveSettingsAdjustedCount(_:contentID:)(int a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 mainQueueContext];

    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v11;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a4;
    *(v12 + 52) = a1;
    *(v12 + 56) = v5;
    aBlock[4] = sub_1D90B1AB0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_16_0;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    sub_1D8FE1240(a2, a3, a4);

    [v14 performBlockAndWaitWithSave_];
    _Block_release(v13);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0D98);
    oslog = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_1D9179FEC();
      v21 = sub_1D8CFA924(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D8CEC000, oslog, v16, "[%s] Custom settings are not supported on this device. Skipping save operation.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1D90AF85C(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (!v11)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, a5);
    oslog = sub_1D917741C();
    v23 = sub_1D9178D1C();
    sub_1D8FE1298(a3, a4, a5);
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315650;
      v26 = sub_1D9179FEC();
      v28 = sub_1D8CFA924(v26, v27, &v37);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1D8CFA924(0xD000000000000027, 0x80000001D91D5690, &v37);
      *(v24 + 22) = 2080;
      v35[0] = a3;
      v35[1] = a4;
      v36 = a5;
      sub_1D8FE1240(a3, a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v29 = sub_1D917826C();
      v31 = sub_1D8CFA924(v29, v30, &v37);

      *(v24 + 24) = v31;
      _os_log_impl(&dword_1D8CEC000, oslog, v23, "[%s] [%s] No podcast found for contentID: %s. Skipping save operation.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);

      return;
    }

    goto LABEL_15;
  }

  oslog = v11;
  v12 = [v11 advancedPlaybackSettings];
  if (!v12)
  {
    sub_1D90AFC9C(oslog, a6);
LABEL_15:
    v32 = oslog;
    goto LABEL_18;
  }

  v33 = v12;
  if (sub_1D90B04E4(oslog, v12))
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136315650;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, v35);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D8CFA924(0xD000000000000027, 0x80000001D91D5690, v35);
      *(v16 + 22) = 1024;
      *(v16 + 24) = a6;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] [%s] Updating settings adjusted count to %d", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v21 = [v33 settingsAdjustedCount];
    if (__OFADD__(v21, a6))
    {
      __break(1u);
      return;
    }

    [v33 setSettingsAdjustedCount:v21 + a6];
  }

  else
  {
    sub_1D90B00B8(oslog, v33);
  }

  v32 = v33;
LABEL_18:
}

void sub_1D90AFC9C(void *a1, uint64_t a2)
{
  v4 = a1;
  PodcastStateModel.init(podcast:)(a1, v27);
  if (v28)
  {
    v5 = v29 | (v30 << 16);
    sub_1D90B1ADC(v27[0], v27[1], v27[2], v27[3], v28);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 0x10000) == 0 && (v5 & 1) == 0)
      {

LABEL_10:
        if (qword_1ECAB0D90 != -1)
        {
          swift_once();
        }

        v7 = sub_1D917744C();
        __swift_project_value_buffer(v7, qword_1ECAB0D98);
        v8 = sub_1D917741C();
        v9 = sub_1D9178D1C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v27[0] = v11;
          *v10 = 136315394;
          v12 = sub_1D9179FEC();
          v14 = sub_1D8CFA924(v12, v13, v27);

          *(v10 + 4) = v14;
          *(v10 + 12) = 1024;
          *(v10 + 14) = a2;
          _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] Creating MTAdvancedPlaybackSettings with setting adjusted count = %d", v10, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          MEMORY[0x1DA72CB90](v11, -1, -1);
          MEMORY[0x1DA72CB90](v10, -1, -1);
        }

        v15 = [objc_opt_self() insertNewAdvancedPlaybackSettingsOnPodcast:v4 settingsAdjustedCount:a2];
        goto LABEL_20;
      }
    }

    else if ((v5 & 0x10000) == 0 || (v5 & 1) == 0)
    {
      v6 = sub_1D9179ACC();

      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1ECAB0D98);
  v26 = v4;
  oslog = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315650;
    v20 = sub_1D9179FEC();
    v22 = sub_1D8CFA924(v20, v21, v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    v23 = [v26 subscribed];

    *(v18 + 14) = v23;
    *(v18 + 18) = 1024;
    v24 = [v26 hidden];

    *(v18 + 20) = v24;
    _os_log_impl(&dword_1D8CEC000, oslog, v17, "[%s] Not eligible to set settings adjusted count. Subscribed: %{BOOL}d, hidden: %{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    v15 = oslog;
  }

  else
  {

    v15 = v26;
  }

LABEL_20:
}

id sub_1D90B00B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v40 - v7;
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  v10 = __swift_project_value_buffer(v9, qword_1ECAB0D98);
  v11 = a1;
  v12 = a2;
  v13 = v11;
  v14 = v12;
  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v40[1] = v10;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136316162;
    v40[2] = v3;
    v41 = v18;
    v19 = sub_1D9179FEC();
    v21 = sub_1D8CFA924(v19, v20, &v41);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v14 tipLastShownDate];
    if (v22)
    {
      v23 = v22;
      sub_1D9176DFC();

      v24 = sub_1D9176E3C();
      (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    }

    else
    {
      v25 = sub_1D9176E3C();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
    }

    v26 = sub_1D917826C();
    v28 = sub_1D8CFA924(v26, v27, &v41);

    *(v17 + 14) = v28;
    *(v17 + 22) = 1024;
    v29 = [v14 hasCustomSettings];

    *(v17 + 24) = v29;
    *(v17 + 28) = 1024;
    v30 = [v13 subscribed];

    *(v17 + 30) = v30;
    *(v17 + 34) = 1024;
    v31 = [v13 hidden];

    *(v17 + 36) = v31;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] Not eligible anymore to set settings adjusted count. Tip last shown date: %s, hasCustomSettings: %{BOOL}d, subscribed: %{BOOL}d, hidden: %{BOOL}d", v17, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v18, -1, -1);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  else
  {
  }

  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    v36 = sub_1D9179FEC();
    v38 = sub_1D8CFA924(v36, v37, &v41);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D8CEC000, v32, v33, "[%s] Wiping stale settings adjusted count, setting settings adjusted count = 0.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1DA72CB90](v35, -1, -1);
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  return [v14 setSettingsAdjustedCount_];
}

uint64_t sub_1D90B04E4(void *a1, void *a2)
{
  v88 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74 - v6;
  v8 = sub_1D9176E3C();
  v78 = *(v8 - 8);
  v87 = v78;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  v14 = sub_1D9176FDC();
  v81 = *(v14 - 1);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D91768DC();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v74 - v19;
  v77 = v2;
  LODWORD(v75) = static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(a1);
  sub_1D9176F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72F0, qword_1D9196C50);
  v20 = sub_1D9176FBC();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D9189080;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E6969A48], v20);
  sub_1D8FB208C(v23);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  v24 = [v88 tipLastShownDate];
  if (v24)
  {
    v25 = v24;
    sub_1D9176DFC();

    v26 = v87;
    v27 = *(v87 + 32);
    v27(v7, v10, v8);
    v76 = *(v26 + 56);
    v76(v7, 0, 1, v8);
    v27(v13, v7, v8);
    v28 = v8;
    v29 = v26;
    v30 = v10;
  }

  else
  {
    v30 = v10;
    v31 = v87;
    v76 = *(v87 + 56);
    v76(v7, 1, 1, v8);
    sub_1D9176CEC();
    v32 = (*(v31 + 48))(v7, 1, v8);
    v28 = v8;
    v29 = v31;
    if (v32 != 1)
    {
      sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  v33 = v86;
  v34 = v83;
  sub_1D9176E0C();
  v35 = v85;
  sub_1D9176F5C();

  v38 = *(v29 + 8);
  v36 = v29 + 8;
  v37 = v38;
  v38(v30, v28);
  v38(v13, v28);
  (*(v81 + 1))(v16, v82);
  v39 = sub_1D917685C();
  if (v40)
  {
    v83 = v28;
    v41 = v84;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1ECAB0D98);
    (*(v41 + 16))(v34, v35, v33);
    v43 = v88;
    v44 = sub_1D917741C();
    v45 = sub_1D9178CFC();

    LODWORD(v82) = v45;
    v46 = os_log_type_enabled(v44, v45);
    v88 = v43;
    if (v46)
    {
      v75 = v44;
      v81 = v30;
      v87 = v36;
      v47 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v89 = v74;
      *v47 = 136315650;
      v48 = sub_1D9179FEC();
      v50 = v33;
      v51 = sub_1D8CFA924(v48, v49, &v89);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      sub_1D90B1BB4(v52);
      v53 = sub_1D9179A4C();
      v55 = v54;
      v56 = v34;
      v57 = *(v41 + 8);
      v57(v56, v50);
      v58 = sub_1D8CFA924(v53, v55, &v89);

      *(v47 + 14) = v58;
      *(v47 + 22) = 2080;
      v59 = [v43 tipLastShownDate];
      v60 = v83;
      if (v59)
      {
        v61 = v79;
        v62 = v59;
        sub_1D9176DFC();

        v63 = 0;
      }

      else
      {
        v63 = 1;
        v61 = v79;
      }

      v76(v61, v63, 1, v60);
      v68 = sub_1D917826C();
      v70 = sub_1D8CFA924(v68, v69, &v89);

      *(v47 + 24) = v70;
      v71 = v75;
      _os_log_impl(&dword_1D8CEC000, v75, v82, "[%s] Failed to get number of days from tip durationSinceTipLastShown = %s, advancedPlaybackSettings.tipLastShownDate = %s. Will reset tipLastShownDate to today", v47, 0x20u);
      v72 = v74;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v72, -1, -1);
      MEMORY[0x1DA72CB90](v47, -1, -1);

      v33 = v86;
      v30 = v81;
      v35 = v85;
    }

    else
    {

      v67 = v34;
      v57 = *(v41 + 8);
      v57(v67, v33);
      v60 = v83;
    }

    sub_1D9176E0C();
    v73 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v37(v30, v60);
    [v88 setTipLastShownDate_];

    v57(v35, v33);
  }

  else
  {
    v64 = v39;
    v65 = [v88 hasCustomSettings];
    (*(v84 + 8))(v35, v33);
    if ((v65 & 1) == 0)
    {
      return v75 & (v64 > 30);
    }
  }

  return 0;
}

id static PlayerPerShowSettingsHelper.shouldShowCustomSettingsPlayerPrompt(_:)(void *a1)
{
  result = [a1 advancedPlaybackSettings];
  if (result)
  {
    v3 = result;
    if (sub_1D90B04E4(a1, result))
    {
      v4 = [v3 settingsAdjustedCount];

      return (v4 > 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static PlayerPerShowSettingsHelper.isCustomSettingsSupported(contentID:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v21[2] = v4;
    v21[3] = v9;
    v21[4] = a1;
    v21[5] = a2;
    v22 = a3;
    v23 = v4;
    v11 = sub_1D90AD108(sub_1D90B1AC8, v21);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1ECAB0D98);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      v17 = sub_1D9179FEC();
      v19 = sub_1D8CFA924(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D8CFA924(0xD000000000000025, 0x80000001D91D55D0, &v24);
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[%s] [%s] Custom settings are not supported on this device.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v11 = 0;
  }

  return v11 & 1;
}

void sub_1D90B1030(void *a1@<X1>, void *a2@<X2>, unint64_t a3@<X3>, char a4@<W4>, _BYTE *a6@<X8>)
{
  v10 = sub_1D90AE3E4(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    v12 = static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(v10);

    v13 = v12 & 1;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0D98);
    sub_1D8FE1240(a2, a3, a4);
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    sub_1D8FE1298(a2, a3, a4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315650;
      v19 = sub_1D9179FEC();
      v21 = sub_1D8CFA924(v19, v20, &v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D8CFA924(0xD000000000000025, 0x80000001D91D55D0, &v25);
      *(v17 + 22) = 2080;
      sub_1D8FE1240(a2, a3, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v22 = sub_1D917826C();
      v24 = sub_1D8CFA924(v22, v23, &v25);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] [%s] Failed to find podcast for contentID: %s, show settings are not supported", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v13 = 0;
  }

  *a6 = v13;
}

uint64_t static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(void *a1)
{
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v2 = a1;
    PodcastStateModel.init(podcast:)(a1, v29);
    if (v30)
    {
      v3 = v31 | (v32 << 16);
      sub_1D90B1ADC(v29[0], v29[1], v29[2], v29[3], v30);
      if ((v3 & 0x100) != 0)
      {
        if ((v3 & 0x10000) == 0 && (v3 & 1) == 0)
        {

          v12 = 1;
LABEL_17:
          if (qword_1ECAB0D90 != -1)
          {
            swift_once();
          }

          v13 = sub_1D917744C();
          __swift_project_value_buffer(v13, qword_1ECAB0D98);
          v14 = v2;
          v15 = sub_1D917741C();
          v16 = sub_1D9178D1C();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v29[0] = v18;
            *v17 = 136316163;
            v19 = sub_1D9179FEC();
            v21 = sub_1D8CFA924(v19, v20, v29);

            *(v17 + 4) = v21;
            *(v17 + 12) = 2080;
            *(v17 + 14) = sub_1D8CFA924(0xD000000000000023, 0x80000001D91D5600, v29);
            *(v17 + 22) = 2160;
            *(v17 + 24) = 1752392040;
            *(v17 + 32) = 2081;
            v22 = [v14 title];
            if (v22)
            {
              v23 = v22;
              v24 = sub_1D917820C();
              v26 = v25;
            }

            else
            {
              v26 = 0xEA00000000002965;
              v24 = 0x6C746974206F6E28;
            }

            v27 = sub_1D8CFA924(v24, v26, v29);

            *(v17 + 34) = v27;
            *(v17 + 42) = 1024;
            *(v17 + 44) = v12 & 1;
            _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] [%s] Custom settings for podcast: %{private,mask.hash}s, supported: %{BOOL}d.", v17, 0x30u);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v18, -1, -1);
            MEMORY[0x1DA72CB90](v17, -1, -1);
          }

          return v12 & 1;
        }
      }

      else if ((v3 & 0x10000) == 0 || (v3 & 1) == 0)
      {
        v12 = sub_1D9179ACC();

        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0D98);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136315138;
    v9 = sub_1D9179FEC();
    v11 = sub_1D8CFA924(v9, v10, v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Custom settings are not supported on this device.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D90B16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[17] = a5;
  sub_1D91787EC();
  v7[20] = sub_1D91787DC();
  v9 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90B1774, v9, v8);
}

uint64_t sub_1D90B1774()
{

  if (qword_1ECAB3700 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECABA218;
  if (qword_1ECAAFD20 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = qword_1ECAAFD28;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  strcpy((v0 + 120), "perShowSetting");
  *(v0 + 135) = -18;
  sub_1D91793EC();
  *(inited + 88) = v2;
  *(inited + 96) = &type metadata for PerShowSettingNotificationData;
  *(inited + 76) = BYTE4(v4);
  *(inited + 72) = v4;
  *(inited + 80) = v3;

  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v7 = sub_1D917802C();

  [v1 postNotificationName:v5 object:0 userInfo:v7];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D90B199C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D90B16D8(a1, v4, v5, v6, v7, v9, v8);
}

double sub_1D90B1ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1D90B1B1C(a1, a2, a3);
  }

  return result;
}

double sub_1D90B1B1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

void *sub_1D90B1B74()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  return result;
}

unint64_t sub_1D90B1BB4(double a1)
{
  result = qword_1ECABA228;
  if (!qword_1ECABA228)
  {
    sub_1D91768DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA228);
  }

  return result;
}

double sub_1D90B1C10()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(&v3);
  *v1 = v3;

  return result;
}

uint64_t static PodcastsPlaybackSettingsHelper.enhanceDialogueEnabled(for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_1D90B4E68(a1, a2, a3, v3, ObjectType);
}

id PodcastsPlaybackSettingsHelper.PodcastPlaybackSettingsKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t static PodcastsPlaybackSettingsHelper.settings(for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return sub_1D90B4FFC(a1, a2, a3, v3);
}

void sub_1D90B1E48(void *a1@<X0>, unint64_t *a5@<X8>)
{
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [a1 podcastForUuid_];

  if (v8)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB0D98);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      v14 = sub_1D9179FEC();
      v16 = sub_1D8CFA924(v14, v15, &v31);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "[%s] Retrieving resolved playback settings", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 0x6B63616279616C70;
    *(inited + 40) = 0xEF79654B65746152;
    sub_1D90B2210();
    v19 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v18);
    v20 = MEMORY[0x1E69E6448];
    *(inited + 48) = v19;
    *(inited + 72) = v20;
    *(inited + 80) = 0xD000000000000019;
    *(inited + 88) = 0x80000001D91D5720;
    v21 = sub_1D90B25B8();
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = v21 & 1;
    v22 = sub_1D8E2696C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1ECAB0D98);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CDC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      v28 = sub_1D9179FEC();
      v30 = sub_1D8CFA924(v28, v29, &v31);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "[%s] Retrieving global playback settings", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    v8 = qword_1ECAB1990;
    v22 = sub_1D90B52F0(v8);
  }

  *a5 = v22;
}

void sub_1D90B2210()
{
  swift_getObjectType();
  if ([v0 subscribed])
  {
    v1 = [v0 hidden];
  }

  else
  {
    v1 = 1;
  }

  v2 = [v0 advancedPlaybackSettings];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (v1 & 1 | (([v2 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0D98);
    v5 = sub_1D917741C();
    v6 = sub_1D9178CDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315394;
      v9 = sub_1D9179FEC();
      v11 = sub_1D8CFA924(v9, v10, &v22);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v7 + 14) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Resolved setter setting global playback rate of %f", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1ECAB0D98);
  v13 = v3;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    [v13 playbackRate];
    *&v21 = v21;
    *(v16 + 14) = *&v21;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting custom playback rate of %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  [v13 playbackRate];
}

unint64_t sub_1D90B25B8()
{
  swift_getObjectType();
  if ([v0 subscribed])
  {
    v1 = [v0 hidden];
  }

  else
  {
    v1 = 1;
  }

  v2 = [v0 advancedPlaybackSettings];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (v1 & 1 | (([v2 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0D98);
    v5 = sub_1D917741C();
    v6 = sub_1D9178CDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315394;
      v9 = sub_1D9179FEC();
      v11 = sub_1D8CFA924(v9, v10, &v22);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v7 + 14) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Resolved getter getting global playback rate = %{BOOL}d", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    return PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    *(v16 + 14) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved getter getting custom playback rate = %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  v21 = [v3 enhanceDialogueEnabled];
  return v21;
}

void static PodcastsPlaybackSettingsHelper.saveSettings(_:podcastUUID:defaultsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a2;
      v13[4] = a3;
      v13[5] = v5;
      v13[6] = a1;
      v13[7] = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B5938;
      *(v14 + 24) = v13;
      v29[4] = sub_1D8D24508;
      v29[5] = v14;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 1107296256;
      v29[2] = sub_1D8D24488;
      v29[3] = &block_descriptor_77;
      v15 = _Block_copy(v29);
      v16 = v12;

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1ECAB0D98);

  v19 = sub_1D917741C();
  v20 = sub_1D9178CDC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136315650;
    v23 = sub_1D9179FEC();
    v25 = sub_1D8CFA924(v23, v24, v29);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (a3)
    {
      v26 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v26 = 7104878;
    }

    if (a3)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1D8CFA924(v26, v27, v29);

    *(v21 + 14) = v28;
    *(v21 + 22) = 1024;
    *(v21 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v19, v20, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v21, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v22, -1, -1);
    MEMORY[0x1DA72CB90](v21, -1, -1);
  }

  swift_getObjectType();

  sub_1D90B5414(a1, a4, v5);
}

void sub_1D90B2E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_opt_self();
  v10 = @"MTPodcast";
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v9 predicateForPodcastUUID_];

  v34 = [a1 objectInEntity:v10 predicate:v12];
  if (v34)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0D98);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v36 = v19;
        *v18 = 136315138;
        v20 = sub_1D9179FEC();
        v22 = sub_1D8CFA924(v20, v21, &v36);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s] Attempting to save using resolved playback settings methods", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      v23 = sub_1D90B3254(a5);
      if ((v23 & 0x100000000) == 0)
      {
        sub_1D90B349C(*&v23);
      }

      v24 = sub_1D90B3824(a5);
      if (v24 != 2)
      {
        sub_1D90B3A58(v24 & 1);
      }

      v25 = [v14 managedObjectContext];
      [v25 saveInCurrentBlock];

      goto LABEL_20;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v26 = sub_1D917744C();
  __swift_project_value_buffer(v26, qword_1ECAB0D98);
  v27 = sub_1D917741C();
  v28 = sub_1D9178CDC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = sub_1D9179FEC();
    v33 = sub_1D8CFA924(v31, v32, &v36);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "[%s] No podcast found for UUID, will save settings as global settings", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v35 = qword_1ECAB1990;
  sub_1D90B5414(a5, v35, a4);
LABEL_20:
}

unint64_t sub_1D90B3254(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D8D33C70(0x6B63616279616C70, 0xEF79654B65746152), (v3 & 1) != 0) && (sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v20), (swift_dynamicCast() & 1) != 0))
  {
    v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v19);
    v5 = 0;
    v6 = LODWORD(v4);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);

    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315394;
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_1D917806C();
      v17 = sub_1D8CFA924(v15, v16, v20);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] Invalid or no playback rate value type provided, expected Float. Settings received: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}

void sub_1D90B349C(float a1)
{
  swift_getObjectType();
  if ([v1 subscribed])
  {
    v3 = [v1 hidden];
  }

  else
  {
    v3 = 1;
  }

  v4 = [v1 advancedPlaybackSettings];
  if (!v4)
  {
    goto LABEL_7;
  }

  v22 = v4;
  if (v3 & 1 | (([v4 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0D98);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315394;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v23);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Resolved setter setting global playback rate to %f", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.setter(a1);
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v23);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = a1;
    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting custom playback rate to %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  else
  {

    v21 = a1;
  }

  [v22 setPlaybackRate_];
}

uint64_t sub_1D90B3824(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5720);
    if (v3)
    {
      sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v18);
      if (swift_dynamicCast())
      {
        return v17;
      }
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0D98);

  v6 = sub_1D917741C();
  v7 = sub_1D9178CFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315394;
    v10 = sub_1D9179FEC();
    v12 = sub_1D8CFA924(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_1D917806C();
    v15 = sub_1D8CFA924(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Invalid or no enhance dialogue value type provided, expected Bool. Settings received: %s", v8, 0x16u);
    v4 = 2;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {

    return 2;
  }

  return v4;
}

void sub_1D90B3A58(char a1)
{
  swift_getObjectType();
  if ([v1 subscribed])
  {
    v3 = [v1 hidden];
  }

  else
  {
    v3 = 1;
  }

  v4 = [v1 advancedPlaybackSettings];
  if (!v4)
  {
    goto LABEL_7;
  }

  v21 = v4;
  if (v3 & 1 | (([v4 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0D98);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315394;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v22);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1 & 1;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Resolved setter setting global enhanceDialogueEnabled = %{BOOL}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(a1 & 1);
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting global enhanceDialogueEnabled = %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  [v21 setEnhanceDialogueEnabled_];
}

id static PodcastsPlaybackSettingsHelper.savePlaybackRate(_:for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      *(v13 + 40) = a3;
      *(v13 + 48) = a4;
      *(v13 + 56) = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B5948;
      *(v14 + 24) = v13;
      v31[4] = sub_1D8EDCFE0;
      v31[5] = v14;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 1107296256;
      v31[2] = sub_1D8D24488;
      v31[3] = &block_descriptor_13_3;
      v15 = _Block_copy(v31);
      v16 = v12;
      swift_unknownObjectRetain();

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1ECAB0D98);

  v20 = sub_1D917741C();
  v21 = sub_1D9178CDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315650;
    v24 = sub_1D9179FEC();
    v26 = sub_1D8CFA924(v24, v25, v31);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    if (a2)
    {
      v27 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v27 = 7104878;
    }

    if (a2)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D8CFA924(v27, v28, v31);

    *(v22 + 14) = v29;
    *(v22 + 22) = 1024;
    *(v22 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[%s]  Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  *&v30 = a4;

  return [a3 setPlaybackRateGlobalValue_];
}

void sub_1D90B428C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, float a6)
{
  v9 = objc_opt_self();
  v10 = @"MTPodcast";
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v9 predicateForPodcastUUID_];

  v34 = [a1 objectInEntity:v10 predicate:v12];
  if (v34)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0D98);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35 = v19;
        *v18 = 136315138;
        v20 = sub_1D9179FEC();
        v22 = sub_1D8CFA924(v20, v21, &v35);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s] Attempting to save rate using resolved playback settings methods", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      v23 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(a6);
      sub_1D90B349C(v23);
      v24 = [v14 managedObjectContext];
      [v24 saveInCurrentBlock];

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1ECAB0D98);
  v26 = sub_1D917741C();
  v27 = sub_1D9178CDC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v30 = sub_1D9179FEC();
    v32 = sub_1D8CFA924(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "[%s]  No podcast found for UUID, will save settings as global settings", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  *&v33 = a6;

  [a4 setPlaybackRateGlobalValue_];
}

id static PodcastsPlaybackSettingsHelper.saveEnhanceDialogueEnabled(_:for:defaultsProvider:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a2;
      *(v13 + 32) = a3;
      *(v13 + 40) = a4;
      *(v13 + 48) = a1 & 1;
      *(v13 + 56) = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B595C;
      *(v14 + 24) = v13;
      v30[4] = sub_1D8EDCFE0;
      v30[5] = v14;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 1107296256;
      v30[2] = sub_1D8D24488;
      v30[3] = &block_descriptor_23_1;
      v15 = _Block_copy(v30);
      v16 = v12;
      swift_unknownObjectRetain();

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1ECAB0D98);

  v20 = sub_1D917741C();
  v21 = sub_1D9178CDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315650;
    v24 = sub_1D9179FEC();
    v26 = sub_1D8CFA924(v24, v25, v30);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    if (a3)
    {
      v27 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v27 = 7104878;
    }

    if (a3)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D8CFA924(v27, v28, v30);

    *(v22 + 14) = v29;
    *(v22 + 22) = 1024;
    *(v22 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[%s]  Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  return [a4 setEnhanceDialogueEnabledGlobalValue_];
}

void sub_1D90B4A38(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v9 = objc_opt_self();
  v10 = @"MTPodcast";
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v9 predicateForPodcastUUID_];

  v32 = [a1 objectInEntity:v10 predicate:v12];
  if (v32)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0D98);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = v19;
        *v18 = 136315138;
        v20 = sub_1D9179FEC();
        v22 = sub_1D8CFA924(v20, v21, &v33);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s] Attempting to save enhance dialogue enabled setting using resolved playback settings methods", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      sub_1D90B3A58(a5 & 1);
      v23 = [v14 managedObjectContext];
      [v23 saveInCurrentBlock];

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1ECAB0D98);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    v29 = sub_1D9179FEC();
    v31 = sub_1D8CFA924(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "[%s]  No podcast found for UUID, will save settings as global settings", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  [a4 setEnhanceDialogueEnabledGlobalValue_];
}

id _s18PodcastsFoundation0A22PlaybackSettingsHelperC07PodcastcD4KeysCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D90B4E28(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D90B4E68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D90B4FFC(a1, a2, a3, a4);
  v7 = sub_1D90B3824(v6);

  if (v7 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1ECAB0D98);
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_1D9179FEC();
      v15 = sub_1D8CFA924(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "[%s] No valid enhance dialogue enabled setting found when retrieving for uuid, will use global value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v7 = [a3 enhanceDialogueEnabledGlobalValue];
  }

  return v7 & 1;
}

unint64_t sub_1D90B4FFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && [objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v24[2] = v9;
    v24[3] = a1;
    v24[4] = a2;
    v24[5] = a4;
    v24[6] = a4;
    v11 = sub_1D90ACF98(sub_1D90AC11C, v24);

    return v11;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CDC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315650;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v21 = 0x6C696E2D6E6F6ELL;
      }

      else
      {
        v21 = 7104878;
      }

      if (a2)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_1D8CFA924(v21, v22, &v25);

      *(v16 + 14) = v23;
      *(v16 + 22) = 1024;
      *(v16 + 24) = [objc_opt_self() supportsLocalLibrary];
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will retrieve global settings", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return sub_1D90B52F0(a3);
  }
}

unint64_t sub_1D90B52F0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = 0x6B63616279616C70;
  *(inited + 40) = 0xEF79654B65746152;
  [a1 playbackRateGlobalValue];
  v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v3);
  v5 = MEMORY[0x1E69E6448];
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x80000001D91D5720;
  v6 = [a1 enhanceDialogueEnabledGlobalValue];
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v6;
  v7 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  return v7;
}

void sub_1D90B5414(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1D90B3254(a1);
  if ((v5 & 0x100000000) != 0)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1ECAB0D98);
    v17 = sub_1D917741C();
    v18 = sub_1D9178CDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315138;
      v21 = sub_1D9179FEC();
      v23 = sub_1D8CFA924(v21, v22, &v42);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "[%s  No or invalid rate provided. Not saving global playback rate value", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }
  }

  else
  {
    v6 = v5;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);
    v8 = sub_1D917741C();
    v9 = sub_1D9178CDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42 = v11;
      *v10 = 136315138;
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, &v42);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s]  Setting global playback rate value", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    LODWORD(v15) = v6;
    [a2 setPlaybackRateGlobalValue_];
  }

  v24 = sub_1D90B3824(a1);
  if (v24 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1ECAB0D98);
    oslog = sub_1D917741C();
    v26 = sub_1D9178CDC();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      v29 = sub_1D9179FEC();
      v31 = sub_1D8CFA924(v29, v30, &v42);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D8CEC000, oslog, v26, "[%s Not saving global enhance dialogue value", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }
  }

  else
  {
    v32 = v24;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1ECAB0D98);
    v34 = sub_1D917741C();
    v35 = sub_1D9178CDC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      v38 = sub_1D9179FEC();
      v40 = sub_1D8CFA924(v38, v39, &v42);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "[%s] Setting global enhance dialogue enabled value", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    [a2 setEnhanceDialogueEnabledGlobalValue_];
  }
}

uint64_t sub_1D90B59D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v9, v8);
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D8D08A50(v8, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1ECAAFC10;

  sub_1D917730C();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D8D25E44(v5, v1 + v9);
  return swift_endAccess();
}

id AccountResolver.AccountInfo.primaryAccount.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AccountResolver.AccountInfo.sharedAccount.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t AccountResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v2 = sub_1D917734C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  return v0;
}

uint64_t AccountResolver.init()()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v2 = sub_1D917734C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  return v0;
}

void sub_1D90B5D9C(uint64_t a1, uint64_t (*a2)(id *), uint64_t a3)
{
  v96 = a3;
  v93 = a2;
  v123 = *MEMORY[0x1E69E9840];
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - v13;
  v15 = *a1;
  v101 = *(a1 + 8);
  v16 = *(a1 + 16);
  v100 = *(a1 + 24);
  v17 = *(a1 + 32);
  v103 = *(a1 + 40);
  v102 = *(a1 + 48);
  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  v89 = v7;
  swift_beginAccess();
  v18 = qword_1ECAAFC10;
  v99 = v3;
  sub_1D90B59D4(v14);
  sub_1D91772FC();

  v87 = v6;
  v19 = *(v6 + 8);
  v98 = v5;
  v95 = v6 + 8;
  v94 = v19;
  v19(v14, v5);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v20 = sub_1D917744C();
  v21 = __swift_project_value_buffer(v20, qword_1ECAB0D50);
  v22 = v102;
  v23 = v102;
  v24 = v15;

  v25 = v103;
  v26 = v15;
  v27 = v103;
  v85 = v21;
  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();

  v86 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v92 = v26;
  v90 = v17;
  if (!v30)
  {

    v34 = v88;
    v33 = v87;
    goto LABEL_22;
  }

  v83 = v28;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  aBlock = v32;
  *v31 = 136446210;
  v112 = v26;
  v113 = v101;
  v84 = v16;
  v114 = v16;
  v115 = v100;
  v116 = v17;
  v117 = v25;
  v118 = v22;
  sub_1D90B82F4(&v119);
  if (v120 <= 1u)
  {
    if (v120)
    {
      v68 = 0x6F48656C676E6973;
    }

    else
    {
      v68 = 0x5344656C676E6973;
    }

    if (v120)
    {
      v67 = 0xEC0000004449656DLL;
    }

    else
    {
      v67 = 0xEA00000000004449;
    }

    v16 = v84;
    v34 = v88;
    v33 = v87;
    goto LABEL_20;
  }

  v33 = v87;
  if (v120 == 2)
  {
    v67 = 0xEB00000000444965;
    v68 = 0x6D6F4869746C756DLL;
    v16 = v84;
    v34 = v88;
    goto LABEL_20;
  }

  v34 = v88;
  if (v120 == 3)
  {
    v67 = 0xEE00746E756F6363;
    v68 = 0x417972616D697270;
    v16 = v84;
LABEL_20:
    sub_1D90B7F50(&v119);
    goto LABEL_21;
  }

  v67 = 0xE700000000000000;
  v68 = 0x6E776F6E6B6E75;
  v16 = v84;
LABEL_21:
  v35 = sub_1D8CFA924(v68, v67, &aBlock);

  *(v31 + 4) = v35;
  v36 = v83;
  _os_log_impl(&dword_1D8CEC000, v83, v86, "􀉩 AccountInfo: Using %{public}s", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  MEMORY[0x1DA72CB90](v32, -1, -1);
  MEMORY[0x1DA72CB90](v31, -1, -1);

LABEL_22:
  sub_1D90B59D4(v34);
  v37 = *(v33 + 32);
  v38 = v91;
  v39 = v98;
  v37(v91, v34, v98);
  v40 = v97;
  (*(v33 + 16))(v97, v38, v39);
  v41 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v42 = swift_allocObject();
  v43 = v93;
  v44 = v96;
  *(v42 + 16) = v93;
  *(v42 + 24) = v44;
  *(v42 + 32) = "accounts(for:completion:)";
  *(v42 + 40) = 25;
  *(v42 + 48) = 2;
  v37((v42 + v41), v38, v39);
  v112 = v92;
  v113 = v101;
  v114 = v16;
  v115 = v100;
  v116 = v90;
  v117 = v103;
  v118 = v102;

  sub_1D90B82F4(v121);
  v45 = v121[0];
  if (v122 <= 1u)
  {
    if (!v122)
    {
      v48 = [objc_opt_self() sharedAccountStore];
      aBlock = 0;
      v49 = [v48 storeAccountForDSID:v45 error:&aBlock];

      v50 = aBlock;
      if (v49)
      {
        aBlock = v49;
        v107 = v49;
        LOWORD(v108) = 0;
        v51 = v49;
        v52 = v50;
        v43(&aBlock);
        sub_1D9178F4C();
        v53 = qword_1ECAAFC10;
        sub_1D91772FC();

        sub_1D90B7F50(v121);
      }

      else
      {
        v69 = aBlock;
        v70 = sub_1D9176A6C();

        swift_willThrow();
        v71 = v70;
        v72 = sub_1D917741C();
        v73 = sub_1D9178CFC();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          aBlock = v75;
          *v74 = 136446210;
          v104[0] = v70;
          v76 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
          v77 = sub_1D917826C();
          v79 = sub_1D8CFA924(v77, v78, &aBlock);

          *(v74 + 4) = v79;
          _os_log_impl(&dword_1D8CEC000, v72, v73, "Unable to resolve DSID: %{public}s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          v80 = v75;
          v40 = v97;
          MEMORY[0x1DA72CB90](v80, -1, -1);
          MEMORY[0x1DA72CB90](v74, -1, -1);
        }

        aBlock = v70;
        v107 = 0;
        LOWORD(v108) = 256;
        v43(&aBlock);
        sub_1D9178F4C();
        v81 = qword_1ECAAFC10;
        sub_1D91772FC();
        sub_1D90B7F50(v121);

        v39 = v98;
      }

      goto LABEL_36;
    }

    v94(v40, v39);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1D90B7EB4;
    *(v64 + 24) = v42;
    v59 = *(v99 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);

    v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D90B7F50(v121);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1D90B7F48;
    *(v65 + 24) = v64;
    v110 = sub_1D90B82F0;
    v111 = v65;
    aBlock = MEMORY[0x1E69E9820];
    v107 = 1107296256;
    v62 = &block_descriptor_16_1;
LABEL_32:
    v108 = sub_1D90B7D50;
    v109 = v62;
    v66 = _Block_copy(&aBlock);

    [v59 getHomeUserIdForSharedUserId:v60 completion:v66];
    _Block_release(v66);

    return;
  }

  if (v122 == 2)
  {
    v54 = v40;
    v56 = v121[2];
    v55 = v121[3];
    v94(v54, v39);
    v57 = swift_allocObject();
    v58 = v99;
    v57[2] = v99;
    v57[3] = v56;
    v57[4] = v55;
    v57[5] = sub_1D90B7EB4;
    v57[6] = v42;
    v59 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);

    v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v61 = swift_allocObject();
    *(v61 + 16) = sub_1D90B7F30;
    *(v61 + 24) = v57;
    v110 = sub_1D90B7F40;
    v111 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v107 = 1107296256;
    v62 = &block_descriptor_78;
    goto LABEL_32;
  }

  if (v122 == 3)
  {
    v104[0] = v121[0];
    v104[1] = v121[0];
    v105 = 0;
    sub_1D90B7FA4(v121, &aBlock);
    v46 = v45;
    v43(v104);
    sub_1D9178F4C();
    v47 = qword_1ECAAFC10;
    sub_1D91772FC();

    sub_1D90B7F50(v121);
  }

  else
  {
    v107 = 0;
    aBlock = 0;
    LOWORD(v108) = 256;
    v43(&aBlock);
    sub_1D9178F4C();
    v63 = qword_1ECAAFC10;
    sub_1D91772FC();
  }

LABEL_36:
  v94(v40, v39);
}

void sub_1D90B6B18(__int128 *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  a2(&v10);
  sub_1D9178F4C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1ECAAFC10;
  sub_1D91772FC();
}

uint64_t sub_1D90B6C0C(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  sub_1D8CFD888();
  v16 = sub_1D9178E1C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = v15;
  aBlock[4] = sub_1D90B8210;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_31_3;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_1D90B821C(v15);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v18);
  _Block_release(v18);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

void sub_1D90B6EE8(void *a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = a1;
    v9 = 0;
    v5 = a1;
    a2(&v7);
  }

  else
  {
    if (a4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    v7 = v6;
    v8 = 0;
    v9 = 256;
    sub_1D90B821C(a4);
    a2(&v7);
  }

  sub_1D90B823C(v7, v8, v9, SHIBYTE(v9));
}

void sub_1D90B6F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a7;
  v12[4] = a8;
  v13 = *(a4 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);
  v14 = a1;

  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D90B82A8;
  *(v16 + 24) = v12;
  v18[4] = sub_1D90B82F0;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D90B7D50;
  v18[3] = &block_descriptor_41_2;
  v17 = _Block_copy(v18);

  [v13 getHomeUserIdForSharedUserId:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1D90B70F4(void *a1, char a2, void **a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D9177E0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && a1)
  {
    v40 = v13;
    v19 = a2 & 1;
    sub_1D8CFD888();
    v20 = a1;
    v21 = a4;
    v39 = v15;
    v22 = a6;
    v23 = v12;
    v24 = a5;
    v25 = v21;
    v26 = v20;
    v27 = v25;
    v28 = sub_1D9178E1C();
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v22;
    v12 = v23;
    *(v29 + 32) = a4;
    *(v29 + 40) = a1;
    v30 = v28;
    *(v29 + 48) = v19;
    v47 = sub_1D90B82C0;
    v48 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1D8CF5F60;
    v46 = &block_descriptor_53;
    v31 = _Block_copy(&aBlock);
    v15 = v39;

    v32 = v27;
    v33 = v26;

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v18, v15, v31);
    v34 = v31;
    v13 = v40;
    _Block_release(v34);
  }

  else
  {
    v35 = *a3;
    sub_1D8CFD888();
    v30 = sub_1D9178E1C();
    v36 = swift_allocObject();
    v36[2] = a5;
    v36[3] = a6;
    v36[4] = v35;
    v47 = sub_1D90B82B4;
    v48 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1D8CF5F60;
    v46 = &block_descriptor_47_1;
    v37 = _Block_copy(&aBlock);

    sub_1D90B821C(v35);

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v18, v15, v37);
    _Block_release(v37);
  }

  (*(v13 + 8))(v15, v12);
  return (*(v41 + 8))(v18, v42);
}

void sub_1D90B7594(void (*a1)(uint64_t *), uint64_t a2, void *a3)
{
  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  v9 = v4;
  v10 = 0;
  v11 = 256;
  sub_1D90B821C(a3);
  a1(&v9);
  v5 = v9;
  v6 = v10;
  v7 = HIBYTE(v11);
  v8 = v11;

  sub_1D90B823C(v5, v6, v8, v7);
}

void sub_1D90B7604(void (*a1)(void **), uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = 0;
  v7 = a4;
  v8 = a3;
  a1(&v13);
  v9 = v13;
  v10 = v14;
  v11 = v16;
  v12 = v15;

  sub_1D90B823C(v9, v10, v12, v11);
}

void sub_1D90B7678(void *a1, void *a2, void *a3, void (*a4)(id, void, id *))
{
  v59[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_1D9176EAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  if (a3)
  {
    v58[0] = a3;
    v18 = a3;
    a4(0, 0, v58);
    sub_1D90B8298(v58[0]);
    return;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  sub_1D9176E4C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D8D08A50(v10, &qword_1ECAB71E0, &unk_1D9197360);
LABEL_6:
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1ECAB0D50);

    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v58[1] = a2;
      v59[0] = v23;
      *v22 = 136446210;
      v58[0] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v24 = sub_1D917826C();
      v26 = sub_1D8CFA924(v24, v25, v59);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Error resolving user. UserIDString missing. %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    v58[0] = 0;
    a4(0, 0, v58);
    return;
  }

  (*(v12 + 32))(v17, v10, v11);
  v27 = [objc_opt_self() sharedAccountStore];
  v28 = sub_1D9176E6C();
  v58[0] = 0;
  v29 = [v27 storeAccountForHomeUserIdentifier:v28 error:v58];

  v30 = v58[0];
  if (v29)
  {
    v58[0] = 2;
    v31 = v30;
    v32 = v29;
    a4(v29, 0, v58);

    (*(v12 + 8))(v17, v11);
  }

  else
  {
    v33 = v58[0];
    v34 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1ECAB0D50);
    (*(v12 + 16))(v14, v17, v11);
    v36 = v34;
    v37 = sub_1D917741C();
    v38 = sub_1D9178CFC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = v39;
      v56 = swift_slowAlloc();
      v58[0] = v56;
      *v39 = 136446466;
      sub_1D8CFBDA8(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v55 = v37;
      v40 = sub_1D9179A4C();
      v57 = v34;
      v42 = v41;
      v54 = v38;
      v43 = *(v12 + 8);
      v43(v14, v11);
      v44 = sub_1D8CFA924(v40, v42, v58);
      v34 = v57;

      v45 = v53;
      *(v53 + 1) = v44;
      *(v45 + 6) = 2082;
      v59[0] = v34;
      v46 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v47 = sub_1D917826C();
      v49 = sub_1D8CFA924(v47, v48, v58);

      *(v45 + 14) = v49;
      v50 = v55;
      _os_log_impl(&dword_1D8CEC000, v55, v54, "Error resolving user from home identifier %{public}s - %{public}s", v45, 0x16u);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v51, -1, -1);
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }

    else
    {

      v43 = *(v12 + 8);
      v43(v14, v11);
    }

    v58[0] = v34;
    v52 = v34;
    a4(0, 0, v58);

    sub_1D90B8298(v58[0]);
    v43(v17, v11);
  }
}

double sub_1D90B7D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

uint64_t AccountResolver.deinit()
{
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);

  return v0;
}

uint64_t AccountResolver.__deallocating_deinit()
{
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);

  return swift_deallocClassInstance();
}

void sub_1D90B7EB4(__int128 *a1)
{
  v3 = *(sub_1D917734C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = v1 + ((*(v3 + 80) + 49) & ~*(v3 + 80));

  sub_1D90B6B18(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15AccountResolverC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90B8070(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D90B80C4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1D90B8120(void *result, int a2)
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

uint64_t sub_1D90B8150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1D90B81AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1D90B821C(id result)
{
  if (result != 2)
  {
    return sub_1D90B822C(result);
  }

  return result;
}

id sub_1D90B822C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D90B823C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_1D90B8288(a1);
  }

  else
  {
  }
}

void sub_1D90B8288(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1D90B8298(id a1)
{
  if (a1 != 2)
  {
    sub_1D90B8288(a1);
  }
}

id sub_1D90B82F4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (*v1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v1;
    goto LABEL_15;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = *(v1 + 8);
  if (v6)
  {
    v9 = v8 == v5 && v4 == v6;
    if (!v9 && (sub_1D9179ACC() & 1) == 0)
    {
      if (sub_1D9179ACC())
      {
        goto LABEL_11;
      }

      if ((sub_1D9179ACC() & 1) == 0)
      {

        v7 = 2;
        goto LABEL_14;
      }

LABEL_19:
      v11 = [objc_opt_self() sharedAccountStore];
      v15[0] = 0;
      v8 = [v11 activeStoreAccountWithError_];

      v12 = v15[0];
      if (v8)
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 3;
      }

      else
      {
        v13 = v12;
        v14 = sub_1D9176A6C();

        swift_willThrow();
        v8 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 4;
      }

      goto LABEL_14;
    }

LABEL_13:

    v7 = 1;
    v8 = v5;
    v4 = v6;
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

LABEL_11:

  v5 = 0;
  v6 = 0;
  v7 = 1;
LABEL_14:
  v3 = 0;
LABEL_15:
  *a1 = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  return v3;
}

uint64_t sub_1D90B8500(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1D90B8898(v5, v7) & 1;
}

uint64_t sub_1D90B854C()
{
  v1 = *(v0 + 32);
  v2 = 0x5344656C676E6973;
  v3 = 0x6D6F4869746C756DLL;
  v4 = 0x417972616D697270;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 32))
  {
    v2 = 0x6F48656C676E6973;
  }

  if (*(v0 + 32) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id PlaybackUserContext.enqueuerDSID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PlaybackUserContext.requesterUserId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PlaybackUserContext.sharedUserId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *PlaybackUserContext.primaryAccount.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *PlaybackUserContext.sharedAccount.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PlaybackUserContext.init(enqueuerDSID:requesterUserId:sharedUserId:primaryAccount:sharedAccount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D90B86F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D90B8750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19PlaybackUserContextV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1D90B87DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D90B8824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D90B886C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D90B8898(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 32);
  if (v4 <= 1)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] == 1)
      {
        if (v3 == a2->i64[0] && v2 == a2->i64[1])
        {
          return 1;
        }

        goto LABEL_26;
      }
    }

    else if (!a2[2].i8[0])
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

LABEL_8:
      sub_1D8D6F530();
      return sub_1D917914C() & 1;
    }

    if (a2[2].i8[0] != 4)
    {
      return 0;
    }

    v12 = vorrq_s8(*a2, a2[1]);
    return !*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1].i64[0];
  v9 = a2[1].i64[1];
  if (v3 != a2->i64[0] || v2 != a2->i64[1])
  {
    v11 = sub_1D9179ACC();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v6 == v8 && v7 == v9)
  {
    return 1;
  }

LABEL_26:

  return sub_1D9179ACC();
}

void sub_1D90B8A0C(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DED4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1D90B8FF0(v4);
  *a1 = v2;
}

uint64_t sub_1D90B8A78()
{
  v1 = 0x62694C6C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x495041616964656DLL;
  }
}

uint64_t MediaRequest.Params.debugDescription.getter()
{
  v1 = sub_1D9179E7C();
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  *(&v46 + 1) = type metadata accessor for MediaRequest.Params(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
  sub_1D8D85B08(v0, boxed_opaque_existential_0);
  sub_1D9179E3C();
  v38 = v3;
  sub_1D9179E6C();
  v6 = sub_1D917962C();

  sub_1D91797CC();
  v46 = v43;
  v47 = v44;
  v45 = v42;
  if (*(&v44 + 1))
  {
    while (1)
    {
      v7 = v45;
      sub_1D8D65618(&v46, &v42);
      if (!*(&v7 + 1))
      {
        goto LABEL_3;
      }

      sub_1D8CFAD1C(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v4;
      v9 = sub_1D8D33C70(v7, *(&v7 + 1));
      v11 = v4[2];
      v12 = (v10 & 1) == 0;
      v13 = __OFADD__(v11, v12);
      v14 = v11 + v12;
      if (v13)
      {
        goto LABEL_30;
      }

      v15 = v10;
      if (v4[3] < v14)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v19 = v9;
      sub_1D8F86F90();
      v9 = v19;
      if (v15)
      {
LABEL_12:
        v17 = v9;

        v4 = v40;
        v18 = (v40[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_1D8D65618(v41, v18);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        goto LABEL_4;
      }

LABEL_14:
      v4 = v40;
      v40[(v9 >> 6) + 8] |= 1 << v9;
      *(v4[6] + 16 * v9) = v7;
      sub_1D8D65618(v41, (v4[7] + 32 * v9));
      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      v20 = v4[2];
      v13 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v13)
      {
        goto LABEL_31;
      }

      v4[2] = v21;
LABEL_4:
      sub_1D91797CC();
      v46 = v43;
      v47 = v44;
      v45 = v42;
      if (!*(&v44 + 1))
      {
        goto LABEL_16;
      }
    }

    sub_1D900C074();
    v9 = sub_1D8D33C70(v7, *(&v7 + 1));
    if ((v15 & 1) != (v16 & 1))
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_16:
  v37 = v1;

  v22 = v4[2];
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v24 = sub_1D8F0638C(v4[2], 0);
    v25 = sub_1D8F0C030(&v45, v24 + 2, v22, v4);
    v26 = v45;

    sub_1D8D1B144(v26);
    if (v25 == v22)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v24 = v23;
LABEL_20:
  *&v45 = v24;
  sub_1D90B8A0C(&v45);
  v27 = v45;
  v28 = *(v45 + 16);
  if (v28)
  {
    v36 = v4;
    *&v41[0] = v23;
    sub_1D8D41BE0(0, v28, 0);
    v29 = 0;
    v30 = v27 + 32;
    v6 = *&v41[0];
    while (v29 < *(v27 + 16))
    {
      sub_1D90BA474(v30, &v45);
      *&v42 = 0;
      *(&v42 + 1) = 0xE000000000000000;
      MEMORY[0x1DA7298F0](v45, *(&v45 + 1));
      MEMORY[0x1DA7298F0](2362, 0xE200000000000000);
      sub_1D917964C();
      v31 = v42;
      sub_1D90BA4E4(&v45);
      *&v41[0] = v6;
      v33 = v6[2];
      v32 = v6[3];
      if (v33 >= v32 >> 1)
      {
        sub_1D8D41BE0((v32 > 1), v33 + 1, 1);
        v6 = *&v41[0];
      }

      ++v29;
      v6[2] = v33 + 1;
      *&v6[2 * v33 + 4] = v31;
      v30 += 48;
      if (v28 == v29)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1D9179CFC();
    __break(1u);

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *&v45 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D72B0C();
    v34 = sub_1D917817C();

    (*(v39 + 8))(v38, v37);
    return v34;
  }

  return result;
}

void sub_1D90B8FF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9179A2C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
        v5 = sub_1D917867C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D90B921C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1D90B90F8(0, v2, 1, a1);
  }
}

uint64_t sub_1D90B90F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3;
    v8 = result - a3;
LABEL_6:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_1D90BA474(v10, v20);
      v11 = v10 - 3;
      sub_1D90BA474((v10 - 3), v19);
      if (v19[0] == v20[0] && v19[1] == v20[1])
      {
        sub_1D90BA4E4(v19);
        result = sub_1D90BA4E4(v20);
LABEL_5:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_1D9179ACC();
      sub_1D90BA4E4(v19);
      result = sub_1D90BA4E4(v20);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = v10[1];
      v14 = v10[2];
      v16 = *v10;
      v17 = *(v10 - 2);
      *v10 = *v11;
      v10[1] = v17;
      v10[2] = *(v10 - 1);
      *v11 = v16;
      *(v10 - 2) = v15;
      v10 -= 3;
      v11[2] = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D90B921C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v109 = v8;
      v92 = *(v8 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v8[16 * v92];
          v94 = *&v8[16 * v92 + 24];
          sub_1D90B98E8((*a3 + 48 * v93), (*a3 + 48 * *&v8[16 * v92 + 16]), (*a3 + 48 * v94), v7);
          if (v5)
          {
            goto LABEL_114;
          }

          if (v94 < v93)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D8F5DE20(v8);
          }

          if (v92 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v95 = &v8[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v109 = v8;
          sub_1D8F5DD94(v92 - 1);
          v8 = v109;
          v92 = *(v109 + 2);
          if (v92 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:

      return;
    }

LABEL_136:
    v8 = sub_1D8F5DE20(v8);
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1D90BA474(*a3 + 48 * v7, &v107);
      sub_1D90BA474(v10 + 48 * v9, &v105);
      v11 = v105 == v107 && v106 == v108;
      v97 = v5;
      if (v11)
      {
        v102 = 0;
      }

      else
      {
        v102 = sub_1D9179ACC();
      }

      sub_1D90BA4E4(&v105);
      sub_1D90BA4E4(&v107);
      v12 = v9 + 2;
      v99 = v9;
      v5 = 48 * v9;
      v13 = v10 + 48 * v9 + 96;
      v14 = v5 + 48;
      do
      {
        v16 = v12;
        v17 = v7;
        v18 = v14;
        if (v12 >= v6)
        {
          break;
        }

        sub_1D90BA474(v13, &v107);
        sub_1D90BA474(v13 - 48, &v105);
        v19 = v105 == v107 && v106 == v108;
        v15 = v19 ? 0 : sub_1D9179ACC();
        sub_1D90BA4E4(&v105);
        sub_1D90BA4E4(&v107);
        v12 = (v16 + 1);
        v13 += 48;
        ++v7;
        v14 = v18 + 48;
      }

      while (((v102 ^ v15) & 1) == 0);
      if (v102)
      {
        v9 = v99;
        if (v16 < v99)
        {
          goto LABEL_133;
        }

        if (v99 < v16)
        {
          v20 = v99;
          do
          {
            if (v20 != v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v23 = (v22 + v5);
              v24 = (v22 + v18);
              v25 = *v23;
              v26 = v23[1];
              v27 = v23[2];
              v29 = v24[1];
              v28 = v24[2];
              *v23 = *v24;
              v23[1] = v29;
              v23[2] = v28;
              v24[1] = v26;
              v24[2] = v27;
              *v24 = v25;
            }

            ++v20;
            v18 -= 48;
            v5 += 48;
          }

          while (v20 < v17--);
        }

        v7 = v16;
        v5 = v97;
      }

      else
      {
        v7 = v16;
        v5 = v97;
        v9 = v99;
      }
    }

    v30 = a3[1];
    if (v7 < v30)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v8 = sub_1D8ECC734((v45 > 1), v46 + 1, 1, v8);
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_73:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_87:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_94:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_1D90B98E8((*a3 + 48 * v89), (*a3 + 48 * *&v8[16 * v50 + 32]), (*a3 + 48 * v90), v49);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8F5DE20(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v109 = v8;
        sub_1D8F5DD94(v50);
        v8 = v109;
        v47 = *(v109 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v31 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v31)
  {
    goto LABEL_53;
  }

  v98 = v5;
  v100 = v9;
  v32 = *a3;
  v33 = *a3 + 48 * v7;
  v34 = v9 - v7;
  v103 = v31;
LABEL_42:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    sub_1D90BA474(v36, &v107);
    v37 = v36 - 3;
    sub_1D90BA474((v36 - 3), &v105);
    if (v105 == v107 && v106 == v108)
    {
      sub_1D90BA4E4(&v105);
      sub_1D90BA4E4(&v107);
LABEL_41:
      ++v7;
      v33 += 48;
      --v34;
      if (v7 == v103)
      {
        v7 = v103;
        v5 = v98;
        v9 = v100;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v39 = sub_1D9179ACC();
    sub_1D90BA4E4(&v105);
    sub_1D90BA4E4(&v107);
    if ((v39 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v32)
    {
      break;
    }

    v41 = v36[1];
    v40 = v36[2];
    v42 = *v36;
    v43 = *(v36 - 2);
    *v36 = *v37;
    v36[1] = v43;
    v36[2] = *(v36 - 1);
    *v37 = v42;
    *(v36 - 2) = v41;
    v36 -= 3;
    v37[2] = v40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1D90B98E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_43:
      v18 = v6;
    }

    else
    {
      do
      {
        v18 = v6 - 48;
        v19 = v12 - 48;
        v5 -= 48;
        while (1)
        {
          sub_1D90BA474(v19, &v32);
          sub_1D90BA474((v6 - 48), &v30);
          v22 = v30 == v32 && v31 == v33;
          v23 = v22 ? 0 : sub_1D9179ACC();
          sub_1D90BA4E4(&v30);
          sub_1D90BA4E4(&v32);
          if (v23)
          {
            break;
          }

          if (v5 + 48 != v19 + 48)
          {
            v24 = *v19;
            v25 = *(v19 + 2);
            *(v5 + 1) = *(v19 + 1);
            *(v5 + 2) = v25;
            *v5 = v24;
          }

          v20 = v19 - 48;
          v5 -= 48;
          v21 = v19 > v4;
          v19 -= 48;
          if (!v21)
          {
            v12 = v20 + 48;
            goto LABEL_43;
          }
        }

        if (v5 + 48 != v6)
        {
          v26 = *v18;
          v27 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v27;
          *v5 = v26;
        }

        v12 = v19 + 48;
        if (v19 + 48 <= v4)
        {
          break;
        }

        v6 -= 48;
      }

      while (v18 > v7);
      v12 = v19 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      while (1)
      {
        sub_1D90BA474(v6, &v32);
        sub_1D90BA474(v4, &v30);
        v13 = v30 == v32 && v31 == v33;
        if (v13)
        {
          break;
        }

        v14 = sub_1D9179ACC();
        sub_1D90BA4E4(&v30);
        sub_1D90BA4E4(&v32);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 48;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_1D90BA4E4(&v30);
      sub_1D90BA4E4(&v32);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 48;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v15;
      v17 = *(v15 + 2);
      *(v7 + 1) = *(v15 + 1);
      *(v7 + 2) = v17;
      *v7 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v18 = v7;
  }

  v28 = (v12 - v4) / 48;
  if (v18 != v4 || v18 >= &v4[48 * v28])
  {
    memmove(v18, v4, 48 * v28);
  }

  return 1;
}